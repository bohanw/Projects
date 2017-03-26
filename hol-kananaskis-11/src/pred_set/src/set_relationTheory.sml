structure set_relationTheory :> set_relationTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading set_relationTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open pred_setTheory
  in end;
  val _ = Theory.link_parents
          ("set_relation",
          Arbnum.fromString "1488586303",
          Arbnum.fromString "649331")
          [("pred_set",
           Arbnum.fromString "1488586210",
           Arbnum.fromString "643996")];
  val _ = Theory.incorporate_types "set_relation" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("num", "num"), ID("option", "option"), ID("bool", "!"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("pred_set", "BIGUNION"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("pred_set", "CHOICE"), ID("bool", "COND"),
   ID("pred_set", "DELETE"), ID("pred_set", "DIFF"),
   ID("pred_set", "DISJOINT"), ID("pred_set", "EMPTY"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("pred_set", "GSPEC"),
   ID("combin", "I"), ID("pred_set", "IMAGE"), ID("bool", "IN"),
   ID("pred_set", "INJ"), ID("pred_set", "INSERT"),
   ID("pred_set", "INTER"), ID("bool", "LET"), ID("option", "NONE"),
   ID("arithmetic", "NUMERAL"), ID("relation", "O"),
   ID("relation", "RDOM"), ID("pred_set", "REL_RESTRICT"),
   ID("relation", "RRANGE"), ID("set_relation", "RREFL_EXP"),
   ID("set_relation", "RRUNIV"), ID("relation", "RSUBSET"),
   ID("relation", "RUNION"), ID("pred_set", "SING"), ID("pair", "SND"),
   ID("option", "SOME"), ID("relation", "STRORD"),
   ID("pred_set", "SUBSET"), ID("num", "SUC"),
   ID("relation", "StrongLinearOrder"), ID("relation", "TC"),
   ID("option", "THE"), ID("pair", "UNCURRY"), ID("pred_set", "UNION"),
   ID("pred_set", "UNIV"), ID("relation", "WF"), ID("relation", "WFREC"),
   ID("relation", "WeakLinearOrder"), ID("relation", "WeakOrder"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("set_relation", "acyclic"), ID("set_relation", "all_choices"),
   ID("set_relation", "antisym"), ID("relation", "antisymmetric"),
   ID("set_relation", "chain"), ID("pred_set", "countable"),
   ID("set_relation", "domain"), ID("set_relation", "fchains"),
   ID("set_relation", "finite_prefixes"), ID("set_relation", "get_min"),
   ID("relation", "irreflexive"), ID("set_relation", "irreflexive"),
   ID("set_relation", "linear_order"),
   ID("set_relation", "maximal_elements"),
   ID("set_relation", "minimal_elements"), ID("set_relation", "nth_min"),
   ID("set_relation", "nth_min_tupled"), ID("arithmetic", "num_CASE"),
   ID("set_relation", "num_order"), ID("pair", "pair_CASE"),
   ID("set_relation", "partial_order"), ID("set_relation", "per"),
   ID("set_relation", "per_restrict"), ID("set_relation", "range"),
   ID("set_relation", "rcomp"), ID("relation", "reflexive"),
   ID("set_relation", "reflexive"), ID("set_relation", "rel_to_reln"),
   ID("set_relation", "reln_to_rel"), ID("set_relation", "rrestrict"),
   ID("set_relation", "strict"), ID("set_relation", "strict_linear_order"),
   ID("set_relation", "tc"), ID("relation", "transitive"),
   ID("set_relation", "transitive"), ID("set_relation", "univ_reln"),
   ID("set_relation", "upper_bounds"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYV "'b", TYOP [2, 3, 1],
   TYOP [0, 4, 0], TYOP [0, 5, 2], TYOP [0, 3, 0], TYOP [0, 7, 6],
   TYOP [2, 1, 1], TYOP [0, 9, 0], TYOP [0, 2, 10], TYOP [0, 10, 0],
   TYOP [0, 10, 10], TYOP [0, 2, 0], TYOP [0, 10, 14], TYOP [0, 10, 11],
   TYOP [0, 1, 7], TYOP [2, 1, 3], TYOP [0, 18, 0], TYOP [0, 19, 17],
   TYOP [0, 17, 19], TYV "'c", TYOP [2, 22, 3], TYOP [0, 23, 0],
   TYOP [0, 24, 19], TYOP [2, 1, 22], TYOP [0, 26, 0], TYOP [0, 27, 25],
   TYOP [0, 2, 14], TYOP [0, 14, 29], TYOP [0, 14, 0], TYOP [0, 2, 31],
   TYOP [3], TYOP [0, 1, 33], TYOP [0, 34, 11], TYOP [4, 1],
   TYOP [2, 2, 10], TYOP [2, 37, 33], TYOP [2, 10, 38], TYOP [0, 39, 36],
   TYOP [0, 33, 36], TYOP [0, 37, 41], TYOP [0, 10, 42], TYOP [0, 10, 2],
   TYOP [0, 2, 44], TYOP [0, 37, 36], TYOP [0, 10, 46], TYOP [0, 7, 0],
   TYOP [0, 19, 48], TYOP [0, 19, 2], TYOP [0, 2, 12], TYOP [0, 14, 14],
   TYOP [0, 1, 2], TYOP [0, 2, 53], TYOP [0, 53, 54], TYOP [0, 33, 0],
   TYOP [0, 37, 56], TYOP [0, 10, 57], TYOP [0, 39, 0], TYOP [0, 39, 59],
   TYOP [0, 2, 1], TYOP [0, 1, 3], TYOP [2, 3, 22], TYOP [0, 63, 0],
   TYOP [0, 22, 0], TYOP [0, 62, 0], TYOP [0, 66, 0], TYOP [0, 53, 0],
   TYOP [0, 68, 0], TYOP [0, 17, 0], TYOP [0, 70, 0], TYOP [0, 34, 0],
   TYOP [0, 72, 0], TYOP [0, 48, 0], TYOP [0, 65, 0], TYOP [0, 75, 0],
   TYOP [0, 31, 0], TYOP [0, 12, 0], TYOP [0, 78, 0], TYOP [0, 58, 0],
   TYOP [0, 80, 0], TYOP [0, 56, 0], TYOP [0, 82, 0], TYOP [0, 41, 0],
   TYOP [0, 84, 0], TYOP [0, 19, 0], TYOP [0, 86, 0], TYOP [0, 27, 0],
   TYOP [0, 88, 0], TYOP [0, 5, 0], TYOP [0, 90, 0], TYOP [0, 64, 0],
   TYOP [0, 92, 0], TYOP [0, 24, 0], TYOP [0, 94, 0], TYOP [0, 36, 0],
   TYOP [0, 96, 0], TYOP [0, 37, 0], TYOP [0, 98, 0], TYOP [0, 1, 9],
   TYOP [0, 1, 100], TYOP [0, 3, 18], TYOP [0, 1, 102], TYOP [0, 22, 26],
   TYOP [0, 1, 104], TYOP [2, 1, 0], TYOP [0, 0, 106], TYOP [0, 1, 107],
   TYOP [0, 1, 4], TYOP [0, 3, 109], TYOP [2, 3, 3], TYOP [0, 3, 111],
   TYOP [0, 3, 112], TYOP [0, 22, 63], TYOP [0, 3, 114], TYOP [2, 3, 0],
   TYOP [0, 0, 116], TYOP [0, 3, 117], TYOP [0, 3, 23], TYOP [0, 22, 119],
   TYOP [2, 2, 0], TYOP [0, 0, 121], TYOP [0, 2, 122], TYOP [0, 10, 37],
   TYOP [0, 2, 124], TYOP [0, 38, 39], TYOP [0, 10, 126], TYOP [2, 9, 0],
   TYOP [0, 0, 128], TYOP [0, 9, 129], TYOP [2, 18, 0], TYOP [0, 0, 131],
   TYOP [0, 18, 132], TYOP [2, 111, 0], TYOP [0, 0, 134],
   TYOP [0, 111, 135], TYOP [0, 33, 38], TYOP [0, 37, 137],
   TYOP [0, 33, 33], TYOP [0, 33, 139], TYOP [0, 0, 0], TYOP [0, 0, 141],
   TYOP [0, 33, 56], TYOP [0, 3, 7], TYOP [0, 53, 68], TYOP [0, 17, 70],
   TYOP [0, 14, 31], TYOP [0, 13, 0], TYOP [0, 13, 148], TYOP [0, 10, 12],
   TYOP [0, 19, 86], TYOP [0, 40, 0], TYOP [0, 40, 152], TYOP [0, 36, 96],
   TYOP [0, 9, 10], TYOP [0, 60, 0], TYOP [0, 156, 60], TYOP [0, 14, 2],
   TYOP [0, 12, 10], TYOP [0, 36, 36], TYOP [0, 36, 160], TYOP [0, 0, 161],
   TYOP [0, 2, 2], TYOP [0, 2, 163], TYOP [0, 7, 48], TYOP [0, 18, 1],
   TYOP [0, 1, 106], TYOP [0, 167, 2], TYOP [0, 1, 128], TYOP [0, 169, 10],
   TYOP [0, 3, 116], TYOP [0, 171, 7], TYOP [0, 2, 121], TYOP [0, 173, 14],
   TYOP [0, 61, 121], TYOP [0, 175, 14], TYOP [0, 9, 128],
   TYOP [0, 177, 10], TYOP [0, 111, 0], TYOP [0, 9, 134],
   TYOP [0, 180, 179], TYOP [0, 18, 131], TYOP [0, 182, 19],
   TYOP [0, 2, 7], TYOP [0, 62, 184], TYOP [0, 61, 158], TYOP [0, 163, 52],
   TYOP [0, 1, 14], TYOP [0, 3, 48], TYOP [0, 22, 75], TYOP [0, 10, 78],
   TYOP [0, 9, 12], TYOP [0, 18, 86], TYOP [0, 26, 88], TYOP [0, 4, 90],
   TYOP [0, 63, 92], TYOP [0, 23, 94], TYOP [0, 2, 82], TYOP [0, 34, 198],
   TYOP [0, 1, 163], TYOP [0, 7, 7], TYOP [0, 7, 201], TYOP [0, 2, 36],
   TYOP [0, 203, 203], TYOP [0, 160, 160], TYOP [0, 1, 65],
   TYOP [0, 206, 17], TYOP [0, 22, 7], TYOP [0, 208, 207], TYOP [0, 17, 2],
   TYOP [0, 3, 2], TYOP [0, 211, 2], TYOP [0, 53, 53], TYOP [0, 53, 213],
   TYOP [0, 18, 3], TYOP [0, 1, 36], TYOP [0, 36, 1], TYOP [0, 1, 169],
   TYOP [0, 218, 177], TYOP [0, 1, 134], TYOP [0, 1, 220],
   TYOP [0, 221, 180], TYOP [0, 3, 131], TYOP [0, 1, 223],
   TYOP [0, 224, 182], TYOP [0, 10, 13], TYOP [0, 19, 19],
   TYOP [0, 19, 227], TYOP [0, 40, 40], TYOP [0, 229, 40],
   TYOP [0, 60, 230], TYOP [0, 27, 75], TYOP [0, 179, 48],
   TYOP [0, 64, 75], TYOP [0, 41, 36], TYOP [0, 36, 235],
   TYOP [0, 33, 236], TYOP [0, 10, 36], TYOP [0, 2, 238],
   TYOP [0, 239, 36], TYOP [0, 37, 240], TYOP [0, 38, 36],
   TYOP [0, 10, 242], TYOP [0, 243, 36], TYOP [0, 39, 244],
   TYOP [0, 42, 36], TYOP [0, 38, 246], TYOP [0, 19, 7], TYOP [0, 64, 27],
   TYOP [0, 19, 249], TYOP [0, 53, 10], TYOP [0, 10, 53],
   TYOP [0, 27, 206], TYOP [0, 5, 211], TYOP [0, 24, 208]]
  end
  val _ = Theory.incorporate_consts "set_relation" tyvector
     [("upper_bounds", 8), ("univ_reln", 11), ("transitive", 12),
      ("tc", 13), ("strict_linear_order", 15), ("strict", 13),
      ("rrestrict", 16), ("reln_to_rel", 20), ("rel_to_reln", 21),
      ("reflexive", 15), ("rcomp", 28), ("range", 6), ("per_restrict", 30),
      ("per", 32), ("partial_order", 15), ("num_order", 35),
      ("nth_min_tupled", 40), ("nth_min", 43), ("minimal_elements", 45),
      ("maximal_elements", 45), ("linear_order", 15), ("irreflexive", 15),
      ("get_min", 47), ("finite_prefixes", 49), ("fchains", 15),
      ("domain", 50), ("chain", 51), ("antisym", 12), ("all_choices", 52),
      ("acyclic", 12), ("RRUNIV", 54), ("RREFL_EXP", 55)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("C", 2), TMV("P", 58), TMV("R", 53), TMV("R", 17), TMV("R", 60),
   TMV("R1", 17), TMV("R2", 17), TMV("a", 39), TMV("a0", 9),
   TMV("choice", 61), TMV("e", 1), TMV("e", 3), TMV("e'", 1), TMV("es", 2),
   TMV("f", 62), TMV("f", 34), TMV("f", 41), TMV("k", 2), TMV("m", 33),
   TMV("min", 36), TMV("mins", 2), TMV("n", 33), TMV("nth_min_tupled", 40),
   TMV("r", 14), TMV("r", 10), TMV("r", 19), TMV("r", 5), TMV("r'", 10),
   TMV("r1", 10), TMV("r1", 19), TMV("r1", 27), TMV("r2", 10),
   TMV("r2", 19), TMV("r2", 64), TMV("r2", 24), TMV("rs", 12), TMV("s", 2),
   TMV("s", 7), TMV("s", 14), TMV("s", 19), TMV("s'", 2), TMV("s1", 7),
   TMV("s2", 7), TMV("s2", 65), TMV("t", 2), TMV("t", 7), TMV("t", 56),
   TMV("t", 19), TMV("tc'", 53), TMV("tc'", 10), TMV("v", 10),
   TMV("v1", 2), TMV("v1", 38), TMV("v2", 10), TMV("v2", 37),
   TMV("v3", 33), TMV("x", 1), TMV("x", 3), TMV("x", 2), TMV("x", 10),
   TMV("x'", 1), TMV("x1", 1), TMV("x1", 37), TMV("x2", 1), TMV("x2", 33),
   TMV("xs", 2), TMV("xs'", 2), TMV("xs1", 2), TMV("xs2", 2),
   TMV("xss", 14), TMV("xy", 18), TMV("y", 1), TMV("y", 3), TMV("y", 22),
   TMV("y", 2), TMV("z", 1), TMV("z", 22), TMV("z", 2), TMC(5, 14),
   TMC(5, 48), TMC(5, 67), TMC(5, 31), TMC(5, 69), TMC(5, 71), TMC(5, 73),
   TMC(5, 74), TMC(5, 76), TMC(5, 77), TMC(5, 79), TMC(5, 81), TMC(5, 83),
   TMC(5, 85), TMC(5, 78), TMC(5, 87), TMC(5, 89), TMC(5, 91), TMC(5, 93),
   TMC(5, 95), TMC(5, 82), TMC(5, 97), TMC(5, 12), TMC(5, 99), TMC(6, 101),
   TMC(6, 103), TMC(6, 105), TMC(6, 108), TMC(6, 110), TMC(6, 113),
   TMC(6, 115), TMC(6, 118), TMC(6, 120), TMC(6, 123), TMC(6, 125),
   TMC(6, 127), TMC(6, 130), TMC(6, 133), TMC(6, 136), TMC(6, 138),
   TMC(7, 140), TMC(8, 142), TMC(9, 33), TMC(10, 143), TMC(11, 53),
   TMC(11, 144), TMC(11, 142), TMC(11, 29), TMC(11, 145), TMC(11, 146),
   TMC(11, 147), TMC(11, 149), TMC(11, 150), TMC(11, 151), TMC(11, 153),
   TMC(11, 143), TMC(11, 154), TMC(11, 155), TMC(12, 142), TMC(13, 14),
   TMC(13, 48), TMC(13, 75), TMC(13, 31), TMC(13, 78), TMC(13, 82),
   TMC(14, 157), TMC(15, 158), TMC(15, 159), TMC(16, 139), TMC(17, 139),
   TMC(18, 61), TMC(19, 162), TMC(20, 54), TMC(20, 30), TMC(21, 164),
   TMC(22, 29), TMC(22, 165), TMC(23, 2), TMC(23, 10), TMC(24, 14),
   TMC(25, 166), TMC(26, 168), TMC(26, 170), TMC(26, 172), TMC(26, 174),
   TMC(26, 176), TMC(26, 178), TMC(26, 181), TMC(26, 183), TMC(27, 160),
   TMC(28, 185), TMC(28, 186), TMC(28, 187), TMC(29, 188), TMC(29, 189),
   TMC(29, 190), TMC(29, 32), TMC(29, 191), TMC(29, 192), TMC(29, 193),
   TMC(29, 194), TMC(29, 195), TMC(29, 196), TMC(29, 197), TMC(30, 199),
   TMC(31, 200), TMC(32, 164), TMC(32, 202), TMC(33, 204), TMC(33, 205),
   TMC(34, 36), TMC(35, 139), TMC(36, 209), TMC(37, 210), TMC(38, 55),
   TMC(39, 212), TMC(40, 55), TMC(41, 54), TMC(42, 145), TMC(43, 214),
   TMC(44, 14), TMC(45, 215), TMC(46, 216), TMC(47, 213), TMC(48, 29),
   TMC(48, 165), TMC(48, 150), TMC(49, 139), TMC(50, 68), TMC(51, 213),
   TMC(52, 217), TMC(53, 219), TMC(53, 222), TMC(53, 225), TMC(54, 164),
   TMC(54, 202), TMC(54, 226), TMC(54, 228), TMC(55, 2), TMC(56, 68),
   TMC(56, 156), TMC(57, 231), TMC(58, 68), TMC(59, 68), TMC(60, 33),
   TMC(61, 142), TMC(62, 12), TMC(63, 52), TMC(64, 12), TMC(65, 68),
   TMC(66, 51), TMC(67, 14), TMC(67, 31), TMC(68, 44), TMC(68, 50),
   TMC(69, 15), TMC(70, 15), TMC(70, 49), TMC(70, 232), TMC(70, 233),
   TMC(70, 234), TMC(71, 47), TMC(72, 68), TMC(73, 15), TMC(74, 15),
   TMC(75, 45), TMC(76, 45), TMC(77, 43), TMC(78, 40), TMC(79, 237),
   TMC(80, 35), TMC(81, 241), TMC(81, 245), TMC(81, 247), TMC(82, 15),
   TMC(83, 32), TMC(84, 30), TMC(85, 44), TMC(85, 248), TMC(85, 6),
   TMC(86, 250), TMC(86, 28), TMC(87, 68), TMC(88, 15), TMC(89, 251),
   TMC(89, 21), TMC(90, 252), TMC(90, 20), TMC(90, 253), TMC(90, 254),
   TMC(90, 255), TMC(91, 16), TMC(92, 13), TMC(93, 15), TMC(94, 13),
   TMC(95, 68), TMC(96, 12), TMC(97, 11), TMC(98, 45), TMC(98, 8),
   TMC(99, 141)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op domain_def x = x
    val op domain_def =
    DT(((("set_relation",1),[]),[]),
       [read"%93%25%125%232$0@@%159%56%105$0@%138%72%177%103$1@$0@@$2@|@@|@@|@"])
  fun op range_def x = x
    val op range_def =
    DT(((("set_relation",2),[]),[]),
       [read"%95%26%125%257$0@@%159%71%105$0@%138%57%179%106$0@$1@@$2@|@@|@@|@"])
  fun op rrestrict_def x = x
    val op rrestrict_def =
    DT(((("set_relation",5),[]),[]),
       [read"%92%24%81%36%130%269$1@$0@@%164%209%56%71%114%102$1@$0@@%119%176%102$1@$0@@$3@@%119%171$1@$2@@%171$0@$2@@@@||@@@|@|@"])
  fun op rcomp_def x = x
    val op rcomp_def =
    DT(((("set_relation",9),[]),[]),
       [read"%94%30%97%34%131%259$1@$0@@%166%211%56%72%115%103$1@$0@@%139%76%119%178%104$2@$0@@$4@@%181%110$0@$1@@$3@@|@@||@@@|@|@"])
  fun op strict_def x = x
    val op strict_def =
    DT(((("set_relation",10),[]),[]),
       [read"%92%24%130%270$0@@%164%209%56%71%114%102$1@$0@@%119%176%102$1@$0@@$2@@%278%122$1@$0@@@@||@@@|@"])
  fun op univ_reln_def x = x
    val op univ_reln_def =
    DT(((("set_relation",12),[]),[]),
       [read"%81%65%130%275$0@@%164%209%61%63%114%102$1@$0@@%119%171$1@$2@@%171$0@$2@@@||@@@|@"])
  fun op finite_prefixes_def x = x
    val op finite_prefixes_def =
    DT(((("set_relation",13),[]),[]),
       [read"%93%25%85%37%124%235$1@$0@@%79%11%136%172$0@$1@@%157%159%12%105$0@%177%103$0@$1@@$3@@|@@@|@@|@|@"])
  fun op tc_def x = x
    val op tc_def =
    DT(((("set_relation",20),[]),[]),
       [read"%129%272@%24%8%92%49%136%100%8%136%223%137%56%137%71%119%135$2@%102$1@$0@@@$5%102$1@$0@@@|@|@@%137%56%137%71%119%135$2@%102$1@$0@@@%137%75%119$4%102$2@$0@@@$4%102$0@$1@@@|@@|@|@@@$1$0@@|@@$0$1@@|@||@"])
  fun op acyclic_def x = x
    val op acyclic_def =
    DT(((("set_relation",41),[]),[]),
       [read"%92%24%124%224$0@@%78%56%278%176%102$0@$0@@%272$1@@@|@@|@"])
  fun op maximal_elements_def x = x
    val op maximal_elements_def =
    DT(((("set_relation",48),[]),[]),
       [read"%81%65%92%24%125%243$1@$0@@%159%56%105$0@%119%171$0@$2@@%78%60%136%119%171$0@$3@@%176%102$1@$0@@$2@@@%122$1@$0@@|@@@|@@|@|@"])
  fun op minimal_elements_def x = x
    val op minimal_elements_def =
    DT(((("set_relation",49),[]),[]),
       [read"%81%65%92%24%125%244$1@$0@@%159%56%105$0@%119%171$0@$2@@%78%60%136%119%171$0@$3@@%176%102$0@$1@@$2@@@%122$1@$0@@|@@@|@@|@|@"])
  fun op reflexive_def x = x
    val op reflexive_def =
    DT(((("set_relation",58),[]),[]),
       [read"%92%24%81%36%124%261$1@$0@@%78%56%136%171$0@$1@@%176%102$0@$0@@$2@@|@@|@|@"])
  fun op irreflexive_def x = x
    val op irreflexive_def =
    DT(((("set_relation",59),[]),[]),
       [read"%92%24%81%36%124%241$1@$0@@%78%56%136%171$0@$1@@%278%176%102$0@$0@@$2@@@|@@|@|@"])
  fun op transitive_def x = x
    val op transitive_def =
    DT(((("set_relation",60),[]),[]),
       [read"%92%24%124%274$0@@%78%56%78%71%78%75%136%119%176%102$2@$1@@$3@@%176%102$1@$0@@$3@@@%176%102$2@$0@@$3@@|@|@|@@|@"])
  fun op antisym_def x = x
    val op antisym_def =
    DT(((("set_relation",63),[]),[]),
       [read"%92%24%124%226$0@@%78%56%78%71%136%119%176%102$1@$0@@$2@@%176%102$0@$1@@$2@@@%122$1@$0@@|@|@@|@"])
  fun op partial_order_def x = x
    val op partial_order_def =
    DT(((("set_relation",64),[]),[]),
       [read"%92%24%81%36%124%252$1@$0@@%119%202%231$1@@$0@@%119%202%255$1@@$0@@%119%274$1@@%119%261$1@$0@@%226$1@@@@@@|@|@"])
  fun op linear_order_def x = x
    val op linear_order_def =
    DT(((("set_relation",70),[]),[]),
       [read"%92%24%81%36%124%242$1@$0@@%119%202%231$1@@$0@@%119%202%255$1@@$0@@%119%274$1@@%119%226$1@@%78%56%78%71%136%119%171$1@$2@@%171$0@$2@@@%223%176%102$1@$0@@$3@@%176%102$0@$1@@$3@@@|@|@@@@@@|@|@"])
  fun op strict_linear_order_def x = x
    val op strict_linear_order_def =
    DT(((("set_relation",73),[]),[]),
       [read"%92%24%81%36%124%271$1@$0@@%119%202%231$1@@$0@@%119%202%255$1@@$0@@%119%274$1@@%119%78%56%278%176%102$0@$0@@$2@@|@@%78%56%78%71%136%119%171$1@$2@@%119%171$0@$2@@%278%122$1@$0@@@@@%223%176%102$1@$0@@$3@@%176%102$0@$1@@$3@@@|@|@@@@@@|@|@"])
  fun op chain_def x = x
    val op chain_def =
    DT(((("set_relation",94),[]),[]),
       [read"%81%36%92%24%124%228$1@$0@@%78%56%78%71%136%119%171$1@$3@@%171$0@$3@@@%223%176%102$1@$0@@$2@@%176%102$0@$1@@$2@@@|@|@@|@|@"])
  fun op upper_bounds_def x = x
    val op upper_bounds_def =
    DT(((("set_relation",95),[]),[]),
       [read"%85%37%95%26%125%277$1@$0@@%159%56%105$0@%119%171$0@%257$1@@@%79%72%136%172$0@$3@@%179%106$0@$1@@$2@@|@@@|@@|@|@"])
  fun op fchains_def x = x
    val op fchains_def =
    DT(((("set_relation",97),[]),[]),
       [read"%92%24%128%233$0@@%162%17%111$0@%119%228$0@$1@@%119%278%125$0@%155@@@%81%0%136%119%228$0@$2@@%119%202$0@$1@@%278%125%184%152%276$0@$2@@$0@@$1@@%155@@@@@%171%148%152%276$0@$2@@$0@@@%244%184%152%276$0@$2@@$0@@$1@@$2@@@|@@@@|@@|@"])
  fun op per_def x = x
    val op per_def =
    DT(((("set_relation",99),[]),[]),
       [read"%81%65%87%69%124%253$1@$0@@%119%202%144$0@@$1@@%119%278%174%155@$0@@@%81%67%81%68%136%119%174$1@$2@@%119%174$0@$2@@%278%125$1@$0@@@@@%153$1@$0@@|@|@@@@|@|@"])
  fun op per_restrict_def x = x
    val op per_restrict_def =
    DT(((("set_relation",100),[]),[]),
       [read"%87%69%81%65%128%254$1@$0@@%151%162%66%111%184$0@$1@@%174$0@$2@@|@@%155@@|@|@"])
  fun op all_choices_def x = x
    val op all_choices_def =
    DT(((("set_relation",104),[]),[]),
       [read"%87%69%128%225$0@@%163%9%111%169$0@$1@@%81%65%136%174$0@$2@@%171$1$0@@$0@@|@@|@@|@"])
  fun op num_order_def x = x
    val op num_order_def =
    DT(((("set_relation",106),[]),[]),
       [read"%84%15%81%36%130%248$1@$0@@%164%209%56%71%114%102$1@$0@@%119%171$1@$2@@%119%171$0@$2@@%121$3$1@@$3$0@@@@@||@@@|@|@"])
  fun op get_min_def x = x
    val op get_min_def =
    DT(((("set_relation",109),[("pair",[16])]),["DISK_THM"]),
       [read"%92%27%81%36%92%24%134%239$2@%112$1@$0@@@%186%20%149%198$0@@%200%148$0@@@%188@|@%244%244$1@$0@@$2@@@|@|@|@"])
  fun op nth_min_tupled_primitive_def x = x
    val op nth_min_tupled_primitive_def =
    DT(((("set_relation",110),[]),[]),
       [read"%132%246@%219%143%4%119%218$0@@%98%21%92%24%81%36%92%27%99%19%136%119%134$0@%239$1@%112$2@$3@@@@%278%134$0@%188@@@@$5%113$1@%117%112%150$2@%208$0@@@$3@@$4@@@%113$1@%117%112$2@$3@@%205$4@@@@@|@|@|@|@|@@|@@%22%7%250$0@%27%52%251$0@%54%55%249$1@%36%24%247$2@%167%239$5@%112$1@$0@@@@%21%167%187%19%149%134$0@%188@@%188@$9%113$7@%117%112%150$3@%208$0@@@$2@@$1@@@@|@%239$6@%112$2@$1@@@@|@||@||@||@||@@"])
  fun op nth_min_curried_def x = x
    val op nth_min_curried_def =
    DT(((("set_relation",111),[]),[]),
       [read"%92%59%101%62%98%64%134%245$2@$1@$0@@%246%113$2@%117$1@$0@@@@|@|@|@"])
  fun op reln_to_rel_def x = x
    val op reln_to_rel_def =
    DT(((("set_relation",116),[]),[]),
       [read"%93%25%127%265$0@@%56%72%177%103$1@$0@@$2@||@|@"])
  fun op rel_to_reln_def x = x
    val op rel_to_reln_def =
    DT(((("set_relation",117),[]),[]),
       [read"%83%3%131%263$0@@%166%211%56%72%115%103$1@$0@@$2$1@$0@@||@@@|@"])
  fun op RRUNIV_def x = x
    val op RRUNIV_def =
    DT(((("set_relation",118),[]),[]),
       [read"%81%36%126%195$0@@%56%71%119%171$1@$2@@%171$0@$2@@||@|@"])
  fun op RREFL_EXP_def x = x
    val op RREFL_EXP_def =
    DT(((("set_relation",119),[]),[]),
       [read"%82%2%81%36%126%194$1@$0@@%197$1@%56%71%119%122$1@$0@@%278%171$1@$2@@@||@@|@|@"])
  fun op reflexive_reln_to_rel_conv_UNIV x = x
    val op reflexive_reln_to_rel_conv_UNIV =
    DT(((("set_relation",141),
        [("bool",[25,56]),("set_relation",[121,140])]),["DISK_THM"]),
       [read"%124%261%24@%216@@%260%264%24@@@"])
  fun op rcomp_to_rel_conv x = x
    val op rcomp_to_rel_conv =
    DT(((("set_relation",134),
        [("bool",[25,26,36,56,58,63,143]),("pair",[3,4,7,8,9,16]),
         ("pred_set",[6]),("relation",[162]),
         ("set_relation",[0,9,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%131%259%30@%34@@%263%190%268%34@@%266%30@@@@"])
  fun op acyclic_bigunion x = x
    val op acyclic_bigunion =
    DT(((("set_relation",46),
        [("bool",
         [2,25,26,27,36,51,53,54,58,63,71,73,75,83,84,86,96,99,100,105,
          124]),("pred_set",[3,10,45,57,64,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[25,27,39,41])]),["DISK_THM"]),
       [read"%88%35%136%119%92%24%92%27%136%119%175$1@$2@@%119%175$0@$2@@%278%130$1@$0@@@@@%153%212%231$1@@%255$1@@@%212%231$0@@%255$0@@@@|@|@@%92%24%136%175$0@$1@@%224$0@@|@@@%224%145$0@@@|@"])
  fun op acyclic_irreflexive x = x
    val op acyclic_irreflexive =
    DT(((("set_relation",45),
        [("bool",[2,15,25,26,53,54,58,63,74,75,84,99,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("set_relation",[26,41])]),["DISK_THM"]),
       [read"%92%24%78%56%136%224$1@@%278%176%102$0@$0@@$1@@@|@|@"])
  fun op acyclic_rrestrict x = x
    val op acyclic_rrestrict =
    DT(((("set_relation",44),
        [("bool",[14,25,26,36,53,54,56,58,63,100,105,124,143]),
         ("combin",[1,3,5,19]),("pair",[3,4,7,16]),("pred_set",[6,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[0,5,43])]),["DISK_THM"]),
       [read"%92%24%81%36%136%224$1@@%224%269$1@$0@@@|@|@"])
  fun op tc_ind x = x
    val op tc_ind =
    DT(((("set_relation",27),
        [("bool",[14,25,26,53,58,105,124,132,133,138]),("pair",[16,23,33]),
         ("pred_set",[0]),("set_relation",[20])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%78%71%136%176%102$1@$0@@$3@@$2$1@$0@@|@|@@%78%56%78%71%136%137%75%119$3$2@$0@@$3$0@$1@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op rextension x = x
    val op rextension =
    DT(((("set_relation",0),
        [("bool",[25,26,36,53,56,58,105,124]),("pair",[5]),
         ("pred_set",[3])]),["DISK_THM"]),
       [read"%93%39%93%47%124%131$1@$0@@%78%56%79%72%124%177%103$1@$0@@$3@@%177%103$1@$0@@$2@@|@|@@|@|@"])
  fun op in_domain x = x
    val op in_domain =
    DT(((("set_relation",3),
        [("bool",[25,26,56,63]),("pair",[3]),("pred_set",[6]),
         ("set_relation",[1])]),["DISK_THM"]),
       [read"%78%56%93%25%124%171$1@%232$0@@@%138%72%177%103$2@$0@@$1@|@@|@|@"])
  fun op in_range x = x
    val op in_range =
    DT(((("set_relation",4),
        [("bool",[25,26,56,63]),("pair",[3]),("pred_set",[6]),
         ("set_relation",[2])]),["DISK_THM"]),
       [read"%78%71%95%26%124%171$1@%257$0@@@%138%57%179%106$0@$2@@$1@|@@|@|@"])
  fun op in_rrestrict x = x
    val op in_rrestrict =
    DT(((("set_relation",6),
        [("bool",[25,26,56,58,63,143]),("pair",[3,4,7,16]),
         ("pred_set",[6]),("set_relation",[5])]),["DISK_THM"]),
       [read"%78%56%78%71%92%24%81%36%124%176%102$3@$2@@%269$1@$0@@@%119%176%102$3@$2@@$1@@%119%171$3@$0@@%171$2@$0@@@@|@|@|@|@"])
  fun op rrestrict_union x = x
    val op rrestrict_union =
    DT(((("set_relation",7),
        [("bool",[25,26,30,53,54,55,58,63,73,99,100]),("pair",[3,7,16]),
         ("pred_set",[3,6,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[5])]),["DISK_THM"]),
       [read"%92%28%92%31%81%36%130%269%214$2@$1@@$0@@%214%269$2@$0@@%269$1@$0@@@|@|@|@"])
  fun op rrestrict_rrestrict x = x
    val op rrestrict_rrestrict =
    DT(((("set_relation",8),
        [("bool",[25,26,51,58,63,143]),("pair",[3,4,7,16]),
         ("pred_set",[3,6,45]),("set_relation",[5])]),["DISK_THM"]),
       [read"%92%24%81%58%81%74%130%269%269$2@$1@@$0@@%269$2@%184$1@$0@@@|@|@|@"])
  fun op strict_rrestrict x = x
    val op strict_rrestrict =
    DT(((("set_relation",11),
        [("bool",[25,26,30,53,54,55,58,63,143]),("pair",[3,4,7,16]),
         ("pred_set",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[5,10])]),["DISK_THM"]),
       [read"%92%24%81%36%130%270%269$1@$0@@@%269%270$1@@$0@@|@|@"])
  fun op finite_prefixes_subset x = x
    val op finite_prefixes_subset =
    DT(((("set_relation",15),
        [("bool",[25,26,36,51,53,58,63,105,124,143]),("pair",[3,4,7,16]),
         ("pred_set",[6,18,191,369,373]),
         ("set_relation",[5,13])]),["DISK_THM"]),
       [read"%92%24%81%36%81%40%136%119%234$2@$1@@%202$0@$1@@@%119%234$2@$0@@%234%269$2@$0@@$0@@@|@|@|@"])
  fun op finite_prefixes_union x = x
    val op finite_prefixes_union =
    DT(((("set_relation",16),
        [("bool",[25,36,51,53,58,63,105,124]),("pred_set",[33,45,190,374]),
         ("set_relation",[13])]),["DISK_THM"]),
       [read"%93%29%93%32%85%41%85%42%136%119%235$3@$1@@%235$2@$0@@@%235%215$3@$2@@%185$1@$0@@@|@|@|@|@"])
  fun op finite_prefixes_comp x = x
    val op finite_prefixes_comp =
    DT(((("set_relation",17),
        [("bool",[2,14,15,25,26,36,51,53,54,56,58,63,84,100,105,124,143]),
         ("combin",[1,3,5]),("pair",[3,4,7,16]),
         ("pred_set",[3,6,18,144,199,244,254]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[9,13])]),["DISK_THM"]),
       [read"%93%29%96%33%85%41%86%43%136%119%235$3@$1@@%119%238$2@$0@@%203%161%57%109$0@%139%73%119%173$0@$2@@%180%108$1@$0@@$4@@|@@|@@$1@@@@%236%258$3@$2@@$0@@|@|@|@|@"])
  fun op finite_prefixes_inj_image x = x
    val op finite_prefixes_inj_image =
    DT(((("set_relation",18),
        [("bool",[14,25,26,36,53,54,55,56,58,63,83,105,124]),
         ("combin",[1,3,5,19]),("pair",[3,4,7,16]),
         ("pred_set",[6,18,144,192,199]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[13])]),["DISK_THM"]),
       [read"%80%14%92%24%81%36%136%119%78%56%78%71%136%123$4$1@@$4$0@@@%122$1@$0@@|@|@@%234$1@$0@@@%237%165%210%56%71%116%107$4$1@@$4$0@@@%176%102$1@$0@@$3@@||@@@%168$2@$0@@@|@|@|@"])
  fun op finite_prefixes_range x = x
    val op finite_prefixes_range =
    DT(((("set_relation",19),
        [("bool",[14,25,26,27,36,53,54,56,58,63,72,84,96,105,124]),
         ("combin",[1,3,5]),("pair",[3]),
         ("pred_set",[3,6,10,33,45,57,185]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("set_relation",[2,13])]),["DISK_THM"]),
       [read"%93%25%85%37%85%45%136%119%235$2@$1@@%154$0@%256$2@@@@%235$2@%213$1@$0@@@|@|@|@"])
  fun op tc_rules x = x
    val op tc_rules =
    DT(((("set_relation",25),
        [("bool",[14,25,26,53,58,63,86,105,124,132,133,138]),
         ("pred_set",[0]),("set_relation",[20])]),["DISK_THM"]),
       [read"%92%24%119%78%56%78%71%136%176%102$1@$0@@$2@@%176%102$1@$0@@%272$2@@@|@|@@%78%56%78%71%136%137%75%119%176%102$2@$0@@%272$3@@@%176%102$0@$1@@%272$3@@@|@@%176%102$1@$0@@%272$2@@@|@|@@|@"])
  fun op tc_cases x = x
    val op tc_cases =
    DT(((("set_relation",26),
        [("bool",[14,25,26,53,56,58,132,133,138,143,169]),("pair",[4]),
         ("pred_set",[0]),("set_relation",[20])]),["DISK_THM"]),
       [read"%92%24%78%56%78%71%124%176%102$1@$0@@%272$2@@@%223%176%102$1@$0@@$2@@%137%75%119%176%102$2@$0@@%272$3@@@%176%102$0@$1@@%272$3@@@|@@@|@|@|@"])
  fun op tc_strongind x = x
    val op tc_strongind =
    DT(((("set_relation",28),
        [("bool",[58,105,124]),("pair",[16,23,33]),("pred_set",[0]),
         ("set_relation",[23])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%78%71%136%176%102$1@$0@@$3@@$2$1@$0@@|@|@@%78%56%78%71%136%137%75%119%176%102$2@$0@@%272$4@@@%119$3$2@$0@@%119%176%102$0@$1@@%272$4@@@$3$0@$1@@@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op tc_cases_right x = x
    val op tc_cases_right =
    DT(((("set_relation",29),
        [("bool",[2,15,25,26,52,53,54,58,63,73,75,83,84,99,100,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,27])]),["DISK_THM"]),
       [read"%92%24%78%56%78%71%124%176%102$1@$0@@%272$2@@@%223%176%102$1@$0@@$2@@%137%75%119%176%102$2@$0@@%272$3@@@%176%102$0@$1@@$3@@|@@@|@|@|@"])
  fun op tc_cases_left x = x
    val op tc_cases_left =
    DT(((("set_relation",30),
        [("bool",[2,15,25,26,52,53,54,58,63,73,75,83,84,99,100,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,27])]),["DISK_THM"]),
       [read"%92%24%78%56%78%71%124%176%102$1@$0@@%272$2@@@%223%176%102$1@$0@@$2@@%137%75%119%176%102$2@$0@@$3@@%176%102$0@$1@@%272$3@@@|@@@|@|@|@"])
  fun op tc_ind_left x = x
    val op tc_ind_left =
    DT(((("set_relation",31),
        [("bool",[2,15,25,26,51,53,54,58,63,74,83,84,99,100,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[27])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%78%71%136%176%102$1@$0@@$3@@$2$1@$0@@|@|@@%78%56%78%71%136%137%75%119%176%102$2@$0@@$4@@$3$0@$1@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op tc_strongind_left x = x
    val op tc_strongind_left =
    DT(((("set_relation",32),
        [("bool",
         [2,15,25,26,51,53,54,58,63,73,74,75,83,84,99,100,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,28])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%78%71%136%176%102$1@$0@@$3@@$2$1@$0@@|@|@@%78%56%78%71%136%137%75%119%176%102$2@$0@@$4@@%119%176%102$0@$1@@%272$4@@@$3$0@$1@@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op tc_ind_right x = x
    val op tc_ind_right =
    DT(((("set_relation",33),
        [("bool",[2,15,25,26,51,53,54,58,63,74,83,84,99,100,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[27])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%78%71%136%176%102$1@$0@@$3@@$2$1@$0@@|@|@@%78%56%78%71%136%137%75%119$3$2@$0@@%176%102$0@$1@@$4@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op rtc_ind_right x = x
    val op rtc_ind_right =
    DT(((("set_relation",34),
        [("bool",[25,26,53,54,58,63,73,84,86,99,105,124]),("pair",[3]),
         ("pred_set",[6]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[1,2,33])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%136%223%171$0@%231$2@@@%171$0@%255$2@@@@$1$0@$0@@|@@%78%56%78%71%136%137%75%119$3$2@$0@@%176%102$0@$1@@$4@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op tc_strongind_right x = x
    val op tc_strongind_right =
    DT(((("set_relation",35),
        [("bool",
         [2,15,25,26,51,53,54,58,63,73,74,75,83,84,99,100,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,28])]),["DISK_THM"]),
       [read"%92%24%82%48%136%119%78%56%78%71%136%176%102$1@$0@@$3@@$2$1@$0@@|@|@@%78%56%78%71%136%137%75%119%176%102$2@$0@@%272$4@@@%119$3$2@$0@@%176%102$0@$1@@$4@@@|@@$2$1@$0@@|@|@@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@$2$1@$0@@|@|@@|@|@"])
  fun op tc_union x = x
    val op tc_union =
    DT(((("set_relation",36),
        [("bool",[25,26,52,53,54,58,63,73,75,84,169]),("pred_set",[33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,26,27])]),["DISK_THM"]),
       [read"%78%56%78%71%136%176%102$1@$0@@%272%28@@@%92%31%176%102$2@$1@@%272%214%28@$0@@@|@@|@|@"])
  fun op tc_implication x = x
    val op tc_implication =
    DT(((("set_relation",37),
        [("bool",[2,15,25,26,53,54,58,63,73,75,83,84,99,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,27])]),["DISK_THM"]),
       [read"%92%28%92%31%136%78%56%78%71%136%176%102$1@$0@@$3@@%176%102$1@$0@@$2@@|@|@@%78%56%78%71%136%176%102$1@$0@@%272$3@@@%176%102$1@$0@@%272$2@@@|@|@@|@|@"])
  fun op tc_empty x = x
    val op tc_empty =
    DT(((("set_relation",38),
        [("bool",[25,26,27,36,52,53,54,72,96]),("pred_set",[10]),
         ("set_relation",[27])]),["DISK_THM"]),
       [read"%78%56%78%71%278%176%102$1@$0@@%272%156@@@|@|@"])
  fun op tc_domain_range x = x
    val op tc_domain_range =
    DT(((("set_relation",39),
        [("bool",[25,26,53,54,58,63,105,124]),("pair",[3]),
         ("pred_set",[6]),("sat",[1,3,7,17,18]),
         ("set_relation",[1,2,27])]),["DISK_THM"]),
       [read"%78%56%78%71%136%176%102$1@$0@@%272%24@@@%119%171$1@%231%24@@@%171$0@%255%24@@@@|@|@"])
  fun op rrestrict_tc x = x
    val op rrestrict_tc =
    DT(((("set_relation",40),
        [("bool",[25,26,53,54,58,63,73,75,84,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[5,25,27])]),["DISK_THM"]),
       [read"%78%10%78%12%136%176%102$1@$0@@%272%269%24@%58@@@@%176%102$1@$0@@%272%24@@@|@|@"])
  fun op acyclic_subset x = x
    val op acyclic_subset =
    DT(((("set_relation",42),
        [("bool",[2,15,25,26,53,54,58,63,73,75,83,84,99,100,105,124]),
         ("pred_set",[18]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,27,41])]),["DISK_THM"]),
       [read"%92%28%92%31%136%119%224$1@@%204$0@$1@@@%224$0@@|@|@"])
  fun op acyclic_union x = x
    val op acyclic_union =
    DT(((("set_relation",47),
        [("bool",[25,26,27,48,52,53,54,56,58,63,105,124]),
         ("pred_set",[10,41,59,64,80,246,251]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("set_relation",[46])]),["DISK_THM"]),
       [read"%92%24%92%27%136%119%153%212%231$1@@%255$1@@@%212%231$0@@%255$0@@@@%119%224$1@@%224$0@@@@%224%214$1@$0@@@|@|@"])
  fun op maximal_union x = x
    val op maximal_union =
    DT(((("set_relation",50),
        [("bool",[25,26,36,51,53,58,63,105,124]),("pair",[3]),
         ("pred_set",[6,33]),("set_relation",[48])]),["DISK_THM"]),
       [read"%78%10%81%36%92%28%92%31%136%171$3@%243$2@%214$1@$0@@@@%119%171$3@%243$2@$1@@@%171$3@%243$2@$0@@@@|@|@|@|@"])
  fun op minimal_union x = x
    val op minimal_union =
    DT(((("set_relation",51),
        [("bool",[25,26,36,51,53,58,63,105,124]),("pair",[3]),
         ("pred_set",[6,33]),("set_relation",[49])]),["DISK_THM"]),
       [read"%78%10%81%36%92%28%92%31%136%171$3@%244$2@%214$1@$0@@@@%119%171$3@%244$2@$1@@@%171$3@%244$2@$0@@@@|@|@|@|@"])
  fun op finite_acyclic_has_maximal x = x
    val op finite_acyclic_has_maximal =
    DT(((("set_relation",52),
        [("bool",
         [2,15,25,26,27,30,51,52,53,54,56,58,63,73,75,84,99,100,101,105,
          124,143,145]),("pair",[3]),("pred_set",[6,10,80,90,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[25,41,48])]),["DISK_THM"]),
       [read"%81%36%136%157$0@@%136%278%125$0@%155@@@%92%24%136%224$0@@%137%56%171$0@%243$2@$1@@|@@|@@@|@"])
  fun op finite_acyclic_has_minimal x = x
    val op finite_acyclic_has_minimal =
    DT(((("set_relation",53),
        [("bool",
         [2,15,25,26,27,30,51,52,53,54,56,58,63,73,75,84,99,100,101,105,
          124,143,145]),("pair",[3]),("pred_set",[6,10,80,90,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[25,41,49])]),["DISK_THM"]),
       [read"%81%36%136%157$0@@%136%278%125$0@%155@@@%92%24%136%224$0@@%137%56%171$0@%244$2@$1@@|@@|@@@|@"])
  fun op maximal_TC x = x
    val op maximal_TC =
    DT(((("set_relation",54),
        [("bool",
         [2,15,25,26,30,51,53,54,55,58,63,73,75,84,99,100,105,124]),
         ("pair",[3]),("pred_set",[3,6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,25,27,48])]),["DISK_THM"]),
       [read"%81%36%92%24%136%119%202%231$0@@$1@@%202%255$0@@$1@@@%125%243$1@%272$0@@@%243$1@$0@@@|@|@"])
  fun op minimal_TC x = x
    val op minimal_TC =
    DT(((("set_relation",55),
        [("bool",
         [2,15,25,26,30,51,53,54,55,58,63,73,75,84,99,100,105,124]),
         ("pair",[3]),("pred_set",[3,6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,25,27,49])]),["DISK_THM"]),
       [read"%81%36%92%24%136%119%202%231$0@@$1@@%202%255$0@@$1@@@%125%244$1@%272$0@@@%244$1@$0@@@|@|@"])
  fun op finite_acyclic_has_maximal_path x = x
    val op finite_acyclic_has_maximal_path =
    DT(((("set_relation",56),
        [("bool",
         [2,15,25,26,27,30,48,51,52,53,54,55,56,58,63,71,73,74,75,83,84,92,
          96,99,100,101,105,124,145]),("pair",[3]),
         ("pred_set",[6,10,80,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[25,41,48])]),["DISK_THM"]),
       [read"%81%36%92%24%78%56%136%119%157$2@@%119%224$1@@%119%171$0@$2@@%278%171$0@%243$2@$1@@@@@@@%137%71%119%171$0@%243$3@$2@@@%176%102$1@$0@@%272$2@@@|@@|@|@|@"])
  fun op finite_acyclic_has_minimal_path x = x
    val op finite_acyclic_has_minimal_path =
    DT(((("set_relation",57),
        [("bool",
         [2,15,25,26,27,30,48,51,52,53,54,55,56,58,63,71,73,74,75,83,84,92,
          96,99,100,101,105,124,145]),("pair",[3]),
         ("pred_set",[6,10,80,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[25,41,49])]),["DISK_THM"]),
       [read"%81%36%92%24%78%56%136%119%157$2@@%119%224$1@@%119%171$0@$2@@%278%171$0@%244$2@$1@@@@@@@%137%71%119%171$0@%244$3@$2@@@%176%102$0@$1@@%272$2@@@|@@|@|@|@"])
  fun op transitive_tc x = x
    val op transitive_tc =
    DT(((("set_relation",61),
        [("bool",[25,26,53,54,58,63,73,75,84,105,124]),("pair",[5]),
         ("pred_set",[3]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,27,60])]),["DISK_THM"]),
       [read"%92%24%136%274$0@@%130%272$0@@$0@@|@"])
  fun op tc_transitive x = x
    val op tc_transitive =
    DT(((("set_relation",62),
        [("bool",[25,26,53,54,58,63,73,75,84]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[25,60])]),["DISK_THM"]),
       [read"%92%24%274%272$0@@|@"])
  fun op partial_order_dom_rng x = x
    val op partial_order_dom_rng =
    DT(((("set_relation",65),
        [("bool",[25,26,53,54,58,63,84,105,124]),("pair",[3]),
         ("pred_set",[6,18]),("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("set_relation",[1,2,64])]),["DISK_THM"]),
       [read"%92%24%81%36%78%56%78%71%136%119%176%102$1@$0@@$3@@%252$3@$2@@@%119%171$1@$2@@%171$0@$2@@@|@|@|@|@"])
  fun op partial_order_subset x = x
    val op partial_order_subset =
    DT(((("set_relation",66),
        [("bool",[25,26,36,51,53,54,58,63,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[1,2,5,58,60,63,64])]),["DISK_THM"]),
       [read"%92%24%81%36%81%40%136%119%252$2@$1@@%202$0@$1@@@%252%269$2@$0@@$0@@|@|@|@"])
  fun op strict_partial_order x = x
    val op strict_partial_order =
    DT(((("set_relation",67),
        [("bool",[25,26,27,53,54,58,63,84,96,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,10,60,63,64])]),["DISK_THM"]),
       [read"%92%24%81%36%136%252$1@$0@@%119%202%231%270$1@@@$0@@%119%202%255%270$1@@@$0@@%119%274%270$1@@@%226%270$1@@@@@@|@|@"])
  fun op strict_partial_order_acyclic x = x
    val op strict_partial_order_acyclic =
    DT(((("set_relation",68),
        [("bool",[25,26,51,54,56,58,63,105,124,143]),("pair",[3,4,7,16]),
         ("pred_set",[6]),("set_relation",[10,41,61,67])]),["DISK_THM"]),
       [read"%92%24%81%36%136%252$1@$0@@%224%270$1@@@|@|@"])
  fun op finite_prefix_po_has_minimal_path x = x
    val op finite_prefix_po_has_minimal_path =
    DT(((("set_relation",69),
        [("bool",
         [14,25,26,27,36,51,52,53,54,56,58,63,71,83,92,96,105,124,143]),
         ("combin",[1,3,5]),("pair",[3,4,7,16]),
         ("pred_set",[6,18,45,49,191]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,10,13,49,57,58,60,64,68])]),["DISK_THM"]),
       [read"%92%24%81%36%78%56%81%40%136%119%252$3@$2@@%119%234$3@$2@@%119%278%171$1@%244$0@$3@@@@%119%171$1@$0@@%202$0@$2@@@@@@%137%60%119%171$0@%244$1@$4@@@%176%102$0@$2@@$4@@|@@|@|@|@|@"])
  fun op linear_order_subset x = x
    val op linear_order_subset =
    DT(((("set_relation",71),
        [("bool",[25,26,36,51,53,54,58,63,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[1,2,5,60,63,70])]),["DISK_THM"]),
       [read"%92%24%81%36%81%40%136%119%242$2@$1@@%202$0@$1@@@%242%269$2@$0@@$0@@|@|@|@"])
  fun op partial_order_linear_order x = x
    val op partial_order_linear_order =
    DT(((("set_relation",72),
        [("bool",[25,51,53,54,58,63,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[58,64,70])]),["DISK_THM"]),
       [read"%92%24%81%36%136%242$1@$0@@%252$1@$0@@|@|@"])
  fun op strict_linear_order_dom_rng x = x
    val op strict_linear_order_dom_rng =
    DT(((("set_relation",74),
        [("bool",[25,26,53,54,58,63,84,105,124]),("pair",[3]),
         ("pred_set",[6,18]),("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("set_relation",[1,2,73])]),["DISK_THM"]),
       [read"%92%24%81%36%78%56%78%71%136%119%176%102$1@$0@@$3@@%271$3@$2@@@%119%171$1@$2@@%171$0@$2@@@|@|@|@|@"])
  fun op linear_order_dom_rng x = x
    val op linear_order_dom_rng =
    DT(((("set_relation",75),
        [("bool",[25,26,53,54,58,63,84,105,124]),("pair",[3]),
         ("pred_set",[6,18]),("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("set_relation",[1,2,70])]),["DISK_THM"]),
       [read"%92%24%81%36%78%56%78%71%136%119%176%102$1@$0@@$3@@%242$3@$2@@@%119%171$1@$2@@%171$0@$2@@@|@|@|@|@"])
  fun op empty_strict_linear_order x = x
    val op empty_strict_linear_order =
    DT(((("set_relation",76),
        [("bool",[25,26,27,36,51,53,54,58,63,72,105,124]),("pair",[3,5]),
         ("pred_set",[3,6,10,23]),
         ("set_relation",[1,2,60,73])]),["DISK_THM"]),
       [read"%92%24%124%271$0@%155@@%130$0@%156@@|@"])
  fun op empty_linear_order x = x
    val op empty_linear_order =
    DT(((("set_relation",77),
        [("bool",[25,26,27,36,51,53,54,58,63,72,105,124]),("pair",[3,5]),
         ("pred_set",[3,6,10,23]),
         ("set_relation",[1,2,60,63,70])]),["DISK_THM"]),
       [read"%92%24%124%242$0@%155@@%130$0@%156@@|@"])
  fun op linear_order_restrict x = x
    val op linear_order_restrict =
    DT(((("set_relation",78),
        [("bool",[25,26,36,51,53,54,58,63,84,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6,18,45,51]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[1,2,5,60,63,70])]),["DISK_THM"]),
       [read"%81%36%92%24%81%40%136%242$1@$2@@%242%269$1@$0@@%184$2@$0@@@|@|@|@"])
  fun op strict_linear_order_restrict x = x
    val op strict_linear_order_restrict =
    DT(((("set_relation",79),
        [("bool",[25,26,27,36,51,53,54,58,63,84,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6,18,45,51]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[1,2,5,60,73])]),["DISK_THM"]),
       [read"%81%36%92%24%81%40%136%271$1@$2@@%271%269$1@$0@@%184$2@$0@@@|@|@|@"])
  fun op extend_linear_order x = x
    val op extend_linear_order =
    DT(((("set_relation",80),
        [("bool",[25,26,27,51,52,53,54,56,58,63,84,99,105,124,143]),
         ("pair",[3,4]),("pred_set",[6,10,18,33,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[1,2,60,63,70])]),["DISK_THM"]),
       [read"%92%24%81%36%78%56%136%119%278%171$0@$1@@@%242$2@$1@@@%242%214$2@%160%71%114%102$0@$1@@%171$0@%212$2@%183$1@%155@@@@|@@@%212$1@%183$0@%155@@@@|@|@|@"])
  fun op strict_linear_order_acyclic x = x
    val op strict_linear_order_acyclic =
    DT(((("set_relation",81),
        [("bool",[25,26,27,54,58,105,124]),
         ("set_relation",[41,60,61,73])]),["DISK_THM"]),
       [read"%92%24%81%36%136%271$1@$0@@%224$1@@|@|@"])
  fun op strict_linear_order_union_acyclic x = x
    val op strict_linear_order_union_acyclic =
    DT(((("set_relation",82),
        [("bool",[2,15,25,26,27,36,53,54,58,63,73,75,84,92,96,99,105,124]),
         ("pair",[3,5]),("pred_set",[3,6,18,33,39]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,25,41,45,60,73,81])]),["DISK_THM"]),
       [read"%92%28%92%31%81%36%136%119%271$2@$0@@%202%212%231$1@@%255$1@@@$0@@@%124%224%214$2@$1@@@%204$1@$2@@@|@|@|@"])
  fun op strict_linear_order x = x
    val op strict_linear_order =
    DT(((("set_relation",83),
        [("bool",[25,26,27,36,51,53,54,56,58,63,84,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,10,60,63,70,73])]),["DISK_THM"]),
       [read"%92%24%81%36%136%242$1@$0@@%271%270$1@@$0@@|@|@"])
  fun op linear_order x = x
    val op linear_order =
    DT(((("set_relation",84),
        [("bool",[25,26,27,48,51,52,53,54,56,58,63,84,105,124,143]),
         ("pair",[3,4]),("pred_set",[6,18,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,60,63,70,73])]),["DISK_THM"]),
       [read"%92%24%81%36%136%271$1@$0@@%242%214$1@%160%56%114%102$0@$0@@%171$0@$1@@|@@@$0@@|@|@"])
  fun op finite_strict_linear_order_has_maximal x = x
    val op finite_strict_linear_order_has_maximal =
    DT(((("set_relation",85),
        [("bool",[2,15,25,26,53,54,58,63,83]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("set_relation",[52,81])]),["DISK_THM"]),
       [read"%81%36%92%24%136%119%157$1@@%119%271$0@$1@@%278%125$1@%155@@@@@%137%56%171$0@%243$2@$1@@|@@|@|@"])
  fun op finite_strict_linear_order_has_minimal x = x
    val op finite_strict_linear_order_has_minimal =
    DT(((("set_relation",86),
        [("bool",[2,15,25,26,53,54,58,63,83]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("set_relation",[53,81])]),["DISK_THM"]),
       [read"%81%36%92%24%136%119%157$1@@%119%271$0@$1@@%278%125$1@%155@@@@@%137%56%171$0@%244$2@$1@@|@@|@|@"])
  fun op finite_linear_order_has_maximal x = x
    val op finite_linear_order_has_maximal =
    DT(((("set_relation",87),
        [("bool",[25,26,27,51,53,54,58,63,96,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6]),("sat",[1,3,5,7,17,18]),
         ("set_relation",[10,48,83,85])]),["DISK_THM"]),
       [read"%81%36%92%24%136%119%157$1@@%119%242$0@$1@@%278%125$1@%155@@@@@%137%56%171$0@%243$2@$1@@|@@|@|@"])
  fun op finite_linear_order_has_minimal x = x
    val op finite_linear_order_has_minimal =
    DT(((("set_relation",88),
        [("bool",[25,26,27,51,53,54,58,63,96,105,124,143]),
         ("pair",[3,4,7,16]),("pred_set",[6]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("set_relation",[10,49,83,86])]),["DISK_THM"]),
       [read"%81%36%92%24%136%119%157$1@@%119%242$0@$1@@%278%125$1@%155@@@@@%137%56%171$0@%244$2@$1@@|@@|@|@"])
  fun op maximal_linear_order x = x
    val op maximal_linear_order =
    DT(((("set_relation",89),
        [("bool",[25,26,53,54,58,63,105,124]),("pair",[3]),
         ("pred_set",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[48,70])]),["DISK_THM"]),
       [read"%81%36%92%24%78%56%78%71%136%119%171$0@$3@@%119%242$2@$3@@%171$1@%243$3@$2@@@@@%176%102$0@$1@@$2@@|@|@|@|@"])
  fun op minimal_linear_order x = x
    val op minimal_linear_order =
    DT(((("set_relation",90),
        [("bool",[25,26,53,54,58,63,105,124]),("pair",[3]),
         ("pred_set",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[49,70])]),["DISK_THM"]),
       [read"%81%36%92%24%78%56%78%71%136%119%171$0@$3@@%119%242$2@$3@@%171$1@%244$3@$2@@@@@%176%102$1@$0@@$2@@|@|@|@|@"])
  fun op minimal_linear_order_unique x = x
    val op minimal_linear_order_unique =
    DT(((("set_relation",91),
        [("bool",[25,26,53,54,58,63,105,124]),("pair",[3]),
         ("pred_set",[6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[49,63,70])]),["DISK_THM"]),
       [read"%92%24%81%36%81%40%78%56%78%71%136%119%242$4@$3@@%119%171$1@%244$2@$4@@@%119%171$0@%244$2@$4@@@%202$2@$3@@@@@%122$1@$0@@|@|@|@|@|@"])
  fun op finite_prefix_linear_order_has_unique_minimal x = x
    val op finite_prefix_linear_order_has_unique_minimal =
    DT(((("set_relation",92),
        [("bool",[2,15,25,26,30,53,54,58,63,74,75,83,99,100,105,124]),
         ("pred_set",[126,395]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[69,72,91])]),["DISK_THM"]),
       [read"%92%24%81%36%81%40%136%119%242$2@$1@@%119%234$2@$1@@%119%171%56@$0@@%202$0@$1@@@@@%198%244$0@$2@@@|@|@|@"])
  fun op nat_order_iso_thm x = x
    val op nat_order_iso_thm =
    DT(((("set_relation",93),
        [("arithmetic",[24,25,41,46,59,60,71,93,96,106,173,176,180]),
         ("bool",
         [2,14,15,25,26,36,52,53,54,55,56,58,63,73,83,84,93,96,104,105,107,
          124,143]),("combin",[1,3,5,19]),("numeral",[3,8]),
         ("option",[10,12,16]),("pair",[3,4,7,16]),
         ("pred_set",[3,6,18,144,192,199,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,13,60,63,70])]),["DISK_THM"]),
       [read"%91%16%81%36%136%119%98%21%98%18%136%119%134$3$0@@$3$1@@@%278%134$3$0@@%188@@@@%133$0@$1@@|@|@@%119%78%56%136%171$0@$1@@%142%18%134$3$0@@%200$1@@|@@|@@%98%18%78%56%136%134$3$1@@%200$0@@@%171$0@$2@@|@|@@@@%119%242%164%209%56%71%114%102$1@$0@@%142%18%142%21%119%121$1@$0@@%119%134$5$1@@%200$3@@@%134$5$0@@%200$2@@@@|@|@@||@@@$0@@%234%164%209%56%71%114%102$1@$0@@%142%18%142%21%119%121$1@$0@@%119%134$5$1@@%200$3@@@%134$5$0@@%200$2@@@@|@|@@||@@@$0@@@|@|@"])
  fun op upper_bounds_lem x = x
    val op upper_bounds_lem =
    DT(((("set_relation",96),
        [("bool",[25,26,53,54,58,63,105,124]),("pair",[3]),
         ("pred_set",[6]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[2,60,95])]),["DISK_THM"]),
       [read"%92%24%81%36%78%61%78%63%136%119%274$3@@%119%171$1@%276$2@$3@@@%176%102$1@$0@@$3@@@@%171$0@%276$2@$3@@@|@|@|@|@"])
  fun op zorns_lemma x = x
    val op zorns_lemma =
    DT(((("set_relation",98),
        [("bool",
         [2,14,15,25,26,27,30,36,48,51,52,53,54,55,56,58,63,71,72,73,74,75,
          83,84,86,92,93,95,96,99,100,101,105,124,145]),
         ("combin",[1,3,5,19,20]),("marker",[6]),("pair",[3]),
         ("pred_set",
         [3,6,10,11,18,23,45,57,58,60,67,69,80,90,96,98,120,244,247,369]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",
         [2,3,4,48,49,58,60,63,64,94,95,96,97])]),["DISK_THM"]),
       [read"%92%24%81%36%136%119%278%125$0@%155@@@%119%252$1@$0@@%81%44%136%228$0@$2@@%278%125%276$0@$2@@%155@@@|@@@@%137%56%171$0@%243$1@$2@@|@@|@|@"])
  fun op per_delete x = x
    val op per_delete =
    DT(((("set_relation",101),
        [("bool",
         [25,26,27,51,52,53,54,56,58,63,71,83,84,96,99,100,105,124]),
         ("pair",[3]),("pred_set",[3,6,10,18,45,57,102,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[99])]),["DISK_THM"]),
       [read"%81%65%87%69%78%10%136%253$2@$1@@%253%150$2@$0@@%162%13%111$0@%119%174$0@%170%13%150$0@$2@|@$2@@@%278%125$0@%155@@@@|@@@|@|@|@"])
  fun op per_restrict_per x = x
    val op per_restrict_per =
    DT(((("set_relation",102),
        [("bool",
         [14,25,26,27,36,51,52,53,54,56,58,63,71,83,96,99,100,105,124]),
         ("pair",[3]),("pred_set",[0,3,6,10,18,45,57,102,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[99,100])]),["DISK_THM"]),
       [read"%87%23%81%36%81%40%136%253$1@$2@@%253$0@%254$2@$0@@@|@|@|@"])
  fun op countable_per x = x
    val op countable_per =
    DT(((("set_relation",103),
        [("bool",[25,26,27,53,54,58,63,71,83,84,96,99,105,124]),
         ("pred_set",[3,10,18,45,57,120,158,244,414]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[99])]),["DISK_THM"]),
       [read"%81%65%87%69%136%119%229$1@@%253$1@$0@@@%230$0@@|@|@"])
  fun op all_choices_thm x = x
    val op all_choices_thm =
    DT(((("set_relation",105),
        [("bool",[25,26,53,54,58,63,105,124]),("pair",[3]),
         ("pred_set",[6,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[104])]),["DISK_THM"]),
       [read"%81%58%87%38%78%71%136%119%174$2@%225$1@@@%171$0@$2@@@%140%77%119%174$0@$2@@%171$1@$0@@|@@|@|@|@"])
  fun op linear_order_num_order x = x
    val op linear_order_num_order =
    DT(((("set_relation",107),
        [("arithmetic",[24,25,27,46,71,93,172,173,176,180]),
         ("bool",[25,26,36,51,53,54,55,58,63,96,99,101,104,105,124,143]),
         ("numeral",[3,5,8]),("pair",[3,4,7,16]),("pred_set",[6,18,158]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[1,2,60,63,70,106])]),["DISK_THM"]),
       [read"%84%15%81%36%90%46%136%182$2@$1@$0@@%242%248$2@$1@@$1@@|@|@|@"])
  fun op num_order_finite_prefix x = x
    val op num_order_finite_prefix =
    DT(((("set_relation",108),
        [("arithmetic",[24,25,46,59,71,93,173,180]),
         ("bool",[14,25,26,36,51,53,54,56,58,63,96,101,104,105,124,143]),
         ("combin",[1,3,5]),("numeral",[3,8]),("pair",[3,4,7,16]),
         ("pred_set",[6,158,202,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",[13,106])]),["DISK_THM"]),
       [read"%84%15%81%36%90%46%136%182$2@$1@$0@@%234%248$2@$1@@$1@@|@|@|@"])
  fun op nth_min_ind x = x
    val op nth_min_ind =
    DT(((("set_relation",112),
        [("arithmetic",[24,25,28,59,71,173,180]),
         ("bool",[25,27,36,53,54,58,63,101,104,105,124,145]),
         ("numeral",[3,8]),("pair",[5,7,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%89%1%136%119%92%27%81%36%92%24$3$2@%112$1@$0@@%120@|@|@|@@%92%27%81%36%92%24%98%21%136%99%19%136%119%134$0@%239$4@%112$3@$2@@@@%278%134$0@%188@@@@$5$4@%112%150$3@%208$0@@@$2@@$1@@|@@$4$3@%112$2@$1@@%205$0@@@|@|@|@|@@@%92%50%81%51%92%53%98%55$4$3@%112$2@$1@@$0@|@|@|@|@@|@"])
  fun op nth_min_def x = x
    val op nth_min_def =
    DT(((("set_relation",113),
        [("arithmetic",[14,24,25,59,71,173,180]),
         ("bool",[15,25,36,53,54,58,63,101,104,105,123,124,129,145]),
         ("combin",[19]),("numeral",[3,8]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("set_relation",[110,111])]),["DISK_THM"]),
       [read"%119%81%36%92%27%92%24%134%245$1@%112$2@$0@@%120@@%239$1@%112$2@$0@@@|@|@|@@%81%36%92%27%92%24%98%21%134%245$2@%112$3@$1@@%205$0@@@%187%19%149%134$0@%188@@%188@%245$3@%112%150$4@%208$0@@@$2@@$1@@|@%239$2@%112$3@$1@@@@|@|@|@|@@"])
  fun op nth_min_def_compute x = x
    val op nth_min_def_compute =
    DT(((("set_relation",114),
        [("arithmetic",[14,24,25,59,71,173,180,268]),
         ("bool",[15,25,26,36,53,54,58,63,101,104,105,123,124,129,145]),
         ("combin",[19]),("numeral",[3,8]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("set_relation",[110,111])]),["DISK_THM"]),
       [read"%119%81%36%92%27%92%24%134%245$1@%112$2@$0@@%120@@%239$1@%112$2@$0@@@|@|@|@@%119%81%36%92%27%92%24%98%21%134%245$2@%112$3@$1@@%189%146$0@@@@%187%19%149%134$0@%188@@%188@%245$3@%112%150$4@%208$0@@@$2@@%118%189%146$1@@@%189%146%222@@@@@|@%239$2@%112$3@$1@@@@|@|@|@|@@%81%36%92%27%92%24%98%21%134%245$2@%112$3@$1@@%189%147$0@@@@%187%19%149%134$0@%188@@%188@%245$3@%112%150$4@%208$0@@@$2@@%189%146$1@@@@|@%239$2@%112$3@$1@@@@|@|@|@|@@@"])
  fun op linear_order_of_countable_po x = x
    val op linear_order_of_countable_po =
    DT(((("set_relation",115),
        [("arithmetic",
         [0,14,22,24,25,27,28,37,41,46,59,71,93,95,110,132,147,172,173,176,
          177,180,195,269]),
         ("bool",
         [2,8,14,15,25,26,27,30,32,36,37,43,48,51,52,53,54,55,56,58,63,64,
          71,72,73,74,75,83,84,87,92,93,95,96,99,100,101,104,105,123,124,
          129,143,145,147]),
         ("combin",[1,3,5,8,11,15,16,17,19,20,33,34,35]),("marker",[6]),
         ("num",[9]),("numeral",[3,5,8]),
         ("option",[6,10,11,12,16,22,27,28]),("pair",[3,4,5,7,9,16,49]),
         ("pred_set",
         [3,6,10,18,20,26,45,49,67,80,101,102,126,127,140,185,191,207,209,
          210,215,369,371,373,401]),("prim_rec",[6,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",
         [1,2,13,49,64,69,70,92,93,107,108,109,110,111])]),["DISK_THM"]),
       [read"%92%24%81%36%136%119%229$0@@%119%252$1@$0@@%234$1@$0@@@@%141%27%119%242$0@$1@@%119%234$0@$1@@%204$2@$0@@@|@@|@|@"])
  fun op RREFL_EXP_RSUBSET x = x
    val op RREFL_EXP_RSUBSET =
    DT(((("set_relation",120),
        [("bool",[25,36,52,53,58,63,105,124]),("relation",[164,166]),
         ("set_relation",[119])]),["DISK_THM"]),
       [read"%196%2@%194%2@%36@@"])
  fun op RREFL_EXP_UNIV x = x
    val op RREFL_EXP_UNIV =
    DT(((("set_relation",121),
        [("bool",[25,36,51,52,54,56,60,63]),("pred_set",[14]),
         ("relation",[166]),("set_relation",[119])]),["DISK_THM"]),
       [read"%126%194%2@%216@@%2@"])
  fun op REL_RESTRICT_UNIV x = x
    val op REL_RESTRICT_UNIV =
    DT(((("set_relation",122),
        [("bool",[25,36,51,56,60,63]),
         ("pred_set",[14,203])]),["DISK_THM"]),
       [read"%126%192%2@%216@@%2@"])
  fun op in_rel_to_reln x = x
    val op in_rel_to_reln =
    DT(((("set_relation",123),
        [("bool",[25,26,56,58,63,143]),("pair",[3,4,5,7,8,9,16]),
         ("pred_set",[6]),("set_relation",[117])]),["DISK_THM"]),
       [read"%124%177%70@%263%3@@@%3%158%70@@%199%70@@@"])
  fun op reln_to_rel_app x = x
    val op reln_to_rel_app =
    DT(((("set_relation",124),
        [("bool",[25,56]),("set_relation",[116])]),["DISK_THM"]),
       [read"%124%265%25@%56@%72@@%177%103%56@%72@@%25@@"])
  fun op rel_to_reln_inv x = x
    val op rel_to_reln_inv =
    DT(((("set_relation",125),
        [("bool",[25,26,36,56,58,60,63,143]),("pair",[3,4,7,16]),
         ("pred_set",[6]),("set_relation",[116,117])]),["DISK_THM"]),
       [read"%127%265%263%3@@@%3@"])
  fun op reln_to_rel_inv x = x
    val op reln_to_rel_inv =
    DT(((("set_relation",126),
        [("bool",[25,36,56]),("pair",[7]),("pred_set",[3]),
         ("set_relation",[123,124])]),["DISK_THM"]),
       [read"%131%263%265%25@@@%25@"])
  fun op reln_to_rel_11 x = x
    val op reln_to_rel_11 =
    DT(((("set_relation",127),
        [("bool",[18,25,56,60]),("pair",[25]),
         ("set_relation",[124])]),["DISK_THM"]),
       [read"%124%127%265%29@@%265%32@@@%131%29@%32@@"])
  fun op rel_to_reln_11 x = x
    val op rel_to_reln_11 =
    DT(((("set_relation",128),
        [("bool",[25,56,60]),("pair",[8,9,25]),("pred_set",[3]),
         ("set_relation",[123])]),["DISK_THM"]),
       [read"%124%131%263%5@@%263%6@@@%127%5@%6@@"])
  fun op rel_to_reln_swap x = x
    val op rel_to_reln_swap =
    DT(((("set_relation",129),
        [("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("set_relation",[125,126])]),["DISK_THM"]),
       [read"%124%131%25@%263%3@@@%127%265%25@@%3@@"])
  fun op domain_to_rel_conv x = x
    val op domain_to_rel_conv =
    DT(((("set_relation",130),
        [("bool",[25,26,36,56,63]),("pair",[3]),("pred_set",[3,6]),
         ("relation",[216]),
         ("set_relation",[1,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%125%232%25@@%191%265%25@@@"])
  fun op range_to_rel_conv x = x
    val op range_to_rel_conv =
    DT(((("set_relation",131),
        [("bool",[25,26,36,56,63]),("pair",[3]),("pred_set",[3,6]),
         ("relation",[218]),
         ("set_relation",[2,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%125%257%26@@%193%267%26@@@"])
  fun op strict_to_rel_conv x = x
    val op strict_to_rel_conv =
    DT(((("set_relation",132),
        [("bool",[25,26,36,56,58,63,143]),("pair",[3,4,7,8,9,16]),
         ("pred_set",[6]),("relation",[190]),
         ("set_relation",[0,10,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%130%270%24@@%262%201%264%24@@@@"])
  fun op rrestrict_to_rel_conv x = x
    val op rrestrict_to_rel_conv =
    DT(((("set_relation",135),
        [("bool",[25,26,36,56,58,63,143]),("pair",[3,4,7,8,9,16]),
         ("pred_set",[6]),
         ("set_relation",
         [0,12,118,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%130%275%36@@%262%195%36@@@"])
  fun op tc_to_rel_conv x = x
    val op tc_to_rel_conv =
    DT(((("set_relation",136),
        [("bool",[25,26,53,54,58,63,73,75,84]),("pair",[8,9]),
         ("relation",[16,42]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("set_relation",
         [0,25,27,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%130%272%24@@%262%207%264%24@@@@"])
  fun op acyclic_reln_to_rel_conv x = x
    val op acyclic_reln_to_rel_conv =
    DT(((("set_relation",137),
        [("bool",[25,56]),("pair",[8,9]),("relation",[2]),
         ("set_relation",[41,123,124,125,126,127,128,136])]),["DISK_THM"]),
       [read"%124%224%24@@%240%207%264%24@@@@"])
  fun op irreflexive_reln_to_rel_conv x = x
    val op irreflexive_reln_to_rel_conv =
    DT(((("set_relation",138),
        [("bool",[25,26,47,48,53,54,58,63,71,76,80,81,96]),
         ("pred_set",[203]),("relation",[2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("set_relation",[59,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%124%241%24@%36@@%240%192%264%24@@%36@@@"])
  fun op irreflexive_reln_to_rel_conv_UNIV x = x
    val op irreflexive_reln_to_rel_conv_UNIV =
    DT(((("set_relation",139),
        [("bool",[25,56]),("set_relation",[122,138])]),["DISK_THM"]),
       [read"%124%241%24@%216@@%240%264%24@@@"])
  fun op reflexive_reln_to_rel_conv x = x
    val op reflexive_reln_to_rel_conv =
    DT(((("set_relation",142),
        [("bool",[25,56,58,105,124]),("relation",[0]),
         ("set_relation",[60,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%124%274%24@@%273%264%24@@@"])
  fun op antisym_reln_to_rel_conv x = x
    val op antisym_reln_to_rel_conv =
    DT(((("set_relation",143),
        [("bool",[25,56,58,105,124]),("relation",[4]),
         ("set_relation",[63,123,124,125,126,127,128])]),["DISK_THM"]),
       [read"%124%226%24@@%227%264%24@@@"])
  fun op partial_order_reln_to_rel_conv x = x
    val op partial_order_reln_to_rel_conv =
    DT(((("set_relation",144),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,72,76,80,81,83,
          86,93,94,96,105,124]),("pair",[3]),("pred_set",[6,18]),
         ("relation",[0,4,164,166,180]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",
         [1,2,3,4,64,118,119,124,140,142,143])]),["DISK_THM"]),
       [read"%124%252%24@%36@@%119%196%264%24@@%195%36@@@%221%194%264%24@@%36@@@@"])
  fun op partial_order_reln_to_rel_conv_UNIV x = x
    val op partial_order_reln_to_rel_conv_UNIV =
    DT(((("set_relation",145),
        [("bool",[25,36,51,53,56,58,63,105,124]),("pred_set",[14]),
         ("relation",[164]),("set_relation",[118,121,144])]),["DISK_THM"]),
       [read"%124%252%24@%216@@%221%264%24@@@"])
  fun op linear_order_reln_to_rel_conv_UNIV x = x
    val op linear_order_reln_to_rel_conv_UNIV =
    DT(((("set_relation",146),
        [("bool",
         [25,26,47,48,51,53,54,58,63,71,76,77,78,80,81,94,105,124]),
         ("pred_set",[14,24]),("relation",[1,180,207]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("set_relation",[70,124,142,143])]),["DISK_THM"]),
       [read"%124%242%24@%216@@%220%264%24@@@"])
  fun op strict_linear_order_reln_to_rel_conv_UNIV x = x
    val op strict_linear_order_reln_to_rel_conv_UNIV =
    DT(((("set_relation",147),
        [("bool",
         [25,26,47,48,51,53,54,58,63,71,76,77,78,80,81,93,94,96,105,124]),
         ("pred_set",[14,24]),("relation",[2,7,181,205]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("set_relation",[73,124,142])]),["DISK_THM"]),
       [read"%124%271%24@%216@@%206%264%24@@@"])
  fun op reln_rel_conv_thms x = x
    val op reln_rel_conv_thms =
    DT(((("set_relation",148),
        [("set_relation",
         [121,122,123,124,125,126,127,128,130,131,132,133,134,135,136,137,
          138,140,142,143,145,146,147])]),["DISK_THM"]),
       [read"%119%119%124%177%70@%263%3@@@%3%158%70@@%199%70@@@@%119%124%265%25@%56@%72@@%177%103%56@%72@@%25@@@%119%127%265%263%3@@@%3@@%119%131%263%265%25@@@%25@@%119%124%127%265%29@@%265%32@@@%131%29@%32@@@%124%131%263%5@@%263%6@@@%127%5@%6@@@@@@@@%119%126%194%2@%216@@%2@@%119%126%192%2@%216@@%2@@%119%125%232%25@@%191%265%25@@@@%119%125%257%26@@%193%267%26@@@@%119%130%270%24@@%262%201%264%24@@@@@%119%130%269%24@%36@@%262%192%264%24@@%36@@@@%119%131%259%30@%34@@%263%190%268%34@@%266%30@@@@@%119%130%275%36@@%262%195%36@@@@%119%130%272%24@@%262%207%264%24@@@@@%119%124%224%24@@%240%207%264%24@@@@@%119%124%241%24@%36@@%240%192%264%24@@%36@@@@%119%124%261%24@%36@@%260%194%264%24@@%36@@@@%119%124%274%24@@%273%264%24@@@@%119%124%226%24@@%227%264%24@@@@%119%124%252%24@%216@@%221%264%24@@@@%119%124%242%24@%216@@%220%264%24@@@@%124%271%24@%216@@%206%264%24@@@@@@@@@@@@@@@@@@@@"])
  fun op acyclic_WF x = x
    val op acyclic_WF =
    DT(((("set_relation",149),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,60,63,71,86,93,94,96,105,
          124]),("pred_set",[18,203,241]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("set_relation",[3,4,124,137])]),["DISK_THM"]),
       [read"%136%119%157%36@@%119%224%24@@%119%202%231%24@@%36@@%202%255%24@@%36@@@@@%217%264%24@@@"])
  end
  val _ = DB.bindl "set_relation"
  [("domain_def",domain_def,DB.Def), ("range_def",range_def,DB.Def),
   ("rrestrict_def",rrestrict_def,DB.Def), ("rcomp_def",rcomp_def,DB.Def),
   ("strict_def",strict_def,DB.Def),
   ("univ_reln_def",univ_reln_def,DB.Def),
   ("finite_prefixes_def",finite_prefixes_def,DB.Def),
   ("tc_def",tc_def,DB.Def), ("acyclic_def",acyclic_def,DB.Def),
   ("maximal_elements_def",maximal_elements_def,DB.Def),
   ("minimal_elements_def",minimal_elements_def,DB.Def),
   ("reflexive_def",reflexive_def,DB.Def),
   ("irreflexive_def",irreflexive_def,DB.Def),
   ("transitive_def",transitive_def,DB.Def),
   ("antisym_def",antisym_def,DB.Def),
   ("partial_order_def",partial_order_def,DB.Def),
   ("linear_order_def",linear_order_def,DB.Def),
   ("strict_linear_order_def",strict_linear_order_def,DB.Def),
   ("chain_def",chain_def,DB.Def),
   ("upper_bounds_def",upper_bounds_def,DB.Def),
   ("fchains_def",fchains_def,DB.Def), ("per_def",per_def,DB.Def),
   ("per_restrict_def",per_restrict_def,DB.Def),
   ("all_choices_def",all_choices_def,DB.Def),
   ("num_order_def",num_order_def,DB.Def),
   ("get_min_def",get_min_def,DB.Def),
   ("nth_min_tupled_primitive_def",nth_min_tupled_primitive_def,DB.Def),
   ("nth_min_curried_def",nth_min_curried_def,DB.Def),
   ("reln_to_rel_def",reln_to_rel_def,DB.Def),
   ("rel_to_reln_def",rel_to_reln_def,DB.Def),
   ("RRUNIV_def",RRUNIV_def,DB.Def),
   ("RREFL_EXP_def",RREFL_EXP_def,DB.Def),
   ("reflexive_reln_to_rel_conv_UNIV",
    reflexive_reln_to_rel_conv_UNIV,
    DB.Thm), ("rcomp_to_rel_conv",rcomp_to_rel_conv,DB.Thm),
   ("acyclic_bigunion",acyclic_bigunion,DB.Thm),
   ("acyclic_irreflexive",acyclic_irreflexive,DB.Thm),
   ("acyclic_rrestrict",acyclic_rrestrict,DB.Thm),
   ("tc_ind",tc_ind,DB.Thm), ("rextension",rextension,DB.Thm),
   ("in_domain",in_domain,DB.Thm), ("in_range",in_range,DB.Thm),
   ("in_rrestrict",in_rrestrict,DB.Thm),
   ("rrestrict_union",rrestrict_union,DB.Thm),
   ("rrestrict_rrestrict",rrestrict_rrestrict,DB.Thm),
   ("strict_rrestrict",strict_rrestrict,DB.Thm),
   ("finite_prefixes_subset",finite_prefixes_subset,DB.Thm),
   ("finite_prefixes_union",finite_prefixes_union,DB.Thm),
   ("finite_prefixes_comp",finite_prefixes_comp,DB.Thm),
   ("finite_prefixes_inj_image",finite_prefixes_inj_image,DB.Thm),
   ("finite_prefixes_range",finite_prefixes_range,DB.Thm),
   ("tc_rules",tc_rules,DB.Thm), ("tc_cases",tc_cases,DB.Thm),
   ("tc_strongind",tc_strongind,DB.Thm),
   ("tc_cases_right",tc_cases_right,DB.Thm),
   ("tc_cases_left",tc_cases_left,DB.Thm),
   ("tc_ind_left",tc_ind_left,DB.Thm),
   ("tc_strongind_left",tc_strongind_left,DB.Thm),
   ("tc_ind_right",tc_ind_right,DB.Thm),
   ("rtc_ind_right",rtc_ind_right,DB.Thm),
   ("tc_strongind_right",tc_strongind_right,DB.Thm),
   ("tc_union",tc_union,DB.Thm), ("tc_implication",tc_implication,DB.Thm),
   ("tc_empty",tc_empty,DB.Thm),
   ("tc_domain_range",tc_domain_range,DB.Thm),
   ("rrestrict_tc",rrestrict_tc,DB.Thm),
   ("acyclic_subset",acyclic_subset,DB.Thm),
   ("acyclic_union",acyclic_union,DB.Thm),
   ("maximal_union",maximal_union,DB.Thm),
   ("minimal_union",minimal_union,DB.Thm),
   ("finite_acyclic_has_maximal",finite_acyclic_has_maximal,DB.Thm),
   ("finite_acyclic_has_minimal",finite_acyclic_has_minimal,DB.Thm),
   ("maximal_TC",maximal_TC,DB.Thm), ("minimal_TC",minimal_TC,DB.Thm),
   ("finite_acyclic_has_maximal_path",
    finite_acyclic_has_maximal_path,
    DB.Thm),
   ("finite_acyclic_has_minimal_path",
    finite_acyclic_has_minimal_path,
    DB.Thm), ("transitive_tc",transitive_tc,DB.Thm),
   ("tc_transitive",tc_transitive,DB.Thm),
   ("partial_order_dom_rng",partial_order_dom_rng,DB.Thm),
   ("partial_order_subset",partial_order_subset,DB.Thm),
   ("strict_partial_order",strict_partial_order,DB.Thm),
   ("strict_partial_order_acyclic",strict_partial_order_acyclic,DB.Thm),
   ("finite_prefix_po_has_minimal_path",
    finite_prefix_po_has_minimal_path,
    DB.Thm), ("linear_order_subset",linear_order_subset,DB.Thm),
   ("partial_order_linear_order",partial_order_linear_order,DB.Thm),
   ("strict_linear_order_dom_rng",strict_linear_order_dom_rng,DB.Thm),
   ("linear_order_dom_rng",linear_order_dom_rng,DB.Thm),
   ("empty_strict_linear_order",empty_strict_linear_order,DB.Thm),
   ("empty_linear_order",empty_linear_order,DB.Thm),
   ("linear_order_restrict",linear_order_restrict,DB.Thm),
   ("strict_linear_order_restrict",strict_linear_order_restrict,DB.Thm),
   ("extend_linear_order",extend_linear_order,DB.Thm),
   ("strict_linear_order_acyclic",strict_linear_order_acyclic,DB.Thm),
   ("strict_linear_order_union_acyclic",
    strict_linear_order_union_acyclic,
    DB.Thm), ("strict_linear_order",strict_linear_order,DB.Thm),
   ("linear_order",linear_order,DB.Thm),
   ("finite_strict_linear_order_has_maximal",
    finite_strict_linear_order_has_maximal,
    DB.Thm),
   ("finite_strict_linear_order_has_minimal",
    finite_strict_linear_order_has_minimal,
    DB.Thm),
   ("finite_linear_order_has_maximal",
    finite_linear_order_has_maximal,
    DB.Thm),
   ("finite_linear_order_has_minimal",
    finite_linear_order_has_minimal,
    DB.Thm), ("maximal_linear_order",maximal_linear_order,DB.Thm),
   ("minimal_linear_order",minimal_linear_order,DB.Thm),
   ("minimal_linear_order_unique",minimal_linear_order_unique,DB.Thm),
   ("finite_prefix_linear_order_has_unique_minimal",
    finite_prefix_linear_order_has_unique_minimal,
    DB.Thm), ("nat_order_iso_thm",nat_order_iso_thm,DB.Thm),
   ("upper_bounds_lem",upper_bounds_lem,DB.Thm),
   ("zorns_lemma",zorns_lemma,DB.Thm), ("per_delete",per_delete,DB.Thm),
   ("per_restrict_per",per_restrict_per,DB.Thm),
   ("countable_per",countable_per,DB.Thm),
   ("all_choices_thm",all_choices_thm,DB.Thm),
   ("linear_order_num_order",linear_order_num_order,DB.Thm),
   ("num_order_finite_prefix",num_order_finite_prefix,DB.Thm),
   ("nth_min_ind",nth_min_ind,DB.Thm), ("nth_min_def",nth_min_def,DB.Thm),
   ("nth_min_def_compute",nth_min_def_compute,DB.Thm),
   ("linear_order_of_countable_po",linear_order_of_countable_po,DB.Thm),
   ("RREFL_EXP_RSUBSET",RREFL_EXP_RSUBSET,DB.Thm),
   ("RREFL_EXP_UNIV",RREFL_EXP_UNIV,DB.Thm),
   ("REL_RESTRICT_UNIV",REL_RESTRICT_UNIV,DB.Thm),
   ("in_rel_to_reln",in_rel_to_reln,DB.Thm),
   ("reln_to_rel_app",reln_to_rel_app,DB.Thm),
   ("rel_to_reln_inv",rel_to_reln_inv,DB.Thm),
   ("reln_to_rel_inv",reln_to_rel_inv,DB.Thm),
   ("reln_to_rel_11",reln_to_rel_11,DB.Thm),
   ("rel_to_reln_11",rel_to_reln_11,DB.Thm),
   ("rel_to_reln_swap",rel_to_reln_swap,DB.Thm),
   ("domain_to_rel_conv",domain_to_rel_conv,DB.Thm),
   ("range_to_rel_conv",range_to_rel_conv,DB.Thm),
   ("strict_to_rel_conv",strict_to_rel_conv,DB.Thm),
   ("rrestrict_to_rel_conv",rrestrict_to_rel_conv,DB.Thm),
   ("tc_to_rel_conv",tc_to_rel_conv,DB.Thm),
   ("acyclic_reln_to_rel_conv",acyclic_reln_to_rel_conv,DB.Thm),
   ("irreflexive_reln_to_rel_conv",irreflexive_reln_to_rel_conv,DB.Thm),
   ("irreflexive_reln_to_rel_conv_UNIV",
    irreflexive_reln_to_rel_conv_UNIV,
    DB.Thm),
   ("reflexive_reln_to_rel_conv",reflexive_reln_to_rel_conv,DB.Thm),
   ("antisym_reln_to_rel_conv",antisym_reln_to_rel_conv,DB.Thm),
   ("partial_order_reln_to_rel_conv",
    partial_order_reln_to_rel_conv,
    DB.Thm),
   ("partial_order_reln_to_rel_conv_UNIV",
    partial_order_reln_to_rel_conv_UNIV,
    DB.Thm),
   ("linear_order_reln_to_rel_conv_UNIV",
    linear_order_reln_to_rel_conv_UNIV,
    DB.Thm),
   ("strict_linear_order_reln_to_rel_conv_UNIV",
    strict_linear_order_reln_to_rel_conv_UNIV,
    DB.Thm), ("reln_rel_conv_thms",reln_rel_conv_thms,DB.Thm),
   ("acyclic_WF",acyclic_WF,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("pred_setTheory.pred_set_grammars",
                          pred_setTheory.pred_set_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="set_relation",Name="reln"}, (T"prod" "pair" [alpha, alpha] --> bool))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("domain", (Term.prim_mk_const { Name = "domain", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("domain", (Term.prim_mk_const { Name = "domain", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("range", (Term.prim_mk_const { Name = "range", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("range", (Term.prim_mk_const { Name = "range", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rrestrict", (Term.prim_mk_const { Name = "rrestrict", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rrestrict", (Term.prim_mk_const { Name = "rrestrict", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rcomp", (Term.prim_mk_const { Name = "rcomp", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rcomp", (Term.prim_mk_const { Name = "rcomp", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OO", (#2 (parse_from_grammars min_grammars)[QUOTE "(set_relation$rcomp :((('a, 'b) pair$prod) -> bool) -> ((('b, 'c) pair$prod) -> bool) -> (('a, 'c) pair$prod) -> bool)"]))
  val _ = update_grms
       (UTOFF (temp_set_fixity "OO"))
       (Infix(HOLgrammars.RIGHT, 800))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("strict", (Term.prim_mk_const { Name = "strict", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("strict", (Term.prim_mk_const { Name = "strict", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("univ_reln", (Term.prim_mk_const { Name = "univ_reln", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("univ_reln", (Term.prim_mk_const { Name = "univ_reln", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("finite_prefixes", (Term.prim_mk_const { Name = "finite_prefixes", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("finite_prefixes", (Term.prim_mk_const { Name = "finite_prefixes", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tc", (Term.prim_mk_const { Name = "tc", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tc", (Term.prim_mk_const { Name = "tc", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("acyclic", (Term.prim_mk_const { Name = "acyclic", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("acyclic", (Term.prim_mk_const { Name = "acyclic", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("maximal_elements", (Term.prim_mk_const { Name = "maximal_elements", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("maximal_elements", (Term.prim_mk_const { Name = "maximal_elements", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minimal_elements", (Term.prim_mk_const { Name = "minimal_elements", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minimal_elements", (Term.prim_mk_const { Name = "minimal_elements", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reflexive", (Term.prim_mk_const { Name = "reflexive", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reflexive", (Term.prim_mk_const { Name = "reflexive", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("irreflexive", (Term.prim_mk_const { Name = "irreflexive", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("irreflexive", (Term.prim_mk_const { Name = "irreflexive", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("transitive", (Term.prim_mk_const { Name = "transitive", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("transitive", (Term.prim_mk_const { Name = "transitive", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("antisym", (Term.prim_mk_const { Name = "antisym", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("antisym", (Term.prim_mk_const { Name = "antisym", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("partial_order", (Term.prim_mk_const { Name = "partial_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("partial_order", (Term.prim_mk_const { Name = "partial_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("linear_order", (Term.prim_mk_const { Name = "linear_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("linear_order", (Term.prim_mk_const { Name = "linear_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("strict_linear_order", (Term.prim_mk_const { Name = "strict_linear_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("strict_linear_order", (Term.prim_mk_const { Name = "strict_linear_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chain", (Term.prim_mk_const { Name = "chain", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chain", (Term.prim_mk_const { Name = "chain", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("upper_bounds", (Term.prim_mk_const { Name = "upper_bounds", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("upper_bounds", (Term.prim_mk_const { Name = "upper_bounds", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fchains", (Term.prim_mk_const { Name = "fchains", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fchains", (Term.prim_mk_const { Name = "fchains", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("per", (Term.prim_mk_const { Name = "per", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("per", (Term.prim_mk_const { Name = "per", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("per_restrict", (Term.prim_mk_const { Name = "per_restrict", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("per_restrict", (Term.prim_mk_const { Name = "per_restrict", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("all_choices", (Term.prim_mk_const { Name = "all_choices", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("all_choices", (Term.prim_mk_const { Name = "all_choices", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_order", (Term.prim_mk_const { Name = "num_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_order", (Term.prim_mk_const { Name = "num_order", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("get_min", (Term.prim_mk_const { Name = "get_min", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("get_min", (Term.prim_mk_const { Name = "get_min", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nth_min_tupled", (Term.prim_mk_const { Name = "nth_min_tupled", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nth_min_tupled", (Term.prim_mk_const { Name = "nth_min_tupled", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nth_min", (Term.prim_mk_const { Name = "nth_min", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nth_min", (Term.prim_mk_const { Name = "nth_min", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reln_to_rel", (Term.prim_mk_const { Name = "reln_to_rel", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reln_to_rel", (Term.prim_mk_const { Name = "reln_to_rel", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rel_to_reln", (Term.prim_mk_const { Name = "rel_to_reln", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rel_to_reln", (Term.prim_mk_const { Name = "rel_to_reln", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RRUNIV", (Term.prim_mk_const { Name = "RRUNIV", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RRUNIV", (Term.prim_mk_const { Name = "RRUNIV", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RREFL_EXP", (Term.prim_mk_const { Name = "RREFL_EXP", Thy = "set_relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RREFL_EXP", (Term.prim_mk_const { Name = "RREFL_EXP", Thy = "set_relation"}))
  val set_relation_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "set_relation",
    thydataty = "rule_induction",
    data = "set_relation.tc_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "set_relation",
    thydataty = "compute",
    data =
        "set_relation.domain_def set_relation.fchains_def set_relation.RREFL_EXP_def set_relation.RRUNIV_def set_relation.rel_to_reln_def set_relation.reln_to_rel_def set_relation.nth_min_def_compute set_relation.nth_min_def set_relation.get_min_def set_relation.num_order_def set_relation.all_choices_def set_relation.per_restrict_def set_relation.per_def set_relation.finite_prefixes_def set_relation.upper_bounds_def set_relation.chain_def set_relation.strict_linear_order_def set_relation.linear_order_def set_relation.partial_order_def set_relation.antisym_def set_relation.transitive_def set_relation.irreflexive_def set_relation.reflexive_def set_relation.minimal_elements_def set_relation.maximal_elements_def set_relation.acyclic_def set_relation.range_def set_relation.univ_reln_def set_relation.strict_def set_relation.rcomp_def set_relation.rrestrict_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "set_relation",
    thydataty = "OpenTheoryMap",
    data =
        " 15.Relation.domain12.set_relation6.domain14.Relation.range12.set_relation5.range17.Relation.restrict12.set_relation9.rrestrict23.Relation.finitePrefixes12.set_relation15.finite_prefixes24.Relation.minimalElements12.set_relation16.minimal_elements19.Relation.transitive12.set_relation10.transitive22.Relation.antisymmetric12.set_relation7.antisym20.Relation.linearOrder12.set_relation12.linear_order"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "set_relation"
end
