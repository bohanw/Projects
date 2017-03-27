structure operatorTheory :> operatorTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading operatorTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open boolTheory
  in end;
  val _ = Theory.link_parents
          ("operator",
          Arbnum.fromString "1488586470",
          Arbnum.fromString "475869")
          [("bool",
           Arbnum.fromString "1488585882",
           Arbnum.fromString "632112")];
  val _ = Theory.incorporate_types "operator" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("operator", "ASSOC"), ID("operator", "COMM"),
   ID("bool", "F"), ID("operator", "FCOMM"), ID("operator", "LEFT_ID"),
   ID("operator", "MONOID"), ID("operator", "RIGHT_ID"), ID("bool", "T"),
   ID("bool", "\\/")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYOP [0, 1, 0], TYV "'a", TYOP [0, 1, 3],
   TYOP [0, 3, 4], TYOP [0, 5, 2], TYOP [0, 3, 0], TYOP [0, 3, 3],
   TYOP [0, 3, 8], TYOP [0, 9, 7], TYOP [0, 1, 1], TYOP [0, 3, 11],
   TYOP [0, 12, 7], TYV "'c", TYOP [0, 14, 8], TYOP [0, 15, 0],
   TYOP [0, 5, 16], TYOP [0, 3, 1], TYOP [0, 3, 18], TYOP [0, 19, 0],
   TYOP [0, 9, 0], TYOP [0, 7, 0], TYOP [0, 2, 0], TYOP [0, 14, 0],
   TYOP [0, 24, 0], TYOP [0, 21, 0], TYOP [0, 20, 0], TYOP [0, 5, 0],
   TYOP [0, 28, 0], TYOP [0, 12, 0], TYOP [0, 30, 0], TYOP [0, 16, 0],
   TYOP [0, 0, 0], TYOP [0, 0, 33], TYOP [0, 3, 7], TYOP [0, 1, 2],
   TYOP [0, 34, 0], TYOP [0, 9, 21], TYOP [0, 34, 33]]
  end
  val _ = Theory.incorporate_consts "operator" tyvector
     [("RIGHT_ID", 6), ("MONOID", 10), ("LEFT_ID", 13), ("FCOMM", 17),
      ("COMM", 20), ("ASSOC", 21)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("e", 3), TMV("e", 1), TMV("f", 9), TMV("f", 19), TMV("f", 5),
   TMV("f", 12), TMV("g", 15), TMV("x", 3), TMV("x", 1), TMV("x", 14),
   TMV("y", 3), TMV("z", 3), TMV("z", 1), TMC(2, 22), TMC(2, 23),
   TMC(2, 25), TMC(2, 26), TMC(2, 27), TMC(2, 29), TMC(2, 31), TMC(2, 32),
   TMC(3, 34), TMC(4, 35), TMC(4, 36), TMC(4, 34), TMC(5, 21), TMC(5, 37),
   TMC(6, 20), TMC(7, 0), TMC(8, 38), TMC(8, 17), TMC(9, 10), TMC(9, 13),
   TMC(10, 10), TMC(10, 39), TMC(11, 10), TMC(11, 6), TMC(12, 0),
   TMC(13, 34)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ASSOC_DEF x = x
    val op ASSOC_DEF =
    DT(((("operator",0),[]),[]),
       [read"%16%2%24%25$0@@%13%7%13%10%13%11%22$3$2@$3$1@$0@@@$3$3$2@$1@@$0@@|@|@|@@|@"])
  fun op COMM_DEF x = x
    val op COMM_DEF =
    DT(((("operator",1),[]),[]),
       [read"%17%3%24%27$0@@%13%7%13%10%23$2$1@$0@@$2$0@$1@@|@|@@|@"])
  fun op FCOMM_DEF x = x
    val op FCOMM_DEF =
    DT(((("operator",2),[]),[]),
       [read"%18%4%20%6%24%30$1@$0@@%15%9%13%10%14%12%22$3$2@$4$1@$0@@@$4$3$2@$1@@$0@@|@|@|@@|@|@"])
  fun op RIGHT_ID_DEF x = x
    val op RIGHT_ID_DEF =
    DT(((("operator",3),[]),[]),
       [read"%18%4%14%1%24%36$1@$0@@%13%7%22$2$0@$1@@$0@|@@|@|@"])
  fun op LEFT_ID_DEF x = x
    val op LEFT_ID_DEF =
    DT(((("operator",4),[]),[]),
       [read"%19%5%13%0%24%32$1@$0@@%14%8%23$2$1@$0@@$0@|@@|@|@"])
  fun op MONOID_DEF x = x
    val op MONOID_DEF =
    DT(((("operator",5),[]),[]),
       [read"%16%2%13%0%24%33$1@$0@@%21%25$1@@%21%35$1@$0@@%31$1@$0@@@@|@|@"])
  fun op ASSOC_CONJ x = x
    val op ASSOC_CONJ =
    DT(((("operator",6),
        [("bool",[25,36,43,56]),("operator",[0])]),["DISK_THM"]),
       [read"%26%21@"])
  fun op ASSOC_SYM x = x
    val op ASSOC_SYM =
    DT(((("operator",7),[("bool",[58]),("operator",[0])]),["DISK_THM"]),
       [read"%16%2%24%25$0@@%13%7%13%10%13%11%22$3$3$2@$1@@$0@@$3$2@$3$1@$0@@@|@|@|@@|@"])
  fun op ASSOC_DISJ x = x
    val op ASSOC_DISJ =
    DT(((("operator",8),
        [("bool",[25,36,56,93]),("operator",[0])]),["DISK_THM"]),
       [read"%26%38@"])
  fun op FCOMM_ASSOC x = x
    val op FCOMM_ASSOC =
    DT(((("operator",9),
        [("bool",[25,36,56]),("operator",[0,2])]),["DISK_THM"]),
       [read"%16%2%24%29$0@$0@@%25$0@@|@"])
  fun op MONOID_CONJ_T x = x
    val op MONOID_CONJ_T =
    DT(((("operator",10),
        [("bool",[25,36,43,51,56]),("operator",[0,3,4,5])]),["DISK_THM"]),
       [read"%34%21@%37@"])
  fun op MONOID_DISJ_F x = x
    val op MONOID_DISJ_F =
    DT(((("operator",11),
        [("bool",[25,36,51,52,56,93]),
         ("operator",[0,3,4,5])]),["DISK_THM"]), [read"%34%38@%28@"])
  end
  val _ = DB.bindl "operator"
  [("ASSOC_DEF",ASSOC_DEF,DB.Def), ("COMM_DEF",COMM_DEF,DB.Def),
   ("FCOMM_DEF",FCOMM_DEF,DB.Def), ("RIGHT_ID_DEF",RIGHT_ID_DEF,DB.Def),
   ("LEFT_ID_DEF",LEFT_ID_DEF,DB.Def), ("MONOID_DEF",MONOID_DEF,DB.Def),
   ("ASSOC_CONJ",ASSOC_CONJ,DB.Thm), ("ASSOC_SYM",ASSOC_SYM,DB.Thm),
   ("ASSOC_DISJ",ASSOC_DISJ,DB.Thm), ("FCOMM_ASSOC",FCOMM_ASSOC,DB.Thm),
   ("MONOID_CONJ_T",MONOID_CONJ_T,DB.Thm),
   ("MONOID_DISJ_F",MONOID_DISJ_F,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("boolTheory.bool_grammars",
                          boolTheory.bool_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ASSOC", (Term.prim_mk_const { Name = "ASSOC", Thy = "operator"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COMM", (Term.prim_mk_const { Name = "COMM", Thy = "operator"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCOMM", (Term.prim_mk_const { Name = "FCOMM", Thy = "operator"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RIGHT_ID", (Term.prim_mk_const { Name = "RIGHT_ID", Thy = "operator"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEFT_ID", (Term.prim_mk_const { Name = "LEFT_ID", Thy = "operator"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MONOID", (Term.prim_mk_const { Name = "MONOID", Thy = "operator"}))
  val operator_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "operator"
end
