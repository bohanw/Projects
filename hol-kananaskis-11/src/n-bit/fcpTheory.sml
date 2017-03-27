structure fcpTheory :> fcpTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading fcpTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quantHeuristicsTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("fcp",Arbnum.fromString "1488587157",Arbnum.fromString "100381")
          [("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749"),
           ("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227")];
  val _ = Theory.incorporate_types "fcp"
       [("finite_image", 1), ("cart", 2), ("bit1", 1), ("bit0", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("fcp", "finite_image"), ID("fcp", "cart"),
   ID("num", "num"), ID("bool", "itself"), ID("fcp", "bit1"),
   ID("fcp", "bit0"), ID("list", "list"), ID("min", "bool"),
   ID("pair", "prod"), ID("sum", "sum"), ID("ind_type", "recspace"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("fcp", ":+"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("one", "one"),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"), ID("min", "@"),
   ID("bool", "ARB"), ID("fcp", "BIT0A"), ID("fcp", "BIT0B"),
   ID("arithmetic", "BIT1"), ID("fcp", "BIT1A"), ID("fcp", "BIT1B"),
   ID("fcp", "BIT1C"), ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"),
   ID("pred_set", "CARD"), ID("bool", "COND"), ID("list", "CONS"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"), ID("list", "EL"),
   ID("list", "EVERY"), ID("list", "EXISTS"), ID("combin", "FAIL"),
   ID("fcp", "FCP"), ID("fcp", "FCP_CONCAT"), ID("fcp", "FCP_CONS"),
   ID("fcp", "FCP_EVERY"), ID("fcp", "FCP_EXISTS"), ID("fcp", "FCP_FOLD"),
   ID("fcp", "FCP_HD"), ID("fcp", "FCP_MAP"), ID("fcp", "FCP_TL"),
   ID("fcp", "FCP_ZIP"), ID("pred_set", "FINITE"), ID("list", "FOLDL"),
   ID("list", "GENLIST"), ID("fcp", "HAS_SIZE"), ID("list", "HD"),
   ID("fcp", "L2V"), ID("list", "LENGTH"), ID("list", "MAP"),
   ID("list", "NULL"), ID("arithmetic", "NUMERAL"), ID("prim_rec", "PRE"),
   ID("num", "SUC"), ID("bool", "T"), ID("list", "TL"),
   ID("bool", "TYPE_DEFINITION"), ID("pred_set", "UNIV"), ID("fcp", "V2L"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("fcp", "bit0_CASE"),
   ID("fcp", "bit0_size"), ID("fcp", "bit1_CASE"), ID("fcp", "bit1_size"),
   ID("fcp", "dest_cart"), ID("fcp", "dest_finite_image"),
   ID("fcp", "dimindex"), ID("fcp", "fcp_CASE"), ID("fcp", "fcp_index"),
   ID("fcp", "finite_index"), ID("fcp", "mk_cart"),
   ID("fcp", "mk_finite_image"), ID("bool", "the_value"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [0, 0, 1], TYV "'b", TYOP [2, 0, 3],
   TYOP [1, 3], TYOP [0, 5, 0], TYOP [0, 6, 4], TYOP [3], TYOP [0, 8, 0],
   TYOP [0, 4, 9], TYV "'c", TYOP [0, 6, 11], TYOP [0, 12, 11],
   TYOP [0, 4, 13], TYOP [4, 0], TYOP [0, 15, 8], TYOP [0, 1, 0],
   TYOP [0, 4, 6], TYOP [5, 0], TYOP [0, 19, 8], TYOP [0, 0, 8],
   TYOP [0, 21, 20], TYOP [0, 3, 3], TYOP [0, 0, 3], TYOP [0, 24, 23],
   TYOP [0, 24, 25], TYOP [0, 19, 26], TYOP [6, 0], TYOP [0, 28, 8],
   TYOP [0, 21, 29], TYOP [0, 24, 3], TYOP [0, 24, 31], TYOP [0, 28, 32],
   TYOP [7, 0], TYOP [0, 4, 34], TYOP [0, 34, 4], TYOP [8],
   TYOP [0, 8, 37], TYOP [0, 0, 37], TYOP [0, 39, 38], TYOP [9, 0, 11],
   TYOP [2, 41, 3], TYOP [2, 11, 3], TYOP [0, 43, 42], TYOP [0, 4, 44],
   TYOP [2, 0, 11], TYOP [0, 46, 4], TYOP [2, 3, 11], TYOP [0, 46, 48],
   TYOP [0, 24, 49], TYOP [0, 4, 0], TYOP [0, 46, 3], TYOP [0, 3, 52],
   TYOP [0, 3, 24], TYOP [0, 54, 53], TYOP [2, 3, 0], TYOP [0, 56, 37],
   TYOP [0, 3, 37], TYOP [0, 58, 57], TYOP [0, 4, 46], TYOP [0, 0, 60],
   TYOP [10, 3, 11], TYOP [2, 0, 62], TYOP [0, 46, 63], TYOP [0, 4, 64],
   TYOP [0, 9, 4], TYOP [0, 0, 19], TYOP [0, 0, 28], TYOP [0, 4, 4],
   TYOP [0, 0, 69], TYOP [0, 8, 70], TYOP [11, 0], TYOP [0, 72, 37],
   TYOP [0, 28, 37], TYOP [0, 19, 37], TYOP [0, 4, 37], TYV "'d",
   TYOP [0, 68, 37], TYOP [0, 68, 78], TYOP [0, 67, 75], TYOP [0, 67, 80],
   TYOP [0, 28, 3], TYOP [0, 19, 3], TYOP [0, 4, 11], TYOP [0, 28, 72],
   TYOP [0, 19, 72], TYOP [0, 39, 37], TYOP [0, 58, 37], TYOP [0, 11, 37],
   TYOP [0, 89, 37], TYOP [0, 77, 37], TYOP [0, 91, 37], TYOP [0, 74, 37],
   TYOP [0, 75, 37], TYOP [0, 76, 37], TYOP [0, 46, 37], TYOP [0, 96, 37],
   TYOP [0, 57, 37], TYOP [0, 43, 37], TYOP [0, 99, 37], TYOP [0, 1, 37],
   TYOP [0, 101, 37], TYOP [0, 24, 37], TYOP [0, 103, 37],
   TYOP [0, 87, 37], TYOP [0, 21, 37], TYOP [0, 106, 37], TYOP [0, 88, 37],
   TYOP [0, 54, 37], TYOP [0, 109, 37], TYOP [0, 93, 37], TYOP [0, 94, 37],
   TYOP [0, 95, 37], TYOP [0, 6, 37], TYOP [0, 114, 37], TYOP [0, 12, 37],
   TYOP [0, 116, 37], TYOP [0, 9, 37], TYOP [0, 118, 37], TYOP [0, 73, 37],
   TYOP [0, 120, 37], TYOP [0, 34, 37], TYOP [0, 122, 37],
   TYOP [0, 38, 37], TYOP [0, 8, 8], TYOP [0, 8, 125], TYOP [0, 11, 41],
   TYOP [0, 0, 127], TYOP [0, 37, 37], TYOP [0, 37, 129], TYOP [0, 46, 46],
   TYOP [0, 0, 131], TYOP [0, 8, 132], TYOP [0, 8, 38], TYOP [0, 0, 39],
   TYOP [0, 3, 58], TYOP [0, 11, 89], TYOP [0, 28, 74], TYOP [0, 19, 75],
   TYOP [0, 4, 76], TYOP [0, 46, 96], TYOP [0, 63, 37], TYOP [0, 63, 142],
   TYOP [23], TYOP [10, 3, 144], TYOP [2, 0, 145], TYOP [0, 146, 37],
   TYOP [0, 146, 147], TYOP [0, 48, 37], TYOP [0, 48, 149],
   TYOP [0, 42, 37], TYOP [0, 42, 151], TYOP [0, 1, 101], TYOP [0, 69, 37],
   TYOP [0, 69, 154], TYOP [0, 6, 114], TYOP [0, 66, 37],
   TYOP [0, 66, 157], TYOP [0, 9, 118], TYOP [0, 34, 122],
   TYOP [0, 72, 73], TYOP [0, 82, 37], TYOP [0, 162, 37], TYOP [0, 85, 37],
   TYOP [0, 164, 37], TYOP [0, 83, 37], TYOP [0, 166, 37],
   TYOP [0, 86, 37], TYOP [0, 168, 37], TYOP [0, 84, 37],
   TYOP [0, 170, 37], TYOP [0, 18, 37], TYOP [0, 172, 37],
   TYOP [0, 17, 37], TYOP [0, 174, 37], TYOP [0, 76, 4], TYOP [0, 118, 9],
   TYOP [0, 39, 8], TYOP [0, 0, 0], TYOP [0, 0, 179], TYOP [0, 37, 180],
   TYOP [0, 37, 126], TYOP [0, 34, 34], TYOP [0, 0, 183], TYOP [0, 8, 72],
   TYOP [0, 185, 72], TYOP [0, 0, 186], TYOP [0, 8, 187], TYOP [0, 34, 0],
   TYOP [0, 8, 189], TYOP [0, 39, 122], TYOP [0, 37, 10],
   TYOP [0, 10, 192], TYOP [0, 9, 46], TYOP [0, 9, 63], TYOP [0, 8, 3],
   TYOP [0, 196, 48], TYOP [0, 8, 41], TYOP [0, 198, 42], TYOP [0, 4, 146],
   TYOP [0, 0, 200], TYOP [0, 39, 76], TYOP [0, 144, 37],
   TYOP [0, 203, 37], TYOP [10, 0, 3], TYOP [0, 205, 37],
   TYOP [0, 206, 37], TYOP [0, 34, 3], TYOP [0, 3, 208], TYOP [0, 54, 209],
   TYOP [0, 8, 34], TYOP [0, 9, 211], TYOP [0, 34, 46], TYOP [0, 34, 146],
   TYOP [7, 3], TYOP [0, 215, 48], TYOP [0, 34, 8], TYOP [0, 34, 215],
   TYOP [0, 24, 218], TYOP [0, 39, 174], TYOP [0, 114, 172],
   TYOP [0, 73, 164], TYOP [0, 73, 168], TYOP [0, 46, 34], TYOP [4, 3],
   TYOP [0, 225, 8], TYOP [4, 11], TYOP [0, 227, 8], TYOP [4, 28],
   TYOP [0, 229, 8], TYOP [4, 19], TYOP [0, 231, 8], TYOP [4, 144],
   TYOP [0, 233, 8], TYOP [4, 205], TYOP [0, 235, 8], TYOP [0, 46, 9],
   TYOP [0, 56, 196], TYOP [0, 8, 11], TYOP [0, 43, 239], TYOP [0, 8, 5]]
  end
  val _ = Theory.incorporate_consts "fcp" tyvector
     [("mk_finite_image", 2), ("mk_cart", 7), ("finite_index", 9),
      ("fcp_index", 10), ("fcp_CASE", 14), ("dimindex", 16),
      ("dest_finite_image", 17), ("dest_cart", 18), ("bit1_size", 22),
      ("bit1_CASE", 27), ("bit0_size", 30), ("bit0_CASE", 33), ("V2L", 35),
      ("L2V", 36), ("HAS_SIZE", 40), ("FCP_ZIP", 45), ("FCP_TL", 47),
      ("FCP_MAP", 50), ("FCP_HD", 51), ("FCP_FOLD", 55),
      ("FCP_EXISTS", 59), ("FCP_EVERY", 59), ("FCP_CONS", 61),
      ("FCP_CONCAT", 65), ("FCP", 66), ("BIT1C", 19), ("BIT1B", 67),
      ("BIT1A", 67), ("BIT0B", 68), ("BIT0A", 68), (":+", 71)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'bit0'", 73), TMV("'bit1'", 73), TMV("FCP out of bounds", 37),
   TMV("L", 34), TMV("M", 28), TMV("M", 19), TMV("M'", 28), TMV("M'", 19),
   TMV("P", 39), TMV("P", 58), TMV("P", 74), TMV("P", 75), TMV("P", 76),
   TMV("a", 0), TMV("a", 11), TMV("a", 4), TMV("a", 46), TMV("a", 1),
   TMV("a", 34), TMV("a", 8), TMV("a'", 0), TMV("a0", 72), TMV("b", 0),
   TMV("b", 77), TMV("b", 28), TMV("b", 19), TMV("b", 46), TMV("b", 43),
   TMV("b", 8), TMV("bb", 28), TMV("bb", 19), TMV("bit0", 79),
   TMV("bit1", 81), TMV("c", 0), TMV("c", 8), TMV("d", 0), TMV("f", 4),
   TMV("f", 24), TMV("f", 21), TMV("f", 54), TMV("f", 6), TMV("f", 12),
   TMV("f", 9), TMV("f'", 24), TMV("f0", 24), TMV("f1", 24),
   TMV("f1'", 24), TMV("f2", 3), TMV("fn", 82), TMV("fn", 83), TMV("g", 4),
   TMV("g", 84), TMV("g", 9), TMV("h", 0), TMV("h", 6), TMV("i", 3),
   TMV("i", 8), TMV("index out of range", 37), TMV("m", 4), TMV("n", 8),
   TMV("r", 0), TMV("r", 6), TMV("rep", 85), TMV("rep", 86),
   TMV("rep", 18), TMV("rep", 17), TMV("s", 39), TMV("v", 0), TMV("v", 3),
   TMV("v", 4), TMV("v", 46), TMV("v", 56), TMV("v'", 3), TMV("w", 0),
   TMV("x", 0), TMV("x", 4), TMV("x", 34), TMV("x", 8), TMV("y", 0),
   TMV("y", 4), TMC(12, 87), TMC(12, 88), TMC(12, 90), TMC(12, 92),
   TMC(12, 93), TMC(12, 94), TMC(12, 95), TMC(12, 97), TMC(12, 98),
   TMC(12, 100), TMC(12, 102), TMC(12, 104), TMC(12, 105), TMC(12, 107),
   TMC(12, 108), TMC(12, 110), TMC(12, 111), TMC(12, 112), TMC(12, 113),
   TMC(12, 115), TMC(12, 117), TMC(12, 119), TMC(12, 121), TMC(12, 123),
   TMC(12, 124), TMC(12, 120), TMC(13, 126), TMC(14, 126), TMC(15, 128),
   TMC(16, 126), TMC(17, 130), TMC(18, 8), TMC(19, 71), TMC(19, 133),
   TMC(20, 134), TMC(21, 134), TMC(22, 135), TMC(22, 136), TMC(22, 137),
   TMC(22, 138), TMC(22, 139), TMC(22, 130), TMC(22, 140), TMC(22, 141),
   TMC(22, 143), TMC(22, 148), TMC(22, 150), TMC(22, 152), TMC(22, 153),
   TMC(22, 155), TMC(22, 156), TMC(22, 158), TMC(22, 159), TMC(22, 160),
   TMC(22, 134), TMC(22, 161), TMC(24, 130), TMC(25, 87), TMC(25, 163),
   TMC(25, 165), TMC(25, 167), TMC(25, 169), TMC(25, 171), TMC(25, 173),
   TMC(25, 175), TMC(25, 124), TMC(26, 124), TMC(27, 176), TMC(27, 177),
   TMC(28, 0), TMC(29, 68), TMC(30, 68), TMC(31, 125), TMC(32, 67),
   TMC(33, 67), TMC(34, 19), TMC(35, 125), TMC(36, 72), TMC(37, 178),
   TMC(38, 181), TMC(38, 182), TMC(39, 184), TMC(40, 188), TMC(41, 129),
   TMC(42, 190), TMC(43, 191), TMC(44, 191), TMC(45, 193), TMC(46, 66),
   TMC(46, 194), TMC(46, 195), TMC(46, 197), TMC(46, 199), TMC(47, 65),
   TMC(48, 61), TMC(48, 201), TMC(49, 202), TMC(49, 59), TMC(50, 202),
   TMC(50, 59), TMC(51, 55), TMC(52, 51), TMC(53, 50), TMC(54, 60),
   TMC(54, 47), TMC(55, 45), TMC(56, 87), TMC(56, 88), TMC(56, 93),
   TMC(56, 94), TMC(56, 204), TMC(56, 207), TMC(57, 210), TMC(58, 212),
   TMC(59, 40), TMC(60, 189), TMC(61, 36), TMC(61, 213), TMC(61, 214),
   TMC(61, 216), TMC(62, 217), TMC(63, 219), TMC(64, 122), TMC(65, 125),
   TMC(66, 125), TMC(67, 125), TMC(68, 37), TMC(69, 183), TMC(70, 220),
   TMC(70, 221), TMC(70, 222), TMC(70, 223), TMC(71, 39), TMC(71, 58),
   TMC(71, 74), TMC(71, 75), TMC(71, 203), TMC(71, 206), TMC(72, 35),
   TMC(72, 224), TMC(73, 8), TMC(74, 130), TMC(75, 33), TMC(76, 30),
   TMC(77, 27), TMC(78, 22), TMC(79, 18), TMC(80, 17), TMC(81, 16),
   TMC(81, 226), TMC(81, 228), TMC(81, 230), TMC(81, 232), TMC(81, 234),
   TMC(81, 236), TMC(82, 14), TMC(83, 10), TMC(83, 237), TMC(83, 238),
   TMC(83, 240), TMC(84, 9), TMC(84, 241), TMC(85, 7), TMC(86, 2),
   TMC(87, 15), TMC(87, 225), TMC(87, 227), TMC(87, 229), TMC(87, 231),
   TMC(87, 233), TMC(87, 235), TMC(88, 129)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op HAS_SIZE_def x = x
    val op HAS_SIZE_def =
    DT(((("fcp",0),[]),[]),
       [read"%92%66%104%59%121%194$1@$0@@%110%186$1@@%134%158$1@@$0@@@|@|@"])
  fun op finite_image_TY_DEF x = x
    val op finite_image_TY_DEF =
    DT(((("fcp",1),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,72,94]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%144%65%208%74%221%116$0@%149@@%186%212@@|@$0@|@"])
  fun op finite_image_tybij x = x
    val op finite_image_tybij =
    DT(((("fcp",2),[("bool",[117]),("fcp",[1])]),["DISK_THM"]),
       [read"%110%90%17%128%243%227$0@@@$0@|@@%80%60%121%74%221%116$0@%149@@%186%212@@|$0@@%116%227%243$0@@@$0@@|@@"])
  fun op dimindex_def x = x
    val op dimindex_def =
    DT(((("fcp",3),[("bool",[175])]),["DISK_THM"]),
       [read"%134%228%244@@%160%186%212@@%158%212@@%203%152%220@@@@"])
  fun op finite_index_def x = x
    val op finite_index_def =
    DT(((("fcp",6),[]),[]),
       [read"%132%240@%148%42%80%74%146%59%110%114$0@%228%244@@@%116$2$0@@$1@@|@|@|@@"])
  fun op cart_TY_DEF x = x
    val op cart_TY_DEF =
    DT(((("fcp",7),[("bool",[25,35,37])]),["DISK_THM"]),
       [read"%143%64%209%40%206|@$0@|@"])
  fun op cart_tybij x = x
    val op cart_tybij =
    DT(((("fcp",8),[("bool",[117]),("fcp",[7])]),["DISK_THM"]),
       [read"%110%86%15%122%242%226$0@@@$0@|@@%99%61%121%40%206|$0@@%130%226%242$0@@@$0@@|@@"])
  fun op fcp_index x = x
    val op fcp_index =
    DT(((("fcp",9),[]),[]),
       [read"%86%75%104%56%116%236$1@$0@@%226$1@%241$0@@@|@|@"])
  fun op fcp_case_def x = x
    val op fcp_case_def =
    DT(((("fcp",12),
        [("bool",[2,25,36,56,146]),("fcp",[10])]),["DISK_THM"]),
       [read"%99%54%100%41%118%235%242$1@@$0@@$0$1@@|@|@"])
  fun op FCP x = x
    val op FCP =
    DT(((("fcp",14),[]),[]),
       [read"%131%168@%52%147%36%104%56%136%114$0@%229%245@@@%116%236$1@$0@@$2$0@@@|@|@|@"])
  fun op bit0_TY_DEF x = x
    val op bit0_TY_DEF =
    DT(((("fcp",21),[("bool",[26])]),["DISK_THM"]),
       [read"%139%62%210%21%102%0%136%105%21%136%221%137%13%135$1@%13%162%111@$0@%59%157|@|$0@@|@@%137%13%135$1@%13%162%205%111@@$0@%59%157|@|$0@@|@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op bit0_case_def x = x
    val op bit0_case_def =
    DT(((("fcp",27),
        [("bool",[26,181]),("fcp",[22,23,24,25,26]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%80%13%91%37%91%45%117%222%150$2@@$1@$0@@$1$2@@|@|@|@@%80%13%91%37%91%45%117%222%151$2@@$1@$0@@$0$2@@|@|@|@@"])
  fun op bit0_size_def x = x
    val op bit0_size_def =
    DT(((("fcp",28),
        [("bool",[26,181]),("fcp",[22,23,24,25,26]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%93%38%80%13%134%223$1@%150$0@@@%107%203%152%220@@@$1$0@@@|@|@@%93%38%80%13%134%223$1@%151$0@@@%107%203%152%220@@@$1$0@@@|@|@@"])
  fun op bit1_TY_DEF x = x
    val op bit1_TY_DEF =
    DT(((("fcp",40),[("bool",[26])]),["DISK_THM"]),
       [read"%141%63%211%21%102%1%136%105%21%136%221%137%13%135$1@%13%162%111@$0@%59%157|@|$0@@|@@%221%137%13%135$1@%13%162%205%111@@$0@%59%157|@|$0@@|@@%135$0@%162%205%205%111@@@%149@%59%157|@@@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op bit1_case_def x = x
    val op bit1_case_def =
    DT(((("fcp",48),
        [("bool",[26,181]),("fcp",[41,42,43,44,45,46,47]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%80%13%91%37%91%45%81%68%117%224%153$3@@$2@$1@$0@@$2$3@@|@|@|@|@@%110%80%13%91%37%91%45%81%68%117%224%154$3@@$2@$1@$0@@$1$3@@|@|@|@|@@%91%37%91%45%81%68%117%224%155@$2@$1@$0@@$0@|@|@|@@@"])
  fun op bit1_size_def x = x
    val op bit1_size_def =
    DT(((("fcp",49),
        [("bool",[26,181]),("fcp",[41,42,43,44,45,46,47]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%93%38%80%13%134%225$1@%153$0@@@%107%203%152%220@@@$1$0@@@|@|@@%110%93%38%80%13%134%225$1@%154$0@@@%107%203%152%220@@@$1$0@@@|@|@@%93%38%134%225$0@%155@@%111@|@@@"])
  fun op FCP_UPDATE_def x = x
    val op FCP_UPDATE_def =
    DT(((("fcp",64),[]),[]),
       [read"%104%19%80%22%129%112$1@$0@@%58%168%34%159%134$3@$0@@$2@%236$1@$0@@|@|@|@|@"])
  fun op FCP_HD_def x = x
    val op FCP_HD_def =
    DT(((("fcp",70),[]),[]), [read"%86%69%116%181$0@@%236$0@%111@@|@"])
  fun op FCP_TL_def x = x
    val op FCP_TL_def =
    DT(((("fcp",71),[]),[]),
       [read"%87%70%122%184$0@@%168%56%237$1@%205$0@@|@@|@"])
  fun op FCP_CONS_def x = x
    val op FCP_CONS_def =
    DT(((("fcp",72),[]),[]),
       [read"%80%53%86%69%123%174$1@$0@@%113%111@$1@%169%56%236$1@%204$0@@|@@@|@|@"])
  fun op FCP_MAP_def x = x
    val op FCP_MAP_def =
    DT(((("fcp",73),[]),[]),
       [read"%91%37%87%70%126%182$1@$0@@%171%56$2%237$1@$0@@|@@|@|@"])
  fun op FCP_EXISTS_def x = x
    val op FCP_EXISTS_def =
    DT(((("fcp",74),[]),[]),
       [read"%94%9%88%71%121%179$1@$0@@%145%56%110%114$0@%228%244@@@$2%238$1@$0@@@|@@|@|@"])
  fun op FCP_EVERY_def x = x
    val op FCP_EVERY_def =
    DT(((("fcp",75),[]),[]),
       [read"%94%9%88%71%121%177$1@$0@@%104%56%221%115%228%244@@$0@@$2%238$1@$0@@@|@@|@|@"])
  fun op FCP_CONCAT_def x = x
    val op FCP_CONCAT_def =
    DT(((("fcp",76),[]),[]),
       [read"%86%15%87%26%124%173$1@$0@@%170%56%159%114$0@%230%246@@@%237$1@$0@@%236$2@%109$0@%230%246@@@@|@@|@|@"])
  fun op FCP_ZIP_def x = x
    val op FCP_ZIP_def =
    DT(((("fcp",77),[]),[]),
       [read"%86%15%89%27%127%185$1@$0@@%172%56%108%236$2@$0@@%239$1@$0@@|@@|@|@"])
  fun op V2L_def x = x
    val op V2L_def =
    DT(((("fcp",78),[]),[]),
       [read"%86%69%133%218$0@@%193%236$0@@%229%245@@@|@"])
  fun op L2V_def x = x
    val op L2V_def =
    DT(((("fcp",79),[]),[]),
       [read"%103%3%122%196$0@@%168%56%164$0@$1@|@@|@"])
  fun op FCP_FOLD_def x = x
    val op FCP_FOLD_def =
    DT(((("fcp",80),[]),[]),
       [read"%95%39%81%55%87%70%117%180$2@$1@$0@@%192$2@$1@%219$0@@@|@|@|@"])
  fun op NOT_FINITE_IMP_dimindex_1 x = x
    val op NOT_FINITE_IMP_dimindex_1 =
    DT(((("fcp",4),
        [("bool",[25,53,54,63,109]),("fcp",[3]),
         ("sat",[1,3,5,6,7,11,12,13,15,16,17,18])]),["DISK_THM"]),
       [read"%136%251%186%212@@@%134%228%244@@%203%152%220@@@@"])
  fun op DIMINDEX_GE_1 x = x
    val op DIMINDEX_GE_1 =
    DT(((("fcp",5),
        [("arithmetic",[46,71,93,172,173,176,177,180]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,73,77,
          81,84,93,94,95,96,101,104,105,107,109,111,124,129,145,146]),
         ("combin",[19]),("fcp",[0,2,3]),("numeral",[3,8]),
         ("pred_set",
         [3,10,14,15,80,90,131,144,147,150,185,186,187,197,199,207,208,
          217]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%203%152%220@@@%228%244@@"])
  fun op fcp_Axiom x = x
    val op fcp_Axiom =
    DT(((("fcp",10),
        [("bool",[25,56,63]),("combin",[8]),("fcp",[8])]),["DISK_THM"]),
       [read"%100%41%142%51%99%54%118$1%242$0@@@$2$0@@|@|@|@"])
  fun op fcp_ind x = x
    val op fcp_ind =
    DT(((("fcp",11),[("bool",[25,63]),("fcp",[8])]),["DISK_THM"]),
       [read"%98%12%136%99%40$1%242$0@@|@@%86%15$1$0@|@@|@"])
  fun op CART_EQ x = x
    val op CART_EQ =
    DT(((("fcp",13),
        [("arithmetic",[41,46,71,93,172,173,180]),
         ("bool",
         [2,13,14,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,60,63,64,71,
          72,73,75,77,78,80,81,84,92,93,94,95,96,101,104,105,108,109,111,
          122,124,129,145,146]),("combin",[19]),("fcp",[0,2,3,6,8,9]),
         ("num",[7,9]),("numeral",[3,8]),
         ("pred_set",
         [3,10,11,14,80,90,102,117,131,144,147,150,185,186,187,188,197,199,
          207,208,217]),("prim_rec",[1,4,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%86%75%86%79%121%122$1@$0@@%104%56%136%114$0@%229%245@@@%116%236$2@$0@@%236$1@$0@@@|@@|@|@"])
  fun op FCP_BETA x = x
    val op FCP_BETA =
    DT(((("fcp",15),
        [("arithmetic",[41,46,59,71,93,172,173,177,180]),
         ("bool",
         [2,13,14,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,64,69,71,
          72,73,75,77,78,80,81,84,92,93,94,95,96,101,104,105,107,108,109,
          111,122,124,129,145,146]),("combin",[19]),
         ("fcp",[0,2,3,6,8,9,14]),("num",[7,9]),("numeral",[3,8]),
         ("pred_set",
         [3,10,11,14,80,90,102,117,131,144,147,150,185,186,187,188,197,199,
          207,208,217]),("prim_rec",[1,4,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%104%56%136%114$0@%229%245@@@%116%236%168%52@@$0@@%52$0@@@|@"])
  fun op FCP_UNIQUE x = x
    val op FCP_UNIQUE =
    DT(((("fcp",16),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,76,81,93,94,96,105,
          124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%86%36%101%52%121%104%56%136%114$0@%229%245@@@%116%236$2@$0@@$1$0@@@|@@%122%168$0@@$1@@|@|@"])
  fun op FCP_ETA x = x
    val op FCP_ETA =
    DT(((("fcp",17),
        [("bool",[25,36,53,56,58,63,105,124]),
         ("fcp",[13,15])]),["DISK_THM"]),
       [read"%86%50%122%168%56%236$1@$0@|@@$0@|@"])
  fun op card_dimindex x = x
    val op card_dimindex =
    DT(((("fcp",18),
        [("bool",[25,53,54,63,109]),("fcp",[3]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%136%186%212@@%134%158%212@@%228%244@@@"])
  fun op index_sum x = x
    val op index_sum =
    DT(((("fcp",19),
        [("arithmetic",[22,91]),
         ("bool",
         [18,25,26,27,30,35,36,37,47,48,51,52,53,54,55,56,58,60,63,64,72,
          83,94,96,105,124,129,140,143,147]),("fcp",[3]),("pair",[4]),
         ("pred_set",
         [0,3,6,10,13,14,32,44,143,158,166,173,190,201,207,212,223]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sum",[7,14,15,17,18,21,22,23,31,32])]),["DISK_THM"]),
       [read"%134%234%250@@%160%110%186%212@@%187%213@@@%107%228%244@@%229%245@@@%203%152%220@@@@"])
  fun op finite_sum x = x
    val op finite_sum =
    DT(((("fcp",20),
        [("bool",[18,25,26,27,35,36,37,51,54,56,58,60,63,140]),
         ("pair",[4]),("pred_set",[0,3,6,13,14,32,143,190,201]),
         ("sum",[7,14,15,17,18,21])]),["DISK_THM"]),
       [read"%121%191%217@@%110%186%212@@%187%213@@@"])
  fun op datatype_bit0 x = x
    val op datatype_bit0 =
    DT(((("fcp",29),[("bool",[25,171])]),["DISK_THM"]),
       [read"%163%31%150@%151@@"])
  fun op bit0_11 x = x
    val op bit0_11 =
    DT(((("fcp",30),
        [("bool",[26,56,63,181]),("fcp",[22,23,24,25,26]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%80%13%80%20%121%119%150$1@@%150$0@@@%116$1@$0@@|@|@@%80%13%80%20%121%119%151$1@@%151$0@@@%116$1@$0@@|@|@@"])
  fun op bit0_distinct x = x
    val op bit0_distinct =
    DT(((("fcp",31),
        [("bool",[25,26,47,54,63,181]),("fcp",[22,23,24,25,26]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%80%20%80%13%251%119%150$0@@%151$1@@@|@|@"])
  fun op bit0_case_cong x = x
    val op bit0_case_cong =
    DT(((("fcp",32),
        [("bool",[26,181]),("fcp",[22,23,24,25,26,27])]),["DISK_THM"]),
       [read"%84%4%84%6%91%37%91%45%136%110%119$3@$2@@%110%80%13%136%119$3@%150$0@@@%117$2$0@@%43$0@@@|@@%80%13%136%119$3@%151$0@@@%117$1$0@@%46$0@@@|@@@@%117%222$3@$1@$0@@%222$2@%43@%46@@@|@|@|@|@"])
  fun op bit0_nchotomy x = x
    val op bit0_nchotomy =
    DT(((("fcp",33),
        [("bool",[26,181]),("fcp",[22,23,24,25,26])]),["DISK_THM"]),
       [read"%84%29%221%137%13%119$1@%150$0@@|@@%137%13%119$1@%151$0@@|@@|@"])
  fun op bit0_Axiom x = x
    val op bit0_Axiom =
    DT(((("fcp",34),
        [("bool",[26,181]),("fcp",[22,23,24,25,26]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%91%44%91%45%138%48%110%80%13%117$1%150$0@@@$3$0@@|@@%80%13%117$1%151$0@@@$2$0@@|@@|@|@|@"])
  fun op bit0_induction x = x
    val op bit0_induction =
    DT(((("fcp",35),
        [("bool",[26]),("fcp",[22,23,24,25,26])]),["DISK_THM"]),
       [read"%96%10%136%110%80%13$1%150$0@@|@@%80%13$1%151$0@@|@@@%84%24$1$0@|@@|@"])
  fun op index_bit0 x = x
    val op index_bit0 =
    DT(((("fcp",38),
        [("arithmetic",[22,122,149]),
         ("bool",
         [18,25,26,27,30,35,36,37,47,51,52,53,54,55,56,58,60,63,64,73,83,
          96,105,124,129,140,143,147,181]),
         ("fcp",[3,22,23,24,25,26,36,37]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[4]),
         ("pred_set",
         [0,3,6,10,13,14,32,44,143,158,166,173,190,201,207,212,223]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%134%231%247@@%160%186%212@@%106%203%156%220@@@%228%244@@@%203%152%220@@@@"])
  fun op finite_bit0 x = x
    val op finite_bit0 =
    DT(((("fcp",39),
        [("bool",
         [18,25,26,27,35,36,37,47,51,53,54,56,58,60,63,73,140,181]),
         ("fcp",[22,23,24,25,26,36,37]),("ind_type",[33,34]),("pair",[4]),
         ("pred_set",[0,3,6,13,14,32,143,190,201]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%121%188%214@@%186%212@@"])
  fun op datatype_bit1 x = x
    val op datatype_bit1 =
    DT(((("fcp",50),[("bool",[25,171])]),["DISK_THM"]),
       [read"%163%32%153@%154@%155@@"])
  fun op bit1_11 x = x
    val op bit1_11 =
    DT(((("fcp",51),
        [("bool",[26,56,63,181]),("fcp",[41,42,43,44,45,46,47]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%80%13%80%20%121%120%153$1@@%153$0@@@%116$1@$0@@|@|@@%80%13%80%20%121%120%154$1@@%154$0@@@%116$1@$0@@|@|@@"])
  fun op bit1_distinct x = x
    val op bit1_distinct =
    DT(((("fcp",52),
        [("bool",[25,26,36,47,51,54,56,63,181]),
         ("fcp",[41,42,43,44,45,46,47]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%110%80%20%80%13%251%120%153$0@@%154$1@@@|@|@@%110%80%13%251%120%153$0@@%155@@|@@%80%13%251%120%154$0@@%155@@|@@@"])
  fun op bit1_case_cong x = x
    val op bit1_case_cong =
    DT(((("fcp",53),
        [("bool",[26,181]),
         ("fcp",[41,42,43,44,45,46,47,48])]),["DISK_THM"]),
       [read"%85%5%85%7%91%37%91%45%81%68%136%110%120$4@$3@@%110%80%13%136%120$4@%153$0@@@%117$3$0@@%43$0@@@|@@%110%80%13%136%120$4@%154$0@@@%117$2$0@@%46$0@@@|@@%136%120$3@%155@@%117$0@%72@@@@@@%117%224$4@$2@$1@$0@@%224$3@%43@%46@%72@@@|@|@|@|@|@"])
  fun op bit1_nchotomy x = x
    val op bit1_nchotomy =
    DT(((("fcp",54),
        [("bool",[26,181]),("fcp",[41,42,43,44,45,46,47])]),["DISK_THM"]),
       [read"%85%30%221%137%13%120$1@%153$0@@|@@%221%137%13%120$1@%154$0@@|@@%120$0@%155@@@|@"])
  fun op bit1_Axiom x = x
    val op bit1_Axiom =
    DT(((("fcp",55),
        [("bool",[26,181]),("fcp",[41,42,43,44,45,46,47]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%91%44%91%45%81%47%140%49%110%80%13%117$1%153$0@@@$4$0@@|@@%110%80%13%117$1%154$0@@@$3$0@@|@@%117$0%155@@$1@@@|@|@|@|@"])
  fun op bit1_induction x = x
    val op bit1_induction =
    DT(((("fcp",56),
        [("bool",[26]),("fcp",[41,42,43,44,45,46,47])]),["DISK_THM"]),
       [read"%97%11%136%110%80%13$1%153$0@@|@@%110%80%13$1%154$0@@|@@$0%155@@@@%85%25$1$0@|@@|@"])
  fun op index_bit1 x = x
    val op index_bit1 =
    DT(((("fcp",60),
        [("arithmetic",[22,91,122]),
         ("bool",
         [18,25,26,27,30,35,36,37,47,51,52,53,54,55,56,58,60,63,64,73,74,
          83,96,99,105,124,129,140,143,147,181]),
         ("fcp",[3,41,42,43,44,45,46,47,57,58,59]),("ind_type",[33,34]),
         ("pair",[4]),
         ("pred_set",
         [0,3,6,10,13,14,32,33,44,126,131,143,158,166,173,190,201,207,212,
          218,223]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%134%232%248@@%160%186%212@@%107%106%203%156%220@@@%228%244@@@%203%152%220@@@@%203%152%220@@@@"])
  fun op finite_bit1 x = x
    val op finite_bit1 =
    DT(((("fcp",61),
        [("bool",
         [18,25,26,27,35,36,37,47,51,53,54,55,56,58,60,63,73,74,140,143,
          181]),("fcp",[41,42,43,44,45,46,47,57,58,59]),
         ("ind_type",[33,34]),("pair",[4]),
         ("pred_set",[0,3,6,13,14,32,126,131,143,190,201,218]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%189%215@@%186%212@@"])
  fun op index_one x = x
    val op index_one =
    DT(((("fcp",62),
        [("bool",[25,26,53,54,55,60,63,109]),("fcp",[3]),("one",[6]),
         ("pred_set",[0,14,126,131,218]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%134%233%249@@%203%152%220@@@"])
  fun op finite_one x = x
    val op finite_one =
    DT(((("fcp",63),
        [("bool",[25,26,53,54,55,60,63]),("one",[6]),
         ("pred_set",[0,14,126,131,218]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%190%216@"])
  fun op FCP_UPDATE_COMMUTES x = x
    val op FCP_UPDATE_COMMUTES =
    DT(((("fcp",65),
        [("bool",[25,26,27,30,54,56,58,63,64,105,124,129,147]),
         ("fcp",[13,15,64])]),["DISK_THM"]),
       [read"%86%58%104%19%104%28%80%33%80%35%136%251%134$3@$2@@@%122%112$3@$1@%112$2@$0@$4@@@%112$2@$0@%112$3@$1@$4@@@@|@|@|@|@|@"])
  fun op FCP_UPDATE_EQ x = x
    val op FCP_UPDATE_EQ =
    DT(((("fcp",66),
        [("bool",[25,26,27,36,53,56,58,63,105,124,129,147]),
         ("fcp",[13,15,64])]),["DISK_THM"]),
       [read"%86%58%104%19%80%22%80%33%122%112$2@$0@%112$2@$1@$3@@@%112$2@$0@$3@@|@|@|@|@"])
  fun op FCP_UPDATE_IMP_ID x = x
    val op FCP_UPDATE_IMP_ID =
    DT(((("fcp",67),
        [("bool",[25,56,58,63,65,105,124,129]),
         ("fcp",[13,15,64])]),["DISK_THM"]),
       [read"%86%58%104%19%80%67%136%116%236$2@$1@@$0@@%122%112$1@$0@$2@@$2@@|@|@|@"])
  fun op APPLY_FCP_UPDATE_ID x = x
    val op APPLY_FCP_UPDATE_ID =
    DT(((("fcp",68),
        [("bool",[25,36,53,56,58,65,105,124,129]),
         ("fcp",[13,17,64])]),["DISK_THM"]),
       [read"%86%58%104%19%122%112$0@%236$1@$0@@$1@@$1@|@|@"])
  fun op FCP_APPLY_UPDATE_THM x = x
    val op FCP_APPLY_UPDATE_THM =
    DT(((("fcp",69),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),("combin",[40]),
         ("fcp",[15,64])]),["DISK_THM"]),
       [read"%86%58%104%19%80%73%104%28%116%236%112$2@$1@$3@@$0@@%159%114$0@%229%245@@@%159%134$2@$0@@$1@%236$3@$0@@@%167%236@%57@%112$2@$1@$3@@$0@@@|@|@|@|@"])
  fun op LENGTH_V2L x = x
    val op LENGTH_V2L =
    DT(((("fcp",81),
        [("bool",[25,56]),("fcp",[78]),("list",[276])]),["DISK_THM"]),
       [read"%86%69%134%200%218$0@@@%229%245@@|@"])
  fun op EL_V2L x = x
    val op EL_V2L =
    DT(((("fcp",82),
        [("bool",[25,53,56,58,63,105,124]),("fcp",[78]),
         ("list",[283])]),["DISK_THM"]),
       [read"%104%56%86%69%136%114$1@%229%245@@@%116%164$1@%218$0@@@%236$0@$1@@@|@|@"])
  fun op FCP_MAP x = x
    val op FCP_MAP =
    DT(((("fcp",83),
        [("bool",[25,36,53,56,58,63,105,124]),("combin",[8]),
         ("fcp",[13,15,73,78,79]),("list",[282,283])]),["DISK_THM"]),
       [read"%91%37%87%70%126%182$1@$0@@%199%201$1@%219$0@@@@|@|@"])
  fun op FCP_TL x = x
    val op FCP_TL =
    DT(((("fcp",84),
        [("arithmetic",[28,41,46,65,71,93,172,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,94,96,101,104,105,
          124]),("combin",[8]),("fcp",[13,15,71,78,79]),("list",[283,290]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%86%69%136%110%114%203%152%220@@@%229%245@@@%134%230%246@@%109%229%245@@%203%152%220@@@@@@%123%183$0@@%197%207%218$0@@@@@|@"])
  fun op FCP_EXISTS x = x
    val op FCP_EXISTS =
    DT(((("fcp",85),
        [("bool",[25,56]),("fcp",[74,78]),("list",[289])]),["DISK_THM"]),
       [read"%92%8%86%69%121%178$1@$0@@%166$1@%218$0@@@|@|@"])
  fun op FCP_EVERY x = x
    val op FCP_EVERY =
    DT(((("fcp",86),
        [("arithmetic",[59]),("bool",[25,26,53,54,63]),("fcp",[75,78]),
         ("list",[288]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%92%8%86%69%121%176$1@$0@@%165$1@%218$0@@@|@|@"])
  fun op FCP_HD x = x
    val op FCP_HD =
    DT(((("fcp",87),
        [("arithmetic",[29,46,71,93,172,173,180]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,73,77,
          81,84,93,94,95,96,101,104,105,109,111,124,129,145,146]),
         ("combin",[19]),("fcp",[0,2,3,70,78]),("list",[285]),
         ("numeral",[3,8]),
         ("pred_set",
         [3,10,14,15,80,90,131,144,147,150,185,186,187,197,199,207,208,
          217]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%86%69%116%181$0@@%195%218$0@@@|@"])
  fun op FCP_CONS x = x
    val op FCP_CONS =
    DT(((("fcp",88),
        [("arithmetic",[24,25,27,28,41,46,59,71,93,173,180]),
         ("bool",
         [25,26,27,30,36,53,54,56,58,63,64,96,101,104,105,124,129,147]),
         ("fcp",[13,15,19,62,64,72,78,79]),("list",[17,128,283]),
         ("num",[7]),("numeral",[3,5,8]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%80%13%86%69%125%175$1@$0@@%198%161$1@%218$0@@@@|@|@"])
  fun op V2L_L2V x = x
    val op V2L_L2V =
    DT(((("fcp",89),
        [("bool",[25,36,51,53,56,58,63,105,124]),("fcp",[15,78,79]),
         ("list",[109,276,283])]),["DISK_THM"]),
       [read"%103%76%136%134%229%245@@%200$0@@@%133%218%196$0@@@$0@@|@"])
  fun op NULL_V2L x = x
    val op NULL_V2L =
    DT(((("fcp",90),
        [("arithmetic",[46,71,93,172,173,180]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,73,77,
          81,84,93,94,95,96,101,104,105,109,111,124,129,145,146]),
         ("combin",[19]),("fcp",[0,2,3,78]),("list",[293]),
         ("numeral",[3,8]),
         ("pred_set",
         [3,10,14,15,80,90,131,144,147,150,185,186,187,197,199,207,208,
          217]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%86%69%251%202%218$0@@@|@"])
  fun op READ_TL x = x
    val op READ_TL =
    DT(((("fcp",91),
        [("bool",[25,53,56,58,63,105,124]),("fcp",[15,71])]),["DISK_THM"]),
       [read"%104%56%87%16%136%114$1@%229%245@@@%116%236%184$0@@$1@@%237$0@%205$1@@@@|@|@"])
  fun op READ_L2V x = x
    val op READ_L2V =
    DT(((("fcp",92),
        [("bool",[25,53,56,58,63,105,124]),("fcp",[15,79])]),["DISK_THM"]),
       [read"%104%56%103%18%136%114$1@%229%245@@@%116%236%196$0@@$1@@%164$1@$0@@@|@|@"])
  fun op index_comp x = x
    val op index_comp =
    DT(((("fcp",93),
        [("bool",[25,26,27,30,56,58,63,64,105,129]),("combin",[40]),
         ("fcp",[15])]),["DISK_THM"]),
       [read"%101%42%104%59%116%236%168$1@@$0@@%159%114$0@%229%245@@@$1$0@@%167%236@%2@%168$1@@$0@@@|@|@"])
  fun op fcp_subst_comp x = x
    val op fcp_subst_comp =
    DT(((("fcp",94),
        [("bool",[25,36,53,56,58,63,105,124,129]),
         ("fcp",[13,15,64])]),["DISK_THM"]),
       [read"%82%14%83%23%101%42%122%112%77@%78@%168$0@@@%168%34%159%134%77@$0@@%78@$1$0@@|@@|@|@|@"])
  end
  val _ = DB.bindl "fcp"
  [("HAS_SIZE_def",HAS_SIZE_def,DB.Def),
   ("finite_image_TY_DEF",finite_image_TY_DEF,DB.Def),
   ("finite_image_tybij",finite_image_tybij,DB.Def),
   ("dimindex_def",dimindex_def,DB.Def),
   ("finite_index_def",finite_index_def,DB.Def),
   ("cart_TY_DEF",cart_TY_DEF,DB.Def), ("cart_tybij",cart_tybij,DB.Def),
   ("fcp_index",fcp_index,DB.Def), ("fcp_case_def",fcp_case_def,DB.Def),
   ("FCP",FCP,DB.Def), ("bit0_TY_DEF",bit0_TY_DEF,DB.Def),
   ("bit0_case_def",bit0_case_def,DB.Def),
   ("bit0_size_def",bit0_size_def,DB.Def),
   ("bit1_TY_DEF",bit1_TY_DEF,DB.Def),
   ("bit1_case_def",bit1_case_def,DB.Def),
   ("bit1_size_def",bit1_size_def,DB.Def),
   ("FCP_UPDATE_def",FCP_UPDATE_def,DB.Def),
   ("FCP_HD_def",FCP_HD_def,DB.Def), ("FCP_TL_def",FCP_TL_def,DB.Def),
   ("FCP_CONS_def",FCP_CONS_def,DB.Def),
   ("FCP_MAP_def",FCP_MAP_def,DB.Def),
   ("FCP_EXISTS_def",FCP_EXISTS_def,DB.Def),
   ("FCP_EVERY_def",FCP_EVERY_def,DB.Def),
   ("FCP_CONCAT_def",FCP_CONCAT_def,DB.Def),
   ("FCP_ZIP_def",FCP_ZIP_def,DB.Def), ("V2L_def",V2L_def,DB.Def),
   ("L2V_def",L2V_def,DB.Def), ("FCP_FOLD_def",FCP_FOLD_def,DB.Def),
   ("NOT_FINITE_IMP_dimindex_1",NOT_FINITE_IMP_dimindex_1,DB.Thm),
   ("DIMINDEX_GE_1",DIMINDEX_GE_1,DB.Thm), ("fcp_Axiom",fcp_Axiom,DB.Thm),
   ("fcp_ind",fcp_ind,DB.Thm), ("CART_EQ",CART_EQ,DB.Thm),
   ("FCP_BETA",FCP_BETA,DB.Thm), ("FCP_UNIQUE",FCP_UNIQUE,DB.Thm),
   ("FCP_ETA",FCP_ETA,DB.Thm), ("card_dimindex",card_dimindex,DB.Thm),
   ("index_sum",index_sum,DB.Thm), ("finite_sum",finite_sum,DB.Thm),
   ("datatype_bit0",datatype_bit0,DB.Thm), ("bit0_11",bit0_11,DB.Thm),
   ("bit0_distinct",bit0_distinct,DB.Thm),
   ("bit0_case_cong",bit0_case_cong,DB.Thm),
   ("bit0_nchotomy",bit0_nchotomy,DB.Thm),
   ("bit0_Axiom",bit0_Axiom,DB.Thm),
   ("bit0_induction",bit0_induction,DB.Thm),
   ("index_bit0",index_bit0,DB.Thm), ("finite_bit0",finite_bit0,DB.Thm),
   ("datatype_bit1",datatype_bit1,DB.Thm), ("bit1_11",bit1_11,DB.Thm),
   ("bit1_distinct",bit1_distinct,DB.Thm),
   ("bit1_case_cong",bit1_case_cong,DB.Thm),
   ("bit1_nchotomy",bit1_nchotomy,DB.Thm),
   ("bit1_Axiom",bit1_Axiom,DB.Thm),
   ("bit1_induction",bit1_induction,DB.Thm),
   ("index_bit1",index_bit1,DB.Thm), ("finite_bit1",finite_bit1,DB.Thm),
   ("index_one",index_one,DB.Thm), ("finite_one",finite_one,DB.Thm),
   ("FCP_UPDATE_COMMUTES",FCP_UPDATE_COMMUTES,DB.Thm),
   ("FCP_UPDATE_EQ",FCP_UPDATE_EQ,DB.Thm),
   ("FCP_UPDATE_IMP_ID",FCP_UPDATE_IMP_ID,DB.Thm),
   ("APPLY_FCP_UPDATE_ID",APPLY_FCP_UPDATE_ID,DB.Thm),
   ("FCP_APPLY_UPDATE_THM",FCP_APPLY_UPDATE_THM,DB.Thm),
   ("LENGTH_V2L",LENGTH_V2L,DB.Thm), ("EL_V2L",EL_V2L,DB.Thm),
   ("FCP_MAP",FCP_MAP,DB.Thm), ("FCP_TL",FCP_TL,DB.Thm),
   ("FCP_EXISTS",FCP_EXISTS,DB.Thm), ("FCP_EVERY",FCP_EVERY,DB.Thm),
   ("FCP_HD",FCP_HD,DB.Thm), ("FCP_CONS",FCP_CONS,DB.Thm),
   ("V2L_L2V",V2L_L2V,DB.Thm), ("NULL_V2L",NULL_V2L,DB.Thm),
   ("READ_TL",READ_TL,DB.Thm), ("READ_L2V",READ_L2V,DB.Thm),
   ("index_comp",index_comp,DB.Thm),
   ("fcp_subst_comp",fcp_subst_comp,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars),
                         ("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF (temp_set_fixity "HAS_SIZE"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HAS_SIZE", (Term.prim_mk_const { Name = "HAS_SIZE", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HAS_SIZE", (Term.prim_mk_const { Name = "HAS_SIZE", Thy = "fcp"}))
  val _ = update_grms temp_add_type "finite_image"
  val _ = update_grms temp_add_type "finite_image"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dest_finite_image", (Term.prim_mk_const { Name = "dest_finite_image", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mk_finite_image", (Term.prim_mk_const { Name = "mk_finite_image", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dimindex", (Term.prim_mk_const { Name = "dimindex", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("finite_index", (Term.prim_mk_const { Name = "finite_index", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("finite_index", (Term.prim_mk_const { Name = "finite_index", Thy = "fcp"}))
  val _ = update_grms temp_add_type "cart"
  val _ = update_grms temp_add_type "cart"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dest_cart", (Term.prim_mk_const { Name = "dest_cart", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mk_cart", (Term.prim_mk_const { Name = "mk_cart", Thy = "fcp"}))
  val _ = update_grms
       temp_add_infix_type
       {Name = "cart", ParseName = SOME "**", Assoc = HOLgrammars.RIGHT, Prec = 60}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fcp_index", (Term.prim_mk_const { Name = "fcp_index", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fcp_index", (Term.prim_mk_const { Name = "fcp_index", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "fcp_index"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF (temp_set_fixity "'"))
       (Infix(HOLgrammars.LEFT, 2000))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("'", (Term.prim_mk_const { Name = "fcp_index", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fcp_CASE", (Term.prim_mk_const { Name = "fcp_CASE", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP", (Term.prim_mk_const { Name = "FCP", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP", (Term.prim_mk_const { Name = "FCP", Thy = "fcp"}))
  val _ = update_grms (UTOFF (temp_set_fixity "FCP")) (Binder)
  val _ = update_grms temp_add_type "bit0"
  val _ = update_grms temp_add_type "bit0"






  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT0A", (Term.prim_mk_const { Name = "BIT0A", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT0A", (Term.prim_mk_const { Name = "BIT0A", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT0B", (Term.prim_mk_const { Name = "BIT0B", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT0B", (Term.prim_mk_const { Name = "BIT0B", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit0_CASE", (Term.prim_mk_const { Name = "bit0_CASE", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit0_size", (Term.prim_mk_const { Name = "bit0_size", Thy = "fcp"}))


  val _ = update_grms temp_add_type "bit1"
  val _ = update_grms temp_add_type "bit1"








  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1A", (Term.prim_mk_const { Name = "BIT1A", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1A", (Term.prim_mk_const { Name = "BIT1A", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1B", (Term.prim_mk_const { Name = "BIT1B", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1B", (Term.prim_mk_const { Name = "BIT1B", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1C", (Term.prim_mk_const { Name = "BIT1C", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1C", (Term.prim_mk_const { Name = "BIT1C", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit1_CASE", (Term.prim_mk_const { Name = "bit1_CASE", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit1_size", (Term.prim_mk_const { Name = "bit1_size", Thy = "fcp"}))



  val _ = update_grms
       (UTOFF (temp_set_fixity ":+"))
       (Infix(HOLgrammars.LEFT, 325))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (":+", (Term.prim_mk_const { Name = ":+", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (":+", (Term.prim_mk_const { Name = ":+", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_HD", (Term.prim_mk_const { Name = "FCP_HD", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_HD", (Term.prim_mk_const { Name = "FCP_HD", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_TL", (Term.prim_mk_const { Name = "FCP_TL", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_TL", (Term.prim_mk_const { Name = "FCP_TL", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_CONS", (Term.prim_mk_const { Name = "FCP_CONS", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_CONS", (Term.prim_mk_const { Name = "FCP_CONS", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_MAP", (Term.prim_mk_const { Name = "FCP_MAP", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_MAP", (Term.prim_mk_const { Name = "FCP_MAP", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_EXISTS", (Term.prim_mk_const { Name = "FCP_EXISTS", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_EXISTS", (Term.prim_mk_const { Name = "FCP_EXISTS", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_EVERY", (Term.prim_mk_const { Name = "FCP_EVERY", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_EVERY", (Term.prim_mk_const { Name = "FCP_EVERY", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_CONCAT", (Term.prim_mk_const { Name = "FCP_CONCAT", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_CONCAT", (Term.prim_mk_const { Name = "FCP_CONCAT", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_ZIP", (Term.prim_mk_const { Name = "FCP_ZIP", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_ZIP", (Term.prim_mk_const { Name = "FCP_ZIP", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("V2L", (Term.prim_mk_const { Name = "V2L", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("V2L", (Term.prim_mk_const { Name = "V2L", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("L2V", (Term.prim_mk_const { Name = "L2V", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("L2V", (Term.prim_mk_const { Name = "L2V", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_FOLD", (Term.prim_mk_const { Name = "FCP_FOLD", Thy = "fcp"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCP_FOLD", (Term.prim_mk_const { Name = "FCP_FOLD", Thy = "fcp"}))
  val fcp_grammars = Parse.current_lgrms()
  end


  val _ = let
    val tyi = 
      TypeBasePure.gen_datatype_info {
        ax = fcp_Axiom,
        ind = fcp_ind,
        case_defs = [fcp_case_def]
      }
  in
    TypeBase.write tyi
  end

  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG bit0_Axiom,
           case_def=bit0_case_def,
           case_cong=bit0_case_cong,
           induction=ORIG bit0_induction,
           nchotomy=bit0_nchotomy,
           size=SOME(Parse.Term`(fcp$bit0_size) :('a -> (num$num)) -> ('a fcp$bit0) -> (num$num)`,
                     ORIG bit0_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME bit0_11,
           distinct=SOME bit0_distinct,
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
          {ax=ORIG bit1_Axiom,
           case_def=bit1_case_def,
           case_cong=bit1_case_cong,
           induction=ORIG bit1_induction,
           nchotomy=bit1_nchotomy,
           size=SOME(Parse.Term`(fcp$bit1_size) :('a -> (num$num)) -> ('a fcp$bit1) -> (num$num)`,
                     ORIG bit1_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME bit1_11,
           distinct=SOME bit1_distinct,
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
    thy = "fcp",
    thydataty = "compute",
    data =
        "fcp.HAS_SIZE_def fcp.L2V_def fcp.FCP_EVERY fcp.FCP_EXISTS fcp.FCP_FOLD_def fcp.V2L_def fcp.FCP_ZIP_def fcp.FCP_CONCAT_def fcp.FCP_CONS_def fcp.FCP_MAP_def fcp.FCP_HD_def fcp.FCP_TL_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "fcp"
end
