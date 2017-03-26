structure util_probTheory :> util_probTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading util_probTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open real_sigmaTheory
  in end;
  val _ = Theory.link_parents
          ("util_prob",
          Arbnum.fromString "1488589709",
          Arbnum.fromString "935025")
          [("real_sigma",
           Arbnum.fromString "1488589435",
           Arbnum.fromString "936668")];
  val _ = Theory.incorporate_types "util_prob" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("realax", "real"), ID("num", "num"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("seq", "-->"),
   ID("real", "/"), ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">="), ID("bool", "?"), ID("min", "@"),
   ID("pred_set", "BIGINTER"), ID("pred_set", "BIGUNION"),
   ID("pred_set", "BIJ"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("pred_set", "CARD"),
   ID("pred_set", "CHOICE"), ID("pred_set", "COMPL"), ID("bool", "COND"),
   ID("pred_set", "CROSS"), ID("pred_set", "DELETE"),
   ID("util_prob", "DFUNSET"), ID("pred_set", "DIFF"),
   ID("pred_set", "DISJOINT"), ID("pred_set", "EMPTY"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("arithmetic", "FUNPOW"),
   ID("util_prob", "FUNSET"), ID("pred_set", "GSPEC"), ID("combin", "I"),
   ID("pred_set", "IMAGE"), ID("bool", "IN"), ID("pred_set", "INJ"),
   ID("pred_set", "INSERT"), ID("pred_set", "INTER"), ID("combin", "K"),
   ID("arithmetic", "MAX"), ID("arithmetic", "NUMERAL"),
   ID("util_prob", "PREIMAGE"), ID("pred_set", "REST"),
   ID("bool", "RES_EXISTS_UNIQUE"), ID("bool", "RES_FORALL"),
   ID("pair", "SND"), ID("pred_set", "SUBSET"), ID("num", "SUC"),
   ID("pred_set", "SURJ"), ID("bool", "T"), ID("pair", "UNCURRY"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("pred_set", "count"),
   ID("util_prob", "countable"), ID("util_prob", "enumerate"),
   ID("transc", "exp"), ID("real", "inf"), ID("realax", "inv"),
   ID("util_prob", "lg"), ID("transc", "ln"), ID("util_prob", "logr"),
   ID("util_prob", "minimal"), ID("seq", "mono"), ID("combin", "o"),
   ID("util_prob", "pair"), ID("real", "pow"), ID("util_prob", "powr"),
   ID("util_prob", "prod_sets"), ID("realax", "real_add"),
   ID("realax", "real_lt"), ID("real", "real_lte"),
   ID("realax", "real_mul"), ID("realax", "real_neg"),
   ID("real", "real_of_num"), ID("real", "real_sub"),
   ID("util_prob", "schroeder_close"), ID("real", "sum"),
   ID("seq", "suminf"), ID("seq", "summable"), ID("seq", "sums"),
   ID("real", "sup"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 2, 2], TYOP [0, 1, 1],
   TYOP [0, 4, 3], TYV "'b", TYOP [2, 1, 6], TYOP [0, 7, 0],
   TYOP [0, 8, 0], TYOP [0, 6, 0], TYOP [0, 10, 0], TYOP [0, 11, 9],
   TYOP [0, 2, 0], TYOP [0, 13, 12], TYOP [3], TYOP [0, 15, 15],
   TYOP [0, 15, 16], TYOP [0, 10, 8], TYOP [0, 2, 18], TYOP [4],
   TYOP [0, 20, 0], TYOP [0, 21, 20], TYOP [0, 20, 1], TYOP [0, 2, 23],
   TYOP [0, 10, 2], TYOP [0, 1, 6], TYOP [0, 26, 25], TYOP [0, 26, 0],
   TYOP [0, 10, 28], TYOP [0, 2, 29], TYOP [0, 1, 10], TYOP [0, 31, 28],
   TYOP [0, 2, 32], TYOP [0, 20, 21], TYOP [0, 15, 0], TYV "'c",
   TYOP [0, 36, 0], TYOP [0, 1, 36], TYOP [0, 6, 36], TYOP [0, 1, 39],
   TYOP [2, 6, 36], TYOP [0, 1, 41], TYOP [0, 6, 2], TYOP [0, 20, 2],
   TYOP [0, 20, 15], TYOP [0, 20, 45], TYOP [2, 20, 20], TYOP [0, 20, 47],
   TYOP [0, 47, 20], TYOP [0, 6, 1], TYOP [0, 36, 1], TYOP [0, 36, 6],
   TYV "'d", TYOP [0, 6, 37], TYOP [0, 53, 0], TYOP [0, 55, 0],
   TYOP [0, 0, 0], TYOP [0, 57, 0], TYOP [0, 4, 0], TYOP [0, 59, 0],
   TYOP [0, 28, 0], TYOP [0, 13, 0], TYOP [0, 40, 0], TYOP [0, 63, 0],
   TYOP [0, 31, 0], TYOP [0, 65, 0], TYOP [0, 42, 0], TYOP [0, 67, 0],
   TYOP [0, 39, 0], TYOP [0, 69, 0], TYOP [0, 11, 0], TYOP [0, 43, 0],
   TYOP [0, 72, 0], TYOP [0, 54, 0], TYOP [0, 74, 0], TYOP [0, 51, 0],
   TYOP [0, 76, 0], TYOP [0, 37, 0], TYOP [0, 78, 0], TYOP [0, 62, 0],
   TYOP [0, 71, 0], TYOP [0, 23, 0], TYOP [0, 82, 0], TYOP [0, 21, 0],
   TYOP [0, 84, 0], TYOP [0, 44, 0], TYOP [0, 86, 0], TYOP [0, 34, 0],
   TYOP [0, 88, 0], TYOP [0, 46, 0], TYOP [0, 90, 0], TYOP [0, 48, 0],
   TYOP [0, 92, 0], TYOP [0, 45, 0], TYOP [0, 94, 0], TYOP [0, 9, 0],
   TYOP [0, 35, 0], TYOP [0, 97, 0], TYOP [0, 20, 20], TYOP [0, 20, 99],
   TYOP [2, 1, 0], TYOP [0, 0, 101], TYOP [0, 1, 102], TYOP [2, 6, 0],
   TYOP [0, 0, 104], TYOP [0, 6, 105], TYOP [2, 8, 0], TYOP [0, 0, 107],
   TYOP [0, 8, 108], TYOP [0, 20, 48], TYOP [2, 15, 0], TYOP [0, 0, 111],
   TYOP [0, 15, 112], TYOP [0, 45, 35], TYOP [0, 0, 57], TYOP [0, 1, 2],
   TYOP [0, 6, 10], TYOP [0, 36, 37], TYOP [0, 2, 13], TYOP [0, 50, 0],
   TYOP [0, 50, 120], TYOP [0, 10, 11], TYOP [0, 28, 61], TYOP [0, 13, 62],
   TYOP [0, 3, 0], TYOP [0, 3, 125], TYOP [0, 9, 96], TYOP [0, 23, 82],
   TYOP [0, 8, 9], TYOP [0, 35, 97], TYOP [0, 15, 35], TYOP [0, 38, 0],
   TYOP [0, 132, 0], TYOP [0, 120, 0], TYOP [0, 52, 0], TYOP [0, 135, 0],
   TYOP [0, 49, 0], TYOP [0, 137, 0], TYOP [0, 82, 23], TYOP [0, 13, 2],
   TYOP [0, 11, 10], TYOP [0, 4, 119], TYOP [0, 2, 11], TYOP [0, 26, 143],
   TYOP [0, 2, 78], TYOP [0, 38, 145], TYOP [0, 10, 13], TYOP [0, 50, 147],
   TYOP [0, 37, 11], TYOP [0, 52, 149], TYOP [0, 21, 13],
   TYOP [0, 23, 151], TYOP [0, 47, 0], TYOP [0, 153, 0], TYOP [0, 21, 154],
   TYOP [0, 48, 155], TYOP [0, 153, 84], TYOP [0, 49, 157],
   TYOP [0, 2, 20], TYOP [0, 10, 20], TYOP [0, 2, 1], TYOP [0, 10, 10],
   TYOP [0, 35, 35], TYOP [0, 10, 162], TYOP [0, 0, 164], TYOP [0, 0, 17],
   TYOP [0, 41, 0], TYOP [0, 37, 167], TYOP [0, 10, 168],
   TYOP [0, 21, 153], TYOP [0, 21, 170], TYOP [0, 2, 116], TYOP [0, 2, 3],
   TYOP [0, 21, 21], TYOP [0, 21, 174], TYOP [0, 7, 1], TYOP [0, 41, 6],
   TYOP [0, 20, 3], TYOP [0, 3, 178], TYOP [0, 2, 59], TYOP [0, 2, 180],
   TYOP [0, 1, 101], TYOP [0, 182, 2], TYOP [0, 6, 104], TYOP [0, 184, 10],
   TYOP [2, 2, 10], TYOP [0, 186, 107], TYOP [0, 187, 9],
   TYOP [0, 15, 111], TYOP [0, 189, 35], TYOP [0, 2, 10],
   TYOP [0, 26, 191], TYOP [0, 31, 143], TYOP [0, 43, 147],
   TYOP [0, 37, 2], TYOP [0, 51, 195], TYOP [0, 37, 10], TYOP [0, 52, 197],
   TYOP [0, 36, 10], TYOP [0, 199, 149], TYOP [0, 13, 13],
   TYOP [0, 3, 201], TYOP [0, 11, 13], TYOP [0, 25, 203], TYOP [0, 21, 2],
   TYOP [0, 23, 205], TYOP [0, 44, 151], TYOP [0, 48, 170],
   TYOP [0, 1, 13], TYOP [0, 6, 11], TYOP [0, 4, 60], TYOP [0, 26, 61],
   TYOP [0, 2, 62], TYOP [0, 10, 71], TYOP [0, 8, 96], TYOP [0, 7, 9],
   TYOP [0, 15, 97], TYOP [0, 1, 3], TYOP [0, 6, 162], TYOP [0, 2, 201],
   TYOP [0, 20, 174], TYOP [0, 28, 28], TYOP [0, 28, 222], TYOP [0, 1, 50],
   TYOP [0, 0, 2], TYOP [0, 10, 31], TYOP [0, 15, 45], TYOP [0, 38, 195],
   TYOP [0, 167, 2], TYOP [0, 42, 229], TYOP [0, 50, 191],
   TYOP [0, 39, 197], TYOP [0, 7, 6], TYOP [0, 41, 36], TYOP [0, 153, 154],
   TYOP [0, 7, 36], TYOP [0, 40, 236], TYOP [0, 31, 8], TYOP [0, 10, 107],
   TYOP [0, 2, 239], TYOP [0, 240, 187], TYOP [0, 47, 15],
   TYOP [0, 46, 242], TYOP [0, 35, 15], TYOP [0, 6, 6], TYOP [0, 50, 245],
   TYOP [0, 26, 246], TYOP [0, 51, 52], TYOP [0, 26, 248], TYOP [0, 26, 4],
   TYOP [0, 50, 250], TYOP [0, 26, 38], TYOP [0, 39, 252], TYOP [0, 26, 2],
   TYOP [0, 10, 254], TYOP [0, 42, 26], TYOP [0, 177, 256],
   TYOP [0, 42, 38], TYOP [0, 234, 258], TYOP [0, 48, 45],
   TYOP [0, 242, 260], TYOP [0, 45, 15], TYOP [0, 47, 262]]
  end
  val _ = Theory.incorporate_consts "util_prob" tyvector
     [("schroeder_close", 5), ("prod_sets", 14), ("powr", 17),
      ("pair", 19), ("minimal", 22), ("logr", 17), ("lg", 16),
      ("enumerate", 24), ("countable", 13), ("PREIMAGE", 27),
      ("FUNSET", 30), ("DFUNSET", 33)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("N", 20), TMV("P", 2), TMV("P", 21), TMV("P", 34), TMV("P", 35),
   TMV("Q", 2), TMV("Q", 31), TMV("Q", 10), TMV("X", 2), TMV("Y", 10),
   TMV("a", 2), TMV("a", 10), TMV("a", 13), TMV("a", 20), TMV("a", 15),
   TMV("b", 10), TMV("b", 37), TMV("b", 11), TMV("b", 20), TMV("b", 15),
   TMV("c", 2), TMV("c", 10), TMV("c", 13), TMV("c", 23), TMV("c", 15),
   TMV("d", 20), TMV("e", 1), TMV("e", 15), TMV("f", 4), TMV("f", 26),
   TMV("f", 38), TMV("f", 40), TMV("f", 31), TMV("f", 42), TMV("f", 43),
   TMV("f", 23), TMV("f", 44), TMV("f", 46), TMV("f", 48), TMV("f", 45),
   TMV("f", 49), TMV("g", 4), TMV("g", 26), TMV("g", 2), TMV("g", 50),
   TMV("g", 39), TMV("g", 51), TMV("g", 52), TMV("g", 44), TMV("g", 45),
   TMV("h", 26), TMV("h", 48), TMV("h", 45), TMV("k", 20), TMV("l", 15),
   TMV("m", 20), TMV("n", 36), TMV("n", 53), TMV("n", 20), TMV("p", 54),
   TMV("p", 21), TMV("p", 35), TMV("r", 20), TMV("r", 15), TMV("s", 1),
   TMV("s", 6), TMV("s", 2), TMV("s", 10), TMV("s", 37), TMV("s", 13),
   TMV("s", 11), TMV("s", 21), TMV("s", 8), TMV("sp", 2), TMV("t", 2),
   TMV("t", 10), TMV("t", 37), TMV("u", 2), TMV("u", 10), TMV("v", 1),
   TMV("x", 1), TMV("x", 6), TMV("x", 0), TMV("x", 2), TMV("x", 20),
   TMV("x", 7), TMV("x", 15), TMV("y", 6), TMV("y", 0), TMV("y", 2),
   TMV("y", 10), TMV("y", 15), TMV("z", 6), TMV("z", 7), TMV("z", 15),
   TMC(5, 13), TMC(5, 11), TMC(5, 56), TMC(5, 58), TMC(5, 60), TMC(5, 61),
   TMC(5, 62), TMC(5, 64), TMC(5, 66), TMC(5, 68), TMC(5, 70), TMC(5, 71),
   TMC(5, 73), TMC(5, 75), TMC(5, 77), TMC(5, 79), TMC(5, 80), TMC(5, 81),
   TMC(5, 83), TMC(5, 85), TMC(5, 87), TMC(5, 89), TMC(5, 91), TMC(5, 93),
   TMC(5, 95), TMC(5, 96), TMC(5, 98), TMC(5, 84), TMC(5, 9), TMC(5, 97),
   TMC(6, 100), TMC(7, 103), TMC(7, 106), TMC(7, 109), TMC(7, 110),
   TMC(7, 113), TMC(8, 114), TMC(9, 17), TMC(10, 115), TMC(11, 20),
   TMC(12, 34), TMC(13, 34), TMC(14, 116), TMC(14, 117), TMC(14, 118),
   TMC(14, 115), TMC(14, 119), TMC(14, 121), TMC(14, 122), TMC(14, 123),
   TMC(14, 124), TMC(14, 126), TMC(14, 127), TMC(14, 128), TMC(14, 129),
   TMC(14, 130), TMC(14, 34), TMC(14, 131), TMC(15, 115), TMC(16, 34),
   TMC(17, 13), TMC(17, 78), TMC(17, 60), TMC(17, 61), TMC(17, 133),
   TMC(17, 62), TMC(17, 134), TMC(17, 71), TMC(17, 136), TMC(17, 83),
   TMC(17, 93), TMC(17, 138), TMC(17, 84), TMC(17, 97), TMC(18, 139),
   TMC(18, 22), TMC(19, 140), TMC(20, 140), TMC(20, 141), TMC(21, 142),
   TMC(21, 144), TMC(21, 146), TMC(21, 148), TMC(21, 150), TMC(21, 152),
   TMC(21, 156), TMC(21, 158), TMC(22, 99), TMC(23, 99), TMC(24, 159),
   TMC(24, 160), TMC(25, 161), TMC(26, 3), TMC(26, 162), TMC(26, 163),
   TMC(27, 165), TMC(27, 166), TMC(28, 19), TMC(28, 169), TMC(28, 171),
   TMC(29, 172), TMC(30, 33), TMC(31, 173), TMC(31, 164), TMC(31, 175),
   TMC(32, 119), TMC(32, 122), TMC(33, 2), TMC(33, 10), TMC(33, 13),
   TMC(33, 21), TMC(34, 13), TMC(34, 11), TMC(34, 62), TMC(35, 176),
   TMC(35, 177), TMC(36, 179), TMC(37, 181), TMC(37, 30), TMC(38, 183),
   TMC(38, 185), TMC(38, 188), TMC(38, 190), TMC(39, 4), TMC(39, 3),
   TMC(40, 5), TMC(40, 192), TMC(40, 193), TMC(40, 194), TMC(40, 196),
   TMC(40, 198), TMC(40, 200), TMC(40, 202), TMC(40, 204), TMC(40, 206),
   TMC(40, 207), TMC(40, 208), TMC(41, 209), TMC(41, 210), TMC(41, 211),
   TMC(41, 212), TMC(41, 213), TMC(41, 214), TMC(41, 215), TMC(41, 216),
   TMC(41, 217), TMC(42, 142), TMC(42, 144), TMC(42, 148), TMC(42, 152),
   TMC(43, 218), TMC(43, 219), TMC(43, 220), TMC(43, 221), TMC(44, 173),
   TMC(44, 164), TMC(44, 223), TMC(45, 224), TMC(45, 225), TMC(45, 226),
   TMC(45, 227), TMC(46, 100), TMC(47, 99), TMC(48, 5), TMC(48, 27),
   TMC(48, 228), TMC(48, 230), TMC(48, 231), TMC(48, 232), TMC(49, 3),
   TMC(50, 119), TMC(51, 119), TMC(51, 122), TMC(52, 233), TMC(52, 234),
   TMC(53, 119), TMC(53, 122), TMC(53, 235), TMC(54, 99), TMC(55, 144),
   TMC(56, 0), TMC(57, 237), TMC(57, 238), TMC(57, 241), TMC(57, 243),
   TMC(58, 173), TMC(58, 164), TMC(59, 2), TMC(59, 10), TMC(59, 37),
   TMC(59, 28), TMC(59, 21), TMC(59, 8), TMC(60, 20), TMC(61, 115),
   TMC(62, 34), TMC(63, 13), TMC(63, 11), TMC(63, 62), TMC(63, 84),
   TMC(64, 24), TMC(65, 16), TMC(66, 244), TMC(67, 16), TMC(68, 16),
   TMC(69, 16), TMC(70, 17), TMC(71, 22), TMC(72, 94), TMC(73, 247),
   TMC(73, 249), TMC(73, 251), TMC(73, 253), TMC(73, 255), TMC(73, 257),
   TMC(73, 259), TMC(73, 261), TMC(74, 19), TMC(75, 227), TMC(76, 17),
   TMC(77, 14), TMC(78, 17), TMC(79, 131), TMC(80, 131), TMC(81, 17),
   TMC(82, 16), TMC(83, 45), TMC(84, 17), TMC(85, 5), TMC(86, 263),
   TMC(87, 262), TMC(88, 94), TMC(89, 114), TMC(90, 244), TMC(91, 57)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op FUNSET_def x = x
    val op FUNSET_def =
    DT(((("util_prob",3),[]),[]),
       [read"%101%1%106%7%144%213$1@$0@@%29%95%80%153%232$0@$3@@%233$1$0@@$2@@|@|@|@|@"])
  fun op DFUNSET_def x = x
    val op DFUNSET_def =
    DT(((("util_prob",4),[]),[]),
       [read"%101%1%103%6%144%196$1@$0@@%29%95%80%153%232$0@$3@@%233$1$0@@$2$0@@@|@|@|@|@"])
  fun op pair_def x = x
    val op pair_def =
    DT(((("util_prob",5),[]),[]),
       [read"%101%8%106%9%149%312$1@$0@@%277%80%87%133%232$1@$3@@%233$0@$2@@||@@|@|@"])
  fun op powr_def x = x
    val op powr_def =
    DT(((("util_prob",24),[]),[]),
       [read"%124%86%124%14%152%314$1@$0@@%296%319$0@%300$1@@@@|@|@"])
  fun op logr_def x = x
    val op logr_def =
    DT(((("util_prob",25),[]),[]),
       [read"%124%14%124%86%152%301$1@$0@@%132%300$0@@%300$1@@@|@|@"])
  fun op lg_def x = x
    val op lg_def =
    DT(((("util_prob",26),[]),[]),
       [read"%124%86%152%299$0@@%301%321%257%183%288@@@@$0@@|@"])
  fun op countable_def x = x
    val op countable_def =
    DT(((("util_prob",39),[]),[]),
       [read"%101%66%140%291$0@@%164%35%95%80%153%232$0@$2@@%167%58%137$2$0@@$1@|@@|@|@@|@"])
  fun op enumerate_def x = x
    val op enumerate_def =
    DT(((("util_prob",40),[]),[]),
       [read"%101%66%148%295$0@@%169%35%179$0@%286@$1@|@@|@"])
  fun op schroeder_close_def x = x
    val op schroeder_close_def =
    DT(((("util_prob",41),[]),[]),
       [read"%99%28%101%66%95%80%140%323$2@$1@$0@@%167%58%232$1@%211%220$3@@$0@$2@@|@@|@|@|@"])
  fun op PREIMAGE_def x = x
    val op PREIMAGE_def =
    DT(((("util_prob",79),[]),[]),
       [read"%100%29%106%67%141%259$1@$0@@%214%80%126$0@%233$2$0@@$1@@|@@|@|@"])
  fun op prod_sets_def x = x
    val op prod_sets_def =
    DT(((("util_prob",80),[]),[]),
       [read"%111%12%112%17%147%315$1@$0@@%216%278%66%75%128%192$1@$0@@%133%236$1@$3@@%237$0@$2@@@||@@@|@|@"])
  fun op minimal_def x = x
    val op minimal_def =
    DT(((("util_prob",174),[]),[]),
       [read"%114%60%151%302$0@@%170%58%133$1$0@@%122%55%153%135$0@$1@@%329$2$0@@@|@@|@@|@"])
  fun op EQ_T_IMP x = x
    val op EQ_T_IMP =
    DT(((("util_prob",0),
        [("bool",[25,26,47,48,53,54,63,71]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%98%82%140$0@%153%275@$0@@|@"])
  fun op EQ_SUBSET_SUBSET x = x
    val op EQ_SUBSET_SUBSET =
    DT(((("util_prob",1),
        [("bool",[25,36,51,53,58,63,105,124]),
         ("pred_set",[3,18])]),["DISK_THM"]),
       [read"%101%66%101%74%153%141$1@$0@@%133%270$1@$0@@%270$0@$1@@@|@|@"])
  fun op IN_EQ_UNIV_IMP x = x
    val op IN_EQ_UNIV_IMP =
    DT(((("util_prob",2),
        [("bool",[25,36,53,58,63,105,124]),
         ("pred_set",[14])]),["DISK_THM"]),
       [read"%101%66%153%141$0@%282@@%95%79%232$0@$1@|@@|@"])
  fun op IN_FUNSET x = x
    val op IN_FUNSET =
    DT(((("util_prob",6),
        [("bool",[25,56,58,105,124]),("pred_set",[0]),
         ("util_prob",[3])]),["DISK_THM"]),
       [read"%100%29%101%1%106%7%140%235$2@%213$1@$0@@@%95%80%153%232$0@$2@@%233$3$0@@$1@@|@@|@|@|@"])
  fun op IN_DFUNSET x = x
    val op IN_DFUNSET =
    DT(((("util_prob",7),
        [("bool",[25,56,58,105,124]),("pred_set",[0]),
         ("util_prob",[4])]),["DISK_THM"]),
       [read"%100%29%101%1%103%6%140%235$2@%196$1@$0@@@%95%80%153%232$0@$2@@%233$3$0@@$1$0@@@|@@|@|@|@"])
  fun op IN_PAIR x = x
    val op IN_PAIR =
    DT(((("util_prob",8),
        [("bool",[25,56]),("pair",[5,8,9,16]),("pred_set",[0]),
         ("util_prob",[5])]),["DISK_THM"]),
       [read"%123%85%101%8%106%9%140%239$2@%312$1@$0@@@%133%232%209$2@@$1@@%233%268$2@@$0@@@|@|@|@"])
  fun op FUNSET_THM x = x
    val op FUNSET_THM =
    DT(((("util_prob",9),
        [("bool",[25,53,58,63,105,124]),("util_prob",[6])]),["DISK_THM"]),
       [read"%101%66%106%75%100%29%95%80%153%133%235$1@%213$3@$2@@@%232$0@$3@@@%233$1$0@@$2@@|@|@|@|@"])
  fun op UNIV_FUNSET_UNIV x = x
    val op UNIV_FUNSET_UNIV =
    DT(((("util_prob",10),
        [("bool",[25,36,53,58,63,105,124]),("pred_set",[3,14]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%144%213%282@%283@@%285@"])
  fun op FUNSET_DFUNSET x = x
    val op FUNSET_DFUNSET =
    DT(((("util_prob",11),
        [("bool",[25,36,56,58,105,124]),("combin",[12]),("pred_set",[3]),
         ("util_prob",[6,7])]),["DISK_THM"]),
       [read"%101%83%106%90%144%213$1@$0@@%196$1@%254$0@@@|@|@"])
  fun op PAIR_UNIV x = x
    val op PAIR_UNIV =
    DT(((("util_prob",12),
        [("bool",[25,36,51,63]),("pred_set",[3,14]),
         ("util_prob",[8])]),["DISK_THM"]),
       [read"%149%312%282@%283@@%287@"])
  fun op SUBSET_INTER x = x
    val op SUBSET_INTER =
    DT(((("util_prob",13),
        [("bool",[25,26,47,48,53,54,58,63,71,76,80,81,94,105,124]),
         ("pred_set",[18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%101%74%101%77%140%270$2@%249$1@$0@@@%133%270$2@$1@@%270$2@$0@@@|@|@|@"])
  fun op K_SUBSET x = x
    val op K_SUBSET =
    DT(((("util_prob",14),
        [("bool",[25,26,47,48,53,54,58,63,71,76,80,81,94,105,124]),
         ("combin",[0]),("pred_set",[0,14,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%98%82%101%89%140%270%253$1@@$0@@%289%329$1@@%270%282@$0@@@|@|@"])
  fun op SUBSET_K x = x
    val op SUBSET_K =
    DT(((("util_prob",15),
        [("bool",[25,26,27,47,48,53,54,58,63,71,76,80,81,94,105,124]),
         ("combin",[0]),("pred_set",[0,10,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%83%98%88%140%270$1@%253$0@@@%289%270$1@%202@@$0@@|@|@"])
  fun op SUBSET_THM x = x
    val op SUBSET_THM =
    DT(((("util_prob",16),
        [("bool",[25,36,53,58,63,105,124]),
         ("pred_set",[18])]),["DISK_THM"]),
       [read"%101%1%101%5%153%270$1@$0@@%95%80%153%232$0@$2@@%232$0@$1@@|@@|@|@"])
  fun op PAIRED_BETA_THM x = x
    val op PAIRED_BETA_THM =
    DT(((("util_prob",17),
        [("bool",[25,56]),("pair",[5,8,9,16])]),["DISK_THM"]),
       [read"%102%31%123%93%139%276$1@$0@@$1%209$0@@%268$0@@@|@|@"])
  fun op EMPTY_FUNSET x = x
    val op EMPTY_FUNSET =
    DT(((("util_prob",18),
        [("bool",[25,26,27,36,53,58,63,105,124]),("pred_set",[3,10,14]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%106%67%144%213%202@$0@@%285@|@"])
  fun op FUNSET_EMPTY x = x
    val op FUNSET_EMPTY =
    DT(((("util_prob",19),
        [("bool",[25,26,27,53,56,58,63,105,124]),("pred_set",[3,10]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%101%66%100%29%140%235$0@%213$1@%203@@@%141$1@%202@@|@|@"])
  fun op MAX_LE_X x = x
    val op MAX_LE_X =
    DT(((("util_prob",20),
        [("arithmetic",[307]),("bool",[25,56])]),["DISK_THM"]),
       [read"%122%55%122%58%122%53%140%136%256$2@$1@@$0@@%133%136$2@$0@@%136$1@$0@@@|@|@|@"])
  fun op X_LE_MAX x = x
    val op X_LE_MAX =
    DT(((("util_prob",21),
        [("arithmetic",[307]),("bool",[25,56])]),["DISK_THM"]),
       [read"%122%55%122%58%122%53%140%136$0@%256$2@$1@@@%289%136$0@$2@@%136$0@$1@@@|@|@|@"])
  fun op TRANSFORM_2D_NUM x = x
    val op TRANSFORM_2D_NUM =
    DT(((("util_prob",22),
        [("arithmetic",[24,25,27,46,71,93,146,173,176,180]),
         ("bool",[25,26,36,47,48,53,54,58,63,94,96,104,105,124]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%116%3%153%133%122%55%122%58%153$2$1@$0@@$2$0@$1@@|@|@@%122%55%122%58$2$1@%125$1@$0@@|@|@@@%122%55%122%58$2$1@$0@|@|@@|@"])
  fun op TRIANGLE_2D_NUM x = x
    val op TRIANGLE_2D_NUM =
    DT(((("util_prob",23),
        [("arithmetic",[26,146]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%3%153%122%25%122%58$2$0@%125$1@$0@@|@|@@%122%55%122%58%153%136$1@$0@@$2$1@$0@@|@|@@|@"])
  fun op lg_1 x = x
    val op lg_1 =
    DT(((("util_prob",27),
        [("bool",[25,56]),("real",[136,425]),("transc",[38]),
         ("util_prob",[25,26])]),["DISK_THM"]),
       [read"%152%299%321%257%182%288@@@@@%321%134@@"])
  fun op logr_1 x = x
    val op logr_1 =
    DT(((("util_prob",28),
        [("bool",[25,56]),("real",[136,425]),("transc",[38]),
         ("util_prob",[25])]),["DISK_THM"]),
       [read"%124%19%152%301$0@%321%257%182%288@@@@@%321%134@@|@"])
  fun op lg_nonzero x = x
    val op lg_nonzero =
    DT(((("util_prob",29),
        [("arithmetic",[46,60,79,207]),
         ("bool",[25,26,27,43,51,52,53,54,56,58,63,93,96,105,124]),
         ("numeral",[3,6,7]),
         ("real",
         [7,8,12,18,26,27,28,39,46,59,60,61,62,74,98,116,131,308,309,310,
          311,312,313,314,326,328,425,436]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("transc",[37,38]),
         ("util_prob",[25,26,27])]),["DISK_THM"]),
       [read"%124%86%153%133%329%152$0@%321%134@@@@%318%321%134@@$0@@@%140%329%152%299$0@@%321%134@@@@%329%152$0@%321%257%182%288@@@@@@@|@"])
  fun op lg_mul x = x
    val op lg_mul =
    DT(((("util_prob",30),
        [("bool",[25,51,53,56,58,63,105,124]),("real",[343]),
         ("transc",[36]),("util_prob",[25,26])]),["DISK_THM"]),
       [read"%124%86%124%91%153%133%317%321%134@@$1@@%317%321%134@@$0@@@%152%299%319$1@$0@@@%316%299$1@@%299$0@@@@|@|@"])
  fun op logr_mul x = x
    val op logr_mul =
    DT(((("util_prob",31),
        [("bool",[25,51,53,56,58,63,105,124]),("real",[343]),
         ("transc",[36]),("util_prob",[25])]),["DISK_THM"]),
       [read"%124%19%124%86%124%91%153%133%317%321%134@@$1@@%317%321%134@@$0@@@%152%301$2@%319$1@$0@@@%316%301$2@$1@@%301$2@$0@@@@|@|@|@"])
  fun op lg_2 x = x
    val op lg_2 =
    DT(((("util_prob",32),
        [("bool",[25,51,53,54,58,63,105,124]),("numeral",[3,7]),
         ("real",[74,105,135,436]),("transc",[38,41]),
         ("util_prob",[25,26])]),["DISK_THM"]),
       [read"%152%299%321%257%183%288@@@@@%321%257%182%288@@@@"])
  fun op lg_inv x = x
    val op lg_inv =
    DT(((("util_prob",33),
        [("bool",[25,53,56,58,63,105,124]),("real",[26,308]),
         ("transc",[39]),("util_prob",[25,26])]),["DISK_THM"]),
       [read"%124%86%153%317%321%134@@$0@@%152%299%298$0@@@%320%299$0@@@@|@"])
  fun op logr_inv x = x
    val op logr_inv =
    DT(((("util_prob",34),
        [("bool",[25,53,56,58,63,105,124]),("real",[26,308]),
         ("transc",[39]),("util_prob",[25])]),["DISK_THM"]),
       [read"%124%19%124%86%153%317%321%134@@$0@@%152%301$1@%298$0@@@%320%301$1@$0@@@@|@|@"])
  fun op logr_div x = x
    val op logr_div =
    DT(((("util_prob",35),
        [("bool",[25,51,53,56,58,63,105,124]),("real",[22,26,119]),
         ("util_prob",[31,34])]),["DISK_THM"]),
       [read"%124%19%124%86%124%91%153%133%317%321%134@@$1@@%317%321%134@@$0@@@%152%301$2@%132$1@$0@@@%322%301$2@$1@@%301$2@$0@@@@|@|@|@"])
  fun op neg_lg x = x
    val op neg_lg =
    DT(((("util_prob",36),
        [("bool",[25,51,53,54,56,58,63,96,105,124]),
         ("real",[8,15,18,26,28,39,55,62,98,308,309,311,312,313,314,326]),
         ("sat",[1,3,5,6,7,11,15]),("transc",[39]),
         ("util_prob",[25,26])]),["DISK_THM"]),
       [read"%124%86%153%317%321%134@@$0@@%152%320%299$0@@@%299%298$0@@@@|@"])
  fun op neg_logr x = x
    val op neg_logr =
    DT(((("util_prob",37),
        [("bool",[25,51,53,54,56,58,63,96,105,124]),
         ("real",[8,15,18,26,28,39,55,62,98,308,309,311,312,313,314,326]),
         ("sat",[1,3,5,6,7,11,15]),("transc",[39]),
         ("util_prob",[25])]),["DISK_THM"]),
       [read"%124%19%124%86%153%317%321%134@@$0@@%152%320%301$1@$0@@@%301$1@%298$0@@@@|@|@"])
  fun op lg_pow x = x
    val op lg_pow =
    DT(((("util_prob",38),
        [("arithmetic",[70]),("bool",[25,26,27,51,54,56,58,63,105]),
         ("numeral",[3,7,8]),("real",[17,26,30,60,74,105,419,425,432,436]),
         ("transc",[41,43,46]),("util_prob",[25,26])]),["DISK_THM"]),
       [read"%122%58%152%299%313%321%257%183%288@@@@$0@@@%321$0@@|@"])
  fun op SCHROEDER_CLOSE x = x
    val op SCHROEDER_CLOSE =
    DT(((("util_prob",42),
        [("bool",[25,56]),("pred_set",[0]),
         ("util_prob",[41])]),["DISK_THM"]),
       [read"%99%28%101%66%140%232%80@%323$1@$0@@@%167%58%232%80@%211%220$2@@$0@$1@@|@@|@|@"])
  fun op SCHROEDER_CLOSED x = x
    val op SCHROEDER_CLOSED =
    DT(((("util_prob",43),
        [("arithmetic",[334]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,94,96,105,124]),
         ("combin",[19]),("pred_set",[18,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[42])]),["DISK_THM"]),
       [read"%99%28%101%66%270%220$1@%323$1@$0@@@%323$1@$0@@|@|@"])
  fun op SCHROEDER_CLOSE_SUBSET x = x
    val op SCHROEDER_CLOSE_SUBSET =
    DT(((("util_prob",44),
        [("arithmetic",[15]),("bool",[25,58,63,105,124]),("pred_set",[18]),
         ("util_prob",[42])]),["DISK_THM"]),
       [read"%99%28%101%66%270$0@%323$1@$0@@|@|@"])
  fun op SCHROEDER_CLOSE_SET x = x
    val op SCHROEDER_CLOSE_SET =
    DT(((("util_prob",45),
        [("arithmetic",[15,334]),
         ("bool",[14,25,26,36,47,48,53,54,56,58,63,94,105,124]),
         ("combin",[19]),("num",[9]),("pred_set",[18,144]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[6,42])]),["DISK_THM"]),
       [read"%99%28%101%66%101%74%153%133%234$2@%212$1@$1@@@%270$0@$1@@@%270%323$2@$0@@$1@@|@|@|@"])
  fun op SCHROEDER_BERNSTEIN_AUTO x = x
    val op SCHROEDER_BERNSTEIN_AUTO =
    DT(((("util_prob",46),
        [("arithmetic",[15,28,334]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,74,75,
          78,80,81,84,93,94,96,105,108,109,111,124,129,146,147]),
         ("combin",[19]),("pred_set",[18,67,144,158,166,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6,42,43,44,45])]),["DISK_THM"]),
       [read"%101%66%101%74%153%133%270$0@$1@@%157%28%241$0@$2@$1@|@@@%157%41%174$0@$2@$1@|@@|@|@"])
  fun op INJ_IMAGE_BIJ x = x
    val op INJ_IMAGE_BIJ =
    DT(((("util_prob",47),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124]),
         ("pred_set",[144,158,166,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%100%29%153%162%75%242$1@$2@$0@|@@%175$0@$1@%221$0@$1@@@|@|@"])
  fun op BIJ_SYM_IMP x = x
    val op BIJ_SYM_IMP =
    DT(((("util_prob",48),
        [("bool",
         [2,13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,78,93,94,96,105,
          124,146]),("pred_set",[158,166,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%106%75%153%158%29%175$0@$2@$1@|@@%161%44%177$0@$1@$2@|@@|@|@"])
  fun op BIJ_SYM x = x
    val op BIJ_SYM =
    DT(((("util_prob",49),
        [("bool",[25,26,47,48,53,54,58,63,71,72,77,78,80,83,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[48])]),["DISK_THM"]),
       [read"%101%66%106%75%140%158%29%175$0@$2@$1@|@@%161%44%177$0@$1@$2@|@@|@|@"])
  fun op BIJ_TRANS x = x
    val op BIJ_TRANS =
    DT(((("util_prob",50),
        [("bool",[25,26,47,48,53,54,58,63,93,94,96]),("pred_set",[176]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%110%76%106%78%153%133%159%30%176$0@$3@$2@|@@%163%47%178$0@$2@$1@|@@@%158%50%175$0@$3@$1@|@@|@|@|@"])
  fun op SCHROEDER_BERNSTEIN x = x
    val op SCHROEDER_BERNSTEIN =
    DT(((("util_prob",51),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,83,93,94,96,105,
          124]),("combin",[8]),("pred_set",[18,144,158]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[46,47,48,50])]),["DISK_THM"]),
       [read"%101%66%106%75%153%133%158%29%242$0@$2@$1@|@@%161%44%243$0@$1@$2@|@@@%158%50%175$0@$2@$1@|@@|@|@"])
  fun op SURJ_IMP_INJ x = x
    val op SURJ_IMP_INJ =
    DT(((("util_prob",52),
        [("bool",
         [2,13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,76,78,80,
          81,93,94,96,105,124,146]),("combin",[19]),("pred_set",[158,166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%106%75%153%158%29%274$0@$2@$1@|@@%161%44%243$0@$1@$2@|@@|@|@"])
  fun op BIJ_INJ_SURJ x = x
    val op BIJ_INJ_SURJ =
    DT(((("util_prob",53),
        [("bool",[25,26,47,48,53,54,58,63,72,78,83,94,146]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[51,52])]),["DISK_THM"]),
       [read"%101%66%106%75%153%133%158%29%242$0@$2@$1@|@@%158%42%274$0@$2@$1@|@@@%158%50%175$0@$2@$1@|@@|@|@"])
  fun op BIJ_INV x = x
    val op BIJ_INV =
    DT(((("util_prob",54),
        [("bool",
         [2,13,15,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,
          124]),("combin",[8]),("pred_set",[158,166,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%100%29%101%66%106%75%153%175$2@$1@$0@@%161%44%133%177$0@$1@$2@@%133%95%80%153%232$0@$3@@%137%306$1@$4@$0@@$0@@|@@%96%81%153%233$0@$2@@%138%304$4@$1@$0@@$0@@|@@@|@@|@|@|@"])
  fun op NUM_2D_BIJ x = x
    val op NUM_2D_BIJ =
    DT(((("util_prob",55),
        [("bool",[25,36,51,53,56,58,63,105,124]),("ind_type",[3]),
         ("pair",[4,5,8,16]),("pred_set",[14,158,166,268]),
         ("util_prob",[53])]),["DISK_THM"]),
       [read"%166%40%181$0@%194%286@%286@@%286@|@"])
  fun op NUM_2D_BIJ_INV x = x
    val op NUM_2D_BIJ_INV =
    DT(((("util_prob",56),
        [("bool",
         [25,26,47,48,53,54,58,63,72,74,75,77,78,80,81,83,84,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[49,55])]),["DISK_THM"]),
       [read"%165%38%180$0@%286@%194%286@%286@@|@"])
  fun op NUM_2D_BIJ_NZ x = x
    val op NUM_2D_BIJ_NZ =
    DT(((("util_prob",57),
        [("bool",[25,26,36,51,53,54,56,58,63,105,124,143]),
         ("ind_type",[3]),("numeral",[3,6]),("pair",[4,5,8,9,16]),
         ("pred_set",[6,14,66,131,158,166,268]),
         ("util_prob",[53])]),["DISK_THM"]),
       [read"%166%40%181$0@%194%286@%199%286@%248%134@%205@@@@%286@|@"])
  fun op NUM_2D_BIJ_NZ_INV x = x
    val op NUM_2D_BIJ_NZ_INV =
    DT(((("util_prob",58),
        [("bool",
         [25,26,47,48,53,54,58,63,72,74,75,77,78,80,81,83,84,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[49,57])]),["DISK_THM"]),
       [read"%165%38%180$0@%286@%194%286@%199%286@%248%134@%205@@@@|@"])
  fun op NUM_2D_BIJ_NZ_ALT x = x
    val op NUM_2D_BIJ_NZ_ALT =
    DT(((("util_prob",59),
        [("arithmetic",[46,71,73,77,79,93,148,173,176,177,180,273]),
         ("bool",[25,26,36,51,52,53,54,56,58,63,96,101,104,105,124,143]),
         ("ind_type",[1,3]),("numeral",[3,6,8]),("pair",[4,5,16]),
         ("pred_set",[6,14,66,131,158,166,268]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("util_prob",[53])]),["DISK_THM"]),
       [read"%166%40%181$0@%194%286@%286@@%199%286@%248%134@%205@@@|@"])
  fun op NUM_2D_BIJ_NZ_ALT_INV x = x
    val op NUM_2D_BIJ_NZ_ALT_INV =
    DT(((("util_prob",60),
        [("bool",
         [25,26,47,48,53,54,58,63,72,74,75,77,78,80,81,83,84,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[49,59])]),["DISK_THM"]),
       [read"%165%38%180$0@%199%286@%248%134@%205@@@%194%286@%286@@|@"])
  fun op NUM_2D_BIJ_NZ_ALT2 x = x
    val op NUM_2D_BIJ_NZ_ALT2 =
    DT(((("util_prob",61),
        [("arithmetic",[79,128]),
         ("bool",[25,26,36,51,53,54,56,58,63,105,124,143]),
         ("ind_type",[3]),("numeral",[3,6]),("pair",[4,5,8,9,16]),
         ("pred_set",[6,14,66,131,158,166,268]),
         ("util_prob",[53])]),["DISK_THM"]),
       [read"%166%40%181$0@%194%199%286@%248%134@%205@@@%199%286@%248%134@%205@@@@%286@|@"])
  fun op NUM_2D_BIJ_NZ_ALT2_INV x = x
    val op NUM_2D_BIJ_NZ_ALT2_INV =
    DT(((("util_prob",62),
        [("bool",
         [25,26,47,48,53,54,58,63,72,74,75,77,78,80,81,83,84,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[49,61])]),["DISK_THM"]),
       [read"%165%38%180$0@%286@%194%199%286@%248%134@%205@@@%199%286@%248%134@%205@@@@|@"])
  fun op BIGUNION_PAIR x = x
    val op BIGUNION_PAIR =
    DT(((("util_prob",63),
        [("bool",
         [25,26,27,43,47,48,52,53,54,58,63,71,72,77,78,80,81,93,94,96,
          146]),("pred_set",[3,10,33,80,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%101%74%141%172%247$1@%247$0@%204@@@@%280$1@$0@@|@|@"])
  fun op FINITE_COUNTABLE x = x
    val op FINITE_COUNTABLE =
    DT(((("util_prob",64),
        [("arithmetic",[65]),
         ("bool",
         [13,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,72,78,94,96,
          105,108,109,111,124,129,146,147]),("num",[7]),
         ("pred_set",[10,80,186]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[39])]),["DISK_THM"]),
       [read"%101%66%153%206$0@@%291$0@@|@"])
  fun op BIJ_NUM_COUNTABLE x = x
    val op BIJ_NUM_COUNTABLE =
    DT(((("util_prob",65),
        [("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,72,75,78,94,105,124,146]),
         ("combin",[19]),("pred_set",[14,166,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[39])]),["DISK_THM"]),
       [read"%101%66%153%164%35%179$0@%286@$1@|@@%291$0@@|@"])
  fun op COUNTABLE_EMPTY x = x
    val op COUNTABLE_EMPTY =
    DT(((("util_prob",66),
        [("bool",[25,26,47,48,53,54,63,94]),("pred_set",[185]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[64])]),["DISK_THM"]), [read"%291%202@"])
  fun op COUNTABLE_IMAGE x = x
    val op COUNTABLE_IMAGE =
    DT(((("util_prob",67),
        [("bool",[25,26,47,48,53,54,58,63,72,78,94,105,124,146]),
         ("combin",[8]),("pred_set",[144]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[39])]),["DISK_THM"]),
       [read"%101%66%100%29%153%291$1@@%292%221$0@$1@@@|@|@"])
  fun op COUNTABLE_BIGUNION x = x
    val op COUNTABLE_BIGUNION =
    DT(((("util_prob",68),
        [("bool",[15,25,26,27,30,36,51,53,56,58,63,105,124]),
         ("combin",[8]),("pair",[16]),("pred_set",[14,166,173,244,268]),
         ("util_prob",[39,56])]),["DISK_THM"]),
       [read"%111%22%153%133%293$0@@%101%66%153%236$0@$1@@%291$0@@|@@@%291%172$0@@@|@"])
  fun op COUNTABLE_UNION x = x
    val op COUNTABLE_UNION =
    DT(((("util_prob",69),
        [("bool",[25,26,27,52,58,63,105,124]),("pred_set",[10,80,185,187]),
         ("util_prob",[63,64,68])]),["DISK_THM"]),
       [read"%101%66%101%74%153%133%291$1@@%291$0@@@%291%280$1@$0@@@|@|@"])
  fun op FINITE_INJ x = x
    val op FINITE_INJ =
    DT(((("util_prob",70),
        [("bool",
         [25,26,30,36,47,48,51,53,54,56,58,63,71,72,81,84,93,94,96,105,
          124]),("combin",[19]),("pred_set",[80,102,158,162,185,186,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%100%29%101%66%106%75%153%133%242$2@$1@$0@@%207$0@@@%206$1@@|@|@|@"])
  fun op INFINITE_INJ x = x
    val op INFINITE_INJ =
    DT(((("util_prob",71),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("pred_set",[228]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[70])]),["DISK_THM"]),
       [read"%100%29%101%66%106%75%153%133%242$2@$1@$0@@%329%206$1@@@@%329%207$0@@@|@|@|@"])
  fun op ENUMERATE x = x
    val op ENUMERATE =
    DT(((("util_prob",72),
        [("bool",[2,25,56]),("util_prob",[40])]),["DISK_THM"]),
       [read"%101%66%140%164%35%179$0@%286@$1@|@@%179%295$0@@%286@$0@@|@"])
  fun op FINITE_REST x = x
    val op FINITE_REST =
    DT(((("util_prob",73),
        [("bool",[25,56]),("pred_set",[121,188])]),["DISK_THM"]),
       [read"%101%66%140%206%264$0@@@%206$0@@|@"])
  fun op EXPLICIT_ENUMERATE_MONO x = x
    val op EXPLICIT_ENUMERATE_MONO =
    DT(((("util_prob",74),
        [("arithmetic",[15,334]),
         ("bool",[14,25,26,36,47,48,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("num",[9]),("pred_set",[18,19,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%122%58%101%66%270%211%264@$1@$0@@$0@|@|@"])
  fun op EXPLICIT_ENUMERATE_NOT_EMPTY x = x
    val op EXPLICIT_ENUMERATE_NOT_EMPTY =
    DT(((("util_prob",75),
        [("arithmetic",[15]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,
          124]),("combin",[19]),("num",[9]),("pred_set",[185]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[73])]),["DISK_THM"]),
       [read"%122%58%101%66%153%329%206$0@@@%329%141%211%264@$1@$0@@%202@@@|@|@"])
  fun op INFINITE_EXPLICIT_ENUMERATE x = x
    val op INFINITE_EXPLICIT_ENUMERATE =
    DT(((("util_prob",76),
        [("arithmetic",[15,28]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,
          84,93,94,96,105,124,146]),("combin",[19]),("num",[7,9]),
         ("pred_set",[14,18,120,122,158,228]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[73,74,75])]),["DISK_THM"]),
       [read"%101%66%153%329%206$0@@@%244%58%186%211%264@$0@$1@@|@%286@$0@@|@"])
  fun op COUNTABLE_ALT x = x
    val op COUNTABLE_ALT =
    DT(((("util_prob",77),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,78,83,93,94,96,
          105,108,109,111,124,146]),("pred_set",[11,14,166,185]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[39,53,64,65,72,76])]),["DISK_THM"]),
       [read"%101%66%140%291$0@@%289%206$0@@%179%295$0@@%286@$0@@@|@"])
  fun op DISJOINT_COUNT x = x
    val op DISJOINT_COUNT =
    DT(((("util_prob",78),
        [("arithmetic",[24,25,41,46,71,93,172,173,180]),
         ("bool",
         [25,26,27,30,36,47,48,52,53,54,58,63,71,72,81,84,94,96,101,104,
          105,124]),("numeral",[3,8]),
         ("pred_set",[3,10,45,57,144,244,296]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%115%36%153%122%55%122%58%153%329%151$1@$0@@@%200$2$1@@$2$0@@@|@|@@%122%58%200$1$0@@%172%230$1@%290$0@@@@|@@|@"])
  fun op K_PARTIAL x = x
    val op K_PARTIAL =
    DT(((("util_prob",81),[("bool",[25,56]),("combin",[0])]),["DISK_THM"]),
       [read"%95%80%142%252$0@@%92$1|@|@"])
  fun op IN_o x = x
    val op IN_o =
    DT(((("util_prob",82),
        [("bool",[25,56]),("combin",[8]),("pred_set",[0])]),["DISK_THM"]),
       [read"%95%80%100%29%106%67%140%232$2@%308$0@$1@@@%233$1$2@@$0@@|@|@|@"])
  fun op PREIMAGE_ALT x = x
    val op PREIMAGE_ALT =
    DT(((("util_prob",83),
        [("bool",[25,26,36,56,58,63,143]),("pair",[4]),("pred_set",[3,6]),
         ("util_prob",[79,82])]),["DISK_THM"]),
       [read"%100%29%106%67%141%259$1@$0@@%308$0@$1@@|@|@"])
  fun op IN_PREIMAGE x = x
    val op IN_PREIMAGE =
    DT(((("util_prob",84),
        [("bool",[25,26,56,58,63,143]),("pair",[4]),("pred_set",[6]),
         ("util_prob",[79])]),["DISK_THM"]),
       [read"%100%29%106%67%95%80%140%232$0@%259$2@$1@@@%233$2$0@@$1@@|@|@|@"])
  fun op IN_BIGUNION_IMAGE x = x
    val op IN_BIGUNION_IMAGE =
    DT(((("util_prob",85),
        [("bool",
         [25,26,47,48,53,54,58,63,71,72,77,78,80,81,84,93,94,96,146]),
         ("pred_set",[3,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%32%101%66%96%87%140%233$0@%173%222$2@$1@@@@%155%80%133%232$0@$2@@%233$1@$3$0@@@|@@|@|@|@"])
  fun op IN_BIGINTER_IMAGE x = x
    val op IN_BIGINTER_IMAGE =
    DT(((("util_prob",86),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,77,78,80,81,83,
          93,94,96,105,124]),("pred_set",[144,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%95%80%107%34%106%67%140%232$2@%171%223$1@$0@@@@%96%87%153%233$0@$1@@%232$3@$2$0@@@|@@|@|@|@"])
  fun op PREIMAGE_EMPTY x = x
    val op PREIMAGE_EMPTY =
    DT(((("util_prob",87),
        [("bool",[25,26,27,36,54,63]),("pred_set",[3,10]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%141%259$0@%203@@%202@|@"])
  fun op PREIMAGE_UNIV x = x
    val op PREIMAGE_UNIV =
    DT(((("util_prob",88),
        [("bool",[25,36,63]),("pred_set",[3,14]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%141%259$0@%283@@%282@|@"])
  fun op PREIMAGE_COMPL x = x
    val op PREIMAGE_COMPL =
    DT(((("util_prob",89),
        [("bool",[25,36,56,63]),("pred_set",[3,286]),
         ("sat",[1,3,5,6,7,11,15]),("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%106%67%141%259$1@%188$0@@@%187%259$1@$0@@@|@|@"])
  fun op PREIMAGE_UNION x = x
    val op PREIMAGE_UNION =
    DT(((("util_prob",90),
        [("bool",[25,36,56]),("pred_set",[3,33]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%106%67%106%75%141%259$2@%281$1@$0@@@%280%259$2@$1@@%259$2@$0@@@|@|@|@"])
  fun op PREIMAGE_INTER x = x
    val op PREIMAGE_INTER =
    DT(((("util_prob",91),
        [("bool",[25,36,56]),("pred_set",[3,45]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%106%67%106%75%141%259$2@%250$1@$0@@@%249%259$2@$1@@%259$2@$0@@@|@|@|@"])
  fun op PREIMAGE_BIGUNION x = x
    val op PREIMAGE_BIGUNION =
    DT(((("util_prob",92),
        [("bool",[25,26,47,48,53,54,58,63,72,76,80,81,96]),
         ("pred_set",[3,244]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[84,85])]),["DISK_THM"]),
       [read"%100%29%112%70%141%259$1@%173$0@@@%172%228%259$1@@$0@@@|@|@"])
  fun op PREIMAGE_COMP x = x
    val op PREIMAGE_COMP =
    DT(((("util_prob",93),
        [("bool",[25,36,56]),("combin",[8]),("pred_set",[3]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%105%45%110%68%141%259$2@%263$1@$0@@@%260%307$1@$2@@$0@@|@|@|@"])
  fun op PREIMAGE_DIFF x = x
    val op PREIMAGE_DIFF =
    DT(((("util_prob",94),
        [("bool",[25,36,56,169]),("pred_set",[3,67]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%100%29%106%67%106%75%141%259$2@%198$1@$0@@@%197%259$2@$1@@%259$2@$0@@@|@|@|@"])
  fun op PREIMAGE_I x = x
    val op PREIMAGE_I =
    DT(((("util_prob",95),
        [("bool",[2,15,25,26,53,54,55,58,63,75,84,99]),("combin",[19]),
         ("normalForms",[0]),("pred_set",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[84])]),["DISK_THM"]), [read"%146%258%218@@%219@"])
  fun op IMAGE_I x = x
    val op IMAGE_I =
    DT(((("util_prob",96),
        [("bool",[2,15,25,26,53,54,55,58,60,63,74,84,99]),("combin",[19]),
         ("pred_set",[0,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%146%220%218@@%219@"])
  fun op PREIMAGE_K x = x
    val op PREIMAGE_K =
    DT(((("util_prob",97),
        [("bool",[25,26,27,30,36,54,63,64]),("combin",[12]),
         ("pred_set",[3,10,14]),("util_prob",[84])]),["DISK_THM"]),
       [read"%95%80%101%66%143%262%252$1@@$0@@%190%232$1@$0@@%283@%203@@|@|@"])
  fun op PREIMAGE_DISJOINT x = x
    val op PREIMAGE_DISJOINT =
    DT(((("util_prob",98),
        [("bool",[25,53,56,58,105,124]),("pred_set",[57]),
         ("util_prob",[87,91])]),["DISK_THM"]),
       [read"%100%29%106%67%106%75%153%201$1@$0@@%200%259$2@$1@@%259$2@$0@@@|@|@|@"])
  fun op PREIMAGE_SUBSET x = x
    val op PREIMAGE_SUBSET =
    DT(((("util_prob",99),
        [("bool",[25,26,36,53,58,63,105,124,143]),("pair",[4]),
         ("pred_set",[6,18]),("util_prob",[79])]),["DISK_THM"]),
       [read"%100%29%106%67%106%75%153%271$1@$0@@%270%259$2@$1@@%259$2@$0@@@|@|@|@"])
  fun op SUBSET_ADD x = x
    val op SUBSET_ADD =
    DT(((("util_prob",100),
        [("arithmetic",[22,24]),("bool",[14,25,63]),("num",[9]),
         ("pred_set",[19,20])]),["DISK_THM"]),
       [read"%115%36%122%58%122%25%153%122%58%270$3$0@@$3%273$0@@@|@@%270$2$1@@$2%125$1@$0@@@@|@|@|@"])
  fun op DISJOINT_DIFFS x = x
    val op DISJOINT_DIFFS =
    DT(((("util_prob",101),
        [("arithmetic",[24,25,46,71,93,146,173,176,177,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,77,93,94,96,101,
          104,105,124,146]),("combin",[19]),("numeral",[3,8]),
         ("pred_set",[3,10,18,45,57,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[100])]),["DISK_THM"]),
       [read"%115%36%122%55%122%58%153%133%122%58%270$3$0@@$3%273$0@@@|@@%133%122%58%141%48$0@@%197$3%273$0@@@$3$0@@@|@@%329%151$1@$0@@@@@%200%48$1@@%48$0@@@|@|@|@"])
  fun op IMAGE_IMAGE x = x
    val op IMAGE_IMAGE =
    DT(((("util_prob",102),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,76,77,80,81,84,93,
          94,96]),("combin",[8]),("pred_set",[3,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%100%29%109%46%110%68%143%221$2@%224$1@$0@@@%225%305$2@$1@@$0@@|@|@|@"])
  fun op IN_PROD_SETS x = x
    val op IN_PROD_SETS =
    DT(((("util_prob",103),
        [("bool",[25,26,47,48,53,54,56,58,63,72,80,96]),
         ("pair",[4,8,9,13]),("pred_set",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[80])]),["DISK_THM"]),
       [read"%120%72%111%12%112%17%140%238$2@%315$1@$0@@@%160%74%162%78%133%149$4@%192$1@$0@@@%133%236$1@$3@@%237$0@$2@@@|@|@@|@|@|@"])
  fun op PREIMAGE_CROSS x = x
    val op PREIMAGE_CROSS =
    DT(((("util_prob",104),
        [("bool",[25,36,56]),("combin",[8]),("pred_set",[3,45,268]),
         ("util_prob",[84])]),["DISK_THM"]),
       [read"%104%33%106%11%110%16%141%261$2@%193$1@$0@@@%249%259%309%210@$2@@$1@@%260%310%269@$2@@$0@@@|@|@|@"])
  fun op FUNSET_INTER x = x
    val op FUNSET_INTER =
    DT(((("util_prob",105),
        [("bool",[25,26,47,48,53,54,58,63,71,76,80,81,94,105,124]),
         ("pred_set",[3,45]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%101%10%106%15%106%21%144%213$2@%250$1@$0@@@%251%213$2@$1@@%213$2@$0@@@|@|@|@"])
  fun op UNIV_NEQ_EMPTY x = x
    val op UNIV_NEQ_EMPTY =
    DT(((("util_prob",106),
        [("bool",[25,26,27,36,54,62,63,169]),
         ("pred_set",[3,10,14])]),["DISK_THM"]),
       [read"%329%141%282@%202@@"])
  fun op COUNTABLE_NUM x = x
    val op COUNTABLE_NUM =
    DT(((("util_prob",107),
        [("bool",[25,53,58,63,105,124,140]),("combin",[19]),
         ("util_prob",[39])]),["DISK_THM"]), [read"%114%71%294$0@|@"])
  fun op COUNTABLE_IMAGE_NUM x = x
    val op COUNTABLE_IMAGE_NUM =
    DT(((("util_prob",108),
        [("bool",[25,26,47,48,53,54,63,71,94]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[67,107])]),["DISK_THM"]),
       [read"%113%35%114%71%291%229$1@$0@@|@|@"])
  fun op COUNTABLE_ENUM x = x
    val op COUNTABLE_ENUM =
    DT(((("util_prob",109),
        [("arithmetic",[14,28]),
         ("bool",
         [2,13,15,25,26,27,30,36,37,47,48,51,52,53,54,55,56,58,63,72,74,75,
          78,81,93,94,96,105,124,146]),("combin",[12,19]),
         ("pred_set",[3,14,80,131,144,166,173,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[39,66,77])]),["DISK_THM"]),
       [read"%101%20%140%291$0@@%289%141$0@%202@@%164%35%141$1@%229$0@%286@@|@@@|@"])
  fun op BIGUNION_IMAGE_UNIV x = x
    val op BIGUNION_IMAGE_UNIV =
    DT(((("util_prob",110),
        [("arithmetic",[59]),
         ("bool",
         [25,26,27,47,48,51,53,54,58,63,71,72,77,78,80,81,84,93,94,96,105,
          124,146]),("pred_set",[3,10,14,144,244,296]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%115%36%122%0%153%122%58%153%136$1@$0@@%141$2$0@@%202@@|@@%141%172%230$1@%286@@@%172%230$1@%290$0@@@@@|@|@"])
  fun op BIJ_ALT x = x
    val op BIJ_ALT =
    DT(((("util_prob",111),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,72,75,78,84,93,
          94,96,105,124,130,146]),("pred_set",[158,166,173]),
         ("res_quan",[0,1,24]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[6])]),["DISK_THM"]),
       [read"%100%29%101%66%106%75%140%175$2@$1@$0@@%133%235$2@%213$1@$0@@@%267$0@%87%265$2@%80%138$1@$4$0@@|@|@@@|@|@|@"])
  fun op BIJ_FINITE_SUBSET x = x
    val op BIJ_FINITE_SUBSET =
    DT(((("util_prob",112),
        [("arithmetic",[24,25,46,71,93,172,173,180]),
         ("bool",
         [7,13,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,72,75,78,80,
          84,92,93,94,96,101,104,105,122,124,146]),("combin",[19]),
         ("numeral",[3,8]),("pred_set",[10,22,80,97,186]),
         ("res_quan",[0,22]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[20,111])]),["DISK_THM"]),
       [read"%113%35%101%66%101%74%153%133%179$2@%286@$1@@%133%206$0@@%270$0@$1@@@@%167%0%122%58%153%136$1@$0@@%329%232$4$0@@$2@@@|@|@@|@|@|@"])
  fun op NUM_2D_BIJ_SMALL_SQUARE x = x
    val op NUM_2D_BIJ_SMALL_SQUARE =
    DT(((("util_prob",113),
        [("arithmetic",[24,25,46,59,71,93,173,176,180]),
         ("bool",[25,26,36,47,48,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("combin",[19]),("numeral",[3,8]),
         ("pred_set",[14,18,24,144,166,173,268,274,278,296,300]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[112])]),["DISK_THM"]),
       [read"%118%38%122%53%153%180$1@%286@%194%286@%286@@@%167%0%272%194%290$1@@%290$1@@@%231$2@%290$0@@@|@@|@|@"])
  fun op NUM_2D_BIJ_BIG_SQUARE x = x
    val op NUM_2D_BIJ_BIG_SQUARE =
    DT(((("util_prob",114),
        [("arithmetic",[24,25,41,46,59,71,93,95,96,173,176,180,307]),
         ("bool",
         [13,14,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,72,83,93,
          94,96,104,105,107,124]),("combin",[19]),("num",[9]),
         ("numeral",[3,8]),("pair",[5,8,9]),("pred_set",[18,144,268,296]),
         ("prim_rec",[6,19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[21])]),["DISK_THM"]),
       [read"%118%38%122%0%153%180$1@%286@%194%286@%286@@@%167%53%272%231$2@%290$1@@@%194%290$0@@%290$0@@@|@@|@|@"])
  fun op finite_enumeration_of_sets_has_max_non_empty x = x
    val op finite_enumeration_of_sets_has_max_non_empty =
    DT(((("util_prob",115),
        [("arithmetic",[24,25,41,45,46,59,71,93,96,143,155,172,173,180]),
         ("bool",
         [2,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,71,72,75,83,
          84,96,99,100,101,104,105,108,109,124,129]),("numeral",[3,8]),
         ("pred_set",[3,10,58,80,102,186,188]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%36%111%69%153%133%208$0@@%133%122%84%236$2$0@@$1@|@@%122%55%122%58%153%329%151$1@$0@@@%200$3$1@@$3$0@@@|@|@@@@%167%0%122%58%153%154$0@$1@@%141$3$0@@%202@@|@|@@|@|@"])
  fun op SUBSET_INTER1 x = x
    val op SUBSET_INTER1 =
    DT(((("util_prob",116),
        [("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("pred_set",[3,18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%101%74%153%270$1@$0@@%141%249$1@$0@@$1@@|@|@"])
  fun op SUBSET_INTER2 x = x
    val op SUBSET_INTER2 =
    DT(((("util_prob",117),
        [("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("pred_set",[3,18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%101%74%153%270$1@$0@@%141%249$0@$1@@$1@@|@|@"])
  fun op DIFF_DIFF_SUBSET x = x
    val op DIFF_DIFF_SUBSET =
    DT(((("util_prob",118),
        [("bool",[25,26,27,48,51,52,53,54,58,63,96,105,124,143]),
         ("pair",[4]),("pred_set",[3,6,18,66])]),["DISK_THM"]),
       [read"%101%66%101%74%153%270$0@$1@@%141%197$1@%197$1@$0@@@$0@@|@|@"])
  fun op BIGINTER_SUBSET x = x
    val op BIGINTER_SUBSET =
    DT(((("util_prob",119),
        [("bool",[25,26,53,54,58,63,83,105,124]),("pred_set",[18,120,258]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%101%73%111%69%153%133%101%74%153%236$0@$1@@%270$0@$2@@|@@%329%145$0@%204@@@@%270%171$0@@$1@@|@|@"])
  fun op DIFF_BIGINTER1 x = x
    val op DIFF_BIGINTER1 =
    DT(((("util_prob",120),
        [("bool",[2,15,25,26,53,54,58,63,71,84,92,99,100]),
         ("pred_set",[3,67,144,244,258]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%101%73%111%69%141%197$1@%171$0@@@%172%227%77%197$2@$0@|@$0@@@|@|@"])
  fun op DIFF_BIGINTER x = x
    val op DIFF_BIGINTER =
    DT(((("util_prob",121),
        [("bool",[14,25,26,27,36,51,53,54,55,56,58,63,105,124]),
         ("combin",[5,19,20]),("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("util_prob",[118,119,120])]),["DISK_THM"]),
       [read"%101%73%111%69%153%133%101%74%153%236$0@$1@@%270$0@$2@@|@@%329%145$0@%204@@@@%141%171$0@@%197$1@%172%227%77%197$2@$0@|@$0@@@@@|@|@"])
  fun op DIFF_INTER x = x
    val op DIFF_INTER =
    DT(((("util_prob",122),
        [("bool",[25,26,27,51,53,54,58,63,105,124,143]),("pair",[4]),
         ("pred_set",[3,6,44,66])]),["DISK_THM"]),
       [read"%101%66%101%74%101%43%141%249%197$2@$1@@$0@@%197%249$2@$0@@$1@@|@|@|@"])
  fun op DIFF_INTER2 x = x
    val op DIFF_INTER2 =
    DT(((("util_prob",123),
        [("bool",[25,26,27,50,52,56,58,63,96,97,143]),("pair",[4]),
         ("pred_set",[3,6,44,66])]),["DISK_THM"]),
       [read"%101%66%101%74%141%197$1@%249$0@$1@@@%197$1@$0@@|@|@"])
  fun op PREIMAGE_COMPL_INTER x = x
    val op PREIMAGE_COMPL_INTER =
    DT(((("util_prob",124),
        [("bool",[25,53,54,55,58,63,73]),("pred_set",[54,285]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("util_prob",[88,94,122])]),["DISK_THM"]),
       [read"%100%29%106%75%101%73%141%249%259$2@%188$1@@@$0@@%197$0@%259$2@$1@@@|@|@|@"])
  fun op PREIMAGE_REAL_COMPL1 x = x
    val op PREIMAGE_REAL_COMPL1 =
    DT(((("util_prob",125),
        [("bool",[25,26,51,56,58,63,143]),("pair",[4]),
         ("pred_set",[0,3,6,13,66,285]),("real",[23])]),["DISK_THM"]),
       [read"%124%24%150%189%217%86%130$0@%317$1@$0@@|@@@%217%86%130$0@%318$0@$1@@|@@|@"])
  fun op PREIMAGE_REAL_COMPL2 x = x
    val op PREIMAGE_REAL_COMPL2 =
    DT(((("util_prob",126),
        [("bool",[25,26,51,56,58,63,143]),("pair",[4]),
         ("pred_set",[0,3,6,13,66,285]),("real",[309])]),["DISK_THM"]),
       [read"%124%24%150%189%217%86%130$0@%318$1@$0@@|@@@%217%86%130$0@%317$0@$1@@|@@|@"])
  fun op PREIMAGE_REAL_COMPL3 x = x
    val op PREIMAGE_REAL_COMPL3 =
    DT(((("util_prob",127),
        [("bool",[25,26,51,56,58,63,143]),("pair",[4]),
         ("pred_set",[0,3,6,13,66,285]),("real",[309])]),["DISK_THM"]),
       [read"%124%24%150%189%217%86%130$0@%318$0@$1@@|@@@%217%86%130$0@%317$1@$0@@|@@|@"])
  fun op PREIMAGE_REAL_COMPL4 x = x
    val op PREIMAGE_REAL_COMPL4 =
    DT(((("util_prob",128),
        [("bool",[25,26,51,56,58,63,143]),("pair",[4]),
         ("pred_set",[0,3,6,13,66,285]),("real",[23])]),["DISK_THM"]),
       [read"%124%24%150%189%217%86%130$0@%317$0@$1@@|@@@%217%86%130$0@%318$1@$0@@|@@|@"])
  fun op ELT_IN_DELETE x = x
    val op ELT_IN_DELETE =
    DT(((("util_prob",129),
        [("bool",[25,51,54,56]),("pred_set",[102])]),["DISK_THM"]),
       [read"%95%80%101%66%329%232$1@%195$0@$1@@@|@|@"])
  fun op DELETE_THEN_INSERT x = x
    val op DELETE_THEN_INSERT =
    DT(((("util_prob",130),
        [("bool",[25,53,56,58,63,105,124]),("pred_set",[117]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%101%66%266$0@%80%141%245$0@%195$1@$0@@@$1@|@|@"])
  fun op BIJ_INSERT x = x
    val op BIJ_INSERT =
    DT(((("util_prob",131),
        [("bool",
         [2,15,25,26,27,51,53,54,55,56,58,63,75,83,86,99,100,102,105,124,
          140,156]),("pred_set",[80,102]),("res_quan",[0,1,2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,111,129,130])]),["DISK_THM"]),
       [read"%100%29%95%26%101%66%106%75%153%133%329%232$2@$1@@@%175$3@%245$2@$1@@$0@@@%162%78%133%143%246$4$3@@$0@@$1@@%133%329%233$4$3@@$0@@@%175$4@$2@$0@@@|@@|@|@|@|@"])
  fun op FINITE_BIJ x = x
    val op FINITE_BIJ =
    DT(((("util_prob",132),
        [("bool",
         [25,26,27,36,37,47,48,51,53,54,56,58,63,71,81,84,93,94,96,105,124,
          129,147]),("combin",[19]),
         ("pred_set",[3,10,185,186,187,207,208]),("prim_rec",[1]),
         ("res_quan",[0,1,2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[6,111,131])]),["DISK_THM"]),
       [read"%100%29%101%66%106%75%153%133%206$1@@%175$2@$1@$0@@@%133%207$0@@%151%184$1@@%185$0@@@@|@|@|@"])
  fun op FINITE_BIJ_COUNT x = x
    val op FINITE_BIJ_COUNT =
    DT(((("util_prob",133),
        [("arithmetic",[24,25,41,46,71,93,172,173,180]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,78,80,93,94,
          95,96,101,104,105,108,109,111,124,129,145,146,147]),
         ("numeral",[3,8]),
         ("pred_set",[10,80,158,166,173,186,296,298,299,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[132])]),["DISK_THM"]),
       [read"%101%66%140%206$0@@%164%23%167%58%179$1@%290$0@@$2@|@|@@|@"])
  fun op GBIGUNION_IMAGE x = x
    val op GBIGUNION_IMAGE =
    DT(((("util_prob",134),
        [("bool",[25,26,36,51,56,58,63,143]),("pair",[4]),
         ("pred_set",[3,6,14]),("util_prob",[85])]),["DISK_THM"]),
       [read"%95%64%108%59%97%57%143%215%65%127$0@%156%56$3$1@$0@|@@|@@%173%226%56%215%65%127$0@$3$0@$1@@|@|@%284@@@|@|@|@"])
  fun op DISJOINT_ALT x = x
    val op DISJOINT_ALT =
    DT(((("util_prob",135),
        [("bool",[25,26,47,48,53,54,58,63,71,72,76,80,81,96]),
         ("pred_set",[58]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%66%101%74%140%200$1@$0@@%95%80%153%232$0@$2@@%329%232$0@$1@@@|@@|@|@"])
  fun op DISJOINT_DIFF x = x
    val op DISJOINT_DIFF =
    DT(((("util_prob",136),
        [("bool",[25,26,27,53,54,58,63,96]),("pred_set",[3,10,45,57,67]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%101%66%101%74%133%200$0@%197$1@$0@@@%200%197$1@$0@@$0@@|@|@"])
  fun op COUNTABLE_COUNT x = x
    val op COUNTABLE_COUNT =
    DT(((("util_prob",137),
        [("bool",[25,26,47,48,53,54,63,71,94]),("pred_set",[300]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("util_prob",[64])]),["DISK_THM"]), [read"%122%58%294%290$0@@|@"])
  fun op COUNTABLE_SUBSET x = x
    val op COUNTABLE_SUBSET =
    DT(((("util_prob",138),
        [("bool",[25,26,47,48,53,54,58,63,71,72,78,94,105,124,146]),
         ("pred_set",[18]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[39])]),["DISK_THM"]),
       [read"%101%66%101%74%153%133%270$1@$0@@%291$0@@@%291$1@@|@|@"])
  fun op LT_SUC x = x
    val op LT_SUC =
    DT(((("util_prob",139),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,63,93,96,104,105,107]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%122%13%122%18%140%135$1@%273$0@@@%289%135$1@$0@@%151$1@$0@@@|@|@"])
  fun op LE_SUC x = x
    val op LE_SUC =
    DT(((("util_prob",140),
        [("arithmetic",[24,25,27,46,71,93,172,173,176,177,180]),
         ("bool",[25,36,43,52,54,63,93,96,104,105,107]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%122%13%122%18%140%136$1@%273$0@@@%289%136$1@$0@@%151$1@%273$0@@@@|@|@"])
  fun op HALF_POS x = x
    val op HALF_POS =
    DT(((("util_prob",141),
        [("arithmetic",[46,79,207]),
         ("bool",[25,26,47,48,51,53,54,56,58,63,96]),
         ("numeral",[3,5,6,17,18]),
         ("real",[7,29,62,131,144,307,308,309,311,312,313,314,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%317%321%134@@%132%321%257%182%288@@@@%321%257%183%288@@@@@"])
  fun op HALF_LT_1 x = x
    val op HALF_LT_1 =
    DT(((("util_prob",142),
        [("bool",[25,54,58]),("numeral",[3,7]),
         ("real",[118,129,133,168])]),["DISK_THM"]),
       [read"%317%132%321%257%182%288@@@@%321%257%183%288@@@@@%321%257%182%288@@@@"])
  fun op HALF_CANCEL x = x
    val op HALF_CANCEL =
    DT(((("util_prob",143),
        [("arithmetic",[46,79,172,207]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("numeral",[3,5,6,17,18]),
         ("real",
         [7,18,29,30,62,118,131,307,308,309,311,312,313,314,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%152%319%321%257%183%288@@@@%132%321%257%182%288@@@@%321%257%183%288@@@@@@%321%257%182%288@@@@"])
  fun op X_HALF_HALF x = x
    val op X_HALF_HALF =
    DT(((("util_prob",144),
        [("arithmetic",[46,60,79,207]),("bool",[25,51,53,54,56,58,63,96]),
         ("numeral",[3,5,7,17,18]),
         ("real",
         [4,6,7,8,12,17,18,20,27,28,38,39,40,46,55,59,60,61,62,71,131,307,
          308,309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[143])]),["DISK_THM"]),
       [read"%124%86%152%316%319%132%321%257%182%288@@@@%321%257%183%288@@@@@$0@@%319%132%321%257%182%288@@@@%321%257%183%288@@@@@$0@@@$0@|@"])
  fun op ONE_MINUS_HALF x = x
    val op ONE_MINUS_HALF =
    DT(((("util_prob",145),
        [("bool",[8,14,25,26,27,51,53,54,56,58,64,105,124,129,147]),
         ("numeral",[0,3,5,6,7,15,16,17,21,34,35,40,41]),
         ("real",[18,22,92,130,135,405,412,414,415,417,419,421,422,425]),
         ("util_prob",[144])]),["DISK_THM"]),
       [read"%152%322%321%257%182%288@@@@%132%321%257%182%288@@@@%321%257%183%288@@@@@@%132%321%257%182%288@@@@%321%257%183%288@@@@@"])
  fun op POW_HALF_POS x = x
    val op POW_HALF_POS =
    DT(((("util_prob",146),
        [("arithmetic",[28,46,79,207]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("numeral",[3,5,6,17,18]),
         ("real",
         [7,29,62,131,233,252,307,308,309,311,312,313,314,328,329]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[141])]),["DISK_THM"]),
       [read"%122%58%317%321%134@@%313%132%321%257%182%288@@@@%321%257%183%288@@@@@$0@@|@"])
  fun op POW_HALF_SMALL x = x
    val op POW_HALF_SMALL =
    DT(((("util_prob",147),
        [("arithmetic",[95,143]),
         ("bool",[25,26,47,48,53,54,58,63,72,94,105,124,129,147]),
         ("real",[58,162,204]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("seq",[1,37]),("util_prob",[141,142,146])]),["DISK_THM"]),
       [read"%124%27%153%317%321%134@@$0@@%167%58%317%313%132%321%257%182%288@@@@%321%257%183%288@@@@@$0@@$1@|@@|@"])
  fun op POW_HALF_MONO x = x
    val op POW_HALF_MONO =
    DT(((("util_prob",148),
        [("arithmetic",[24,25,27,46,60,71,79,93,173,176,177,180,207]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,94,96,101,
          104,105]),("num",[9]),("numeral",[3,5,6,8,17,18]),
         ("real",
         [4,6,7,8,12,17,18,20,27,28,29,38,39,40,46,55,59,60,61,62,71,131,
          176,233,307,308,309,310,311,312,313,314,325,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[143,146])]),["DISK_THM"]),
       [read"%122%55%122%58%153%136$1@$0@@%318%313%132%321%257%182%288@@@@%321%257%183%288@@@@@$0@@%313%132%321%257%182%288@@@@%321%257%183%288@@@@@$1@@@|@|@"])
  fun op REAL_LE_LT_MUL x = x
    val op REAL_LE_LT_MUL =
    DT(((("util_prob",149),
        [("bool",[25,53,58,63,105,124]),("real",[39,177])]),["DISK_THM"]),
       [read"%124%86%124%91%153%133%318%321%134@@$1@@%317%321%134@@$0@@@%318%321%134@@%319$1@$0@@@|@|@"])
  fun op REAL_LT_LE_MUL x = x
    val op REAL_LT_LE_MUL =
    DT(((("util_prob",150),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("real",[15]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[149])]),["DISK_THM"]),
       [read"%124%86%124%91%153%133%317%321%134@@$1@@%318%321%134@@$0@@@%318%321%134@@%319$1@$0@@@|@|@"])
  fun op REAL_MUL_IDEMPOT x = x
    val op REAL_MUL_IDEMPOT =
    DT(((("util_prob",151),
        [("bool",[25,26,53,56,58,63,105,124]),
         ("real",[18,39,98])]),["DISK_THM"]),
       [read"%124%63%140%152%319$0@$0@@$0@@%289%152$0@%321%134@@@%152$0@%321%257%182%288@@@@@@|@"])
  fun op REAL_SUP_LE_X x = x
    val op REAL_SUP_LE_X =
    DT(((("util_prob",152),
        [("arithmetic",[46,60,79,207]),
         ("bool",[25,26,36,47,48,51,53,54,56,58,63,71,72,92,94,96,146]),
         ("combin",[19]),("numeral",[3]),
         ("real",
         [4,6,7,8,12,18,23,27,28,39,46,59,60,61,62,131,273,308,309,310,311,
          312,313,314,326,328]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%121%4%124%86%153%133%168%63$2$0@|@@%124%63%153$2$0@@%318$0@$1@@|@@@%318%328$1@@$0@@|@|@"])
  fun op REAL_X_LE_SUP x = x
    val op REAL_X_LE_SUP =
    DT(((("util_prob",153),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,72,78,93,94,96,146]),
         ("combin",[19]),("real",[61,274]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%121%4%124%86%153%133%168%63$2$0@|@@%133%168%94%124%63%153$3$0@@%318$0@$1@@|@|@@%168%63%133$2$0@@%318$1@$0@@|@@@@%318$0@%328$1@@@|@|@"])
  fun op INF_DEF_ALT x = x
    val op INF_DEF_ALT =
    DT(((("util_prob",154),
        [("bool",[25,36,53,56,58,60,105,124]),("pred_set",[0]),
         ("real",[378])]),["DISK_THM"]),
       [read"%121%61%152%297$0@@%320%328%63%240%320$0@@$1@|@@@|@"])
  fun op LE_INF x = x
    val op LE_INF =
    DT(((("util_prob",155),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124]),
         ("pred_set",[0]),("real",[43,159]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[152,154])]),["DISK_THM"]),
       [read"%121%61%124%63%153%133%168%86%240$0@$2@|@@%124%86%153%240$0@$2@@%318$1@$0@@|@@@%318$0@%297$1@@@|@|@"])
  fun op INF_LE x = x
    val op INF_LE =
    DT(((("util_prob",156),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,93,94,96,105,124,
          146]),("pred_set",[0]),("real",[43,159]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[153,154])]),["DISK_THM"]),
       [read"%121%61%124%63%153%133%168%94%124%86%153%240$0@$3@@%318$1@$0@@|@|@@%168%86%133%240$0@$2@@%318$0@$1@@|@@@%318%297$1@@$0@@|@|@"])
  fun op INF_GREATER x = x
    val op INF_GREATER =
    DT(((("util_prob",157),
        [("bool",[25,26,47,48,53,54,58,63,71,72,78,80,94,96]),
         ("real",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("util_prob",[155])]),["DISK_THM"]),
       [read"%121%61%124%94%153%133%168%86%240$0@$2@|@@%317%297$1@@$0@@@%168%86%133%240$0@$2@@%317$0@$1@@|@@|@|@"])
  fun op INF_CLOSE x = x
    val op INF_CLOSE =
    DT(((("util_prob",158),
        [("arithmetic",[46,60,79,207]),
         ("bool",[25,26,47,48,51,53,54,56,58,63,72,96]),("numeral",[3]),
         ("real",
         [4,6,7,8,12,18,27,28,38,39,46,59,60,61,62,131,308,309,310,311,312,
          313,314,326,328]),("sat",[1,3,5,6,7,11,12,14,15]),
         ("util_prob",[157])]),["DISK_THM"]),
       [read"%121%61%124%27%153%133%168%86%240$0@$2@|@@%317%321%134@@$0@@@%168%86%133%240$0@$2@@%317$0@%316%297$2@@$1@@@|@@|@|@"])
  fun op INCREASING_SEQ x = x
    val op INCREASING_SEQ =
    DT(((("util_prob",159),
        [("arithmetic",[22,24,46,60,79,143,146,207]),
         ("bool",
         [14,25,26,27,30,47,48,51,53,54,56,58,63,64,72,74,78,81,84,94,96,
          105,124,146]),("num",[9]),("numeral",[3]),
         ("real",
         [4,6,7,8,12,18,22,27,28,38,39,46,59,60,61,62,131,204,213,308,309,
          310,311,312,313,314,326,328]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("seq",[1])]),["DISK_THM"]),
       [read"%119%39%124%54%153%133%122%58%318$2$0@@$2%273$0@@@|@@%133%122%58%318$2$0@@$1@|@@%124%27%153%317%321%134@@$0@@%167%58%317$2@%316$3$0@@$1@@|@@|@@@@%131$1@$0@@|@|@"])
  fun op SEQ_SANDWICH x = x
    val op SEQ_SANDWICH =
    DT(((("util_prob",160),
        [("arithmetic",[46,60,79,143,207]),
         ("bool",[25,26,27,30,51,53,54,56,58,63,64,96,105,124]),
         ("numeral",[3]),
         ("real",
         [4,6,7,8,12,18,22,27,28,38,39,46,59,60,61,62,131,204,308,309,310,
          311,312,313,314,326,328]),("sat",[1,3,5,6,7,11,12,14,15]),
         ("seq",[1]),("util_prob",[20])]),["DISK_THM"]),
       [read"%119%39%119%49%119%52%124%54%153%133%131$3@$0@@%133%131$1@$0@@%122%58%133%318$4$0@@$3$0@@@%318$3$0@@$2$0@@@|@@@@%131$2@$0@@|@|@|@|@"])
  fun op SER_POS x = x
    val op SER_POS =
    DT(((("util_prob",161),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[25,36,51,53,54,58,63,104,105,124]),("numeral",[3,8]),
         ("real",[280]),("seq",[48])]),["DISK_THM"]),
       [read"%119%39%153%133%326$0@@%122%58%318%321%134@@$1$0@@|@@@%318%321%134@@%325$0@@@|@"])
  fun op SER_POS_MONO x = x
    val op SER_POS_MONO =
    DT(((("util_prob",162),
        [("arithmetic",[22,24,25,46,60,79,207]),
         ("bool",[14,25,51,53,54,56,58,63,96,105,124]),("num",[9]),
         ("numeral",[3]),
         ("real",
         [4,6,7,8,12,18,27,28,38,39,46,55,59,60,61,62,131,280,308,309,310,
          311,312,313,314,326,328]),("sat",[1,3,5,6,7,11,12,14,15]),
         ("seq",[16]),("util_prob",[23])]),["DISK_THM"]),
       [read"%119%39%153%122%58%318%321%134@@$1$0@@|@@%303%58%324%129%134@$0@@$1@|@@|@"])
  fun op POS_SUMMABLE x = x
    val op POS_SUMMABLE =
    DT(((("util_prob",163),
        [("arithmetic",[24,25,46,71,79,143,173,176,180,207]),
         ("bool",[25,36,51,53,54,56,58,63,96,104,105,124,129,147]),
         ("nets",[12]),("numeral",[3,5,6,8,17,18]),
         ("real",
         [4,6,7,8,12,18,27,28,29,38,39,46,59,60,61,62,131,204,287,307,308,
          309,310,311,312,313,314,326,328,329]),
         ("sat",[1,3,5,6,7,11,12,14,15]),("seq",[10,25,41,42]),
         ("util_prob",[162])]),["DISK_THM"]),
       [read"%119%39%153%133%122%58%318%321%134@@$1$0@@|@@%168%86%122%58%318%324%129%134@$0@@$2@@$1@|@|@@@%326$0@@|@"])
  fun op SUMMABLE_LE x = x
    val op SUMMABLE_LE =
    DT(((("util_prob",164),
        [("arithmetic",[24,25,46,60,71,79,143,173,176,180,207]),
         ("bool",
         [25,36,51,53,54,56,58,63,71,72,92,96,104,105,124,129,147]),
         ("numeral",[3,8]),
         ("real",
         [4,6,7,8,12,18,22,27,28,38,39,46,59,60,61,62,131,204,213,308,309,
          310,311,312,313,314,326,328]),("sat",[1,3,5,6,7,11,12,14,15]),
         ("seq",[1,41,45])]),["DISK_THM"]),
       [read"%119%39%124%86%153%133%326$1@@%122%58%318%324%129%134@$0@@$2@@$1@|@@@%318%325$1@@$0@@|@|@"])
  fun op SUMS_EQ x = x
    val op SUMS_EQ =
    DT(((("util_prob",165),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,93,
          94,96,146]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[42,44,46])]),["DISK_THM"]),
       [read"%119%39%124%86%140%327$1@$0@@%133%326$1@@%152%325$1@@$0@@@|@|@"])
  fun op SUMINF_POS x = x
    val op SUMINF_POS =
    DT(((("util_prob",166),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[25,36,53,54,56,58,63,104,105,124]),("numeral",[3,8]),
         ("real",[280]),("seq",[48])]),["DISK_THM"]),
       [read"%119%39%153%133%122%58%318%321%134@@$1$0@@|@@%326$0@@@%318%321%134@@%325$0@@@|@"])
  fun op SUM_PICK x = x
    val op SUM_PICK =
    DT(((("util_prob",167),
        [("arithmetic",[22,24,25,27,41,46,59,71,93,173,177,180]),
         ("bool",
         [14,25,26,27,30,36,52,53,54,56,58,63,64,73,96,101,104,105,109,111,
          129,147]),("num",[9]),("numeral",[3,5,8]),("prim_rec",[6]),
         ("real",[7,27,280]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%122%58%122%53%124%86%152%324%129%134@$2@@%55%191%151$0@$2@@$1@%321%134@@|@@%191%135$1@$2@@$0@%321%134@@@|@|@|@"])
  fun op SUM_LT x = x
    val op SUM_LT =
    DT(((("util_prob",168),
        [("arithmetic",
         [18,22,24,25,26,27,28,37,41,46,53,59,71,93,95,173,180]),
         ("bool",
         [14,25,26,27,36,51,52,53,54,58,63,93,96,101,104,105,107,124]),
         ("num",[9]),("numeral",[3,7,8]),("prim_rec",[6,7]),
         ("real",[7,77,280]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%119%39%119%49%122%55%122%58%153%133%122%62%153%133%136$2@$0@@%135$0@%125$1@$2@@@@%317$4$0@@$3$0@@@|@@%135%134@$0@@@%317%324%129$1@$0@@$3@@%324%129$1@$0@@$2@@@|@|@|@|@"])
  fun op SUM_CONST x = x
    val op SUM_CONST =
    DT(((("util_prob",169),
        [("arithmetic",[64]),("bool",[14,25,56,58]),("combin",[12]),
         ("num",[9]),("real",[18,39,131,280,326,425])]),["DISK_THM"]),
       [read"%122%58%124%63%152%324%129%134@$1@@%255$0@@@%319%321$1@@$0@@|@|@"])
  fun op SUMINF_ADD x = x
    val op SUMINF_ADD =
    DT(((("util_prob",170),
        [("bool",[25,26,47,48,51,53,54,56,58,63,94,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),("seq",[45,54]),
         ("util_prob",[165])]),["DISK_THM"]),
       [read"%119%39%119%49%153%133%326$1@@%326$0@@@%133%326%58%316$2$0@@$1$0@@|@@%152%316%325$1@@%325$0@@@%325%58%316$2$0@@$1$0@@|@@@@|@|@"])
  fun op SUMINF_2D x = x
    val op SUMINF_2D =
    DT(((("util_prob",171),
        [("arithmetic",
         [22,24,25,27,38,41,46,59,60,71,79,93,95,143,172,173,176,177,180,
          207]),
         ("bool",
         [13,14,15,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,64,71,
          72,73,76,77,78,80,81,84,86,93,94,96,101,104,105,107,108,109,111,
          124,129,143,147]),("combin",[8,19]),("num",[9]),
         ("numeral",[3,5,6,8]),("pair",[4,5,8,9,16]),
         ("pred_set",[14,18,144,158,173,268,296]),("prim_rec",[4,6]),
         ("real",
         [4,6,7,8,12,15,17,18,22,26,27,28,30,32,38,39,46,55,59,60,61,62,76,
          130,131,138,144,149,186,204,213,280,285,291,292,304,308,309,310,
          311,312,313,314,326,328,425]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[1,41,45,48]),
         ("util_prob",
         [21,81,113,114,139,159,161,165,167,168,169])]),["DISK_THM"]),
       [read"%117%37%119%49%118%51%153%133%122%55%122%58%318%321%134@@$4$1@$0@@|@|@@%133%122%58%327$3$0@@$2$0@@|@@%133%326$1@@%180$0@%286@%194%286@%286@@@@@@%327%311%279$2@@$0@@%325$1@@@|@|@|@"])
  fun op POW_HALF_SER x = x
    val op POW_HALF_SER =
    DT(((("util_prob",172),
        [("arithmetic",[64]),("bool",[25,54,56,58,63,105,124,129,147]),
         ("numeral",[3,6]),("real",[19,58,115,118,130,204,233]),
         ("seq",[55,68]),("util_prob",[141,142,145])]),["DISK_THM"]),
       [read"%327%58%313%132%321%257%182%288@@@@%321%257%183%288@@@@@%125$0@%257%182%288@@@@|@%321%257%182%288@@@@"])
  fun op SER_POS_COMPARE x = x
    val op SER_POS_COMPARE =
    DT(((("util_prob",173),
        [("arithmetic",[46,71,93,143,173,176,180]),
         ("bool",
         [25,26,36,47,48,53,54,56,58,63,71,77,93,94,96,104,105,124,129,146,
          147]),("combin",[19]),("numeral",[3,8]),("real",[204]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("seq",[61,63])]),["DISK_THM"]),
       [read"%119%39%119%49%153%133%122%58%318%321%134@@$2$0@@|@@%133%326$0@@%122%58%318$2$0@@$1$0@@|@@@@%133%326$1@@%318%325$1@@%325$0@@@@|@|@"])
  fun op MINIMAL_EXISTS0 x = x
    val op MINIMAL_EXISTS0 =
    DT(((("util_prob",175),
        [("arithmetic",[110]),
         ("bool",[14,25,26,47,48,53,54,58,63,71,72,78,80,94,96,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%140%167%58%2$0@|@@%167%58%133%2$0@@%122%55%153%135$0@$1@@%329%2$0@@@|@@|@@"])
  fun op MINIMAL_EXISTS x = x
    val op MINIMAL_EXISTS =
    DT(((("util_prob",176),
        [("bool",[2,25,36,56,58]),("util_prob",[174,175])]),["DISK_THM"]),
       [read"%114%2%140%167%58$1$0@|@@%133$0%302$0@@@%122%58%153%135$0@%302$1@@@%329$1$0@@@|@@@|@"])
  end
  val _ = DB.bindl "util_prob"
  [("FUNSET_def",FUNSET_def,DB.Def), ("DFUNSET_def",DFUNSET_def,DB.Def),
   ("pair_def",pair_def,DB.Def), ("powr_def",powr_def,DB.Def),
   ("logr_def",logr_def,DB.Def), ("lg_def",lg_def,DB.Def),
   ("countable_def",countable_def,DB.Def),
   ("enumerate_def",enumerate_def,DB.Def),
   ("schroeder_close_def",schroeder_close_def,DB.Def),
   ("PREIMAGE_def",PREIMAGE_def,DB.Def),
   ("prod_sets_def",prod_sets_def,DB.Def),
   ("minimal_def",minimal_def,DB.Def), ("EQ_T_IMP",EQ_T_IMP,DB.Thm),
   ("EQ_SUBSET_SUBSET",EQ_SUBSET_SUBSET,DB.Thm),
   ("IN_EQ_UNIV_IMP",IN_EQ_UNIV_IMP,DB.Thm),
   ("IN_FUNSET",IN_FUNSET,DB.Thm), ("IN_DFUNSET",IN_DFUNSET,DB.Thm),
   ("IN_PAIR",IN_PAIR,DB.Thm), ("FUNSET_THM",FUNSET_THM,DB.Thm),
   ("UNIV_FUNSET_UNIV",UNIV_FUNSET_UNIV,DB.Thm),
   ("FUNSET_DFUNSET",FUNSET_DFUNSET,DB.Thm),
   ("PAIR_UNIV",PAIR_UNIV,DB.Thm), ("SUBSET_INTER",SUBSET_INTER,DB.Thm),
   ("K_SUBSET",K_SUBSET,DB.Thm), ("SUBSET_K",SUBSET_K,DB.Thm),
   ("SUBSET_THM",SUBSET_THM,DB.Thm),
   ("PAIRED_BETA_THM",PAIRED_BETA_THM,DB.Thm),
   ("EMPTY_FUNSET",EMPTY_FUNSET,DB.Thm),
   ("FUNSET_EMPTY",FUNSET_EMPTY,DB.Thm), ("MAX_LE_X",MAX_LE_X,DB.Thm),
   ("X_LE_MAX",X_LE_MAX,DB.Thm),
   ("TRANSFORM_2D_NUM",TRANSFORM_2D_NUM,DB.Thm),
   ("TRIANGLE_2D_NUM",TRIANGLE_2D_NUM,DB.Thm), ("lg_1",lg_1,DB.Thm),
   ("logr_1",logr_1,DB.Thm), ("lg_nonzero",lg_nonzero,DB.Thm),
   ("lg_mul",lg_mul,DB.Thm), ("logr_mul",logr_mul,DB.Thm),
   ("lg_2",lg_2,DB.Thm), ("lg_inv",lg_inv,DB.Thm),
   ("logr_inv",logr_inv,DB.Thm), ("logr_div",logr_div,DB.Thm),
   ("neg_lg",neg_lg,DB.Thm), ("neg_logr",neg_logr,DB.Thm),
   ("lg_pow",lg_pow,DB.Thm), ("SCHROEDER_CLOSE",SCHROEDER_CLOSE,DB.Thm),
   ("SCHROEDER_CLOSED",SCHROEDER_CLOSED,DB.Thm),
   ("SCHROEDER_CLOSE_SUBSET",SCHROEDER_CLOSE_SUBSET,DB.Thm),
   ("SCHROEDER_CLOSE_SET",SCHROEDER_CLOSE_SET,DB.Thm),
   ("SCHROEDER_BERNSTEIN_AUTO",SCHROEDER_BERNSTEIN_AUTO,DB.Thm),
   ("INJ_IMAGE_BIJ",INJ_IMAGE_BIJ,DB.Thm),
   ("BIJ_SYM_IMP",BIJ_SYM_IMP,DB.Thm), ("BIJ_SYM",BIJ_SYM,DB.Thm),
   ("BIJ_TRANS",BIJ_TRANS,DB.Thm),
   ("SCHROEDER_BERNSTEIN",SCHROEDER_BERNSTEIN,DB.Thm),
   ("SURJ_IMP_INJ",SURJ_IMP_INJ,DB.Thm),
   ("BIJ_INJ_SURJ",BIJ_INJ_SURJ,DB.Thm), ("BIJ_INV",BIJ_INV,DB.Thm),
   ("NUM_2D_BIJ",NUM_2D_BIJ,DB.Thm),
   ("NUM_2D_BIJ_INV",NUM_2D_BIJ_INV,DB.Thm),
   ("NUM_2D_BIJ_NZ",NUM_2D_BIJ_NZ,DB.Thm),
   ("NUM_2D_BIJ_NZ_INV",NUM_2D_BIJ_NZ_INV,DB.Thm),
   ("NUM_2D_BIJ_NZ_ALT",NUM_2D_BIJ_NZ_ALT,DB.Thm),
   ("NUM_2D_BIJ_NZ_ALT_INV",NUM_2D_BIJ_NZ_ALT_INV,DB.Thm),
   ("NUM_2D_BIJ_NZ_ALT2",NUM_2D_BIJ_NZ_ALT2,DB.Thm),
   ("NUM_2D_BIJ_NZ_ALT2_INV",NUM_2D_BIJ_NZ_ALT2_INV,DB.Thm),
   ("BIGUNION_PAIR",BIGUNION_PAIR,DB.Thm),
   ("FINITE_COUNTABLE",FINITE_COUNTABLE,DB.Thm),
   ("BIJ_NUM_COUNTABLE",BIJ_NUM_COUNTABLE,DB.Thm),
   ("COUNTABLE_EMPTY",COUNTABLE_EMPTY,DB.Thm),
   ("COUNTABLE_IMAGE",COUNTABLE_IMAGE,DB.Thm),
   ("COUNTABLE_BIGUNION",COUNTABLE_BIGUNION,DB.Thm),
   ("COUNTABLE_UNION",COUNTABLE_UNION,DB.Thm),
   ("FINITE_INJ",FINITE_INJ,DB.Thm), ("INFINITE_INJ",INFINITE_INJ,DB.Thm),
   ("ENUMERATE",ENUMERATE,DB.Thm), ("FINITE_REST",FINITE_REST,DB.Thm),
   ("EXPLICIT_ENUMERATE_MONO",EXPLICIT_ENUMERATE_MONO,DB.Thm),
   ("EXPLICIT_ENUMERATE_NOT_EMPTY",EXPLICIT_ENUMERATE_NOT_EMPTY,DB.Thm),
   ("INFINITE_EXPLICIT_ENUMERATE",INFINITE_EXPLICIT_ENUMERATE,DB.Thm),
   ("COUNTABLE_ALT",COUNTABLE_ALT,DB.Thm),
   ("DISJOINT_COUNT",DISJOINT_COUNT,DB.Thm),
   ("K_PARTIAL",K_PARTIAL,DB.Thm), ("IN_o",IN_o,DB.Thm),
   ("PREIMAGE_ALT",PREIMAGE_ALT,DB.Thm),
   ("IN_PREIMAGE",IN_PREIMAGE,DB.Thm),
   ("IN_BIGUNION_IMAGE",IN_BIGUNION_IMAGE,DB.Thm),
   ("IN_BIGINTER_IMAGE",IN_BIGINTER_IMAGE,DB.Thm),
   ("PREIMAGE_EMPTY",PREIMAGE_EMPTY,DB.Thm),
   ("PREIMAGE_UNIV",PREIMAGE_UNIV,DB.Thm),
   ("PREIMAGE_COMPL",PREIMAGE_COMPL,DB.Thm),
   ("PREIMAGE_UNION",PREIMAGE_UNION,DB.Thm),
   ("PREIMAGE_INTER",PREIMAGE_INTER,DB.Thm),
   ("PREIMAGE_BIGUNION",PREIMAGE_BIGUNION,DB.Thm),
   ("PREIMAGE_COMP",PREIMAGE_COMP,DB.Thm),
   ("PREIMAGE_DIFF",PREIMAGE_DIFF,DB.Thm),
   ("PREIMAGE_I",PREIMAGE_I,DB.Thm), ("IMAGE_I",IMAGE_I,DB.Thm),
   ("PREIMAGE_K",PREIMAGE_K,DB.Thm),
   ("PREIMAGE_DISJOINT",PREIMAGE_DISJOINT,DB.Thm),
   ("PREIMAGE_SUBSET",PREIMAGE_SUBSET,DB.Thm),
   ("SUBSET_ADD",SUBSET_ADD,DB.Thm),
   ("DISJOINT_DIFFS",DISJOINT_DIFFS,DB.Thm),
   ("IMAGE_IMAGE",IMAGE_IMAGE,DB.Thm),
   ("IN_PROD_SETS",IN_PROD_SETS,DB.Thm),
   ("PREIMAGE_CROSS",PREIMAGE_CROSS,DB.Thm),
   ("FUNSET_INTER",FUNSET_INTER,DB.Thm),
   ("UNIV_NEQ_EMPTY",UNIV_NEQ_EMPTY,DB.Thm),
   ("COUNTABLE_NUM",COUNTABLE_NUM,DB.Thm),
   ("COUNTABLE_IMAGE_NUM",COUNTABLE_IMAGE_NUM,DB.Thm),
   ("COUNTABLE_ENUM",COUNTABLE_ENUM,DB.Thm),
   ("BIGUNION_IMAGE_UNIV",BIGUNION_IMAGE_UNIV,DB.Thm),
   ("BIJ_ALT",BIJ_ALT,DB.Thm),
   ("BIJ_FINITE_SUBSET",BIJ_FINITE_SUBSET,DB.Thm),
   ("NUM_2D_BIJ_SMALL_SQUARE",NUM_2D_BIJ_SMALL_SQUARE,DB.Thm),
   ("NUM_2D_BIJ_BIG_SQUARE",NUM_2D_BIJ_BIG_SQUARE,DB.Thm),
   ("finite_enumeration_of_sets_has_max_non_empty",
    finite_enumeration_of_sets_has_max_non_empty,
    DB.Thm), ("SUBSET_INTER1",SUBSET_INTER1,DB.Thm),
   ("SUBSET_INTER2",SUBSET_INTER2,DB.Thm),
   ("DIFF_DIFF_SUBSET",DIFF_DIFF_SUBSET,DB.Thm),
   ("BIGINTER_SUBSET",BIGINTER_SUBSET,DB.Thm),
   ("DIFF_BIGINTER1",DIFF_BIGINTER1,DB.Thm),
   ("DIFF_BIGINTER",DIFF_BIGINTER,DB.Thm),
   ("DIFF_INTER",DIFF_INTER,DB.Thm), ("DIFF_INTER2",DIFF_INTER2,DB.Thm),
   ("PREIMAGE_COMPL_INTER",PREIMAGE_COMPL_INTER,DB.Thm),
   ("PREIMAGE_REAL_COMPL1",PREIMAGE_REAL_COMPL1,DB.Thm),
   ("PREIMAGE_REAL_COMPL2",PREIMAGE_REAL_COMPL2,DB.Thm),
   ("PREIMAGE_REAL_COMPL3",PREIMAGE_REAL_COMPL3,DB.Thm),
   ("PREIMAGE_REAL_COMPL4",PREIMAGE_REAL_COMPL4,DB.Thm),
   ("ELT_IN_DELETE",ELT_IN_DELETE,DB.Thm),
   ("DELETE_THEN_INSERT",DELETE_THEN_INSERT,DB.Thm),
   ("BIJ_INSERT",BIJ_INSERT,DB.Thm), ("FINITE_BIJ",FINITE_BIJ,DB.Thm),
   ("FINITE_BIJ_COUNT",FINITE_BIJ_COUNT,DB.Thm),
   ("GBIGUNION_IMAGE",GBIGUNION_IMAGE,DB.Thm),
   ("DISJOINT_ALT",DISJOINT_ALT,DB.Thm),
   ("DISJOINT_DIFF",DISJOINT_DIFF,DB.Thm),
   ("COUNTABLE_COUNT",COUNTABLE_COUNT,DB.Thm),
   ("COUNTABLE_SUBSET",COUNTABLE_SUBSET,DB.Thm), ("LT_SUC",LT_SUC,DB.Thm),
   ("LE_SUC",LE_SUC,DB.Thm), ("HALF_POS",HALF_POS,DB.Thm),
   ("HALF_LT_1",HALF_LT_1,DB.Thm), ("HALF_CANCEL",HALF_CANCEL,DB.Thm),
   ("X_HALF_HALF",X_HALF_HALF,DB.Thm),
   ("ONE_MINUS_HALF",ONE_MINUS_HALF,DB.Thm),
   ("POW_HALF_POS",POW_HALF_POS,DB.Thm),
   ("POW_HALF_SMALL",POW_HALF_SMALL,DB.Thm),
   ("POW_HALF_MONO",POW_HALF_MONO,DB.Thm),
   ("REAL_LE_LT_MUL",REAL_LE_LT_MUL,DB.Thm),
   ("REAL_LT_LE_MUL",REAL_LT_LE_MUL,DB.Thm),
   ("REAL_MUL_IDEMPOT",REAL_MUL_IDEMPOT,DB.Thm),
   ("REAL_SUP_LE_X",REAL_SUP_LE_X,DB.Thm),
   ("REAL_X_LE_SUP",REAL_X_LE_SUP,DB.Thm),
   ("INF_DEF_ALT",INF_DEF_ALT,DB.Thm), ("LE_INF",LE_INF,DB.Thm),
   ("INF_LE",INF_LE,DB.Thm), ("INF_GREATER",INF_GREATER,DB.Thm),
   ("INF_CLOSE",INF_CLOSE,DB.Thm),
   ("INCREASING_SEQ",INCREASING_SEQ,DB.Thm),
   ("SEQ_SANDWICH",SEQ_SANDWICH,DB.Thm), ("SER_POS",SER_POS,DB.Thm),
   ("SER_POS_MONO",SER_POS_MONO,DB.Thm),
   ("POS_SUMMABLE",POS_SUMMABLE,DB.Thm),
   ("SUMMABLE_LE",SUMMABLE_LE,DB.Thm), ("SUMS_EQ",SUMS_EQ,DB.Thm),
   ("SUMINF_POS",SUMINF_POS,DB.Thm), ("SUM_PICK",SUM_PICK,DB.Thm),
   ("SUM_LT",SUM_LT,DB.Thm), ("SUM_CONST",SUM_CONST,DB.Thm),
   ("SUMINF_ADD",SUMINF_ADD,DB.Thm), ("SUMINF_2D",SUMINF_2D,DB.Thm),
   ("POW_HALF_SER",POW_HALF_SER,DB.Thm),
   ("SER_POS_COMPARE",SER_POS_COMPARE,DB.Thm),
   ("MINIMAL_EXISTS0",MINIMAL_EXISTS0,DB.Thm),
   ("MINIMAL_EXISTS",MINIMAL_EXISTS,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("real_sigmaTheory.real_sigma_grammars",
                          real_sigmaTheory.real_sigma_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUNSET", (Term.prim_mk_const { Name = "FUNSET", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUNSET", (Term.prim_mk_const { Name = "FUNSET", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DFUNSET", (Term.prim_mk_const { Name = "DFUNSET", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DFUNSET", (Term.prim_mk_const { Name = "DFUNSET", Thy = "util_prob"}))
  val _ = update_grms temp_add_infix ("->", 250, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("->", (Term.prim_mk_const { Name = "FUNSET", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-->", (Term.prim_mk_const { Name = "DFUNSET", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair", (Term.prim_mk_const { Name = "pair", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair", (Term.prim_mk_const { Name = "pair", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "powr"))
       (Infix(HOLgrammars.RIGHT, 700))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("powr", (Term.prim_mk_const { Name = "powr", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("powr", (Term.prim_mk_const { Name = "powr", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("logr", (Term.prim_mk_const { Name = "logr", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("logr", (Term.prim_mk_const { Name = "logr", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lg", (Term.prim_mk_const { Name = "lg", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lg", (Term.prim_mk_const { Name = "lg", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countable", (Term.prim_mk_const { Name = "countable", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countable", (Term.prim_mk_const { Name = "countable", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("enumerate", (Term.prim_mk_const { Name = "enumerate", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("enumerate", (Term.prim_mk_const { Name = "enumerate", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("schroeder_close", (Term.prim_mk_const { Name = "schroeder_close", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("schroeder_close", (Term.prim_mk_const { Name = "schroeder_close", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PREIMAGE", (Term.prim_mk_const { Name = "PREIMAGE", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PREIMAGE", (Term.prim_mk_const { Name = "PREIMAGE", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prod_sets", (Term.prim_mk_const { Name = "prod_sets", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prod_sets", (Term.prim_mk_const { Name = "prod_sets", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minimal", (Term.prim_mk_const { Name = "minimal", Thy = "util_prob"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minimal", (Term.prim_mk_const { Name = "minimal", Thy = "util_prob"}))
  val util_prob_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "util_prob",
    thydataty = "compute",
    data =
        "util_prob.FUNSET_def util_prob.PREIMAGE_def util_prob.minimal_def util_prob.prod_sets_def util_prob.countable_def util_prob.schroeder_close_def util_prob.enumerate_def util_prob.lg_def util_prob.logr_def util_prob.pair_def util_prob.powr_def util_prob.DFUNSET_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "util_prob"
end
