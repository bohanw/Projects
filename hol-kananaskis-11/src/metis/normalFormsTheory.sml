structure normalFormsTheory :> normalFormsTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading normalFormsTheory ... " else ()
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
          ("normalForms",
          Arbnum.fromString "1488585933",
          Arbnum.fromString "503437")
          [("bool",
           Arbnum.fromString "1488585882",
           Arbnum.fromString "632112")];
  val _ = Theory.incorporate_types "normalForms" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("min", "="),
   ID("min", "==>"), ID("normalForms", "EXT_POINT"),
   ID("normalForms", "UNIV_POINT")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1], TYOP [0, 0, 1], TYOP [0, 2, 0], TYV "'b",
   TYOP [0, 0, 4], TYOP [0, 5, 0], TYOP [0, 5, 6], TYOP [0, 2, 1],
   TYOP [0, 5, 1], TYOP [0, 9, 1], TYOP [0, 8, 1], TYOP [0, 4, 1],
   TYOP [0, 4, 12], TYOP [0, 1, 1], TYOP [0, 1, 14], TYOP [0, 5, 9]]
  end
  val _ = Theory.incorporate_consts "normalForms" tyvector
     [("UNIV_POINT", 3), ("EXT_POINT", 7)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("f", 5), TMV("g", 5), TMV("p", 2), TMV("x", 0), TMC(2, 8),
   TMC(2, 10), TMC(2, 11), TMC(3, 13), TMC(3, 15), TMC(3, 16), TMC(4, 15),
   TMC(5, 7), TMC(6, 3)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op EXT_POINT_DEF x = x
    val op EXT_POINT_DEF =
    DT(((("normalForms",0),[("bool",[59,89,146])]),["DISK_THM"]),
       [read"%5%0%5%1%10%7$1%11$1@$0@@@$0%11$1@$0@@@@%9$1@$0@@|@|@"])
  fun op UNIV_POINT_DEF x = x
    val op UNIV_POINT_DEF =
    DT(((("normalForms",2),[("bool",[2,25,26,54,58,63])]),["DISK_THM"]),
       [read"%6%2%10$0%12$0@@@%4%3$1$0@|@@|@"])
  fun op EXT_POINT x = x
    val op EXT_POINT =
    DT(((("normalForms",1),
        [("bool",[25,26,56]),("normalForms",[0])]),["DISK_THM"]),
       [read"%5%0%5%1%8%7$1%11$1@$0@@@$0%11$1@$0@@@@%9$1@$0@@|@|@"])
  fun op UNIV_POINT x = x
    val op UNIV_POINT =
    DT(((("normalForms",3),
        [("bool",[26]),("normalForms",[2])]),["DISK_THM"]),
       [read"%6%2%8$0%12$0@@@%4%3$1$0@|@@|@"])
  end
  val _ = DB.bindl "normalForms"
  [("EXT_POINT_DEF",EXT_POINT_DEF,DB.Def),
   ("UNIV_POINT_DEF",UNIV_POINT_DEF,DB.Def),
   ("EXT_POINT",EXT_POINT,DB.Thm), ("UNIV_POINT",UNIV_POINT,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("boolTheory.bool_grammars",
                          boolTheory.bool_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXT_POINT", (Term.prim_mk_const { Name = "EXT_POINT", Thy = "normalForms"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXT_POINT", (Term.prim_mk_const { Name = "EXT_POINT", Thy = "normalForms"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIV_POINT", (Term.prim_mk_const { Name = "UNIV_POINT", Thy = "normalForms"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIV_POINT", (Term.prim_mk_const { Name = "UNIV_POINT", Thy = "normalForms"}))
  val normalForms_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "normalForms"
end
