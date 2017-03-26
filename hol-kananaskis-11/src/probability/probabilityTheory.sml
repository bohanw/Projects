structure probabilityTheory :> probabilityTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading probabilityTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open lebesgueTheory
  in end;
  val _ = Theory.link_parents
          ("probability",
          Arbnum.fromString "1488590335",
          Arbnum.fromString "552757")
          [("lebesgue",
           Arbnum.fromString "1488590063",
           Arbnum.fromString "588901")];
  val _ = Theory.incorporate_types "probability" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("min", "bool"),
   ID("pair", "prod"), ID("extreal", "extreal"), ID("num", "num"),
   ID("bool", "!"), ID("pair", ","), ID("seq", "-->"), ID("real", "/"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("min", "@"), ID("pred_set", "BIGINTER"),
   ID("pred_set", "BIGUNION"), ID("arithmetic", "BIT1"),
   ID("measure", "Borel"), ID("pred_set", "CARD"),
   ID("pred_set", "CHOICE"), ID("pred_set", "CROSS"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"),
   ID("pred_set", "EMPTY"), ID("extreal", "EXTREAL_SUM_IMAGE"),
   ID("pred_set", "FINITE"), ID("util_prob", "FUNSET"),
   ID("pred_set", "IMAGE"), ID("bool", "IN"), ID("pred_set", "INSERT"),
   ID("pred_set", "INTER"), ID("arithmetic", "NUMERAL"),
   ID("extreal", "NegInf"), ID("extreal", "Normal"), ID("pred_set", "POW"),
   ID("util_prob", "PREIMAGE"), ID("extreal", "PosInf"),
   ID("real_sigma", "REAL_SUM_IMAGE"), ID("pred_set", "SUBSET"),
   ID("num", "SUC"), ID("pair", "UNCURRY"), ID("pred_set", "UNION"),
   ID("pred_set", "UNIV"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("real", "abs"), ID("measure", "additive"), ID("measure", "algebra"),
   ID("probability", "conditional_distribution"),
   ID("probability", "conditional_expectation"),
   ID("probability", "conditional_prob"), ID("pred_set", "count"),
   ID("util_prob", "countable"), ID("measure", "countably_additive"),
   ID("probability", "distribution"), ID("probability", "events"),
   ID("probability", "expectation"), ID("extreal", "extreal_mul"),
   ID("measure", "increasing"), ID("probability", "indep"),
   ID("probability", "indep_rv"), ID("measure", "indicator_fn"),
   ID("lebesgue", "integral"), ID("probability", "joint_distribution"),
   ID("probability", "joint_distribution3"), ID("measure", "m_space"),
   ID("measure", "measurable"), ID("measure", "measurable_sets"),
   ID("measure", "measure"), ID("measure", "measure_space"),
   ID("combin", "o"), ID("probability", "p_space"),
   ID("measure", "positive"), ID("probability", "possibly"),
   ID("probability", "prob"), ID("probability", "prob_space"),
   ID("probability", "probably"), ID("probability", "random_variable"),
   ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("realax", "real_mul"),
   ID("real", "real_of_num"), ID("probability", "real_random_variable"),
   ID("real", "real_sub"), ID("probability", "rv_conditional_expectation"),
   ID("measure", "sigma_algebra"), ID("measure", "space"),
   ID("measure", "subsets"), ID("real", "sum"), ID("seq", "suminf"),
   ID("seq", "summable"), ID("seq", "sums"),
   ID("probability", "uniform_distribution"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYV "'a", TYOP [0, 2, 1], TYOP [0, 3, 0], TYV "'d",
   TYOP [0, 5, 1], TYOP [0, 6, 1], TYOP [3, 6, 7], TYOP [0, 8, 4],
   TYV "'c", TYOP [0, 10, 9], TYV "'b", TYOP [0, 12, 11], TYOP [4],
   TYOP [0, 2, 14], TYOP [0, 2, 12], TYOP [0, 16, 15], TYOP [0, 15, 17],
   TYOP [0, 12, 1], TYOP [0, 19, 1], TYOP [3, 19, 20], TYOP [0, 21, 18],
   TYOP [0, 3, 1], TYOP [3, 23, 4], TYOP [3, 3, 24], TYOP [0, 25, 22],
   TYOP [0, 25, 1], TYOP [0, 15, 27], TYOP [0, 21, 1], TYOP [0, 25, 29],
   TYOP [0, 16, 30], TYOP [0, 25, 23], TYOP [0, 25, 4], TYOP [0, 25, 3],
   TYOP [3, 12, 10], TYOP [3, 2, 35], TYOP [0, 36, 1], TYOP [0, 37, 0],
   TYOP [0, 5, 10], TYOP [0, 39, 38], TYOP [0, 5, 12], TYOP [0, 41, 40],
   TYOP [0, 5, 2], TYOP [0, 43, 42], TYOP [0, 6, 0], TYOP [3, 7, 45],
   TYOP [3, 6, 46], TYOP [0, 47, 44], TYOP [3, 2, 12], TYOP [0, 49, 1],
   TYOP [0, 50, 0], TYOP [0, 10, 12], TYOP [0, 52, 51], TYOP [0, 10, 2],
   TYOP [0, 54, 53], TYOP [0, 10, 1], TYOP [0, 56, 0], TYOP [0, 56, 1],
   TYOP [3, 58, 57], TYOP [3, 56, 59], TYOP [0, 60, 55], TYOP [3, 56, 58],
   TYOP [0, 62, 1], TYOP [0, 21, 63], TYOP [0, 2, 10], TYOP [0, 65, 64],
   TYOP [0, 16, 66], TYOP [0, 25, 67], TYOP [0, 3, 23], TYOP [0, 25, 69],
   TYOP [0, 15, 14], TYOP [0, 25, 71], TYOP [0, 12, 2], TYOP [0, 73, 4],
   TYOP [0, 19, 0], TYOP [3, 20, 75], TYOP [3, 19, 76], TYOP [0, 77, 74],
   TYOP [0, 23, 15], TYOP [0, 3, 79], TYOP [0, 25, 80], TYOP [0, 15, 79],
   TYOP [0, 25, 82], TYOP [0, 19, 57], TYOP [0, 65, 84], TYOP [0, 16, 85],
   TYOP [0, 25, 86], TYOP [0, 2, 5], TYOP [0, 35, 1], TYOP [5],
   TYOP [0, 12, 3], TYOP [0, 12, 0], TYOP [0, 90, 3], TYOP [0, 16, 1],
   TYOP [0, 94, 1], TYOP [0, 65, 1], TYOP [0, 96, 1], TYOP [0, 88, 1],
   TYOP [0, 98, 1], TYOP [0, 23, 1], TYOP [0, 15, 1], TYOP [0, 101, 1],
   TYOP [0, 73, 1], TYOP [0, 103, 1], TYOP [0, 20, 1], TYOP [0, 91, 1],
   TYOP [0, 106, 1], TYOP [0, 92, 1], TYOP [0, 108, 1], TYOP [0, 54, 1],
   TYOP [0, 110, 1], TYOP [0, 52, 1], TYOP [0, 112, 1], TYOP [0, 58, 1],
   TYOP [0, 43, 1], TYOP [0, 115, 1], TYOP [0, 41, 1], TYOP [0, 117, 1],
   TYOP [0, 39, 1], TYOP [0, 119, 1], TYOP [0, 7, 1], TYOP [0, 100, 1],
   TYOP [0, 4, 1], TYOP [0, 123, 1], TYOP [0, 93, 1], TYOP [0, 125, 1],
   TYOP [0, 89, 1], TYOP [0, 127, 1], TYOP [0, 90, 1], TYOP [0, 129, 1],
   TYOP [0, 27, 1], TYOP [0, 29, 1], TYOP [0, 77, 1], TYOP [0, 133, 1],
   TYOP [0, 63, 1], TYOP [0, 60, 1], TYOP [0, 136, 1], TYOP [0, 8, 1],
   TYOP [0, 138, 1], TYOP [0, 47, 1], TYOP [0, 140, 1], TYOP [0, 0, 1],
   TYOP [0, 142, 1], TYOP [0, 12, 49], TYOP [0, 2, 144], TYOP [0, 35, 36],
   TYOP [0, 2, 146], TYOP [0, 10, 35], TYOP [0, 12, 148], TYOP [3, 3, 23],
   TYOP [0, 23, 150], TYOP [0, 3, 151], TYOP [0, 24, 25], TYOP [0, 3, 153],
   TYOP [0, 20, 21], TYOP [0, 19, 155], TYOP [0, 76, 77],
   TYOP [0, 19, 157], TYOP [0, 58, 62], TYOP [0, 56, 159], TYOP [0, 7, 8],
   TYOP [0, 6, 161], TYOP [0, 4, 24], TYOP [0, 23, 163], TYOP [0, 75, 76],
   TYOP [0, 20, 165], TYOP [0, 89, 0], TYOP [3, 127, 167],
   TYOP [0, 167, 168], TYOP [0, 127, 169], TYOP [3, 10, 5],
   TYOP [3, 12, 171], TYOP [0, 172, 1], TYOP [0, 173, 0], TYOP [0, 173, 1],
   TYOP [3, 175, 174], TYOP [0, 174, 176], TYOP [0, 175, 177],
   TYOP [3, 89, 168], TYOP [0, 168, 179], TYOP [0, 89, 180],
   TYOP [3, 173, 176], TYOP [0, 176, 182], TYOP [0, 173, 183],
   TYOP [3, 90, 90], TYOP [0, 90, 185], TYOP [0, 90, 186], TYOP [0, 90, 0],
   TYOP [0, 188, 142], TYOP [0, 0, 0], TYOP [0, 0, 190], TYOP [0, 1, 1],
   TYOP [0, 1, 192], TYOP [0, 90, 129], TYOP [0, 2, 3], TYOP [0, 12, 19],
   TYOP [0, 14, 1], TYOP [0, 14, 197], TYOP [0, 15, 101],
   TYOP [0, 23, 100], TYOP [0, 4, 123], TYOP [0, 51, 1], TYOP [0, 51, 202],
   TYOP [0, 38, 1], TYOP [0, 38, 204], TYOP [0, 34, 1], TYOP [0, 34, 206],
   TYOP [0, 32, 1], TYOP [0, 32, 208], TYOP [0, 33, 1], TYOP [0, 33, 210],
   TYOP [0, 72, 1], TYOP [0, 72, 212], TYOP [0, 0, 142], TYOP [0, 101, 15],
   TYOP [0, 23, 3], TYOP [0, 90, 90], TYOP [0, 197, 1], TYOP [3, 197, 218],
   TYOP [0, 3, 90], TYOP [0, 6, 90], TYOP [0, 3, 2], TYOP [0, 56, 89],
   TYOP [0, 19, 223], TYOP [0, 171, 1], TYOP [0, 225, 173],
   TYOP [0, 19, 226], TYOP [3, 10, 12], TYOP [0, 228, 1],
   TYOP [0, 19, 229], TYOP [0, 56, 230], TYOP [0, 6, 225],
   TYOP [0, 56, 232], TYOP [0, 3, 3], TYOP [0, 3, 234], TYOP [0, 197, 14],
   TYOP [0, 14, 14], TYOP [0, 237, 236], TYOP [0, 23, 125],
   TYOP [0, 129, 239], TYOP [0, 3, 19], TYOP [0, 16, 241], TYOP [0, 3, 56],
   TYOP [0, 65, 243], TYOP [0, 3, 197], TYOP [0, 15, 245],
   TYOP [0, 19, 23], TYOP [0, 91, 247], TYOP [0, 20, 23], TYOP [0, 19, 3],
   TYOP [0, 250, 249], TYOP [0, 129, 23], TYOP [0, 93, 252],
   TYOP [0, 2, 23], TYOP [0, 12, 20], TYOP [0, 16, 95], TYOP [0, 3, 100],
   TYOP [0, 15, 102], TYOP [0, 19, 105], TYOP [0, 56, 114],
   TYOP [0, 93, 126], TYOP [0, 2, 234], TYOP [0, 19, 19],
   TYOP [0, 12, 263], TYOP [0, 56, 56], TYOP [0, 10, 265],
   TYOP [0, 197, 197], TYOP [0, 14, 267], TYOP [0, 89, 89],
   TYOP [0, 35, 269], TYOP [0, 19, 263], TYOP [0, 56, 265], TYOP [0, 6, 6],
   TYOP [0, 6, 273], TYOP [0, 0, 14], TYOP [0, 19, 20], TYOP [0, 56, 58],
   TYOP [0, 6, 7], TYOP [0, 89, 127], TYOP [0, 173, 175],
   TYOP [0, 16, 250], TYOP [0, 56, 3], TYOP [0, 65, 282], TYOP [0, 197, 3],
   TYOP [0, 15, 284], TYOP [0, 89, 3], TYOP [0, 2, 35], TYOP [0, 287, 286],
   TYOP [0, 73, 241], TYOP [0, 50, 56], TYOP [0, 10, 49],
   TYOP [0, 291, 290], TYOP [0, 37, 6], TYOP [0, 5, 36],
   TYOP [0, 294, 293], TYOP [0, 2, 0], TYOP [0, 296, 4], TYOP [0, 92, 75],
   TYOP [0, 10, 0], TYOP [0, 299, 57], TYOP [0, 197, 0], TYOP [0, 14, 0],
   TYOP [0, 302, 301], TYOP [0, 35, 0], TYOP [0, 304, 167],
   TYOP [0, 12, 299], TYOP [0, 306, 304], TYOP [0, 150, 1],
   TYOP [0, 56, 75], TYOP [0, 16, 309], TYOP [0, 65, 310],
   TYOP [0, 25, 311], TYOP [0, 16, 75], TYOP [0, 25, 313],
   TYOP [0, 65, 57], TYOP [0, 25, 315], TYOP [0, 88, 45],
   TYOP [0, 25, 317], TYOP [0, 15, 301], TYOP [0, 25, 319],
   TYOP [0, 14, 237], TYOP [0, 3, 15], TYOP [0, 12, 14], TYOP [0, 19, 323],
   TYOP [0, 323, 14], TYOP [0, 77, 325], TYOP [0, 65, 167],
   TYOP [0, 16, 327], TYOP [0, 25, 328], TYOP [0, 229, 0],
   TYOP [0, 16, 330], TYOP [0, 65, 331], TYOP [0, 25, 332],
   TYOP [0, 88, 174], TYOP [0, 65, 334], TYOP [0, 16, 335],
   TYOP [0, 25, 336], TYOP [0, 21, 94], TYOP [0, 150, 338],
   TYOP [0, 219, 101], TYOP [0, 150, 340], TYOP [0, 179, 1],
   TYOP [0, 182, 1], TYOP [0, 93, 188], TYOP [0, 4, 344], TYOP [0, 77, 19],
   TYOP [0, 60, 56], TYOP [0, 47, 6], TYOP [0, 77, 75], TYOP [0, 60, 57],
   TYOP [0, 47, 45], TYOP [0, 25, 63], TYOP [0, 65, 352],
   TYOP [0, 25, 138], TYOP [0, 88, 354], TYOP [0, 219, 1],
   TYOP [0, 25, 356], TYOP [0, 15, 357], TYOP [0, 21, 19], TYOP [0, 8, 6],
   TYOP [0, 21, 20], TYOP [0, 62, 58], TYOP [0, 188, 0],
   TYOP [0, 185, 363], TYOP [0, 188, 1], TYOP [0, 21, 75],
   TYOP [0, 16, 366], TYOP [0, 25, 367]]
  end
  val _ = Theory.incorporate_consts "probability" tyvector
     [("uniform_distribution", 13), ("rv_conditional_expectation", 26),
      ("real_random_variable", 28), ("random_variable", 31),
      ("probably", 32), ("prob_space", 27), ("prob", 33), ("possibly", 32),
      ("p_space", 34), ("joint_distribution3", 48),
      ("joint_distribution", 61), ("indep_rv", 68), ("indep", 70),
      ("expectation", 72), ("events", 32), ("distribution", 78),
      ("conditional_prob", 81), ("conditional_expectation", 83),
      ("conditional_distribution", 87)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 19), TMV("B", 56), TMV("X", 10), TMV("X", 16), TMV("X", 15),
   TMV("X", 73), TMV("X", 54), TMV("X", 43), TMV("Y", 16), TMV("Y", 65),
   TMV("Y", 52), TMV("Y", 41), TMV("Z", 88), TMV("Z", 39), TMV("a", 3),
   TMV("a", 19), TMV("a", 50), TMV("a", 37), TMV("a", 89), TMV("a", 90),
   TMV("b", 3), TMV("b", 56), TMV("b", 23), TMV("b", 90), TMV("c", 23),
   TMV("c", 4), TMV("e", 3), TMV("e1", 3), TMV("e2", 23), TMV("f", 15),
   TMV("f", 91), TMV("f", 92), TMV("f", 93), TMV("g", 3), TMV("g", 93),
   TMV("m", 90), TMV("n", 90), TMV("p", 12), TMV("p", 25), TMV("p", 77),
   TMV("p", 60), TMV("p", 47), TMV("r", 14), TMV("r", 0), TMV("s", 3),
   TMV("s", 19), TMV("s", 23), TMV("s", 21), TMV("s", 8), TMV("s1", 19),
   TMV("s2", 56), TMV("s3", 6), TMV("t", 3), TMV("t", 56), TMV("t", 62),
   TMV("u", 3), TMV("u", 6), TMV("x", 2), TMV("x", 12), TMV("x", 10),
   TMV("x", 5), TMV("x", 14), TMV("x", 3), TMV("y", 2), TMV("y", 12),
   TMV("y", 10), TMC(6, 23), TMC(6, 20), TMC(6, 58), TMC(6, 95),
   TMC(6, 97), TMC(6, 99), TMC(6, 100), TMC(6, 102), TMC(6, 104),
   TMC(6, 105), TMC(6, 107), TMC(6, 109), TMC(6, 111), TMC(6, 113),
   TMC(6, 114), TMC(6, 116), TMC(6, 118), TMC(6, 120), TMC(6, 121),
   TMC(6, 122), TMC(6, 124), TMC(6, 126), TMC(6, 128), TMC(6, 130),
   TMC(6, 131), TMC(6, 132), TMC(6, 134), TMC(6, 135), TMC(6, 137),
   TMC(6, 139), TMC(6, 141), TMC(6, 143), TMC(7, 145), TMC(7, 147),
   TMC(7, 149), TMC(7, 152), TMC(7, 154), TMC(7, 156), TMC(7, 158),
   TMC(7, 160), TMC(7, 162), TMC(7, 164), TMC(7, 166), TMC(7, 170),
   TMC(7, 178), TMC(7, 181), TMC(7, 184), TMC(7, 187), TMC(8, 189),
   TMC(9, 191), TMC(10, 193), TMC(11, 90), TMC(12, 194), TMC(13, 195),
   TMC(13, 196), TMC(13, 193), TMC(13, 198), TMC(13, 69), TMC(13, 199),
   TMC(13, 200), TMC(13, 201), TMC(13, 203), TMC(13, 205), TMC(13, 207),
   TMC(13, 209), TMC(13, 211), TMC(13, 213), TMC(13, 194), TMC(13, 214),
   TMC(14, 193), TMC(15, 215), TMC(16, 216), TMC(17, 216), TMC(18, 217),
   TMC(19, 219), TMC(20, 220), TMC(20, 221), TMC(21, 222), TMC(22, 224),
   TMC(22, 227), TMC(22, 231), TMC(22, 233), TMC(23, 235), TMC(24, 69),
   TMC(25, 3), TMC(25, 19), TMC(25, 56), TMC(25, 197), TMC(25, 23),
   TMC(25, 89), TMC(26, 238), TMC(27, 23), TMC(27, 20), TMC(27, 58),
   TMC(27, 7), TMC(27, 218), TMC(28, 240), TMC(29, 242), TMC(29, 244),
   TMC(29, 246), TMC(29, 248), TMC(29, 251), TMC(29, 253), TMC(30, 254),
   TMC(30, 255), TMC(30, 256), TMC(30, 257), TMC(30, 258), TMC(30, 259),
   TMC(30, 260), TMC(30, 261), TMC(31, 262), TMC(31, 264), TMC(31, 266),
   TMC(31, 268), TMC(31, 270), TMC(32, 235), TMC(32, 271), TMC(32, 272),
   TMC(32, 274), TMC(33, 217), TMC(34, 14), TMC(35, 275), TMC(36, 69),
   TMC(36, 276), TMC(36, 277), TMC(36, 278), TMC(36, 279), TMC(36, 280),
   TMC(37, 281), TMC(37, 283), TMC(37, 285), TMC(37, 288), TMC(37, 289),
   TMC(37, 292), TMC(37, 295), TMC(38, 14), TMC(39, 297), TMC(39, 298),
   TMC(39, 300), TMC(39, 303), TMC(39, 305), TMC(40, 69), TMC(40, 200),
   TMC(41, 217), TMC(42, 307), TMC(43, 235), TMC(44, 129), TMC(45, 90),
   TMC(46, 193), TMC(47, 190), TMC(48, 27), TMC(49, 308), TMC(50, 87),
   TMC(50, 312), TMC(51, 83), TMC(52, 81), TMC(53, 194), TMC(54, 23),
   TMC(54, 100), TMC(55, 27), TMC(56, 314), TMC(56, 316), TMC(56, 318),
   TMC(56, 320), TMC(56, 78), TMC(57, 32), TMC(58, 72), TMC(59, 321),
   TMC(60, 27), TMC(61, 70), TMC(62, 68), TMC(63, 322), TMC(63, 324),
   TMC(64, 72), TMC(64, 326), TMC(65, 329), TMC(65, 333), TMC(65, 61),
   TMC(66, 337), TMC(66, 48), TMC(67, 34), TMC(68, 339), TMC(68, 341),
   TMC(69, 32), TMC(70, 33), TMC(71, 27), TMC(71, 342), TMC(71, 343),
   TMC(72, 345), TMC(73, 34), TMC(73, 346), TMC(73, 347), TMC(73, 348),
   TMC(74, 27), TMC(75, 32), TMC(76, 33), TMC(76, 349), TMC(76, 350),
   TMC(76, 351), TMC(77, 27), TMC(77, 133), TMC(78, 32), TMC(79, 31),
   TMC(79, 353), TMC(79, 355), TMC(79, 358), TMC(80, 191), TMC(81, 214),
   TMC(82, 214), TMC(83, 191), TMC(84, 188), TMC(85, 28), TMC(86, 191),
   TMC(87, 26), TMC(88, 308), TMC(89, 359), TMC(89, 360), TMC(90, 361),
   TMC(90, 362), TMC(91, 364), TMC(92, 363), TMC(93, 365), TMC(94, 189),
   TMC(95, 13), TMC(95, 368), TMC(96, 192)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op p_space_def x = x
    val op p_space_def =
    DT(((("probability",0),[]),[]), [read"%129%256@%247@"])
  fun op events_def x = x
    val op events_def =
    DT(((("probability",1),[]),[]), [read"%130%232@%250@"])
  fun op prob_def x = x
    val op prob_def =
    DT(((("probability",2),[]),[]), [read"%131%262@%251@"])
  fun op prob_space_def x = x
    val op prob_space_def =
    DT(((("probability",3),[]),[]),
       [read"%90%38%121%266$0@@%116%252$0@@%134%251$0@%256$0@@@%277%186%139%214@@@@@@|@"])
  fun op indep_def x = x
    val op indep_def =
    DT(((("probability",4),[]),[]),
       [read"%90%38%72%14%72%20%121%236$2@$1@$0@@%116%172$1@%232$2@@@%116%172$0@%232$2@@@%134%262$2@%182$1@$0@@@%276%262$2@$1@@%262$2@$0@@@@@@|@|@|@"])
  fun op probably_def x = x
    val op probably_def =
    DT(((("probability",5),[]),[]),
       [read"%90%38%72%26%121%268$1@$0@@%116%172$0@%232$1@@@%134%262$1@$0@@%277%186%139%214@@@@@@|@|@"])
  fun op possibly_def x = x
    val op possibly_def =
    DT(((("probability",6),[]),[]),
       [read"%90%38%72%26%121%261$1@$0@@%116%172$0@%232$1@@@%292%134%262$1@$0@@%277%117@@@@@|@|@"])
  fun op random_variable_def x = x
    val op random_variable_def =
    DT(((("probability",7),[]),[]),
       [read"%69%3%90%38%91%47%121%269$2@$1@$0@@%116%266$1@@%171$2@%248%101%256$1@@%232$1@@@$0@@@@|@|@|@"])
  fun op real_random_variable_def x = x
    val op real_random_variable_def =
    DT(((("probability",8),[]),[]),
       [read"%73%4%90%38%121%278$1@$0@@%116%266$0@@%116%66%57%135%169$0@%256$1@@@%116%292%122$2$0@@%187@@@%292%122$2$0@@%202@@@@|@@%173$1@%249%101%256$0@@%232$0@@@%140@@@@@|@|@"])
  fun op distribution_def x = x
    val op distribution_def =
    DT(((("probability",9),[]),[]),
       [read"%92%39%74%5%126%231$1@$0@@%44%263$2@%183%199$1@$0@@%257$2@@@|@|@|@"])
  fun op joint_distribution_def x = x
    val op joint_distribution_def =
    DT(((("probability",10),[]),[]),
       [read"%94%40%78%6%79%10%127%244$2@$1@$0@@%16%264$3@%184%200%59%98$3$0@@$2$0@@|@$0@@%258$3@@@|@|@|@|@"])
  fun op joint_distribution3_def x = x
    val op joint_distribution3_def =
    DT(((("probability",11),[]),[]),
       [read"%96%41%81%7%82%11%83%13%128%246$3@$2@$1@$0@@%17%265$4@%185%201%60%99$4$0@@%100$3$0@@$2$0@@@|@$0@@%259$4@@@|@|@|@|@|@"])
  fun op conditional_distribution_def x = x
    val op conditional_distribution_def =
    DT(((("probability",12),[]),[]),
       [read"%90%38%69%3%70%9%75%15%80%21%134%219$4@$3@$2@$1@$0@@%115%242$4@$3@$2@%144$1@$0@@@%228$4@$2@$0@@@|@|@|@|@|@"])
  fun op expectation_def x = x
    val op expectation_def =
    DT(((("probability",13),[]),[]), [read"%132%233@%240@"])
  fun op conditional_expectation_def x = x
    val op conditional_expectation_def =
    DT(((("probability",14),[]),[]),
       [read"%90%38%73%4%85%46%124%221$2@$1@$0@@%136%29%116%278$0@$3@@%72%33%135%172$0@$2@@%122%240$4@%57%234$2$0@@%238$1@$0@@|@@%240$4@%57%234$4$0@@%238$1@$0@@|@@@|@@|@@|@|@|@"])
  fun op conditional_prob_def x = x
    val op conditional_prob_def =
    DT(((("probability",15),[]),[]),
       [read"%90%38%72%27%85%28%124%222$2@$1@$0@@%221$2@%238$1@@$0@@|@|@|@"])
  fun op rv_conditional_expectation_def x = x
    val op rv_conditional_expectation_def =
    DT(((("probability",16),[]),[]),
       [read"%90%38%91%47%73%4%69%8%124%280$3@$2@$1@$0@@%221$3@$1@%167%15%182%195$1@$0@@%256$4@@|@%284$2@@@@|@|@|@|@"])
  fun op indep_rv_def x = x
    val op indep_rv_def =
    DT(((("probability",17),[]),[]),
       [read"%90%38%69%3%70%9%91%47%93%54%121%237$4@$3@$2@$1@$0@@%75%0%80%1%135%116%174$1@%284$3@@@%175$0@%285$2@@@@%236$6@%195$5@$1@@%196$4@$0@@@|@|@@|@|@|@|@|@"])
  fun op uniform_distribution_def x = x
    val op uniform_distribution_def =
    DT(((("probability",18),[]),[]),
       [read"%67%37%68%2%95%48%126%290$2@$1@$0@@%14%115%277%141$0@@@%277%142%283$1@@@@|@|@|@|@"])
  fun op POSITIVE_PROB x = x
    val op POSITIVE_PROB =
    DT(((("probability",19),
        [("bool",[25,56,58,105,124]),("measure",[9]),
         ("probability",[1,2])]),["DISK_THM"]),
       [read"%90%38%121%260$0@@%116%134%262$0@%150@@%277%117@@@%72%44%135%172$0@%232$1@@@%275%277%117@@%262$1@$0@@@|@@@|@"])
  fun op INCREASING_PROB x = x
    val op INCREASING_PROB =
    DT(((("probability",20),
        [("bool",[25,56,58,105,124]),("measure",[14]),
         ("probability",[1,2])]),["DISK_THM"]),
       [read"%90%38%121%235$0@@%72%44%72%52%135%116%172$1@%232$2@@@%116%172$0@%232$2@@@%208$1@$0@@@@%275%262$2@$1@@%262$2@$0@@@|@|@@|@"])
  fun op ADDITIVE_PROB x = x
    val op ADDITIVE_PROB =
    DT(((("probability",21),
        [("bool",[25,56,58,105,124]),("measure",[10]),
         ("probability",[1,2])]),["DISK_THM"]),
       [read"%90%38%121%217$0@@%72%44%72%52%135%116%172$1@%232$2@@@%116%172$0@%232$2@@@%149$1@$0@@@@%134%262$2@%212$1@$0@@@%273%262$2@$1@@%262$2@$0@@@@|@|@@|@"])
  fun op COUNTABLY_ADDITIVE_PROB x = x
    val op COUNTABLY_ADDITIVE_PROB =
    DT(((("probability",22),
        [("bool",[25,56,58,105,124]),("measure",[11]),
         ("probability",[1,2])]),["DISK_THM"]),
       [read"%90%38%121%226$0@@%87%32%135%116%176$0@%162%213@%232$1@@@@%116%89%35%89%36%135%292%133$1@$0@@@%149$2$1@@$2$0@@@|@|@@%172%138%168$0@%213@@@%232$1@@@@@%289%255%262$1@@$0@@%262$1@%138%168$0@%213@@@@@|@@|@"])
  fun op PROB_SPACE x = x
    val op PROB_SPACE =
    DT(((("probability",23),
        [("bool",[25,26,47,48,53,54,63]),("measure",[15]),
         ("probability",[0,1,2,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%121%266$0@@%116%281%101%256$0@@%232$0@@@@%116%260$0@@%116%226$0@@%134%262$0@%256$0@@@%277%186%139%214@@@@@@@@|@"])
  fun op EVENTS_SIGMA_ALGEBRA x = x
    val op EVENTS_SIGMA_ALGEBRA =
    DT(((("probability",24),
        [("bool",[25,53,58,63,105,124]),
         ("probability",[23])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%281%101%256$0@@%232$0@@@@|@"])
  fun op EVENTS_ALGEBRA x = x
    val op EVENTS_ALGEBRA =
    DT(((("probability",25),
        [("bool",[25,26,47,48,53,54,63,71,94]),("measure",[54]),
         ("probability",[24]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%218%101%256$0@@%232$0@@@@|@"])
  fun op PROB_EMPTY x = x
    val op PROB_EMPTY =
    DT(((("probability",26),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,94,146]),
         ("probability",[19,23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%134%262$0@%150@@%277%117@@@|@"])
  fun op PROB_UNIV x = x
    val op PROB_UNIV =
    DT(((("probability",27),
        [("bool",[25,53,56,58,105,124]),
         ("probability",[23])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%134%262$0@%256$0@@@%277%186%139%214@@@@@|@"])
  fun op PROB_SPACE_POSITIVE x = x
    val op PROB_SPACE_POSITIVE =
    DT(((("probability",28),
        [("bool",[25,53,58,63,105,124]),
         ("probability",[23])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%260$0@@|@"])
  fun op PROB_SPACE_COUNTABLY_ADDITIVE x = x
    val op PROB_SPACE_COUNTABLY_ADDITIVE =
    DT(((("probability",29),
        [("bool",[25,53,58,63,105,124]),
         ("probability",[23])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%226$0@@|@"])
  fun op PROB_SPACE_ADDITIVE x = x
    val op PROB_SPACE_ADDITIVE =
    DT(((("probability",30),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("combin",[19]),("measure",[63]),("probability",[0,1,25,28,29]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%217$0@@|@"])
  fun op PROB_SPACE_INCREASING x = x
    val op PROB_SPACE_INCREASING =
    DT(((("probability",31),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("combin",[19]),("measure",[62]),("probability",[0,1,25,28,30]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%235$0@@|@"])
  fun op PROB_POSITIVE x = x
    val op PROB_POSITIVE =
    DT(((("probability",32),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("probability",[19,28]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%275%277%117@@%262$1@$0@@@|@|@"])
  fun op PROB_INCREASING x = x
    val op PROB_INCREASING =
    DT(((("probability",33),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("probability",[20,31]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%116%172$0@%232$2@@@%208$1@$0@@@@@%275%262$2@$1@@%262$2@$0@@@|@|@|@"])
  fun op PROB_ADDITIVE x = x
    val op PROB_ADDITIVE =
    DT(((("probability",34),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,93,
          94,96,146]),("probability",[21,30]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%72%55%135%116%266$3@@%116%172$2@%232$3@@@%116%172$1@%232$3@@@%116%149$2@$1@@%123$0@%212$2@$1@@@@@@@%134%262$3@$0@@%273%262$3@$2@@%262$3@$1@@@@|@|@|@|@"])
  fun op PROB_COUNTABLY_ADDITIVE x = x
    val op PROB_COUNTABLY_ADDITIVE =
    DT(((("probability",35),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,74,75,77,78,80,81,84,93,94,
          96,105,124,146]),("combin",[19]),("measure",[1,85]),
         ("probability",[22,24,29]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%87%32%135%116%266$2@@%116%176$0@%162%213@%232$2@@@@%116%89%35%89%36%135%292%133$1@$0@@@%149$2$1@@$2$0@@@|@|@@%123$1@%138%168$0@%213@@@@@@@%289%255%262$2@@$0@@%262$2@$1@@@|@|@|@"])
  fun op PROB_COMPL x = x
    val op PROB_COMPL =
    DT(((("probability",36),
        [("bool",[25,53,54,63,99]),("measure",[86]),
         ("probability",[0,1,2,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%134%262$1@%148%256$1@@$0@@@%279%277%186%139%214@@@@%262$1@$0@@@@|@|@"])
  fun op PROB_INDEP x = x
    val op PROB_INDEP =
    DT(((("probability",37),
        [("bool",[25,53,56,58,105,124]),
         ("probability",[4])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%72%55%135%116%236$3@$2@$1@@%123$0@%182$2@$1@@@@%134%262$3@$0@@%276%262$3@$2@@%262$3@$1@@@@|@|@|@|@"])
  fun op PSPACE x = x
    val op PSPACE =
    DT(((("probability",38),
        [("bool",[25,56]),("measure",[6]),
         ("probability",[0])]),["DISK_THM"]),
       [read"%72%14%85%22%86%25%123%256%102$2@%107$1@$0@@@@$2@|@|@|@"])
  fun op EVENTS x = x
    val op EVENTS =
    DT(((("probability",39),
        [("bool",[25,56]),("measure",[7]),
         ("probability",[1])]),["DISK_THM"]),
       [read"%72%14%85%22%86%25%125%232%102$2@%107$1@$0@@@@$1@|@|@|@"])
  fun op PROB x = x
    val op PROB =
    DT(((("probability",40),
        [("bool",[25,56]),("measure",[8]),
         ("probability",[2])]),["DISK_THM"]),
       [read"%72%14%85%22%86%25%126%262%102$2@%107$1@$0@@@@$0@|@|@|@"])
  fun op EVENTS_INTER x = x
    val op EVENTS_INTER =
    DT(((("probability",41),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[1,32,54]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%172$0@%232$2@@@@@%172%182$1@$0@@%232$2@@@|@|@|@"])
  fun op EVENTS_EMPTY x = x
    val op EVENTS_EMPTY =
    DT(((("probability",42),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[1,28,54]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%172%150@%232$0@@@|@"])
  fun op EVENTS_SPACE x = x
    val op EVENTS_SPACE =
    DT(((("probability",43),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[0,1,29,54]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%135%266$0@@%172%256$0@@%232$0@@@|@"])
  fun op EVENTS_UNION x = x
    val op EVENTS_UNION =
    DT(((("probability",44),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[1,31,54]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%172$0@%232$2@@@@@%172%212$1@$0@@%232$2@@@|@|@|@"])
  fun op INDEP_EMPTY x = x
    val op INDEP_EMPTY =
    DT(((("probability",45),
        [("bool",[25,51,53,56,58,63,105,124]),("pred_set",[53]),
         ("probability",[4,26,42]),("real",[39,425])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%236$1@%150@$0@@|@|@"])
  fun op INTER_PSPACE x = x
    val op INTER_PSPACE =
    DT(((("probability",46),
        [("bool",
         [25,26,47,48,53,54,58,63,71,77,78,84,93,94,96,105,124,146,169]),
         ("measure",[0,1,2,83]),("pred_set",[3,18,45]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%123%182%256$1@@$0@@$0@@|@|@"])
  fun op INDEP_SPACE x = x
    val op INDEP_SPACE =
    DT(((("probability",47),
        [("bool",[25,51,53,56,58,63,105,124]),("probability",[4,27,43,46]),
         ("real",[18])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%236$1@%256$1@@$0@@|@|@"])
  fun op EVENTS_DIFF x = x
    val op EVENTS_DIFF =
    DT(((("probability",48),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[1,33,54]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%172$0@%232$2@@@@@%172%148$1@$0@@%232$2@@@|@|@|@"])
  fun op EVENTS_COMPL x = x
    val op EVENTS_COMPL =
    DT(((("probability",49),
        [("bool",[25,26,47,48,53,54,63,94]),("measure",[0,1,30,54]),
         ("probability",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%172%148%256$1@@$0@@%232$1@@@|@|@"])
  fun op EVENTS_COUNTABLE_UNION x = x
    val op EVENTS_COUNTABLE_UNION =
    DT(((("probability",50),
        [("bool",[25,63]),("measure",[1,84]),
         ("probability",[24])]),["DISK_THM"]),
       [read"%90%38%85%24%135%116%266$1@@%116%209$0@%232$1@@@%225$0@@@@%172%138$0@@%232$1@@@|@|@"])
  fun op PROB_ZERO_UNION x = x
    val op PROB_ZERO_UNION =
    DT(((("probability",51),
        [("bool",[25,26,27,47,48,53,54,56,58,63,93,94,96,105,124]),
         ("pred_set",[3,10,33,45,57,67,74]),("probability",[32,33,34,48]),
         ("real",[27,62]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%116%172$0@%232$2@@@%134%262$2@$0@@%277%117@@@@@@%134%262$2@%212$1@$0@@@%262$2@$1@@@|@|@|@"])
  fun op PROB_EQ_COMPL x = x
    val op PROB_EQ_COMPL =
    DT(((("probability",52),
        [("arithmetic",[46,60,79,207]),
         ("bool",[25,51,53,54,56,58,63,96,105,124]),
         ("numeral",[3,5,17,18]),("probability",[36]),
         ("real",
         [4,6,7,8,12,17,18,20,22,27,28,29,38,39,40,46,59,60,61,62,71,131,
          307,308,309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%116%172$0@%232$2@@@%134%262$2@%148%256$2@@$1@@@%262$2@%148%256$2@@$0@@@@@@@%134%262$2@$1@@%262$2@$0@@@|@|@|@"])
  fun op PROB_ONE_INTER x = x
    val op PROB_ONE_INTER =
    DT(((("probability",53),
        [("bool",[14,25,51,56,58,63,64,96,105,124,129,147,169]),
         ("numeral",[3,7,16]),("pred_set",[3,33,45,67]),
         ("probability",[36,41,49,51,52]),("real",[22,92,415,425]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%135%116%266$2@@%116%172$1@%232$2@@@%116%172$0@%232$2@@@%134%262$2@$0@@%277%186%139%214@@@@@@@@%134%262$2@%182$1@$0@@@%262$2@$1@@@|@|@|@"])
  fun op EVENTS_COUNTABLE_INTER x = x
    val op EVENTS_COUNTABLE_INTER =
    DT(((("probability",54),
        [("bool",
         [13,25,26,27,30,43,47,48,50,51,52,53,54,56,58,63,71,72,77,78,81,
          84,92,93,94,96,97,105,124,146]),("measure",[0,1,2,83]),
         ("pred_set",[3,18,67,80,83,144,244,258]),
         ("probability",[23,49,50]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[67])]),["DISK_THM"]),
       [read"%90%38%85%24%135%116%266$1@@%116%209$0@%232$1@@@%116%225$0@@%292%125$0@%154@@@@@@%172%137$0@@%232$1@@@|@|@"])
  fun op ABS_PROB x = x
    val op ABS_PROB =
    DT(((("probability",55),
        [("bool",[25,51,53,58,63,105,124]),("probability",[32]),
         ("real",[218])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%134%216%262$1@$0@@@%262$1@$0@@@|@|@"])
  fun op PROB_COMPL_LE1 x = x
    val op PROB_COMPL_LE1 =
    DT(((("probability",56),
        [("arithmetic",[46,60,79,207]),
         ("bool",[25,51,53,54,56,58,63,96,105,124]),("numeral",[3]),
         ("probability",[36]),
         ("real",
         [4,6,7,8,12,18,22,27,28,29,38,39,46,59,60,61,62,131,308,309,310,
          311,312,313,314,326,328]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%90%38%72%44%97%43%135%116%266$2@@%172$1@%232$2@@@@%121%275%262$2@%148%256$2@@$1@@@$0@@%275%279%277%186%139%214@@@@$0@@%262$2@$1@@@@|@|@|@"])
  fun op PROB_LE_1 x = x
    val op PROB_LE_1 =
    DT(((("probability",57),
        [("arithmetic",[46,60,79,207]),
         ("bool",[25,51,53,54,56,58,63,96,105]),("numeral",[3]),
         ("probability",[32,36,49]),
         ("real",
         [4,6,7,8,12,18,22,27,28,29,39,46,59,60,61,62,131,308,309,310,311,
          312,313,314,326,328]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%172$0@%232$1@@@@%275%262$1@$0@@%277%186%139%214@@@@@|@|@"])
  fun op PROB_EQ_BIGUNION_IMAGE x = x
    val op PROB_EQ_BIGUNION_IMAGE =
    DT(((("probability",58),
        [("bool",[2,14,15,25,26,36,53,54,55,56,63,99,100]),
         ("combin",[3,5,19,20]),("normalForms",[0]),("probability",[35]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[9,41])]),["DISK_THM"]),
       [read"%90%38%135%116%266$0@@%116%176%32@%162%213@%232$0@@@@%116%176%34@%162%213@%232$0@@@@%116%89%35%89%36%135%292%133$1@$0@@@%149%32$1@@%32$0@@@|@|@@%116%89%35%89%36%135%292%133$1@$0@@@%149%34$1@@%34$0@@@|@|@@%89%36%134%262$1@%32$0@@@%262$1@%34$0@@@|@@@@@@@%134%262$0@%138%168%32@%213@@@@%262$0@%138%168%34@%213@@@@@|@"])
  fun op PROB_FINITELY_ADDITIVE x = x
    val op PROB_FINITELY_ADDITIVE =
    DT(((("probability",59),
        [("arithmetic",[22,24,25,41,46,71,93,173,176,180]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,72,76,80,81,
          93,94,96,101,104,105,109,111,124,129,147]),("combin",[8,19]),
         ("numeral",[3,8]),("pred_set",[3,10,14,60,296]),
         ("probability",[26,35,42]),("real",[286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),("seq",[46,47]),
         ("util_prob",[6,85])]),["DISK_THM"]),
       [read"%90%38%72%44%87%32%89%36%135%116%266$3@@%116%176$1@%162%223$0@@%232$3@@@@%116%89%19%89%23%135%116%118$1@$2@@%116%118$0@$2@@%292%133$1@$0@@@@@%149$3$1@@$3$0@@@|@|@@%123$2@%138%168$1@%223$0@@@@@@@@%134%286%113%117@$0@@%255%262$3@@$1@@@%262$3@$2@@@|@|@|@|@"])
  fun op ABS_1_MINUS_PROB x = x
    val op ABS_1_MINUS_PROB =
    DT(((("probability",60),
        [("arithmetic",[46,60,79,207]),
         ("bool",
         [25,26,27,30,47,48,51,53,54,56,58,63,64,93,94,96,105,124]),
         ("numeral",[3,5,6,17,18]),("probability",[32,57]),
         ("real",
         [4,6,7,8,12,18,22,27,28,29,38,39,46,59,60,61,62,131,204,307,308,
          309,310,311,312,313,314,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%116%172$0@%232$1@@@%292%134%262$1@$0@@%277%117@@@@@@%274%216%279%277%186%139%214@@@@%262$1@$0@@@@%277%186%139%214@@@@@|@|@"])
  fun op PROB_INCREASING_UNION x = x
    val op PROB_INCREASING_UNION =
    DT(((("probability",61),
        [("bool",[25,36,51,53,56,58,63,105,124]),("measure",[111]),
         ("probability",[1,2,3])]),["DISK_THM"]),
       [read"%90%38%72%44%87%32%135%116%266$2@@%116%176$0@%162%213@%232$2@@@@%116%89%36%208$1$0@@$1%210$0@@@|@@%123$1@%138%168$0@%213@@@@@@@%114%255%262$2@@$0@@%262$2@$1@@@|@|@|@"])
  fun op PROB_SUBADDITIVE x = x
    val op PROB_SUBADDITIVE =
    DT(((("probability",62),
        [("bool",[25,26,36,47,48,51,53,54,56,58,63,93,94,96,105,124,143]),
         ("pair",[4]),("pred_set",[3,6,18,33,66,67]),
         ("probability",[33,34,48]),("real",[310]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[135])]),["DISK_THM"]),
       [read"%90%38%72%44%72%52%72%55%135%116%266$3@@%116%172$1@%232$3@@@%116%172$0@%232$3@@@%123$2@%212$1@$0@@@@@@%275%262$3@$2@@%273%262$3@$1@@%262$3@$0@@@@|@|@|@|@"])
  fun op PROB_COUNTABLY_SUBADDITIVE x = x
    val op PROB_COUNTABLY_SUBADDITIVE =
    DT(((("probability",63),
        [("arithmetic",[22,24,25,46,59,60,71,79,93,143,173,176,180,207]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,80,83,84,
          94,96,104,105,124]),("combin",[8,19]),("num",[9]),
         ("numeral",[3,8]),
         ("pred_set",[3,14,18,144,147,150,244,246,251,296,298,299]),
         ("probability",[26,50,61,62]),
         ("real",
         [4,6,7,8,12,18,27,28,38,39,46,55,59,60,61,62,131,280,308,309,310,
          311,312,313,314,326,328]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("seq",[31,41,45]),
         ("util_prob",[6,67,85,137,139])]),["DISK_THM"]),
       [read"%90%38%87%32%135%116%266$1@@%116%209%168$0@%213@@%232$1@@@%288%255%262$1@@$0@@@@@%275%262$1@%138%168$0@%213@@@@%287%255%262$1@@$0@@@@|@|@"])
  fun op PROB_COUNTABLY_ZERO x = x
    val op PROB_COUNTABLY_ZERO =
    DT(((("probability",64),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,76,83,94,104,
          105,124]),("combin",[8]),("numeral",[3,8]),
         ("pred_set",[14,18,144,246]),("probability",[26,32,50,63]),
         ("real",[62,280]),("sat",[1,3,5,6,7,11,12,13,14,15]),("seq",[47]),
         ("util_prob",[108,109,165])]),["DISK_THM"]),
       [read"%90%38%85%24%135%116%266$1@@%116%225$0@@%116%209$0@%232$1@@@%72%62%135%172$0@$1@@%134%262$2@$0@@%277%117@@@|@@@@@%134%262$1@%138$0@@@%277%117@@@|@|@"])
  fun op INDEP_SYM x = x
    val op INDEP_SYM =
    DT(((("probability",65),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("pred_set",[49]),("probability",[4]),("real",[15]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%90%38%72%14%72%20%135%116%266$2@@%236$2@$1@$0@@@%236$2@$0@$1@@|@|@|@"])
  fun op INDEP_REFL x = x
    val op INDEP_REFL =
    DT(((("probability",66),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("pred_set",[48]),("probability",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[151])]),["DISK_THM"]),
       [read"%90%38%72%14%135%116%266$1@@%172$0@%232$1@@@@%121%236$1@$0@$0@@%215%134%262$1@$0@@%277%117@@@%134%262$1@$0@@%277%186%139%214@@@@@@@|@|@"])
  fun op PROB_REAL_SUM_IMAGE x = x
    val op PROB_REAL_SUM_IMAGE =
    DT(((("probability",67),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,55,56,58,63,72,83,96,99,100,101,
          105,124,145,169]),("combin",[3,5]),("measure",[1,4,15,33]),
         ("pred_set",[3,58,67,80,104,131,137,186]),
         ("probability",[1,3,26,34]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%116%172$0@%232$1@@@%116%66%57%135%169$0@$1@@%172%177$0@%150@@%232$2@@@|@@%157$0@@@@@%134%262$1@$0@@%203%57%262$2@%177$0@%150@@|@$0@@@|@|@"])
  fun op PROB_EQUIPROBABLE_FINITE_UNIONS x = x
    val op PROB_EQUIPROBABLE_FINITE_UNIONS =
    DT(((("probability",68),
        [("bool",
         [2,14,15,25,26,27,30,36,51,53,54,56,58,63,99,100,105,124]),
         ("combin",[3,5]),("pred_set",[120,207]),("probability",[26,67]),
         ("real",[39,425]),("real_sigma",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%90%38%72%44%135%116%266$1@@%116%172$0@%232$1@@@%116%66%57%135%169$0@$1@@%172%177$0@%150@@%232$2@@@|@@%116%157$0@@%66%57%66%63%135%116%169$1@$2@@%169$0@$2@@@%134%262$3@%177$1@%150@@@%262$3@%177$0@%150@@@@|@|@@@@@@%134%262$1@$0@@%276%277%141$0@@@%262$1@%177%143$0@@%150@@@@@|@|@"])
  fun op PROB_REAL_SUM_IMAGE_FN x = x
    val op PROB_REAL_SUM_IMAGE_FN =
    DT(((("probability",69),
        [("bool",
         [2,14,15,25,26,27,30,36,48,51,53,54,55,56,58,60,63,64,72,75,83,84,
          96,99,100,105,108,109,124,129,143,147,169]),("combin",[5]),
         ("measure",[113]),
         ("pred_set",
         [3,10,18,33,35,37,45,53,58,67,80,83,104,131,144,147,150,186,187,
          246,248,251]),("probability",[0,1,3,26,27,34,48]),
         ("real",[3,32]),("real_sigma",[1,9]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%76%30%72%26%75%45%135%116%266$3@@%116%172$1@%232$3@@@%116%67%58%135%170$0@$1@@%172%182$2@$3$0@@@%232$4@@@|@@%116%158$0@@%116%67%58%67%64%135%116%170$1@$2@@%116%170$0@$2@@%292%120$1@$0@@@@@%149$4$1@@$4$0@@@|@|@@%123%182%138%166$2@$0@@@%256$3@@@%256$3@@@@@@@@%134%262$3@$1@@%204%58%262$4@%182$2@$3$0@@@|@$0@@@|@|@|@|@"])
  fun op PROB_REAL_SUM_IMAGE_SPACE x = x
    val op PROB_REAL_SUM_IMAGE_SPACE =
    DT(((("probability",70),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("probability",[27,43,67])]),["DISK_THM"]),
       [read"%90%38%135%116%266$0@@%116%66%57%135%169$0@%256$1@@@%172%177$0@%150@@%232$1@@@|@@%157%256$0@@@@@%134%203%57%262$1@%177$0@%150@@|@%256$0@@@%277%186%139%214@@@@@|@"])
  fun op PROB_DISCRETE_EVENTS x = x
    val op PROB_DISCRETE_EVENTS =
    DT(((("probability",71),
        [("bool",
         [2,14,15,25,26,30,36,53,54,55,56,58,63,75,83,84,99,100,105,124]),
         ("combin",[1,3,5]),("pair",[4]),
         ("pred_set",[3,6,18,131,144,192,199,244]),("probability",[50]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[64])]),["DISK_THM"]),
       [read"%90%38%135%116%266$0@@%116%157%256$0@@@%66%57%135%169$0@%256$1@@@%172%177$0@%150@@%232$1@@@|@@@@%72%44%135%208$0@%256$1@@@%172$0@%232$1@@@|@@|@"])
  fun op PROB_DISCRETE_EVENTS_COUNTABLE x = x
    val op PROB_DISCRETE_EVENTS_COUNTABLE =
    DT(((("probability",72),
        [("bool",
         [2,14,15,25,26,30,36,53,54,55,56,58,63,75,84,99,100,105,124]),
         ("combin",[1,3,5]),("pair",[4]),("pred_set",[3,6,18,131,144,244]),
         ("probability",[50]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[67,138])]),["DISK_THM"]),
       [read"%90%38%135%116%266$0@@%116%224%256$0@@@%66%57%135%169$0@%256$1@@@%172%177$0@%150@@%232$1@@@|@@@@%72%44%135%208$0@%256$1@@@%172$0@%232$1@@@|@@|@"])
  fun op marginal_joint_zero x = x
    val op marginal_joint_zero =
    DT(((("probability",73),
        [("bool",[14,25,26,36,51,53,54,56,58,63,73,100,105,124]),
         ("combin",[1,5]),("pair",[8,9]),("pred_set",[18,45,50,268,356]),
         ("probability",[9,10,32,33]),("real",[62]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%45%80%53%135%116%266$4@@%116%125%232$4@@%189%256$4@@@@%215%134%227$4@$3@$1@@%277%117@@@%134%228$4@$2@$0@@%277%117@@@@@@%134%242$4@$3@$2@%144$1@$0@@@%277%117@@@|@|@|@|@|@"])
  fun op marginal_joint_zero3 x = x
    val op marginal_joint_zero3 =
    DT(((("probability",74),
        [("bool",[14,25,26,36,51,53,54,56,58,63,73,100,105,124]),
         ("combin",[1,5]),("pair",[8,9]),("pred_set",[18,45,50,268,356]),
         ("probability",[9,11,32,33]),("real",[62]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%71%12%75%45%80%53%84%56%135%116%266$6@@%116%125%232$6@@%189%256$6@@@@%215%134%227$6@$5@$2@@%277%117@@@%215%134%228$6@$4@$1@@%277%117@@@%134%229$6@$3@$0@@%277%117@@@@@@@%134%245$6@$5@$4@$3@%145$2@%147$1@$0@@@@%277%117@@@|@|@|@|@|@|@|@"])
  fun op distribution_prob_space x = x
    val op distribution_prob_space =
    DT(((("probability",75),
        [("bool",
         [25,26,27,36,48,51,53,54,55,56,58,63,72,84,96,99,105,124,169]),
         ("combin",[5,8]),("measure",[0,1,6,7,8,9,11,15,26,118]),
         ("pred_set",[3,14,45,53,58,144,244]),
         ("probability",[1,2,3,7,9,26,32,38]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,84,87,92,98,102])]),["DISK_THM"]),
       [read"%90%38%69%3%91%47%135%269$1@$2@$0@@%267%104%282$0@@%108%284$0@@%227$2@$1@@@@@|@|@|@"])
  fun op uniform_distribution_prob_space x = x
    val op uniform_distribution_prob_space =
    DT(((("probability",76),
        [("arithmetic",[22,46,71,93,173,176,180]),
         ("bool",
         [2,15,25,26,27,36,51,52,53,54,55,56,58,63,73,75,83,84,99,100,104,
          105,124]),("measure",[0,1,2,3,4,7,8,9,10,88,118,143]),
         ("numeral",[3,6,8]),("pred_set",[10,57,120,192,207,209,212]),
         ("probability",[3,7,18,38]),
         ("real",[26,71,121,131,135,136,326,425,432]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%69%3%90%38%91%47%135%116%157%256$1@@@%116%158%282$0@@@%269$2@$1@$0@@@@%267%104%282$0@@%108%284$0@@%291$1@$2@$0@@@@@|@|@|@"])
  fun op distribution_partition x = x
    val op distribution_partition =
    DT(((("probability",77),
        [("bool",
         [2,14,15,25,26,36,51,53,54,55,56,58,63,73,75,83,84,99,100,105,
          124]),("combin",[3,5]),("measure",[0,1,6,7,8,69,118]),
         ("pred_set",[18,50,131,144,199,356]),
         ("probability",[0,1,2,7,70,71,75]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%90%38%73%4%135%116%266$1@@%116%66%57%135%169$0@%256$2@@@%172%177$0@%150@@%232$2@@@|@@%116%157%256$1@@@%272$0@$1@%140@@@@@%134%206%61%230$2@$1@%180$0@%153@@|@%165$0@%256$1@@@@%277%186%139%214@@@@@|@|@"])
  fun op distribution_lebesgue_thm1 x = x
    val op distribution_lebesgue_thm1 =
    DT(((("probability",78),
        [("bool",[25,51,53,56,58,63,105,124]),("lebesgue",[103]),
         ("measure",[0,1,118]),
         ("probability",[0,1,2,3,7,9])]),["DISK_THM"]),
       [read"%69%3%90%38%91%47%75%0%135%116%269$3@$2@$1@@%174$0@%284$1@@@@%122%188%227$2@$3@$0@@@%240$2@%238%182%195$3@$0@@%256$2@@@@@@|@|@|@|@"])
  fun op distribution_lebesgue_thm2 x = x
    val op distribution_lebesgue_thm2 =
    DT(((("probability",79),
        [("bool",[25,51,53,56,58,63,105,124]),("lebesgue",[103]),
         ("measure",[0,1,7,8,118]),
         ("probability",[0,1,2,3,7,9,75])]),["DISK_THM"]),
       [read"%69%3%90%38%91%47%75%0%135%116%269$3@$2@$1@@%174$0@%284$1@@@@%122%188%227$2@$3@$0@@@%241%104%282$1@@%108%284$1@@%227$2@$3@@@@%239$0@@@@|@|@|@|@"])
  fun op finite_expectation1 x = x
    val op finite_expectation1 =
    DT(((("probability",80),
        [("bool",[25,26,27,51,53,54,58,63,105,124]),("lebesgue",[6,111]),
         ("probability",[0,1,2,3,8,13])]),["DISK_THM"]),
       [read"%90%38%73%4%135%116%157%256$1@@@%278$0@$1@@@%122%233$1@$0@@%156%42%234$0@%188%262$2@%182%197$1@%180$0@%153@@@%256$2@@@@@|@%165$0@%256$1@@@@@|@|@"])
  fun op finite_expectation2 x = x
    val op finite_expectation2 =
    DT(((("probability",81),
        [("bool",[25,26,27,51,53,54,58,63,105,124]),("lebesgue",[6,112]),
         ("probability",[0,1,2,3,8,13])]),["DISK_THM"]),
       [read"%90%38%73%4%135%116%161%165$0@%256$1@@@@%278$0@$1@@@%122%233$1@$0@@%156%42%234$0@%188%262$2@%182%197$1@%180$0@%153@@@%256$2@@@@@|@%165$0@%256$1@@@@@|@|@"])
  fun op finite_expectation x = x
    val op finite_expectation =
    DT(((("probability",82),
        [("bool",[14,25,26,36,53,54,56,58,63,105,124]),("combin",[1,3,5]),
         ("probability",[9,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%90%38%73%4%135%116%157%256$1@@@%278$0@$1@@@%122%233$1@$0@@%156%42%234$0@%188%230$2@$1@%180$0@%153@@@@|@%165$0@%256$1@@@@@|@|@"])
  fun op finite_support_expectation x = x
    val op finite_support_expectation =
    DT(((("probability",83),
        [("bool",[14,25,26,36,53,54,56,58,63,105,124]),("combin",[1,3,5]),
         ("probability",[9,81]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%90%38%73%4%135%116%161%165$0@%256$1@@@@%278$0@$1@@@%122%233$1@$0@@%156%42%234$0@%188%230$2@$1@%180$0@%153@@@@|@%165$0@%256$1@@@@@|@|@"])
  fun op finite_marginal_product_space_POW x = x
    val op finite_marginal_product_space_POW =
    DT(((("probability",84),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,72,75,84,96,99,105,124,
          169]),("combin",[1,5]),("measure",[0,1,7,8,9,10,69,143]),
         ("pair",[4]),("pred_set",[3,18,33,45,53,58,199,268,274,356]),
         ("probability",[7,26,32,34]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84,87])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%135%116%125%189%256$2@@@%232$2@@@%116%269$1@$2@%103%163$1@%256$2@@@%190%163$1@%256$2@@@@@@%116%270$0@$2@%105%164$0@%256$2@@@%191%164$0@%256$2@@@@@@%157%256$2@@@@@@%253%111%144%163$1@%256$2@@@%164$0@%256$2@@@@%109%193%144%163$1@%256$2@@@%164$0@%256$2@@@@@%18%262$3@%182%198%57%100$3$0@@$2$0@@|@$0@@%256$3@@@|@@@@|@|@|@"])
  fun op finite_marginal_product_space_POW2 x = x
    val op finite_marginal_product_space_POW2 =
    DT(((("probability",85),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,72,75,84,96,99,105,124,
          169]),("combin",[1,5]),("measure",[0,1,7,8,9,10,69,143]),
         ("pair",[4]),("pred_set",[3,18,33,45,53,58,268,274,356]),
         ("probability",[7,10,26,32,34]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84,87])]),["DISK_THM"]),
       [read"%90%38%75%49%80%50%69%3%70%9%135%116%125%189%256$4@@@%232$4@@@%116%269$1@$4@%103$3@%190$3@@@@%116%270$0@$4@%105$2@%191$2@@@@%116%157%256$4@@@%116%158$3@@%159$2@@@@@@@%253%111%144$3@$2@@%109%193%144$3@$2@@@%242$4@$1@$0@@@@@|@|@|@|@|@"])
  fun op finite_marginal_product_space_POW3 x = x
    val op finite_marginal_product_space_POW3 =
    DT(((("probability",86),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,56,58,63,72,75,84,96,99,105,124,
          169]),("combin",[1,5]),("measure",[0,1,7,8,9,10,69,143]),
         ("pair",[4]),("pred_set",[3,18,33,45,53,58,268,274,356]),
         ("probability",[7,11,26,32,34]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84,87])]),["DISK_THM"]),
       [read"%90%38%75%49%80%50%84%51%69%3%70%9%71%12%135%116%125%189%256$6@@@%232$6@@@%116%269$2@$6@%103$5@%190$5@@@@%116%270$1@$6@%105$4@%191$4@@@@%116%271$0@$6@%106$3@%192$3@@@@%116%157%256$6@@@%116%158$5@@%116%159$4@@%160$3@@@@@@@@@%254%112%145$5@%147$4@$3@@@%110%194%145$5@%147$4@$3@@@@%245$6@$2@$1@$0@@@@@|@|@|@|@|@|@|@"])
  fun op prob_x_eq_1_imp_prob_y_eq_0 x = x
    val op prob_x_eq_1_imp_prob_y_eq_0 =
    DT(((("probability",87),
        [("bool",[25,26,27,51,53,54,56,58,63,96,101,105,124,145,169]),
         ("pred_set",[3,10,45,131]),("probability",[26,53]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%66%57%135%116%266$1@@%116%172%177$0@%150@@%232$1@@@%134%262$1@%177$0@%150@@@%277%186%139%214@@@@@@@%66%63%135%116%172%177$0@%150@@%232$2@@@%292%119$0@$1@@@@%134%262$2@%177$0@%150@@@%277%117@@@|@@|@|@"])
  fun op distribution_x_eq_1_imp_distribution_y_eq_0 x = x
    val op distribution_x_eq_1_imp_distribution_y_eq_0 =
    DT(((("probability",88),
        [("bool",
         [25,26,27,30,51,53,54,55,56,58,63,72,96,99,101,105,124,145,169]),
         ("measure",[0,1]),("numeral",[3,6]),
         ("pred_set",[3,10,18,45,131,144,356]),
         ("probability",[7,9,26,39,40,75,87]),("real",[425]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%69%3%90%38%67%58%135%116%269$2@$1@%103%163$2@%256$1@@@%190%163$2@%256$1@@@@@@%134%227$1@$2@%178$0@%151@@@%277%186%139%214@@@@@@%67%64%135%292%120$0@$1@@@%134%227$2@$3@%178$0@%151@@@%277%117@@@|@@|@|@|@"])
  fun op joint_distribution_sym x = x
    val op joint_distribution_sym =
    DT(((("probability",89),
        [("bool",[14,25,26,27,36,48,53,54,55,56,58,63,105,124]),
         ("combin",[1,5]),("pair",[8,9]),("pred_set",[3,45,268]),
         ("probability",[10]),("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%80%21%135%266$4@@%134%242$4@$3@$2@%144$1@$0@@@%243$4@$2@$3@%146$0@$1@@@@|@|@|@|@|@"])
  fun op joint_distribution_pos x = x
    val op joint_distribution_pos =
    DT(((("probability",90),
        [("bool",[25,58,63,105,124]),("pred_set",[50,356]),
         ("probability",[10,32])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%88%18%135%116%266$3@@%125%232$3@@%189%256$3@@@@@%275%277%117@@%242$3@$2@$1@$0@@@|@|@|@|@"])
  fun op joint_distribution_le_1 x = x
    val op joint_distribution_le_1 =
    DT(((("probability",91),
        [("bool",[25,58,63,105,124]),("pred_set",[50,356]),
         ("probability",[10,57])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%88%18%135%116%266$3@@%125%232$3@@%189%256$3@@@@@%275%242$3@$2@$1@$0@@%277%186%139%214@@@@@|@|@|@|@"])
  fun op joint_distribution_le x = x
    val op joint_distribution_le =
    DT(((("probability",92),
        [("bool",[25,36,51,53,58,63,105,124]),("pair",[8,9]),
         ("pred_set",[18,45,50,268,356]),("probability",[9,10,33]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%80%21%135%116%266$4@@%125%232$4@@%189%256$4@@@@@%275%242$4@$3@$2@%144$1@$0@@@%227$4@$3@$1@@@|@|@|@|@|@"])
  fun op joint_distribution_le2 x = x
    val op joint_distribution_le2 =
    DT(((("probability",93),
        [("bool",[25,36,51,53,58,63,105,124]),("pair",[8,9]),
         ("pred_set",[18,45,50,268,356]),("probability",[9,10,33]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%80%21%135%116%266$4@@%125%232$4@@%189%256$4@@@@@%275%242$4@$3@$2@%144$1@$0@@@%228$4@$2@$0@@@|@|@|@|@|@"])
  fun op joint_conditional x = x
    val op joint_conditional =
    DT(((("probability",94),
        [("bool",[25,26,27,30,53,54,55,56,58,63,100,105,124,169]),
         ("probability",[12,89,90,92]),("real",[40,62,148]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%80%21%135%116%266$4@@%125%232$4@@%189%256$4@@@@@%134%242$4@$3@$2@%144$1@$0@@@%276%220$4@$2@$3@$0@$1@@%227$4@$3@$1@@@@|@|@|@|@|@"])
  fun op distribution_pos x = x
    val op distribution_pos =
    DT(((("probability",95),
        [("bool",[25,58,63,105,124]),("pred_set",[50,356]),
         ("probability",[9,32])]),["DISK_THM"]),
       [read"%90%38%69%3%75%15%135%116%266$2@@%125%232$2@@%189%256$2@@@@@%275%277%117@@%227$2@$1@$0@@@|@|@|@"])
  fun op conditional_distribution_pos x = x
    val op conditional_distribution_pos =
    DT(((("probability",96),
        [("bool",[25,51,53,56,58,63,105,124]),("probability",[12,90,95]),
         ("real",[26,71,121])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%80%21%135%116%266$4@@%125%232$4@@%189%256$4@@@@@%275%277%117@@%219$4@$3@$2@$1@$0@@@|@|@|@|@|@"])
  fun op conditional_distribution_le_1 x = x
    val op conditional_distribution_le_1 =
    DT(((("probability",97),
        [("bool",[25,30,53,54,55,58,63,99,100,105,124]),
         ("probability",[12,73,93,95]),("real",[18,26,39,57,73,319]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%80%21%135%116%266$4@@%125%232$4@@%189%256$4@@@@@%275%219$4@$3@$2@$1@$0@@%277%186%139%214@@@@@|@|@|@|@|@"])
  fun op marginal_distribution1 x = x
    val op marginal_distribution1 =
    DT(((("probability",98),
        [("bool",
         [2,15,25,26,27,36,48,53,54,55,56,58,63,74,83,84,96,99,105,124,
          143]),("pair",[4,8,9]),
         ("pred_set",[3,6,10,18,45,50,57,131,144,199,268,356]),
         ("probability",[9,10,69]),("real_sigma",[29]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[79,85])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%75%15%135%116%266$3@@%116%157%256$3@@@%125%232$3@@%189%256$3@@@@@@%134%227$3@$2@$0@@%205%59%242$4@$3@$2@%144$1@%179$0@%152@@@|@%164$1@%256$3@@@@@|@|@|@|@"])
  fun op marginal_distribution2 x = x
    val op marginal_distribution2 =
    DT(((("probability",99),
        [("bool",
         [2,15,25,26,27,36,48,53,54,55,56,58,63,74,83,84,96,99,105,124,
          143]),("pair",[4,8,9]),
         ("pred_set",[3,6,10,18,45,50,57,131,144,199,268,356]),
         ("probability",[9,10,69]),("real_sigma",[29]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[79,85])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%80%21%135%116%266$3@@%116%157%256$3@@@%125%232$3@@%189%256$3@@@@@@%134%228$3@$1@$0@@%204%58%242$4@$3@$2@%144%178$0@%151@@$1@@|@%163$2@%256$3@@@@@|@|@|@|@"])
  fun op joint_distribution_sums_1 x = x
    val op joint_distribution_sums_1 =
    DT(((("probability",100),
        [("bool",
         [2,14,15,25,26,36,51,53,54,55,56,58,60,63,75,83,84,99,100,105,124,
          129,169]),("combin",[3,5]),("marker",[6]),
         ("measure",[0,1,69,118]),("pair",[5,8,9,16]),
         ("pred_set",[18,50,131,144,199,275,356]),
         ("probability",[7,38,39,40,70,75,98]),("real_sigma",[9,23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%135%116%266$2@@%116%157%256$2@@@%125%232$2@@%189%256$2@@@@@@%134%207%211%58%65%242$4@$3@$2@%181%100$1@$0@@%155@@||@@%144%163$1@%256$2@@@%164$0@%256$2@@@@@%277%186%139%214@@@@@|@|@|@"])
  fun op joint_distribution_sum_mul1 x = x
    val op joint_distribution_sum_mul1 =
    DT(((("probability",101),
        [("bool",[25,36,51,53,54,55,56,58,60,63,83,105,124]),
         ("marker",[6]),("pair",[5,7,8,16]),("pred_set",[199,275]),
         ("probability",[98]),("real",[16]),("real_sigma",[10,23]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%90%38%69%3%70%9%77%31%135%116%266$3@@%116%157%256$3@@@%125%232$3@@%189%256$3@@@@@@%134%207%211%58%65%276%242$5@$4@$3@%181%100$1@$0@@%155@@@$2$1@@||@@%144%163$2@%256$3@@@%164$1@%256$3@@@@@%204%58%276%227$4@$3@%178$0@%151@@@$1$0@@|@%163$2@%256$3@@@@@|@|@|@|@"])
  end
  val _ = DB.bindl "probability"
  [("p_space_def",p_space_def,DB.Def), ("events_def",events_def,DB.Def),
   ("prob_def",prob_def,DB.Def), ("prob_space_def",prob_space_def,DB.Def),
   ("indep_def",indep_def,DB.Def), ("probably_def",probably_def,DB.Def),
   ("possibly_def",possibly_def,DB.Def),
   ("random_variable_def",random_variable_def,DB.Def),
   ("real_random_variable_def",real_random_variable_def,DB.Def),
   ("distribution_def",distribution_def,DB.Def),
   ("joint_distribution_def",joint_distribution_def,DB.Def),
   ("joint_distribution3_def",joint_distribution3_def,DB.Def),
   ("conditional_distribution_def",conditional_distribution_def,DB.Def),
   ("expectation_def",expectation_def,DB.Def),
   ("conditional_expectation_def",conditional_expectation_def,DB.Def),
   ("conditional_prob_def",conditional_prob_def,DB.Def),
   ("rv_conditional_expectation_def",
    rv_conditional_expectation_def,
    DB.Def), ("indep_rv_def",indep_rv_def,DB.Def),
   ("uniform_distribution_def",uniform_distribution_def,DB.Def),
   ("POSITIVE_PROB",POSITIVE_PROB,DB.Thm),
   ("INCREASING_PROB",INCREASING_PROB,DB.Thm),
   ("ADDITIVE_PROB",ADDITIVE_PROB,DB.Thm),
   ("COUNTABLY_ADDITIVE_PROB",COUNTABLY_ADDITIVE_PROB,DB.Thm),
   ("PROB_SPACE",PROB_SPACE,DB.Thm),
   ("EVENTS_SIGMA_ALGEBRA",EVENTS_SIGMA_ALGEBRA,DB.Thm),
   ("EVENTS_ALGEBRA",EVENTS_ALGEBRA,DB.Thm),
   ("PROB_EMPTY",PROB_EMPTY,DB.Thm), ("PROB_UNIV",PROB_UNIV,DB.Thm),
   ("PROB_SPACE_POSITIVE",PROB_SPACE_POSITIVE,DB.Thm),
   ("PROB_SPACE_COUNTABLY_ADDITIVE",PROB_SPACE_COUNTABLY_ADDITIVE,DB.Thm),
   ("PROB_SPACE_ADDITIVE",PROB_SPACE_ADDITIVE,DB.Thm),
   ("PROB_SPACE_INCREASING",PROB_SPACE_INCREASING,DB.Thm),
   ("PROB_POSITIVE",PROB_POSITIVE,DB.Thm),
   ("PROB_INCREASING",PROB_INCREASING,DB.Thm),
   ("PROB_ADDITIVE",PROB_ADDITIVE,DB.Thm),
   ("PROB_COUNTABLY_ADDITIVE",PROB_COUNTABLY_ADDITIVE,DB.Thm),
   ("PROB_COMPL",PROB_COMPL,DB.Thm), ("PROB_INDEP",PROB_INDEP,DB.Thm),
   ("PSPACE",PSPACE,DB.Thm), ("EVENTS",EVENTS,DB.Thm),
   ("PROB",PROB,DB.Thm), ("EVENTS_INTER",EVENTS_INTER,DB.Thm),
   ("EVENTS_EMPTY",EVENTS_EMPTY,DB.Thm),
   ("EVENTS_SPACE",EVENTS_SPACE,DB.Thm),
   ("EVENTS_UNION",EVENTS_UNION,DB.Thm),
   ("INDEP_EMPTY",INDEP_EMPTY,DB.Thm),
   ("INTER_PSPACE",INTER_PSPACE,DB.Thm),
   ("INDEP_SPACE",INDEP_SPACE,DB.Thm), ("EVENTS_DIFF",EVENTS_DIFF,DB.Thm),
   ("EVENTS_COMPL",EVENTS_COMPL,DB.Thm),
   ("EVENTS_COUNTABLE_UNION",EVENTS_COUNTABLE_UNION,DB.Thm),
   ("PROB_ZERO_UNION",PROB_ZERO_UNION,DB.Thm),
   ("PROB_EQ_COMPL",PROB_EQ_COMPL,DB.Thm),
   ("PROB_ONE_INTER",PROB_ONE_INTER,DB.Thm),
   ("EVENTS_COUNTABLE_INTER",EVENTS_COUNTABLE_INTER,DB.Thm),
   ("ABS_PROB",ABS_PROB,DB.Thm), ("PROB_COMPL_LE1",PROB_COMPL_LE1,DB.Thm),
   ("PROB_LE_1",PROB_LE_1,DB.Thm),
   ("PROB_EQ_BIGUNION_IMAGE",PROB_EQ_BIGUNION_IMAGE,DB.Thm),
   ("PROB_FINITELY_ADDITIVE",PROB_FINITELY_ADDITIVE,DB.Thm),
   ("ABS_1_MINUS_PROB",ABS_1_MINUS_PROB,DB.Thm),
   ("PROB_INCREASING_UNION",PROB_INCREASING_UNION,DB.Thm),
   ("PROB_SUBADDITIVE",PROB_SUBADDITIVE,DB.Thm),
   ("PROB_COUNTABLY_SUBADDITIVE",PROB_COUNTABLY_SUBADDITIVE,DB.Thm),
   ("PROB_COUNTABLY_ZERO",PROB_COUNTABLY_ZERO,DB.Thm),
   ("INDEP_SYM",INDEP_SYM,DB.Thm), ("INDEP_REFL",INDEP_REFL,DB.Thm),
   ("PROB_REAL_SUM_IMAGE",PROB_REAL_SUM_IMAGE,DB.Thm),
   ("PROB_EQUIPROBABLE_FINITE_UNIONS",
    PROB_EQUIPROBABLE_FINITE_UNIONS,
    DB.Thm), ("PROB_REAL_SUM_IMAGE_FN",PROB_REAL_SUM_IMAGE_FN,DB.Thm),
   ("PROB_REAL_SUM_IMAGE_SPACE",PROB_REAL_SUM_IMAGE_SPACE,DB.Thm),
   ("PROB_DISCRETE_EVENTS",PROB_DISCRETE_EVENTS,DB.Thm),
   ("PROB_DISCRETE_EVENTS_COUNTABLE",
    PROB_DISCRETE_EVENTS_COUNTABLE,
    DB.Thm), ("marginal_joint_zero",marginal_joint_zero,DB.Thm),
   ("marginal_joint_zero3",marginal_joint_zero3,DB.Thm),
   ("distribution_prob_space",distribution_prob_space,DB.Thm),
   ("uniform_distribution_prob_space",
    uniform_distribution_prob_space,
    DB.Thm), ("distribution_partition",distribution_partition,DB.Thm),
   ("distribution_lebesgue_thm1",distribution_lebesgue_thm1,DB.Thm),
   ("distribution_lebesgue_thm2",distribution_lebesgue_thm2,DB.Thm),
   ("finite_expectation1",finite_expectation1,DB.Thm),
   ("finite_expectation2",finite_expectation2,DB.Thm),
   ("finite_expectation",finite_expectation,DB.Thm),
   ("finite_support_expectation",finite_support_expectation,DB.Thm),
   ("finite_marginal_product_space_POW",
    finite_marginal_product_space_POW,
    DB.Thm),
   ("finite_marginal_product_space_POW2",
    finite_marginal_product_space_POW2,
    DB.Thm),
   ("finite_marginal_product_space_POW3",
    finite_marginal_product_space_POW3,
    DB.Thm),
   ("prob_x_eq_1_imp_prob_y_eq_0",prob_x_eq_1_imp_prob_y_eq_0,DB.Thm),
   ("distribution_x_eq_1_imp_distribution_y_eq_0",
    distribution_x_eq_1_imp_distribution_y_eq_0,
    DB.Thm), ("joint_distribution_sym",joint_distribution_sym,DB.Thm),
   ("joint_distribution_pos",joint_distribution_pos,DB.Thm),
   ("joint_distribution_le_1",joint_distribution_le_1,DB.Thm),
   ("joint_distribution_le",joint_distribution_le,DB.Thm),
   ("joint_distribution_le2",joint_distribution_le2,DB.Thm),
   ("joint_conditional",joint_conditional,DB.Thm),
   ("distribution_pos",distribution_pos,DB.Thm),
   ("conditional_distribution_pos",conditional_distribution_pos,DB.Thm),
   ("conditional_distribution_le_1",conditional_distribution_le_1,DB.Thm),
   ("marginal_distribution1",marginal_distribution1,DB.Thm),
   ("marginal_distribution2",marginal_distribution2,DB.Thm),
   ("joint_distribution_sums_1",joint_distribution_sums_1,DB.Thm),
   ("joint_distribution_sum_mul1",joint_distribution_sum_mul1,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("lebesgueTheory.lebesgue_grammars",
                          lebesgueTheory.lebesgue_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("p_space", (Term.prim_mk_const { Name = "p_space", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("p_space", (Term.prim_mk_const { Name = "p_space", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("events", (Term.prim_mk_const { Name = "events", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("events", (Term.prim_mk_const { Name = "events", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prob", (Term.prim_mk_const { Name = "prob", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prob", (Term.prim_mk_const { Name = "prob", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prob_space", (Term.prim_mk_const { Name = "prob_space", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prob_space", (Term.prim_mk_const { Name = "prob_space", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("indep", (Term.prim_mk_const { Name = "indep", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("indep", (Term.prim_mk_const { Name = "indep", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("probably", (Term.prim_mk_const { Name = "probably", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("probably", (Term.prim_mk_const { Name = "probably", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("possibly", (Term.prim_mk_const { Name = "possibly", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("possibly", (Term.prim_mk_const { Name = "possibly", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("random_variable", (Term.prim_mk_const { Name = "random_variable", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("random_variable", (Term.prim_mk_const { Name = "random_variable", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_random_variable", (Term.prim_mk_const { Name = "real_random_variable", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_random_variable", (Term.prim_mk_const { Name = "real_random_variable", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("distribution", (Term.prim_mk_const { Name = "distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("distribution", (Term.prim_mk_const { Name = "distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("joint_distribution", (Term.prim_mk_const { Name = "joint_distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("joint_distribution", (Term.prim_mk_const { Name = "joint_distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("joint_distribution3", (Term.prim_mk_const { Name = "joint_distribution3", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("joint_distribution3", (Term.prim_mk_const { Name = "joint_distribution3", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conditional_distribution", (Term.prim_mk_const { Name = "conditional_distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conditional_distribution", (Term.prim_mk_const { Name = "conditional_distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("expectation", (Term.prim_mk_const { Name = "expectation", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("expectation", (Term.prim_mk_const { Name = "expectation", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conditional_expectation", (Term.prim_mk_const { Name = "conditional_expectation", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conditional_expectation", (Term.prim_mk_const { Name = "conditional_expectation", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conditional_prob", (Term.prim_mk_const { Name = "conditional_prob", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conditional_prob", (Term.prim_mk_const { Name = "conditional_prob", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rv_conditional_expectation", (Term.prim_mk_const { Name = "rv_conditional_expectation", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rv_conditional_expectation", (Term.prim_mk_const { Name = "rv_conditional_expectation", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("indep_rv", (Term.prim_mk_const { Name = "indep_rv", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("indep_rv", (Term.prim_mk_const { Name = "indep_rv", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("uniform_distribution", (Term.prim_mk_const { Name = "uniform_distribution", Thy = "probability"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("uniform_distribution", (Term.prim_mk_const { Name = "uniform_distribution", Thy = "probability"}))
  val probability_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "probability",
    thydataty = "compute",
    data =
        "probability.p_space_def probability.possibly_def probability.uniform_distribution_def probability.indep_rv_def probability.rv_conditional_expectation_def probability.conditional_prob_def probability.conditional_expectation_def probability.expectation_def probability.conditional_distribution_def probability.joint_distribution3_def probability.joint_distribution_def probability.distribution_def probability.real_random_variable_def probability.random_variable_def probability.prob_def probability.probably_def probability.indep_def probability.prob_space_def probability.events_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "probability"
end
