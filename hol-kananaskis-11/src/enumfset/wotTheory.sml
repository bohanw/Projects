structure wotTheory :> wotTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading wotTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quantHeuristicsTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("wot",Arbnum.fromString "1488587898",Arbnum.fromString "17166")
          [("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749"),
           ("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227")];
  val _ = Theory.incorporate_types "wot" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("pair", ","),
   ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("pred_set", "BIGUNION"), ID("pred_set", "CHOICE"),
   ID("pred_set", "COMPL"), ID("pred_set", "EMPTY"),
   ID("pred_set", "GSPEC"), ID("bool", "IN"), ID("pred_set", "INSERT"),
   ID("relation", "STRORD"), ID("pred_set", "SUBSET"),
   ID("relation", "StrongLinearOrder"), ID("wot", "StrongWellOrder"),
   ID("relation", "WF"), ID("relation", "WeakOrder"),
   ID("wot", "WeakWellOrder"), ID("bool", "\\/"), ID("wot", "chain"),
   ID("wot", "cpl"), ID("wot", "mex"), ID("wot", "mex_less"),
   ID("wot", "mex_less_eq"), ID("wot", "preds"), ID("wot", "preds_image"),
   ID("wot", "setsuc"), ID("wot", "succl"), ID("wot", "tower"),
   ID("wot", "uncl"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'x", TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [0, 3, 0],
   TYOP [0, 2, 2], TYOP [0, 2, 3], TYOP [0, 1, 2], TYOP [0, 2, 1],
   TYOP [0, 3, 2], TYV "'a", TYOP [0, 10, 0], TYOP [0, 10, 11],
   TYOP [0, 12, 0], TYOP [0, 11, 0], TYOP [0, 14, 0], TYOP [0, 13, 0],
   TYOP [0, 4, 0], TYOP [4, 2, 0], TYOP [0, 0, 18], TYOP [0, 2, 19],
   TYOP [0, 0, 0], TYOP [0, 0, 21], TYOP [0, 11, 14], TYOP [0, 7, 0],
   TYOP [0, 7, 24], TYOP [0, 3, 4], TYOP [0, 1, 18], TYOP [0, 27, 3],
   TYOP [0, 10, 14], TYOP [0, 1, 3], TYOP [0, 2, 4], TYOP [0, 1, 5],
   TYOP [0, 7, 7]]
  end
  val _ = Theory.incorporate_consts "wot" tyvector
     [("uncl", 4), ("tower", 4), ("succl", 4), ("setsuc", 5),
      ("preds_image", 6), ("preds", 7), ("mex_less_eq", 7),
      ("mex_less", 7), ("mex", 8), ("lub_sub", 9), ("cpl", 6),
      ("comparable", 3), ("chain", 4), ("WeakWellOrder", 13), ("U", 6),
      ("StrongWellOrder", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 2), TMV("A", 3), TMV("B", 11), TMV("B", 2), TMV("C", 3),
   TMV("R", 12), TMV("X", 2), TMV("a", 1), TMV("a", 2), TMV("b", 10),
   TMV("b", 1), TMV("b", 2), TMV("c", 3), TMV("m", 10), TMV("s", 2),
   TMV("w", 3), TMV("x", 1), TMC(2, 14), TMC(2, 3), TMC(2, 15), TMC(2, 16),
   TMC(2, 4), TMC(2, 17), TMC(3, 20), TMC(5, 22), TMC(6, 7), TMC(6, 22),
   TMC(6, 23), TMC(6, 6), TMC(6, 25), TMC(6, 26), TMC(7, 22), TMC(8, 14),
   TMC(8, 16), TMC(9, 9), TMC(10, 8), TMC(11, 5), TMC(12, 11), TMC(13, 28),
   TMC(14, 29), TMC(14, 30), TMC(14, 31), TMC(15, 32), TMC(16, 33),
   TMC(17, 6), TMC(17, 26), TMC(18, 13), TMC(19, 13), TMC(20, 13),
   TMC(21, 13), TMC(22, 13), TMC(23, 22), TMC(24, 4), TMC(25, 6),
   TMC(26, 8), TMC(27, 7), TMC(28, 7), TMC(29, 7), TMC(30, 6), TMC(31, 5),
   TMC(32, 4), TMC(33, 4), TMC(34, 4), TMC(35, 21)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op cpl_def x = x
    val op cpl_def =
    DT(((("wot",0),[]),[]),
       [read"%21%0%21%3%26%53$1@$0@@%51%44$1@$0@@%44$0@$1@@@|@|@"])
  fun op chain_def x = x
    val op chain_def =
    DT(((("wot",1),[]),[]),
       [read"%22%4%26%52$0@@%21%8%21%11%31%24%41$1@$2@@%41$0@$2@@@%53$1@$0@@|@|@@|@"])
  fun op mex_def x = x
    val op mex_def =
    DT(((("wot",2),[]),[]), [read"%21%14%25%54$0@@%35%36$0@@@|@"])
  fun op setsuc_def x = x
    val op setsuc_def =
    DT(((("wot",3),[]),[]), [read"%21%14%28%59$0@@%42%54$0@@$0@@|@"])
  fun op succl_def x = x
    val op succl_def =
    DT(((("wot",4),[]),[]),
       [read"%22%12%26%60$0@@%21%14%31%41$0@$1@@%41%59$0@@$1@@|@@|@"])
  fun op uncl_def x = x
    val op uncl_def =
    DT(((("wot",5),[]),[]),
       [read"%22%12%26%62$0@@%22%15%31%24%45$0@$1@@%52$0@@@%41%34$0@@$1@@|@@|@"])
  fun op tower_def x = x
    val op tower_def =
    DT(((("wot",6),[]),[]), [read"%22%1%26%61$0@@%24%60$0@@%62$0@@@|@"])
  fun op mex_less_eq_def x = x
    val op mex_less_eq_def =
    DT(((("wot",12),[]),[]),
       [read"%18%7%18%10%26%56$1@$0@@%44%57$1@@%57$0@@@|@|@"])
  fun op mex_less_def x = x
    val op mex_less_def = DT(((("wot",13),[]),[]), [read"%29%55@%43%56@@"])
  fun op WeakWellOrder_def x = x
    val op WeakWellOrder_def =
    DT(((("wot",14),[]),[]),
       [read"%20%5%26%50$0@@%24%49$0@@%19%2%31%63%27$0@%37@@@%32%13%24%39$0@$1@@%17%9%31%39$0@$2@@$3$1@$0@@|@@|@@|@@@|@"])
  fun op preds_image_def x = x
    val op preds_image_def =
    DT(((("wot",15),[]),[]),
       [read"%21%6%30%58$0@@%38%16%23%57$0@@%40$0@$1@@|@@|@"])
  fun op StrongWellOrder_def x = x
    val op StrongWellOrder_def =
    DT(((("wot",16),[]),[]), [read"%20%5%26%47$0@@%24%46$0@@%48$0@@@|@"])
  fun op StrongWellOrderExists x = x
    val op StrongWellOrderExists =
    DT(((("wot",17),
        [("bool",
         [25,26,27,30,36,48,51,52,53,54,56,58,63,92,93,96,101,105,106,107,
          124]),("pair",[3]),
         ("pred_set",
         [0,3,6,10,11,14,18,19,20,21,26,45,51,67,80,90,120,243,244,252,257,
          258,264,285,286]),
         ("relation",[0,1,4,7,100,179,180,184,190,194,202,205,206,207]),
         ("wot",
         [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])]),["DISK_THM"]),
       [read"%33%5%24%46$0@@%48$0@@|@"])
  end
  val _ = DB.bindl "wot"
  [("cpl_def",cpl_def,DB.Def), ("chain_def",chain_def,DB.Def),
   ("mex_def",mex_def,DB.Def), ("setsuc_def",setsuc_def,DB.Def),
   ("succl_def",succl_def,DB.Def), ("uncl_def",uncl_def,DB.Def),
   ("tower_def",tower_def,DB.Def),
   ("mex_less_eq_def",mex_less_eq_def,DB.Def),
   ("mex_less_def",mex_less_def,DB.Def),
   ("WeakWellOrder_def",WeakWellOrder_def,DB.Def),
   ("preds_image_def",preds_image_def,DB.Def),
   ("StrongWellOrder_def",StrongWellOrder_def,DB.Def),
   ("StrongWellOrderExists",StrongWellOrderExists,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars),
                         ("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="wot",Name="reln"}, (alpha --> (alpha --> bool)))
  val _ = update_grms
       (UTOFF (temp_set_fixity "cpl"))
       (Infix(HOLgrammars.RIGHT, 850))
  val _ = update_grms
       (UTOFF (temp_set_fixity "mex_less_eq"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF (temp_set_fixity "mex_less"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpl", (Term.prim_mk_const { Name = "cpl", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpl", (Term.prim_mk_const { Name = "cpl", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chain", (Term.prim_mk_const { Name = "chain", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chain", (Term.prim_mk_const { Name = "chain", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mex", (Term.prim_mk_const { Name = "mex", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mex", (Term.prim_mk_const { Name = "mex", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("setsuc", (Term.prim_mk_const { Name = "setsuc", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("setsuc", (Term.prim_mk_const { Name = "setsuc", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("succl", (Term.prim_mk_const { Name = "succl", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("succl", (Term.prim_mk_const { Name = "succl", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("uncl", (Term.prim_mk_const { Name = "uncl", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("uncl", (Term.prim_mk_const { Name = "uncl", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tower", (Term.prim_mk_const { Name = "tower", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tower", (Term.prim_mk_const { Name = "tower", Thy = "wot"}))


  val _ = update_grms
       (UTOFF temp_overload_on)
       ("comparable", (Term.prim_mk_const { Name = "comparable", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("comparable", (Term.prim_mk_const { Name = "comparable", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("U", (Term.prim_mk_const { Name = "U", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("U", (Term.prim_mk_const { Name = "U", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lub_sub", (Term.prim_mk_const { Name = "lub_sub", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lub_sub", (Term.prim_mk_const { Name = "lub_sub", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("preds", (Term.prim_mk_const { Name = "preds", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("preds", (Term.prim_mk_const { Name = "preds", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mex_less_eq", (Term.prim_mk_const { Name = "mex_less_eq", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mex_less_eq", (Term.prim_mk_const { Name = "mex_less_eq", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mex_less", (Term.prim_mk_const { Name = "mex_less", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mex_less", (Term.prim_mk_const { Name = "mex_less", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WeakWellOrder", (Term.prim_mk_const { Name = "WeakWellOrder", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WeakWellOrder", (Term.prim_mk_const { Name = "WeakWellOrder", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("preds_image", (Term.prim_mk_const { Name = "preds_image", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("preds_image", (Term.prim_mk_const { Name = "preds_image", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("StrongWellOrder", (Term.prim_mk_const { Name = "StrongWellOrder", Thy = "wot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("StrongWellOrder", (Term.prim_mk_const { Name = "StrongWellOrder", Thy = "wot"}))
  val wot_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "wot",
    thydataty = "compute",
    data =
        "wot.chain_def wot.setsuc_def wot.succl_def wot.uncl_def wot.tower_def wot.mex_def wot.mex_less_eq_def wot.mex_less_def wot.WeakWellOrder_def wot.preds_image_def wot.StrongWellOrder_def wot.cpl_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "wot"
end
