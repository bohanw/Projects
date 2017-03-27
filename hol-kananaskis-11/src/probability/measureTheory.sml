structure measureTheory :> measureTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading measureTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open extrealTheory
  in end;
  val _ = Theory.link_parents
          ("measure",
          Arbnum.fromString "1488589932",
          Arbnum.fromString "8408")
          [("extreal",
           Arbnum.fromString "1488589771",
           Arbnum.fromString "733391")];
  val _ = Theory.incorporate_types "measure" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("realax", "real"), ID("num", "num"), ID("extreal", "extreal"),
   ID("bool", "!"), ID("pair", ","), ID("seq", "-->"), ID("bool", "/\\"),
   ID("num", "0"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("pred_set", "BIGINTER"), ID("pred_set", "BIGUNION"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("measure", "Borel"), ID("bool", "COND"), ID("pred_set", "CROSS"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"),
   ID("pred_set", "EMPTY"), ID("extreal", "EXTREAL_SUM_IMAGE"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("util_prob", "FUNSET"),
   ID("pred_set", "GSPEC"), ID("combin", "I"), ID("pred_set", "IMAGE"),
   ID("bool", "IN"), ID("pred_set", "INSERT"), ID("pred_set", "INTER"),
   ID("arithmetic", "NUMERAL"), ID("extreal", "NegInf"),
   ID("extreal", "Normal"), ID("pred_set", "POW"),
   ID("util_prob", "PREIMAGE"), ID("extreal", "PosInf"),
   ID("extreal", "Q_set"), ID("real_sigma", "REAL_SUM_IMAGE"),
   ID("pair", "SND"), ID("pred_set", "SUBSET"), ID("num", "SUC"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"),
   ID("arithmetic", "ZERO"), ID("measure", "additive"),
   ID("measure", "algebra"), ID("measure", "closed_cdi"),
   ID("pred_set", "count"), ID("util_prob", "countable"),
   ID("measure", "countably_additive"),
   ID("measure", "countably_subadditive"), ID("extreal", "ext_suminf"),
   ID("extreal", "extreal_abs"), ID("extreal", "extreal_add"),
   ID("extreal", "extreal_ainv"), ID("extreal", "extreal_le"),
   ID("extreal", "extreal_lt"), ID("extreal", "extreal_max"),
   ID("extreal", "extreal_mul"), ID("extreal", "extreal_of_num"),
   ID("extreal", "extreal_pow"), ID("extreal", "extreal_sub"),
   ID("extreal", "extreal_sup"), ID("measure", "fn_abs"),
   ID("measure", "fn_minus"), ID("measure", "fn_plus"),
   ID("measure", "increasing"), ID("measure", "indicator_fn"),
   ID("real", "inf"), ID("measure", "inf_measure"),
   ID("measure", "lambda_system"), ID("measure", "m_space"),
   ID("measure", "measurable"), ID("measure", "measurable_sets"),
   ID("measure", "measure"), ID("measure", "measure_preserving"),
   ID("measure", "measure_space"), ID("measure", "null_set"),
   ID("combin", "o"), ID("measure", "outer_measure_space"),
   ID("measure", "pos_simple_fn"), ID("measure", "positive"),
   ID("util_prob", "prod_sets"), ID("realax", "real_add"),
   ID("realax", "real_lt"), ID("real", "real_lte"),
   ID("realax", "real_mul"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("measure", "sigma"),
   ID("measure", "sigma_algebra"), ID("measure", "smallest_closed_cdi"),
   ID("measure", "space"), ID("measure", "subadditive"),
   ID("measure", "subset_class"), ID("measure", "subsets"),
   ID("real", "sum"), ID("seq", "suminf"), ID("seq", "summable"),
   ID("seq", "sums"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [2, 2, 3],
   TYOP [0, 4, 3], TYOP [0, 3, 0], TYOP [0, 2, 6], TYOP [3],
   TYOP [0, 2, 8], TYOP [2, 3, 9], TYOP [2, 2, 10], TYOP [0, 11, 0],
   TYOP [0, 4, 2], TYOP [0, 4, 4], TYOP [0, 4, 0], TYOP [0, 3, 4],
   TYOP [0, 2, 16], TYOP [4], TYOP [0, 18, 8], TYOP [0, 19, 0],
   TYOP [0, 18, 2], TYOP [0, 21, 20], TYOP [0, 18, 0], TYOP [0, 23, 22],
   TYOP [5], TYOP [0, 1, 25], TYOP [0, 26, 24], TYOP [0, 11, 27],
   TYOP [0, 11, 3], TYV "'b", TYOP [0, 1, 30], TYOP [0, 31, 0],
   TYOP [0, 30, 0], TYOP [0, 33, 8], TYOP [0, 33, 0], TYOP [2, 35, 34],
   TYOP [2, 33, 36], TYOP [0, 37, 32], TYOP [0, 11, 38], TYOP [0, 11, 9],
   TYOP [2, 33, 35], TYOP [0, 41, 32], TYOP [0, 4, 42], TYOP [0, 11, 2],
   TYOP [0, 9, 3], TYOP [0, 4, 45], TYOP [0, 2, 26], TYOP [0, 26, 26],
   TYOP [0, 25, 0], TYOP [0, 49, 0], TYOP [2, 49, 50], TYV "'c",
   TYOP [0, 52, 0], TYOP [0, 53, 0], TYOP [2, 53, 54], TYOP [2, 30, 52],
   TYOP [0, 1, 56], TYOP [0, 30, 26], TYOP [0, 25, 2], TYOP [0, 18, 26],
   TYOP [0, 30, 52], TYOP [0, 32, 0], TYOP [0, 26, 0], TYOP [0, 63, 0],
   TYOP [0, 57, 0], TYOP [0, 65, 0], TYOP [0, 61, 0], TYOP [0, 67, 0],
   TYOP [0, 35, 0], TYOP [0, 58, 0], TYOP [0, 70, 0], TYOP [0, 54, 0],
   TYOP [0, 59, 0], TYOP [0, 73, 0], TYOP [0, 6, 0], TYOP [0, 9, 0],
   TYOP [0, 76, 0], TYOP [0, 69, 0], TYOP [0, 23, 0], TYOP [0, 79, 0],
   TYOP [0, 21, 0], TYOP [0, 81, 0], TYOP [0, 60, 0], TYOP [0, 83, 0],
   TYOP [0, 20, 0], TYOP [0, 15, 0], TYOP [0, 12, 0], TYOP [0, 41, 0],
   TYOP [0, 88, 0], TYOP [0, 37, 0], TYOP [0, 90, 0], TYOP [0, 55, 0],
   TYOP [0, 92, 0], TYOP [0, 8, 0], TYOP [0, 94, 0], TYOP [2, 1, 0],
   TYOP [0, 0, 96], TYOP [0, 1, 97], TYOP [2, 25, 0], TYOP [0, 0, 99],
   TYOP [0, 25, 100], TYOP [2, 31, 0], TYOP [0, 0, 102], TYOP [0, 31, 103],
   TYOP [2, 2, 0], TYOP [0, 0, 105], TYOP [0, 2, 106], TYOP [0, 10, 11],
   TYOP [0, 2, 108], TYOP [0, 35, 41], TYOP [0, 33, 110], TYOP [0, 36, 37],
   TYOP [0, 33, 112], TYOP [2, 3, 0], TYOP [0, 0, 114], TYOP [0, 3, 115],
   TYOP [0, 9, 10], TYOP [0, 3, 117], TYOP [0, 34, 36], TYOP [0, 35, 119],
   TYOP [2, 18, 18], TYOP [0, 18, 121], TYOP [0, 18, 122], TYOP [2, 8, 0],
   TYOP [0, 0, 124], TYOP [0, 8, 125], TYOP [0, 19, 94], TYOP [0, 0, 0],
   TYOP [0, 0, 128], TYOP [0, 25, 49], TYOP [0, 2, 3], TYOP [0, 26, 63],
   TYOP [0, 33, 35], TYOP [0, 49, 50], TYOP [0, 32, 62], TYOP [0, 3, 6],
   TYOP [0, 9, 76], TYOP [0, 35, 69], TYOP [0, 18, 23], TYOP [0, 4, 15],
   TYOP [0, 11, 12], TYOP [0, 51, 0], TYOP [0, 51, 142], TYOP [0, 8, 94],
   TYOP [0, 3, 2], TYOP [0, 6, 3], TYOP [0, 35, 33], TYOP [0, 18, 18],
   TYOP [0, 25, 25], TYOP [0, 25, 149], TYOP [0, 0, 150], TYOP [0, 56, 0],
   TYOP [0, 53, 152], TYOP [0, 33, 153], TYOP [0, 2, 2], TYOP [0, 2, 155],
   TYOP [0, 33, 33], TYOP [0, 33, 157], TYOP [0, 33, 25], TYOP [0, 30, 25],
   TYOP [0, 160, 159], TYOP [0, 23, 25], TYOP [0, 18, 25],
   TYOP [0, 163, 162], TYOP [0, 56, 30], TYOP [0, 33, 32],
   TYOP [0, 2, 166], TYOP [0, 49, 63], TYOP [0, 2, 168], TYOP [0, 53, 67],
   TYOP [0, 33, 170], TYOP [0, 3, 73], TYOP [0, 49, 172], TYOP [0, 3, 81],
   TYOP [0, 23, 174], TYOP [0, 1, 96], TYOP [0, 176, 2], TYOP [0, 25, 99],
   TYOP [0, 178, 49], TYOP [0, 31, 102], TYOP [0, 180, 32],
   TYOP [0, 2, 105], TYOP [0, 182, 3], TYOP [0, 3, 114], TYOP [0, 184, 6],
   TYOP [0, 8, 124], TYOP [0, 186, 94], TYOP [0, 1, 1], TYOP [0, 2, 33],
   TYOP [0, 31, 189], TYOP [0, 49, 3], TYOP [0, 59, 191],
   TYOP [0, 130, 134], TYOP [0, 3, 3], TYOP [0, 155, 194], TYOP [0, 35, 3],
   TYOP [0, 33, 2], TYOP [0, 197, 196], TYOP [0, 23, 49],
   TYOP [0, 163, 199], TYOP [0, 23, 3], TYOP [0, 21, 201], TYOP [0, 1, 3],
   TYOP [0, 30, 35], TYOP [0, 188, 0], TYOP [0, 205, 0],
   TYOP [0, 188, 206], TYOP [0, 31, 62], TYOP [0, 1, 52], TYOP [0, 209, 0],
   TYOP [0, 210, 0], TYOP [0, 209, 211], TYOP [0, 26, 64],
   TYOP [0, 57, 66], TYOP [0, 61, 68], TYOP [0, 33, 69], TYOP [0, 53, 72],
   TYOP [0, 50, 0], TYOP [0, 49, 218], TYOP [0, 59, 74], TYOP [0, 21, 82],
   TYOP [0, 18, 79], TYOP [0, 8, 95], TYOP [0, 1, 155], TYOP [0, 30, 157],
   TYOP [0, 49, 49], TYOP [0, 25, 226], TYOP [0, 3, 194], TYOP [0, 8, 25],
   TYOP [0, 31, 197], TYOP [0, 49, 2], TYOP [0, 26, 231], TYOP [0, 53, 33],
   TYOP [0, 61, 233], TYOP [0, 1, 8], TYOP [0, 235, 9], TYOP [0, 23, 8],
   TYOP [0, 19, 237], TYOP [0, 56, 52], TYOP [0, 163, 25],
   TYOP [0, 25, 163], TYOP [0, 49, 25], TYOP [0, 94, 8], TYOP [0, 37, 33],
   TYOP [0, 4, 205], TYOP [0, 4, 245], TYOP [0, 55, 210], TYOP [0, 4, 247],
   TYOP [0, 51, 63], TYOP [0, 4, 249], TYOP [0, 152, 0],
   TYOP [2, 152, 251], TYOP [0, 252, 65], TYOP [0, 4, 253],
   TYOP [0, 55, 67], TYOP [0, 41, 255], TYOP [0, 37, 35], TYOP [0, 37, 34],
   TYOP [0, 31, 209], TYOP [0, 61, 259], TYOP [0, 21, 21],
   TYOP [0, 155, 261], TYOP [0, 21, 19], TYOP [0, 9, 263],
   TYOP [0, 57, 31], TYOP [0, 165, 265], TYOP [0, 57, 209],
   TYOP [0, 239, 267], TYOP [0, 54, 251], TYOP [0, 35, 269],
   TYOP [0, 8, 8], TYOP [0, 8, 271], TYOP [0, 50, 51], TYOP [0, 49, 273],
   TYOP [0, 251, 252], TYOP [0, 152, 275], TYOP [0, 41, 33],
   TYOP [0, 55, 53], TYOP [0, 51, 49], TYOP [0, 41, 35], TYOP [0, 55, 54],
   TYOP [0, 51, 50], TYOP [0, 19, 8], TYOP [0, 121, 283]]
  end
  val _ = Theory.incorporate_consts "measure" tyvector
     [("subsets", 5), ("subset_class", 7), ("subadditive", 12),
      ("space", 13), ("smallest_closed_cdi", 14), ("sigma_algebra", 15),
      ("sigma", 17), ("positive", 12), ("pos_simple_fn", 28),
      ("outer_measure_space", 12), ("null_set", 29), ("measure_space", 12),
      ("measure_preserving", 39), ("measure", 40), ("measurable_sets", 29),
      ("measurable", 43), ("m_space", 44), ("lambda_system", 46),
      ("inf_measure", 40), ("indicator_fn", 47), ("increasing", 12),
      ("fn_plus", 48), ("fn_minus", 48), ("fn_abs", 48),
      ("countably_subadditive", 12), ("countably_additive", 12),
      ("closed_cdi", 15), ("algebra", 15), ("additive", 12),
      ("Borel", 51)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 2), TMV("B", 2), TMV("P", 3), TMV("X", 2), TMV("Y", 2),
   TMV("a", 25), TMV("a", 2), TMV("a", 3), TMV("a", 35), TMV("a", 21),
   TMV("a", 4), TMV("a1", 41), TMV("a2", 55), TMV("b", 3), TMV("b", 35),
   TMV("b", 21), TMV("b", 4), TMV("b", 41), TMV("c", 25), TMV("c", 3),
   TMV("c", 35), TMV("c", 41), TMV("c", 55), TMV("c", 8), TMV("d", 25),
   TMV("e", 8), TMV("f", 31), TMV("f", 26), TMV("f", 57), TMV("f", 58),
   TMV("f", 59), TMV("f", 21), TMV("fn", 60), TMV("g", 2), TMV("g", 26),
   TMV("g", 61), TMV("g0", 4), TMV("gen", 4), TMV("gsig", 4), TMV("h", 26),
   TMV("i", 30), TMV("i", 18), TMV("j", 18), TMV("k", 25), TMV("l", 2),
   TMV("l", 8), TMV("l1", 30), TMV("l1", 2), TMV("l2", 52), TMV("l2", 2),
   TMV("lam", 9), TMV("m", 9), TMV("m", 18), TMV("m", 11), TMV("m0", 11),
   TMV("m1", 11), TMV("m2", 37), TMV("mu", 9), TMV("n", 18), TMV("p", 3),
   TMV("p", 4), TMV("r", 23), TMV("r", 8), TMV("s", 2), TMV("s", 33),
   TMV("s", 53), TMV("s", 3), TMV("s", 23), TMV("s", 21), TMV("s", 4),
   TMV("s", 11), TMV("s'", 2), TMV("sp", 2), TMV("sp", 33), TMV("st", 3),
   TMV("sts", 3), TMV("t", 1), TMV("t", 2), TMV("t", 33), TMV("u", 2),
   TMV("x", 1), TMV("x", 25), TMV("x", 2), TMV("x", 53), TMV("x", 19),
   TMV("x", 8), TMV("y", 3), TMV("z", 8), TMC(6, 3), TMC(6, 35),
   TMC(6, 54), TMC(6, 50), TMC(6, 62), TMC(6, 6), TMC(6, 64), TMC(6, 66),
   TMC(6, 68), TMC(6, 69), TMC(6, 71), TMC(6, 72), TMC(6, 74), TMC(6, 75),
   TMC(6, 77), TMC(6, 78), TMC(6, 80), TMC(6, 82), TMC(6, 84), TMC(6, 85),
   TMC(6, 79), TMC(6, 86), TMC(6, 87), TMC(6, 89), TMC(6, 91), TMC(6, 93),
   TMC(6, 95), TMC(7, 98), TMC(7, 101), TMC(7, 104), TMC(7, 107),
   TMC(7, 17), TMC(7, 109), TMC(7, 111), TMC(7, 113), TMC(7, 116),
   TMC(7, 118), TMC(7, 120), TMC(7, 123), TMC(7, 126), TMC(8, 127),
   TMC(9, 129), TMC(10, 18), TMC(11, 129), TMC(11, 130), TMC(11, 131),
   TMC(11, 132), TMC(11, 133), TMC(11, 134), TMC(11, 135), TMC(11, 136),
   TMC(11, 137), TMC(11, 138), TMC(11, 139), TMC(11, 140), TMC(11, 141),
   TMC(11, 143), TMC(11, 144), TMC(12, 129), TMC(13, 80), TMC(13, 82),
   TMC(13, 85), TMC(13, 87), TMC(13, 95), TMC(14, 145), TMC(14, 146),
   TMC(15, 145), TMC(15, 147), TMC(16, 148), TMC(17, 148), TMC(18, 51),
   TMC(19, 151), TMC(20, 154), TMC(21, 156), TMC(21, 158), TMC(22, 131),
   TMC(23, 2), TMC(23, 33), TMC(23, 49), TMC(24, 161), TMC(24, 164),
   TMC(25, 3), TMC(25, 35), TMC(25, 6), TMC(25, 79), TMC(26, 165),
   TMC(27, 167), TMC(27, 169), TMC(27, 171), TMC(27, 173), TMC(27, 175),
   TMC(28, 177), TMC(28, 179), TMC(28, 181), TMC(28, 183), TMC(28, 185),
   TMC(28, 187), TMC(29, 188), TMC(30, 190), TMC(30, 192), TMC(30, 193),
   TMC(30, 195), TMC(30, 198), TMC(30, 200), TMC(30, 202), TMC(31, 203),
   TMC(31, 204), TMC(31, 207), TMC(31, 208), TMC(31, 212), TMC(31, 7),
   TMC(31, 213), TMC(31, 214), TMC(31, 215), TMC(31, 216), TMC(31, 217),
   TMC(31, 219), TMC(31, 220), TMC(31, 221), TMC(31, 222), TMC(31, 223),
   TMC(32, 224), TMC(32, 225), TMC(32, 227), TMC(33, 156), TMC(33, 158),
   TMC(33, 228), TMC(34, 148), TMC(35, 25), TMC(36, 229), TMC(37, 131),
   TMC(37, 133), TMC(38, 230), TMC(38, 232), TMC(38, 234), TMC(39, 25),
   TMC(40, 49), TMC(41, 236), TMC(41, 238), TMC(42, 239), TMC(43, 131),
   TMC(43, 133), TMC(43, 135), TMC(43, 136), TMC(43, 138), TMC(44, 148),
   TMC(45, 156), TMC(46, 2), TMC(46, 33), TMC(46, 49), TMC(46, 3),
   TMC(46, 23), TMC(47, 18), TMC(48, 12), TMC(49, 15), TMC(50, 15),
   TMC(51, 139), TMC(52, 6), TMC(53, 12), TMC(54, 12), TMC(55, 240),
   TMC(56, 149), TMC(57, 150), TMC(58, 149), TMC(59, 130), TMC(60, 130),
   TMC(61, 150), TMC(62, 150), TMC(63, 163), TMC(64, 241), TMC(65, 150),
   TMC(66, 242), TMC(67, 48), TMC(68, 48), TMC(69, 48), TMC(70, 12),
   TMC(71, 47), TMC(72, 243), TMC(73, 40), TMC(74, 46), TMC(75, 44),
   TMC(75, 244), TMC(76, 246), TMC(76, 43), TMC(76, 248), TMC(76, 250),
   TMC(76, 254), TMC(76, 256), TMC(77, 29), TMC(77, 257), TMC(78, 40),
   TMC(78, 258), TMC(79, 39), TMC(80, 12), TMC(80, 90), TMC(81, 29),
   TMC(82, 260), TMC(82, 262), TMC(82, 264), TMC(82, 266), TMC(82, 268),
   TMC(83, 12), TMC(84, 28), TMC(85, 12), TMC(86, 270), TMC(87, 272),
   TMC(88, 144), TMC(89, 144), TMC(90, 272), TMC(91, 19), TMC(92, 272),
   TMC(93, 17), TMC(93, 111), TMC(93, 274), TMC(93, 276), TMC(94, 15),
   TMC(94, 88), TMC(94, 92), TMC(94, 142), TMC(95, 14), TMC(96, 13),
   TMC(96, 277), TMC(96, 278), TMC(96, 279), TMC(97, 12), TMC(98, 7),
   TMC(98, 216), TMC(99, 5), TMC(99, 280), TMC(99, 281), TMC(99, 282),
   TMC(100, 284), TMC(101, 283), TMC(102, 20), TMC(103, 127),
   TMC(104, 128)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op space_def x = x
    val op space_def =
    DT(((("measure",0),[("pair",[16])]),["DISK_THM"]),
       [read"%93%82%101%86%133%308%119$1@$0@@@$1@|@|@"])
  fun op subsets_def x = x
    val op subsets_def =
    DT(((("measure",1),[("pair",[16])]),["DISK_THM"]),
       [read"%93%82%101%86%138%315%119$1@$0@@@$0@|@|@"])
  fun op subset_class_def x = x
    val op subset_class_def =
    DT(((("measure",2),[]),[]),
       [read"%93%72%101%75%131%313$1@$0@@%93%82%146%198$0@$1@@%228$0@$2@@|@@|@|@"])
  fun op algebra_def x = x
    val op algebra_def =
    DT(((("measure",3),[]),[]),
       [read"%109%10%131%242$0@@%129%313%308$0@@%315$0@@@%129%198%164@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%93%63%93%77%146%129%198$1@%315$2@@@%198$0@%315$2@@@@%198%234$1@$0@@%315$2@@@|@|@@@@@|@"])
  fun op sigma_algebra_def x = x
    val op sigma_algebra_def =
    DT(((("measure",4),[]),[]),
       [read"%109%10%131%303$0@@%129%242$0@@%101%19%146%129%245$0@@%231$0@%315$1@@@@%198%154$0@@%315$1@@@|@@@|@"])
  fun op sigma_def x = x
    val op sigma_def =
    DT(((("measure",5),[]),[]),
       [read"%93%72%101%74%142%299$1@$0@@%119$1@%153%183%66%123$0@%129%231$1@$0@@%303%119$2@$0@@@@|@@@@|@|@"])
  fun op m_space_def x = x
    val op m_space_def =
    DT(((("measure",6),[("pair",[16])]),["DISK_THM"]),
       [read"%93%72%101%75%102%57%133%268%120$2@%124$1@$0@@@@$2@|@|@|@"])
  fun op measurable_sets_def x = x
    val op measurable_sets_def =
    DT(((("measure",7),[("pair",[16])]),["DISK_THM"]),
       [read"%93%72%101%75%102%57%138%276%120$2@%124$1@$0@@@@$1@|@|@|@"])
  fun op measure_def x = x
    val op measure_def =
    DT(((("measure",8),[("pair",[16])]),["DISK_THM"]),
       [read"%93%72%101%75%102%57%139%278%120$2@%124$1@$0@@@@$0@|@|@|@"])
  fun op positive_def x = x
    val op positive_def =
    DT(((("measure",9),[]),[]),
       [read"%110%53%131%291$0@@%129%145%278$0@%164@@%297%130@@@%93%63%146%198$0@%276$1@@@%295%297%130@@%278$1@$0@@@|@@@|@"])
  fun op additive_def x = x
    val op additive_def =
    DT(((("measure",10),[]),[]),
       [read"%110%53%131%241$0@@%93%63%93%77%146%129%198$1@%276$2@@@%129%198$0@%276$2@@@%163$1@$0@@@@%145%278$2@%234$1@$0@@@%293%278$2@$1@@%278$2@$0@@@@|@|@@|@"])
  fun op countably_additive_def x = x
    val op countably_additive_def =
    DT(((("measure",11),[]),[]),
       [read"%110%53%131%246$0@@%105%31%146%129%206$0@%178%239@%276$1@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@%198%154%192$0@%239@@@%276$1@@@@@%322%286%278$1@@$0@@%278$1@%154%192$0@%239@@@@@|@@|@"])
  fun op subadditive_def x = x
    val op subadditive_def =
    DT(((("measure",12),[]),[]),
       [read"%110%53%131%312$0@@%93%63%93%77%146%129%198$1@%276$2@@@%198$0@%276$2@@@@%295%278$2@%234$1@$0@@@%293%278$2@$1@@%278$2@$0@@@@|@|@@|@"])
  fun op countably_subadditive_def x = x
    val op countably_subadditive_def =
    DT(((("measure",13),[]),[]),
       [read"%110%53%131%247$0@@%105%31%146%129%206$0@%178%239@%276$1@@@@%129%198%154%192$0@%239@@@%276$1@@@%321%286%278$1@@$0@@@@@%295%278$1@%154%192$0@%239@@@@%320%286%278$1@@$0@@@@|@@|@"])
  fun op increasing_def x = x
    val op increasing_def =
    DT(((("measure",14),[]),[]),
       [read"%110%53%131%263$0@@%93%63%93%77%146%129%198$1@%276$2@@@%129%198$0@%276$2@@@%228$1@$0@@@@%295%278$2@$1@@%278$2@$0@@@|@|@@|@"])
  fun op measure_space_def x = x
    val op measure_space_def =
    DT(((("measure",15),[]),[]),
       [read"%110%53%131%281$0@@%129%303%119%268$0@@%276$0@@@@%129%291$0@@%246$0@@@@|@"])
  fun op lambda_system_def x = x
    val op lambda_system_def =
    DT(((("measure",16),[]),[]),
       [read"%109%37%102%50%138%267$1@$0@@%182%44%118$0@%129%198$0@%315$2@@@%93%63%146%198$0@%315$3@@@%145%293$2%212$1@$0@@@$2%212%161%308$3@@$1@@$0@@@@$2$0@@@|@@@|@@|@|@"])
  fun op outer_measure_space_def x = x
    val op outer_measure_space_def =
    DT(((("measure",17),[]),[]),
       [read"%110%53%131%289$0@@%129%291$0@@%129%263$0@@%247$0@@@@|@"])
  fun op inf_measure_def x = x
    val op inf_measure_def =
    DT(((("measure",18),[]),[]),
       [read"%110%53%93%63%145%266$1@$0@@%265%184%62%127$0@%148%31%129%206$0@%178%239@%276$3@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@%129%228$2@%154%192$0@%239@@@@%322%286%278$3@@$0@@$1@@@@|@@|@@@|@|@"])
  fun op closed_cdi_def x = x
    val op closed_cdi_def =
    DT(((("measure",19),[]),[]),
       [read"%109%60%131%243$0@@%129%313%308$0@@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%129%105%31%146%129%206$0@%178%239@%315$1@@@@%129%133$0%130@@%164@@%108%58%228$1$0@@$1%233$0@@@|@@@@%198%154%192$0@%239@@@%315$1@@@|@@%105%31%146%129%206$0@%178%239@%315$1@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@%198%154%192$0@%239@@@%315$1@@@|@@@@@|@"])
  fun op smallest_closed_cdi_def x = x
    val op smallest_closed_cdi_def =
    DT(((("measure",20),[]),[]),
       [read"%109%10%142%307$0@@%119%308$0@@%153%183%13%123$0@%129%231%315$1@@$0@@%243%119%308$1@@$0@@@@|@@@@|@"])
  fun op measurable_def x = x
    val op measurable_def =
    DT(((("measure",21),[]),[]),
       [read"%109%10%111%17%137%271$1@$0@@%181%26%117$0@%129%303$2@@%129%304$1@@%129%196$0@%174%308$2@@%309$1@@@@%97%64%146%202$0@%316$2@@@%198%212%220$1@$0@@%308$3@@@%315$3@@@|@@@@@|@@|@|@"])
  fun op measure_preserving_def x = x
    val op measure_preserving_def =
    DT(((("measure",22),[]),[]),
       [read"%110%55%112%56%137%280$1@$0@@%181%26%117$0@%129%196$0@%271%119%268$2@@%276$2@@@%121%269$1@@%277$1@@@@@%129%281$2@@%129%282$1@@%97%64%146%202$0@%277$2@@@%145%278$3@%212%220$1@$0@@%268$3@@@@%279$2@$0@@@|@@@@@|@@|@|@"])
  fun op indicator_fn_def x = x
    val op indicator_fn_def =
    DT(((("measure",23),[]),[]),
       [read"%93%63%134%264$0@@%80%159%193$0@$1@@%256%215%156%240@@@@%256%130@@|@|@"])
  fun op pos_simple_fn_def x = x
    val op pos_simple_fn_def =
    DT(((("measure",24),[]),[]),
       [read"%110%53%94%27%104%67%105%9%107%84%131%290$4@$3@$2@$1@$0@@%129%88%76%252%256%130@@$4$0@@|@@%129%88%76%146%193$0@%268$5@@@%132$4$0@@%168%41%255%217$2$0@@@%264$3$0@@$1@@|@$3@@@|@@%129%108%41%146%207$0@$3@@%198$2$0@@%276$5@@@|@@%129%172$2@@%129%108%41%146%207$0@$3@@%295%297%130@@$1$0@@@|@@%129%108%41%108%42%146%129%207$1@$4@@%129%207$0@$4@@%323%141$1@$0@@@@@%163$3$1@@$3$0@@@|@|@@%133%154%192$1@$2@@@%268$4@@@@@@@@@|@|@|@|@|@"])
  fun op null_set_def x = x
    val op null_set_def =
    DT(((("measure",25),[]),[]),
       [read"%110%53%93%63%131%283$1@$0@@%129%198$0@%276$1@@@%145%278$1@$0@@%297%130@@@@|@|@"])
  fun op Borel_def x = x
    val op Borel_def =
    DT(((("measure",166),[]),[]),
       [read"%144%158@%301%237@%188%5%180%81%116$0@%253$0@$1@@|@|@%237@@@"])
  fun op fn_plus_def x = x
    val op fn_plus_def =
    DT(((("measure",212),[]),[]),
       [read"%94%27%134%262$0@@%80%159%253%256%130@@$1$0@@@$1$0@@%256%130@@|@|@"])
  fun op fn_minus_def x = x
    val op fn_minus_def =
    DT(((("measure",213),[]),[]),
       [read"%94%27%134%261$0@@%80%159%253$1$0@@%256%130@@@%251$1$0@@@%256%130@@|@|@"])
  fun op fn_abs_def x = x
    val op fn_abs_def =
    DT(((("measure",214),[]),[]),
       [read"%94%27%134%260$0@@%80%249$1$0@@|@|@"])
  fun op SIGMA_PROPERTY_DISJOINT_LEMMA x = x
    val op SIGMA_PROPERTY_DISJOINT_LEMMA =
    DT(((("measure",102),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,77,78,80,
          84,93,94,96,105,124,143,146]),("combin",[19]),
         ("measure",[0,1,5,20,27,28,45,94,95,97,98,101]),("pair",[4]),
         ("pred_set",[6,18,19,257,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%93%72%101%7%101%59%146%129%242%119$2@$1@@@%129%231$1@$0@@%243%119$2@$0@@@@@%231%315%299$2@$1@@@$0@@|@|@|@"])
  fun op SIGMA_PROPERTY_DISJOINT_LEMMA2 x = x
    val op SIGMA_PROPERTY_DISJOINT_LEMMA2 =
    DT(((("measure",101),
        [("arithmetic",[14,28]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,73,74,75,
          76,77,78,80,81,83,84,93,94,96,105,124,143,146,169]),
         ("combin",[19]),
         ("measure",[0,1,2,3,19,20,28,94,95,96,97,98,99,100]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,22,32,44,45,49,57,67,144,244,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%146%242$0@@%93%63%93%77%146%129%198$1@%315%307$2@@@@%198$0@%315%307$2@@@@@%198%212$1@$0@@%315%307$2@@@@|@|@@|@"])
  fun op SIGMA_PROPERTY_DISJOINT_LEMMA1 x = x
    val op SIGMA_PROPERTY_DISJOINT_LEMMA1 =
    DT(((("measure",100),
        [("arithmetic",[14,28]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,73,74,75,
          76,77,78,80,81,83,84,93,94,96,105,124,143,146,169]),
         ("combin",[19]),
         ("measure",[0,1,2,3,19,20,28,32,94,95,96,97,98,99]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,22,32,44,45,57,67,144,244,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%146%242$0@@%93%63%93%77%146%129%198$1@%315$2@@@%198$0@%315%307$2@@@@@%198%212$1@$0@@%315%307$2@@@@|@|@@|@"])
  fun op CLOSED_CDI_INCREASING x = x
    val op CLOSED_CDI_INCREASING =
    DT(((("measure",99),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("measure",[19])]),["DISK_THM"]),
       [read"%109%60%105%31%146%129%243$1@@%129%206$0@%178%239@%315$1@@@@%129%133$0%130@@%164@@%108%58%228$1$0@@$1%233$0@@@|@@@@@%198%154%192$0@%239@@@%315$1@@@|@|@"])
  fun op CLOSED_CDI_DISJOINT x = x
    val op CLOSED_CDI_DISJOINT =
    DT(((("measure",98),
        [("bool",[25,26,27,36,51,53,54,58,63,105,124]),
         ("measure",[19])]),["DISK_THM"]),
       [read"%109%60%105%31%146%129%243$1@@%129%206$0@%178%239@%315$1@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@@%198%154%192$0@%239@@@%315$1@@@|@|@"])
  fun op CLOSED_CDI_COMPL x = x
    val op CLOSED_CDI_COMPL =
    DT(((("measure",97),
        [("bool",[25,53,58,63,105,124]),("measure",[19])]),["DISK_THM"]),
       [read"%109%60%93%63%146%129%243$1@@%198$0@%315$1@@@@%198%161%308$1@@$0@@%315$1@@@|@|@"])
  fun op CLOSED_CDI_DUNION x = x
    val op CLOSED_CDI_DUNION =
    DT(((("measure",96),
        [("arithmetic",[17,18,46,71,93,172,173]),
         ("bool",
         [25,26,27,30,36,47,48,53,54,56,58,63,64,71,77,78,93,94,96,101,104,
          105,108,109,111,124,129,146,147]),("combin",[19]),
         ("measure",[19]),("num",[7]),("numeral",[3,5,6,8]),
         ("pred_set",[14,37,41,59,60,147,150,246,251,298,299]),
         ("prim_rec",[1]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,110])]),["DISK_THM"]),
       [read"%109%60%93%63%93%77%146%129%198%164@%315$2@@@%129%243$2@@%129%198$1@%315$2@@@%129%198$0@%315$2@@@%163$1@$0@@@@@@%198%234$1@$0@@%315$2@@@|@|@|@"])
  fun op SMALLEST_CLOSED_CDI x = x
    val op SMALLEST_CLOSED_CDI =
    DT(((("measure",95),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,74,78,81,84,93,
          94,96,105,124,143,146]),("combin",[19]),
         ("measure",[0,1,2,3,19,20,94]),("pair",[4]),
         ("pred_set",[6,14,18,67,144,244,257]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%146%242$0@@%129%231%315$0@@%315%307$0@@@@%129%243%307$0@@@%313%308$0@@%315%307$0@@@@@@|@"])
  fun op SPACE_SMALLEST_CLOSED_CDI x = x
    val op SPACE_SMALLEST_CLOSED_CDI =
    DT(((("measure",94),
        [("bool",[25,56]),("measure",[0,20])]),["DISK_THM"]),
       [read"%109%10%133%308%307$0@@@%308$0@@|@"])
  fun op SPACE x = x
    val op SPACE =
    DT(((("measure",26),
        [("bool",[25,51,56]),("measure",[0,1]),
         ("pair",[4,6])]),["DISK_THM"]),
       [read"%109%10%142%119%308$0@@%315$0@@@$0@|@"])
  fun op ALGEBRA_ALT_INTER x = x
    val op ALGEBRA_ALT_INTER =
    DT(((("measure",27),
        [("bool",
         [25,26,27,36,47,48,51,52,53,54,58,63,84,93,94,96,105,124]),
         ("measure",[2,3]),("pred_set",[3,18,33,45,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%10%131%242$0@@%129%313%308$0@@%315$0@@@%129%198%164@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%93%63%93%77%146%129%198$1@%315$2@@@%198$0@%315$2@@@@%198%212$1@$0@@%315$2@@@|@|@@@@@|@"])
  fun op ALGEBRA_EMPTY x = x
    val op ALGEBRA_EMPTY =
    DT(((("measure",28),
        [("bool",[25,53,58,63,105,124]),("measure",[3])]),["DISK_THM"]),
       [read"%109%10%146%242$0@@%198%164@%315$0@@@|@"])
  fun op ALGEBRA_SPACE x = x
    val op ALGEBRA_SPACE =
    DT(((("measure",29),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("measure",[3]),("pred_set",[69]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%10%146%242$0@@%198%308$0@@%315$0@@@|@"])
  fun op ALGEBRA_COMPL x = x
    val op ALGEBRA_COMPL =
    DT(((("measure",30),
        [("bool",[25,53,58,63,105,124]),("measure",[3])]),["DISK_THM"]),
       [read"%109%10%93%63%146%129%242$1@@%198$0@%315$1@@@@%198%161%308$1@@$0@@%315$1@@@|@|@"])
  fun op ALGEBRA_UNION x = x
    val op ALGEBRA_UNION =
    DT(((("measure",31),
        [("bool",[25,51,53,58,63,105,124]),("measure",[3])]),["DISK_THM"]),
       [read"%109%10%93%63%93%77%146%129%242$2@@%129%198$1@%315$2@@@%198$0@%315$2@@@@@%198%234$1@$0@@%315$2@@@|@|@|@"])
  fun op ALGEBRA_INTER x = x
    val op ALGEBRA_INTER =
    DT(((("measure",32),
        [("bool",[25,51,53,58,63,105,124]),
         ("measure",[27])]),["DISK_THM"]),
       [read"%109%10%93%63%93%77%146%129%242$2@@%129%198$1@%315$2@@@%198$0@%315$2@@@@@%198%212$1@$0@@%315$2@@@|@|@|@"])
  fun op ALGEBRA_DIFF x = x
    val op ALGEBRA_DIFF =
    DT(((("measure",33),
        [("bool",[25,26,47,48,51,53,54,58,63,84,93,94,96,105,124]),
         ("measure",[2,3,30,32]),("pred_set",[3,18,45,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%10%93%63%93%77%146%129%242$2@@%129%198$1@%315$2@@@%198$0@%315$2@@@@@%198%161$1@$0@@%315$2@@@|@|@|@"])
  fun op ALGEBRA_FINITE_UNION x = x
    val op ALGEBRA_FINITE_UNION =
    DT(((("measure",34),
        [("bool",[25,36,51,53,58,63,105,124]),("measure",[3]),
         ("pred_set",[97,186,246,251])]),["DISK_THM"]),
       [read"%109%10%101%19%146%129%242$1@@%129%171$0@@%231$0@%315$1@@@@@%198%154$0@@%315$1@@@|@|@"])
  fun op ALGEBRA_INTER_SPACE x = x
    val op ALGEBRA_INTER_SPACE =
    DT(((("measure",35),
        [("bool",[25,26,47,48,53,54,58,63,84,93,94,96,105,124]),
         ("measure",[2,3]),("pred_set",[3,18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%10%93%63%146%129%242$1@@%198$0@%315$1@@@@%129%133%212%308$1@@$0@@$0@@%133%212$0@%308$1@@@$0@@@|@|@"])
  fun op LAMBDA_SYSTEM_EMPTY x = x
    val op LAMBDA_SYSTEM_EMPTY =
    DT(((("measure",36),
        [("bool",[25,26,36,51,53,56,58,63,105,124,143]),
         ("measure",[3,8,9,16,35]),("pair",[4]),("pred_set",[6,53,69]),
         ("real",[7])]),["DISK_THM"]),
       [read"%109%36%102%50%146%129%242$1@@%291%120%308$1@@%124%315$1@@$0@@@@@%198%164@%267$1@$0@@@|@|@"])
  fun op LAMBDA_SYSTEM_COMPL x = x
    val op LAMBDA_SYSTEM_COMPL =
    DT(((("measure",37),
        [("bool",
         [13,25,26,27,30,36,43,47,48,50,51,52,53,54,56,58,63,71,73,75,76,
          78,80,84,93,94,96,97,105,124,143,146,169]),("combin",[19]),
         ("measure",[2,3,9,16]),("pair",[4]),("pred_set",[3,6,18,67]),
         ("real",[4]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%36%102%50%93%44%146%129%242$2@@%129%291%120%308$2@@%124%315$2@@$1@@@@%198$0@%267$2@$1@@@@@%198%161%308$2@@$0@@%267$2@$1@@@|@|@|@"])
  fun op LAMBDA_SYSTEM_INTER x = x
    val op LAMBDA_SYSTEM_INTER =
    DT(((("measure",38),
        [("arithmetic",[46,60,79,207]),
         ("bool",
         [25,26,36,43,47,48,51,53,54,56,58,63,71,73,75,76,78,80,84,93,94,
          96,105,124,143,146]),("combin",[19]),("measure",[9,16,27]),
         ("numeral",[3,5,17,18]),("pair",[4]),("pred_set",[3,6,45,47,67]),
         ("real",
         [4,6,7,8,12,17,18,20,27,28,38,39,40,46,59,60,61,62,71,131,307,308,
          309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%36%102%50%93%47%93%49%146%129%242$3@@%129%291%120%308$3@@%124%315$3@@$2@@@@%129%198$1@%267$3@$2@@@%198$0@%267$3@$2@@@@@@%198%212$1@$0@@%267$3@$2@@@|@|@|@|@"])
  fun op LAMBDA_SYSTEM_ALGEBRA x = x
    val op LAMBDA_SYSTEM_ALGEBRA =
    DT(((("measure",39),
        [("bool",[25,26,36,51,53,56,58,63,105,124,143]),
         ("measure",[0,1,2,9,16,27,36,37,38]),("pair",[4]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%109%36%102%50%146%129%242$1@@%291%120%308$1@@%124%315$1@@$0@@@@@%242%119%308$1@@%267$1@$0@@@@|@|@"])
  fun op LAMBDA_SYSTEM_STRONG_ADDITIVE x = x
    val op LAMBDA_SYSTEM_STRONG_ADDITIVE =
    DT(((("measure",40),
        [("bool",
         [25,26,27,43,47,48,51,53,54,56,58,63,71,73,75,76,78,80,84,93,94,
          96,105,124,143,146]),("measure",[2,3,9,16,27]),("pair",[4]),
         ("pred_set",[3,6,10,18,33,45,57,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%36%102%50%93%33%93%47%93%49%146%129%242$4@@%129%291%120%308$4@@%124%315$4@@$3@@@@%129%198$2@%315$4@@@%129%163$1@$0@@%129%198$1@%267$4@$3@@@%198$0@%267$4@$3@@@@@@@@%145$3%212%234$1@$0@@$2@@@%293$3%212$1@$2@@@$3%212$0@$2@@@@@|@|@|@|@|@"])
  fun op LAMBDA_SYSTEM_ADDITIVE x = x
    val op LAMBDA_SYSTEM_ADDITIVE =
    DT(((("measure",41),
        [("bool",[25,26,36,51,53,56,58,63,105,124,143]),
         ("measure",[7,8,10,16,29,31,35,40]),("pair",[4]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%109%36%102%50%89%46%90%48%146%129%242$3@@%291%120%308$3@@%124%315$3@@$2@@@@@%241%120%308$3@@%124%267$3@$2@@$2@@@@|@|@|@|@"])
  fun op COUNTABLY_SUBADDITIVE_SUBADDITIVE x = x
    val op COUNTABLY_SUBADDITIVE_SUBADDITIVE =
    DT(((("measure",42),
        [("arithmetic",[17,18,25,46,71,79,81,93,172,173]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,73,75,
          76,77,78,80,81,83,84,93,94,96,101,104,105,109,111,124,129,143,
          146,147]),("combin",[5,8]),("measure",[1,2,3,9,12,13]),
         ("num",[7]),("numeral",[3,5,8]),("pair",[4]),
         ("pred_set",[3,6,10,14,33,80,144,243]),("real",[7,280]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[47]),
         ("util_prob",[6,165])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%247$0@@@@%312$0@@|@"])
  fun op SIGMA_ALGEBRA_ALT x = x
    val op SIGMA_ALGEBRA_ALT =
    DT(((("measure",43),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,74,75,
          76,77,78,80,81,84,93,94,96,105,124,146]),("combin",[19]),
         ("measure",[4,34]),("pred_set",[3,14,18,144,166,173,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,39,77])]),["DISK_THM"]),
       [read"%109%10%131%303$0@@%129%242$0@@%105%31%146%206$0@%178%239@%315$1@@@@%198%154%192$0@%239@@@%315$1@@@|@@@|@"])
  fun op SIGMA_ALGEBRA_ALT_MONO x = x
    val op SIGMA_ALGEBRA_ALT_MONO =
    DT(((("measure",44),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,78,81,84,94,
          96,101,104,105,124]),("combin",[19]),("measure",[34,43]),
         ("numeral",[3,5,8]),
         ("pred_set",[3,14,18,144,147,199,244,246,296,298,300]),
         ("prim_rec",[15]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%131%303$0@@%129%242$0@@%105%31%146%129%206$0@%178%239@%315$1@@@@%129%133$0%130@@%164@@%108%58%228$1$0@@$1%233$0@@@|@@@@%198%154%192$0@%239@@@%315$1@@@|@@@|@"])
  fun op SIGMA_ALGEBRA_ALT_DISJOINT x = x
    val op SIGMA_ALGEBRA_ALT_DISJOINT =
    DT(((("measure",45),
        [("arithmetic",[22,24,25,27,28,71,173,177,180]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,73,78,
          81,84,93,94,96,104,105,124,146]),("measure",[33,43,44]),
         ("num",[9]),("numeral",[3,5,8]),
         ("pred_set",[3,10,14,18,19,20,45,57,59,67,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,22])]),["DISK_THM"]),
       [read"%109%10%131%303$0@@%129%242$0@@%105%31%146%129%206$0@%178%239@%315$1@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@%198%154%192$0@%239@@@%315$1@@@|@@@|@"])
  fun op SUBADDITIVE x = x
    val op SUBADDITIVE =
    DT(((("measure",46),
        [("bool",[25,51,53,58,63,105,124]),
         ("measure",[12])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%93%79%146%129%312$3@@%129%198$2@%276$3@@@%129%198$1@%276$3@@@%133$0@%234$2@$1@@@@@@%295%278$3@$0@@%293%278$3@$2@@%278$3@$1@@@@|@|@|@|@"])
  fun op ADDITIVE x = x
    val op ADDITIVE =
    DT(((("measure",47),
        [("bool",[25,51,53,56,58,63,105,124]),
         ("measure",[10])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%93%79%146%129%241$3@@%129%198$2@%276$3@@@%129%198$1@%276$3@@@%129%163$2@$1@@%133$0@%234$2@$1@@@@@@@%145%278$3@$0@@%293%278$3@$2@@%278$3@$1@@@@|@|@|@|@"])
  fun op COUNTABLY_SUBADDITIVE x = x
    val op COUNTABLY_SUBADDITIVE =
    DT(((("measure",48),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          93,94,96,146]),("combin",[19]),("measure",[13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%105%31%93%63%146%129%247$2@@%129%206$1@%178%239@%276$2@@@@%129%321%286%278$2@@$1@@@%129%133$0@%154%192$1@%239@@@@%198$0@%276$2@@@@@@@%295%278$2@$0@@%320%286%278$2@@$1@@@@|@|@|@"])
  fun op ADDITIVE_SUM x = x
    val op ADDITIVE_SUM =
    DT(((("measure",49),
        [("arithmetic",[24]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,57,58,63,71,75,78,
          80,84,93,94,96,105,124,146]),("combin",[8,19]),
         ("measure",[1,9,34,47]),("num",[9]),
         ("pred_set",[14,18,144,147,150,199,246,251,296,298,299,300]),
         ("real",[4,280]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,78])]),["DISK_THM"]),
       [read"%110%53%105%31%108%58%146%129%242%119%268$2@@%276$2@@@@%129%291$2@@%129%241$2@@%129%206$1@%178%239@%276$2@@@@%108%52%108%58%146%323%141$1@$0@@@%163$3$1@@$3$0@@@|@|@@@@@@%145%319%126%130@$0@@%286%278$2@@$1@@@%278$2@%154%192$1@%244$0@@@@@@|@|@|@"])
  fun op INCREASING_ADDITIVE_SUMMABLE x = x
    val op INCREASING_ADDITIVE_SUMMABLE =
    DT(((("measure",50),
        [("bool",[25,26,36,47,48,51,53,54,56,58,63,84,93,94,96,105,124]),
         ("combin",[8,19]),("measure",[0,1,2,3,9,14,29,34,49]),
         ("pred_set",[14,18,144,199,244,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,163])]),["DISK_THM"]),
       [read"%110%53%105%31%146%129%242%119%268$1@@%276$1@@@@%129%291$1@@%129%263$1@@%129%241$1@@%129%206$0@%178%239@%276$1@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@@@@@%321%286%278$1@@$0@@@|@|@"])
  fun op LAMBDA_SYSTEM_POSITIVE x = x
    val op LAMBDA_SYSTEM_POSITIVE =
    DT(((("measure",51),
        [("bool",[25,26,36,51,53,56,58,63,105,124,143]),
         ("measure",[7,8,9,16]),("pair",[4]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%109%36%102%50%146%291%120%308$1@@%124%315$1@@$0@@@@%291%120%308$1@@%124%267$1@$0@@$0@@@@|@|@"])
  fun op LAMBDA_SYSTEM_INCREASING x = x
    val op LAMBDA_SYSTEM_INCREASING =
    DT(((("measure",52),
        [("bool",[25,26,36,51,53,58,63,105,124,143]),
         ("measure",[7,8,14,16]),("pair",[4]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%109%36%102%50%146%263%120%308$1@@%124%315$1@@$0@@@@%263%120%308$1@@%124%267$1@$0@@$0@@@@|@|@"])
  fun op LAMBDA_SYSTEM_STRONG_SUM x = x
    val op LAMBDA_SYSTEM_STRONG_SUM =
    DT(((("measure",53),
        [("arithmetic",[22,25]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,57,58,63,71,75,78,
          80,84,93,94,96,105,124,146]),("combin",[8,19]),
         ("measure",[1,8,9,34,39,40]),("num",[9]),
         ("pred_set",[14,18,53,144,147,150,199,246,251,298,299,300]),
         ("real",[4,280]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,78])]),["DISK_THM"]),
       [read"%109%36%102%50%93%33%105%31%108%58%146%129%242$4@@%129%291%120%308$4@@%124%315$4@@$3@@@@%129%198$2@%315$4@@@%129%206$1@%178%239@%267$4@$3@@@@%108%52%108%58%146%323%141$1@$0@@@%163$3$1@@$3$0@@@|@|@@@@@@%145%319%126%130@$0@@%286$3@%285%63%212$0@$3@|@$1@@@@$3%212%154%192$1@%244$0@@@@$2@@@@|@|@|@|@|@"])
  fun op SIGMA_ALGEBRA_ALGEBRA x = x
    val op SIGMA_ALGEBRA_ALGEBRA =
    DT(((("measure",54),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,146]),
         ("measure",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%10%146%303$0@@%242$0@@|@"])
  fun op OUTER_MEASURE_SPACE_POSITIVE x = x
    val op OUTER_MEASURE_SPACE_POSITIVE =
    DT(((("measure",55),
        [("bool",[25,26,47,48,53,54,63,71,94]),("measure",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%53%146%289$0@@%291$0@@|@"])
  fun op LAMBDA_SYSTEM_CARATHEODORY x = x
    val op LAMBDA_SYSTEM_CARATHEODORY =
    DT(((("measure",56),
        [("arithmetic",[46,60,71,79,93,143,173,176,180,207]),
         ("bool",
         [2,13,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,60,63,71,72,73,
          74,75,77,78,80,81,84,93,94,95,96,99,101,104,105,124,129,143,145,
          146,147]),("combin",[8,19]),
         ("measure",
         [1,2,3,4,6,7,8,9,14,16,17,26,30,32,34,39,41,42,43,46,48,50,51,52,
          53,54,55]),("numeral",[3,5,8,17,18]),("pair",[4]),
         ("pred_set",[0,3,6,14,18,33,45,48,67,144,199,244,300]),
         ("real",
         [4,6,7,8,12,17,18,20,22,27,28,38,39,40,46,59,60,61,62,71,131,204,
          307,308,309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[61]),
         ("util_prob",[6,85,164,165])]),["DISK_THM"]),
       [read"%109%38%102%50%146%129%303$1@@%289%120%308$1@@%124%315$1@@$0@@@@@%105%31%146%129%206$0@%178%239@%267$2@$1@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@%129%198%154%192$0@%239@@@%267$2@$1@@@%322%286$1@$0@@$1%154%192$0@%239@@@@@@|@@|@|@"])
  fun op CARATHEODORY_LEMMA x = x
    val op CARATHEODORY_LEMMA =
    DT(((("measure",57),
        [("bool",
         [25,26,27,36,43,47,48,51,53,54,56,58,63,71,77,78,93,94,96,105,124,
          146]),("combin",[19]),
         ("measure",[1,6,7,8,11,15,17,39,45,51,54,56]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%38%102%50%146%129%303$1@@%289%120%308$1@@%124%315$1@@$0@@@@@%281%120%308$1@@%124%267$1@$0@@$0@@@@|@|@"])
  fun op INF_MEASURE_NONEMPTY x = x
    val op INF_MEASURE_NONEMPTY =
    DT(((("measure",58),
        [("arithmetic",[17,46,71,79,93,172]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,72,84,93,94,
          96,101,104,105,109,111,124,129,143,147]),("combin",[5]),
         ("measure",[1,9,28]),("numeral",[3,8]),("pair",[4]),
         ("pred_set",[6,14,18,60,144,244]),("real",[7,280]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[47]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%110%53%93%33%93%63%146%129%242%119%268$2@@%276$2@@@@%129%291$2@@%129%198$0@%276$2@@@%228$1@$0@@@@@%208%278$2@$0@@%184%62%127$0@%148%31%129%206$0@%178%239@%276$4@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@%129%228$3@%154%192$0@%239@@@@%322%286%278$4@@$0@@$1@@@@|@@|@@@|@|@|@"])
  fun op INF_MEASURE_POS0 x = x
    val op INF_MEASURE_POS0 =
    DT(((("measure",59),
        [("bool",[25,26,53,58,63,105,124,143]),("combin",[8]),
         ("measure",[9]),("pair",[4]),("pred_set",[6,14]),
         ("util_prob",[6,161,165])]),["DISK_THM"]),
       [read"%110%53%93%33%114%85%146%129%242%119%268$2@@%276$2@@@@%129%291$2@@%208$0@%184%62%127$0@%148%31%129%206$0@%178%239@%276$4@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@%129%228$3@%154%192$0@%239@@@@%322%286%278$4@@$0@@$1@@@@|@@|@@@@@%295%297%130@@$0@@|@|@|@"])
  fun op INF_MEASURE_POS x = x
    val op INF_MEASURE_POS =
    DT(((("measure",60),
        [("bool",[14,25,26,36,47,48,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[1,3,5,19,20]),("measure",[0,1,18,29,58,59]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[155])]),["DISK_THM"]),
       [read"%110%53%93%33%146%129%242%119%268$1@@%276$1@@@@%129%291$1@@%228$0@%268$1@@@@@%295%297%130@@%266$1@$0@@@|@|@"])
  fun op INCREASING x = x
    val op INCREASING =
    DT(((("measure",61),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("measure",[14]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%146%129%263$2@@%129%228$1@$0@@%129%198$1@%276$2@@@%198$0@%276$2@@@@@@%295%278$2@$1@@%278$2@$0@@@|@|@|@"])
  fun op ADDITIVE_INCREASING x = x
    val op ADDITIVE_INCREASING =
    DT(((("measure",62),
        [("arithmetic",[46,60,79,207]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,93,
          94,96,105,124,146]),("measure",[1,9,14,33,47]),("numeral",[3]),
         ("pred_set",[3,10,18,33,45,57,67]),
         ("real",
         [4,6,7,8,12,18,27,28,38,39,46,59,60,61,62,131,308,309,310,311,312,
          313,314,326,328]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%241$0@@@@%263$0@@|@"])
  fun op COUNTABLY_ADDITIVE_ADDITIVE x = x
    val op COUNTABLY_ADDITIVE_ADDITIVE =
    DT(((("measure",63),
        [("arithmetic",[17,18,25,46,71,79,81,93,172,173]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,73,76,
          77,78,80,81,84,93,94,96,101,104,105,108,109,111,124,129,146,
          147]),("combin",[8,19]),("measure",[0,1,9,10,11,28,31]),
         ("num",[7]),("numeral",[3,5,6,8]),
         ("pred_set",[3,10,14,33,59,60,144,244]),("real",[7,280]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[46,47]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%246$0@@@@%241$0@@|@"])
  fun op COUNTABLY_ADDITIVE x = x
    val op COUNTABLY_ADDITIVE =
    DT(((("measure",64),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,74,75,77,78,80,81,84,93,94,
          96,105,124,146]),("combin",[19]),("measure",[11]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%53%93%63%105%31%146%129%246$2@@%129%206$0@%178%239@%276$2@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@%129%133$1@%154%192$0@%239@@@@%198$1@%276$2@@@@@@@%322%286%278$2@@$0@@%278$2@$1@@@|@|@|@"])
  fun op INF_MEASURE_AGREES x = x
    val op INF_MEASURE_AGREES =
    DT(((("measure",65),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,75,76,
          77,78,80,81,84,93,94,96,105,124,143,146]),
         ("combin",[1,3,5,8,19,20]),
         ("measure",[1,11,18,32,58,59,61,62,63]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,20,45,50,57,144,244]),("real",[55,62]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[63]),
         ("util_prob",[6,155,156,165])]),["DISK_THM"]),
       [read"%110%53%93%63%146%129%242%119%268$1@@%276$1@@@@%129%291$1@@%129%246$1@@%198$0@%276$1@@@@@@%145%266$1@$0@@%278$1@$0@@@|@|@"])
  fun op MEASURE_DOWN x = x
    val op MEASURE_DOWN =
    DT(((("measure",66),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105,124]),
         ("measure",[9,11,15]),("pred_set",[14,18]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%110%54%110%55%146%129%303%119%268$1@@%276$1@@@@%129%231%276$1@@%276$0@@@%129%139%278$1@@%278$0@@@%281$0@@@@@%281$1@@|@|@"])
  fun op SIGMA_ALGEBRA_SIGMA x = x
    val op SIGMA_ALGEBRA_SIGMA =
    DT(((("measure",67),
        [("bool",
         [25,26,36,43,47,48,51,53,54,58,63,71,75,78,80,84,93,94,96,105,124,
          143,146]),("measure",[0,1,2,3,4,5]),("pair",[3,4]),
         ("pred_set",[6,18,22,39,74,244,258,356]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%93%72%101%75%146%313$1@$0@@%303%299$1@$0@@@|@|@"])
  fun op POW_ALGEBRA x = x
    val op POW_ALGEBRA =
    DT(((("measure",68),
        [("bool",[25,36,51,53,58,63,105,124]),("measure",[0,1,2,3]),
         ("pred_set",[22,39,74,356])]),["DISK_THM"]),
       [read"%242%119%72@%218%72@@@"])
  fun op POW_SIGMA_ALGEBRA x = x
    val op POW_SIGMA_ALGEBRA =
    DT(((("measure",69),
        [("bool",[25,26,47,48,51,53,54,58,63,84,93,94,96,105,124]),
         ("measure",[1,4,68]),("pred_set",[18,244,356]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%303%119%72@%218%72@@@"])
  fun op UNIV_SIGMA_ALGEBRA x = x
    val op UNIV_SIGMA_ALGEBRA =
    DT(((("measure",70),
        [("bool",[25,36,53,58,63,105,124]),("measure",[69]),
         ("pred_set",[3,14,24,356])]),["DISK_THM"]),
       [read"%303%119%235@%238@@"])
  fun op INF_MEASURE_EMPTY x = x
    val op INF_MEASURE_EMPTY =
    DT(((("measure",71),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,
          80,84,93,94,96,104,105,124,143,146]),
         ("combin",[1,3,5,8,12,19,20]),("measure",[0,1,9,18,28,59,60]),
         ("numeral",[3,8]),("pair",[4]),
         ("pred_set",[6,10,14,18,22,60,244]),("real",[55,62,280]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[47]),
         ("util_prob",[6,156])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%291$0@@@%145%266$0@%164@@%297%130@@@|@"])
  fun op INF_MEASURE_POSITIVE x = x
    val op INF_MEASURE_POSITIVE =
    DT(((("measure",72),
        [("bool",[25,36,51,53,56,58,63,105,124]),("measure",[7,8,9,60,71]),
         ("pred_set",[356])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%291$0@@@%291%120%268$0@@%124%218%268$0@@@%266$0@@@@@|@"])
  fun op INF_MEASURE_INCREASING x = x
    val op INF_MEASURE_INCREASING =
    DT(((("measure",73),
        [("bool",
         [14,25,26,36,47,48,51,53,54,56,58,63,71,72,77,78,93,94,96,105,124,
          143,146]),("combin",[1,3,5,19,20]),
         ("measure",[0,1,6,7,8,14,18,29,58,59]),("pair",[4]),
         ("pred_set",[6,19,356]),("real",[55]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[155,156])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%291$0@@@%263%120%268$0@@%124%218%268$0@@@%266$0@@@@@|@"])
  fun op INF_MEASURE_LE x = x
    val op INF_MEASURE_LE =
    DT(((("measure",74),
        [("arithmetic",[24,25,46,59,71,93,173,177,180]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,75,77,
          78,80,81,84,93,94,96,101,104,105,124,143,146]),
         ("combin",[1,3,5,8,19,20]),("measure",[1,9,18,33,34,59,61]),
         ("numeral",[3,8]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,45,57,67,74,144,199,244,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,156,165,173,176])]),["DISK_THM"]),
       [read"%110%53%93%63%114%85%146%129%242%119%268$2@@%276$2@@@@%129%291$2@@%129%263$2@@%208$0@%184%62%127$0@%148%31%129%206$0@%178%239@%276$4@@@@%129%228$3@%154%192$0@%239@@@@%322%286%278$4@@$0@@$1@@@|@@|@@@@@@%295%266$2@$1@@$0@@|@|@|@"])
  fun op INF_MEASURE_CLOSE x = x
    val op INF_MEASURE_CLOSE =
    DT(((("measure",75),
        [("bool",[25,26,27,36,47,48,53,54,56,58,63,93,94,96,105,124,143]),
         ("combin",[19]),("measure",[0,1,6,7,18,29,58]),("pair",[4]),
         ("pred_set",[6]),("real",[58]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[158])]),["DISK_THM"]),
       [read"%110%53%93%63%114%25%146%129%242%119%268$2@@%276$2@@@@%129%291$2@@%129%294%297%130@@$0@@%228$1@%268$2@@@@@@%148%31%151%45%129%206$1@%178%239@%276$4@@@@%129%228$3@%154%192$1@%239@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$3$1@@$3$0@@@|@|@@%129%322%286%278$4@@$1@@$0@@%295$0@%293%266$4@$3@@$2@@@@@@|@|@@|@|@|@"])
  fun op INF_MEASURE_COUNTABLY_SUBADDITIVE x = x
    val op INF_MEASURE_COUNTABLY_SUBADDITIVE =
    DT(((("measure",76),
        [("bool",
         [13,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,60,63,71,73,74,
          75,78,80,81,84,93,94,96,105,124,143,146]),("combin",[5,8,19]),
         ("measure",[7,8,9,13,74,75]),("pair",[4,5,16]),
         ("pred_set",[6,14,18,144,166,173,244,268,356]),
         ("real",[20,29,61,337]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[55]),
         ("util_prob",[6,56,146,165,166,170,171,172,173])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%263$0@@@@%247%120%268$0@@%124%218%268$0@@@%266$0@@@@@|@"])
  fun op INF_MEASURE_OUTER x = x
    val op INF_MEASURE_OUTER =
    DT(((("measure",77),
        [("bool",[25,51,53,58,63,105,124]),
         ("measure",[17,72,73,76])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%263$0@@@@%289%120%268$0@@%124%218%268$0@@@%266$0@@@@@|@"])
  fun op SIGMA_SUBSET x = x
    val op SIGMA_SUBSET =
    DT(((("measure",78),
        [("bool",[25,26,53,58,63,105,124,143]),("measure",[1,5,26]),
         ("pair",[4]),("pred_set",[6,18,258])]),["DISK_THM"]),
       [read"%101%7%109%16%146%129%303$0@@%231$1@%315$0@@@@%231%315%299%308$0@@$1@@@%315$0@@@|@|@"])
  fun op ALGEBRA_SUBSET_LAMBDA_SYSTEM x = x
    val op ALGEBRA_SUBSET_LAMBDA_SYSTEM =
    DT(((("measure",79),
        [("arithmetic",[46,60,71,79,93,143,173,176,180,207]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,57,58,60,63,64,71,
          72,73,75,76,78,80,84,93,94,96,104,105,124,143,146]),
         ("combin",[1,3,5,8,19,20]),
         ("measure",
         [0,1,2,3,6,7,8,9,16,18,30,32,42,46,47,59,61,68,72,75,76]),
         ("numeral",[3,8]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,33,45,50,57,67,144,244,356]),
         ("real",
         [4,6,7,8,12,18,27,28,38,39,46,55,59,60,61,62,131,204,308,309,310,
          311,312,313,314,326,328,337]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[61]),
         ("util_prob",[6,156,165,170])]),["DISK_THM"]),
       [read"%110%53%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%129%263$0@@%241$0@@@@@%231%276$0@@%267%119%268$0@@%218%268$0@@@@%266$0@@@@|@"])
  fun op CARATHEODORY x = x
    val op CARATHEODORY =
    DT(((("measure",80),
        [("bool",
         [13,25,26,27,30,36,42,47,48,51,52,53,54,56,58,63,71,93,94,96,105,
          124]),("combin",[19]),
         ("measure",[0,1,3,6,7,8,15,26,57,62,63,65,66,67,69,77,78,79]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%54%146%129%242%119%268$0@@%276$0@@@@%129%291$0@@%246$0@@@@%150%53%129%93%63%146%198$0@%276$2@@@%145%278$1@$0@@%278$2@$0@@@|@@%129%142%119%268$0@@%276$0@@@%299%268$1@@%276$1@@@@%281$0@@@|@@|@"])
  fun op SIGMA_SUBSET_SUBSETS x = x
    val op SIGMA_SUBSET_SUBSETS =
    DT(((("measure",81),
        [("bool",[25,26,36,53,58,63,105,124,143]),("measure",[1,5]),
         ("pair",[4]),("pred_set",[6,18,258])]),["DISK_THM"]),
       [read"%93%72%101%7%231$0@%315%299$1@$0@@@|@|@"])
  fun op IN_SIGMA x = x
    val op IN_SIGMA =
    DT(((("measure",82),
        [("bool",[25,36,53,58,63,105,124]),("measure",[81]),
         ("pred_set",[18])]),["DISK_THM"]),
       [read"%93%72%101%7%93%82%146%198$0@$1@@%198$0@%315%299$2@$1@@@@|@|@|@"])
  fun op SIGMA_ALGEBRA x = x
    val op SIGMA_ALGEBRA =
    DT(((("measure",83),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,77,78,81,93,94,
          96,105,124]),("measure",[3,4]),("pred_set",[10,18,80,185,187]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[63,77])]),["DISK_THM"]),
       [read"%109%60%131%303$0@@%129%313%308$0@@%315$0@@@%129%198%164@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%101%19%146%129%245$0@@%231$0@%315$1@@@@%198%154$0@@%315$1@@@|@@@@@|@"])
  fun op SIGMA_ALGEBRA_COUNTABLE_UNION x = x
    val op SIGMA_ALGEBRA_COUNTABLE_UNION =
    DT(((("measure",84),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("measure",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%10%101%19%146%129%303$1@@%129%245$0@@%231$0@%315$1@@@@@%198%154$0@@%315$1@@@|@|@"])
  fun op SIGMA_ALGEBRA_ENUM x = x
    val op SIGMA_ALGEBRA_ENUM =
    DT(((("measure",85),
        [("bool",[25,53,58,63,105,124]),("measure",[43])]),["DISK_THM"]),
       [read"%109%10%105%31%146%129%303$1@@%206$0@%178%239@%315$1@@@@@%198%154%192$0@%239@@@%315$1@@@|@|@"])
  fun op MEASURE_COMPL x = x
    val op MEASURE_COMPL =
    DT(((("measure",86),
        [("arithmetic",[46,60,79,207]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,75,76,78,80,
          84,93,94,96,105,124,146]),("measure",[0,1,2,3,4,15,30,47,63]),
         ("numeral",[3,5,17,18]),("pred_set",[3,10,18,33,45,57,67]),
         ("real",
         [4,6,7,8,12,17,18,20,22,27,28,38,39,40,46,59,60,61,62,71,131,307,
          308,309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%93%63%146%129%281$1@@%198$0@%276$1@@@@%145%278$1@%161%268$1@@$0@@@%298%278$1@%268$1@@@%278$1@$0@@@@|@|@"])
  fun op SIGMA_PROPERTY x = x
    val op SIGMA_PROPERTY =
    DT(((("measure",87),
        [("bool",
         [25,26,36,43,47,48,51,53,54,58,63,71,75,78,80,84,93,94,96,105,124,
          143,146]),("measure",[0,1,2,4,5,28,30,54,67,82,83]),("pair",[4]),
         ("pred_set",[6,18,44,45,257]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[13])]),["DISK_THM"]),
       [read"%93%72%101%59%101%7%146%129%313$2@$1@@%129%198%164@$1@@%129%231$0@$1@@%129%93%63%146%198$0@%214$2@%315%299$3@$1@@@@@%198%161$3@$0@@$2@@|@@%101%19%146%129%245$0@@%231$0@%214$2@%315%299$3@$1@@@@@@%198%154$0@@$2@@|@@@@@@%231%315%299$2@$0@@@$1@@|@|@|@"])
  fun op MEASURE_EMPTY x = x
    val op MEASURE_EMPTY =
    DT(((("measure",88),
        [("bool",[25,53,56,58,105,124]),("measure",[9,15])]),["DISK_THM"]),
       [read"%110%53%146%281$0@@%145%278$0@%164@@%297%130@@@|@"])
  fun op SIGMA_SUBSET_MEASURABLE_SETS x = x
    val op SIGMA_SUBSET_MEASURABLE_SETS =
    DT(((("measure",89),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,74,75,77,78,80,
          84,93,94,96,105,124,146]),("measure",[0,1,15,83,87]),
         ("pred_set",[45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[13])]),["DISK_THM"]),
       [read"%101%7%110%53%146%129%281$0@@%231$1@%276$0@@@@%231%315%299%268$0@@$1@@@%276$0@@@|@|@"])
  fun op SIGMA_ALGEBRA_FN x = x
    val op SIGMA_ALGEBRA_FN =
    DT(((("measure",90),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,83,94,105,124]),
         ("measure",[83]),("pred_set",[14,18,144,246]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[6,108,109])]),["DISK_THM"]),
       [read"%109%10%131%303$0@@%129%313%308$0@@%315$0@@@%129%198%164@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%105%31%146%206$0@%178%239@%315$1@@@@%198%154%192$0@%239@@@%315$1@@@|@@@@@|@"])
  fun op SIGMA_ALGEBRA_FN_DISJOINT x = x
    val op SIGMA_ALGEBRA_FN_DISJOINT =
    DT(((("measure",91),
        [("bool",[25,26,27,36,51,53,54,58,63,105,124]),
         ("measure",[3,45])]),["DISK_THM"]),
       [read"%109%10%131%303$0@@%129%313%308$0@@%315$0@@@%129%198%164@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%129%93%63%93%77%146%129%198$1@%315$2@@@%198$0@%315$2@@@@%198%234$1@$0@@%315$2@@@|@|@@%105%31%146%129%206$0@%178%239@%315$1@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@%198%154%192$0@%239@@@%315$1@@@|@@@@@@|@"])
  fun op SIGMA_PROPERTY_ALT x = x
    val op SIGMA_PROPERTY_ALT =
    DT(((("measure",92),
        [("bool",
         [25,26,36,43,47,48,51,53,54,58,63,71,75,78,80,84,93,94,96,105,124,
          143,146]),("measure",[0,1,2,4,5,28,30,54,67,82,90]),("pair",[4]),
         ("pred_set",[6,18,44,45,257]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[13,105])]),["DISK_THM"]),
       [read"%93%72%101%59%101%7%146%129%313$2@$1@@%129%198%164@$1@@%129%231$0@$1@@%129%93%63%146%198$0@%214$2@%315%299$3@$1@@@@@%198%161$3@$0@@$2@@|@@%105%31%146%206$0@%178%239@%214$2@%315%299$3@$1@@@@@@%198%154%192$0@%239@@@$2@@|@@@@@@%231%315%299$2@$0@@@$1@@|@|@|@"])
  fun op SIGMA_PROPERTY_DISJOINT_WEAK x = x
    val op SIGMA_PROPERTY_DISJOINT_WEAK =
    DT(((("measure",103),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105,124]),
         ("measure",[0,1,19,102])]),["DISK_THM"]),
       [read"%93%72%101%59%101%7%146%129%242%119$2@$0@@@%129%231$0@$1@@%129%313$2@$1@@%129%93%63%146%198$0@$2@@%198%161$3@$0@@$2@@|@@%129%105%31%146%129%206$0@%178%239@$2@@@%129%133$0%130@@%164@@%108%58%228$1$0@@$1%233$0@@@|@@@@%198%154%192$0@%239@@@$2@@|@@%105%31%146%129%206$0@%178%239@$2@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@%198%154%192$0@%239@@@$2@@|@@@@@@@%231%315%299$2@$0@@@$1@@|@|@|@"])
  fun op SIGMA_PROPERTY_DISJOINT x = x
    val op SIGMA_PROPERTY_DISJOINT =
    DT(((("measure",104),
        [("bool",
         [25,26,27,36,43,47,48,51,53,54,56,58,63,71,73,75,76,77,78,80,84,
          93,94,105,124,146]),("combin",[19]),
         ("measure",[0,1,2,3,4,5,67,82,83,84,103]),
         ("pred_set",[14,18,45,144]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,13,108])]),["DISK_THM"]),
       [read"%93%72%101%59%101%7%146%129%242%119$2@$0@@@%129%231$0@$1@@%129%93%63%146%198$0@%214$2@%315%299$3@$1@@@@@%198%161$3@$0@@$2@@|@@%129%105%31%146%129%206$0@%178%239@%214$2@%315%299$3@$1@@@@@@%129%133$0%130@@%164@@%108%58%228$1$0@@$1%233$0@@@|@@@@%198%154%192$0@%239@@@$2@@|@@%105%31%146%129%206$0@%178%239@%214$2@%315%299$3@$1@@@@@@%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@@%198%154%192$0@%239@@@$2@@|@@@@@@%231%315%299$2@$0@@@$1@@|@|@|@"])
  fun op MEASURE_COUNTABLY_ADDITIVE x = x
    val op MEASURE_COUNTABLY_ADDITIVE =
    DT(((("measure",105),
        [("bool",[25,26,27,36,47,48,51,53,54,56,58,63,94,105,124]),
         ("combin",[19]),("measure",[1,15,64,84]),("pred_set",[14,18,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,108])]),["DISK_THM"]),
       [read"%110%53%93%63%105%31%146%129%281$2@@%129%206$0@%178%239@%276$2@@@@%129%108%52%108%58%146%323%141$1@$0@@@%163$2$1@@$2$0@@@|@|@@%133$1@%154%192$0@%239@@@@@@@%322%286%278$2@@$0@@%278$2@$1@@@|@|@|@"])
  fun op MEASURE_SPACE_ADDITIVE x = x
    val op MEASURE_SPACE_ADDITIVE =
    DT(((("measure",106),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[15,54,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%53%146%281$0@@%241$0@@|@"])
  fun op MEASURE_ADDITIVE x = x
    val op MEASURE_ADDITIVE =
    DT(((("measure",107),
        [("bool",[25,56,58,63,105,124]),
         ("measure",[47,106])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%93%79%146%129%281$3@@%129%198$2@%276$3@@@%129%198$1@%276$3@@@%129%163$2@$1@@%133$0@%234$2@$1@@@@@@@%145%278$3@$0@@%293%278$3@$2@@%278$3@$1@@@@|@|@|@|@"])
  fun op MEASURE_COUNTABLE_INCREASING x = x
    val op MEASURE_COUNTABLE_INCREASING =
    DT(((("measure",108),
        [("arithmetic",[22,25]),
         ("bool",
         [14,25,26,27,30,36,43,47,48,51,53,54,56,58,60,63,71,72,76,78,81,
          84,93,94,96,105,124,143,146]),("combin",[8,19]),
         ("measure",[0,1,3,4,15,33,64,84,88,107]),("num",[9]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,33,45,57,66,67,144,244]),("real",[280]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),("seq",[41]),
         ("util_prob",[6,101,108])]),["DISK_THM"]),
       [read"%110%53%93%63%105%31%146%129%281$2@@%129%206$0@%178%239@%276$2@@@@%129%133$0%130@@%164@@%129%108%58%228$1$0@@$1%233$0@@@|@@%133$1@%154%192$0@%239@@@@@@@@%128%286%278$2@@$0@@%278$2@$1@@@|@|@|@"])
  fun op MEASURE_SPACE_REDUCE x = x
    val op MEASURE_SPACE_REDUCE =
    DT(((("measure",109),
        [("bool",[25,51,56]),("measure",[6,7,8]),
         ("pair",[4,5])]),["DISK_THM"]),
       [read"%110%53%143%120%268$0@@%124%276$0@@%278$0@@@@$0@|@"])
  fun op SPACE_SIGMA x = x
    val op SPACE_SIGMA =
    DT(((("measure",110),
        [("bool",[25,56]),("measure",[0,5])]),["DISK_THM"]),
       [read"%93%72%101%7%133%308%299$1@$0@@@$1@|@|@"])
  fun op MONOTONE_CONVERGENCE x = x
    val op MONOTONE_CONVERGENCE =
    DT(((("measure",111),
        [("arithmetic",[14,28]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,60,63,71,72,93,94,
          96,105,124]),("combin",[8]),("measure",[1,15,28,54,108]),
         ("pred_set",[3,10,14,22]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[32]),
         ("util_prob",[6,85])]),["DISK_THM"]),
       [read"%110%53%93%63%105%31%146%129%281$2@@%129%206$0@%178%239@%276$2@@@@%129%108%58%228$1$0@@$1%233$0@@@|@@%133$1@%154%192$0@%239@@@@@@@%128%286%278$2@@$0@@%278$2@$1@@@|@|@|@"])
  fun op SIGMA_REDUCE x = x
    val op SIGMA_REDUCE =
    DT(((("measure",112),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("measure",[26,110]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%93%72%101%7%142%119$1@%315%299$1@$0@@@@%299$1@$0@@|@|@"])
  fun op MEASURABLE_SETS_SUBSET_SPACE x = x
    val op MEASURABLE_SETS_SUBSET_SPACE =
    DT(((("measure",113),
        [("bool",[25,53,58,63,105,124]),
         ("measure",[0,1,2,3,4,15])]),["DISK_THM"]),
       [read"%110%53%93%63%146%129%281$1@@%198$0@%276$1@@@@%228$0@%268$1@@@|@|@"])
  fun op MEASURABLE_DIFF_PROPERTY x = x
    val op MEASURABLE_DIFF_PROPERTY =
    DT(((("measure",114),
        [("bool",
         [25,26,27,36,43,47,48,51,53,54,56,58,63,71,75,78,80,84,93,94,96,
          105,124,146]),("combin",[19]),("measure",[2,83]),
         ("pred_set",[18,21,67]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,84,94])]),["DISK_THM"]),
       [read"%109%10%111%17%92%26%146%129%303$2@@%129%304$1@@%129%196$0@%174%308$2@@%309$1@@@@%97%64%146%202$0@%316$2@@@%198%220$1@$0@@%315$3@@@|@@@@@%97%64%146%202$0@%316$2@@@%133%220$1@%162%309$2@@$0@@@%161%308$3@@%220$1@$0@@@@|@@|@|@|@"])
  fun op MEASURABLE_BIGUNION_PROPERTY x = x
    val op MEASURABLE_BIGUNION_PROPERTY =
    DT(((("measure",115),
        [("bool",[25,36,53,56,58,105,124]),("measure",[83]),
         ("util_prob",[6,92])]),["DISK_THM"]),
       [read"%109%10%111%17%92%26%146%129%303$2@@%129%304$1@@%129%196$0@%174%308$2@@%309$1@@@@%97%64%146%202$0@%316$2@@@%198%220$1@$0@@%315$3@@@|@@@@@%103%20%146%232$0@%316$2@@@%133%220$1@%155$0@@@%154%190%220$1@@$0@@@@|@@|@|@|@"])
  fun op MEASUBABLE_BIGUNION_LEMMA x = x
    val op MEASUBABLE_BIGUNION_LEMMA =
    DT(((("measure",116),
        [("bool",
         [2,13,25,26,27,30,36,47,48,51,52,53,54,55,56,58,63,70,71,72,77,78,
          93,94,96,105,124,146,169]),("combin",[8,19]),("measure",[83]),
         ("pred_set",[3,18,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,67,92,102])]),["DISK_THM"]),
       [read"%109%10%111%17%92%26%146%129%303$2@@%129%304$1@@%129%196$0@%174%308$2@@%309$1@@@@%97%64%146%202$0@%316$2@@@%198%220$1@$0@@%315$3@@@|@@@@@%101%19%146%129%245$0@@%231$0@%190%220$1@@%316$2@@@@@%198%154$0@@%190%220$1@@%316$2@@@@|@@|@|@|@"])
  fun op MEASURABLE_SIGMA_PREIMAGES x = x
    val op MEASURABLE_SIGMA_PREIMAGES =
    DT(((("measure",117),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          93,94,96,105,124,146]),("combin",[19]),
         ("measure",[0,1,2,83,116]),("pred_set",[18,21,67,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,84,87,94])]),["DISK_THM"]),
       [read"%109%10%111%17%92%26%146%129%303$2@@%129%304$1@@%129%196$0@%174%308$2@@%309$1@@@@%97%64%146%202$0@%316$2@@@%198%220$1@$0@@%315$3@@@|@@@@@%303%119%308$2@@%190%220$0@@%316$1@@@@@|@|@|@"])
  fun op IN_MEASURABLE x = x
    val op IN_MEASURABLE =
    DT(((("measure",118),
        [("bool",[25,26,56,58,63,143]),("measure",[21]),("pair",[4]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%109%10%111%17%92%26%131%196$0@%271$2@$1@@@%129%303$2@@%129%304$1@@%129%196$0@%174%308$2@@%309$1@@@@%97%64%146%202$0@%316$2@@@%198%212%220$1@$0@@%308$3@@@%315$3@@@|@@@@@|@|@|@"])
  fun op MEASURABLE_SIGMA x = x
    val op MEASURABLE_SIGMA =
    DT(((("measure",119),
        [("bool",
         [2,15,25,26,27,36,43,47,48,51,53,54,55,56,58,63,71,75,78,80,84,93,
          94,96,99,105,124,143,146,169]),("combin",[19]),
         ("measure",[2,4,30,67,83,87,110,118]),("pair",[4]),
         ("pred_set",[3,6,10,18,45,53,67,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("util_prob",[6,13,67,84,87,92,94])]),["DISK_THM"]),
       [read"%92%26%109%10%103%14%97%73%146%129%303$2@@%129%314$0@$1@@%129%196$3@%174%308$2@@$0@@@%97%64%146%202$0@$2@@%198%212%220$4@$0@@%308$3@@@%315$3@@@|@@@@@%196$3@%271$2@%300$0@$1@@@@|@|@|@|@"])
  fun op MEASURABLE_SUBSET x = x
    val op MEASURABLE_SUBSET =
    DT(((("measure",120),
        [("bool",[25,36,51,53,58,63,105,124]),("measure",[83,118,119]),
         ("pred_set",[18])]),["DISK_THM"]),
       [read"%109%10%111%17%230%271$1@$0@@%271$1@%300%309$0@@%316$0@@@@|@|@"])
  fun op MEASURABLE_LIFT x = x
    val op MEASURABLE_LIFT =
    DT(((("measure",121),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("measure",[120]),("pred_set",[18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%92%26%109%10%111%17%146%196$2@%271$1@$0@@@%196$2@%271$1@%300%309$0@@%316$0@@@@@|@|@|@"])
  fun op IN_MEASURE_PRESERVING x = x
    val op IN_MEASURE_PRESERVING =
    DT(((("measure",122),
        [("bool",[25,26,56,58,63,143]),("measure",[22]),("pair",[4]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%110%55%112%56%92%26%131%196$0@%280$2@$1@@@%129%196$0@%271%119%268$2@@%276$2@@@%121%269$1@@%277$1@@@@@%129%281$2@@%129%282$1@@%97%64%146%202$0@%277$2@@@%145%278$3@%212%220$1@$0@@%268$3@@@@%279$2@$0@@@|@@@@@|@|@|@"])
  fun op MEASURE_PRESERVING_LIFT x = x
    val op MEASURE_PRESERVING_LIFT =
    DT(((("measure",123),
        [("bool",
         [2,13,15,25,26,27,30,36,47,48,51,52,53,54,55,56,58,60,63,71,72,73,
          75,84,93,94,96,99,105,124,143,169]),("combin",[8,19]),
         ("marker",[6]),
         ("measure",[0,1,4,5,6,7,8,26,29,86,104,105,108,109,118,121,122]),
         ("pair",[4]),("pred_set",[3,6,14,18,45,53,58,67,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[9,46]),
         ("util_prob",[6,84,87,92,94,98,99,102])]),["DISK_THM"]),
       [read"%110%55%112%56%103%8%92%26%146%129%281$3@@%129%282$2@@%129%140%277$2@@%316%300%269$2@@$1@@@@%196$0@%280$3@%122%269$2@@%125$1@%279$2@@@@@@@@@%196$0@%280$3@$2@@@|@|@|@|@"])
  fun op MEASURE_PRESERVING_SUBSET x = x
    val op MEASURE_PRESERVING_SUBSET =
    DT(((("measure",124),
        [("bool",[25,26,47,48,53,54,58,63,72,81,96,105,124]),
         ("measure",[123]),("pred_set",[18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%55%112%56%103%8%146%129%281$2@@%129%282$1@@%140%277$1@@%316%300%269$1@@$0@@@@@@%230%280$2@%122%269$1@@%125$0@%279$1@@@@@%280$2@$1@@@|@|@|@"])
  fun op MEASURABLE_I x = x
    val op MEASURABLE_I =
    DT(((("measure",125),
        [("bool",[25,26,27,36,48,51,53,54,58,63,83,105,124,169]),
         ("combin",[19]),("measure",[2,3,4,118]),("pred_set",[3,18,45]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("util_prob",[6,95])]),["DISK_THM"]),
       [read"%109%10%146%303$0@@%195%185@%270$0@$0@@@|@"])
  fun op MEASURABLE_COMP x = x
    val op MEASURABLE_COMP =
    DT(((("measure",126),
        [("bool",[25,26,27,36,48,51,53,54,58,63,105,124,169]),
         ("combin",[8]),("measure",[83,118]),("pred_set",[3,45]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,84,93])]),["DISK_THM"]),
       [read"%92%26%96%35%109%10%111%17%113%22%146%129%196$4@%271$2@$1@@@%201$3@%275$1@$0@@@@%197%284$3@$4@@%272$2@$0@@@|@|@|@|@|@"])
  fun op MEASURABLE_COMP_STRONG x = x
    val op MEASURABLE_COMP_STRONG =
    DT(((("measure",127),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,77,78,84,93,94,
          96,105,124,146,169]),("combin",[8,9,19]),("measure",[2,83,118]),
         ("pred_set",[3,18,45,144]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,83,84])]),["DISK_THM"]),
       [read"%92%26%96%35%109%10%111%17%113%22%146%129%196$4@%271$2@$1@@@%129%305$0@@%129%201$3@%176%309$1@@%310$0@@@@%99%83%146%203$0@%317$1@@@%202%213%222$4@$0@@%186$5@%308$3@@@@%316$2@@@|@@@@@%197%284$3@$4@@%272$2@$0@@@|@|@|@|@|@"])
  fun op MEASURABLE_COMP_STRONGER x = x
    val op MEASURABLE_COMP_STRONGER =
    DT(((("measure",128),
        [("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,77,78,84,93,94,96,105,124,
          146,169]),("combin",[8,9,19]),("measure",[2,83,118]),
         ("pred_set",[3,18,45,144]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,83,84])]),["DISK_THM"]),
       [read"%92%26%96%35%109%10%111%17%113%22%97%78%146%129%196$5@%271$3@$2@@@%129%305$1@@%129%201$4@%176%309$2@@%310$1@@@@%129%229%186$5@%308$3@@@$0@@%99%65%146%203$0@%317$2@@@%202%213%222$5@$0@@$1@@%316$3@@@|@@@@@@%197%284$4@$5@@%272$3@$1@@@|@|@|@|@|@|@"])
  fun op MEASURABLE_UP_LIFT x = x
    val op MEASURABLE_UP_LIFT =
    DT(((("measure",129),
        [("bool",[25,36,51,53,58,63,105,124]),("measure",[0,1,118]),
         ("pred_set",[18]),("util_prob",[6])]),["DISK_THM"]),
       [read"%93%72%101%7%101%13%111%21%92%26%146%129%196$0@%271%119$4@$3@@$1@@@%129%303%119$4@$2@@@%231$3@$2@@@@%196$0@%271%119$4@$2@@$1@@@|@|@|@|@|@"])
  fun op MEASURABLE_UP_SUBSET x = x
    val op MEASURABLE_UP_SUBSET =
    DT(((("measure",130),
        [("bool",[25,36,51,58,63,105,124]),("measure",[129]),
         ("pred_set",[18])]),["DISK_THM"]),
       [read"%93%72%101%7%101%13%111%21%146%129%231$2@$1@@%303%119$3@$1@@@@%230%271%119$3@$2@@$0@@%271%119$3@$1@@$0@@@|@|@|@|@"])
  fun op MEASURABLE_UP_SIGMA x = x
    val op MEASURABLE_UP_SIGMA =
    DT(((("measure",131),
        [("bool",
         [25,26,43,47,48,51,53,54,58,63,71,75,78,80,84,93,94,96,105,124,
          146]),("measure",[67,81,83,110,118]),("pred_set",[18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%10%111%17%230%271$1@$0@@%271%299%308$1@@%315$1@@@$0@@|@|@"])
  fun op MEASURE_PRESERVING_UP_LIFT x = x
    val op MEASURE_PRESERVING_UP_LIFT =
    DT(((("measure",132),
        [("bool",[25,26,36,51,53,56,58,63,105,124,143]),
         ("measure",[6,7,8,22,129]),("pair",[4]),
         ("pred_set",[6,18])]),["DISK_THM"]),
       [read"%110%55%112%56%92%26%146%129%281$2@@%129%196$0@%280%120%268$2@@%124%7@%278$2@@@@$1@@@%129%303%119%268$2@@%276$2@@@@%231%7@%276$2@@@@@@%196$0@%280$2@$1@@@|@|@|@"])
  fun op MEASURE_PRESERVING_UP_SUBSET x = x
    val op MEASURE_PRESERVING_UP_SUBSET =
    DT(((("measure",133),
        [("bool",
         [25,26,43,47,48,53,54,58,63,71,75,78,80,84,94,105,124,146]),
         ("measure",[132]),("pred_set",[18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%55%112%56%146%129%281$1@@%129%231%7@%276$1@@@%303%119%268$1@@%276$1@@@@@@%230%280%120%268$1@@%124%7@%278$1@@@@$0@@%280$1@$0@@@|@|@"])
  fun op MEASURE_PRESERVING_UP_SIGMA x = x
    val op MEASURE_PRESERVING_UP_SIGMA =
    DT(((("measure",134),
        [("bool",[51,58,63,105,124]),
         ("measure",[0,1,6,7,67,81,83,112,118,122,132]),
         ("pred_set",[18])]),["DISK_THM"]),
       [read"%110%55%112%56%101%7%146%129%281$2@@%138%276$2@@%315%299%268$2@@$0@@@@@%230%280%120%268$2@@%124$0@%278$2@@@@$1@@%280$2@$1@@@|@|@|@"])
  fun op MEASURABLE_PROD_SIGMA x = x
    val op MEASURABLE_PROD_SIGMA =
    DT(((("measure",135),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,74,75,77,78,80,
          84,93,94,96,105,124,146,169]),("combin",[5,8]),
         ("measure",[0,1,2,4,32,83,118,119]),
         ("pred_set",[3,18,45,268,278]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,103,104])]),["DISK_THM"]),
       [read"%109%10%111%11%113%12%95%28%146%129%303$3@@%129%196%287%173@$0@@%271$3@$2@@@%197%288%227@$0@@%272$3@$1@@@@@%200$0@%274$3@%302%160%309$2@@%310$1@@@%292%316$2@@%317$1@@@@@@|@|@|@|@"])
  fun op MEASURABLE_RANGE_REDUCE x = x
    val op MEASURABLE_RANGE_REDUCE =
    DT(((("measure",136),
        [("bool",[25,26,36,51,53,54,55,58,63,105,124]),
         ("measure",[0,1,69,118]),("pred_set",[45,144,356]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("util_prob",[6,13])]),["DISK_THM"]),
       [read"%110%53%92%26%97%64%146%129%281$2@@%129%196$1@%271%119%268$2@@%276$2@@@%121$0@%219$0@@@@@%323%135$0@%165@@@@@%196$1@%271%119%268$2@@%276$2@@@%121%213$0@%186$1@%268$2@@@@%219%213$0@%186$1@%268$2@@@@@@@@|@|@|@"])
  fun op MEASURABLE_POW_TO_POW x = x
    val op MEASURABLE_POW_TO_POW =
    DT(((("measure",137),
        [("bool",[25,36,51,53,58,63,105,124]),("measure",[0,1,15,69,118]),
         ("pred_set",[14,18,24,45,356]),("util_prob",[6])]),["DISK_THM"]),
       [read"%110%53%92%26%146%129%281$1@@%138%276$1@@%218%268$1@@@@@%196$0@%271%119%268$1@@%276$1@@@%121%236@%219%236@@@@@|@|@"])
  fun op MEASURABLE_POW_TO_POW_IMAGE x = x
    val op MEASURABLE_POW_TO_POW_IMAGE =
    DT(((("measure",138),
        [("bool",[25,26,27,51,53,54,56,58,63,105,124]),
         ("measure",[136,137]),("pred_set",[54]),
         ("util_prob",[106])]),["DISK_THM"]),
       [read"%110%53%92%26%146%129%281$1@@%138%276$1@@%218%268$1@@@@@%196$0@%271%119%268$1@@%276$1@@@%121%186$0@%268$1@@@%219%186$0@%268$1@@@@@@@|@|@"])
  fun op MEASURE_SPACE_SUBSET x = x
    val op MEASURE_SPACE_SUBSET =
    DT(((("measure",139),
        [("bool",[2,15,25,26,51,53,54,56,58,63,99,100,105,124]),
         ("measure",[6,7,8,9,11,15,69]),("pred_set",[19,356]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%93%63%93%71%102%51%146%129%228$1@$2@@%281%120$2@%124%218$2@@$0@@@@@%281%120$1@%124%218$1@@$0@@@@|@|@|@"])
  fun op STRONG_MEASURE_SPACE_SUBSET x = x
    val op STRONG_MEASURE_SPACE_SUBSET =
    DT(((("measure",140),
        [("bool",[25,56,63]),("measure",[6,7,8,66,69])]),["DISK_THM"]),
       [read"%110%70%93%71%146%129%228$0@%268$1@@@%129%281$1@@%231%218$0@@%276$1@@@@@%281%120$0@%124%218$0@@%278$1@@@@@|@|@"])
  fun op MEASURE_REAL_SUM_IMAGE x = x
    val op MEASURE_REAL_SUM_IMAGE =
    DT(((("measure",141),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,55,56,58,63,72,83,96,99,100,101,
          105,124,145,169]),("combin",[3,5]),
         ("measure",[1,4,15,33,88,107]),
         ("pred_set",[3,58,67,80,104,131,137,186]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%93%63%146%129%281$1@@%129%198$0@%276$1@@@%129%88%80%146%193$0@$1@@%198%209$0@%164@@%276$2@@@|@@%169$0@@@@@%145%278$1@$0@@%225%80%278$2@%209$0@%164@@|@$0@@@|@|@"])
  fun op SIGMA_POW x = x
    val op SIGMA_POW =
    DT(((("measure",142),
        [("bool",[2,15,25,26,36,51,53,54,56,58,63,84,99,100,105,124]),
         ("measure",[5,69]),("pair",[4]),("pred_set",[3,6,18,20,258,356]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%93%63%142%299$0@%218$0@@@%119$0@%218$0@@@|@"])
  fun op finite_additivity_sufficient_for_finite_spaces x = x
    val op finite_additivity_sufficient_for_finite_spaces =
    DT(((("measure",143),
        [("arithmetic",[22,24,25,27,46,71,93,143,147,172,173,176,177,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,55,56,58,63,83,96,99,101,104,
          105,124]),("combin",[8]),
         ("measure",[2,6,7,8,9,10,11,15,26,49,54,83]),("num",[9]),
         ("numeral",[3,5,8]),
         ("pred_set",[3,10,14,18,147,192,246,296,356,364]),
         ("prim_rec",[6]),("real",[27,86,280,333]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[1,41]),
         ("util_prob",[6,110,115])]),["DISK_THM"]),
       [read"%109%69%102%51%146%129%303$1@@%129%169%308$1@@@%129%291%120%308$1@@%124%315$1@@$0@@@@%241%120%308$1@@%124%315$1@@$0@@@@@@@%281%120%308$1@@%124%315$1@@$0@@@@|@|@"])
  fun op finite_additivity_sufficient_for_finite_spaces2 x = x
    val op finite_additivity_sufficient_for_finite_spaces2 =
    DT(((("measure",144),
        [("bool",[25,53,58,63,105,124]),
         ("measure",[0,1,109,143])]),["DISK_THM"]),
       [read"%110%53%146%129%303%119%268$0@@%276$0@@@@%129%169%268$0@@@%129%291$0@@%241$0@@@@@%281$0@@|@"])
  fun op IMAGE_SING x = x
    val op IMAGE_SING =
    DT(((("measure",145),
        [("bool",[25,26,36,56,143]),
         ("pred_set",[3,131,144])]),["DISK_THM"]),
       [read"%92%26%88%80%135%186$1@%209$0@%164@@@%210$1$0@@%165@@|@|@"])
  fun op SUBSET_BIGINTER x = x
    val op SUBSET_BIGINTER =
    DT(((("measure",146),
        [("bool",[25,26,53,54,58,63,83,105,124]),("pred_set",[18,258]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%93%3%101%2%131%228$1@%152$0@@@%93%4%146%198$0@$1@@%228$2@$0@@|@@|@|@"])
  fun op MEASURE_SPACE_INCREASING x = x
    val op MEASURE_SPACE_INCREASING =
    DT(((("measure",147),
        [("bool",[25,51,63,105]),("measure",[4,15,62,106])]),["DISK_THM"]),
       [read"%110%53%146%281$0@@%263$0@@|@"])
  fun op MEASURE_SPACE_POSITIVE x = x
    val op MEASURE_SPACE_POSITIVE =
    DT(((("measure",148),
        [("bool",[25,26,47,48,53,54,63,71,94]),("measure",[15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%110%53%146%281$0@@%291$0@@|@"])
  fun op MEASURE_SPACE_INTER x = x
    val op MEASURE_SPACE_INTER =
    DT(((("measure",149),
        [("bool",[2,15,25,26,53,54,58,63,75,84,99]),
         ("measure",[1,4,15,32]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%146%129%281$2@@%129%198$1@%276$2@@@%198$0@%276$2@@@@@%198%212$1@$0@@%276$2@@@|@|@|@"])
  fun op MEASURE_SPACE_UNION x = x
    val op MEASURE_SPACE_UNION =
    DT(((("measure",150),
        [("bool",[2,15,25,26,53,54,58,63,75,84,99]),
         ("measure",[1,4,15,31]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%146%129%281$2@@%129%198$1@%276$2@@@%198$0@%276$2@@@@@%198%234$1@$0@@%276$2@@@|@|@|@"])
  fun op MEASURE_SPACE_DIFF x = x
    val op MEASURE_SPACE_DIFF =
    DT(((("measure",151),
        [("bool",[2,15,25,26,53,54,58,63,75,84,99]),
         ("measure",[1,4,15,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%110%53%93%63%93%77%146%129%281$2@@%129%198$1@%276$2@@@%198$0@%276$2@@@@@%198%161$1@$0@@%276$2@@@|@|@|@"])
  fun op MEASURE_COMPL_SUBSET x = x
    val op MEASURE_COMPL_SUBSET =
    DT(((("measure",152),
        [("arithmetic",[46,60,79,207]),
         ("bool",[2,15,25,26,27,51,53,54,56,58,63,75,84,96,99,105,124]),
         ("measure",[4,15,47,63,151]),("numeral",[3,5,17,18]),
         ("pred_set",[3,10,18,33,45,57,67]),
         ("real",
         [4,6,7,8,12,17,18,20,22,27,28,38,39,40,46,59,60,61,62,71,131,307,
          308,309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%110%53%93%63%146%129%281$1@@%129%198$0@%276$1@@@%129%198%77@%276$1@@@%228%77@$0@@@@@%145%278$1@%161$0@%77@@@%298%278$1@$0@@%278$1@%77@@@@|@|@"])
  fun op MEASURE_SPACE_BIGUNION x = x
    val op MEASURE_SPACE_BIGUNION =
    DT(((("measure",153),
        [("bool",[2,15,25,26,53,54,58,63,74,75,84,99,100]),
         ("measure",[0,1,15,90]),("pred_set",[14]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%110%53%105%68%146%129%281$1@@%108%58%198$1$0@@%276$2@@|@@@%198%154%192$0@%239@@@%276$1@@@|@|@"])
  fun op MEASURE_SPACE_IN_MSPACE x = x
    val op MEASURE_SPACE_IN_MSPACE =
    DT(((("measure",154),
        [("bool",[2,15,25,26,52,53,54,58,63,73,75,84,99,100]),
         ("measure",[0,1,2,3,4,15]),("pred_set",[18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%93%0%146%129%281$1@@%198$0@%276$1@@@@%88%80%146%193$0@$1@@%193$0@%268$2@@@|@@|@|@"])
  fun op MEASURE_SPACE_SUBSET_MSPACE x = x
    val op MEASURE_SPACE_SUBSET_MSPACE =
    DT(((("measure",155),
        [("bool",[25,53,58,63,105,124]),
         ("measure",[0,1,2,3,4,15])]),["DISK_THM"]),
       [read"%93%0%110%53%146%129%281$0@@%198$1@%276$0@@@@%228$1@%268$0@@@|@|@"])
  fun op MEASURE_SPACE_EMPTY_MEASURABLE x = x
    val op MEASURE_SPACE_EMPTY_MEASURABLE =
    DT(((("measure",156),
        [("bool",[25,53,58,63,105,124]),
         ("measure",[0,1,3,4,15])]),["DISK_THM"]),
       [read"%110%53%146%281$0@@%198%164@%276$0@@@|@"])
  fun op MEASURE_SPACE_MSPACE_MEASURABLE x = x
    val op MEASURE_SPACE_MSPACE_MEASURABLE =
    DT(((("measure",157),
        [("bool",[25,53,54,58,63,105,124]),("measure",[0,1,3,4,15]),
         ("pred_set",[69]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%146%281$0@@%198%268$0@@%276$0@@@|@"])
  fun op SIGMA_ALGEBRA_FN_BIGINTER x = x
    val op SIGMA_ALGEBRA_FN_BIGINTER =
    DT(((("measure",158),
        [("bool",[14,25,26,27,36,51,52,53,54,56,58,63,105,124]),
         ("combin",[5,19,20]),("measure",[2,83]),
         ("pred_set",[14,15,18,144,151]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,67,109,121])]),["DISK_THM"]),
       [read"%109%10%146%303$0@@%129%313%308$0@@%315$0@@@%129%198%164@%315$0@@@%129%93%63%146%198$0@%315$1@@@%198%161%308$1@@$0@@%315$1@@@|@@%105%31%146%206$0@%178%239@%315$1@@@@%198%152%192$0@%239@@@%315$1@@@|@@@@@|@"])
  fun op MEASURE_SPACE_BIGINTER x = x
    val op MEASURE_SPACE_BIGINTER =
    DT(((("measure",159),
        [("bool",[2,15,25,26,53,54,58,63,74,75,83,99,100]),
         ("measure",[0,1,15,158]),("pred_set",[14]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%110%53%105%68%146%129%281$1@@%108%58%198$1$0@@%276$2@@|@@@%198%152%192$0@%239@@@%276$1@@@|@|@"])
  fun op MONOTONE_CONVERGENCE2 x = x
    val op MONOTONE_CONVERGENCE2 =
    DT(((("measure",160),
        [("bool",[2,15,25,26,53,54,55,63]),("measure",[111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%110%53%105%31%146%129%281$1@@%129%206$0@%178%239@%276$1@@@@%108%58%228$1$0@@$1%233$0@@@|@@@@%128%286%278$1@@$0@@%278$1@%154%192$0@%239@@@@@|@|@"])
  fun op MONOTONE_CONVERGENCE_BIGINTER x = x
    val op MONOTONE_CONVERGENCE_BIGINTER =
    DT(((("measure",161),
        [("bool",
         [2,14,15,25,26,27,35,36,48,51,53,54,55,56,58,60,63,74,75,83,84,99,
          100,105,124]),("combin",[0,5]),("marker",[6]),
         ("measure",[151,152,153,159,160]),("num",[9]),
         ("pred_set",[3,14,15,18,19,20,67,74,144,151,252]),
         ("real",[5,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),("seq",[2,7]),
         ("util_prob",[6,85,119,121])]),["DISK_THM"]),
       [read"%110%53%93%63%105%31%146%129%281$2@@%129%206$0@%178%239@%276$2@@@@%129%108%58%228$1%233$0@@@$1$0@@|@@%133$1@%152%192$0@%239@@@@@@@%128%286%278$2@@$0@@%278$2@$1@@@|@|@|@"])
  fun op MONOTONE_CONVERGENCE_BIGINTER2 x = x
    val op MONOTONE_CONVERGENCE_BIGINTER2 =
    DT(((("measure",162),
        [("bool",[2,15,25,26,53,54,55,63]),("measure",[161]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%110%53%105%31%146%129%281$1@@%129%206$0@%178%239@%276$1@@@@%108%58%228$1%233$0@@@$1$0@@|@@@@%128%286%278$1@@$0@@%278$1@%152%192$0@%239@@@@@|@|@"])
  fun op MEASURE_SPACE_RESTRICTED x = x
    val op MEASURE_SPACE_RESTRICTED =
    DT(((("measure",163),
        [("bool",
         [2,15,25,26,27,36,48,51,53,54,55,56,58,63,73,75,84,96,99,100,105,
          124]),
         ("measure",
         [0,1,2,3,4,6,7,8,9,11,15,84,148,149,150,151,155,156,157]),
         ("pred_set",[3,14,18,45,50,53,55,67,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,117])]),["DISK_THM"]),
       [read"%110%53%93%63%146%129%281$1@@%198$0@%276$1@@@@%281%120$0@%124%189%77%212$1@$0@|@%276$1@@@%278$1@@@@@|@|@"])
  fun op MEASURE_SPACE_CMUL x = x
    val op MEASURE_SPACE_CMUL =
    DT(((("measure",164),
        [("bool",
         [2,14,15,25,26,36,51,53,54,56,58,63,74,75,84,99,100,105,124]),
         ("combin",[5]),("measure",[6,7,8,9,11,15]),("real",[40,71,425]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("seq",[55])]),["DISK_THM"]),
       [read"%110%53%114%23%146%129%281$1@@%295%297%130@@$0@@@%281%120%268$1@@%124%276$1@@%6%296$1@%278$2@$0@@|@@@@|@|@"])
  fun op BIGUNION_IMAGE_Q x = x
    val op BIGUNION_IMAGE_Q =
    DT(((("measure",165),
        [("bool",[25,53,54,58,63,105,124]),("extreal",[363]),
         ("measure",[83]),("pred_set",[18,144]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("util_prob",[6,67])]),["DISK_THM"]),
       [read"%109%10%100%30%146%129%303$1@@%205$0@%177%224@%315$1@@@@@%198%154%187$0@%224@@@%315$1@@@|@|@"])
  fun op SIGMA_ALGEBRA_BOREL x = x
    val op SIGMA_ALGEBRA_BOREL =
    DT(((("measure",167),
        [("bool",[25,36,53,58,63,105,124]),("measure",[2,67,166]),
         ("pred_set",[24])]),["DISK_THM"]), [read"%306%158@"])
  fun op MEASURABLE_BOREL x = x
    val op MEASURABLE_BOREL =
    DT(((("measure",168),
        [("bool",[14,25,26,36,51,53,54,55,56,58,63,105,124]),
         ("combin",[1,3]),("measure",[2,82,110,118,119,166,167]),
         ("pred_set",[14,24,144]),("sat",[1,3,7,17,18]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%221$2@%180%81%116$0@%253$0@$1@@|@@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL x = x
    val op IN_MEASURABLE_BOREL =
    DT(((("measure",169),
        [("bool",[25,26,36,56,58,63,143]),("measure",[168]),("pair",[4]),
         ("pred_set",[3,6]),("util_prob",[84])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%179%80%115$0@%253$3$0@@$1@@|@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_NEGINF x = x
    val op IN_MEASURABLE_BOREL_NEGINF =
    DT(((("measure",170),
        [("bool",[2,15,25,26,27,36,48,51,53,54,58,63,75,105,124,143]),
         ("extreal",[17,33,39,80,101,173,259]),("measure",[158,169]),
         ("pair",[4]),("pred_set",[3,6,14,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,86])]),["DISK_THM"]),
       [read"%94%27%109%10%146%199$1@%273$0@%158@@@%198%212%179%80%115$0@%132$2$0@@%216@@|@@%308$0@@@%315$0@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT1 x = x
    val op IN_MEASURABLE_BOREL_ALT1 =
    DT(((("measure",171),
        [("bool",
         [2,14,15,25,26,36,51,52,53,54,56,58,63,73,75,84,99,100,105,124,
          143]),("combin",[1,3,5,19,20]),("extreal",[33]),
         ("measure",[3,4,169]),("pair",[4]),("pred_set",[3,6,14,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,79,123,124])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%179%80%115$0@%252$1@$3$0@@@|@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT2 x = x
    val op IN_MEASURABLE_BOREL_ALT2 =
    DT(((("measure",172),
        [("arithmetic",[24,25,71,143,173,176,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,48,51,52,53,54,55,56,58,60,63,64,73,75,83,
          84,96,99,100,104,105,124,129,143,147]),
         ("combin",[0,1,3,5,19,20]),
         ("extreal",[17,24,32,33,66,68,69,76,79,80,108,142,259]),
         ("measure",[3,4,29,85,158,169,170]),("numeral",[3,6,7,8]),
         ("pair",[4]),("pred_set",[3,6,14,45,53,54,67,367,368]),
         ("real",
         [5,13,22,27,40,58,60,92,94,129,130,153,158,162,204,218,243,257,
          407,420,421,425,435]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[1,2,3,7,37,71]),("util_prob",[6,85,86])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%179%80%115$0@%252$3$0@@$1@@|@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT3 x = x
    val op IN_MEASURABLE_BOREL_ALT3 =
    DT(((("measure",173),
        [("bool",
         [2,14,15,25,26,36,51,52,53,54,56,58,63,73,75,84,99,100,105,124,
          143]),("combin",[1,3,5,19,20]),("extreal",[33]),
         ("measure",[3,4,172]),("pair",[4]),("pred_set",[3,6,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[79,123,124])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%179%80%115$0@%253$1@$3$0@@@|@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT4 x = x
    val op IN_MEASURABLE_BOREL_ALT4 =
    DT(((("measure",174),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,75,84,99,105,124,143]),
         ("combin",[1,3,5]),("extreal",[79]),("measure",[4,32,169,171]),
         ("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%91%24%198%212%179%80%115$0@%129%252$2@$4$0@@@%253$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT5 x = x
    val op IN_MEASURABLE_BOREL_ALT5 =
    DT(((("measure",175),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,75,84,99,105,124,143]),
         ("combin",[1,3,5]),("extreal",[79]),
         ("measure",[4,32,169,172,173]),("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%91%24%198%212%179%80%115$0@%129%253$2@$4$0@@@%252$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT6 x = x
    val op IN_MEASURABLE_BOREL_ALT6 =
    DT(((("measure",176),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,75,84,99,105,124,143]),
         ("combin",[1,3,5]),("extreal",[79]),
         ("measure",[4,32,169,171,172]),("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%109%10%131%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%91%24%198%212%179%80%115$0@%129%252$2@$4$0@@@%252$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT7 x = x
    val op IN_MEASURABLE_BOREL_ALT7 =
    DT(((("measure",177),
        [("bool",[2,14,15,25,26,27,36,48,53,54,56,58,63,75,84,99,143]),
         ("combin",[1,3,5]),("measure",[4,32,169,173]),("pair",[4]),
         ("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%109%10%146%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%91%24%198%212%179%80%115$0@%129%253$2@$4$0@@@%253$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT8 x = x
    val op IN_MEASURABLE_BOREL_ALT8 =
    DT(((("measure",178),
        [("bool",[14,25,26,36,51,53,54,56,58,63,105,124,143]),
         ("combin",[1,3,5]),("extreal",[86]),("measure",[176]),
         ("pair",[4]),("pred_set",[3,6]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%109%10%146%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%179%80%115$0@%132$3$0@@$1@@|@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALT9 x = x
    val op IN_MEASURABLE_BOREL_ALT9 =
    DT(((("measure",179),
        [("bool",
         [2,14,15,25,26,27,36,48,51,52,53,54,55,56,58,63,73,75,83,84,96,99,
          100,105,124,143]),("combin",[1,3,5]),("measure",[3,4,169,178]),
         ("pair",[4]),("pred_set",[3,6,14,45,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%94%27%109%10%146%199$1@%273$0@%158@@@%129%303$0@@%129%199$1@%175%308$0@@%237@@@%91%18%198%212%179%80%115$0@%323%132$3$0@@$1@@@|@@%308$1@@@%315$1@@|@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALL x = x
    val op IN_MEASURABLE_BOREL_ALL =
    DT(((("measure",180),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,75,83,84,99,100]),
         ("combin",[1,3,5]),
         ("measure",[169,171,172,173,174,175,176,177,178,179]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%94%27%109%10%146%199$1@%273$0@%158@@@%129%91%18%198%212%179%80%115$0@%253$3$0@@$1@@|@@%308$1@@@%315$1@@|@@%129%91%18%198%212%179%80%115$0@%252$1@$3$0@@@|@@%308$1@@@%315$1@@|@@%129%91%18%198%212%179%80%115$0@%252$3$0@@$1@@|@@%308$1@@@%315$1@@|@@%129%91%18%198%212%179%80%115$0@%253$1@$3$0@@@|@@%308$1@@@%315$1@@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%253$2@$4$0@@@%253$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%252$2@$4$0@@@%253$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%253$2@$4$0@@@%252$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%252$2@$4$0@@@%252$4$0@@$1@@@|@@%308$2@@@%315$2@@|@|@@%129%91%18%198%212%179%80%115$0@%323%132$3$0@@$1@@@|@@%308$1@@@%315$1@@|@@%91%18%198%212%179%80%115$0@%132$3$0@@$1@@|@@%308$1@@@%315$1@@|@@@@@@@@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_ALL_MEASURE x = x
    val op IN_MEASURABLE_BOREL_ALL_MEASURE =
    DT(((("measure",181),
        [("bool",[14,25,26,36,53,54,56,58,63,73,74,75,83,100]),
         ("combin",[1,3,5]),("measure",[0,1,180]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%110%53%146%199$1@%273%119%268$0@@%276$0@@@%158@@@%129%91%18%198%212%179%80%115$0@%253$3$0@@$1@@|@@%268$1@@@%276$1@@|@@%129%91%18%198%212%179%80%115$0@%252$1@$3$0@@@|@@%268$1@@@%276$1@@|@@%129%91%18%198%212%179%80%115$0@%252$3$0@@$1@@|@@%268$1@@@%276$1@@|@@%129%91%18%198%212%179%80%115$0@%253$1@$3$0@@@|@@%268$1@@@%276$1@@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%253$2@$4$0@@@%253$4$0@@$1@@@|@@%268$2@@@%276$2@@|@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%252$2@$4$0@@@%253$4$0@@$1@@@|@@%268$2@@@%276$2@@|@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%253$2@$4$0@@@%252$4$0@@$1@@@|@@%268$2@@@%276$2@@|@|@@%129%91%18%91%24%198%212%179%80%115$0@%129%252$2@$4$0@@@%252$4$0@@$1@@@|@@%268$2@@@%276$2@@|@|@@%129%91%18%198%212%179%80%115$0@%132$3$0@@$1@@|@@%268$1@@@%276$1@@|@@%91%18%198%212%179%80%115$0@%323%132$3$0@@$1@@@|@@%268$1@@@%276$1@@|@@@@@@@@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_LT x = x
    val op IN_MEASURABLE_BOREL_LT =
    DT(((("measure",182),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,55,56,58,63,73,74,75,83,100,105,
          124,143]),("combin",[1,3,5]),("extreal",[66,84,373,378]),
         ("measure",[4,32,165,169,180]),("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,85])]),["DISK_THM"]),
       [read"%94%27%94%34%109%10%146%129%199$2@%273$0@%158@@@%199$1@%273$0@%158@@@@%198%212%179%80%115$0@%253$3$0@@$2$0@@@|@@%308$0@@@%315$0@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_LE x = x
    val op IN_MEASURABLE_BOREL_LE =
    DT(((("measure",183),
        [("bool",
         [2,14,15,25,26,27,36,48,51,52,53,54,56,58,63,73,75,84,96,99,100,
          105,143]),("combin",[1,3,5]),("extreal",[33]),
         ("measure",[3,4,169,182]),("pair",[4]),("pred_set",[3,6,45,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%94%34%109%10%146%129%199$2@%273$0@%158@@@%199$1@%273$0@%158@@@@%198%212%179%80%115$0@%252$3$0@@$2$0@@@|@@%308$0@@@%315$0@@@|@|@|@"])
  fun op SPACE_BOREL x = x
    val op SPACE_BOREL =
    DT(((("measure",184),
        [("bool",[14,25,26,36,53,54,56,63]),("combin",[1,3,5,19,20]),
         ("measure",[0,5,166]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%136%311%158@@%237@"])
  fun op BOREL_MEASURABLE_SETS1 x = x
    val op BOREL_MEASURABLE_SETS1 =
    DT(((("measure",185),
        [("bool",[14,25,26,36,51,53,54,55,56,63]),("combin",[1,3]),
         ("measure",[82,166]),("pred_set",[14,144]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%91%18%204%180%81%116$0@%253$0@$1@@|@@%318%158@@|@"])
  fun op BOREL_MEASURABLE_SETS2 x = x
    val op BOREL_MEASURABLE_SETS2 =
    DT(((("measure",186),
        [("bool",
         [2,14,15,25,26,36,51,52,53,54,56,58,63,73,75,84,99,100,143]),
         ("combin",[1,3,5,19,20]),("extreal",[33]),
         ("measure",[3,4,167,184,185]),("pair",[4]),
         ("pred_set",[3,6,14,66]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%204%180%81%116$0@%252$1@$0@@|@@%318%158@@|@"])
  fun op BOREL_MEASURABLE_SETS3 x = x
    val op BOREL_MEASURABLE_SETS3 =
    DT(((("measure",187),
        [("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,60,63,64,73,75,84,99,
          105,124,129,143,147]),("combin",[0,5,19,20]),
         ("extreal",
         [14,17,24,32,33,39,66,68,76,79,80,101,108,142,173,259]),
         ("measure",[4,29,158,167,184,185]),("numeral",[3,6]),("pair",[4]),
         ("pred_set",[3,6,14,368]),
         ("real",[27,58,130,204,257,407,420,421,425]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[2,3,37,71]),("util_prob",[6,86])]),["DISK_THM"]),
       [read"%91%18%204%180%81%116$0@%252$0@$1@@|@@%318%158@@|@"])
  fun op BOREL_MEASURABLE_SETS4 x = x
    val op BOREL_MEASURABLE_SETS4 =
    DT(((("measure",188),
        [("bool",
         [2,14,15,25,26,36,51,52,53,54,56,58,63,73,75,84,99,100,143]),
         ("combin",[1,3,5,19,20]),("extreal",[33]),
         ("measure",[3,4,167,184,187]),("pair",[4]),
         ("pred_set",[3,6,14,66]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%204%180%81%116$0@%253$1@$0@@|@@%318%158@@|@"])
  fun op BOREL_MEASURABLE_SETS5 x = x
    val op BOREL_MEASURABLE_SETS5 =
    DT(((("measure",189),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,75,84,99,143]),
         ("combin",[1,3,5,19,20]),("measure",[4,32,167,185,186]),
         ("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%91%24%204%180%81%116$0@%129%252$2@$0@@%253$0@$1@@@|@@%318%158@@|@|@"])
  fun op BOREL_MEASURABLE_SETS6 x = x
    val op BOREL_MEASURABLE_SETS6 =
    DT(((("measure",190),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,75,84,99,143]),
         ("combin",[1,3,5,19,20]),("measure",[4,32,167,187,188]),
         ("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%91%24%204%180%81%116$0@%129%253$2@$0@@%252$0@$1@@@|@@%318%158@@|@|@"])
  fun op BOREL_MEASURABLE_SETS7 x = x
    val op BOREL_MEASURABLE_SETS7 =
    DT(((("measure",191),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,75,84,99,143]),
         ("combin",[1,3,5,19,20]),("measure",[4,32,167,186,187]),
         ("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%91%24%204%180%81%116$0@%129%252$2@$0@@%252$0@$1@@@|@@%318%158@@|@|@"])
  fun op BOREL_MEASURABLE_SETS8 x = x
    val op BOREL_MEASURABLE_SETS8 =
    DT(((("measure",192),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,75,84,99,143]),
         ("combin",[1,3,5,19,20]),("measure",[4,32,167,185,188]),
         ("pair",[4]),("pred_set",[3,6,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%91%24%204%180%81%116$0@%129%253$2@$0@@%253$0@$1@@@|@@%318%158@@|@|@"])
  fun op BOREL_MEASURABLE_SETS9 x = x
    val op BOREL_MEASURABLE_SETS9 =
    DT(((("measure",193),
        [("bool",[25,26,36,56,58,63,143]),("extreal",[86]),
         ("measure",[191]),("pair",[4]),
         ("pred_set",[3,6,131])]),["DISK_THM"]),
       [read"%91%18%204%211$0@%166@@%318%158@@|@"])
  fun op BOREL_MEASURABLE_SETS10 x = x
    val op BOREL_MEASURABLE_SETS10 =
    DT(((("measure",194),
        [("bool",
         [2,14,15,25,26,36,51,52,53,54,56,58,63,73,75,84,99,100,143]),
         ("combin",[1,3,5]),("measure",[3,4,167,184,193]),("pair",[4]),
         ("pred_set",[3,6,14,67,131]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%91%18%204%180%81%116$0@%323%132$0@$1@@@|@@%318%158@@|@"])
  fun op BOREL_MEASURABLE_SETS x = x
    val op BOREL_MEASURABLE_SETS =
    DT(((("measure",195),
        [("bool",[25,63]),
         ("measure",
         [185,186,187,188,189,190,191,192,193,194])]),["DISK_THM"]),
       [read"%129%91%18%204%180%81%116$0@%253$0@$1@@|@@%318%158@@|@@%129%91%18%204%180%81%116$0@%252$1@$0@@|@@%318%158@@|@@%129%91%18%204%180%81%116$0@%253$1@$0@@|@@%318%158@@|@@%129%91%18%204%180%81%116$0@%252$0@$1@@|@@%318%158@@|@@%129%91%18%91%24%204%180%81%116$0@%129%253$2@$0@@%253$0@$1@@@|@@%318%158@@|@|@@%129%91%18%91%24%204%180%81%116$0@%129%252$2@$0@@%253$0@$1@@@|@@%318%158@@|@|@@%129%91%18%91%24%204%180%81%116$0@%129%253$2@$0@@%252$0@$1@@@|@@%318%158@@|@|@@%129%91%18%91%24%204%180%81%116$0@%129%252$2@$0@@%252$0@$1@@@|@@%318%158@@|@|@@%129%91%18%204%211$0@%166@@%318%158@@|@@%91%18%204%180%81%116$0@%323%132$0@$1@@@|@@%318%158@@|@@@@@@@@@@"])
  fun op IN_MEASURABLE_BOREL_CONST x = x
    val op IN_MEASURABLE_BOREL_CONST =
    DT(((("measure",196),
        [("bool",
         [2,14,15,25,26,27,30,36,48,51,52,53,54,56,58,63,73,75,84,96,99,
          100,105,124,143]),("combin",[1,3,5]),("extreal",[33]),
         ("measure",[3,4,169]),("pair",[4]),("pred_set",[3,6,10,14,45,69]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%91%43%94%27%146%129%303$2@@%88%80%146%193$0@%308$3@@@%132$1$0@@$2@@|@@@%199$0@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_INDICATOR x = x
    val op IN_MEASURABLE_BOREL_INDICATOR =
    DT(((("measure",197),
        [("bool",
         [2,14,15,18,25,26,27,30,36,48,51,52,53,54,56,58,63,64,73,75,84,96,
          99,100,105,109,124,129,143]),("combin",[1,3,5]),
         ("extreal",[33,77,83,85,91]),("measure",[3,4,23,169]),
         ("pair",[4]),("pred_set",[3,6,10,13,45,67,69]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%93%0%94%27%146%129%303$2@@%129%198$1@%315$2@@@%88%80%146%193$0@%308$3@@@%132$1$0@@%264$2@$0@@@|@@@@%199$0@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_CMUL x = x
    val op IN_MEASURABLE_BOREL_CMUL =
    DT(((("measure",198),
        [("bool",
         [2,14,15,25,26,27,30,36,48,51,53,54,56,58,63,73,74,75,83,99,100,
          105,124,143]),("combin",[1,3,5]),
         ("extreal",[17,32,33,72,76,189,216,218]),
         ("measure",[169,180,196]),("pair",[4]),("pred_set",[3,6,14,45]),
         ("real",[57]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%114%87%146%129%303$3@@%129%199$2@%273$3@%158@@@%88%80%146%193$0@%308$4@@@%132$2$0@@%255%217$1@@$3$0@@@@|@@@@%199$1@%273$3@%158@@@|@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_ABS x = x
    val op IN_MEASURABLE_BOREL_ABS =
    DT(((("measure",199),
        [("bool",
         [2,14,15,25,26,27,30,36,48,51,52,53,54,56,58,63,73,74,75,83,84,96,
          99,100,105,124,143]),("combin",[1,3,5]),
         ("extreal",[33,83,135,138]),("measure",[3,4,32,169,180]),
         ("pair",[4]),("pred_set",[3,6,10,14,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%146%129%303$2@@%129%199$1@%273$2@%158@@@%88%80%146%193$0@%308$3@@@%132$1$0@@%249$2$0@@@@|@@@@%199$0@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_SQR x = x
    val op IN_MEASURABLE_BOREL_SQR =
    DT(((("measure",200),
        [("arithmetic",[70]),
         ("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,56,58,63,73,75,84,96,99,100,
          105,124,143,169]),("combin",[1,3,5]),
         ("extreal",
         [33,74,81,83,88,100,101,173,174,177,226,229,231,237,238,240,242,
          243,244]),("measure",[3,4,32,172,180]),("numeral",[3,6]),
         ("pair",[4]),("pred_set",[3,6,10,14,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%146%129%303$2@@%129%199$1@%273$2@%158@@@%88%80%146%193$0@%308$3@@@%132$1$0@@%257$2$0@@%215%157%240@@@@@|@@@@%199$0@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_ADD x = x
    val op IN_MEASURABLE_BOREL_ADD =
    DT(((("measure",201),
        [("bool",
         [2,14,15,25,26,27,30,36,48,51,52,53,54,55,56,58,63,73,74,75,83,84,
          99,100,105,124,143]),("combin",[1,3,5]),
         ("extreal",[14,24,28,66,68,80,84,139,144,151,166,362,378]),
         ("measure",[3,4,32,165,169,180]),("pair",[4]),
         ("pred_set",[3,6,14,45,53,367]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,85])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%94%39%146%129%303$3@@%129%199$2@%273$3@%158@@@%129%199$1@%273$3@%158@@@%88%80%146%193$0@%308$4@@@%132$1$0@@%250$3$0@@$2$0@@@@|@@@@@%199$0@%273$3@%158@@@|@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_SUB x = x
    val op IN_MEASURABLE_BOREL_SUB =
    DT(((("measure",202),
        [("bool",[25,53,56,58,63,105,124]),("extreal",[17,39,171,177]),
         ("measure",[198,201])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%94%39%146%129%303$3@@%129%199$2@%273$3@%158@@@%129%199$1@%273$3@%158@@@%88%80%146%193$0@%308$4@@@%132$1$0@@%258$3$0@@$2$0@@@@|@@@@@%199$0@%273$3@%158@@@|@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_MUL x = x
    val op IN_MEASURABLE_BOREL_MUL =
    DT(((("measure",203),
        [("bool",
         [2,15,25,26,27,51,53,54,55,56,58,63,64,96,99,100,105,124]),
         ("extreal",[17,24,28,37,47,66,70,207,235]),
         ("measure",[198,200,201,202]),("numeral",[3,5,6,17,18]),
         ("real",
         [4,6,8,17,18,22,27,28,38,39,55,62,130,307,308,309,311,312,313,314,
          326,329,405,417]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%94%39%146%129%303$3@@%129%199$2@%273$3@%158@@@%129%88%80%146%193$0@%308$4@@@%129%323%132$3$0@@%216@@@%129%323%132$3$0@@%223@@@%129%323%132$2$0@@%216@@@%323%132$2$0@@%223@@@@@@|@@%129%199$1@%273$3@%158@@@%88%80%146%193$0@%308$4@@@%132$1$0@@%255$3$0@@$2$0@@@@|@@@@@@%199$0@%273$3@%158@@@|@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_SUM x = x
    val op IN_MEASURABLE_BOREL_SUM =
    DT(((("measure",204),
        [("bool",
         [2,14,15,25,26,27,36,51,52,53,54,56,58,63,83,99,100,105,124]),
         ("combin",[3]),("extreal",[267]),("measure",[196,201]),
         ("pred_set",[10,80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%109%10%98%29%94%34%97%64%146%129%170$0@@%129%303$3@@%129%89%40%146%194$0@$1@@%199$3$0@@%273$4@%158@@@|@@%88%80%146%193$0@%308$4@@@%132$2$0@@%167%40$4$0@$1@|@$1@@@|@@@@@%199$1@%273$3@%158@@@|@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_CMUL_INDICATOR x = x
    val op IN_MEASURABLE_BOREL_CMUL_INDICATOR =
    DT(((("measure",205),
        [("bool",[2,15,25,26,53,54,55,56,58,63,99,105,124]),
         ("measure",[197,198]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%109%10%114%87%93%63%146%129%303$2@@%198$0@%315$2@@@@%199%80%255%217$2@@%264$1@$0@@|@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_MUL_INDICATOR x = x
    val op IN_MEASURABLE_BOREL_MUL_INDICATOR =
    DT(((("measure",206),
        [("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,105,124,129,143,147]),
         ("extreal",[71,73]),("measure",[3,4,23,31,32,172]),("pair",[4]),
         ("pred_set",[3,6,14,33,45,67]),("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%93%63%146%129%303$2@@%129%199$1@%273$2@%158@@@%198$0@%315$2@@@@@%199%80%255$2$0@@%264$1@$0@@|@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_MUL_INDICATOR_EQ x = x
    val op IN_MEASURABLE_BOREL_MUL_INDICATOR_EQ =
    DT(((("measure",207),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,75,84,99,105,108,109,
          124,143]),("combin",[1,5,19,20]),("extreal",[73]),
         ("measure",[4,23,29,169,206]),("pair",[4]),
         ("pred_set",[3,6,14,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%146%303$1@@%131%199$0@%273$1@%158@@@%199%80%255$1$0@@%264%308$2@@$0@@|@%273$1@%158@@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_POS_SIMPLE_FN x = x
    val op IN_MEASURABLE_BOREL_POS_SIMPLE_FN =
    DT(((("measure",208),
        [("bool",[2,15,25,26,53,54,55,56,58,63,99,105,124]),
         ("measure",[0,1,15,24,197,198,204]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%110%53%94%27%146%129%281$1@@%147%67%148%9%149%84%290$4@$3@$2@$1@$0@|@|@|@@@%199$0@%273%119%268$1@@%276$1@@@%158@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_POW x = x
    val op IN_MEASURABLE_BOREL_POW =
    DT(((("measure",209),
        [("arithmetic",[64]),
         ("bool",[2,14,15,25,26,27,36,51,53,54,55,58,63,99,105,124]),
         ("extreal",[189,221,222,236,239]),("measure",[196,203]),
         ("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%108%58%109%10%94%27%146%129%303$1@@%129%199$0@%273$1@%158@@@%88%80%146%193$0@%308$2@@@%129%323%132$1$0@@%216@@@%323%132$1$0@@%223@@@@|@@@@%199%80%257$1$0@@$3@|@%273$1@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_MAX x = x
    val op IN_MEASURABLE_BOREL_MAX =
    DT(((("measure",210),
        [("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,63,64,75,84,99,105,108,
          109,124,143]),("combin",[1,3,5]),("extreal",[33,84,85,344]),
         ("measure",[4,32,169]),("pair",[4]),
         ("pred_set",[3,6,14,45,47,48,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%94%34%146%129%303$2@@%129%199$1@%273$2@%158@@@%199$0@%273$2@%158@@@@@%199%80%254$2$0@@$1$0@@|@%273$2@%158@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_MONO_SUP x = x
    val op IN_MEASURABLE_BOREL_MONO_SUP =
    DT(((("measure",211),
        [("bool",[14,25,26,27,36,48,51,53,54,55,56,58,63,105,124,143]),
         ("combin",[1,3,5,19,20]),("extreal",[303]),
         ("measure",[0,1,26,158,172]),("pair",[4]),
         ("pred_set",[0,3,6,14,45,144]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,86])]),["DISK_THM"]),
       [read"%106%32%94%27%109%10%146%129%303$0@@%129%108%58%199$3$0@@%273$1@%158@@|@@%129%108%58%88%80%146%193$0@%308$2@@@%252$4$1@$0@@$4%233$1@@$0@@@|@|@@%88%80%146%193$0@%308$1@@@%132$2$0@@%259%191%58$4$0@$1@|@%239@@@@|@@@@@%199$1@%273$0@%158@@@|@|@|@"])
  fun op FN_PLUS_POS x = x
    val op FN_PLUS_POS =
    DT(((("measure",215),
        [("bool",[25,26,27,30,63,64]),("extreal",[77,81]),
         ("measure",[212])]),["DISK_THM"]),
       [read"%94%34%88%80%252%256%130@@%262$1@$0@@|@|@"])
  fun op FN_MINUS_POS x = x
    val op FN_MINUS_POS =
    DT(((("measure",216),
        [("bool",[25,26,27,30,53,54,63,64]),("extreal",[77,81,100,174]),
         ("measure",[213]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%34%88%80%252%256%130@@%261$1@$0@@|@|@"])
  fun op FN_PLUS_POS_ID x = x
    val op FN_PLUS_POS_ID =
    DT(((("measure",217),
        [("bool",[25,30,52,53,54,55,56,58,60,63,99,105,108,109,124]),
         ("extreal",[99]),("measure",[212]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%146%88%80%252%256%130@@%34$0@@|@@%134%262%34@@%34@@"])
  fun op FN_MINUS_POS_ZERO x = x
    val op FN_MINUS_POS_ZERO =
    DT(((("measure",218),
        [("bool",[25,30,52,53,54,55,56,58,60,63,99,105,108,109,124]),
         ("extreal",[33,98,174]),("measure",[213]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%146%88%80%252%256%130@@%34$0@@|@@%134%261%34@@%80%256%130@|@@"])
  fun op FN_PLUS_CMUL x = x
    val op FN_PLUS_CMUL =
    DT(((("measure",219),
        [("bool",
         [25,26,27,30,52,53,54,55,56,58,60,63,64,99,100,105,108,109,124,
          129,147]),("extreal",[17,32,33,71,81,86,121,123,124,189,203]),
         ("measure",[212,213]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%114%23%129%146%295%297%130@@$0@@%134%262%80%255%217$1@@$2$0@@|@@%80%255%217$1@@%262$2@$0@@|@@@%146%295$0@%297%130@@@%134%262%80%255%217$1@@$2$0@@|@@%80%255%251%217$1@@@%261$2@$0@@|@@@|@|@"])
  fun op FN_MINUS_CMUL x = x
    val op FN_MINUS_CMUL =
    DT(((("measure",220),
        [("bool",[25,26,27,30,53,54,55,56,58,60,63,64,100,105,124]),
         ("extreal",[17,32,33,71,81,86,120,123,124,174,175,189,201,202]),
         ("measure",[212,213]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%114%23%129%146%295%297%130@@$0@@%134%261%80%255%217$1@@$2$0@@|@@%80%255%217$1@@%261$2@$0@@|@@@%146%295$0@%297%130@@@%134%261%80%255%217$1@@$2$0@@|@@%80%255%251%217$1@@@%262$2@$0@@|@@@|@|@"])
  fun op FN_PLUS_ADD_LE x = x
    val op FN_PLUS_ADD_LE =
    DT(((("measure",221),
        [("bool",[25,26,27,30,51,53,54,63,64,105]),
         ("extreal",[33,77,81,106,142,143]),("measure",[212]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%94%34%88%80%252%262%80%250$3$0@@$2$0@@|@$0@@%250%262$2@$0@@%262$1@$0@@@|@|@|@"])
  fun op FN_MINUS_ADD_LE x = x
    val op FN_MINUS_ADD_LE =
    DT(((("measure",222),
        [("bool",[25,26,27,30,51,53,54,56,58,63,64,96]),
         ("extreal",
         [14,17,24,32,33,39,76,77,79,80,81,101,106,142,143,174]),
         ("measure",[213]),
         ("real",
         [4,6,7,8,18,23,27,28,38,39,55,62,78,159,308,309,311,312,313,314,
          326]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%27%94%34%88%80%252%261%80%250$3$0@@$2$0@@|@$0@@%250%261$2@$0@@%261$1@$0@@@|@|@|@"])
  fun op IN_MEASURABLE_BOREL_FN_PLUS x = x
    val op IN_MEASURABLE_BOREL_FN_PLUS =
    DT(((("measure",223),
        [("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,56,58,63,64,73,75,84,99,100,
          105,108,109,124,143]),("combin",[1,3,5]),
         ("extreal",[33,77,81,83,85]),("measure",[3,4,169,212]),
         ("pair",[4]),("pred_set",[3,6,10,14,53]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%146%199$0@%273$1@%158@@@%199%262$0@@%273$1@%158@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_FN_MINUS x = x
    val op IN_MEASURABLE_BOREL_FN_MINUS =
    DT(((("measure",224),
        [("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,56,58,63,64,73,74,75,83,84,99,
          100,105,108,109,124,143]),("combin",[1,3,5]),
         ("extreal",[33,77,81,83,88,101,173,174]),
         ("measure",[3,4,169,180,213]),("pair",[4]),
         ("pred_set",[3,6,10,14,53]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%109%10%94%27%146%199$0@%273$1@%158@@@%199%261$0@@%273$1@%158@@@|@|@"])
  fun op IN_MEASURABLE_BOREL_PLUS_MINUS x = x
    val op IN_MEASURABLE_BOREL_PLUS_MINUS =
    DT(((("measure",225),
        [("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,63,64,75,84,99,100,105,
          124]),("combin",[1,3,5]),("extreal",[33,86,87,143,146,178]),
         ("measure",[169,202,212,213,223,224]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%10%94%27%131%199$0@%273$1@%158@@@%129%199%262$0@@%273$1@%158@@@%199%261$0@@%273$1@%158@@@@|@|@"])
  fun op INDICATOR_FN_MUL_INTER x = x
    val op INDICATOR_FN_MUL_INTER =
    DT(((("measure",226),
        [("bool",
         [14,25,26,27,30,36,51,52,53,54,55,56,58,60,63,64,96,105,109,129]),
         ("extreal",[72,74]),("measure",[23]),("pred_set",[45]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%93%0%93%1%134%76%255%264$2@$0@@%264$1@$0@@|@%76%264%212$2@$1@@$0@|@|@|@"])
  fun op indicator_fn_split x = x
    val op indicator_fn_split =
    DT(((("measure",227),
        [("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,55,56,58,60,63,64,75,83,84,93,
          95,96,99,100,101,105,108,109,124,129,145,147,169]),
         ("combin",[3,5]),("extreal",[142,143,267,271,277,279,283]),
         ("measure",[23]),
         ("pred_set",
         [3,10,18,23,33,45,57,58,67,75,80,104,131,147,150,186,187,195,197,
          246,251]),("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[85])]),["DISK_THM"]),
       [read"%104%61%93%63%105%15%146%129%172$2@@%129%133%154%192$0@$2@@@$1@@%108%41%108%42%146%129%207$1@$4@@%129%207$0@$4@@%323%141$1@$0@@@@@%163$2$1@@$2$0@@@|@|@@@@%93%6%146%228$0@$2@@%134%264$0@@%80%168%41%264%212$2@$3$0@@@$1@|@$4@|@@|@@|@|@|@"])
  fun op indicator_fn_suminf x = x
    val op indicator_fn_suminf =
    DT(((("measure",228),
        [("bool",
         [14,25,26,27,30,36,51,52,53,54,55,56,58,63,64,72,93,95,96,99,101,
          105,124,129,145,147]),("combin",[3,5]),
         ("extreal",[69,77,83,91,142,143,267,271,277,278,283,305,334]),
         ("measure",[23]),
         ("pred_set",
         [0,3,10,14,33,45,57,102,131,144,188,197,296,298,299,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[85])]),["DISK_THM"]),
       [read"%105%9%88%80%146%108%52%108%58%146%323%141$1@$0@@@%163$3$1@@$3$0@@@|@|@@%132%248%41%264$2$0@@$1@|@@%264%154%192$1@%239@@@$0@@@|@|@"])
  fun op measure_split x = x
    val op measure_split =
    DT(((("measure",229),
        [("bool",
         [2,15,25,26,27,30,36,48,51,52,53,54,55,56,58,60,63,64,71,75,83,84,
          96,99,105,108,109,124,129,143,147,169]),
         ("measure",[1,4,10,15,31,32,88,106,155]),("pair",[4]),
         ("pred_set",
         [3,6,10,23,33,35,37,45,57,80,83,102,104,131,143,144,147,150,186,
          187,243,246,251,369]),("real",[6,27]),("real_sigma",[1,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[116])]),["DISK_THM"]),
       [read"%104%61%105%15%110%53%146%129%281$0@@%129%172$2@@%129%133%154%192$1@$2@@@%268$0@@@%129%108%41%108%42%146%129%207$1@$4@@%129%207$0@$4@@%323%141$1@$0@@@@@%163$3$1@@$3$0@@@|@|@@%108%41%146%207$0@$3@@%198$2$0@@%276$1@@@|@@@@@@%93%6%146%198$0@%276$1@@@%145%278$1@$0@@%226%41%278$2@%212$1@$3$0@@@|@$3@@@|@@|@|@|@"])
  end
  val _ = DB.bindl "measure"
  [("space_def",space_def,DB.Def), ("subsets_def",subsets_def,DB.Def),
   ("subset_class_def",subset_class_def,DB.Def),
   ("algebra_def",algebra_def,DB.Def),
   ("sigma_algebra_def",sigma_algebra_def,DB.Def),
   ("sigma_def",sigma_def,DB.Def), ("m_space_def",m_space_def,DB.Def),
   ("measurable_sets_def",measurable_sets_def,DB.Def),
   ("measure_def",measure_def,DB.Def),
   ("positive_def",positive_def,DB.Def),
   ("additive_def",additive_def,DB.Def),
   ("countably_additive_def",countably_additive_def,DB.Def),
   ("subadditive_def",subadditive_def,DB.Def),
   ("countably_subadditive_def",countably_subadditive_def,DB.Def),
   ("increasing_def",increasing_def,DB.Def),
   ("measure_space_def",measure_space_def,DB.Def),
   ("lambda_system_def",lambda_system_def,DB.Def),
   ("outer_measure_space_def",outer_measure_space_def,DB.Def),
   ("inf_measure_def",inf_measure_def,DB.Def),
   ("closed_cdi_def",closed_cdi_def,DB.Def),
   ("smallest_closed_cdi_def",smallest_closed_cdi_def,DB.Def),
   ("measurable_def",measurable_def,DB.Def),
   ("measure_preserving_def",measure_preserving_def,DB.Def),
   ("indicator_fn_def",indicator_fn_def,DB.Def),
   ("pos_simple_fn_def",pos_simple_fn_def,DB.Def),
   ("null_set_def",null_set_def,DB.Def), ("Borel_def",Borel_def,DB.Def),
   ("fn_plus_def",fn_plus_def,DB.Def),
   ("fn_minus_def",fn_minus_def,DB.Def), ("fn_abs_def",fn_abs_def,DB.Def),
   ("SIGMA_PROPERTY_DISJOINT_LEMMA",SIGMA_PROPERTY_DISJOINT_LEMMA,DB.Thm),
   ("SIGMA_PROPERTY_DISJOINT_LEMMA2",
    SIGMA_PROPERTY_DISJOINT_LEMMA2,
    DB.Thm),
   ("SIGMA_PROPERTY_DISJOINT_LEMMA1",
    SIGMA_PROPERTY_DISJOINT_LEMMA1,
    DB.Thm), ("CLOSED_CDI_INCREASING",CLOSED_CDI_INCREASING,DB.Thm),
   ("CLOSED_CDI_DISJOINT",CLOSED_CDI_DISJOINT,DB.Thm),
   ("CLOSED_CDI_COMPL",CLOSED_CDI_COMPL,DB.Thm),
   ("CLOSED_CDI_DUNION",CLOSED_CDI_DUNION,DB.Thm),
   ("SMALLEST_CLOSED_CDI",SMALLEST_CLOSED_CDI,DB.Thm),
   ("SPACE_SMALLEST_CLOSED_CDI",SPACE_SMALLEST_CLOSED_CDI,DB.Thm),
   ("SPACE",SPACE,DB.Thm), ("ALGEBRA_ALT_INTER",ALGEBRA_ALT_INTER,DB.Thm),
   ("ALGEBRA_EMPTY",ALGEBRA_EMPTY,DB.Thm),
   ("ALGEBRA_SPACE",ALGEBRA_SPACE,DB.Thm),
   ("ALGEBRA_COMPL",ALGEBRA_COMPL,DB.Thm),
   ("ALGEBRA_UNION",ALGEBRA_UNION,DB.Thm),
   ("ALGEBRA_INTER",ALGEBRA_INTER,DB.Thm),
   ("ALGEBRA_DIFF",ALGEBRA_DIFF,DB.Thm),
   ("ALGEBRA_FINITE_UNION",ALGEBRA_FINITE_UNION,DB.Thm),
   ("ALGEBRA_INTER_SPACE",ALGEBRA_INTER_SPACE,DB.Thm),
   ("LAMBDA_SYSTEM_EMPTY",LAMBDA_SYSTEM_EMPTY,DB.Thm),
   ("LAMBDA_SYSTEM_COMPL",LAMBDA_SYSTEM_COMPL,DB.Thm),
   ("LAMBDA_SYSTEM_INTER",LAMBDA_SYSTEM_INTER,DB.Thm),
   ("LAMBDA_SYSTEM_ALGEBRA",LAMBDA_SYSTEM_ALGEBRA,DB.Thm),
   ("LAMBDA_SYSTEM_STRONG_ADDITIVE",LAMBDA_SYSTEM_STRONG_ADDITIVE,DB.Thm),
   ("LAMBDA_SYSTEM_ADDITIVE",LAMBDA_SYSTEM_ADDITIVE,DB.Thm),
   ("COUNTABLY_SUBADDITIVE_SUBADDITIVE",
    COUNTABLY_SUBADDITIVE_SUBADDITIVE,
    DB.Thm), ("SIGMA_ALGEBRA_ALT",SIGMA_ALGEBRA_ALT,DB.Thm),
   ("SIGMA_ALGEBRA_ALT_MONO",SIGMA_ALGEBRA_ALT_MONO,DB.Thm),
   ("SIGMA_ALGEBRA_ALT_DISJOINT",SIGMA_ALGEBRA_ALT_DISJOINT,DB.Thm),
   ("SUBADDITIVE",SUBADDITIVE,DB.Thm), ("ADDITIVE",ADDITIVE,DB.Thm),
   ("COUNTABLY_SUBADDITIVE",COUNTABLY_SUBADDITIVE,DB.Thm),
   ("ADDITIVE_SUM",ADDITIVE_SUM,DB.Thm),
   ("INCREASING_ADDITIVE_SUMMABLE",INCREASING_ADDITIVE_SUMMABLE,DB.Thm),
   ("LAMBDA_SYSTEM_POSITIVE",LAMBDA_SYSTEM_POSITIVE,DB.Thm),
   ("LAMBDA_SYSTEM_INCREASING",LAMBDA_SYSTEM_INCREASING,DB.Thm),
   ("LAMBDA_SYSTEM_STRONG_SUM",LAMBDA_SYSTEM_STRONG_SUM,DB.Thm),
   ("SIGMA_ALGEBRA_ALGEBRA",SIGMA_ALGEBRA_ALGEBRA,DB.Thm),
   ("OUTER_MEASURE_SPACE_POSITIVE",OUTER_MEASURE_SPACE_POSITIVE,DB.Thm),
   ("LAMBDA_SYSTEM_CARATHEODORY",LAMBDA_SYSTEM_CARATHEODORY,DB.Thm),
   ("CARATHEODORY_LEMMA",CARATHEODORY_LEMMA,DB.Thm),
   ("INF_MEASURE_NONEMPTY",INF_MEASURE_NONEMPTY,DB.Thm),
   ("INF_MEASURE_POS0",INF_MEASURE_POS0,DB.Thm),
   ("INF_MEASURE_POS",INF_MEASURE_POS,DB.Thm),
   ("INCREASING",INCREASING,DB.Thm),
   ("ADDITIVE_INCREASING",ADDITIVE_INCREASING,DB.Thm),
   ("COUNTABLY_ADDITIVE_ADDITIVE",COUNTABLY_ADDITIVE_ADDITIVE,DB.Thm),
   ("COUNTABLY_ADDITIVE",COUNTABLY_ADDITIVE,DB.Thm),
   ("INF_MEASURE_AGREES",INF_MEASURE_AGREES,DB.Thm),
   ("MEASURE_DOWN",MEASURE_DOWN,DB.Thm),
   ("SIGMA_ALGEBRA_SIGMA",SIGMA_ALGEBRA_SIGMA,DB.Thm),
   ("POW_ALGEBRA",POW_ALGEBRA,DB.Thm),
   ("POW_SIGMA_ALGEBRA",POW_SIGMA_ALGEBRA,DB.Thm),
   ("UNIV_SIGMA_ALGEBRA",UNIV_SIGMA_ALGEBRA,DB.Thm),
   ("INF_MEASURE_EMPTY",INF_MEASURE_EMPTY,DB.Thm),
   ("INF_MEASURE_POSITIVE",INF_MEASURE_POSITIVE,DB.Thm),
   ("INF_MEASURE_INCREASING",INF_MEASURE_INCREASING,DB.Thm),
   ("INF_MEASURE_LE",INF_MEASURE_LE,DB.Thm),
   ("INF_MEASURE_CLOSE",INF_MEASURE_CLOSE,DB.Thm),
   ("INF_MEASURE_COUNTABLY_SUBADDITIVE",
    INF_MEASURE_COUNTABLY_SUBADDITIVE,
    DB.Thm), ("INF_MEASURE_OUTER",INF_MEASURE_OUTER,DB.Thm),
   ("SIGMA_SUBSET",SIGMA_SUBSET,DB.Thm),
   ("ALGEBRA_SUBSET_LAMBDA_SYSTEM",ALGEBRA_SUBSET_LAMBDA_SYSTEM,DB.Thm),
   ("CARATHEODORY",CARATHEODORY,DB.Thm),
   ("SIGMA_SUBSET_SUBSETS",SIGMA_SUBSET_SUBSETS,DB.Thm),
   ("IN_SIGMA",IN_SIGMA,DB.Thm), ("SIGMA_ALGEBRA",SIGMA_ALGEBRA,DB.Thm),
   ("SIGMA_ALGEBRA_COUNTABLE_UNION",SIGMA_ALGEBRA_COUNTABLE_UNION,DB.Thm),
   ("SIGMA_ALGEBRA_ENUM",SIGMA_ALGEBRA_ENUM,DB.Thm),
   ("MEASURE_COMPL",MEASURE_COMPL,DB.Thm),
   ("SIGMA_PROPERTY",SIGMA_PROPERTY,DB.Thm),
   ("MEASURE_EMPTY",MEASURE_EMPTY,DB.Thm),
   ("SIGMA_SUBSET_MEASURABLE_SETS",SIGMA_SUBSET_MEASURABLE_SETS,DB.Thm),
   ("SIGMA_ALGEBRA_FN",SIGMA_ALGEBRA_FN,DB.Thm),
   ("SIGMA_ALGEBRA_FN_DISJOINT",SIGMA_ALGEBRA_FN_DISJOINT,DB.Thm),
   ("SIGMA_PROPERTY_ALT",SIGMA_PROPERTY_ALT,DB.Thm),
   ("SIGMA_PROPERTY_DISJOINT_WEAK",SIGMA_PROPERTY_DISJOINT_WEAK,DB.Thm),
   ("SIGMA_PROPERTY_DISJOINT",SIGMA_PROPERTY_DISJOINT,DB.Thm),
   ("MEASURE_COUNTABLY_ADDITIVE",MEASURE_COUNTABLY_ADDITIVE,DB.Thm),
   ("MEASURE_SPACE_ADDITIVE",MEASURE_SPACE_ADDITIVE,DB.Thm),
   ("MEASURE_ADDITIVE",MEASURE_ADDITIVE,DB.Thm),
   ("MEASURE_COUNTABLE_INCREASING",MEASURE_COUNTABLE_INCREASING,DB.Thm),
   ("MEASURE_SPACE_REDUCE",MEASURE_SPACE_REDUCE,DB.Thm),
   ("SPACE_SIGMA",SPACE_SIGMA,DB.Thm),
   ("MONOTONE_CONVERGENCE",MONOTONE_CONVERGENCE,DB.Thm),
   ("SIGMA_REDUCE",SIGMA_REDUCE,DB.Thm),
   ("MEASURABLE_SETS_SUBSET_SPACE",MEASURABLE_SETS_SUBSET_SPACE,DB.Thm),
   ("MEASURABLE_DIFF_PROPERTY",MEASURABLE_DIFF_PROPERTY,DB.Thm),
   ("MEASURABLE_BIGUNION_PROPERTY",MEASURABLE_BIGUNION_PROPERTY,DB.Thm),
   ("MEASUBABLE_BIGUNION_LEMMA",MEASUBABLE_BIGUNION_LEMMA,DB.Thm),
   ("MEASURABLE_SIGMA_PREIMAGES",MEASURABLE_SIGMA_PREIMAGES,DB.Thm),
   ("IN_MEASURABLE",IN_MEASURABLE,DB.Thm),
   ("MEASURABLE_SIGMA",MEASURABLE_SIGMA,DB.Thm),
   ("MEASURABLE_SUBSET",MEASURABLE_SUBSET,DB.Thm),
   ("MEASURABLE_LIFT",MEASURABLE_LIFT,DB.Thm),
   ("IN_MEASURE_PRESERVING",IN_MEASURE_PRESERVING,DB.Thm),
   ("MEASURE_PRESERVING_LIFT",MEASURE_PRESERVING_LIFT,DB.Thm),
   ("MEASURE_PRESERVING_SUBSET",MEASURE_PRESERVING_SUBSET,DB.Thm),
   ("MEASURABLE_I",MEASURABLE_I,DB.Thm),
   ("MEASURABLE_COMP",MEASURABLE_COMP,DB.Thm),
   ("MEASURABLE_COMP_STRONG",MEASURABLE_COMP_STRONG,DB.Thm),
   ("MEASURABLE_COMP_STRONGER",MEASURABLE_COMP_STRONGER,DB.Thm),
   ("MEASURABLE_UP_LIFT",MEASURABLE_UP_LIFT,DB.Thm),
   ("MEASURABLE_UP_SUBSET",MEASURABLE_UP_SUBSET,DB.Thm),
   ("MEASURABLE_UP_SIGMA",MEASURABLE_UP_SIGMA,DB.Thm),
   ("MEASURE_PRESERVING_UP_LIFT",MEASURE_PRESERVING_UP_LIFT,DB.Thm),
   ("MEASURE_PRESERVING_UP_SUBSET",MEASURE_PRESERVING_UP_SUBSET,DB.Thm),
   ("MEASURE_PRESERVING_UP_SIGMA",MEASURE_PRESERVING_UP_SIGMA,DB.Thm),
   ("MEASURABLE_PROD_SIGMA",MEASURABLE_PROD_SIGMA,DB.Thm),
   ("MEASURABLE_RANGE_REDUCE",MEASURABLE_RANGE_REDUCE,DB.Thm),
   ("MEASURABLE_POW_TO_POW",MEASURABLE_POW_TO_POW,DB.Thm),
   ("MEASURABLE_POW_TO_POW_IMAGE",MEASURABLE_POW_TO_POW_IMAGE,DB.Thm),
   ("MEASURE_SPACE_SUBSET",MEASURE_SPACE_SUBSET,DB.Thm),
   ("STRONG_MEASURE_SPACE_SUBSET",STRONG_MEASURE_SPACE_SUBSET,DB.Thm),
   ("MEASURE_REAL_SUM_IMAGE",MEASURE_REAL_SUM_IMAGE,DB.Thm),
   ("SIGMA_POW",SIGMA_POW,DB.Thm),
   ("finite_additivity_sufficient_for_finite_spaces",
    finite_additivity_sufficient_for_finite_spaces,
    DB.Thm),
   ("finite_additivity_sufficient_for_finite_spaces2",
    finite_additivity_sufficient_for_finite_spaces2,
    DB.Thm), ("IMAGE_SING",IMAGE_SING,DB.Thm),
   ("SUBSET_BIGINTER",SUBSET_BIGINTER,DB.Thm),
   ("MEASURE_SPACE_INCREASING",MEASURE_SPACE_INCREASING,DB.Thm),
   ("MEASURE_SPACE_POSITIVE",MEASURE_SPACE_POSITIVE,DB.Thm),
   ("MEASURE_SPACE_INTER",MEASURE_SPACE_INTER,DB.Thm),
   ("MEASURE_SPACE_UNION",MEASURE_SPACE_UNION,DB.Thm),
   ("MEASURE_SPACE_DIFF",MEASURE_SPACE_DIFF,DB.Thm),
   ("MEASURE_COMPL_SUBSET",MEASURE_COMPL_SUBSET,DB.Thm),
   ("MEASURE_SPACE_BIGUNION",MEASURE_SPACE_BIGUNION,DB.Thm),
   ("MEASURE_SPACE_IN_MSPACE",MEASURE_SPACE_IN_MSPACE,DB.Thm),
   ("MEASURE_SPACE_SUBSET_MSPACE",MEASURE_SPACE_SUBSET_MSPACE,DB.Thm),
   ("MEASURE_SPACE_EMPTY_MEASURABLE",
    MEASURE_SPACE_EMPTY_MEASURABLE,
    DB.Thm),
   ("MEASURE_SPACE_MSPACE_MEASURABLE",
    MEASURE_SPACE_MSPACE_MEASURABLE,
    DB.Thm),
   ("SIGMA_ALGEBRA_FN_BIGINTER",SIGMA_ALGEBRA_FN_BIGINTER,DB.Thm),
   ("MEASURE_SPACE_BIGINTER",MEASURE_SPACE_BIGINTER,DB.Thm),
   ("MONOTONE_CONVERGENCE2",MONOTONE_CONVERGENCE2,DB.Thm),
   ("MONOTONE_CONVERGENCE_BIGINTER",MONOTONE_CONVERGENCE_BIGINTER,DB.Thm),
   ("MONOTONE_CONVERGENCE_BIGINTER2",
    MONOTONE_CONVERGENCE_BIGINTER2,
    DB.Thm), ("MEASURE_SPACE_RESTRICTED",MEASURE_SPACE_RESTRICTED,DB.Thm),
   ("MEASURE_SPACE_CMUL",MEASURE_SPACE_CMUL,DB.Thm),
   ("BIGUNION_IMAGE_Q",BIGUNION_IMAGE_Q,DB.Thm),
   ("SIGMA_ALGEBRA_BOREL",SIGMA_ALGEBRA_BOREL,DB.Thm),
   ("MEASURABLE_BOREL",MEASURABLE_BOREL,DB.Thm),
   ("IN_MEASURABLE_BOREL",IN_MEASURABLE_BOREL,DB.Thm),
   ("IN_MEASURABLE_BOREL_NEGINF",IN_MEASURABLE_BOREL_NEGINF,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT1",IN_MEASURABLE_BOREL_ALT1,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT2",IN_MEASURABLE_BOREL_ALT2,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT3",IN_MEASURABLE_BOREL_ALT3,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT4",IN_MEASURABLE_BOREL_ALT4,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT5",IN_MEASURABLE_BOREL_ALT5,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT6",IN_MEASURABLE_BOREL_ALT6,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT7",IN_MEASURABLE_BOREL_ALT7,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT8",IN_MEASURABLE_BOREL_ALT8,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALT9",IN_MEASURABLE_BOREL_ALT9,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALL",IN_MEASURABLE_BOREL_ALL,DB.Thm),
   ("IN_MEASURABLE_BOREL_ALL_MEASURE",
    IN_MEASURABLE_BOREL_ALL_MEASURE,
    DB.Thm), ("IN_MEASURABLE_BOREL_LT",IN_MEASURABLE_BOREL_LT,DB.Thm),
   ("IN_MEASURABLE_BOREL_LE",IN_MEASURABLE_BOREL_LE,DB.Thm),
   ("SPACE_BOREL",SPACE_BOREL,DB.Thm),
   ("BOREL_MEASURABLE_SETS1",BOREL_MEASURABLE_SETS1,DB.Thm),
   ("BOREL_MEASURABLE_SETS2",BOREL_MEASURABLE_SETS2,DB.Thm),
   ("BOREL_MEASURABLE_SETS3",BOREL_MEASURABLE_SETS3,DB.Thm),
   ("BOREL_MEASURABLE_SETS4",BOREL_MEASURABLE_SETS4,DB.Thm),
   ("BOREL_MEASURABLE_SETS5",BOREL_MEASURABLE_SETS5,DB.Thm),
   ("BOREL_MEASURABLE_SETS6",BOREL_MEASURABLE_SETS6,DB.Thm),
   ("BOREL_MEASURABLE_SETS7",BOREL_MEASURABLE_SETS7,DB.Thm),
   ("BOREL_MEASURABLE_SETS8",BOREL_MEASURABLE_SETS8,DB.Thm),
   ("BOREL_MEASURABLE_SETS9",BOREL_MEASURABLE_SETS9,DB.Thm),
   ("BOREL_MEASURABLE_SETS10",BOREL_MEASURABLE_SETS10,DB.Thm),
   ("BOREL_MEASURABLE_SETS",BOREL_MEASURABLE_SETS,DB.Thm),
   ("IN_MEASURABLE_BOREL_CONST",IN_MEASURABLE_BOREL_CONST,DB.Thm),
   ("IN_MEASURABLE_BOREL_INDICATOR",IN_MEASURABLE_BOREL_INDICATOR,DB.Thm),
   ("IN_MEASURABLE_BOREL_CMUL",IN_MEASURABLE_BOREL_CMUL,DB.Thm),
   ("IN_MEASURABLE_BOREL_ABS",IN_MEASURABLE_BOREL_ABS,DB.Thm),
   ("IN_MEASURABLE_BOREL_SQR",IN_MEASURABLE_BOREL_SQR,DB.Thm),
   ("IN_MEASURABLE_BOREL_ADD",IN_MEASURABLE_BOREL_ADD,DB.Thm),
   ("IN_MEASURABLE_BOREL_SUB",IN_MEASURABLE_BOREL_SUB,DB.Thm),
   ("IN_MEASURABLE_BOREL_MUL",IN_MEASURABLE_BOREL_MUL,DB.Thm),
   ("IN_MEASURABLE_BOREL_SUM",IN_MEASURABLE_BOREL_SUM,DB.Thm),
   ("IN_MEASURABLE_BOREL_CMUL_INDICATOR",
    IN_MEASURABLE_BOREL_CMUL_INDICATOR,
    DB.Thm),
   ("IN_MEASURABLE_BOREL_MUL_INDICATOR",
    IN_MEASURABLE_BOREL_MUL_INDICATOR,
    DB.Thm),
   ("IN_MEASURABLE_BOREL_MUL_INDICATOR_EQ",
    IN_MEASURABLE_BOREL_MUL_INDICATOR_EQ,
    DB.Thm),
   ("IN_MEASURABLE_BOREL_POS_SIMPLE_FN",
    IN_MEASURABLE_BOREL_POS_SIMPLE_FN,
    DB.Thm), ("IN_MEASURABLE_BOREL_POW",IN_MEASURABLE_BOREL_POW,DB.Thm),
   ("IN_MEASURABLE_BOREL_MAX",IN_MEASURABLE_BOREL_MAX,DB.Thm),
   ("IN_MEASURABLE_BOREL_MONO_SUP",IN_MEASURABLE_BOREL_MONO_SUP,DB.Thm),
   ("FN_PLUS_POS",FN_PLUS_POS,DB.Thm),
   ("FN_MINUS_POS",FN_MINUS_POS,DB.Thm),
   ("FN_PLUS_POS_ID",FN_PLUS_POS_ID,DB.Thm),
   ("FN_MINUS_POS_ZERO",FN_MINUS_POS_ZERO,DB.Thm),
   ("FN_PLUS_CMUL",FN_PLUS_CMUL,DB.Thm),
   ("FN_MINUS_CMUL",FN_MINUS_CMUL,DB.Thm),
   ("FN_PLUS_ADD_LE",FN_PLUS_ADD_LE,DB.Thm),
   ("FN_MINUS_ADD_LE",FN_MINUS_ADD_LE,DB.Thm),
   ("IN_MEASURABLE_BOREL_FN_PLUS",IN_MEASURABLE_BOREL_FN_PLUS,DB.Thm),
   ("IN_MEASURABLE_BOREL_FN_MINUS",IN_MEASURABLE_BOREL_FN_MINUS,DB.Thm),
   ("IN_MEASURABLE_BOREL_PLUS_MINUS",
    IN_MEASURABLE_BOREL_PLUS_MINUS,
    DB.Thm), ("INDICATOR_FN_MUL_INTER",INDICATOR_FN_MUL_INTER,DB.Thm),
   ("indicator_fn_split",indicator_fn_split,DB.Thm),
   ("indicator_fn_suminf",indicator_fn_suminf,DB.Thm),
   ("measure_split",measure_split,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("extrealTheory.extreal_grammars",
                          extrealTheory.extreal_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("space", (Term.prim_mk_const { Name = "space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("space", (Term.prim_mk_const { Name = "space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subsets", (Term.prim_mk_const { Name = "subsets", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subsets", (Term.prim_mk_const { Name = "subsets", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subset_class", (Term.prim_mk_const { Name = "subset_class", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subset_class", (Term.prim_mk_const { Name = "subset_class", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("algebra", (Term.prim_mk_const { Name = "algebra", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("algebra", (Term.prim_mk_const { Name = "algebra", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sigma_algebra", (Term.prim_mk_const { Name = "sigma_algebra", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sigma_algebra", (Term.prim_mk_const { Name = "sigma_algebra", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sigma", (Term.prim_mk_const { Name = "sigma", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sigma", (Term.prim_mk_const { Name = "sigma", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("m_space", (Term.prim_mk_const { Name = "m_space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("m_space", (Term.prim_mk_const { Name = "m_space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measurable_sets", (Term.prim_mk_const { Name = "measurable_sets", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measurable_sets", (Term.prim_mk_const { Name = "measurable_sets", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure", (Term.prim_mk_const { Name = "measure", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure", (Term.prim_mk_const { Name = "measure", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("positive", (Term.prim_mk_const { Name = "positive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("positive", (Term.prim_mk_const { Name = "positive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("additive", (Term.prim_mk_const { Name = "additive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("additive", (Term.prim_mk_const { Name = "additive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countably_additive", (Term.prim_mk_const { Name = "countably_additive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countably_additive", (Term.prim_mk_const { Name = "countably_additive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subadditive", (Term.prim_mk_const { Name = "subadditive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subadditive", (Term.prim_mk_const { Name = "subadditive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countably_subadditive", (Term.prim_mk_const { Name = "countably_subadditive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countably_subadditive", (Term.prim_mk_const { Name = "countably_subadditive", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("increasing", (Term.prim_mk_const { Name = "increasing", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("increasing", (Term.prim_mk_const { Name = "increasing", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure_space", (Term.prim_mk_const { Name = "measure_space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure_space", (Term.prim_mk_const { Name = "measure_space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lambda_system", (Term.prim_mk_const { Name = "lambda_system", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lambda_system", (Term.prim_mk_const { Name = "lambda_system", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("outer_measure_space", (Term.prim_mk_const { Name = "outer_measure_space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("outer_measure_space", (Term.prim_mk_const { Name = "outer_measure_space", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inf_measure", (Term.prim_mk_const { Name = "inf_measure", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inf_measure", (Term.prim_mk_const { Name = "inf_measure", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closed_cdi", (Term.prim_mk_const { Name = "closed_cdi", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closed_cdi", (Term.prim_mk_const { Name = "closed_cdi", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("smallest_closed_cdi", (Term.prim_mk_const { Name = "smallest_closed_cdi", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("smallest_closed_cdi", (Term.prim_mk_const { Name = "smallest_closed_cdi", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measurable", (Term.prim_mk_const { Name = "measurable", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measurable", (Term.prim_mk_const { Name = "measurable", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure_preserving", (Term.prim_mk_const { Name = "measure_preserving", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure_preserving", (Term.prim_mk_const { Name = "measure_preserving", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("indicator_fn", (Term.prim_mk_const { Name = "indicator_fn", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("indicator_fn", (Term.prim_mk_const { Name = "indicator_fn", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pos_simple_fn", (Term.prim_mk_const { Name = "pos_simple_fn", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pos_simple_fn", (Term.prim_mk_const { Name = "pos_simple_fn", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("null_set", (Term.prim_mk_const { Name = "null_set", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("null_set", (Term.prim_mk_const { Name = "null_set", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Borel", (Term.prim_mk_const { Name = "Borel", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Borel", (Term.prim_mk_const { Name = "Borel", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fn_plus", (Term.prim_mk_const { Name = "fn_plus", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fn_plus", (Term.prim_mk_const { Name = "fn_plus", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fn_minus", (Term.prim_mk_const { Name = "fn_minus", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fn_minus", (Term.prim_mk_const { Name = "fn_minus", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fn_abs", (Term.prim_mk_const { Name = "fn_abs", Thy = "measure"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fn_abs", (Term.prim_mk_const { Name = "fn_abs", Thy = "measure"}))
  val measure_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "measure",
    thydataty = "compute",
    data =
        "measure.space_def measure.subadditive_def measure.fn_abs_def measure.fn_minus_def measure.fn_plus_def measure.Borel_def measure.null_set_def measure.pos_simple_fn_def measure.indicator_fn_def measure.measure_preserving_def measure.measurable_def measure.smallest_closed_cdi_def measure.closed_cdi_def measure.inf_measure_def measure.outer_measure_space_def measure.lambda_system_def measure.measure_space_def measure.increasing_def measure.countably_subadditive_def measure.subset_class_def measure.countably_additive_def measure.additive_def measure.positive_def measure.measure_def measure.measurable_sets_def measure.m_space_def measure.sigma_def measure.sigma_algebra_def measure.algebra_def measure.subsets_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "measure"
end
