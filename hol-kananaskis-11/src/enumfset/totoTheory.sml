structure totoTheory :> totoTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading totoTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open stringTheory wotTheory
  in end;
  val _ = Theory.link_parents
          ("toto",
          Arbnum.fromString "1488587912",
          Arbnum.fromString "619395")
          [("wot",
           Arbnum.fromString "1488587898",
           Arbnum.fromString "17166"),
           ("string",
           Arbnum.fromString "1488586780",
           Arbnum.fromString "545382")];
  val _ = Theory.incorporate_types "toto"
       [("toto", 1), ("num_dt", 0), ("cpn", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("toto", "num_dt"), ID("min", "fun"), ID("toto", "toto"),
   ID("min", "bool"), ID("list", "list"), ID("string", "char"),
   ID("num", "num"), ID("toto", "cpn"), ID("pair", "prod"),
   ID("ind_type", "recspace"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("bool", "ARB"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("string", "CHR"), ID("bool", "COND"),
   ID("list", "CONS"), ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("arithmetic", "DIV2"), ID("toto", "EQUAL"), ID("bool", "F"),
   ID("ind_type", "FCONS"), ID("pair", "FST"), ID("toto", "GREATER"),
   ID("combin", "I"), ID("toto", "LESS"), ID("pair", "LEX"),
   ID("relation", "LinearOrder"), ID("toto", "ListOrd"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("arithmetic", "ODD"),
   ID("bool", "ONE_ONE"), ID("string", "ORD"), ID("pair", "SND"),
   ID("relation", "STRORD"), ID("num", "SUC"),
   ID("relation", "StrongLinearOrder"),
   ID("toto", "StrongLinearOrder_of_TO"), ID("relation", "StrongOrder"),
   ID("bool", "T"), ID("toto", "TO"), ID("toto", "TO_inv"),
   ID("toto", "TO_of_LinearOrder"), ID("bool", "TYPE_DEFINITION"),
   ID("toto", "TotOrd"), ID("pair", "UNCURRY"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("relation", "WeakLinearOrder"),
   ID("toto", "WeakLinearOrder_of_TO"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("toto", "apto"), ID("toto", "bit1"),
   ID("toto", "bit2"), ID("toto", "charOrd"), ID("string", "char_lt"),
   ID("toto", "charto"), ID("toto", "cpn2num"), ID("toto", "cpn_CASE"),
   ID("toto", "cpn_size"), ID("toto", "imageOrd"), ID("relation", "inv"),
   ID("relation", "irreflexive"), ID("toto", "lexTO"),
   ID("toto", "lextoto"), ID("list", "list_CASE"), ID("toto", "listorder"),
   ID("toto", "listorder_tupled"), ID("toto", "listoto"),
   ID("toto", "num2cpn"), ID("toto", "numOrd"), ID("toto", "num_dtOrd"),
   ID("toto", "num_dtOrd_tupled"), ID("toto", "num_dt_CASE"),
   ID("toto", "num_dt_size"), ID("toto", "num_to_dt"), ID("toto", "numto"),
   ID("pair", "pair_CASE"), ID("toto", "qk_numOrd"),
   ID("toto", "qk_numto"), ID("toto", "stringto"), ID("toto", "toto_inv"),
   ID("toto", "toto_of_LinearOrder"), ID("relation", "transitive"),
   ID("relation", "trichotomous"), ID("toto", "zer"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYV "'a", TYOP [2, 1], TYOP [3], TYOP [1, 1, 3],
   TYOP [1, 1, 4], TYOP [1, 5, 2], TYOP [1, 2, 2], TYOP [5], TYOP [4, 8],
   TYOP [2, 9], TYOP [6], TYOP [2, 11], TYOP [7], TYOP [1, 11, 13],
   TYOP [1, 11, 14], TYOP [1, 11, 0], TYOP [1, 0, 11], TYOP [1, 0, 1],
   TYOP [1, 18, 1], TYOP [1, 18, 19], TYOP [1, 1, 20], TYOP [1, 0, 21],
   TYOP [8, 0, 0], TYOP [1, 23, 13], TYOP [1, 0, 13], TYOP [1, 0, 25],
   TYOP [4, 1], TYOP [2, 27], TYOP [1, 2, 28], TYOP [8, 27, 27],
   TYOP [8, 5, 30], TYOP [1, 31, 3], TYOP [1, 27, 3], TYOP [1, 27, 33],
   TYOP [1, 5, 34], TYV "'b", TYOP [8, 1, 36], TYOP [2, 37], TYOP [2, 36],
   TYOP [1, 39, 38], TYOP [1, 2, 40], TYOP [1, 37, 13], TYOP [1, 37, 42],
   TYOP [1, 36, 13], TYOP [1, 36, 44], TYOP [1, 45, 43], TYOP [1, 1, 13],
   TYOP [1, 1, 47], TYOP [1, 48, 46], TYV "'c", TYOP [1, 50, 13],
   TYOP [1, 50, 51], TYOP [1, 52, 48], TYOP [1, 1, 50], TYOP [1, 54, 53],
   TYOP [1, 13, 11], TYOP [1, 1, 1], TYOP [1, 1, 57], TYOP [1, 1, 58],
   TYOP [1, 13, 59], TYOP [2, 8], TYOP [1, 8, 13], TYOP [1, 8, 62],
   TYOP [1, 0, 0], TYOP [1, 2, 48], TYOP [1, 48, 5], TYOP [1, 48, 3],
   TYOP [1, 5, 48], TYOP [1, 48, 48], TYOP [1, 48, 2], TYOP [1, 27, 13],
   TYOP [1, 27, 71], TYOP [1, 2, 72], TYOP [9, 3], TYOP [1, 74, 3],
   TYOP [1, 13, 3], TYOP [1, 0, 3], TYOP [1, 0, 77], TYOP [1, 11, 3],
   TYOP [1, 11, 79], TYOP [1, 31, 32], TYOP [1, 23, 3], TYOP [1, 23, 82],
   TYOP [1, 36, 3], TYOP [1, 36, 84], TYOP [1, 13, 76], TYOP [1, 13, 86],
   TYV "'d", TYOP [1, 88, 50], TYOP [1, 13, 1], TYOP [1, 0, 57],
   TYOP [1, 64, 3], TYOP [1, 64, 92], TYOP [1, 0, 93], TYOP [1, 0, 74],
   TYOP [1, 4, 3], TYOP [1, 84, 3], TYOP [1, 8, 3], TYOP [1, 98, 3],
   TYOP [1, 76, 3], TYOP [1, 54, 3], TYOP [1, 101, 3], TYOP [1, 5, 3],
   TYOP [1, 103, 3], TYOP [1, 67, 3], TYOP [1, 85, 3], TYOP [1, 106, 3],
   TYOP [1, 45, 3], TYOP [1, 108, 3], TYOP [1, 52, 3], TYOP [1, 110, 3],
   TYOP [1, 89, 3], TYOP [1, 112, 3], TYOP [1, 100, 3], TYOP [1, 35, 3],
   TYOP [1, 115, 3], TYOP [1, 18, 3], TYOP [1, 117, 3], TYOP [1, 77, 3],
   TYOP [1, 119, 3], TYOP [1, 91, 3], TYOP [1, 121, 3], TYOP [1, 78, 3],
   TYOP [1, 123, 3], TYOP [1, 75, 3], TYOP [1, 125, 3], TYOP [1, 33, 3],
   TYOP [1, 79, 3], TYOP [1, 37, 3], TYOP [1, 129, 3], TYOP [1, 2, 3],
   TYOP [1, 131, 3], TYOP [1, 39, 3], TYOP [1, 133, 3], TYOP [1, 11, 11],
   TYOP [1, 11, 135], TYOP [1, 36, 37], TYOP [1, 1, 137], TYOP [1, 30, 31],
   TYOP [1, 5, 139], TYOP [1, 27, 30], TYOP [1, 27, 141], TYOP [1, 0, 23],
   TYOP [1, 0, 143], TYOP [1, 3, 3], TYOP [1, 3, 145], TYOP [1, 5, 103],
   TYOP [1, 48, 67], TYOP [1, 63, 3], TYOP [1, 63, 149], TYOP [1, 72, 3],
   TYOP [1, 72, 151], TYOP [1, 15, 3], TYOP [1, 15, 153], TYOP [1, 16, 3],
   TYOP [1, 16, 155], TYOP [1, 43, 3], TYOP [1, 43, 157], TYOP [1, 32, 3],
   TYOP [1, 32, 159], TYOP [1, 24, 3], TYOP [1, 24, 161],
   TYOP [1, 37, 129], TYOP [1, 74, 75], TYOP [1, 2, 131], TYOP [1, 61, 3],
   TYOP [1, 61, 166], TYOP [1, 28, 3], TYOP [1, 28, 168], TYOP [1, 10, 3],
   TYOP [1, 10, 170], TYOP [1, 12, 3], TYOP [1, 12, 172], TYOP [1, 38, 3],
   TYOP [1, 38, 174], TYOP [1, 90, 3], TYOP [1, 176, 3], TYOP [1, 56, 3],
   TYOP [1, 178, 3], TYOP [1, 95, 3], TYOP [1, 180, 3], TYOP [1, 65, 3],
   TYOP [1, 182, 3], TYOP [1, 80, 3], TYOP [1, 184, 80], TYOP [1, 81, 3],
   TYOP [1, 186, 81], TYOP [1, 83, 3], TYOP [1, 188, 83], TYOP [1, 11, 8],
   TYOP [1, 3, 58], TYOP [1, 3, 146], TYOP [1, 13, 13], TYOP [1, 13, 193],
   TYOP [1, 3, 194], TYOP [1, 0, 64], TYOP [1, 3, 196], TYOP [1, 27, 27],
   TYOP [1, 1, 198], TYOP [1, 11, 74], TYOP [1, 200, 74], TYOP [1, 3, 201],
   TYOP [1, 11, 202], TYOP [1, 200, 200], TYOP [1, 74, 204],
   TYOP [1, 37, 1], TYOP [1, 85, 163], TYOP [1, 5, 207], TYOP [1, 8, 11],
   TYOP [1, 37, 36], TYOP [1, 5, 5], TYOP [1, 34, 3], TYOP [1, 163, 3],
   TYOP [1, 45, 85], TYOP [1, 63, 61], TYOP [1, 72, 28], TYOP [1, 15, 12],
   TYOP [1, 43, 38], TYOP [1, 8, 98], TYOP [1, 219, 63], TYOP [1, 34, 72],
   TYOP [1, 80, 15], TYOP [1, 163, 43], TYOP [1, 67, 182],
   TYOP [1, 79, 178], TYOP [1, 75, 180], TYOP [1, 88, 13],
   TYOP [1, 88, 227], TYOP [1, 228, 3], TYOP [1, 1, 84],
   TYOP [1, 230, 129], TYOP [1, 16, 16], TYOP [1, 232, 16],
   TYOP [1, 80, 233], TYOP [1, 32, 32], TYOP [1, 235, 32],
   TYOP [1, 81, 236], TYOP [1, 24, 24], TYOP [1, 238, 24],
   TYOP [1, 83, 239], TYOP [1, 39, 45], TYOP [1, 61, 63], TYOP [1, 28, 72],
   TYOP [1, 12, 15], TYOP [1, 38, 43], TYOP [1, 13, 192],
   TYOP [1, 13, 194], TYOP [1, 13, 247], TYOP [1, 52, 228],
   TYOP [1, 89, 249], TYOP [1, 1, 33], TYOP [1, 251, 3], TYOP [1, 3, 252],
   TYOP [1, 27, 253], TYOP [1, 61, 10], TYOP [1, 25, 13],
   TYOP [1, 25, 256], TYOP [1, 13, 257], TYOP [1, 0, 258], TYOP [1, 30, 3],
   TYOP [1, 5, 260], TYOP [1, 261, 3], TYOP [1, 31, 262],
   TYOP [1, 30, 212], TYOP [1, 26, 13], TYOP [1, 23, 265]]
  end
  val _ = Theory.incorporate_consts "toto" tyvector
     [("zer", 0), ("toto_of_LinearOrder", 6), ("toto_inv", 7),
      ("stringto", 10), ("qk_numto", 12), ("qk_numOrd", 15), ("numto", 12),
      ("num_to_dt", 16), ("num_dt_size", 17), ("num_dt_CASE", 22),
      ("num_dtOrd_tupled", 24), ("num_dtOrd", 26), ("numOrd", 15),
      ("num2cpn", 14), ("listoto", 29), ("listorder_tupled", 32),
      ("listorder", 35), ("lextoto", 41), ("lexTO", 49), ("imageOrd", 55),
      ("cpn_size", 56), ("cpn_CASE", 60), ("cpn2num", 56), ("charto", 61),
      ("charOrd", 63), ("bit2", 64), ("bit1", 64), ("apto", 65),
      ("WeakLinearOrder_of_TO", 66), ("TotOrd", 67),
      ("TO_of_LinearOrder", 68), ("TO_inv", 69), ("TO", 70),
      ("StrongLinearOrder_of_TO", 66), ("ListOrd", 73), ("LESS", 13),
      ("GREATER", 13), ("EQUAL", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'num_dt'", 75), TMV("M", 13), TMV("M", 0), TMV("M'", 13),
   TMV("M'", 0), TMV("P", 76), TMV("P", 35), TMV("P", 77), TMV("P", 78),
   TMV("R", 5), TMV("R", 48), TMV("R", 80), TMV("R", 81), TMV("R", 83),
   TMV("U", 85), TMV("V", 5), TMV("V", 85), TMV("V", 45), TMV("Z", 5),
   TMV("a", 1), TMV("a", 8), TMV("a", 13), TMV("a", 11), TMV("a", 0),
   TMV("a", 31), TMV("a", 23), TMV("a", 74), TMV("a", 2), TMV("a'", 13),
   TMV("a'", 0), TMV("a0", 74), TMV("b", 1), TMV("b", 8), TMV("b", 11),
   TMV("c", 48), TMV("c", 37), TMV("c", 2), TMV("cmp", 2), TMV("cp", 52),
   TMV("cpn", 87), TMV("d", 37), TMV("f", 54), TMV("f", 89), TMV("f", 90),
   TMV("f", 18), TMV("f'", 18), TMV("f0", 1), TMV("f1", 18), TMV("f1", 91),
   TMV("f1'", 18), TMV("f2", 91), TMV("fn", 18), TMV("h", 1), TMV("l", 27),
   TMV("l'", 27), TMV("listorder_tupled", 32), TMV("m", 27), TMV("m", 11),
   TMV("n", 11), TMV("n", 0), TMV("nn", 0), TMV("num_dt", 94),
   TMV("num_dtOrd_tupled", 24), TMV("num_to_dt", 16), TMV("phi", 5),
   TMV("r", 1), TMV("r", 5), TMV("r", 48), TMV("r", 11), TMV("r'", 1),
   TMV("r'", 48), TMV("r'", 11), TMV("rep", 56), TMV("rep", 95),
   TMV("rep", 65), TMV("s", 1), TMV("u", 36), TMV("u'", 36), TMV("v", 1),
   TMV("v", 5), TMV("v", 0), TMV("v", 39), TMV("v'", 1), TMV("v0", 1),
   TMV("v0'", 1), TMV("v1", 1), TMV("v1", 27), TMV("v1", 0), TMV("v1", 30),
   TMV("v1'", 1), TMV("v2", 1), TMV("v2", 27), TMV("v2'", 1),
   TMV("v3", 27), TMV("x", 1), TMV("x", 13), TMV("x", 5), TMV("x", 48),
   TMV("x", 27), TMV("x", 11), TMV("x", 0), TMV("x", 37), TMV("x'", 0),
   TMV("x''", 0), TMV("x'''", 0), TMV("x0", 1), TMV("x1", 1),
   TMV("x1", 27), TMV("x1", 0), TMV("x2", 1), TMV("x2", 36), TMV("x2", 27),
   TMV("y", 1), TMV("y", 27), TMV("y", 11), TMV("y", 0), TMV("y", 37),
   TMV("y'", 0), TMV("y''", 0), TMV("y'''", 0), TMV("y1", 1),
   TMV("y2", 36), TMV("z", 1), TMC(10, 96), TMC(10, 97), TMC(10, 99),
   TMC(10, 100), TMC(10, 102), TMC(10, 104), TMC(10, 105), TMC(10, 107),
   TMC(10, 109), TMC(10, 111), TMC(10, 113), TMC(10, 114), TMC(10, 116),
   TMC(10, 118), TMC(10, 120), TMC(10, 122), TMC(10, 124), TMC(10, 126),
   TMC(10, 127), TMC(10, 128), TMC(10, 119), TMC(10, 130), TMC(10, 125),
   TMC(10, 132), TMC(10, 134), TMC(11, 136), TMC(12, 138), TMC(12, 140),
   TMC(12, 142), TMC(12, 144), TMC(13, 136), TMC(14, 146), TMC(15, 11),
   TMC(16, 80), TMC(17, 5), TMC(17, 85), TMC(17, 146), TMC(17, 86),
   TMC(17, 147), TMC(17, 148), TMC(17, 150), TMC(17, 152), TMC(17, 154),
   TMC(17, 156), TMC(17, 158), TMC(17, 160), TMC(17, 162), TMC(17, 80),
   TMC(17, 78), TMC(17, 163), TMC(17, 164), TMC(17, 165), TMC(17, 167),
   TMC(17, 169), TMC(17, 171), TMC(17, 173), TMC(17, 175), TMC(18, 146),
   TMC(19, 100), TMC(19, 104), TMC(19, 105), TMC(19, 177), TMC(19, 179),
   TMC(19, 118), TMC(19, 181), TMC(19, 183), TMC(19, 128), TMC(19, 119),
   TMC(19, 125), TMC(19, 132), TMC(20, 185), TMC(20, 187), TMC(20, 189),
   TMC(21, 3), TMC(22, 135), TMC(23, 135), TMC(24, 74), TMC(25, 190),
   TMC(26, 191), TMC(26, 192), TMC(26, 195), TMC(26, 197), TMC(27, 199),
   TMC(28, 203), TMC(29, 145), TMC(30, 135), TMC(31, 13), TMC(32, 3),
   TMC(33, 205), TMC(34, 206), TMC(35, 13), TMC(36, 145), TMC(36, 193),
   TMC(36, 64), TMC(37, 13), TMC(38, 208), TMC(39, 103), TMC(40, 73),
   TMC(41, 27), TMC(42, 135), TMC(43, 79), TMC(44, 112), TMC(45, 209),
   TMC(46, 210), TMC(47, 211), TMC(48, 135), TMC(49, 103), TMC(49, 106),
   TMC(49, 212), TMC(49, 184), TMC(49, 213), TMC(50, 66), TMC(50, 214),
   TMC(51, 103), TMC(52, 3), TMC(53, 70), TMC(53, 215), TMC(53, 216),
   TMC(53, 217), TMC(53, 218), TMC(54, 69), TMC(55, 68), TMC(55, 220),
   TMC(55, 221), TMC(55, 222), TMC(55, 223), TMC(56, 224), TMC(56, 225),
   TMC(56, 226), TMC(57, 67), TMC(57, 108), TMC(57, 110), TMC(57, 229),
   TMC(57, 149), TMC(57, 151), TMC(57, 153), TMC(57, 157), TMC(58, 231),
   TMC(59, 184), TMC(59, 186), TMC(59, 188), TMC(60, 234), TMC(60, 237),
   TMC(60, 240), TMC(61, 103), TMC(62, 66), TMC(63, 11), TMC(64, 146),
   TMC(65, 65), TMC(65, 241), TMC(65, 242), TMC(65, 243), TMC(65, 244),
   TMC(65, 245), TMC(66, 64), TMC(67, 64), TMC(68, 63), TMC(69, 219),
   TMC(70, 61), TMC(71, 56), TMC(72, 60), TMC(72, 246), TMC(72, 248),
   TMC(73, 56), TMC(74, 55), TMC(74, 250), TMC(75, 211), TMC(76, 103),
   TMC(77, 49), TMC(78, 41), TMC(79, 254), TMC(80, 35), TMC(81, 32),
   TMC(82, 29), TMC(82, 255), TMC(83, 14), TMC(84, 15), TMC(85, 26),
   TMC(86, 24), TMC(87, 22), TMC(87, 259), TMC(88, 17), TMC(89, 16),
   TMC(90, 12), TMC(91, 263), TMC(91, 264), TMC(91, 266), TMC(92, 15),
   TMC(93, 12), TMC(94, 10), TMC(95, 7), TMC(96, 6), TMC(97, 103),
   TMC(98, 103), TMC(99, 0), TMC(100, 145)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op cpn_TY_DEF x = x
    val op cpn_TY_DEF =
    DT(((("toto",1),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
       [read"%185%72%250%58%156$0@%222%197%197%269@@@@|@$0@|@"])
  fun op cpn_BIJ x = x
    val op cpn_BIJ =
    DT(((("toto",2),[("bool",[117]),("toto",[1])]),["DISK_THM"]),
       [read"%154%126%21%160%298%282$0@@@$0@|@@%142%68%159%58%156$0@%222%197%197%269@@@@|$0@@%170%282%298$0@@@$0@@|@@"])



  fun op cpn_size_def x = x
    val op cpn_size_def =
    DT(((("toto",15),[]),[]), [read"%126%95%170%286$0@@%155@|@"])
  fun op cpn_CASE x = x
    val op cpn_CASE =
    DT(((("toto",16),[]),[]),
       [read"%126%95%123%83%123%85%123%90%157%283$3@$2@$1@$0@@%57%201%156$0@%222%197%269@@@@$3@%201%170$0@%222%197%269@@@@$2@$1@@|%282$3@@@|@|@|@|@"])
  fun op TotOrd x = x
    val op TotOrd =
    DT(((("toto",24),[]),[]),
       [read"%129%34%159%252$0@@%154%123%94%123%112%159%160$2$1@$0@@%209@@%157$1@$0@@|@|@@%154%123%94%123%112%159%160$2$1@$0@@%213@@%160$2$0@$1@@%217@@|@|@@%123%94%123%112%123%122%180%154%160$3$2@$1@@%217@@%160$3$1@$0@@%217@@@%160$3$2@$0@@%217@@|@|@|@@@@|@"])
  fun op TO_of_LinearOrder x = x
    val op TO_of_LinearOrder =
    DT(((("toto",25),[]),[]),
       [read"%128%66%123%94%123%112%160%244$2@$1@$0@@%203%157$1@$0@@%209@%203$2$1@$0@@%217@%213@@@|@|@|@"])
  fun op toto_TY_DEF x = x
    val op toto_TY_DEF =
    DT(((("toto",31),[("toto",[30])]),["DISK_THM"]),
       [read"%188%74%249%252@$0@|@"])
  fun op to_bij x = x
    val op to_bij =
    DT(((("toto",32),[("bool",[117]),("toto",[31])]),["DISK_THM"]),
       [read"%154%146%27%174%238%271$0@@@$0@|@@%129%67%159%252$0@@%162%271%238$0@@@$0@@|@@"])
  fun op WeakLinearOrder_of_TO x = x
    val op WeakLinearOrder_of_TO =
    DT(((("toto",63),[]),[]),
       [read"%129%34%123%94%123%112%159%268$2@$1@$0@@%284$2$1@$0@@%237@%237@%210@@|@|@|@"])
  fun op StrongLinearOrder_of_TO x = x
    val op StrongLinearOrder_of_TO =
    DT(((("toto",64),[]),[]),
       [read"%129%34%123%94%123%112%159%234$2@$1@$0@@%284$2$1@$0@@%237@%210@%210@@|@|@|@"])
  fun op toto_of_LinearOrder x = x
    val op toto_of_LinearOrder =
    DT(((("toto",65),[]),[]), [read"%128%66%174%314$0@@%238%244$0@@@|@"])
  fun op TO_inv x = x
    val op TO_inv =
    DT(((("toto",77),[]),[]),
       [read"%129%34%123%94%123%112%160%243$2@$1@$0@@$2$0@$1@@|@|@|@"])
  fun op toto_inv x = x
    val op toto_inv =
    DT(((("toto",79),[]),[]),
       [read"%146%36%174%313$0@@%238%243%271$0@@@@|@"])
  fun op lexTO x = x
    val op lexTO =
    DT(((("toto",94),[]),[]),
       [read"%129%10%131%17%167%291$1@$0@@%248%218%234$1@@%235$0@@@@|@|@"])
  fun op lextoto x = x
    val op lextoto =
    DT(((("toto",95),[]),[]),
       [read"%146%36%147%81%179%292$1@$0@@%242%291%271$1@@%272$0@@@@|@|@"])
  fun op numOrd x = x
    val op numOrd = DT(((("toto",102),[]),[]), [read"%165%299@%247%156@@"])
  fun op numto x = x
    val op numto = DT(((("toto",104),[]),[]), [read"%178%306@%241%299@@"])
  fun op num_dt_TY_DEF x = x
    val op num_dt_TY_DEF =
    DT(((("toto",107),[("bool",[14,25,26,53,132,133,138])]),["DISK_THM"]),
       [read"%187%73%251%30%140%0%180%145%30%180%270%173$0@%206%155@%196@%58%199|@@@%270%191%26%154%173$1@%26%206%228%155@@%196@%211$0@%58%199|@@|$0@@@$2$0@@|@@%191%26%154%173$1@%26%206%228%228%155@@@%196@%211$0@%58%199|@@|$0@@@$2$0@@|@@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op num_dt_case_def x = x
    val op num_dt_case_def =
    DT(((("toto",115),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%154%123%78%136%44%136%47%157%302%317@$2@$1@$0@@$2@|@|@|@@%154%143%23%123%78%136%44%136%47%157%302%277$3@@$2@$1@$0@@$1$3@@|@|@|@|@@%143%23%123%78%136%44%136%47%157%302%278$3@@$2@$1@$0@@$0$3@@|@|@|@|@@@"])
  fun op num_dt_size_def x = x
    val op num_dt_size_def =
    DT(((("toto",116),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%154%170%304%317@@%155@@%154%143%23%170%304%277$0@@@%148%222%197%269@@@%304$0@@@|@@%143%23%170%304%278$0@@@%148%222%197%269@@@%304$0@@@|@@@"])
  fun op num_to_dt_primitive x = x
    val op num_to_dt_primitive =
    DT(((("toto",124),[]),[]),
       [read"%166%305@%264%193%11%154%261$0@@%154%142%58%180%154%318%170$0@%155@@@%223$0@@@$1%208%153$0@%222%197%269@@@@@$0@@|@@%142%58%180%154%318%170$0@%155@@@%318%223$0@@@@$1%208%153$0@%222%198%269@@@@@$0@@|@@@|@@%63%58%216%204%170$0@%155@@%317@%204%223$0@@%277$1%208%153$0@%222%197%269@@@@@@@%278$1%208%153$0@%222%198%269@@@@@@@@@||@@"])
  fun op num_dtOrd_tupled_primitive x = x
    val op num_dtOrd_tupled_primitive =
    DT(((("toto",125),[]),[]),
       [read"%169%301@%266%195%13%154%263$0@@%154%143%115%143%100$2%152$0@$1@@%152%277$0@@%277$1@@@|@|@@%143%115%143%100$2%152$0@$1@@%152%278$0@@%278$1@@@|@|@@@|@@%62%25%309$0@%80%87%303$1@%303$0@%215%209@@%100%215%217@|@%102%215%217@|@@%103%303$1@%215%213@@%118%215$5%152$1@$0@@@|@%115%215%217@|@|@%104%303$1@%215%213@@%117%215%213@|@%119%215$5%152$1@$0@@@|@|@||@||@@"])
  fun op num_dtOrd_curried x = x
    val op num_dtOrd_curried =
    DT(((("toto",126),[]),[]),
       [read"%143%100%143%108%160%300$1@$0@@%301%152$1@$0@@@|@|@"])
  fun op qk_numOrd_def x = x
    val op qk_numOrd_def =
    DT(((("toto",129),[]),[]),
       [read"%142%57%142%58%160%310$1@$0@@%300%305$1@@%305$0@@@|@|@"])
  fun op qk_numto x = x
    val op qk_numto =
    DT(((("toto",132),[]),[]), [read"%178%311@%241%310@@"])
  fun op charOrd x = x
    val op charOrd =
    DT(((("toto",134),[]),[]),
       [read"%125%20%125%32%160%279$1@$0@@%299%225$1@@%225$0@@@|@|@"])
  fun op charto x = x
    val op charto = DT(((("toto",135),[]),[]), [read"%175%281@%239%279@@"])
  fun op listorder_tupled_primitive x = x
    val op listorder_tupled_primitive =
    DT(((("toto",142),[]),[]),
       [read"%168%295@%265%194%12%154%262$0@@%123%75%123%65%141%56%141%53%128%15$5%150$0@%151$1@$2@@@%150$0@%151%205$3@$1@@%205$4@$2@@@@|@|@|@|@|@@|@@%55%24%307$0@%15%88%308$0@%53%93%293$0@%214%210@@%75%56%293$3@%214%237@@%65%54%214%270$7$1@$3@@%154%157$1@$3@@$9%150$7@%151$0@$2@@@@@@||@||@||@||@||@@"])
  fun op listorder_curried x = x
    val op listorder_curried =
    DT(((("toto",143),[]),[]),
       [read"%128%96%141%107%141%111%159%294$2@$1@$0@@%295%150$2@%151$1@$0@@@@|@|@|@"])
  fun op ListOrd x = x
    val op ListOrd =
    DT(((("toto",147),[]),[]),
       [read"%146%36%164%220$0@@%246%294%234%271$0@@@@@|@"])
  fun op listoto x = x
    val op listoto =
    DT(((("toto",150),[]),[]), [read"%146%36%176%296$0@@%240%220$0@@@|@"])
  fun op stringto x = x
    val op stringto =
    DT(((("toto",152),[]),[]), [read"%177%312@%297%281@@"])
  fun op imageOrd x = x
    val op imageOrd =
    DT(((("toto",153),[]),[]),
       [read"%127%41%132%38%123%19%123%31%160%287$3@$2@$1@$0@@$2$3$1@@$3$0@@@|@|@|@|@"])
  fun op StrongLinearOrderExists x = x
    val op StrongLinearOrderExists =
    DT(((("toto",0),
        [("bool",[2,25,26,53,54,63]),("sat",[1,3,7,17,18]),
         ("wot",[17])]),["DISK_THM"]), [read"%182%9%229$0@|@"])
  fun op num2cpn_cpn2num x = x
    val op num2cpn_cpn2num =
    DT(((("toto",3),[("toto",[2])]),["DISK_THM"]),
       [read"%126%21%160%298%282$0@@@$0@|@"])
  fun op cpn2num_num2cpn x = x
    val op cpn2num_num2cpn =
    DT(((("toto",4),[("toto",[2])]),["DISK_THM"]),
       [read"%142%68%159%156$0@%222%197%197%269@@@@@%170%282%298$0@@@$0@@|@"])
  fun op num2cpn_11 x = x
    val op num2cpn_11 =
    DT(((("toto",5),[("bool",[26]),("toto",[2])]),["DISK_THM"]),
       [read"%142%68%142%71%180%156$1@%222%197%197%269@@@@@%180%156$0@%222%197%197%269@@@@@%159%160%298$1@@%298$0@@@%170$1@$0@@@@|@|@"])
  fun op cpn2num_11 x = x
    val op cpn2num_11 =
    DT(((("toto",6),[("bool",[26]),("toto",[2])]),["DISK_THM"]),
       [read"%126%21%126%28%159%170%282$1@@%282$0@@@%160$1@$0@@|@|@"])
  fun op num2cpn_ONTO x = x
    val op num2cpn_ONTO =
    DT(((("toto",7),[("bool",[25,63]),("toto",[2])]),["DISK_THM"]),
       [read"%126%21%189%68%154%160$1@%298$0@@@%156$0@%222%197%197%269@@@@@|@|@"])
  fun op cpn2num_ONTO x = x
    val op cpn2num_ONTO =
    DT(((("toto",8),[("bool",[26]),("toto",[2])]),["DISK_THM"]),
       [read"%142%68%159%156$0@%222%197%197%269@@@@@%181%21%170$1@%282$0@@|@@|@"])
  fun op num2cpn_thm x = x
    val op num2cpn_thm =
    DT(((("toto",12),[("toto",[9,10,11])]),[]),
       [read"%154%160%298%155@@%217@@%154%160%298%222%197%269@@@@%209@@%160%298%222%198%269@@@@%213@@@"])
  fun op cpn2num_thm x = x
    val op cpn2num_thm =
    DT(((("toto",13),
        [("bool",[25]),("numeral",[3,7]),
         ("toto",[4,9,10,11])]),["DISK_THM"]),
       [read"%154%170%282%217@@%155@@%154%170%282%209@@%222%197%269@@@@%170%282%213@@%222%198%269@@@@@"])
  fun op cpn_EQ_cpn x = x
    val op cpn_EQ_cpn =
    DT(((("toto",14),[("bool",[58]),("toto",[6])]),["DISK_THM"]),
       [read"%126%21%126%28%159%160$1@$0@@%170%282$1@@%282$0@@@|@|@"])
  fun op cpn_case_def x = x
    val op cpn_case_def =
    DT(((("toto",17),
        [("bool",[56,64]),("numeral",[3,6,7]),
         ("toto",[13,16])]),["DISK_THM"]),
       [read"%154%123%83%123%85%123%90%157%283%217@$2@$1@$0@@$2@|@|@|@@%154%123%83%123%85%123%90%157%283%209@$2@$1@$0@@$1@|@|@|@@%123%83%123%85%123%90%157%283%213@$2@$1@$0@@$0@|@|@|@@@"])
  fun op datatype_cpn x = x
    val op datatype_cpn =
    DT(((("toto",18),[("bool",[25,171])]),["DISK_THM"]),
       [read"%207%39%217@%209@%213@@"])
  fun op cpn_distinct x = x
    val op cpn_distinct =
    DT(((("toto",19),[("numeral",[3,6]),("toto",[13,14])]),["DISK_THM"]),
       [read"%154%318%160%217@%209@@@%154%318%160%217@%213@@@%318%160%209@%213@@@@"])
  fun op cpn_case_cong x = x
    val op cpn_case_cong =
    DT(((("toto",20),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17])]),["DISK_THM"]),
       [read"%126%1%126%3%123%83%123%85%123%90%180%154%160$4@$3@@%154%180%160$3@%217@@%157$2@%84@@@%154%180%160$3@%209@@%157$1@%89@@@%180%160$3@%213@@%157$0@%92@@@@@@%157%283$4@$2@$1@$0@@%283$3@%84@%89@%92@@@|@|@|@|@|@"])
  fun op cpn_nchotomy x = x
    val op cpn_nchotomy =
    DT(((("toto",21),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11])]),["DISK_THM"]),
       [read"%126%21%270%160$0@%217@@%270%160$0@%209@@%160$0@%213@@@|@"])
  fun op cpn_Axiom x = x
    val op cpn_Axiom =
    DT(((("toto",22),
        [("bool",[8,14,25,54,56,64]),("numeral",[3,8]),
         ("toto",[13])]),["DISK_THM"]),
       [read"%123%105%123%106%123%109%184%43%154%157$0%217@@$3@@%154%157$0%209@@$2@@%157$0%213@@$1@@@|@|@|@|@"])
  fun op cpn_induction x = x
    val op cpn_induction =
    DT(((("toto",23),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11])]),["DISK_THM"]),
       [read"%134%5%180%154$0%209@@%154$0%213@@$0%217@@@@%126%21$1$0@|@@|@"])
  fun op trichotomous_ALT x = x
    val op trichotomous_ALT =
    DT(((("toto",26),
        [("bool",[25,36,54,56,58,93,96,101]),
         ("relation",[7])]),["DISK_THM"]),
       [read"%128%9%159%316$0@@%123%94%123%112%180%154%318$2$1@$0@@@%318$2$0@$1@@@@%157$1@$0@@|@|@@|@"])
  fun op TotOrd_TO_of_LO x = x
    val op TotOrd_TO_of_LO =
    DT(((("toto",27),
        [("bool",[25,26,51,52,53,54,55,56,58,63,99,105,108,109,124]),
         ("relation",[0,4,179,204]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("toto",[19,24,25,26])]),["DISK_THM"]),
       [read"%128%66%180%219$0@@%252%244$0@@@|@"])
  fun op SPLIT_PAIRS x = x
    val op SPLIT_PAIRS =
    DT(((("toto",28),[("bool",[25,56,58]),("pair",[3,7])]),["DISK_THM"]),
       [read"%144%101%144%116%159%172$1@$0@@%154%157%212$1@@%212$0@@@%158%226$1@@%226$0@@@@|@|@"])
  fun op all_cpn_distinct x = x
    val op all_cpn_distinct =
    DT(((("toto",29),[("bool",[58]),("toto",[19])]),["DISK_THM"]),
       [read"%154%154%318%160%217@%209@@@%154%318%160%217@%213@@@%318%160%209@%213@@@@@%154%318%160%209@%217@@@%154%318%160%213@%217@@@%318%160%213@%209@@@@@"])
  fun op TO_exists x = x
    val op TO_exists =
    DT(((("toto",30),
        [("bool",[25,53,54,63,99]),("relation",[183,204,205]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("toto",[0,27])]),["DISK_THM"]), [read"%183%97%252$0@|@"])
  fun op TO_apto_ID x = x
    val op TO_apto_ID =
    DT(((("toto",33),[("toto",[32])]),["DISK_THM"]),
       [read"%146%27%174%238%271$0@@@$0@|@"])
  fun op TO_apto_TO_ID x = x
    val op TO_apto_TO_ID =
    DT(((("toto",34),[("toto",[32])]),["DISK_THM"]),
       [read"%129%67%159%252$0@@%162%271%238$0@@@$0@@|@"])
  fun op TO_11 x = x
    val op TO_11 =
    DT(((("toto",35),[("bool",[26]),("toto",[32])]),["DISK_THM"]),
       [read"%129%67%129%70%180%252$1@@%180%252$0@@%159%174%238$1@@%238$0@@@%162$1@$0@@@@|@|@"])
  fun op onto_apto x = x
    val op onto_apto =
    DT(((("toto",36),[("bool",[26]),("toto",[32])]),["DISK_THM"]),
       [read"%129%67%159%252$0@@%192%27%162$1@%271$0@@|@@|@"])
  fun op TO_onto x = x
    val op TO_onto =
    DT(((("toto",37),[("bool",[25,63]),("toto",[32])]),["DISK_THM"]),
       [read"%146%27%183%67%154%174$1@%238$0@@@%252$0@@|@|@"])
  fun op TotOrd_apto x = x
    val op TotOrd_apto =
    DT(((("toto",38),[("bool",[106]),("toto",[36])]),["DISK_THM"]),
       [read"%146%36%252%271$0@@|@"])
  fun op TO_apto_TO_IMP x = x
    val op TO_apto_TO_IMP =
    DT(((("toto",39),[("toto",[34])]),["DISK_THM"]),
       [read"%129%67%180%252$0@@%162%271%238$0@@@$0@@|@"])
  fun op toto_thm x = x
    val op toto_thm =
    DT(((("toto",40),[("toto",[24,38])]),["DISK_THM"]),
       [read"%146%36%154%123%94%123%112%159%160%271$2@$1@$0@@%209@@%157$1@$0@@|@|@@%154%123%94%123%112%159%160%271$2@$1@$0@@%213@@%160%271$2@$0@$1@@%217@@|@|@@%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@@@|@"])
  fun op TO_equal_eq x = x
    val op TO_equal_eq =
    DT(((("toto",41),[("toto",[24])]),[]),
       [read"%129%34%180%252$0@@%123%94%123%112%159%160$2$1@$0@@%209@@%157$1@$0@@|@|@@|@"])
  fun op toto_equal_eq x = x
    val op toto_equal_eq =
    DT(((("toto",42),[("bool",[25,36,56]),("toto",[40])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%159%160%271$2@$1@$0@@%209@@%157$1@$0@@|@|@|@"])
  fun op toto_equal_imp_eq x = x
    val op toto_equal_imp_eq =
    DT(((("toto",43),[("bool",[25,36,53]),("toto",[42])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%180%160%271$2@$1@$0@@%209@@%157$1@$0@@|@|@|@"])
  fun op TO_refl x = x
    val op TO_refl =
    DT(((("toto",44),[("toto",[41])]),[]),
       [read"%129%34%180%252$0@@%123%94%160$1$0@$0@@%209@|@@|@"])
  fun op toto_refl x = x
    val op toto_refl =
    DT(((("toto",45),[("bool",[25,36,56]),("toto",[40])]),["DISK_THM"]),
       [read"%146%36%123%94%160%271$1@$0@$0@@%209@|@|@"])
  fun op toto_equal_sym x = x
    val op toto_equal_sym =
    DT(((("toto",46),[("bool",[36,58]),("toto",[42])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%159%160%271$2@$1@$0@@%209@@%160%271$2@$0@$1@@%209@@|@|@|@"])
  fun op TO_antisym x = x
    val op TO_antisym =
    DT(((("toto",47),[("toto",[24])]),[]),
       [read"%129%34%180%252$0@@%123%94%123%112%159%160$2$1@$0@@%213@@%160$2$0@$1@@%217@@|@|@@|@"])
  fun op toto_antisym x = x
    val op toto_antisym =
    DT(((("toto",48),[("bool",[25,36,56]),("toto",[40])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%159%160%271$2@$1@$0@@%213@@%160%271$2@$0@$1@@%217@@|@|@|@"])
  fun op toto_not_less_refl x = x
    val op toto_not_less_refl =
    DT(((("toto",49),
        [("bool",[25,26,27,54,58,63]),("numeral",[3,6]),
         ("toto",[13,14,45])]),["DISK_THM"]),
       [read"%146%37%123%52%159%160%271$1@$0@$0@@%217@@%210@|@|@"])
  fun op toto_swap_cases x = x
    val op toto_swap_cases =
    DT(((("toto",50),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,46,48])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%160%271$2@$0@$1@@%285%271$2@$1@$0@@%213@%209@%217@@|@|@|@"])
  fun op toto_glneq x = x
    val op toto_glneq =
    DT(((("toto",51),
        [("bool",[25,26,27,54]),("toto",[29,42])]),["DISK_THM"]),
       [read"%154%146%36%123%94%123%112%180%160%271$2@$1@$0@@%217@@%318%157$1@$0@@@|@|@|@@%146%36%123%94%123%112%180%160%271$2@$1@$0@@%213@@%318%157$1@$0@@@|@|@|@@"])
  fun op toto_cpn_eqn x = x
    val op toto_cpn_eqn =
    DT(((("toto",52),[("toto",[43,51])]),["DISK_THM"]),
       [read"%154%146%36%123%94%123%112%180%160%271$2@$1@$0@@%209@@%157$1@$0@@|@|@|@@%154%146%36%123%94%123%112%180%160%271$2@$1@$0@@%217@@%318%157$1@$0@@@|@|@|@@%146%36%123%94%123%112%180%160%271$2@$1@$0@@%213@@%318%157$1@$0@@@|@|@|@@@"])
  fun op TO_cpn_eqn x = x
    val op TO_cpn_eqn =
    DT(((("toto",53),
        [("bool",[25,26,27,54,56]),("toto",[29,41])]),["DISK_THM"]),
       [read"%129%34%180%252$0@@%154%123%94%123%112%180%160$2$1@$0@@%217@@%318%157$1@$0@@@|@|@@%154%123%94%123%112%180%160$2$1@$0@@%213@@%318%157$1@$0@@@|@|@@%123%94%123%112%180%160$2$1@$0@@%209@@%157$1@$0@@|@|@@@@|@"])
  fun op NOT_EQ_LESS_IMP x = x
    val op NOT_EQ_LESS_IMP =
    DT(((("toto",54),
        [("bool",[25,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[21,42,48])]),["DISK_THM"]),
       [read"%146%37%123%94%123%112%180%318%160%271$2@$1@$0@@%217@@@%270%157$1@$0@@%160%271$2@$0@$1@@%217@@@|@|@|@"])
  fun op totoEEtrans x = x
    val op totoEEtrans =
    DT(((("toto",55),[("bool",[25,56]),("toto",[42])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%154%180%154%160%271$3@$2@$1@@%209@@%160%271$3@$1@$0@@%209@@@%160%271$3@$2@$0@@%209@@@%180%154%160%271$3@$2@$1@@%209@@%160%271$3@$0@$1@@%209@@@%160%271$3@$2@$0@@%209@@@|@|@|@|@"])
  fun op totoLLtrans x = x
    val op totoLLtrans =
    DT(((("toto",56),[("bool",[25,36,63]),("toto",[40])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@|@"])
  fun op totoLGtrans x = x
    val op totoLGtrans =
    DT(((("toto",57),[("toto",[48,56])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$0@$1@@%213@@@%160%271$3@$2@$0@@%217@@|@|@|@|@"])
  fun op totoGGtrans x = x
    val op totoGGtrans =
    DT(((("toto",58),[("toto",[48,56])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%180%154%160%271$3@$1@$2@@%213@@%160%271$3@$0@$1@@%213@@@%160%271$3@$2@$0@@%217@@|@|@|@|@"])
  fun op totoGLtrans x = x
    val op totoGLtrans =
    DT(((("toto",59),[("toto",[48,56])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%180%154%160%271$3@$1@$2@@%213@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@|@"])
  fun op totoLEtrans x = x
    val op totoLEtrans =
    DT(((("toto",60),[("bool",[25,56,58]),("toto",[42])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$1@$0@@%209@@@%160%271$3@$2@$0@@%217@@|@|@|@|@"])
  fun op totoELtrans x = x
    val op totoELtrans =
    DT(((("toto",61),[("bool",[25,56]),("toto",[42])]),["DISK_THM"]),
       [read"%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%209@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@|@"])
  fun op toto_trans_less x = x
    val op toto_trans_less =
    DT(((("toto",62),[("toto",[56,57,58,59,60,61])]),["DISK_THM"]),
       [read"%154%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@|@@%154%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$0@$1@@%213@@@%160%271$3@$2@$0@@%217@@|@|@|@|@@%154%146%36%123%94%123%112%123%122%180%154%160%271$3@$1@$2@@%213@@%160%271$3@$0@$1@@%213@@@%160%271$3@$2@$0@@%217@@|@|@|@|@@%154%146%36%123%94%123%112%123%122%180%154%160%271$3@$1@$2@@%213@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@|@@%154%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%217@@%160%271$3@$1@$0@@%209@@@%160%271$3@$2@$0@@%217@@|@|@|@|@@%146%36%123%94%123%112%123%122%180%154%160%271$3@$2@$1@@%209@@%160%271$3@$1@$0@@%217@@@%160%271$3@$2@$0@@%217@@|@|@|@|@@@@@@"])
  fun op Weak_Weak_of x = x
    val op Weak_Weak_of =
    DT(((("toto",66),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("relation",[0,1,4,7,180,206]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,42,45,46,48,56,60,61,63])]),["DISK_THM"]),
       [read"%146%36%267%268%271$0@@@|@"])
  fun op STRORD_SLO x = x
    val op STRORD_SLO =
    DT(((("toto",67),
        [("bool",[25,51,53,54,58,63,105,124]),
         ("relation",[184,194,202,205,206]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%128%9%180%267$0@@%229%227$0@@@|@"])
  fun op Strongof_toto_STRORD x = x
    val op Strongof_toto_STRORD =
    DT(((("toto",68),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,26,27,32,36,43,51,52,54,56,58,63,64,93,96,101,104,105,
          107]),("numeral",[3,5,6,7,8,15,16,17]),("relation",[190]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,19,42,63,64])]),["DISK_THM"]),
       [read"%146%36%161%234%271$0@@@%227%268%271$0@@@@|@"])
  fun op Strong_Strong_of x = x
    val op Strong_Strong_of =
    DT(((("toto",69),[("toto",[66,67,68])]),["DISK_THM"]),
       [read"%146%36%229%234%271$0@@@|@"])
  fun op Strong_Strong_of_TO x = x
    val op Strong_Strong_of_TO =
    DT(((("toto",70),[("bool",[58]),("toto",[39,69])]),["DISK_THM"]),
       [read"%129%34%180%252$0@@%229%234$0@@@|@"])
  fun op TotOrd_TO_of_Weak x = x
    val op TotOrd_TO_of_Weak =
    DT(((("toto",71),
        [("bool",[51,63]),("relation",[184,204,206]),
         ("toto",[27])]),["DISK_THM"]),
       [read"%128%66%180%267$0@@%252%244$0@@@|@"])
  fun op TotOrd_TO_of_Strong x = x
    val op TotOrd_TO_of_Strong =
    DT(((("toto",72),
        [("bool",[51,63]),("relation",[183,204,205]),
         ("toto",[27])]),["DISK_THM"]),
       [read"%128%66%180%229$0@@%252%244$0@@@|@"])
  fun op toto_Weak_thm x = x
    val op toto_Weak_thm =
    DT(((("toto",73),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,26,27,30,32,36,43,48,51,52,54,56,58,63,64,93,96,101,104,
          105,107]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,25,33,42,45,63,65])]),["DISK_THM"]),
       [read"%146%36%174%314%268%271$0@@@@$0@|@"])
  fun op toto_Strong_thm x = x
    val op toto_Strong_thm =
    DT(((("toto",74),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,26,27,30,32,36,43,48,51,52,54,56,58,63,64,93,96,101,104,
          105,107]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,25,33,42,45,64,65])]),["DISK_THM"]),
       [read"%146%36%174%314%234%271$0@@@@$0@|@"])
  fun op Weak_toto_thm x = x
    val op Weak_toto_thm =
    DT(((("toto",75),
        [("bool",[14,25,26,27,30,54,56,63,64]),("relation",[1,180,206]),
         ("toto",[17,25,39,63,65,71])]),["DISK_THM"]),
       [read"%128%66%180%267$0@@%161%268%271%314$0@@@@$0@@|@"])
  fun op Strong_toto_thm x = x
    val op Strong_toto_thm =
    DT(((("toto",76),
        [("bool",[14,25,26,27,30,54,56,63,64]),("relation",[2,181,205]),
         ("toto",[17,25,39,64,65,72])]),["DISK_THM"]),
       [read"%128%66%180%229$0@@%161%234%271%314$0@@@@$0@@|@"])
  fun op TotOrd_inv x = x
    val op TotOrd_inv =
    DT(((("toto",78),[("bool",[25,56,58]),("toto",[24,77])]),["DISK_THM"]),
       [read"%129%34%180%252$0@@%252%243$0@@@|@"])
  fun op inv_TO x = x
    val op inv_TO =
    DT(((("toto",80),[("bool",[25,56]),("toto",[39,79])]),["DISK_THM"]),
       [read"%129%67%180%252$0@@%174%313%238$0@@@%238%243$0@@@@|@"])
  fun op apto_inv x = x
    val op apto_inv =
    DT(((("toto",81),
        [("bool",[25,53,54,63]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("toto",[33,38,39,78,80])]),["DISK_THM"]),
       [read"%146%36%162%271%313$0@@@%243%271$0@@@|@"])
  fun op Weak_toto_inv x = x
    val op Weak_toto_inv =
    DT(((("toto",82),
        [("bool",[14,25,26,56]),("relation",[140]),
         ("toto",[38,39,63,77,78,79])]),["DISK_THM"]),
       [read"%146%36%161%268%271%313$0@@@@%289%268%271$0@@@@|@"])
  fun op Strong_toto_inv x = x
    val op Strong_toto_inv =
    DT(((("toto",83),
        [("bool",[14,25,26,56]),("relation",[140]),
         ("toto",[38,39,64,77,78,79])]),["DISK_THM"]),
       [read"%146%36%161%234%271%313$0@@@@%289%234%271$0@@@@|@"])
  fun op TO_inv_TO_inv x = x
    val op TO_inv_TO_inv =
    DT(((("toto",84),[("bool",[14,25,26,56]),("toto",[77])]),["DISK_THM"]),
       [read"%129%34%162%243%243$0@@@$0@|@"])
  fun op toto_inv_toto_inv x = x
    val op toto_inv_toto_inv =
    DT(((("toto",85),
        [("bool",[25,36,56]),("toto",[33,79,81,84])]),["DISK_THM"]),
       [read"%146%36%174%313%313$0@@@$0@|@"])
  fun op TO_inv_Ord x = x
    val op TO_inv_Ord =
    DT(((("toto",86),
        [("bool",[14,26,58]),("relation",[140]),
         ("toto",[25,77])]),["DISK_THM"]),
       [read"%128%66%162%244%289$0@@@%243%244$0@@@|@"])
  fun op TO_of_less_rel x = x
    val op TO_of_less_rel =
    DT(((("toto",87),
        [("bool",[25,26,27,30,54,56,63,64]),("relation",[2,181,205]),
         ("toto",[25,29])]),["DISK_THM"]),
       [read"%128%66%180%229$0@@%123%94%123%112%159%160%244$2@$1@$0@@%217@@$2$1@$0@@|@|@@|@"])
  fun op TO_of_greater_ler x = x
    val op TO_of_greater_ler =
    DT(((("toto",88),[("bool",[25,56]),("toto",[47,72,87])]),["DISK_THM"]),
       [read"%128%66%180%229$0@@%123%94%123%112%159%160%244$2@$1@$0@@%213@@$2$0@$1@@|@|@@|@"])
  fun op toto_equal_imp x = x
    val op toto_equal_imp =
    DT(((("toto",89),
        [("bool",[25,56,63,64]),("toto",[25,27,34,65])]),["DISK_THM"]),
       [read"%146%37%128%64%180%154%219$0@@%174$1@%314$0@@@@%123%94%123%112%180%159%157$1@$0@@%237@@%160%271$3@$1@$0@@%209@@|@|@@|@|@"])
  fun op toto_unequal_imp x = x
    val op toto_unequal_imp =
    DT(((("toto",90),
        [("bool",[25,26,27,30,56,63,64]),
         ("toto",[25,27,34,65])]),["DISK_THM"]),
       [read"%146%37%128%64%180%154%219$0@@%174$1@%314$0@@@@%123%94%123%112%180%159%157$1@$0@@%210@@%202$2$1@$0@@%160%271$3@$1@$0@@%217@@%160%271$3@$1@$0@@%213@@@|@|@@|@|@"])
  fun op StrongOrder_ALT x = x
    val op StrongOrder_ALT =
    DT(((("toto",91),[("bool",[25,56]),("relation",[181])]),["DISK_THM"]),
       [read"%128%18%159%236$0@@%154%290$0@@%315$0@@@|@"])
  fun op LEX_ALT x = x
    val op LEX_ALT =
    DT(((("toto",92),[("bool",[14]),("pair",[7,16,53])]),["DISK_THM"]),
       [read"%128%9%130%14%144%35%144%40%159%218$3@$2@$1@$0@@%270$3%212$1@@%212$0@@@%154%157%212$1@@%212$0@@@$2%226$1@@%226$0@@@@@|@|@|@|@"])
  fun op SLO_LEX x = x
    val op SLO_LEX =
    DT(((("toto",93),
        [("bool",[25,26,27,30,51,52,53,56,63]),("relation",[0,2,7,205]),
         ("toto",[26,28,91,92])]),["DISK_THM"]),
       [read"%128%9%130%16%180%154%229$1@@%230$0@@@%233%218$1@$0@@@|@|@"])
  fun op lexTO_thm x = x
    val op lexTO_thm =
    DT(((("toto",96),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,26,27,30,32,36,43,48,51,52,54,56,58,63,64,93,96,101,104,
          105,107]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,25,28,41,44,64,92,94])]),["DISK_THM"]),
       [read"%129%10%131%17%180%154%252$1@@%253$0@@@%144%101%144%116%160%291$3@$2@$1@$0@@%285$3%212$1@@%212$0@@@%217@$2%226$1@@%226$0@@@%213@@|@|@@|@|@"])
  fun op lexTO_ALT x = x
    val op lexTO_ALT =
    DT(((("toto",97),
        [("bool",[14,25,51,63]),("pair",[7,16]),
         ("toto",[96])]),["DISK_THM"]),
       [read"%129%10%131%17%180%154%252$1@@%253$0@@@%144%260%65%76%144%260%69%77%160%291$5@$4@%149$3@$2@@%149$1@$0@@@%285$5$3@$1@@%217@$4$2@$0@@%213@@||@@||@@@|@|@"])
  fun op TO_lexTO x = x
    val op TO_lexTO =
    DT(((("toto",98),[("toto",[70,72,93,94])]),["DISK_THM"]),
       [read"%129%10%131%17%180%154%252$1@@%253$0@@@%259%291$1@$0@@@|@|@"])
  fun op pre_aplextoto x = x
    val op pre_aplextoto =
    DT(((("toto",99),
        [("bool",[58]),("toto",[38,39,95,96,98])]),["DISK_THM"]),
       [read"%146%36%147%81%144%101%144%116%160%276%292$3@$2@@$1@$0@@%285%271$3@%212$1@@%212$0@@@%217@%272$2@%226$1@@%226$0@@@%213@@|@|@|@|@"])
  fun op aplextoto x = x
    val op aplextoto =
    DT(((("toto",100),
        [("bool",[25,56,58]),("pair",[7,8,9]),
         ("toto",[99])]),["DISK_THM"]),
       [read"%146%36%147%81%123%106%124%110%123%120%124%121%160%276%292$5@$4@@%149$3@$2@@%149$1@$0@@@%285%271$5@$3@$1@@%217@%272$4@$2@$0@@%213@@|@|@|@|@|@|@"])
  fun op StrongLinearOrder_LESS x = x
    val op StrongLinearOrder_LESS =
    DT(((("toto",101),
        [("arithmetic",[24,25,33,46,59,71,93,173,177,180]),
         ("bool",[25,26,27,36,51,52,54,63,96,104,105]),("numeral",[3,8]),
         ("prim_rec",[4]),("relation",[2,7,205]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("toto",[91])]),["DISK_THM"]),
       [read"%232%156@"])
  fun op TO_numOrd x = x
    val op TO_numOrd =
    DT(((("toto",103),[("toto",[72,101,102])]),["DISK_THM"]),
       [read"%258%299@"])
  fun op apnumto_thm x = x
    val op apnumto_thm =
    DT(((("toto",105),
        [("bool",[25,58,63]),("toto",[34,103,104])]),["DISK_THM"]),
       [read"%165%275%306@@%299@"])
  fun op numeralOrd x = x
    val op numeralOrd =
    DT(((("toto",106),
        [("arithmetic",[24,25,27,35,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,27,32,36,43,51,52,54,56,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[7,9,10,11,17,41,87,88,101,102,103])]),["DISK_THM"]),
       [read"%142%99%142%114%154%160%299%269@%269@@%209@@%154%160%299%269@%197$0@@@%217@@%154%160%299%269@%198$0@@@%217@@%154%160%299%197$1@@%269@@%213@@%154%160%299%198$1@@%269@@%213@@%154%160%299%197$1@@%197$0@@@%299$1@$0@@@%154%160%299%198$1@@%198$0@@@%299$1@$0@@@%154%160%299%197$1@@%198$0@@@%285%299$1@$0@@%217@%217@%213@@@%160%299%198$1@@%197$0@@@%285%299$1@$0@@%217@%213@%213@@@@@@@@@@|@|@"])
  fun op datatype_num_dt x = x
    val op datatype_num_dt =
    DT(((("toto",117),[("bool",[25,171])]),["DISK_THM"]),
       [read"%207%61%317@%277@%278@@"])
  fun op num_dt_11 x = x
    val op num_dt_11 =
    DT(((("toto",118),
        [("bool",[14,25,26,31,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%154%143%23%143%29%159%171%277$1@@%277$0@@@%171$1@$0@@|@|@@%143%23%143%29%159%171%278$1@@%278$0@@@%171$1@$0@@|@|@@"])
  fun op num_dt_distinct x = x
    val op num_dt_distinct =
    DT(((("toto",119),
        [("bool",[14,25,26,31,36,47,51,53,54,56,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%154%143%23%318%171%317@%277$0@@@|@@%154%143%23%318%171%317@%278$0@@@|@@%143%29%143%23%318%171%277$0@@%278$1@@@|@|@@@"])
  fun op num_dt_case_cong x = x
    val op num_dt_case_cong =
    DT(((("toto",120),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("toto",[108,109,110,111,112,113,114,115])]),["DISK_THM"]),
       [read"%143%2%143%4%123%78%136%44%136%47%180%154%171$4@$3@@%154%180%171$3@%317@@%157$2@%82@@@%154%143%23%180%171$4@%277$0@@@%157$2$0@@%45$0@@@|@@%143%23%180%171$4@%278$0@@@%157$1$0@@%49$0@@@|@@@@@%157%302$4@$2@$1@$0@@%302$3@%82@%45@%49@@@|@|@|@|@|@"])
  fun op num_dt_nchotomy x = x
    val op num_dt_nchotomy =
    DT(((("toto",121),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%143%60%270%171$0@%317@@%270%190%59%171$1@%277$0@@|@@%190%59%171$1@%278$0@@|@@@|@"])
  fun op num_dt_Axiom x = x
    val op num_dt_Axiom =
    DT(((("toto",122),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%123%46%138%48%138%50%186%51%154%157$0%317@@$3@@%154%143%23%157$1%277$0@@@$3$0@$1$0@@@|@@%143%23%157$1%278$0@@@$2$0@$1$0@@@|@@@|@|@|@|@"])
  fun op num_dt_induction x = x
    val op num_dt_induction =
    DT(((("toto",123),
        [("bool",[14,25,26,53,132,133,138]),
         ("toto",[108,109,110,111,112,113,114])]),["DISK_THM"]),
       [read"%137%7%180%154$0%317@@%154%143%59%180$1$0@@$1%277$0@@@|@@%143%59%180$1$0@@$1%278$0@@@|@@@@%143%59$1$0@|@@|@"])
  fun op num_dtOrd_ind x = x
    val op num_dtOrd_ind =
    DT(((("toto",127),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,25,26,36,47,48,51,52,53,54,58,63,72,76,78,80,93,96,104,105,
          107,132,133,138,181]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("toto",[108,109,110,111,112,113,114,116])]),["DISK_THM"]),
       [read"%139%8%180%154$0%317@%317@@%154%143%100$1%317@%277$0@@|@@%154%143%100$1%317@%278$0@@|@@%154%143%100$1%277$0@@%317@|@@%154%143%100$1%278$0@@%317@|@@%154%143%100%143%115$2%277$1@@%278$0@@|@|@@%154%143%100%143%115$2%278$1@@%277$0@@|@|@@%154%143%100%143%115%180$2$1@$0@@$2%277$1@@%277$0@@@|@|@@%143%100%143%115%180$2$1@$0@@$2%278$1@@%278$0@@@|@|@@@@@@@@@@%143%80%143%87$2$1@$0@|@|@@|@"])
  fun op num_dtOrd x = x
    val op num_dtOrd =
    DT(((("toto",128),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("numeral",[3,7,8]),("pair",[7,8,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[115,116,125,126])]),["DISK_THM"]),
       [read"%154%160%300%317@%317@@%209@@%154%143%100%160%300%317@%277$0@@@%217@|@@%154%143%100%160%300%317@%278$0@@@%217@|@@%154%143%100%160%300%277$0@@%317@@%213@|@@%154%143%100%160%300%278$0@@%317@@%213@|@@%154%143%115%143%100%160%300%277$0@@%278$1@@@%217@|@|@@%154%143%115%143%100%160%300%278$0@@%277$1@@@%213@|@|@@%154%143%115%143%100%160%300%277$0@@%277$1@@@%300$0@$1@@|@|@@%143%115%143%100%160%300%278$0@@%278$1@@@%300$0@$1@@|@|@@@@@@@@@"])
  fun op TO_qk_numOrd x = x
    val op TO_qk_numOrd =
    DT(((("toto",130),
        [("arithmetic",
         [13,24,25,27,28,41,46,59,63,65,71,73,93,132,147,154,170,172,173,
          176,177,180,195,200,210,213,227,269]),
         ("bool",
         [13,14,15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,
          105,107,124,129,132,133,138,181]),("combin",[19]),
         ("numeral",[0,3,5,6,7,8]),("pair",[7,8,16,49]),
         ("prim_rec",[1,42,43,44]),("relation",[101,113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",
         [24,29,108,109,110,111,112,113,114,115,116,118,119,124,125,126,
          129])]),["DISK_THM"]), [read"%258%310@"])
  fun op qk_numeralOrd x = x
    val op qk_numeralOrd =
    DT(((("toto",131),
        [("arithmetic",
         [2,3,4,24,25,27,28,41,46,59,69,71,73,74,79,93,128,154,172,173,177,
          180,200,210,213,227]),
         ("bool",
         [15,25,26,27,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,124,
          129]),("combin",[19]),("numeral",[0,3,5,6,7,8,21]),
         ("pair",[7,8,16,49]),("prim_rec",[42,43,44]),
         ("relation",[101,113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[115,116,124,125,126,129])]),["DISK_THM"]),
       [read"%142%99%142%114%154%160%310%269@%269@@%209@@%154%160%310%269@%197$0@@@%217@@%154%160%310%269@%198$0@@@%217@@%154%160%310%197$1@@%269@@%213@@%154%160%310%198$1@@%269@@%213@@%154%160%310%197$1@@%197$0@@@%310$1@$0@@@%154%160%310%198$1@@%198$0@@@%310$1@$0@@@%154%160%310%197$1@@%198$0@@@%217@@%160%310%198$1@@%197$0@@@%213@@@@@@@@@|@|@"])
  fun op ap_qk_numto_thm x = x
    val op ap_qk_numto_thm =
    DT(((("toto",133),
        [("bool",[25,58,63]),("toto",[34,130,132])]),["DISK_THM"]),
       [read"%165%275%311@@%310@"])
  fun op TO_charOrd x = x
    val op TO_charOrd =
    DT(((("toto",136),
        [("bool",[25,56]),("string",[2]),
         ("toto",[24,103,134])]),["DISK_THM"]), [read"%256%279@"])
  fun op apcharto_thm x = x
    val op apcharto_thm =
    DT(((("toto",137),
        [("bool",[25,63]),("toto",[34,135,136])]),["DISK_THM"]),
       [read"%163%273%281@@%279@"])
  fun op charOrd_lt_lem x = x
    val op charOrd_lt_lem =
    DT(((("toto",138),
        [("arithmetic",[34]),("bool",[25,56,63]),("string",[8]),
         ("toto",[87,101,102,134])]),["DISK_THM"]),
       [read"%142%22%142%33%180%160%299$1@$0@@%217@@%180%159%156$0@%222%198%197%197%197%197%197%197%197%269@@@@@@@@@@@%237@@%160%279%200$1@@%200$0@@@%217@@@|@|@"])
  fun op charOrd_gt_lem x = x
    val op charOrd_gt_lem =
    DT(((("toto",139),
        [("arithmetic",[34]),("bool",[25,56,63]),("string",[8]),
         ("toto",[88,101,102,134])]),["DISK_THM"]),
       [read"%142%22%142%33%180%160%299$1@$0@@%213@@%180%159%156$1@%222%198%197%197%197%197%197%197%197%269@@@@@@@@@@@%237@@%160%279%200$1@@%200$0@@@%213@@@|@|@"])
  fun op charOrd_eq_lem x = x
    val op charOrd_eq_lem =
    DT(((("toto",140),
        [("bool",[25,56]),("toto",[41,103,134])]),["DISK_THM"]),
       [read"%142%22%142%33%180%160%299$1@$0@@%209@@%160%279%200$1@@%200$0@@@%209@@|@|@"])
  fun op charOrd_thm x = x
    val op charOrd_thm =
    DT(((("toto",141),
        [("bool",[14,25,26,56]),("string",[2,27]),
         ("toto",[25,102,134])]),["DISK_THM"]),
       [read"%163%279@%245%280@@"])
  fun op listorder_ind x = x
    val op listorder_ind =
    DT(((("toto",144),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [25,26,36,47,48,52,53,54,58,63,72,76,77,78,80,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%135%6%180%154%128%15%141%53$2$1@$0@%221@|@|@@%154%128%15%123%75%141%56$3$2@%221@%205$1@$0@@|@|@|@@%128%15%123%65%141%53%123%75%141%56%180$5$4@$2@$0@@$5$4@%205$3@$2@@%205$1@$0@@@|@|@|@|@|@@@@%128%79%141%86%141%91$3$2@$1@$0@|@|@|@@|@"])
  fun op listorder x = x
    val op listorder =
    DT(((("toto",145),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("list",[6,7]),("numeral",[3,7,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[142,143])]),["DISK_THM"]),
       [read"%154%141%53%128%15%159%294$0@$1@%221@@%210@|@|@@%154%123%75%141%56%128%15%159%294$0@%221@%205$2@$1@@@%237@|@|@|@@%123%75%123%65%141%56%141%53%128%15%159%294$0@%205$3@$1@@%205$4@$2@@@%270$0$3@$4@@%154%157$3@$4@@%294$0@$1@$2@@@@|@|@|@|@|@@@"])
  fun op SLO_listorder x = x
    val op SLO_listorder =
    DT(((("toto",146),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,30,36,51,52,53,54,56,58,63,93,96,104,105,107]),
         ("combin",[19]),("list",[6,7,43,46,48]),("numeral",[3,7,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[0,2,113,115,121,126,205]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[26,91,142,143])]),["DISK_THM"]),
       [read"%128%15%180%229$0@@%231%294$0@@@|@"])
  fun op TO_ListOrd x = x
    val op TO_ListOrd =
    DT(((("toto",148),[("toto",[38,70,72,146,147])]),["DISK_THM"]),
       [read"%146%36%257%220$0@@|@"])
  fun op ListOrd_THM x = x
    val op ListOrd_THM =
    DT(((("toto",149),
        [("arithmetic",[22,24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,15,25,26,27,32,36,43,51,52,54,56,58,63,64,93,96,101,104,105,
          107]),("combin",[19]),("list",[6,7,9,10]),
         ("numeral",[3,5,6,7,8,15,16,17]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",
         [7,9,10,11,17,25,38,52,64,70,142,143,147])]),["DISK_THM"]),
       [read"%146%36%154%160%220$0@%221@%221@@%209@@%154%123%31%141%113%160%220$2@%221@%205$1@$0@@@%217@|@|@@%154%123%19%141%98%160%220$2@%205$1@$0@@%221@@%213@|@|@@%123%19%141%98%123%31%141%113%160%220$4@%205$3@$2@@%205$1@$0@@@%285%271$4@$3@$1@@%217@%220$4@$2@$0@@%213@@|@|@|@|@@@@|@"])
  fun op aplistoto x = x
    val op aplistoto =
    DT(((("toto",151),[("toto",[39,148,149,150])]),["DISK_THM"]),
       [read"%146%36%154%160%274%296$0@@%221@%221@@%209@@%154%123%31%141%113%160%274%296$2@@%221@%205$1@$0@@@%217@|@|@@%154%123%19%141%98%160%274%296$2@@%205$1@$0@@%221@@%213@|@|@@%123%19%141%98%123%31%141%113%160%274%296$4@@%205$3@$2@@%205$1@$0@@@%285%271$4@$3@$1@@%217@%274%296$4@@$2@$0@@%213@@|@|@|@|@@@@|@"])
  fun op TO_injection x = x
    val op TO_injection =
    DT(((("toto",154),
        [("bool",[25,26,56,116]),("toto",[24,153])]),["DISK_THM"]),
       [read"%132%38%180%254$0@@%133%42%180%224$0@@%255%288$0@$1@@@|@@|@"])
  end
  val _ = DB.bindl "toto"
  [("cpn_TY_DEF",cpn_TY_DEF,DB.Def), ("cpn_BIJ",cpn_BIJ,DB.Def),
   ("cpn_size_def",cpn_size_def,DB.Def), ("cpn_CASE",cpn_CASE,DB.Def),
   ("TotOrd",TotOrd,DB.Def),
   ("TO_of_LinearOrder",TO_of_LinearOrder,DB.Def),
   ("toto_TY_DEF",toto_TY_DEF,DB.Def), ("to_bij",to_bij,DB.Def),
   ("WeakLinearOrder_of_TO",WeakLinearOrder_of_TO,DB.Def),
   ("StrongLinearOrder_of_TO",StrongLinearOrder_of_TO,DB.Def),
   ("toto_of_LinearOrder",toto_of_LinearOrder,DB.Def),
   ("TO_inv",TO_inv,DB.Def), ("toto_inv",toto_inv,DB.Def),
   ("lexTO",lexTO,DB.Def), ("lextoto",lextoto,DB.Def),
   ("numOrd",numOrd,DB.Def), ("numto",numto,DB.Def),
   ("num_dt_TY_DEF",num_dt_TY_DEF,DB.Def),
   ("num_dt_case_def",num_dt_case_def,DB.Def),
   ("num_dt_size_def",num_dt_size_def,DB.Def),
   ("num_to_dt_primitive",num_to_dt_primitive,DB.Def),
   ("num_dtOrd_tupled_primitive",num_dtOrd_tupled_primitive,DB.Def),
   ("num_dtOrd_curried",num_dtOrd_curried,DB.Def),
   ("qk_numOrd_def",qk_numOrd_def,DB.Def), ("qk_numto",qk_numto,DB.Def),
   ("charOrd",charOrd,DB.Def), ("charto",charto,DB.Def),
   ("listorder_tupled_primitive",listorder_tupled_primitive,DB.Def),
   ("listorder_curried",listorder_curried,DB.Def),
   ("ListOrd",ListOrd,DB.Def), ("listoto",listoto,DB.Def),
   ("stringto",stringto,DB.Def), ("imageOrd",imageOrd,DB.Def),
   ("StrongLinearOrderExists",StrongLinearOrderExists,DB.Thm),
   ("num2cpn_cpn2num",num2cpn_cpn2num,DB.Thm),
   ("cpn2num_num2cpn",cpn2num_num2cpn,DB.Thm),
   ("num2cpn_11",num2cpn_11,DB.Thm), ("cpn2num_11",cpn2num_11,DB.Thm),
   ("num2cpn_ONTO",num2cpn_ONTO,DB.Thm),
   ("cpn2num_ONTO",cpn2num_ONTO,DB.Thm),
   ("num2cpn_thm",num2cpn_thm,DB.Thm), ("cpn2num_thm",cpn2num_thm,DB.Thm),
   ("cpn_EQ_cpn",cpn_EQ_cpn,DB.Thm), ("cpn_case_def",cpn_case_def,DB.Thm),
   ("datatype_cpn",datatype_cpn,DB.Thm),
   ("cpn_distinct",cpn_distinct,DB.Thm),
   ("cpn_case_cong",cpn_case_cong,DB.Thm),
   ("cpn_nchotomy",cpn_nchotomy,DB.Thm), ("cpn_Axiom",cpn_Axiom,DB.Thm),
   ("cpn_induction",cpn_induction,DB.Thm),
   ("trichotomous_ALT",trichotomous_ALT,DB.Thm),
   ("TotOrd_TO_of_LO",TotOrd_TO_of_LO,DB.Thm),
   ("SPLIT_PAIRS",SPLIT_PAIRS,DB.Thm),
   ("all_cpn_distinct",all_cpn_distinct,DB.Thm),
   ("TO_exists",TO_exists,DB.Thm), ("TO_apto_ID",TO_apto_ID,DB.Thm),
   ("TO_apto_TO_ID",TO_apto_TO_ID,DB.Thm), ("TO_11",TO_11,DB.Thm),
   ("onto_apto",onto_apto,DB.Thm), ("TO_onto",TO_onto,DB.Thm),
   ("TotOrd_apto",TotOrd_apto,DB.Thm),
   ("TO_apto_TO_IMP",TO_apto_TO_IMP,DB.Thm), ("toto_thm",toto_thm,DB.Thm),
   ("TO_equal_eq",TO_equal_eq,DB.Thm),
   ("toto_equal_eq",toto_equal_eq,DB.Thm),
   ("toto_equal_imp_eq",toto_equal_imp_eq,DB.Thm),
   ("TO_refl",TO_refl,DB.Thm), ("toto_refl",toto_refl,DB.Thm),
   ("toto_equal_sym",toto_equal_sym,DB.Thm),
   ("TO_antisym",TO_antisym,DB.Thm), ("toto_antisym",toto_antisym,DB.Thm),
   ("toto_not_less_refl",toto_not_less_refl,DB.Thm),
   ("toto_swap_cases",toto_swap_cases,DB.Thm),
   ("toto_glneq",toto_glneq,DB.Thm), ("toto_cpn_eqn",toto_cpn_eqn,DB.Thm),
   ("TO_cpn_eqn",TO_cpn_eqn,DB.Thm),
   ("NOT_EQ_LESS_IMP",NOT_EQ_LESS_IMP,DB.Thm),
   ("totoEEtrans",totoEEtrans,DB.Thm), ("totoLLtrans",totoLLtrans,DB.Thm),
   ("totoLGtrans",totoLGtrans,DB.Thm), ("totoGGtrans",totoGGtrans,DB.Thm),
   ("totoGLtrans",totoGLtrans,DB.Thm), ("totoLEtrans",totoLEtrans,DB.Thm),
   ("totoELtrans",totoELtrans,DB.Thm),
   ("toto_trans_less",toto_trans_less,DB.Thm),
   ("Weak_Weak_of",Weak_Weak_of,DB.Thm), ("STRORD_SLO",STRORD_SLO,DB.Thm),
   ("Strongof_toto_STRORD",Strongof_toto_STRORD,DB.Thm),
   ("Strong_Strong_of",Strong_Strong_of,DB.Thm),
   ("Strong_Strong_of_TO",Strong_Strong_of_TO,DB.Thm),
   ("TotOrd_TO_of_Weak",TotOrd_TO_of_Weak,DB.Thm),
   ("TotOrd_TO_of_Strong",TotOrd_TO_of_Strong,DB.Thm),
   ("toto_Weak_thm",toto_Weak_thm,DB.Thm),
   ("toto_Strong_thm",toto_Strong_thm,DB.Thm),
   ("Weak_toto_thm",Weak_toto_thm,DB.Thm),
   ("Strong_toto_thm",Strong_toto_thm,DB.Thm),
   ("TotOrd_inv",TotOrd_inv,DB.Thm), ("inv_TO",inv_TO,DB.Thm),
   ("apto_inv",apto_inv,DB.Thm), ("Weak_toto_inv",Weak_toto_inv,DB.Thm),
   ("Strong_toto_inv",Strong_toto_inv,DB.Thm),
   ("TO_inv_TO_inv",TO_inv_TO_inv,DB.Thm),
   ("toto_inv_toto_inv",toto_inv_toto_inv,DB.Thm),
   ("TO_inv_Ord",TO_inv_Ord,DB.Thm),
   ("TO_of_less_rel",TO_of_less_rel,DB.Thm),
   ("TO_of_greater_ler",TO_of_greater_ler,DB.Thm),
   ("toto_equal_imp",toto_equal_imp,DB.Thm),
   ("toto_unequal_imp",toto_unequal_imp,DB.Thm),
   ("StrongOrder_ALT",StrongOrder_ALT,DB.Thm), ("LEX_ALT",LEX_ALT,DB.Thm),
   ("SLO_LEX",SLO_LEX,DB.Thm), ("lexTO_thm",lexTO_thm,DB.Thm),
   ("lexTO_ALT",lexTO_ALT,DB.Thm), ("TO_lexTO",TO_lexTO,DB.Thm),
   ("pre_aplextoto",pre_aplextoto,DB.Thm), ("aplextoto",aplextoto,DB.Thm),
   ("StrongLinearOrder_LESS",StrongLinearOrder_LESS,DB.Thm),
   ("TO_numOrd",TO_numOrd,DB.Thm), ("apnumto_thm",apnumto_thm,DB.Thm),
   ("numeralOrd",numeralOrd,DB.Thm),
   ("datatype_num_dt",datatype_num_dt,DB.Thm),
   ("num_dt_11",num_dt_11,DB.Thm),
   ("num_dt_distinct",num_dt_distinct,DB.Thm),
   ("num_dt_case_cong",num_dt_case_cong,DB.Thm),
   ("num_dt_nchotomy",num_dt_nchotomy,DB.Thm),
   ("num_dt_Axiom",num_dt_Axiom,DB.Thm),
   ("num_dt_induction",num_dt_induction,DB.Thm),
   ("num_dtOrd_ind",num_dtOrd_ind,DB.Thm), ("num_dtOrd",num_dtOrd,DB.Thm),
   ("TO_qk_numOrd",TO_qk_numOrd,DB.Thm),
   ("qk_numeralOrd",qk_numeralOrd,DB.Thm),
   ("ap_qk_numto_thm",ap_qk_numto_thm,DB.Thm),
   ("TO_charOrd",TO_charOrd,DB.Thm), ("apcharto_thm",apcharto_thm,DB.Thm),
   ("charOrd_lt_lem",charOrd_lt_lem,DB.Thm),
   ("charOrd_gt_lem",charOrd_gt_lem,DB.Thm),
   ("charOrd_eq_lem",charOrd_eq_lem,DB.Thm),
   ("charOrd_thm",charOrd_thm,DB.Thm),
   ("listorder_ind",listorder_ind,DB.Thm), ("listorder",listorder,DB.Thm),
   ("SLO_listorder",SLO_listorder,DB.Thm),
   ("TO_ListOrd",TO_ListOrd,DB.Thm), ("ListOrd_THM",ListOrd_THM,DB.Thm),
   ("aplistoto",aplistoto,DB.Thm), ("TO_injection",TO_injection,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("wotTheory.wot_grammars",wotTheory.wot_grammars),
                         ("stringTheory.string_grammars",
                          stringTheory.string_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="toto",Name="reln"}, (alpha --> (alpha --> bool)))
  val _ = update_grms temp_add_type "cpn"
  val _ = update_grms temp_add_type "cpn"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpn2num", (Term.prim_mk_const { Name = "cpn2num", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num2cpn", (Term.prim_mk_const { Name = "num2cpn", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LESS", (Term.prim_mk_const { Name = "LESS", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LESS", (Term.prim_mk_const { Name = "LESS", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQUAL", (Term.prim_mk_const { Name = "EQUAL", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQUAL", (Term.prim_mk_const { Name = "EQUAL", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GREATER", (Term.prim_mk_const { Name = "GREATER", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GREATER", (Term.prim_mk_const { Name = "GREATER", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpn_size", (Term.prim_mk_const { Name = "cpn_size", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpn_size", (Term.prim_mk_const { Name = "cpn_size", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpn_CASE", (Term.prim_mk_const { Name = "cpn_CASE", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cpn_CASE", (Term.prim_mk_const { Name = "cpn_CASE", Thy = "toto"}))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="toto",Name="comp"}, (alpha --> (alpha --> T"cpn" "toto" [])))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TotOrd", (Term.prim_mk_const { Name = "TotOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TotOrd", (Term.prim_mk_const { Name = "TotOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TO_of_LinearOrder", (Term.prim_mk_const { Name = "TO_of_LinearOrder", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TO_of_LinearOrder", (Term.prim_mk_const { Name = "TO_of_LinearOrder", Thy = "toto"}))
  val _ = update_grms temp_add_type "toto"
  val _ = update_grms temp_add_type "toto"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("apto", (Term.prim_mk_const { Name = "apto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TO", (Term.prim_mk_const { Name = "TO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WeakLinearOrder_of_TO", (Term.prim_mk_const { Name = "WeakLinearOrder_of_TO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WeakLinearOrder_of_TO", (Term.prim_mk_const { Name = "WeakLinearOrder_of_TO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("StrongLinearOrder_of_TO", (Term.prim_mk_const { Name = "StrongLinearOrder_of_TO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("StrongLinearOrder_of_TO", (Term.prim_mk_const { Name = "StrongLinearOrder_of_TO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toto_of_LinearOrder", (Term.prim_mk_const { Name = "toto_of_LinearOrder", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toto_of_LinearOrder", (Term.prim_mk_const { Name = "toto_of_LinearOrder", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TO_inv", (Term.prim_mk_const { Name = "TO_inv", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TO_inv", (Term.prim_mk_const { Name = "TO_inv", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toto_inv", (Term.prim_mk_const { Name = "toto_inv", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toto_inv", (Term.prim_mk_const { Name = "toto_inv", Thy = "toto"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "lexTO"))
       (Infix(HOLgrammars.RIGHT, 850))
  val _ = update_grms
       (UTOFF (temp_set_fixity "lextoto"))
       (Infix(HOLgrammars.RIGHT, 850))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lexTO", (Term.prim_mk_const { Name = "lexTO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lexTO", (Term.prim_mk_const { Name = "lexTO", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lextoto", (Term.prim_mk_const { Name = "lextoto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lextoto", (Term.prim_mk_const { Name = "lextoto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numOrd", (Term.prim_mk_const { Name = "numOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numOrd", (Term.prim_mk_const { Name = "numOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numto", (Term.prim_mk_const { Name = "numto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numto", (Term.prim_mk_const { Name = "numto", Thy = "toto"}))
  val _ = update_grms temp_add_type "num_dt"
  val _ = update_grms temp_add_type "num_dt"








  val _ = update_grms
       (UTOFF temp_overload_on)
       ("zer", (Term.prim_mk_const { Name = "zer", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("zer", (Term.prim_mk_const { Name = "zer", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit1", (Term.prim_mk_const { Name = "bit1", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit1", (Term.prim_mk_const { Name = "bit1", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit2", (Term.prim_mk_const { Name = "bit2", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit2", (Term.prim_mk_const { Name = "bit2", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_dt_CASE", (Term.prim_mk_const { Name = "num_dt_CASE", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_dt_size", (Term.prim_mk_const { Name = "num_dt_size", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_dt", (Term.prim_mk_const { Name = "num_to_dt", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_dt", (Term.prim_mk_const { Name = "num_to_dt", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_dtOrd_tupled", (Term.prim_mk_const { Name = "num_dtOrd_tupled", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_dtOrd_tupled", (Term.prim_mk_const { Name = "num_dtOrd_tupled", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_dtOrd", (Term.prim_mk_const { Name = "num_dtOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_dtOrd", (Term.prim_mk_const { Name = "num_dtOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("qk_numOrd", (Term.prim_mk_const { Name = "qk_numOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("qk_numOrd", (Term.prim_mk_const { Name = "qk_numOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("qk_numto", (Term.prim_mk_const { Name = "qk_numto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("qk_numto", (Term.prim_mk_const { Name = "qk_numto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("charOrd", (Term.prim_mk_const { Name = "charOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("charOrd", (Term.prim_mk_const { Name = "charOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("charto", (Term.prim_mk_const { Name = "charto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("charto", (Term.prim_mk_const { Name = "charto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listorder_tupled", (Term.prim_mk_const { Name = "listorder_tupled", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listorder_tupled", (Term.prim_mk_const { Name = "listorder_tupled", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listorder", (Term.prim_mk_const { Name = "listorder", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listorder", (Term.prim_mk_const { Name = "listorder", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ListOrd", (Term.prim_mk_const { Name = "ListOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ListOrd", (Term.prim_mk_const { Name = "ListOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listoto", (Term.prim_mk_const { Name = "listoto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listoto", (Term.prim_mk_const { Name = "listoto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("stringto", (Term.prim_mk_const { Name = "stringto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("stringto", (Term.prim_mk_const { Name = "stringto", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("imageOrd", (Term.prim_mk_const { Name = "imageOrd", Thy = "toto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("imageOrd", (Term.prim_mk_const { Name = "imageOrd", Thy = "toto"}))
  val toto_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG cpn_Axiom,
           case_def=cpn_case_def,
           case_cong=cpn_case_cong,
           induction=ORIG cpn_induction,
           nchotomy=cpn_nchotomy,
           size=SOME(Parse.Term`(toto$cpn_size) :(toto$cpn) -> (num$num)`,
                     ORIG cpn_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME cpn_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG num_dt_Axiom,
           case_def=num_dt_case_def,
           case_cong=num_dt_case_cong,
           induction=ORIG num_dt_induction,
           nchotomy=num_dt_nchotomy,
           size=SOME(Parse.Term`(toto$num_dt_size) :(toto$num_dt) -> (num$num)`,
                     ORIG num_dt_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME num_dt_11,
           distinct=SOME num_dt_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "toto",
    thydataty = "compute",
    data =
        "toto.TotOrd toto.WeakLinearOrder_of_TO toto.imageOrd toto.stringto toto.listoto toto.ListOrd toto.listorder toto.charto toto.charOrd toto.qk_numto toto.qk_numOrd_def toto.num_dtOrd toto.numto toto.numOrd toto.lextoto toto.lexTO toto.toto_inv toto.TO_inv toto.toto_of_LinearOrder toto.StrongLinearOrder_of_TO toto.TO_of_LinearOrder"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "toto"
end
