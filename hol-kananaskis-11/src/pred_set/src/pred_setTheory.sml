structure pred_setTheory :> pred_setTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading pred_setTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open numpairTheory
  in end;
  val _ = Theory.link_parents
          ("pred_set",
          Arbnum.fromString "1488586210",
          Arbnum.fromString "643996")
          [("numpair",
           Arbnum.fromString "1488586197",
           Arbnum.fromString "668292")];
  val _ = Theory.incorporate_types "pred_set" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"),
   ID("pair", "prod"), ID("sum", "sum"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("arithmetic", "-"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("arithmetic", "ABS_DIFF"), ID("bool", "ARB"),
   ID("pred_set", "BIGINTER"), ID("pred_set", "BIGUNION"),
   ID("pred_set", "BIJ"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("pred_set", "CARD"),
   ID("pred_set", "CHOICE"), ID("pred_set", "COMPL"), ID("bool", "COND"),
   ID("pred_set", "CROSS"), ID("pred_set", "DELETE"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"),
   ID("arithmetic", "DIV"), ID("pred_set", "EMPTY"),
   ID("relation", "EMPTY_REL"), ID("arithmetic", "EXP"), ID("bool", "F"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("pred_set", "GSPEC"),
   ID("combin", "I"), ID("pred_set", "IMAGE"), ID("bool", "IN"),
   ID("pred_set", "INJ"), ID("sum", "INL"), ID("sum", "INR"),
   ID("pred_set", "INSERT"), ID("pred_set", "INTER"),
   ID("pred_set", "ITSET"), ID("pred_set", "ITSET_tupled"),
   ID("while", "LEAST"), ID("bool", "LET"), ID("pred_set", "LINV"),
   ID("arithmetic", "MAX"), ID("pred_set", "MAX_SET"),
   ID("arithmetic", "MIN"), ID("pred_set", "MIN_SET"),
   ID("arithmetic", "NUMERAL"), ID("pred_set", "POW"),
   ID("prim_rec", "PRE"), ID("pred_set", "PROD_IMAGE"),
   ID("pred_set", "PROD_SET"), ID("pred_set", "PSUBSET"),
   ID("pred_set", "REL_RESTRICT"), ID("pred_set", "REST"),
   ID("pred_set", "RINV"), ID("relation", "RSUBSET"),
   ID("relation", "RTC"), ID("pred_set", "SING"), ID("pair", "SND"),
   ID("pred_set", "SUBSET"), ID("num", "SUC"), ID("pred_set", "SUM_IMAGE"),
   ID("pred_set", "SUM_SET"), ID("pred_set", "SURJ"),
   ID("relation", "StrongOrder"), ID("bool", "T"), ID("relation", "TC"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("pred_set", "chooser"), ID("pred_set", "count"),
   ID("pred_set", "countable"), ID("pred_set", "equiv_on"),
   ID("relation", "inv"), ID("relation", "irreflexive"),
   ID("numpair", "nfst"), ID("numpair", "npair"), ID("numpair", "nsnd"),
   ID("pred_set", "num_to_pair"), ID("combin", "o"),
   ID("pair", "pair_CASE"), ID("pred_set", "pair_to_num"),
   ID("pred_set", "pairwise"), ID("pred_set", "partition"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [0, 2, 3],
   TYOP [0, 1, 2], TYOP [0, 5, 4], TYOP [0, 5, 3], TYOP [2],
   TYOP [3, 8, 8], TYOP [0, 9, 8], TYOP [0, 8, 9], TYOP [0, 8, 0],
   TYOP [0, 8, 12], TYOP [0, 8, 1], TYOP [0, 2, 14], TYOP [0, 2, 2],
   TYOP [0, 2, 16], TYV "'b", TYOP [0, 18, 0], TYOP [0, 19, 0],
   TYOP [0, 2, 20], TYOP [0, 1, 18], TYOP [0, 22, 21], TYOP [0, 12, 8],
   TYOP [0, 2, 8], TYOP [0, 1, 8], TYOP [0, 26, 25], TYOP [0, 18, 1],
   TYOP [0, 2, 28], TYOP [0, 22, 29], TYOP [0, 2, 5], TYOP [0, 5, 31],
   TYOP [3, 2, 18], TYOP [0, 33, 18], TYOP [0, 18, 18], TYOP [0, 1, 35],
   TYOP [0, 36, 34], TYOP [0, 2, 35], TYOP [0, 36, 38], TYOP [0, 1, 16],
   TYOP [0, 2, 19], TYOP [0, 22, 41], TYOP [3, 1, 0], TYOP [0, 18, 43],
   TYOP [0, 44, 2], TYOP [3, 1, 18], TYOP [0, 46, 0], TYOP [0, 19, 47],
   TYOP [0, 2, 48], TYOP [0, 2, 1], TYOP [0, 3, 2], TYOP [0, 33, 0],
   TYOP [0, 33, 52], TYOP [0, 1, 1], TYOP [3, 18, 0], TYOP [0, 1, 55],
   TYV "'c", TYOP [0, 18, 57], TYOP [4, 1, 18], TYOP [0, 59, 0],
   TYOP [4, 18, 1], TYOP [0, 61, 0], TYOP [0, 57, 0], TYOP [0, 22, 0],
   TYOP [0, 64, 0], TYOP [0, 3, 0], TYOP [0, 5, 0], TYOP [0, 67, 0],
   TYOP [0, 36, 0], TYOP [0, 69, 0], TYOP [0, 26, 0], TYOP [0, 71, 0],
   TYOP [0, 56, 0], TYOP [0, 73, 0], TYOP [0, 58, 0], TYOP [0, 75, 0],
   TYOP [0, 20, 0], TYOP [0, 44, 0], TYOP [0, 78, 0], TYOP [0, 63, 0],
   TYOP [0, 80, 0], TYOP [0, 66, 0], TYOP [0, 41, 0], TYOP [0, 83, 0],
   TYOP [0, 12, 0], TYOP [0, 85, 0], TYOP [0, 47, 0], TYOP [0, 8, 8],
   TYOP [0, 8, 88], TYOP [0, 18, 46], TYOP [0, 1, 90], TYOP [0, 0, 43],
   TYOP [0, 1, 92], TYOP [0, 0, 55], TYOP [0, 18, 94], TYOP [0, 18, 33],
   TYOP [0, 2, 96], TYOP [3, 2, 0], TYOP [0, 0, 98], TYOP [0, 2, 99],
   TYOP [3, 8, 0], TYOP [0, 0, 101], TYOP [0, 8, 102], TYOP [0, 8, 11],
   TYOP [3, 46, 0], TYOP [0, 0, 105], TYOP [0, 46, 106], TYOP [0, 0, 0],
   TYOP [0, 0, 108], TYOP [0, 18, 19], TYOP [0, 5, 67], TYOP [0, 19, 20],
   TYOP [0, 63, 80], TYOP [0, 108, 0], TYOP [0, 108, 114], TYOP [0, 3, 66],
   TYOP [0, 24, 0], TYOP [0, 24, 117], TYOP [0, 12, 85], TYOP [0, 47, 87],
   TYOP [3, 57, 1], TYOP [0, 121, 0], TYOP [0, 122, 0], TYOP [0, 122, 123],
   TYOP [0, 34, 0], TYOP [0, 34, 125], TYOP [0, 60, 0], TYOP [0, 60, 127],
   TYOP [0, 43, 0], TYOP [0, 43, 129], TYOP [0, 9, 0], TYOP [0, 9, 131],
   TYOP [0, 54, 0], TYOP [0, 133, 0], TYOP [0, 28, 0], TYOP [0, 135, 0],
   TYOP [0, 14, 0], TYOP [0, 137, 0], TYOP [0, 53, 0], TYOP [0, 139, 53],
   TYOP [0, 20, 19], TYOP [0, 54, 4], TYOP [0, 2, 80], TYOP [0, 1, 57],
   TYOP [0, 144, 143], TYOP [0, 19, 3], TYOP [0, 28, 146],
   TYOP [0, 19, 80], TYOP [0, 58, 148], TYOP [0, 19, 8], TYOP [0, 3, 8],
   TYOP [0, 47, 8], TYOP [0, 18, 35], TYOP [0, 0, 153], TYOP [0, 0, 17],
   TYOP [0, 12, 12], TYOP [0, 12, 156], TYOP [0, 0, 157], TYOP [0, 0, 89],
   TYOP [0, 2, 122], TYOP [0, 63, 160], TYOP [0, 19, 110],
   TYOP [0, 12, 13], TYOP [0, 46, 1], TYOP [0, 1, 43], TYOP [0, 165, 2],
   TYOP [0, 56, 19], TYOP [0, 2, 98], TYOP [0, 168, 3], TYOP [0, 8, 43],
   TYOP [0, 170, 2], TYOP [0, 8, 101], TYOP [0, 172, 12],
   TYOP [0, 46, 105], TYOP [0, 174, 47], TYOP [0, 54, 16], TYOP [0, 2, 63],
   TYOP [0, 144, 177], TYOP [0, 2, 12], TYOP [0, 26, 179], TYOP [0, 2, 60],
   TYOP [0, 1, 59], TYOP [0, 182, 181], TYOP [0, 19, 2], TYOP [0, 28, 184],
   TYOP [0, 19, 63], TYOP [0, 58, 186], TYOP [0, 90, 48], TYOP [0, 19, 60],
   TYOP [0, 18, 59], TYOP [0, 190, 189], TYOP [0, 3, 3], TYOP [0, 16, 192],
   TYOP [0, 3, 20], TYOP [0, 41, 194], TYOP [0, 12, 2], TYOP [0, 14, 196],
   TYOP [0, 88, 156], TYOP [0, 1, 3], TYOP [0, 18, 20], TYOP [0, 2, 66],
   TYOP [0, 8, 85], TYOP [0, 46, 87], TYOP [0, 59, 127], TYOP [0, 62, 0],
   TYOP [0, 61, 205], TYOP [0, 2, 85], TYOP [0, 26, 207], TYOP [0, 2, 127],
   TYOP [0, 182, 209], TYOP [0, 2, 205], TYOP [0, 1, 61],
   TYOP [0, 212, 211], TYOP [0, 12, 3], TYOP [0, 14, 214],
   TYOP [0, 19, 19], TYOP [0, 18, 216], TYOP [0, 108, 108],
   TYOP [0, 0, 218], TYOP [0, 2, 192], TYOP [0, 8, 156], TYOP [0, 47, 47],
   TYOP [0, 46, 222], TYOP [0, 19, 216], TYOP [0, 2, 88], TYOP [0, 1, 88],
   TYOP [0, 226, 225], TYOP [0, 192, 192], TYOP [0, 13, 13],
   TYOP [0, 88, 24], TYOP [0, 5, 5], TYOP [0, 46, 18], TYOP [0, 55, 0],
   TYOP [0, 25, 151], TYOP [0, 5, 201], TYOP [0, 3, 192],
   TYOP [0, 47, 222], TYOP [0, 60, 60], TYOP [0, 60, 238],
   TYOP [0, 34, 34], TYOP [0, 240, 34], TYOP [0, 53, 241],
   TYOP [0, 22, 144], TYOP [0, 58, 243], TYOP [0, 38, 18],
   TYOP [0, 33, 245]]
  end
  val _ = Theory.incorporate_consts "pred_set" tyvector
     [("partition", 6), ("pairwise", 7), ("pair_to_num", 10),
      ("num_to_pair", 11), ("equiv_on", 7), ("countable", 3),
      ("count", 13), ("chooser", 15), ("UNIV", 2), ("UNION", 17),
      ("SURJ", 23), ("SUM_SET", 24), ("SUM_IMAGE", 27), ("SUBSET", 4),
      ("SING", 3), ("RINV", 30), ("REST", 16), ("REL_RESTRICT", 32),
      ("PSUBSET", 4), ("PROD_SET", 24), ("PROD_IMAGE", 27), ("POW", 4),
      ("MIN_SET", 24), ("MAX_SET", 24), ("LINV", 30), ("ITSET_tupled", 37),
      ("ITSET", 39), ("INTER", 17), ("INSERT", 40), ("INJ", 23),
      ("IMAGE", 42), ("GSPEC", 45), ("FINITE", 3), ("EMPTY", 2),
      ("DISJOINT", 4), ("DIFF", 17), ("DELETE", 31), ("CROSS", 49),
      ("COMPL", 16), ("CHOICE", 50), ("CARD", 25), ("BIJ", 23),
      ("BIGUNION", 51), ("BIGINTER", 51)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 2), TMV("A", 12), TMV("B", 2), TMV("B", 3), TMV("B", 12),
   TMV("I", 12), TMV("ITSET_tupled", 34), TMV("J", 12), TMV("M", 26),
   TMV("M", 3), TMV("P", 2), TMV("P", 5), TMV("P", 19), TMV("P", 3),
   TMV("P", 41), TMV("P", 12), TMV("P0", 2), TMV("Q", 2), TMV("Q", 19),
   TMV("Q", 12), TMV("Q0", 19), TMV("R", 5), TMV("R", 53), TMV("S", 2),
   TMV("X", 2), TMV("Y", 2), TMV("a", 1), TMV("a", 33), TMV("acc", 8),
   TMV("b", 18), TMV("b", 8), TMV("e", 1), TMV("e", 2), TMV("e", 8),
   TMV("e1", 1), TMV("e1", 2), TMV("e1", 8), TMV("e2", 1), TMV("e2", 2),
   TMV("e2", 8), TMV("f", 54), TMV("f", 22), TMV("f", 5), TMV("f", 36),
   TMV("f", 26), TMV("f", 56), TMV("f", 28), TMV("f", 58), TMV("f", 44),
   TMV("f", 14), TMV("f'", 22), TMV("f'", 28), TMV("f1", 26),
   TMV("f2", 26), TMV("g", 22), TMV("g", 26), TMV("g", 28), TMV("g", 58),
   TMV("m", 8), TMV("n", 1), TMV("n", 8), TMV("n1", 8), TMV("n2", 8),
   TMV("p", 1), TMV("p", 2), TMV("p", 8), TMV("p", 46), TMV("ps", 3),
   TMV("q", 1), TMV("q", 2), TMV("r", 2), TMV("s", 1), TMV("s", 2),
   TMV("s", 19), TMV("s", 3), TMV("s", 12), TMV("s'", 2), TMV("s0", 2),
   TMV("s1", 2), TMV("s1", 3), TMV("s2", 2), TMV("s2", 19), TMV("s2", 3),
   TMV("s3", 2), TMV("set", 2), TMV("sos", 3), TMV("t", 2), TMV("t", 19),
   TMV("t", 12), TMV("t", 60), TMV("t", 62), TMV("t0", 19), TMV("t1", 2),
   TMV("t2", 2), TMV("u", 2), TMV("u", 63), TMV("v", 1), TMV("v", 2),
   TMV("v1", 18), TMV("x", 1), TMV("x", 18), TMV("x", 2), TMV("x", 8),
   TMV("x", 46), TMV("x'", 1), TMV("x1", 18), TMV("y", 1), TMV("y", 18),
   TMV("y", 2), TMV("y", 8), TMV("z", 1), TMV("z", 18), TMV("z", 2),
   TMC(5, 3), TMC(5, 20), TMC(5, 65), TMC(5, 66), TMC(5, 68), TMC(5, 70),
   TMC(5, 72), TMC(5, 74), TMC(5, 76), TMC(5, 77), TMC(5, 79), TMC(5, 81),
   TMC(5, 82), TMC(5, 84), TMC(5, 86), TMC(5, 85), TMC(5, 87), TMC(6, 89),
   TMC(7, 89), TMC(8, 91), TMC(8, 93), TMC(8, 95), TMC(8, 97), TMC(8, 100),
   TMC(8, 103), TMC(8, 104), TMC(8, 107), TMC(9, 89), TMC(10, 109),
   TMC(11, 8), TMC(12, 13), TMC(13, 13), TMC(14, 5), TMC(14, 110),
   TMC(14, 109), TMC(14, 4), TMC(14, 111), TMC(14, 112), TMC(14, 113),
   TMC(14, 115), TMC(14, 116), TMC(14, 118), TMC(14, 119), TMC(14, 120),
   TMC(14, 124), TMC(14, 126), TMC(14, 128), TMC(14, 13), TMC(14, 130),
   TMC(14, 132), TMC(15, 109), TMC(16, 3), TMC(16, 20), TMC(16, 134),
   TMC(16, 66), TMC(16, 68), TMC(16, 72), TMC(16, 136), TMC(16, 138),
   TMC(16, 85), TMC(17, 140), TMC(18, 89), TMC(19, 18), TMC(20, 51),
   TMC(21, 51), TMC(21, 141), TMC(22, 142), TMC(22, 23), TMC(22, 145),
   TMC(22, 147), TMC(22, 149), TMC(23, 88), TMC(24, 88), TMC(25, 25),
   TMC(25, 150), TMC(25, 151), TMC(25, 24), TMC(25, 152), TMC(26, 50),
   TMC(27, 16), TMC(28, 154), TMC(28, 155), TMC(28, 158), TMC(28, 159),
   TMC(29, 49), TMC(29, 161), TMC(30, 31), TMC(30, 162), TMC(30, 163),
   TMC(31, 17), TMC(32, 4), TMC(33, 89), TMC(34, 2), TMC(34, 19),
   TMC(34, 63), TMC(34, 108), TMC(34, 3), TMC(34, 12), TMC(34, 47),
   TMC(34, 122), TMC(35, 5), TMC(36, 89), TMC(37, 0), TMC(38, 3),
   TMC(38, 20), TMC(38, 66), TMC(38, 85), TMC(38, 87), TMC(39, 164),
   TMC(40, 166), TMC(40, 167), TMC(40, 45), TMC(40, 169), TMC(40, 171),
   TMC(40, 173), TMC(40, 175), TMC(41, 35), TMC(41, 88), TMC(42, 176),
   TMC(42, 42), TMC(42, 178), TMC(42, 180), TMC(42, 183), TMC(42, 185),
   TMC(42, 187), TMC(42, 188), TMC(42, 191), TMC(42, 193), TMC(42, 195),
   TMC(42, 197), TMC(42, 198), TMC(43, 199), TMC(43, 200), TMC(43, 201),
   TMC(43, 202), TMC(43, 203), TMC(43, 204), TMC(43, 206), TMC(44, 142),
   TMC(44, 23), TMC(44, 145), TMC(44, 208), TMC(44, 210), TMC(44, 213),
   TMC(44, 147), TMC(44, 149), TMC(44, 215), TMC(45, 182), TMC(46, 212),
   TMC(46, 190), TMC(47, 40), TMC(47, 217), TMC(47, 219), TMC(47, 220),
   TMC(47, 221), TMC(47, 223), TMC(48, 17), TMC(48, 224), TMC(48, 157),
   TMC(49, 39), TMC(49, 227), TMC(50, 37), TMC(51, 24), TMC(52, 228),
   TMC(52, 229), TMC(53, 30), TMC(54, 89), TMC(55, 24), TMC(56, 89),
   TMC(57, 24), TMC(58, 88), TMC(59, 4), TMC(60, 88), TMC(61, 27),
   TMC(61, 230), TMC(62, 24), TMC(63, 4), TMC(64, 32), TMC(65, 16),
   TMC(66, 30), TMC(67, 111), TMC(68, 231), TMC(69, 3), TMC(70, 232),
   TMC(70, 233), TMC(71, 4), TMC(71, 112), TMC(71, 116), TMC(71, 119),
   TMC(71, 120), TMC(72, 88), TMC(73, 27), TMC(73, 234), TMC(73, 230),
   TMC(74, 24), TMC(75, 142), TMC(75, 23), TMC(75, 145), TMC(75, 235),
   TMC(75, 147), TMC(75, 149), TMC(75, 215), TMC(76, 67), TMC(77, 0),
   TMC(78, 231), TMC(79, 17), TMC(79, 224), TMC(79, 236), TMC(79, 157),
   TMC(79, 237), TMC(79, 239), TMC(80, 2), TMC(80, 19), TMC(80, 108),
   TMC(80, 3), TMC(80, 12), TMC(80, 47), TMC(80, 60), TMC(81, 67),
   TMC(81, 139), TMC(82, 242), TMC(83, 8), TMC(84, 109), TMC(85, 15),
   TMC(86, 13), TMC(87, 3), TMC(87, 20), TMC(87, 66), TMC(87, 85),
   TMC(87, 87), TMC(87, 127), TMC(88, 7), TMC(89, 231), TMC(90, 67),
   TMC(91, 88), TMC(92, 89), TMC(93, 88), TMC(94, 11), TMC(95, 244),
   TMC(96, 246), TMC(97, 10), TMC(98, 7), TMC(99, 6), TMC(100, 108)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op GSPECIFICATION x = x
    val op GSPECIFICATION =
    DT(((("pred_set",6),[("bool",[2]),("pred_set",[0])]),["DISK_THM"]),
       [read"%123%48%113%96%147%244$0@%224$1@@@%165%100%161%133$1@%316@@$2$0@@|@@|@|@"])
  fun op EMPTY_DEF x = x
    val op EMPTY_DEF =
    DT(((("pred_set",9),[]),[]), [read"%148%205@%99%215|@"])
  fun op UNIV_DEF x = x
    val op UNIV_DEF =
    DT(((("pred_set",13),[]),[]), [read"%148%324@%99%316|@"])
  fun op SUBSET_DEF x = x
    val op SUBSET_DEF =
    DT(((("pred_set",18),[]),[]),
       [read"%116%72%116%86%147%298$1@$0@@%113%99%163%244$0@$2@@%244$0@$1@@|@@|@|@"])
  fun op PSUBSET_DEF x = x
    val op PSUBSET_DEF =
    DT(((("pred_set",26),[]),[]),
       [read"%116%72%116%86%147%289$1@$0@@%141%298$1@$0@@%356%148$1@$0@@@@|@|@"])
  fun op UNION_DEF x = x
    val op UNION_DEF =
    DT(((("pred_set",32),[]),[]),
       [read"%116%72%116%86%148%318$1@$0@@%222%99%133$0@%335%244$0@$2@@%244$0@$1@@@|@@|@|@"])
  fun op INTER_DEF x = x
    val op INTER_DEF =
    DT(((("pred_set",44),[]),[]),
       [read"%116%72%116%86%148%269$1@$0@@%222%99%133$0@%141%244$0@$2@@%244$0@$1@@@|@@|@|@"])
  fun op DISJOINT_DEF x = x
    val op DISJOINT_DEF =
    DT(((("pred_set",57),[]),[]),
       [read"%116%72%116%86%147%203$1@$0@@%148%269$1@$0@@%205@@|@|@"])
  fun op DIFF_DEF x = x
    val op DIFF_DEF =
    DT(((("pred_set",66),[]),[]),
       [read"%116%72%116%86%148%202$1@$0@@%222%99%133$0@%141%244$0@$2@@%356%244$0@$1@@@@|@@|@|@"])
  fun op INSERT_DEF x = x
    val op INSERT_DEF =
    DT(((("pred_set",79),[]),[]),
       [read"%113%99%116%72%148%263$1@$0@@%222%106%133$0@%335%145$0@$2@@%244$0@$1@@@|@@|@|@"])
  fun op DELETE_DEF x = x
    val op DELETE_DEF =
    DT(((("pred_set",101),[]),[]),
       [read"%116%72%113%99%148%199$1@$0@@%202$1@%263$0@%205@@@|@|@"])
  fun op CHOICE_DEF x = x
    val op CHOICE_DEF =
    DT(((("pred_set",120),
        [("bool",[2,25,26,27,36,53,54,63]),
         ("pred_set",[3,10])]),["DISK_THM"]),
       [read"%116%72%163%356%148$0@%205@@@%244%191$0@@$0@@|@"])
  fun op REST_DEF x = x
    val op REST_DEF =
    DT(((("pred_set",121),[]),[]),
       [read"%116%72%148%291$0@@%199$0@%191$0@@@|@"])
  fun op SING_DEF x = x
    val op SING_DEF =
    DT(((("pred_set",126),[]),[]),
       [read"%116%72%147%295$0@@%164%99%148$1@%263$0@%205@@|@@|@"])
  fun op IMAGE_DEF x = x
    val op IMAGE_DEF =
    DT(((("pred_set",143),[]),[]),
       [read"%115%41%116%72%150%232$1@$0@@%223%99%134$2$0@@%244$0@$1@@|@@|@|@"])
  fun op INJ_DEF x = x
    val op INJ_DEF =
    DT(((("pred_set",158),[]),[]),
       [read"%115%41%116%72%122%87%147%252$2@$1@$0@@%141%113%99%163%244$0@$2@@%245$3$0@@$1@@|@@%113%99%113%106%163%141%244$1@$3@@%244$0@$3@@@%163%146$4$1@@$4$0@@@%145$1@$0@@@|@|@@@|@|@|@"])
  fun op SURJ_DEF x = x
    val op SURJ_DEF =
    DT(((("pred_set",166),[]),[]),
       [read"%115%41%116%72%122%87%147%309$2@$1@$0@@%141%113%99%163%244$0@$2@@%245$3$0@@$1@@|@@%114%100%163%245$0@$1@@%164%106%141%244$0@$3@@%146$4$0@@$1@@|@@|@@@|@|@|@"])
  fun op BIJ_DEF x = x
    val op BIJ_DEF =
    DT(((("pred_set",173),[]),[]),
       [read"%115%41%116%72%122%87%147%180$2@$1@$0@@%141%252$2@$1@$0@@%309$2@$1@$0@@@|@|@|@"])
  fun op LINV_DEF x = x
    val op LINV_DEF =
    DT(((("pred_set",178),
        [("bool",[2,15,25,26,51,56,63]),("pred_set",[158])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%252$2@$1@$0@@%113%99%163%244$0@$2@@%145%278$3@$2@$3$0@@@$0@@|@@|@|@|@"])
  fun op RINV_DEF x = x
    val op RINV_DEF =
    DT(((("pred_set",183),
        [("bool",[2,15,26]),("pred_set",[166])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%309$2@$1@$0@@%114%100%163%245$0@$1@@%146$3%292$3@$2@$0@@@$0@@|@@|@|@|@"])
  fun op FINITE_DEF x = x
    val op FINITE_DEF =
    DT(((("pred_set",184),[]),[]),
       [read"%116%72%147%216$0@@%125%13%163%141$0%205@@%116%72%163$1$0@@%113%31$2%263$0@$1@@|@@|@@@$0$1@@|@@|@"])
  fun op REL_RESTRICT_DEF x = x
    val op REL_RESTRICT_DEF =
    DT(((("pred_set",203),[]),[]),
       [read"%117%21%116%72%113%99%113%106%147%290$3@$2@$1@$0@@%141%244$1@$2@@%141%244$0@$2@@$3$1@$0@@@@|@|@|@|@"])
  fun op CARD_DEF x = x
    val op CARD_DEF =
    DT(((("pred_set",206),
        [("bool",[2,14,25,26,27,30,37,51,52,53,54,56,58,63,64]),
         ("num",[7,9]),
         ("pred_set",
         [10,11,80,85,102,104,106,109,116,131,138,139,185,186,187]),
         ("prim_rec",[1,38])]),["DISK_THM"]),
       [read"%141%160%186%205@@%142@@%116%72%163%216$0@@%113%99%160%186%263$0@$1@@@%196%244$0@$1@@%186$1@@%303%186$1@@@@|@@|@@"])
  fun op BIGUNION x = x
    val op BIGUNION =
    DT(((("pred_set",243),[]),[]),
       [read"%125%13%148%177$0@@%222%99%133$0@%167%72%141%246$0@$2@@%244$1@$0@@|@@|@@|@"])
  fun op BIGINTER x = x
    val op BIGINTER =
    DT(((("pred_set",257),[]),[]),
       [read"%125%13%148%176$0@@%222%99%133$0@%116%72%163%246$0@$2@@%244$1@$0@@|@@|@@|@"])
  fun op CROSS_DEF x = x
    val op CROSS_DEF =
    DT(((("pred_set",267),[]),[]),
       [read"%116%10%122%18%156%197$1@$0@@%228%66%139$0@%141%244%221$0@@$2@@%245%296$0@@$1@@@|@@|@|@"])
  fun op COMPL_DEF x = x
    val op COMPL_DEF =
    DT(((("pred_set",285),[]),[]),
       [read"%116%10%148%192$0@@%202%324@$0@@|@"])
  fun op count_def x = x
    val op count_def =
    DT(((("pred_set",295),[]),[]),
       [read"%128%60%155%337$0@@%227%58%137$0@%143$0@$1@@|@@|@"])
  fun op ITSET_tupled_primitive_def x = x
    val op ITSET_tupled_primitive_def =
    DT(((("pred_set",303),[]),[]),
       [read"%118%43%158%274$0@@%333%173%22%141%332$0@@%114%29%116%72%163%141%216$0@@%356%148$0@%205@@@@$2%135%291$0@@$3%191$0@@$1@@@%135$0@$1@@@|@|@@|@@%6%27%352$0@%72%29%229%193%216$1@@%193%148$1@%205@@$0@$3%135%291$1@@$4%191$1@@$0@@@@@%175@@||@||@@|@"])
  fun op ITSET_curried_def x = x
    val op ITSET_curried_def =
    DT(((("pred_set",304),[]),[]),
       [read"%118%43%116%101%114%105%146%272$2@$1@$0@@%274$2@%135$1@$0@@@|@|@|@"])
  fun op SUM_IMAGE_DEF x = x
    val op SUM_IMAGE_DEF =
    DT(((("pred_set",313),[]),[]),
       [read"%119%44%116%72%160%304$1@$0@@%273%31%28%131$3$1@@$0@||@$0@%142@@|@|@"])
  fun op SUM_SET_DEF x = x
    val op SUM_SET_DEF =
    DT(((("pred_set",328),[]),[]), [read"%154%307@%306%230@@"])
  fun op PROD_IMAGE_DEF x = x
    val op PROD_IMAGE_DEF =
    DT(((("pred_set",336),[]),[]),
       [read"%119%44%116%72%160%286$1@$0@@%273%31%28%130$3$1@@$0@||@$0@%283%184%334@@@@|@|@"])
  fun op PROD_SET_DEF x = x
    val op PROD_SET_DEF =
    DT(((("pred_set",338),[]),[]), [read"%154%288@%287%230@@"])
  fun op MAX_SET_DEF x = x
    val op MAX_SET_DEF =
    DT(((("pred_set",342),
        [("arithmetic",[24,25,27,46,71,93,95,173,176,180]),
         ("bool",
         [2,13,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,78,93,
          94,96,101,104,105,124,140,143,145,146]),("numeral",[3,5,8]),
         ("pred_set",[10,80,83,90,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%127%75%163%219$0@@%141%163%356%155$0@%210@@@%141%247%280$0@@$0@@%128%109%163%247$0@$1@@%144$0@%280$1@@@|@@@@%163%155$0@%210@@%160%280$0@@%142@@@@|@"])
  fun op MIN_SET_DEF x = x
    val op MIN_SET_DEF =
    DT(((("pred_set",346),[]),[]), [read"%154%282@%275@"])
  fun op POW_DEF x = x
    val op POW_DEF =
    DT(((("pred_set",355),[]),[]),
       [read"%116%84%153%284$0@@%225%72%136$0@%298$0@$1@@|@@|@"])
  fun op equiv_on_def x = x
    val op equiv_on_def =
    DT(((("pred_set",375),[]),[]),
       [read"%117%21%116%72%147%344$1@$0@@%141%113%99%163%244$0@$1@@$2$0@$0@@|@@%141%113%99%113%106%163%141%244$1@$2@@%244$0@$2@@@%147$3$1@$0@@$3$0@$1@@@|@|@@%113%99%113%106%113%110%163%141%244$2@$3@@%141%244$1@$3@@%141%244$0@$3@@%141$4$2@$1@@$4$1@$0@@@@@@$4$2@$0@@|@|@|@@@@|@|@"])
  fun op partition_def x = x
    val op partition_def =
    DT(((("pred_set",376),[]),[]),
       [read"%117%21%116%72%153%355$1@$0@@%225%86%136$0@%164%99%141%244$0@$2@@%148$1@%222%106%133$0@%141%244$0@$3@@$4$1@$0@@@|@@@|@@|@@|@|@"])
  fun op pairwise_def x = x
    val op pairwise_def =
    DT(((("pred_set",384),[]),[]),
       [read"%117%11%116%72%147%354$1@$0@@%113%34%113%37%163%141%244$1@$2@@%244$0@$2@@@$3$1@$0@@|@|@@|@|@"])
  fun op chooser_def x = x
    val op chooser_def =
    DT(((("pred_set",398),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%141%116%72%145%336$0@%142@@%191$0@@|@@%116%72%128%60%145%336$1@%303$0@@@%336%291$1@@$0@@|@|@@"])
  fun op countable_def x = x
    val op countable_def =
    DT(((("pred_set",401),[]),[]),
       [read"%116%72%147%338$0@@%169%44%254$0@$1@%328@|@@|@"])
  fun op num_to_pair_def x = x
    val op num_to_pair_def =
    DT(((("pred_set",408),[]),[]),
       [read"%128%60%162%350$0@@%138%347$0@@%349$0@@@|@"])
  fun op pair_to_num_def x = x
    val op pair_to_num_def =
    DT(((("pred_set",409),[("pair",[16])]),["DISK_THM"]),
       [read"%128%58%128%60%160%353%138$1@$0@@@%348$1@$0@@|@|@"])
  fun op SPECIFICATION x = x
    val op SPECIFICATION =
    DT(((("pred_set",0),[("bool",[18,25,36,56])]),["DISK_THM"]),
       [read"%116%10%113%99%147%244$0@$1@@$1$0@@|@|@"])
  fun op IN_ABS x = x
    val op IN_ABS =
    DT(((("pred_set",1),[("bool",[18,25,36,56])]),["DISK_THM"]),
       [read"%113%99%116%10%147%244$1@%99$1$0@|@@$0$1@@|@|@"])
  fun op ABS_applied x = x
    val op ABS_applied =
    DT(((("pred_set",2),
        [("bool",[18,36,56]),("marker",[9]),
         ("pred_set",[1])]),["DISK_THM"]), [read"%316"])
  fun op EXTENSION x = x
    val op EXTENSION =
    DT(((("pred_set",3),
        [("bool",[14,25,26,56]),("pred_set",[0])]),["DISK_THM"]),
       [read"%116%72%116%86%147%148$1@$0@@%113%99%147%244$0@$2@@%244$0@$1@@|@@|@|@"])
  fun op NOT_EQUAL_SETS x = x
    val op NOT_EQUAL_SETS =
    DT(((("pred_set",4),
        [("bool",[25,26,27,30,54,63]),("pred_set",[3])]),["DISK_THM"]),
       [read"%116%72%116%86%147%356%148$1@$0@@@%164%99%147%244$0@$1@@%356%244$0@$2@@@|@@|@|@"])
  fun op NUM_SET_WOP x = x
    val op NUM_SET_WOP =
    DT(((("pred_set",5),
        [("arithmetic",[59,109]),("bool",[25,26,54,58,63])]),["DISK_THM"]),
       [read"%127%75%147%172%60%247$0@$1@|@@%172%60%141%247$0@$1@@%128%58%163%247$0@$2@@%144$1@$0@@|@@|@@|@"])
  fun op GSPECIFICATION_applied x = x
    val op GSPECIFICATION_applied =
    DT(((("pred_set",7),[("pred_set",[0,6])]),["DISK_THM"]),
       [read"%123%48%113%96%147%224$1@$0@@%165%100%161%133$1@%316@@$2$0@@|@@|@|@"])
  fun op SET_MINIMUM x = x
    val op SET_MINIMUM =
    DT(((("pred_set",8),
        [("bool",[25,26,51,56,63]),("pair",[3]),
         ("pred_set",[5,6])]),["DISK_THM"]),
       [read"%116%72%119%8%147%164%99%244$0@$2@|@@%164%99%141%244$0@$2@@%113%106%163%244$0@$3@@%144$2$1@@$2$0@@@|@@|@@|@|@"])
  fun op NOT_IN_EMPTY x = x
    val op NOT_IN_EMPTY =
    DT(((("pred_set",10),[("bool",[27]),("pred_set",[0,9])]),["DISK_THM"]),
       [read"%113%99%356%244$0@%205@@|@"])
  fun op MEMBER_NOT_EMPTY x = x
    val op MEMBER_NOT_EMPTY =
    DT(((("pred_set",11),
        [("bool",[25,26,27,36,54,56,63]),
         ("pred_set",[3,10])]),["DISK_THM"]),
       [read"%116%72%147%164%99%244$0@$1@|@@%356%148$0@%205@@@|@"])
  fun op EMPTY_applied x = x
    val op EMPTY_applied =
    DT(((("pred_set",12),
        [("bool",[25,35,54,63]),("pred_set",[9])]),["DISK_THM"]),
       [read"%147%205%99@@%215@"])
  fun op IN_UNIV x = x
    val op IN_UNIV =
    DT(((("pred_set",14),
        [("bool",[25]),("pred_set",[0,13])]),["DISK_THM"]),
       [read"%113%99%244$0@%324@|@"])
  fun op UNIV_NOT_EMPTY x = x
    val op UNIV_NOT_EMPTY =
    DT(((("pred_set",15),
        [("bool",[25,26,27,36,54,63]),
         ("pred_set",[3,10,14])]),["DISK_THM"]),
       [read"%356%148%324@%205@@"])
  fun op EMPTY_NOT_UNIV x = x
    val op EMPTY_NOT_UNIV =
    DT(((("pred_set",16),
        [("bool",[25,26,27,36,54,63]),
         ("pred_set",[3,10,14])]),["DISK_THM"]),
       [read"%356%148%205@%324@@"])
  fun op EQ_UNIV x = x
    val op EQ_UNIV =
    DT(((("pred_set",17),
        [("bool",[25,56,63]),("pred_set",[3,14])]),["DISK_THM"]),
       [read"%147%113%99%244$0@%72@|@@%148%72@%324@@"])
  fun op SUBSET_TRANS x = x
    val op SUBSET_TRANS =
    DT(((("pred_set",19),[("pred_set",[18])]),[]),
       [read"%116%72%116%86%116%94%163%141%298$2@$1@@%298$1@$0@@@%298$2@$0@@|@|@|@"])
  fun op SUBSET_REFL x = x
    val op SUBSET_REFL =
    DT(((("pred_set",20),
        [("bool",[25,36,53]),("pred_set",[18])]),["DISK_THM"]),
       [read"%116%72%298$0@$0@|@"])
  fun op SUBSET_ANTISYM x = x
    val op SUBSET_ANTISYM =
    DT(((("pred_set",21),
        [("bool",[26]),("pred_set",[3,18])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%298$1@$0@@%298$0@$1@@@%148$1@$0@@|@|@"])
  fun op EMPTY_SUBSET x = x
    val op EMPTY_SUBSET =
    DT(((("pred_set",22),
        [("bool",[25,26,27,36,53]),("pred_set",[10,18])]),["DISK_THM"]),
       [read"%116%72%298%205@$0@|@"])
  fun op SUBSET_EMPTY x = x
    val op SUBSET_EMPTY =
    DT(((("pred_set",23),
        [("bool",[25,26,27,36,53,56,63]),
         ("pred_set",[3,10,18])]),["DISK_THM"]),
       [read"%116%72%147%298$0@%205@@%148$0@%205@@|@"])
  fun op SUBSET_UNIV x = x
    val op SUBSET_UNIV =
    DT(((("pred_set",24),
        [("bool",[25,36,53,63]),("pred_set",[14,18])]),["DISK_THM"]),
       [read"%116%72%298$0@%324@|@"])
  fun op UNIV_SUBSET x = x
    val op UNIV_SUBSET =
    DT(((("pred_set",25),
        [("bool",[25,36,53,56,63]),("pred_set",[3,14,18])]),["DISK_THM"]),
       [read"%116%72%147%298%324@$0@@%148$0@%324@@|@"])
  fun op PSUBSET_TRANS x = x
    val op PSUBSET_TRANS =
    DT(((("pred_set",27),
        [("bool",[27,48]),("pred_set",[19,21,26])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%163%141%289$2@$1@@%289$1@$0@@@%289$2@$0@@|@|@|@"])
  fun op PSUBSET_IRREFL x = x
    val op PSUBSET_IRREFL =
    DT(((("pred_set",28),
        [("bool",[25,36,51,54,56,63]),("pred_set",[20,26])]),["DISK_THM"]),
       [read"%116%72%356%289$0@$0@@|@"])
  fun op NOT_PSUBSET_EMPTY x = x
    val op NOT_PSUBSET_EMPTY =
    DT(((("pred_set",29),
        [("bool",[25,26,27,36,50,54]),("pred_set",[23,26])]),["DISK_THM"]),
       [read"%116%72%356%289$0@%205@@|@"])
  fun op NOT_UNIV_PSUBSET x = x
    val op NOT_UNIV_PSUBSET =
    DT(((("pred_set",30),
        [("bool",[30,54,58,94,96]),("pred_set",[25,26])]),["DISK_THM"]),
       [read"%116%72%356%289%324@$0@@|@"])
  fun op PSUBSET_UNIV x = x
    val op PSUBSET_UNIV =
    DT(((("pred_set",31),
        [("bool",[26,51,63]),("pred_set",[3,14,24,26])]),["DISK_THM"]),
       [read"%116%72%147%289$0@%324@@%164%99%356%244$0@$1@@|@@|@"])
  fun op IN_UNION x = x
    val op IN_UNION =
    DT(((("pred_set",33),
        [("bool",[26,63]),("pair",[3]),("pred_set",[6,32])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%244$0@%318$2@$1@@@%335%244$0@$2@@%244$0@$1@@@|@|@|@"])
  fun op UNION_applied x = x
    val op UNION_applied =
    DT(((("pred_set",34),
        [("bool",[18]),("marker",[9]),("pred_set",[33])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%318$2@$1@$0@@%335%244$0@$2@@%244$0@$1@@@|@|@|@"])
  fun op UNION_ASSOC x = x
    val op UNION_ASSOC =
    DT(((("pred_set",35),
        [("bool",[25,26,52,63]),("pred_set",[3,33])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%148%318$2@%318$1@$0@@@%318%318$2@$1@@$0@@|@|@|@"])
  fun op UNION_IDEMPOT x = x
    val op UNION_IDEMPOT =
    DT(((("pred_set",36),
        [("bool",[25,36,52,56]),("pred_set",[3,33])]),["DISK_THM"]),
       [read"%116%72%148%318$0@$0@@$0@|@"])
  fun op UNION_COMM x = x
    val op UNION_COMM =
    DT(((("pred_set",37),
        [("bool",[94]),("pred_set",[3,33])]),["DISK_THM"]),
       [read"%116%72%116%86%148%318$1@$0@@%318$0@$1@@|@|@"])
  fun op SUBSET_UNION x = x
    val op SUBSET_UNION =
    DT(((("pred_set",38),
        [("bool",[25,52,63]),("pred_set",[18,33])]),["DISK_THM"]),
       [read"%141%116%72%116%86%298$1@%318$1@$0@@|@|@@%116%72%116%86%298$1@%318$0@$1@@|@|@@"])
  fun op UNION_SUBSET x = x
    val op UNION_SUBSET =
    DT(((("pred_set",39),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("pred_set",[18,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%147%298%318$2@$1@@$0@@%141%298$2@$0@@%298$1@$0@@@|@|@|@"])
  fun op SUBSET_UNION_ABSORPTION x = x
    val op SUBSET_UNION_ABSORPTION =
    DT(((("pred_set",40),
        [("bool",[25,26,52,63]),("pred_set",[3,18,33])]),["DISK_THM"]),
       [read"%116%72%116%86%147%298$1@$0@@%148%318$1@$0@@$0@@|@|@"])
  fun op UNION_EMPTY x = x
    val op UNION_EMPTY =
    DT(((("pred_set",41),
        [("bool",[25,26,27,36,51,52,56]),
         ("pred_set",[3,10,33])]),["DISK_THM"]),
       [read"%141%116%72%148%318%205@$0@@$0@|@@%116%72%148%318$0@%205@@$0@|@@"])
  fun op UNION_UNIV x = x
    val op UNION_UNIV =
    DT(((("pred_set",42),
        [("bool",[25,36,51,52,63]),("pred_set",[3,14,33])]),["DISK_THM"]),
       [read"%141%116%72%148%318%324@$0@@%324@|@@%116%72%148%318$0@%324@@%324@|@@"])
  fun op EMPTY_UNION x = x
    val op EMPTY_UNION =
    DT(((("pred_set",43),
        [("bool",[26,27,63,96]),("pred_set",[3,10,33])]),["DISK_THM"]),
       [read"%116%72%116%86%147%148%318$1@$0@@%205@@%141%148$1@%205@@%148$0@%205@@@|@|@"])
  fun op IN_INTER x = x
    val op IN_INTER =
    DT(((("pred_set",45),
        [("bool",[26,63]),("pair",[3]),("pred_set",[6,44])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%244$0@%269$2@$1@@@%141%244$0@$2@@%244$0@$1@@@|@|@|@"])
  fun op INTER_applied x = x
    val op INTER_applied =
    DT(((("pred_set",46),
        [("bool",[18]),("marker",[9]),("pred_set",[45])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%269$2@$1@$0@@%141%244$0@$2@@%244$0@$1@@@|@|@|@"])
  fun op INTER_ASSOC x = x
    val op INTER_ASSOC =
    DT(((("pred_set",47),
        [("bool",[25,36,43,56]),("pred_set",[3,45])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%148%269$2@%269$1@$0@@@%269%269$2@$1@@$0@@|@|@|@"])
  fun op INTER_IDEMPOT x = x
    val op INTER_IDEMPOT =
    DT(((("pred_set",48),
        [("bool",[25,36,51,56]),("pred_set",[3,45])]),["DISK_THM"]),
       [read"%116%72%148%269$0@$0@@$0@|@"])
  fun op INTER_COMM x = x
    val op INTER_COMM =
    DT(((("pred_set",49),
        [("bool",[41]),("pred_set",[3,45])]),["DISK_THM"]),
       [read"%116%72%116%86%148%269$1@$0@@%269$0@$1@@|@|@"])
  fun op INTER_SUBSET x = x
    val op INTER_SUBSET =
    DT(((("pred_set",50),[("pred_set",[18,45])]),["DISK_THM"]),
       [read"%141%116%72%116%86%298%269$1@$0@@$1@|@|@@%116%72%116%86%298%269$0@$1@@$1@|@|@@"])
  fun op SUBSET_INTER x = x
    val op SUBSET_INTER =
    DT(((("pred_set",51),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("pred_set",[18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%147%298$2@%269$1@$0@@@%141%298$2@$1@@%298$2@$0@@@|@|@|@"])
  fun op SUBSET_INTER_ABSORPTION x = x
    val op SUBSET_INTER_ABSORPTION =
    DT(((("pred_set",52),
        [("bool",[26]),("pred_set",[3,18,45])]),["DISK_THM"]),
       [read"%116%72%116%86%147%298$1@$0@@%148%269$1@$0@@$1@@|@|@"])
  fun op INTER_EMPTY x = x
    val op INTER_EMPTY =
    DT(((("pred_set",53),
        [("bool",[25,26,27,36,51,54,63]),
         ("pred_set",[3,10,45])]),["DISK_THM"]),
       [read"%141%116%72%148%269%205@$0@@%205@|@@%116%72%148%269$0@%205@@%205@|@@"])
  fun op INTER_UNIV x = x
    val op INTER_UNIV =
    DT(((("pred_set",54),
        [("bool",[25,36,51,56,63]),("pred_set",[3,14,45])]),["DISK_THM"]),
       [read"%141%116%72%148%269%324@$0@@$0@|@@%116%72%148%269$0@%324@@$0@|@@"])
  fun op UNION_OVER_INTER x = x
    val op UNION_OVER_INTER =
    DT(((("pred_set",55),
        [("bool",[25,26,51,52,63]),("pred_set",[3,33,45])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%148%269$2@%318$1@$0@@@%318%269$2@$1@@%269$2@$0@@@|@|@|@"])
  fun op INTER_OVER_UNION x = x
    val op INTER_OVER_UNION =
    DT(((("pred_set",56),
        [("bool",[25,26,51,52,63]),("pred_set",[3,33,45])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%148%318$2@%269$1@$0@@@%269%318$2@$1@@%318$2@$0@@@|@|@|@"])
  fun op IN_DISJOINT x = x
    val op IN_DISJOINT =
    DT(((("pred_set",58),
        [("bool",[26,27,63]),("pred_set",[3,10,45,57])]),["DISK_THM"]),
       [read"%116%72%116%86%147%203$1@$0@@%356%164%99%141%244$0@$2@@%244$0@$1@@|@@@|@|@"])
  fun op DISJOINT_SYM x = x
    val op DISJOINT_SYM =
    DT(((("pred_set",59),[("pred_set",[49,57])]),["DISK_THM"]),
       [read"%116%72%116%86%147%203$1@$0@@%203$0@$1@@|@|@"])
  fun op DISJOINT_EMPTY x = x
    val op DISJOINT_EMPTY =
    DT(((("pred_set",60),
        [("bool",[25,36,51,56]),("pred_set",[53,57])]),["DISK_THM"]),
       [read"%116%72%141%203%205@$0@@%203$0@%205@@|@"])
  fun op DISJOINT_EMPTY_REFL x = x
    val op DISJOINT_EMPTY_REFL =
    DT(((("pred_set",61),
        [("bool",[25,36,56]),("pred_set",[48,57])]),["DISK_THM"]),
       [read"%116%72%147%148$0@%205@@%203$0@$0@@|@"])
  fun op DISJOINT_EMPTY_REFL_RWT x = x
    val op DISJOINT_EMPTY_REFL_RWT =
    DT(((("pred_set",62),[("bool",[58]),("pred_set",[61])]),["DISK_THM"]),
       [read"%116%72%147%203$0@$0@@%148$0@%205@@|@"])
  fun op DISJOINT_UNION x = x
    val op DISJOINT_UNION =
    DT(((("pred_set",63),
        [("bool",[25,26,27,51,52,54,96,98]),
         ("pred_set",[33,58])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%147%203%318$2@$1@@$0@@%141%203$2@$0@@%203$1@$0@@@|@|@|@"])
  fun op DISJOINT_UNION_BOTH x = x
    val op DISJOINT_UNION_BOTH =
    DT(((("pred_set",64),
        [("bool",[25,26,47,48,53,54,58,63,71,73,76,94,96]),
         ("pred_set",[59,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%141%147%203%318$2@$1@@$0@@%141%203$2@$0@@%203$1@$0@@@@%147%203$0@%318$2@$1@@@%141%203$2@$0@@%203$1@$0@@@@|@|@|@"])
  fun op DISJOINT_SUBSET x = x
    val op DISJOINT_SUBSET =
    DT(((("pred_set",65),
        [("bool",[25,26,27,47,48,53,54,58,63,71,81,94,96]),
         ("pred_set",[3,10,18,45,57]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%163%141%203$2@$1@@%298$0@$1@@@%203$2@$0@@|@|@|@"])
  fun op IN_DIFF x = x
    val op IN_DIFF =
    DT(((("pred_set",67),
        [("bool",[26,63]),("pair",[3]),("pred_set",[6,66])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%244$0@%202$2@$1@@@%141%244$0@$2@@%356%244$0@$1@@@@|@|@|@"])
  fun op DIFF_applied x = x
    val op DIFF_applied =
    DT(((("pred_set",68),
        [("bool",[18]),("marker",[9]),("pred_set",[67])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%202$2@$1@$0@@%141%244$0@$2@@%356%244$0@$1@@@@|@|@|@"])
  fun op DIFF_EMPTY x = x
    val op DIFF_EMPTY =
    DT(((("pred_set",69),
        [("bool",[25,26,27,36,51,54,56]),
         ("pred_set",[3,10,67])]),["DISK_THM"]),
       [read"%116%72%148%202$0@%205@@$0@|@"])
  fun op EMPTY_DIFF x = x
    val op EMPTY_DIFF =
    DT(((("pred_set",70),
        [("bool",[25,26,27,36,51,54,63]),
         ("pred_set",[3,10,67])]),["DISK_THM"]),
       [read"%116%72%148%202%205@$0@@%205@|@"])
  fun op DIFF_UNIV x = x
    val op DIFF_UNIV =
    DT(((("pred_set",71),
        [("bool",[25,26,27,36,51,54,63]),
         ("pred_set",[3,10,14,67])]),["DISK_THM"]),
       [read"%116%72%148%202$0@%324@@%205@|@"])
  fun op DIFF_DIFF x = x
    val op DIFF_DIFF =
    DT(((("pred_set",72),
        [("bool",[25,36,43,51,56]),("pred_set",[3,67])]),["DISK_THM"]),
       [read"%116%72%116%86%148%202%202$1@$0@@$0@@%202$1@$0@@|@|@"])
  fun op DIFF_EQ_EMPTY x = x
    val op DIFF_EQ_EMPTY =
    DT(((("pred_set",73),
        [("bool",[25,26,27,30,36,54,63,94,96]),
         ("pred_set",[3,10,67])]),["DISK_THM"]),
       [read"%116%72%148%202$0@$0@@%205@|@"])
  fun op DIFF_SUBSET x = x
    val op DIFF_SUBSET =
    DT(((("pred_set",74),
        [("bool",[25,26,47,48,53,54,63,71]),("pred_set",[18,67]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%298%202$1@$0@@$1@|@|@"])
  fun op UNION_DIFF x = x
    val op UNION_DIFF =
    DT(((("pred_set",75),
        [("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("pred_set",[3,18,33,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%163%298%72@%86@@%141%148%318%72@%202%86@%72@@@%86@@%148%318%202%86@%72@@%72@@%86@@@"])
  fun op DIFF_UNION x = x
    val op DIFF_UNION =
    DT(((("pred_set",76),
        [("bool",[26,27,48,96]),("pred_set",[3,33,67])]),["DISK_THM"]),
       [read"%116%101%116%108%116%112%148%202$2@%318$1@$0@@@%202%202$2@$1@@$0@@|@|@|@"])
  fun op DIFF_COMM x = x
    val op DIFF_COMM =
    DT(((("pred_set",77),
        [("bool",[26,27,48]),("pred_set",[3,67])]),["DISK_THM"]),
       [read"%116%101%116%108%116%112%148%202%202$2@$1@@$0@@%202%202$2@$0@@$1@@|@|@|@"])
  fun op DIFF_SAME_UNION x = x
    val op DIFF_SAME_UNION =
    DT(((("pred_set",78),
        [("bool",[26,27,48,51,52,53,54,58,63,105,106,124]),
         ("pred_set",[3,33,67])]),["DISK_THM"]),
       [read"%116%101%116%108%141%148%202%318$1@$0@@$1@@%202$0@$1@@@%148%202%318$1@$0@@$0@@%202$1@$0@@@|@|@"])
  fun op IN_INSERT x = x
    val op IN_INSERT =
    DT(((("pred_set",80),
        [("bool",[26,63]),("pair",[3]),("pred_set",[6,79])]),["DISK_THM"]),
       [read"%113%99%113%106%116%72%147%244$2@%263$1@$0@@@%335%145$2@$1@@%244$2@$0@@@|@|@|@"])
  fun op INSERT_applied x = x
    val op INSERT_applied =
    DT(((("pred_set",81),
        [("bool",[18]),("marker",[9]),("pred_set",[80])]),["DISK_THM"]),
       [read"%113%99%113%106%116%72%147%263$1@$0@$2@@%335%145$2@$1@@%244$2@$0@@@|@|@|@"])
  fun op COMPONENT x = x
    val op COMPONENT =
    DT(((("pred_set",82),
        [("bool",[25,36,52,56]),("pred_set",[80])]),["DISK_THM"]),
       [read"%113%99%116%72%244$1@%263$1@$0@@|@|@"])
  fun op SET_CASES x = x
    val op SET_CASES =
    DT(((("pred_set",83),
        [("bool",[25,26,27,30,51,54,56,63]),("pair",[3]),
         ("pred_set",[3,6,10,80])]),["DISK_THM"]),
       [read"%116%72%335%148$0@%205@@%164%99%167%86%141%148$2@%263$1@$0@@@%356%244$1@$0@@@|@|@@|@"])
  fun op DECOMPOSITION x = x
    val op DECOMPOSITION =
    DT(((("pred_set",84),
        [("bool",[25,26,27,30,51,52,54,56,63]),("pair",[3]),
         ("pred_set",[3,6,80])]),["DISK_THM"]),
       [read"%116%72%113%99%147%244$0@$1@@%167%86%141%148$2@%263$1@$0@@@%356%244$1@$0@@@|@@|@|@"])
  fun op ABSORPTION x = x
    val op ABSORPTION =
    DT(((("pred_set",85),
        [("bool",[25,26,52,63]),("pred_set",[3,80])]),["DISK_THM"]),
       [read"%113%99%116%72%147%244$1@$0@@%148%263$1@$0@@$0@@|@|@"])
  fun op ABSORPTION_RWT x = x
    val op ABSORPTION_RWT =
    DT(((("pred_set",86),
        [("bool",[25,53,54,63]),("pred_set",[85]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%113%99%116%72%163%244$1@$0@@%148%263$1@$0@@$0@@|@|@"])
  fun op INSERT_INSERT x = x
    val op INSERT_INSERT =
    DT(((("pred_set",87),
        [("bool",[25,26,52,56,63]),("pred_set",[3,80])]),["DISK_THM"]),
       [read"%113%99%116%72%148%263$1@%263$1@$0@@@%263$1@$0@@|@|@"])
  fun op INSERT_COMM x = x
    val op INSERT_COMM =
    DT(((("pred_set",88),
        [("bool",[25,26,52,56,63]),("pred_set",[3,80])]),["DISK_THM"]),
       [read"%113%99%113%106%116%72%148%263$2@%263$1@$0@@@%263$1@%263$2@$0@@@|@|@|@"])
  fun op INSERT_UNIV x = x
    val op INSERT_UNIV =
    DT(((("pred_set",89),
        [("bool",[25,36,52,63]),("pred_set",[3,14,80])]),["DISK_THM"]),
       [read"%113%99%148%263$0@%324@@%324@|@"])
  fun op NOT_INSERT_EMPTY x = x
    val op NOT_INSERT_EMPTY =
    DT(((("pred_set",90),
        [("bool",[25,26,27,52,54,56,63]),
         ("pred_set",[3,10,80])]),["DISK_THM"]),
       [read"%113%99%116%72%356%148%263$1@$0@@%205@@|@|@"])
  fun op NOT_EMPTY_INSERT x = x
    val op NOT_EMPTY_INSERT =
    DT(((("pred_set",91),
        [("bool",[25,26,27,52,54,56,63]),
         ("pred_set",[3,10,80])]),["DISK_THM"]),
       [read"%113%99%116%72%356%148%205@%263$1@$0@@@|@|@"])
  fun op INSERT_UNION x = x
    val op INSERT_UNION =
    DT(((("pred_set",92),
        [("bool",[25,26,27,30,52,56,63,64]),
         ("pred_set",[3,33,80])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%148%318%263$2@$1@@$0@@%194%244$2@$0@@%318$1@$0@@%263$2@%318$1@$0@@@@|@|@|@"])
  fun op INSERT_UNION_EQ x = x
    val op INSERT_UNION_EQ =
    DT(((("pred_set",93),
        [("bool",[25,36,56,93]),("pred_set",[3,33,80])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%148%318%263$2@$1@@$0@@%263$2@%318$1@$0@@@|@|@|@"])
  fun op INSERT_INTER x = x
    val op INSERT_INTER =
    DT(((("pred_set",94),
        [("bool",[25,26,27,30,41,51,52,53,56,63,64]),
         ("pred_set",[3,45,80])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%148%269%263$2@$1@@$0@@%194%244$2@$0@@%263$2@%269$1@$0@@@%269$1@$0@@@|@|@|@"])
  fun op DISJOINT_INSERT x = x
    val op DISJOINT_INSERT =
    DT(((("pred_set",95),
        [("bool",[25,26,27,30,51,52,53,54,56,63,96]),
         ("pred_set",[58,80])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%147%203%263$2@$1@@$0@@%141%203$1@$0@@%356%244$2@$0@@@@|@|@|@"])
  fun op DISJOINT_INSERT' x = x
    val op DISJOINT_INSERT' =
    DT(((("pred_set",96),[("pred_set",[59,95])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%147%203$0@%263$2@$1@@@%141%203$0@$1@@%356%244$2@$0@@@@|@|@|@"])
  fun op INSERT_SUBSET x = x
    val op INSERT_SUBSET =
    DT(((("pred_set",97),
        [("bool",[25,26,63]),("pred_set",[18,80])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%147%298%263$2@$1@@$0@@%141%244$2@$0@@%298$1@$0@@@|@|@|@"])
  fun op SUBSET_INSERT x = x
    val op SUBSET_INSERT =
    DT(((("pred_set",98),
        [("bool",[26,27]),("pred_set",[18,80])]),["DISK_THM"]),
       [read"%113%99%116%72%163%356%244$1@$0@@@%116%86%147%298$1@%263$2@$0@@@%298$1@$0@@|@@|@|@"])
  fun op INSERT_DIFF x = x
    val op INSERT_DIFF =
    DT(((("pred_set",99),
        [("bool",[25,26,27,30,48,51,52,54,56,63,64]),
         ("pred_set",[3,67,80])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%148%202%263$0@$2@@$1@@%194%244$0@$1@@%202$2@$1@@%263$0@%202$2@$1@@@@|@|@|@"])
  fun op UNIV_BOOL x = x
    val op UNIV_BOOL =
    DT(((("pred_set",100),
        [("bool",[25,26,27,30,36,52,58,63]),
         ("pred_set",[3,10,14,80])]),["DISK_THM"]),
       [read"%152%326@%265%316@%265%215@%208@@@"])
  fun op IN_DELETE x = x
    val op IN_DELETE =
    DT(((("pred_set",102),
        [("bool",[25,26,27,36,52,56]),
         ("pred_set",[10,67,80,101])]),["DISK_THM"]),
       [read"%116%72%113%99%113%106%147%244$1@%199$2@$0@@@%141%244$1@$2@@%356%145$1@$0@@@@|@|@|@"])
  fun op DELETE_applied x = x
    val op DELETE_applied =
    DT(((("pred_set",103),
        [("bool",[18]),("marker",[9]),("pred_set",[102])]),["DISK_THM"]),
       [read"%116%72%113%99%113%106%147%199$2@$0@$1@@%141%244$1@$2@@%356%145$1@$0@@@@|@|@|@"])
  fun op DELETE_NON_ELEMENT x = x
    val op DELETE_NON_ELEMENT =
    DT(((("pred_set",104),
        [("bool",[26,27]),("pred_set",[3,102])]),["DISK_THM"]),
       [read"%113%99%116%72%147%356%244$1@$0@@@%148%199$0@$1@@$0@@|@|@"])
  fun op DELETE_NON_ELEMENT_RWT x = x
    val op DELETE_NON_ELEMENT_RWT =
    DT(((("pred_set",105),[("pred_set",[104])]),["DISK_THM"]),
       [read"%113%99%116%72%163%356%244$1@$0@@@%148%199$0@$1@@$0@@|@|@"])
  fun op IN_DELETE_EQ x = x
    val op IN_DELETE_EQ =
    DT(((("pred_set",106),
        [("bool",[25,26,27,30,47,51,54,56,63]),
         ("pred_set",[102])]),["DISK_THM"]),
       [read"%116%72%113%99%113%104%147%147%244$1@$2@@%244$0@$2@@@%147%244$1@%199$2@$0@@@%244$0@%199$2@$1@@@@|@|@|@"])
  fun op EMPTY_DELETE x = x
    val op EMPTY_DELETE =
    DT(((("pred_set",107),
        [("bool",[25,26,27,36,51,54,63]),
         ("pred_set",[3,10,102])]),["DISK_THM"]),
       [read"%113%99%148%199%205@$0@@%205@|@"])
  fun op DELETE_DELETE x = x
    val op DELETE_DELETE =
    DT(((("pred_set",108),
        [("bool",[25,36,43,51,56]),("pred_set",[3,102])]),["DISK_THM"]),
       [read"%113%99%116%72%148%199%199$0@$1@@$1@@%199$0@$1@@|@|@"])
  fun op DELETE_COMM x = x
    val op DELETE_COMM =
    DT(((("pred_set",109),
        [("bool",[26]),("pred_set",[3,102])]),["DISK_THM"]),
       [read"%113%99%113%106%116%72%148%199%199$0@$2@@$1@@%199%199$0@$1@@$2@@|@|@|@"])
  fun op DELETE_SUBSET x = x
    val op DELETE_SUBSET =
    DT(((("pred_set",110),[("pred_set",[18,102])]),["DISK_THM"]),
       [read"%113%99%116%72%298%199$0@$1@@$0@|@|@"])
  fun op SUBSET_DELETE x = x
    val op SUBSET_DELETE =
    DT(((("pred_set",111),
        [("bool",[26,27]),("pred_set",[18,102])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%147%298$1@%199$0@$2@@@%141%356%244$2@$1@@@%298$1@$0@@@|@|@|@"])
  fun op SUBSET_INSERT_DELETE x = x
    val op SUBSET_INSERT_DELETE =
    DT(((("pred_set",112),
        [("bool",[25,26,27,30,48,52,56]),
         ("pred_set",[18,80,102])]),["DISK_THM"]),
       [read"%113%99%116%72%116%86%147%298$1@%263$2@$0@@@%298%199$1@$2@@$0@@|@|@|@"])
  fun op DIFF_INSERT x = x
    val op DIFF_INSERT =
    DT(((("pred_set",113),
        [("bool",[25,36,43,56,96]),
         ("pred_set",[3,67,80,102])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%148%202$2@%263$0@$1@@@%202%199$2@$0@@$1@@|@|@|@"])
  fun op PSUBSET_INSERT_SUBSET x = x
    val op PSUBSET_INSERT_SUBSET =
    DT(((("pred_set",114),
        [("bool",[25,26,27,30,48,51,54,63]),
         ("pred_set",[4,18,26,97])]),["DISK_THM"]),
       [read"%116%72%116%86%147%289$1@$0@@%164%99%141%356%244$0@$2@@@%298%263$0@$2@@$1@@|@@|@|@"])
  fun op PSUBSET_MEMBER x = x
    val op PSUBSET_MEMBER =
    DT(((("pred_set",115),
        [("bool",[13,25,26,27,30,51,54,56,63]),
         ("pred_set",[3,18,26])]),["DISK_THM"]),
       [read"%116%72%116%86%147%289$1@$0@@%141%298$1@$0@@%164%106%141%244$0@$1@@%356%244$0@$2@@@|@@@|@|@"])
  fun op DELETE_INSERT x = x
    val op DELETE_INSERT =
    DT(((("pred_set",116),
        [("bool",[25,26,27,30,51,52,54,56,63,64]),
         ("pred_set",[3,80,102])]),["DISK_THM"]),
       [read"%113%99%113%106%116%72%148%199%263$2@$0@@$1@@%194%145$2@$1@@%199$0@$1@@%263$2@%199$0@$1@@@@|@|@|@"])
  fun op INSERT_DELETE x = x
    val op INSERT_DELETE =
    DT(((("pred_set",117),
        [("bool",[25,26,27,30,51,52,53,54,56,63]),
         ("pred_set",[3,80,102])]),["DISK_THM"]),
       [read"%113%99%116%72%163%244$1@$0@@%148%263$1@%199$0@$1@@@$0@@|@|@"])
  fun op DELETE_INTER x = x
    val op DELETE_INTER =
    DT(((("pred_set",118),
        [("bool",[26,27,48]),("pred_set",[3,45,102])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%148%269%199$2@$0@@$1@@%199%269$2@$1@@$0@@|@|@|@"])
  fun op DISJOINT_DELETE_SYM x = x
    val op DISJOINT_DELETE_SYM =
    DT(((("pred_set",119),
        [("bool",[25,26,27,52,54,56,63,96]),
         ("pred_set",[3,10,45,57,102])]),["DISK_THM"]),
       [read"%116%72%116%86%113%99%147%203%199$2@$0@@$1@@%203%199$1@$0@@$2@@|@|@|@"])
  fun op CHOICE_NOT_IN_REST x = x
    val op CHOICE_NOT_IN_REST =
    DT(((("pred_set",122),
        [("bool",[25,36,51,54,56]),("pred_set",[102,121])]),["DISK_THM"]),
       [read"%116%72%356%244%191$0@@%291$0@@@|@"])
  fun op CHOICE_INSERT_REST x = x
    val op CHOICE_INSERT_REST =
    DT(((("pred_set",123),
        [("bool",[25,26,30,51,63]),
         ("pred_set",[3,80,102,120,121])]),["DISK_THM"]),
       [read"%116%72%163%356%148$0@%205@@@%148%263%191$0@@%291$0@@@$0@@|@"])
  fun op REST_SUBSET x = x
    val op REST_SUBSET =
    DT(((("pred_set",124),[("pred_set",[18,102,121])]),["DISK_THM"]),
       [read"%116%72%298%291$0@@$0@|@"])
  fun op REST_PSUBSET x = x
    val op REST_PSUBSET =
    DT(((("pred_set",125),
        [("bool",[13,25,26,51,53,54,56,63,92]),
         ("pred_set",[3,26,102,120,121,124])]),["DISK_THM"]),
       [read"%116%72%163%356%148$0@%205@@@%289%291$0@@$0@@|@"])
  fun op SING x = x
    val op SING =
    DT(((("pred_set",127),[("pred_set",[126])]),[]),
       [read"%113%99%295%263$0@%205@@|@"])
  fun op SING_EMPTY x = x
    val op SING_EMPTY =
    DT(((("pred_set",128),
        [("bool",[25,26,27,37,54,58,63]),
         ("pred_set",[90,126])]),["DISK_THM"]),
       [read"%147%295%205@@%215@"])
  fun op SING_INSERT x = x
    val op SING_INSERT =
    DT(((("pred_set",129),
        [("bool",
         [2,25,26,27,36,51,52,53,54,56,58,63,73,101,102,105,106,124,143,
          145]),("marker",[9]),("pred_set",[3,10,80,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%295%263%99@%72@@@%335%148%72@%205@@%148%72@%263%99@%205@@@@"])
  fun op SING_UNION x = x
    val op SING_UNION =
    DT(((("pred_set",130),
        [("bool",
         [2,15,25,26,27,30,51,52,53,54,55,58,63,73,74,75,83,84,99,100,101,
          102,105,106,124,145]),("pred_set",[3,10,33,80,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%295%318%72@%86@@@%335%141%295%72@@%148%86@%205@@@%335%141%295%86@@%148%72@%205@@@%141%295%72@@%141%295%86@@%148%72@%86@@@@@@"])
  fun op IN_SING x = x
    val op IN_SING =
    DT(((("pred_set",131),
        [("bool",[25,26,27,36,52,56]),("pred_set",[10,80])]),["DISK_THM"]),
       [read"%113%99%113%106%147%244$1@%263$0@%205@@@%145$1@$0@@|@|@"])
  fun op SING_applied x = x
    val op SING_applied =
    DT(((("pred_set",132),
        [("bool",[18]),("marker",[9]),("pred_set",[131])]),["DISK_THM"]),
       [read"%113%99%113%106%147%263$0@%205@$1@@%145$1@$0@@|@|@"])
  fun op NOT_SING_EMPTY x = x
    val op NOT_SING_EMPTY =
    DT(((("pred_set",133),
        [("bool",[25,26,27,54,56,63]),
         ("pred_set",[3,10,131])]),["DISK_THM"]),
       [read"%113%99%356%148%263$0@%205@@%205@@|@"])
  fun op NOT_EMPTY_SING x = x
    val op NOT_EMPTY_SING =
    DT(((("pred_set",134),
        [("bool",[25,26,27,54,56,63]),
         ("pred_set",[3,10,131])]),["DISK_THM"]),
       [read"%113%99%356%148%205@%263$0@%205@@@|@"])
  fun op EQUAL_SING x = x
    val op EQUAL_SING =
    DT(((("pred_set",135),
        [("bool",[25,26,56]),("pred_set",[3,131])]),["DISK_THM"]),
       [read"%113%99%113%106%147%148%263$1@%205@@%263$0@%205@@@%145$1@$0@@|@|@"])
  fun op DISJOINT_SING_EMPTY x = x
    val op DISJOINT_SING_EMPTY =
    DT(((("pred_set",136),
        [("bool",[25,36,56]),("pred_set",[53,57])]),["DISK_THM"]),
       [read"%113%99%203%263$0@%205@@%205@|@"])
  fun op INSERT_SING_UNION x = x
    val op INSERT_SING_UNION =
    DT(((("pred_set",137),
        [("bool",[25,26,27,36,52,56]),
         ("pred_set",[3,10,33,80])]),["DISK_THM"]),
       [read"%116%72%113%99%148%263$0@$1@@%318%263$0@%205@@$1@@|@|@"])
  fun op SING_DELETE x = x
    val op SING_DELETE =
    DT(((("pred_set",138),
        [("bool",[25,26,27,30,36,41,52,54,63,96]),
         ("pred_set",[3,10,80,102])]),["DISK_THM"]),
       [read"%113%99%148%199%263$0@%205@@$0@@%205@|@"])
  fun op DELETE_EQ_SING x = x
    val op DELETE_EQ_SING =
    DT(((("pred_set",139),
        [("bool",[25,26,27,30,52,54,56,63,94,96]),
         ("pred_set",[3,10,80,102])]),["DISK_THM"]),
       [read"%116%72%113%99%163%244$0@$1@@%147%148%199$1@$0@@%205@@%148$1@%263$0@%205@@@@|@|@"])
  fun op CHOICE_SING x = x
    val op CHOICE_SING =
    DT(((("pred_set",140),
        [("bool",[25,53]),("pred_set",[120,131,133])]),["DISK_THM"]),
       [read"%113%99%145%191%263$0@%205@@@$0@|@"])
  fun op REST_SING x = x
    val op REST_SING =
    DT(((("pred_set",141),
        [("bool",[25,36,56]),("pred_set",[121,138,140])]),["DISK_THM"]),
       [read"%113%99%148%291%263$0@%205@@@%205@|@"])
  fun op SING_IFF_EMPTY_REST x = x
    val op SING_IFF_EMPTY_REST =
    DT(((("pred_set",142),
        [("bool",[25,26,27,36,51,52,54,56,63]),
         ("pred_set",[3,10,80,123,126,131,140,141])]),["DISK_THM"]),
       [read"%116%72%147%295$0@@%141%356%148$0@%205@@@%148%291$0@@%205@@@|@"])
  fun op IN_IMAGE x = x
    val op IN_IMAGE =
    DT(((("pred_set",144),
        [("bool",[26,63]),("pair",[3]),
         ("pred_set",[6,143])]),["DISK_THM"]),
       [read"%114%107%116%72%115%41%147%245$2@%232$0@$1@@@%164%99%141%146$3@$1$0@@@%244$0@$2@@|@@|@|@|@"])
  fun op IMAGE_applied x = x
    val op IMAGE_applied =
    DT(((("pred_set",145),
        [("bool",[18]),("marker",[9]),("pred_set",[144])]),["DISK_THM"]),
       [read"%114%107%116%72%115%41%147%232$0@$1@$2@@%164%99%141%146$3@$1$0@@@%244$0@$2@@|@@|@|@|@"])
  fun op IMAGE_IN x = x
    val op IMAGE_IN =
    DT(((("pred_set",146),[("pred_set",[144])]),["DISK_THM"]),
       [read"%113%99%116%72%163%244$1@$0@@%115%41%245$0$2@@%232$0@$1@@|@@|@|@"])
  fun op IMAGE_EMPTY x = x
    val op IMAGE_EMPTY =
    DT(((("pred_set",147),
        [("bool",[25,26,27,36,37,51,54,63]),
         ("pred_set",[3,10,144])]),["DISK_THM"]),
       [read"%115%41%150%232$0@%205@@%206@|@"])
  fun op IMAGE_ID x = x
    val op IMAGE_ID =
    DT(((("pred_set",148),
        [("bool",[25,26,51,56,63]),("pred_set",[3,144])]),["DISK_THM"]),
       [read"%116%72%148%231%99$0|@$0@@$0@|@"])
  fun op IMAGE_COMPOSE x = x
    val op IMAGE_COMPOSE =
    DT(((("pred_set",149),
        [("bool",[25,26,51,56,63]),("combin",[8]),
         ("pred_set",[3,144])]),["DISK_THM"]),
       [read"%121%47%115%54%116%72%151%233%351$2@$1@@$0@@%237$2@%232$1@$0@@@|@|@|@"])
  fun op IMAGE_INSERT x = x
    val op IMAGE_INSERT =
    DT(((("pred_set",150),
        [("bool",[25,26,51,52,56,63]),
         ("pred_set",[3,80,144])]),["DISK_THM"]),
       [read"%115%41%113%99%116%72%150%232$2@%263$1@$0@@@%264$2$1@@%232$2@$0@@@|@|@|@"])
  fun op IMAGE_EQ_EMPTY x = x
    val op IMAGE_EQ_EMPTY =
    DT(((("pred_set",151),
        [("bool",[25,26,27,36,54,56,63]),
         ("pred_set",[83,90,147,150])]),["DISK_THM"]),
       [read"%116%72%115%41%147%150%232$0@$1@@%206@@%148$1@%205@@|@|@"])
  fun op IMAGE_DELETE x = x
    val op IMAGE_DELETE =
    DT(((("pred_set",152),
        [("bool",[25,26,27,51,56,63]),
         ("pred_set",[3,102,144])]),["DISK_THM"]),
       [read"%115%41%113%99%116%72%163%356%244$1@$0@@@%150%232$2@%199$0@$1@@@%232$2@$0@@@|@|@|@"])
  fun op IMAGE_UNION x = x
    val op IMAGE_UNION =
    DT(((("pred_set",153),
        [("bool",[25,26,51,52,56,63]),
         ("pred_set",[3,33,144])]),["DISK_THM"]),
       [read"%115%41%116%72%116%86%150%232$2@%318$1@$0@@@%319%232$2@$1@@%232$2@$0@@@|@|@|@"])
  fun op IMAGE_SUBSET x = x
    val op IMAGE_SUBSET =
    DT(((("pred_set",154),
        [("bool",[25,51,56,63]),("pred_set",[18,144])]),["DISK_THM"]),
       [read"%116%72%116%86%163%298$1@$0@@%115%41%299%232$0@$2@@%232$0@$1@@|@@|@|@"])
  fun op IMAGE_INTER x = x
    val op IMAGE_INTER =
    DT(((("pred_set",155),[("pred_set",[18,45,144])]),["DISK_THM"]),
       [read"%115%41%116%72%116%86%299%232$2@%269$1@$0@@@%270%232$2@$1@@%232$2@$0@@@|@|@|@"])
  fun op IMAGE_11 x = x
    val op IMAGE_11 =
    DT(((("pred_set",156),
        [("bool",[25,26,36,51,53,56,58,63,73,86,101,105,106,124,143,145]),
         ("pred_set",[3,144])]),["DISK_THM"]),
       [read"%163%113%99%113%106%147%146%41$1@@%41$0@@@%145$1@$0@@|@|@@%147%150%232%41@%78@@%232%41@%80@@@%148%78@%80@@@"])
  fun op IMAGE_CONG x = x
    val op IMAGE_CONG =
    DT(((("pred_set",157),
        [("bool",[25,26,53,54,58,63,105,124]),("pred_set",[3,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%115%50%116%76%163%141%148$2@$0@@%113%99%163%244$0@$1@@%146$4$0@@$2$0@@@|@@@%150%232$3@$2@@%232$1@$0@@@|@|@|@|@"])
  fun op INJ_IFF x = x
    val op INJ_IFF =
    DT(((("pred_set",159),
        [("bool",[2,15,25,26,53,54,55,58,63,73,75,84,99,100]),
         ("pred_set",[158]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%252%41@%72@%87@@%141%113%99%163%244$0@%72@@%245%41$0@@%87@@|@@%113%99%113%106%163%141%244$1@%72@@%244$0@%72@@@%147%146%41$1@@%41$0@@@%145$1@$0@@@|@|@@@"])
  fun op INJ_ID x = x
    val op INJ_ID =
    DT(((("pred_set",160),[("pred_set",[158])]),[]),
       [read"%116%72%251%99$0|@$0@$0@|@"])
  fun op INJ_COMPOSE x = x
    val op INJ_COMPOSE =
    DT(((("pred_set",161),
        [("combin",[8]),("pred_set",[158])]),["DISK_THM"]),
       [read"%115%41%121%57%116%72%122%87%124%95%163%141%252$4@$2@$1@@%258$3@$1@$0@@@%253%351$3@$4@@$2@$0@@|@|@|@|@|@"])
  fun op INJ_EMPTY x = x
    val op INJ_EMPTY =
    DT(((("pred_set",162),
        [("bool",[26,27,36,51,53,63]),
         ("pred_set",[3,10,158])]),["DISK_THM"]),
       [read"%115%41%141%122%73%252$1@%205@$0@|@@%116%72%147%252$1@$0@%206@@%148$0@%205@@|@@|@"])
  fun op INJ_DELETE x = x
    val op INJ_DELETE =
    DT(((("pred_set",163),
        [("bool",[25,26,27,51,53,54,55,58,63,99,105,124]),
         ("pred_set",[67,69,101,102,113,158]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%122%87%115%41%163%252$0@$2@$1@@%113%31%163%244$0@$3@@%252$1@%199$3@$0@@%200$2@$1$0@@@@|@@|@|@|@"])
  fun op INJ_INSERT x = x
    val op INJ_INSERT =
    DT(((("pred_set",164),
        [("bool",[25,26,53,54,55,58,63,99,100,105,124]),
         ("pred_set",[80,158]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%113%99%116%72%122%87%147%252$3@%263$2@$1@@$0@@%141%252$3@$1@$0@@%141%245$3$2@@$0@@%113%106%163%141%244$0@$2@@%146$4$3@@$4$0@@@@%145$3@$0@@|@@@@|@|@|@|@"])
  fun op INJ_SUBSET x = x
    val op INJ_SUBSET =
    DT(((("pred_set",165),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("pred_set",[18,158])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%116%77%122%91%163%141%252$4@$3@$2@@%141%298$1@$3@@%299$2@$0@@@@%252$4@$1@$0@@|@|@|@|@|@"])
  fun op SURJ_ID x = x
    val op SURJ_ID =
    DT(((("pred_set",167),
        [("bool",[25,51,56,63]),("pred_set",[166])]),["DISK_THM"]),
       [read"%116%72%308%99$0|@$0@$0@|@"])
  fun op SURJ_COMPOSE x = x
    val op SURJ_COMPOSE =
    DT(((("pred_set",168),
        [("bool",[25,51,56,63]),("combin",[8]),
         ("pred_set",[166])]),["DISK_THM"]),
       [read"%115%41%121%57%116%72%122%87%124%95%163%141%309$4@$2@$1@@%313$3@$1@$0@@@%310%351$3@$4@@$2@$0@@|@|@|@|@|@"])
  fun op SURJ_EMPTY x = x
    val op SURJ_EMPTY =
    DT(((("pred_set",169),
        [("bool",[25,26,27,36,37,51,53,56,63]),
         ("pred_set",[3,10,166])]),["DISK_THM"]),
       [read"%115%41%141%122%73%147%309$1@%205@$0@@%150$0@%206@@|@@%116%72%147%309$1@$0@%206@@%148$0@%205@@|@@|@"])
  fun op IMAGE_SURJ x = x
    val op IMAGE_SURJ =
    DT(((("pred_set",170),
        [("bool",[25,26,41,51,56,58,63]),
         ("pred_set",[3,144,166])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%147%309$2@$1@$0@@%150%232$2@$1@@$0@@|@|@|@"])
  fun op SURJ_IMAGE x = x
    val op SURJ_IMAGE =
    DT(((("pred_set",171),
        [("bool",[25,56]),("pred_set",[170])]),["DISK_THM"]),
       [read"%309%41@%72@%232%41@%72@@"])
  fun op SURJ_INJ_INV x = x
    val op SURJ_INJ_INV =
    DT(((("pred_set",172),
        [("bool",[2,15,25,26,53,54,55,58,63,73,90,99,100,103,105,124,146]),
         ("pred_set",[158,166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%163%309%41@%72@%87@@%170%56%141%257$0@%87@%72@@%114%107%163%245$0@%87@@%146%41$1$0@@@$0@@|@@|@@"])
  fun op BIJ_ID x = x
    val op BIJ_ID =
    DT(((("pred_set",174),
        [("bool",[25,36,51,63]),("pred_set",[160,167,173])]),["DISK_THM"]),
       [read"%116%72%179%99$0|@$0@$0@|@"])
  fun op BIJ_EMPTY x = x
    val op BIJ_EMPTY =
    DT(((("pred_set",175),
        [("bool",[25,36,51,56,63]),
         ("pred_set",[162,169,173])]),["DISK_THM"]),
       [read"%115%41%141%122%73%147%180$1@%205@$0@@%150$0@%206@@|@@%116%72%147%180$1@$0@%206@@%148$0@%205@@|@@|@"])
  fun op BIJ_COMPOSE x = x
    val op BIJ_COMPOSE =
    DT(((("pred_set",176),[("pred_set",[161,168,173])]),["DISK_THM"]),
       [read"%115%41%121%57%116%72%122%87%124%95%163%141%180$4@$2@$1@@%183$3@$1@$0@@@%181%351$3@$4@@$2@$0@@|@|@|@|@|@"])
  fun op BIJ_DELETE x = x
    val op BIJ_DELETE =
    DT(((("pred_set",177),
        [("bool",[2,15,25,26,27,36,51,53,54,55,56,58,63,99,100,105,124]),
         ("pred_set",[67,69,101,102,113,158,163,166,173]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%122%87%115%41%163%180$0@$2@$1@@%113%31%163%244$0@$3@@%180$1@%199$3@$0@@%200$2@$1$0@@@@|@@|@|@|@"])
  fun op BIJ_LINV_INV x = x
    val op BIJ_LINV_INV =
    DT(((("pred_set",179),
        [("bool",[2,15,25,26,36,51,53,54,55,58,63,100,105,124]),
         ("pred_set",[158,166,173,178]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%180$2@$1@$0@@%114%100%163%245$0@$1@@%146$3%278$3@$2@$0@@@$0@@|@@|@|@|@"])
  fun op BIJ_LINV_BIJ x = x
    val op BIJ_LINV_BIJ =
    DT(((("pred_set",180),
        [("bool",[2,15,25,26,36,51,53,54,55,58,63,100,105,124]),
         ("pred_set",[158,166,173,178]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%180$2@$1@$0@@%182%278$2@$1@@$0@$1@@|@|@|@"])
  fun op BIJ_IFF_INV x = x
    val op BIJ_IFF_INV =
    DT(((("pred_set",181),
        [("bool",[2,15,25,26,36,51,53,54,55,58,63,73,75,83,84,99,105,124]),
         ("pred_set",[158,166,173,178,179,180]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%147%180$2@$1@$0@@%141%113%99%163%244$0@$2@@%245$3$0@@$1@@|@@%170%56%141%114%100%163%245$0@$2@@%244$1$0@@$3@@|@@%141%113%99%163%244$0@$3@@%145$1$4$0@@@$0@@|@@%114%100%163%245$0@$2@@%146$4$1$0@@@$0@@|@@@|@@@|@|@|@"])
  fun op BIJ_INSERT x = x
    val op BIJ_INSERT =
    DT(((("pred_set",182),
        [("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,63,64,73,99,100,101,102,
          105,124,129,145,147]),("pred_set",[80,85,102,181]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%180%41@%263%31@%72@@%87@@%335%141%356%244%31@%72@@@%141%245%41%31@@%87@@%180%41@%72@%200%87@%41%31@@@@@@%141%244%31@%72@@%180%41@%72@%87@@@@"])
  fun op FINITE_EMPTY x = x
    val op FINITE_EMPTY =
    DT(((("pred_set",185),[("pred_set",[184])]),[]), [read"%216%205@"])
  fun op FINITE_INDUCT x = x
    val op FINITE_INDUCT =
    DT(((("pred_set",186),
        [("bool",[25,26,27,30,36,51,53,56,63]),
         ("pred_set",[85,184,185])]),["DISK_THM"]),
       [read"%125%13%163%141$0%205@@%116%72%163%141%216$0@@$1$0@@@%113%31%163%356%244$0@$1@@@$2%263$0@$1@@@|@@|@@@%116%72%163%216$0@@$1$0@@|@@|@"])
  fun op FINITE_INSERT x = x
    val op FINITE_INSERT =
    DT(((("pred_set",187),
        [("bool",[25,26,27,30,36,53,56,63,64]),
         ("pred_set",[85,104,107,116,184,185,186])]),["DISK_THM"]),
       [read"%113%99%116%72%147%216%263$1@$0@@@%216$0@@|@|@"])
  fun op FINITE_DELETE x = x
    val op FINITE_DELETE =
    DT(((("pred_set",188),
        [("bool",[25,26,27,30,36,63,64]),
         ("pred_set",[104,107,116,117,184,185,186,187])]),["DISK_THM"]),
       [read"%113%99%116%72%147%216%199$0@$1@@@%216$0@@|@|@"])
  fun op FINITE_REST x = x
    val op FINITE_REST =
    DT(((("pred_set",189),
        [("bool",[25,36,53]),("pred_set",[121,188])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%216%291$0@@@|@"])
  fun op FINITE_UNION x = x
    val op FINITE_UNION =
    DT(((("pred_set",190),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,93,94,96,102,105,
          106,124]),
         ("pred_set",
         [3,33,35,36,37,41,80,85,92,104,107,116,184,185,186,187]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%116%86%147%216%318$1@$0@@@%141%216$1@@%216$0@@@|@|@"])
  fun op INTER_FINITE x = x
    val op INTER_FINITE =
    DT(((("pred_set",191),
        [("bool",[25,26,27,30,36,63,64]),
         ("pred_set",[53,94,185,186,187])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%216%269$1@$0@@|@@|@"])
  fun op SUBSET_FINITE x = x
    val op SUBSET_FINITE =
    DT(((("pred_set",192),
        [("bool",[25,30,63]),
         ("pred_set",[23,98,104,112,117,185,186,187])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%163%298$0@$1@@%216$0@@|@@|@"])
  fun op SUBSET_FINITE_I x = x
    val op SUBSET_FINITE_I =
    DT(((("pred_set",193),
        [("bool",[25,53,54,58,63,83]),("pred_set",[192]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%216$1@@%298$0@$1@@@%216$0@@|@|@"])
  fun op PSUBSET_FINITE x = x
    val op PSUBSET_FINITE =
    DT(((("pred_set",194),[("pred_set",[26,192])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%163%289$0@$1@@%216$0@@|@@|@"])
  fun op FINITE_DIFF x = x
    val op FINITE_DIFF =
    DT(((("pred_set",195),
        [("bool",[25,26,27,30,36,63,64]),
         ("pred_set",[70,99,185,186,187])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%216%202$1@$0@@|@@|@"])
  fun op FINITE_DIFF_down x = x
    val op FINITE_DIFF_down =
    DT(((("pred_set",196),
        [("bool",[25,26,47,48,53,54,58,63,71,81,84,93,94,96,105,124]),
         ("pred_set",[69,113,186,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%10%116%17%163%141%216%202$1@$0@@@%216$0@@@%216$1@@|@|@"])
  fun op FINITE_SING x = x
    val op FINITE_SING =
    DT(((("pred_set",197),[("pred_set",[138,185,187])]),["DISK_THM"]),
       [read"%113%99%216%263$0@%205@@|@"])
  fun op SING_FINITE x = x
    val op SING_FINITE =
    DT(((("pred_set",198),[("pred_set",[126,197])]),["DISK_THM"]),
       [read"%116%72%163%295$0@@%216$0@@|@"])
  fun op IMAGE_FINITE x = x
    val op IMAGE_FINITE =
    DT(((("pred_set",199),
        [("bool",[25,36,63]),
         ("pred_set",[147,150,185,186,187])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%115%41%217%232$0@$1@@|@@|@"])
  fun op FINITELY_INJECTIVE_IMAGE_FINITE x = x
    val op FINITELY_INJECTIVE_IMAGE_FINITE =
    DT(((("pred_set",200),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,75,77,78,
          80,81,83,87,93,94,95,96,101,105,106,124,143,145,146]),
         ("combin",[1,5,19]),("pair",[4]),
         ("pred_set",[3,6,67,80,144,151,185,186,196,199]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%163%114%100%216%222%106%133$0@%146$1@$2$0@@@|@@|@@%116%72%147%217%232$1@$0@@@%216$0@@|@@|@"])
  fun op INJECTIVE_IMAGE_FINITE x = x
    val op INJECTIVE_IMAGE_FINITE =
    DT(((("pred_set",201),
        [("bool",
         [13,25,26,27,30,36,37,47,48,51,52,53,54,56,58,63,71,72,93,94,96,
          105,124,143]),("pair",[4]),
         ("pred_set",[3,6,10,80,127,185,198,200]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%115%41%163%113%99%113%106%147%146$2$1@@$2$0@@@%145$1@$0@@|@|@@%116%72%147%217%232$1@$0@@@%216$0@@|@@|@"])
  fun op FINITE_INJ x = x
    val op FINITE_INJ =
    DT(((("pred_set",202),
        [("bool",
         [2,15,25,26,30,53,54,55,56,58,63,64,72,73,75,83,84,96,99,105,124,
          129]),("pred_set",[80,104,116,158,162,163,185,186,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%141%252$2@$1@$0@@%217$0@@@%216$1@@|@|@|@"])
  fun op REL_RESTRICT_EMPTY x = x
    val op REL_RESTRICT_EMPTY =
    DT(((("pred_set",204),
        [("bool",[25,26,27,36,51,54,60,63]),("pred_set",[10,203]),
         ("relation",[106])]),["DISK_THM"]),
       [read"%149%290%21@%205@@%213@"])
  fun op REL_RESTRICT_SUBSET x = x
    val op REL_RESTRICT_SUBSET =
    DT(((("pred_set",205),
        [("bool",[25,36,51,53,58,63,105,124]),("pred_set",[18,203]),
         ("relation",[164])]),["DISK_THM"]),
       [read"%163%298%78@%80@@%293%290%21@%78@@%290%21@%80@@@"])
  fun op CARD_EMPTY x = x
    val op CARD_EMPTY =
    DT(((("pred_set",207),[("pred_set",[206])]),["DISK_THM"]),
       [read"%160%186%205@@%142@"])
  fun op CARD_INSERT x = x
    val op CARD_INSERT =
    DT(((("pred_set",208),[("pred_set",[206])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%113%99%160%186%263$0@$1@@@%196%244$0@$1@@%186$1@@%303%186$1@@@@|@@|@"])
  fun op CARD_EQ_0 x = x
    val op CARD_EQ_0 =
    DT(((("pred_set",209),
        [("bool",[25,26,27,54,56,63,64]),("num",[7]),
         ("pred_set",[90,186,207,208])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%147%160%186$0@@%142@@%148$0@%205@@@|@"])
  fun op CARD_DELETE x = x
    val op CARD_DELETE =
    DT(((("pred_set",210),
        [("arithmetic",[28,65]),
         ("bool",[25,26,27,30,36,51,52,56,58,63,64]),
         ("pred_set",[10,80,102,107,116,186,188,206,209])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%113%99%160%186%199$1@$0@@@%196%244$0@$1@@%140%186$1@@%283%184%334@@@@%186$1@@@|@@|@"])
  fun op CARD_INTER_LESS_EQ x = x
    val op CARD_INTER_LESS_EQ =
    DT(((("pred_set",211),
        [("arithmetic",[10,37,95]),
         ("bool",[25,26,27,30,36,51,52,56,63,64]),
         ("pred_set",[45,53,94,186,191,206]),
         ("prim_rec",[1,19])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%144%186%269$1@$0@@@%186$1@@|@@|@"])
  fun op CARD_UNION x = x
    val op CARD_UNION =
    DT(((("pred_set",212),
        [("arithmetic",[24]),
         ("bool",[25,26,27,30,36,51,52,53,56,58,63,64,102,105,106,124]),
         ("pred_set",[3,33,41,45,53,80,92,94,186,187,191,206]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%163%216$0@@%160%131%186%318$1@$0@@@%186%269$1@$0@@@@%131%186$1@@%186$0@@@@|@@|@"])
  fun op CARD_UNION_EQN x = x
    val op CARD_UNION_EQN =
    DT(((("pred_set",213),
        [("arithmetic",[24,25,27,46,71,85,91,93,173,176,180]),
         ("bool",[25,36,51,54,56,58,63,96,101,104,105]),("numeral",[3,8]),
         ("pred_set",[211,212])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%216$1@@%216$0@@@%160%186%318$1@$0@@@%140%131%186$1@@%186$0@@@%186%269$1@$0@@@@@|@|@"])
  fun op CARD_SUBSET x = x
    val op CARD_SUBSET =
    DT(((("pred_set",214),
        [("arithmetic",[10,28,37,65,95]),
         ("bool",[25,26,27,30,52,53,56,63,64]),
         ("pred_set",[23,104,112,117,186,187,192,206,207,208,210]),
         ("prim_rec",[1,7,19])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%163%298$0@$1@@%144%186$0@@%186$1@@@|@@|@"])
  fun op CARD_PSUBSET x = x
    val op CARD_PSUBSET =
    DT(((("pred_set",215),
        [("arithmetic",[10,41]),("bool",[26,27,64]),
         ("pred_set",[26,97,114,192,208,214])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%163%289$0@$1@@%143%186$0@@%186$1@@@|@@|@"])
  fun op SUBSET_EQ_CARD x = x
    val op SUBSET_EQ_CARD =
    DT(((("pred_set",216),
        [("arithmetic",[65]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,73,84,93,94,96,105,
          109,111,124,143]),("pair",[4]),
         ("pred_set",[3,6,10,18,67,79,97,101,111,186,188,206,208,209,210]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%116%86%163%141%216$0@@%141%160%186$1@@%186$0@@@%298$1@$0@@@@%148$1@$0@@|@@|@"])
  fun op CARD_SING x = x
    val op CARD_SING =
    DT(((("pred_set",217),
        [("arithmetic",[17]),("bool",[25,26,27,56,64]),
         ("pred_set",[10,185,187,206])]),["DISK_THM"]),
       [read"%113%99%160%186%263$0@%205@@@%283%184%334@@@|@"])
  fun op SING_IFF_CARD1 x = x
    val op SING_IFF_CARD1 =
    DT(((("pred_set",218),
        [("arithmetic",[17]),("bool",[25,26,27,47,51,53,56,63,64]),
         ("num",[7]),("pred_set",[10,83,126,185,187,207,208,209]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%116%72%147%295$0@@%141%160%186$0@@%283%184%334@@@@%216$0@@@|@"])
  fun op CARD_DIFF x = x
    val op CARD_DIFF =
    DT(((("pred_set",219),
        [("arithmetic",[17,24,62,114]),("bool",[25,26,27,30,51,56,63,64]),
         ("pred_set",
         [45,49,53,69,94,104,113,118,186,188,191,207,208,
          210])]),["DISK_THM"]),
       [read"%116%86%163%216$0@@%116%72%163%216$0@@%160%186%202$0@$1@@@%140%186$0@@%186%269$0@$1@@@@@|@@|@"])
  fun op CARD_DIFF_EQN x = x
    val op CARD_DIFF_EQN =
    DT(((("pred_set",220),
        [("arithmetic",[17,24,25,27,46,62,71,93,112,172,173,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,83,93,96,101,104,105,124,
          129,147]),("numeral",[3,5,8]),
         ("pred_set",[45,53,67,70,94,99,186,191,195,207,208,211]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%160%186%202$0@%86@@@%140%186$0@@%186%269$0@%86@@@@@|@"])
  fun op LESS_CARD_DIFF x = x
    val op LESS_CARD_DIFF =
    DT(((("pred_set",221),
        [("arithmetic",[10,59,119]),("bool",[27,58]),
         ("pred_set",[49,211,219])]),["DISK_THM"]),
       [read"%116%86%163%216$0@@%116%72%163%216$0@@%163%143%186$1@@%186$0@@@%143%142@%186%202$0@$1@@@@@|@@|@"])
  fun op BIJ_FINITE x = x
    val op BIJ_FINITE =
    DT(((("pred_set",222),
        [("bool",[25,26,27,51,52,53,54,58,63,83,105,124]),
         ("pred_set",[175,182,185,186,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%141%180$2@$1@$0@@%216$1@@@%217$0@@|@|@|@"])
  fun op FINITE_BIJ_CARD_EQ x = x
    val op FINITE_BIJ_CARD_EQ =
    DT(((("pred_set",223),
        [("arithmetic",[17,24,25,27,46,71,93,172,173,177,180,269]),
         ("bool",
         [14,18,25,26,27,36,43,51,52,53,54,55,56,58,63,83,93,96,99,100,101,
          104,105,109,124,129,147]),("numeral",[0,3,5,8]),("pair",[3]),
         ("pred_set",
         [6,9,79,80,104,116,158,173,175,177,186,188,207,208,209,210]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%23%163%216$0@@%122%87%115%41%163%141%180$0@$2@$1@@%217$1@@@%160%186$2@@%187$1@@@|@|@@|@"])
  fun op CARD_INJ_IMAGE x = x
    val op CARD_INJ_IMAGE =
    DT(((("pred_set",224),
        [("bool",[25,26,27,36,53,56,58,63,105,124,129,143,147]),
         ("pred_set",[144,147,150,186,201,207,208]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%115%41%116%72%163%141%113%99%113%106%147%146$3$1@@$3$0@@@%145$1@$0@@|@|@@%216$0@@@%160%187%232$1@$0@@@%186$0@@@|@|@"])
  fun op FINITE_COMPLETE_INDUCTION x = x
    val op FINITE_COMPLETE_INDUCTION =
    DT(((("pred_set",225),
        [("bool",[25,26,47,48,51,53,54,58,63,84,93,94,96,105]),
         ("pred_set",[194,215]),("prim_rec",[43,44]),
         ("relation",[101,113]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%125%13%163%116%101%163%116%108%163%289$0@$1@@$2$0@@|@@%163%216$0@@$1$0@@@|@@%116%101%163%216$0@@$1$0@@|@@|@"])
  fun op INJ_CARD x = x
    val op INJ_CARD =
    DT(((("pred_set",226),
        [("arithmetic",[24,25,41,46,71,93,172,173,176,180,269]),
         ("bool",
         [2,15,25,26,27,36,43,51,52,53,54,55,56,58,63,64,73,75,83,84,96,99,
          101,104,105,124,129,147]),("numeral",[3,8]),
         ("pred_set",[10,80,83,104,116,158,163,186,187,188,202,206,210]),
         ("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%141%252$2@$1@$0@@%217$0@@@%144%186$1@@%187$0@@@|@|@|@"])
  fun op PHP x = x
    val op PHP =
    DT(((("pred_set",227),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180]),
         ("bool",[25,36,52,53,54,63,93,96,104,105,107]),("numeral",[3,8]),
         ("pred_set",[226]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%141%217$0@@%143%187$0@@%186$1@@@@%356%252$2@$1@$0@@@|@|@|@"])
  fun op INFINITE_DEF x = x
    val op INFINITE_DEF =
    DT(((("pred_set",228),[("bool",[25])]),["DISK_THM"]), [read"%316"])
  fun op NOT_IN_FINITE x = x
    val op NOT_IN_FINITE =
    DT(((("pred_set",229),
        [("bool",[25,26,27,54,58,63,92]),
         ("pred_set",[14,17])]),["DISK_THM"]),
       [read"%147%356%216%324@@@%116%72%163%216$0@@%164%99%356%244$0@$1@@|@@|@@"])
  fun op INFINITE_INHAB x = x
    val op INFINITE_INHAB =
    DT(((("pred_set",230),
        [("bool",[25,53,54,63]),("pred_set",[11,185])]),["DISK_THM"]),
       [read"%116%10%163%356%216$0@@@%164%99%244$0@$1@|@@|@"])
  fun op IMAGE_11_INFINITE x = x
    val op IMAGE_11_INFINITE =
    DT(((("pred_set",231),
        [("bool",[2,15,25,26,30,53,54,55,58,63,83,99,100]),
         ("pred_set",[201]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%163%113%99%113%106%163%146$2$1@@$2$0@@@%145$1@$0@@|@|@@%116%72%163%356%216$0@@@%356%217%232$1@$0@@@@|@@|@"])
  fun op INFINITE_SUBSET x = x
    val op INFINITE_SUBSET =
    DT(((("pred_set",232),
        [("bool",[27,48]),("pred_set",[192])]),["DISK_THM"]),
       [read"%116%72%163%356%216$0@@@%116%86%163%298$1@$0@@%356%216$0@@@|@@|@"])
  fun op IN_INFINITE_NOT_FINITE x = x
    val op IN_INFINITE_NOT_FINITE =
    DT(((("pred_set",233),
        [("bool",[26,27,54,96,101]),("pred_set",[18,232])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%356%216$1@@@%216$0@@@%164%99%141%244$0@$2@@%356%244$0@$1@@@|@@|@|@"])
  fun op INFINITE_UNIV x = x
    val op INFINITE_UNIV =
    DT(((("pred_set",234),
        [("arithmetic",
         [10,17,24,25,28,41,46,59,64,71,93,101,107,109,134,172,173,177,
          180]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,37,43,51,52,53,54,56,58,63,64,93,96,
          104,105,107]),("num",[7,9]),("numeral",[3,8]),
         ("pred_set",[10,14,80,144,185,186,187,229,231,233]),
         ("prim_rec",[1,15,38]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%147%356%216%324@@@%166%40%141%113%99%113%106%163%145$2$1@@$2$0@@@%145$1@$0@@|@|@@%164%106%113%99%356%145$2$0@@$1@@|@|@@|@@"])
  fun op INFINITE_NUM_UNIV x = x
    val op INFINITE_NUM_UNIV =
    DT(((("pred_set",235),
        [("bool",[25,26,27,53,54,56,58,105,124]),("num",[7]),
         ("pred_set",[234]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%356%219%328@@"])
  fun op FINITE_PSUBSET_INFINITE x = x
    val op FINITE_PSUBSET_INFINITE =
    DT(((("pred_set",236),
        [("bool",[26,27]),("pred_set",[20,26])]),["DISK_THM"]),
       [read"%116%72%147%356%216$0@@@%116%86%163%216$0@@%163%298$0@$1@@%289$0@$1@@@|@@|@"])
  fun op FINITE_PSUBSET_UNIV x = x
    val op FINITE_PSUBSET_UNIV =
    DT(((("pred_set",237),
        [("bool",[25,51,53,56,63]),
         ("pred_set",[24,26,236])]),["DISK_THM"]),
       [read"%147%356%216%324@@@%116%72%163%216$0@@%289$0@%324@@|@@"])
  fun op INFINITE_DIFF_FINITE x = x
    val op INFINITE_DIFF_FINITE =
    DT(((("pred_set",238),
        [("bool",[25,26,27,51,54,63]),
         ("pred_set",[3,10,67,233])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%356%216$1@@@%216$0@@@%356%148%202$1@$0@@%205@@@|@|@"])
  fun op FINITE_ISO_NUM x = x
    val op FINITE_ISO_NUM =
    DT(((("pred_set",239),
        [("bool",[25,26,27,36,37,48,51,52,53,54,56,58,63,64]),("pair",[3]),
         ("pred_set",[3,6,10,80,186,207,208]),
         ("prim_rec",[4,6,19])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%171%49%141%128%60%128%58%163%141%143$1@%186$3@@@%143$0@%186$3@@@@%163%145$2$1@@$2$0@@@%160$1@$0@@@|@|@@%148$1@%226%60%133$1$0@@%143$0@%186$2@@@|@@@|@@|@"])
  fun op FINITE_WEAK_ENUMERATE x = x
    val op FINITE_WEAK_ENUMERATE =
    DT(((("pred_set",240),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [13,14,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,64,71,72,
          73,74,75,77,78,80,81,83,84,86,92,93,94,95,96,101,104,105,106,107,
          124,129,145,146]),("combin",[19]),("num",[9]),
         ("numeral",[3,5,8]),("pred_set",[10,80,83,102,117,185,186,187]),
         ("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%147%216$0@@%171%49%172%30%113%31%147%244$0@$3@@%172%60%141%143$0@$2@@%145$1@$3$0@@@|@@|@|@|@@|@"])
  fun op FINITE_WF_noloops x = x
    val op FINITE_WF_noloops =
    DT(((("pred_set",241),
        [("arithmetic",[24,25,46,59,71,93,173,177,180,317]),
         ("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,63,72,73,74,75,81,83,84,
          92,96,97,99,101,104,105,124]),("numeral",[3,8]),("pair",[3]),
         ("pred_set",[6,14,18,144,192,193,201,203,235]),
         ("prim_rec",[39,40]),("relation",[2,14,38,111,140,151]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%147%331%290%21@$0@@@%346%317%290%21@$0@@@@@|@"])
  fun op FINITE_StrongOrder_WF x = x
    val op FINITE_StrongOrder_WF =
    DT(((("pred_set",242),
        [("bool",[25,53,58,63,105,124]),("pred_set",[241]),
         ("relation",[63,181])]),["DISK_THM"]),
       [read"%117%21%116%72%163%141%216$0@@%315%290$1@$0@@@@%331%290$1@$0@@@|@|@"])
  fun op IN_BIGUNION x = x
    val op IN_BIGUNION =
    DT(((("pred_set",244),
        [("bool",[25,26,47,48,53,54,58,63,71,72,76,80,96,143]),
         ("pair",[3]),("pred_set",[6,243]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%113%99%125%85%147%244$1@%177$0@@@%167%72%141%244$2@$0@@%246$0@$1@@|@@|@|@"])
  fun op BIGUNION_applied x = x
    val op BIGUNION_applied =
    DT(((("pred_set",245),
        [("bool",[18]),("marker",[9]),("pred_set",[244])]),["DISK_THM"]),
       [read"%113%99%125%85%147%177$0@$1@@%167%72%141%244$2@$0@@%246$0@$1@@|@@|@|@"])
  fun op BIGUNION_EMPTY x = x
    val op BIGUNION_EMPTY =
    DT(((("pred_set",246),
        [("bool",[25,26,27,36,37,51,54,63]),
         ("pred_set",[3,10,244])]),["DISK_THM"]),
       [read"%148%177%209@@%205@"])
  fun op BIGUNION_EQ_EMPTY x = x
    val op BIGUNION_EQ_EMPTY =
    DT(((("pred_set",247),
        [("bool",
         [2,15,25,26,27,51,52,53,54,58,63,72,73,74,75,83,84,96,99,100,105,
          106,124]),("pred_set",[3,10,80,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%125%13%141%147%148%177$0@@%205@@%335%153$0@%209@@%153$0@%266%205@%209@@@@@%147%148%205@%177$0@@@%335%153$0@%209@@%153$0@%266%205@%209@@@@@|@"])
  fun op BIGUNION_SING x = x
    val op BIGUNION_SING =
    DT(((("pred_set",248),
        [("bool",[25,26,27,36,52,56,58,143]),
         ("pred_set",[3,10,80,244])]),["DISK_THM"]),
       [read"%116%101%148%177%266$0@%209@@@$0@|@"])
  fun op BIGUNION_UNION x = x
    val op BIGUNION_UNION =
    DT(((("pred_set",249),
        [("bool",[25,36,56,76,97]),("pred_set",[3,33,244])]),["DISK_THM"]),
       [read"%125%79%125%82%148%177%320$1@$0@@@%318%177$1@@%177$0@@@|@|@"])
  fun op DISJOINT_BIGUNION x = x
    val op DISJOINT_BIGUNION =
    DT(((("pred_set",250),
        [("bool",
         [25,26,27,47,48,53,54,58,63,71,72,80,81,83,84,93,96,105,124]),
         ("pred_set",[3,10,45,57,59,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%141%125%74%116%86%147%203%177$1@@$0@@%116%76%163%246$0@$2@@%203$0@$1@@|@@|@|@@%125%74%116%86%147%203$0@%177$1@@@%116%76%163%246$0@$2@@%203$1@$0@@|@@|@|@@"])
  fun op BIGUNION_INSERT x = x
    val op BIGUNION_INSERT =
    DT(((("pred_set",251),
        [("bool",
         [25,26,43,47,48,53,54,58,63,71,72,76,77,78,80,81,93,94,96,146]),
         ("pred_set",[3,33,80,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%125%13%148%177%266$1@$0@@@%318$1@%177$0@@@|@|@"])
  fun op BIGUNION_SUBSET x = x
    val op BIGUNION_SUBSET =
    DT(((("pred_set",252),
        [("bool",
         [25,26,47,48,53,54,58,63,71,72,80,81,83,84,93,94,96,105,124]),
         ("pred_set",[18,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%24%125%13%147%298%177$0@@$1@@%116%25%163%246$0@$1@@%298$0@$2@@|@@|@|@"])
  fun op FINITE_BIGUNION x = x
    val op FINITE_BIGUNION =
    DT(((("pred_set",253),
        [("bool",[25,26,27,36,51,53,58,63,73,101,102,105,124,145]),
         ("pred_set",[10,80,185,186,190,246,251])]),["DISK_THM"]),
       [read"%125%13%163%141%218$0@@%116%72%163%246$0@$1@@%216$0@@|@@@%216%177$0@@@|@"])
  fun op FINITE_BIGUNION_EQ x = x
    val op FINITE_BIGUNION_EQ =
    DT(((("pred_set",254),
        [("bool",
         [2,13,14,15,25,26,27,30,36,47,48,51,52,53,54,55,56,58,63,71,72,75,
          78,81,83,84,93,94,96,99,100,102,105,106,124,143]),
         ("combin",[1,3,5]),("pair",[4]),
         ("pred_set",
         [3,6,10,80,102,127,144,185,186,187,188,198,200,244,247,253]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%125%13%147%216%177$0@@@%141%218$0@@%116%72%163%246$0@$1@@%216$0@@|@@@|@"])
  fun op SUBSET_BIGUNION_I x = x
    val op SUBSET_BIGUNION_I =
    DT(((("pred_set",255),
        [("bool",[25,26,53,54,58,63,105,124]),("pred_set",[18,244]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%163%246%101@%13@@%298%101@%177%13@@@"])
  fun op CARD_BIGUNION_SAME_SIZED_SETS x = x
    val op CARD_BIGUNION_SAME_SIZED_SETS =
    DT(((("pred_set",256),
        [("arithmetic",[26,62,67,71,73,91]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,55,56,58,63,71,72,83,87,96,99,100,105,
          124,129,147]),
         ("pred_set",[3,10,45,57,80,186,207,208,213,244,246,251,254]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%60%125%74%163%141%218$0@@%141%116%32%163%246$0@$1@@%141%216$0@@%160%186$0@@$2@@@|@@%116%35%116%38%163%141%246$1@$2@@%141%246$0@$2@@%356%148$1@$0@@@@@%203$1@$0@@|@|@@@@%160%186%177$0@@@%130%188$0@@$1@@@|@|@"])
  fun op IN_BIGINTER x = x
    val op IN_BIGINTER =
    DT(((("pred_set",258),
        [("bool",[25,26,56,58,63,143]),("pair",[3]),
         ("pred_set",[6,257])]),["DISK_THM"]),
       [read"%147%244%99@%176%3@@@%116%10%163%246$0@%3@@%244%99@$0@@|@@"])
  fun op BIGINTER_applied x = x
    val op BIGINTER_applied =
    DT(((("pred_set",259),
        [("bool",[18]),("marker",[9]),("pred_set",[258])]),["DISK_THM"]),
       [read"%147%176%3@%99@@%116%10%163%246$0@%3@@%244%99@$0@@|@@"])
  fun op BIGINTER_INSERT x = x
    val op BIGINTER_INSERT =
    DT(((("pred_set",260),
        [("bool",[25,36,56,58,63,73,101,102,105,124,145]),
         ("pred_set",[3,45,80,258])]),["DISK_THM"]),
       [read"%116%10%125%3%148%176%266$1@$0@@@%269$1@%176$0@@@|@|@"])
  fun op BIGINTER_EMPTY x = x
    val op BIGINTER_EMPTY =
    DT(((("pred_set",261),
        [("bool",[25,26,27,36,53,63]),
         ("pred_set",[3,10,14,258])]),["DISK_THM"]),
       [read"%148%176%209@@%324@"])
  fun op BIGINTER_INTER x = x
    val op BIGINTER_INTER =
    DT(((("pred_set",262),
        [("bool",[25,36,56]),("pred_set",[54,260,261])]),["DISK_THM"]),
       [read"%116%10%116%17%148%176%266$1@%266$0@%209@@@@%269$1@$0@@|@|@"])
  fun op BIGINTER_SING x = x
    val op BIGINTER_SING =
    DT(((("pred_set",263),
        [("bool",[25,36,56,58,63,101,105,124,145]),
         ("pred_set",[3,131,258])]),["DISK_THM"]),
       [read"%116%10%148%176%266$0@%209@@@$0@|@"])
  fun op SUBSET_BIGINTER x = x
    val op SUBSET_BIGINTER =
    DT(((("pred_set",264),
        [("bool",
         [25,26,47,48,53,54,58,63,71,76,77,78,80,81,84,93,94,96,105,124]),
         ("pred_set",[18,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%24%125%13%147%298$1@%176$0@@@%116%25%163%246$0@$1@@%298$2@$0@@|@@|@|@"])
  fun op DISJOINT_BIGINTER x = x
    val op DISJOINT_BIGINTER =
    DT(((("pred_set",265),
        [("bool",
         [25,26,27,47,48,53,54,58,63,71,72,76,81,92,94,96,105,124]),
         ("pred_set",[3,10,45,57,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%24%116%25%125%13%163%141%246$1@$0@@%203$1@$2@@@%141%203$2@%176$0@@@%203%176$0@@$2@@@|@|@|@"])
  fun op BIGINTER_UNION x = x
    val op BIGINTER_UNION =
    DT(((("pred_set",266),
        [("bool",[25,26,47,48,53,54,58,63,71,76,81,94,105,124]),
         ("pred_set",[3,33,45,258]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%125%79%125%82%148%176%320$1@$0@@@%269%176$1@@%176$0@@@|@|@"])
  fun op IN_CROSS x = x
    val op IN_CROSS =
    DT(((("pred_set",268),
        [("bool",[25,26,36,56,58,63,143]),("pair",[3]),
         ("pred_set",[6,267])]),["DISK_THM"]),
       [read"%116%10%122%18%129%103%147%248$0@%197$2@$1@@@%141%244%221$0@@$2@@%245%296$0@@$1@@@|@|@|@"])
  fun op CROSS_applied x = x
    val op CROSS_applied =
    DT(((("pred_set",269),
        [("bool",[18]),("marker",[9]),("pred_set",[268])]),["DISK_THM"]),
       [read"%116%10%122%18%129%103%147%197$2@$1@$0@@%141%244%221$0@@$2@@%245%296$0@@$1@@@|@|@|@"])
  fun op CROSS_EMPTY x = x
    val op CROSS_EMPTY =
    DT(((("pred_set",270),
        [("bool",[25,26,27,36,51,54,63]),
         ("pred_set",[3,10,268])]),["DISK_THM"]),
       [read"%116%10%141%156%197$0@%206@@%211@@%157%198%207@$0@@%212@@|@"])
  fun op CROSS_EMPTY_EQN x = x
    val op CROSS_EMPTY_EQN =
    DT(((("pred_set",271),
        [("bool",[2,25,26,27,53,54,56,58,63,96,106]),("pair",[8,9,25]),
         ("pred_set",[3,10,268,270]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%147%156%197%72@%87@@%211@@%335%148%72@%205@@%150%87@%206@@@"])
  fun op CROSS_INSERT_LEFT x = x
    val op CROSS_INSERT_LEFT =
    DT(((("pred_set",272),
        [("bool",[25,26,27,47,48,52,53,54,63,71]),
         ("pred_set",[3,10,33,80,268]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%10%122%18%113%99%156%197%263$0@$2@@$1@@%322%197%263$0@%205@@$1@@%197$2@$1@@@|@|@|@"])
  fun op CROSS_INSERT_RIGHT x = x
    val op CROSS_INSERT_RIGHT =
    DT(((("pred_set",273),
        [("bool",[25,26,27,47,48,52,53,54,63,71]),
         ("pred_set",[3,10,33,80,268]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%10%122%18%114%100%156%197$2@%264$0@$1@@@%322%197$2@%264$0@%206@@@%197$2@$1@@@|@|@|@"])
  fun op FINITE_CROSS x = x
    val op FINITE_CROSS =
    DT(((("pred_set",274),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,74,75,76,
          78,80,81,84,87,93,94,96,105,124,146]),("combin",[19]),
         ("pair",[3,5,8,9]),
         ("pred_set",[10,80,185,186,190,240,268,270,272]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%10%122%18%163%141%216$1@@%217$0@@@%220%197$1@$0@@@|@|@"])
  fun op CROSS_SINGS x = x
    val op CROSS_SINGS =
    DT(((("pred_set",275),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("pair",[7,8,9]),("pred_set",[3,10,80,268]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%113%99%114%107%156%197%263$1@%205@@%264$0@%206@@@%268%132$1@$0@@%211@@|@|@"])
  fun op CARD_SING_CROSS x = x
    val op CARD_SING_CROSS =
    DT(((("pred_set",276),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,129]),
         ("pair",[8,9]),
         ("pred_set",[131,137,186,197,207,208,268,270,273,274,275]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%99%122%12%163%217$0@@%160%190%197%263$1@%205@@$0@@@%187$0@@@|@|@"])
  fun op CARD_CROSS x = x
    val op CARD_CROSS =
    DT(((("pred_set",277),
        [("arithmetic",[22,26,71]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,71,87,93,94,96,
          105,124,129]),
         ("pred_set",
         [3,10,45,131,186,197,207,208,212,268,270,272,274,276]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%10%122%18%163%141%216$1@@%217$0@@@%160%190%197$1@$0@@@%130%186$1@@%187$0@@@@|@|@"])
  fun op CROSS_SUBSET x = x
    val op CROSS_SUBSET =
    DT(((("pred_set",278),
        [("bool",
         [25,26,27,47,48,53,54,58,63,71,76,77,78,80,81,93,94,96,105,124]),
         ("pair",[8,9,25]),("pred_set",[3,10,18,268]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%10%122%18%116%16%122%20%147%302%197$1@$0@@%197$3@$2@@@%335%148$1@%205@@%335%150$0@%206@@%141%298$1@$3@@%299$0@$2@@@@@|@|@|@|@"])
  fun op FINITE_CROSS_EQ x = x
    val op FINITE_CROSS_EQ =
    DT(((("pred_set",279),
        [("bool",
         [6,13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,73,78,81,
          84,87,93,94,95,96,101,105,124,145,146]),("pair",[8,9,25]),
         ("pred_set",
         [3,10,18,20,26,80,83,90,98,131,185,187,190,197,225,268,270,272,
          273,274,275,278]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%10%122%18%147%220%197$1@$0@@@%335%148$1@%205@@%335%150$0@%206@@%141%216$1@@%217$0@@@@@|@|@"])
  fun op CROSS_UNIV x = x
    val op CROSS_UNIV =
    DT(((("pred_set",280),
        [("bool",[25,36,51,63]),("pred_set",[3,14,268])]),["DISK_THM"]),
       [read"%156%329@%197%324@%325@@"])
  fun op INFINITE_PAIR_UNIV x = x
    val op INFINITE_PAIR_UNIV =
    DT(((("pred_set",281),
        [("bool",[25,26,27,52,56]),
         ("pred_set",[15,279,280])]),["DISK_THM"]),
       [read"%147%220%329@@%141%216%324@@%217%325@@@"])
  fun op SUM_UNIV x = x
    val op SUM_UNIV =
    DT(((("pred_set",282),
        [("bool",[2,15,25,26,51,53,54,55,58,63,74,75,105,106,124]),
         ("pred_set",[3,14,33,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sum",[14])]),["DISK_THM"]),
       [read"%159%330@%323%235%260@%324@@%239%262@%325@@@"])
  fun op INJ_INL x = x
    val op INJ_INL =
    DT(((("pred_set",283),
        [("bool",[25,36,51,53,56,58,63,105,124]),("pred_set",[158]),
         ("sum",[7])]),["DISK_THM"]),
       [read"%163%113%99%163%244$0@%72@@%249%260$0@@%89@@|@@%255%260@%72@%89@@"])
  fun op INJ_INR x = x
    val op INJ_INR =
    DT(((("pred_set",284),
        [("bool",[25,36,51,53,56,58,63,105,124]),("pred_set",[158]),
         ("sum",[7])]),["DISK_THM"]),
       [read"%163%113%99%163%244$0@%72@@%250%261$0@@%90@@|@@%256%261@%72@%90@@"])
  fun op IN_COMPL x = x
    val op IN_COMPL =
    DT(((("pred_set",286),
        [("bool",[25,36,51,56,63]),("pred_set",[14,67,285]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%113%99%116%72%147%244$1@%192$0@@@%356%244$1@$0@@@|@|@"])
  fun op COMPL_applied x = x
    val op COMPL_applied =
    DT(((("pred_set",287),
        [("bool",[18]),("marker",[9]),("pred_set",[286])]),["DISK_THM"]),
       [read"%113%99%116%72%147%192$0@$1@@%356%244$1@$0@@@|@|@"])
  fun op COMPL_COMPL x = x
    val op COMPL_COMPL =
    DT(((("pred_set",288),
        [("bool",[25,36,54,56]),("pred_set",[3,286])]),["DISK_THM"]),
       [read"%116%72%148%192%192$0@@@$0@|@"])
  fun op COMPL_CLAUSES x = x
    val op COMPL_CLAUSES =
    DT(((("pred_set",289),
        [("bool",[25,26,27,30,36,51,58,63,95,96]),
         ("pred_set",[3,10,14,33,45,286])]),["DISK_THM"]),
       [read"%116%72%141%148%269%192$0@@$0@@%205@@%148%318%192$0@@$0@@%324@@|@"])
  fun op COMPL_SPLITS x = x
    val op COMPL_SPLITS =
    DT(((("pred_set",290),
        [("bool",[25,26,47,48,53,54,63,71]),("pred_set",[3,33,45,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%64%116%69%148%318%269$1@$0@@%269%192$1@@$0@@@$0@|@|@"])
  fun op INTER_UNION_COMPL x = x
    val op INTER_UNION_COMPL =
    DT(((("pred_set",291),
        [("bool",[25,36,54,56,96]),
         ("pred_set",[3,33,45,286])]),["DISK_THM"]),
       [read"%116%72%116%86%148%269$1@$0@@%192%318%192$1@@%192$0@@@@|@|@"])
  fun op COMPL_EMPTY x = x
    val op COMPL_EMPTY =
    DT(((("pred_set",292),
        [("bool",[25,26,27,36,54,63]),
         ("pred_set",[3,10,14,286])]),["DISK_THM"]),
       [read"%148%192%205@@%324@"])
  fun op COMPL_INTER x = x
    val op COMPL_INTER =
    DT(((("pred_set",293),
        [("bool",[25,26,27,30,36,50,54,58,63,95,96]),
         ("pred_set",[3,10,45,286])]),["DISK_THM"]),
       [read"%141%148%269%101@%192%101@@@%205@@%148%269%192%101@@%101@@%205@@"])
  fun op COMPL_UNION x = x
    val op COMPL_UNION =
    DT(((("pred_set",294),
        [("bool",[25,36,51,56,63,96]),
         ("pred_set",[3,14,33,45,67,285])]),["DISK_THM"]),
       [read"%148%192%318%72@%86@@@%269%192%72@@%192%86@@@"])
  fun op IN_COUNT x = x
    val op IN_COUNT =
    DT(((("pred_set",296),
        [("bool",[25,26,56,58,63,143]),("pair",[4]),
         ("pred_set",[6,295])]),["DISK_THM"]),
       [read"%128%58%128%60%147%247$1@%337$0@@@%143$1@$0@@|@|@"])
  fun op COUNT_applied x = x
    val op COUNT_applied =
    DT(((("pred_set",297),
        [("bool",[18]),("marker",[9]),("pred_set",[296])]),["DISK_THM"]),
       [read"%128%58%128%60%147%337$0@$1@@%143$1@$0@@|@|@"])
  fun op COUNT_ZERO x = x
    val op COUNT_ZERO =
    DT(((("pred_set",298),
        [("arithmetic",[41,46,71,93,173,180]),
         ("bool",[25,26,27,36,54,58,63,104]),("numeral",[3,8]),
         ("pred_set",[3,10,296])]),["DISK_THM"]),
       [read"%155%337%142@@%210@"])
  fun op COUNT_SUC x = x
    val op COUNT_SUC =
    DT(((("pred_set",299),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,63,93,96,104,105,107]),
         ("numeral",[3,5,8]),("pred_set",[3,80,296]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%128%60%155%337%303$0@@@%267$0@%337$0@@@|@"])
  fun op FINITE_COUNT x = x
    val op FINITE_COUNT =
    DT(((("pred_set",300),
        [("bool",[14,25,63]),("num",[9]),
         ("pred_set",[185,187,298,299])]),["DISK_THM"]),
       [read"%128%60%219%337$0@@|@"])
  fun op CARD_COUNT x = x
    val op CARD_COUNT =
    DT(((("pred_set",301),
        [("arithmetic",[24,25,27,41,71,173,177,180]),
         ("bool",[14,25,26,27,30,36,52,54,56,58,63,64,96,101,104,105,129]),
         ("num",[9]),("numeral",[3,5,8]),
         ("pred_set",[207,208,296,298,299,300]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%128%60%160%189%337$0@@@$0@|@"])
  fun op COUNT_11 x = x
    val op COUNT_11 =
    DT(((("pred_set",302),
        [("arithmetic",[24,25,41,46,59,71,93,95,106,173,176,180]),
         ("bool",[25,36,51,52,53,54,58,63,93,96,104,105,106,107,124]),
         ("numeral",[3,8]),("pred_set",[3,296]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%147%155%337%61@@%337%62@@@%160%61@%62@@"])
  fun op ITSET_ind x = x
    val op ITSET_ind =
    DT(((("pred_set",305),
        [("bool",[15,25,27,36,53,54,58,63,83,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[125,215,303,304]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%126%14%163%116%72%114%29%163%163%141%216$1@@%356%148$1@%205@@@@$2%291$1@@%43%191$1@@$0@@@@$2$1@$0@@|@|@@%116%97%114%98$2$1@$0@|@|@@|@"])
  fun op ITSET_def x = x
    val op ITSET_def =
    DT(((("pred_set",306),
        [("bool",[15,25,27,36,53,54,58,63,83,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[125,215,303,304]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%118%43%114%29%146%272$1@$2@$0@@%193%216$2@@%193%148$2@%205@@$0@%272$1@%291$2@@$1%191$2@@$0@@@@%175@@|@|@|@"])
  fun op ITSET_IND x = x
    val op ITSET_IND =
    DT(((("pred_set",307),[("pred_set",[305])]),["DISK_THM"]),
       [read"%126%14%163%116%72%114%29%163%163%141%216$1@@%356%148$1@%205@@@@$2%291$1@@%43%191$1@@$0@@@@$2$1@$0@@|@|@@%116%97%114%98$2$1@$0@|@|@@|@"])
  fun op ITSET_THM x = x
    val op ITSET_THM =
    DT(((("pred_set",308),
        [("bool",[15,25,27,36,53,54,58,63,64,83,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[125,215,303,304]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%118%43%114%29%163%216$2@@%146%272$1@$2@$0@@%193%148$2@%205@@$0@%272$1@%291$2@@$1%191$2@@$0@@@@@|@|@|@"])
  fun op ITSET_EMPTY x = x
    val op ITSET_EMPTY =
    DT(((("pred_set",309),
        [("bool",[15,25,27,36,53,54,56,58,63,64,83,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[125,185,215,303,304]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%118%43%114%29%146%272$1@%205@$0@@$0@|@|@"])
  fun op ITSET_INSERT x = x
    val op ITSET_INSERT =
    DT(((("pred_set",310),
        [("bool",[15,25,26,27,36,47,48,53,54,56,58,63,64,83,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[90,125,187,215,303,304]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%118%43%113%99%114%29%146%272$2@%263$1@$3@@$0@@%272$2@%291%263$1@$3@@@$2%191%263$1@$3@@@$0@@@|@|@|@@|@"])
  fun op COMMUTING_ITSET_INSERT x = x
    val op COMMUTING_ITSET_INSERT =
    DT(((("pred_set",311),
        [("arithmetic",[18,24,25,59,71,110,172,173,180]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,87,93,
          94,95,96,101,104,105,124,129,145,147]),("combin",[19]),
         ("marker",[6]),("numeral",[3,8]),
         ("pred_set",
         [3,10,80,85,88,91,102,104,116,117,122,123,187,208,310]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%118%43%116%72%163%141%113%99%113%106%114%111%146$4$2@$4$1@$0@@@$4$1@$4$2@$0@@@|@|@|@@%216$0@@@%113%99%114%29%146%272$3@%263$1@$2@@$0@@%272$3@%199$2@$1@@$3$1@$0@@@|@|@@|@|@"])
  fun op COMMUTING_ITSET_RECURSES x = x
    val op COMMUTING_ITSET_RECURSES =
    DT(((("pred_set",312),
        [("bool",
         [15,25,26,27,36,47,48,51,53,54,56,58,63,64,71,77,80,81,83,84,93,
          94,96,105,124,129,146]),("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[104,125,185,186,188,215,303,304,311]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%118%43%113%31%116%72%114%29%163%141%113%99%113%106%114%111%146$6$2@$6$1@$0@@@$6$1@$6$2@$0@@@|@|@|@@%216$1@@@%146%272$3@%263$2@$1@@$0@@$3$2@%272$3@%199$1@$2@@$0@@@@|@|@|@|@"])
  fun op SUM_IMAGE_THM x = x
    val op SUM_IMAGE_THM =
    DT(((("pred_set",314),
        [("arithmetic",[22,26,27,91]),
         ("bool",[15,25,27,36,53,54,56,58,63,64,83,105,124,129,147]),
         ("combin",[5,19]),("marker",[6]),("pair",[5,8,16,49]),
         ("pred_set",[125,185,215,303,304,312,313]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%119%44%141%160%304$0@%205@@%142@@%113%31%116%72%163%216$0@@%160%304$2@%263$1@$0@@@%131$2$1@@%304$2@%199$0@$1@@@@@|@|@@|@"])
  fun op SUM_IMAGE_SING x = x
    val op SUM_IMAGE_SING =
    DT(((("pred_set",315),
        [("arithmetic",[22]),("bool",[25,56,63]),
         ("pred_set",[107,185,314])]),["DISK_THM"]),
       [read"%119%44%113%31%160%304$1@%263$0@%205@@@$1$0@@|@|@"])
  fun op SUM_IMAGE_SUBSET_LE x = x
    val op SUM_IMAGE_SUBSET_LE =
    DT(((("pred_set",316),
        [("arithmetic",[24,25,27,46,71,93,173,176,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,81,84,93,94,96,
          101,104,105,124]),("marker",[6]),("numeral",[3,8]),
         ("pred_set",[23,98,102,104,112,117,186,187,188,192,314]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%119%44%116%72%116%86%163%141%216$1@@%298$0@$1@@@%144%304$2@$0@@%304$2@$1@@@|@|@|@"])
  fun op SUM_IMAGE_IN_LE x = x
    val op SUM_IMAGE_IN_LE =
    DT(((("pred_set",317),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("pred_set",[10,18,80,315,316]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%119%44%116%72%113%31%163%141%216$1@@%244$0@$1@@@%144$2$0@@%304$2@$1@@@|@|@|@"])
  fun op SUM_IMAGE_DELETE x = x
    val op SUM_IMAGE_DELETE =
    DT(((("pred_set",318),
        [("arithmetic",[24,25,27,46,62,71,93,128,172,173,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,73,93,94,96,101,
          104,105,109,111,124,129,147]),("combin",[19]),("numeral",[3,8]),
         ("pred_set",[10,80,102,104,107,116,186,188,314,317]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%119%44%116%72%163%216$0@@%113%31%160%304$2@%199$1@$0@@@%196%244$0@$1@@%140%304$2@$1@@$2$0@@@%304$2@$1@@@|@@|@|@"])
  fun op SUM_IMAGE_UNION x = x
    val op SUM_IMAGE_UNION =
    DT(((("pred_set",319),
        [("arithmetic",[22,24,25,27,46,62,71,93,172,173,177,180,195,269]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,81,84,93,
          94,96,101,102,104,105,124,129]),("combin",[19]),
         ("numeral",[3,8]),
         ("pred_set",
         [3,18,33,41,45,50,53,80,93,94,102,104,186,188,190,191,314,316,317,
          318]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%119%44%116%72%116%86%163%141%216$1@@%216$0@@@%160%304$2@%318$1@$0@@@%140%131%304$2@$1@@%304$2@$0@@@%304$2@%269$1@$0@@@@@|@|@|@"])
  fun op SUM_IMAGE_lower_bound x = x
    val op SUM_IMAGE_lower_bound =
    DT(((("pred_set",320),
        [("arithmetic",[26,46,71,93,94,173,176,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,73,77,93,94,96,
          101,102,104,105,124,129,145,146,147]),("combin",[19]),
         ("numeral",[3,8]),("pred_set",[3,10,80,102,186,207,208,314]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%128%60%163%113%99%163%244$0@$2@@%144$1@%44$0@@@|@@%144%130%186$1@@$0@@%304%44@$1@@@|@@|@"])
  fun op SUM_IMAGE_upper_bound x = x
    val op SUM_IMAGE_upper_bound =
    DT(((("pred_set",321),
        [("arithmetic",[26,46,71,93,94,173,176,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,73,77,93,94,96,
          101,102,104,105,124,129,145,146,147]),("combin",[19]),
         ("numeral",[3,8]),("pred_set",[3,10,80,102,186,207,208,314]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%128%60%163%113%99%163%244$0@$2@@%144%44$0@@$1@@|@@%144%304%44@$1@@%130%186$1@@$0@@@|@@|@"])
  fun op SUM_SAME_IMAGE x = x
    val op SUM_SAME_IMAGE =
    DT(((("pred_set",322),
        [("arithmetic",[22,24,25,27,64,67,70,71,73,75,172,173,177,180]),
         ("bool",
         [2,15,25,26,27,36,43,51,52,53,54,55,56,58,63,73,75,96,98,99,101,
          102,104,105,124,129,145,147]),("numeral",[3,8]),
         ("pred_set",[80,83,104,186,187,207,208,314]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%10%163%216$0@@%119%44%113%63%163%141%244$0@$2@@%113%68%163%244$0@$3@@%160$2$1@@$2$0@@@|@@@%160%304$1@$2@@%130%186$2@@$1$0@@@@|@|@@|@"])
  fun op SUM_IMAGE_CONG x = x
    val op SUM_IMAGE_CONG =
    DT(((("pred_set",323),
        [("arithmetic",[22,91]),
         ("bool",
         [15,25,26,27,30,36,53,54,56,58,63,83,105,124,129,147,169]),
         ("combin",[5,19]),("pair",[5,8,16,49]),
         ("pred_set",[10,80,125,186,215,303,304,313,314,318]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%163%141%148%78@%80@@%113%99%163%244$0@%80@@%160%52$0@@%53$0@@@|@@@%160%304%52@%78@@%304%53@%80@@@"])
  fun op SUM_IMAGE_ZERO x = x
    val op SUM_IMAGE_ZERO =
    DT(((("pred_set",324),
        [("arithmetic",[79]),
         ("bool",[25,26,27,36,53,54,55,56,58,63,99,105,124]),
         ("pred_set",[10,80,104,186,314]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%147%160%304%44@$0@@%142@@%113%99%163%244$0@$1@@%160%44$0@@%142@@|@@@|@"])
  fun op ABS_DIFF_SUM_IMAGE x = x
    val op ABS_DIFF_SUM_IMAGE =
    DT(((("pred_set",325),
        [("arithmetic",[46,71,93,173,176,180,328,333]),
         ("bool",[25,36,54,63,104]),("numeral",[3,8]),
         ("pred_set",[104,186,314])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%144%174%304%44@$0@@%304%55@$0@@@%304%99%174%44$0@@%55$0@@|@$0@@@|@"])
  fun op SUM_IMAGE_MONO_LESS_EQ x = x
    val op SUM_IMAGE_MONO_LESS_EQ =
    DT(((("pred_set",326),
        [("arithmetic",[46,71,93,94,173,176,180]),
         ("bool",[25,26,27,36,53,54,56,58,63,104,105,124]),
         ("numeral",[3,8]),
         ("pred_set",[10,80,104,186,314])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%163%113%99%163%244$0@$1@@%144%44$0@@%55$0@@@|@@%144%304%44@$0@@%304%55@$0@@@@|@"])
  fun op SUM_IMAGE_MONO_LESS x = x
    val op SUM_IMAGE_MONO_LESS =
    DT(((("pred_set",327),
        [("arithmetic",[25,88,155,173]),
         ("bool",[25,26,27,36,37,51,53,54,56,58,63,84,105,124]),
         ("pred_set",[10,80,104,186,314,326]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%163%141%164%99%141%244$0@$1@@%143%44$0@@%55$0@@@|@@%113%99%163%244$0@$1@@%144%44$0@@%55$0@@@|@@@%143%304%44@$0@@%304%55@$0@@@@|@"])
  fun op SUM_SET_THM x = x
    val op SUM_SET_THM =
    DT(((("pred_set",329),
        [("arithmetic",[91]),("bool",[25,53,56,58,63,105,124]),
         ("combin",[19]),("pred_set",[314,328])]),["DISK_THM"]),
       [read"%141%160%307%210@@%142@@%128%102%127%75%163%219$0@@%160%307%267$1@$0@@@%131$1@%307%201$0@$1@@@@@|@|@@"])
  fun op SUM_SET_EMPTY x = x
    val op SUM_SET_EMPTY =
    DT(((("pred_set",330),[("pred_set",[329])]),["DISK_THM"]),
       [read"%160%307%210@@%142@"])
  fun op SUM_SET_SING x = x
    val op SUM_SET_SING =
    DT(((("pred_set",331),
        [("bool",[25,56]),("combin",[19]),
         ("pred_set",[315,328])]),["DISK_THM"]),
       [read"%128%60%160%307%267$0@%210@@@$0@|@"])
  fun op SUM_SET_SUBSET_LE x = x
    val op SUM_SET_SUBSET_LE =
    DT(((("pred_set",332),
        [("bool",[25,51,53,58,63,105,124]),
         ("pred_set",[316,328])]),["DISK_THM"]),
       [read"%127%75%127%88%163%141%219$0@@%301$1@$0@@@%144%307$1@@%307$0@@@|@|@"])
  fun op SUM_SET_IN_LE x = x
    val op SUM_SET_IN_LE =
    DT(((("pred_set",333),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("pred_set",[317,328]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%102%127%75%163%141%219$0@@%247$1@$0@@@%144$1@%307$0@@@|@|@"])
  fun op SUM_SET_DELETE x = x
    val op SUM_SET_DELETE =
    DT(((("pred_set",334),
        [("bool",[25,36,53,56,58,63,105,124,129]),("combin",[19]),
         ("pred_set",[318,328])]),["DISK_THM"]),
       [read"%127%75%163%219$0@@%128%33%160%307%201$1@$0@@@%196%247$0@$1@@%140%307$1@@$0@@%307$1@@@|@@|@"])
  fun op SUM_SET_UNION x = x
    val op SUM_SET_UNION =
    DT(((("pred_set",335),
        [("bool",[25,51,53,56,58,63,105,124]),
         ("pred_set",[319,328])]),["DISK_THM"]),
       [read"%127%75%127%88%163%141%219$1@@%219$0@@@%160%307%321$1@$0@@@%140%131%307$1@@%307$0@@@%307%271$1@$0@@@@@|@|@"])
  fun op PROD_IMAGE_THM x = x
    val op PROD_IMAGE_THM =
    DT(((("pred_set",337),
        [("arithmetic",[70,73,76]),
         ("bool",[15,25,27,36,53,54,56,58,63,64,83,105,124,129,147]),
         ("combin",[5,19]),("marker",[6]),("pair",[5,8,16,49]),
         ("pred_set",[125,185,215,303,304,312,336]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%119%44%141%160%286$0@%205@@%283%184%334@@@@%113%31%116%72%163%216$0@@%160%286$2@%263$1@$0@@@%130$2$1@@%286$2@%199$0@$1@@@@@|@|@@|@"])
  fun op PROD_SET_THM x = x
    val op PROD_SET_THM =
    DT(((("pred_set",339),
        [("bool",[25,53,56,58,63,105,124]),("combin",[19]),
         ("pred_set",[337,338])]),["DISK_THM"]),
       [read"%141%160%288%210@@%283%184%334@@@@%128%102%127%75%163%219$0@@%160%288%267$1@$0@@@%130$1@%288%201$0@$1@@@@@|@|@@"])
  fun op PROD_SET_EMPTY x = x
    val op PROD_SET_EMPTY =
    DT(((("pred_set",340),[("pred_set",[339])]),["DISK_THM"]),
       [read"%160%288%210@@%283%184%334@@@"])
  fun op PROD_SET_IMAGE_REDUCTION x = x
    val op PROD_SET_IMAGE_REDUCTION =
    DT(((("pred_set",341),
        [("bool",[25,53,54,63,75]),("pred_set",[104,150,339]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%119%44%116%72%113%99%163%141%219%234$2@$1@@@%356%247$2$0@@%234$2@$1@@@@@%160%288%234$2@%263$0@$1@@@@%130$2$0@@%288%234$2@$1@@@@@|@|@|@"])
  fun op MAX_SET_THM x = x
    val op MAX_SET_THM =
    DT(((("pred_set",343),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,177,180,294,309]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,73,93,96,101,102,104,
          105,109,124,129,145]),("marker",[6]),("numeral",[3,8]),
         ("pred_set",[10,80,90,185,187,342]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%141%160%280%210@@%142@@%128%33%127%75%163%219$0@@%160%280%267$1@$0@@@%279$1@%280$0@@@@|@|@@"])
  fun op MAX_SET_REWRITES x = x
    val op MAX_SET_REWRITES =
    DT(((("pred_set",344),
        [("arithmetic",[309]),("bool",[25,56,63]),
         ("pred_set",[185,343])]),["DISK_THM"]),
       [read"%141%160%280%210@@%142@@%160%280%267%33@%210@@@%33@@"])
  fun op MAX_SET_ELIM x = x
    val op MAX_SET_ELIM =
    DT(((("pred_set",345),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,74,75,77,80,81,
          84,93,94,96,146]),("pred_set",[342]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%127%15%127%19%163%141%219$1@@%141%163%155$1@%210@@$0%142@@@%128%102%163%141%128%109%163%247$0@$3@@%144$0@$1@@|@@%247$0@$2@@@$1$0@@|@@@@$0%280$1@@@|@|@"])
  fun op MIN_SET_ELIM x = x
    val op MIN_SET_ELIM =
    DT(((("pred_set",347),
        [("arithmetic",[59]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,77,78,93,
          94,96,105,124,146]),("combin",[19]),("pred_set",[0,80,83,346]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9])]),["DISK_THM"]),
       [read"%127%15%127%19%163%141%356%155$1@%210@@@%128%102%163%141%128%109%163%247$0@$3@@%144$1@$0@@|@@%247$0@$2@@@$1$0@@|@@@$0%282$1@@@|@|@"])
  fun op MIN_SET_THM x = x
    val op MIN_SET_THM =
    DT(((("pred_set",348),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,177,180,295]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,73,96,101,102,104,105,
          109,124,129,145]),("numeral",[3,8]),("pred_set",[10,80,90,347]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%141%128%33%160%282%267$0@%210@@@$0@|@@%127%75%128%36%128%39%160%282%267$1@%267$0@$2@@@@%281$1@%282%267$0@$2@@@@|@|@|@@"])
  fun op MIN_SET_LEM x = x
    val op MIN_SET_LEM =
    DT(((("pred_set",349),
        [("bool",[2,14,15,18,25,26,36,53,54,56,58,63,74,84,100]),
         ("pred_set",[11,346]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[8])]),["DISK_THM"]),
       [read"%127%75%163%356%155$0@%210@@@%141%247%282$0@@$0@@%128%102%163%247$0@$1@@%144%282$1@@$0@@|@@@|@"])
  fun op SUBSET_MIN_SET x = x
    val op SUBSET_MIN_SET =
    DT(((("pred_set",350),
        [("bool",[2,15,25,26,53,54,58,63,75,83,84,99,100]),
         ("pred_set",[18,349]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%127%5%127%7%113%59%163%141%356%155$2@%210@@@%141%356%155$1@%210@@@%301$2@$1@@@@%144%282$1@@%282$2@@@|@|@|@"])
  fun op SUBSET_MAX_SET x = x
    val op SUBSET_MAX_SET =
    DT(((("pred_set",351),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[2,15,25,26,27,30,36,53,54,58,63,74,75,83,84,99,100,104]),
         ("numeral",[3,8]),("pred_set",[18,23,342,344]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%127%5%127%7%163%141%219$1@@%141%219$0@@%301$1@$0@@@@%144%280$1@@%280$0@@@|@|@"])
  fun op MIN_SET_LEQ_MAX_SET x = x
    val op MIN_SET_LEQ_MAX_SET =
    DT(((("pred_set",352),
        [("bool",[14,18,25,26,36,53,54,56,58,63,74,75,83,100,105,124]),
         ("pred_set",[342,346]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[8])]),["DISK_THM"]),
       [read"%127%75%163%141%356%155$0@%210@@@%219$0@@@%144%282$0@@%280$0@@@|@"])
  fun op MIN_SET_UNION x = x
    val op MIN_SET_UNION =
    DT(((("pred_set",353),
        [("arithmetic",[297,299]),
         ("bool",
         [2,15,25,26,27,30,51,53,54,55,56,58,63,73,83,99,105,124,170]),
         ("marker",[8]),
         ("pred_set",[37,41,83,90,91,93,186,187,190,197,348]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%127%1%127%4%163%141%219$1@@%141%219$0@@%141%356%155$1@%210@@@%356%155$0@%210@@@@@@%160%282%321$1@$0@@@%281%282$1@@%282$0@@@@|@|@"])
  fun op MAX_SET_UNION x = x
    val op MAX_SET_UNION =
    DT(((("pred_set",354),
        [("arithmetic",[296,298,309]),
         ("bool",
         [2,15,25,26,36,51,53,54,55,56,58,63,75,83,93,95,99,105,124,170]),
         ("marker",[8]),("pred_set",[3,33,41,80,83,186,187,190,343,344]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%127%1%127%4%163%141%219$1@@%219$0@@@%160%280%321$1@$0@@@%279%280$1@@%280$0@@@@|@|@"])
  fun op IN_POW x = x
    val op IN_POW =
    DT(((("pred_set",356),
        [("bool",[25,26,56,58,63,143]),("pair",[4]),
         ("pred_set",[6,355])]),["DISK_THM"]),
       [read"%116%84%116%32%147%246$0@%284$1@@@%298$0@$1@@|@|@"])
  fun op UNIV_FUN_TO_BOOL x = x
    val op UNIV_FUN_TO_BOOL =
    DT(((("pred_set",357),
        [("bool",[25,36,63]),("pred_set",[3,14,24,356])]),["DISK_THM"]),
       [read"%153%327@%284%324@@"])
  fun op SUBSET_POW x = x
    val op SUBSET_POW =
    DT(((("pred_set",358),
        [("bool",[25,26,36,53,58,63,105,124]),("pair",[3]),
         ("pred_set",[6,18,355])]),["DISK_THM"]),
       [read"%116%78%116%80%163%298$1@$0@@%300%284$1@@%284$0@@@|@|@"])
  fun op SUBSET_INSERT_RIGHT x = x
    val op SUBSET_INSERT_RIGHT =
    DT(((("pred_set",359),
        [("bool",[25,36,52,53,58,63,105,124]),
         ("pred_set",[18,80])]),["DISK_THM"]),
       [read"%113%31%116%78%116%80%163%298$1@$0@@%298$1@%263$2@$0@@@|@|@|@"])
  fun op SUBSET_DELETE_BOTH x = x
    val op SUBSET_DELETE_BOTH =
    DT(((("pred_set",360),
        [("bool",[25,36,51,53,54,56,58,63,105,124]),
         ("pred_set",[18,102,111])]),["DISK_THM"]),
       [read"%116%78%116%80%113%99%163%298$2@$1@@%298%199$2@$0@@%199$1@$0@@@|@|@|@"])
  fun op POW_EMPTY x = x
    val op POW_EMPTY =
    DT(((("pred_set",361),
        [("bool",[25,26,27,53,54,58,63,71]),("pred_set",[3,10,22,356]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%116%72%356%153%284$0@@%209@@|@"])
  fun op POW_INSERT x = x
    val op POW_INSERT =
    DT(((("pred_set",362),
        [("bool",[25,26,27,30,51,52,53,54,55,56,58,63,99,105,124,129,147]),
         ("pred_set",[3,18,19,33,80,97,98,110,116,117,144,356,359,360]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%113%31%116%72%153%284%263$1@$0@@@%320%240%263$1@@%284$0@@@%284$0@@@|@|@"])
  fun op POW_EQNS x = x
    val op POW_EQNS =
    DT(((("pred_set",363),
        [("bool",[25,26,27,32,36,52,53,54,55,56,58,63]),("pair",[3]),
         ("pred_set",[3,6,10,23,80,355,362]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%141%153%284%205@@%266%205@%209@@@%113%31%116%72%153%284%263$1@$0@@@%276%67%320%240%263$2@@$0@@$0@|@%284$0@@@|@|@@"])
  fun op FINITE_POW x = x
    val op FINITE_POW =
    DT(((("pred_set",364),
        [("bool",[25,32,36,51,53,54,58,63,75,105,124]),
         ("pred_set",[185,186,187,190,199,363]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%218%284$0@@@|@"])
  fun op CARD_POW x = x
    val op CARD_POW =
    DT(((("pred_set",365),
        [("arithmetic",[8,24,27,46,69,71,74,93,126,172,173,177,180]),
         ("bool",
         [2,15,25,26,27,32,36,51,52,53,54,55,56,58,63,71,72,73,75,83,84,92,
          93,96,99,100,104,105,107,124,129,147]),("numeral",[3,5,8]),
         ("pred_set",
         [3,10,18,45,80,144,158,166,173,185,186,191,199,207,208,209,212,
          223,356,363,364]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%160%188%284$0@@@%214%283%185%334@@@%186$0@@@@|@"])
  fun op GSPEC_ETA x = x
    val op GSPEC_ETA =
    DT(((("pred_set",366),
        [("bool",[25,26,36,56,63]),("pair",[3]),
         ("pred_set",[0,3,6])]),["DISK_THM"]),
       [read"%148%222%99%133$0@%10$0@@|@@%10@"])
  fun op GSPEC_F x = x
    val op GSPEC_F =
    DT(((("pred_set",367),
        [("bool",[25,26,27,36,54,63]),("pair",[3]),
         ("pred_set",[3,6,10])]),["DISK_THM"]),
       [read"%148%222%99%133$0@%215@|@@%205@"])
  fun op GSPEC_T x = x
    val op GSPEC_T =
    DT(((("pred_set",368),
        [("bool",[25,26,36,63]),("pair",[3]),
         ("pred_set",[3,6,14])]),["DISK_THM"]),
       [read"%148%222%99%133$0@%316@|@@%324@"])
  fun op GSPEC_ID x = x
    val op GSPEC_ID =
    DT(((("pred_set",369),
        [("bool",[25,26,36,56,63]),("pair",[3]),
         ("pred_set",[3,6])]),["DISK_THM"]),
       [read"%148%222%99%133$0@%244$0@%108@@|@@%108@"])
  fun op GSPEC_EQ x = x
    val op GSPEC_EQ =
    DT(((("pred_set",370),
        [("bool",[25,26,27,36,52,56,63]),("pair",[3]),
         ("pred_set",[3,6,10,80])]),["DISK_THM"]),
       [read"%148%222%99%133$0@%145$0@%106@@|@@%263%106@%205@@"])
  fun op GSPEC_EQ2 x = x
    val op GSPEC_EQ2 =
    DT(((("pred_set",371),
        [("bool",[25,26,27,52,56,63]),("pair",[3]),
         ("pred_set",[3,6,10,80])]),["DISK_THM"]),
       [read"%148%222%99%133$0@%145%106@$0@@|@@%263%106@%205@@"])
  fun op GSPEC_F_COND x = x
    val op GSPEC_F_COND =
    DT(((("pred_set",372),
        [("bool",[25,26,27,51,53,54,58,63,72,105,124]),("pair",[4,5,9]),
         ("pred_set",[3,6,10])]),["DISK_THM"]),
       [read"%120%45%163%113%99%356%297$1$0@@@|@@%150%223$0@@%206@@|@"])
  fun op GSPEC_AND x = x
    val op GSPEC_AND =
    DT(((("pred_set",373),
        [("bool",[25,26,36,56,63]),("pair",[3]),
         ("pred_set",[3,6,45])]),["DISK_THM"]),
       [read"%116%10%116%17%148%222%99%133$0@%141$2$0@@$1$0@@@|@@%269%222%99%133$0@$2$0@@|@@%222%99%133$0@$1$0@@|@@@|@|@"])
  fun op GSPEC_OR x = x
    val op GSPEC_OR =
    DT(((("pred_set",374),
        [("bool",[25,26,36,56,63]),("pair",[3]),
         ("pred_set",[3,6,33])]),["DISK_THM"]),
       [read"%116%10%116%17%148%222%99%133$0@%335$2$0@@$1$0@@@|@@%318%222%99%133$0@$2$0@@|@@%222%99%133$0@$1$0@@|@@@|@|@"])
  fun op BIGUNION_partition x = x
    val op BIGUNION_partition =
    DT(((("pred_set",377),
        [("bool",[2,15,25,26,51,52,53,54,58,63,73,75,84,99,100]),
         ("pair",[3]),("pred_set",[3,6,244,375,376]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%163%344%21@%72@@%148%177%355%21@%72@@@%72@@"])
  fun op EMPTY_NOT_IN_partition x = x
    val op EMPTY_NOT_IN_partition =
    DT(((("pred_set",378),
        [("bool",
         [2,15,25,26,27,53,54,58,63,71,72,73,75,84,96,99,100,105,124]),
         ("pair",[3]),("pred_set",[3,6,10,375,376]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%163%344%21@%72@@%356%246%205@%355%21@%72@@@@"])
  fun op partition_elements_disjoint x = x
    val op partition_elements_disjoint =
    DT(((("pred_set",379),
        [("bool",
         [25,26,27,30,36,43,47,48,52,53,54,56,58,63,71,73,75,76,78,80,84,
          93,94,95,96,101,105,124,145,146]),("combin",[19]),("pair",[3]),
         ("pred_set",[3,6,10,45,57,375,376]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%163%344%21@%72@@%116%92%116%93%163%141%246$1@%355%21@%72@@@%141%246$0@%355%21@%72@@@%356%148$1@$0@@@@@%203$1@$0@@|@|@@"])
  fun op partition_elements_interrelate x = x
    val op partition_elements_interrelate =
    DT(((("pred_set",380),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,73,75,76,78,80,81,84,86,93,
          94,95,96,101,105,124,145,146]),("combin",[19]),("pair",[3]),
         ("pred_set",[6,375,376]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%163%344%21@%72@@%116%86%163%246$0@%355%21@%72@@@%113%99%113%106%163%141%244$1@$2@@%244$0@$2@@@%21$1@$0@@|@|@@|@@"])
  fun op partition_SUBSET x = x
    val op partition_SUBSET =
    DT(((("pred_set",381),
        [("bool",[2,15,25,26,53,54,58,63,75,84,99,100,105,106,124]),
         ("pair",[3]),("pred_set",[3,6,18,376]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%117%21%116%72%116%86%163%246$0@%355$2@$1@@@%298$0@$1@@|@|@|@"])
  fun op FINITE_partition x = x
    val op FINITE_partition =
    DT(((("pred_set",382),
        [("bool",[2,15,25,26,53,54,58,63,75,83,84,99,105,124]),
         ("pair",[3]),("pred_set",[6,18,192,355,364,381]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%117%21%116%72%163%216$0@@%141%218%355$1@$0@@@%116%86%163%246$0@%355$2@$1@@@%216$0@@|@@@|@|@"])
  fun op partition_CARD x = x
    val op partition_CARD =
    DT(((("pred_set",383),
        [("arithmetic",[22,24,25,26,46,71,91,93,172,173,177,180]),
         ("bool",
         [2,15,25,26,36,43,51,52,53,54,55,56,58,63,73,75,83,84,96,99,100,
          101,104,105,124]),("numeral",[3,8]),
         ("pred_set",
         [57,80,104,186,207,212,246,250,251,253,314,377,379,382]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%21%116%72%163%141%344$1@$0@@%216$0@@@%160%186$0@@%305%186@%355$1@$0@@@@|@|@"])
  fun op pairwise_UNION x = x
    val op pairwise_UNION =
    DT(((("pred_set",385),
        [("bool",[25,26,53,54,58,63,73,97,98,102,103,105,124]),
         ("pred_set",[33,384]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%147%354%21@%318%78@%80@@@%141%354%21@%78@@%141%354%21@%80@@%113%99%113%106%163%141%244$1@%78@@%244$0@%80@@@%141%21$1@$0@@%21$0@$1@@@|@|@@@@"])
  fun op pairwise_SUBSET x = x
    val op pairwise_SUBSET =
    DT(((("pred_set",386),
        [("bool",[25,36,51,53,58,63,105,124]),
         ("pred_set",[18,384])]),["DISK_THM"]),
       [read"%117%21%116%72%116%86%163%141%354$2@$0@@%298$1@$0@@@%354$2@$1@@|@|@|@"])
  fun op KoenigsLemma x = x
    val op KoenigsLemma =
    DT(((("pred_set",387),
        [("bool",
         [2,13,14,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,74,75,
          78,81,83,84,93,94,96,99,100,105,124,143,146]),
         ("combin",[1,5,19,20]),("num",[9]),("pair",[3,4]),
         ("pred_set",[3,6,80,144,187,199,244,254]),("prim_rec",[38]),
         ("relation",[73]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%21%163%113%99%216%222%106%133$0@$2$1@$0@@|@@|@@%113%99%163%356%216%222%106%133$0@%294$2@$1@$0@@|@@@@%171%49%141%145$0%142@@$1@@%128%60$3$1$0@@$1%303$0@@@|@@|@@|@@|@"])
  fun op KoenigsLemma_WF x = x
    val op KoenigsLemma_WF =
    DT(((("pred_set",388),
        [("bool",
         [2,14,15,25,26,36,53,54,56,58,63,71,72,75,83,100,105,124]),
         ("combin",[1,5,19,20]),("pred_set",[387]),("prim_rec",[39,40]),
         ("relation",[140]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%117%21%163%141%113%99%216%222%106%133$0@$2$1@$0@@|@@|@@%331%345$0@@@@%113%99%216%222%106%133$0@%294$2@$1@$0@@|@@|@@|@"])
  fun op SET_EQ_SUBSET x = x
    val op SET_EQ_SUBSET =
    DT(((("pred_set",389),
        [("bool",[25,26,36,51,53,58,63,105,124]),
         ("pred_set",[18,21])]),["DISK_THM"]),
       [read"%116%78%116%80%147%148$1@$0@@%141%298$1@$0@@%298$0@$1@@@|@|@"])
  fun op PSUBSET_EQN x = x
    val op PSUBSET_EQN =
    DT(((("pred_set",390),
        [("bool",[25,26,47,48,53,54,63,71,93,94,96]),("pred_set",[26,389]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%78%116%80%147%289$1@$0@@%141%298$1@$0@@%356%298$0@$1@@@@|@|@"])
  fun op PSUBSET_SUBSET_TRANS x = x
    val op PSUBSET_SUBSET_TRANS =
    DT(((("pred_set",391),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("pred_set",[18,390]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%163%141%289$2@$1@@%298$1@$0@@@%289$2@$0@@|@|@|@"])
  fun op SUBSET_PSUBSET_TRANS x = x
    val op SUBSET_PSUBSET_TRANS =
    DT(((("pred_set",392),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("pred_set",[18,390]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%116%94%163%141%298$2@$1@@%289$1@$0@@@%289$2@$0@@|@|@|@"])
  fun op CROSS_EQNS x = x
    val op CROSS_EQNS =
    DT(((("pred_set",393),
        [("bool",
         [2,13,15,25,26,27,30,47,48,51,52,53,54,55,56,63,93,94,96,169]),
         ("pair",[3,5,8,9]),("pred_set",[3,6,131,143,267,270,272]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%78%122%81%141%156%197%205@$0@@%211@@%156%197%263%26@$1@@$0@@%322%238%107%132%26@$0@|@$0@@%197$1@$0@@@@|@|@"])
  fun op count_EQN x = x
    val op count_EQN =
    DT(((("pred_set",394),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [14,25,26,27,36,43,52,54,56,58,63,93,96,101,104,105,107,124,129,
          145,147]),("combin",[8,11,15,16,33,35]),("marker",[6,9]),
         ("num",[7,9]),("numeral",[3,5,8]),("pair",[3]),
         ("pred_set",[3,6,80,295,367]),("prim_rec",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%128%60%155%337$0@@%195%160$0@%142@@%210@%277%65%267$0@%337$0@@|@%285$0@@@@|@"])
  fun op UNIQUE_MEMBER_SING x = x
    val op UNIQUE_MEMBER_SING =
    DT(((("pred_set",395),
        [("bool",[25,26,27,52,53,54,55,63]),("pred_set",[3,10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%99%116%72%147%141%244$1@$0@@%113%106%163%244$0@$1@@%145$2@$0@@|@@@%148$0@%263$1@%205@@@|@|@"])
  fun op inj_surj x = x
    val op inj_surj =
    DT(((("pred_set",396),
        [("bool",
         [2,15,25,26,27,30,48,53,54,55,58,63,72,75,84,96,99,100,105,124,
          146]),("pred_set",[120,144,158,166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%252$2@$1@$0@@%335%148$1@%205@@%170%51%312$0@$1@$2@|@@@|@|@|@"])
  fun op infinite_rest x = x
    val op infinite_rest =
    DT(((("pred_set",397),
        [("bool",[27,54,63]),("pred_set",[121,188])]),["DISK_THM"]),
       [read"%116%72%163%356%216$0@@@%356%216%291$0@@@@|@"])
  fun op chooser_def_compute x = x
    val op chooser_def_compute =
    DT(((("pred_set",399),
        [("arithmetic",[268]),("bool",[26]),
         ("pred_set",[398])]),["DISK_THM"]),
       [read"%141%116%72%145%336$0@%142@@%191$0@@|@@%141%116%72%128%60%145%336$1@%283%184$0@@@@%336%291$1@@%140%283%184$0@@@%283%184%334@@@@@|@|@@%116%72%128%60%145%336$1@%283%185$0@@@@%336%291$1@@%283%184$0@@@@|@|@@@"])
  fun op infinite_num_inj x = x
    val op infinite_num_inj =
    DT(((("pred_set",400),
        [("arithmetic",[24,25,27,28,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,63,64,71,72,83,
          92,96,99,101,104,105,124]),("num",[7,9]),("numeral",[3,5,8]),
         ("pred_set",
         [3,10,14,15,18,20,80,102,120,121,124,158,186,188,230,397,398]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%147%356%216$0@@@%171%49%259$0@%328@$1@|@@|@"])
  fun op countable_image_nats x = x
    val op countable_image_nats =
    DT(((("pred_set",402),
        [("bool",[2,15,25,26,53,54,58,63,75,83,100]),
         ("pred_set",[171,172,401]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%338%242%49@%328@@"])
  fun op countable_surj x = x
    val op countable_surj =
    DT(((("pred_set",403),
        [("bool",[2,15,25,26,27,30,36,37,51,53,54,58,63,75,105,124]),
         ("pred_set",[3,10,14,158,166,396,401]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%147%338$0@@%335%148$0@%205@@%171%49%314$0@%328@$1@|@@@|@"])
  fun op num_countable x = x
    val op num_countable =
    DT(((("pred_set",404),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("pred_set",[14,158,401])]),["DISK_THM"]), [read"%341%328@"])
  fun op subset_countable x = x
    val op subset_countable =
    DT(((("pred_set",405),
        [("bool",[25,26,36,51,53,54,56,58,63,105,124]),
         ("pred_set",[18,158,401]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%338$1@@%298$0@$1@@@%338$0@@|@|@"])
  fun op image_countable x = x
    val op image_countable =
    DT(((("pred_set",406),
        [("bool",[2,15,25,26,27,30,36,37,51,52,53,54,55,56,58,63,105,124]),
         ("combin",[8]),("pred_set",[10,14,144,151,166,403]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%163%338$0@@%339%232$1@$0@@@|@|@"])
  fun op finite_countable x = x
    val op finite_countable =
    DT(((("pred_set",407),
        [("arithmetic",[24,25,71,173,180]),
         ("bool",
         [2,15,25,26,27,30,36,37,51,52,53,54,55,56,58,63,64,74,75,83,84,99,
          100,104,105,124]),("numeral",[3,8]),
         ("pred_set",[3,10,14,80,144,151,158,186,199,342,401]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%163%216$0@@%338$0@@|@"])
  fun op pair_to_num_formula x = x
    val op pair_to_num_formula =
    DT(((("pred_set",410),
        [("arithmetic",[73,91]),("bool",[25,56]),("numpair",[3,23]),
         ("pred_set",[409])]),["DISK_THM"]),
       [read"%128%102%128%109%160%353%138$1@$0@@@%131%204%130%131%131$1@$0@@%283%184%334@@@@%131$1@$0@@@%283%185%334@@@@$0@@|@|@"])
  fun op pair_to_num_inv x = x
    val op pair_to_num_inv =
    DT(((("pred_set",411),
        [("bool",[25,51,56]),("numpair",[26,27,29]),("pair",[4]),
         ("pred_set",[408,409])]),["DISK_THM"]),
       [read"%141%128%102%160%353%350$0@@@$0@|@@%128%102%128%109%162%350%353%138$1@$0@@@@%138$1@$0@@|@|@@"])
  fun op cross_countable x = x
    val op cross_countable =
    DT(((("pred_set",412),
        [("bool",[2,14,15,25,26,27,36,51,52,53,54,56,58,63,73,75,105,124]),
         ("combin",[3,5]),("pair",[4,5,7,8,9,16]),
         ("pred_set",
         [3,14,15,144,166,185,267,268,279,368,403,406,407,411]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%122%87%163%141%338$1@@%339$0@@@%342%197$1@$0@@@|@|@"])
  fun op inter_countable x = x
    val op inter_countable =
    DT(((("pred_set",413),
        [("bool",[25,53,54,58,63,73]),("pred_set",[50,405]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%116%86%163%335%338$1@@%338$0@@@%338%269$1@$0@@@|@|@"])
  fun op inj_countable x = x
    val op inj_countable =
    DT(((("pred_set",414),
        [("bool",[25,36,51,53,56,58,63,105,124]),("combin",[8]),
         ("pred_set",[14,158,401])]),["DISK_THM"]),
       [read"%115%41%116%72%122%87%163%141%339$0@@%252$2@$1@$0@@@%338$1@@|@|@|@"])
  fun op bigunion_countable x = x
    val op bigunion_countable =
    DT(((("pred_set",415),
        [("bool",
         [2,14,15,25,26,27,36,51,52,53,54,55,56,58,63,73,75,83,84,90,100,
          105,124,146]),("combin",[1,5,19]),("pair",[4,7]),
         ("pred_set",[14,15,158,166,244,267,268,368,401,403,411,414]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%125%74%163%141%340$0@@%116%101%163%246$0@$1@@%338$0@@|@@@%338%177$0@@@|@"])
  fun op union_countable x = x
    val op union_countable =
    DT(((("pred_set",416),
        [("bool",[2,15,25,26,27,48,52,53,54,58,63,99,105,124]),
         ("pred_set",[3,10,33,80,185,187,244,407,415]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%116%86%163%141%338$1@@%338$0@@@%338%318$1@$0@@@|@|@"])
  fun op union_countable_IFF x = x
    val op union_countable_IFF =
    DT(((("pred_set",417),
        [("bool",[25,26,53,54,58,63,73]),("pred_set",[38,405,416]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%147%338%318%72@%86@@@%141%338%72@@%338%86@@@"])
  fun op inj_image_countable_IFF x = x
    val op inj_image_countable_IFF =
    DT(((("pred_set",418),
        [("bool",[2,15,25,26,51,53,54,58,63,74,84,105,106,124]),
         ("pred_set",[161,401,406]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%163%252%41@%72@%232%41@%72@@@%147%339%232%41@%72@@@%338%72@@@"])
  fun op pow_no_surj x = x
    val op pow_no_surj =
    DT(((("pred_set",419),
        [("bool",[25,26,27,36,48,53,54,58,63,71,72,92,96,99,105,124]),
         ("pair",[3]),("pred_set",[3,6,18,166,355]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%356%168%42%311$0@$1@%284$1@@|@@|@"])
  fun op infinite_pow_uncountable x = x
    val op infinite_pow_uncountable =
    DT(((("pred_set",420),
        [("bool",[25,26,27,52,53,54,58,63,72,105,124]),
         ("pred_set",[15,168,361,396,400,403,419]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%163%356%216$0@@@%356%340%284$0@@@@|@"])
  fun op countable_Usum x = x
    val op countable_Usum =
    DT(((("pred_set",421),
        [("bool",[25,36,51,53,56,58,63,105,124,140]),
         ("pred_set",[14,144,282,283,284,417,418]),
         ("sum",[7])]),["DISK_THM"]),
       [read"%147%343%330@@%141%338%324@@%339%325@@@"])
  fun op countable_EMPTY x = x
    val op countable_EMPTY =
    DT(((("pred_set",422),
        [("bool",[25,37,63]),("pred_set",[162,401])]),["DISK_THM"]),
       [read"%338%205@"])
  fun op countable_INSERT x = x
    val op countable_INSERT =
    DT(((("pred_set",423),
        [("arithmetic",[79,91]),
         ("bool",
         [25,26,27,30,36,51,52,53,56,58,63,97,98,102,105,124,129,147]),
         ("numeral",[3,6]),
         ("pred_set",[14,18,80,86,158,401])]),["DISK_THM"]),
       [read"%147%338%263%99@%72@@@%338%72@@"])
  fun op cross_countable_IFF x = x
    val op cross_countable_IFF =
    DT(((("pred_set",424),
        [("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,63,75,99,102,105,106,
          124]),("pair",[4,8,9]),
         ("pred_set",[14,80,83,90,158,268,270,401,412,422,423]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%147%342%197%72@%87@@@%335%148%72@%205@@%335%150%87@%206@@%141%338%72@@%339%87@@@@@"])
  fun op countable_Uprod x = x
    val op countable_Uprod =
    DT(((("pred_set",425),
        [("bool",[25,26,27,52,56]),
         ("pred_set",[15,280,424])]),["DISK_THM"]),
       [read"%147%342%329@@%141%338%324@@%339%325@@@"])
  fun op IMAGE_BIGUNION x = x
    val op IMAGE_BIGUNION =
    DT(((("pred_set",426),
        [("bool",[25,26,53,54,55,58,63,80,81,143]),
         ("pred_set",[3,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%125%9%150%232$1@%177$0@@@%178%241%232$1@@$0@@@|@|@"])
  fun op SUBSET_DIFF x = x
    val op SUBSET_DIFF =
    DT(((("pred_set",427),
        [("bool",[25,26,27,53,54,58,63,96,100,105,124]),
         ("pred_set",[3,10,18,45,57,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%78%116%80%116%83%147%298$2@%202$1@$0@@@%141%298$2@$1@@%203$2@$0@@@|@|@|@"])
  fun op INTER_SUBSET_EQN x = x
    val op INTER_SUBSET_EQN =
    DT(((("pred_set",428),
        [("bool",[25,26,27,48,51,53,54,63,100]),("pred_set",[3,18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%141%147%148%269%0@%2@@%0@@%298%0@%2@@@%147%148%269%0@%2@@%2@@%298%2@%0@@@"])
  fun op PSUBSET_SING x = x
    val op PSUBSET_SING =
    DT(((("pred_set",429),
        [("bool",[25,26,27,30,53,54,55,58,63,71,105,124]),
         ("pred_set",[3,10,18,26,131]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%71%116%101%147%289$0@%263$1@%205@@@%148$0@%205@@|@|@"])
  fun op INTER_UNION x = x
    val op INTER_UNION =
    DT(((("pred_set",430),
        [("bool",[25,51,63]),("pred_set",[38,428])]),["DISK_THM"]),
       [read"%141%148%269%318%0@%2@@%0@@%0@@%141%148%269%318%2@%0@@%0@@%0@@%141%148%269%0@%318%0@%2@@@%0@@%148%269%0@%318%2@%0@@@%0@@@@"])
  fun op UNION_DELETE x = x
    val op UNION_DELETE =
    DT(((("pred_set",431),
        [("bool",[25,26,27,51,52,54,63]),
         ("pred_set",[3,33,102])]),["DISK_THM"]),
       [read"%116%0%116%2%113%99%148%199%318$2@$1@@$0@@%318%199$2@$0@@%199$1@$0@@@|@|@|@"])
  fun op DELETE_SUBSET_INSERT x = x
    val op DELETE_SUBSET_INSERT =
    DT(((("pred_set",432),
        [("bool",[25,26,53,54,58,63,105,124]),("pred_set",[18,80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%72%113%31%116%80%147%298%199$2@$1@@$0@@%298$2@%263$1@$0@@@|@|@|@"])
  fun op IN_INSERT_EXPAND x = x
    val op IN_INSERT_EXPAND =
    DT(((("pred_set",433),
        [("bool",[25,26,53,54,55,63]),("pred_set",[80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%113%99%113%106%116%10%147%244$2@%263$1@$0@@@%335%145$2@$1@@%141%356%145$2@$1@@@%244$2@$0@@@@|@|@|@"])
  fun op FINITE_INTER x = x
    val op FINITE_INTER =
    DT(((("pred_set",434),
        [("bool",[25,36,51,53,54,58,63,83,105,124]),
         ("pred_set",[18,45,192]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%116%78%116%80%163%335%216$1@@%216$0@@@%216%269$1@$0@@@|@|@"])
  fun op INSERT_EQ_SING x = x
    val op INSERT_EQ_SING =
    DT(((("pred_set",435),
        [("bool",[25,26,27,52,53,54,55,58,63,100,105,124]),
         ("pred_set",[3,10,18,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%72%113%99%113%106%147%148%263$1@$2@@%263$0@%205@@@%141%145$1@$0@@%298$2@%263$0@%205@@@@|@|@|@"])
  fun op CARD_UNION_LE x = x
    val op CARD_UNION_LE =
    DT(((("pred_set",436),
        [("arithmetic",[24,25,26,27,46,69,71,74,93,172,173,176,180]),
         ("bool",[25,36,43,54,58,63,96,101,104,105]),("numeral",[3,5,8]),
         ("pred_set",[212])]),["DISK_THM"]),
       [read"%163%141%216%72@@%216%86@@@%144%186%318%72@%86@@@%131%186%72@@%186%86@@@@"])
  fun op IMAGE_SUBSET_gen x = x
    val op IMAGE_SUBSET_gen =
    DT(((("pred_set",437),
        [("bool",[25,26,53,54,55,58,63,84,105,124]),("pred_set",[18,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%41%116%72%116%94%122%87%163%141%298$2@$1@@%299%232$3@$1@@$0@@@%299%232$3@$2@@$0@@|@|@|@|@"])
  fun op CARD_REST x = x
    val op CARD_REST =
    DT(((("pred_set",438),
        [("arithmetic",[65]),
         ("bool",[25,36,51,53,54,56,58,63,105,124,129,147,169]),
         ("pred_set",[102,121,123,188,208])]),["DISK_THM"]),
       [read"%116%72%163%141%216$0@@%356%148$0@%205@@@@%160%186%291$0@@@%140%186$0@@%283%184%334@@@@@|@"])
  fun op SUBSET_DIFF_EMPTY x = x
    val op SUBSET_DIFF_EMPTY =
    DT(((("pred_set",439),
        [("bool",[25,26,27,47,48,53,54,58,63,71,76,80,81,94,96]),
         ("pred_set",[3,10,18,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%147%148%202$1@$0@@%205@@%298$1@$0@@|@|@"])
  fun op DIFF_INTER_SUBSET x = x
    val op DIFF_INTER_SUBSET =
    DT(((("pred_set",440),
        [("bool",[25,26,47,48,53,54,58,63,94,96,105,124]),
         ("pred_set",[3,18,45,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%70%116%72%116%86%163%298$2@$1@@%148%202$2@%269$1@$0@@@%202$2@$0@@@|@|@|@"])
  fun op UNION_DIFF_2 x = x
    val op UNION_DIFF_2 =
    DT(((("pred_set",441),
        [("bool",[25,26,47,48,53,54,63]),("pred_set",[3,33,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%116%72%116%86%148%318$1@%202$1@$0@@@$1@|@|@"])
  fun op count_add x = x
    val op count_add =
    DT(((("pred_set",442),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,172,173,177,180,200,269]),
         ("bool",
         [25,26,27,30,36,37,43,51,52,53,54,56,58,63,93,96,101,104,105,106,
          124]),("numeral",[3,8]),("pred_set",[3,33,144,296]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%128%60%128%58%155%337%131$1@$0@@@%321%337$1@@%243%131$1@@%337$0@@@@|@|@"])
  fun op IMAGE_EQ_SING x = x
    val op IMAGE_EQ_SING =
    DT(((("pred_set",443),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,72,75,77,80,83,
          86,87,93,94,96,103,105,124,146]),("pred_set",[3,10,80,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%147%148%236%46@%73@@%263%110@%205@@@%141%356%150%73@%206@@@%114%100%163%245$0@%73@@%145%46$0@@%110@@|@@@"])
  fun op count_add1 x = x
    val op count_add1 =
    DT(((("pred_set",444),
        [("arithmetic",[64]),("bool",[25,53,54,55,63]),("pred_set",[299]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%60%155%337%131$0@%283%184%334@@@@@%267$0@%337$0@@@|@"])
  fun op compl_insert x = x
    val op compl_insert =
    DT(((("pred_set",445),
        [("bool",[26,27,48,96]),
         ("pred_set",[3,80,102,286])]),["DISK_THM"]),
       [read"%116%72%113%99%148%192%263$0@$1@@@%199%192$1@@$0@@|@|@"])
  fun op in_max_set x = x
    val op in_max_set =
    DT(((("pred_set",446),
        [("arithmetic",[95,307]),("bool",[25,26,27,52,53,58,63,105,124]),
         ("pred_set",[10,80,186,343])]),["DISK_THM"]),
       [read"%127%75%163%219$0@@%128%102%163%247$0@$1@@%144$0@%280$1@@@|@@|@"])
  end
  val _ = DB.bindl "pred_set"
  [("GSPECIFICATION",GSPECIFICATION,DB.Def),
   ("EMPTY_DEF",EMPTY_DEF,DB.Def), ("UNIV_DEF",UNIV_DEF,DB.Def),
   ("SUBSET_DEF",SUBSET_DEF,DB.Def), ("PSUBSET_DEF",PSUBSET_DEF,DB.Def),
   ("UNION_DEF",UNION_DEF,DB.Def), ("INTER_DEF",INTER_DEF,DB.Def),
   ("DISJOINT_DEF",DISJOINT_DEF,DB.Def), ("DIFF_DEF",DIFF_DEF,DB.Def),
   ("INSERT_DEF",INSERT_DEF,DB.Def), ("DELETE_DEF",DELETE_DEF,DB.Def),
   ("CHOICE_DEF",CHOICE_DEF,DB.Def), ("REST_DEF",REST_DEF,DB.Def),
   ("SING_DEF",SING_DEF,DB.Def), ("IMAGE_DEF",IMAGE_DEF,DB.Def),
   ("INJ_DEF",INJ_DEF,DB.Def), ("SURJ_DEF",SURJ_DEF,DB.Def),
   ("BIJ_DEF",BIJ_DEF,DB.Def), ("LINV_DEF",LINV_DEF,DB.Def),
   ("RINV_DEF",RINV_DEF,DB.Def), ("FINITE_DEF",FINITE_DEF,DB.Def),
   ("REL_RESTRICT_DEF",REL_RESTRICT_DEF,DB.Def),
   ("CARD_DEF",CARD_DEF,DB.Def), ("BIGUNION",BIGUNION,DB.Def),
   ("BIGINTER",BIGINTER,DB.Def), ("CROSS_DEF",CROSS_DEF,DB.Def),
   ("COMPL_DEF",COMPL_DEF,DB.Def), ("count_def",count_def,DB.Def),
   ("ITSET_tupled_primitive_def",ITSET_tupled_primitive_def,DB.Def),
   ("ITSET_curried_def",ITSET_curried_def,DB.Def),
   ("SUM_IMAGE_DEF",SUM_IMAGE_DEF,DB.Def),
   ("SUM_SET_DEF",SUM_SET_DEF,DB.Def),
   ("PROD_IMAGE_DEF",PROD_IMAGE_DEF,DB.Def),
   ("PROD_SET_DEF",PROD_SET_DEF,DB.Def),
   ("MAX_SET_DEF",MAX_SET_DEF,DB.Def), ("MIN_SET_DEF",MIN_SET_DEF,DB.Def),
   ("POW_DEF",POW_DEF,DB.Def), ("equiv_on_def",equiv_on_def,DB.Def),
   ("partition_def",partition_def,DB.Def),
   ("pairwise_def",pairwise_def,DB.Def),
   ("chooser_def",chooser_def,DB.Def),
   ("countable_def",countable_def,DB.Def),
   ("num_to_pair_def",num_to_pair_def,DB.Def),
   ("pair_to_num_def",pair_to_num_def,DB.Def),
   ("SPECIFICATION",SPECIFICATION,DB.Thm), ("IN_ABS",IN_ABS,DB.Thm),
   ("ABS_applied",ABS_applied,DB.Thm), ("EXTENSION",EXTENSION,DB.Thm),
   ("NOT_EQUAL_SETS",NOT_EQUAL_SETS,DB.Thm),
   ("NUM_SET_WOP",NUM_SET_WOP,DB.Thm),
   ("GSPECIFICATION_applied",GSPECIFICATION_applied,DB.Thm),
   ("SET_MINIMUM",SET_MINIMUM,DB.Thm),
   ("NOT_IN_EMPTY",NOT_IN_EMPTY,DB.Thm),
   ("MEMBER_NOT_EMPTY",MEMBER_NOT_EMPTY,DB.Thm),
   ("EMPTY_applied",EMPTY_applied,DB.Thm), ("IN_UNIV",IN_UNIV,DB.Thm),
   ("UNIV_NOT_EMPTY",UNIV_NOT_EMPTY,DB.Thm),
   ("EMPTY_NOT_UNIV",EMPTY_NOT_UNIV,DB.Thm), ("EQ_UNIV",EQ_UNIV,DB.Thm),
   ("SUBSET_TRANS",SUBSET_TRANS,DB.Thm),
   ("SUBSET_REFL",SUBSET_REFL,DB.Thm),
   ("SUBSET_ANTISYM",SUBSET_ANTISYM,DB.Thm),
   ("EMPTY_SUBSET",EMPTY_SUBSET,DB.Thm),
   ("SUBSET_EMPTY",SUBSET_EMPTY,DB.Thm),
   ("SUBSET_UNIV",SUBSET_UNIV,DB.Thm), ("UNIV_SUBSET",UNIV_SUBSET,DB.Thm),
   ("PSUBSET_TRANS",PSUBSET_TRANS,DB.Thm),
   ("PSUBSET_IRREFL",PSUBSET_IRREFL,DB.Thm),
   ("NOT_PSUBSET_EMPTY",NOT_PSUBSET_EMPTY,DB.Thm),
   ("NOT_UNIV_PSUBSET",NOT_UNIV_PSUBSET,DB.Thm),
   ("PSUBSET_UNIV",PSUBSET_UNIV,DB.Thm), ("IN_UNION",IN_UNION,DB.Thm),
   ("UNION_applied",UNION_applied,DB.Thm),
   ("UNION_ASSOC",UNION_ASSOC,DB.Thm),
   ("UNION_IDEMPOT",UNION_IDEMPOT,DB.Thm),
   ("UNION_COMM",UNION_COMM,DB.Thm), ("SUBSET_UNION",SUBSET_UNION,DB.Thm),
   ("UNION_SUBSET",UNION_SUBSET,DB.Thm),
   ("SUBSET_UNION_ABSORPTION",SUBSET_UNION_ABSORPTION,DB.Thm),
   ("UNION_EMPTY",UNION_EMPTY,DB.Thm), ("UNION_UNIV",UNION_UNIV,DB.Thm),
   ("EMPTY_UNION",EMPTY_UNION,DB.Thm), ("IN_INTER",IN_INTER,DB.Thm),
   ("INTER_applied",INTER_applied,DB.Thm),
   ("INTER_ASSOC",INTER_ASSOC,DB.Thm),
   ("INTER_IDEMPOT",INTER_IDEMPOT,DB.Thm),
   ("INTER_COMM",INTER_COMM,DB.Thm), ("INTER_SUBSET",INTER_SUBSET,DB.Thm),
   ("SUBSET_INTER",SUBSET_INTER,DB.Thm),
   ("SUBSET_INTER_ABSORPTION",SUBSET_INTER_ABSORPTION,DB.Thm),
   ("INTER_EMPTY",INTER_EMPTY,DB.Thm), ("INTER_UNIV",INTER_UNIV,DB.Thm),
   ("UNION_OVER_INTER",UNION_OVER_INTER,DB.Thm),
   ("INTER_OVER_UNION",INTER_OVER_UNION,DB.Thm),
   ("IN_DISJOINT",IN_DISJOINT,DB.Thm),
   ("DISJOINT_SYM",DISJOINT_SYM,DB.Thm),
   ("DISJOINT_EMPTY",DISJOINT_EMPTY,DB.Thm),
   ("DISJOINT_EMPTY_REFL",DISJOINT_EMPTY_REFL,DB.Thm),
   ("DISJOINT_EMPTY_REFL_RWT",DISJOINT_EMPTY_REFL_RWT,DB.Thm),
   ("DISJOINT_UNION",DISJOINT_UNION,DB.Thm),
   ("DISJOINT_UNION_BOTH",DISJOINT_UNION_BOTH,DB.Thm),
   ("DISJOINT_SUBSET",DISJOINT_SUBSET,DB.Thm), ("IN_DIFF",IN_DIFF,DB.Thm),
   ("DIFF_applied",DIFF_applied,DB.Thm), ("DIFF_EMPTY",DIFF_EMPTY,DB.Thm),
   ("EMPTY_DIFF",EMPTY_DIFF,DB.Thm), ("DIFF_UNIV",DIFF_UNIV,DB.Thm),
   ("DIFF_DIFF",DIFF_DIFF,DB.Thm), ("DIFF_EQ_EMPTY",DIFF_EQ_EMPTY,DB.Thm),
   ("DIFF_SUBSET",DIFF_SUBSET,DB.Thm), ("UNION_DIFF",UNION_DIFF,DB.Thm),
   ("DIFF_UNION",DIFF_UNION,DB.Thm), ("DIFF_COMM",DIFF_COMM,DB.Thm),
   ("DIFF_SAME_UNION",DIFF_SAME_UNION,DB.Thm),
   ("IN_INSERT",IN_INSERT,DB.Thm),
   ("INSERT_applied",INSERT_applied,DB.Thm),
   ("COMPONENT",COMPONENT,DB.Thm), ("SET_CASES",SET_CASES,DB.Thm),
   ("DECOMPOSITION",DECOMPOSITION,DB.Thm),
   ("ABSORPTION",ABSORPTION,DB.Thm),
   ("ABSORPTION_RWT",ABSORPTION_RWT,DB.Thm),
   ("INSERT_INSERT",INSERT_INSERT,DB.Thm),
   ("INSERT_COMM",INSERT_COMM,DB.Thm), ("INSERT_UNIV",INSERT_UNIV,DB.Thm),
   ("NOT_INSERT_EMPTY",NOT_INSERT_EMPTY,DB.Thm),
   ("NOT_EMPTY_INSERT",NOT_EMPTY_INSERT,DB.Thm),
   ("INSERT_UNION",INSERT_UNION,DB.Thm),
   ("INSERT_UNION_EQ",INSERT_UNION_EQ,DB.Thm),
   ("INSERT_INTER",INSERT_INTER,DB.Thm),
   ("DISJOINT_INSERT",DISJOINT_INSERT,DB.Thm),
   ("DISJOINT_INSERT'",DISJOINT_INSERT',DB.Thm),
   ("INSERT_SUBSET",INSERT_SUBSET,DB.Thm),
   ("SUBSET_INSERT",SUBSET_INSERT,DB.Thm),
   ("INSERT_DIFF",INSERT_DIFF,DB.Thm), ("UNIV_BOOL",UNIV_BOOL,DB.Thm),
   ("IN_DELETE",IN_DELETE,DB.Thm),
   ("DELETE_applied",DELETE_applied,DB.Thm),
   ("DELETE_NON_ELEMENT",DELETE_NON_ELEMENT,DB.Thm),
   ("DELETE_NON_ELEMENT_RWT",DELETE_NON_ELEMENT_RWT,DB.Thm),
   ("IN_DELETE_EQ",IN_DELETE_EQ,DB.Thm),
   ("EMPTY_DELETE",EMPTY_DELETE,DB.Thm),
   ("DELETE_DELETE",DELETE_DELETE,DB.Thm),
   ("DELETE_COMM",DELETE_COMM,DB.Thm),
   ("DELETE_SUBSET",DELETE_SUBSET,DB.Thm),
   ("SUBSET_DELETE",SUBSET_DELETE,DB.Thm),
   ("SUBSET_INSERT_DELETE",SUBSET_INSERT_DELETE,DB.Thm),
   ("DIFF_INSERT",DIFF_INSERT,DB.Thm),
   ("PSUBSET_INSERT_SUBSET",PSUBSET_INSERT_SUBSET,DB.Thm),
   ("PSUBSET_MEMBER",PSUBSET_MEMBER,DB.Thm),
   ("DELETE_INSERT",DELETE_INSERT,DB.Thm),
   ("INSERT_DELETE",INSERT_DELETE,DB.Thm),
   ("DELETE_INTER",DELETE_INTER,DB.Thm),
   ("DISJOINT_DELETE_SYM",DISJOINT_DELETE_SYM,DB.Thm),
   ("CHOICE_NOT_IN_REST",CHOICE_NOT_IN_REST,DB.Thm),
   ("CHOICE_INSERT_REST",CHOICE_INSERT_REST,DB.Thm),
   ("REST_SUBSET",REST_SUBSET,DB.Thm),
   ("REST_PSUBSET",REST_PSUBSET,DB.Thm), ("SING",SING,DB.Thm),
   ("SING_EMPTY",SING_EMPTY,DB.Thm), ("SING_INSERT",SING_INSERT,DB.Thm),
   ("SING_UNION",SING_UNION,DB.Thm), ("IN_SING",IN_SING,DB.Thm),
   ("SING_applied",SING_applied,DB.Thm),
   ("NOT_SING_EMPTY",NOT_SING_EMPTY,DB.Thm),
   ("NOT_EMPTY_SING",NOT_EMPTY_SING,DB.Thm),
   ("EQUAL_SING",EQUAL_SING,DB.Thm),
   ("DISJOINT_SING_EMPTY",DISJOINT_SING_EMPTY,DB.Thm),
   ("INSERT_SING_UNION",INSERT_SING_UNION,DB.Thm),
   ("SING_DELETE",SING_DELETE,DB.Thm),
   ("DELETE_EQ_SING",DELETE_EQ_SING,DB.Thm),
   ("CHOICE_SING",CHOICE_SING,DB.Thm), ("REST_SING",REST_SING,DB.Thm),
   ("SING_IFF_EMPTY_REST",SING_IFF_EMPTY_REST,DB.Thm),
   ("IN_IMAGE",IN_IMAGE,DB.Thm), ("IMAGE_applied",IMAGE_applied,DB.Thm),
   ("IMAGE_IN",IMAGE_IN,DB.Thm), ("IMAGE_EMPTY",IMAGE_EMPTY,DB.Thm),
   ("IMAGE_ID",IMAGE_ID,DB.Thm), ("IMAGE_COMPOSE",IMAGE_COMPOSE,DB.Thm),
   ("IMAGE_INSERT",IMAGE_INSERT,DB.Thm),
   ("IMAGE_EQ_EMPTY",IMAGE_EQ_EMPTY,DB.Thm),
   ("IMAGE_DELETE",IMAGE_DELETE,DB.Thm),
   ("IMAGE_UNION",IMAGE_UNION,DB.Thm),
   ("IMAGE_SUBSET",IMAGE_SUBSET,DB.Thm),
   ("IMAGE_INTER",IMAGE_INTER,DB.Thm), ("IMAGE_11",IMAGE_11,DB.Thm),
   ("IMAGE_CONG",IMAGE_CONG,DB.Thm), ("INJ_IFF",INJ_IFF,DB.Thm),
   ("INJ_ID",INJ_ID,DB.Thm), ("INJ_COMPOSE",INJ_COMPOSE,DB.Thm),
   ("INJ_EMPTY",INJ_EMPTY,DB.Thm), ("INJ_DELETE",INJ_DELETE,DB.Thm),
   ("INJ_INSERT",INJ_INSERT,DB.Thm), ("INJ_SUBSET",INJ_SUBSET,DB.Thm),
   ("SURJ_ID",SURJ_ID,DB.Thm), ("SURJ_COMPOSE",SURJ_COMPOSE,DB.Thm),
   ("SURJ_EMPTY",SURJ_EMPTY,DB.Thm), ("IMAGE_SURJ",IMAGE_SURJ,DB.Thm),
   ("SURJ_IMAGE",SURJ_IMAGE,DB.Thm), ("SURJ_INJ_INV",SURJ_INJ_INV,DB.Thm),
   ("BIJ_ID",BIJ_ID,DB.Thm), ("BIJ_EMPTY",BIJ_EMPTY,DB.Thm),
   ("BIJ_COMPOSE",BIJ_COMPOSE,DB.Thm), ("BIJ_DELETE",BIJ_DELETE,DB.Thm),
   ("BIJ_LINV_INV",BIJ_LINV_INV,DB.Thm),
   ("BIJ_LINV_BIJ",BIJ_LINV_BIJ,DB.Thm),
   ("BIJ_IFF_INV",BIJ_IFF_INV,DB.Thm), ("BIJ_INSERT",BIJ_INSERT,DB.Thm),
   ("FINITE_EMPTY",FINITE_EMPTY,DB.Thm),
   ("FINITE_INDUCT",FINITE_INDUCT,DB.Thm),
   ("FINITE_INSERT",FINITE_INSERT,DB.Thm),
   ("FINITE_DELETE",FINITE_DELETE,DB.Thm),
   ("FINITE_REST",FINITE_REST,DB.Thm),
   ("FINITE_UNION",FINITE_UNION,DB.Thm),
   ("INTER_FINITE",INTER_FINITE,DB.Thm),
   ("SUBSET_FINITE",SUBSET_FINITE,DB.Thm),
   ("SUBSET_FINITE_I",SUBSET_FINITE_I,DB.Thm),
   ("PSUBSET_FINITE",PSUBSET_FINITE,DB.Thm),
   ("FINITE_DIFF",FINITE_DIFF,DB.Thm),
   ("FINITE_DIFF_down",FINITE_DIFF_down,DB.Thm),
   ("FINITE_SING",FINITE_SING,DB.Thm), ("SING_FINITE",SING_FINITE,DB.Thm),
   ("IMAGE_FINITE",IMAGE_FINITE,DB.Thm),
   ("FINITELY_INJECTIVE_IMAGE_FINITE",
    FINITELY_INJECTIVE_IMAGE_FINITE,
    DB.Thm), ("INJECTIVE_IMAGE_FINITE",INJECTIVE_IMAGE_FINITE,DB.Thm),
   ("FINITE_INJ",FINITE_INJ,DB.Thm),
   ("REL_RESTRICT_EMPTY",REL_RESTRICT_EMPTY,DB.Thm),
   ("REL_RESTRICT_SUBSET",REL_RESTRICT_SUBSET,DB.Thm),
   ("CARD_EMPTY",CARD_EMPTY,DB.Thm), ("CARD_INSERT",CARD_INSERT,DB.Thm),
   ("CARD_EQ_0",CARD_EQ_0,DB.Thm), ("CARD_DELETE",CARD_DELETE,DB.Thm),
   ("CARD_INTER_LESS_EQ",CARD_INTER_LESS_EQ,DB.Thm),
   ("CARD_UNION",CARD_UNION,DB.Thm),
   ("CARD_UNION_EQN",CARD_UNION_EQN,DB.Thm),
   ("CARD_SUBSET",CARD_SUBSET,DB.Thm),
   ("CARD_PSUBSET",CARD_PSUBSET,DB.Thm),
   ("SUBSET_EQ_CARD",SUBSET_EQ_CARD,DB.Thm),
   ("CARD_SING",CARD_SING,DB.Thm),
   ("SING_IFF_CARD1",SING_IFF_CARD1,DB.Thm),
   ("CARD_DIFF",CARD_DIFF,DB.Thm), ("CARD_DIFF_EQN",CARD_DIFF_EQN,DB.Thm),
   ("LESS_CARD_DIFF",LESS_CARD_DIFF,DB.Thm),
   ("BIJ_FINITE",BIJ_FINITE,DB.Thm),
   ("FINITE_BIJ_CARD_EQ",FINITE_BIJ_CARD_EQ,DB.Thm),
   ("CARD_INJ_IMAGE",CARD_INJ_IMAGE,DB.Thm),
   ("FINITE_COMPLETE_INDUCTION",FINITE_COMPLETE_INDUCTION,DB.Thm),
   ("INJ_CARD",INJ_CARD,DB.Thm), ("PHP",PHP,DB.Thm),
   ("INFINITE_DEF",INFINITE_DEF,DB.Thm),
   ("NOT_IN_FINITE",NOT_IN_FINITE,DB.Thm),
   ("INFINITE_INHAB",INFINITE_INHAB,DB.Thm),
   ("IMAGE_11_INFINITE",IMAGE_11_INFINITE,DB.Thm),
   ("INFINITE_SUBSET",INFINITE_SUBSET,DB.Thm),
   ("IN_INFINITE_NOT_FINITE",IN_INFINITE_NOT_FINITE,DB.Thm),
   ("INFINITE_UNIV",INFINITE_UNIV,DB.Thm),
   ("INFINITE_NUM_UNIV",INFINITE_NUM_UNIV,DB.Thm),
   ("FINITE_PSUBSET_INFINITE",FINITE_PSUBSET_INFINITE,DB.Thm),
   ("FINITE_PSUBSET_UNIV",FINITE_PSUBSET_UNIV,DB.Thm),
   ("INFINITE_DIFF_FINITE",INFINITE_DIFF_FINITE,DB.Thm),
   ("FINITE_ISO_NUM",FINITE_ISO_NUM,DB.Thm),
   ("FINITE_WEAK_ENUMERATE",FINITE_WEAK_ENUMERATE,DB.Thm),
   ("FINITE_WF_noloops",FINITE_WF_noloops,DB.Thm),
   ("FINITE_StrongOrder_WF",FINITE_StrongOrder_WF,DB.Thm),
   ("IN_BIGUNION",IN_BIGUNION,DB.Thm),
   ("BIGUNION_applied",BIGUNION_applied,DB.Thm),
   ("BIGUNION_EMPTY",BIGUNION_EMPTY,DB.Thm),
   ("BIGUNION_EQ_EMPTY",BIGUNION_EQ_EMPTY,DB.Thm),
   ("BIGUNION_SING",BIGUNION_SING,DB.Thm),
   ("BIGUNION_UNION",BIGUNION_UNION,DB.Thm),
   ("DISJOINT_BIGUNION",DISJOINT_BIGUNION,DB.Thm),
   ("BIGUNION_INSERT",BIGUNION_INSERT,DB.Thm),
   ("BIGUNION_SUBSET",BIGUNION_SUBSET,DB.Thm),
   ("FINITE_BIGUNION",FINITE_BIGUNION,DB.Thm),
   ("FINITE_BIGUNION_EQ",FINITE_BIGUNION_EQ,DB.Thm),
   ("SUBSET_BIGUNION_I",SUBSET_BIGUNION_I,DB.Thm),
   ("CARD_BIGUNION_SAME_SIZED_SETS",CARD_BIGUNION_SAME_SIZED_SETS,DB.Thm),
   ("IN_BIGINTER",IN_BIGINTER,DB.Thm),
   ("BIGINTER_applied",BIGINTER_applied,DB.Thm),
   ("BIGINTER_INSERT",BIGINTER_INSERT,DB.Thm),
   ("BIGINTER_EMPTY",BIGINTER_EMPTY,DB.Thm),
   ("BIGINTER_INTER",BIGINTER_INTER,DB.Thm),
   ("BIGINTER_SING",BIGINTER_SING,DB.Thm),
   ("SUBSET_BIGINTER",SUBSET_BIGINTER,DB.Thm),
   ("DISJOINT_BIGINTER",DISJOINT_BIGINTER,DB.Thm),
   ("BIGINTER_UNION",BIGINTER_UNION,DB.Thm), ("IN_CROSS",IN_CROSS,DB.Thm),
   ("CROSS_applied",CROSS_applied,DB.Thm),
   ("CROSS_EMPTY",CROSS_EMPTY,DB.Thm),
   ("CROSS_EMPTY_EQN",CROSS_EMPTY_EQN,DB.Thm),
   ("CROSS_INSERT_LEFT",CROSS_INSERT_LEFT,DB.Thm),
   ("CROSS_INSERT_RIGHT",CROSS_INSERT_RIGHT,DB.Thm),
   ("FINITE_CROSS",FINITE_CROSS,DB.Thm),
   ("CROSS_SINGS",CROSS_SINGS,DB.Thm),
   ("CARD_SING_CROSS",CARD_SING_CROSS,DB.Thm),
   ("CARD_CROSS",CARD_CROSS,DB.Thm), ("CROSS_SUBSET",CROSS_SUBSET,DB.Thm),
   ("FINITE_CROSS_EQ",FINITE_CROSS_EQ,DB.Thm),
   ("CROSS_UNIV",CROSS_UNIV,DB.Thm),
   ("INFINITE_PAIR_UNIV",INFINITE_PAIR_UNIV,DB.Thm),
   ("SUM_UNIV",SUM_UNIV,DB.Thm), ("INJ_INL",INJ_INL,DB.Thm),
   ("INJ_INR",INJ_INR,DB.Thm), ("IN_COMPL",IN_COMPL,DB.Thm),
   ("COMPL_applied",COMPL_applied,DB.Thm),
   ("COMPL_COMPL",COMPL_COMPL,DB.Thm),
   ("COMPL_CLAUSES",COMPL_CLAUSES,DB.Thm),
   ("COMPL_SPLITS",COMPL_SPLITS,DB.Thm),
   ("INTER_UNION_COMPL",INTER_UNION_COMPL,DB.Thm),
   ("COMPL_EMPTY",COMPL_EMPTY,DB.Thm), ("COMPL_INTER",COMPL_INTER,DB.Thm),
   ("COMPL_UNION",COMPL_UNION,DB.Thm), ("IN_COUNT",IN_COUNT,DB.Thm),
   ("COUNT_applied",COUNT_applied,DB.Thm),
   ("COUNT_ZERO",COUNT_ZERO,DB.Thm), ("COUNT_SUC",COUNT_SUC,DB.Thm),
   ("FINITE_COUNT",FINITE_COUNT,DB.Thm), ("CARD_COUNT",CARD_COUNT,DB.Thm),
   ("COUNT_11",COUNT_11,DB.Thm), ("ITSET_ind",ITSET_ind,DB.Thm),
   ("ITSET_def",ITSET_def,DB.Thm), ("ITSET_IND",ITSET_IND,DB.Thm),
   ("ITSET_THM",ITSET_THM,DB.Thm), ("ITSET_EMPTY",ITSET_EMPTY,DB.Thm),
   ("ITSET_INSERT",ITSET_INSERT,DB.Thm),
   ("COMMUTING_ITSET_INSERT",COMMUTING_ITSET_INSERT,DB.Thm),
   ("COMMUTING_ITSET_RECURSES",COMMUTING_ITSET_RECURSES,DB.Thm),
   ("SUM_IMAGE_THM",SUM_IMAGE_THM,DB.Thm),
   ("SUM_IMAGE_SING",SUM_IMAGE_SING,DB.Thm),
   ("SUM_IMAGE_SUBSET_LE",SUM_IMAGE_SUBSET_LE,DB.Thm),
   ("SUM_IMAGE_IN_LE",SUM_IMAGE_IN_LE,DB.Thm),
   ("SUM_IMAGE_DELETE",SUM_IMAGE_DELETE,DB.Thm),
   ("SUM_IMAGE_UNION",SUM_IMAGE_UNION,DB.Thm),
   ("SUM_IMAGE_lower_bound",SUM_IMAGE_lower_bound,DB.Thm),
   ("SUM_IMAGE_upper_bound",SUM_IMAGE_upper_bound,DB.Thm),
   ("SUM_SAME_IMAGE",SUM_SAME_IMAGE,DB.Thm),
   ("SUM_IMAGE_CONG",SUM_IMAGE_CONG,DB.Thm),
   ("SUM_IMAGE_ZERO",SUM_IMAGE_ZERO,DB.Thm),
   ("ABS_DIFF_SUM_IMAGE",ABS_DIFF_SUM_IMAGE,DB.Thm),
   ("SUM_IMAGE_MONO_LESS_EQ",SUM_IMAGE_MONO_LESS_EQ,DB.Thm),
   ("SUM_IMAGE_MONO_LESS",SUM_IMAGE_MONO_LESS,DB.Thm),
   ("SUM_SET_THM",SUM_SET_THM,DB.Thm),
   ("SUM_SET_EMPTY",SUM_SET_EMPTY,DB.Thm),
   ("SUM_SET_SING",SUM_SET_SING,DB.Thm),
   ("SUM_SET_SUBSET_LE",SUM_SET_SUBSET_LE,DB.Thm),
   ("SUM_SET_IN_LE",SUM_SET_IN_LE,DB.Thm),
   ("SUM_SET_DELETE",SUM_SET_DELETE,DB.Thm),
   ("SUM_SET_UNION",SUM_SET_UNION,DB.Thm),
   ("PROD_IMAGE_THM",PROD_IMAGE_THM,DB.Thm),
   ("PROD_SET_THM",PROD_SET_THM,DB.Thm),
   ("PROD_SET_EMPTY",PROD_SET_EMPTY,DB.Thm),
   ("PROD_SET_IMAGE_REDUCTION",PROD_SET_IMAGE_REDUCTION,DB.Thm),
   ("MAX_SET_THM",MAX_SET_THM,DB.Thm),
   ("MAX_SET_REWRITES",MAX_SET_REWRITES,DB.Thm),
   ("MAX_SET_ELIM",MAX_SET_ELIM,DB.Thm),
   ("MIN_SET_ELIM",MIN_SET_ELIM,DB.Thm),
   ("MIN_SET_THM",MIN_SET_THM,DB.Thm), ("MIN_SET_LEM",MIN_SET_LEM,DB.Thm),
   ("SUBSET_MIN_SET",SUBSET_MIN_SET,DB.Thm),
   ("SUBSET_MAX_SET",SUBSET_MAX_SET,DB.Thm),
   ("MIN_SET_LEQ_MAX_SET",MIN_SET_LEQ_MAX_SET,DB.Thm),
   ("MIN_SET_UNION",MIN_SET_UNION,DB.Thm),
   ("MAX_SET_UNION",MAX_SET_UNION,DB.Thm), ("IN_POW",IN_POW,DB.Thm),
   ("UNIV_FUN_TO_BOOL",UNIV_FUN_TO_BOOL,DB.Thm),
   ("SUBSET_POW",SUBSET_POW,DB.Thm),
   ("SUBSET_INSERT_RIGHT",SUBSET_INSERT_RIGHT,DB.Thm),
   ("SUBSET_DELETE_BOTH",SUBSET_DELETE_BOTH,DB.Thm),
   ("POW_EMPTY",POW_EMPTY,DB.Thm), ("POW_INSERT",POW_INSERT,DB.Thm),
   ("POW_EQNS",POW_EQNS,DB.Thm), ("FINITE_POW",FINITE_POW,DB.Thm),
   ("CARD_POW",CARD_POW,DB.Thm), ("GSPEC_ETA",GSPEC_ETA,DB.Thm),
   ("GSPEC_F",GSPEC_F,DB.Thm), ("GSPEC_T",GSPEC_T,DB.Thm),
   ("GSPEC_ID",GSPEC_ID,DB.Thm), ("GSPEC_EQ",GSPEC_EQ,DB.Thm),
   ("GSPEC_EQ2",GSPEC_EQ2,DB.Thm), ("GSPEC_F_COND",GSPEC_F_COND,DB.Thm),
   ("GSPEC_AND",GSPEC_AND,DB.Thm), ("GSPEC_OR",GSPEC_OR,DB.Thm),
   ("BIGUNION_partition",BIGUNION_partition,DB.Thm),
   ("EMPTY_NOT_IN_partition",EMPTY_NOT_IN_partition,DB.Thm),
   ("partition_elements_disjoint",partition_elements_disjoint,DB.Thm),
   ("partition_elements_interrelate",
    partition_elements_interrelate,
    DB.Thm), ("partition_SUBSET",partition_SUBSET,DB.Thm),
   ("FINITE_partition",FINITE_partition,DB.Thm),
   ("partition_CARD",partition_CARD,DB.Thm),
   ("pairwise_UNION",pairwise_UNION,DB.Thm),
   ("pairwise_SUBSET",pairwise_SUBSET,DB.Thm),
   ("KoenigsLemma",KoenigsLemma,DB.Thm),
   ("KoenigsLemma_WF",KoenigsLemma_WF,DB.Thm),
   ("SET_EQ_SUBSET",SET_EQ_SUBSET,DB.Thm),
   ("PSUBSET_EQN",PSUBSET_EQN,DB.Thm),
   ("PSUBSET_SUBSET_TRANS",PSUBSET_SUBSET_TRANS,DB.Thm),
   ("SUBSET_PSUBSET_TRANS",SUBSET_PSUBSET_TRANS,DB.Thm),
   ("CROSS_EQNS",CROSS_EQNS,DB.Thm), ("count_EQN",count_EQN,DB.Thm),
   ("UNIQUE_MEMBER_SING",UNIQUE_MEMBER_SING,DB.Thm),
   ("inj_surj",inj_surj,DB.Thm), ("infinite_rest",infinite_rest,DB.Thm),
   ("chooser_def_compute",chooser_def_compute,DB.Thm),
   ("infinite_num_inj",infinite_num_inj,DB.Thm),
   ("countable_image_nats",countable_image_nats,DB.Thm),
   ("countable_surj",countable_surj,DB.Thm),
   ("num_countable",num_countable,DB.Thm),
   ("subset_countable",subset_countable,DB.Thm),
   ("image_countable",image_countable,DB.Thm),
   ("finite_countable",finite_countable,DB.Thm),
   ("pair_to_num_formula",pair_to_num_formula,DB.Thm),
   ("pair_to_num_inv",pair_to_num_inv,DB.Thm),
   ("cross_countable",cross_countable,DB.Thm),
   ("inter_countable",inter_countable,DB.Thm),
   ("inj_countable",inj_countable,DB.Thm),
   ("bigunion_countable",bigunion_countable,DB.Thm),
   ("union_countable",union_countable,DB.Thm),
   ("union_countable_IFF",union_countable_IFF,DB.Thm),
   ("inj_image_countable_IFF",inj_image_countable_IFF,DB.Thm),
   ("pow_no_surj",pow_no_surj,DB.Thm),
   ("infinite_pow_uncountable",infinite_pow_uncountable,DB.Thm),
   ("countable_Usum",countable_Usum,DB.Thm),
   ("countable_EMPTY",countable_EMPTY,DB.Thm),
   ("countable_INSERT",countable_INSERT,DB.Thm),
   ("cross_countable_IFF",cross_countable_IFF,DB.Thm),
   ("countable_Uprod",countable_Uprod,DB.Thm),
   ("IMAGE_BIGUNION",IMAGE_BIGUNION,DB.Thm),
   ("SUBSET_DIFF",SUBSET_DIFF,DB.Thm),
   ("INTER_SUBSET_EQN",INTER_SUBSET_EQN,DB.Thm),
   ("PSUBSET_SING",PSUBSET_SING,DB.Thm),
   ("INTER_UNION",INTER_UNION,DB.Thm),
   ("UNION_DELETE",UNION_DELETE,DB.Thm),
   ("DELETE_SUBSET_INSERT",DELETE_SUBSET_INSERT,DB.Thm),
   ("IN_INSERT_EXPAND",IN_INSERT_EXPAND,DB.Thm),
   ("FINITE_INTER",FINITE_INTER,DB.Thm),
   ("INSERT_EQ_SING",INSERT_EQ_SING,DB.Thm),
   ("CARD_UNION_LE",CARD_UNION_LE,DB.Thm),
   ("IMAGE_SUBSET_gen",IMAGE_SUBSET_gen,DB.Thm),
   ("CARD_REST",CARD_REST,DB.Thm),
   ("SUBSET_DIFF_EMPTY",SUBSET_DIFF_EMPTY,DB.Thm),
   ("DIFF_INTER_SUBSET",DIFF_INTER_SUBSET,DB.Thm),
   ("UNION_DIFF_2",UNION_DIFF_2,DB.Thm), ("count_add",count_add,DB.Thm),
   ("IMAGE_EQ_SING",IMAGE_EQ_SING,DB.Thm),
   ("count_add1",count_add1,DB.Thm), ("compl_insert",compl_insert,DB.Thm),
   ("in_max_set",in_max_set,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("numpairTheory.numpair_grammars",
                          numpairTheory.numpair_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="pred_set",Name="set"}, (alpha --> bool))
  val _ = update_grms temp_disable_tyabbrev_printing "set"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSPEC", (Term.prim_mk_const { Name = "GSPEC", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "gspec special", fixity = Closefix,
pp_elements = [TOK "{", TM, HardSpace 1, TOK "|", BreakSpace(1, 0), TM, TOK "}"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "gspec2 special", fixity = Closefix,
pp_elements = [TOK "{", TM, TOK "|", TM, TOK "|", TM, TOK "}"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EMPTY", (Term.prim_mk_const { Name = "EMPTY", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EMPTY", (Term.prim_mk_const { Name = "EMPTY", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\226\136\133", (Term.prim_mk_const { Name = "EMPTY", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIV", (Term.prim_mk_const { Name = "UNIV", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIV", (Term.prim_mk_const { Name = "UNIV", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("univ", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :('a bool$itself)). (pred_set$UNIV :'a -> bool)"]))
  val _ = update_grms (UTOFF (temp_set_fixity "univ")) (Prefix 2200)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\240\157\149\140", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :('a bool$itself)). (pred_set$UNIV :'a -> bool)"]))
  val _ = update_grms
       (UTOFF (temp_set_fixity "\240\157\149\140"))
       (Prefix 2200)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBSET", (Term.prim_mk_const { Name = "SUBSET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBSET", (Term.prim_mk_const { Name = "SUBSET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "SUBSET"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PSUBSET", (Term.prim_mk_const { Name = "PSUBSET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PSUBSET", (Term.prim_mk_const { Name = "PSUBSET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "PSUBSET"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNION", (Term.prim_mk_const { Name = "UNION", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNION", (Term.prim_mk_const { Name = "UNION", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "UNION"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INTER", (Term.prim_mk_const { Name = "INTER", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INTER", (Term.prim_mk_const { Name = "INTER", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "INTER"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DISJOINT", (Term.prim_mk_const { Name = "DISJOINT", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DISJOINT", (Term.prim_mk_const { Name = "DISJOINT", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIFF", (Term.prim_mk_const { Name = "DIFF", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIFF", (Term.prim_mk_const { Name = "DIFF", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "DIFF"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERT", (Term.prim_mk_const { Name = "INSERT", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERT", (Term.prim_mk_const { Name = "INSERT", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "INSERT"))
       (Infix(HOLgrammars.RIGHT, 490))
  val _ = update_grms
       (UTOFF temp_add_listform)
       {separator = [TOK ";", BreakSpace(1, 0)]
, leftdelim = [TOK "{"]
, rightdelim = [TOK "}"]
, cons = "INSERT", nilstr = "EMPTY", block_info = (INCONSISTENT, 0)}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DELETE", (Term.prim_mk_const { Name = "DELETE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DELETE", (Term.prim_mk_const { Name = "DELETE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "DELETE"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CHOICE", (Term.prim_mk_const { Name = "CHOICE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REST", (Term.prim_mk_const { Name = "REST", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REST", (Term.prim_mk_const { Name = "REST", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SING", (Term.prim_mk_const { Name = "SING", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SING", (Term.prim_mk_const { Name = "SING", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IMAGE", (Term.prim_mk_const { Name = "IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IMAGE", (Term.prim_mk_const { Name = "IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJ", (Term.prim_mk_const { Name = "INJ", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJ", (Term.prim_mk_const { Name = "INJ", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SURJ", (Term.prim_mk_const { Name = "SURJ", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SURJ", (Term.prim_mk_const { Name = "SURJ", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIJ", (Term.prim_mk_const { Name = "BIJ", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIJ", (Term.prim_mk_const { Name = "BIJ", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LINV", (Term.prim_mk_const { Name = "LINV", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RINV", (Term.prim_mk_const { Name = "RINV", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINITE", (Term.prim_mk_const { Name = "FINITE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINITE", (Term.prim_mk_const { Name = "FINITE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REL_RESTRICT", (Term.prim_mk_const { Name = "REL_RESTRICT", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REL_RESTRICT", (Term.prim_mk_const { Name = "REL_RESTRICT", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CARD", (Term.prim_mk_const { Name = "CARD", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INFINITE", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(s :'a -> bool). bool$~ (pred_set$FINITE s)"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIGUNION", (Term.prim_mk_const { Name = "BIGUNION", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIGUNION", (Term.prim_mk_const { Name = "BIGUNION", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIGINTER", (Term.prim_mk_const { Name = "BIGINTER", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIGINTER", (Term.prim_mk_const { Name = "BIGINTER", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CROSS", (Term.prim_mk_const { Name = "CROSS", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CROSS", (Term.prim_mk_const { Name = "CROSS", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "CROSS"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COMPL", (Term.prim_mk_const { Name = "COMPL", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COMPL", (Term.prim_mk_const { Name = "COMPL", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("count", (Term.prim_mk_const { Name = "count", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("count", (Term.prim_mk_const { Name = "count", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITSET_tupled", (Term.prim_mk_const { Name = "ITSET_tupled", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITSET_tupled", (Term.prim_mk_const { Name = "ITSET_tupled", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITSET", (Term.prim_mk_const { Name = "ITSET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITSET", (Term.prim_mk_const { Name = "ITSET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_IMAGE", (Term.prim_mk_const { Name = "SUM_IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_IMAGE", (Term.prim_mk_const { Name = "SUM_IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIGMA", (Term.prim_mk_const { Name = "SUM_IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_SET", (Term.prim_mk_const { Name = "SUM_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_SET", (Term.prim_mk_const { Name = "SUM_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PROD_IMAGE", (Term.prim_mk_const { Name = "PROD_IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PROD_IMAGE", (Term.prim_mk_const { Name = "PROD_IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PI", (Term.prim_mk_const { Name = "PROD_IMAGE", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PROD_SET", (Term.prim_mk_const { Name = "PROD_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PROD_SET", (Term.prim_mk_const { Name = "PROD_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAX_SET", (Term.prim_mk_const { Name = "MAX_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MIN_SET", (Term.prim_mk_const { Name = "MIN_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MIN_SET", (Term.prim_mk_const { Name = "MIN_SET", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("POW", (Term.prim_mk_const { Name = "POW", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("POW", (Term.prim_mk_const { Name = "POW", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("equiv_on", (Term.prim_mk_const { Name = "equiv_on", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("equiv_on", (Term.prim_mk_const { Name = "equiv_on", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "equiv_on"))
       (Infix(HOLgrammars.NONASSOC, 425))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("partition", (Term.prim_mk_const { Name = "partition", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("partition", (Term.prim_mk_const { Name = "partition", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pairwise", (Term.prim_mk_const { Name = "pairwise", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pairwise", (Term.prim_mk_const { Name = "pairwise", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chooser", (Term.prim_mk_const { Name = "chooser", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countable", (Term.prim_mk_const { Name = "countable", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("countable", (Term.prim_mk_const { Name = "countable", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_pair", (Term.prim_mk_const { Name = "num_to_pair", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_pair", (Term.prim_mk_const { Name = "num_to_pair", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_to_num", (Term.prim_mk_const { Name = "pair_to_num", Thy = "pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_to_num", (Term.prim_mk_const { Name = "pair_to_num", Thy = "pred_set"}))
  val pred_set_grammars = Parse.current_lgrms()
  end


  local
  val GSPEC_t = prim_mk_const{Name = "GSPEC", Thy = "pred_set"}
  val IN_t = mk_thy_const{Name = "IN", Thy = "bool",
                          Ty = alpha --> (alpha --> bool) --> bool}
  val f_t = mk_var("f", beta --> pairSyntax.mk_prod(alpha, bool))
  val x_t = mk_var("x", alpha)
  
  val SET_SPEC_CONV =
    {conv = Lib.K (Lib.K (PGspec.SET_SPEC_CONV GSPECIFICATION)),
     key = SOME ([], list_mk_comb(IN_t, [x_t, mk_comb(GSPEC_t, f_t)])),
     name = "SET_SPEC_CONV",
     trace = 2}
  in
  val SET_SPEC_ss = simpLib.SSFRAG {name=SOME"SET_SPEC", ac = [], congs = [],
                                     convs = [SET_SPEC_CONV], dprocs = [],
                                     filter = NONE, rewrs = []}
  val _ = BasicProvers.augment_srw_ss [SET_SPEC_ss]
  end


  val _ = 
   TypeBase.write
   [TypeBasePure.mk_nondatatype_info
    (alpha --> bool,
      {nchotomy = SOME SET_CASES,
       induction = SOME FINITE_INDUCT,
       size = SOME(Parse.Term`\(obsize:'a->num) (y:'b). pred_set$SUM_IMAGE (\x:'a. 1 + obsize x)`,SUM_IMAGE_THM),
       encode=NONE})];

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "unicodedata",
    data =
        "U12.\\226\\138\\1346.SUBSETU12.\\226\\138\\1307.PSUBSETU12.\\226\\136\\1705.UNIONU12.\\226\\136\\1695.INTERU8.\\195\\1515.CROSSU12.\\226\\136\\1455.SIGMAU8.\\206\\16010.PROD_IMAGE"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "simp",
    data =
        "pred_set.ABS_applied pred_set.BIGINTER_EMPTY pred_set.SUBSET_UNION pred_set.UNION_SUBSET pred_set.UNION_IDEMPOT pred_set.SUBSET_REFL pred_set.SUBSET_INSERT pred_set.FINITE_REST pred_set.REST_SUBSET pred_set.REST_PSUBSET pred_set.PSUBSET_IRREFL pred_set.SUBSET_INTER pred_set.INTER_UNIV pred_set.INTER_SUBSET pred_set.INTER_IDEMPOT pred_set.INTER_FINITE pred_set.INSERT_SUBSET pred_set.INSERT_INSERT pred_set.INSERT_DIFF pred_set.INSERT_DELETE pred_set.IMAGE_UNION pred_set.IMAGE_SUBSET pred_set.IMAGE_IN pred_set.IMAGE_ID pred_set.IMAGE_FINITE pred_set.IMAGE_DELETE pred_set.DISJOINT_EMPTY_REFL_RWT pred_set.DISJOINT_UNION_BOTH pred_set.DISJOINT_EMPTY pred_set.DIFF_SUBSET pred_set.DIFF_UNIV pred_set.DIFF_EQ_EMPTY pred_set.DIFF_EMPTY pred_set.DIFF_DIFF pred_set.DELETE_SUBSET pred_set.DELETE_EQ_SING pred_set.DELETE_DELETE pred_set.IN_COMPL pred_set.COMPL_EMPTY pred_set.COMPL_COMPL pred_set.COMPL_CLAUSES pred_set.CARD_DIFF pred_set.CARD_DELETE pred_set.CARD_INTER_LESS_EQ pred_set.CARD_EQ_0 pred_set.BIGINTER_INSERT pred_set.BIGINTER_UNION pred_set.DISJOINT_BIGUNION pred_set.BIGINTER_applied pred_set.BIGUNION_UNION pred_set.IN_BIGINTER pred_set.countable_INSERT pred_set.countable_EMPTY pred_set.countable_Usum pred_set.union_countable_IFF pred_set.countable_image_nats pred_set.GSPEC_EQ2 pred_set.GSPEC_EQ pred_set.GSPEC_ID pred_set.GSPEC_T pred_set.GSPEC_F pred_set.POW_EMPTY pred_set.MAX_SET_REWRITES pred_set.SUM_SET_SING pred_set.SUM_SET_EMPTY pred_set.COUNT_11 pred_set.CARD_COUNT pred_set.FINITE_COUNT pred_set.COUNT_ZERO pred_set.IN_COUNT pred_set.COUNT_applied pred_set.COMPL_INTER pred_set.COMPL_applied pred_set.INFINITE_PAIR_UNIV pred_set.FINITE_CROSS_EQ pred_set.CROSS_SINGS pred_set.CROSS_EMPTY pred_set.IN_CROSS pred_set.CROSS_applied pred_set.BIGUNION_EMPTY pred_set.FINITE_BIGUNION_EQ pred_set.BIGUNION_INSERT pred_set.BIGUNION_EQ_EMPTY pred_set.BIGUNION_applied pred_set.IN_BIGUNION pred_set.BIJ_EMPTY pred_set.INFINITE_NUM_UNIV pred_set.CARD_INSERT pred_set.CARD_EMPTY pred_set.REL_RESTRICT_EMPTY pred_set.INJECTIVE_IMAGE_FINITE pred_set.SING_FINITE pred_set.FINITE_DIFF pred_set.FINITE_UNION pred_set.FINITE_DELETE pred_set.FINITE_INSERT pred_set.FINITE_EMPTY pred_set.CHOICE_SING pred_set.SURJ_IMAGE pred_set.INJ_EMPTY pred_set.IMAGE_EQ_EMPTY pred_set.IMAGE_INSERT pred_set.IMAGE_EMPTY pred_set.IN_IMAGE pred_set.IMAGE_applied pred_set.REST_SING pred_set.DELETE_applied pred_set.SING_DELETE pred_set.EQUAL_SING pred_set.SING_applied pred_set.SING_INSERT pred_set.SING_EMPTY pred_set.SING pred_set.EMPTY_DELETE pred_set.IN_DELETE pred_set.DIFF_applied pred_set.UNIV_BOOL pred_set.DISJOINT_INSERT' pred_set.DISJOINT_INSERT pred_set.NOT_INSERT_EMPTY pred_set.IN_INSERT pred_set.INSERT_applied pred_set.EMPTY_DIFF pred_set.IN_DIFF pred_set.EMPTY_SUBSET pred_set.INTER_EMPTY pred_set.IN_INTER pred_set.INTER_applied pred_set.EMPTY_UNION pred_set.UNION_UNIV pred_set.UNION_EMPTY pred_set.IN_UNION pred_set.UNION_applied pred_set.UNIV_SUBSET pred_set.SUBSET_UNIV pred_set.SUBSET_EMPTY pred_set.EMPTY_applied pred_set.UNIV_NOT_EMPTY pred_set.IN_UNIV pred_set.GSPECIFICATION_applied pred_set.NOT_IN_EMPTY pred_set.IN_ABS"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "rule_induction",
    data = "pred_set.FINITE_INDUCT"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "defncong",
    data = "pred_set.IMAGE_CONG pred_set.SUM_IMAGE_CONG"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "compute",
    data =
        "pred_set.ITSET_def pred_set.chooser_def pred_set.pair_to_num_def pred_set.num_to_pair_def pred_set.countable_def pred_set.chooser_def_compute"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "TexTokenMap",
    data =
        "1.|15.\\\\HOLTokenBar{}1.12.\\226\\136\\13317.\\\\HOLTokenEmpty{}1.4.univ22.\\\\ensuremath{\\\\cal{U}}1.16.\\240\\157\\149\\14022.\\\\ensuremath{\\\\cal{U}}1.6.SUBSET18.\\\\HOLTokenSubset{}1.12.\\226\\138\\13418.\\\\HOLTokenSubset{}1.7.PSUBSET17.\\\\HOLTokenPSubset1.12.\\226\\138\\13017.\\\\HOLTokenPSubset1.5.UNION17.\\\\HOLTokenUnion{}1.12.\\226\\136\\17017.\\\\HOLTokenUnion{}1.5.INTER17.\\\\HOLTokenInter{}1.12.\\226\\136\\16917.\\\\HOLTokenInter{}1.5.CROSS21.\\\\ensuremath{\\\\times}1.8.\\195\\15121.\\\\ensuremath{\\\\times}1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pred_set",
    thydataty = "OpenTheoryMap",
    data =
        " 17.Set.specification8.pred_set5.GSPEC6.Set.{}8.pred_set5.EMPTY12.Set.universe8.pred_set4.UNIV10.Set.subset8.pred_set6.SUBSET16.Set.properSubset8.pred_set7.PSUBSET9.Set.union8.pred_set5.UNION13.Set.intersect8.pred_set5.INTER14.Set.difference8.pred_set4.DIFF10.Set.insert8.pred_set6.INSERT10.Set.choice8.pred_set6.CHOICE13.Set.singleton8.pred_set4.SING9.Set.image8.pred_set5.IMAGE10.Set.finite8.pred_set6.FINITE"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "pred_set"
end
