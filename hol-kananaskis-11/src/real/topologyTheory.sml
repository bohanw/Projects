structure topologyTheory :> topologyTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading topologyTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open realTheory
  in end;
  val _ = Theory.link_parents
          ("topology",
          Arbnum.fromString "1488589241",
          Arbnum.fromString "745894")
          [("real",
           Arbnum.fromString "1488589207",
           Arbnum.fromString "633189")];
  val _ = Theory.incorporate_types "topology"
       [("topology", 1), ("metric", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("topology", "topology"), ID("min", "bool"),
   ID("pair", "prod"), ID("topology", "metric"), ID("realax", "real"),
   ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"), ID("num", "0"),
   ID("num", "num"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("topology", "B"), ID("pred_set", "BIGUNION"),
   ID("pred_set", "COMPL"), ID("pred_set", "EMPTY"),
   ID("pred_set", "GSPEC"), ID("pred_set", "SUBSET"),
   ID("bool", "TYPE_DEFINITION"), ID("pair", "UNCURRY"),
   ID("pred_set", "UNIV"), ID("bool", "\\/"), ID("real", "abs"),
   ID("topology", "closed"), ID("topology", "dist"),
   ID("topology", "ismet"), ID("topology", "istopology"),
   ID("topology", "limpt"), ID("topology", "mr1"), ID("topology", "mtop"),
   ID("topology", "neigh"), ID("topology", "open"),
   ID("topology", "re_intersect"), ID("topology", "re_union"),
   ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [2], TYOP [0, 0, 2], TYOP [0, 3, 2],
   TYOP [0, 4, 1], TYOP [0, 3, 3], TYOP [0, 3, 6], TYOP [0, 1, 4],
   TYOP [3, 3, 0], TYOP [0, 9, 2], TYOP [0, 1, 10], TYOP [4, 0],
   TYOP [0, 12, 1], TYOP [5], TYOP [4, 14], TYOP [3, 0, 0],
   TYOP [0, 16, 14], TYOP [0, 17, 12], TYOP [0, 0, 4], TYOP [0, 1, 19],
   TYOP [0, 4, 2], TYOP [0, 17, 2], TYOP [0, 12, 17], TYOP [3, 0, 14],
   TYOP [0, 24, 3], TYOP [0, 12, 25], TYOP [0, 21, 2], TYOP [0, 22, 2],
   TYOP [0, 12, 2], TYOP [0, 29, 2], TYOP [0, 14, 2], TYOP [0, 31, 2],
   TYOP [0, 1, 2], TYOP [0, 33, 2], TYOP [0, 0, 16], TYOP [0, 0, 35],
   TYOP [0, 14, 24], TYOP [0, 0, 37], TYOP [0, 0, 9], TYOP [0, 3, 39],
   TYOP [3, 3, 2], TYOP [0, 2, 41], TYOP [0, 3, 42], TYOP [3, 14, 14],
   TYOP [0, 14, 44], TYOP [0, 14, 45], TYOP [0, 2, 2], TYOP [0, 2, 47],
   TYOP [10], TYOP [0, 0, 3], TYOP [0, 3, 4], TYOP [0, 4, 21],
   TYOP [0, 17, 22], TYOP [0, 12, 29], TYOP [0, 15, 2], TYOP [0, 15, 55],
   TYOP [0, 14, 31], TYOP [0, 1, 33], TYOP [0, 23, 2], TYOP [0, 59, 2],
   TYOP [0, 8, 2], TYOP [0, 61, 2], TYOP [0, 4, 3], TYOP [0, 3, 41],
   TYOP [0, 64, 4], TYOP [0, 21, 61], TYOP [0, 22, 59], TYOP [0, 44, 14],
   TYOP [0, 14, 14], TYOP [0, 14, 69], TYOP [0, 70, 68], TYOP [0, 15, 68],
   TYOP [0, 68, 2], TYOP [0, 14, 32], TYOP [1, 14], TYOP [0, 75, 74],
   TYOP [0, 68, 15], TYOP [0, 15, 75], TYOP [0, 49, 14]]
  end
  val _ = Theory.incorporate_consts "topology" tyvector
     [("topology", 5), ("re_union", 7), ("re_intersect", 7), ("open", 8),
      ("neigh", 11), ("mtop", 13), ("mr1", 15), ("metric", 18),
      ("limpt", 20), ("istopology", 21), ("ismet", 22), ("dist", 23),
      ("closed", 8), ("B", 26)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("L", 4), TMV("L", 1), TMV("N", 3), TMV("P", 3), TMV("P", 4),
   TMV("Q", 3), TMV("S'", 3), TMV("a", 3), TMV("a", 12), TMV("a", 1),
   TMV("b", 3), TMV("d", 14), TMV("e", 14), TMV("m", 17), TMV("m", 12),
   TMV("r", 4), TMV("r", 17), TMV("rep", 23), TMV("rep", 8), TMV("top", 1),
   TMV("x", 0), TMV("x", 3), TMV("x", 14), TMV("y", 0), TMV("y", 3),
   TMV("y", 14), TMV("z", 0), TMV("z", 14), TMC(6, 4), TMC(6, 21),
   TMC(6, 27), TMC(6, 28), TMC(6, 30), TMC(6, 32), TMC(6, 34), TMC(7, 36),
   TMC(7, 38), TMC(7, 40), TMC(7, 43), TMC(7, 46), TMC(8, 48), TMC(9, 49),
   TMC(11, 50), TMC(11, 48), TMC(11, 51), TMC(11, 52), TMC(11, 53),
   TMC(11, 54), TMC(11, 56), TMC(11, 57), TMC(11, 58), TMC(12, 48),
   TMC(13, 4), TMC(13, 21), TMC(13, 60), TMC(13, 62), TMC(13, 32),
   TMC(14, 26), TMC(15, 63), TMC(16, 6), TMC(17, 3), TMC(18, 65),
   TMC(19, 51), TMC(19, 52), TMC(20, 66), TMC(20, 67), TMC(21, 71),
   TMC(22, 3), TMC(22, 31), TMC(23, 48), TMC(24, 69), TMC(25, 8),
   TMC(26, 23), TMC(26, 72), TMC(27, 22), TMC(27, 73), TMC(28, 21),
   TMC(29, 20), TMC(29, 76), TMC(4, 18), TMC(4, 77), TMC(30, 15),
   TMC(31, 13), TMC(31, 78), TMC(32, 11), TMC(33, 8), TMC(34, 7),
   TMC(35, 7), TMC(36, 70), TMC(37, 57), TMC(38, 57), TMC(39, 79),
   TMC(40, 70), TMC(1, 5), TMC(41, 47)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op re_union x = x
    val op re_union =
    DT(((("topology",0),[]),[]),
       [read"%29%3%29%5%44%87$1@$0@@%20%69$2$0@@$1$0@@|@|@|@"])
  fun op re_intersect x = x
    val op re_intersect =
    DT(((("topology",1),[]),[]),
       [read"%29%3%29%5%44%86$1@$0@@%20%40$2$0@@$1$0@@|@|@|@"])
  fun op istopology x = x
    val op istopology =
    DT(((("topology",2),[]),[]),
       [read"%30%0%43%76$0@@%40$0%60@@%40$0%67@@%40%29%7%29%10%51%40$2$1@@$2$0@@@$2%86$1@$0@@@|@|@@%30%4%51%63$0@$1@@$1%58$0@@@|@@@@@|@"])
  fun op topology_TY_DEF x = x
    val op topology_TY_DEF =
    DT(((("topology",3),
        [("bool",[25,35,36,51,53]),("pred_set",[13]),
         ("topology",[2])]),["DISK_THM"]), [read"%55%18%64%76@$0@|@"])
  fun op topology_tybij x = x
    val op topology_tybij =
    DT(((("topology",4),[("bool",[117]),("topology",[3])]),["DISK_THM"]),
       [read"%40%34%9%50%93%85$0@@@$0@|@@%30%15%43%76$0@@%45%85%93$0@@@$0@@|@@"])
  fun op neigh x = x
    val op neigh =
    DT(((("topology",7),[("pair",[16])]),["DISK_THM"]),
       [read"%34%19%29%2%28%20%43%84$2@%37$1@$0@@@%53%3%40%85$3@$0@@%40%62$0@$2@@$0$1@@@|@@|@|@|@"])
  fun op closed x = x
    val op closed =
    DT(((("topology",12),[]),[]),
       [read"%34%1%29%6%43%71$1@$0@@%85$1@%59$0@@@|@|@"])
  fun op limpt x = x
    val op limpt =
    DT(((("topology",13),[]),[]),
       [read"%34%19%28%20%29%6%43%77$2@$1@$0@@%29%2%51%84$3@%37$0@$2@@@%52%23%40%94%42$3@$0@@@%40$2$0@@$1$0@@@|@@|@@|@|@|@"])
  fun op ismet x = x
    val op ismet =
    DT(((("topology",15),[]),[]),
       [read"%31%13%43%74$0@@%40%28%20%28%23%43%49$2%35$1@$0@@@%91%41@@@%42$1@$0@@|@|@@%28%20%28%23%28%26%90$3%35$1@$0@@@%88$3%35$2@$1@@@$3%35$2@$0@@@@|@|@|@@@|@"])
  fun op metric_TY_DEF x = x
    val op metric_TY_DEF =
    DT(((("topology",16),
        [("bool",[13,25,26,27,30,51,53,54,56,58,63,64]),("pair",[16]),
         ("real",[3,7,27,55,73,78]),("topology",[15])]),["DISK_THM"]),
       [read"%54%17%65%74@$0@|@"])
  fun op metric_tybij x = x
    val op metric_tybij =
    DT(((("topology",17),[("bool",[117]),("topology",[16])]),["DISK_THM"]),
       [read"%40%32%8%47%79%72$0@@@$0@|@@%31%16%43%74$0@@%46%72%79$0@@@$0@@|@@"])
  fun op mtop x = x
    val op mtop =
    DT(((("topology",25),[]),[]),
       [read"%32%14%50%82$0@@%93%6%28%20%51$1$0@@%56%12%40%89%91%41@@$0@@%28%23%51%89%72$4@%35$2@$0@@@$1@@$3$0@@|@@|@@|@|@@|@"])
  fun op ball x = x
    val op ball =
    DT(((("topology",28),[("pair",[16])]),["DISK_THM"]),
       [read"%32%14%28%20%33%12%44%57$2@%36$1@$0@@@%23%89%72$3@%35$2@$0@@@$1@|@|@|@|@"])
  fun op mr1 x = x
    val op mr1 =
    DT(((("topology",33),[]),[]),
       [read"%48%81@%80%66%22%25%70%92$0@$1@@||@@@"])
  fun op TOPOLOGY x = x
    val op TOPOLOGY =
    DT(((("topology",5),
        [("bool",[25,56,58]),("topology",[2,4])]),["DISK_THM"]),
       [read"%34%1%40%85$0@%60@@%40%85$0@%67@@%40%29%21%29%24%51%40%85$2@$1@@%85$2@$0@@@%85$2@%86$1@$0@@@|@|@@%30%4%51%63$0@%85$1@@@%85$1@%58$0@@@|@@@@|@"])
  fun op TOPOLOGY_UNION x = x
    val op TOPOLOGY_UNION =
    DT(((("topology",6),
        [("bool",[25,36,63]),("topology",[5])]),["DISK_THM"]),
       [read"%34%1%30%4%51%63$0@%85$1@@@%85$1@%58$0@@@|@|@"])
  fun op OPEN_OWN_NEIGH x = x
    val op OPEN_OWN_NEIGH =
    DT(((("topology",8),
        [("bool",[25,51,63]),("pred_set",[20]),
         ("topology",[7])]),["DISK_THM"]),
       [read"%29%6%34%19%28%20%51%40%85$1@$2@@$2$0@@@%84$1@%37$2@$0@@@|@|@|@"])
  fun op OPEN_UNOPEN x = x
    val op OPEN_UNOPEN =
    DT(((("topology",9),
        [("bool",[18,25,26,36,51,53,58,63,105,124,143]),("pair",[3,4]),
         ("pred_set",[6,7,18,20,21,245]),("topology",[6])]),["DISK_THM"]),
       [read"%29%6%34%19%43%85$0@$1@@%44%58%61%3%38$0@%40%85$1@$0@@%62$0@$2@@@|@@@$1@@|@|@"])
  fun op OPEN_SUBOPEN x = x
    val op OPEN_SUBOPEN =
    DT(((("topology",10),
        [("bool",[18,25,26,36,51,53,58,63,105,124,143]),("pair",[3,4]),
         ("pred_set",[6,7,18,20,21,245]),("topology",[6])]),["DISK_THM"]),
       [read"%29%6%34%19%43%85$0@$1@@%28%20%51$2$0@@%53%3%40$0$1@@%40%85$2@$0@@%62$0@$3@@@|@@|@@|@|@"])
  fun op OPEN_NEIGH x = x
    val op OPEN_NEIGH =
    DT(((("topology",11),
        [("bool",[25,26,51,63]),("pred_set",[19,20]),
         ("topology",[7,10])]),["DISK_THM"]),
       [read"%29%6%34%19%43%85$0@$1@@%28%20%51$2$0@@%53%2%40%84$2@%37$0@$1@@@%62$0@$3@@|@@|@@|@|@"])
  fun op CLOSED_LIMPT x = x
    val op CLOSED_LIMPT =
    DT(((("topology",14),
        [("bool",[18,25,26,27,30,36,53,54,56,58,60,63,92,96,105,124]),
         ("pred_set",[0,18,287]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("topology",[11,12,13])]),["DISK_THM"]),
       [read"%34%19%29%6%43%71$1@$0@@%28%20%51%77$2@$0@$1@@$1$0@@|@@|@|@"])
  fun op METRIC_ISMET x = x
    val op METRIC_ISMET =
    DT(((("topology",18),
        [("bool",[25,56]),("topology",[17])]),["DISK_THM"]),
       [read"%32%14%74%72$0@@|@"])
  fun op METRIC_ZERO x = x
    val op METRIC_ZERO =
    DT(((("topology",19),
        [("bool",[25,56]),("topology",[15,18])]),["DISK_THM"]),
       [read"%32%14%28%20%28%23%43%49%72$2@%35$1@$0@@@%91%41@@@%42$1@$0@@|@|@|@"])
  fun op METRIC_SAME x = x
    val op METRIC_SAME =
    DT(((("topology",20),
        [("bool",[25,56]),("topology",[19])]),["DISK_THM"]),
       [read"%32%14%28%20%49%72$1@%35$0@$0@@@%91%41@@|@|@"])
  fun op METRIC_POS x = x
    val op METRIC_POS =
    DT(((("topology",21),
        [("bool",[25,26,53,56,63]),("real",[7,51,77]),
         ("topology",[15,18,19])]),["DISK_THM"]),
       [read"%32%14%28%20%28%23%90%91%41@@%72$2@%35$1@$0@@@|@|@|@"])
  fun op METRIC_SYM x = x
    val op METRIC_SYM =
    DT(((("topology",22),
        [("bool",[25,51,58,63]),("real",[27,62]),
         ("topology",[15,18,20])]),["DISK_THM"]),
       [read"%32%14%28%20%28%23%49%72$2@%35$1@$0@@@%72$2@%35$0@$1@@@|@|@|@"])
  fun op METRIC_TRIANGLE x = x
    val op METRIC_TRIANGLE =
    DT(((("topology",23),
        [("bool",[25,63]),("topology",[15,18,22])]),["DISK_THM"]),
       [read"%32%14%28%20%28%23%28%26%90%72$3@%35$2@$0@@@%88%72$3@%35$2@$1@@@%72$3@%35$1@$0@@@@|@|@|@|@"])
  fun op METRIC_NZ x = x
    val op METRIC_NZ =
    DT(((("topology",24),
        [("bool",[25,58,63]),("real",[56]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("topology",[19,21])]),["DISK_THM"]),
       [read"%32%14%28%20%28%23%51%94%42$1@$0@@@%89%91%41@@%72$2@%35$1@$0@@@@|@|@|@"])
  fun op mtop_istopology x = x
    val op mtop_istopology =
    DT(((("topology",26),
        [("bool",
         [2,15,18,25,26,27,36,51,53,54,58,63,75,83,84,99,100,105,124]),
         ("pred_set",[9,13,18,245]),("real",[10,12,74]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("topology",[1,2])]),["DISK_THM"]),
       [read"%32%14%76%6%28%20%51$1$0@@%56%12%40%89%91%41@@$0@@%28%23%51%89%72$4@%35$2@$0@@@$1@@$3$0@@|@@|@@|@|@|@"])
  fun op MTOP_OPEN x = x
    val op MTOP_OPEN =
    DT(((("topology",27),
        [("bool",[25,36,56]),("topology",[4,25,26])]),["DISK_THM"]),
       [read"%29%6%32%14%43%85%82$0@@$1@@%28%20%51$2$0@@%56%12%40%89%91%41@@$0@@%28%23%51%89%72$3@%35$2@$0@@@$1@@$4$0@@|@@|@@|@@|@|@"])
  fun op BALL_OPEN x = x
    val op BALL_OPEN =
    DT(((("topology",29),
        [("bool",[25,51,58,63]),("real",[4,60,94,155]),
         ("topology",[23,27,28])]),["DISK_THM"]),
       [read"%32%14%28%20%33%12%51%89%91%41@@$0@@%85%82$2@@%57$2@%36$1@$0@@@@|@|@|@"])
  fun op BALL_NEIGH x = x
    val op BALL_NEIGH =
    DT(((("topology",30),
        [("bool",[51,63]),("pred_set",[20]),
         ("topology",[7,20,28,29])]),["DISK_THM"]),
       [read"%32%14%28%20%33%12%51%89%91%41@@$0@@%84%82$2@@%37%57$2@%36$1@$0@@@$1@@@|@|@|@"])
  fun op MTOP_LIMPT x = x
    val op MTOP_LIMPT =
    DT(((("topology",31),
        [("bool",[18,26,27,51,53,54,58,63,105,124]),("pred_set",[18]),
         ("topology",[7,13,27,28,30])]),["DISK_THM"]),
       [read"%32%14%28%20%29%6%43%77%82$2@@$1@$0@@%33%12%51%89%91%41@@$0@@%52%23%40%94%42$3@$0@@@%40$2$0@@%89%72$4@%35$3@$0@@@$1@@@|@@|@@|@|@|@"])
  fun op ISMET_R1 x = x
    val op ISMET_R1 =
    DT(((("topology",32),
        [("bool",[25,56,58,63]),("pair",[16]),
         ("real",[4,6,7,8,22,87,93,205,208,209]),
         ("topology",[15])]),["DISK_THM"]),
       [read"%75%66%22%25%70%92$0@$1@@||@@"])
  fun op MR1_DEF x = x
    val op MR1_DEF =
    DT(((("topology",34),
        [("pair",[16]),("topology",[17,32,33])]),["DISK_THM"]),
       [read"%33%22%33%25%49%73%81@%39$1@$0@@@%70%92$0@$1@@@|@|@"])
  fun op MR1_ADD x = x
    val op MR1_ADD =
    DT(((("topology",35),
        [("bool",[25,56]),("real",[96]),("topology",[34])]),["DISK_THM"]),
       [read"%33%22%33%11%49%73%81@%39$1@%88$1@$0@@@@%70$0@@|@|@"])
  fun op MR1_SUB x = x
    val op MR1_SUB =
    DT(((("topology",36),
        [("bool",[25,56]),("real",[152,208]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%33%22%33%11%49%73%81@%39$1@%92$1@$0@@@@%70$0@@|@|@"])
  fun op MR1_ADD_POS x = x
    val op MR1_ADD_POS =
    DT(((("topology",37),
        [("bool",[25,56,63,64]),("real",[204]),
         ("topology",[35])]),["DISK_THM"]),
       [read"%33%22%33%11%51%90%91%41@@$0@@%49%73%81@%39$1@%88$1@$0@@@@$0@@|@|@"])
  fun op MR1_SUB_LE x = x
    val op MR1_SUB_LE =
    DT(((("topology",38),
        [("bool",[25,56,63,64]),("real",[204]),
         ("topology",[36])]),["DISK_THM"]),
       [read"%33%22%33%11%51%90%91%41@@$0@@%49%73%81@%39$1@%92$1@$0@@@@$0@@|@|@"])
  fun op MR1_ADD_LT x = x
    val op MR1_ADD_LT =
    DT(((("topology",39),[("real",[58]),("topology",[37])]),["DISK_THM"]),
       [read"%33%22%33%11%51%89%91%41@@$0@@%49%73%81@%39$1@%88$1@$0@@@@$0@@|@|@"])
  fun op MR1_SUB_LT x = x
    val op MR1_SUB_LT =
    DT(((("topology",40),[("real",[58]),("topology",[38])]),["DISK_THM"]),
       [read"%33%22%33%11%51%89%91%41@@$0@@%49%73%81@%39$1@%92$1@$0@@@@$0@@|@|@"])
  fun op MR1_BETWEEN1 x = x
    val op MR1_BETWEEN1 =
    DT(((("topology",41),
        [("bool",[25,63]),("real",[224]),("topology",[34])]),["DISK_THM"]),
       [read"%33%22%33%25%33%27%51%40%89$2@$0@@%89%73%81@%39$2@$1@@@%92$0@$2@@@@%89$1@$0@@|@|@|@"])
  fun op MR1_LIMPT x = x
    val op MR1_LIMPT =
    DT(((("topology",42),
        [("bool",[25,35,51,58,63,64]),("pred_set",[13]),
         ("real",[35,58,105,144,145,204]),
         ("topology",[31,35])]),["DISK_THM"]),
       [read"%33%22%78%83%81@@$0@%68@|@"])
  end
  val _ = DB.bindl "topology"
  [("re_union",re_union,DB.Def), ("re_intersect",re_intersect,DB.Def),
   ("istopology",istopology,DB.Def),
   ("topology_TY_DEF",topology_TY_DEF,DB.Def),
   ("topology_tybij",topology_tybij,DB.Def), ("neigh",neigh,DB.Def),
   ("closed",closed,DB.Def), ("limpt",limpt,DB.Def),
   ("ismet",ismet,DB.Def), ("metric_TY_DEF",metric_TY_DEF,DB.Def),
   ("metric_tybij",metric_tybij,DB.Def), ("mtop",mtop,DB.Def),
   ("ball",ball,DB.Def), ("mr1",mr1,DB.Def), ("TOPOLOGY",TOPOLOGY,DB.Thm),
   ("TOPOLOGY_UNION",TOPOLOGY_UNION,DB.Thm),
   ("OPEN_OWN_NEIGH",OPEN_OWN_NEIGH,DB.Thm),
   ("OPEN_UNOPEN",OPEN_UNOPEN,DB.Thm),
   ("OPEN_SUBOPEN",OPEN_SUBOPEN,DB.Thm), ("OPEN_NEIGH",OPEN_NEIGH,DB.Thm),
   ("CLOSED_LIMPT",CLOSED_LIMPT,DB.Thm),
   ("METRIC_ISMET",METRIC_ISMET,DB.Thm),
   ("METRIC_ZERO",METRIC_ZERO,DB.Thm), ("METRIC_SAME",METRIC_SAME,DB.Thm),
   ("METRIC_POS",METRIC_POS,DB.Thm), ("METRIC_SYM",METRIC_SYM,DB.Thm),
   ("METRIC_TRIANGLE",METRIC_TRIANGLE,DB.Thm),
   ("METRIC_NZ",METRIC_NZ,DB.Thm),
   ("mtop_istopology",mtop_istopology,DB.Thm),
   ("MTOP_OPEN",MTOP_OPEN,DB.Thm), ("BALL_OPEN",BALL_OPEN,DB.Thm),
   ("BALL_NEIGH",BALL_NEIGH,DB.Thm), ("MTOP_LIMPT",MTOP_LIMPT,DB.Thm),
   ("ISMET_R1",ISMET_R1,DB.Thm), ("MR1_DEF",MR1_DEF,DB.Thm),
   ("MR1_ADD",MR1_ADD,DB.Thm), ("MR1_SUB",MR1_SUB,DB.Thm),
   ("MR1_ADD_POS",MR1_ADD_POS,DB.Thm), ("MR1_SUB_LE",MR1_SUB_LE,DB.Thm),
   ("MR1_ADD_LT",MR1_ADD_LT,DB.Thm), ("MR1_SUB_LT",MR1_SUB_LT,DB.Thm),
   ("MR1_BETWEEN1",MR1_BETWEEN1,DB.Thm), ("MR1_LIMPT",MR1_LIMPT,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("realTheory.real_grammars",
                          realTheory.real_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("re_union", (Term.prim_mk_const { Name = "re_union", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("re_union", (Term.prim_mk_const { Name = "re_union", Thy = "topology"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "re_union"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("re_intersect", (Term.prim_mk_const { Name = "re_intersect", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("re_intersect", (Term.prim_mk_const { Name = "re_intersect", Thy = "topology"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "re_intersect"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("istopology", (Term.prim_mk_const { Name = "istopology", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("istopology", (Term.prim_mk_const { Name = "istopology", Thy = "topology"}))
  val _ = update_grms temp_add_type "topology"
  val _ = update_grms temp_add_type "topology"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("open", (Term.prim_mk_const { Name = "open", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("topology", (Term.prim_mk_const { Name = "topology", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("neigh", (Term.prim_mk_const { Name = "neigh", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("neigh", (Term.prim_mk_const { Name = "neigh", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closed", (Term.prim_mk_const { Name = "closed", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closed", (Term.prim_mk_const { Name = "closed", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("limpt", (Term.prim_mk_const { Name = "limpt", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("limpt", (Term.prim_mk_const { Name = "limpt", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ismet", (Term.prim_mk_const { Name = "ismet", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ismet", (Term.prim_mk_const { Name = "ismet", Thy = "topology"}))
  val _ = update_grms temp_add_type "metric"
  val _ = update_grms temp_add_type "metric"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dist", (Term.prim_mk_const { Name = "dist", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("metric", (Term.prim_mk_const { Name = "metric", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mtop", (Term.prim_mk_const { Name = "mtop", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mtop", (Term.prim_mk_const { Name = "mtop", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("B", (Term.prim_mk_const { Name = "B", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("B", (Term.prim_mk_const { Name = "B", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mr1", (Term.prim_mk_const { Name = "mr1", Thy = "topology"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mr1", (Term.prim_mk_const { Name = "mr1", Thy = "topology"}))
  val topology_grammars = Parse.current_lgrms()
  end


  val _ = Parse.hide "B";

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "topology"
end
