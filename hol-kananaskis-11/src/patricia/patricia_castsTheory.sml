structure patricia_castsTheory :> patricia_castsTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading patricia_castsTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open patriciaTheory
  in end;
  val _ = Theory.link_parents
          ("patricia_casts",
          Arbnum.fromString "1488588480",
          Arbnum.fromString "823304")
          [("patricia",
           Arbnum.fromString "1488588386",
           Arbnum.fromString "488720")];
  val _ = Theory.incorporate_types "patricia_casts" [("word_ptree", 2)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("patricia_casts", "word_ptree"),
   ID("patricia", "ptree"), ID("one", "one"), ID("list", "list"),
   ID("string", "char"), ID("min", "bool"), ID("fcp", "cart"),
   ID("option", "option"), ID("pair", "prod"), ID("ind_type", "recspace"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("bool", "?"), ID("patricia", "ADD"),
   ID("patricia_casts", "ADD_LISTs"), ID("patricia_casts", "ADD_LISTw"),
   ID("patricia_casts", "ADDs"), ID("patricia_casts", "ADDw"),
   ID("list", "APPEND"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"), ID("string", "CHR"),
   ID("list", "CONS"), ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("patricia", "DEPTH"), ID("patricia_casts", "DEPTHw"),
   ID("arithmetic", "DIV"), ID("list", "EVERY"),
   ID("patricia", "EVERY_LEAF"), ID("patricia_casts", "EVERY_LEAFw"),
   ID("patricia", "EXISTS_LEAF"), ID("patricia_casts", "EXISTS_LEAFw"),
   ID("arithmetic", "EXP"), ID("patricia", "Empty"),
   ID("patricia_casts", "FINDs"), ID("patricia_casts", "FINDw"),
   ID("list", "FOLDL"), ID("pred_set", "IMAGE"), ID("bool", "IN"),
   ID("patricia", "INSERT_PTREE"), ID("patricia_casts", "INSERT_PTREEs"),
   ID("patricia_casts", "INSERT_PTREEw"), ID("patricia", "IN_PTREE"),
   ID("patricia_casts", "IN_PTREEs"), ID("patricia_casts", "IN_PTREEw"),
   ID("combin", "K"), ID("patricia_casts", "KEYSs"),
   ID("patricia_casts", "KEYSw"), ID("list", "LENGTH"),
   ID("list", "LIST_TO_SET"), ID("logroot", "LOG"), ID("list", "MAP"),
   ID("list", "NIL"), ID("arithmetic", "NUMERAL"), ID("string", "ORD"),
   ID("patricia", "PEEK"), ID("patricia_casts", "PEEKs"),
   ID("patricia_casts", "PEEKw"), ID("patricia", "PTREE_OF_NUMSET"),
   ID("patricia_casts", "PTREE_OF_STRINGSET"),
   ID("patricia_casts", "PTREE_OF_WORDSET"), ID("sorting", "QSORT"),
   ID("patricia", "REMOVE"), ID("patricia_casts", "REMOVEs"),
   ID("patricia_casts", "REMOVEw"), ID("list", "REVERSE"),
   ID("patricia", "SIZE"), ID("patricia_casts", "SIZEw"),
   ID("patricia_casts", "SKIP1"), ID("patricia_casts", "SOME_PTREE"),
   ID("patricia_casts", "STRINGSET_OF_PTREE"), ID("option", "THE"),
   ID("patricia_casts", "THE_PTREE"), ID("patricia", "TRANSFORM"),
   ID("patricia_casts", "TRANSFORMw"), ID("patricia", "TRAVERSE"),
   ID("patricia_casts", "TRAVERSEs"), ID("patricia_casts", "TRAVERSEw"),
   ID("bool", "TYPE_DEFINITION"), ID("patricia", "UNION_PTREE"),
   ID("patricia_casts", "UNION_PTREEw"), ID("pred_set", "UNIV"),
   ID("patricia_casts", "WORDSET_OF_PTREE"),
   ID("patricia_casts", "WordEmpty"), ID("patricia_casts", "Word_ptree"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("numposrep", "l2n"),
   ID("ASCIInumbers", "n2s"), ID("words", "n2w"),
   ID("patricia_casts", "num_to_string"), ID("patricia", "ptree_size"),
   ID("ASCIInumbers", "s2n"), ID("string", "string_lt"),
   ID("patricia_casts", "string_to_num"), ID("words", "w2n"),
   ID("words", "word_lo"), ID("patricia_casts", "word_ptree_CASE"),
   ID("patricia_casts", "word_ptree_size")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYV "'a", TYOP [2, 2, 1], TYOP [0, 3, 0],
   TYOP [0, 1, 0], TYOP [0, 5, 4], TYOP [0, 2, 0], TYOP [0, 7, 6],
   TYV "'c", TYOP [3, 1], TYOP [0, 10, 9], TYOP [4], TYOP [0, 2, 12],
   TYOP [0, 13, 11], TYOP [0, 14, 9], TYOP [0, 3, 15], TYOP [6],
   TYOP [5, 17], TYOP [0, 18, 0], TYOP [0, 0, 18], TYOP [0, 10, 3],
   TYOP [0, 13, 21], TYOP [7], TYOP [8, 23, 2], TYOP [0, 24, 23],
   TYOP [2, 2, 12], TYOP [0, 26, 25], TYOP [2, 9, 12], TYOP [0, 28, 26],
   TYOP [2, 1, 12], TYOP [0, 30, 29], TYOP [5, 24], TYOP [0, 3, 32],
   TYOP [5, 18], TYOP [3, 2], TYOP [0, 35, 34], TYOP [2, 9, 1],
   TYOP [2, 9, 2], TYOP [0, 38, 37], TYOP [0, 2, 1], TYOP [0, 40, 39],
   TYOP [2, 1, 2], TYOP [0, 42, 35], TYOP [0, 18, 23], TYOP [3, 12],
   TYOP [0, 45, 44], TYOP [0, 18, 18], TYOP [0, 24, 3], TYOP [0, 3, 48],
   TYOP [0, 18, 35], TYOP [0, 35, 50], TYOP [0, 25, 26], TYOP [0, 26, 52],
   TYOP [0, 44, 45], TYOP [0, 45, 54], TYOP [9, 1], TYOP [0, 24, 56],
   TYOP [0, 3, 57], TYOP [9, 2], TYOP [0, 18, 59], TYOP [0, 35, 60],
   TYOP [0, 26, 23], TYOP [0, 24, 62], TYOP [0, 45, 23], TYOP [0, 18, 64],
   TYOP [0, 26, 26], TYOP [0, 24, 66], TYOP [0, 45, 45], TYOP [0, 18, 68],
   TYOP [8, 23, 1], TYOP [0, 70, 2], TYOP [0, 42, 71], TYOP [0, 18, 2],
   TYOP [0, 35, 73], TYOP [0, 3, 23], TYOP [0, 1, 23], TYOP [0, 24, 76],
   TYOP [0, 77, 75], TYOP [10, 24, 1], TYOP [0, 79, 3], TYOP [0, 3, 80],
   TYOP [10, 18, 2], TYOP [0, 82, 35], TYOP [0, 35, 83], TYOP [5, 79],
   TYOP [0, 85, 3], TYOP [0, 3, 86], TYOP [5, 82], TYOP [0, 88, 35],
   TYOP [0, 35, 89], TYOP [10, 13, 10], TYOP [11, 91], TYOP [0, 92, 23],
   TYOP [0, 1, 12], TYOP [0, 3, 9], TYOP [5, 0], TYOP [5, 2],
   TYOP [0, 3, 92], TYOP [0, 22, 23], TYOP [0, 2, 23], TYOP [0, 100, 23],
   TYOP [0, 76, 23], TYOP [0, 25, 23], TYOP [0, 70, 23], TYOP [0, 104, 23],
   TYOP [0, 17, 23], TYOP [0, 106, 23], TYOP [0, 40, 23],
   TYOP [0, 108, 23], TYOP [0, 7, 23], TYOP [0, 110, 23], TYOP [0, 13, 23],
   TYOP [0, 112, 23], TYOP [0, 5, 23], TYOP [0, 114, 23], TYOP [0, 94, 23],
   TYOP [0, 116, 23], TYOP [0, 103, 23], TYOP [0, 77, 23],
   TYOP [0, 119, 23], TYOP [0, 14, 23], TYOP [0, 121, 23],
   TYOP [0, 44, 23], TYOP [0, 123, 23], TYOP [0, 93, 23],
   TYOP [0, 125, 23], TYOP [0, 75, 23], TYOP [0, 127, 23],
   TYOP [0, 97, 23], TYOP [0, 129, 23], TYOP [0, 96, 23],
   TYOP [0, 131, 23], TYOP [0, 0, 23], TYOP [0, 133, 23], TYOP [0, 12, 23],
   TYOP [0, 135, 23], TYOP [0, 35, 23], TYOP [0, 137, 23],
   TYOP [0, 10, 23], TYOP [0, 139, 23], TYOP [0, 64, 23], TYOP [0, 62, 23],
   TYOP [0, 42, 23], TYOP [0, 143, 23], TYOP [0, 30, 23],
   TYOP [0, 145, 23], TYOP [0, 38, 23], TYOP [0, 147, 23],
   TYOP [0, 28, 23], TYOP [0, 149, 23], TYOP [0, 0, 0], TYOP [0, 0, 151],
   TYOP [0, 1, 79], TYOP [0, 24, 153], TYOP [10, 24, 12],
   TYOP [0, 12, 155], TYOP [0, 24, 156], TYOP [0, 10, 91],
   TYOP [0, 13, 158], TYOP [0, 2, 82], TYOP [0, 18, 160],
   TYOP [10, 18, 12], TYOP [0, 12, 162], TYOP [0, 18, 163],
   TYOP [10, 0, 2], TYOP [0, 2, 165], TYOP [0, 0, 166], TYOP [10, 0, 1],
   TYOP [0, 1, 168], TYOP [0, 0, 169], TYOP [0, 23, 23], TYOP [0, 23, 171],
   TYOP [0, 0, 133], TYOP [0, 2, 100], TYOP [0, 1, 76], TYOP [0, 9, 23],
   TYOP [0, 9, 176], TYOP [0, 13, 112], TYOP [0, 25, 103],
   TYOP [0, 44, 123], TYOP [0, 90, 23], TYOP [0, 90, 181],
   TYOP [0, 87, 23], TYOP [0, 87, 183], TYOP [0, 97, 129], TYOP [5, 1],
   TYOP [0, 186, 23], TYOP [0, 186, 187], TYOP [0, 32, 23],
   TYOP [0, 32, 189], TYOP [0, 18, 44], TYOP [0, 34, 23],
   TYOP [0, 34, 192], TYOP [0, 96, 131], TYOP [0, 59, 23],
   TYOP [0, 59, 195], TYOP [0, 56, 23], TYOP [0, 56, 197],
   TYOP [0, 35, 137], TYOP [0, 10, 139], TYOP [0, 45, 64],
   TYOP [0, 92, 93], TYOP [0, 3, 75], TYOP [0, 26, 62], TYOP [0, 37, 23],
   TYOP [0, 37, 205], TYOP [0, 95, 23], TYOP [0, 207, 23],
   TYOP [0, 98, 23], TYOP [0, 209, 23], TYOP [0, 165, 35],
   TYOP [0, 35, 211], TYOP [0, 168, 10], TYOP [0, 10, 213],
   TYOP [0, 162, 45], TYOP [0, 45, 215], TYOP [0, 155, 26],
   TYOP [0, 26, 217], TYOP [0, 96, 96], TYOP [0, 96, 219], TYOP [0, 0, 17],
   TYOP [0, 17, 47], TYOP [0, 0, 219], TYOP [0, 0, 92], TYOP [0, 224, 92],
   TYOP [0, 91, 225], TYOP [0, 0, 226], TYOP [0, 10, 0],
   TYOP [0, 133, 131], TYOP [0, 0, 76], TYOP [0, 230, 139],
   TYOP [0, 84, 90], TYOP [0, 81, 87], TYOP [0, 25, 133], TYOP [0, 24, 0],
   TYOP [0, 235, 234], TYOP [0, 44, 133], TYOP [0, 19, 237],
   TYOP [0, 0, 134], TYOP [0, 0, 68], TYOP [0, 0, 64], TYOP [0, 12, 13],
   TYOP [0, 96, 0], TYOP [0, 32, 25], TYOP [0, 34, 44], TYOP [0, 97, 186],
   TYOP [0, 40, 246], TYOP [0, 18, 96], TYOP [0, 17, 0],
   TYOP [0, 249, 248], TYOP [0, 96, 32], TYOP [0, 0, 24],
   TYOP [0, 252, 251], TYOP [0, 96, 34], TYOP [0, 20, 254],
   TYOP [0, 0, 59], TYOP [0, 35, 256], TYOP [0, 0, 56], TYOP [0, 10, 258],
   TYOP [0, 70, 59], TYOP [0, 42, 260], TYOP [0, 133, 45],
   TYOP [0, 45, 262], TYOP [0, 32, 32], TYOP [0, 24, 25],
   TYOP [0, 265, 264], TYOP [0, 34, 34], TYOP [0, 191, 267],
   TYOP [0, 0, 35], TYOP [0, 35, 269], TYOP [0, 0, 10], TYOP [0, 10, 271],
   TYOP [0, 97, 97], TYOP [0, 35, 42], TYOP [0, 10, 37], TYOP [0, 45, 26],
   TYOP [0, 59, 2], TYOP [0, 3, 10], TYOP [0, 26, 45], TYOP [0, 30, 45],
   TYOP [0, 38, 35], TYOP [0, 28, 45], TYOP [0, 35, 10], TYOP [0, 40, 283],
   TYOP [0, 35, 96], TYOP [0, 10, 96], TYOP [0, 45, 34], TYOP [0, 26, 32],
   TYOP [0, 93, 209], TYOP [0, 45, 68], TYOP [0, 94, 274],
   TYOP [0, 0, 243], TYOP [0, 221, 20], TYOP [0, 0, 293], TYOP [0, 5, 228],
   TYOP [0, 249, 19], TYOP [0, 0, 296]]
  end
  val _ = Theory.incorporate_consts "patricia_casts" tyvector
     [("word_ptree_size", 8), ("word_ptree_CASE", 16),
      ("string_to_num", 19), ("num_to_string", 20), ("Word_ptree", 22),
      ("WordEmpty", 3), ("WORDSET_OF_PTREE", 27), ("UNION_PTREEw", 31),
      ("TRAVERSEw", 33), ("TRAVERSEs", 36), ("TRANSFORMw", 41),
      ("THE_PTREE", 43), ("STRINGSET_OF_PTREE", 46), ("SOME_PTREE", 21),
      ("SKIP1", 47), ("SIZEw", 4), ("REMOVEw", 49), ("REMOVEs", 51),
      ("PTREE_OF_WORDSET", 53), ("PTREE_OF_STRINGSET", 55), ("PEEKw", 58),
      ("PEEKs", 61), ("KEYSw", 33), ("KEYSs", 36), ("IN_PTREEw", 63),
      ("IN_PTREEs", 65), ("INSERT_PTREEw", 67), ("INSERT_PTREEs", 69),
      ("FINDw", 72), ("FINDs", 74), ("EXISTS_LEAFw", 78),
      ("EVERY_LEAFw", 78), ("DEPTHw", 4), ("ADDw", 81), ("ADDs", 84),
      ("ADD_LISTw", 87), ("ADD_LISTs", 90)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'word_ptree'", 93), TMV("M", 3), TMV("M'", 3), TMV("P", 77),
   TMV("P", 75), TMV("a", 94), TMV("a0", 13), TMV("a0'", 13),
   TMV("a0'", 92), TMV("a1", 10), TMV("a1'", 10), TMV("b", 0),
   TMV("c", 17), TMV("d", 2), TMV("d", 1), TMV("f", 40), TMV("f", 7),
   TMV("f", 13), TMV("f", 14), TMV("f'", 14), TMV("f1", 5), TMV("fn", 95),
   TMV("k", 0), TMV("l", 18), TMV("l", 96), TMV("l1", 97), TMV("l1", 96),
   TMV("l2", 97), TMV("l2", 96), TMV("n", 0), TMV("p", 10), TMV("rep", 98),
   TMV("s", 25), TMV("s", 44), TMV("s", 18), TMV("t", 18), TMV("t", 35),
   TMV("t", 10), TMV("t", 45), TMV("t", 3), TMV("t", 26), TMV("t", 42),
   TMV("t", 38), TMV("t1", 30), TMV("t2", 28), TMV("v", 12), TMV("w", 24),
   TMV("w", 70), TMV("w", 18), TMV("w", 3), TMV("word_ptree", 99),
   TMV("ww", 3), TMV("x", 2), TMV("y", 2), TMC(12, 101), TMC(12, 102),
   TMC(12, 103), TMC(12, 105), TMC(12, 107), TMC(12, 109), TMC(12, 111),
   TMC(12, 113), TMC(12, 115), TMC(12, 117), TMC(12, 118), TMC(12, 120),
   TMC(12, 122), TMC(12, 124), TMC(12, 126), TMC(12, 128), TMC(12, 130),
   TMC(12, 123), TMC(12, 132), TMC(12, 134), TMC(12, 136), TMC(12, 138),
   TMC(12, 140), TMC(12, 141), TMC(12, 125), TMC(12, 127), TMC(12, 142),
   TMC(12, 144), TMC(12, 146), TMC(12, 148), TMC(12, 150), TMC(13, 152),
   TMC(14, 152), TMC(15, 154), TMC(15, 157), TMC(15, 159), TMC(15, 161),
   TMC(15, 164), TMC(15, 167), TMC(15, 170), TMC(16, 172), TMC(17, 0),
   TMC(18, 173), TMC(19, 173), TMC(20, 174), TMC(20, 175), TMC(20, 177),
   TMC(20, 172), TMC(20, 178), TMC(20, 179), TMC(20, 180), TMC(20, 182),
   TMC(20, 184), TMC(20, 185), TMC(20, 188), TMC(20, 190), TMC(20, 191),
   TMC(20, 193), TMC(20, 194), TMC(20, 173), TMC(20, 196), TMC(20, 198),
   TMC(20, 199), TMC(20, 200), TMC(20, 201), TMC(20, 202), TMC(20, 203),
   TMC(20, 204), TMC(20, 206), TMC(21, 172), TMC(22, 173), TMC(23, 113),
   TMC(23, 208), TMC(23, 210), TMC(23, 140), TMC(24, 212), TMC(24, 214),
   TMC(25, 90), TMC(26, 87), TMC(27, 84), TMC(27, 216), TMC(28, 81),
   TMC(28, 218), TMC(29, 220), TMC(30, 151), TMC(31, 151), TMC(32, 92),
   TMC(33, 221), TMC(34, 222), TMC(34, 223), TMC(35, 227), TMC(36, 171),
   TMC(37, 228), TMC(38, 4), TMC(39, 152), TMC(40, 229), TMC(41, 231),
   TMC(42, 78), TMC(43, 231), TMC(44, 78), TMC(45, 152), TMC(46, 10),
   TMC(47, 74), TMC(48, 72), TMC(49, 232), TMC(49, 233), TMC(50, 236),
   TMC(50, 238), TMC(51, 239), TMC(52, 240), TMC(53, 69), TMC(54, 67),
   TMC(55, 241), TMC(56, 65), TMC(57, 63), TMC(58, 242), TMC(59, 36),
   TMC(60, 33), TMC(61, 243), TMC(62, 244), TMC(62, 245), TMC(63, 152),
   TMC(64, 247), TMC(64, 250), TMC(64, 253), TMC(64, 255), TMC(65, 96),
   TMC(66, 151), TMC(67, 249), TMC(68, 257), TMC(68, 259), TMC(69, 61),
   TMC(70, 58), TMC(70, 261), TMC(71, 263), TMC(72, 55), TMC(73, 53),
   TMC(74, 266), TMC(74, 268), TMC(75, 270), TMC(75, 272), TMC(76, 51),
   TMC(77, 49), TMC(78, 273), TMC(79, 228), TMC(80, 4), TMC(81, 47),
   TMC(82, 274), TMC(82, 21), TMC(82, 275), TMC(82, 276), TMC(83, 46),
   TMC(84, 277), TMC(85, 278), TMC(85, 279), TMC(85, 43), TMC(85, 280),
   TMC(85, 281), TMC(85, 282), TMC(86, 284), TMC(87, 41), TMC(88, 285),
   TMC(88, 286), TMC(89, 36), TMC(89, 287), TMC(90, 33), TMC(90, 288),
   TMC(91, 289), TMC(92, 290), TMC(93, 31), TMC(94, 44), TMC(95, 27),
   TMC(96, 3), TMC(97, 22), TMC(97, 291), TMC(98, 0), TMC(99, 172),
   TMC(100, 292), TMC(101, 294), TMC(102, 252), TMC(103, 20), TMC(4, 12),
   TMC(104, 295), TMC(105, 297), TMC(106, 191), TMC(107, 19),
   TMC(108, 235), TMC(109, 265), TMC(110, 16), TMC(111, 8)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op SKIP1_def x = x
    val op SKIP1_def =
    DT(((("patricia_casts",0),[("list",[13])]),["DISK_THM"]),
       [read"%58%12%71%34%110%200%142$1@$0@@@$0@|@|@"])
  fun op string_to_num_def x = x
    val op string_to_num_def =
    DT(((("patricia_casts",1),[]),[]),
       [read"%71%34%113%239$0@@%237%181%139%138%138%138%138%138%138%138%229@@@@@@@@@@%182@%142%141%181%138%229@@@@$0@@@|@"])
  fun op num_to_string_def x = x
    val op num_to_string_def =
    DT(((("patricia_casts",2),[]),[]),
       [read"%73%29%110%234$0@@%200%232%181%139%138%138%138%138%138%138%138%229@@@@@@@@@@%141@$0@@@|@"])
  fun op PEEKs_def x = x
    val op PEEKs_def =
    DT(((("patricia_casts",3),[]),[]),
       [read"%75%36%71%48%114%185$1@$0@@%183$1@%239$0@@@|@|@"])
  fun op FINDs_def x = x
    val op FINDs_def =
    DT(((("patricia_casts",4),[]),[]),
       [read"%75%36%71%48%98%156$1@$0@@%206%185$1@$0@@@|@|@"])
  fun op ADDs_def x = x
    val op ADDs_def =
    DT(((("patricia_casts",5),[("pair",[16])]),["DISK_THM"]),
       [read"%75%36%71%48%54%13%116%133$2@%90$1@$0@@@%129$2@%92%239$1@@$0@@@|@|@|@"])
  fun op ADD_LISTs_def x = x
    val op ADD_LISTs_def =
    DT(((("patricia_casts",6),[]),[]), [read"%105%131@%158%133@@"])
  fun op REMOVEs_def x = x
    val op REMOVEs_def =
    DT(((("patricia_casts",7),[]),[]),
       [read"%75%36%71%48%116%195$1@$0@@%193$1@%239$0@@@|@|@"])
  fun op TRAVERSEs_def x = x
    val op TRAVERSEs_def =
    DT(((("patricia_casts",8),[]),[]),
       [read"%75%36%111%217$0@@%179%234@%215$0@@@|@"])
  fun op KEYSs_def x = x
    val op KEYSs_def =
    DT(((("patricia_casts",9),[]),[]),
       [read"%75%36%111%170$0@@%192%238@%217$0@@@|@"])
  fun op IN_PTREEs_def x = x
    val op IN_PTREEs_def =
    DT(((("patricia_casts",10),[]),[]),
       [read"%71%48%77%38%101%167$1@$0@@%166%239$1@@$0@@|@|@"])
  fun op INSERT_PTREEs_def x = x
    val op INSERT_PTREEs_def =
    DT(((("patricia_casts",11),[]),[]),
       [read"%71%48%77%38%118%164$1@$0@@%163%239$1@@$0@@|@|@"])
  fun op STRINGSET_OF_PTREE_def x = x
    val op STRINGSET_OF_PTREE_def =
    DT(((("patricia_casts",12),[]),[]),
       [read"%77%38%104%205$0@@%174%218$0@@@|@"])
  fun op PTREE_OF_STRINGSET_def x = x
    val op PTREE_OF_STRINGSET_def =
    DT(((("patricia_casts",13),[]),[]),
       [read"%77%38%67%33%118%189$1@$0@@%188$1@%161%239@$0@@@|@|@"])
  fun op word_ptree_TY_DEF x = x
    val op word_ptree_TY_DEF =
    DT(((("patricia_casts",14),[("bool",[26])]),["DISK_THM"]),
       [read"%127%31%221%8%68%0%123%78%8%123%125%6%128%9%119$2@%6%9%144%95@%89$1@$0@@%29%140|@||$1@$0@@|@|@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op word_ptree_case_def x = x
    val op word_ptree_case_def =
    DT(((("patricia_casts",18),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%61%6%76%9%66%18%100%242%227$2@$1@@$0@@$0$2@$1@@|@|@|@"])
  fun op word_ptree_size_def x = x
    val op word_ptree_size_def =
    DT(((("patricia_casts",19),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%60%16%62%20%61%6%76%9%113%243$3@$2@%227$1@$0@@@%86%181%138%229@@@%236$2@$0@@@|@|@|@|@"])
  fun op THE_PTREE_def x = x
    val op THE_PTREE_def =
    DT(((("patricia_casts",26),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%63%5%75%36%116%209%228$1@$0@@@$0@|@|@"])
  fun op SOME_PTREE_def x = x
    val op SOME_PTREE_def =
    DT(((("patricia_casts",27),[]),[]),
       [read"%76%37%120%202$0@@%227%169%235@@$0@@|@"])
  fun op WordEmpty_def x = x
    val op WordEmpty_def =
    DT(((("patricia_casts",28),[]),[]), [read"%120%226@%202%155@@"])
  fun op PEEKw_def x = x
    val op PEEKw_def =
    DT(((("patricia_casts",29),[]),[]),
       [read"%79%39%56%46%115%186$1@$0@@%184%207$1@@%240$0@@@|@|@"])
  fun op FINDw_def x = x
    val op FINDw_def =
    DT(((("patricia_casts",30),[]),[]),
       [read"%81%41%57%47%98%157$1@$0@@%206%187$1@$0@@@|@|@"])
  fun op ADDw_def x = x
    val op ADDw_def =
    DT(((("patricia_casts",31),[("pair",[16])]),["DISK_THM"]),
       [read"%79%39%56%46%55%14%120%135$2@%87$1@$0@@@%202%130%207$2@@%93%240$1@@$0@@@@|@|@|@"])
  fun op ADD_LISTw_def x = x
    val op ADD_LISTw_def =
    DT(((("patricia_casts",32),[]),[]), [read"%106%132@%159%135@@"])
  fun op REMOVEw_def x = x
    val op REMOVEw_def =
    DT(((("patricia_casts",33),[]),[]),
       [read"%79%39%56%46%120%196$1@$0@@%202%194%207$1@@%240$0@@@@|@|@"])
  fun op TRAVERSEw_def x = x
    val op TRAVERSEw_def =
    DT(((("patricia_casts",34),[]),[]),
       [read"%79%39%109%219$0@@%178%233@%216%207$0@@@@|@"])
  fun op KEYSw_def x = x
    val op KEYSw_def =
    DT(((("patricia_casts",35),[]),[]),
       [read"%79%39%109%171$0@@%191%241@%219$0@@@|@"])
  fun op TRANSFORMw_def x = x
    val op TRANSFORMw_def =
    DT(((("patricia_casts",36),[]),[]),
       [read"%59%15%83%42%122%214$1@$0@@%203%213$1@%211$0@@@@|@|@"])
  fun op EVERY_LEAFw_def x = x
    val op EVERY_LEAFw_def =
    DT(((("patricia_casts",37),[]),[]),
       [read"%65%3%79%39%101%151$1@$0@@%150%22%14$3%233$1@@$0@||@%207$0@@@|@|@"])
  fun op EXISTS_LEAFw_def x = x
    val op EXISTS_LEAFw_def =
    DT(((("patricia_casts",38),[]),[]),
       [read"%65%3%79%39%101%153$1@$0@@%152%22%14$3%233$1@@$0@||@%207$0@@@|@|@"])
  fun op SIZEw_def x = x
    val op SIZEw_def =
    DT(((("patricia_casts",39),[]),[]),
       [read"%79%39%113%199$0@@%198%207$0@@@|@"])
  fun op DEPTHw_def x = x
    val op DEPTHw_def =
    DT(((("patricia_casts",40),[]),[]),
       [read"%79%39%113%147$0@@%146%207$0@@@|@"])
  fun op IN_PTREEw_def x = x
    val op IN_PTREEw_def =
    DT(((("patricia_casts",41),[]),[]),
       [read"%56%46%80%40%101%168$1@$0@@%166%240$1@@%208$0@@@|@|@"])
  fun op INSERT_PTREEw_def x = x
    val op INSERT_PTREEw_def =
    DT(((("patricia_casts",42),[]),[]),
       [read"%56%46%80%40%121%165$1@$0@@%204%163%240$1@@%208$0@@@@|@|@"])
  fun op WORDSET_OF_PTREE_def x = x
    val op WORDSET_OF_PTREE_def =
    DT(((("patricia_casts",43),[]),[]),
       [read"%80%40%103%225$0@@%173%220$0@@@|@"])
  fun op UNION_PTREEw_def x = x
    val op UNION_PTREEw_def =
    DT(((("patricia_casts",44),[]),[]),
       [read"%82%43%84%44%121%223$1@$0@@%204%222%210$1@@%212$0@@@@|@|@"])
  fun op PTREE_OF_WORDSET_def x = x
    val op PTREE_OF_WORDSET_def =
    DT(((("patricia_casts",45),[]),[]),
       [read"%80%40%64%32%121%190$1@$0@@%204%188%208$1@@%160%240@$0@@@@|@|@"])
  fun op datatype_word_ptree x = x
    val op datatype_word_ptree =
    DT(((("patricia_casts",20),[("bool",[25,171])]),["DISK_THM"]),
       [read"%145%50%227@@"])
  fun op word_ptree_11 x = x
    val op word_ptree_11 =
    DT(((("patricia_casts",21),
        [("bool",[26,51,56,63,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%61%6%76%9%61%7%76%10%101%120%227$3@$2@@%227$1@$0@@@%94%102$3@$1@@%117$2@$0@@@|@|@|@|@"])
  fun op word_ptree_case_cong x = x
    val op word_ptree_case_cong =
    DT(((("patricia_casts",22),
        [("bool",[26,181]),
         ("patricia_casts",[15,16,17,18])]),["DISK_THM"]),
       [read"%79%1%79%2%66%18%123%94%120$2@$1@@%61%6%76%9%123%120$3@%227$1@$0@@@%100$2$1@$0@@%19$1@$0@@@|@|@@@%100%242$2@$0@@%242$1@%19@@@|@|@|@"])
  fun op word_ptree_nchotomy x = x
    val op word_ptree_nchotomy =
    DT(((("patricia_casts",23),
        [("bool",[26,181]),("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%79%51%125%17%128%30%120$2@%227$1@$0@@|@|@|@"])
  fun op word_ptree_Axiom x = x
    val op word_ptree_Axiom =
    DT(((("patricia_casts",24),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%66%18%126%21%61%6%76%9%100$2%227$1@$0@@@$3$1@$0@@|@|@|@|@"])
  fun op word_ptree_induction x = x
    val op word_ptree_induction =
    DT(((("patricia_casts",25),
        [("bool",[26]),("patricia_casts",[15,16,17])]),["DISK_THM"]),
       [read"%69%4%123%61%17%76%30$2%227$1@$0@@|@|@@%79%49$1$0@|@@|@"])
  fun op ADD_INSERT_STRING x = x
    val op ADD_INSERT_STRING =
    DT(((("patricia_casts",46),[("one",[3])]),["DISK_THM"]),
       [read"%71%48%74%45%77%38%118%134$0@%91$2@$1@@@%134$0@%91$2@%235@@@|@|@|@"])
  fun op l2n_APPEND x = x
    val op l2n_APPEND =
    DT(((("patricia_casts",47),
        [("arithmetic",[8,22,24,25,26,27,69,71,75,76,173,177,180]),
         ("bool",[14,25,36,52,54,56,58,63,104]),("list",[20,22,43]),
         ("numeral",[3,8]),("numposrep",[0])]),["DISK_THM"]),
       [read"%73%11%72%26%72%28%113%231$2@%137$1@$0@@@%86%231$2@$1@@%85%154$2@%172$1@@@%231$2@$0@@@@|@|@|@"])
  fun op l2n_LENGTH x = x
    val op l2n_LENGTH =
    DT(((("patricia_casts",48),
        [("arithmetic",
         [8,24,25,26,27,41,46,59,70,71,75,93,101,173,180,237]),
         ("bool",[14,25,36,53,54,58,63,96,101,104,105,124]),
         ("list",[22,43]),("numeral",[3,5,7,8]),
         ("numposrep",[0])]),["DISK_THM"]),
       [read"%73%11%72%24%123%96%181%138%229@@@$1@@%96%231$1@$0@@%154$1@%172$0@@@@|@|@"])
  fun op l2n_11 x = x
    val op l2n_11 =
    DT(((("patricia_casts",49),
        [("arithmetic",
         [8,22,24,25,26,27,32,41,46,59,67,69,70,71,73,74,75,91,93,101,142,
          172,173,177,180,188,217,274]),
         ("bool",
         [2,14,15,25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,
          107,124]),("list",[110]),("num",[9]),("numeral",[3,5,8]),
         ("numposrep",[0,18]),("patricia_casts",[47,48]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%73%11%72%26%72%28%123%94%96%181%138%229@@@$2@@%94%149%124$2@@$1@@%149%124$2@@$0@@@@%101%113%231$2@%137$1@%143%181%138%229@@@%180@@@@%231$2@%137$0@%143%181%138%229@@@%180@@@@@%112$1@$0@@@|@|@|@"])
  fun op EVERY_MAP_ORD x = x
    val op EVERY_MAP_ORD =
    DT(((("patricia_casts",50),
        [("arithmetic",[9]),("bool",[14,25,51,63]),("list",[23,30,43]),
         ("string",[10])]),["DISK_THM"]),
       [read"%71%23%149%124%181%139%138%138%138%138%138%138%138%229@@@@@@@@@@@%177%182@$0@@|@"])
  fun op MAP_11 x = x
    val op MAP_11 =
    DT(((("patricia_casts",51),
        [("bool",[14,25,26,27,36,53,54,56,58,63,105,124]),
         ("list",[23,43,48,49])]),["DISK_THM"]),
       [read"%59%15%70%25%70%27%123%54%52%54%53%101%99$4$1@@$4$0@@@%98$1@$0@@|@|@@%101%108%176$2@$1@@%176$2@$0@@@%107$1@$0@@@|@|@|@"])
  fun op REVERSE_11 x = x
    val op REVERSE_11 =
    DT(((("patricia_casts",52),
        [("bool",[14,25,26,27,54,56,58,63]),
         ("list",[43,48,49,176])]),["DISK_THM"]),
       [read"%70%25%70%27%101%107%197$1@@%197$0@@@%107$1@$0@@|@|@"])
  fun op string_to_num_11 x = x
    val op string_to_num_11 =
    DT(((("patricia_casts",53),
        [("ASCIInumbers",[0]),
         ("bool",[25,26,36,51,53,54,56,58,63,105,124]),
         ("list",[23,58,173]),("numeral",[3,7]),
         ("patricia_casts",[1,49,50,51,52]),
         ("string",[2,8])]),["DISK_THM"]),
       [read"%71%34%71%35%101%113%239$1@@%239$0@@@%110$1@$0@@|@|@"])
  fun op IMAGE_string_to_num x = x
    val op IMAGE_string_to_num =
    DT(((("patricia_casts",54),
        [("ASCIInumbers",[0,1,24]),
         ("arithmetic",
         [9,19,24,25,26,27,41,46,59,66,69,70,71,73,76,79,91,93,102,152,172,
          173,176,177,180,190,209,217,237,269,273,274,275]),
         ("bit",[20,22]),
         ("bool",
         [2,8,14,15,25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,75,83,93,
          96,99,100,101,104,105,107,124,129,147,169]),
         ("list",
         [18,20,22,23,30,43,46,48,49,55,56,57,58,60,104,173,174,178,179,
          182,183,312,316]),("logroot",[15]),
         ("numeral",[3,5,6,7,8,9,32,33]),
         ("numeral_bit",[1,2,21,22,23,24,26,27,29]),
         ("numposrep",[0,4,14,20,27,28,29]),("pair",[16]),
         ("patricia_casts",[0,1,2,47,48]),("pred_set",[14,144]),
         ("prim_rec",[3,7]),("rich_list",[119,196,211]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("string",[3,8,9,12])]),["DISK_THM"]),
       [read"%73%29%101%230%113$0@%181%138%229@@@@%94%97%181%139%138%138%138%138%138%138%138%229@@@@@@@@@@$0@@%113%148$0@%154%181%139%138%138%138%138%138%138%138%229@@@@@@@@@@%175%181%139%138%138%138%138%138%138%138%229@@@@@@@@@@$0@@@@%181%138%229@@@@@@%162$0@%161%239@%224@@@|@"])
  fun op string_to_num_num_to_string x = x
    val op string_to_num_num_to_string =
    DT(((("patricia_casts",55),
        [("ASCIInumbers",[0,1,24]),
         ("arithmetic",
         [9,19,24,25,26,41,46,59,66,69,71,79,93,172,173,177,180,209,217,
          237,269,273,274]),("bit",[20,22]),
         ("bool",
         [8,14,25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,83,93,96,99,
          100,101,104,105,107,124,129,147,169]),
         ("list",
         [18,20,23,30,43,48,49,55,56,104,173,174,179,182,183,312,316]),
         ("logroot",[15]),("numeral",[3,5,6,7,8,9,32,33]),
         ("numeral_bit",[1,2,21,22,23,24,26,27,29]),
         ("numposrep",[0,4,14,20,27,28,29]),("pair",[16]),
         ("patricia_casts",[0,1,2,54]),("prim_rec",[3,7]),
         ("rich_list",[119,196,211]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("string",[3,8,9,12])]),["DISK_THM"]),
       [read"%73%29%123%162$0@%161%239@%224@@@%113%239%234$0@@@$0@@|@"])
  fun op num_to_string_string_to_num x = x
    val op num_to_string_string_to_num =
    DT(((("patricia_casts",56),
        [("bool",[25,56,58,63]),("patricia_casts",[53,55]),
         ("pred_set",[14,146])]),["DISK_THM"]),
       [read"%71%34%110%234%239$0@@@$0@|@"])
  fun op ADD_INSERT_WORD x = x
    val op ADD_INSERT_WORD =
    DT(((("patricia_casts",57),[("one",[3])]),["DISK_THM"]),
       [read"%56%46%74%45%80%40%121%136$0@%88$2@$1@@@%136$0@%88$2@%235@@@|@|@|@"])
  fun op THE_PTREE_SOME_PTREE x = x
    val op THE_PTREE_SOME_PTREE =
    DT(((("patricia_casts",58),
        [("bool",[25,56]),("patricia_casts",[26,27])]),["DISK_THM"]),
       [read"%75%36%116%209%201$0@@@$0@|@"])
  end
  val _ = DB.bindl "patricia_casts"
  [("SKIP1_def",SKIP1_def,DB.Def),
   ("string_to_num_def",string_to_num_def,DB.Def),
   ("num_to_string_def",num_to_string_def,DB.Def),
   ("PEEKs_def",PEEKs_def,DB.Def), ("FINDs_def",FINDs_def,DB.Def),
   ("ADDs_def",ADDs_def,DB.Def), ("ADD_LISTs_def",ADD_LISTs_def,DB.Def),
   ("REMOVEs_def",REMOVEs_def,DB.Def),
   ("TRAVERSEs_def",TRAVERSEs_def,DB.Def), ("KEYSs_def",KEYSs_def,DB.Def),
   ("IN_PTREEs_def",IN_PTREEs_def,DB.Def),
   ("INSERT_PTREEs_def",INSERT_PTREEs_def,DB.Def),
   ("STRINGSET_OF_PTREE_def",STRINGSET_OF_PTREE_def,DB.Def),
   ("PTREE_OF_STRINGSET_def",PTREE_OF_STRINGSET_def,DB.Def),
   ("word_ptree_TY_DEF",word_ptree_TY_DEF,DB.Def),
   ("word_ptree_case_def",word_ptree_case_def,DB.Def),
   ("word_ptree_size_def",word_ptree_size_def,DB.Def),
   ("THE_PTREE_def",THE_PTREE_def,DB.Def),
   ("SOME_PTREE_def",SOME_PTREE_def,DB.Def),
   ("WordEmpty_def",WordEmpty_def,DB.Def), ("PEEKw_def",PEEKw_def,DB.Def),
   ("FINDw_def",FINDw_def,DB.Def), ("ADDw_def",ADDw_def,DB.Def),
   ("ADD_LISTw_def",ADD_LISTw_def,DB.Def),
   ("REMOVEw_def",REMOVEw_def,DB.Def),
   ("TRAVERSEw_def",TRAVERSEw_def,DB.Def), ("KEYSw_def",KEYSw_def,DB.Def),
   ("TRANSFORMw_def",TRANSFORMw_def,DB.Def),
   ("EVERY_LEAFw_def",EVERY_LEAFw_def,DB.Def),
   ("EXISTS_LEAFw_def",EXISTS_LEAFw_def,DB.Def),
   ("SIZEw_def",SIZEw_def,DB.Def), ("DEPTHw_def",DEPTHw_def,DB.Def),
   ("IN_PTREEw_def",IN_PTREEw_def,DB.Def),
   ("INSERT_PTREEw_def",INSERT_PTREEw_def,DB.Def),
   ("WORDSET_OF_PTREE_def",WORDSET_OF_PTREE_def,DB.Def),
   ("UNION_PTREEw_def",UNION_PTREEw_def,DB.Def),
   ("PTREE_OF_WORDSET_def",PTREE_OF_WORDSET_def,DB.Def),
   ("datatype_word_ptree",datatype_word_ptree,DB.Thm),
   ("word_ptree_11",word_ptree_11,DB.Thm),
   ("word_ptree_case_cong",word_ptree_case_cong,DB.Thm),
   ("word_ptree_nchotomy",word_ptree_nchotomy,DB.Thm),
   ("word_ptree_Axiom",word_ptree_Axiom,DB.Thm),
   ("word_ptree_induction",word_ptree_induction,DB.Thm),
   ("ADD_INSERT_STRING",ADD_INSERT_STRING,DB.Thm),
   ("l2n_APPEND",l2n_APPEND,DB.Thm), ("l2n_LENGTH",l2n_LENGTH,DB.Thm),
   ("l2n_11",l2n_11,DB.Thm), ("EVERY_MAP_ORD",EVERY_MAP_ORD,DB.Thm),
   ("MAP_11",MAP_11,DB.Thm), ("REVERSE_11",REVERSE_11,DB.Thm),
   ("string_to_num_11",string_to_num_11,DB.Thm),
   ("IMAGE_string_to_num",IMAGE_string_to_num,DB.Thm),
   ("string_to_num_num_to_string",string_to_num_num_to_string,DB.Thm),
   ("num_to_string_string_to_num",num_to_string_string_to_num,DB.Thm),
   ("ADD_INSERT_WORD",ADD_INSERT_WORD,DB.Thm),
   ("THE_PTREE_SOME_PTREE",THE_PTREE_SOME_PTREE,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("patriciaTheory.patricia_grammars",
                          patriciaTheory.patricia_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF (temp_set_fixity "IN_PTREEw"))
       (Infix(HOLgrammars.NONASSOC, 425))
  val _ = update_grms
       (UTOFF (temp_set_fixity "IN_PTREEs"))
       (Infix(HOLgrammars.NONASSOC, 425))
  val _ = update_grms
       (UTOFF (temp_set_fixity "INSERT_PTREEw"))
       (Infix(HOLgrammars.RIGHT, 490))
  val _ = update_grms
       (UTOFF (temp_set_fixity "INSERT_PTREEs"))
       (Infix(HOLgrammars.RIGHT, 490))
  val _ = update_grms
       (UTOFF (temp_set_fixity "UNION_PTREEw"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF (temp_set_fixity "UNION_PTREEs"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SKIP1", (Term.prim_mk_const { Name = "SKIP1", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_to_num", (Term.prim_mk_const { Name = "string_to_num", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_to_num", (Term.prim_mk_const { Name = "string_to_num", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_string", (Term.prim_mk_const { Name = "num_to_string", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_string", (Term.prim_mk_const { Name = "num_to_string", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PEEKs", (Term.prim_mk_const { Name = "PEEKs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PEEKs", (Term.prim_mk_const { Name = "PEEKs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINDs", (Term.prim_mk_const { Name = "FINDs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINDs", (Term.prim_mk_const { Name = "FINDs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADDs", (Term.prim_mk_const { Name = "ADDs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADDs", (Term.prim_mk_const { Name = "ADDs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADD_LISTs", (Term.prim_mk_const { Name = "ADD_LISTs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADD_LISTs", (Term.prim_mk_const { Name = "ADD_LISTs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REMOVEs", (Term.prim_mk_const { Name = "REMOVEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REMOVEs", (Term.prim_mk_const { Name = "REMOVEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("'", (Term.prim_mk_const { Name = "PEEKs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|+", (Term.prim_mk_const { Name = "ADDs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|++", (Term.prim_mk_const { Name = "ADD_LISTs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\\\\", (Term.prim_mk_const { Name = "REMOVEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRAVERSEs", (Term.prim_mk_const { Name = "TRAVERSEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRAVERSEs", (Term.prim_mk_const { Name = "TRAVERSEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("KEYSs", (Term.prim_mk_const { Name = "KEYSs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("KEYSs", (Term.prim_mk_const { Name = "KEYSs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IN_PTREEs", (Term.prim_mk_const { Name = "IN_PTREEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IN_PTREEs", (Term.prim_mk_const { Name = "IN_PTREEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERT_PTREEs", (Term.prim_mk_const { Name = "INSERT_PTREEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERT_PTREEs", (Term.prim_mk_const { Name = "INSERT_PTREEs", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STRINGSET_OF_PTREE", (Term.prim_mk_const { Name = "STRINGSET_OF_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STRINGSET_OF_PTREE", (Term.prim_mk_const { Name = "STRINGSET_OF_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PTREE_OF_STRINGSET", (Term.prim_mk_const { Name = "PTREE_OF_STRINGSET", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PTREE_OF_STRINGSET", (Term.prim_mk_const { Name = "PTREE_OF_STRINGSET", Thy = "patricia_casts"}))
  val _ = update_grms temp_add_type "word_ptree"
  val _ = update_grms temp_add_type "word_ptree"




  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Word_ptree", (Term.prim_mk_const { Name = "Word_ptree", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Word_ptree", (Term.prim_mk_const { Name = "Word_ptree", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ptree_CASE", (Term.prim_mk_const { Name = "word_ptree_CASE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ptree_size", (Term.prim_mk_const { Name = "word_ptree_size", Thy = "patricia_casts"}))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="patricia_casts",Name="word_ptreeset"}, T"word_ptree" "patricia_casts" [alpha, T"one" "one" []])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("THE_PTREE", (Term.prim_mk_const { Name = "THE_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SOME_PTREE", (Term.prim_mk_const { Name = "SOME_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SOME_PTREE", (Term.prim_mk_const { Name = "SOME_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WordEmpty", (Term.prim_mk_const { Name = "WordEmpty", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WordEmpty", (Term.prim_mk_const { Name = "WordEmpty", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PEEKw", (Term.prim_mk_const { Name = "PEEKw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PEEKw", (Term.prim_mk_const { Name = "PEEKw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINDw", (Term.prim_mk_const { Name = "FINDw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINDw", (Term.prim_mk_const { Name = "FINDw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADDw", (Term.prim_mk_const { Name = "ADDw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADDw", (Term.prim_mk_const { Name = "ADDw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADD_LISTw", (Term.prim_mk_const { Name = "ADD_LISTw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ADD_LISTw", (Term.prim_mk_const { Name = "ADD_LISTw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REMOVEw", (Term.prim_mk_const { Name = "REMOVEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REMOVEw", (Term.prim_mk_const { Name = "REMOVEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("'", (Term.prim_mk_const { Name = "PEEKw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|+", (Term.prim_mk_const { Name = "ADDw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|++", (Term.prim_mk_const { Name = "ADD_LISTw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\\\\", (Term.prim_mk_const { Name = "REMOVEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRAVERSEw", (Term.prim_mk_const { Name = "TRAVERSEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRAVERSEw", (Term.prim_mk_const { Name = "TRAVERSEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("KEYSw", (Term.prim_mk_const { Name = "KEYSw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("KEYSw", (Term.prim_mk_const { Name = "KEYSw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRANSFORMw", (Term.prim_mk_const { Name = "TRANSFORMw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRANSFORMw", (Term.prim_mk_const { Name = "TRANSFORMw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVERY_LEAFw", (Term.prim_mk_const { Name = "EVERY_LEAFw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVERY_LEAFw", (Term.prim_mk_const { Name = "EVERY_LEAFw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXISTS_LEAFw", (Term.prim_mk_const { Name = "EXISTS_LEAFw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXISTS_LEAFw", (Term.prim_mk_const { Name = "EXISTS_LEAFw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIZEw", (Term.prim_mk_const { Name = "SIZEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIZEw", (Term.prim_mk_const { Name = "SIZEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DEPTHw", (Term.prim_mk_const { Name = "DEPTHw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DEPTHw", (Term.prim_mk_const { Name = "DEPTHw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IN_PTREEw", (Term.prim_mk_const { Name = "IN_PTREEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IN_PTREEw", (Term.prim_mk_const { Name = "IN_PTREEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERT_PTREEw", (Term.prim_mk_const { Name = "INSERT_PTREEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERT_PTREEw", (Term.prim_mk_const { Name = "INSERT_PTREEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WORDSET_OF_PTREE", (Term.prim_mk_const { Name = "WORDSET_OF_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WORDSET_OF_PTREE", (Term.prim_mk_const { Name = "WORDSET_OF_PTREE", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNION_PTREEw", (Term.prim_mk_const { Name = "UNION_PTREEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNION_PTREEw", (Term.prim_mk_const { Name = "UNION_PTREEw", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PTREE_OF_WORDSET", (Term.prim_mk_const { Name = "PTREE_OF_WORDSET", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PTREE_OF_WORDSET", (Term.prim_mk_const { Name = "PTREE_OF_WORDSET", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|++", (Term.prim_mk_const { Name = "PTREE_OF_WORDSET", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|++", (Term.prim_mk_const { Name = "PTREE_OF_STRINGSET", Thy = "patricia_casts"}))
  val _ = update_grms
       (UTOFF temp_add_listform)
       {separator = [TOK ";", BreakSpace(1, 0)]
, leftdelim = [TOK "+{"]
, rightdelim = [TOK "}+"]
, cons = "INSERT_PTREEw", nilstr = "WordEmpty", block_info = (INCONSISTENT, 0)}
  val _ = update_grms
       (UTOFF temp_add_listform)
       {separator = [TOK ";", BreakSpace(1, 0)]
, leftdelim = [TOK "-{"]
, rightdelim = [TOK "}-"]
, cons = "INSERT_PTREEs", nilstr = "Empty", block_info = (INCONSISTENT, 0)}
  val patricia_casts_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG word_ptree_Axiom,
           case_def=word_ptree_case_def,
           case_cong=word_ptree_case_cong,
           induction=ORIG word_ptree_induction,
           nchotomy=word_ptree_nchotomy,
           size=SOME(Parse.Term`(patricia_casts$word_ptree_size) :('a -> (num$num)) ->
('b -> (num$num)) -> (('a, 'b) patricia_casts$word_ptree) -> (num$num)`,
                     ORIG word_ptree_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME word_ptree_11,
           distinct=NONE,
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
    thy = "patricia_casts",
    thydataty = "simp",
    data =
        "patricia_casts.THE_PTREE_def patricia_casts.THE_PTREE_SOME_PTREE"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "patricia_casts",
    thydataty = "compute",
    data =
        "patricia_casts.SKIP1_def patricia_casts.STRINGSET_OF_PTREE_def patricia_casts.THE_PTREE_SOME_PTREE patricia_casts.ADD_INSERT_STRING patricia_casts.ADD_INSERT_WORD pred_set.IMAGE_UNION pred_set.IMAGE_INSERT pred_set.IMAGE_EMPTY patricia_casts.PTREE_OF_WORDSET_def patricia_casts.UNION_PTREEw_def patricia_casts.WORDSET_OF_PTREE_def patricia_casts.INSERT_PTREEw_def patricia_casts.IN_PTREEw_def patricia_casts.DEPTHw_def patricia_casts.SIZEw_def patricia_casts.EXISTS_LEAFw_def patricia_casts.EVERY_LEAFw_def patricia_casts.TRANSFORMw_def patricia_casts.KEYSw_def patricia_casts.TRAVERSEw_def patricia_casts.REMOVEw_def patricia_casts.ADD_LISTw_def patricia_casts.ADDw_def patricia_casts.FINDw_def patricia_casts.PEEKw_def patricia_casts.WordEmpty_def patricia_casts.THE_PTREE_def patricia_casts.PTREE_OF_STRINGSET_def patricia_casts.TRAVERSEs_def patricia_casts.INSERT_PTREEs_def patricia_casts.IN_PTREEs_def patricia_casts.KEYSs_def patricia_casts.num_to_string_def patricia_casts.REMOVEs_def patricia_casts.ADD_LISTs_def patricia_casts.ADDs_def patricia_casts.FINDs_def patricia_casts.PEEKs_def patricia_casts.string_to_num_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "patricia_casts"
end
