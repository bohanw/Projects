structure regAlloc  :> regAlloc  =
struct

(* app load ["NormalTheory", "Normal", "basic"] *)

open HolKernel Parse boolLib bossLib;
open pairLib pairSyntax PairRules NormalTheory Normal basic;

val atom_tm = prim_mk_const{Name="atom",Thy="Normal"}
fun mk_atom tm = mk_comb (inst [alpha |-> type_of tm] atom_tm,tm)

(* --------------------------------------------------------------------*)
(* --------------------------------------------------------------------*)


structure M = Binarymap
structure S = Binaryset
val VarType = ref (Type `:word32`) (* numSyntax.num *)

(* --------------------------------------------------------------------*)
(* Datatypes                                                           *)
(* --------------------------------------------------------------------*)

datatype alloc_result =
    Alloc of term (* allocated register *)
  | Spill of term (* spilled variable *)

(* --------------------------------------------------------------------*)
(* Configurable setting                                                *)
(* The "DEBUG" controls whether debugging information should be print  *)
(*    out or not.                                                      *)
(* The "numRegs" stores how many registers are available.              *)
(* By default the register set contains {r0,r1,...}                    *)
(* Users can customize this set by specifying the "regL" or modify the *)
(*   "mk_regs()" function.                                             *)
(* --------------------------------------------------------------------*)

val DEBUG = ref true;

val numRegs = ref 11;

fun mk_regs() =
  let
    fun f n = if n = !numRegs then []
               else mk_var("r" ^ Int.toString(n) , !VarType) :: f(n+1)
  in f 0
  end

val regL = ref (mk_regs());

(* --------------------------------------------------------------------*)
(* Pre-defined variables and functions                                 *)
(* --------------------------------------------------------------------*)

