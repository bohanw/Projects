structure tcTheory :> tcTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading tcTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open finite_mapTheory totoTheory
  in end;
  val _ = Theory.link_parents
          ("tc",Arbnum.fromString "1488588190",Arbnum.fromString "903004")
          [("finite_map",
           Arbnum.fromString "1488586927",
           Arbnum.fromString "430131"),
           ("toto",
           Arbnum.fromString "1488587912",
           Arbnum.fromString "619395")];
  val _ = Theory.incorporate_types "tc" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("finite_map", "fmap"),
   ID("list", "list"), ID("bool", "!"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "COND"),
   ID("list", "CONS"), ID("pred_set", "EMPTY"),
   ID("relation", "EMPTY_REL"), ID("finite_map", "FAPPLY"),
   ID("finite_map", "FDOM"), ID("pred_set", "FINITE"),
   ID("tc", "FMAP_TO_RELN"), ID("finite_map", "FUN_FMAP"),
   ID("combin", "I"), ID("bool", "IN"), ID("pred_set", "INSERT"),
   ID("list", "LIST_TO_SET"), ID("list", "NIL"), ID("relation", "O"),
   ID("relation", "RDOM"), ID("tc", "RELN_TO_FMAP"), ID("relation", "RTC"),
   ID("relation", "RUNION"), ID("pred_set", "SUBSET"),
   ID("relation", "TC"), ID("tc", "TC_ITER"), ID("tc", "TC_MOD"),
   ID("pred_set", "UNION"), ID("bool", "\\/"), ID("tc", "^|"),
   ID("tc", "^|^"), ID("finite_map", "o_f"), ID("tc", "subTC"),
   ID("tc", "|^"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [0, 2, 3],
   TYOP [0, 3, 4], TYOP [0, 2, 2], TYOP [0, 2, 6], TYOP [0, 1, 7],
   TYOP [2, 1, 2], TYOP [0, 9, 9], TYOP [3, 1], TYOP [0, 11, 10],
   TYOP [0, 3, 9], TYOP [0, 9, 3], TYV "'b", TYOP [2, 1, 15],
   TYOP [0, 2, 0], TYOP [0, 16, 0], TYOP [0, 18, 0], TYOP [0, 9, 0],
   TYOP [0, 20, 0], TYOP [0, 17, 0], TYOP [0, 3, 0], TYOP [0, 23, 0],
   TYOP [0, 11, 0], TYOP [0, 25, 0], TYOP [0, 0, 0], TYOP [0, 0, 27],
   TYOP [0, 16, 18], TYOP [0, 9, 20], TYOP [0, 2, 17], TYOP [0, 3, 23],
   TYOP [0, 6, 0], TYOP [0, 6, 33], TYOP [0, 0, 7], TYOP [0, 11, 11],
   TYOP [0, 1, 36], TYOP [0, 9, 2], TYOP [0, 2, 9], TYOP [0, 3, 39],
   TYOP [0, 15, 15], TYOP [0, 1, 17], TYOP [0, 1, 6], TYOP [0, 11, 2],
   TYOP [0, 3, 3], TYOP [0, 3, 45], TYOP [0, 3, 2], TYOP [0, 16, 16],
   TYOP [0, 41, 48], TYOP [0, 6, 10]]
  end
  val _ = Theory.incorporate_consts "tc" tyvector
     [("|^", 5), ("subTC", 5), ("^|^", 5), ("^|", 5), ("TC_MOD", 8),
      ("TC_ITER", 12), ("RELN_TO_FMAP", 13), ("FMAP_TO_RELN", 14)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("Q", 3), TMV("R", 3), TMV("a", 1), TMV("b", 1), TMV("d", 11),
   TMV("f", 16), TMV("f", 9), TMV("g", 9), TMV("q", 1), TMV("r", 9),
   TMV("ra", 2), TMV("rx", 2), TMV("s", 2), TMV("w", 1), TMV("x", 1),
   TMV("y", 1), TMV("z", 1), TMC(4, 17), TMC(4, 19), TMC(4, 21),
   TMC(4, 22), TMC(4, 24), TMC(4, 26), TMC(5, 28), TMC(6, 3), TMC(6, 28),
   TMC(6, 29), TMC(6, 30), TMC(6, 31), TMC(6, 32), TMC(6, 34), TMC(7, 28),
   TMC(8, 17), TMC(9, 35), TMC(10, 37), TMC(11, 2), TMC(12, 3),
   TMC(13, 14), TMC(14, 38), TMC(15, 17), TMC(16, 14), TMC(17, 40),
   TMC(18, 41), TMC(18, 6), TMC(19, 42), TMC(20, 43), TMC(21, 44),
   TMC(22, 11), TMC(23, 46), TMC(24, 47), TMC(25, 13), TMC(26, 45),
   TMC(27, 46), TMC(28, 31), TMC(29, 45), TMC(30, 12), TMC(31, 8),
   TMC(32, 7), TMC(33, 28), TMC(34, 5), TMC(35, 5), TMC(36, 49),
   TMC(36, 50), TMC(37, 5), TMC(38, 5), TMC(39, 27)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op DRESTR x = x
    val op DRESTR =
    DT(((("tc",0),[]),[]),
       [read"%21%1%20%12%17%2%17%3%25%59$3@$2@$1@$0@@%23%44$1@$2@@$3$1@$0@@@|@|@|@|@"])
  fun op RRESTR x = x
    val op RRESTR =
    DT(((("tc",2),[]),[]),
       [read"%21%1%20%12%17%2%17%3%25%64$3@$2@$1@$0@@%23%44$0@$2@@$3$1@$0@@@|@|@|@|@"])
  fun op BRESTR x = x
    val op BRESTR =
    DT(((("tc",3),[]),[]),
       [read"%21%1%20%12%29%60$1@$0@@%64%59$1@$0@@$0@@|@|@"])
  fun op subTC x = x
    val op subTC =
    DT(((("tc",8),[]),[]),
       [read"%21%1%20%12%17%14%17%15%25%63$3@$2@$1@$0@@%58$3$1@$0@@%32%2%32%3%23%51%60$5@$4@@$1@$0@@%23%44$1@$4@@%23%44$0@$4@@%23$5$3@$1@@$5$0@$2@@@@@|@|@@@|@|@|@|@"])
  fun op FMAP_TO_RELN x = x
    val op FMAP_TO_RELN =
    DT(((("tc",15),[]),[]),
       [read"%19%6%17%14%28%40$1@$0@@%33%44$0@%38$1@@@%37$1@$0@@%35@@|@|@"])
  fun op RELN_TO_FMAP x = x
    val op RELN_TO_FMAP =
    DT(((("tc",16),[]),[]), [read"%21%1%27%50$0@@%41$0@%49$0@@@|@"])
  fun op TC_MOD x = x
    val op TC_MOD =
    DT(((("tc",23),[]),[]),
       [read"%17%14%20%11%20%10%28%56$2@$1@$0@@%33%44$2@$0@@%57$0@$1@@$0@@|@|@|@"])
  fun op TC_ITER x = x
    val op TC_ITER =
    DT(((("tc",32),[("list",[13])]),["DISK_THM"]),
       [read"%23%19%9%27%55%47@$0@@$0@|@@%17%14%22%4%19%9%27%55%34$2@$1@@$0@@%55$1@%62%56$2@%37$0@$2@@@$0@@@|@|@|@@"])
  fun op DRESTR_IN x = x
    val op DRESTR_IN =
    DT(((("tc",1),
        [("bool",[14,25,26,27,30,51,54,56,63,64]),("pred_set",[0,10]),
         ("tc",[0])]),["DISK_THM"]),
       [read"%21%1%20%12%17%2%28%59$2@$1@$0@@%33%44$0@$1@@$2$0@@%35@@|@|@|@"])
  fun op DRESTR_EMPTY x = x
    val op DRESTR_EMPTY =
    DT(((("tc",4),
        [("bool",[14,25,26,27,54,63,64]),("pred_set",[0,10]),
         ("relation",[106]),("tc",[1])]),["DISK_THM"]),
       [read"%21%1%29%59$0@%35@@%36@|@"])
  fun op DRESTR_RDOM x = x
    val op DRESTR_RDOM =
    DT(((("tc",5),
        [("bool",[14,25,26,27,30,54,63,64]),("pred_set",[0,10]),
         ("relation",[216]),("tc",[1])]),["DISK_THM"]),
       [read"%21%1%29%59$0@%49$0@@@$0@|@"])
  fun op REMPTY_RRESTR x = x
    val op REMPTY_RRESTR =
    DT(((("tc",6),
        [("bool",[14,25,26,51,54,63]),("relation",[106]),
         ("tc",[2])]),["DISK_THM"]), [read"%20%12%29%64%36@$0@@%36@|@"])
  fun op O_REMPTY_O x = x
    val op O_REMPTY_O =
    DT(((("tc",7),
        [("bool",[14,25,26,37,51,54,63]),
         ("relation",[106,162])]),["DISK_THM"]),
       [read"%23%21%1%29%48$0@%36@@%36@|@@%21%1%29%48%36@$0@@%36@|@@"])
  fun op subTC_thm x = x
    val op subTC_thm =
    DT(((("tc",9),
        [("bool",[14,25,26,51,52,63]),("relation",[99,162,166]),
         ("tc",[0,2,3,8])]),["DISK_THM"]),
       [read"%21%1%20%12%29%63$1@$0@@%52$1@%48$1@%48%59%51%60$1@$0@@@$0@@$1@@@@|@|@"])
  fun op subTC_EMPTY x = x
    val op subTC_EMPTY =
    DT(((("tc",10),
        [("bool",[14,25,26,52,56]),("relation",[106,166]),
         ("tc",[4,7,9])]),["DISK_THM"]), [read"%21%1%29%63$0@%35@@$0@|@"])
  fun op RTC_INSERT x = x
    val op RTC_INSERT =
    DT(((("tc",11),
        [("bool",[25,26,27,30,51,52,53,54,56,58,63,99,105]),
         ("pred_set",[80,86]),("relation",[0,18,19,20,22,58,73,75,82]),
         ("tc",[0,2,3])]),["DISK_THM"]),
       [read"%21%1%20%12%17%2%17%13%17%16%25%51%60$4@%45$2@$3@@@$1@$0@@%58%51%60$4@$3@@$1@$0@@%23%58%24$2@$1@@%32%14%23%44$0@$4@@%23%51%60$5@$4@@$2@$0@@$5$0@$3@@@|@@@%58%24$2@$0@@%32%15%23%44$0@$4@@%23$5$3@$0@@%51%60$5@$4@@$0@$1@@@|@@@@@|@|@|@|@|@"])
  fun op subTC_INSERT x = x
    val op subTC_INSERT =
    DT(((("tc",12),
        [("bool",[25,26,27,30,48,51,52,53,54,56,58,63,92,96,102,105]),
         ("pred_set",[80,86]),("relation",[0,18,22,73,75,82]),
         ("tc",[0,2,3,8,11])]),["DISK_THM"]),
       [read"%21%1%20%12%17%8%17%14%17%15%25%63$4@%45$2@$3@@$1@$0@@%58%63$4@$3@$1@$0@@%23%63$4@$3@$1@$2@@%63$4@$3@$2@$0@@@@|@|@|@|@|@"])
  fun op subTC_RDOM x = x
    val op subTC_RDOM =
    DT(((("tc",13),
        [("bool",[14,25,26,51,52,63,102]),
         ("relation",[0,18,22,38,42,59,73,75,82,216]),
         ("tc",[0,2,3,8])]),["DISK_THM"]),
       [read"%21%1%29%63$0@%49$0@@@%54$0@@|@"])
  fun op subTC_INSERT_COR x = x
    val op subTC_INSERT_COR =
    DT(((("tc",14),
        [("bool",[14,25,26,63,108]),("pred_set",[0,33]),
         ("sat",[1,3,5,6,7,11,12,13,15,16]),("tc",[12])]),["DISK_THM"]),
       [read"%21%1%20%12%17%14%17%2%28%63$3@%45$1@$2@@$0@@%33%44$1@%63$3@$2@$0@@@%57%63$3@$2@$0@@%63$3@$2@$1@@@%63$3@$2@$0@@@|@|@|@|@"])
  fun op RDOM_SUBSET_FDOM x = x
    val op RDOM_SUBSET_FDOM =
    DT(((("tc",17),
        [("bool",[13,25,26,27,37,53,54,64]),("pred_set",[0,10,18]),
         ("relation",[216]),("tc",[15])]),["DISK_THM"]),
       [read"%19%6%53%49%40$0@@@%38$0@@|@"])
  fun op FINITE_RDOM x = x
    val op FINITE_RDOM =
    DT(((("tc",18),
        [("finite_map",[24]),("pred_set",[192]),
         ("tc",[17])]),["DISK_THM"]), [read"%19%6%39%49%40$0@@@|@"])
  fun op FDOM_RDOM x = x
    val op FDOM_RDOM =
    DT(((("tc",19),
        [("bool",[25,56]),("finite_map",[110]),("tc",[16])]),["DISK_THM"]),
       [read"%21%1%31%39%49$0@@@%28%38%50$0@@@%49$0@@@|@"])
  fun op RELN_TO_FMAP_TO_RELN_ID x = x
    val op RELN_TO_FMAP_TO_RELN_ID =
    DT(((("tc",20),
        [("bool",[14,25,26,27,30,53,56,58,63,64]),("finite_map",[110]),
         ("pred_set",[0,10,18,23]),("relation",[216]),
         ("tc",[15,16,19])]),["DISK_THM"]),
       [read"%21%1%31%39%49$0@@@%29%40%50$0@@@$0@@|@"])
  fun op RDOM_subTC x = x
    val op RDOM_subTC =
    DT(((("tc",21),
        [("bool",[14,25,26,52,63]),("relation",[215]),
         ("tc",[8])]),["DISK_THM"]),
       [read"%21%1%20%12%28%49%63$1@$0@@@%49$1@@|@|@"])
  fun op NOT_IN_RDOM x = x
    val op NOT_IN_RDOM =
    DT(((("tc",22),
        [("bool",[14,25,26,27,56,63]),("pred_set",[0,10]),
         ("relation",[215])]),["DISK_THM"]),
       [read"%21%0%17%14%25%28$1$0@@%35@@%65%44$0@%49$1@@@@|@|@"])
  fun op TC_MOD_EMPTY_ID x = x
    val op TC_MOD_EMPTY_ID =
    DT(((("tc",24),
        [("bool",[14,25,26,56,58,65,105,129]),("combin",[19]),
         ("pred_set",[41]),("tc",[23])]),["DISK_THM"]),
       [read"%17%14%20%10%30%56$1@%35@@%43@|@|@"])
  fun op I_o_f x = x
    val op I_o_f =
    DT(((("tc",25),
        [("bool",[25,36,51,53,56,58,63,105,124]),("combin",[19]),
         ("finite_map",[35,93,94])]),["DISK_THM"]),
       [read"%18%5%26%61%42@$0@@$0@|@"])
  fun op subTC_MAX_RDOM x = x
    val op subTC_MAX_RDOM =
    DT(((("tc",26),
        [("bool",[2,14,15,25,26,53,54,58,63,74,84]),("pred_set",[0]),
         ("relation",[215]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("tc",[12,21])]),["DISK_THM"]),
       [read"%21%1%20%12%17%14%31%65%44$0@%49$2@@@@%29%63$2@%45$0@$1@@@%63$2@$1@@@|@|@|@"])
  fun op subTC_SUPERSET_RDOM x = x
    val op subTC_SUPERSET_RDOM =
    DT(((("tc",27),
        [("bool",[14,25,26,27,30,36,56,64,93,95]),
         ("pred_set",[3,33,41,80,86,92,186]),("tc",[26])]),["DISK_THM"]),
       [read"%21%1%20%12%31%39$0@@%29%63$1@%57%49$1@@$0@@@%63$1@%49$1@@@@|@|@"])
  fun op subTC_FDOM x = x
    val op subTC_FDOM =
    DT(((("tc",28),
        [("bool",[25,58,63]),("finite_map",[24]),("pred_set",[40]),
         ("tc",[17,21,27])]),["DISK_THM"]),
       [read"%19%7%21%1%31%29%63$0@%49$0@@@%40$1@@@%29%63$0@%38$1@@@%63$0@%49$0@@@@|@|@"])
  fun op SUBSET_FDOM_LEM x = x
    val op SUBSET_FDOM_LEM =
    DT(((("tc",29),[("bool",[58]),("tc",[17,21])]),["DISK_THM"]),
       [read"%21%1%20%12%19%6%31%29%63$2@$1@@%40$0@@@%53%49$2@@%38$0@@@|@|@|@"])
  fun op subTC_FDOM_RDOM x = x
    val op subTC_FDOM_RDOM =
    DT(((("tc",30),
        [("bool",[25,26,53,54,56,58,63,105,124]),("finite_map",[24]),
         ("pred_set",[3,18,33]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("tc",[27,29])]),["DISK_THM"]),
       [read"%21%1%19%6%31%29%63$1@%38$0@@@%40$0@@@%29%63$1@%49$1@@@%40$0@@@|@|@"])
  fun op TC_MOD_LEM x = x
    val op TC_MOD_LEM =
    DT(((("tc",31),
        [("bool",[14,25,26,27,30,51,54,56,58,63,64,105,129,147]),
         ("finite_map",[91,92]),("pred_set",[0,3,10,41]),
         ("tc",[14,15,23])]),["DISK_THM"]),
       [read"%21%1%20%12%17%14%19%6%31%23%44$1@%38$0@@@%29%63$3@$2@@%40$0@@@@%29%63$3@%45$1@$2@@@%40%62%56$1@%37$0@$1@@@$0@@@@|@|@|@|@"])
  fun op TC_ITER_THM x = x
    val op TC_ITER_THM =
    DT(((("tc",33),
        [("bool",[14,25,52,53,56,58,105]),("finite_map",[93]),
         ("list",[43,120,240]),("pred_set",[33,37,41,93]),
         ("tc",[13,30,31,32])]),["DISK_THM"]),
       [read"%21%1%22%4%19%6%20%12%31%23%28%57$0@%46$2@@@%38$1@@@%29%63$3@$0@@%40$1@@@@%29%54$3@@%40%55$2@$1@@@@|@|@|@|@"])
  end
  val _ = DB.bindl "tc"
  [("DRESTR",DRESTR,DB.Def), ("RRESTR",RRESTR,DB.Def),
   ("BRESTR",BRESTR,DB.Def), ("subTC",subTC,DB.Def),
   ("FMAP_TO_RELN",FMAP_TO_RELN,DB.Def),
   ("RELN_TO_FMAP",RELN_TO_FMAP,DB.Def), ("TC_MOD",TC_MOD,DB.Def),
   ("TC_ITER",TC_ITER,DB.Def), ("DRESTR_IN",DRESTR_IN,DB.Thm),
   ("DRESTR_EMPTY",DRESTR_EMPTY,DB.Thm),
   ("DRESTR_RDOM",DRESTR_RDOM,DB.Thm),
   ("REMPTY_RRESTR",REMPTY_RRESTR,DB.Thm),
   ("O_REMPTY_O",O_REMPTY_O,DB.Thm), ("subTC_thm",subTC_thm,DB.Thm),
   ("subTC_EMPTY",subTC_EMPTY,DB.Thm), ("RTC_INSERT",RTC_INSERT,DB.Thm),
   ("subTC_INSERT",subTC_INSERT,DB.Thm), ("subTC_RDOM",subTC_RDOM,DB.Thm),
   ("subTC_INSERT_COR",subTC_INSERT_COR,DB.Thm),
   ("RDOM_SUBSET_FDOM",RDOM_SUBSET_FDOM,DB.Thm),
   ("FINITE_RDOM",FINITE_RDOM,DB.Thm), ("FDOM_RDOM",FDOM_RDOM,DB.Thm),
   ("RELN_TO_FMAP_TO_RELN_ID",RELN_TO_FMAP_TO_RELN_ID,DB.Thm),
   ("RDOM_subTC",RDOM_subTC,DB.Thm), ("NOT_IN_RDOM",NOT_IN_RDOM,DB.Thm),
   ("TC_MOD_EMPTY_ID",TC_MOD_EMPTY_ID,DB.Thm), ("I_o_f",I_o_f,DB.Thm),
   ("subTC_MAX_RDOM",subTC_MAX_RDOM,DB.Thm),
   ("subTC_SUPERSET_RDOM",subTC_SUPERSET_RDOM,DB.Thm),
   ("subTC_FDOM",subTC_FDOM,DB.Thm),
   ("SUBSET_FDOM_LEM",SUBSET_FDOM_LEM,DB.Thm),
   ("subTC_FDOM_RDOM",subTC_FDOM_RDOM,DB.Thm),
   ("TC_MOD_LEM",TC_MOD_LEM,DB.Thm), ("TC_ITER_THM",TC_ITER_THM,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("finite_mapTheory.finite_map_grammars",
                          finite_mapTheory.finite_map_grammars),
                         ("totoTheory.toto_grammars",
                          totoTheory.toto_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF (temp_set_fixity "^|"))
       (Infix(HOLgrammars.LEFT, 650))
  val _ = update_grms
       (UTOFF (temp_set_fixity "|^"))
       (Infix(HOLgrammars.LEFT, 650))
  val _ = update_grms
       (UTOFF (temp_set_fixity "^|^"))
       (Infix(HOLgrammars.LEFT, 650))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("^|", (Term.prim_mk_const { Name = "^|", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("^|", (Term.prim_mk_const { Name = "^|", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|^", (Term.prim_mk_const { Name = "|^", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|^", (Term.prim_mk_const { Name = "|^", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("^|^", (Term.prim_mk_const { Name = "^|^", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("^|^", (Term.prim_mk_const { Name = "^|^", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subTC", (Term.prim_mk_const { Name = "subTC", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subTC", (Term.prim_mk_const { Name = "subTC", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMAP_TO_RELN", (Term.prim_mk_const { Name = "FMAP_TO_RELN", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMAP_TO_RELN", (Term.prim_mk_const { Name = "FMAP_TO_RELN", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RELN_TO_FMAP", (Term.prim_mk_const { Name = "RELN_TO_FMAP", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RELN_TO_FMAP", (Term.prim_mk_const { Name = "RELN_TO_FMAP", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TC_MOD", (Term.prim_mk_const { Name = "TC_MOD", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TC_MOD", (Term.prim_mk_const { Name = "TC_MOD", Thy = "tc"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TC_ITER", (Term.prim_mk_const { Name = "TC_ITER", Thy = "tc"}))
  val tc_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "tc",
    thydataty = "compute",
    data =
        "tc.DRESTR tc.FMAP_TO_RELN tc.TC_ITER tc.TC_MOD tc.RELN_TO_FMAP tc.RRESTR tc.subTC tc.BRESTR"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "tc"
end
