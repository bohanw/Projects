structure oneTheory :> oneTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading oneTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open combinTheory satTheory
  in end;
  val _ = Theory.link_parents
          ("one",Arbnum.fromString "1488585999",Arbnum.fromString "26773")
          [("combin",
           Arbnum.fromString "1488585922",
           Arbnum.fromString "652622"),
           ("sat",
           Arbnum.fromString "1488585914",
           Arbnum.fromString "868419")];
  val _ = Theory.incorporate_types "one" [("one", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("one", "one"), ID("min", "bool"), ID("bool", "!"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"),
   ID("min", "@"), ID("bool", "T"), ID("bool", "TYPE_DEFINITION"),
   ID("one", "one_CASE")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [0, 0, 0], TYOP [1], TYOP [0, 2, 1], TYOP [2],
   TYOP [0, 2, 4], TYOP [0, 0, 2], TYOP [0, 2, 0], TYOP [0, 0, 4],
   TYOP [0, 8, 4], TYOP [0, 6, 4], TYOP [0, 10, 4], TYOP [0, 5, 4],
   TYOP [0, 12, 4], TYOP [0, 0, 8], TYOP [0, 4, 4], TYOP [0, 4, 15],
   TYOP [0, 6, 10], TYOP [0, 2, 5], TYOP [0, 7, 4], TYOP [0, 19, 4],
   TYOP [0, 5, 2], TYOP [0, 15, 12]]
  end
  val _ = Theory.incorporate_consts "one" tyvector
     [("one_CASE", 3), ("one", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 5), TMV("b", 4), TMV("e", 0), TMV("f", 6), TMV("fn", 7),
   TMV("g", 6), TMV("rep", 5), TMV("u", 2), TMV("v", 2), TMV("x", 0),
   TMV("x", 2), TMC(3, 9), TMC(3, 11), TMC(3, 13), TMC(3, 12), TMC(4, 14),
   TMC(4, 16), TMC(4, 17), TMC(4, 18), TMC(5, 16), TMC(6, 20), TMC(6, 13),
   TMC(7, 20), TMC(8, 21), TMC(9, 4), TMC(10, 22), TMC(1, 2), TMC(11, 3)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op one_TY_DEF x = x
    val op one_TY_DEF =
    DT(((("one",0),[("bool",[25])]),["DISK_THM"]),
       [read"%21%6%25%1$0|@$0@|@"])
  fun op one_DEF x = x
    val op one_DEF = DT(((("one",2),[]),[]), [read"%18%26@%23%10%24|@@"])
  fun op one_case_def x = x
    val op one_case_def =
    DT(((("one",8),[]),[]), [read"%14%7%11%9%15%27$1@$0@@$0@|@|@"])
  fun op one_axiom x = x
    val op one_axiom =
    DT(((("one",1),[("bool",[14,26,114]),("one",[0])]),["DISK_THM"]),
       [read"%12%3%12%5%17$1@$0@|@|@"])
  fun op one x = x
    val op one =
    DT(((("one",3),[("one",[1])]),["DISK_THM"]), [read"%14%8%18$0@%26@|@"])
  fun op one_Axiom x = x
    val op one_Axiom =
    DT(((("one",4),
        [("bool",[7,14,25,26,36,56]),("one",[3])]),["DISK_THM"]),
       [read"%11%2%22%4%15$0%26@@$1@|@|@"])
  fun op one_prim_rec x = x
    val op one_prim_rec =
    DT(((("one",5),[("bool",[7]),("one",[4])]),["DISK_THM"]),
       [read"%11%2%20%4%15$0%26@@$1@|@|@"])
  fun op one_induction x = x
    val op one_induction =
    DT(((("one",6),[("bool",[25,63]),("one",[3])]),["DISK_THM"]),
       [read"%13%0%19$0%26@@%14%10$1$0@|@@|@"])
  fun op FORALL_ONE x = x
    val op FORALL_ONE =
    DT(((("one",7),
        [("bool",[25,36,51,53,58,63,105,106,124]),
         ("one",[6])]),["DISK_THM"]), [read"%16%14%10%0$0@|@@%0%26@@"])
  fun op one_case_thm x = x
    val op one_case_thm =
    DT(((("one",9),[("bool",[25,36,56,58]),("one",[3,8])]),["DISK_THM"]),
       [read"%11%9%15%27%26@$0@@$0@|@"])
  end
  val _ = DB.bindl "one"
  [("one_TY_DEF",one_TY_DEF,DB.Def), ("one_DEF",one_DEF,DB.Def),
   ("one_case_def",one_case_def,DB.Def), ("one_axiom",one_axiom,DB.Thm),
   ("one",one,DB.Thm), ("one_Axiom",one_Axiom,DB.Thm),
   ("one_prim_rec",one_prim_rec,DB.Thm),
   ("one_induction",one_induction,DB.Thm),
   ("FORALL_ONE",FORALL_ONE,DB.Thm), ("one_case_thm",one_case_thm,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("combinTheory.combin_grammars",
                          combinTheory.combin_grammars),
                         ("satTheory.sat_grammars",satTheory.sat_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "one"
  val _ = update_grms temp_add_type "one"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("one", (Term.prim_mk_const { Name = "one", Thy = "one"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "one", fixity = Closefix,
pp_elements = [TOK "(", TOK ")"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("()", (Term.prim_mk_const { Name = "one", Thy = "one"}))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="one",Name="unit"}, T"one" "one" [])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("one_CASE", (Term.prim_mk_const { Name = "one_CASE", Thy = "one"}))
  val one_grammars = Parse.current_lgrms()
  end


  val _ = TypeBase.write
    (TypeBasePure.gen_datatype_info
       {ax=one_prim_rec,
        ind=one_induction,
        case_defs = [one_case_thm]});

  val _ = let open computeLib
          in add_thms [one_case_def]
          end;val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "one", thydataty = "simp", data = "one.one one.FORALL_ONE"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "one",
    thydataty = "OpenTheoryMap",
    data = "14.Data.Unit.unit3.one3.one 12.Data.Unit.()3.one3.one"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "one"
end
