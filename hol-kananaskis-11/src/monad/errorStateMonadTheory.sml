structure errorStateMonadTheory :> errorStateMonadTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading errorStateMonadTheory ... " else ()
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
          ("errorStateMonad",
          Arbnum.fromString "1488586602",
          Arbnum.fromString "220265")
          [("list",
           Arbnum.fromString "1488586477",
           Arbnum.fromString "361466")];
  val _ = Theory.incorporate_types "errorStateMonad" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("option", "option"), ID("pair", "prod"),
   ID("list", "list"), ID("one", "one"), ID("num", "num"),
   ID("min", "bool"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("errorStateMonad", "BIND"), ID("arithmetic", "BIT1"),
   ID("bool", "COND"), ID("list", "CONS"),
   ID("errorStateMonad", "ES_APPLY"), ID("errorStateMonad", "ES_CHOICE"),
   ID("errorStateMonad", "ES_FAIL"), ID("errorStateMonad", "ES_GUARD"),
   ID("errorStateMonad", "ES_LIFT2"), ID("bool", "F"), ID("list", "FOLDR"),
   ID("errorStateMonad", "FOR"), ID("errorStateMonad", "FOREACH"),
   ID("combin", "I"), ID("errorStateMonad", "IGNORE_BIND"),
   ID("errorStateMonad", "JOIN"), ID("list", "MAP"),
   ID("errorStateMonad", "MMAP"), ID("errorStateMonad", "NARROW"),
   ID("list", "NIL"), ID("option", "NONE"), ID("arithmetic", "NUMERAL"),
   ID("errorStateMonad", "READ"), ID("pair", "SND"), ID("option", "SOME"),
   ID("bool", "T"), ID("pair", "UNCURRY"), ID("errorStateMonad", "UNIT"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("errorStateMonad", "WIDEN"), ID("errorStateMonad", "WRITE"),
   ID("arithmetic", "ZERO"), ID("list", "list_CASE"),
   ID("errorStateMonad", "mapM"), ID("combin", "o"),
   ID("option", "option_CASE"), ID("pair", "pair_CASE"),
   ID("errorStateMonad", "sequence"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYV "'b", TYOP [3, 1], TYOP [2, 2, 0], TYOP [1, 3],
   TYOP [0, 0, 4], TYOP [2, 1, 0], TYOP [1, 6], TYOP [0, 0, 7],
   TYOP [3, 8], TYOP [0, 9, 5], TYV "'c", TYOP [3, 11], TYOP [2, 12, 1],
   TYOP [1, 13], TYOP [0, 1, 14], TYOP [3, 0], TYOP [0, 16, 15],
   TYOP [2, 11, 1], TYOP [1, 18], TYOP [0, 1, 19], TYOP [0, 0, 20],
   TYOP [0, 21, 17], TYV "'state", TYOP [4], TYOP [2, 24, 23],
   TYOP [1, 25], TYOP [0, 23, 26], TYOP [0, 23, 23], TYOP [0, 28, 27],
   TYOP [2, 1, 23], TYOP [2, 0, 30], TYOP [1, 31], TYOP [0, 30, 32],
   TYOP [2, 0, 23], TYOP [1, 34], TYOP [0, 23, 35], TYOP [0, 36, 33],
   TYOP [0, 1, 8], TYOP [0, 23, 0], TYOP [0, 39, 36], TYOP [0, 33, 36],
   TYOP [0, 1, 41], TYOP [2, 11, 0], TYOP [1, 43], TYOP [0, 0, 44],
   TYOP [0, 45, 8], TYOP [0, 11, 1], TYOP [0, 47, 46], TYOP [2, 8, 0],
   TYOP [1, 49], TYOP [0, 0, 50], TYOP [0, 51, 8], TYOP [0, 20, 20],
   TYOP [2, 0, 1], TYOP [1, 54], TYOP [0, 1, 55], TYOP [0, 56, 53],
   TYOP [0, 0, 27], TYOP [2, 16, 58], TYOP [0, 59, 27], TYOP [5],
   TYOP [0, 61, 27], TYOP [2, 61, 62], TYOP [2, 61, 63], TYOP [0, 64, 27],
   TYV "'d", TYOP [2, 66, 0], TYOP [1, 67], TYOP [0, 0, 68],
   TYOP [0, 69, 8], TYOP [0, 45, 70], TYOP [0, 66, 1], TYOP [0, 11, 72],
   TYOP [0, 73, 71], TYOP [2, 24, 0], TYOP [1, 75], TYOP [0, 0, 76],
   TYOP [6], TYOP [0, 78, 77], TYOP [1, 0], TYOP [0, 1, 80],
   TYOP [0, 81, 81], TYOP [0, 81, 82], TYOP [2, 47, 0], TYOP [1, 84],
   TYOP [0, 0, 85], TYOP [0, 86, 46], TYOP [0, 1, 45], TYOP [0, 88, 45],
   TYOP [0, 8, 89], TYOP [0, 59, 78], TYOP [0, 64, 78], TYOP [0, 59, 91],
   TYOP [0, 64, 92], TYOP [0, 0, 1], TYOP [0, 11, 8], TYOP [0, 24, 8],
   TYOP [0, 11, 0], TYOP [0, 11, 69], TYOP [1, 1], TYOP [0, 0, 100],
   TYOP [0, 0, 78], TYOP [0, 102, 78], TYOP [0, 1, 78], TYOP [0, 104, 78],
   TYOP [0, 78, 78], TYOP [0, 106, 78], TYOP [0, 95, 78],
   TYOP [0, 108, 78], TYOP [0, 21, 78], TYOP [0, 110, 78],
   TYOP [0, 58, 78], TYOP [0, 112, 78], TYOP [0, 8, 78], TYOP [0, 114, 78],
   TYOP [0, 45, 78], TYOP [0, 116, 78], TYOP [0, 69, 78],
   TYOP [0, 118, 78], TYOP [0, 51, 78], TYOP [0, 120, 78],
   TYOP [0, 86, 78], TYOP [0, 122, 78], TYOP [0, 88, 78],
   TYOP [0, 124, 78], TYOP [0, 81, 78], TYOP [0, 126, 78],
   TYOP [0, 56, 78], TYOP [0, 128, 78], TYOP [0, 20, 78],
   TYOP [0, 130, 78], TYOP [0, 98, 78], TYOP [0, 132, 78],
   TYOP [0, 47, 78], TYOP [0, 134, 78], TYOP [0, 99, 78],
   TYOP [0, 136, 78], TYOP [0, 73, 78], TYOP [0, 138, 78],
   TYOP [0, 39, 78], TYOP [0, 140, 78], TYOP [0, 28, 78],
   TYOP [0, 142, 78], TYOP [0, 36, 78], TYOP [0, 144, 78],
   TYOP [0, 62, 78], TYOP [0, 146, 78], TYOP [0, 33, 78],
   TYOP [0, 148, 78], TYOP [0, 91, 78], TYOP [0, 150, 78],
   TYOP [0, 92, 78], TYOP [0, 152, 78], TYOP [0, 16, 78],
   TYOP [0, 154, 78], TYOP [0, 61, 78], TYOP [0, 156, 78],
   TYOP [0, 61, 61], TYOP [0, 61, 158], TYOP [0, 23, 34], TYOP [0, 0, 160],
   TYOP [0, 30, 31], TYOP [0, 0, 162], TYOP [0, 0, 6], TYOP [0, 1, 164],
   TYOP [0, 23, 30], TYOP [0, 1, 166], TYOP [0, 58, 59], TYOP [0, 16, 168],
   TYOP [0, 62, 63], TYOP [0, 61, 170], TYOP [0, 63, 64],
   TYOP [0, 61, 172], TYOP [0, 23, 25], TYOP [0, 24, 174],
   TYOP [0, 78, 106], TYOP [0, 61, 156], TYOP [2, 1, 11], TYOP [1, 178],
   TYOP [0, 11, 179], TYOP [0, 0, 180], TYOP [0, 181, 78],
   TYOP [0, 181, 182], TYOP [0, 101, 78], TYOP [0, 101, 184],
   TYOP [0, 8, 114], TYOP [0, 45, 116], TYOP [0, 69, 118], TYOP [0, 5, 78],
   TYOP [0, 5, 189], TYOP [0, 77, 78], TYOP [0, 77, 191],
   TYOP [0, 20, 130], TYOP [0, 36, 144], TYOP [0, 27, 78],
   TYOP [0, 27, 195], TYOP [0, 8, 8], TYOP [0, 197, 78],
   TYOP [0, 197, 198], TYOP [2, 51, 0], TYOP [1, 200], TYOP [0, 0, 201],
   TYOP [0, 202, 8], TYOP [0, 203, 78], TYOP [0, 203, 204],
   TYOP [2, 0, 11], TYOP [1, 206], TYOP [0, 11, 207], TYOP [2, 208, 11],
   TYOP [1, 209], TYOP [0, 11, 210], TYOP [0, 211, 180], TYOP [0, 212, 78],
   TYOP [0, 212, 213], TYOP [2, 1, 66], TYOP [1, 215], TYOP [0, 66, 216],
   TYOP [2, 11, 66], TYOP [1, 218], TYOP [0, 66, 219], TYOP [0, 220, 217],
   TYOP [0, 221, 78], TYOP [0, 221, 222], TYOP [0, 17, 78],
   TYOP [0, 17, 224], TYOP [0, 10, 78], TYOP [0, 10, 226],
   TYOP [0, 33, 148], TYOP [0, 60, 78], TYOP [0, 60, 229],
   TYOP [0, 65, 78], TYOP [0, 65, 231], TYOP [0, 80, 78],
   TYOP [0, 80, 233], TYOP [0, 44, 78], TYOP [0, 44, 235],
   TYOP [0, 93, 78], TYOP [0, 237, 93], TYOP [0, 94, 78],
   TYOP [0, 239, 94], TYOP [0, 38, 8], TYOP [0, 8, 241], TYOP [0, 1, 69],
   TYOP [0, 243, 69], TYOP [0, 8, 244], TYOP [0, 1, 5], TYOP [0, 246, 5],
   TYOP [0, 8, 247], TYOP [0, 96, 8], TYOP [0, 45, 249], TYOP [0, 99, 69],
   TYOP [0, 45, 251], TYOP [0, 197, 8], TYOP [0, 51, 253], TYOP [0, 47, 8],
   TYOP [0, 255, 8], TYOP [0, 86, 256], TYOP [0, 2, 5], TYOP [0, 258, 5],
   TYOP [0, 5, 259], TYOP [0, 97, 8], TYOP [0, 77, 261], TYOP [0, 21, 20],
   TYOP [0, 56, 263], TYOP [0, 24, 27], TYOP [0, 265, 27],
   TYOP [0, 27, 266], TYOP [0, 77, 77], TYOP [0, 77, 268],
   TYOP [0, 78, 269], TYOP [0, 27, 27], TYOP [0, 27, 271],
   TYOP [0, 78, 272], TYOP [0, 78, 159], TYOP [0, 16, 16],
   TYOP [0, 0, 275], TYOP [0, 2, 2], TYOP [0, 1, 277], TYOP [0, 12, 12],
   TYOP [0, 11, 279], TYOP [2, 72, 0], TYOP [1, 281], TYOP [0, 0, 282],
   TYOP [0, 283, 70], TYOP [0, 101, 101], TYOP [0, 101, 285],
   TYOP [0, 5, 10], TYOP [0, 5, 5], TYOP [0, 8, 288], TYOP [0, 289, 287],
   TYOP [0, 1, 1], TYOP [0, 69, 69], TYOP [0, 8, 292], TYOP [0, 45, 197],
   TYOP [0, 77, 197], TYOP [2, 45, 0], TYOP [1, 296], TYOP [0, 0, 297],
   TYOP [0, 298, 45], TYOP [0, 202, 51], TYOP [0, 211, 208],
   TYOP [2, 180, 11], TYOP [1, 302], TYOP [0, 11, 303], TYOP [0, 304, 180],
   TYOP [3, 20], TYOP [0, 16, 306], TYOP [0, 21, 307], TYOP [0, 208, 180],
   TYOP [0, 95, 309], TYOP [2, 0, 66], TYOP [1, 311], TYOP [0, 66, 312],
   TYOP [0, 313, 217], TYOP [0, 95, 314], TYOP [0, 291, 197],
   TYOP [0, 8, 51], TYOP [0, 38, 317], TYOP [0, 8, 298], TYOP [0, 88, 319],
   TYOP [0, 220, 313], TYOP [0, 98, 321], TYOP [0, 47, 221],
   TYOP [0, 45, 283], TYOP [0, 73, 324], TYOP [0, 52, 300],
   TYOP [0, 211, 304], TYOP [0, 309, 327], TYOP [0, 30, 23],
   TYOP [0, 0, 80], TYOP [0, 34, 35], TYOP [0, 31, 32], TYOP [0, 6, 7],
   TYOP [0, 25, 26], TYOP [0, 23, 32], TYOP [0, 1, 335], TYOP [0, 336, 33],
   TYOP [0, 0, 56], TYOP [0, 0, 208], TYOP [0, 1, 180], TYOP [0, 11, 45],
   TYOP [0, 47, 86], TYOP [0, 24, 77], TYOP [0, 60, 60], TYOP [0, 344, 60],
   TYOP [0, 93, 345], TYOP [0, 65, 65], TYOP [0, 347, 65],
   TYOP [0, 94, 348], TYOP [0, 16, 27], TYOP [0, 0, 350],
   TYOP [0, 351, 27], TYOP [0, 27, 352], TYOP [0, 16, 353],
   TYOP [0, 12, 5], TYOP [0, 96, 355], TYOP [0, 98, 47], TYOP [0, 95, 357],
   TYOP [0, 47, 96], TYOP [0, 38, 359], TYOP [0, 95, 181],
   TYOP [0, 340, 361], TYOP [0, 317, 197], TYOP [0, 52, 363],
   TYOP [0, 300, 203], TYOP [0, 52, 365], TYOP [0, 339, 181],
   TYOP [0, 309, 367], TYOP [0, 301, 212], TYOP [0, 309, 369],
   TYOP [0, 327, 212], TYOP [0, 305, 371], TYOP [0, 321, 221],
   TYOP [0, 314, 373], TYOP [0, 307, 17], TYOP [0, 306, 15],
   TYOP [0, 376, 375], TYOP [0, 330, 80], TYOP [0, 80, 378],
   TYOP [0, 80, 379], TYOP [0, 34, 32], TYOP [0, 381, 32],
   TYOP [0, 32, 382], TYOP [0, 35, 383], TYOP [0, 31, 35],
   TYOP [0, 385, 35], TYOP [0, 35, 386], TYOP [0, 32, 387],
   TYOP [0, 6, 44], TYOP [0, 389, 44], TYOP [0, 44, 390], TYOP [0, 7, 391],
   TYOP [0, 0, 335], TYOP [0, 393, 32], TYOP [0, 34, 394],
   TYOP [0, 30, 35], TYOP [0, 0, 396], TYOP [0, 397, 35],
   TYOP [0, 31, 398], TYOP [0, 88, 44], TYOP [0, 6, 400], TYOP [0, 58, 27],
   TYOP [0, 16, 402], TYOP [0, 403, 27], TYOP [0, 59, 404],
   TYOP [0, 62, 27], TYOP [0, 61, 406], TYOP [0, 407, 27],
   TYOP [0, 63, 408], TYOP [0, 63, 27], TYOP [0, 61, 410],
   TYOP [0, 411, 27], TYOP [0, 64, 412]]
  end
  val _ = Theory.incorporate_consts "errorStateMonad" tyvector
     [("sequence", 10), ("mapM", 22), ("WRITE", 29), ("WIDEN", 37),
      ("UNIT", 38), ("READ", 40), ("NARROW", 42), ("MMAP", 48),
      ("JOIN", 52), ("IGNORE_BIND", 57), ("FOREACH", 60), ("FOR", 65),
      ("ES_LIFT2", 74), ("ES_GUARD", 79), ("ES_FAIL", 81),
      ("ES_CHOICE", 83), ("ES_APPLY", 87), ("BIND", 90)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("FOR", 65), TMV("FOREACH", 60), TMV("P", 91), TMV("P", 92),
   TMV("R", 93), TMV("R", 94), TMV("a", 1), TMV("a", 58), TMV("a", 62),
   TMV("a'", 59), TMV("a'", 64), TMV("b", 1), TMV("b", 78), TMV("f", 95),
   TMV("f", 21), TMV("f", 88), TMV("f", 56), TMV("f", 47), TMV("f", 96),
   TMV("f", 73), TMV("f", 39), TMV("f", 28), TMV("f", 36), TMV("f", 33),
   TMV("fM", 86), TMV("fM", 96), TMV("fM", 97), TMV("g", 8), TMV("g", 20),
   TMV("g", 98), TMV("h", 0), TMV("i", 61), TMV("j", 61), TMV("k", 21),
   TMV("k", 8), TMV("m", 8), TMV("m", 45), TMV("m", 88), TMV("ms", 5),
   TMV("n", 99), TMV("r", 0), TMV("s", 0), TMV("s", 1), TMV("s", 23),
   TMV("s0", 0), TMV("s1", 1), TMV("s1", 30), TMV("s2", 23), TMV("s3", 23),
   TMV("t", 16), TMV("u", 24), TMV("v", 1), TMV("v", 16), TMV("v", 61),
   TMV("v", 34), TMV("v", 31), TMV("v", 6), TMV("v1", 0), TMV("v1", 58),
   TMV("v1", 61), TMV("v1", 63), TMV("v2", 62), TMV("x", 0), TMV("x", 1),
   TMV("x", 11), TMV("xM", 101), TMV("xM", 8), TMV("xM", 45),
   TMV("xM", 81), TMV("xs", 2), TMV("xs", 12), TMV("y", 1), TMV("yM", 101),
   TMV("yM", 69), TMV("yM", 81), TMV("ys", 2), TMV("z", 51),
   TMV("zM", 101), TMC(7, 103), TMC(7, 105), TMC(7, 107), TMC(7, 109),
   TMC(7, 111), TMC(7, 113), TMC(7, 115), TMC(7, 117), TMC(7, 119),
   TMC(7, 121), TMC(7, 123), TMC(7, 125), TMC(7, 127), TMC(7, 129),
   TMC(7, 131), TMC(7, 133), TMC(7, 135), TMC(7, 137), TMC(7, 139),
   TMC(7, 141), TMC(7, 143), TMC(7, 145), TMC(7, 147), TMC(7, 149),
   TMC(7, 151), TMC(7, 153), TMC(7, 155), TMC(7, 157), TMC(8, 159),
   TMC(9, 161), TMC(9, 163), TMC(9, 165), TMC(9, 167), TMC(9, 169),
   TMC(9, 171), TMC(9, 173), TMC(9, 175), TMC(10, 159), TMC(11, 176),
   TMC(12, 177), TMC(13, 183), TMC(13, 185), TMC(13, 186), TMC(13, 187),
   TMC(13, 188), TMC(13, 190), TMC(13, 192), TMC(13, 193), TMC(13, 194),
   TMC(13, 196), TMC(13, 199), TMC(13, 205), TMC(13, 214), TMC(13, 223),
   TMC(13, 225), TMC(13, 227), TMC(13, 228), TMC(13, 230), TMC(13, 232),
   TMC(13, 177), TMC(13, 234), TMC(13, 236), TMC(14, 176), TMC(15, 238),
   TMC(15, 240), TMC(16, 242), TMC(16, 90), TMC(16, 245), TMC(16, 248),
   TMC(16, 250), TMC(16, 252), TMC(16, 254), TMC(16, 257), TMC(16, 260),
   TMC(16, 262), TMC(16, 264), TMC(16, 267), TMC(17, 158), TMC(18, 270),
   TMC(18, 273), TMC(18, 274), TMC(19, 276), TMC(19, 278), TMC(19, 280),
   TMC(20, 87), TMC(20, 284), TMC(21, 286), TMC(21, 83), TMC(22, 101),
   TMC(22, 8), TMC(22, 45), TMC(22, 69), TMC(22, 77), TMC(22, 81),
   TMC(23, 79), TMC(24, 74), TMC(25, 78), TMC(26, 290), TMC(27, 65),
   TMC(28, 60), TMC(29, 291), TMC(29, 197), TMC(29, 271), TMC(30, 293),
   TMC(30, 294), TMC(30, 295), TMC(30, 57), TMC(31, 52), TMC(31, 299),
   TMC(31, 300), TMC(31, 301), TMC(31, 305), TMC(32, 308), TMC(33, 310),
   TMC(33, 315), TMC(33, 316), TMC(33, 318), TMC(33, 320), TMC(33, 322),
   TMC(33, 48), TMC(33, 323), TMC(33, 325), TMC(33, 326), TMC(33, 328),
   TMC(34, 42), TMC(35, 16), TMC(35, 2), TMC(35, 12), TMC(35, 9),
   TMC(36, 80), TMC(36, 35), TMC(36, 32), TMC(36, 44), TMC(37, 158),
   TMC(38, 40), TMC(39, 329), TMC(40, 330), TMC(40, 331), TMC(40, 332),
   TMC(40, 333), TMC(40, 334), TMC(41, 78), TMC(42, 337), TMC(43, 338),
   TMC(43, 339), TMC(43, 38), TMC(43, 340), TMC(43, 341), TMC(43, 317),
   TMC(43, 342), TMC(43, 258), TMC(43, 343), TMC(43, 265), TMC(44, 237),
   TMC(44, 239), TMC(45, 346), TMC(45, 349), TMC(46, 37), TMC(47, 29),
   TMC(48, 61), TMC(49, 354), TMC(50, 22), TMC(50, 356), TMC(51, 358),
   TMC(51, 360), TMC(51, 362), TMC(51, 364), TMC(51, 366), TMC(51, 368),
   TMC(51, 370), TMC(51, 372), TMC(51, 374), TMC(51, 377), TMC(4, 24),
   TMC(52, 380), TMC(52, 384), TMC(52, 388), TMC(52, 392), TMC(53, 395),
   TMC(53, 399), TMC(53, 401), TMC(53, 405), TMC(53, 409), TMC(53, 413),
   TMC(54, 10), TMC(54, 376), TMC(55, 106)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op UNIT_DEF x = x
    val op UNIT_DEF =
    DT(((("errorStateMonad",0),[]),[]),
       [read"%79%63%120%223$0@@%41%217%109$1@$0@@|@|@"])
  fun op BIND_DEF x = x
    val op BIND_DEF =
    DT(((("errorStateMonad",1),[]),[]),
       [read"%84%27%89%15%78%44%139%144$2@$1@$0@@%255$2$0@@%210@%56%258$0@%11%41$4$1@$0@||@|@@|@|@|@"])
  fun op IGNORE_BIND_DEF x = x
    val op IGNORE_BIND_DEF =
    DT(((("errorStateMonad",2),[]),[]),
       [read"%91%16%92%28%125%184$1@$0@@%153$1@%62$1|@@|@|@"])
  fun op MMAP_DEF x = x
    val op MMAP_DEF =
    DT(((("errorStateMonad",3),[]),[]),
       [read"%94%17%85%36%120%197$1@$0@@%147$0@%242%223@$1@@@|@|@"])
  fun op JOIN_DEF x = x
    val op JOIN_DEF =
    DT(((("errorStateMonad",4),[]),[]),
       [read"%87%76%120%185$0@@%149$0@%179@@|@"])
  fun op FOR_primitive_def x = x
    val op FOR_primitive_def =
    DT(((("errorStateMonad",5),[]),[]),
       [read"%136%176@%234%142%5%116%232$0@@%100%8%105%32%105%31%140%264%137$0@$1@@@$3%113%158%117$0@$1@@%106$0@%211%155%237@@@@%115$0@%211%155%237@@@@@%112$1@$2@@@%113$0@%112$1@$2@@@@|@|@|@@|@@%0%10%261$0@%31%60%260$0@%32%8%180%157%137$3@$1@@$0$3@@%154$0$3@@%50$6%113%158%117$4@$2@@%106$4@%211%155%237@@@@%115$4@%211%155%237@@@@@%112$2@$1@@@|@@@||@||@||@@"])
  fun op FOREACH_primitive_def x = x
    val op FOREACH_primitive_def =
    DT(((("errorStateMonad",8),[]),[]),
       [read"%135%177@%233%141%4%116%231$0@@%78%30%83%7%104%49$3%111$0@$1@@%111%159$2@$0@@$1@@|@|@|@@|@@%1%9%259$0@%52%7%238$1@%180%230%251@@@%30%49%180%154$2$1@@%50$6%111$1@$3@@|@@||@||@||@@"])
  fun op READ_def x = x
    val op READ_def =
    DT(((("errorStateMonad",11),[]),[]),
       [read"%97%20%126%212$0@@%43%215%107$1$0@@$0@@|@|@"])
  fun op WRITE_def x = x
    val op WRITE_def =
    DT(((("errorStateMonad",12),[]),[]),
       [read"%98%21%127%236$0@@%43%218%114%251@$1$0@@@|@|@"])
  fun op NARROW_def x = x
    val op NARROW_def =
    DT(((("errorStateMonad",13),[]),[]),
       [read"%79%51%101%23%126%202$1@$0@@%43%254$1%110$2@$0@@@%208@%55%257$0@%40%46%215%107$1@%213$0@@@||@|@|@|@|@"])
  fun op WIDEN_def x = x
    val op WIDEN_def =
    DT(((("errorStateMonad",14),[]),[]),
       [read"%99%22%134%235$0@@%220%45%47%253$2$0@@%209@%54%256$0@%40%48%216%108$1@%110$4@$0@@@||@|@||@@|@"])
  fun op sequence_def x = x
    val op sequence_def =
    DT(((("errorStateMonad",15),[]),[]),
       [read"%133%262@%175%35%38%146$1@%63%151$1@%69%228%160$1@$0@@|@|@||@%228%204@@@"])
  fun op mapM_def x = x
    val op mapM_def =
    DT(((("errorStateMonad",16),[]),[]),
       [read"%82%14%132%239$0@@%250%263@%190$0@@@|@"])
  fun op ES_FAIL_DEF x = x
    val op ES_FAIL_DEF =
    DT(((("errorStateMonad",31),[]),[]), [read"%79%42%138%171$0@@%207@|@"])
  fun op ES_CHOICE_DEF x = x
    val op ES_CHOICE_DEF =
    DT(((("errorStateMonad",32),[]),[]),
       [read"%90%68%90%74%79%42%138%165$2@$1@$0@@%252$2$0@@$1$0@@%57%214$0@|@@|@|@|@"])
  fun op ES_GUARD_DEF x = x
    val op ES_GUARD_DEF =
    DT(((("errorStateMonad",33),[]),[]),
       [read"%80%12%124%172$0@@%156$0@%229%251@@%170@@|@"])
  fun op ES_APPLY_DEF x = x
    val op ES_APPLY_DEF =
    DT(((("errorStateMonad",41),[]),[]),
       [read"%88%24%85%67%120%162$1@$0@@%150$1@%17%147$1@%64%223$1$0@@|@|@@|@|@"])
  fun op ES_LIFT2_DEF x = x
    val op ES_LIFT2_DEF =
    DT(((("errorStateMonad",44),[]),[]),
       [read"%96%19%85%67%86%73%120%173$2@$1@$0@@%163%199$2@$1@@$0@@|@|@|@"])
  fun op FOR_ind x = x
    val op FOR_ind =
    DT(((("errorStateMonad",6),
        [("arithmetic",
         [18,24,25,27,41,46,59,62,71,74,75,76,93,122,172,173,177,180,183,
          195,199,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          108,109,124,129]),("combin",[19]),("errorStateMonad",[5]),
         ("numeral",[0,3,5,8]),("pair",[5,7,8,9,16,49]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%103%3%140%105%31%105%32%100%8%140%140%264%137$2@$1@@@$3%113%158%117$2@$1@@%106$2@%211%155%237@@@@%115$2@%211%155%237@@@@@%112$1@$0@@@@@$3%113$2@%112$1@$0@@@@|@|@|@@%105%53%105%59%100%61$3%113$2@%112$1@$0@@@|@|@|@@|@"])
  fun op FOR_def x = x
    val op FOR_def =
    DT(((("errorStateMonad",7),
        [("arithmetic",
         [18,24,25,27,41,46,59,62,71,74,75,76,93,122,172,173,177,180,183,
          195,199,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          108,109,124,129]),("combin",[19]),("errorStateMonad",[5]),
         ("numeral",[0,3,5,8]),("pair",[5,7,8,9,16,49]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%105%32%105%31%100%8%127%176%113$1@%112$2@$0@@@@%157%137$1@$2@@$0$1@@%154$0$1@@%50%176%113%158%117$2@$3@@%106$2@%211%155%237@@@@%115$2@%211%155%237@@@@@%112$3@$1@@@|@@@|@|@|@"])
  fun op FOREACH_ind x = x
    val op FOREACH_ind =
    DT(((("errorStateMonad",9),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%102%2%140%116%83%7$1%111%203@$0@@|@@%78%30%104%49%83%7%140$3%111$1@$0@@@$3%111%159$2@$1@@$0@@@|@|@|@@@%104%52%83%58$2%111$1@$0@@|@|@@|@"])
  fun op FOREACH_def x = x
    val op FOREACH_def =
    DT(((("errorStateMonad",10),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("errorStateMonad",[8]),("list",[6,7]),("numeral",[3,7,8]),
         ("pair",[7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%116%83%7%127%177%111%203@$0@@@%230%251@@|@@%104%49%78%30%83%7%127%177%111%159$1@$2@@$0@@@%154$0$1@@%50%177%111$3@$1@@|@@|@|@|@@"])
  fun op BIND_LEFT_UNIT x = x
    val op BIND_LEFT_UNIT =
    DT(((("errorStateMonad",17),
        [("bool",[25,36,56,60]),("errorStateMonad",[0,1]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%82%33%78%62%125%153%221$0@@$1@@$1$0@@|@|@"])
  fun op BIND_RIGHT_UNIT x = x
    val op BIND_RIGHT_UNIT =
    DT(((("errorStateMonad",18),
        [("bool",
         [2,15,25,26,27,37,51,52,53,54,55,56,58,60,63,94,95,105,125,143]),
         ("errorStateMonad",[0,1]),("option",[6,7,10,11]),
         ("pair",[4,5,49]),("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%84%34%120%143$0@%223@@$0@|@"])
  fun op BIND_ASSOC x = x
    val op BIND_ASSOC =
    DT(((("errorStateMonad",19),
        [("bool",[25,56,60]),("errorStateMonad",[1]),("option",[6,7]),
         ("pair",[5,49])]),["DISK_THM"]),
       [read"%84%34%89%37%95%39%122%145$2@%6%148$2$0@@$1@|@@%148%144$2@$1@@$0@@|@|@|@"])
  fun op MMAP_ID x = x
    val op MMAP_ID =
    DT(((("errorStateMonad",20),
        [("bool",
         [2,15,25,26,27,36,37,51,52,53,54,55,56,58,60,63,94,95,105,125,
          143]),("combin",[19,20]),("errorStateMonad",[0,1,3]),
         ("option",[6,7,10,11]),("pair",[4,5,49]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%128%193%178@@%179@"])
  fun op MMAP_COMP x = x
    val op MMAP_COMP =
    DT(((("errorStateMonad",21),
        [("bool",[25,36,56,58,60]),("combin",[5,8]),
         ("errorStateMonad",[0,1,3,19]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%81%13%93%29%131%198%241$1@$0@@@%249%192$1@@%196$0@@@|@|@"])
  fun op MMAP_UNIT x = x
    val op MMAP_UNIT =
    DT(((("errorStateMonad",22),
        [("bool",[25,36,56,60]),("combin",[8]),("errorStateMonad",[0,1,3]),
         ("option",[7]),("pair",[49])]),["DISK_THM"]),
       [read"%81%13%118%246%191$0@@%222@@%243%224@$0@@|@"])
  fun op MMAP_JOIN x = x
    val op MMAP_JOIN =
    DT(((("errorStateMonad",23),
        [("bool",[25,36,56,58,60]),("combin",[5,8,19]),
         ("errorStateMonad",[0,1,3,4,19]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%81%13%130%247%191$0@@%188@@%248%189@%201%191$0@@@@|@"])
  fun op JOIN_UNIT x = x
    val op JOIN_UNIT =
    DT(((("errorStateMonad",24),
        [("bool",[25,36,56,60]),("combin",[8,19]),
         ("errorStateMonad",[0,1,4]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]), [read"%128%244%185@%226@@%179@"])
  fun op JOIN_MMAP_UNIT x = x
    val op JOIN_MMAP_UNIT =
    DT(((("errorStateMonad",25),
        [("bool",
         [2,14,15,25,26,27,36,37,51,52,53,54,55,56,58,60,63,94,95,105,125,
          143]),("combin",[5,8,19]),("errorStateMonad",[0,1,3,4,19]),
         ("option",[6,7,10,11]),("pair",[4,5,49]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%128%244%185@%194%223@@@%179@"])
  fun op JOIN_MAP_JOIN x = x
    val op JOIN_MAP_JOIN =
    DT(((("errorStateMonad",26),
        [("bool",[25,36,56,58,60]),("combin",[5,8,19]),
         ("errorStateMonad",[0,1,3,4,19]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%129%245%185@%200%185@@@%245%185@%187@@"])
  fun op JOIN_MAP x = x
    val op JOIN_MAP =
    DT(((("errorStateMonad",27),
        [("bool",[14,25,36,56,58,60]),("combin",[5,19]),
         ("errorStateMonad",[0,1,3,4,19]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%84%34%89%37%121%144$1@$0@@%186%195$0@$1@@@|@|@"])
  fun op sequence_nil x = x
    val op sequence_nil =
    DT(((("errorStateMonad",28),
        [("bool",[25,56]),("errorStateMonad",[15]),
         ("list",[28])]),["DISK_THM"]), [read"%123%262%206@@%228%204@@"])
  fun op mapM_nil x = x
    val op mapM_nil =
    DT(((("errorStateMonad",29),
        [("bool",[25,56]),("combin",[8]),("errorStateMonad",[15,16]),
         ("list",[23,28])]),["DISK_THM"]),
       [read"%123%240%18@%205@@%228%204@@"])
  fun op mapM_cons x = x
    val op mapM_cons =
    DT(((("errorStateMonad",30),
        [("bool",[25,56]),("combin",[8]),("errorStateMonad",[15,16]),
         ("list",[23,28])]),["DISK_THM"]),
       [read"%123%240%18@%161%64@%70@@@%146%18%64@@%71%151%240%18@%70@@%75%228%160$1@$0@@|@|@@"])
  fun op ES_CHOICE_ASSOC x = x
    val op ES_CHOICE_ASSOC =
    DT(((("errorStateMonad",34),
        [("bool",[25,56,60]),("errorStateMonad",[32]),
         ("option",[6,7,10])]),["DISK_THM"]),
       [read"%119%164%65@%164%72@%77@@@%164%164%65@%72@@%77@@"])
  fun op ES_CHOICE_FAIL_LID x = x
    val op ES_CHOICE_FAIL_LID =
    DT(((("errorStateMonad",35),
        [("bool",[25,36,56,60]),("errorStateMonad",[31,32]),
         ("option",[7])]),["DISK_THM"]), [read"%119%164%166@%65@@%65@"])
  fun op ES_CHOICE_FAIL_RID x = x
    val op ES_CHOICE_FAIL_RID =
    DT(((("errorStateMonad",36),
        [("bool",[25,56,60]),("errorStateMonad",[31,32]),
         ("option",[6,7,10])]),["DISK_THM"]),
       [read"%119%164%65@%166@@%65@"])
  fun op BIND_FAIL_L x = x
    val op BIND_FAIL_L =
    DT(((("errorStateMonad",37),
        [("bool",[25,36,56,60]),("errorStateMonad",[1,31]),
         ("option",[7])]),["DISK_THM"]), [read"%120%147%168@%25@@%167@"])
  fun op BIND_ESGUARD x = x
    val op BIND_ESGUARD =
    DT(((("errorStateMonad",38),
        [("bool",[25,36,56,60,147]),("errorStateMonad",[0,1,31,33]),
         ("option",[7]),("pair",[49])]),["DISK_THM"]),
       [read"%116%120%152%172%174@@%26@@%167@@%120%152%172%219@@%26@@%26%251@@@"])
  fun op IGNORE_BIND_ESGUARD x = x
    val op IGNORE_BIND_ESGUARD =
    DT(((("errorStateMonad",39),
        [("bool",[25,36,56,60,147]),("errorStateMonad",[0,1,2,31,33]),
         ("option",[7]),("pair",[49])]),["DISK_THM"]),
       [read"%116%120%183%172%174@@%66@@%167@@%120%183%172%219@@%66@@%66@@"])
  fun op IGNORE_BIND_FAIL x = x
    val op IGNORE_BIND_FAIL =
    DT(((("errorStateMonad",40),
        [("bool",[25,36,56,60]),("errorStateMonad",[1,2,31]),
         ("option",[6,7]),("pair",[5,49])]),["DISK_THM"]),
       [read"%116%120%182%168@%66@@%167@@%122%181%66@%169@@%169@@"])
  fun op APPLY_UNIT x = x
    val op APPLY_UNIT =
    DT(((("errorStateMonad",42),
        [("bool",[25,36,56,60]),("combin",[5]),
         ("errorStateMonad",[0,1,3,41]),("option",[7]),
         ("pair",[49])]),["DISK_THM"]),
       [read"%120%162%227%17@@%67@@%197%17@%67@@"])
  fun op APPLY_UNIT_UNIT x = x
    val op APPLY_UNIT_UNIT =
    DT(((("errorStateMonad",43),
        [("bool",[25,36,56,60]),("errorStateMonad",[0,1,41]),
         ("option",[7]),("pair",[49])]),["DISK_THM"]),
       [read"%120%162%227%17@@%225%64@@@%223%17%64@@@"])
  end
  val _ = DB.bindl "errorStateMonad"
  [("UNIT_DEF",UNIT_DEF,DB.Def), ("BIND_DEF",BIND_DEF,DB.Def),
   ("IGNORE_BIND_DEF",IGNORE_BIND_DEF,DB.Def),
   ("MMAP_DEF",MMAP_DEF,DB.Def), ("JOIN_DEF",JOIN_DEF,DB.Def),
   ("FOR_primitive_def",FOR_primitive_def,DB.Def),
   ("FOREACH_primitive_def",FOREACH_primitive_def,DB.Def),
   ("READ_def",READ_def,DB.Def), ("WRITE_def",WRITE_def,DB.Def),
   ("NARROW_def",NARROW_def,DB.Def), ("WIDEN_def",WIDEN_def,DB.Def),
   ("sequence_def",sequence_def,DB.Def), ("mapM_def",mapM_def,DB.Def),
   ("ES_FAIL_DEF",ES_FAIL_DEF,DB.Def),
   ("ES_CHOICE_DEF",ES_CHOICE_DEF,DB.Def),
   ("ES_GUARD_DEF",ES_GUARD_DEF,DB.Def),
   ("ES_APPLY_DEF",ES_APPLY_DEF,DB.Def),
   ("ES_LIFT2_DEF",ES_LIFT2_DEF,DB.Def), ("FOR_ind",FOR_ind,DB.Thm),
   ("FOR_def",FOR_def,DB.Thm), ("FOREACH_ind",FOREACH_ind,DB.Thm),
   ("FOREACH_def",FOREACH_def,DB.Thm),
   ("BIND_LEFT_UNIT",BIND_LEFT_UNIT,DB.Thm),
   ("BIND_RIGHT_UNIT",BIND_RIGHT_UNIT,DB.Thm),
   ("BIND_ASSOC",BIND_ASSOC,DB.Thm), ("MMAP_ID",MMAP_ID,DB.Thm),
   ("MMAP_COMP",MMAP_COMP,DB.Thm), ("MMAP_UNIT",MMAP_UNIT,DB.Thm),
   ("MMAP_JOIN",MMAP_JOIN,DB.Thm), ("JOIN_UNIT",JOIN_UNIT,DB.Thm),
   ("JOIN_MMAP_UNIT",JOIN_MMAP_UNIT,DB.Thm),
   ("JOIN_MAP_JOIN",JOIN_MAP_JOIN,DB.Thm), ("JOIN_MAP",JOIN_MAP,DB.Thm),
   ("sequence_nil",sequence_nil,DB.Thm), ("mapM_nil",mapM_nil,DB.Thm),
   ("mapM_cons",mapM_cons,DB.Thm),
   ("ES_CHOICE_ASSOC",ES_CHOICE_ASSOC,DB.Thm),
   ("ES_CHOICE_FAIL_LID",ES_CHOICE_FAIL_LID,DB.Thm),
   ("ES_CHOICE_FAIL_RID",ES_CHOICE_FAIL_RID,DB.Thm),
   ("BIND_FAIL_L",BIND_FAIL_L,DB.Thm),
   ("BIND_ESGUARD",BIND_ESGUARD,DB.Thm),
   ("IGNORE_BIND_ESGUARD",IGNORE_BIND_ESGUARD,DB.Thm),
   ("IGNORE_BIND_FAIL",IGNORE_BIND_FAIL,DB.Thm),
   ("APPLY_UNIT",APPLY_UNIT,DB.Thm),
   ("APPLY_UNIT_UNIT",APPLY_UNIT_UNIT,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("listTheory.list_grammars",
                          listTheory.list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIT", (Term.prim_mk_const { Name = "UNIT", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIT", (Term.prim_mk_const { Name = "UNIT", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIND", (Term.prim_mk_const { Name = "BIND", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIND", (Term.prim_mk_const { Name = "BIND", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IGNORE_BIND", (Term.prim_mk_const { Name = "IGNORE_BIND", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IGNORE_BIND", (Term.prim_mk_const { Name = "IGNORE_BIND", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MMAP", (Term.prim_mk_const { Name = "MMAP", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MMAP", (Term.prim_mk_const { Name = "MMAP", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("JOIN", (Term.prim_mk_const { Name = "JOIN", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("JOIN", (Term.prim_mk_const { Name = "JOIN", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOR", (Term.prim_mk_const { Name = "FOR", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOR", (Term.prim_mk_const { Name = "FOR", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOREACH", (Term.prim_mk_const { Name = "FOREACH", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOREACH", (Term.prim_mk_const { Name = "FOREACH", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("READ", (Term.prim_mk_const { Name = "READ", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("READ", (Term.prim_mk_const { Name = "READ", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WRITE", (Term.prim_mk_const { Name = "WRITE", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WRITE", (Term.prim_mk_const { Name = "WRITE", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NARROW", (Term.prim_mk_const { Name = "NARROW", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NARROW", (Term.prim_mk_const { Name = "NARROW", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WIDEN", (Term.prim_mk_const { Name = "WIDEN", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WIDEN", (Term.prim_mk_const { Name = "WIDEN", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sequence", (Term.prim_mk_const { Name = "sequence", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sequence", (Term.prim_mk_const { Name = "sequence", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mapM", (Term.prim_mk_const { Name = "mapM", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mapM", (Term.prim_mk_const { Name = "mapM", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_FAIL", (Term.prim_mk_const { Name = "ES_FAIL", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_FAIL", (Term.prim_mk_const { Name = "ES_FAIL", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_CHOICE", (Term.prim_mk_const { Name = "ES_CHOICE", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_CHOICE", (Term.prim_mk_const { Name = "ES_CHOICE", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_GUARD", (Term.prim_mk_const { Name = "ES_GUARD", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_GUARD", (Term.prim_mk_const { Name = "ES_GUARD", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_APPLY", (Term.prim_mk_const { Name = "ES_APPLY", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_APPLY", (Term.prim_mk_const { Name = "ES_APPLY", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("APPLICATIVE_FAPPLY", (#2 (parse_from_grammars min_grammars)[QUOTE "(errorStateMonad$ES_APPLY :('a -> ((('b -> 'c, 'a) pair$prod) option$option)) -> ('a -> ((('b, 'a) pair$prod) option$option)) -> 'a -> ((('c, 'a) pair$prod) option$option))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_LIFT2", (Term.prim_mk_const { Name = "ES_LIFT2", Thy = "errorStateMonad"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ES_LIFT2", (Term.prim_mk_const { Name = "ES_LIFT2", Thy = "errorStateMonad"}))
  val errorStateMonad_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "errorStateMonad",
    thydataty = "simp",
    data =
        "errorStateMonad.BIND_LEFT_UNIT errorStateMonad.BIND_RIGHT_UNIT errorStateMonad.APPLY_UNIT_UNIT errorStateMonad.IGNORE_BIND_FAIL errorStateMonad.IGNORE_BIND_ESGUARD errorStateMonad.BIND_ESGUARD errorStateMonad.BIND_FAIL_L errorStateMonad.ES_CHOICE_FAIL_RID errorStateMonad.ES_CHOICE_FAIL_LID errorStateMonad.mapM_nil errorStateMonad.sequence_nil errorStateMonad.JOIN_MMAP_UNIT errorStateMonad.MMAP_ID"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "errorStateMonad",
    thydataty = "compute",
    data =
        "errorStateMonad.UNIT_DEF errorStateMonad.WIDEN_def errorStateMonad.ES_LIFT2_DEF errorStateMonad.ES_APPLY_DEF errorStateMonad.ES_GUARD_DEF errorStateMonad.ES_CHOICE_DEF errorStateMonad.ES_FAIL_DEF errorStateMonad.mapM_def errorStateMonad.sequence_def errorStateMonad.WRITE_def errorStateMonad.NARROW_def errorStateMonad.READ_def errorStateMonad.BIND_DEF errorStateMonad.FOREACH_def errorStateMonad.FOR_def errorStateMonad.JOIN_DEF errorStateMonad.MMAP_DEF errorStateMonad.IGNORE_BIND_DEF"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "errorStateMonad"
end
