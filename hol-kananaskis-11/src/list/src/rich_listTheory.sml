structure rich_listTheory :> rich_listTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading rich_listTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open listTheory
  in end;
  val _ = Theory.link_parents
          ("rich_list",
          Arbnum.fromString "1488586542",
          Arbnum.fromString "856749")
          [("list",
           Arbnum.fromString "1488586477",
           Arbnum.fromString "361466")];
  val _ = Theory.incorporate_types "rich_list" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("pair", "prod"),
   ID("min", "bool"), ID("num", "num"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("bool", "?"), ID("list", "ALL_DISTINCT"),
   ID("rich_list", "AND_EL"), ID("list", "APPEND"),
   ID("operator", "ASSOC"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("rich_list", "BUTLASTN"),
   ID("operator", "COMM"), ID("bool", "COND"), ID("list", "CONS"),
   ID("rich_list", "COUNT_LIST"), ID("rich_list", "COUNT_LIST_AUX"),
   ID("list", "DROP"), ID("list", "EL"), ID("rich_list", "ELL"),
   ID("pred_set", "EMPTY"), ID("list", "EVERY"), ID("list", "EXISTS"),
   ID("bool", "F"), ID("combin", "FAIL"), ID("operator", "FCOMM"),
   ID("list", "FILTER"), ID("list", "FLAT"), ID("list", "FOLDL"),
   ID("list", "FOLDR"), ID("list", "FRONT"), ID("pair", "FST"),
   ID("arithmetic", "FUNPOW"), ID("list", "GENLIST"), ID("list", "HD"),
   ID("combin", "I"), ID("bool", "IN"), ID("pred_set", "INSERT"),
   ID("rich_list", "IS_SUBLIST"), ID("rich_list", "IS_SUFFIX"),
   ID("combin", "K"), ID("list", "LAST"), ID("rich_list", "LASTN"),
   ID("operator", "LEFT_ID"), ID("list", "LENGTH"), ID("bool", "LET"),
   ID("rich_list", "LIST_ELEM_COUNT"), ID("list", "LIST_REL"),
   ID("list", "LIST_TO_SET"), ID("list", "LUPDATE"), ID("list", "MAP"),
   ID("list", "MAP2"), ID("operator", "MONOID"), ID("list", "NIL"),
   ID("list", "NULL"), ID("arithmetic", "NUMERAL"),
   ID("rich_list", "OR_EL"), ID("prim_rec", "PRE"),
   ID("rich_list", "PREFIX"), ID("rich_list", "REPLICATE"),
   ID("list", "REVERSE"), ID("operator", "RIGHT_ID"),
   ID("rich_list", "SCANL"), ID("rich_list", "SCANR"),
   ID("rich_list", "SEG"), ID("pair", "SND"), ID("list", "SNOC"),
   ID("rich_list", "SPLITL"), ID("rich_list", "SPLITP"),
   ID("rich_list", "SPLITP_AUX"), ID("rich_list", "SPLITR"),
   ID("num", "SUC"), ID("rich_list", "SUFFIX"), ID("list", "SUM"),
   ID("bool", "T"), ID("list", "TAKE"), ID("list", "TL"),
   ID("rich_list", "TL_T"), ID("pair", "UNCURRY"), ID("list", "UNZIP"),
   ID("rich_list", "UNZIP_FST"), ID("rich_list", "UNZIP_SND"),
   ID("arithmetic", "ZERO"), ID("list", "ZIP"), ID("bool", "\\/"),
   ID("pred_set", "count"), ID("list", "isPREFIX"), ID("combin", "o"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYV "'b", TYOP [2, 2, 0], TYOP [1, 3],
   TYOP [0, 4, 1], TYOP [2, 0, 2], TYOP [1, 6], TYOP [0, 7, 1],
   TYOP [0, 1, 1], TYOP [3], TYOP [0, 0, 10], TYOP [0, 11, 9],
   TYOP [2, 1, 1], TYOP [0, 1, 13], TYOP [0, 11, 14], TYOP [0, 1, 15],
   TYOP [4], TYOP [0, 17, 9], TYOP [0, 17, 18], TYOP [1, 2],
   TYOP [0, 1, 20], TYOP [0, 2, 21], TYOP [0, 2, 2], TYOP [0, 0, 23],
   TYOP [0, 24, 22], TYOP [0, 0, 2], TYOP [0, 2, 26], TYOP [0, 27, 22],
   TYOP [0, 0, 1], TYOP [0, 17, 29], TYOP [1, 10], TYOP [0, 31, 10],
   TYOP [0, 1, 17], TYOP [0, 0, 33], TYOP [0, 1, 10], TYOP [0, 1, 35],
   TYOP [0, 1, 0], TYOP [0, 17, 37], TYOP [1, 17], TYOP [0, 39, 39],
   TYOP [0, 17, 40], TYOP [0, 17, 39], TYOP [0, 2, 10], TYOP [0, 0, 43],
   TYOP [0, 17, 10], TYV "'c", TYV "'d", TYOP [0, 0, 0], TYOP [0, 0, 48],
   TYOP [0, 2, 0], TYOP [0, 0, 50], TYOP [0, 2, 46], TYOP [0, 0, 52],
   TYOP [0, 2, 48], TYOP [0, 17, 0], TYOP [2, 2, 46], TYOP [2, 0, 56],
   TYOP [1, 57], TYOP [0, 46, 0], TYOP [0, 46, 2], TYOP [0, 17, 2],
   TYOP [1, 46], TYOP [1, 47], TYOP [1, 1], TYOP [1, 20], TYOP [1, 64],
   TYOP [1, 39], TYOP [0, 11, 10], TYOP [0, 43, 10], TYOP [0, 46, 10],
   TYOP [0, 70, 10], TYOP [0, 47, 10], TYOP [0, 72, 10], TYOP [0, 48, 10],
   TYOP [0, 74, 10], TYOP [0, 26, 10], TYOP [0, 76, 10], TYOP [0, 68, 10],
   TYOP [0, 49, 10], TYOP [0, 79, 10], TYOP [0, 51, 10], TYOP [0, 81, 10],
   TYOP [0, 24, 10], TYOP [0, 83, 10], TYOP [0, 53, 10], TYOP [0, 85, 10],
   TYOP [0, 44, 10], TYOP [0, 87, 10], TYOP [0, 50, 10], TYOP [0, 89, 10],
   TYOP [0, 69, 10], TYOP [0, 54, 10], TYOP [0, 92, 10], TYOP [0, 27, 10],
   TYOP [0, 94, 10], TYOP [0, 59, 10], TYOP [0, 96, 10], TYOP [0, 60, 10],
   TYOP [0, 98, 10], TYOP [0, 55, 10], TYOP [0, 100, 10], TYOP [0, 45, 10],
   TYOP [0, 102, 10], TYOP [0, 35, 10], TYOP [0, 20, 10],
   TYOP [0, 105, 10], TYOP [0, 62, 10], TYOP [0, 107, 10],
   TYOP [0, 63, 10], TYOP [0, 109, 10], TYOP [0, 32, 10], TYOP [0, 64, 10],
   TYOP [0, 112, 10], TYOP [0, 65, 10], TYOP [0, 114, 10],
   TYOP [0, 66, 10], TYOP [0, 116, 10], TYOP [0, 67, 10],
   TYOP [0, 118, 10], TYOP [0, 39, 10], TYOP [0, 120, 10], TYOP [0, 7, 10],
   TYOP [0, 122, 10], TYOP [0, 4, 10], TYOP [0, 124, 10], TYOP [0, 6, 10],
   TYOP [0, 126, 10], TYOP [0, 17, 17], TYOP [0, 17, 128], TYOP [0, 2, 6],
   TYOP [0, 0, 130], TYOP [2, 0, 17], TYOP [0, 17, 132], TYOP [0, 0, 133],
   TYOP [0, 1, 14], TYOP [2, 1, 20], TYOP [0, 20, 136], TYOP [0, 1, 137],
   TYOP [2, 1, 39], TYOP [0, 39, 139], TYOP [0, 1, 140], TYOP [0, 10, 10],
   TYOP [0, 10, 142], TYOP [0, 17, 45], TYOP [0, 0, 11], TYOP [0, 2, 43],
   TYOP [0, 46, 70], TYOP [0, 47, 72], TYOP [0, 11, 68], TYOP [0, 15, 10],
   TYOP [0, 15, 150], TYOP [0, 14, 10], TYOP [0, 14, 152],
   TYOP [0, 32, 111], TYOP [0, 45, 102], TYOP [0, 20, 105],
   TYOP [0, 39, 120], TYOP [0, 7, 122], TYOP [1, 132], TYOP [0, 159, 10],
   TYOP [0, 159, 160], TYOP [0, 13, 10], TYOP [0, 13, 162],
   TYOP [0, 136, 10], TYOP [0, 136, 164], TYOP [0, 1, 9], TYOP [0, 20, 20],
   TYOP [0, 20, 167], TYOP [0, 39, 40], TYOP [0, 7, 7], TYOP [0, 7, 170],
   TYOP [0, 166, 10], TYOP [0, 17, 167], TYOP [0, 10, 49], TYOP [0, 2, 23],
   TYOP [0, 10, 175], TYOP [0, 10, 166], TYOP [0, 10, 168],
   TYOP [0, 13, 13], TYOP [0, 13, 179], TYOP [0, 10, 180], TYOP [0, 0, 9],
   TYOP [0, 2, 167], TYOP [0, 62, 62], TYOP [0, 46, 184], TYOP [0, 63, 63],
   TYOP [0, 47, 186], TYOP [0, 39, 17], TYOP [0, 17, 188], TYOP [0, 20, 2],
   TYOP [0, 17, 190], TYOP [0, 11, 35], TYOP [0, 43, 105],
   TYOP [0, 142, 32], TYOP [0, 45, 120], TYOP [0, 10, 18],
   TYOP [0, 18, 196], TYOP [0, 49, 92], TYOP [0, 51, 79],
   TYOP [0, 43, 167], TYOP [0, 4, 4], TYOP [0, 3, 10], TYOP [0, 202, 201],
   TYOP [0, 64, 1], TYOP [0, 65, 20], TYOP [0, 66, 64], TYOP [0, 67, 39],
   TYOP [0, 0, 37], TYOP [0, 49, 208], TYOP [0, 20, 0], TYOP [0, 0, 210],
   TYOP [0, 51, 211], TYOP [0, 62, 0], TYOP [0, 0, 213], TYOP [0, 0, 59],
   TYOP [0, 215, 214], TYOP [0, 1, 2], TYOP [0, 2, 217], TYOP [0, 27, 218],
   TYOP [0, 10, 35], TYOP [0, 10, 11], TYOP [0, 221, 220],
   TYOP [0, 10, 32], TYOP [0, 143, 223], TYOP [0, 1, 29],
   TYOP [0, 225, 166], TYOP [0, 1, 204], TYOP [0, 166, 227],
   TYOP [0, 20, 21], TYOP [0, 0, 20], TYOP [0, 20, 230],
   TYOP [0, 231, 229], TYOP [0, 17, 33], TYOP [0, 0, 17],
   TYOP [0, 17, 234], TYOP [0, 235, 233], TYOP [0, 129, 189],
   TYOP [0, 24, 218], TYOP [0, 0, 142], TYOP [0, 239, 220],
   TYOP [0, 182, 166], TYOP [0, 0, 167], TYOP [0, 242, 229],
   TYOP [0, 0, 128], TYOP [0, 244, 233], TYOP [0, 54, 211],
   TYOP [0, 62, 2], TYOP [0, 2, 247], TYOP [0, 46, 23], TYOP [0, 249, 248],
   TYOP [0, 6, 0], TYOP [0, 57, 0], TYOP [0, 13, 1], TYOP [0, 136, 1],
   TYOP [0, 9, 18], TYOP [0, 17, 1], TYOP [0, 55, 256], TYOP [0, 17, 20],
   TYOP [0, 61, 258], TYOP [0, 128, 42], TYOP [0, 17, 159],
   TYOP [0, 133, 261], TYOP [0, 0, 68], TYOP [0, 17, 102],
   TYOP [0, 6, 127], TYOP [0, 11, 11], TYOP [0, 0, 266], TYOP [0, 0, 55],
   TYOP [0, 49, 11], TYOP [0, 20, 17], TYOP [0, 62, 17], TYOP [0, 7, 17],
   TYOP [0, 256, 256], TYOP [0, 179, 179], TYOP [0, 2, 270],
   TYOP [0, 46, 271], TYOP [0, 63, 17], TYOP [0, 47, 277],
   TYOP [0, 1, 105], TYOP [0, 44, 279], TYOP [0, 1, 11], TYOP [0, 39, 45],
   TYOP [0, 7, 126], TYOP [0, 0, 18], TYOP [0, 48, 9], TYOP [0, 26, 21],
   TYOP [0, 1, 31], TYOP [0, 11, 287], TYOP [0, 20, 1], TYOP [0, 50, 289],
   TYOP [0, 62, 1], TYOP [0, 59, 291], TYOP [0, 62, 20], TYOP [0, 60, 293],
   TYOP [0, 37, 204], TYOP [0, 64, 64], TYOP [0, 9, 296], TYOP [0, 64, 65],
   TYOP [0, 21, 298], TYOP [0, 64, 39], TYOP [0, 33, 300], TYOP [0, 65, 1],
   TYOP [0, 210, 302], TYOP [0, 204, 206], TYOP [0, 188, 207],
   TYOP [0, 39, 1], TYOP [0, 55, 306], TYOP [0, 128, 40], TYOP [0, 58, 1],
   TYOP [0, 252, 309], TYOP [0, 3, 0], TYOP [0, 311, 5], TYOP [0, 20, 62],
   TYOP [0, 1, 313], TYOP [0, 53, 314], TYOP [0, 166, 35], TYOP [0, 2, 20],
   TYOP [0, 17, 317], TYOP [0, 0, 289], TYOP [0, 51, 319], TYOP [0, 6, 2],
   TYOP [0, 136, 20], TYOP [2, 20, 1], TYOP [0, 323, 1], TYOP [0, 1, 296],
   TYOP [0, 6, 170], TYOP [0, 17, 170], TYOP [0, 56, 0], TYOP [0, 0, 328],
   TYOP [0, 329, 252], TYOP [0, 2, 11], TYOP [0, 331, 202],
   TYOP [0, 2, 59], TYOP [0, 333, 328], TYOP [0, 135, 179],
   TYOP [0, 7, 136], TYOP [0, 4, 323], TYOP [0, 7, 20], TYOP [0, 136, 7],
   TYOP [0, 139, 159], TYOP [0, 50, 43], TYOP [0, 11, 341],
   TYOP [0, 142, 266]]
  end
  val _ = Theory.incorporate_consts "rich_list" tyvector
     [("UNZIP_SND", 5), ("UNZIP_FST", 8), ("TL_T", 9), ("SUFFIX", 12),
      ("SPLITR", 15), ("SPLITP_AUX", 16), ("SPLITP", 15), ("SPLITL", 15),
      ("SEG", 19), ("SCANR", 25), ("SCANL", 28), ("REPLICATE", 30),
      ("PREFIX", 12), ("OR_EL", 32), ("LIST_ELEM_COUNT", 34),
      ("LASTN", 18), ("IS_SUFFIX", 36), ("IS_SUBLIST", 36), ("ELL", 38),
      ("COUNT_LIST_AUX", 41), ("COUNT_LIST", 42), ("BUTLASTN", 18),
      ("AND_EL", 32)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 11), TMV("P", 44), TMV("P", 43), TMV("P", 45), TMV("P1", 11),
   TMV("P2", 11), TMV("Q", 11), TMV("R", 44), TMV("a", 0), TMV("a", 1),
   TMV("acc", 1), TMV("b", 0), TMV("b", 1), TMV("b", 20), TMV("c", 0),
   TMV("c", 1), TMV("d", 1), TMV("d", 20), TMV("e", 0), TMV("e", 2),
   TMV("e", 46), TMV("e", 47), TMV("e'", 0), TMV("f", 48), TMV("f", 26),
   TMV("f", 11), TMV("f", 49), TMV("f", 51), TMV("f", 24), TMV("f", 53),
   TMV("f", 44), TMV("f", 50), TMV("f", 54), TMV("f", 27), TMV("f", 55),
   TMV("f1", 11), TMV("f2", 11), TMV("f2", 50), TMV("funs", 58),
   TMV("g", 49), TMV("g", 50), TMV("g", 59), TMV("g", 60), TMV("g", 61),
   TMV("h", 0), TMV("h", 46), TMV("h", 47), TMV("i", 17), TMV("k", 17),
   TMV("l", 1), TMV("l", 20), TMV("l", 62), TMV("l", 63), TMV("l", 31),
   TMV("l", 64), TMV("l", 65), TMV("l", 66), TMV("l", 67), TMV("l", 39),
   TMV("l", 7), TMV("l", 4), TMV("l", 17), TMV("l'", 0), TMV("l'", 10),
   TMV("l'", 1), TMV("l'", 20), TMV("l'", 17), TMV("l1", 1), TMV("l1", 20),
   TMV("l2", 1), TMV("l2", 20), TMV("l3", 1), TMV("l4", 20),
   TMV("longer than list", 10), TMV("ls", 1), TMV("ls", 4), TMV("m", 17),
   TMV("m1", 17), TMV("m2", 17), TMV("n", 17), TMV("n'", 17),
   TMV("n1", 17), TMV("n2", 17), TMV("s", 1), TMV("t", 1), TMV("x", 0),
   TMV("x", 2), TMV("x", 46), TMV("x", 10), TMV("x", 1), TMV("x", 17),
   TMV("x", 6), TMV("x1", 0), TMV("x2", 0), TMV("x2", 2), TMV("xs", 1),
   TMV("xs1", 1), TMV("y", 0), TMV("y", 2), TMV("y", 46), TMV("y", 1),
   TMV("ys", 20), TMV("ys1", 20), TMV("z", 0), TMV("z", 46), TMV("z", 1),
   TMC(5, 68), TMC(5, 69), TMC(5, 71), TMC(5, 73), TMC(5, 75), TMC(5, 77),
   TMC(5, 78), TMC(5, 80), TMC(5, 82), TMC(5, 84), TMC(5, 86), TMC(5, 88),
   TMC(5, 90), TMC(5, 91), TMC(5, 93), TMC(5, 95), TMC(5, 97), TMC(5, 99),
   TMC(5, 101), TMC(5, 103), TMC(5, 104), TMC(5, 106), TMC(5, 108),
   TMC(5, 110), TMC(5, 111), TMC(5, 113), TMC(5, 115), TMC(5, 117),
   TMC(5, 119), TMC(5, 121), TMC(5, 123), TMC(5, 125), TMC(5, 102),
   TMC(5, 127), TMC(6, 129), TMC(7, 131), TMC(7, 134), TMC(7, 135),
   TMC(7, 138), TMC(7, 141), TMC(8, 129), TMC(9, 143), TMC(10, 17),
   TMC(11, 144), TMC(12, 144), TMC(13, 145), TMC(13, 146), TMC(13, 147),
   TMC(13, 148), TMC(13, 143), TMC(13, 149), TMC(13, 151), TMC(13, 153),
   TMC(13, 154), TMC(13, 155), TMC(13, 36), TMC(13, 156), TMC(13, 157),
   TMC(13, 158), TMC(13, 161), TMC(13, 144), TMC(13, 163), TMC(13, 165),
   TMC(14, 143), TMC(15, 144), TMC(16, 104), TMC(17, 35), TMC(17, 120),
   TMC(18, 32), TMC(19, 166), TMC(19, 168), TMC(19, 169), TMC(19, 171),
   TMC(20, 79), TMC(20, 172), TMC(21, 128), TMC(22, 128), TMC(23, 18),
   TMC(23, 173), TMC(24, 79), TMC(25, 174), TMC(25, 176), TMC(25, 177),
   TMC(25, 178), TMC(25, 181), TMC(26, 182), TMC(26, 183), TMC(26, 185),
   TMC(26, 187), TMC(26, 41), TMC(27, 42), TMC(28, 41), TMC(29, 18),
   TMC(29, 173), TMC(30, 38), TMC(30, 189), TMC(31, 38), TMC(31, 191),
   TMC(32, 11), TMC(33, 192), TMC(33, 193), TMC(33, 194), TMC(33, 195),
   TMC(34, 192), TMC(34, 194), TMC(35, 10), TMC(36, 197), TMC(37, 198),
   TMC(37, 199), TMC(38, 12), TMC(38, 200), TMC(38, 203), TMC(39, 204),
   TMC(39, 205), TMC(39, 206), TMC(39, 207), TMC(40, 209), TMC(40, 212),
   TMC(40, 216), TMC(40, 219), TMC(40, 222), TMC(40, 224), TMC(40, 226),
   TMC(40, 228), TMC(40, 232), TMC(40, 236), TMC(40, 237), TMC(41, 209),
   TMC(41, 238), TMC(41, 240), TMC(41, 241), TMC(41, 243), TMC(41, 245),
   TMC(41, 246), TMC(41, 250), TMC(41, 224), TMC(41, 228), TMC(41, 237),
   TMC(42, 9), TMC(43, 251), TMC(43, 252), TMC(43, 253), TMC(43, 254),
   TMC(44, 255), TMC(45, 257), TMC(45, 259), TMC(45, 260), TMC(45, 262),
   TMC(46, 37), TMC(46, 190), TMC(47, 142), TMC(47, 128), TMC(48, 263),
   TMC(48, 264), TMC(48, 265), TMC(49, 267), TMC(50, 36), TMC(51, 36),
   TMC(52, 268), TMC(53, 37), TMC(54, 18), TMC(54, 173), TMC(55, 269),
   TMC(56, 33), TMC(56, 270), TMC(56, 271), TMC(56, 188), TMC(56, 272),
   TMC(57, 273), TMC(57, 274), TMC(58, 34), TMC(58, 275), TMC(58, 276),
   TMC(58, 278), TMC(59, 280), TMC(60, 281), TMC(60, 282), TMC(60, 283),
   TMC(61, 284), TMC(62, 285), TMC(62, 286), TMC(62, 288), TMC(62, 290),
   TMC(62, 292), TMC(62, 294), TMC(62, 295), TMC(62, 297), TMC(62, 299),
   TMC(62, 301), TMC(62, 303), TMC(62, 304), TMC(62, 305), TMC(62, 307),
   TMC(62, 308), TMC(62, 310), TMC(62, 312), TMC(63, 315), TMC(64, 269),
   TMC(64, 316), TMC(65, 1), TMC(65, 20), TMC(65, 39), TMC(66, 35),
   TMC(67, 128), TMC(68, 32), TMC(69, 128), TMC(70, 12), TMC(70, 200),
   TMC(71, 30), TMC(71, 318), TMC(72, 9), TMC(72, 167), TMC(72, 296),
   TMC(72, 40), TMC(72, 170), TMC(73, 269), TMC(74, 320), TMC(74, 28),
   TMC(75, 25), TMC(76, 19), TMC(77, 321), TMC(77, 311), TMC(77, 253),
   TMC(77, 322), TMC(77, 324), TMC(78, 182), TMC(78, 183), TMC(78, 325),
   TMC(78, 41), TMC(78, 326), TMC(79, 15), TMC(80, 15), TMC(81, 16),
   TMC(82, 15), TMC(83, 128), TMC(84, 12), TMC(85, 188), TMC(86, 10),
   TMC(87, 18), TMC(87, 173), TMC(87, 327), TMC(88, 9), TMC(89, 9),
   TMC(90, 330), TMC(90, 332), TMC(90, 334), TMC(90, 335), TMC(91, 336),
   TMC(91, 337), TMC(92, 8), TMC(93, 338), TMC(93, 5), TMC(94, 17),
   TMC(95, 339), TMC(95, 340), TMC(96, 143), TMC(97, 144), TMC(98, 36),
   TMC(99, 342), TMC(99, 343), TMC(100, 142)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ELL x = x
    val op ELL =
    DT(((("rich_list",0),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%147%126%49%151%202%148@$0@@%265$0@@|@@%138%79%126%49%151%202%340$1@@$0@@%202$1@%244$0@@@|@|@@"])
  fun op REPLICATE x = x
    val op REPLICATE =
    DT(((("rich_list",2),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%147%106%85%161%314%148@$0@@%305@|@@%138%79%106%85%161%314%340$1@@$0@@%191$0@%314$1@$0@@@|@|@@"])
  fun op SCANL x = x
    val op SCANL =
    DT(((("rich_list",4),[("list",[13])]),["DISK_THM"]),
       [read"%147%121%33%107%19%162%323$1@$0@%305@@%192$0@%306@@|@|@@%121%33%107%19%106%85%126%49%162%323$3@$2@%191$1@$0@@@%192$2@%323$3@$3$2@$1@@$0@@@|@|@|@|@@"])
  fun op SCANR x = x
    val op SCANR =
    DT(((("rich_list",5),[("list",[13])]),["DISK_THM"]),
       [read"%147%115%28%107%19%162%324$1@$0@%305@@%192$0@%306@@|@|@@%115%28%107%19%106%85%126%49%162%324$3@$2@%191$1@$0@@@%192$3$1@%255%324$3@$2@$0@@@@%324$3@$2@$0@@@|@|@|@|@@"])
  fun op SPLITP x = x
    val op SPLITP =
    DT(((("rich_list",6),[("list",[13])]),["DISK_THM"]),
       [read"%147%112%0%167%337$0@%305@@%143%305@%305@@|@@%112%0%106%85%126%49%167%337$2@%191$1@$0@@@%190$2$1@@%143%305@%191$1@$0@@@%143%191$1@%247%337$2@$0@@@@%328%337$2@$0@@@@@|@|@|@@"])
  fun op SPLITP_AUX_def x = x
    val op SPLITP_AUX_def =
    DT(((("rich_list",7),[("list",[13])]),["DISK_THM"]),
       [read"%147%126%10%112%0%167%338$1@$0@%305@@%143$1@%305@@|@|@@%126%10%112%0%106%44%126%84%167%338$3@$2@%191$1@$0@@@%190$2$1@@%143$3@%191$1@$0@@@%338%175$3@%191$1@%305@@@$2@$0@@@|@|@|@|@@"])
  fun op SPLITL_def x = x
    val op SPLITL_def =
    DT(((("rich_list",8),[]),[]),
       [read"%112%0%158%336$0@@%337%365%366@$0@@@|@"])
  fun op SPLITR_def x = x
    val op SPLITR_def =
    DT(((("rich_list",9),[]),[]),
       [read"%112%0%126%49%167%339$1@$0@@%275%352%9%12%143%316$0@@%316$1@@||@@%337%365%366@$1@@%316$0@@@@|@|@"])
  fun op PREFIX_DEF x = x
    val op PREFIX_DEF =
    DT(((("rich_list",10),[]),[]),
       [read"%112%0%126%49%161%312$1@$0@@%247%337%365%366@$1@@$0@@@|@|@"])
  fun op SUFFIX_DEF x = x
    val op SUFFIX_DEF =
    DT(((("rich_list",11),[]),[]),
       [read"%112%0%126%49%161%341$1@$0@@%228%64%85%188$3$0@@%331$0@$1@@%305@||@%305@$0@@|@|@"])
  fun op AND_EL_DEF x = x
    val op AND_EL_DEF =
    DT(((("rich_list",12),[]),[]), [read"%159%174@%207%256@@"])
  fun op OR_EL_DEF x = x
    val op OR_EL_DEF =
    DT(((("rich_list",13),[]),[]), [read"%159%310@%210%256@@"])
  fun op UNZIP_FST_DEF x = x
    val op UNZIP_FST_DEF =
    DT(((("rich_list",14),[]),[]),
       [read"%136%59%161%355$0@@%248%353$0@@@|@"])
  fun op UNZIP_SND_DEF x = x
    val op UNZIP_SND_DEF =
    DT(((("rich_list",15),[]),[]),
       [read"%137%60%161%357$0@@%330%354$0@@@|@"])
  fun op LIST_ELEM_COUNT_DEF x = x
    val op LIST_ELEM_COUNT_DEF =
    DT(((("rich_list",16),[]),[]),
       [read"%106%18%126%49%166%276$1@$0@@%269%215%85%151$0@$2@|@$0@@@|@|@"])
  fun op COUNT_LIST_def x = x
    val op COUNT_LIST_def =
    DT(((("rich_list",17),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%147%163%196%148@@%307@@%138%79%163%196%340$0@@@%195%148@%299%340@%196$0@@@@|@@"])
  fun op COUNT_LIST_AUX_def x = x
    val op COUNT_LIST_AUX_def =
    DT(((("rich_list",18),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%147%135%58%163%197%148@$0@@$0@|@@%138%79%135%58%163%197%340$1@@$0@@%197$1@%195$1@$0@@@|@|@@"])
  fun op TL_T_def x = x
    val op TL_T_def =
    DT(((("rich_list",20),[("list",[13])]),["DISK_THM"]),
       [read"%147%161%348%305@@%305@@%106%44%126%84%161%348%191$1@$0@@@$0@|@|@@"])
  fun op LASTN x = x
    val op LASTN =
    DT(((("rich_list",25),
        [("bool",[2,15,25,26,53,54,55,63,74,75]),("list",[258,259]),
         ("prim_rec",[38]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%126%49%161%266%148@$0@@%305@|@@%138%79%106%85%126%49%161%266%340$2@@%331$1@$0@@@%331$1@%266$2@$0@@@|@|@|@@"])
  fun op BUTLASTN x = x
    val op BUTLASTN =
    DT(((("rich_list",26),
        [("bool",[2,15,25,26,53,54,55,63,74,75]),("list",[259]),
         ("prim_rec",[38]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%126%49%161%183%148@$0@@$0@|@@%138%79%106%85%126%49%161%183%340$2@@%331$1@$0@@@%183$2@$0@@|@|@|@@"])
  fun op IS_SUBLIST x = x
    val op IS_SUBLIST =
    DT(((("rich_list",27),
        [("bool",[14,25,36,51,52,54,56,63,64]),
         ("list",[13,16,17,18,43])]),["DISK_THM"]),
       [read"%147%126%49%155%262$0@%305@@%343@|@@%147%106%85%126%49%155%262%305@%191$1@$0@@@%211@|@|@@%106%92%126%67%106%93%126%69%155%262%191$3@$2@@%191$1@$0@@@%361%147%151$3@$1@@%363$0@$2@@@%262$2@%191$1@$0@@@@|@|@|@|@@@"])
  fun op SEG x = x
    val op SEG =
    DT(((("rich_list",28),
        [("bool",[25,36,51,56]),("rich_list",[21,22])]),["DISK_THM"]),
       [read"%147%138%48%126%49%161%325%148@$1@$0@@%305@|@|@@%147%138%76%106%85%126%49%161%325%340$2@@%148@%191$1@$0@@@%191$1@%325$2@%148@$0@@@|@|@|@@%138%76%138%48%106%85%126%49%161%325%340$3@@%340$2@@%191$1@$0@@@%325%340$3@@$2@$0@@|@|@|@|@@@"])
  fun op IS_SUFFIX x = x
    val op IS_SUFFIX =
    DT(((("rich_list",29),
        [("bool",[2,5,15,25,26,27,30,52,53,54,55,58,63,64,73,75,99]),
         ("list",[16,258,259,272]),("rich_list",[24]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%126%49%155%263$0@%305@@%343@|@@%147%106%85%126%49%155%263%305@%331$1@$0@@@%211@|@|@@%106%92%126%67%106%93%126%69%155%263%331$3@$2@@%331$1@$0@@@%147%151$3@$1@@%263$2@$0@@@|@|@|@|@@@"])
  fun op EL_REPLICATE x = x
    val op EL_REPLICATE =
    DT(((("rich_list",306),
        [("arithmetic",[24,25,28,37,59,71,173,180]),
         ("bool",[14,25,26,27,30,36,53,54,56,58,63,104,105,124]),
         ("list",[17,128]),("num",[9]),("numeral",[3,8]),("prim_rec",[6]),
         ("rich_list",[2])]),["DISK_THM"]),
       [read"%138%81%138%82%106%85%169%149$2@$1@@%151%200$2@%314$1@$0@@@$0@@|@|@|@"])
  fun op REPLICATE_GENLIST x = x
    val op REPLICATE_GENLIST =
    DT(((("rich_list",305),
        [("bool",[14,25,51,56,63]),("combin",[12,21]),
         ("list",[48,292,295]),("num",[9]),
         ("rich_list",[2])]),["DISK_THM"]),
       [read"%138%79%106%85%161%314$1@$0@@%250%264$0@@$1@@|@|@"])
  fun op LIST_TO_SET_EQ_SING x = x
    val op LIST_TO_SET_EQ_SING =
    DT(((("rich_list",304),
        [("bool",[14,25,26,27,51,52,53,54,55,58,63,100,169]),
         ("list",[25,30,43,49,71]),("pred_set",[3,10,80,90]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%85%126%74%155%156%281$0@@%261$1@%204@@@%147%366%161$0@%305@@@%205%151$1@@$0@@@|@|@"])
  fun op LIST_ELEM_COUNT_MEM x = x
    val op LIST_ELEM_COUNT_MEM =
    DT(((("rich_list",303),
        [("arithmetic",[9,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [5,13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,71,93,94,96,
          104,105,108,109,129]),("list",[22,27,43,120]),("numeral",[3,8]),
         ("rich_list",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%106%18%126%49%155%170%276$1@$0@@%148@@%258$1@%281$0@@@|@|@"])
  fun op LIST_ELEM_COUNT_THM x = x
    val op LIST_ELEM_COUNT_THM =
    DT(((("rich_list",302),
        [("arithmetic",[91]),
         ("bool",[25,26,27,36,51,53,54,56,58,63,64,101,105,124,129,145]),
         ("list",[22,27,57,119]),("prim_rec",[1]),
         ("rich_list",[16])]),["DISK_THM"]),
       [read"%147%106%18%166%276$0@%305@@%148@|@@%147%107%19%127%68%127%70%166%277$2@%176$1@$0@@@%140%277$2@$1@@%277$2@$0@@@|@|@|@@%147%108%20%108%45%128%51%169%153$1@$2@@%166%278$2@%193$1@$0@@@%340%278$2@$0@@@@|@|@|@@%109%21%109%46%129%52%169%366%154$1@$2@@@%166%279$2@%194$1@$0@@@%279$2@$0@@@|@|@|@@@@"])
  fun op MEM_LAST_FRONT x = x
    val op MEM_LAST_FRONT =
    DT(((("rich_list",301),
        [("bool",
         [5,14,25,26,27,30,36,47,48,50,51,52,53,54,58,63,64,71,93,94,96,
          105,109,124,129]),("list",[25,43,120,182,183,184,186]),
         ("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%106%18%126%49%106%44%169%147%258$2@%281$1@@@%366%151$2@%265%191$0@$1@@@@@@%258$2@%281%244%191$0@$1@@@@@|@|@|@"])
  fun op DROP_CONS_EL x = x
    val op DROP_CONS_EL =
    DT(((("rich_list",300),
        [("arithmetic",
         [18,24,25,26,28,37,41,46,59,65,71,93,172,173,180,200]),
         ("bool",
         [14,25,26,27,36,51,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("list",[17,22,43,48,128,193,199]),("numeral",[3,6,8]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%161%198$1@$0@@%191%200$1@$0@@%198%340$1@@$0@@@@|@|@"])
  fun op MEM_LAST x = x
    val op MEM_LAST =
    DT(((("rich_list",299),
        [("bool",[14,25,36,52,56,63,169]),
         ("list",[43,120,184])]),["DISK_THM"]),
       [read"%106%18%126%49%258%265%191$1@$0@@@%281%191$1@$0@@@|@|@"])
  fun op EL_FRONT x = x
    val op EL_FRONT =
    DT(((("rich_list",298),
        [("arithmetic",[28,37]),
         ("bool",[14,25,26,27,36,51,53,54,56,58,63,105,124]),
         ("list",[17,22,41,43,46,128,186,187]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%126%49%138%79%169%147%149$0@%269%244$1@@@@%366%308$1@@@@%151%200$0@%244$1@@@%200$0@$1@@@|@|@"])
  fun op FRONT_APPEND x = x
    val op FRONT_APPEND =
    DT(((("rich_list",297),
        [("bool",[14,25,26,27,36,51,56,58,64,105,129]),
         ("list",[20,43,48,49,101,104,183])]),["DISK_THM"]),
       [read"%126%67%126%69%106%18%161%244%175$2@%191$0@$1@@@@%175$2@%244%191$0@$1@@@@|@|@|@"])
  fun op MEM_FRONT x = x
    val op MEM_FRONT =
    DT(((("rich_list",296),
        [("bool",[14,25,26,27,36,51,52,53,56,58,63,102,105,124]),
         ("list",[25,43,120,186]),("pred_set",[10,80])]),["DISK_THM"]),
       [read"%126%49%106%18%106%97%169%258$0@%281%244%191$1@$2@@@@@%258$0@%281%191$1@$2@@@@|@|@|@"])
  fun op SPLITP_EVERY x = x
    val op SPLITP_EVERY =
    DT(((("rich_list",295),
        [("bool",[14,25,26,27,51,53,56,58,63,105,124,129,147]),
         ("list",[30,43,48]),("pair",[4,8,9]),
         ("rich_list",[6])]),["DISK_THM"]),
       [read"%112%0%126%49%169%205%85%366$2$0@@|@$0@@%167%337$1@$0@@%143$0@%305@@@|@|@"])
  fun op FOLDL_MAP2 x = x
    val op FOLDL_MAP2 =
    DT(((("rich_list",294),
        [("bool",[14,25,36,56]),
         ("list",[23,29,262,273,299])]),["DISK_THM"]),
       [read"%114%27%106%18%123%42%128%51%151%223$3@$2@%290$1@$0@@@%224%85%99$5$1@$3$0@@||@$2@$0@@|@|@|@|@"])
  fun op APPEND_SNOC1 x = x
    val op APPEND_SNOC1 =
    DT(((("rich_list",293),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("list",[56,260]),("rich_list",[57]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%126%67%106%85%126%69%161%175%331$1@$2@@$0@@%175$2@%191$1@$0@@@|@|@|@"])
  fun op APPEND_ASSOC_CONS x = x
    val op APPEND_ASSOC_CONS =
    DT(((("rich_list",292),
        [("bool",[25,36,56,58]),("list",[20,56])]),["DISK_THM"]),
       [read"%126%67%106%44%126%69%126%71%161%175%175$3@%191$2@$1@@@$0@@%175$3@%191$2@%175$1@$0@@@@|@|@|@|@"])
  fun op ZIP_APPEND x = x
    val op ZIP_APPEND =
    DT(((("rich_list",291),
        [("arithmetic",[24,25,46,71,93,172,173,180]),
         ("bool",[14,25,26,27,36,43,51,53,54,56,58,63,96,101,104,105,124]),
         ("list",[9,20,22,43,55,90,156]),("numeral",[3,8]),("pair",[4]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%126%9%127%13%126%15%127%17%169%147%166%269$3@@%270$2@@@%166%269$1@@%270$0@@@@%164%178%359%144$3@$2@@@%359%144$1@$0@@@@%359%144%175$3@$1@@%176$2@$0@@@@@|@|@|@|@"])
  fun op EL_TAKE x = x
    val op EL_TAKE =
    DT(((("rich_list",290),
        [("arithmetic",[28,37]),
         ("bool",[14,25,26,27,36,53,56,58,63,105,124]),
         ("list",[17,46,128,192]),("num",[9]),("prim_rec",[6,7]),
         ("rich_list",[21])]),["DISK_THM"]),
       [read"%138%79%138%90%126%49%169%149$1@$2@@%151%200$1@%344$2@$0@@@%200$1@$0@@@|@|@|@"])
  fun op ZIP_TAKE x = x
    val op ZIP_TAKE =
    DT(((("rich_list",289),
        [("arithmetic",[95]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("list",[195]),("rich_list",[288])]),["DISK_THM"]),
       [read"%138%79%126%9%127%13%169%147%150$2@%269$1@@@%166%269$1@@%270$0@@@@%164%359%144%344$2@$1@@%345$2@$0@@@@%346$2@%359%144$1@$0@@@@@|@|@|@"])
  fun op ZIP_TAKE_LEQ x = x
    val op ZIP_TAKE_LEQ =
    DT(((("rich_list",288),
        [("arithmetic",[38,46,58,65,71,93,172,173,176,180]),
         ("bool",
         [14,25,26,27,36,51,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("list",[22,46,48,156,192]),("num",[9]),("numeral",[3,8]),
         ("pair",[4]),("rich_list",[21])]),["DISK_THM"]),
       [read"%138%79%126%9%127%13%169%147%150$2@%269$1@@@%150%269$1@@%270$0@@@@%164%359%144%344$2@$1@@%345$2@$0@@@@%346$2@%359%144$1@%345%269$1@@$0@@@@@@|@|@|@"])
  fun op SNOC_EL_TAKE x = x
    val op SNOC_EL_TAKE =
    DT(((("rich_list",287),
        [("arithmetic",[37]),("bool",[14,25,26,27,51,53,56,58,63,105,124]),
         ("list",[17,22,46,48,128,256]),("num",[9]),("prim_rec",[6,7]),
         ("rich_list",[21])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%161%331%200$1@$0@@%344$1@$0@@@%344%340$1@@$0@@@|@|@"])
  fun op EL_DROP x = x
    val op EL_DROP =
    DT(((("rich_list",286),
        [("arithmetic",[24,28,37,41,46,62,65,71,93,172,173,180]),
         ("bool",
         [14,25,26,27,36,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("list",[22,43,128,193]),("numeral",[3,8]),("prim_rec",[6]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%138%76%138%79%126%49%169%149%140$2@$1@@%269$0@@@%151%200$2@%198$1@$0@@@%200%140$2@$1@@$0@@@|@|@|@"])
  fun op COUNT_LIST_ADD x = x
    val op COUNT_LIST_ADD =
    DT(((("rich_list",285),
        [("arithmetic",[22,24,25,27,71,173,177,180]),
         ("bool",[14,25,36,52,54,56,58,63,104]),("combin",[5]),
         ("list",[20,23,56,59,66,260]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[17,283])]),["DISK_THM"]),
       [read"%138%79%138%76%163%196%140$1@$0@@@%177%196$1@@%299%80%140$0@$2@|@%196$0@@@@|@|@"])
  fun op COUNT_LIST_COUNT x = x
    val op COUNT_LIST_COUNT =
    DT(((("rich_list",284),
        [("bool",[14,25,26,47,48,53,54,56,63,71]),("list",[230,240,260]),
         ("num",[9]),("pred_set",[3,33,80,131,298,299]),
         ("rich_list",[17,283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%138%79%160%282%196$0@@@%362$0@@|@"])
  fun op COUNT_LIST_SNOC x = x
    val op COUNT_LIST_SNOC =
    DT(((("rich_list",283),
        [("bool",[25,36,51,56]),("combin",[19]),("list",[275]),
         ("rich_list",[279])]),["DISK_THM"]),
       [read"%147%163%196%148@@%307@@%138%79%163%196%340$0@@@%334$0@%196$0@@@|@@"])
  fun op MEM_COUNT_LIST x = x
    val op MEM_COUNT_LIST =
    DT(((("rich_list",282),
        [("bool",[25,26,36,56,58,63,105,125,143]),("list",[170]),
         ("rich_list",[280,281])]),["DISK_THM"]),
       [read"%138%76%138%79%155%259$1@%282%196$0@@@@%149$1@$0@@|@|@"])
  fun op EL_COUNT_LIST x = x
    val op EL_COUNT_LIST =
    DT(((("rich_list",281),
        [("bool",[25,36,53,56,58,63,105,124]),("combin",[19]),
         ("list",[283]),("rich_list",[279])]),["DISK_THM"]),
       [read"%138%76%138%79%169%149$1@$0@@%166%201$1@%196$0@@@$1@@|@|@"])
  fun op LENGTH_COUNT_LIST x = x
    val op LENGTH_COUNT_LIST =
    DT(((("rich_list",280),
        [("bool",[25,36,56]),("list",[276]),
         ("rich_list",[279])]),["DISK_THM"]),
       [read"%138%79%166%272%196$0@@@$0@|@"])
  fun op COUNT_LIST_GENLIST x = x
    val op COUNT_LIST_GENLIST =
    DT(((("rich_list",279),
        [("bool",[14,25,56]),("combin",[19,20]),("list",[275,282,292]),
         ("num",[9]),("rich_list",[17])]),["DISK_THM"]),
       [read"%138%79%163%196$0@@%252%257@$0@@|@"])
  fun op prefixes_is_prefix_total x = x
    val op prefixes_is_prefix_total =
    DT(((("rich_list",278),
        [("bool",[14,25,36,51,52,53,56,58,63,105,124]),
         ("list",[6,43,46,254,255]),("rich_list",[266])]),["DISK_THM"]),
       [read"%126%49%126%67%126%69%169%147%363$1@$2@@%363$0@$2@@@%361%363$1@$0@@%363$0@$1@@@|@|@|@"])
  fun op IS_PREFIX_APPEND3 x = x
    val op IS_PREFIX_APPEND3 =
    DT(((("rich_list",277),
        [("bool",[63]),("rich_list",[52,70,276])]),["DISK_THM"]),
       [read"%126%9%126%15%363$1@%175$1@$0@@|@|@"])
  fun op IS_PREFIX_APPENDS x = x
    val op IS_PREFIX_APPENDS =
    DT(((("rich_list",276),
        [("bool",[14,25,36,51,56,63]),("list",[20,42]),
         ("rich_list",[70])]),["DISK_THM"]),
       [read"%126%9%126%12%126%15%155%363%175$2@$1@@%175$2@$0@@@%363$1@$0@@|@|@|@"])
  fun op IS_PREFIX_APPEND2 x = x
    val op IS_PREFIX_APPEND2 =
    DT(((("rich_list",275),
        [("bool",
         [14,25,26,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("list",[20,42,45]),("rich_list",[70]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%9%126%12%126%15%169%363$2@%175$1@$0@@@%361%363$2@$1@@%363$1@$2@@@|@|@|@"])
  fun op IS_PREFIX_APPEND1 x = x
    val op IS_PREFIX_APPEND1 =
    DT(((("rich_list",274),
        [("bool",[14,25,26,27,36,47,48,51,53,54,56,58,63,94,105,124]),
         ("list",[20,42,45]),("rich_list",[70]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%9%126%12%126%15%169%363%175$2@$1@@$0@@%363$2@$0@@|@|@|@"])
  fun op IS_PREFIX_SNOC x = x
    val op IS_PREFIX_SNOC =
    DT(((("rich_list",273),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("list",[42,45,48,50,256]),("rich_list",[70,266]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%106%85%126%100%126%105%155%363$0@%331$2@$1@@@%361%363$0@$1@@%161$0@%331$2@$1@@@@|@|@|@"])
  fun op IS_PREFIX_LENGTH_ANTI x = x
    val op IS_PREFIX_LENGTH_ANTI =
    DT(((("rich_list",272),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("list",[22,42,45,48,50,90]),("num",[8]),("rich_list",[70,267]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%126%89%126%100%155%147%363$1@$0@@%166%269$1@@%269$0@@@@%161$1@$0@@|@|@"])
  fun op IS_PREFIX_LENGTH x = x
    val op IS_PREFIX_LENGTH =
    DT(((("rich_list",271),
        [("arithmetic",[38,46]),("bool",[14,25,27,36,53,58,63,105,124]),
         ("list",[22,42,45]),("rich_list",[70])]),["DISK_THM"]),
       [read"%126%89%126%100%169%363$1@$0@@%150%269$1@@%269$0@@@|@|@"])
  fun op IS_PREFIX_BUTLAST x = x
    val op IS_PREFIX_BUTLAST =
    DT(((("rich_list",270),
        [("bool",[14,25,36,51,56,63]),("list",[42,186]),
         ("rich_list",[70])]),["DISK_THM"]),
       [read"%106%85%126%100%363%244%191$1@$0@@@%191$1@$0@@|@|@"])
  fun op IS_PREFIX_TRANS x = x
    val op IS_PREFIX_TRANS =
    DT(((("rich_list",269),
        [("bool",
         [14,25,26,36,47,48,51,53,54,56,58,63,93,94,96,101,105,124,145]),
         ("list",[42,45]),("rich_list",[70,266]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%89%126%100%126%105%169%147%363$1@$2@@%363$0@$1@@@%363$0@$2@@|@|@|@"])
  fun op IS_PREFIX_ANTISYM x = x
    val op IS_PREFIX_ANTISYM =
    DT(((("rich_list",268),
        [("bool",[14,25,26,36,47,48,51,53,54,56,58,63,93,94,96,105,124]),
         ("list",[42,45]),("rich_list",[70,266]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%89%126%100%169%147%363$1@$0@@%363$0@$1@@@%161$1@$0@@|@|@"])
  fun op IS_PREFIX_REFL x = x
    val op IS_PREFIX_REFL =
    DT(((("rich_list",267),
        [("bool",[14,25,36,51,53,56,58,63,105,124]),("list",[42]),
         ("rich_list",[70])]),["DISK_THM"]), [read"%126%89%363$0@$0@|@"])
  fun op IS_PREFIX_NIL x = x
    val op IS_PREFIX_NIL =
    DT(((("rich_list",266),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("list",[45,49]),("rich_list",[70]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%126%89%147%363%305@$0@@%155%363$0@%305@@%161$0@%305@@@|@"])
  fun op OR_EL_FOLDR x = x
    val op OR_EL_FOLDR =
    DT(((("rich_list",265),
        [("bool",[14]),("combin",[19]),
         ("rich_list",[13,102])]),["DISK_THM"]),
       [read"%130%53%155%310$0@@%241%361@%211@$0@@|@"])
  fun op OR_EL_FOLDL x = x
    val op OR_EL_FOLDL =
    DT(((("rich_list",264),
        [("bool",[14]),("combin",[19]),
         ("rich_list",[13,103])]),["DISK_THM"]),
       [read"%130%53%155%310$0@@%227%361@%211@$0@@|@"])
  fun op AND_EL_FOLDR x = x
    val op AND_EL_FOLDR =
    DT(((("rich_list",263),
        [("bool",[14]),("combin",[19]),
         ("rich_list",[12,100])]),["DISK_THM"]),
       [read"%130%53%155%174$0@@%241%147@%343@$0@@|@"])
  fun op AND_EL_FOLDL x = x
    val op AND_EL_FOLDL =
    DT(((("rich_list",262),
        [("bool",[14]),("combin",[19]),
         ("rich_list",[12,101])]),["DISK_THM"]),
       [read"%130%53%155%174$0@@%227%147@%343@$0@@|@"])
  fun op DROP_LENGTH_NIL x = x
    val op DROP_LENGTH_NIL =
    DT(((("rich_list",156),
        [("bool",[14,25,36,56]),("list",[22,43]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%126%49%161%198%269$0@@$0@@%305@|@"])
  fun op TAKE_TAKE x = x
    val op TAKE_TAKE =
    DT(((("rich_list",155),
        [("bool",[25,36,53,56,58,63,105,124]),
         ("rich_list",[154])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%138%79%169%150$0@$2@@%161%344$0@%344$2@$1@@@%344$0@$1@@@|@@|@|@"])
  fun op EVERY_BUTLASTN x = x
    val op EVERY_BUTLASTN =
    DT(((("rich_list",153),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,51,52,53,63]),
         ("list",[22,30,257,266,273]),("num",[9]),("prim_rec",[6]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%112%0%126%49%169%205$1@$0@@%138%76%169%150$0@%269$1@@@%205$2@%183$0@$1@@@|@@|@|@"])
  fun op EVERY_LASTN x = x
    val op EVERY_LASTN =
    DT(((("rich_list",152),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,51,52,53,63]),
         ("list",[22,30,257,266,273]),("num",[9]),("prim_rec",[6]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%112%0%126%49%169%205$1@$0@@%138%76%169%150$0@%269$1@@@%205$2@%266$0@$1@@@|@@|@|@"])
  fun op BUTLASTN_MAP x = x
    val op BUTLASTN_MAP =
    DT(((("rich_list",151),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,23,257,262,273]),("num",[9]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%111%24%162%184$2@%286$0@$1@@@%286$0@%183$2@$1@@@|@@|@|@"])
  fun op LASTN_MAP x = x
    val op LASTN_MAP =
    DT(((("rich_list",150),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,23,257,262,273]),("num",[9]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%111%24%162%267$2@%286$0@$1@@@%286$0@%266$2@$1@@@|@@|@|@"])
  fun op LASTN_APPEND1 x = x
    val op LASTN_APPEND1 =
    DT(((("rich_list",149),
        [("arithmetic",[38,58,62,112]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,257,265,273]),("num",[9]),
         ("rich_list",[25,52])]),["DISK_THM"]),
       [read"%126%69%138%79%169%150%269$1@@$0@@%126%67%161%266$1@%175$0@$2@@@%175%266%146$1@%269$2@@@$0@@$2@@|@@|@|@"])
  fun op LASTN_APPEND2 x = x
    val op LASTN_APPEND2 =
    DT(((("rich_list",148),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,257,265,273]),("num",[9]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%138%79%126%69%169%150$1@%269$0@@@%126%67%161%266$2@%175$0@$1@@@%266$2@$1@@|@@|@|@"])
  fun op BUTLASTN_APPEND1 x = x
    val op BUTLASTN_APPEND1 =
    DT(((("rich_list",147),
        [("arithmetic",[38,58,62,112]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,257,265,273]),("num",[9]),
         ("rich_list",[26,52])]),["DISK_THM"]),
       [read"%126%69%138%79%169%150%269$1@@$0@@%126%67%161%183$1@%175$0@$2@@@%183%146$1@%269$2@@@$0@@|@@|@|@"])
  fun op BUTLASTN_1 x = x
    val op BUTLASTN_1 =
    DT(((("rich_list",146),
        [("arithmetic",[17]),("bool",[14,25,53,54,56]),("list",[259,273]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%126%49%169%366%161$0@%305@@@%161%183%309%181%358@@@$0@@%244$0@@@|@"])
  fun op LASTN_1 x = x
    val op LASTN_1 =
    DT(((("rich_list",145),
        [("arithmetic",[17]),("bool",[14,25,53,54,56]),
         ("list",[256,258,273]),("rich_list",[25])]),["DISK_THM"]),
       [read"%126%49%169%366%161$0@%305@@@%161%266%309%181%358@@@$0@@%191%265$0@@%305@@@|@"])
  fun op BUTLASTN_LASTN x = x
    val op BUTLASTN_LASTN =
    DT(((("rich_list",144),
        [("arithmetic",[38,58,62,112]),
         ("bool",[14,25,26,27,36,51,53,56,63]),("list",[22,257,273]),
         ("num",[9]),("rich_list",[25,26])]),["DISK_THM"]),
       [read"%138%76%138%79%126%49%169%147%150$2@$1@@%150$1@%269$0@@@@%161%183$2@%266$1@$0@@@%266%146$1@$2@@%183$2@$0@@@@|@|@|@"])
  fun op LASTN_BUTLASTN x = x
    val op LASTN_BUTLASTN =
    DT(((("rich_list",143),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,52,53,54,56,58,63,104]),
         ("list",[22,257,273]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[25,26,142])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%161%266$2@%183$1@$0@@@%183$1@%266%140$2@$1@@$0@@@@|@|@|@"])
  fun op BUTLASTN_LASTN_NIL x = x
    val op BUTLASTN_LASTN_NIL =
    DT(((("rich_list",142),[("rich_list",[125,129])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%183$1@%266$1@$0@@@%305@@|@|@"])
  fun op LAST_LASTN_LAST x = x
    val op LAST_LASTN_LAST =
    DT(((("rich_list",141),
        [("arithmetic",[58]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,258,273]),("num",[9]),("prim_rec",[6]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%169%149%148@$1@@%151%265%266$1@$0@@@%265$0@@@@|@|@"])
  fun op BUTLASTN_LENGTH_CONS x = x
    val op BUTLASTN_LENGTH_CONS =
    DT(((("rich_list",140),
        [("arithmetic",[95]),("bool",[53,63]),
         ("rich_list",[129,139])]),["DISK_THM"]),
       [read"%126%49%106%85%161%183%269$1@@%191$0@$1@@@%191$0@%305@@|@|@"])
  fun op BUTLASTN_CONS x = x
    val op BUTLASTN_CONS =
    DT(((("rich_list",139),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56,58,63]),
         ("list",[22,256,257,273]),("num",[9]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%106%85%161%183$2@%191$0@$1@@@%191$0@%183$2@$1@@@|@@|@|@"])
  fun op LASTN_LENGTH_APPEND x = x
    val op LASTN_LENGTH_APPEND =
    DT(((("rich_list",138),
        [("bool",[14,25,36,56]),("list",[22,257,260,265,273]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%126%69%126%67%161%266%269$1@@%175$0@$1@@@$1@|@|@"])
  fun op BUTLASTN_LENGTH_APPEND x = x
    val op BUTLASTN_LENGTH_APPEND =
    DT(((("rich_list",137),
        [("arithmetic",[95]),("bool",[53,63]),
         ("rich_list",[52,129,136])]),["DISK_THM"]),
       [read"%126%69%126%67%161%183%269$1@@%175$0@$1@@@$0@|@|@"])
  fun op BUTLASTN_APPEND2 x = x
    val op BUTLASTN_APPEND2 =
    DT(((("rich_list",136),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[22,257,265,273]),("num",[9]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%138%79%126%67%126%69%169%150$2@%269$0@@@%161%183$2@%175$1@$0@@@%175$1@%183$2@$0@@@@|@|@|@"])
  fun op APPEND_TAKE_LASTN x = x
    val op APPEND_TAKE_LASTN =
    DT(((("rich_list",135),
        [("arithmetic",[0,21,22,24,25,46,71,93,172,173,176,180]),
         ("bool",[14,25,26,27,36,43,53,54,56,63,96,101,104,105]),
         ("list",[20,22,195,257,265,273]),("num",[7,9]),("numeral",[3,8]),
         ("prim_rec",[1]),("rich_list",[21,25,52,126,128])]),["DISK_THM"]),
       [read"%138%76%138%79%126%49%169%166%140$2@$1@@%269$0@@@%161%175%344$1@$0@@%266$2@$0@@@$0@@|@|@|@"])
  fun op APPEND_BUTLASTN_LASTN x = x
    val op APPEND_BUTLASTN_LASTN =
    DT(((("rich_list",134),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,36,52,53,56]),
         ("list",[20,22,257,265,273]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[25,26,52])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%175%183$1@$0@@%266$1@$0@@@$0@@|@|@"])
  fun op BUTLASTN_BUTLASTN x = x
    val op BUTLASTN_BUTLASTN =
    DT(((("rich_list",133),
        [("arithmetic",[0,10,22,25,27,38,71,173,177,180]),
         ("bool",[14,25,26,27,36,52,53,54,56,58,63,104]),
         ("list",[22,257,273]),("num",[7,9]),("numeral",[3,5,8]),
         ("prim_rec",[6]),("rich_list",[26])]),["DISK_THM"]),
       [read"%138%76%138%79%126%49%169%150%140$1@$2@@%269$0@@@%161%183$1@%183$2@$0@@@%183%140$1@$2@@$0@@@|@|@|@"])
  fun op LENGTH_BUTLASTN x = x
    val op LENGTH_BUTLASTN =
    DT(((("rich_list",132),
        [("arithmetic",[10,38,62,112]),("bool",[14,25,26,27,36,52,53,56]),
         ("list",[22,257,273]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%166%269%183$1@$0@@@%146%269$0@@$1@@@|@|@"])
  fun op BUTLASTN_FRONT x = x
    val op BUTLASTN_FRONT =
    DT(((("rich_list",131),
        [("bool",[14,25,26,27,36,53,56]),("list",[22,257,259,273]),
         ("num",[9]),("prim_rec",[6,11]),
         ("rich_list",[26,130])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%161%183$1@%244$0@@@%244%183$1@$0@@@@|@|@"])
  fun op BUTLASTN_SUC_FRONT x = x
    val op BUTLASTN_SUC_FRONT =
    DT(((("rich_list",130),
        [("bool",[14,25,26,27,36,53,56]),("list",[22,259,273]),("num",[9]),
         ("prim_rec",[6]),("rich_list",[26])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%161%183%340$1@@$0@@%183$1@%244$0@@@@|@|@"])
  fun op ELL_compute x = x
    val op ELL_compute =
    DT(((("rich_list",1),
        [("arithmetic",[268]),("bool",[26]),
         ("rich_list",[0])]),["DISK_THM"]),
       [read"%147%126%49%151%202%148@$0@@%265$0@@|@@%147%138%79%126%49%151%202%309%181$1@@@$0@@%202%146%309%181$1@@@%309%181%358@@@@%244$0@@@|@|@@%138%79%126%49%151%202%309%182$1@@@$0@@%202%309%181$1@@@%244$0@@@|@|@@@"])
  fun op REPLICATE_compute x = x
    val op REPLICATE_compute =
    DT(((("rich_list",3),
        [("arithmetic",[268]),("bool",[26]),
         ("rich_list",[2])]),["DISK_THM"]),
       [read"%147%106%85%161%314%148@$0@@%305@|@@%147%138%79%106%85%161%314%309%181$1@@@$0@@%191$0@%314%146%309%181$1@@@%309%181%358@@@@$0@@@|@|@@%138%79%106%85%161%314%309%182$1@@@$0@@%191$0@%314%309%181$1@@@$0@@@|@|@@@"])
  fun op COUNT_LIST_AUX_def_compute x = x
    val op COUNT_LIST_AUX_def_compute =
    DT(((("rich_list",19),
        [("arithmetic",[268]),("bool",[26]),
         ("rich_list",[18])]),["DISK_THM"]),
       [read"%147%135%58%163%197%148@$0@@$0@|@@%147%138%79%135%58%163%197%309%181$1@@@$0@@%197%146%309%181$1@@@%309%181%358@@@@%195%146%309%181$1@@@%309%181%358@@@@$0@@@|@|@@%138%79%135%58%163%197%309%182$1@@@$0@@%197%309%181$1@@@%195%309%181$1@@@$0@@@|@|@@@"])
  fun op TAKE x = x
    val op TAKE =
    DT(((("rich_list",21),
        [("arithmetic",[65]),("bool",[25,26,27,51,56,58,63,105,129,147]),
         ("list",[48,192,194]),("num",[7])]),["DISK_THM"]),
       [read"%147%126%49%161%344%148@$0@@%305@|@@%138%79%106%85%126%49%161%344%340$2@@%191$1@$0@@@%191$1@%344$2@$0@@@|@|@|@@"])
  fun op DROP x = x
    val op DROP =
    DT(((("rich_list",22),
        [("arithmetic",[65]),("bool",[25,26,27,58,63,105,129,147]),
         ("list",[193,199]),("num",[7])]),["DISK_THM"]),
       [read"%147%126%49%161%198%148@$0@@$0@|@@%138%79%106%85%126%49%161%198%340$2@@%191$1@$0@@@%198$2@$0@@|@|@|@@"])
  fun op DROP_FUNPOW_TL x = x
    val op DROP_FUNPOW_TL =
    DT(((("rich_list",23),
        [("arithmetic",[15]),("bool",[14,25,36,56]),("list",[46,193]),
         ("num",[9]),("rich_list",[20,22])]),["DISK_THM"]),
       [read"%138%79%126%49%161%198$1@$0@@%249%348@$1@$0@@|@|@"])
  fun op NOT_NULL_SNOC x = x
    val op NOT_NULL_SNOC =
    DT(((("rich_list",24),
        [("bool",[14,25,36,54]),("list",[16,43,256])]),["DISK_THM"]),
       [read"%106%85%126%49%366%308%331$1@$0@@@|@|@"])
  fun op LENGTH_MAP2 x = x
    val op LENGTH_MAP2 =
    DT(((("rich_list",30),
        [("arithmetic",[21]),("bool",[14,25,26,27,36,51,53,56]),
         ("list",[22,37,43]),("num",[7]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%126%67%127%70%169%166%269$1@@%270$0@@@%116%29%147%166%271%302$0@$2@$1@@@%269$2@@@%166%271%302$0@$2@$1@@@%270$1@@@|@@|@|@"])
  fun op LENGTH_EQ x = x
    val op LENGTH_EQ =
    DT(((("rich_list",31),[("bool",[25,56])]),["DISK_THM"]),
       [read"%126%89%126%100%169%161$1@$0@@%166%269$1@@%269$0@@@|@|@"])
  fun op LENGTH_NOT_NULL x = x
    val op LENGTH_NOT_NULL =
    DT(((("rich_list",32),
        [("bool",[14,25,26,27,36,54,63]),("list",[22,41,43]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%126%49%155%149%148@%269$0@@@%366%308$0@@@|@"])
  fun op NOT_NIL_SNOC x = x
    val op NOT_NIL_SNOC =
    DT(((("rich_list",33),
        [("bool",[25,47,54,63]),("list",[272])]),["DISK_THM"]),
       [read"%106%85%126%49%366%161%305@%331$1@$0@@@|@|@"])
  fun op NOT_SNOC_NIL x = x
    val op NOT_SNOC_NIL =
    DT(((("rich_list",34),
        [("bool",[58]),("rich_list",[33])]),["DISK_THM"]),
       [read"%106%85%126%49%366%161%331$1@$0@@%305@@|@|@"])
  fun op SNOC_EQ_LENGTH_EQ x = x
    val op SNOC_EQ_LENGTH_EQ =
    DT(((("rich_list",35),
        [("arithmetic",[64,91]),("list",[257])]),["DISK_THM"]),
       [read"%106%92%126%67%106%93%126%69%169%161%331$3@$2@@%331$1@$0@@@%166%269$2@@%269$0@@@|@|@|@|@"])
  fun op SNOC_REVERSE_CONS x = x
    val op SNOC_REVERSE_CONS =
    DT(((("rich_list",36),[("list",[175,271])]),["DISK_THM"]),
       [read"%106%85%126%49%161%331$1@$0@@%316%191$1@%316$0@@@@|@|@"])
  fun op FOLDR_SNOC x = x
    val op FOLDR_SNOC =
    DT(((("rich_list",37),
        [("bool",[14,25,56]),("list",[28,43,256])]),["DISK_THM"]),
       [read"%115%28%107%19%106%85%126%49%152%234$3@$2@%331$1@$0@@@%234$3@$3$1@$2@@$0@@|@|@|@|@"])
  fun op FOLDR_FOLDL x = x
    val op FOLDR_FOLDL =
    DT(((("rich_list",38),
        [("bool",[14,25,56]),("list",[28,29,43,273,299]),
         ("operator",[0,3,4,5])]),["DISK_THM"]),
       [read"%113%26%106%18%169%303$1@$0@@%126%49%151%233$2@$1@$0@@%222$2@$1@$0@@|@@|@|@"])
  fun op LENGTH_FOLDR x = x
    val op LENGTH_FOLDR =
    DT(((("rich_list",39),
        [("bool",[14,25,35,36,56]),("list",[22,28,43])]),["DISK_THM"]),
       [read"%126%49%166%269$0@@%238%85%66%340$0@||@%148@$0@@|@"])
  fun op LENGTH_FOLDL x = x
    val op LENGTH_FOLDL =
    DT(((("rich_list",40),
        [("bool",[14,25,36,56]),
         ("list",[22,29,257,273,299])]),["DISK_THM"]),
       [read"%126%49%166%269$0@@%231%66%85%340$1@||@%148@$0@@|@"])
  fun op MAP_FOLDR x = x
    val op MAP_FOLDR =
    DT(((("rich_list",41),
        [("bool",[14,25,36,56]),("list",[23,28,43])]),["DISK_THM"]),
       [read"%111%24%126%49%162%286$1@$0@@%237%85%65%192$3$1@@$0@||@%306@$0@@|@|@"])
  fun op MAP_FOLDL x = x
    val op MAP_FOLDL =
    DT(((("rich_list",42),
        [("bool",[14,25,56]),("list",[23,29,262,273,299])]),["DISK_THM"]),
       [read"%111%24%126%49%162%286$1@$0@@%230%65%85%332$3$0@@$1@||@%306@$0@@|@|@"])
  fun op FILTER_FOLDR x = x
    val op FILTER_FOLDR =
    DT(((("rich_list",43),
        [("bool",[14,25,36,56]),("list",[27,28,43])]),["DISK_THM"]),
       [read"%112%0%126%49%161%215$1@$0@@%236%85%64%188$3$1@@%191$1@$0@@$0@||@%305@$0@@|@|@"])
  fun op FILTER_SNOC x = x
    val op FILTER_SNOC =
    DT(((("rich_list",44),
        [("bool",[14,25,26,27,30,36,56,63,64]),
         ("list",[27,43,256])]),["DISK_THM"]),
       [read"%112%0%106%85%126%49%161%215$2@%331$1@$0@@@%188$2$1@@%331$1@%215$2@$0@@@%215$2@$0@@@|@|@|@"])
  fun op FILTER_FOLDL x = x
    val op FILTER_FOLDL =
    DT(((("rich_list",45),
        [("bool",[14,25,36,56]),("list",[27,29,273,299]),
         ("rich_list",[44])]),["DISK_THM"]),
       [read"%112%0%126%49%161%215$1@$0@@%228%64%85%188$3$0@@%331$0@$1@@$1@||@%305@$0@@|@|@"])
  fun op FILTER_COMM x = x
    val op FILTER_COMM =
    DT(((("rich_list",46),
        [("bool",[14,25,26,27,30,56,63,64]),
         ("list",[27,43])]),["DISK_THM"]),
       [read"%112%35%112%36%126%49%161%215$2@%215$1@$0@@@%215$1@%215$2@$0@@@|@|@|@"])
  fun op FILTER_IDEM x = x
    val op FILTER_IDEM =
    DT(((("rich_list",47),
        [("bool",[14,25,26,27,30,36,56,63,64]),
         ("list",[27,43])]),["DISK_THM"]),
       [read"%112%25%126%49%161%215$1@%215$1@$0@@@%215$1@$0@@|@|@"])
  fun op FILTER_MAP x = x
    val op FILTER_MAP =
    DT(((("rich_list",48),
        [("bool",[14,25,26,27,30,36,56,63,64]),("combin",[8]),
         ("list",[23,27,43])]),["DISK_THM"]),
       [read"%112%35%118%37%127%50%161%215$2@%288$1@$0@@@%288$1@%216%364$2@$1@@$0@@@|@|@|@"])
  fun op LENGTH_FILTER_LEQ x = x
    val op LENGTH_FILTER_LEQ =
    DT(((("rich_list",49),
        [("arithmetic",[24,25,27,38,46,71,93,173,176,180]),
         ("bool",[14,25,26,27,30,36,54,63,64,96,101,104,105]),
         ("list",[22,27,43]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%112%0%126%49%150%269%215$1@$0@@@%269$0@@|@|@"])
  fun op FILTER_EQ x = x
    val op FILTER_EQ =
    DT(((("rich_list",50),
        [("arithmetic",[24,25,27,28,41,46,59,71,93,173,177,180]),
         ("bool",
         [14,25,26,27,30,36,37,51,52,53,54,55,56,58,63,64,71,92,96,99,100,
          101,104,105,124]),("list",[17,22,27,43,48,109,120,128]),
         ("num",[7]),("numeral",[3,5,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%112%4%112%5%126%49%155%161%215$2@$0@@%215$1@$0@@@%106%85%169%258$0@%281$1@@@%155$3$0@@$2$0@@@|@@|@|@|@"])
  fun op LENGTH_SEG x = x
    val op LENGTH_SEG =
    DT(((("rich_list",51),
        [("arithmetic",[0,10,22,23,38]),
         ("bool",[14,25,26,27,36,52,53,56,58]),("list",[22,43]),
         ("num",[7,9]),("prim_rec",[1,6]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%79%138%48%126%49%169%150%140$2@$1@@%269$0@@@%166%269%325$2@$1@$0@@@$2@@|@|@|@"])
  fun op APPEND_NIL x = x
    val op APPEND_NIL =
    DT(((("rich_list",52),
        [("bool",[14,25,36,56]),("list",[20,43])]),["DISK_THM"]),
       [read"%147%126%49%161%175$0@%305@@$0@|@@%127%50%162%176%306@$0@@$0@|@@"])
  fun op APPEND_FOLDR x = x
    val op APPEND_FOLDR =
    DT(((("rich_list",53),
        [("bool",[14,25,36,56]),("list",[20,28,43])]),["DISK_THM"]),
       [read"%126%67%126%69%161%175$1@$0@@%236%191@$0@$1@@|@|@"])
  fun op APPEND_FOLDL x = x
    val op APPEND_FOLDL =
    DT(((("rich_list",54),
        [("bool",[14,25,56]),("list",[29,265,273,299]),
         ("rich_list",[52])]),["DISK_THM"]),
       [read"%126%67%126%69%161%175$1@$0@@%228%64%85%331$0@$1@||@$1@$0@@|@|@"])
  fun op FOLDR_APPEND x = x
    val op FOLDR_APPEND =
    DT(((("rich_list",55),
        [("bool",[14,25,36,56]),("list",[28,265,273]),
         ("rich_list",[37,52])]),["DISK_THM"]),
       [read"%115%28%107%19%126%67%126%69%152%234$3@$2@%175$1@$0@@@%234$3@%234$3@$2@$0@@$1@@|@|@|@|@"])
  fun op FOLDL_APPEND x = x
    val op FOLDL_APPEND =
    DT(((("rich_list",56),
        [("bool",[14,25,36,56]),("list",[20,29,43])]),["DISK_THM"]),
       [read"%114%27%106%18%127%68%127%70%151%223$3@$2@%176$1@$0@@@%223$3@%223$3@$2@$1@@$0@@|@|@|@|@"])
  fun op CONS_APPEND x = x
    val op CONS_APPEND =
    DT(((("rich_list",57),
        [("bool",[14,25,36,56,58]),("list",[256,265,273]),
         ("rich_list",[52])]),["DISK_THM"]),
       [read"%106%85%126%49%161%191$1@$0@@%175%191$1@%305@@$0@@|@|@"])
  fun op ASSOC_APPEND x = x
    val op ASSOC_APPEND =
    DT(((("rich_list",58),
        [("bool",[25,36,56]),("list",[56]),
         ("operator",[0])]),["DISK_THM"]), [read"%180%175@"])
  fun op MONOID_APPEND_NIL x = x
    val op MONOID_APPEND_NIL =
    DT(((("rich_list",59),
        [("bool",[25,36,51,56]),("list",[20,56]),("operator",[0,3,4,5]),
         ("rich_list",[52])]),["DISK_THM"]), [read"%304%175@%305@"])
  fun op FLAT_SNOC x = x
    val op FLAT_SNOC =
    DT(((("rich_list",60),
        [("bool",[14,25,36,56]),("list",[20,21,43,56,256]),
         ("rich_list",[52])]),["DISK_THM"]),
       [read"%126%89%131%54%161%218%333$1@$0@@@%175%218$0@@$1@@|@|@"])
  fun op FLAT_FOLDR x = x
    val op FLAT_FOLDR =
    DT(((("rich_list",61),
        [("bool",[14,25,36,56]),("list",[21,28,43])]),["DISK_THM"]),
       [read"%131%54%161%218$0@@%242%175@%305@$0@@|@"])
  fun op FLAT_FOLDL x = x
    val op FLAT_FOLDL =
    DT(((("rich_list",62),
        [("bool",[14,25,36,56]),("list",[21,29,273,299]),
         ("rich_list",[60])]),["DISK_THM"]),
       [read"%131%54%161%218$0@@%229%175@%305@$0@@|@"])
  fun op LENGTH_FLAT x = x
    val op LENGTH_FLAT =
    DT(((("rich_list",63),
        [("bool",[14,25,36,56]),
         ("list",[19,21,22,23,43,57])]),["DISK_THM"]),
       [read"%131%54%166%269%218$0@@@%342%294%269@$0@@@|@"])
  fun op REVERSE_FOLDR x = x
    val op REVERSE_FOLDR =
    DT(((("rich_list",64),
        [("bool",[14,25,36,56]),("list",[28,43,270])]),["DISK_THM"]),
       [read"%126%49%161%316$0@@%236%331@%305@$0@@|@"])
  fun op REVERSE_FOLDL x = x
    val op REVERSE_FOLDL =
    DT(((("rich_list",65),
        [("bool",[14,25,36,56]),
         ("list",[29,270,271,273,299])]),["DISK_THM"]),
       [read"%126%49%161%316$0@@%228%64%85%191$0@$1@||@%305@$0@@|@"])
  fun op ALL_EL_MAP x = x
    val op ALL_EL_MAP =
    DT(((("rich_list",66),
        [("bool",[14,25,36,56,63]),("combin",[5]),
         ("list",[23,30,43])]),["DISK_THM"]),
       [read"%112%0%118%31%127%50%155%205$2@%288$1@$0@@@%206%364$2@$1@@$0@@|@|@|@"])
  fun op MEM_EXISTS x = x
    val op MEM_EXISTS =
    DT(((("rich_list",67),
        [("bool",[14,25,36,54,56,63]),("list",[31,43,120])]),["DISK_THM"]),
       [read"%106%85%126%49%155%258$1@%281$0@@@%209%151$1@@$0@@|@|@"])
  fun op SUM_FOLDR x = x
    val op SUM_FOLDR =
    DT(((("rich_list",68),
        [("bool",[14,25,56]),("list",[19,28,43])]),["DISK_THM"]),
       [read"%135%58%166%342$0@@%243%140@%148@$0@@|@"])
  fun op SUM_FOLDL x = x
    val op SUM_FOLDL =
    DT(((("rich_list",69),
        [("bool",[14,25,56]),("list",[19,29,273,299,300])]),["DISK_THM"]),
       [read"%135%58%166%342$0@@%232%140@%148@$0@@|@"])
  fun op IS_PREFIX x = x
    val op IS_PREFIX =
    DT(((("rich_list",70),[("bool",[58]),("list",[255])]),["DISK_THM"]),
       [read"%147%126%49%155%363%305@$0@@%343@|@@%147%106%85%126%49%155%363%191$1@$0@@%305@@%211@|@|@@%106%92%126%67%106%93%126%69%155%363%191$1@$0@@%191$3@$2@@@%147%151$3@$1@@%363$0@$2@@@|@|@|@|@@@"])
  fun op IS_PREFIX_APPEND x = x
    val op IS_PREFIX_APPEND =
    DT(((("rich_list",71),
        [("bool",[14,25,26,27,36,37,54,58,63]),("list",[20,43,48,50]),
         ("rich_list",[70])]),["DISK_THM"]),
       [read"%126%67%126%69%155%363$0@$1@@%171%49%161$2@%175$1@$0@@|@@|@|@"])
  fun op IS_SUFFIX_APPEND x = x
    val op IS_SUFFIX_APPEND =
    DT(((("rich_list",72),
        [("bool",[14,25,26,27,36,37,54,58,63]),("list",[92,265,269,273]),
         ("rich_list",[24,29,52])]),["DISK_THM"]),
       [read"%126%67%126%69%155%263$1@$0@@%171%49%161$2@%175$0@$1@@|@@|@|@"])
  fun op IS_SUBLIST_APPEND x = x
    val op IS_SUBLIST_APPEND =
    DT(((("rich_list",73),
        [("bool",[14,25,26,27,37,51,54,56,58,63]),("list",[20,43,48,50]),
         ("rich_list",[27,57,71])]),["DISK_THM"]),
       [read"%126%67%126%69%155%262$1@$0@@%171%49%171%64%161$3@%175$1@%175$2@$0@@@|@|@@|@|@"])
  fun op IS_PREFIX_IS_SUBLIST x = x
    val op IS_PREFIX_IS_SUBLIST =
    DT(((("rich_list",74),
        [("bool",[14,25,36,51,52,53,56,63]),("list",[42]),
         ("rich_list",[27,70])]),["DISK_THM"]),
       [read"%126%67%126%69%169%363$0@$1@@%262$1@$0@@|@|@"])
  fun op IS_SUFFIX_IS_SUBLIST x = x
    val op IS_SUFFIX_IS_SUBLIST =
    DT(((("rich_list",75),
        [("bool",[25,56]),("rich_list",[52,72,73])]),["DISK_THM"]),
       [read"%126%67%126%69%169%263$1@$0@@%262$1@$0@@|@|@"])
  fun op IS_PREFIX_REVERSE x = x
    val op IS_PREFIX_REVERSE =
    DT(((("rich_list",76),
        [("bool",[14,25,26,27,36,54,56,63]),
         ("list",[20,42,265,269,270,271,273]),
         ("rich_list",[33,52,70,72])]),["DISK_THM"]),
       [read"%126%67%126%69%155%363%316$0@@%316$1@@@%263$1@$0@@|@|@"])
  fun op IS_SUFFIX_REVERSE x = x
    val op IS_SUFFIX_REVERSE =
    DT(((("rich_list",77),
        [("list",[175]),("rich_list",[76])]),["DISK_THM"]),
       [read"%126%69%126%67%155%263%316$0@@%316$1@@@%363$1@$0@@|@|@"])
  fun op IS_SUFFIX_CONS2_E x = x
    val op IS_SUFFIX_CONS2_E =
    DT(((("rich_list",78),
        [("bool",[25,26,53,54,55,58,63,73,75,105,124]),("list",[20,56]),
         ("rich_list",[72]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%126%83%106%44%126%84%169%263$2@%191$1@$0@@@%263$2@$0@@|@|@|@"])
  fun op IS_SUFFIX_REFL x = x
    val op IS_SUFFIX_REFL =
    DT(((("rich_list",79),
        [("bool",[25,58,63,140]),("list",[20,104]),
         ("rich_list",[72])]),["DISK_THM"]), [read"%126%49%263$0@$0@|@"])
  fun op IS_SUBLIST_REVERSE x = x
    val op IS_SUBLIST_REVERSE =
    DT(((("rich_list",80),
        [("bool",[25,26,56]),("list",[56,174,175]),
         ("rich_list",[73])]),["DISK_THM"]),
       [read"%126%67%126%69%155%262%316$1@@%316$0@@@%262$1@$0@@|@|@"])
  fun op PREFIX_FOLDR x = x
    val op PREFIX_FOLDR =
    DT(((("rich_list",81),
        [("bool",[14,25,26,27,30,36,54,56,63,64]),("combin",[8]),
         ("list",[28,42]),("pair",[8]),
         ("rich_list",[6,10])]),["DISK_THM"]),
       [read"%112%0%126%49%161%312$1@$0@@%236%85%64%188$3$1@@%191$1@$0@@%305@||@%305@$0@@|@|@"])
  fun op PREFIX x = x
    val op PREFIX =
    DT(((("rich_list",82),
        [("bool",[36,51,56]),("list",[28]),
         ("rich_list",[81])]),["DISK_THM"]),
       [read"%147%112%0%161%312$0@%305@@%305@|@@%119%2%107%86%127%50%162%313$2@%192$1@$0@@@%189$2$1@@%192$1@%313$2@$0@@@%306@@|@|@|@@"])
  fun op IS_PREFIX_PREFIX x = x
    val op IS_PREFIX_PREFIX =
    DT(((("rich_list",83),
        [("bool",[14,25,26,27,30,36,51,56,63,64]),("list",[43]),
         ("rich_list",[70,82])]),["DISK_THM"]),
       [read"%112%0%126%49%363%312$1@$0@@$0@|@|@"])
  fun op LENGTH_SCANL x = x
    val op LENGTH_SCANL =
    DT(((("rich_list",84),
        [("bool",[14,25,36,56]),("list",[22,43]),
         ("rich_list",[4])]),["DISK_THM"]),
       [read"%114%27%106%18%127%50%166%269%322$2@$1@$0@@@%340%270$0@@@|@|@|@"])
  fun op LENGTH_SCANR x = x
    val op LENGTH_SCANR =
    DT(((("rich_list",85),
        [("bool",[14,25,36,56]),("list",[22,43]),
         ("rich_list",[5])]),["DISK_THM"]),
       [read"%115%28%107%19%126%49%166%270%324$2@$1@$0@@@%340%269$0@@@|@|@|@"])
  fun op COMM_MONOID_FOLDL x = x
    val op COMM_MONOID_FOLDL =
    DT(((("rich_list",86),
        [("bool",[14,25,36,58,63]),("list",[29,42]),
         ("operator",[0,1,4,5])]),["DISK_THM"]),
       [read"%113%26%169%185$0@@%106%22%169%303$1@$0@@%106%18%126%49%151%222$3@$1@$0@@$3$1@%222$3@$2@$0@@@|@|@@|@@|@"])
  fun op COMM_MONOID_FOLDR x = x
    val op COMM_MONOID_FOLDR =
    DT(((("rich_list",87),
        [("bool",[14,25,36,58,63]),("list",[28,42]),
         ("operator",[0,1,4,5])]),["DISK_THM"]),
       [read"%113%26%169%185$0@@%106%22%169%303$1@$0@@%106%18%126%49%151%233$3@$1@$0@@$3$1@%233$3@$2@$0@@@|@|@@|@@|@"])
  fun op FCOMM_FOLDR_APPEND x = x
    val op FCOMM_FOLDR_APPEND =
    DT(((("rich_list",88),
        [("bool",[14,25,36,56,63]),("list",[20,28,42]),
         ("operator",[2,4])]),["DISK_THM"]),
       [read"%113%39%120%32%169%213$1@$0@@%106%18%169%268$2@$0@@%127%68%127%70%151%239$3@$2@%176$1@$0@@@$4%239$3@$2@$1@@%239$3@$2@$0@@@|@|@@|@@|@|@"])
  fun op FCOMM_FOLDL_APPEND x = x
    val op FCOMM_FOLDL_APPEND =
    DT(((("rich_list",89),
        [("bool",[14,25,36,56,58]),("list",[29,265,273,299]),
         ("operator",[2,3]),("rich_list",[52])]),["DISK_THM"]),
       [read"%114%27%113%39%169%214$1@$0@@%106%18%169%321$1@$0@@%127%68%127%70%151%223$4@$2@%176$1@$0@@@$3%223$4@$2@$1@@%223$4@$2@$0@@@|@|@@|@@|@|@"])
  fun op FOLDL_SINGLE x = x
    val op FOLDL_SINGLE =
    DT(((("rich_list",90),
        [("bool",[25,36,56]),("list",[29])]),["DISK_THM"]),
       [read"%114%27%106%18%107%86%151%223$2@$1@%192$0@%306@@@$2$1@$0@@|@|@|@"])
  fun op FOLDR_SINGLE x = x
    val op FOLDR_SINGLE =
    DT(((("rich_list",91),
        [("bool",[25,36,56]),("list",[28])]),["DISK_THM"]),
       [read"%115%28%107%19%106%85%152%234$2@$1@%191$0@%305@@@$2$0@$1@@|@|@|@"])
  fun op FOLDR_CONS_NIL x = x
    val op FOLDR_CONS_NIL =
    DT(((("rich_list",92),
        [("bool",[14,25,36,56,63]),("list",[28,42])]),["DISK_THM"]),
       [read"%126%49%161%236%191@%305@$0@@$0@|@"])
  fun op FOLDL_SNOC_NIL x = x
    val op FOLDL_SNOC_NIL =
    DT(((("rich_list",93),
        [("bool",[14,25,36,56]),("list",[29,273,299])]),["DISK_THM"]),
       [read"%126%49%161%228%95%85%331$0@$1@||@%305@$0@@$0@|@"])
  fun op FOLDR_FOLDL_REVERSE x = x
    val op FOLDR_FOLDL_REVERSE =
    DT(((("rich_list",94),
        [("bool",[14,25,36,56]),
         ("list",[28,29,43,270,299])]),["DISK_THM"]),
       [read"%115%28%107%19%126%49%152%234$2@$1@$0@@%225%86%97$4$0@$1@||@$1@%316$0@@@|@|@|@"])
  fun op FOLDL_FOLDR_REVERSE x = x
    val op FOLDL_FOLDR_REVERSE =
    DT(((("rich_list",95),
        [("bool",[14,25,36,56]),
         ("list",[28,29,270,271,273,299])]),["DISK_THM"]),
       [read"%114%27%106%18%127%50%151%223$2@$1@$0@@%239%86%97$4$0@$1@||@$1@%317$0@@@|@|@|@"])
  fun op FOLDR_REVERSE x = x
    val op FOLDR_REVERSE =
    DT(((("rich_list",96),
        [("bool",[25,36,56]),("list",[175]),
         ("rich_list",[94])]),["DISK_THM"]),
       [read"%115%28%107%19%126%49%152%234$2@$1@%316$0@@@%225%86%97$4$0@$1@||@$1@$0@@|@|@|@"])
  fun op FOLDL_REVERSE x = x
    val op FOLDL_REVERSE =
    DT(((("rich_list",97),
        [("bool",[25,36,56]),("list",[175]),
         ("rich_list",[95])]),["DISK_THM"]),
       [read"%114%27%106%18%127%50%151%223$2@$1@%317$0@@@%239%86%97$4$0@$1@||@$1@$0@@|@|@|@"])
  fun op FOLDR_MAP x = x
    val op FOLDR_MAP =
    DT(((("rich_list",98),
        [("bool",[14,25,36,56]),("list",[23,28,43])]),["DISK_THM"]),
       [read"%115%28%107%19%122%41%128%51%152%234$3@$2@%289$1@$0@@@%240%87%98$5$3$1@@$0@||@$2@$0@@|@|@|@|@"])
  fun op FOLDL_MAP x = x
    val op FOLDL_MAP =
    DT(((("rich_list",99),
        [("bool",[14,25,36,56]),
         ("list",[23,29,262,273,299])]),["DISK_THM"]),
       [read"%114%27%106%18%123%42%128%51%151%223$3@$2@%290$1@$0@@@%224%85%99$5$1@$3$0@@||@$2@$0@@|@|@|@|@"])
  fun op EVERY_FOLDR x = x
    val op EVERY_FOLDR =
    DT(((("rich_list",100),
        [("bool",[14,25,36,56,63]),("list",[28,30,43])]),["DISK_THM"]),
       [read"%112%0%126%49%155%205$1@$0@@%235%85%63%147$3$1@@$0@||@%343@$0@@|@|@"])
  fun op EVERY_FOLDL x = x
    val op EVERY_FOLDL =
    DT(((("rich_list",101),
        [("bool",[14,25,36,56,63]),
         ("list",[29,30,266,273,299])]),["DISK_THM"]),
       [read"%112%0%126%49%155%205$1@$0@@%226%63%85%147$1@$3$0@@||@%343@$0@@|@|@"])
  fun op EXISTS_FOLDR x = x
    val op EXISTS_FOLDR =
    DT(((("rich_list",102),
        [("bool",[14,25,36,54,56,63]),("list",[28,31,43])]),["DISK_THM"]),
       [read"%112%0%126%49%155%209$1@$0@@%235%85%63%361$3$1@@$0@||@%211@$0@@|@|@"])
  fun op EXISTS_FOLDL x = x
    val op EXISTS_FOLDL =
    DT(((("rich_list",103),
        [("bool",[14,25,54,63,94]),
         ("list",[29,31,267,273,299])]),["DISK_THM"]),
       [read"%112%0%126%49%155%209$1@$0@@%226%63%85%361$1@$3$0@@||@%211@$0@@|@|@"])
  fun op EVERY_FOLDR_MAP x = x
    val op EVERY_FOLDR_MAP =
    DT(((("rich_list",104),
        [("bool",[25,36,56]),("rich_list",[98,100])]),["DISK_THM"]),
       [read"%112%0%126%49%155%205$1@$0@@%241%147@%343@%287$1@$0@@@|@|@"])
  fun op EVERY_FOLDL_MAP x = x
    val op EVERY_FOLDL_MAP =
    DT(((("rich_list",105),
        [("bool",[25,36,56]),("rich_list",[99,101])]),["DISK_THM"]),
       [read"%112%0%126%49%155%205$1@$0@@%227%147@%343@%287$1@$0@@@|@|@"])
  fun op EXISTS_FOLDR_MAP x = x
    val op EXISTS_FOLDR_MAP =
    DT(((("rich_list",106),
        [("bool",[25,36,56]),("rich_list",[98,102])]),["DISK_THM"]),
       [read"%112%0%126%49%155%209$1@$0@@%241%361@%211@%287$1@$0@@@|@|@"])
  fun op EXISTS_FOLDL_MAP x = x
    val op EXISTS_FOLDL_MAP =
    DT(((("rich_list",107),
        [("bool",[25,36,56]),("rich_list",[99,103])]),["DISK_THM"]),
       [read"%112%0%126%49%155%209$1@$0@@%227%361@%211@%287$1@$0@@@|@|@"])
  fun op FOLDR_FILTER x = x
    val op FOLDR_FILTER =
    DT(((("rich_list",108),
        [("bool",[14,25,26,27,30,36,56,63,64]),
         ("list",[27,28,43])]),["DISK_THM"]),
       [read"%115%28%107%19%112%0%126%49%152%234$3@$2@%215$1@$0@@@%234%85%98%187$3$1@@$5$1@$0@@$0@||@$2@$0@@|@|@|@|@"])
  fun op FOLDL_FILTER x = x
    val op FOLDL_FILTER =
    DT(((("rich_list",109),
        [("bool",[14,25,26,27,30,56,63,64]),("list",[27,29,273,299]),
         ("rich_list",[44])]),["DISK_THM"]),
       [read"%114%27%106%18%119%2%127%50%151%223$3@$2@%216$1@$0@@@%223%85%98%186$3$0@@$5$1@$0@@$1@||@$2@$0@@|@|@|@|@"])
  fun op ASSOC_FOLDR_FLAT x = x
    val op ASSOC_FOLDR_FLAT =
    DT(((("rich_list",110),
        [("bool",[14,25,36,56,58,63]),("list",[21,23,28,42]),
         ("operator",[9]),("rich_list",[88])]),["DISK_THM"]),
       [read"%113%26%169%179$0@@%106%18%169%268$1@$0@@%131%54%151%233$2@$1@%218$0@@@%233$2@$1@%291%233$2@$1@@$0@@@|@@|@@|@"])
  fun op ASSOC_FOLDL_FLAT x = x
    val op ASSOC_FOLDL_FLAT =
    DT(((("rich_list",111),
        [("bool",[14,25,36,56,58]),("list",[21,23,262,273,299]),
         ("operator",[9]),("rich_list",[60,89])]),["DISK_THM"]),
       [read"%113%26%169%179$0@@%106%18%169%321$1@$0@@%131%54%151%222$2@$1@%218$0@@@%222$2@$1@%291%222$2@$1@@$0@@@|@@|@@|@"])
  fun op MAP_FLAT x = x
    val op MAP_FLAT =
    DT(((("rich_list",112),
        [("bool",[14,25,36,56]),("list",[21,23,43,58])]),["DISK_THM"]),
       [read"%111%24%131%54%162%286$1@%218$0@@@%219%293%286$1@@$0@@@|@|@"])
  fun op FILTER_FLAT x = x
    val op FILTER_FLAT =
    DT(((("rich_list",113),
        [("bool",[14,25,36,56]),("list",[21,23,27,43,119])]),["DISK_THM"]),
       [read"%112%0%131%54%161%215$1@%218$0@@@%218%292%215$1@@$0@@@|@|@"])
  fun op EXISTS_DISJ x = x
    val op EXISTS_DISJ =
    DT(((("rich_list",114),
        [("bool",[14,25,26,36,52,53,54,56,63,99]),("combin",[1,5]),
         ("list",[31,43]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%112%0%112%6%126%49%155%209%85%361$3$0@@$2$0@@|@$0@@%361%209$2@$0@@%209$1@$0@@@|@|@|@"])
  fun op MEM_FOLDR x = x
    val op MEM_FOLDR =
    DT(((("rich_list",115),
        [("bool",[25,36,56]),("rich_list",[67,102])]),["DISK_THM"]),
       [read"%106%97%126%49%155%258$1@%281$0@@@%235%85%63%361%151$3@$1@@$0@||@%211@$0@@|@|@"])
  fun op MEM_FOLDL x = x
    val op MEM_FOLDL =
    DT(((("rich_list",116),
        [("bool",[25,36,56]),("rich_list",[67,103])]),["DISK_THM"]),
       [read"%106%97%126%49%155%258$1@%281$0@@@%226%63%85%361$1@%151$3@$0@@||@%211@$0@@|@|@"])
  fun op NULL_FOLDR x = x
    val op NULL_FOLDR =
    DT(((("rich_list",117),
        [("bool",[14,25,35,36,54,63]),("list",[16,28,42])]),["DISK_THM"]),
       [read"%126%49%155%308$0@@%235%85%63%211||@%343@$0@@|@"])
  fun op NULL_FOLDL x = x
    val op NULL_FOLDL =
    DT(((("rich_list",118),
        [("bool",[14,25,26,27,35,36,54,58,63]),("list",[16,29,92,273,299]),
         ("rich_list",[33])]),["DISK_THM"]),
       [read"%126%49%155%308$0@@%226%88%62%211||@%343@$0@@|@"])
  fun op MAP_REVERSE x = x
    val op MAP_REVERSE =
    DT(((("rich_list",119),
        [("bool",[14,25,36,56,63]),
         ("list",[23,42,262,270])]),["DISK_THM"]),
       [read"%111%24%126%49%162%286$1@%316$0@@@%317%286$1@$0@@@|@|@"])
  fun op SEG_LENGTH_ID x = x
    val op SEG_LENGTH_ID =
    DT(((("rich_list",120),
        [("bool",[14,25,36,56]),("list",[22,43]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%126%49%161%325%269$0@@%148@$0@@$0@|@"])
  fun op SEG_SUC_CONS x = x
    val op SEG_SUC_CONS =
    DT(((("rich_list",121),
        [("bool",[14,25,36,56]),("num",[9]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%76%138%79%126%49%106%85%161%325$3@%340$2@@%191$0@$1@@@%325$3@$2@$1@@|@|@|@|@"])
  fun op SEG_0_SNOC x = x
    val op SEG_0_SNOC =
    DT(((("rich_list",122),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,36,52,53,56,63]),
         ("list",[22,42,256]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%76%126%49%106%85%169%150$2@%269$1@@@%161%325$2@%148@%331$0@$1@@@%325$2@%148@$1@@@|@|@|@"])
  fun op BUTLASTN_SEG x = x
    val op BUTLASTN_SEG =
    DT(((("rich_list",123),
        [("arithmetic",[10,38,62,112,117]),
         ("bool",[14,25,26,27,36,52,53,56,58]),("list",[22,257,273]),
         ("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[26,120,122])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%183$1@$0@@%325%146%269$0@@$1@@%148@$0@@@|@|@"])
  fun op LASTN_CONS x = x
    val op LASTN_CONS =
    DT(((("rich_list",124),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,36,52,53,56,58]),
         ("list",[22,256,257,273]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%106%85%161%266$2@%191$0@$1@@@%266$2@$1@@|@@|@|@"])
  fun op LENGTH_LASTN x = x
    val op LENGTH_LASTN =
    DT(((("rich_list",125),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,36,52,53,56]),
         ("list",[22,257,273]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%166%269%266$1@$0@@@$1@@|@|@"])
  fun op LASTN_LENGTH_ID x = x
    val op LASTN_LENGTH_ID =
    DT(((("rich_list",126),
        [("bool",[14,25,56]),("list",[22,257,273]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%126%49%161%266%269$0@@$0@@$0@|@"])
  fun op LASTN_LASTN x = x
    val op LASTN_LASTN =
    DT(((("rich_list",127),
        [("arithmetic",[10,38,46]),("bool",[14,25,26,27,52,53,56,63]),
         ("list",[22,257,273]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[25])]),["DISK_THM"]),
       [read"%126%49%138%79%138%76%169%150$0@%269$2@@@%169%150$1@$0@@%161%266$1@%266$0@$2@@@%266$1@$2@@@@|@|@|@"])
  fun op TAKE_SNOC x = x
    val op TAKE_SNOC =
    DT(((("rich_list",128),
        [("arithmetic",[10,38]),("bool",[14,25,26,27,36,52,53,56,63]),
         ("list",[22,42,256]),("num",[7,9]),("prim_rec",[6]),
         ("rich_list",[21])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%106%85%161%344$2@%331$0@$1@@@%344$2@$1@@|@@|@|@"])
  fun op BUTLASTN_LENGTH_NIL x = x
    val op BUTLASTN_LENGTH_NIL =
    DT(((("rich_list",157),
        [("bool",[14,25,36,56]),("list",[22,257,273]),
         ("rich_list",[26])]),["DISK_THM"]),
       [read"%126%49%161%183%269$0@@$0@@%305@|@"])
  fun op DROP_APPEND x = x
    val op DROP_APPEND =
    DT(((("rich_list",158),
        [("arithmetic",[62,112]),("bool",[14,25,36,56]),
         ("list",[20,22,46,104,193]),("num",[9]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%138%79%126%67%126%69%161%198$2@%175$1@$0@@@%175%198$2@$1@@%198%146$2@%269$1@@@$0@@@|@|@|@"])
  fun op DROP_APPEND1 x = x
    val op DROP_APPEND1 =
    DT(((("rich_list",159),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[20,22,43]),("num",[9]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%138%79%126%67%169%150$1@%269$0@@@%126%69%161%198$2@%175$1@$0@@@%175%198$2@$1@@$0@@|@@|@|@"])
  fun op DROP_APPEND2 x = x
    val op DROP_APPEND2 =
    DT(((("rich_list",160),
        [("arithmetic",[38,58,62,112]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[20,22,43]),("num",[9]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%126%67%138%79%169%150%269$1@@$0@@%126%69%161%198$1@%175$2@$0@@@%198%146$1@%269$2@@@$0@@|@@|@|@"])
  fun op DROP_DROP_T x = x
    val op DROP_DROP_T =
    DT(((("rich_list",161),
        [("arithmetic",[26,336]),("bool",[25,36,56,58]),
         ("rich_list",[23])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%161%198$2@%198$1@$0@@@%198%140$2@$1@@$0@@|@|@|@"])
  fun op DROP_DROP x = x
    val op DROP_DROP =
    DT(((("rich_list",162),
        [("arithmetic",[26]),("bool",[25,36,53,56,58,105,124]),
         ("rich_list",[161])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%161%198$2@%198$1@$0@@@%198%140$2@$1@@$0@@@|@|@|@"])
  fun op LASTN_SEG x = x
    val op LASTN_SEG =
    DT(((("rich_list",163),
        [("arithmetic",
         [10,17,24,25,27,38,41,46,58,71,93,112,130,172,173,177,180,269]),
         ("bool",[14,25,26,27,36,43,52,53,54,56,58,63,93,96,101,104,105]),
         ("list",[22,43]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[25,28,120,124,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%266$1@$0@@%325$1@%146%269$0@@$1@@$0@@@|@|@"])
  fun op TAKE_SEG x = x
    val op TAKE_SEG =
    DT(((("rich_list",164),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,43]),("num",[9]),
         ("rich_list",[21,28])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%344$1@$0@@%325$1@%148@$0@@@|@|@"])
  fun op DROP_SEG x = x
    val op DROP_SEG =
    DT(((("rich_list",165),
        [("arithmetic",[38,58,62,112]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,43]),("num",[9]),
         ("rich_list",[22,28,120,121])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%198$1@$0@@%325%146%269$0@@$1@@$1@$0@@@|@|@"])
  fun op DROP_SNOC x = x
    val op DROP_SNOC =
    DT(((("rich_list",166),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,43,256]),("num",[9]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%106%85%161%198$2@%331$0@$1@@@%331$0@%198$2@$1@@@|@@|@|@"])
  fun op APPEND_BUTLASTN_DROP x = x
    val op APPEND_BUTLASTN_DROP =
    DT(((("rich_list",167),
        [("arithmetic",[0,21,22,24,25,27,46,71,93,172,173,176,177,180]),
         ("bool",[14,25,26,27,36,43,51,52,53,54,56,58,63,96,101,104,105]),
         ("list",[20,22,43,48]),("num",[7,9]),("numeral",[3,5,8]),
         ("prim_rec",[1]),
         ("rich_list",[22,26,52,139,156,157])]),["DISK_THM"]),
       [read"%138%76%138%79%126%49%169%166%140$2@$1@@%269$0@@@%161%175%183$2@$0@@%198$1@$0@@@$0@@|@|@|@"])
  fun op SEG_SEG x = x
    val op SEG_SEG =
    DT(((("rich_list",168),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,51,52,53,54,56,58,63,104]),
         ("list",[22,42,48]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%81%138%77%138%82%138%78%126%49%169%147%150%140$4@$3@@%269$0@@@%150%140$2@$1@@$4@@@%161%325$2@$1@%325$4@$3@$0@@@%325$2@%140$3@$1@@$0@@@|@|@|@|@|@"])
  fun op SEG_APPEND1 x = x
    val op SEG_APPEND1 =
    DT(((("rich_list",169),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,51,52,53,54,56,58,63,104]),
         ("list",[20,22,42,48]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%79%138%76%126%67%169%150%140$2@$1@@%269$0@@@%126%69%161%325$3@$2@%175$1@$0@@@%325$3@$2@$1@@|@@|@|@|@"])
  fun op SEG_APPEND2 x = x
    val op SEG_APPEND2 =
    DT(((("rich_list",170),
        [("arithmetic",[38,58,62,112]),
         ("bool",[14,25,26,27,36,51,53,56,63]),("list",[20,22,42]),
         ("num",[9]),("rich_list",[28])]),["DISK_THM"]),
       [read"%126%67%138%76%138%79%126%69%169%147%150%269$3@@$2@@%150$1@%269$0@@@@%161%325$1@$2@%175$3@$0@@@%325$1@%146$2@%269$3@@@$0@@@|@|@|@|@"])
  fun op SEG_TAKE_BUTFISTN x = x
    val op SEG_TAKE_BUTFISTN =
    DT(((("rich_list",171),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,51,52,53,54,56,58,63,104]),
         ("list",[22,42,48]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[21,22,28,164])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%161%325$2@$1@$0@@%344$2@%198$1@$0@@@@|@|@|@"])
  fun op SEG_APPEND x = x
    val op SEG_APPEND =
    DT(((("rich_list",172),
        [("arithmetic",
         [0,22,25,27,38,49,58,59,62,71,106,112,128,130,173,177,180]),
         ("bool",[14,25,26,27,36,48,51,52,53,54,56,58,63,104]),
         ("list",[20,22,42,48,90]),("num",[9]),("numeral",[3,5,8]),
         ("prim_rec",[6,11]),("rich_list",[28,52,121])]),["DISK_THM"]),
       [read"%138%76%126%67%138%79%126%69%169%147%149$3@%269$2@@@%147%150%269$2@@%140$1@$3@@@%150%140$1@$3@@%140%269$2@@%269$0@@@@@@%161%325$1@$3@%175$2@$0@@@%175%325%146%269$2@@$3@@$3@$2@@%325%146%140$1@$3@@%269$2@@@%148@$0@@@@|@|@|@|@"])
  fun op SEG_LENGTH_SNOC x = x
    val op SEG_LENGTH_SNOC =
    DT(((("rich_list",173),
        [("arithmetic",[17]),("bool",[14,25,36,56,63]),
         ("list",[22,42,256]),("rich_list",[28])]),["DISK_THM"]),
       [read"%126%49%106%85%161%325%309%181%358@@@%269$1@@%331$0@$1@@@%191$0@%305@@|@|@"])
  fun op SEG_SNOC x = x
    val op SEG_SNOC =
    DT(((("rich_list",174),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,51,52,53,54,56,58,63,104]),
         ("list",[22,42,48,256]),("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%106%85%161%325$3@$2@%331$0@$1@@@%325$3@$2@$1@@|@@|@|@|@"])
  fun op ELL_SEG x = x
    val op ELL_SEG =
    DT(((("rich_list",175),
        [("arithmetic",[25,62,64,112,117,119,235]),
         ("bool",[14,25,26,27,36,53,56,58]),
         ("list",[17,22,257,258,259,273]),("num",[9]),
         ("prim_rec",[3,6,11]),("rich_list",[0,173,174])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%202$1@$0@@%254%325%309%181%358@@@%311%146%269$0@@$1@@@$0@@@@|@|@"])
  fun op SNOC_FOLDR x = x
    val op SNOC_FOLDR =
    DT(((("rich_list",176),
        [("bool",[14,25,36,56,63]),("list",[28,42,256])]),["DISK_THM"]),
       [read"%106%85%126%49%161%331$1@$0@@%236%191@%191$1@%305@@$0@@|@|@"])
  fun op MEM_FOLDR_MAP x = x
    val op MEM_FOLDR_MAP =
    DT(((("rich_list",177),
        [("bool",[25,36,56]),("rich_list",[98,115])]),["DISK_THM"]),
       [read"%106%85%126%49%155%258$1@%281$0@@@%241%361@%211@%287%151$1@@$0@@@|@|@"])
  fun op MEM_FOLDL_MAP x = x
    val op MEM_FOLDL_MAP =
    DT(((("rich_list",178),
        [("bool",[25,36,56]),("rich_list",[99,116])]),["DISK_THM"]),
       [read"%106%85%126%49%155%258$1@%281$0@@@%227%361@%211@%287%151$1@@$0@@@|@|@"])
  fun op FILTER_FILTER x = x
    val op FILTER_FILTER =
    DT(((("rich_list",179),
        [("bool",[14,25,26,27,30,36,51,56,63,64]),
         ("list",[27,43])]),["DISK_THM"]),
       [read"%112%0%112%6%126%49%161%215$2@%215$1@$0@@@%215%85%147$3$0@@$2$0@@|@$0@@|@|@|@"])
  fun op FCOMM_FOLDR_FLAT x = x
    val op FCOMM_FOLDR_FLAT =
    DT(((("rich_list",180),
        [("bool",[14,25,36,56,63]),("list",[21,23,28,42]),
         ("rich_list",[88])]),["DISK_THM"]),
       [read"%113%39%120%32%169%213$1@$0@@%106%18%169%268$2@$0@@%132%55%151%239$2@$1@%219$0@@@%233$3@$1@%295%239$2@$1@@$0@@@|@@|@@|@|@"])
  fun op FCOMM_FOLDL_FLAT x = x
    val op FCOMM_FOLDL_FLAT =
    DT(((("rich_list",181),
        [("bool",[14,25,36,56]),("list",[21,23,29,262,273,299]),
         ("rich_list",[60,89])]),["DISK_THM"]),
       [read"%114%27%113%39%169%214$1@$0@@%106%18%169%321$1@$0@@%132%55%151%223$3@$1@%219$0@@@%222$2@$1@%295%223$3@$1@@$0@@@|@@|@@|@|@"])
  fun op FOLDR_MAP_REVERSE x = x
    val op FOLDR_MAP_REVERSE =
    DT(((("rich_list",182),
        [("bool",[14,25,36,56,63]),("list",[23,28,42,262,270]),
         ("rich_list",[37])]),["DISK_THM"]),
       [read"%113%26%169%106%8%106%11%106%14%151$3$2@$3$1@$0@@@$3$1@$3$2@$0@@@|@|@|@@%106%18%118%40%127%50%151%233$3@$2@%288$1@%317$0@@@@%233$3@$2@%288$1@$0@@@|@|@|@@|@"])
  fun op FOLDR_FILTER_REVERSE x = x
    val op FOLDR_FILTER_REVERSE =
    DT(((("rich_list",183),
        [("bool",[14,25,26,27,30,36,56,63,64]),("list",[27,28,42,270]),
         ("rich_list",[37,44])]),["DISK_THM"]),
       [read"%113%26%169%106%8%106%11%106%14%151$3$2@$3$1@$0@@@$3$1@$3$2@$0@@@|@|@|@@%106%18%112%0%126%49%151%233$3@$2@%215$1@%316$0@@@@%233$3@$2@%215$1@$0@@@|@|@|@@|@"])
  fun op COMM_ASSOC_FOLDR_REVERSE x = x
    val op COMM_ASSOC_FOLDR_REVERSE =
    DT(((("rich_list",184),
        [("bool",[14,25,36,56,63]),("list",[28,42,270]),("operator",[0,1]),
         ("rich_list",[37])]),["DISK_THM"]),
       [read"%113%26%169%185$0@@%169%179$0@@%106%18%126%49%151%233$2@$1@%316$0@@@%233$2@$1@$0@@|@|@@@|@"])
  fun op COMM_ASSOC_FOLDL_REVERSE x = x
    val op COMM_ASSOC_FOLDL_REVERSE =
    DT(((("rich_list",185),
        [("bool",[14,25,36,56,58]),("list",[29,270,271,273,299]),
         ("operator",[0,1])]),["DISK_THM"]),
       [read"%113%26%169%185$0@@%169%179$0@@%106%18%126%49%151%222$2@$1@%316$0@@@%222$2@$1@$0@@|@|@@@|@"])
  fun op ELL_LAST x = x
    val op ELL_LAST =
    DT(((("rich_list",186),
        [("bool",[14,25,53,54,56,63]),("list",[41,273]),
         ("rich_list",[0])]),["DISK_THM"]),
       [read"%126%49%169%366%308$0@@@%151%202%148@$0@@%265$0@@@|@"])
  fun op ELL_0_SNOC x = x
    val op ELL_0_SNOC =
    DT(((("rich_list",187),
        [("bool",[25,56]),("list",[258]),("rich_list",[0])]),["DISK_THM"]),
       [read"%126%49%106%85%151%202%148@%331$0@$1@@@$0@|@|@"])
  fun op ELL_SNOC x = x
    val op ELL_SNOC =
    DT(((("rich_list",188),
        [("bool",[14,25,26,27,36,53,56,63]),("list",[259]),("num",[9]),
         ("prim_rec",[3,6,7]),("rich_list",[0])]),["DISK_THM"]),
       [read"%138%79%169%149%148@$0@@%106%85%126%49%151%202$2@%331$1@$0@@@%202%311$2@@$0@@|@|@@|@"])
  fun op ELL_SUC_SNOC x = x
    val op ELL_SUC_SNOC =
    DT(((("rich_list",189),
        [("prim_rec",[3,7]),("rich_list",[188])]),["DISK_THM"]),
       [read"%138%79%106%85%126%49%151%202%340$2@@%331$1@$0@@@%202$2@$0@@|@|@|@"])
  fun op ELL_CONS x = x
    val op ELL_CONS =
    DT(((("rich_list",190),
        [("bool",[14,25,26,27,53,56,58]),("list",[22,256,257,273]),
         ("num",[9]),("prim_rec",[6,11]),
         ("rich_list",[187,189])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%106%85%151%202$2@%191$0@$1@@@%202$2@$1@@|@@|@|@"])
  fun op ELL_LENGTH_CONS x = x
    val op ELL_LENGTH_CONS =
    DT(((("rich_list",191),
        [("bool",[14,25,36,56,58]),("list",[22,184,256,257,259,273]),
         ("rich_list",[0])]),["DISK_THM"]),
       [read"%126%49%106%85%151%202%269$1@@%191$0@$1@@@$0@|@|@"])
  fun op ELL_LENGTH_SNOC x = x
    val op ELL_LENGTH_SNOC =
    DT(((("rich_list",192),
        [("bool",[14,25,26,27,36,56,63,64]),("list",[17,22,41,42]),
         ("rich_list",[187,189,191])]),["DISK_THM"]),
       [read"%126%49%106%85%151%202%269$1@@%331$0@$1@@@%186%308$1@@$0@%254$1@@@|@|@"])
  fun op ELL_APPEND2 x = x
    val op ELL_APPEND2 =
    DT(((("rich_list",193),
        [("bool",[14,25,26,27,36,53,56]),("list",[22,257,265,273]),
         ("num",[9]),("prim_rec",[6,11]),
         ("rich_list",[187,189])]),["DISK_THM"]),
       [read"%138%79%126%69%169%149$1@%269$0@@@%126%67%151%202$2@%175$0@$1@@@%202$2@$1@@|@@|@|@"])
  fun op ELL_APPEND1 x = x
    val op ELL_APPEND1 =
    DT(((("rich_list",194),
        [("arithmetic",[38,58,62,112]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,257,265,273]),("num",[9]),
         ("rich_list",[52,189])]),["DISK_THM"]),
       [read"%126%69%138%79%169%150%269$1@@$0@@%126%67%151%202$1@%175$0@$2@@@%202%146$1@%269$2@@@$0@@|@@|@|@"])
  fun op ELL_PRE_LENGTH x = x
    val op ELL_PRE_LENGTH =
    DT(((("rich_list",195),
        [("bool",[14,25,36,53,54,56,63]),("list",[17,22,42]),
         ("prim_rec",[3]),("rich_list",[191])]),["DISK_THM"]),
       [read"%126%49%169%366%161$0@%305@@@%151%202%311%269$0@@@$0@@%254$0@@@|@"])
  fun op EL_PRE_LENGTH x = x
    val op EL_PRE_LENGTH =
    DT(((("rich_list",196),
        [("bool",[14,25,36,53,54,56]),("list",[257,258,264,273]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%126%49%169%366%161$0@%305@@@%151%200%311%269$0@@@$0@@%265$0@@@|@"])
  fun op EL_ELL x = x
    val op EL_ELL =
    DT(((("rich_list",197),
        [("arithmetic",
         [24,25,27,41,46,59,62,66,71,93,112,172,173,180,195,269]),
         ("bool",[14,25,26,27,36,43,52,53,54,56,58,63,96,101,104,105]),
         ("list",[17,18,22,32,42]),("num",[9]),("numeral",[3,8]),
         ("prim_rec",[3,6,11]),("rich_list",[190,191])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%200$1@$0@@%202%311%146%269$0@@$1@@@$0@@@|@|@"])
  fun op EL_LENGTH_APPEND x = x
    val op EL_LENGTH_APPEND =
    DT(((("rich_list",198),
        [("bool",[14,25,36,53,56,63]),
         ("list",[18,20,22,32,42])]),["DISK_THM"]),
       [read"%126%69%126%67%169%366%308$1@@@%151%200%269$0@@%175$0@$1@@@%254$1@@@|@|@"])
  fun op ELL_EL x = x
    val op ELL_EL =
    DT(((("rich_list",199),
        [("arithmetic",
         [17,24,25,27,41,46,59,62,66,71,93,112,172,173,177,180,195,269]),
         ("bool",[14,25,26,27,36,43,52,53,54,56,58,63,93,96,101,104,105]),
         ("list",[22,257,263,264,273]),("num",[9]),("numeral",[3,5,8]),
         ("prim_rec",[3,6,11]),("rich_list",[187,189]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%202$1@$0@@%200%311%146%269$0@@$1@@@$0@@@|@|@"])
  fun op ELL_MAP x = x
    val op ELL_MAP =
    DT(((("rich_list",200),
        [("bool",[14,25,26,27,36,53,56]),("list",[22,257,262,273]),
         ("num",[9]),("prim_rec",[6,11]),
         ("rich_list",[187,189])]),["DISK_THM"]),
       [read"%138%79%126%49%111%24%169%149$2@%269$1@@@%152%203$2@%286$0@$1@@@$0%202$2@$1@@@@|@|@|@"])
  fun op LENGTH_FRONT x = x
    val op LENGTH_FRONT =
    DT(((("rich_list",201),
        [("bool",[14,25,36,53,54,56]),("list",[257,259,273]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%126%49%169%366%161$0@%305@@@%166%269%244$0@@@%311%269$0@@@@|@"])
  fun op DROP_LENGTH_APPEND x = x
    val op DROP_LENGTH_APPEND =
    DT(((("rich_list",202),
        [("bool",[14,25,36,56,63]),("list",[20,22,42]),
         ("rich_list",[22])]),["DISK_THM"]),
       [read"%126%67%126%69%161%198%269$1@@%175$1@$0@@@$0@|@|@"])
  fun op TAKE_APPEND x = x
    val op TAKE_APPEND =
    DT(((("rich_list",203),
        [("arithmetic",[62,112]),("bool",[14,25,36,51,56]),
         ("list",[20,22,46,48,104,192]),("num",[9]),
         ("rich_list",[21])]),["DISK_THM"]),
       [read"%138%79%126%67%126%69%161%344$2@%175$1@$0@@@%175%344$2@$1@@%344%146$2@%269$1@@@$0@@@|@|@|@"])
  fun op TAKE_APPEND1 x = x
    val op TAKE_APPEND1 =
    DT(((("rich_list",204),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,51,53,56,63]),
         ("list",[20,22,42,48]),("num",[9]),
         ("rich_list",[21])]),["DISK_THM"]),
       [read"%138%79%126%67%169%150$1@%269$0@@@%126%69%161%344$2@%175$1@$0@@@%344$2@$1@@|@@|@|@"])
  fun op TAKE_APPEND2 x = x
    val op TAKE_APPEND2 =
    DT(((("rich_list",205),
        [("arithmetic",[38,58,62,112]),
         ("bool",[14,25,26,27,36,51,53,56,63]),("list",[20,22,42,48]),
         ("num",[9]),("rich_list",[21])]),["DISK_THM"]),
       [read"%126%67%138%79%169%150%269$1@@$0@@%126%69%161%344$1@%175$2@$0@@@%175$2@%344%146$1@%269$2@@@$0@@@|@@|@|@"])
  fun op TAKE_LENGTH_APPEND x = x
    val op TAKE_LENGTH_APPEND =
    DT(((("rich_list",206),
        [("bool",[14,25,36,56,63]),("list",[20,22,42]),
         ("rich_list",[21])]),["DISK_THM"]),
       [read"%126%67%126%69%161%344%269$1@@%175$1@$0@@@$1@|@|@"])
  fun op REVERSE_FLAT x = x
    val op REVERSE_FLAT =
    DT(((("rich_list",207),
        [("bool",[14,25,36,56,63]),("list",[21,23,42,174,270]),
         ("rich_list",[60])]),["DISK_THM"]),
       [read"%131%54%161%316%218$0@@@%218%318%292%316@$0@@@@|@"])
  fun op MAP_FILTER x = x
    val op MAP_FILTER =
    DT(((("rich_list",208),
        [("bool",[13,14,25,36,53,56,63,64]),
         ("list",[23,27,42])]),["DISK_THM"]),
       [read"%110%23%112%0%126%49%169%106%85%155$2$3$0@@@$2$0@@|@@%161%285$2@%215$1@$0@@@%215$1@%285$2@$0@@@@|@|@|@"])
  fun op FLAT_REVERSE x = x
    val op FLAT_REVERSE =
    DT(((("rich_list",209),
        [("bool",[14,25,36,56,63]),("list",[21,23,42,174,175,270]),
         ("rich_list",[60])]),["DISK_THM"]),
       [read"%131%54%161%218%318$0@@@%316%218%292%316@$0@@@@|@"])
  fun op FLAT_FLAT x = x
    val op FLAT_FLAT =
    DT(((("rich_list",210),
        [("bool",[14,25,36,56,63]),("list",[21,23,42,84])]),["DISK_THM"]),
       [read"%133%56%161%218%220$0@@@%218%296%218@$0@@@|@"])
  fun op EVERY_REVERSE x = x
    val op EVERY_REVERSE =
    DT(((("rich_list",211),
        [("bool",[14,25,36,41,63]),
         ("list",[30,42,266,270])]),["DISK_THM"]),
       [read"%112%0%126%49%155%205$1@%316$0@@@%205$1@$0@@|@|@"])
  fun op EXISTS_REVERSE x = x
    val op EXISTS_REVERSE =
    DT(((("rich_list",212),
        [("bool",[14,25,36,54,56,63]),
         ("list",[31,42,267,270])]),["DISK_THM"]),
       [read"%112%0%126%49%155%209$1@%316$0@@@%209$1@$0@@|@|@"])
  fun op EVERY_SEG x = x
    val op EVERY_SEG =
    DT(((("rich_list",213),
        [("arithmetic",[0,22,24,25,27,38,58,71,173,177,180]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,73,93,94,96,
          104]),("combin",[19]),("list",[22,30,42]),("num",[9]),
         ("numeral",[3,5,8]),("rich_list",[28]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%112%0%126%49%169%205$1@$0@@%138%76%138%48%169%150%140$1@$0@@%269$2@@@%205$3@%325$1@$0@$2@@@|@|@@|@|@"])
  fun op EVERY_TAKE x = x
    val op EVERY_TAKE =
    DT(((("rich_list",214),
        [("arithmetic",[22]),("bool",[25,63]),
         ("rich_list",[164,213])]),["DISK_THM"]),
       [read"%112%0%126%49%169%205$1@$0@@%138%76%169%150$0@%269$1@@@%205$2@%344$0@$1@@@|@@|@|@"])
  fun op EVERY_DROP x = x
    val op EVERY_DROP =
    DT(((("rich_list",215),
        [("arithmetic",[77,95]),("rich_list",[165,213])]),["DISK_THM"]),
       [read"%112%0%126%49%169%205$1@$0@@%138%76%169%150$0@%269$1@@@%205$2@%198$0@$1@@@|@@|@|@"])
  fun op EXISTS_SEG x = x
    val op EXISTS_SEG =
    DT(((("rich_list",216),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,52,53,54,58,63,104]),("list",[22,31,42]),
         ("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%76%138%48%126%49%169%150%140$2@$1@@%269$0@@@%112%0%169%209$0@%325$3@$2@$1@@@%209$0@$1@@|@@|@|@|@"])
  fun op EXISTS_TAKE_IMP x = x
    val op EXISTS_TAKE_IMP =
    DT(((("rich_list",217),
        [("bool",
         [14,25,26,27,30,36,43,47,48,53,54,56,58,63,64,94,105,124]),
         ("combin",[19]),("list",[31,43,192]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%49%138%76%112%0%169%209$0@%344$1@$2@@@%209$0@$2@@|@|@|@"])
  fun op EXISTS_DROP_IMP x = x
    val op EXISTS_DROP_IMP =
    DT(((("rich_list",218),
        [("bool",
         [14,25,26,27,30,36,43,47,48,53,54,56,58,63,64,94,105,124]),
         ("combin",[19]),("list",[31,43,193]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%49%138%76%112%0%169%209$0@%198$1@$2@@@%209$0@$2@@|@|@|@"])
  fun op EXISTS_TAKE x = x
    val op EXISTS_TAKE =
    DT(((("rich_list",219),
        [("arithmetic",[22]),("bool",[25,63]),
         ("rich_list",[164,216])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%112%0%169%209$0@%344$2@$1@@@%209$0@$1@@|@@|@|@"])
  fun op EXISTS_DROP x = x
    val op EXISTS_DROP =
    DT(((("rich_list",220),
        [("arithmetic",[77,95]),("rich_list",[165,216])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%112%0%169%209$0@%198$2@$1@@@%209$0@$1@@|@@|@|@"])
  fun op EXISTS_LASTN x = x
    val op EXISTS_LASTN =
    DT(((("rich_list",221),
        [("arithmetic",[25,77,95]),("rich_list",[163,216])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%112%0%169%209$0@%266$2@$1@@@%209$0@$1@@|@@|@|@"])
  fun op EXISTS_BUTLASTN x = x
    val op EXISTS_BUTLASTN =
    DT(((("rich_list",222),
        [("arithmetic",[22,117]),("rich_list",[123,216])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%112%0%169%209$0@%183$2@$1@@@%209$0@$1@@|@@|@|@"])
  fun op MEM_SEG x = x
    val op MEM_SEG =
    DT(((("rich_list",223),
        [("arithmetic",[0,22,25,27,38,58,71,173,177,180]),
         ("bool",[14,25,26,27,36,52,53,54,58,63,104]),("list",[22,42,120]),
         ("num",[9]),("numeral",[3,5,8]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%106%85%169%258$0@%281%325$3@$2@$1@@@@%258$0@%281$1@@@|@@|@|@|@"])
  fun op MEM_TAKE_IMP x = x
    val op MEM_TAKE_IMP =
    DT(((("rich_list",224),
        [("bool",[14,25,26,27,30,36,47,48,53,54,58,63,64,94,105,124]),
         ("list",[25,43,120,192]),("pred_set",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%49%138%76%106%85%169%258$0@%281%344$1@$2@@@@%258$0@%281$2@@@|@|@|@"])
  fun op MEM_DROP_IMP x = x
    val op MEM_DROP_IMP =
    DT(((("rich_list",225),
        [("bool",[14,25,26,27,30,36,47,48,53,54,58,63,64,94,105,124]),
         ("list",[25,43,120,193]),("pred_set",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%126%49%138%76%106%85%169%258$0@%281%198$1@$2@@@@%258$0@%281$2@@@|@|@|@"])
  fun op MEM_TAKE x = x
    val op MEM_TAKE =
    DT(((("rich_list",226),[("rich_list",[67,219])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%106%85%169%258$0@%281%344$2@$1@@@@%258$0@%281$1@@@|@@|@|@"])
  fun op MEM_DROP x = x
    val op MEM_DROP =
    DT(((("rich_list",227),[("rich_list",[67,220])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%106%85%169%258$0@%281%198$2@$1@@@@%258$0@%281$1@@@|@@|@|@"])
  fun op MEM_BUTLASTN x = x
    val op MEM_BUTLASTN =
    DT(((("rich_list",228),[("rich_list",[67,222])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%106%85%169%258$0@%281%183$2@$1@@@@%258$0@%281$1@@@|@@|@|@"])
  fun op MEM_LASTN x = x
    val op MEM_LASTN =
    DT(((("rich_list",229),[("rich_list",[67,221])]),["DISK_THM"]),
       [read"%138%76%126%49%169%150$1@%269$0@@@%106%85%169%258$0@%281%266$2@$1@@@@%258$0@%281$1@@@|@@|@|@"])
  fun op ZIP_SNOC x = x
    val op ZIP_SNOC =
    DT(((("rich_list",230),
        [("arithmetic",[21]),("bool",[14,25,26,27,36,51,53,56,63]),
         ("list",[22,42,48,156,256]),("num",[7]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%126%67%127%70%169%166%269$1@@%270$0@@@%106%92%107%94%164%359%144%331$1@$3@@%332$0@$2@@@@%335%141$1@$0@@%359%144$3@$2@@@@|@|@@|@|@"])
  fun op UNZIP_SNOC x = x
    val op UNZIP_SNOC =
    DT(((("rich_list",231),
        [("bool",[14,25,36,56,63]),("list",[42,157,256]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%139%91%136%59%168%353%335$1@$0@@@%144%331%245$1@@%248%353$0@@@@%332%326$1@@%329%353$0@@@@@|@|@"])
  fun op LENGTH_UNZIP_FST x = x
    val op LENGTH_UNZIP_FST =
    DT(((("rich_list",232),
        [("bool",[14,25,36,56,63]),("list",[22,42,157]),("pair",[8]),
         ("rich_list",[14])]),["DISK_THM"]),
       [read"%136%59%166%269%355$0@@@%273$0@@|@"])
  fun op LENGTH_UNZIP_SND x = x
    val op LENGTH_UNZIP_SND =
    DT(((("rich_list",233),
        [("bool",[14,25,36,56,63]),("list",[22,42,157]),("pair",[9]),
         ("rich_list",[15])]),["DISK_THM"]),
       [read"%136%59%166%270%356$0@@@%273$0@@|@"])
  fun op SUM_REVERSE x = x
    val op SUM_REVERSE =
    DT(((("rich_list",234),
        [("arithmetic",[25]),("bool",[14,25,36,56,63]),
         ("list",[19,42,270,300])]),["DISK_THM"]),
       [read"%135%58%166%342%319$0@@@%342$0@@|@"])
  fun op SUM_FLAT x = x
    val op SUM_FLAT =
    DT(((("rich_list",235),
        [("bool",[14,25,36,56,63]),
         ("list",[19,21,23,42,301])]),["DISK_THM"]),
       [read"%134%57%166%342%221$0@@@%342%297%342@$0@@@|@"])
  fun op EL_APPEND1 x = x
    val op EL_APPEND1 =
    DT(((("rich_list",236),
        [("bool",[14,25,26,27,36,53,56,63]),("list",[17,18,20,22,32,42]),
         ("num",[9]),("prim_rec",[6,11])]),["DISK_THM"]),
       [read"%138%79%126%67%126%69%169%149$2@%269$1@@@%151%200$2@%175$1@$0@@@%200$2@$1@@@|@|@|@"])
  fun op EL_APPEND2 x = x
    val op EL_APPEND2 =
    DT(((("rich_list",237),
        [("arithmetic",[38,58,62,112]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[17,18,20,22,32,42]),("num",[9])]),["DISK_THM"]),
       [read"%126%67%138%79%169%150%269$1@@$0@@%126%69%151%200$1@%175$2@$0@@@%200%146$1@%269$2@@@$0@@|@@|@|@"])
  fun op LUPDATE_APPEND2 x = x
    val op LUPDATE_APPEND2 =
    DT(((("rich_list",238),
        [("arithmetic",
         [24,25,27,41,46,59,71,91,93,172,173,176,177,180,200,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,124,
          129,147]),("list",[57,109,329,330]),("numeral",[3,8]),
         ("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%126%67%126%69%138%79%106%85%169%150%269$3@@$1@@%161%284$0@$1@%175$3@$2@@@%175$3@%284$0@%146$1@%269$3@@@$2@@@@|@|@|@|@"])
  fun op LUPDATE_APPEND1 x = x
    val op LUPDATE_APPEND1 =
    DT(((("rich_list",239),
        [("arithmetic",[24,25,27,41,46,59,71,91,93,173,176,177,180]),
         ("bool",
         [25,26,27,30,36,51,52,54,56,58,63,64,96,101,104,105,124,129,147]),
         ("list",[57,109,329,330]),("numeral",[3,8]),
         ("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%126%67%126%69%138%79%106%85%169%149$1@%269$3@@@%161%284$0@$1@%175$3@$2@@@%175%284$0@$1@$3@@$2@@@|@|@|@|@"])
  fun op EL_CONS x = x
    val op EL_CONS =
    DT(((("rich_list",240),
        [("bool",[14,25,26,27,36,53,56]),("list",[17,18,32]),("num",[9]),
         ("prim_rec",[3,6])]),["DISK_THM"]),
       [read"%138%79%169%149%148@$0@@%106%85%126%49%151%200$2@%191$1@$0@@@%200%311$2@@$0@@|@|@@|@"])
  fun op EL_SEG x = x
    val op EL_SEG =
    DT(((("rich_list",241),
        [("arithmetic",[17]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[17,18,22,32,42]),("num",[9]),("prim_rec",[6,11]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%200$1@$0@@%254%325%309%181%358@@@$1@$0@@@@|@|@"])
  fun op EL_MEM x = x
    val op EL_MEM =
    DT(((("rich_list",242),
        [("bool",[14,25,26,27,36,52,53,56,63]),
         ("list",[17,18,22,32,42,120]),("num",[9]),
         ("prim_rec",[6,11])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%258%200$1@$0@@%281$0@@@|@|@"])
  fun op TL_SNOC x = x
    val op TL_SNOC =
    DT(((("rich_list",243),
        [("bool",[14,25,26,27,36,56,63,64]),
         ("list",[18,41,42,256])]),["DISK_THM"]),
       [read"%106%85%126%49%161%347%331$1@$0@@@%188%308$0@@%305@%331$1@%347$0@@@@|@|@"])
  fun op EL_REVERSE_ELL x = x
    val op EL_REVERSE_ELL =
    DT(((("rich_list",244),
        [("bool",[14,25,26,27,36,53,56,63]),
         ("list",[17,18,22,32,257,258,259,271,273]),("num",[9]),
         ("prim_rec",[6,11]),("rich_list",[0])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%200$1@%316$0@@@%202$1@$0@@@|@|@"])
  fun op ELL_LENGTH_APPEND x = x
    val op ELL_LENGTH_APPEND =
    DT(((("rich_list",245),
        [("bool",[14,25,36,53,56,63]),("list",[22,257,259,265,273]),
         ("rich_list",[0,52])]),["DISK_THM"]),
       [read"%126%67%126%69%169%366%308$1@@@%151%202%269$0@@%175$1@$0@@@%265$1@@@|@|@"])
  fun op ELL_MEM x = x
    val op ELL_MEM =
    DT(((("rich_list",246),
        [("bool",[14,25,26,27,36,52,53,56]),("list",[22,257,268,273]),
         ("num",[9]),("prim_rec",[6,11]),
         ("rich_list",[187,189])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%258%202$1@$0@@%281$0@@@|@|@"])
  fun op ELL_REVERSE x = x
    val op ELL_REVERSE =
    DT(((("rich_list",247),
        [("arithmetic",
         [24,25,27,41,46,59,62,64,66,71,93,112,114,172,173,180,269]),
         ("bool",[14,25,26,27,36,43,52,53,54,56,58,63,96,101,104,105]),
         ("list",[22,42,258,259,270]),("num",[9]),("numeral",[3,8]),
         ("prim_rec",[3,6,11]),("rich_list",[0,190,191])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%202$1@%316$0@@@%202%311%146%269$0@@$1@@@$0@@@|@|@"])
  fun op ELL_REVERSE_EL x = x
    val op ELL_REVERSE_EL =
    DT(((("rich_list",248),
        [("bool",[14,25,26,27,36,53,56,63]),
         ("list",[17,18,22,32,42,258,259,270]),("num",[9]),
         ("prim_rec",[6,11]),("rich_list",[0])]),["DISK_THM"]),
       [read"%138%79%126%49%169%149$1@%269$0@@@%151%202$1@%316$0@@@%200$1@$0@@@|@|@"])
  fun op TAKE_BUTLASTN x = x
    val op TAKE_BUTLASTN =
    DT(((("rich_list",249),
        [("arithmetic",[38,58,62,112,117]),
         ("bool",[14,25,26,27,36,53,56,58,63]),("list",[22,42]),
         ("num",[9]),("rich_list",[21,26,139,157])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%344$1@$0@@%183%146%269$0@@$1@@$0@@@|@|@"])
  fun op BUTLASTN_TAKE x = x
    val op BUTLASTN_TAKE =
    DT(((("rich_list",250),
        [("arithmetic",[38,58,62,112,117]),
         ("bool",[14,25,26,27,36,53,56,58]),("list",[22,195,257,273]),
         ("num",[9]),("rich_list",[21,26,128])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%183$1@$0@@%344%146%269$0@@$1@@$0@@@|@|@"])
  fun op LASTN_DROP x = x
    val op LASTN_DROP =
    DT(((("rich_list",251),
        [("arithmetic",[38,58,62,112,117]),
         ("bool",[14,25,26,27,36,53,56,58]),("list",[22,257,273]),
         ("num",[9]),("rich_list",[25,156,166])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%266$1@$0@@%198%146%269$0@@$1@@$0@@@|@|@"])
  fun op DROP_LASTN x = x
    val op DROP_LASTN =
    DT(((("rich_list",252),
        [("arithmetic",[38,58,62,112,117]),
         ("bool",[14,25,26,27,36,53,56,58,63]),("list",[22,42]),
         ("num",[9]),("rich_list",[22,25,124,126])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%198$1@$0@@%266%146%269$0@@$1@@$0@@@|@|@"])
  fun op SEG_LASTN_BUTLASTN x = x
    val op SEG_LASTN_BUTLASTN =
    DT(((("rich_list",253),
        [("arithmetic",
         [24,25,27,46,71,93,114,117,172,173,176,177,180,269]),
         ("bool",[25,36,43,52,53,54,58,63,93,96,101,104,105,107]),
         ("numeral",[3,8]),("rich_list",[125,143,171,249,252]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%161%325$2@$1@$0@@%266$2@%183%146%269$0@@%140$2@$1@@@$0@@@@|@|@|@"])
  fun op DROP_REVERSE x = x
    val op DROP_REVERSE =
    DT(((("rich_list",254),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[22,257,271,273]),("num",[9]),
         ("rich_list",[22,26])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%198$1@%316$0@@@%316%183$1@$0@@@@|@|@"])
  fun op BUTLASTN_REVERSE x = x
    val op BUTLASTN_REVERSE =
    DT(((("rich_list",255),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[22,42,270]),("num",[9]),
         ("rich_list",[22,26])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%183$1@%316$0@@@%316%198$1@$0@@@@|@|@"])
  fun op LASTN_REVERSE x = x
    val op LASTN_REVERSE =
    DT(((("rich_list",256),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,51,53,56,63]),
         ("list",[22,42,269,270]),("num",[9]),
         ("rich_list",[21,25])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%266$1@%316$0@@@%316%344$1@$0@@@@|@|@"])
  fun op TAKE_REVERSE x = x
    val op TAKE_REVERSE =
    DT(((("rich_list",257),
        [("arithmetic",[38,58]),("bool",[14,25,26,27,36,51,53,56,63]),
         ("list",[22,48,257,270,271,273]),("num",[9]),
         ("rich_list",[21,25])]),["DISK_THM"]),
       [read"%138%79%126%49%169%150$1@%269$0@@@%161%344$1@%316$0@@@%316%266$1@$0@@@@|@|@"])
  fun op SEG_REVERSE x = x
    val op SEG_REVERSE =
    DT(((("rich_list",258),
        [("arithmetic",
         [24,25,27,46,71,93,117,128,133,172,173,176,177,180,269]),
         ("bool",[25,36,43,52,53,54,58,63,93,96,101,104,105,107]),
         ("list",[178]),("numeral",[3,8]),
         ("rich_list",[132,171,253,254,257]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150%140$2@$1@@%269$0@@@%161%325$2@$1@%316$0@@@%316%325$2@%146%269$0@@%140$2@$1@@@$0@@@@|@|@|@"])
  fun op LENGTH_REPLICATE x = x
    val op LENGTH_REPLICATE =
    DT(((("rich_list",259),
        [("bool",[14,25,36,56]),("list",[22]),("num",[9]),
         ("rich_list",[2])]),["DISK_THM"]),
       [read"%138%79%106%85%166%269%314$1@$0@@@$1@|@|@"])
  fun op MEM_REPLICATE x = x
    val op MEM_REPLICATE =
    DT(((("rich_list",260),
        [("bool",[14,25,26,27,36,52,53,56]),("list",[120]),("num",[9]),
         ("prim_rec",[6]),("rich_list",[2])]),["DISK_THM"]),
       [read"%138%79%169%149%148@$0@@%106%85%258$0@%281%314$1@$0@@@|@@|@"])
  fun op EVERY_REPLICATE x = x
    val op EVERY_REPLICATE =
    DT(((("rich_list",307),
        [("bool",[14,25,26,27,48,52,53,54,56,63]),("list",[30]),
         ("num",[7,9]),("rich_list",[2]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%112%25%138%79%106%85%155%205$2@%314$1@$0@@@%361%166$1@%148@@$2$0@@@|@|@|@"])
  fun op ALL_DISTINCT_DROP x = x
    val op ALL_DISTINCT_DROP =
    DT(((("rich_list",308),
        [("bool",[14,25,26,27,30,36,51,53,54,58,63,64,105,124]),
         ("list",[43,193,215])]),["DISK_THM"]),
       [read"%126%74%138%79%169%172$1@@%172%198$0@$1@@@|@|@"])
  fun op MAP_SND_FILTER_NEQ x = x
    val op MAP_SND_FILTER_NEQ =
    DT(((("rich_list",309),
        [("bool",[25,26,27,36,51,53,54,58,60,105,106,124]),("combin",[8]),
         ("pair",[9,16,25]),("rich_list",[48])]),["DISK_THM"]),
       [read"%161%301%327@%217%350%86%97%366%151$0@%103@@||@@%75@@@%215%97%366%151%103@$0@@|@%301%327@%75@@@"])
  fun op MEM_SING_APPEND x = x
    val op MEM_SING_APPEND =
    DT(((("rich_list",310),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,95,130,172,173,176,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,56,58,63,93,96,101,104,105,106,107]),
         ("list",[17,22,25,57,109,128,170,196,201,230]),
         ("numeral",[0,3,5,7,8]),("pred_set",[10,33,80]),
         ("rich_list",[236,237,286,290]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%155%126%9%126%15%366%161%16@%175%175$1@%191%11@%305@@@$0@@@|@|@@%366%258%11@%281%16@@@@"])
  fun op EL_LENGTH_APPEND_rwt x = x
    val op EL_LENGTH_APPEND_rwt =
    DT(((("rich_list",311),
        [("bool",[25,53,54,63]),("rich_list",[198]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%169%147%366%308%69@@@%166%79@%269%67@@@@%151%200%79@%175%67@%69@@@%254%69@@@"])
  fun op MAP_FST_funs x = x
    val op MAP_FST_funs =
    DT(((("rich_list",312),
        [("bool",[25,36,53,56,58,105,124]),("list",[64]),
         ("pair",[8,16,25])]),["DISK_THM"]),
       [read"%161%300%349%85%351%98%104$2||@|@@%38@@%300%246@%38@@"])
  fun op TAKE_PRE_LENGTH x = x
    val op TAKE_PRE_LENGTH =
    DT(((("rich_list",313),
        [("arithmetic",[66]),
         ("bool",[14,25,26,27,30,51,53,54,56,58,63,64,105,124,129,147]),
         ("list",[22,43,48,49,90,183,188,192]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%126%74%169%366%161$0@%305@@@%161%344%311%269$0@@@$0@@%244$0@@@|@"])
  fun op DROP_LENGTH_NIL_rwt x = x
    val op DROP_LENGTH_NIL_rwt =
    DT(((("rich_list",314),
        [("bool",[25,53,58,63,105,124]),
         ("rich_list",[156])]),["DISK_THM"]),
       [read"%126%49%138%76%169%166$0@%269$1@@@%161%198$0@$1@@%305@@|@|@"])
  fun op DROP_EL_CONS x = x
    val op DROP_EL_CONS =
    DT(((("rich_list",315),
        [("arithmetic",
         [24,25,26,27,41,46,59,66,71,79,93,128,172,173,177,180,200,269]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129,147]),("list",[17,22,43,48,128,193,199]),
         ("numeral",[0,3,5,6,8]),("prim_rec",[6,7]),("rich_list",[240]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%126%74%138%79%169%149$0@%269$1@@@%161%198$0@$1@@%191%200$0@$1@@%198%140$0@%309%181%358@@@@$1@@@@|@|@"])
  fun op TAKE_EL_SNOC x = x
    val op TAKE_EL_SNOC =
    DT(((("rich_list",316),
        [("arithmetic",
         [24,25,27,41,46,59,63,64,71,93,95,130,172,173,176,177,180]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,124,
          129]),("list",[17,22,48,49,104,128,192,195,197,198,257,260,273]),
         ("numeral",[3,5,7,8]),("prim_rec",[6]),("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%126%74%138%79%169%149$0@%269$1@@@%161%344%140$0@%309%181%358@@@@$1@@%331%200$0@$1@@%344$0@$1@@@@|@|@"])
  fun op REVERSE_DROP x = x
    val op REVERSE_DROP =
    DT(((("rich_list",317),
        [("arithmetic",
         [22,24,25,27,46,62,64,71,91,93,130,147,172,173,176,177,180,195,
          197,269]),
         ("bool",[25,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("list",[22,57,176,193,257,260,273]),("numeral",[3,5,8]),
         ("rich_list",[25,149,159,314]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%126%74%138%79%169%150$0@%269$1@@@%161%316%198$0@$1@@@%316%266%146%269$1@@$0@@$1@@@@|@|@"])
  fun op LENGTH_FILTER_LESS x = x
    val op LENGTH_FILTER_LESS =
    DT(((("rich_list",318),
        [("arithmetic",[37,45]),
         ("bool",[14,25,26,27,30,52,53,54,58,63,64,105,124]),
         ("combin",[8]),("list",[22,27,31,43]),
         ("rich_list",[49])]),["DISK_THM"]),
       [read"%112%0%126%74%169%209%365%366@$1@@$0@@%149%269%215$1@$0@@@%269$0@@@|@|@"])
  fun op EVERY2_APPEND x = x
    val op EVERY2_APPEND =
    DT(((("rich_list",319),
        [("bool",[25,26,27,48,53,54,55,63,99]),("list",[57,71,81,212]),
         ("rich_list",[291]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%155%147%280%7@%67@%70@@%280%7@%71@%72@@@%147%280%7@%175%67@%71@@%176%70@%72@@@%147%166%269%67@@%270%70@@@%166%269%71@@%270%72@@@@@"])
  fun op LIST_REL_APPEND_IMP x = x
    val op LIST_REL_APPEND_IMP =
    DT(((("rich_list",320),
        [("bool",[14,25,26,27,36,51,53,54,55,56,58,63,100,105,124]),
         ("list",[20,22,43,46,139,390]),("num",[7]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%126%95%127%101%126%96%127%102%169%147%280%1@%175$3@$1@@%176$2@$0@@@%166%269$3@@%270$2@@@@%147%280%1@$3@$2@@%280%1@$1@$0@@@|@|@|@|@"])
  fun op EVERY2_APPEND_suff x = x
    val op EVERY2_APPEND_suff =
    DT(((("rich_list",321),
        [("bool",[25,53,54,63,99,100]),("rich_list",[319]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%169%147%280%7@%67@%70@@%280%7@%71@%72@@@%280%7@%175%67@%71@@%176%70@%72@@@"])
  fun op EVERY2_DROP x = x
    val op EVERY2_DROP =
    DT(((("rich_list",322),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,180]),
         ("bool",[25,30,36,43,53,54,55,58,63,96,99,100,101,104,105]),
         ("list",[147,196,200,201,342,390]),("numeral",[3,5,8]),
         ("rich_list",[319]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%7%126%67%127%70%138%79%169%280$3@$2@$1@@%280$3@%198$0@$2@@%199$0@$1@@@|@|@|@|@"])
  fun op EVERY2_TAKE x = x
    val op EVERY2_TAKE =
    DT(((("rich_list",323),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,180]),
         ("bool",[25,30,36,43,53,54,55,58,63,96,99,100,101,104,105]),
         ("list",[196,200,201,213,341]),("numeral",[3,5,8]),
         ("rich_list",[319]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%1%126%95%127%101%138%79%169%280$3@$2@$1@@%280$3@%344$0@$2@@%345$0@$1@@@|@|@|@|@"])
  fun op LIST_REL_APPEND_SING x = x
    val op LIST_REL_APPEND_SING =
    DT(((("rich_list",324),
        [("arithmetic",[91]),("bool",[25,51,53,56,58,63,105,106,124]),
         ("list",[22,56,57,139]),("numeral",[3]),
         ("rich_list",[319,321])]),["DISK_THM"]),
       [read"%155%280%7@%175%67@%191%92@%305@@@%176%70@%192%94@%306@@@@%147%280%7@%67@%70@@%7%92@%94@@@"])
  fun op LIST_REL_GENLIST x = x
    val op LIST_REL_GENLIST =
    DT(((("rich_list",325),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [14,25,26,27,36,43,52,53,54,55,58,63,93,96,99,104,105,107,124]),
         ("list",[139,260,275]),("num",[9]),("numeral",[3,5,8]),
         ("prim_rec",[6]),("rich_list",[324]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%155%280%1@%250%34@%61@@%251%43@%61@@@%138%47%169%149$0@%61@@%1%34$0@@%43$0@@@|@@"])
  fun op ALL_DISTINCT_MEM_ZIP_MAP x = x
    val op ALL_DISTINCT_MEM_ZIP_MAP =
    DT(((("rich_list",326),
        [("bool",[25,26,53,54,55,56,58,63,83,105,106,124]),
         ("list",[60,67,165,170,219]),("pair",[4,5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%24%139%91%126%74%169%172$0@@%155%260$1@%283%359%144$0@%286$2@$0@@@@@@%147%258%245$1@@%281$0@@@%152%326$1@@$2%245$1@@@@@@|@|@|@"])
  fun op REVERSE_ZIP x = x
    val op REVERSE_ZIP =
    DT(((("rich_list",327),
        [("bool",[14,25,26,27,51,53,56,58,63,105,124]),
         ("list",[20,22,43,46,48,55,56,91,104,156,173,174,178]),
         ("num",[7]),("numeral",[3]),("pair",[4]),("prim_rec",[1]),
         ("rich_list",[291])]),["DISK_THM"]),
       [read"%126%67%127%70%169%166%269$1@@%270$0@@@%164%320%359%144$1@$0@@@@%359%144%316$1@@%317$0@@@@@|@|@"])
  fun op EVERY2_REVERSE1 x = x
    val op EVERY2_REVERSE1 =
    DT(((("rich_list",328),
        [("bool",[25,26,51,56,58,63,105,124]),("list",[175,178,212]),
         ("rich_list",[211,327])]),["DISK_THM"]),
       [read"%126%67%127%70%155%280%7@$1@%317$0@@@%280%7@%316$1@@$0@@|@|@"])
  fun op every_count_list x = x
    val op every_count_list =
    DT(((("rich_list",329),
        [("arithmetic",[24,25,27,28,37,41,46,59,71,93,173,180]),
         ("bool",[14,25,26,27,36,51,53,54,58,63,96,101,104,105,124]),
         ("list",[30,72]),("num",[9]),("numeral",[3,5,8]),
         ("prim_rec",[6,7]),("rich_list",[17]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%125%3%138%79%155%208$1@%196$0@@@%138%76%169%149$0@$1@@$2$0@@|@@|@|@"])
  fun op count_list_sub1 x = x
    val op count_list_sub1 =
    DT(((("rich_list",330),
        [("arithmetic",[65]),
         ("bool",[14,25,26,27,51,53,54,56,58,63,105,124]),("list",[48,49]),
         ("num",[7,9]),("rich_list",[17])]),["DISK_THM"]),
       [read"%138%79%169%366%166$0@%148@@@%163%196$0@@%195%148@%299%340@%196%146$0@%309%181%358@@@@@@@@|@"])
  fun op el_map_count x = x
    val op el_map_count =
    DT(((("rich_list",331),
        [("arithmetic",[24,25,27,28,37,41,46,59,71,93,173,180]),
         ("bool",[14,25,26,27,36,53,54,56,58,63,96,101,104,105,124]),
         ("combin",[8,9]),("list",[17,23,66,128]),("num",[9]),
         ("numeral",[3,5,8]),("prim_rec",[6,7]),
         ("rich_list",[17])]),["DISK_THM"]),
       [read"%138%79%124%34%138%76%169%149$2@$0@@%151%200$2@%298$1@%196$0@@@@$1$2@@@|@|@|@"])
  fun op ZIP_COUNT_LIST x = x
    val op ZIP_COUNT_LIST =
    DT(((("rich_list",332),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("list",[109,160,166,276,283]),("pair",[4]),
         ("rich_list",[280,281])]),["DISK_THM"]),
       [read"%169%166%79@%269%67@@@%165%360%145%67@%196%79@@@@%253%79%142%200$0@%67@@$0@|@%269%67@@@@"])
  fun op map_replicate x = x
    val op map_replicate =
    DT(((("rich_list",333),
        [("bool",[14,25,51,56,63]),("list",[23,48]),("num",[9]),
         ("rich_list",[2])]),["DISK_THM"]),
       [read"%111%24%138%79%106%85%162%286$2@%314$1@$0@@@%315$1@$2$0@@@|@|@|@"])
  fun op REPLICATE_NIL x = x
    val op REPLICATE_NIL =
    DT(((("rich_list",334),
        [("arithmetic",[28]),("bool",[25,26,27,54,56,58,63]),("list",[49]),
         ("num",[7]),("rich_list",[2])]),["DISK_THM"]),
       [read"%155%161%314%90@%97@@%305@@%166%90@%148@@"])
  fun op REPLICATE_APPEND x = x
    val op REPLICATE_APPEND =
    DT(((("rich_list",335),
        [("arithmetic",[24,25,26,41,46,59,71,91,93,173,176,180,200]),
         ("bool",[25,30,36,51,54,56,58,63,96,101,104,105,124]),
         ("list",[57,109]),("numeral",[3,8]),
         ("rich_list",[236,237,259,306])]),["DISK_THM"]),
       [read"%161%175%314%79@%8@@%314%76@%8@@@%314%140%79@%76@@%8@@"])
  fun op DROP_REPLICATE x = x
    val op DROP_REPLICATE =
    DT(((("rich_list",336),
        [("arithmetic",[24,25,26,41,46,59,71,93,173,180,199]),
         ("bool",[25,36,51,53,54,56,58,63,96,101,104,105,124]),
         ("list",[109,201]),("numeral",[3,8]),
         ("rich_list",[259,286,306])]),["DISK_THM"]),
       [read"%161%198%79@%314%76@%8@@@%314%146%76@%79@@%8@@"])
  fun op LIST_REL_REPLICATE_same x = x
    val op LIST_REL_REPLICATE_same =
    DT(((("rich_list",337),
        [("arithmetic",[9,24,25,28,41,46,59,71,93,173,180]),
         ("bool",[25,26,27,36,51,53,54,56,58,63,104,105,106,124]),
         ("combin",[12]),("list",[138,276,283]),("numeral",[3,8]),
         ("prim_rec",[6,7]),("rich_list",[305])]),["DISK_THM"]),
       [read"%155%280%1@%314%79@%85@@%315%79@%98@@@%169%170%79@%148@@%1%85@%98@@@"])
  fun op take_drop_partition x = x
    val op take_drop_partition =
    DT(((("rich_list",338),
        [("arithmetic",
         [24,25,27,46,62,64,65,71,93,147,172,173,176,177,180,195,197,269]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129,147]),("list",[20,46,48,49,192,193,194,199]),
         ("num",[7,9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%138%79%138%76%126%49%169%150$1@$2@@%161%175%344$1@$0@@%344%146$2@$1@@%198$1@$0@@@@%344$2@$0@@@|@|@|@"])
  fun op all_distinct_count_list x = x
    val op all_distinct_count_list =
    DT(((("rich_list",339),
        [("bool",[14,25,26,27,37,51,53,54,56,58,63,105,124]),
         ("list",[89,215,402]),("num",[7,9]),("prim_rec",[1]),
         ("rich_list",[17])]),["DISK_THM"]), [read"%138%79%173%196$0@@|@"])
  fun op list_rel_lastn x = x
    val op list_rel_lastn =
    DT(((("rich_list",340),
        [("arithmetic",[24,25,27,46,64,71,93,147,172,173,176,177,180]),
         ("bool",[14,25,30,36,43,52,53,54,58,63,75,96,99,101,104,105,124]),
         ("list",[22,43,139,213,390]),("numeral",[3,5,8]),
         ("rich_list",[25,124,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%30%126%67%127%70%138%79%169%147%150$0@%269$2@@@%280$3@$2@$1@@@%280$3@%266$0@$2@@%267$0@$1@@@|@|@|@|@"])
  fun op list_rel_butlastn x = x
    val op list_rel_butlastn =
    DT(((("rich_list",341),
        [("arithmetic",[24,25,27,46,64,71,93,147,172,173,176,177,180]),
         ("bool",
         [14,25,30,36,43,51,52,53,54,58,63,75,96,99,101,104,105,124]),
         ("list",[22,43,139,213,390]),("numeral",[3,5,8]),
         ("rich_list",[26,139,157]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%30%126%67%127%70%138%79%169%147%150$0@%269$2@@@%280$3@$2@$1@@@%280$3@%183$0@$2@@%184$0@$1@@@|@|@|@|@"])
  fun op COUNT_LIST_compute x = x
    val op COUNT_LIST_compute =
    DT(((("rich_list",342),
        [("bool",[14,25,58,63]),("combin",[19]),
         ("list",[20,56,104,260,275]),("num",[9]),
         ("rich_list",[18,279])]),["DISK_THM"]),
       [read"%138%79%163%196$0@@%197$0@%307@@|@"])
  fun op SPLITP_compute x = x
    val op SPLITP_compute =
    DT(((("rich_list",343),
        [("bool",[14,25,26,27,30,51,53,54,56,58,60,63,64,105,124,129,147]),
         ("list",[20,43,48,56]),("pair",[4,7,8,9]),("rich_list",[6,7]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%157%337@%338%305@@"])
  fun op IS_SUFFIX_compute x = x
    val op IS_SUFFIX_compute =
    DT(((("rich_list",344),
        [("bool",[58]),("rich_list",[76])]),["DISK_THM"]),
       [read"%126%67%126%69%155%263$1@$0@@%363%316$0@@%316$1@@@|@|@"])
  fun op SEG_compute x = x
    val op SEG_compute =
    DT(((("rich_list",345),
        [("arithmetic",[268]),("bool",[26,43,58]),
         ("rich_list",[28])]),["DISK_THM"]),
       [read"%147%138%48%126%49%161%325%148@$1@$0@@%305@|@|@@%147%138%76%106%85%126%49%161%325%309%181$2@@@%148@%191$1@$0@@@%191$1@%325%146%309%181$2@@@%309%181%358@@@@%148@$0@@@|@|@|@@%147%138%76%106%85%126%49%161%325%309%182$2@@@%148@%191$1@$0@@@%191$1@%325%309%181$2@@@%148@$0@@@|@|@|@@%147%138%76%138%48%106%85%126%49%161%325%309%181$3@@@%309%181$2@@@%191$1@$0@@@%325%309%181$3@@@%146%309%181$2@@@%309%181%358@@@@$0@@|@|@|@|@@%147%138%76%138%48%106%85%126%49%161%325%309%182$3@@@%309%181$2@@@%191$1@$0@@@%325%309%182$3@@@%146%309%181$2@@@%309%181%358@@@@$0@@|@|@|@|@@%147%138%76%138%48%106%85%126%49%161%325%309%181$3@@@%309%182$2@@@%191$1@$0@@@%325%309%181$3@@@%309%181$2@@@$0@@|@|@|@|@@%138%76%138%48%106%85%126%49%161%325%309%182$3@@@%309%182$2@@@%191$1@$0@@@%325%309%182$3@@@%309%181$2@@@$0@@|@|@|@|@@@@@@@"])
  fun op BUTLASTN_compute x = x
    val op BUTLASTN_compute =
    DT(((("rich_list",346),
        [("bool",[25,26,27,30,32,56,58,63,64,105,129]),("combin",[19,40]),
         ("rich_list",[250])]),["DISK_THM"]),
       [read"%138%79%126%49%161%183$1@$0@@%274%76%188%150$2@$0@@%344%146$0@$2@@$1@@%212%183@%73@$2@$1@@|@%269$0@@@|@|@"])
  fun op LASTN_compute x = x
    val op LASTN_compute =
    DT(((("rich_list",347),
        [("bool",[25,26,27,30,32,56,58,63,64,105,129]),("combin",[19,40]),
         ("rich_list",[251])]),["DISK_THM"]),
       [read"%138%79%126%49%161%266$1@$0@@%274%76%188%150$2@$0@@%198%146$0@$2@@$1@@%212%266@%73@$2@$1@@|@%269$0@@@|@|@"])
  end
  val _ = DB.bindl "rich_list"
  [("ELL",ELL,DB.Def), ("REPLICATE",REPLICATE,DB.Def),
   ("SCANL",SCANL,DB.Def), ("SCANR",SCANR,DB.Def),
   ("SPLITP",SPLITP,DB.Def), ("SPLITP_AUX_def",SPLITP_AUX_def,DB.Def),
   ("SPLITL_def",SPLITL_def,DB.Def), ("SPLITR_def",SPLITR_def,DB.Def),
   ("PREFIX_DEF",PREFIX_DEF,DB.Def), ("SUFFIX_DEF",SUFFIX_DEF,DB.Def),
   ("AND_EL_DEF",AND_EL_DEF,DB.Def), ("OR_EL_DEF",OR_EL_DEF,DB.Def),
   ("UNZIP_FST_DEF",UNZIP_FST_DEF,DB.Def),
   ("UNZIP_SND_DEF",UNZIP_SND_DEF,DB.Def),
   ("LIST_ELEM_COUNT_DEF",LIST_ELEM_COUNT_DEF,DB.Def),
   ("COUNT_LIST_def",COUNT_LIST_def,DB.Def),
   ("COUNT_LIST_AUX_def",COUNT_LIST_AUX_def,DB.Def),
   ("TL_T_def",TL_T_def,DB.Def), ("LASTN",LASTN,DB.Def),
   ("BUTLASTN",BUTLASTN,DB.Def), ("IS_SUBLIST",IS_SUBLIST,DB.Def),
   ("SEG",SEG,DB.Def), ("IS_SUFFIX",IS_SUFFIX,DB.Def),
   ("EL_REPLICATE",EL_REPLICATE,DB.Thm),
   ("REPLICATE_GENLIST",REPLICATE_GENLIST,DB.Thm),
   ("LIST_TO_SET_EQ_SING",LIST_TO_SET_EQ_SING,DB.Thm),
   ("LIST_ELEM_COUNT_MEM",LIST_ELEM_COUNT_MEM,DB.Thm),
   ("LIST_ELEM_COUNT_THM",LIST_ELEM_COUNT_THM,DB.Thm),
   ("MEM_LAST_FRONT",MEM_LAST_FRONT,DB.Thm),
   ("DROP_CONS_EL",DROP_CONS_EL,DB.Thm), ("MEM_LAST",MEM_LAST,DB.Thm),
   ("EL_FRONT",EL_FRONT,DB.Thm), ("FRONT_APPEND",FRONT_APPEND,DB.Thm),
   ("MEM_FRONT",MEM_FRONT,DB.Thm), ("SPLITP_EVERY",SPLITP_EVERY,DB.Thm),
   ("FOLDL_MAP2",FOLDL_MAP2,DB.Thm), ("APPEND_SNOC1",APPEND_SNOC1,DB.Thm),
   ("APPEND_ASSOC_CONS",APPEND_ASSOC_CONS,DB.Thm),
   ("ZIP_APPEND",ZIP_APPEND,DB.Thm), ("EL_TAKE",EL_TAKE,DB.Thm),
   ("ZIP_TAKE",ZIP_TAKE,DB.Thm), ("ZIP_TAKE_LEQ",ZIP_TAKE_LEQ,DB.Thm),
   ("SNOC_EL_TAKE",SNOC_EL_TAKE,DB.Thm), ("EL_DROP",EL_DROP,DB.Thm),
   ("COUNT_LIST_ADD",COUNT_LIST_ADD,DB.Thm),
   ("COUNT_LIST_COUNT",COUNT_LIST_COUNT,DB.Thm),
   ("COUNT_LIST_SNOC",COUNT_LIST_SNOC,DB.Thm),
   ("MEM_COUNT_LIST",MEM_COUNT_LIST,DB.Thm),
   ("EL_COUNT_LIST",EL_COUNT_LIST,DB.Thm),
   ("LENGTH_COUNT_LIST",LENGTH_COUNT_LIST,DB.Thm),
   ("COUNT_LIST_GENLIST",COUNT_LIST_GENLIST,DB.Thm),
   ("prefixes_is_prefix_total",prefixes_is_prefix_total,DB.Thm),
   ("IS_PREFIX_APPEND3",IS_PREFIX_APPEND3,DB.Thm),
   ("IS_PREFIX_APPENDS",IS_PREFIX_APPENDS,DB.Thm),
   ("IS_PREFIX_APPEND2",IS_PREFIX_APPEND2,DB.Thm),
   ("IS_PREFIX_APPEND1",IS_PREFIX_APPEND1,DB.Thm),
   ("IS_PREFIX_SNOC",IS_PREFIX_SNOC,DB.Thm),
   ("IS_PREFIX_LENGTH_ANTI",IS_PREFIX_LENGTH_ANTI,DB.Thm),
   ("IS_PREFIX_LENGTH",IS_PREFIX_LENGTH,DB.Thm),
   ("IS_PREFIX_BUTLAST",IS_PREFIX_BUTLAST,DB.Thm),
   ("IS_PREFIX_TRANS",IS_PREFIX_TRANS,DB.Thm),
   ("IS_PREFIX_ANTISYM",IS_PREFIX_ANTISYM,DB.Thm),
   ("IS_PREFIX_REFL",IS_PREFIX_REFL,DB.Thm),
   ("IS_PREFIX_NIL",IS_PREFIX_NIL,DB.Thm),
   ("OR_EL_FOLDR",OR_EL_FOLDR,DB.Thm), ("OR_EL_FOLDL",OR_EL_FOLDL,DB.Thm),
   ("AND_EL_FOLDR",AND_EL_FOLDR,DB.Thm),
   ("AND_EL_FOLDL",AND_EL_FOLDL,DB.Thm),
   ("DROP_LENGTH_NIL",DROP_LENGTH_NIL,DB.Thm),
   ("TAKE_TAKE",TAKE_TAKE,DB.Thm),
   ("EVERY_BUTLASTN",EVERY_BUTLASTN,DB.Thm),
   ("EVERY_LASTN",EVERY_LASTN,DB.Thm),
   ("BUTLASTN_MAP",BUTLASTN_MAP,DB.Thm), ("LASTN_MAP",LASTN_MAP,DB.Thm),
   ("LASTN_APPEND1",LASTN_APPEND1,DB.Thm),
   ("LASTN_APPEND2",LASTN_APPEND2,DB.Thm),
   ("BUTLASTN_APPEND1",BUTLASTN_APPEND1,DB.Thm),
   ("BUTLASTN_1",BUTLASTN_1,DB.Thm), ("LASTN_1",LASTN_1,DB.Thm),
   ("BUTLASTN_LASTN",BUTLASTN_LASTN,DB.Thm),
   ("LASTN_BUTLASTN",LASTN_BUTLASTN,DB.Thm),
   ("BUTLASTN_LASTN_NIL",BUTLASTN_LASTN_NIL,DB.Thm),
   ("LAST_LASTN_LAST",LAST_LASTN_LAST,DB.Thm),
   ("BUTLASTN_LENGTH_CONS",BUTLASTN_LENGTH_CONS,DB.Thm),
   ("BUTLASTN_CONS",BUTLASTN_CONS,DB.Thm),
   ("LASTN_LENGTH_APPEND",LASTN_LENGTH_APPEND,DB.Thm),
   ("BUTLASTN_LENGTH_APPEND",BUTLASTN_LENGTH_APPEND,DB.Thm),
   ("BUTLASTN_APPEND2",BUTLASTN_APPEND2,DB.Thm),
   ("APPEND_TAKE_LASTN",APPEND_TAKE_LASTN,DB.Thm),
   ("APPEND_BUTLASTN_LASTN",APPEND_BUTLASTN_LASTN,DB.Thm),
   ("BUTLASTN_BUTLASTN",BUTLASTN_BUTLASTN,DB.Thm),
   ("LENGTH_BUTLASTN",LENGTH_BUTLASTN,DB.Thm),
   ("BUTLASTN_FRONT",BUTLASTN_FRONT,DB.Thm),
   ("BUTLASTN_SUC_FRONT",BUTLASTN_SUC_FRONT,DB.Thm),
   ("ELL_compute",ELL_compute,DB.Thm),
   ("REPLICATE_compute",REPLICATE_compute,DB.Thm),
   ("COUNT_LIST_AUX_def_compute",COUNT_LIST_AUX_def_compute,DB.Thm),
   ("TAKE",TAKE,DB.Thm), ("DROP",DROP,DB.Thm),
   ("DROP_FUNPOW_TL",DROP_FUNPOW_TL,DB.Thm),
   ("NOT_NULL_SNOC",NOT_NULL_SNOC,DB.Thm),
   ("LENGTH_MAP2",LENGTH_MAP2,DB.Thm), ("LENGTH_EQ",LENGTH_EQ,DB.Thm),
   ("LENGTH_NOT_NULL",LENGTH_NOT_NULL,DB.Thm),
   ("NOT_NIL_SNOC",NOT_NIL_SNOC,DB.Thm),
   ("NOT_SNOC_NIL",NOT_SNOC_NIL,DB.Thm),
   ("SNOC_EQ_LENGTH_EQ",SNOC_EQ_LENGTH_EQ,DB.Thm),
   ("SNOC_REVERSE_CONS",SNOC_REVERSE_CONS,DB.Thm),
   ("FOLDR_SNOC",FOLDR_SNOC,DB.Thm), ("FOLDR_FOLDL",FOLDR_FOLDL,DB.Thm),
   ("LENGTH_FOLDR",LENGTH_FOLDR,DB.Thm),
   ("LENGTH_FOLDL",LENGTH_FOLDL,DB.Thm), ("MAP_FOLDR",MAP_FOLDR,DB.Thm),
   ("MAP_FOLDL",MAP_FOLDL,DB.Thm), ("FILTER_FOLDR",FILTER_FOLDR,DB.Thm),
   ("FILTER_SNOC",FILTER_SNOC,DB.Thm),
   ("FILTER_FOLDL",FILTER_FOLDL,DB.Thm),
   ("FILTER_COMM",FILTER_COMM,DB.Thm), ("FILTER_IDEM",FILTER_IDEM,DB.Thm),
   ("FILTER_MAP",FILTER_MAP,DB.Thm),
   ("LENGTH_FILTER_LEQ",LENGTH_FILTER_LEQ,DB.Thm),
   ("FILTER_EQ",FILTER_EQ,DB.Thm), ("LENGTH_SEG",LENGTH_SEG,DB.Thm),
   ("APPEND_NIL",APPEND_NIL,DB.Thm), ("APPEND_FOLDR",APPEND_FOLDR,DB.Thm),
   ("APPEND_FOLDL",APPEND_FOLDL,DB.Thm),
   ("FOLDR_APPEND",FOLDR_APPEND,DB.Thm),
   ("FOLDL_APPEND",FOLDL_APPEND,DB.Thm),
   ("CONS_APPEND",CONS_APPEND,DB.Thm),
   ("ASSOC_APPEND",ASSOC_APPEND,DB.Thm),
   ("MONOID_APPEND_NIL",MONOID_APPEND_NIL,DB.Thm),
   ("FLAT_SNOC",FLAT_SNOC,DB.Thm), ("FLAT_FOLDR",FLAT_FOLDR,DB.Thm),
   ("FLAT_FOLDL",FLAT_FOLDL,DB.Thm), ("LENGTH_FLAT",LENGTH_FLAT,DB.Thm),
   ("REVERSE_FOLDR",REVERSE_FOLDR,DB.Thm),
   ("REVERSE_FOLDL",REVERSE_FOLDL,DB.Thm),
   ("ALL_EL_MAP",ALL_EL_MAP,DB.Thm), ("MEM_EXISTS",MEM_EXISTS,DB.Thm),
   ("SUM_FOLDR",SUM_FOLDR,DB.Thm), ("SUM_FOLDL",SUM_FOLDL,DB.Thm),
   ("IS_PREFIX",IS_PREFIX,DB.Thm),
   ("IS_PREFIX_APPEND",IS_PREFIX_APPEND,DB.Thm),
   ("IS_SUFFIX_APPEND",IS_SUFFIX_APPEND,DB.Thm),
   ("IS_SUBLIST_APPEND",IS_SUBLIST_APPEND,DB.Thm),
   ("IS_PREFIX_IS_SUBLIST",IS_PREFIX_IS_SUBLIST,DB.Thm),
   ("IS_SUFFIX_IS_SUBLIST",IS_SUFFIX_IS_SUBLIST,DB.Thm),
   ("IS_PREFIX_REVERSE",IS_PREFIX_REVERSE,DB.Thm),
   ("IS_SUFFIX_REVERSE",IS_SUFFIX_REVERSE,DB.Thm),
   ("IS_SUFFIX_CONS2_E",IS_SUFFIX_CONS2_E,DB.Thm),
   ("IS_SUFFIX_REFL",IS_SUFFIX_REFL,DB.Thm),
   ("IS_SUBLIST_REVERSE",IS_SUBLIST_REVERSE,DB.Thm),
   ("PREFIX_FOLDR",PREFIX_FOLDR,DB.Thm), ("PREFIX",PREFIX,DB.Thm),
   ("IS_PREFIX_PREFIX",IS_PREFIX_PREFIX,DB.Thm),
   ("LENGTH_SCANL",LENGTH_SCANL,DB.Thm),
   ("LENGTH_SCANR",LENGTH_SCANR,DB.Thm),
   ("COMM_MONOID_FOLDL",COMM_MONOID_FOLDL,DB.Thm),
   ("COMM_MONOID_FOLDR",COMM_MONOID_FOLDR,DB.Thm),
   ("FCOMM_FOLDR_APPEND",FCOMM_FOLDR_APPEND,DB.Thm),
   ("FCOMM_FOLDL_APPEND",FCOMM_FOLDL_APPEND,DB.Thm),
   ("FOLDL_SINGLE",FOLDL_SINGLE,DB.Thm),
   ("FOLDR_SINGLE",FOLDR_SINGLE,DB.Thm),
   ("FOLDR_CONS_NIL",FOLDR_CONS_NIL,DB.Thm),
   ("FOLDL_SNOC_NIL",FOLDL_SNOC_NIL,DB.Thm),
   ("FOLDR_FOLDL_REVERSE",FOLDR_FOLDL_REVERSE,DB.Thm),
   ("FOLDL_FOLDR_REVERSE",FOLDL_FOLDR_REVERSE,DB.Thm),
   ("FOLDR_REVERSE",FOLDR_REVERSE,DB.Thm),
   ("FOLDL_REVERSE",FOLDL_REVERSE,DB.Thm), ("FOLDR_MAP",FOLDR_MAP,DB.Thm),
   ("FOLDL_MAP",FOLDL_MAP,DB.Thm), ("EVERY_FOLDR",EVERY_FOLDR,DB.Thm),
   ("EVERY_FOLDL",EVERY_FOLDL,DB.Thm),
   ("EXISTS_FOLDR",EXISTS_FOLDR,DB.Thm),
   ("EXISTS_FOLDL",EXISTS_FOLDL,DB.Thm),
   ("EVERY_FOLDR_MAP",EVERY_FOLDR_MAP,DB.Thm),
   ("EVERY_FOLDL_MAP",EVERY_FOLDL_MAP,DB.Thm),
   ("EXISTS_FOLDR_MAP",EXISTS_FOLDR_MAP,DB.Thm),
   ("EXISTS_FOLDL_MAP",EXISTS_FOLDL_MAP,DB.Thm),
   ("FOLDR_FILTER",FOLDR_FILTER,DB.Thm),
   ("FOLDL_FILTER",FOLDL_FILTER,DB.Thm),
   ("ASSOC_FOLDR_FLAT",ASSOC_FOLDR_FLAT,DB.Thm),
   ("ASSOC_FOLDL_FLAT",ASSOC_FOLDL_FLAT,DB.Thm),
   ("MAP_FLAT",MAP_FLAT,DB.Thm), ("FILTER_FLAT",FILTER_FLAT,DB.Thm),
   ("EXISTS_DISJ",EXISTS_DISJ,DB.Thm), ("MEM_FOLDR",MEM_FOLDR,DB.Thm),
   ("MEM_FOLDL",MEM_FOLDL,DB.Thm), ("NULL_FOLDR",NULL_FOLDR,DB.Thm),
   ("NULL_FOLDL",NULL_FOLDL,DB.Thm), ("MAP_REVERSE",MAP_REVERSE,DB.Thm),
   ("SEG_LENGTH_ID",SEG_LENGTH_ID,DB.Thm),
   ("SEG_SUC_CONS",SEG_SUC_CONS,DB.Thm), ("SEG_0_SNOC",SEG_0_SNOC,DB.Thm),
   ("BUTLASTN_SEG",BUTLASTN_SEG,DB.Thm), ("LASTN_CONS",LASTN_CONS,DB.Thm),
   ("LENGTH_LASTN",LENGTH_LASTN,DB.Thm),
   ("LASTN_LENGTH_ID",LASTN_LENGTH_ID,DB.Thm),
   ("LASTN_LASTN",LASTN_LASTN,DB.Thm), ("TAKE_SNOC",TAKE_SNOC,DB.Thm),
   ("BUTLASTN_LENGTH_NIL",BUTLASTN_LENGTH_NIL,DB.Thm),
   ("DROP_APPEND",DROP_APPEND,DB.Thm),
   ("DROP_APPEND1",DROP_APPEND1,DB.Thm),
   ("DROP_APPEND2",DROP_APPEND2,DB.Thm),
   ("DROP_DROP_T",DROP_DROP_T,DB.Thm), ("DROP_DROP",DROP_DROP,DB.Thm),
   ("LASTN_SEG",LASTN_SEG,DB.Thm), ("TAKE_SEG",TAKE_SEG,DB.Thm),
   ("DROP_SEG",DROP_SEG,DB.Thm), ("DROP_SNOC",DROP_SNOC,DB.Thm),
   ("APPEND_BUTLASTN_DROP",APPEND_BUTLASTN_DROP,DB.Thm),
   ("SEG_SEG",SEG_SEG,DB.Thm), ("SEG_APPEND1",SEG_APPEND1,DB.Thm),
   ("SEG_APPEND2",SEG_APPEND2,DB.Thm),
   ("SEG_TAKE_BUTFISTN",SEG_TAKE_BUTFISTN,DB.Thm),
   ("SEG_APPEND",SEG_APPEND,DB.Thm),
   ("SEG_LENGTH_SNOC",SEG_LENGTH_SNOC,DB.Thm),
   ("SEG_SNOC",SEG_SNOC,DB.Thm), ("ELL_SEG",ELL_SEG,DB.Thm),
   ("SNOC_FOLDR",SNOC_FOLDR,DB.Thm),
   ("MEM_FOLDR_MAP",MEM_FOLDR_MAP,DB.Thm),
   ("MEM_FOLDL_MAP",MEM_FOLDL_MAP,DB.Thm),
   ("FILTER_FILTER",FILTER_FILTER,DB.Thm),
   ("FCOMM_FOLDR_FLAT",FCOMM_FOLDR_FLAT,DB.Thm),
   ("FCOMM_FOLDL_FLAT",FCOMM_FOLDL_FLAT,DB.Thm),
   ("FOLDR_MAP_REVERSE",FOLDR_MAP_REVERSE,DB.Thm),
   ("FOLDR_FILTER_REVERSE",FOLDR_FILTER_REVERSE,DB.Thm),
   ("COMM_ASSOC_FOLDR_REVERSE",COMM_ASSOC_FOLDR_REVERSE,DB.Thm),
   ("COMM_ASSOC_FOLDL_REVERSE",COMM_ASSOC_FOLDL_REVERSE,DB.Thm),
   ("ELL_LAST",ELL_LAST,DB.Thm), ("ELL_0_SNOC",ELL_0_SNOC,DB.Thm),
   ("ELL_SNOC",ELL_SNOC,DB.Thm), ("ELL_SUC_SNOC",ELL_SUC_SNOC,DB.Thm),
   ("ELL_CONS",ELL_CONS,DB.Thm),
   ("ELL_LENGTH_CONS",ELL_LENGTH_CONS,DB.Thm),
   ("ELL_LENGTH_SNOC",ELL_LENGTH_SNOC,DB.Thm),
   ("ELL_APPEND2",ELL_APPEND2,DB.Thm), ("ELL_APPEND1",ELL_APPEND1,DB.Thm),
   ("ELL_PRE_LENGTH",ELL_PRE_LENGTH,DB.Thm),
   ("EL_PRE_LENGTH",EL_PRE_LENGTH,DB.Thm), ("EL_ELL",EL_ELL,DB.Thm),
   ("EL_LENGTH_APPEND",EL_LENGTH_APPEND,DB.Thm), ("ELL_EL",ELL_EL,DB.Thm),
   ("ELL_MAP",ELL_MAP,DB.Thm), ("LENGTH_FRONT",LENGTH_FRONT,DB.Thm),
   ("DROP_LENGTH_APPEND",DROP_LENGTH_APPEND,DB.Thm),
   ("TAKE_APPEND",TAKE_APPEND,DB.Thm),
   ("TAKE_APPEND1",TAKE_APPEND1,DB.Thm),
   ("TAKE_APPEND2",TAKE_APPEND2,DB.Thm),
   ("TAKE_LENGTH_APPEND",TAKE_LENGTH_APPEND,DB.Thm),
   ("REVERSE_FLAT",REVERSE_FLAT,DB.Thm), ("MAP_FILTER",MAP_FILTER,DB.Thm),
   ("FLAT_REVERSE",FLAT_REVERSE,DB.Thm), ("FLAT_FLAT",FLAT_FLAT,DB.Thm),
   ("EVERY_REVERSE",EVERY_REVERSE,DB.Thm),
   ("EXISTS_REVERSE",EXISTS_REVERSE,DB.Thm),
   ("EVERY_SEG",EVERY_SEG,DB.Thm), ("EVERY_TAKE",EVERY_TAKE,DB.Thm),
   ("EVERY_DROP",EVERY_DROP,DB.Thm), ("EXISTS_SEG",EXISTS_SEG,DB.Thm),
   ("EXISTS_TAKE_IMP",EXISTS_TAKE_IMP,DB.Thm),
   ("EXISTS_DROP_IMP",EXISTS_DROP_IMP,DB.Thm),
   ("EXISTS_TAKE",EXISTS_TAKE,DB.Thm), ("EXISTS_DROP",EXISTS_DROP,DB.Thm),
   ("EXISTS_LASTN",EXISTS_LASTN,DB.Thm),
   ("EXISTS_BUTLASTN",EXISTS_BUTLASTN,DB.Thm), ("MEM_SEG",MEM_SEG,DB.Thm),
   ("MEM_TAKE_IMP",MEM_TAKE_IMP,DB.Thm),
   ("MEM_DROP_IMP",MEM_DROP_IMP,DB.Thm), ("MEM_TAKE",MEM_TAKE,DB.Thm),
   ("MEM_DROP",MEM_DROP,DB.Thm), ("MEM_BUTLASTN",MEM_BUTLASTN,DB.Thm),
   ("MEM_LASTN",MEM_LASTN,DB.Thm), ("ZIP_SNOC",ZIP_SNOC,DB.Thm),
   ("UNZIP_SNOC",UNZIP_SNOC,DB.Thm),
   ("LENGTH_UNZIP_FST",LENGTH_UNZIP_FST,DB.Thm),
   ("LENGTH_UNZIP_SND",LENGTH_UNZIP_SND,DB.Thm),
   ("SUM_REVERSE",SUM_REVERSE,DB.Thm), ("SUM_FLAT",SUM_FLAT,DB.Thm),
   ("EL_APPEND1",EL_APPEND1,DB.Thm), ("EL_APPEND2",EL_APPEND2,DB.Thm),
   ("LUPDATE_APPEND2",LUPDATE_APPEND2,DB.Thm),
   ("LUPDATE_APPEND1",LUPDATE_APPEND1,DB.Thm), ("EL_CONS",EL_CONS,DB.Thm),
   ("EL_SEG",EL_SEG,DB.Thm), ("EL_MEM",EL_MEM,DB.Thm),
   ("TL_SNOC",TL_SNOC,DB.Thm), ("EL_REVERSE_ELL",EL_REVERSE_ELL,DB.Thm),
   ("ELL_LENGTH_APPEND",ELL_LENGTH_APPEND,DB.Thm),
   ("ELL_MEM",ELL_MEM,DB.Thm), ("ELL_REVERSE",ELL_REVERSE,DB.Thm),
   ("ELL_REVERSE_EL",ELL_REVERSE_EL,DB.Thm),
   ("TAKE_BUTLASTN",TAKE_BUTLASTN,DB.Thm),
   ("BUTLASTN_TAKE",BUTLASTN_TAKE,DB.Thm),
   ("LASTN_DROP",LASTN_DROP,DB.Thm), ("DROP_LASTN",DROP_LASTN,DB.Thm),
   ("SEG_LASTN_BUTLASTN",SEG_LASTN_BUTLASTN,DB.Thm),
   ("DROP_REVERSE",DROP_REVERSE,DB.Thm),
   ("BUTLASTN_REVERSE",BUTLASTN_REVERSE,DB.Thm),
   ("LASTN_REVERSE",LASTN_REVERSE,DB.Thm),
   ("TAKE_REVERSE",TAKE_REVERSE,DB.Thm),
   ("SEG_REVERSE",SEG_REVERSE,DB.Thm),
   ("LENGTH_REPLICATE",LENGTH_REPLICATE,DB.Thm),
   ("MEM_REPLICATE",MEM_REPLICATE,DB.Thm),
   ("EVERY_REPLICATE",EVERY_REPLICATE,DB.Thm),
   ("ALL_DISTINCT_DROP",ALL_DISTINCT_DROP,DB.Thm),
   ("MAP_SND_FILTER_NEQ",MAP_SND_FILTER_NEQ,DB.Thm),
   ("MEM_SING_APPEND",MEM_SING_APPEND,DB.Thm),
   ("EL_LENGTH_APPEND_rwt",EL_LENGTH_APPEND_rwt,DB.Thm),
   ("MAP_FST_funs",MAP_FST_funs,DB.Thm),
   ("TAKE_PRE_LENGTH",TAKE_PRE_LENGTH,DB.Thm),
   ("DROP_LENGTH_NIL_rwt",DROP_LENGTH_NIL_rwt,DB.Thm),
   ("DROP_EL_CONS",DROP_EL_CONS,DB.Thm),
   ("TAKE_EL_SNOC",TAKE_EL_SNOC,DB.Thm),
   ("REVERSE_DROP",REVERSE_DROP,DB.Thm),
   ("LENGTH_FILTER_LESS",LENGTH_FILTER_LESS,DB.Thm),
   ("EVERY2_APPEND",EVERY2_APPEND,DB.Thm),
   ("LIST_REL_APPEND_IMP",LIST_REL_APPEND_IMP,DB.Thm),
   ("EVERY2_APPEND_suff",EVERY2_APPEND_suff,DB.Thm),
   ("EVERY2_DROP",EVERY2_DROP,DB.Thm), ("EVERY2_TAKE",EVERY2_TAKE,DB.Thm),
   ("LIST_REL_APPEND_SING",LIST_REL_APPEND_SING,DB.Thm),
   ("LIST_REL_GENLIST",LIST_REL_GENLIST,DB.Thm),
   ("ALL_DISTINCT_MEM_ZIP_MAP",ALL_DISTINCT_MEM_ZIP_MAP,DB.Thm),
   ("REVERSE_ZIP",REVERSE_ZIP,DB.Thm),
   ("EVERY2_REVERSE1",EVERY2_REVERSE1,DB.Thm),
   ("every_count_list",every_count_list,DB.Thm),
   ("count_list_sub1",count_list_sub1,DB.Thm),
   ("el_map_count",el_map_count,DB.Thm),
   ("ZIP_COUNT_LIST",ZIP_COUNT_LIST,DB.Thm),
   ("map_replicate",map_replicate,DB.Thm),
   ("REPLICATE_NIL",REPLICATE_NIL,DB.Thm),
   ("REPLICATE_APPEND",REPLICATE_APPEND,DB.Thm),
   ("DROP_REPLICATE",DROP_REPLICATE,DB.Thm),
   ("LIST_REL_REPLICATE_same",LIST_REL_REPLICATE_same,DB.Thm),
   ("take_drop_partition",take_drop_partition,DB.Thm),
   ("all_distinct_count_list",all_distinct_count_list,DB.Thm),
   ("list_rel_lastn",list_rel_lastn,DB.Thm),
   ("list_rel_butlastn",list_rel_butlastn,DB.Thm),
   ("COUNT_LIST_compute",COUNT_LIST_compute,DB.Thm),
   ("SPLITP_compute",SPLITP_compute,DB.Thm),
   ("IS_SUFFIX_compute",IS_SUFFIX_compute,DB.Thm),
   ("SEG_compute",SEG_compute,DB.Thm),
   ("BUTLASTN_compute",BUTLASTN_compute,DB.Thm),
   ("LASTN_compute",LASTN_compute,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("listTheory.list_grammars",
                          listTheory.list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ELL", (Term.prim_mk_const { Name = "ELL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REPLICATE", (Term.prim_mk_const { Name = "REPLICATE", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SCANL", (Term.prim_mk_const { Name = "SCANL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SCANR", (Term.prim_mk_const { Name = "SCANR", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SPLITP", (Term.prim_mk_const { Name = "SPLITP", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SPLITP_AUX", (Term.prim_mk_const { Name = "SPLITP_AUX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SPLITL", (Term.prim_mk_const { Name = "SPLITL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SPLITL", (Term.prim_mk_const { Name = "SPLITL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SPLITR", (Term.prim_mk_const { Name = "SPLITR", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SPLITR", (Term.prim_mk_const { Name = "SPLITR", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PREFIX", (Term.prim_mk_const { Name = "PREFIX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PREFIX", (Term.prim_mk_const { Name = "PREFIX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUFFIX", (Term.prim_mk_const { Name = "SUFFIX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUFFIX", (Term.prim_mk_const { Name = "SUFFIX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("AND_EL", (Term.prim_mk_const { Name = "AND_EL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("AND_EL", (Term.prim_mk_const { Name = "AND_EL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OR_EL", (Term.prim_mk_const { Name = "OR_EL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OR_EL", (Term.prim_mk_const { Name = "OR_EL", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNZIP_FST", (Term.prim_mk_const { Name = "UNZIP_FST", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNZIP_FST", (Term.prim_mk_const { Name = "UNZIP_FST", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNZIP_SND", (Term.prim_mk_const { Name = "UNZIP_SND", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNZIP_SND", (Term.prim_mk_const { Name = "UNZIP_SND", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_ELEM_COUNT", (Term.prim_mk_const { Name = "LIST_ELEM_COUNT", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_ELEM_COUNT", (Term.prim_mk_const { Name = "LIST_ELEM_COUNT", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COUNT_LIST", (Term.prim_mk_const { Name = "COUNT_LIST", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COUNT_LIST_AUX", (Term.prim_mk_const { Name = "COUNT_LIST_AUX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TL_T", (Term.prim_mk_const { Name = "TL_T", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LASTN", (Term.prim_mk_const { Name = "LASTN", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BUTLASTN", (Term.prim_mk_const { Name = "BUTLASTN", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_SUBLIST", (Term.prim_mk_const { Name = "IS_SUBLIST", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SEG", (Term.prim_mk_const { Name = "SEG", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_SUFFIX", (Term.prim_mk_const { Name = "IS_SUFFIX", Thy = "rich_list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_PREFIX", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :('a list$list)) (y :('a list$list)). list$isPREFIX y x"]))
  val _ = update_grms
       (temp_remove_ovl_mapping "<<=")
        {Name = "isPREFIX", Thy = "list"}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<<=", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :('a list$list)) (y :('a list$list)). list$isPREFIX x y"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ALL_EL", (Term.prim_mk_const { Name = "EVERY", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVERY", (Term.prim_mk_const { Name = "EVERY", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SOME_EL", (Term.prim_mk_const { Name = "EXISTS", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXISTS", (Term.prim_mk_const { Name = "EXISTS", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIRSTN", (Term.prim_mk_const { Name = "TAKE", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TAKE", (Term.prim_mk_const { Name = "TAKE", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BUTFIRSTN", (Term.prim_mk_const { Name = "DROP", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DROP", (Term.prim_mk_const { Name = "DROP", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BUTLAST", (Term.prim_mk_const { Name = "FRONT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FRONT", (Term.prim_mk_const { Name = "FRONT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_EL", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :'a) (l :('a list$list)). bool$IN x (list$LIST_TO_SET l)"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MEM", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :'a) (l :('a list$list)). bool$IN x (list$LIST_TO_SET l)"]))
  val rich_list_grammars = Parse.current_lgrms()
  end


  val ALL_EL_BUTFIRSTN = EVERY_DROP
  val ALL_EL_BUTLASTN = EVERY_BUTLASTN
  val ALL_EL_FIRSTN = EVERY_TAKE
  val ALL_EL_FOLDL = EVERY_FOLDL
  val ALL_EL_FOLDL_MAP = EVERY_FOLDL_MAP
  val ALL_EL_FOLDR = EVERY_FOLDR
  val ALL_EL_FOLDR_MAP = EVERY_FOLDR_MAP
  val ALL_EL_LASTN = EVERY_LASTN
  val ALL_EL_REPLICATE = EVERY_REPLICATE
  val ALL_EL_REVERSE = EVERY_REVERSE
  val ALL_EL_SEG = EVERY_SEG
  val APPEND_BUTLASTN_BUTFIRSTN = APPEND_BUTLASTN_DROP
  val APPEND_FIRSTN_LASTN = APPEND_TAKE_LASTN
  val BUTFIRSTN = DROP
  val BUTFIRSTN_APPEND1 = DROP_APPEND1
  val BUTFIRSTN_APPEND2 = DROP_APPEND2
  val BUTFIRSTN_BUTFIRSTN = DROP_DROP
  val BUTFIRSTN_CONS_EL = DROP_CONS_EL
  val BUTFIRSTN_LASTN = DROP_LASTN
  val BUTFIRSTN_LENGTH_APPEND = DROP_LENGTH_APPEND
  val BUTFIRSTN_LENGTH_NIL = DROP_LENGTH_NIL
  val BUTFIRSTN_REVERSE = DROP_REVERSE
  val BUTFIRSTN_SEG = DROP_SEG
  val BUTFIRSTN_SNOC = DROP_SNOC
  val BUTLASTN_BUTLAST = BUTLASTN_FRONT
  val BUTLASTN_FIRSTN = BUTLASTN_TAKE
  val BUTLASTN_SUC_BUTLAST = BUTLASTN_SUC_FRONT
  val ELL_IS_EL = ELL_MEM
  val EL_BUTFIRSTN = EL_DROP
  val EL_FIRSTN = EL_TAKE
  val EL_IS_EL = EL_MEM
  val FIRSTN = TAKE
  val FIRSTN_APPEND1 = TAKE_APPEND1
  val FIRSTN_APPEND2 = TAKE_APPEND2
  val FIRSTN_BUTLASTN = TAKE_BUTLASTN
  val FIRSTN_FIRSTN = TAKE_TAKE
  val FIRSTN_LENGTH_APPEND = TAKE_LENGTH_APPEND
  val FIRSTN_REVERSE = TAKE_REVERSE
  val FIRSTN_SEG = TAKE_SEG
  val FIRSTN_SNOC = TAKE_SNOC
  val IS_EL_BUTFIRSTN = MEM_DROP
  val IS_EL_BUTLASTN = MEM_BUTLASTN
  val IS_EL_DEF = MEM_EXISTS
  val IS_EL_FIRSTN = MEM_TAKE
  val IS_EL_FOLDL = MEM_FOLDL
  val IS_EL_FOLDL_MAP = MEM_FOLDL_MAP
  val IS_EL_FOLDR = MEM_FOLDR
  val IS_EL_FOLDR_MAP = MEM_FOLDR_MAP
  val IS_EL_LASTN = MEM_LASTN
  val IS_EL_REPLICATE = MEM_REPLICATE
  val IS_EL_SEG = MEM_SEG
  val IS_EL_SOME_EL = MEM_EXISTS
  val LASTN_BUTFIRSTN = LASTN_DROP
  val LENGTH_BUTLAST = LENGTH_FRONT
  val SNOC_EL_FIRSTN = SNOC_EL_TAKE
  val SOME_EL_BUTFIRSTN = EXISTS_DROP
  val SOME_EL_BUTLASTN = EXISTS_BUTLASTN
  val SOME_EL_DISJ = EXISTS_DISJ
  val SOME_EL_FIRSTN = EXISTS_TAKE
  val SOME_EL_FOLDL = EXISTS_FOLDL
  val SOME_EL_FOLDL_MAP = EXISTS_FOLDL_MAP
  val SOME_EL_FOLDR = EXISTS_FOLDR
  val SOME_EL_FOLDR_MAP = EXISTS_FOLDR_MAP
  val SOME_EL_LASTN = EXISTS_LASTN
  val SOME_EL_REVERSE = EXISTS_REVERSE
  val SOME_EL_SEG = EXISTS_SEG
  val ZIP_FIRSTN = ZIP_TAKE
  val ZIP_FIRSTN_LEQ = ZIP_TAKE_LEQ
  val ALL_DISTINCT_SNOC = listTheory.ALL_DISTINCT_SNOC
  val ALL_EL = listTheory.EVERY_DEF
  val ALL_EL_APPEND = listTheory.EVERY_APPEND
  val ALL_EL_CONJ = listTheory.EVERY_CONJ
  val ALL_EL_SNOC = listTheory.EVERY_SNOC
  val APPEND = listTheory.APPEND
  val APPEND_11_LENGTH = listTheory.APPEND_11_LENGTH
  val APPEND_ASSOC = listTheory.APPEND_ASSOC
  val APPEND_BUTLAST_LAST = listTheory.APPEND_FRONT_LAST
  val APPEND_FIRSTN_BUTFIRSTN = listTheory.TAKE_DROP
  val APPEND_LENGTH_EQ = listTheory.APPEND_LENGTH_EQ
  val APPEND_SNOC = listTheory.APPEND_SNOC
  val BUTLAST = listTheory.FRONT_SNOC
  val BUTLAST_CONS = listTheory.FRONT_CONS
  val CONS = listTheory.CONS
  val CONS_11 = listTheory.CONS_11
  val EL = listTheory.EL
  val EL_GENLIST = listTheory.EL_GENLIST
  val EL_LENGTH_SNOC = listTheory.EL_LENGTH_SNOC
  val EL_MAP = listTheory.EL_MAP
  val EL_REVERSE = listTheory.EL_REVERSE
  val EL_SNOC = listTheory.EL_SNOC
  val EQ_LIST = listTheory.EQ_LIST
  val EVERY_GENLIST = listTheory.EVERY_GENLIST
  val EXISTS_GENLIST = listTheory.EXISTS_GENLIST
  val FILTER = listTheory.FILTER
  val FILTER_APPEND = listTheory.FILTER_APPEND_DISTRIB
  val FILTER_REVERSE = listTheory.FILTER_REVERSE
  val FIRSTN_LENGTH_ID = listTheory.TAKE_LENGTH_ID
  val FLAT = listTheory.FLAT
  val FLAT_APPEND = listTheory.FLAT_APPEND
  val FOLDL = listTheory.FOLDL
  val FOLDL_SNOC = listTheory.FOLDL_SNOC
  val FOLDR = listTheory.FOLDR
  val GENLIST = listTheory.GENLIST
  val GENLIST_APPEND = listTheory.GENLIST_APPEND
  val GENLIST_CONS = listTheory.GENLIST_CONS
  val GENLIST_FUN_EQ = listTheory.GENLIST_FUN_EQ
  val HD = listTheory.HD
  val HD_GENLIST = listTheory.HD_GENLIST
  val IS_EL = listTheory.MEM
  val IS_EL_APPEND = listTheory.MEM_APPEND
  val IS_EL_FILTER = listTheory.MEM_FILTER
  val IS_EL_REVERSE = listTheory.MEM_REVERSE
  val IS_EL_SNOC = listTheory.MEM_SNOC
  val LAST = listTheory.LAST_SNOC
  val LAST_APPEND = listTheory.LAST_APPEND_CONS
  val LAST_CONS = listTheory.LAST_CONS
  val LENGTH = listTheory.LENGTH
  val LENGTH_APPEND = listTheory.LENGTH_APPEND
  val LENGTH_BUTFIRSTN = listTheory.LENGTH_DROP
  val LENGTH_CONS = listTheory.LENGTH_CONS
  val LENGTH_EQ_NIL = listTheory.LENGTH_EQ_NIL
  val LENGTH_FIRSTN = listTheory.LENGTH_TAKE
  val LENGTH_GENLIST = listTheory.LENGTH_GENLIST
  val LENGTH_MAP = listTheory.LENGTH_MAP
  val LENGTH_NIL = listTheory.LENGTH_NIL
  val LENGTH_REVERSE = listTheory.LENGTH_REVERSE
  val LENGTH_SNOC = listTheory.LENGTH_SNOC
  val LENGTH_ZIP = listTheory.LENGTH_ZIP
  val LIST_NOT_EQ = listTheory.LIST_NOT_EQ
  val MAP = listTheory.MAP
  val MAP2 = listTheory.MAP2
  val MAP2_ZIP = listTheory.MAP2_ZIP
  val MAP_APPEND = listTheory.MAP_APPEND
  val MAP_EQ_f = listTheory.MAP_EQ_f
  val MAP_GENLIST = listTheory.MAP_GENLIST
  val MAP_MAP_o = listTheory.MAP_MAP_o
  val MAP_SNOC = listTheory.MAP_SNOC
  val MAP_o = listTheory.MAP_o
  val NOT_ALL_EL_SOME_EL = listTheory.NOT_EVERY
  val NOT_CONS_NIL = listTheory.NOT_CONS_NIL
  val NOT_EQ_LIST = listTheory.NOT_EQ_LIST
  val NOT_NIL_CONS = listTheory.NOT_NIL_CONS
  val NOT_SOME_EL_ALL_EL = listTheory.NOT_EXISTS
  val NULL = listTheory.NULL
  val NULL_DEF = listTheory.NULL_DEF
  val NULL_EQ_NIL = listTheory.NULL_EQ
  val REVERSE = listTheory.REVERSE_SNOC_DEF
  val REVERSE_APPEND = listTheory.REVERSE_APPEND
  val REVERSE_EQ_NIL = listTheory.REVERSE_EQ_NIL
  val REVERSE_REVERSE = listTheory.REVERSE_REVERSE
  val REVERSE_SNOC = listTheory.REVERSE_SNOC
  val SNOC = listTheory.SNOC
  val SNOC_11 = listTheory.SNOC_11
  val SNOC_APPEND = listTheory.SNOC_APPEND
  val SNOC_Axiom = listTheory.SNOC_Axiom
  val SNOC_CASES = listTheory.SNOC_CASES
  val SNOC_INDUCT = listTheory.SNOC_INDUCT
  val SOME_EL = listTheory.EXISTS_DEF
  val SOME_EL_APPEND = listTheory.EXISTS_APPEND
  val SOME_EL_MAP = listTheory.EXISTS_MAP
  val SOME_EL_SNOC = listTheory.EXISTS_SNOC
  val SUM = listTheory.SUM
  val SUM_APPEND = listTheory.SUM_APPEND
  val SUM_SNOC = listTheory.SUM_SNOC
  val TL = listTheory.TL
  val TL_GENLIST = listTheory.TL_GENLIST
  val UNZIP = listTheory.UNZIP
  val UNZIP_ZIP = listTheory.UNZIP_ZIP
  val ZIP = listTheory.ZIP
  val ZIP_GENLIST = listTheory.ZIP_GENLIST
  val ZIP_UNZIP = listTheory.ZIP_UNZIP
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "rich_list",
    thydataty = "simp",
    data =
        "rich_list.IS_SUFFIX_REFL rich_list.LIST_REL_APPEND_SING rich_list.IS_PREFIX_APPEND3 rich_list.IS_PREFIX_APPENDS rich_list.IS_PREFIX_REFL"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "rich_list",
    thydataty = "compute",
    data =
        "rich_list.ELL rich_list.ELL_compute rich_list.SPLITP_compute rich_list.SEG_compute rich_list.LASTN_compute rich_list.IS_SUFFIX_compute rich_list.IS_SUBLIST rich_list.COUNT_LIST_compute rich_list.BUTLASTN_compute rich_list.TL_T_def rich_list.COUNT_LIST_AUX_def_compute rich_list.COUNT_LIST_AUX_def rich_list.LIST_ELEM_COUNT_DEF rich_list.UNZIP_SND_DEF rich_list.UNZIP_FST_DEF rich_list.OR_EL_DEF rich_list.AND_EL_DEF rich_list.SUFFIX_DEF rich_list.PREFIX_DEF rich_list.SPLITR_def rich_list.SPLITL_def rich_list.SPLITP_AUX_def rich_list.SCANR rich_list.SCANL rich_list.REPLICATE_compute rich_list.REPLICATE"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "rich_list"
end
