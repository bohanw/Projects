structure lbtreeTheory :> lbtreeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading lbtreeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open llistTheory
  in end;
  val _ = Theory.link_parents
          ("lbtree",
          Arbnum.fromString "1488588298",
          Arbnum.fromString "374404")
          [("llist",
           Arbnum.fromString "1488588204",
           Arbnum.fromString "981600")];
  val _ = Theory.incorporate_types "lbtree" [("lbtree", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("option", "option"), ID("list", "list"),
   ID("min", "bool"), ID("pair", "prod"), ID("num", "num"),
   ID("lbtree", "lbtree"), ID("llist", "llist"), ID("bool", "!"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "?!"), ID("min", "@"), ID("list", "APPEND"),
   ID("bool", "COND"), ID("list", "CONS"), ID("list", "EL"),
   ID("list", "EVERY"), ID("list", "EXISTS"), ID("bool", "F"),
   ID("pair", "FST"), ID("combin", "I"), ID("llist", "LCONS"),
   ID("while", "LEAST"), ID("list", "LENGTH"), ID("llist", "LNIL"),
   ID("lbtree", "Lf"), ID("lbtree", "Lfrep"), ID("arithmetic", "MIN"),
   ID("list", "NIL"), ID("option", "NONE"), ID("lbtree", "Nd"),
   ID("lbtree", "Ndrep"), ID("option", "OPTION_MAP"), ID("option", "SOME"),
   ID("num", "SUC"), ID("bool", "T"), ID("bool", "TYPE_DEFINITION"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("bool", "\\/"),
   ID("lbtree", "bf_flatten"), ID("lbtree", "depth"),
   ID("llist", "exists"), ID("lbtree", "finite"),
   ID("lbtree", "is_lbtree"), ID("lbtree", "is_mmindex"),
   ID("lbtree", "lbtree_abs"), ID("lbtree", "lbtree_case"),
   ID("lbtree", "lbtree_rep"), ID("list", "list_CASE"),
   ID("lbtree", "map"), ID("lbtree", "mem"), ID("lbtree", "mindepth"),
   ID("combin", "o"), ID("option", "option_CASE"), ID("lbtree", "optmin"),
   ID("lbtree", "optmin_tupled"), ID("pair", "pair_CASE"),
   ID("lbtree", "path_follow"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [3], TYOP [2, 2], TYOP [0, 3, 1], TYV "'b",
   TYOP [0, 5, 4], TYOP [4, 5, 5], TYOP [4, 0, 7], TYOP [1, 8],
   TYOP [0, 5, 9], TYOP [0, 10, 6], TYOP [5], TYOP [1, 12],
   TYOP [4, 13, 13], TYOP [0, 14, 13], TYOP [0, 13, 13], TYOP [0, 13, 16],
   TYOP [6, 0], TYOP [0, 18, 13], TYOP [0, 0, 19], TYOP [0, 18, 2],
   TYOP [0, 0, 21], TYOP [6, 5], TYOP [0, 18, 23], TYOP [0, 0, 5],
   TYOP [0, 25, 24], TYOP [0, 18, 4], TYOP [0, 23, 0], TYOP [0, 23, 28],
   TYOP [0, 5, 29], TYOP [0, 30, 28], TYOP [0, 0, 31], TYOP [0, 4, 18],
   TYOP [0, 12, 2], TYOP [0, 12, 34], TYOP [2, 0], TYOP [0, 36, 35],
   TYOP [0, 0, 13], TYOP [0, 38, 37], TYOP [0, 4, 2], TYOP [0, 18, 34],
   TYOP [0, 0, 41], TYOP [7, 0], TYOP [2, 18], TYOP [0, 44, 43],
   TYOP [0, 4, 4], TYOP [0, 4, 46], TYOP [0, 0, 47], TYOP [0, 18, 18],
   TYOP [0, 18, 49], TYOP [0, 0, 50], TYOP [1, 5], TYOP [0, 0, 52],
   TYOP [0, 0, 2], TYOP [0, 13, 2], TYOP [0, 13, 55], TYOP [0, 18, 21],
   TYOP [0, 14, 2], TYOP [0, 14, 58], TYOP [4, 0, 0], TYOP [4, 5, 60],
   TYOP [1, 61], TYOP [0, 0, 62], TYOP [0, 5, 0], TYOP [0, 0, 23],
   TYOP [0, 54, 2], TYOP [0, 5, 2], TYOP [0, 67, 2], TYOP [0, 2, 2],
   TYOP [0, 69, 2], TYOP [0, 25, 2], TYOP [0, 71, 2], TYOP [0, 22, 2],
   TYOP [0, 73, 2], TYOP [0, 42, 2], TYOP [0, 75, 2], TYOP [0, 38, 2],
   TYOP [0, 77, 2], TYOP [0, 63, 2], TYOP [0, 79, 2], TYOP [0, 30, 2],
   TYOP [0, 81, 2], TYOP [0, 10, 2], TYOP [0, 83, 2], TYOP [0, 21, 2],
   TYOP [0, 85, 2], TYOP [0, 40, 2], TYOP [0, 56, 2], TYOP [0, 88, 2],
   TYOP [0, 23, 2], TYOP [0, 90, 2], TYOP [0, 36, 2], TYOP [0, 92, 2],
   TYOP [0, 3, 2], TYOP [0, 94, 2], TYOP [0, 44, 2], TYOP [0, 96, 2],
   TYOP [0, 34, 2], TYOP [0, 55, 2], TYOP [0, 13, 14], TYOP [0, 13, 100],
   TYOP [0, 2, 69], TYOP [0, 0, 54], TYOP [0, 22, 73], TYOP [0, 42, 75],
   TYOP [0, 53, 2], TYOP [0, 53, 106], TYOP [0, 21, 85], TYOP [0, 4, 40],
   TYOP [0, 15, 2], TYOP [0, 15, 110], TYOP [0, 23, 90], TYOP [0, 36, 92],
   TYOP [0, 43, 2], TYOP [0, 43, 114], TYOP [0, 1, 2], TYOP [0, 1, 116],
   TYOP [0, 87, 2], TYOP [0, 57, 2], TYOP [0, 119, 2], TYOP [0, 27, 2],
   TYOP [0, 121, 2], TYOP [0, 65, 2], TYOP [0, 123, 2], TYOP [0, 67, 5],
   TYOP [0, 59, 2], TYOP [0, 126, 59], TYOP [0, 90, 23], TYOP [0, 36, 36],
   TYOP [0, 36, 129], TYOP [0, 44, 44], TYOP [0, 44, 131], TYOP [0, 0, 0],
   TYOP [0, 0, 133], TYOP [0, 2, 134], TYOP [0, 5, 5], TYOP [0, 5, 136],
   TYOP [0, 2, 137], TYOP [0, 1, 1], TYOP [0, 1, 139], TYOP [0, 2, 140],
   TYOP [0, 2, 17], TYOP [0, 0, 129], TYOP [0, 3, 3], TYOP [0, 2, 144],
   TYOP [0, 18, 131], TYOP [0, 36, 0], TYOP [0, 12, 147], TYOP [0, 54, 92],
   TYOP [0, 21, 96], TYOP [0, 8, 0], TYOP [0, 43, 43], TYOP [0, 0, 152],
   TYOP [0, 34, 12], TYOP [0, 36, 12], TYOP [0, 12, 12], TYOP [0, 12, 156],
   TYOP [0, 23, 23], TYOP [0, 23, 158], TYOP [0, 5, 159],
   TYOP [0, 156, 16], TYOP [0, 9, 1], TYOP [0, 151, 162], TYOP [0, 0, 1],
   TYOP [0, 12, 13], TYOP [0, 40, 121], TYOP [0, 15, 15],
   TYOP [0, 167, 15], TYOP [0, 59, 168], TYOP [0, 54, 114], TYOP [0, 2, 4],
   TYOP [0, 171, 1], TYOP [0, 1, 172], TYOP [0, 3, 173], TYOP [0, 23, 18],
   TYOP [0, 64, 175], TYOP [0, 54, 54], TYOP [0, 69, 177],
   TYOP [0, 165, 13], TYOP [0, 13, 179], TYOP [0, 13, 180], TYOP [0, 8, 1],
   TYOP [0, 182, 1], TYOP [0, 1, 183], TYOP [0, 9, 184], TYOP [0, 61, 23],
   TYOP [0, 186, 23], TYOP [0, 23, 187], TYOP [0, 62, 188],
   TYOP [0, 0, 65], TYOP [0, 190, 23], TYOP [0, 60, 191], TYOP [0, 7, 1],
   TYOP [0, 0, 193], TYOP [0, 194, 1], TYOP [0, 8, 195], TYOP [0, 5, 1],
   TYOP [0, 5, 197], TYOP [0, 198, 1], TYOP [0, 7, 199], TYOP [0, 60, 23],
   TYOP [0, 5, 201], TYOP [0, 202, 23], TYOP [0, 61, 203],
   TYOP [0, 17, 13], TYOP [0, 14, 205]]
  end
  val _ = Theory.incorporate_consts "lbtree" tyvector
     [("path_follow", 11), ("optmin_tupled", 15), ("optmin", 17),
      ("mindepth", 20), ("mem", 22), ("map", 26), ("lbtree_rep", 27),
      ("lbtree_case", 32), ("lbtree_abs", 33), ("is_mmindex", 39),
      ("is_lbtree", 40), ("finite", 21), ("depth", 42), ("bf_flatten", 45),
      ("Ndrep", 48), ("Nd", 51), ("Lfrep", 53), ("Lf", 18)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 54), TMV("P", 40), TMV("P", 56), TMV("R", 57), TMV("R", 59),
   TMV("a", 0), TMV("a", 5), TMV("a", 18), TMV("a", 14), TMV("a'", 5),
   TMV("a0", 0), TMV("a0", 18), TMV("a1", 0), TMV("a1", 18), TMV("a2", 0),
   TMV("a2", 12), TMV("b", 0), TMV("b", 5), TMV("d", 12), TMV("d'", 12),
   TMV("depth'", 42), TMV("e", 0), TMV("f", 25), TMV("f", 38),
   TMV("f", 63), TMV("f", 64), TMV("f", 30), TMV("finite'", 21),
   TMV("g", 65), TMV("g", 10), TMV("h", 2), TMV("i", 12), TMV("j", 12),
   TMV("l", 0), TMV("l", 36), TMV("l", 3), TMV("l", 44), TMV("l1", 36),
   TMV("l1", 44), TMV("l2", 36), TMV("l2", 44), TMV("m", 12),
   TMV("mem'", 22), TMV("n", 12), TMV("optmin_tupled", 15), TMV("r", 4),
   TMV("rep", 27), TMV("t", 4), TMV("t", 18), TMV("t", 23), TMV("t", 3),
   TMV("t1", 4), TMV("t1", 18), TMV("t1", 23), TMV("t1'", 23),
   TMV("t2", 4), TMV("t2", 18), TMV("t2", 23), TMV("t2'", 23),
   TMV("tlist", 44), TMV("ts", 44), TMV("u", 18), TMV("u1", 18),
   TMV("u2", 18), TMV("v", 2), TMV("v", 13), TMV("v", 8), TMV("v", 61),
   TMV("v1", 13), TMV("v2", 60), TMV("v2", 7), TMV("x", 0), TMV("x", 5),
   TMV("x", 12), TMV("x", 13), TMV("x1", 13), TMV("xs", 3), TMV("y", 0),
   TMV("y", 5), TMV("y", 12), TMV("y'", 12), TMV("z", 0), TMV("z", 5),
   TMC(8, 66), TMC(8, 68), TMC(8, 70), TMC(8, 72), TMC(8, 74), TMC(8, 76),
   TMC(8, 78), TMC(8, 80), TMC(8, 82), TMC(8, 84), TMC(8, 86), TMC(8, 87),
   TMC(8, 89), TMC(8, 85), TMC(8, 91), TMC(8, 93), TMC(8, 95), TMC(8, 97),
   TMC(8, 98), TMC(8, 99), TMC(9, 101), TMC(10, 102), TMC(11, 12),
   TMC(12, 35), TMC(13, 35), TMC(14, 103), TMC(14, 102), TMC(14, 104),
   TMC(14, 105), TMC(14, 107), TMC(14, 108), TMC(14, 109), TMC(14, 111),
   TMC(14, 57), TMC(14, 112), TMC(14, 113), TMC(14, 115), TMC(14, 35),
   TMC(14, 117), TMC(14, 56), TMC(15, 102), TMC(16, 66), TMC(16, 68),
   TMC(16, 118), TMC(16, 120), TMC(16, 122), TMC(16, 87), TMC(16, 85),
   TMC(16, 91), TMC(16, 93), TMC(16, 98), TMC(17, 124), TMC(18, 125),
   TMC(18, 127), TMC(18, 128), TMC(19, 130), TMC(19, 132), TMC(20, 135),
   TMC(20, 138), TMC(20, 141), TMC(20, 142), TMC(21, 143), TMC(21, 145),
   TMC(21, 146), TMC(22, 148), TMC(23, 149), TMC(23, 150), TMC(24, 149),
   TMC(24, 150), TMC(25, 2), TMC(26, 151), TMC(27, 16), TMC(28, 153),
   TMC(29, 154), TMC(30, 155), TMC(31, 43), TMC(32, 18), TMC(32, 23),
   TMC(33, 53), TMC(33, 4), TMC(34, 157), TMC(35, 3), TMC(35, 44),
   TMC(36, 1), TMC(36, 52), TMC(36, 13), TMC(37, 51), TMC(37, 160),
   TMC(38, 48), TMC(39, 161), TMC(39, 163), TMC(40, 164), TMC(40, 165),
   TMC(41, 156), TMC(42, 2), TMC(43, 166), TMC(44, 126), TMC(45, 169),
   TMC(46, 102), TMC(47, 45), TMC(48, 42), TMC(49, 170), TMC(50, 21),
   TMC(50, 90), TMC(51, 40), TMC(52, 39), TMC(53, 33), TMC(54, 32),
   TMC(55, 27), TMC(56, 174), TMC(57, 26), TMC(57, 176), TMC(58, 22),
   TMC(59, 20), TMC(60, 178), TMC(61, 181), TMC(61, 185), TMC(61, 189),
   TMC(62, 17), TMC(63, 15), TMC(64, 192), TMC(64, 196), TMC(64, 200),
   TMC(64, 204), TMC(64, 206), TMC(65, 11), TMC(66, 69)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op Lfrep_def x = x
    val op Lfrep_def =
    DT(((("lbtree",0),[]),[]), [read"%112%161@%33%167|@"])
  fun op Ndrep_def x = x
    val op Ndrep_def =
    DT(((("lbtree",1),[]),[]),
       [read"%83%5%94%51%94%55%114%171$2@$1@$0@@%35%192$0@%174$3@@%64%76%142$1@$4$0@@$3$0@@||@|@|@|@|@"])
  fun op is_lbtree_def x = x
    val op is_lbtree_def =
    DT(((("lbtree",2),[]),[]),
       [read"%94%47%109%187$0@@%126%1%104%94%47%123$1$0@@%181%114$0@%162@@%124%5%129%51%129%55%104$4$1@@%104$4$0@@%114$3@%171$2@$1@$0@@@@|@|@|@@@|@@$0$1@@|@@|@"])
  fun op lbtree_TY_DEF x = x
    val op lbtree_TY_DEF =
    DT(((("lbtree",3),
        [("bool",[25,26,52,53,56,58,105,124,143]),
         ("lbtree",[2])]),["DISK_THM"]), [read"%128%46%178%187@$0@|@"])
  fun op lbtree_absrep x = x
    val op lbtree_absrep =
    DT(((("lbtree",4),[("bool",[117]),("lbtree",[3])]),["DISK_THM"]),
       [read"%104%96%7%116%189%191$0@@@$0@|@@%94%45%109%187$0@@%114%191%189$0@@@$0@@|@@"])
  fun op path_follow_def x = x
    val op path_follow_def =
    DT(((("lbtree",5),[("list",[13])]),["DISK_THM"]),
       [read"%104%92%29%84%72%121%208$1@$0@%164@@%173%153@$1$0@@@|@|@@%92%29%84%72%85%30%99%50%121%208$3@$2@%145$1@$0@@@%199$3$2@@%166@%66%204$0@%5%70%205$0@%78%82%208$8@%141$6@$1@$0@@$5@||@||@|@@|@|@|@|@@"])
  fun op Lf_def x = x
    val op Lf_def = DT(((("lbtree",6),[]),[]), [read"%116%159@%189%162@@"])
  fun op Nd_def x = x
    val op Nd_def =
    DT(((("lbtree",7),[]),[]),
       [read"%83%5%96%52%96%56%116%169$2@$1@$0@@%189%171$2@%191$1@@%191$0@@@@|@|@|@"])
  fun op lbtree_case_def x = x
    val op lbtree_case_def =
    DT(((("lbtree",12),[]),[]),
       [read"%83%21%91%26%97%49%108%190$2@$1@$0@@%140%117$0@%160@@$2@$1%135%6%131%53%131%57%117$3@%170$2@$1@$0@@|@|@|@@%137%53%125%6%131%57%117$3@%170$1@$2@$0@@|@|@|@@%137%57%125%6%131%53%117$3@%170$1@$0@$2@@|@|@|@@@@|@|@|@"])
  fun op mem_def x = x
    val op mem_def =
    DT(((("lbtree",16),[]),[]),
       [read"%110%195@%10%13%87%42%123%83%10%96%13%123%181%130%52%130%56%116$2@%169$3@$1@$0@@|@|@@%181%124%16%130%52%130%56%104%116$3@%169$2@$1@$0@@@$5$4@$1@@|@|@|@@%124%16%130%52%130%56%104%116$3@%169$2@$1@$0@@@$5$4@$0@@|@|@|@@@@$2$1@$0@@|@|@@$0$2@$1@@|@||@"])
  fun op map_def x = x
    val op map_def =
    DT(((("lbtree",22),
        [("bool",[2,15,25,26,51,56,122]),("lbtree",[10,11,13]),
         ("option",[7]),("pair",[49])]),["DISK_THM"]),
       [read"%86%22%104%117%193$0@%159@@%160@@%83%5%96%52%96%56%117%193$3@%169$2@$1@$0@@@%170$3$2@@%193$3@$1@@%193$3@$0@@@|@|@|@@|@"])
  fun op finite_def x = x
    val op finite_def =
    DT(((("lbtree",25),[]),[]),
       [read"%113%185@%11%93%27%123%96%11%123%181%116$0@%159@@%124%5%130%52%130%56%104%116$3@%169$2@$1@$0@@@%104$4$1@@$4$0@@@|@|@|@@@$1$0@@|@@$0$1@@|@|@"])
  fun op bf_flatten_def x = x
    val op bf_flatten_def =
    DT(((("lbtree",33),
        [("bool",[2,25,26,27,51,56,58,105,129,147]),("lbtree",[9,13,32]),
         ("list",[6]),("llist",[18,26]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%104%119%182%165@@%158@@%104%100%60%119%182%146%159@$0@@@%182$0@@|@@%83%5%96%52%96%56%100%60%119%182%146%169$3@$2@$1@@$0@@@%155$3@%182%139$0@%146$2@%146$1@%165@@@@@@|@|@|@|@@@"])
  fun op depth_def x = x
    val op depth_def =
    DT(((("lbtree",38),[]),[]),
       [read"%111%183@%10%13%15%88%20%123%83%10%96%13%101%15%123%181%130%52%130%56%104%116$3@%169$4@$1@$0@@@%120$2@%105@@|@|@@%181%133%41%124%5%130%52%130%56%104%116$5@%169$2@$1@$0@@@%104%120$4@%176$3@@@$7$6@$1@$3@@@|@|@|@|@@%133%41%124%5%130%52%130%56%104%116$5@%169$2@$1@$0@@@%104%120$4@%176$3@@@$7$6@$0@$3@@@|@|@|@|@@@@$3$2@$1@$0@@|@|@|@@$0$3@$2@$1@@|@|||@"])
  fun op mindepth_def x = x
    val op mindepth_def =
    DT(((("lbtree",45),[]),[]),
       [read"%83%71%96%48%122%196$1@$0@@%143%195$1@$0@@%175%156%43%183$2@$1@$0@|@@@%168@@|@|@"])
  fun op optmin_tupled_primitive_def x = x
    val op optmin_tupled_primitive_def =
    DT(((("lbtree",46),[]),[]),
       [read"%115%202@%180%136%4%179$0@|@@%44%8%207$0@%65%68%198$1@%198$0@%154%168@@%79%154%175$0@@|@@%73%198$1@%154%175$0@@@%80%154%175%163$1@$0@@@|@|@||@||@@"])
  fun op optmin_curried_def x = x
    val op optmin_curried_def =
    DT(((("lbtree",47),[]),[]),
       [read"%102%74%102%75%122%201$1@$0@@%202%103$1@$0@@@|@|@"])
  fun op is_mmindex_def x = x
    val op is_mmindex_def =
    DT(((("lbtree",53),[]),[]),
       [read"%89%23%98%34%101%43%101%18%109%188$3@$2@$1@$0@@%104%106$1@%157$2@@@%104%122$3%147$1@$2@@@%175$0@@@%101%31%123%106$0@%157$3@@@%181%122$4%147$0@$3@@@%168@@%133%19%104%122$5%147$1@$4@@@%175$0@@@%104%107$2@$0@@%123%106$1@$3@@%106$2@$0@@@@|@@@|@@@@|@|@|@|@"])
  fun op lbtree_cases x = x
    val op lbtree_cases =
    DT(((("lbtree",8),
        [("bool",
         [2,15,25,26,36,51,52,53,54,55,56,58,63,75,86,99,100,102,105,106,
          124,143]),("lbtree",[2,4,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%96%48%181%116$0@%159@@%124%5%130%52%130%56%116$3@%169$2@$1@$0@@|@|@|@@|@"])
  fun op Lf_NOT_Nd x = x
    val op Lf_NOT_Nd =
    DT(((("lbtree",9),
        [("bool",
         [2,15,25,26,27,51,52,53,54,55,56,58,60,63,71,75,99,100,105,106,
          124,143]),("lbtree",[0,1,2,4,6,7]),("list",[6]),("option",[11]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%209%116%159@%169%5@%52@%56@@@"])
  fun op Nd_11 x = x
    val op Nd_11 =
    DT(((("lbtree",10),
        [("bool",
         [2,15,25,26,36,51,52,53,54,55,56,58,60,63,75,99,100,105,106,124,
          129,143,147]),("lbtree",[1,2,4,7]),("list",[6]),("option",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%116%169%12@%52@%62@@%169%14@%56@%63@@@%104%108%12@%14@@%104%116%52@%56@@%116%62@%63@@@@"])
  fun op lbtree_ue_Axiom x = x
    val op lbtree_ue_Axiom =
    DT(((("lbtree",11),
        [("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,55,56,58,60,63,64,75,84,94,99,
          100,105,106,122,124,129,143,147]),("lbtree",[0,1,2,4,5,6,7]),
         ("list",[6,43,46]),("option",[6,7,10,13]),("pair",[6,8,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%24%134%28%83%71%117$1$0@@%200$2$0@@%160@%67%206$0@%17%69%203$0@%77%81%170$3@$6$1@@$6$0@@||@||@|@@|@|@|@"])
  fun op lbtree_case_thm x = x
    val op lbtree_case_thm =
    DT(((("lbtree",13),
        [("bool",[25,26,27,54,56,58,68,105,129,143,147]),
         ("lbtree",[9,10,12])]),["DISK_THM"]),
       [read"%104%108%190%21@%26@%160@@%21@@%108%190%21@%26@%170%6@%53@%57@@@%26%6@%53@%57@@@"])
  fun op lbtree_bisimulation x = x
    val op lbtree_bisimulation =
    DT(((("lbtree",14),
        [("bool",
         [2,15,25,26,27,30,51,52,53,54,55,56,58,60,63,64,68,75,99,100,105,
          108,109,122,124,129,143,147]),("lbtree",[8,9,10,11,13]),
         ("option",[7]),("pair",[16,20,25,49]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%96%48%96%61%109%116$1@$0@@%127%3%104$0$2@$1@@%96%48%96%61%123$2$1@$0@@%181%104%116$1@%159@@%116$0@%159@@@%124%5%130%52%130%62%130%56%130%63%104$7$3@$2@@%104$7$1@$0@@%104%116$6@%169$4@$3@$1@@@%116$5@%169$4@$2@$0@@@@@|@|@|@|@|@@@|@|@@|@@|@|@"])
  fun op lbtree_strong_bisimulation x = x
    val op lbtree_strong_bisimulation =
    DT(((("lbtree",15),
        [("bool",
         [2,15,25,26,27,37,51,52,53,54,55,56,58,63,75,99,100,105,124,140,
          143]),("lbtree",[8,9,10,14]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%96%48%96%61%109%116$1@$0@@%127%3%104$0$2@$1@@%96%48%96%61%123$2$1@$0@@%181%116$1@$0@@%124%5%130%52%130%62%130%56%130%63%104$7$3@$2@@%104$7$1@$0@@%104%116$6@%169$4@$3@$1@@@%116$5@%169$4@$2@$0@@@@@|@|@|@|@|@@@|@|@@|@@|@|@"])
  fun op mem_rules x = x
    val op mem_rules =
    DT(((("lbtree",17),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[16])]),["DISK_THM"]),
       [read"%104%83%5%96%52%96%56%195$2@%169$2@$1@$0@@|@|@|@@%104%83%5%83%16%96%52%96%56%123%195$3@$1@@%195$3@%169$2@$1@$0@@@|@|@|@|@@%83%5%83%16%96%52%96%56%123%195$3@$0@@%195$3@%169$2@$1@$0@@@|@|@|@|@@@"])
  fun op mem_ind x = x
    val op mem_ind =
    DT(((("lbtree",18),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[16])]),["DISK_THM"]),
       [read"%87%42%123%104%83%5%96%52%96%56$3$2@%169$2@$1@$0@@|@|@|@@%104%83%5%83%16%96%52%96%56%123$4$3@$1@@$4$3@%169$2@$1@$0@@@|@|@|@|@@%83%5%83%16%96%52%96%56%123$4$3@$0@@$4$3@%169$2@$1@$0@@@|@|@|@|@@@@%83%10%96%13%123%195$1@$0@@$2$1@$0@@|@|@@|@"])
  fun op mem_strongind x = x
    val op mem_strongind =
    DT(((("lbtree",19),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[16])]),["DISK_THM"]),
       [read"%87%42%123%104%83%5%96%52%96%56$3$2@%169$2@$1@$0@@|@|@|@@%104%83%5%83%16%96%52%96%56%123%104%195$3@$1@@$4$3@$1@@@$4$3@%169$2@$1@$0@@@|@|@|@|@@%83%5%83%16%96%52%96%56%123%104%195$3@$0@@$4$3@$0@@@$4$3@%169$2@$1@$0@@@|@|@|@|@@@@%83%10%96%13%123%195$1@$0@@$2$1@$0@@|@|@@|@"])
  fun op mem_cases x = x
    val op mem_cases =
    DT(((("lbtree",20),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[16])]),["DISK_THM"]),
       [read"%83%10%96%13%109%195$1@$0@@%181%130%52%130%56%116$2@%169$3@$1@$0@@|@|@@%181%124%16%130%52%130%56%104%116$3@%169$2@$1@$0@@@%195$4@$1@@|@|@|@@%124%16%130%52%130%56%104%116$3@%169$2@$1@$0@@@%195$4@$0@@|@|@|@@@@|@|@"])
  fun op mem_thm x = x
    val op mem_thm =
    DT(((("lbtree",21),
        [("bool",
         [14,25,26,27,36,51,52,53,54,55,58,63,72,96,132,133,138,143]),
         ("lbtree",[9,10,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%104%109%195%5@%159@@%152@@%109%195%5@%169%16@%52@%56@@@%181%108%5@%16@@%181%195%5@%52@@%195%5@%56@@@@@"])
  fun op map_eq_Lf x = x
    val op map_eq_Lf =
    DT(((("lbtree",23),
        [("bool",[2,15,25,26,27,53,54,55,56,58,63,75]),("lbtree",[8,9,22]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%104%109%116%194%25@%49@@%159@@%117%49@%160@@@%109%116%159@%194%25@%49@@@%117%49@%160@@@"])
  fun op map_eq_Nd x = x
    val op map_eq_Nd =
    DT(((("lbtree",24),
        [("bool",[2,15,25,26,27,37,51,53,54,55,58,63,75,143]),
         ("lbtree",[8,9,10,22]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%116%194%25@%49@@%169%5@%52@%56@@@%125%9%131%54%131%58%104%117%49@%170$2@$1@$0@@@%104%108%5@%25$2@@@%104%116%52@%194%25@$1@@@%116%56@%194%25@$0@@@@@|@|@|@@"])
  fun op finite_rules x = x
    val op finite_rules =
    DT(((("lbtree",26),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[25])]),["DISK_THM"]),
       [read"%104%185%159@@%83%5%96%52%96%56%123%104%185$1@@%185$0@@@%185%169$2@$1@$0@@@|@|@|@@"])
  fun op finite_ind x = x
    val op finite_ind =
    DT(((("lbtree",27),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[25])]),["DISK_THM"]),
       [read"%93%27%123%104$0%159@@%83%5%96%52%96%56%123%104$3$1@@$3$0@@@$3%169$2@$1@$0@@@|@|@|@@@%96%11%123%185$0@@$1$0@@|@@|@"])
  fun op finite_strongind x = x
    val op finite_strongind =
    DT(((("lbtree",28),
        [("bool",[14,25,26,43,53,58,132,133,138]),
         ("lbtree",[25])]),["DISK_THM"]),
       [read"%93%27%123%104$0%159@@%83%5%96%52%96%56%123%104%185$1@@%104$3$1@@%104%185$0@@$3$0@@@@@$3%169$2@$1@$0@@@|@|@|@@@%96%11%123%185$0@@$1$0@@|@@|@"])
  fun op finite_cases x = x
    val op finite_cases =
    DT(((("lbtree",29),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[25])]),["DISK_THM"]),
       [read"%96%11%109%185$0@@%181%116$0@%159@@%124%5%130%52%130%56%104%116$3@%169$2@$1@$0@@@%104%185$1@@%185$0@@@|@|@|@@@|@"])
  fun op finite_thm x = x
    val op finite_thm =
    DT(((("lbtree",30),
        [("bool",[14,25,26,27,37,51,52,53,56,58,63,132,133,138,143]),
         ("lbtree",[9,10,25])]),["DISK_THM"]),
       [read"%104%109%185%159@@%177@@%109%186%170%6@%53@%57@@@%104%186%53@@%186%57@@@@"])
  fun op finite_map x = x
    val op finite_map =
    DT(((("lbtree",31),
        [("bool",[14,25,26,51,53,54,55,56,58,63,83,105,124,132,133,138]),
         ("lbtree",[22,23,24,25,30]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%109%185%194%25@%49@@@%186%49@@"])
  fun op bf_flatten_eq_lnil x = x
    val op bf_flatten_eq_lnil =
    DT(((("lbtree",34),
        [("bool",[2,14,15,25,26,27,51,53,54,55,56,63,75]),
         ("lbtree",[8,9,33]),("list",[30,43]),("llist",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%100%36%109%119%182$0@@%158@@%149%116%159@@$0@@|@"])
  fun op bf_flatten_append x = x
    val op bf_flatten_append =
    DT(((("lbtree",35),
        [("bool",[14,25,53,56,58,63,105,124]),("lbtree",[33]),
         ("list",[20,30,43])]),["DISK_THM"]),
       [read"%100%38%123%149%116%159@@$0@@%119%182%139$0@%40@@@%182%40@@@|@"])
  fun op EXISTS_FIRST x = x
    val op EXISTS_FIRST =
    DT(((("lbtree",36),
        [("bool",[14,25,26,27,30,51,53,54,58,63,105,124]),("combin",[8]),
         ("list",[20,30,31,43,56])]),["DISK_THM"]),
       [read"%98%34%123%150%0@$0@@%132%37%124%71%132%39%104%118$3@%138$2@%144$1@$0@@@@%104%148%197%209@%0@@$2@@%0$1@@@|@|@|@@|@"])
  fun op exists_bf_flatten x = x
    val op exists_bf_flatten =
    DT(((("lbtree",37),
        [("bool",[2,14,15,25,26,27,52,53,54,55,56,58,63,83,100,105,124]),
         ("combin",[5,8]),("lbtree",[8,9,21,33,34,35,36]),
         ("list",[20,31,56,86,87]),("llist",[17,18,101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%123%184%108%71@@%182%59@@@%151%195%71@@%59@@"])
  fun op depth_rules x = x
    val op depth_rules =
    DT(((("lbtree",39),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[38])]),["DISK_THM"]),
       [read"%104%83%71%96%52%96%56%183$2@%169$2@$1@$0@@%105@|@|@|@@%104%101%41%83%71%83%5%96%52%96%56%123%183$3@$1@$4@@%183$3@%169$2@$1@$0@@%176$4@@@|@|@|@|@|@@%101%41%83%71%83%5%96%52%96%56%123%183$3@$0@$4@@%183$3@%169$2@$1@$0@@%176$4@@@|@|@|@|@|@@@"])
  fun op depth_ind x = x
    val op depth_ind =
    DT(((("lbtree",40),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[38])]),["DISK_THM"]),
       [read"%88%20%123%104%83%71%96%52%96%56$3$2@%169$2@$1@$0@@%105@|@|@|@@%104%101%41%83%71%83%5%96%52%96%56%123$5$3@$1@$4@@$5$3@%169$2@$1@$0@@%176$4@@@|@|@|@|@|@@%101%41%83%71%83%5%96%52%96%56%123$5$3@$0@$4@@$5$3@%169$2@$1@$0@@%176$4@@@|@|@|@|@|@@@@%83%10%96%13%101%15%123%183$2@$1@$0@@$3$2@$1@$0@@|@|@|@@|@"])
  fun op depth_strongind x = x
    val op depth_strongind =
    DT(((("lbtree",41),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[38])]),["DISK_THM"]),
       [read"%88%20%123%104%83%71%96%52%96%56$3$2@%169$2@$1@$0@@%105@|@|@|@@%104%101%41%83%71%83%5%96%52%96%56%123%104%183$3@$1@$4@@$5$3@$1@$4@@@$5$3@%169$2@$1@$0@@%176$4@@@|@|@|@|@|@@%101%41%83%71%83%5%96%52%96%56%123%104%183$3@$0@$4@@$5$3@$0@$4@@@$5$3@%169$2@$1@$0@@%176$4@@@|@|@|@|@|@@@@%83%10%96%13%101%15%123%183$2@$1@$0@@$3$2@$1@$0@@|@|@|@@|@"])
  fun op depth_cases x = x
    val op depth_cases =
    DT(((("lbtree",42),
        [("bool",[14,25,26,53,132,133,138]),
         ("lbtree",[38])]),["DISK_THM"]),
       [read"%83%10%96%13%101%15%109%183$2@$1@$0@@%181%130%52%130%56%104%116$3@%169$4@$1@$0@@@%120$2@%105@@|@|@@%181%133%41%124%5%130%52%130%56%104%116$5@%169$2@$1@$0@@@%104%120$4@%176$3@@@%183$6@$1@$3@@@|@|@|@|@@%133%41%124%5%130%52%130%56%104%116$5@%169$2@$1@$0@@@%104%120$4@%176$3@@@%183$6@$0@$3@@@|@|@|@|@@@@|@|@|@"])
  fun op mem_depth x = x
    val op mem_depth =
    DT(((("lbtree",43),
        [("bool",[14,25,26,53,54,58,63,73,74,75,132,133,138]),
         ("lbtree",[16,38]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%83%71%96%48%123%195$1@$0@@%133%43%183$2@$1@$0@|@@|@|@"])
  fun op depth_mem x = x
    val op depth_mem =
    DT(((("lbtree",44),
        [("bool",[14,25,26,52,53,56,58,63,105,124,132,133,138]),
         ("lbtree",[21,38])]),["DISK_THM"]),
       [read"%83%71%96%48%101%43%123%183$2@$1@$0@@%195$2@$1@@|@|@|@"])
  fun op optmin_ind x = x
    val op optmin_ind =
    DT(((("lbtree",48),
        [("bool",[25,26,47,48,53,54,58,63,72,76,78,80]),("option",[6]),
         ("pair",[5,16]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%95%2%123%104$0%168@%168@@%104%101%73$1%175$0@@%168@|@@%104%101%79$1%168@%175$0@@|@@%101%73%101%79$2%175$1@@%175$0@@|@|@@@@@%102%65%102%68$2$1@$0@|@|@@|@"])
  fun op optmin_def x = x
    val op optmin_def =
    DT(((("lbtree",49),
        [("bool",[15,58]),("combin",[19]),("lbtree",[46,47]),
         ("option",[7]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%104%122%201%168@%168@@%168@@%104%122%201%175%73@@%168@@%175%73@@@%104%122%201%168@%175%79@@@%175%79@@@%122%201%175%73@@%175%79@@@%175%163%73@%79@@@@@@"])
  fun op mindepth_thm x = x
    val op mindepth_thm =
    DT(((("lbtree",50),
        [("arithmetic",[24,25,27,28,41,46,59,71,93,173,177,180,295]),
         ("bool",
         [14,15,25,26,27,30,36,37,43,48,51,52,53,54,55,56,58,63,64,72,73,
          74,75,76,83,92,93,95,96,100,101,104,105,107,124,129,132,133,138,
          143,145,147]),("combin",[19]),
         ("lbtree",[10,21,38,43,44,45,46,47]),("num",[7]),
         ("numeral",[3,5,8]),("option",[7,10,11,29,31]),("pair",[49]),
         ("prim_rec",[1,7]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%104%122%196%71@%159@@%168@@%122%196%71@%169%5@%52@%56@@@%143%108%71@%5@@%175%105@@%172%176@%201%196%71@%52@@%196%71@%56@@@@@@"])
  fun op mem_mindepth x = x
    val op mem_mindepth =
    DT(((("lbtree",51),
        [("bool",[14,25,26,36,53,54,56,63,109]),("combin",[5,19,20]),
         ("lbtree",[45]),
         ("sat",[1,3,5,6,7,11,12,13,15,16,17,18])]),["DISK_THM"]),
       [read"%83%71%96%48%123%195$1@$0@@%133%43%122%196$2@$1@@%175$0@@|@@|@|@"])
  fun op mindepth_depth x = x
    val op mindepth_depth =
    DT(((("lbtree",52),
        [("bool",[2,15,25,26,53,54,58,63,105,124]),("lbtree",[43,45]),
         ("option",[27]),("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%123%122%196%71@%48@@%175%43@@@%183%71@%48@%43@@"])
  fun op mmindex_EXISTS x = x
    val op mmindex_EXISTS =
    DT(((("lbtree",54),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,176,177,180]),
         ("bool",
         [2,15,25,26,27,36,37,51,52,53,54,55,56,58,60,63,74,84,93,96,99,
          101,104,105,107,124,143]),("lbtree",[53]),("list",[75,170]),
         ("marker",[6]),("numeral",[3,8]),("option",[6,10,11]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9])]),["DISK_THM"]),
       [read"%123%150%21%133%43%122%23$1@@%175$0@@|@|@%34@@%133%31%133%41%188%23@%34@$1@$0@|@|@@"])
  fun op mmindex_unique x = x
    val op mmindex_unique =
    DT(((("lbtree",55),
        [("arithmetic",[24,25,41,46,59,71,93,173,177,180]),
         ("bool",
         [2,15,25,26,36,43,51,52,53,54,55,58,63,93,96,99,100,101,104,105,
          106,124]),("lbtree",[53]),("numeral",[3,8]),("option",[10,12]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%123%188%23@%34@%31@%41@@%101%32%101%43%109%188%23@%34@$1@$0@@%104%120$1@%31@@%120$0@%41@@@|@|@@"])
  fun op mem_bf_flatten x = x
    val op mem_bf_flatten =
    DT(((("lbtree",56),
        [("arithmetic",
         [17,19,22,24,25,27,28,30,37,41,46,59,62,71,88,93,95,112,128,130,
          147,172,173,176,177,180,206,269,295]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,43,51,52,53,54,55,56,58,63,64,65,67,73,
          74,75,83,84,86,87,93,95,96,99,100,101,102,104,105,106,107,108,
          109,124,129,140,143,145,147]),("combin",[3,5,19,20]),
         ("lbtree",[8,21,33,37,44,46,47,50,51,52,53,54,55]),
         ("list",[17,20,22,31,43,45,57,75,86,128,129]),("llist",[104]),
         ("num",[7]),("numeral",[0,3,5,7,8,9]),
         ("option",[6,7,10,11,16,29,31]),("pair",[8,9,16,25,49,53,56]),
         ("prim_rec",[1,4,6,7,42]),("relation",[101,107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%184%108%71@@%182%59@@@%151%195%71@@%59@@"])
  end
  val _ = DB.bindl "lbtree"
  [("Lfrep_def",Lfrep_def,DB.Def), ("Ndrep_def",Ndrep_def,DB.Def),
   ("is_lbtree_def",is_lbtree_def,DB.Def),
   ("lbtree_TY_DEF",lbtree_TY_DEF,DB.Def),
   ("lbtree_absrep",lbtree_absrep,DB.Def),
   ("path_follow_def",path_follow_def,DB.Def), ("Lf_def",Lf_def,DB.Def),
   ("Nd_def",Nd_def,DB.Def), ("lbtree_case_def",lbtree_case_def,DB.Def),
   ("mem_def",mem_def,DB.Def), ("map_def",map_def,DB.Def),
   ("finite_def",finite_def,DB.Def),
   ("bf_flatten_def",bf_flatten_def,DB.Def),
   ("depth_def",depth_def,DB.Def), ("mindepth_def",mindepth_def,DB.Def),
   ("optmin_tupled_primitive_def",optmin_tupled_primitive_def,DB.Def),
   ("optmin_curried_def",optmin_curried_def,DB.Def),
   ("is_mmindex_def",is_mmindex_def,DB.Def),
   ("lbtree_cases",lbtree_cases,DB.Thm), ("Lf_NOT_Nd",Lf_NOT_Nd,DB.Thm),
   ("Nd_11",Nd_11,DB.Thm), ("lbtree_ue_Axiom",lbtree_ue_Axiom,DB.Thm),
   ("lbtree_case_thm",lbtree_case_thm,DB.Thm),
   ("lbtree_bisimulation",lbtree_bisimulation,DB.Thm),
   ("lbtree_strong_bisimulation",lbtree_strong_bisimulation,DB.Thm),
   ("mem_rules",mem_rules,DB.Thm), ("mem_ind",mem_ind,DB.Thm),
   ("mem_strongind",mem_strongind,DB.Thm), ("mem_cases",mem_cases,DB.Thm),
   ("mem_thm",mem_thm,DB.Thm), ("map_eq_Lf",map_eq_Lf,DB.Thm),
   ("map_eq_Nd",map_eq_Nd,DB.Thm), ("finite_rules",finite_rules,DB.Thm),
   ("finite_ind",finite_ind,DB.Thm),
   ("finite_strongind",finite_strongind,DB.Thm),
   ("finite_cases",finite_cases,DB.Thm), ("finite_thm",finite_thm,DB.Thm),
   ("finite_map",finite_map,DB.Thm),
   ("bf_flatten_eq_lnil",bf_flatten_eq_lnil,DB.Thm),
   ("bf_flatten_append",bf_flatten_append,DB.Thm),
   ("EXISTS_FIRST",EXISTS_FIRST,DB.Thm),
   ("exists_bf_flatten",exists_bf_flatten,DB.Thm),
   ("depth_rules",depth_rules,DB.Thm), ("depth_ind",depth_ind,DB.Thm),
   ("depth_strongind",depth_strongind,DB.Thm),
   ("depth_cases",depth_cases,DB.Thm), ("mem_depth",mem_depth,DB.Thm),
   ("depth_mem",depth_mem,DB.Thm), ("optmin_ind",optmin_ind,DB.Thm),
   ("optmin_def",optmin_def,DB.Thm), ("mindepth_thm",mindepth_thm,DB.Thm),
   ("mem_mindepth",mem_mindepth,DB.Thm),
   ("mindepth_depth",mindepth_depth,DB.Thm),
   ("mmindex_EXISTS",mmindex_EXISTS,DB.Thm),
   ("mmindex_unique",mmindex_unique,DB.Thm),
   ("mem_bf_flatten",mem_bf_flatten,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("llistTheory.llist_grammars",
                          llistTheory.llist_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Lfrep", (Term.prim_mk_const { Name = "Lfrep", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Lfrep", (Term.prim_mk_const { Name = "Lfrep", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Ndrep", (Term.prim_mk_const { Name = "Ndrep", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Ndrep", (Term.prim_mk_const { Name = "Ndrep", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_lbtree", (Term.prim_mk_const { Name = "is_lbtree", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_lbtree", (Term.prim_mk_const { Name = "is_lbtree", Thy = "lbtree"}))
  val _ = update_grms temp_add_type "lbtree"
  val _ = update_grms temp_add_type "lbtree"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lbtree_rep", (Term.prim_mk_const { Name = "lbtree_rep", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lbtree_abs", (Term.prim_mk_const { Name = "lbtree_abs", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("path_follow", (Term.prim_mk_const { Name = "path_follow", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Lf", (Term.prim_mk_const { Name = "Lf", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Lf", (Term.prim_mk_const { Name = "Lf", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Nd", (Term.prim_mk_const { Name = "Nd", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Nd", (Term.prim_mk_const { Name = "Nd", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lbtree_case", (Term.prim_mk_const { Name = "lbtree_case", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lbtree_case", (Term.prim_mk_const { Name = "lbtree_case", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mem", (Term.prim_mk_const { Name = "mem", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mem", (Term.prim_mk_const { Name = "mem", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("map", (Term.prim_mk_const { Name = "map", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("finite", (Term.prim_mk_const { Name = "finite", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("finite", (Term.prim_mk_const { Name = "finite", Thy = "lbtree"}))

  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bf_flatten", (Term.prim_mk_const { Name = "bf_flatten", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("depth", (Term.prim_mk_const { Name = "depth", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("depth", (Term.prim_mk_const { Name = "depth", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mindepth", (Term.prim_mk_const { Name = "mindepth", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mindepth", (Term.prim_mk_const { Name = "mindepth", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optmin_tupled", (Term.prim_mk_const { Name = "optmin_tupled", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optmin_tupled", (Term.prim_mk_const { Name = "optmin_tupled", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optmin", (Term.prim_mk_const { Name = "optmin", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optmin", (Term.prim_mk_const { Name = "optmin", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_mmindex", (Term.prim_mk_const { Name = "is_mmindex", Thy = "lbtree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_mmindex", (Term.prim_mk_const { Name = "is_mmindex", Thy = "lbtree"}))
  val _ = update_grms
       (temp_remove_ovl_mapping "optmin")
        {Name = "optmin", Thy = "lbtree"}
  val _ = update_grms
       (temp_remove_ovl_mapping "depth")
        {Name = "depth", Thy = "lbtree"}
  val _ = update_grms
       (temp_remove_ovl_mapping "mindepth")
        {Name = "mindepth", Thy = "lbtree"}
  val _ = update_grms
       (temp_remove_ovl_mapping "is_mmindex")
        {Name = "is_mmindex", Thy = "lbtree"}
  val lbtree_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "lbtree",
    thydataty = "simp",
    data =
        "lbtree.Lf_NOT_Nd lbtree.Nd_11 lbtree.finite_map lbtree.finite_thm lbtree.map_eq_Lf lbtree.map_def lbtree.mem_thm lbtree.lbtree_case_thm"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "lbtree",
    thydataty = "rule_induction",
    data =
        "lbtree.mem_strongind lbtree.depth_strongind lbtree.finite_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "lbtree",
    thydataty = "compute",
    data =
        "lbtree.is_lbtree_def lbtree.is_mmindex_def lbtree.mindepth_def lbtree.optmin_def lbtree.path_follow_def lbtree.Lf_def lbtree.Ndrep_def lbtree.lbtree_case_def lbtree.Nd_def lbtree.Lfrep_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "lbtree"
end
