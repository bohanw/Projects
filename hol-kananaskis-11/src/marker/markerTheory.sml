structure markerTheory :> markerTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading markerTheory ... " else ()
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
          ("marker",
          Arbnum.fromString "1488585918",
          Arbnum.fromString "889499")
          [("bool",
           Arbnum.fromString "1488585882",
           Arbnum.fromString "632112")];
  val _ = Theory.incorporate_types "marker" [("label", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("marker", "label"),
   ID("bool", "!"), ID("bool", "/\\"), ID("marker", ":-"), ID("min", "="),
   ID("marker", "AC"), ID("marker", "Abbrev"), ID("marker", "Cong"),
   ID("marker", "IfCases"), ID("bool", "T"), ID("bool", "\\/"),
   ID("marker", "stmarker"), ID("marker", "unint")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [0, 0, 0], TYOP [1], TYOP [0, 2, 2], TYOP [0, 2, 3],
   TYOP [2], TYOP [0, 5, 3], TYOP [0, 0, 2], TYOP [0, 7, 2],
   TYOP [0, 3, 2], TYOP [0, 5, 2], TYOP [0, 10, 2], TYOP [0, 0, 7]]
  end
  val _ = Theory.incorporate_consts "marker" tyvector
     [("unint", 1), ("stmarker", 1), ("IfCases", 2), ("Cong", 3),
      ("Abbrev", 3), ("AC", 4), (":-", 6)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("argument", 2), TMV("b1", 2), TMV("b2", 2), TMV("lab", 5),
   TMV("m", 2), TMV("p", 2), TMV("q", 2), TMV("x", 0), TMV("x", 2),
   TMC(3, 8), TMC(3, 9), TMC(3, 11), TMC(4, 4), TMC(5, 6), TMC(6, 12),
   TMC(6, 4), TMC(7, 4), TMC(8, 3), TMC(9, 3), TMC(10, 2), TMC(11, 2),
   TMC(12, 4), TMC(13, 1), TMC(13, 3), TMC(14, 1)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op stmarker_def x = x
    val op stmarker_def =
    DT(((("marker",0),[]),[]), [read"%9%7%14%22$0@@$0@|@"])
  fun op unint_def x = x
    val op unint_def =
    DT(((("marker",5),[]),[]), [read"%9%7%14%24$0@@$0@|@"])
  fun op Abbrev_def x = x
    val op Abbrev_def =
    DT(((("marker",6),[]),[]), [read"%10%8%15%17$0@@$0@|@"])
  fun op IfCases_def x = x
    val op IfCases_def = DT(((("marker",7),[]),[]), [read"%15%19@%20@"])
  fun op AC_DEF x = x
    val op AC_DEF =
    DT(((("marker",8),[]),[]),
       [read"%10%1%10%2%15%16$1@$0@@%12$1@$0@@|@|@"])
  fun op Cong_def x = x
    val op Cong_def =
    DT(((("marker",9),[]),[]), [read"%10%8%15%18$0@@$0@|@"])
  fun op label_def x = x
    val op label_def =
    DT(((("marker",10),[]),[]), [read"%11%3%10%0%15%13$1@$0@@$0@|@|@"])
  fun op move_left_conj x = x
    val op move_left_conj =
    DT(((("marker",1),
        [("bool",[42,43,51,56]),("marker",[0])]),["DISK_THM"]),
       [read"%10%5%10%6%10%4%12%15%12$2@%23$0@@@%12%23$0@@$2@@@%12%15%12%12%23$0@@$2@@$1@@%12%23$0@@%12$2@$1@@@@%15%12$2@%12%23$0@@$1@@@%12%23$0@@%12$2@$1@@@@@|@|@|@"])
  fun op move_right_conj x = x
    val op move_right_conj =
    DT(((("marker",2),
        [("bool",[42,43,51,56,58]),("marker",[0])]),["DISK_THM"]),
       [read"%10%5%10%6%10%4%12%15%12%23$0@@$2@@%12$2@%23$0@@@@%12%15%12$2@%12$1@%23$0@@@@%12%12$2@$1@@%23$0@@@@%15%12%12$2@%23$0@@@$1@@%12%12$2@$1@@%23$0@@@@@|@|@|@"])
  fun op move_left_disj x = x
    val op move_left_disj =
    DT(((("marker",3),
        [("bool",[51,56,93,95]),("marker",[0])]),["DISK_THM"]),
       [read"%10%5%10%6%10%4%12%15%21$2@%23$0@@@%21%23$0@@$2@@@%12%15%21%21%23$0@@$2@@$1@@%21%23$0@@%21$2@$1@@@@%15%21$2@%21%23$0@@$1@@@%21%23$0@@%21$2@$1@@@@@|@|@|@"])
  fun op move_right_disj x = x
    val op move_right_disj =
    DT(((("marker",4),
        [("bool",[51,56,58,93,95]),("marker",[0])]),["DISK_THM"]),
       [read"%10%5%10%6%10%4%12%15%21%23$0@@$2@@%21$2@%23$0@@@@%12%15%21$2@%21$1@%23$0@@@@%21%21$2@$1@@%23$0@@@@%15%21%21$2@%23$0@@@$1@@%21%21$2@$1@@%23$0@@@@@|@|@|@"])
  end
  val _ = DB.bindl "marker"
  [("stmarker_def",stmarker_def,DB.Def), ("unint_def",unint_def,DB.Def),
   ("Abbrev_def",Abbrev_def,DB.Def), ("IfCases_def",IfCases_def,DB.Def),
   ("AC_DEF",AC_DEF,DB.Def), ("Cong_def",Cong_def,DB.Def),
   ("label_def",label_def,DB.Def),
   ("move_left_conj",move_left_conj,DB.Thm),
   ("move_right_conj",move_right_conj,DB.Thm),
   ("move_left_disj",move_left_disj,DB.Thm),
   ("move_right_disj",move_right_disj,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("boolTheory.bool_grammars",
                          boolTheory.bool_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("stmarker", (Term.prim_mk_const { Name = "stmarker", Thy = "marker"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("unint", (Term.prim_mk_const { Name = "unint", Thy = "marker"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Abbrev", (Term.prim_mk_const { Name = "Abbrev", Thy = "marker"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IfCases", (Term.prim_mk_const { Name = "IfCases", Thy = "marker"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("AC", (Term.prim_mk_const { Name = "AC", Thy = "marker"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Cong", (Term.prim_mk_const { Name = "Cong", Thy = "marker"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = ":-", fixity = Infix(HOLgrammars.NONASSOC, 80),
pp_elements = [HardSpace 1, TOK ":-", BreakSpace(1, 0)],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 2))}
  val _ = update_grms temp_add_type "label"
  val _ = update_grms
       (UTOFF temp_overload_on)
       (":-", (Term.prim_mk_const { Name = ":-", Thy = "marker"}))
  val marker_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "marker",
    thydataty = "OpenTheoryMap",
    data =
        " 11.Unwanted.id6.marker8.stmarker11.Unwanted.id6.marker6.Abbrev15.Data.Bool./\\\\\\\\6.marker2.AC15.Data.Bool./\\\\\\\\4.bool3./\\\\11.Unwanted.id6.marker4.Cong"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "marker"
end
