structure comparisonTheory :> comparisonTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading comparisonTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open totoTheory
  in end;
  val _ = Theory.link_parents
          ("comparison",
          Arbnum.fromString "1488587934",
          Arbnum.fromString "668189")
          [("toto",
           Arbnum.fromString "1488587912",
           Arbnum.fromString "619395")];
  val _ = Theory.incorporate_types "comparison" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("toto", "cpn"), ID("list", "list"),
   ID("string", "char"), ID("min", "bool"), ID("pair", "prod"),
   ID("option", "option"), ID("num", "num"), ID("bool", "!"),
   ID("pair", ","), ID("bool", "/\\"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("min", "@"), ID("bool", "COND"),
   ID("list", "CONS"), ID("pair", "CURRY"), ID("toto", "EQUAL"),
   ID("bool", "F"), ID("pair", "FST"), ID("toto", "GREATER"),
   ID("combin", "I"), ID("bool", "IN"), ID("toto", "LESS"),
   ID("list", "LIST_REL"), ID("list", "LIST_TO_SET"),
   ID("toto", "ListOrd"), ID("toto", "toto"), ID("list", "NIL"),
   ID("option", "NONE"), ID("string", "ORD"), ID("pair", "SND"),
   ID("option", "SOME"), ID("bool", "T"), ID("toto", "TO"),
   ID("toto", "TO_inv"), ID("toto", "TotOrd"), ID("pair", "UNCURRY"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("bool", "\\/"),
   ID("toto", "apto"), ID("comparison", "bool_cmp"),
   ID("comparison", "bool_cmp_tupled"), ID("toto", "charOrd"),
   ID("comparison", "char_cmp"), ID("toto", "cpn_CASE"),
   ID("comparison", "equiv_inj"), ID("comparison", "good_cmp"),
   ID("comparison", "invert"), ID("toto", "lexTO"),
   ID("list", "list_CASE"), ID("comparison", "list_cmp"),
   ID("comparison", "list_cmp_tupled"), ID("toto", "numOrd"),
   ID("comparison", "num_cmp"), ID("combin", "o"),
   ID("option", "option_CASE"), ID("comparison", "option_cmp"),
   ID("comparison", "option_cmp2"), ID("comparison", "option_cmp2_tupled"),
   ID("comparison", "option_cmp_tupled"), ID("pair", "pair_CASE"),
   ID("comparison", "pair_cmp"), ID("comparison", "resp_equiv"),
   ID("comparison", "resp_equiv2"), ID("comparison", "string_cmp"),
   ID("toto", "stringto"), ID("relation", "transitive"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [3], TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 2, 3],
   TYOP [4], TYV "'b", TYV "'a", TYOP [0, 7, 6], TYOP [0, 8, 5],
   TYOP [0, 6, 0], TYOP [0, 6, 10], TYOP [0, 11, 9], TYOP [0, 7, 0],
   TYOP [0, 7, 13], TYOP [0, 14, 12], TYV "'c", TYOP [0, 6, 16],
   TYOP [0, 7, 17], TYOP [0, 18, 5], TYOP [0, 14, 19], TYV "'d",
   TYOP [5, 6, 21], TYOP [0, 22, 0], TYOP [5, 7, 16], TYOP [0, 24, 23],
   TYOP [0, 21, 0], TYOP [0, 16, 26], TYOP [0, 27, 25], TYOP [0, 7, 10],
   TYOP [0, 29, 28], TYOP [6, 6], TYOP [6, 7], TYOP [5, 32, 31],
   TYOP [5, 29, 33], TYOP [0, 34, 0], TYOP [0, 31, 0], TYOP [0, 32, 36],
   TYOP [0, 29, 37], TYOP [7], TYOP [0, 39, 0], TYOP [0, 39, 40],
   TYOP [2, 6], TYOP [2, 7], TYOP [5, 43, 42], TYOP [5, 29, 44],
   TYOP [0, 45, 0], TYOP [0, 42, 0], TYOP [0, 43, 47], TYOP [0, 29, 48],
   TYOP [0, 0, 0], TYOP [0, 14, 5], TYOP [0, 1, 0], TYOP [0, 1, 52],
   TYOP [5, 5, 5], TYOP [0, 54, 0], TYOP [0, 5, 0], TYOP [0, 5, 56],
   TYOP [0, 5, 5], TYOP [0, 5, 58], TYOP [0, 42, 5], TYOP [0, 43, 60],
   TYOP [0, 29, 61], TYOP [0, 31, 5], TYOP [0, 32, 63], TYOP [0, 29, 64],
   TYOP [0, 54, 5], TYOP [0, 54, 66], TYOP [0, 45, 5], TYOP [0, 45, 68],
   TYOP [0, 34, 5], TYOP [0, 34, 70], TYOP [0, 17, 0], TYOP [0, 17, 72],
   TYOP [5, 7, 6], TYOP [0, 7, 5], TYOP [0, 75, 5], TYOP [0, 6, 5],
   TYOP [0, 77, 5], TYOP [0, 16, 5], TYOP [0, 79, 5], TYOP [0, 21, 5],
   TYOP [0, 81, 5], TYOP [0, 58, 5], TYOP [0, 1, 5], TYOP [0, 84, 5],
   TYOP [0, 0, 5], TYOP [0, 86, 5], TYOP [0, 9, 5], TYOP [0, 51, 5],
   TYOP [0, 19, 5], TYOP [0, 29, 5], TYOP [0, 91, 5], TYOP [0, 11, 5],
   TYOP [0, 93, 5], TYOP [0, 27, 5], TYOP [0, 95, 5], TYOP [0, 59, 5],
   TYOP [0, 97, 5], TYOP [0, 62, 5], TYOP [0, 99, 5], TYOP [0, 65, 5],
   TYOP [0, 101, 5], TYOP [0, 73, 5], TYOP [0, 103, 5], TYOP [0, 43, 5],
   TYOP [0, 105, 5], TYOP [0, 60, 5], TYOP [0, 2, 5], TYOP [0, 108, 5],
   TYOP [0, 39, 5], TYOP [0, 110, 5], TYOP [0, 32, 5], TYOP [0, 112, 5],
   TYOP [0, 63, 5], TYOP [0, 74, 5], TYOP [0, 115, 5], TYOP [0, 24, 5],
   TYOP [0, 117, 5], TYOP [0, 22, 5], TYOP [0, 119, 5], TYOP [0, 16, 24],
   TYOP [0, 7, 121], TYOP [0, 21, 22], TYOP [0, 6, 123], TYOP [0, 5, 54],
   TYOP [0, 5, 125], TYOP [0, 44, 45], TYOP [0, 29, 127], TYOP [0, 33, 34],
   TYOP [0, 29, 129], TYOP [0, 42, 44], TYOP [0, 43, 131],
   TYOP [0, 31, 33], TYOP [0, 32, 133], TYOP [0, 39, 110], TYOP [0, 7, 75],
   TYOP [0, 6, 77], TYOP [0, 16, 79], TYOP [0, 1, 84], TYOP [0, 0, 86],
   TYOP [0, 14, 51], TYOP [0, 53, 5], TYOP [0, 53, 142], TYOP [0, 43, 0],
   TYOP [0, 43, 144], TYOP [0, 145, 5], TYOP [0, 145, 146], TYOP [0, 4, 5],
   TYOP [0, 4, 148], TYOP [0, 41, 5], TYOP [0, 41, 150], TYOP [0, 32, 0],
   TYOP [0, 32, 152], TYOP [0, 153, 5], TYOP [0, 153, 154],
   TYOP [0, 74, 0], TYOP [0, 74, 156], TYOP [0, 157, 5],
   TYOP [0, 157, 158], TYOP [0, 55, 5], TYOP [0, 55, 160], TYOP [0, 46, 5],
   TYOP [0, 46, 162], TYOP [0, 35, 5], TYOP [0, 35, 164],
   TYOP [0, 43, 105], TYOP [0, 42, 60], TYOP [0, 2, 108],
   TYOP [0, 32, 112], TYOP [0, 31, 63], TYOP [0, 74, 115],
   TYOP [0, 24, 117], TYOP [0, 22, 119], TYOP [0, 67, 5],
   TYOP [0, 174, 67], TYOP [0, 69, 5], TYOP [0, 176, 69], TYOP [0, 71, 5],
   TYOP [0, 178, 71], TYOP [0, 0, 50], TYOP [0, 5, 180], TYOP [0, 43, 43],
   TYOP [0, 7, 182], TYOP [0, 42, 42], TYOP [0, 6, 184], TYOP [5, 7, 7],
   TYOP [0, 186, 0], TYOP [0, 187, 14], TYOP [0, 24, 7], TYOP [0, 22, 6],
   TYOP [0, 7, 76], TYOP [0, 6, 78], TYOP [0, 7, 77], TYOP [0, 193, 61],
   TYOP [0, 43, 75], TYOP [0, 42, 77], TYOP [28, 7], TYOP [0, 197, 145],
   TYOP [0, 1, 39], TYOP [0, 24, 16], TYOP [0, 22, 21], TYOP [0, 7, 32],
   TYOP [0, 6, 31], TYOP [0, 14, 197], TYOP [0, 14, 14],
   TYOP [0, 153, 153], TYOP [0, 14, 187], TYOP [0, 193, 115],
   TYOP [0, 6, 115], TYOP [0, 7, 209], TYOP [0, 210, 171],
   TYOP [0, 55, 55], TYOP [0, 212, 55], TYOP [0, 67, 213],
   TYOP [0, 46, 46], TYOP [0, 215, 46], TYOP [0, 69, 216],
   TYOP [0, 35, 35], TYOP [0, 218, 35], TYOP [0, 71, 219], TYOP [28, 2],
   TYOP [0, 221, 4], TYOP [0, 7, 7], TYOP [0, 7, 223], TYOP [0, 7, 224],
   TYOP [0, 0, 225], TYOP [0, 0, 180], TYOP [0, 0, 227], TYOP [0, 57, 5],
   TYOP [0, 11, 157], TYOP [0, 14, 230], TYOP [0, 7, 144],
   TYOP [0, 232, 0], TYOP [0, 0, 233], TYOP [0, 43, 234], TYOP [0, 6, 47],
   TYOP [0, 236, 0], TYOP [0, 0, 237], TYOP [0, 42, 238],
   TYOP [0, 14, 145], TYOP [0, 53, 4], TYOP [0, 187, 187],
   TYOP [0, 50, 242], TYOP [0, 13, 0], TYOP [0, 0, 244], TYOP [0, 32, 245],
   TYOP [0, 10, 0], TYOP [0, 0, 247], TYOP [0, 31, 248], TYOP [0, 14, 153],
   TYOP [0, 57, 0], TYOP [0, 54, 251], TYOP [0, 44, 0], TYOP [0, 29, 253],
   TYOP [0, 254, 0], TYOP [0, 45, 255], TYOP [0, 33, 0], TYOP [0, 29, 257],
   TYOP [0, 258, 0], TYOP [0, 34, 259], TYOP [0, 48, 0], TYOP [0, 44, 261],
   TYOP [0, 37, 0], TYOP [0, 33, 263], TYOP [0, 73, 19], TYOP [0, 14, 265],
   TYOP [0, 171, 5]]
  end
  val _ = Theory.incorporate_consts "comparison" tyvector
     [("string_cmp", 4), ("resp_equiv2", 15), ("resp_equiv", 20),
      ("pair_cmp", 30), ("option_cmp_tupled", 35),
      ("option_cmp2_tupled", 35), ("option_cmp2", 38), ("option_cmp", 38),
      ("num_cmp", 41), ("list_cmp_tupled", 46), ("list_cmp", 49),
      ("invert", 50), ("good_cmp", 51), ("equiv_inj", 15),
      ("char_cmp", 53), ("bool_cmp_tupled", 55), ("bool_cmp", 57)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 59), TMV("P", 62), TMV("P", 65), TMV("R", 14), TMV("R", 67),
   TMV("R", 69), TMV("R", 71), TMV("V", 11), TMV("a", 7), TMV("a", 0),
   TMV("a", 54), TMV("a", 45), TMV("a", 34), TMV("b", 16),
   TMV("bool_cmp_tupled", 55), TMV("c", 6), TMV("c", 14), TMV("c1", 1),
   TMV("c2", 1), TMV("cmp", 14), TMV("cmp", 29), TMV("cmp'", 29),
   TMV("cmp1", 14), TMV("cmp1", 29), TMV("cmp1'", 29), TMV("cmp2", 11),
   TMV("cmp2", 27), TMV("cmp2", 73), TMV("cmp2'", 27), TMV("d", 21),
   TMV("f", 8), TMV("f", 18), TMV("k", 7), TMV("k'", 7), TMV("k1", 7),
   TMV("k2", 7), TMV("l1", 43), TMV("l1'", 43), TMV("l2", 42),
   TMV("l2'", 42), TMV("list_cmp_tupled", 46), TMV("n1", 39),
   TMV("n2", 39), TMV("option_cmp2_tupled", 35),
   TMV("option_cmp_tupled", 35), TMV("v", 6), TMV("v", 5), TMV("v", 29),
   TMV("v'", 6), TMV("v0", 7), TMV("v1", 7), TMV("v1", 5), TMV("v1", 43),
   TMV("v1", 32), TMV("v1", 24), TMV("v1", 44), TMV("v1", 33),
   TMV("v1'", 32), TMV("v1'", 24), TMV("v2", 7), TMV("v2", 43),
   TMV("v2", 42), TMV("v2", 32), TMV("v2", 31), TMV("v2", 22),
   TMV("v2'", 31), TMV("v2'", 22), TMV("v3", 42), TMV("v3", 31),
   TMV("x", 7), TMV("x", 6), TMV("x", 5), TMV("x", 1), TMV("x", 0),
   TMV("x", 29), TMV("x", 43), TMV("x", 2), TMV("x", 39), TMV("x", 32),
   TMV("x", 74), TMV("x", 24), TMV("x'", 7), TMV("x'", 6), TMV("x1", 7),
   TMV("x1", 5), TMV("x1", 43), TMV("x1", 32), TMV("x2", 6), TMV("x2", 42),
   TMV("x2", 31), TMV("y", 7), TMV("y", 6), TMV("y", 5), TMV("y", 1),
   TMV("y", 43), TMV("y", 42), TMV("y", 2), TMV("y", 39), TMV("y", 32),
   TMV("y", 74), TMV("y", 22), TMV("y'", 43), TMV("y1", 43), TMV("y2", 42),
   TMV("z", 7), TMC(8, 76), TMC(8, 78), TMC(8, 80), TMC(8, 82), TMC(8, 83),
   TMC(8, 85), TMC(8, 87), TMC(8, 88), TMC(8, 89), TMC(8, 90), TMC(8, 92),
   TMC(8, 94), TMC(8, 96), TMC(8, 98), TMC(8, 100), TMC(8, 102),
   TMC(8, 104), TMC(8, 106), TMC(8, 107), TMC(8, 109), TMC(8, 111),
   TMC(8, 113), TMC(8, 114), TMC(8, 116), TMC(8, 118), TMC(8, 120),
   TMC(9, 122), TMC(9, 124), TMC(9, 126), TMC(9, 128), TMC(9, 130),
   TMC(9, 132), TMC(9, 134), TMC(10, 59), TMC(11, 135), TMC(12, 136),
   TMC(12, 137), TMC(12, 138), TMC(12, 59), TMC(12, 139), TMC(12, 140),
   TMC(12, 141), TMC(12, 143), TMC(12, 147), TMC(12, 149), TMC(12, 151),
   TMC(12, 155), TMC(12, 159), TMC(12, 161), TMC(12, 163), TMC(12, 165),
   TMC(12, 166), TMC(12, 167), TMC(12, 168), TMC(12, 135), TMC(12, 169),
   TMC(12, 170), TMC(12, 171), TMC(12, 172), TMC(12, 173), TMC(13, 59),
   TMC(14, 175), TMC(14, 177), TMC(14, 179), TMC(15, 181), TMC(16, 183),
   TMC(16, 185), TMC(17, 188), TMC(18, 0), TMC(19, 5), TMC(20, 189),
   TMC(20, 190), TMC(21, 0), TMC(22, 50), TMC(23, 191), TMC(23, 192),
   TMC(24, 0), TMC(25, 194), TMC(26, 195), TMC(26, 196), TMC(27, 198),
   TMC(29, 43), TMC(29, 42), TMC(30, 32), TMC(30, 31), TMC(31, 199),
   TMC(32, 200), TMC(32, 201), TMC(33, 202), TMC(33, 203), TMC(34, 5),
   TMC(35, 204), TMC(36, 205), TMC(36, 206), TMC(37, 51), TMC(37, 93),
   TMC(38, 207), TMC(38, 208), TMC(38, 211), TMC(39, 174), TMC(39, 176),
   TMC(39, 178), TMC(40, 214), TMC(40, 217), TMC(40, 220), TMC(41, 59),
   TMC(42, 222), TMC(43, 57), TMC(44, 55), TMC(45, 53), TMC(46, 53),
   TMC(47, 226), TMC(47, 228), TMC(48, 15), TMC(49, 51), TMC(49, 93),
   TMC(49, 229), TMC(49, 142), TMC(49, 103), TMC(49, 146), TMC(49, 148),
   TMC(49, 150), TMC(49, 154), TMC(49, 158), TMC(50, 50), TMC(51, 231),
   TMC(52, 235), TMC(52, 239), TMC(53, 240), TMC(53, 49), TMC(53, 241),
   TMC(54, 46), TMC(55, 41), TMC(56, 41), TMC(57, 243), TMC(58, 246),
   TMC(58, 249), TMC(59, 250), TMC(59, 38), TMC(60, 250), TMC(60, 38),
   TMC(61, 35), TMC(62, 35), TMC(63, 252), TMC(63, 256), TMC(63, 260),
   TMC(63, 262), TMC(63, 264), TMC(64, 231), TMC(64, 30), TMC(65, 20),
   TMC(66, 15), TMC(66, 266), TMC(67, 4), TMC(68, 221), TMC(69, 267),
   TMC(70, 58)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op good_cmp_def x = x
    val op good_cmp_def =
    DT(((("comparison",3),[]),[]),
       [read"%113%19%143%219$0@@%138%105%69%145$1$0@$0@@%173@|@@%138%105%69%105%90%165%145$2$1@$0@@%173@@%145$2$0@$1@@%173@@|@|@@%138%105%69%105%90%143%145$2$1@$0@@%177@@%145$2$0@$1@@%181@@|@|@@%138%105%69%105%90%105%104%165%138%145$3$2@$1@@%173@@%145$3$1@$0@@%181@@@%145$3$2@$0@@%181@@|@|@|@@%138%105%69%105%90%105%104%165%138%145$3$2@$1@@%181@@%145$3$1@$0@@%173@@@%145$3$2@$0@@%181@@|@|@|@@%138%105%69%105%90%105%104%165%138%145$3$2@$1@@%173@@%145$3$1@$0@@%173@@@%145$3$2@$0@@%173@@|@|@|@@%105%69%105%90%105%104%165%138%145$3$2@$1@@%181@@%145$3$1@$0@@%181@@@%145$3$2@$0@@%181@@|@|@|@@@@@@@@|@"])
  fun op option_cmp_tupled_primitive_def x = x
    val op option_cmp_tupled_primitive_def =
    DT(((("comparison",6),[]),[]),
       [read"%155%247@%209%168%6%206$0@|@@%44%12%250$0@%20%56%252$0@%62%68%240$1@%241$0@%178%173@@%70%178%181@|@@%81%241$1@%178%177@@%91%178$5$1@$0@@|@|@||@||@||@@"])
  fun op option_cmp_curried_def x = x
    val op option_cmp_curried_def =
    DT(((("comparison",7),[]),[]),
       [read"%115%74%126%86%127%89%145%243$2@$1@$0@@%247%135$2@%137$1@$0@@@@|@|@|@"])
  fun op option_cmp2_tupled_primitive_def x = x
    val op option_cmp2_tupled_primitive_def =
    DT(((("comparison",10),[]),[]),
       [read"%155%246@%209%168%6%206$0@|@@%43%12%250$0@%20%56%252$0@%62%68%240$1@%241$0@%178%173@@%70%178%177@|@@%81%241$1@%178%181@@%91%178$5$1@$0@@|@|@||@||@||@@"])
  fun op option_cmp2_curried_def x = x
    val op option_cmp2_curried_def =
    DT(((("comparison",11),[]),[]),
       [read"%115%74%126%86%127%89%145%245$2@$1@$0@@%246%135$2@%137$1@$0@@@@|@|@|@"])
  fun op list_cmp_tupled_primitive_def x = x
    val op list_cmp_tupled_primitive_def =
    DT(((("comparison",14),[]),[]),
       [read"%154%236@%208%167%5%138%205$0@@%123%103%122%102%106%87%105%83%115%20%165%145$0$1@$2@@%173@@$5%134$0@%136$3@$4@@@%134$0@%136%170$1@$3@@%171$2@$4@@@@@|@|@|@|@|@@|@@%40%11%249$0@%20%55%251$0@%60%67%231$1@%232$0@%178%173@@%70%95%178%181@||@@%81%101%232$2@%178%177@@%87%103%178%217$7$3@$1@@%181@$9%134$7@%136$2@$0@@@@%177@@||@||@||@||@||@@"])
  fun op list_cmp_curried_def x = x
    val op list_cmp_curried_def =
    DT(((("comparison",15),[]),[]),
       [read"%115%74%122%85%123%88%145%234$2@$1@$0@@%236%134$2@%136$1@$0@@@@|@|@|@"])
  fun op pair_cmp_def x = x
    val op pair_cmp_def =
    DT(((("comparison",18),[]),[]),
       [read"%115%23%117%26%129%80%130%100%145%254$3@$2@$1@$0@@%217$3%175$1@@%176$0@@@%181@$2%191$1@@%192$0@@@%177@@|@|@|@|@"])
  fun op bool_cmp_tupled_primitive_def x = x
    val op bool_cmp_tupled_primitive_def =
    DT(((("comparison",19),[]),[]),
       [read"%153%213@%207%166%4%204$0@|@@%14%10%248$0@%46%51%169$1@%169$0@%178%173@@%178%177@@@%169$0@%178%181@@%178%173@@@||@||@@"])
  fun op bool_cmp_curried_def x = x
    val op bool_cmp_curried_def =
    DT(((("comparison",20),[]),[]),
       [read"%109%71%109%84%145%212$1@$0@@%213%133$1@$0@@@|@|@"])
  fun op num_cmp_def x = x
    val op num_cmp_def =
    DT(((("comparison",23),[]),[]),
       [read"%125%41%125%42%145%238$1@$0@@%169%159$1@$0@@%173@%169%139$1@$0@@%181@%177@@@|@|@"])
  fun op char_cmp_def x = x
    val op char_cmp_def =
    DT(((("comparison",24),[]),[]),
       [read"%110%17%110%18%145%215$1@$0@@%238%190$1@@%190$0@@@|@|@"])
  fun op string_cmp_def x = x
    val op string_cmp_def =
    DT(((("comparison",25),[]),[]), [read"%149%258@%235%215@@"])
  fun op invert_def x = x
    val op invert_def =
    DT(((("comparison",27),[("toto",[22])]),["DISK_THM"]),
       [read"%138%145%229%177@@%181@@%138%145%229%181@@%177@@%145%229%173@@%173@@@"])
  fun op resp_equiv_def x = x
    val op resp_equiv_def =
    DT(((("comparison",57),[]),[]),
       [read"%113%19%114%31%143%255$1@$0@@%105%34%105%35%106%45%165%145$4$2@$1@@%173@@%142$3$2@$0@@$3$1@$0@@@|@|@|@@|@|@"])
  fun op resp_equiv2_def x = x
    val op resp_equiv2_def =
    DT(((("comparison",58),[]),[]),
       [read"%113%19%116%25%112%30%143%256$2@$1@$0@@%105%34%105%35%165%145$4$1@$0@@%173@@%145$3$2$1@@$2$0@@@%173@@|@|@@|@|@|@"])
  fun op equiv_inj_def x = x
    val op equiv_inj_def =
    DT(((("comparison",59),[]),[]),
       [read"%113%19%116%25%112%30%143%218$2@$1@$0@@%105%34%105%35%165%145$3$2$1@@$2$0@@@%173@@%145$4$1@$0@@%173@@|@|@@|@|@|@"])
  fun op comparison_distinct x = x
    val op comparison_distinct =
    DT(((("comparison",0),[("toto",[19])]),["DISK_THM"]),
       [read"%138%261%145%181@%173@@@%138%261%145%181@%177@@@%261%145%173@%177@@@@"])
  fun op comparison_case_def x = x
    val op comparison_case_def =
    DT(((("comparison",1),[("toto",[17])]),["DISK_THM"]),
       [read"%138%105%49%105%50%105%59%140%216%181@$2@$1@$0@@$2@|@|@|@@%138%105%49%105%50%105%59%140%216%173@$2@$1@$0@@$1@|@|@|@@%105%49%105%50%105%59%140%216%177@$2@$1@$0@@$0@|@|@|@@@"])
  fun op comparison_nchotomy x = x
    val op comparison_nchotomy =
    DT(((("comparison",2),[("toto",[21])]),["DISK_THM"]),
       [read"%111%9%210%145$0@%181@@%210%145$0@%173@@%145$0@%177@@@|@"])
  fun op good_cmp_thm x = x
    val op good_cmp_thm =
    DT(((("comparison",4),
        [("bool",[25,26,53,54,55,63]),("comparison",[0,2,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%19%143%219$0@@%138%105%69%145$1$0@$0@@%173@|@@%105%69%105%90%105%104%138%143%145$3$2@$1@@%177@@%145$3$1@$2@@%181@@@%138%165%138%145$3$2@$1@@%181@@%145$3$1@$0@@%173@@@%145$3$2@$0@@%181@@@%165%138%145$3$2@$1@@%181@@%145$3$1@$0@@%181@@@%145$3$2@$0@@%181@@@@|@|@|@@@|@"])
  fun op cmp_thms x = x
    val op cmp_thms =
    DT(((("comparison",5),[("comparison",[0,1,2,3])]),["DISK_THM"]),
       [read"%138%138%261%145%181@%173@@@%138%261%145%181@%177@@@%261%145%173@%177@@@@@%138%138%105%49%105%50%105%59%140%216%181@$2@$1@$0@@$2@|@|@|@@%138%105%49%105%50%105%59%140%216%173@$2@$1@$0@@$1@|@|@|@@%105%49%105%50%105%59%140%216%177@$2@$1@$0@@$0@|@|@|@@@@%138%111%9%210%145$0@%181@@%210%145$0@%173@@%145$0@%177@@@|@@%113%19%143%219$0@@%138%105%69%145$1$0@$0@@%173@|@@%138%105%69%105%90%165%145$2$1@$0@@%173@@%145$2$0@$1@@%173@@|@|@@%138%105%69%105%90%143%145$2$1@$0@@%177@@%145$2$0@$1@@%181@@|@|@@%138%105%69%105%90%105%104%165%138%145$3$2@$1@@%173@@%145$3$1@$0@@%181@@@%145$3$2@$0@@%181@@|@|@|@@%138%105%69%105%90%105%104%165%138%145$3$2@$1@@%181@@%145$3$1@$0@@%173@@@%145$3$2@$0@@%181@@|@|@|@@%138%105%69%105%90%105%104%165%138%145$3$2@$1@@%173@@%145$3$1@$0@@%173@@@%145$3$2@$0@@%173@@|@|@|@@%105%69%105%90%105%104%165%138%145$3$2@$1@@%181@@%145$3$1@$0@@%181@@@%145$3$2@$0@@%181@@|@|@|@@@@@@@@|@@@@"])
  fun op option_cmp_ind x = x
    val op option_cmp_ind =
    DT(((("comparison",8),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80]),("option",[6]),
         ("pair",[5,16]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%120%2%165%138%115%20$1$0@%188@%189@|@@%138%115%20%106%70$2$1@%188@%194$0@@|@|@@%138%115%20%105%69$2$1@%193$0@@%189@|@|@@%115%20%105%69%106%91$3$2@%193$1@@%194$0@@|@|@|@@@@@%115%47%126%53%127%63$3$2@$1@$0@|@|@|@@|@"])
  fun op option_cmp_def x = x
    val op option_cmp_def =
    DT(((("comparison",9),
        [("bool",[15,58]),("combin",[19]),("comparison",[6,7]),
         ("option",[7]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%138%145%243%20@%188@%189@@%173@@%138%145%243%20@%188@%194%82@@@%181@@%138%145%243%20@%193%69@@%189@@%177@@%145%243%20@%193%69@@%194%91@@@%20%69@%91@@@@@"])
  fun op option_cmp2_ind x = x
    val op option_cmp2_ind =
    DT(((("comparison",12),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80]),("option",[6]),
         ("pair",[5,16]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%120%2%165%138%115%20$1$0@%188@%189@|@@%138%115%20%106%70$2$1@%188@%194$0@@|@|@@%138%115%20%105%69$2$1@%193$0@@%189@|@|@@%115%20%105%69%106%91$3$2@%193$1@@%194$0@@|@|@|@@@@@%115%47%126%53%127%63$3$2@$1@$0@|@|@|@@|@"])
  fun op option_cmp2_def x = x
    val op option_cmp2_def =
    DT(((("comparison",13),
        [("bool",[15,58]),("combin",[19]),("comparison",[10,11]),
         ("option",[7]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%138%145%245%20@%188@%189@@%173@@%138%145%245%20@%188@%194%82@@@%177@@%138%145%245%20@%193%69@@%189@@%181@@%145%245%20@%193%69@@%194%91@@@%20%69@%91@@@@@"])
  fun op list_cmp_ind x = x
    val op list_cmp_ind =
    DT(((("comparison",16),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [25,26,36,47,48,52,53,54,58,63,72,76,77,78,80,93,96,104,105,107,
          124]),("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%119%1%165%138%115%20$1$0@%186@%187@|@@%138%115%20%106%70%123%95$3$2@%186@%171$1@$0@@|@|@|@@%138%115%20%105%69%122%94$3$2@%170$1@$0@@%187@|@|@|@@%115%20%105%83%122%102%106%87%123%103%165%165%145$4$3@$1@@%173@@$5$4@$2@$0@@@$5$4@%170$3@$2@@%171$1@$0@@@|@|@|@|@|@@@@@%115%47%122%52%123%61$3$2@$1@$0@|@|@|@@|@"])
  fun op list_cmp_def x = x
    val op list_cmp_def =
    DT(((("comparison",17),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("combin",[19]),("comparison",[14,15]),("list",[6,7]),
         ("numeral",[3,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[20])]),["DISK_THM"]),
       [read"%138%115%20%145%234$0@%186@%187@@%173@|@@%138%123%95%106%70%115%20%145%234$0@%186@%171$1@$2@@@%181@|@|@|@@%138%122%94%105%69%115%20%145%234$0@%170$1@$2@@%187@@%177@|@|@|@@%123%103%122%102%106%87%105%83%115%20%145%234$0@%170$1@$3@@%171$2@$4@@@%217$0$1@$2@@%181@%234$0@$3@$4@@%177@@|@|@|@|@|@@@@"])
  fun op bool_cmp_ind x = x
    val op bool_cmp_ind =
    DT(((("comparison",21),
        [("bool",[13,25,26,47,48,53,54,63]),("pair",[5,16]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%118%0%165%138$0%195@%195@@%138$0%174@%174@@%138$0%195@%174@@$0%174@%195@@@@@%109%46%109%51$2$1@$0@|@|@@|@"])
  fun op bool_cmp_def x = x
    val op bool_cmp_def =
    DT(((("comparison",22),
        [("bool",[15,58,147]),("combin",[19]),("comparison",[19,20]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%138%145%212%195@%195@@%173@@%138%145%212%174@%174@@%173@@%138%145%212%195@%174@@%177@@%145%212%174@%195@@%181@@@@"])
  fun op TotOrder_imp_good_cmp x = x
    val op TotOrder_imp_good_cmp =
    DT(((("comparison",26),
        [("bool",[25,27,36,48,51,53,54,55,56,58,63,105,124]),
         ("comparison",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[24])]),["DISK_THM"]),
       [read"%113%19%165%199$0@@%219$0@@|@"])
  fun op invert_eq_EQUAL x = x
    val op invert_eq_EQUAL =
    DT(((("comparison",28),
        [("bool",[25,26,27,54,56,58,63]),("comparison",[27]),
         ("toto",[19,21])]),["DISK_THM"]),
       [read"%111%73%143%145%229$0@@%173@@%145$0@%173@@|@"])
  fun op TO_inv_invert x = x
    val op TO_inv_invert =
    DT(((("comparison",29),
        [("bool",[25,53,54,55,56,58,60,63,105,124]),("combin",[8]),
         ("comparison",[27]),("pair",[12,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[21,24,77])]),["DISK_THM"]),
       [read"%113%16%165%199$0@@%146%197$0@@%172%239%229@%201$0@@@@@|@"])
  fun op option_cmp2_TO_inv x = x
    val op option_cmp2_TO_inv =
    DT(((("comparison",30),
        [("bool",[15,25,56,58,60]),("combin",[19]),
         ("comparison",[6,7,10,11]),("option",[6,7]),("pair",[49]),
         ("relation",[107,126]),("toto",[77])]),["DISK_THM"]),
       [read"%113%16%151%244$0@@%198%242%197$0@@@@|@"])
  fun op list_cmp_ListOrd x = x
    val op list_cmp_ListOrd =
    DT(((("comparison",31),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,60,63,64,73,74,75,84,93,
          96,99,100,104,105,107,124,129,147,179]),("combin",[19]),
         ("comparison",[5,14,15,16]),("list",[6,7,48,49]),
         ("numeral",[3,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,20,21,24,25,34,64,145,147])]),["DISK_THM"]),
       [read"%113%16%165%199$0@@%148%233$0@@%185%196$0@@@@|@"])
  fun op pair_cmp_lexTO x = x
    val op pair_cmp_lexTO =
    DT(((("comparison",32),
        [("bool",[25,36,51,53,56,58,60,63,105,124]),("comparison",[18]),
         ("toto",[96])]),["DISK_THM"]),
       [read"%113%3%116%7%165%138%199$1@@%200$0@@@%152%253$1@$0@@%230$1@$0@@@|@|@"])
  fun op num_cmp_numOrd x = x
    val op num_cmp_numOrd =
    DT(((("comparison",33),
        [("bool",[25,36,56,60]),("comparison",[23]),
         ("toto",[25,102])]),["DISK_THM"]), [read"%150%238@%237@"])
  fun op char_cmp_charOrd x = x
    val op char_cmp_charOrd =
    DT(((("comparison",34),
        [("bool",[25,36,56,60]),("comparison",[24,33]),
         ("toto",[134])]),["DISK_THM"]), [read"%147%215@%214@"])
  fun op string_cmp_stringto x = x
    val op string_cmp_stringto =
    DT(((("comparison",35),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[14,15,25,36,52,53,54,56,58,60,63,93,96,104,105,107,124]),
         ("combin",[19]),("comparison",[14,15,25,31,34]),
         ("list",[6,7,43,46]),("numeral",[3,7,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",
         [17,20,21,39,135,136,137,148,150,151,152])]),["DISK_THM"]),
       [read"%149%258@%211%259@@"])
  fun op option_cmp_good x = x
    val op option_cmp_good =
    DT(((("comparison",36),
        [("bool",[15,25,26,27,48,53,54,55,58,63,105,124]),("combin",[19]),
         ("comparison",[0,3,6,7]),("option",[6,7]),("pair",[49]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%19%165%219$0@@%227%242$0@@@|@"])
  fun op option_cmp2_good x = x
    val op option_cmp2_good =
    DT(((("comparison",37),
        [("bool",[15,25,26,27,48,53,54,55,58,63,105,124]),("combin",[19]),
         ("comparison",[0,3,10,11]),("option",[6,7]),("pair",[49]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%19%165%219$0@@%227%244$0@@@|@"])
  fun op list_cmp_good x = x
    val op list_cmp_good =
    DT(((("comparison",38),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,36,51,52,53,54,55,56,58,63,73,93,96,104,105,107,
          124]),("combin",[19]),("comparison",[0,1,3,14,15]),
         ("list",[6,7,43,46]),("numeral",[3,7,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,20,21])]),["DISK_THM"]),
       [read"%113%19%165%219$0@@%224%233$0@@@|@"])
  fun op pair_cmp_good x = x
    val op pair_cmp_good =
    DT(((("comparison",39),
        [("bool",[25,26,27,53,54,55,56,58,63,73,105,124]),
         ("comparison",[0,1,2,3,18]),("pair",[5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,21])]),["DISK_THM"]),
       [read"%113%22%116%25%165%138%219$1@@%220$0@@@%228%253$1@$0@@@|@|@"])
  fun op bool_cmp_good x = x
    val op bool_cmp_good =
    DT(((("comparison",40),
        [("bool",[13,15,25,26,27,51,53,54,56,58,63,105,124,147]),
         ("combin",[19]),("comparison",[3,19,20]),("pair",[49]),
         ("relation",[107,126]),("toto",[19])]),["DISK_THM"]),
       [read"%221%212@"])
  fun op num_cmp_good x = x
    val op num_cmp_good =
    DT(((("comparison",41),
        [("arithmetic",[24,25,27,28,30,37,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,124,
          129,147]),("comparison",[3,23]),("num",[7]),("numeral",[3,5,8]),
         ("prim_rec",[1,4,6,7]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[19])]),["DISK_THM"]), [read"%226%238@"])
  fun op char_cmp_good x = x
    val op char_cmp_good =
    DT(((("comparison",42),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124]),("comparison",[3,23,24]),("numeral",[3,5,8]),
         ("prim_rec",[4]),("sat",[1,3,5,6,7,11,12,13,15]),("string",[12]),
         ("toto",[19])]),["DISK_THM"]), [read"%222%215@"])
  fun op string_cmp_good x = x
    val op string_cmp_good =
    DT(((("comparison",43),
        [("bool",[25,53,54,63]),("comparison",[25,38,42]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%225%258@"])
  fun op list_cmp_cong x = x
    val op list_cmp_cong =
    DT(((("comparison",44),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [15,25,26,36,51,52,53,54,56,58,63,93,96,101,104,105,107,124,145]),
         ("combin",[19]),("comparison",[14,15,16]),("list",[6,7,120]),
         ("numeral",[3,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[17,20,21])]),["DISK_THM"]),
       [read"%115%20%122%36%123%38%115%21%122%37%123%39%165%138%156$4@$1@@%138%157$3@$0@@%105%69%106%82%165%138%179$1@%183$3@@@%180$0@%184$2@@@@%145$7$1@$0@@$4$1@$0@@@|@|@@@@%145%234$5@$4@$3@@%234$2@$1@$0@@@|@|@|@|@|@|@"])
  fun op option_cmp_cong x = x
    val op option_cmp_cong =
    DT(((("comparison",45),
        [("bool",[15,25,51,56,58,63,93,95,101,105,124,145]),
         ("combin",[19]),("comparison",[6,7,8]),("option",[7,10]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%115%20%126%53%127%63%115%21%126%57%127%65%165%138%160$4@$1@@%138%161$3@$0@@%105%69%106%82%165%138%160$3@%193$1@@@%161$2@%194$0@@@@%145$7$1@$0@@$4$1@$0@@@|@|@@@@%145%243$5@$4@$3@@%243$2@$1@$0@@@|@|@|@|@|@|@"])
  fun op option_cmp2_cong x = x
    val op option_cmp2_cong =
    DT(((("comparison",46),
        [("bool",[15,25,51,56,58,63,93,95,101,105,124,145]),
         ("combin",[19]),("comparison",[10,11,12]),("option",[7,10]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%115%20%126%53%127%63%115%21%126%57%127%65%165%138%160$4@$1@@%138%161$3@$0@@%105%69%106%82%165%138%160$3@%193$1@@@%161$2@%194$0@@@@%145$7$1@$0@@$4$1@$0@@@|@|@@@@%145%245$5@$4@$3@@%245$2@$1@$0@@@|@|@|@|@|@|@"])
  fun op pair_cmp_cong x = x
    val op pair_cmp_cong =
    DT(((("comparison",47),
        [("bool",[25,26,27,56,58,63,93,95,101,105,124,145]),
         ("comparison",[18]),("pair",[4,5,8,9]),
         ("toto",[17,19,21])]),["DISK_THM"]),
       [read"%115%23%117%26%129%54%130%64%115%24%117%28%129%58%130%66%165%138%163$5@$1@@%138%164$4@$0@@%138%105%8%107%13%106%15%108%29%165%138%163$5@%131$3@$2@@@%164$4@%132$1@$0@@@@%145$11$3@$1@@$7$3@$1@@@|@|@|@|@@%105%8%107%13%106%15%108%29%165%138%163$5@%131$3@$2@@@%164$4@%132$1@$0@@@@%145$10$2@$0@@$6$2@$0@@@|@|@|@|@@@@@%145%254$7@$6@$5@$4@@%254$3@$2@$1@$0@@@|@|@|@|@|@|@|@|@"])
  fun op good_cmp_trans x = x
    val op good_cmp_trans =
    DT(((("comparison",48),
        [("bool",[2,15,25,26,53,54,55,58,63,73,74,75,84,99,100,105,124]),
         ("comparison",[5]),("pair",[5,16]),("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%19%165%219$0@@%260%203%32%45%202%33%48%145$4$3@$1@@%181@||@||@@@|@"])
  fun op bool_cmp_antisym x = x
    val op bool_cmp_antisym =
    DT(((("comparison",49),
        [("bool",[13,15,25,26,27,54,56,58,62,63,147]),("combin",[19]),
         ("comparison",[19,20]),("pair",[49]),("relation",[107,126]),
         ("toto",[19])]),["DISK_THM"]),
       [read"%109%71%109%92%143%145%212$1@$0@@%173@@%143$1@$0@@|@|@"])
  fun op num_cmp_antisym x = x
    val op num_cmp_antisym =
    DT(((("comparison",50),
        [("bool",[25,26,27,30,54,56,58,63,64]),("comparison",[23]),
         ("toto",[19])]),["DISK_THM"]),
       [read"%125%77%125%97%143%145%238$1@$0@@%173@@%159$1@$0@@|@|@"])
  fun op char_cmp_antisym x = x
    val op char_cmp_antisym =
    DT(((("comparison",51),
        [("bool",[25,56]),("comparison",[24,50]),
         ("string",[2])]),["DISK_THM"]),
       [read"%110%72%110%93%143%145%215$1@$0@@%173@@%144$1@$0@@|@|@"])
  fun op list_cmp_antisym x = x
    val op list_cmp_antisym =
    DT(((("comparison",52),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [15,25,26,27,36,48,52,53,54,55,56,58,63,93,96,104,105,107,124]),
         ("combin",[19]),("comparison",[0,14,15,16]),("list",[6,7,48,49]),
         ("numeral",[3,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,20,21])]),["DISK_THM"]),
       [read"%113%19%122%75%122%94%165%105%69%105%90%143%145$4$1@$0@@%173@@%140$1@$0@@|@|@@%143%145%233$2@$1@$0@@%173@@%156$1@$0@@@|@|@|@"])
  fun op string_cmp_antisym x = x
    val op string_cmp_antisym =
    DT(((("comparison",53),
        [("bool",[2,15,25,26,30,53,54,55,63,99,100]),
         ("comparison",[25,51,52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%124%76%124%96%143%145%258$1@$0@@%173@@%158$1@$0@@|@|@"])
  fun op pair_cmp_antisym x = x
    val op pair_cmp_antisym =
    DT(((("comparison",54),
        [("bool",[25,26,27,48,53,54,55,58,63,96,105,124]),
         ("comparison",[0,18]),("pair",[4,5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,21])]),["DISK_THM"]),
       [read"%113%22%116%25%128%79%128%99%165%138%105%69%105%90%143%145$5$1@$0@@%173@@%140$1@$0@@|@|@@%106%70%106%91%143%145$4$1@$0@@%173@@%141$1@$0@@|@|@@@%143%145%253$3@$2@$1@$0@@%173@@%162$1@$0@@@|@|@|@|@"])
  fun op option_cmp_antisym x = x
    val op option_cmp_antisym =
    DT(((("comparison",55),
        [("bool",[15,25,26,27,53,54,56,58,63,105,124]),("combin",[19]),
         ("comparison",[6,7]),("option",[6,7,10,11]),("pair",[49]),
         ("relation",[107,126]),("toto",[19])]),["DISK_THM"]),
       [read"%113%19%126%78%126%98%165%105%69%105%90%143%145$4$1@$0@@%173@@%140$1@$0@@|@|@@%143%145%242$2@$1@$0@@%173@@%160$1@$0@@@|@|@|@"])
  fun op option_cmp2_antisym x = x
    val op option_cmp2_antisym =
    DT(((("comparison",56),
        [("bool",[15,25,26,27,53,54,56,58,63,105,124]),("combin",[19]),
         ("comparison",[10,11]),("option",[6,7,10,11]),("pair",[49]),
         ("relation",[107,126]),("toto",[19])]),["DISK_THM"]),
       [read"%113%19%126%78%126%98%165%105%69%105%90%143%145$4$1@$0@@%173@@%140$1@$0@@|@|@@%143%145%244$2@$1@$0@@%173@@%160$1@$0@@@|@|@|@"])
  fun op antisym_resp_equiv x = x
    val op antisym_resp_equiv =
    DT(((("comparison",60),
        [("bool",[2,15,25,26,53,54,55,58,63,73,74,75,84,99,100,105,124]),
         ("comparison",[5,57,58]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%19%114%31%165%105%69%105%90%165%145$3$1@$0@@%173@@%140$1@$0@@|@|@@%138%255$1@$0@@%121%27%165%223$0@@%257$2@$0@$1@@|@@@|@|@"])
  fun op list_cmp_equal_list_rel x = x
    val op list_cmp_equal_list_rel =
    DT(((("comparison",61),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,36,37,51,52,53,54,56,58,63,93,96,104,105,107,124,
          143]),("combin",[19]),("comparison",[14,15]),
         ("list",[6,7,43,46,48,49,390]),("numeral",[3,7,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[17,19,20,21])]),["DISK_THM"]),
       [read"%115%20%122%36%123%38%143%145%234$2@$1@$0@@%173@@%182%69%91%145$4$1@$0@@%173@||@$1@$0@@|@|@|@"])
  end
  val _ = DB.bindl "comparison"
  [("good_cmp_def",good_cmp_def,DB.Def),
   ("option_cmp_tupled_primitive_def",
    option_cmp_tupled_primitive_def,
    DB.Def), ("option_cmp_curried_def",option_cmp_curried_def,DB.Def),
   ("option_cmp2_tupled_primitive_def",
    option_cmp2_tupled_primitive_def,
    DB.Def), ("option_cmp2_curried_def",option_cmp2_curried_def,DB.Def),
   ("list_cmp_tupled_primitive_def",list_cmp_tupled_primitive_def,DB.Def),
   ("list_cmp_curried_def",list_cmp_curried_def,DB.Def),
   ("pair_cmp_def",pair_cmp_def,DB.Def),
   ("bool_cmp_tupled_primitive_def",bool_cmp_tupled_primitive_def,DB.Def),
   ("bool_cmp_curried_def",bool_cmp_curried_def,DB.Def),
   ("num_cmp_def",num_cmp_def,DB.Def),
   ("char_cmp_def",char_cmp_def,DB.Def),
   ("string_cmp_def",string_cmp_def,DB.Def),
   ("invert_def",invert_def,DB.Def),
   ("resp_equiv_def",resp_equiv_def,DB.Def),
   ("resp_equiv2_def",resp_equiv2_def,DB.Def),
   ("equiv_inj_def",equiv_inj_def,DB.Def),
   ("comparison_distinct",comparison_distinct,DB.Thm),
   ("comparison_case_def",comparison_case_def,DB.Thm),
   ("comparison_nchotomy",comparison_nchotomy,DB.Thm),
   ("good_cmp_thm",good_cmp_thm,DB.Thm), ("cmp_thms",cmp_thms,DB.Thm),
   ("option_cmp_ind",option_cmp_ind,DB.Thm),
   ("option_cmp_def",option_cmp_def,DB.Thm),
   ("option_cmp2_ind",option_cmp2_ind,DB.Thm),
   ("option_cmp2_def",option_cmp2_def,DB.Thm),
   ("list_cmp_ind",list_cmp_ind,DB.Thm),
   ("list_cmp_def",list_cmp_def,DB.Thm),
   ("bool_cmp_ind",bool_cmp_ind,DB.Thm),
   ("bool_cmp_def",bool_cmp_def,DB.Thm),
   ("TotOrder_imp_good_cmp",TotOrder_imp_good_cmp,DB.Thm),
   ("invert_eq_EQUAL",invert_eq_EQUAL,DB.Thm),
   ("TO_inv_invert",TO_inv_invert,DB.Thm),
   ("option_cmp2_TO_inv",option_cmp2_TO_inv,DB.Thm),
   ("list_cmp_ListOrd",list_cmp_ListOrd,DB.Thm),
   ("pair_cmp_lexTO",pair_cmp_lexTO,DB.Thm),
   ("num_cmp_numOrd",num_cmp_numOrd,DB.Thm),
   ("char_cmp_charOrd",char_cmp_charOrd,DB.Thm),
   ("string_cmp_stringto",string_cmp_stringto,DB.Thm),
   ("option_cmp_good",option_cmp_good,DB.Thm),
   ("option_cmp2_good",option_cmp2_good,DB.Thm),
   ("list_cmp_good",list_cmp_good,DB.Thm),
   ("pair_cmp_good",pair_cmp_good,DB.Thm),
   ("bool_cmp_good",bool_cmp_good,DB.Thm),
   ("num_cmp_good",num_cmp_good,DB.Thm),
   ("char_cmp_good",char_cmp_good,DB.Thm),
   ("string_cmp_good",string_cmp_good,DB.Thm),
   ("list_cmp_cong",list_cmp_cong,DB.Thm),
   ("option_cmp_cong",option_cmp_cong,DB.Thm),
   ("option_cmp2_cong",option_cmp2_cong,DB.Thm),
   ("pair_cmp_cong",pair_cmp_cong,DB.Thm),
   ("good_cmp_trans",good_cmp_trans,DB.Thm),
   ("bool_cmp_antisym",bool_cmp_antisym,DB.Thm),
   ("num_cmp_antisym",num_cmp_antisym,DB.Thm),
   ("char_cmp_antisym",char_cmp_antisym,DB.Thm),
   ("list_cmp_antisym",list_cmp_antisym,DB.Thm),
   ("string_cmp_antisym",string_cmp_antisym,DB.Thm),
   ("pair_cmp_antisym",pair_cmp_antisym,DB.Thm),
   ("option_cmp_antisym",option_cmp_antisym,DB.Thm),
   ("option_cmp2_antisym",option_cmp2_antisym,DB.Thm),
   ("antisym_resp_equiv",antisym_resp_equiv,DB.Thm),
   ("list_cmp_equal_list_rel",list_cmp_equal_list_rel,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("totoTheory.toto_grammars",
                          totoTheory.toto_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Less", (Term.prim_mk_const { Name = "LESS", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Equal", (Term.prim_mk_const { Name = "EQUAL", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Greater", (Term.prim_mk_const { Name = "GREATER", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("good_cmp", (Term.prim_mk_const { Name = "good_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("good_cmp", (Term.prim_mk_const { Name = "good_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp_tupled", (Term.prim_mk_const { Name = "option_cmp_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp_tupled", (Term.prim_mk_const { Name = "option_cmp_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp", (Term.prim_mk_const { Name = "option_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp", (Term.prim_mk_const { Name = "option_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp2_tupled", (Term.prim_mk_const { Name = "option_cmp2_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp2_tupled", (Term.prim_mk_const { Name = "option_cmp2_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp2", (Term.prim_mk_const { Name = "option_cmp2", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_cmp2", (Term.prim_mk_const { Name = "option_cmp2", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_cmp_tupled", (Term.prim_mk_const { Name = "list_cmp_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_cmp_tupled", (Term.prim_mk_const { Name = "list_cmp_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_cmp", (Term.prim_mk_const { Name = "list_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_cmp", (Term.prim_mk_const { Name = "list_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_cmp", (Term.prim_mk_const { Name = "pair_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_cmp", (Term.prim_mk_const { Name = "pair_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_cmp_tupled", (Term.prim_mk_const { Name = "bool_cmp_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_cmp_tupled", (Term.prim_mk_const { Name = "bool_cmp_tupled", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_cmp", (Term.prim_mk_const { Name = "bool_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_cmp", (Term.prim_mk_const { Name = "bool_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_cmp", (Term.prim_mk_const { Name = "num_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_cmp", (Term.prim_mk_const { Name = "num_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_cmp", (Term.prim_mk_const { Name = "char_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_cmp", (Term.prim_mk_const { Name = "char_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_cmp", (Term.prim_mk_const { Name = "string_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_cmp", (Term.prim_mk_const { Name = "string_cmp", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invert", (Term.prim_mk_const { Name = "invert", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("resp_equiv", (Term.prim_mk_const { Name = "resp_equiv", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("resp_equiv", (Term.prim_mk_const { Name = "resp_equiv", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("resp_equiv2", (Term.prim_mk_const { Name = "resp_equiv2", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("resp_equiv2", (Term.prim_mk_const { Name = "resp_equiv2", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("equiv_inj", (Term.prim_mk_const { Name = "equiv_inj", Thy = "comparison"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("equiv_inj", (Term.prim_mk_const { Name = "equiv_inj", Thy = "comparison"}))
  val comparison_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "comparison",
    thydataty = "simp",
    data =
        "comparison.invert_def comparison.invert_eq_EQUAL comparison.string_cmp_antisym comparison.char_cmp_antisym comparison.num_cmp_antisym comparison.bool_cmp_antisym comparison.string_cmp_good comparison.char_cmp_good comparison.num_cmp_good comparison.bool_cmp_good"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "comparison",
    thydataty = "defncong",
    data =
        "comparison.list_cmp_cong comparison.option_cmp2_cong comparison.pair_cmp_cong comparison.option_cmp_cong"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "comparison",
    thydataty = "compute",
    data =
        "comparison.good_cmp_def comparison.invert_def comparison.equiv_inj_def comparison.resp_equiv2_def comparison.resp_equiv_def comparison.list_cmp_def comparison.string_cmp_def comparison.char_cmp_def comparison.num_cmp_def comparison.bool_cmp_def comparison.pair_cmp_def comparison.option_cmp2_def comparison.option_cmp_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "comparison"
end