fun is_reg x = (String.sub (term_to_string x,0) = #"r")
fun is_mem x = (String.sub (term_to_string x,0) = #"m")

fun tvarOrder (t1:term,t2:term) =
  let val (s1,s2) = (term_to_string t1, term_to_string t2) in
    if s1 > s2 then GREATER
    else if s1 = s2 then EQUAL
    else LESS
  end;

(* Is an expression a function application? *)

fun is_fun exp =
  (* is_var exp andalso *)
  (#1 (dest_type (type_of exp)) = "fun")
  handle HOL_ERR _ => false;

(* --------------------------------------------------------------------*)
(* make variables                                                      *)
(* mvar -- memory variables                                            *)
(* tvar -- tempory variables; used for spilling.                       *)
(* --------------------------------------------------------------------*)

fun num2name stem i = stem ^ Lib.int_to_string i
val mStrm = ref (Lib.mk_istream (fn x => x+1) 0 (num2name "m"))
val tStrm = ref (Lib.mk_istream (fn x => x+1) 0 (num2name "t"))

fun reset_mvar () = mStrm := Lib.mk_istream (fn x => x+1) 0 (num2name "m")
fun next_mvar () = mk_var (state(next (!mStrm)), !VarType)
fun cur_mvar() = state(!mStrm)
fun reset_tvar () = tStrm := Lib.mk_istream (fn x => x+1) 0 (num2name "t")
fun next_tvar () = mk_var (state(next (!tStrm)), !VarType)

(* --------------------------------------------------------------------*)
(* The variables that have not been allocated                          *)
(* --------------------------------------------------------------------*)

fun fv exp =
  let val xs = free_vars exp
      val xs' = List.filter (fn x => not (is_mem x orelse is_reg x)) xs
  in  xs'
  end

(* --------------------------------------------------------------------*)
(* Attempt to allocate a register                                      *)
(* "regenv" -- the current allocation scheme;                          *)
(* "cont" -- the continuation that contains live variables;            *)
(* "x" -- the variable to be allocated.                                *)
(* --------------------------------------------------------------------*)

(* allocate a register or spill a variable *)

fun alloc_one cont regenv x =
 let val allregs = !regL
 in
 if is_reg x then Alloc(x) else
 let val free = fv cont
     val live = (* set of registers already assigned to live var in cont *)
       List.foldl (fn (y,live) =>
         if is_reg y then (* registers that have been used *)
           S.add (live,y)
         else (* registers (and memory) already assigned *)
           S.add (live, M.find (regenv, y)) handle NotFound => live)
       (S.empty tvarOrder) free
      val candidate = List.find (fn r => not (S.member(live,r))) allregs
                     (* the first available register *)
 in
  case candidate
   of SOME r => Alloc(r)
    | NONE => let
       fun OK y =
         let val k = M.find(regenv,y)
         in not(is_reg y) andalso (* exclude vars in registers        *)
            not(is_mem k) andalso (* exclude spilled vars (in memory) *)
            Lib.mem k allregs     (* ensure it's assigned a register  *)
         end handle NotFound => false
       val y = valOf(List.find OK (List.rev free))
       val _ = if !DEBUG then
                 (print ("register allocation failed for "^
                         term_to_string x^"; ");
                  print ("spilling "^term_to_string y^
                         " from " ^term_to_string (M.find(regenv,y))^"\n"))
               else ()
     in
        Spill(y)
     end
 end
end;

(* --------------------------------------------------------------------*)
(* For Tuple and Function calls                                        *)
(* Rules for replacing variables with registers or memory slots.       *)
(* --------------------------------------------------------------------*)

fun find_pos (regenv,x) =
 if is_reg x orelse is_word_literal x orelse
    numSyntax.is_numeral x orelse is_const x then x
 else
   let val v = M.find (regenv, x)
   in if is_reg v orelse is_mem v then v
      else raise (Fail "find_pos...")
   end
  ;

fun tuple_subst_rules xs regenv =
    List.foldl
      (fn (x,ys) =>
        if is_var x then (x |-> find_pos (regenv, x)) :: ys
        else ys)
      []
      xs;

(* --------------------------------------------------------------------*)
(* Attempt to allocate registers for a tuple.                          *)
(* If the tuple contains only one variable, we always allocate a       *)
(* register for it by spilling another variable;                       *)
(* on the other hand, if the tuple contains several variables, and some*)
(* of them couldn't be assigned registers, we always spill them into   *)
(* the memory (this can be optimized a little).                        *)
(* --------------------------------------------------------------------*)

fun alloc cont regenv x =
 if is_pair x then
  let val xs = strip_pair x
      val (_,env) = List.foldl (fn (t,(cont',env')) =>
                 case alloc_one cont' env' t
             of Alloc(r) => (* assign a register *)
                            (mk_pair(cont', t), M.insert(env', t, r))
              | Spill(n) => (* assign a memory slot *)
                   (mk_pair(cont',t), M.insert(env', t, next_mvar()))
          ) (cont,regenv) xs
  in
     (Alloc(subst (tuple_subst_rules xs env) x), env)
  end
  else (* single variable *)
    case alloc_one cont regenv x
     of Alloc(r) => (Alloc(r), M.insert(regenv, x, r))
      | Spill(n) => (Spill(n), regenv)
  ;

(* --------------------------------------------------------------------*)
(* Register Allocation                                                 *)
(* Auxiliary data structures and functions                             *)
(* --------------------------------------------------------------------*)

datatype AllocResult =
    NoSpill of term * (term, term) M.dict (* new regenv *)
  | ToSpill of term * term list           (* spilled variables *)

exception regAlloc of string
exception NoReg of term

fun find_reg (regenv,x) =
  if is_reg x then x
  else if is_word_literal x orelse
          numSyntax.is_numeral x orelse is_const x then x
  else
    let val v = M.find (regenv, x)
    in if is_reg v then v else raise (NoReg x)
    end
  handle NotFound => raise (NoReg x);

fun mk_subst_rules xs regenv = (* replace variables with registers *)
    List.foldl
      (fn (x,ys) =>
        if is_var x then (x |-> find_reg (regenv, x)) :: ys
        else ys)
      []
      xs;

(* let x = (let v = M in N) in e2   --> let x = M in let v = N in e2 *)

fun concat e1 x e2 =
  if is_let e1
  then let val (v,M,N) = dest_plet e1 in mk_plet (v, M, concat N x e2) end
  else mk_plet (x, e1, e2);

(* Add a mapping into the environment *)

fun add x r regenv = if is_reg x then regenv else M.insert(regenv, x, r);


(* --------------------------------------------------------------------*)
(* Spill to memory                                                     *)
(* Restore from memory                                                 *)
(* --------------------------------------------------------------------*)

fun save x exp regenv =
 let val v = next_mvar()
     val regenv1 = M.insert(regenv, x, v)    (* x is spilled to memory *)
     val _ = if !DEBUG then
             print ("saving "^term_to_string x^
                    " to " ^ term_to_string v ^"\n")
             else ()
  in    (* let m[.] = r[.] in exp[m[.]] *)
    (mk_plet (v, M.find(regenv,x), exp), regenv1)
  end

fun restore x exp regenv =
  let val v = next_tvar ()
      val _ = if !DEBUG then
                print ("restoring "^term_to_string x^
                       " from "^term_to_string (M.find(regenv,x))^"\n")
               else ()
  in mk_plet (v, M.find (regenv,x),
              subst_exp [x |-> v] exp)  (* let v = m[.] in exp[x <- v] *)
  end

(* --------------------------------------------------------------------*)
(* Register Allocation                                                 *)
(* Main algorithm                                                      *)
(* --------------------------------------------------------------------*)

(* g' is for allocating registers in expressions *)

fun g' dest cont regenv exp =
 if is_word_literal exp orelse numSyntax.is_numeral exp orelse
    is_const exp orelse is_fun exp orelse is_mem exp
   then NoSpill (exp, regenv) else
 if is_var exp
    then NoSpill (subst (mk_subst_rules [exp] regenv) exp, regenv) else
 if is_cond exp
    then let val (c,e1,e2) = dest_cond exp
             val (cmpop,ds) = strip_comb c
             val (d0,d1) = (hd ds, hd (tl ds))
             (* val (ds0,ds1) = (#2 (strip_comb d0), #2 (strip_comb d1))
                val c' = list_mk_comb
                         (cmpop, [subst (mk_subst_rules ds0 regenv) d0,
                                  subst (mk_subst_rules ds1 regenv) d1])
             *)
             val c' = list_mk_comb (cmpop, [find_reg(regenv,d0),
                                            find_reg(regenv,d1)])
             fun f e1 e2 = mk_cond(c', e1, e2)
         in
            g'_if dest cont regenv exp f e1 e2
        end else
 if is_pair exp
    then NoSpill (subst (tuple_subst_rules (strip_pair exp) regenv) exp,
                  regenv) else
 if is_let exp
    then g dest cont regenv exp else
 if is_comb exp
    then
      let val (opr,xs) = strip_comb exp
      in if is_binop opr (* includes is_cmpop opr orelse is_relop opr *)
            then NoSpill (subst (mk_subst_rules xs regenv) exp, regenv) else
         if is_fun opr   (* function application *)
            then
              let val ys = List.foldl (fn (t,ls) => strip_pair t @ ls) [] xs
              in NoSpill (subst (tuple_subst_rules ys regenv) exp, regenv)
              end
            else raise regAlloc
                         ("g': this case hasn't been implemented -- "^
                          term_to_string exp)
      end
 else NoSpill (exp, regenv)

and

(*---------------------------------------------------------------------------*)
(* When g' accesses a spilled variable, a NoReg exception is raised since    *)
(* we cannot find the variable in regenv. Thus a restore is required, which  *)
(* restores the value of a variable from the memory to a register.           *)
(*---------------------------------------------------------------------------*)

g'_and_restore dest cont regenv exp =
  g' dest cont regenv exp
  handle NoReg x (* x is stored in the memory, assign it a register *)
  => g dest cont regenv (restore x exp regenv)
    (* restore the spilled x from the memory *)

and

(*---------------------------------------------------------------------------*)
(* g deals with the let v = ... in ... structure.                            *)
(*---------------------------------------------------------------------------*)

g dest cont regenv exp =
 if not (is_let exp) then
     g'_and_restore dest cont regenv exp
 else (*  exp = LET (\v. N) M  *)
 let val (x,M,N) = dest_plet exp
     val cont' = mk_pair(N,cont) (* concat N dest cont *)
 in
  if is_mem x orelse is_reg x
  then case g x cont regenv N
        of ToSpill(e2,ys) => ToSpill (exp, ys)
         | NoSpill(e2,regenv2) => NoSpill(mk_plet(x,M,e2),regenv2)
  else
    case g'_and_restore x cont' regenv M
     of ToSpill(exp1, ys) => ToSpill(concat exp1 x N, ys)
      | NoSpill(exp1, regenv1) =>
          case (alloc cont' regenv1 x)
           of (Spill(y), env) =>
                let val op_vars = free_vars N
                in (if Lib.mem y op_vars then
                      let val opt =
                            List.find (fn (key,value) =>
                                        is_reg value andalso
                                        not (Lib.mem key op_vars))
                                      (M.listItems env)
                          val (thing,_) = valOf opt
                      in
                        ToSpill (exp, [thing])
                      end
                    else ToSpill (exp, [y])
                   ) handle _ => ToSpill (exp, [y])
                end
            | (Alloc(r), env) =>
                 let val (exp2,env') = g_repeat dest cont env N
                 in NoSpill(concat exp1 r exp2, env')
                 end
     end
and
g_repeat dest cont regenv exp =   (* early spilling *)
  case g dest cont regenv exp
   of NoSpill(exp', regenv') => (exp', regenv')
    | ToSpill(exp, xs) =>
        let val (exp,regenv) =
              List.foldl (fn (x,(exp,env)) => save x exp env)
               (exp, regenv)
               xs
        in
          g_repeat dest cont regenv exp
        end
and
g'_if dest cont regenv exp constr e1 e2 =
 let val (e1', regenv1) = g_repeat dest cont regenv e1
     val (e2', regenv2) = g_repeat dest cont regenv e2
     val regenv' =
       List.foldl (fn ((key,value), m) => M.insert(m,key,value)) regenv1
                  (M.listItems regenv2)
  in
    NoSpill(constr e1' e2', regenv')
  end
;

(*---------------------------------------------------------------------------
 The following code is needed only for non-SSA expressions
    val regenv' =
      List.foldl
      (fn (x,regenv') =>
          if is_reg x then regenv' else
          let val r1 = M.find(regenv1,x)
              val r2 = M.find(regenv2,x) in
            if r1 <> r2 then regenv' else
            M.insert(regenv',x,r1)
          end
        handle NotFound => regenv')
      (M.mkDict tvarOrder)
      (fv cont)
  in
    case
      List.filter
      (fn x => not (is_reg x) andalso
               (M.peek(regenv',x) = NONE) andalso x <> dest)
      (fv cont)
    of
      [] => NoSpill(constr e1' e2', regenv')
    | xs => ToSpill(exp, xs)
  end
  ---------------------------------------------------------------------------*)

(* --------------------------------------------------------------------*)
(* Reduce the number of memory slots by reusing memory variables.      *)
(* The mechanism is similar to that of allocating registers; but we    *)
(* assume an unlimited number of memory slots.                         *)
(* --------------------------------------------------------------------*)

(* The first available memory slot that doesn't conflict with live "slots" *)

fun first_avail_slot env cont =
 let fun indexOfSlot s =
        valOf(Int.fromString(String.substring(s, 1, String.size s - 1)))
     val live = List.foldl (fn (t,ts) =>
			     let val x = M.find(env,t)
                             in if is_mem x then x::ts else ts
                             end handle _ => ts) [] (free_vars cont)
     val max_slot = indexOfSlot(state(!mStrm))
     fun candidate i =  (* the first available register *)
        if i > max_slot then next_mvar()
        else
          let val cur_slot = mk_var("m" ^ Int.toString i, !VarType)
          in if Lib.mem cur_slot live then candidate (i+1)
             else cur_slot
          end
 in
    candidate 1
 end

(* reuse memory slots that will not be "live" any more *)

fun alloc_mem (args,body) =
 let val body' = rhs (concl
                   (QCONV(SIMP_CONV bool_ss [ELIM_USELESS_LET]) body))
     val (save,loc) = (mk_const("save", (!VarType) --> (!VarType)),
		       mk_const("loc", (!VarType) --> (!VarType)))
     fun trav t env cont =
       if is_let t then
           let val (v,M,N) = dest_plet t
           in
              if is_mem v then
                let val v' = first_avail_slot env (mk_pair(N,cont))
                    val M' = mk_comb (save, M)
                    val env' = M.insert (env, v, v')
                    val N' = trav N env' cont
                in
                    mk_plet (v', M', N')
                end
              else if is_var M andalso is_mem M then
                let val M' = mk_comb (loc, M.find (env, M))
                    val N' = trav N env cont
                in
                    mk_plet (v, M', N')
                end
              else if is_pair v then
		let val cont' = mk_pair(N,cont)
		    val (v',env') =
		        List.foldl (fn (x, (w, env')) =>
		          if not (is_mem x) then (w,env')
		          else
                            let val x' = first_avail_slot env' cont'
                            in (subst [x |-> x'] w, M.insert(env', x, x'))
                            end) (v,env) (strip_pair v)
                in
                    mk_plet (v', trav M env' cont', trav N env' cont)
                end
              else mk_plet (v, trav M env cont, trav N env cont)
            end
       else if is_comb t then
            let val (M1,M2) = dest_comb t
                val M1' = trav M1 env cont
                val M2' = trav M2 env cont
            in mk_comb(M1',M2')
            end
       else if is_mem t then
           mk_comb (loc, M.find (env, t) handle _ => t)
       else t

     val memenv = List.foldl (fn (t, m) =>
                    if is_mem t then (next_mvar(); M.insert(m,t,t)) else m)
                  (M.mkDict tvarOrder) (strip_pair args)
     fun move_mindex i =
       if i = M.numItems memenv then ()
       else (next_mvar();move_mindex (i + 1))
  in
     (reset_mvar ();
      move_mindex 0;
      trav body' memenv ``()``
     )
  end;

(* --------------------------------------------------------------------*)
(* Refinement for Tail Recursion.                                      *)
(* --------------------------------------------------------------------*)

fun parallel_move dst src exp =
 let val sane = ref true
   val (dstL, srcL) = (strip_pair dst, strip_pair src)
   val (tmpL,_) = List.foldl (fn (_,(l,i)) =>
                                (l @ [mk_var("m" ^ Int.toString i, !VarType)],
                                 i+1))
                    ([],1) (hd srcL :: srcL)
   val spotL = !regL @ tmpL
   fun get_avail_spot l =
        let val l' = l @ free_vars exp
        in valOf (List.find (fn x => List.all (not o equal x) l') spotL)
        end

   val transfer_r =
      let val r = get_avail_spot (srcL @ dstL)
      in if is_mem r then hd spotL else r
      end

   fun move (d,s,r) t =
    if is_mem s andalso is_mem d
    then let val real_r =
               if is_mem r then (sane := false; transfer_r) else r
         in
            mk_plet(real_r, mk_atom s, mk_plet(d, mk_atom real_r, t))
         end
    else mk_plet(d, mk_atom s, t)

   fun moves (t,[],[]) = t
     | moves (t, d::dL, s::sL) =
         if d = s then moves(t, dL, sL)
         else
          if List.exists (equal d) sL (* d is still live *)
          then let val spot = get_avail_spot (d :: s :: sL)
                   val transfer_r = get_avail_spot (spot :: d :: s :: sL)
                   val tmp = List.map
                              (fn x => if x = d then spot else
                                       if x = s then d else x)
                              sL
                   val t' = move (d,s,transfer_r) (moves(t, dL, tmp))
               in (* d is stored in spot in the beginning *)
                 move (spot,d, transfer_r) t'
               end
          else
             move(d,s,get_avail_spot (d :: s :: sL))
                 (moves(t, dL, List.map (fn x => if x = s then d else x) sL))
   val exp' =
     if !sane then moves(exp, dstL, srcL)
     else (* store value of transferring register in memory if needed *)
       let val sdL = srcL @ dstL
           val opt = List.find (fn x => is_mem x andalso
                                        List.all (not o equal x) sdL) spotL
           val tmp_m = valOf opt
       in (* load the transferring register *)
          mk_plet(transfer_r, mk_atom tmp_m,
                  moves(mk_plet(tmp_m, mk_atom transfer_r, exp), dstL, srcL))
                    (* store the transferring register *)
       end
 in
    exp'
 end

fun refine_tail_recursion def =
 let val (fname, fbody) = dest_eq (concl def)
   val (args,body) = dest_pabs fbody
   val lem = if is_let body
              then CONV_RULE (RHS_CONV(SIMP_CONV pure_ss [Once LET_THM])) def
              else def
   val body = #2 (dest_pabs (rhs (concl lem)))
   val is_recursive = Lib.can (find_term (equal fname)) body
   val lems = ref []
 in
   if not is_recursive then def else
   let fun trav t =
          if is_let t then
            let val (v,M,N) = dest_plet t
            in if is_comb M andalso #1(strip_comb M) = fname then
                 let val _ = lems := PBETA_RULE
                                       (SIMP_CONV bool_ss [Once LET_THM] t)
                                     :: !lems
                     val src = #2(dest_comb M)
                     val exp = subst [src |-> args] (subst [v |-> M] N)
                 in
                   parallel_move args src exp
                 end
               else
                 mk_plet (v, M, trav N)
            end
          else if is_cond t then
            let val (v,M,N) = dest_cond t
            in mk_cond(v, trav M, trav N)
            end
          else if is_comb t then
            let val (M,N) = dest_comb t
                val M' = trav M
                val N' = trav N
            in mk_comb(M',N')
            end
          else if is_pabs t then
            let val (v,M) = dest_pabs t
            in mk_pabs(v,trav M)
            end
          else
            t

        val body' = trav body
        val th = prove(mk_eq(fname, mk_pabs(args,body')),
                   REWRITE_TAC [Once lem] THEN
                   SIMP_TAC bool_ss ([FUN_EQ_THM, LET_ATOM, ATOM_ID] @ (!lems))
                 ) handle _ =>
           (print "failed to convert a tail recursion into expected format!";
            def)
   in
      REWRITE_RULE [ATOM_ID] th
   end
 end

(* --------------------------------------------------------------------------*)
(* Register Allocation                                                       *)
(* --------------------------------------------------------------------------*)

fun reset () = (regL := mk_regs(); reset_mvar(); reset_tvar() );

(*---------------------------------------------------------------------------*)
(* Assign registers to inputs; memory slots will be used when there are too  *)
(* many paramenters                                                          *)
(*---------------------------------------------------------------------------*)

fun args_env args =
 let val argL = strip_pair args
     fun assgn_v (v,(i,regenv)) =
       (i+1,
        M.insert (regenv, v,
                  if i < !numRegs then mk_var ("r" ^ Int.toString i, !VarType)
                  else next_mvar()))
   in
       #2 (List.foldl assgn_v (0, M.mkDict tvarOrder) argL)
   end

(*---------------------------------------------------------------------------*)
(* step1: configure the environment;                                         *)
(* step2: obtain an allocation scheme by term rewriting;                     *)
(* step3: prove the correctness of the scheme by showing the result is       *)
(* alpha-equivalent to the source program.                                   *)
(*---------------------------------------------------------------------------*)

(*
fun preset_regs tm =
 let fun find tm acc =
      if is_let tm
*)

fun reg_alloc def =
 let
   val (fname, fbody) = dest_eq (concl def)
   val (args,body) = dest_pabs fbody handle _ => (Term`()`, fbody)  (* no argument *)
   val (sane,var_type) = pre_check(args,body)
 in
  if sane then
   let (* set the variable type according to the given program *)
      val _ = (VarType := var_type; reset())
      val regenv = args_env args
      val args1 = subst (tuple_subst_rules (strip_pair args) regenv) args
      val dest = hd (!regL)
      val cont = dest
      val body1 = #1 (g_repeat dest cont regenv body)
      val body2 = alloc_mem(args1,body1)
      val tha = QCONV(SIMP_CONV pure_ss [LET_SAVE, LET_LOC, loc_def]) body2
      val th1 = SYM (PBETA_RULE tha)
      val body3 = lhs (concl th1)
      val fbody' = if args1 = Term`()` then body3
                   else mk_pabs (args1,body3)
      val th2 = ALPHA fbody fbody'
                handle _ => prove (mk_eq(fbody, fbody'), SIMP_TAC std_ss [LET_THM])
                handle e => (print "the allocation is incomplete or incorrect";
                             Raise e)
      val th3 = CONV_RULE (RHS_CONV (ONCE_REWRITE_CONV [th1])) th2
      val th4 = TRANS def th3
      val th5 = (PBETA_RULE o REWRITE_RULE [save_def, loc_def]) th4
      val th6 = refine_tail_recursion th5 handle _ => th5
   in
     th6
   end
  else
   ( print("The source program is invalid!\
         \ (e.g. all variables are not of the same type)");
     def
   )
  end;


end
