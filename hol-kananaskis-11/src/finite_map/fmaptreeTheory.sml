structure fmaptreeTheory :> fmaptreeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading fmaptreeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open finite_mapTheory
  in end;
  val _ = Theory.link_parents
          ("fmaptree",
          Arbnum.fromString "1488587002",
          Arbnum.fromString "992502")
          [("finite_map",
           Arbnum.fromString "1488586927",
           Arbnum.fromString "430131")];
  val _ = Theory.incorporate_types "fmaptree" [("fmaptree", 2)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("option", "option"),
   ID("list", "list"), ID("fmaptree", "fmaptree"),
   ID("finite_map", "fmap"), ID("bool", "!"), ID("pair", ","),
   ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("list", "APPEND"),
   ID("bool", "COND"), ID("list", "CONS"), ID("finite_map", "FAPPLY"),
   ID("finite_map", "FDOM"), ID("pred_set", "FINITE"),
   ID("finite_map", "FLOOKUP"), ID("fmaptree", "FTNode"),
   ID("finite_map", "FUPDATE"), ID("pred_set", "GSPEC"), ID("bool", "IN"),
   ID("list", "NIL"), ID("option", "NONE"), ID("option", "SOME"),
   ID("bool", "TYPE_DEFINITION"), ID("fmaptree", "apply_path"),
   ID("fmaptree", "construct"), ID("fmaptree", "fmtreerec"),
   ID("fmaptree", "fromF"), ID("fmaptree", "fupd_at_path"),
   ID("fmaptree", "item"), ID("list", "list_CASE"), ID("fmaptree", "map"),
   ID("finite_map", "o_f"), ID("option", "option_CASE"),
   ID("fmaptree", "relrec"), ID("fmaptree", "toF"),
   ID("fmaptree", "update_at_path"), ID("fmaptree", "wf")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [2, 1], TYV "'b", TYOP [3, 3], TYOP [0, 4, 2],
   TYOP [0, 5, 0], TYOP [4, 1, 3], TYOP [2, 7], TYOP [0, 7, 8],
   TYOP [0, 3, 9], TYOP [3, 1], TYOP [0, 11, 10], TYV "'value",
   TYOP [2, 13], TYV "'key", TYOP [3, 15], TYOP [0, 16, 14],
   TYOP [4, 15, 13], TYOP [0, 18, 17], TYV "'c", TYOP [0, 20, 0],
   TYOP [4, 3, 1], TYOP [0, 22, 21], TYOP [5, 3, 22], TYOP [0, 24, 20],
   TYOP [5, 3, 20], TYOP [0, 26, 25], TYOP [0, 1, 27], TYOP [0, 28, 23],
   TYOP [5, 1, 7], TYOP [0, 7, 30], TYOP [0, 7, 3], TYOP [0, 9, 9],
   TYOP [0, 11, 33], TYOP [0, 17, 18], TYOP [4, 20, 3], TYOP [0, 36, 1],
   TYOP [5, 20, 36], TYOP [0, 38, 1], TYOP [5, 20, 1], TYOP [0, 40, 39],
   TYOP [0, 3, 41], TYOP [0, 42, 37], TYOP [5, 3, 5], TYOP [0, 44, 5],
   TYOP [0, 1, 45], TYOP [0, 11, 9], TYOP [0, 30, 7], TYOP [0, 3, 48],
   TYOP [0, 7, 0], TYOP [0, 22, 20], TYOP [0, 26, 20], TYOP [0, 24, 52],
   TYOP [0, 1, 53], TYOP [0, 1, 0], TYOP [0, 55, 0], TYOP [0, 3, 0],
   TYOP [0, 57, 0], TYOP [0, 21, 0], TYOP [0, 30, 0], TYOP [0, 60, 0],
   TYOP [0, 26, 0], TYOP [0, 62, 0], TYOP [0, 24, 0], TYOP [0, 64, 0],
   TYOP [0, 44, 0], TYOP [0, 66, 0], TYOP [0, 50, 0], TYOP [0, 22, 0],
   TYOP [0, 69, 0], TYOP [0, 36, 0], TYOP [0, 71, 0], TYOP [0, 18, 0],
   TYOP [0, 73, 0], TYOP [0, 28, 0], TYOP [0, 75, 0], TYOP [0, 54, 0],
   TYOP [0, 77, 0], TYOP [0, 42, 0], TYOP [0, 79, 0], TYOP [0, 68, 0],
   TYOP [0, 9, 0], TYOP [0, 82, 0], TYOP [0, 23, 0], TYOP [0, 84, 0],
   TYOP [0, 6, 0], TYOP [0, 86, 0], TYOP [0, 17, 0], TYOP [0, 88, 0],
   TYOP [0, 11, 0], TYOP [0, 90, 0], TYOP [0, 4, 0], TYOP [0, 92, 0],
   TYOP [8, 1, 7], TYOP [0, 7, 94], TYOP [0, 1, 95], TYOP [8, 11, 0],
   TYOP [0, 0, 97], TYOP [0, 11, 98], TYOP [0, 0, 0], TYOP [0, 0, 100],
   TYOP [0, 1, 55], TYOP [0, 3, 57], TYOP [0, 20, 21], TYOP [0, 30, 60],
   TYOP [0, 24, 64], TYOP [0, 7, 50], TYOP [0, 22, 69], TYOP [0, 18, 73],
   TYOP [0, 57, 58], TYOP [0, 29, 0], TYOP [0, 29, 111], TYOP [0, 6, 86],
   TYOP [0, 5, 6], TYOP [0, 17, 88], TYOP [0, 2, 0], TYOP [0, 2, 116],
   TYOP [0, 8, 0], TYOP [0, 8, 118], TYOP [0, 51, 0], TYOP [0, 120, 0],
   TYOP [0, 19, 0], TYOP [0, 122, 0], TYOP [0, 55, 1], TYOP [0, 11, 11],
   TYOP [0, 11, 125], TYOP [0, 2, 2], TYOP [0, 2, 127], TYOP [0, 0, 128],
   TYOP [0, 8, 8], TYOP [0, 8, 130], TYOP [0, 0, 131], TYOP [0, 1, 125],
   TYOP [0, 1, 7], TYOP [0, 30, 134], TYOP [0, 3, 20], TYOP [0, 26, 136],
   TYOP [0, 3, 22], TYOP [0, 24, 138], TYOP [0, 3, 5], TYOP [0, 44, 140],
   TYOP [0, 30, 55], TYOP [0, 26, 57], TYOP [0, 24, 57], TYOP [0, 44, 57],
   TYOP [0, 1, 8], TYOP [0, 30, 146], TYOP [0, 24, 22], TYOP [0, 1, 148],
   TYOP [0, 38, 36], TYOP [0, 3, 150], TYOP [0, 94, 30], TYOP [0, 30, 152],
   TYOP [0, 11, 97], TYOP [0, 154, 90], TYOP [0, 1, 56], TYOP [0, 3, 58],
   TYOP [0, 1, 2], TYOP [0, 88, 122], TYOP [2, 3], TYOP [0, 11, 160],
   TYOP [5, 1, 161], TYOP [0, 162, 161], TYOP [0, 3, 163],
   TYOP [0, 161, 7], TYOP [0, 22, 1], TYOP [0, 140, 2], TYOP [0, 2, 167],
   TYOP [0, 4, 168], TYOP [0, 22, 24], TYOP [0, 30, 162], TYOP [0, 7, 161],
   TYOP [0, 172, 171], TYOP [0, 24, 26], TYOP [0, 51, 174],
   TYOP [0, 38, 40], TYOP [0, 37, 176], TYOP [0, 9, 8], TYOP [0, 8, 178],
   TYOP [0, 8, 179], TYOP [0, 36, 55], TYOP [0, 42, 181]]
  end
  val _ = Theory.incorporate_consts "fmaptree" tyvector
     [("wf", 6), ("update_at_path", 12), ("toF", 19), ("relrec", 29),
      ("map", 31), ("item", 32), ("fupd_at_path", 34), ("fromF", 35),
      ("fmtreerec", 43), ("construct", 46), ("apply_path", 47),
      ("FTNode", 49)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 50), TMV("a", 1), TMV("a", 3), TMV("a", 18), TMV("a0", 22),
   TMV("a0", 5), TMV("a1", 20), TMV("d", 3), TMV("f", 9), TMV("f", 51),
   TMV("f1", 30), TMV("f2", 30), TMV("fm", 30), TMV("fm", 24),
   TMV("fm", 44), TMV("fm", 38), TMV("ft", 7), TMV("ft", 36),
   TMV("ft'", 7), TMV("h", 1), TMV("h", 3), TMV("h", 28), TMV("h", 54),
   TMV("h", 42), TMV("i", 1), TMV("i", 3), TMV("i1", 3), TMV("i2", 3),
   TMV("k", 1), TMV("k", 3), TMV("kfm", 44), TMV("kl", 4), TMV("p", 11),
   TMV("r", 1), TMV("r", 17), TMV("relrec'", 23), TMV("rep", 19),
   TMV("rfm", 26), TMV("t", 11), TMV("t", 4), TMV("wf'", 6), TMV("x", 1),
   TMC(6, 56), TMC(6, 58), TMC(6, 59), TMC(6, 61), TMC(6, 63), TMC(6, 65),
   TMC(6, 67), TMC(6, 68), TMC(6, 70), TMC(6, 72), TMC(6, 74), TMC(6, 76),
   TMC(6, 78), TMC(6, 80), TMC(6, 81), TMC(6, 83), TMC(6, 85), TMC(6, 87),
   TMC(6, 86), TMC(6, 89), TMC(6, 91), TMC(6, 93), TMC(7, 96), TMC(7, 99),
   TMC(9, 101), TMC(10, 102), TMC(10, 103), TMC(10, 104), TMC(10, 101),
   TMC(10, 105), TMC(10, 106), TMC(10, 107), TMC(10, 108), TMC(10, 109),
   TMC(10, 110), TMC(10, 112), TMC(10, 113), TMC(10, 114), TMC(10, 115),
   TMC(10, 117), TMC(10, 119), TMC(11, 101), TMC(12, 56), TMC(12, 58),
   TMC(12, 61), TMC(12, 63), TMC(12, 65), TMC(12, 67), TMC(12, 68),
   TMC(12, 121), TMC(12, 123), TMC(13, 124), TMC(14, 126), TMC(15, 129),
   TMC(15, 132), TMC(16, 133), TMC(17, 135), TMC(17, 137), TMC(17, 139),
   TMC(17, 141), TMC(18, 142), TMC(18, 143), TMC(18, 144), TMC(18, 145),
   TMC(19, 91), TMC(20, 147), TMC(21, 149), TMC(21, 49), TMC(21, 151),
   TMC(22, 153), TMC(23, 155), TMC(24, 156), TMC(24, 157), TMC(25, 11),
   TMC(26, 2), TMC(26, 8), TMC(27, 158), TMC(27, 9), TMC(28, 159),
   TMC(29, 47), TMC(30, 46), TMC(30, 164), TMC(31, 43), TMC(32, 165),
   TMC(32, 35), TMC(33, 34), TMC(34, 32), TMC(34, 166), TMC(35, 169),
   TMC(36, 31), TMC(36, 170), TMC(37, 173), TMC(37, 175), TMC(37, 177),
   TMC(38, 180), TMC(39, 29), TMC(39, 182), TMC(40, 172), TMC(40, 19),
   TMC(41, 12), TMC(42, 6), TMC(42, 88)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op construct_def x = x
    val op construct_def =
    DT(((("fmaptree",0),[]),[]),
       [read"%42%1%48%30%63%31%81%122$2@$1@$0@@%130$0@%118$2@@%20%39%95%114$1@%105$3@@@%101$3@$1@$0@@%116@||@@|@|@|@"])
  fun op wf_def x = x
    val op wf_def =
    DT(((("fmaptree",1),[]),[]),
       [read"%78%142@%5%59%40%83%60%5%83%84%1%89%14%66%79$2@%122$1@$0@@@%43%29%83%114$0@%105$1@@@$4%101$1@$0@@@|@@|@|@@$1$0@@|@@$0$1@@|@|@"])
  fun op fmaptree_TY_DEF x = x
    val op fmaptree_TY_DEF =
    DT(((("fmaptree",6),
        [("bool",[14,25,26,27,53,56,58,105,124,132,134,137,138]),
         ("finite_map",[15]),("fmaptree",[1]),
         ("pred_set",[10])]),["DISK_THM"]), [read"%92%36%120%143@$0@|@"])
  fun op fmap_bij_thm x = x
    val op fmap_bij_thm =
    DT(((("fmaptree",7),[("bool",[117]),("fmaptree",[6])]),["DISK_THM"]),
       [read"%66%52%3%75%126%140$0@@@$0@|@@%61%34%70%143$0@@%80%140%126$0@@@$0@@|@@"])
  fun op FTNode_def x = x
    val op FTNode_def =
    DT(((("fmaptree",8),[]),[]),
       [read"%43%25%45%12%73%109$1@$0@@%125%123$1@%133%139@$0@@@@|@|@"])
  fun op item_map_def x = x
    val op item_map_def =
    DT(((("fmaptree",11),
        [("bool",[2,146]),("fmaptree",[10]),
         ("pair",[7,16,34])]),["DISK_THM"]),
       [read"%49%16%73$0@%109%128$0@@%131$0@@@|@"])
  fun op apply_path_def x = x
    val op apply_path_def =
    DT(((("fmaptree",14),[("list",[13])]),["DISK_THM"]),
       [read"%66%49%16%82%121%115@$0@@%119$0@@|@@%42%19%62%38%49%16%82%121%97$2@$1@@$0@@%96%113$2@%102%131$0@@@@%121$1@%98%131$0@@$2@@@%117@@|@|@|@@"])
  fun op update_at_path_def x = x
    val op update_at_path_def =
    DT(((("fmaptree",15),[("list",[13])]),["DISK_THM"]),
       [read"%66%43%2%49%16%82%141%115@$1@$0@@%119%109$1@%131$0@@@@|@|@@%42%19%62%38%43%2%49%16%82%141%97$3@$2@@$1@$0@@%96%113$3@%102%131$0@@@@%136%141$2@$1@%98%131$0@@$3@@@%117@%18%119%109%128$1@@%111%131$1@@%64$4@$0@@@@|@@%117@@|@|@|@|@@"])
  fun op fupd_at_path_def x = x
    val op fupd_at_path_def =
    DT(((("fmaptree",16),[("list",[13])]),["DISK_THM"]),
       [read"%66%57%8%49%16%82%127%115@$1@$0@@$1$0@@|@|@@%42%19%62%38%57%8%49%16%82%127%97$3@$2@@$1@$0@@%96%113$3@%102%131$0@@@@%136%127$2@$1@%98%131$0@@$3@@@%117@%18%119%109%128$1@@%111%131$1@@%64$4@$0@@@@|@@%117@@|@|@|@|@@"])
  fun op relrec_def x = x
    val op relrec_def =
    DT(((("fmaptree",20),[]),[]),
       [read"%77%137@%21%4%6%58%35%83%50%4%44%6%83%84%24%88%13%87%37%66%74$4@%108$2@$1@@@%66%69$3@$8$2@$0@$1@@@%66%76%103$0@@%104$1@@@%43%7%83%114$0@%104$2@@@$6%100$2@$0@@%99$1@$0@@@|@@@@|@|@|@@$2$1@$0@@|@|@@$0$2@$1@@|@|||@"])
  fun op fmtreerec_def x = x
    val op fmtreerec_def =
    DT(((("fmaptree",25),[]),[]),
       [read"%55%23%51%17%67%124$1@$0@@%93%33%138$2@$1@$0@|@@|@|@"])
  fun op wf_rules x = x
    val op wf_rules =
    DT(((("fmaptree",2),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[1])]),["DISK_THM"]),
       [read"%42%1%48%14%83%43%29%83%114$0@%105$1@@@%142%101$1@$0@@@|@@%142%122$1@$0@@@|@|@"])
  fun op wf_ind x = x
    val op wf_ind =
    DT(((("fmaptree",3),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[1])]),["DISK_THM"]),
       [read"%59%40%83%42%1%48%14%83%43%29%83%114$0@%105$1@@@$3%101$1@$0@@@|@@$2%122$1@$0@@@|@|@@%60%5%83%142$0@@$1$0@@|@@|@"])
  fun op wf_strongind x = x
    val op wf_strongind =
    DT(((("fmaptree",4),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[1])]),["DISK_THM"]),
       [read"%59%40%83%42%1%48%14%83%43%29%83%114$0@%105$1@@@%66%142%101$1@$0@@@$3%101$1@$0@@@@|@@$2%122$1@$0@@@|@|@@%60%5%83%142$0@@$1$0@@|@@|@"])
  fun op wf_cases x = x
    val op wf_cases =
    DT(((("fmaptree",5),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[1])]),["DISK_THM"]),
       [read"%60%5%70%142$0@@%84%1%89%14%66%79$2@%122$1@$0@@@%43%29%83%114$0@%105$1@@@%142%101$1@$0@@@|@@|@|@@|@"])
  fun op FTNode_11 x = x
    val op FTNode_11 =
    DT(((("fmaptree",9),
        [("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,60,62,63,64,74,75,105,
          106,124,129,132,134,137,138,140,147]),("finite_map",[35,93,94]),
         ("fmaptree",[0,1,7,8]),("list",[6]),("option",[10,11]),
         ("pred_set",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%70%73%109%26@%10@@%109%27@%11@@@%66%68%26@%27@@%71%10@%11@@@"])
  fun op fmaptree_nchotomy x = x
    val op fmaptree_nchotomy =
    DT(((("fmaptree",10),
        [("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,60,62,63,64,74,75,105,
          106,124,129,132,134,137,138,140,143,147]),
         ("finite_map",[35,93,94]),("fmaptree",[0,1,7,8]),("list",[6]),
         ("option",[10,11]),("pred_set",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%16%85%25%86%12%73$2@%109$1@$0@@|@|@|@"])
  fun op item_thm x = x
    val op item_thm =
    DT(((("fmaptree",12),
        [("bool",[58]),("fmaptree",[9,11])]),["DISK_THM"]),
       [read"%67%129%108%24@%13@@@%24@"])
  fun op map_thm x = x
    val op map_thm =
    DT(((("fmaptree",13),
        [("bool",[58]),("fmaptree",[9,11])]),["DISK_THM"]),
       [read"%72%132%108%24@%13@@@%13@"])
  fun op ft_ind x = x
    val op ft_ind =
    DT(((("fmaptree",17),
        [("bool",
         [14,25,26,36,51,53,54,55,56,58,63,74,75,100,105,124,132,134,137,
          138]),("combin",[8]),("finite_map",[35,93,94,97]),
         ("fmaptree",[1,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%56%0%83%43%2%45%12%83%42%28%83%113$0@%102$1@@@$3%98$1@$0@@@|@@$2%109$1@$0@@@|@|@@%49%16$1$0@|@@|@"])
  fun op applicable_paths_FINITE x = x
    val op applicable_paths_FINITE =
    DT(((("fmaptree",18),
        [("bool",
         [25,26,27,30,37,51,52,53,54,55,58,63,64,80,81,105,106,124,129,140,
          143,147,169]),("finite_map",[24]),("fmaptree",[13,14,17]),
         ("list",[46,48,49]),("marker",[6]),("option",[10,28]),
         ("pair",[3,7,16]),
         ("pred_set",[3,6,10,33,80,127,144,190,198,199,244,254]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%16%106%112%32%65$0@%90%18%82%121$1@$2@@%119$0@@|@@|@@|@"])
  fun op apply_path_SNOC x = x
    val op apply_path_SNOC =
    DT(((("fmaptree",19),
        [("bool",[14,25,26,27,30,56,58,63,64,105,129,147]),
         ("finite_map",[77]),("fmaptree",[14]),("list",[20,43]),
         ("option",[7])]),["DISK_THM"]),
       [read"%49%16%42%41%62%32%82%121%94$0@%97$1@%115@@@$2@@%136%121$0@$2@@%117@%18%107%131$0@@$2@|@@|@|@|@"])
  fun op relrec_rules x = x
    val op relrec_rules =
    DT(((("fmaptree",21),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[20])]),["DISK_THM"]),
       [read"%53%21%42%24%47%13%46%37%83%66%76%103$0@@%104$1@@@%43%7%83%114$0@%104$2@@@%137$4@%100$2@$0@@%99$1@$0@@@|@@@%137$3@%108$2@$1@@$3$2@$0@$1@@@|@|@|@|@"])
  fun op relrec_ind x = x
    val op relrec_ind =
    DT(((("fmaptree",22),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[20])]),["DISK_THM"]),
       [read"%53%21%58%35%83%42%24%47%13%46%37%83%66%76%103$0@@%104$1@@@%43%7%83%114$0@%104$2@@@$4%100$2@$0@@%99$1@$0@@@|@@@$3%108$2@$1@@$4$2@$0@$1@@@|@|@|@@%50%4%44%6%83%137$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op relrec_strongind x = x
    val op relrec_strongind =
    DT(((("fmaptree",23),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[20])]),["DISK_THM"]),
       [read"%53%21%58%35%83%42%24%47%13%46%37%83%66%76%103$0@@%104$1@@@%43%7%83%114$0@%104$2@@@%66%137$5@%100$2@$0@@%99$1@$0@@@$4%100$2@$0@@%99$1@$0@@@@|@@@$3%108$2@$1@@$4$2@$0@$1@@@|@|@|@@%50%4%44%6%83%137$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op relrec_cases x = x
    val op relrec_cases =
    DT(((("fmaptree",24),
        [("bool",[14,25,26,53,132,134,137,138]),
         ("fmaptree",[20])]),["DISK_THM"]),
       [read"%53%21%50%4%44%6%70%137$2@$1@$0@@%84%24%88%13%87%37%66%74$4@%108$2@$1@@@%66%69$3@$5$2@$0@$1@@@%66%76%103$0@@%104$1@@@%43%7%83%114$0@%104$2@@@%137$6@%100$2@$0@@%99$1@$0@@@|@@@@|@|@|@@|@|@|@"])
  fun op fmtreerec_thm x = x
    val op fmtreerec_thm =
    DT(((("fmaptree",26),
        [("bool",
         [2,14,15,25,26,36,51,53,54,56,58,60,63,70,83,84,105,124,132,134,
          137,138,143]),("finite_map",[24,35,91,110]),
         ("fmaptree",[9,17,20,25]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%67%124%23@%110%25@%15@@@%23%25@%135%124%23@@%15@@%15@@"])
  fun op fmtree_Axiom x = x
    val op fmtree_Axiom =
    DT(((("fmaptree",27),
        [("bool",[25,56]),("fmaptree",[26])]),["DISK_THM"]),
       [read"%54%22%91%9%42%24%47%13%69$2%108$1@$0@@@$3$1@$0@%134$2@$0@@@|@|@|@|@"])
  end
  val _ = DB.bindl "fmaptree"
  [("construct_def",construct_def,DB.Def), ("wf_def",wf_def,DB.Def),
   ("fmaptree_TY_DEF",fmaptree_TY_DEF,DB.Def),
   ("fmap_bij_thm",fmap_bij_thm,DB.Def), ("FTNode_def",FTNode_def,DB.Def),
   ("item_map_def",item_map_def,DB.Def),
   ("apply_path_def",apply_path_def,DB.Def),
   ("update_at_path_def",update_at_path_def,DB.Def),
   ("fupd_at_path_def",fupd_at_path_def,DB.Def),
   ("relrec_def",relrec_def,DB.Def),
   ("fmtreerec_def",fmtreerec_def,DB.Def), ("wf_rules",wf_rules,DB.Thm),
   ("wf_ind",wf_ind,DB.Thm), ("wf_strongind",wf_strongind,DB.Thm),
   ("wf_cases",wf_cases,DB.Thm), ("FTNode_11",FTNode_11,DB.Thm),
   ("fmaptree_nchotomy",fmaptree_nchotomy,DB.Thm),
   ("item_thm",item_thm,DB.Thm), ("map_thm",map_thm,DB.Thm),
   ("ft_ind",ft_ind,DB.Thm),
   ("applicable_paths_FINITE",applicable_paths_FINITE,DB.Thm),
   ("apply_path_SNOC",apply_path_SNOC,DB.Thm),
   ("relrec_rules",relrec_rules,DB.Thm), ("relrec_ind",relrec_ind,DB.Thm),
   ("relrec_strongind",relrec_strongind,DB.Thm),
   ("relrec_cases",relrec_cases,DB.Thm),
   ("fmtreerec_thm",fmtreerec_thm,DB.Thm),
   ("fmtree_Axiom",fmtree_Axiom,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("finite_mapTheory.finite_map_grammars",
                          finite_mapTheory.finite_map_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("construct", (Term.prim_mk_const { Name = "construct", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("construct", (Term.prim_mk_const { Name = "construct", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf", (Term.prim_mk_const { Name = "wf", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf", (Term.prim_mk_const { Name = "wf", Thy = "fmaptree"}))
  val _ = update_grms temp_add_type "fmaptree"
  val _ = update_grms temp_add_type "fmaptree"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toF", (Term.prim_mk_const { Name = "toF", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromF", (Term.prim_mk_const { Name = "fromF", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FTNode", (Term.prim_mk_const { Name = "FTNode", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FTNode", (Term.prim_mk_const { Name = "FTNode", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("map", (Term.prim_mk_const { Name = "map", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("item", (Term.prim_mk_const { Name = "item", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("apply_path", (Term.prim_mk_const { Name = "apply_path", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("update_at_path", (Term.prim_mk_const { Name = "update_at_path", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fupd_at_path", (Term.prim_mk_const { Name = "fupd_at_path", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("relrec", (Term.prim_mk_const { Name = "relrec", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("relrec", (Term.prim_mk_const { Name = "relrec", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmtreerec", (Term.prim_mk_const { Name = "fmtreerec", Thy = "fmaptree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmtreerec", (Term.prim_mk_const { Name = "fmtreerec", Thy = "fmaptree"}))
  val fmaptree_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "fmaptree",
    thydataty = "simp",
    data = "fmaptree.FTNode_11 fmaptree.item_thm fmaptree.map_thm"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "fmaptree",
    thydataty = "rule_induction",
    data = "fmaptree.wf_strongind fmaptree.relrec_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "fmaptree",
    thydataty = "compute",
    data =
        "fmaptree.construct_def fmaptree.fmtreerec_def fmaptree.fupd_at_path_def fmaptree.update_at_path_def fmaptree.FTNode_def fmaptree.apply_path_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "fmaptree"
end
