structure ringNormTheory :> ringNormTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ringNormTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open canonicalTheory ringTheory
  in end;
  val _ = Theory.link_parents
          ("ringNorm",
          Arbnum.fromString "1488587607",
          Arbnum.fromString "810569")
          [("ring",
           Arbnum.fromString "1488587592",
           Arbnum.fromString "818317"),
           ("canonical",
           Arbnum.fromString "1488587575",
           Arbnum.fromString "867417")];
  val _ = Theory.incorporate_types "ringNorm" [("polynom", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("canonical", "canonical_sum"), ID("list", "list"),
   ID("quote", "index"), ID("ring", "ring"), ID("canonical", "spolynom"),
   ID("quote", "varmap"), ID("num", "num"), ID("ringNorm", "polynom"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("ind_type", "BOTTOM"), ID("bool", "COND"), ID("list", "CONS"),
   ID("ind_type", "CONSTR"), ID("canonical", "Cons_monom"),
   ID("canonical", "Cons_varlist"), ID("bool", "DATATYPE"),
   ID("ind_type", "FCONS"), ID("list", "NIL"), ID("arithmetic", "NUMERAL"),
   ID("canonical", "Nil_monom"), ID("ringNorm", "Pconst"),
   ID("ringNorm", "Pmult"), ID("ringNorm", "Popp"),
   ID("ringNorm", "Pplus"), ID("ringNorm", "Pvar"),
   ID("canonical", "SPconst"), ID("canonical", "SPmult"),
   ID("canonical", "SPplus"), ID("canonical", "SPvar"), ID("num", "SUC"),
   ID("bool", "TYPE_DEFINITION"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("canonical", "canonical_sum_merge"),
   ID("semi_ring", "semi_ring"), ID("canonical", "canonical_sum_prod"),
   ID("canonical", "canonical_sum_scalar"),
   ID("canonical", "canonical_sum_scalar2"),
   ID("canonical", "canonical_sum_scalar3"),
   ID("canonical", "canonical_sum_simplify"), ID("prelim", "compare"),
   ID("prelim", "ordering"), ID("canonical", "ics_aux"),
   ID("quote", "index_compare"), ID("quote", "index_lt"),
   ID("quote", "index_size"), ID("canonical", "interp_cs"),
   ID("canonical", "interp_m"), ID("ringNorm", "interp_p"),
   ID("canonical", "interp_sp"), ID("canonical", "interp_vl"),
   ID("ring", "is_ring"), ID("canonical", "ivl_aux"),
   ID("prelim", "list_compare"), ID("prelim", "list_merge"),
   ID("canonical", "monom_insert"), ID("ringNorm", "polynom_CASE"),
   ID("ringNorm", "polynom_normalize"), ID("ringNorm", "polynom_simplify"),
   ID("ringNorm", "polynom_size"), ID("ringNorm", "r_canonical_sum_merge"),
   ID("ringNorm", "r_canonical_sum_prod"),
   ID("ringNorm", "r_canonical_sum_scalar"),
   ID("ringNorm", "r_canonical_sum_scalar2"),
   ID("ringNorm", "r_canonical_sum_scalar3"),
   ID("ringNorm", "r_canonical_sum_simplify"), ID("ringNorm", "r_ics_aux"),
   ID("ringNorm", "r_interp_cs"), ID("ringNorm", "r_interp_m"),
   ID("ringNorm", "r_interp_sp"), ID("ringNorm", "r_interp_vl"),
   ID("ringNorm", "r_ivl_aux"), ID("ringNorm", "r_monom_insert"),
   ID("ringNorm", "r_spolynom_normalize"),
   ID("ringNorm", "r_spolynom_simplify"),
   ID("ringNorm", "r_varlist_insert"), ID("ring", "ring_R0"),
   ID("ring", "ring_R1"), ID("ring", "ring_RM"), ID("ring", "ring_RN"),
   ID("ring", "ring_RP"), ID("ring", "semi_ring_of"),
   ID("canonical", "spolynom_normalize"),
   ID("canonical", "spolynom_simplify"), ID("canonical", "varlist_insert"),
   ID("quote", "varmap_find"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [0, 1, 1], TYOP [3], TYOP [2, 3],
   TYOP [0, 4, 2], TYOP [4, 0], TYOP [0, 6, 5], TYOP [5, 0],
   TYOP [0, 8, 1], TYOP [0, 6, 9], TYOP [0, 0, 5], TYOP [0, 6, 11],
   TYOP [0, 4, 0], TYOP [0, 3, 13], TYOP [6, 0], TYOP [0, 15, 14],
   TYOP [0, 6, 16], TYOP [0, 15, 13], TYOP [0, 6, 18], TYOP [0, 8, 0],
   TYOP [0, 15, 20], TYOP [0, 6, 21], TYOP [0, 0, 13], TYOP [0, 15, 23],
   TYOP [0, 6, 24], TYOP [0, 1, 0], TYOP [0, 15, 26], TYOP [0, 6, 27],
   TYOP [0, 0, 26], TYOP [0, 15, 29], TYOP [0, 6, 30], TYOP [0, 6, 2],
   TYOP [0, 0, 2], TYOP [0, 6, 33], TYOP [0, 1, 2], TYOP [0, 6, 35],
   TYOP [7], TYOP [8, 0], TYOP [0, 38, 37], TYOP [0, 0, 37],
   TYOP [0, 40, 39], TYOP [0, 38, 1], TYOP [0, 6, 42], TYV "'b",
   TYOP [0, 38, 44], TYOP [0, 45, 44], TYOP [0, 38, 45], TYOP [0, 47, 46],
   TYOP [0, 47, 48], TYOP [0, 0, 44], TYOP [0, 50, 49], TYOP [0, 3, 44],
   TYOP [0, 52, 51], TYOP [0, 38, 53], TYOP [0, 38, 0], TYOP [0, 15, 55],
   TYOP [0, 6, 56], TYOP [0, 3, 38], TYOP [0, 38, 38], TYOP [0, 38, 59],
   TYOP [0, 0, 38], TYOP [9], TYOP [11, 3, 0], TYOP [10, 63],
   TYOP [0, 64, 62], TYOP [0, 38, 62], TYOP [0, 44, 44], TYOP [0, 44, 67],
   TYOP [0, 38, 68], TYOP [0, 38, 69], TYOP [0, 38, 67], TYOP [0, 59, 62],
   TYOP [0, 60, 72], TYOP [0, 60, 73], TYOP [0, 61, 74], TYOP [0, 58, 75],
   TYOP [0, 38, 64], TYOP [0, 0, 62], TYOP [0, 78, 62], TYOP [0, 1, 62],
   TYOP [0, 80, 62], TYOP [0, 50, 62], TYOP [0, 82, 62], TYOP [0, 40, 62],
   TYOP [0, 84, 62], TYOP [0, 52, 62], TYOP [0, 86, 62], TYOP [0, 45, 62],
   TYOP [0, 88, 62], TYOP [0, 66, 62], TYOP [0, 90, 62], TYOP [0, 71, 62],
   TYOP [0, 92, 62], TYOP [0, 47, 62], TYOP [0, 94, 62], TYOP [0, 70, 62],
   TYOP [0, 96, 62], TYOP [0, 65, 62], TYOP [0, 98, 62], TYOP [0, 3, 62],
   TYOP [0, 100, 62], TYOP [0, 4, 62], TYOP [0, 102, 62], TYOP [0, 6, 62],
   TYOP [0, 104, 62], TYOP [0, 8, 62], TYOP [0, 106, 62], TYOP [0, 15, 62],
   TYOP [0, 108, 62], TYOP [0, 37, 37], TYOP [0, 37, 110], TYOP [0, 0, 63],
   TYOP [0, 3, 112], TYOP [0, 62, 62], TYOP [0, 62, 114], TYOP [0, 0, 78],
   TYOP [0, 44, 62], TYOP [0, 44, 117], TYOP [0, 1, 80], TYOP [0, 33, 62],
   TYOP [0, 33, 120], TYOP [0, 11, 62], TYOP [0, 11, 122], TYOP [0, 2, 62],
   TYOP [0, 2, 124], TYOP [0, 35, 62], TYOP [0, 35, 126], TYOP [0, 5, 62],
   TYOP [0, 5, 128], TYOP [0, 9, 62], TYOP [0, 9, 130], TYOP [0, 30, 62],
   TYOP [0, 30, 132], TYOP [0, 24, 62], TYOP [0, 24, 134],
   TYOP [0, 27, 62], TYOP [0, 27, 136], TYOP [0, 16, 62],
   TYOP [0, 16, 138], TYOP [0, 18, 62], TYOP [0, 18, 140],
   TYOP [0, 21, 62], TYOP [0, 21, 142], TYOP [0, 3, 100], TYOP [0, 37, 62],
   TYOP [0, 37, 145], TYOP [0, 38, 66], TYOP [0, 64, 65], TYOP [0, 77, 62],
   TYOP [0, 149, 62], TYOP [0, 62, 35], TYOP [0, 4, 4], TYOP [0, 3, 152],
   TYOP [0, 37, 64], TYOP [0, 154, 64], TYOP [0, 63, 155],
   TYOP [0, 37, 156], TYOP [0, 154, 154], TYOP [0, 64, 158],
   TYOP [0, 0, 8], TYOP [0, 8, 8], TYOP [0, 8, 161], TYOP [0, 3, 8],
   TYOP [0, 65, 149], TYOP [47, 0], TYOP [0, 165, 35], TYOP [0, 165, 33],
   TYOP [0, 165, 5], TYOP [0, 165, 11], TYOP [0, 165, 2], TYOP [0, 1, 35],
   TYOP [54], TYOP [0, 172, 171], TYOP [0, 165, 30], TYOP [0, 3, 172],
   TYOP [0, 3, 175], TYOP [0, 3, 37], TYOP [0, 165, 27], TYOP [0, 165, 24],
   TYOP [0, 165, 21], TYOP [0, 165, 18], TYOP [0, 165, 16],
   TYOP [0, 4, 172], TYOP [0, 4, 183], TYOP [0, 176, 184],
   TYOP [0, 4, 152], TYOP [0, 144, 186], TYOP [0, 6, 0], TYOP [0, 0, 0],
   TYOP [0, 0, 189], TYOP [0, 6, 190], TYOP [0, 6, 189], TYOP [0, 6, 165],
   TYOP [0, 165, 9], TYOP [0, 15, 0], TYOP [0, 3, 195]]
  end
  val _ = Theory.incorporate_consts "ringNorm" tyvector
     [("r_varlist_insert", 7), ("r_spolynom_simplify", 10),
      ("r_spolynom_normalize", 10), ("r_monom_insert", 12),
      ("r_ivl_aux", 17), ("r_interp_vl", 19), ("r_interp_sp", 22),
      ("r_interp_m", 25), ("r_interp_cs", 28), ("r_ics_aux", 31),
      ("r_canonical_sum_simplify", 32), ("r_canonical_sum_scalar3", 12),
      ("r_canonical_sum_scalar2", 7), ("r_canonical_sum_scalar", 34),
      ("r_canonical_sum_prod", 36), ("r_canonical_sum_merge", 36),
      ("polynom_size", 41), ("polynom_simplify", 43),
      ("polynom_normalize", 43), ("polynom_CASE", 54), ("interp_p", 57),
      ("Pvar", 58), ("Pplus", 60), ("Popp", 59), ("Pmult", 60),
      ("Pconst", 61)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'polynom'", 65), TMV("M", 38), TMV("M'", 38), TMV("P", 66),
   TMV("a", 0), TMV("a", 3), TMV("a", 38), TMV("a", 64), TMV("a'", 0),
   TMV("a'", 3), TMV("a'", 38), TMV("a0", 38), TMV("a0", 64),
   TMV("a0'", 38), TMV("a0'", 64), TMV("a1", 38), TMV("a1", 64),
   TMV("a1'", 38), TMV("c", 0), TMV("c0", 0), TMV("c1", 0), TMV("c2", 0),
   TMV("f", 40), TMV("f", 52), TMV("f'", 52), TMV("f0", 52), TMV("f1", 50),
   TMV("f1'", 50), TMV("f2", 47), TMV("f2", 70), TMV("f2'", 47),
   TMV("f3", 47), TMV("f3", 70), TMV("f3'", 47), TMV("f4", 45),
   TMV("f4", 71), TMV("f4'", 45), TMV("fn", 45), TMV("i", 3), TMV("l", 4),
   TMV("l", 8), TMV("l0", 4), TMV("l1", 4), TMV("l2", 4), TMV("n", 37),
   TMV("p", 38), TMV("p0", 38), TMV("p1", 38), TMV("p1", 8), TMV("p2", 38),
   TMV("p2", 8), TMV("pl", 38), TMV("polynom", 76), TMV("pp", 38),
   TMV("pr", 38), TMV("r", 6), TMV("r'", 8), TMV("rep", 77), TMV("s1", 1),
   TMV("s2", 1), TMV("t", 1), TMV("t", 4), TMV("t'", 4), TMV("t1", 1),
   TMV("t2", 1), TMV("v4", 0), TMV("v5", 4), TMV("v6", 1), TMV("v7", 4),
   TMV("v8", 1), TMV("vm", 15), TMV("x", 3), TMV("x", 38), TMV("x", 8),
   TMV("x'", 3), TMC(12, 79), TMC(12, 81), TMC(12, 83), TMC(12, 85),
   TMC(12, 87), TMC(12, 89), TMC(12, 91), TMC(12, 93), TMC(12, 95),
   TMC(12, 97), TMC(12, 99), TMC(12, 101), TMC(12, 103), TMC(12, 90),
   TMC(12, 98), TMC(12, 105), TMC(12, 107), TMC(12, 109), TMC(13, 111),
   TMC(14, 113), TMC(15, 115), TMC(16, 37), TMC(17, 116), TMC(17, 118),
   TMC(17, 115), TMC(17, 119), TMC(17, 121), TMC(17, 123), TMC(17, 125),
   TMC(17, 127), TMC(17, 129), TMC(17, 131), TMC(17, 133), TMC(17, 135),
   TMC(17, 137), TMC(17, 139), TMC(17, 141), TMC(17, 143), TMC(17, 144),
   TMC(17, 146), TMC(17, 147), TMC(17, 148), TMC(18, 115), TMC(19, 79),
   TMC(19, 89), TMC(19, 150), TMC(19, 101), TMC(19, 90), TMC(19, 98),
   TMC(20, 0), TMC(20, 3), TMC(21, 110), TMC(22, 64), TMC(23, 151),
   TMC(24, 153), TMC(25, 157), TMC(26, 11), TMC(27, 5), TMC(28, 114),
   TMC(29, 159), TMC(30, 4), TMC(31, 110), TMC(32, 1), TMC(33, 61),
   TMC(34, 60), TMC(35, 59), TMC(36, 60), TMC(37, 58), TMC(38, 160),
   TMC(39, 162), TMC(40, 162), TMC(41, 163), TMC(42, 110), TMC(43, 164),
   TMC(44, 37), TMC(45, 115), TMC(46, 166), TMC(48, 166), TMC(49, 167),
   TMC(50, 168), TMC(51, 169), TMC(52, 170), TMC(53, 173), TMC(55, 174),
   TMC(56, 176), TMC(57, 144), TMC(58, 177), TMC(59, 178), TMC(60, 179),
   TMC(61, 57), TMC(62, 180), TMC(63, 181), TMC(64, 104), TMC(65, 182),
   TMC(66, 185), TMC(67, 187), TMC(68, 169), TMC(69, 54), TMC(70, 43),
   TMC(71, 43), TMC(72, 41), TMC(73, 36), TMC(74, 36), TMC(75, 34),
   TMC(76, 7), TMC(77, 12), TMC(78, 32), TMC(79, 31), TMC(80, 28),
   TMC(81, 25), TMC(82, 22), TMC(83, 19), TMC(84, 17), TMC(85, 12),
   TMC(86, 10), TMC(87, 10), TMC(88, 7), TMC(89, 188), TMC(90, 188),
   TMC(91, 191), TMC(92, 192), TMC(93, 191), TMC(94, 193), TMC(95, 194),
   TMC(96, 194), TMC(97, 168), TMC(98, 196), TMC(99, 114)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op r_interp_sp_def x = x
    val op r_interp_sp_def =
    DT(((("ringNorm",0),[]),[]), [read"%90%55%112%185$0@@%165%197$0@@@|@"])
  fun op r_spolynom_simplify_def x = x
    val op r_spolynom_simplify_def =
    DT(((("ringNorm",1),[]),[]), [read"%90%55%106%190$0@@%199%197$0@@@|@"])
  fun op r_spolynom_normalize_def x = x
    val op r_spolynom_normalize_def =
    DT(((("ringNorm",2),[]),[]), [read"%90%55%106%189$0@@%198%197$0@@@|@"])
  fun op r_interp_cs_def x = x
    val op r_interp_cs_def =
    DT(((("ringNorm",3),[]),[]), [read"%90%55%109%183$0@@%162%197$0@@@|@"])
  fun op r_ics_aux_def x = x
    val op r_ics_aux_def =
    DT(((("ringNorm",4),[]),[]), [read"%90%55%107%182$0@@%158%197$0@@@|@"])
  fun op r_interp_m_def x = x
    val op r_interp_m_def =
    DT(((("ringNorm",5),[]),[]), [read"%90%55%108%184$0@@%163%197$0@@@|@"])
  fun op r_interp_vl_def x = x
    val op r_interp_vl_def =
    DT(((("ringNorm",6),[]),[]), [read"%90%55%111%186$0@@%166%197$0@@@|@"])
  fun op r_ivl_aux_def x = x
    val op r_ivl_aux_def =
    DT(((("ringNorm",7),[]),[]), [read"%90%55%110%187$0@@%168%197$0@@@|@"])
  fun op r_canonical_sum_simplify_def x = x
    val op r_canonical_sum_simplify_def =
    DT(((("ringNorm",8),[]),[]), [read"%90%55%103%181$0@@%156%197$0@@@|@"])
  fun op r_canonical_sum_prod_def x = x
    val op r_canonical_sum_prod_def =
    DT(((("ringNorm",9),[]),[]), [read"%90%55%104%177$0@@%152%197$0@@@|@"])
  fun op r_canonical_sum_scalar3_def x = x
    val op r_canonical_sum_scalar3_def =
    DT(((("ringNorm",10),[]),[]),
       [read"%90%55%102%180$0@@%155%197$0@@@|@"])
  fun op r_canonical_sum_scalar2_def x = x
    val op r_canonical_sum_scalar2_def =
    DT(((("ringNorm",11),[]),[]),
       [read"%90%55%105%179$0@@%154%197$0@@@|@"])
  fun op r_canonical_sum_scalar_def x = x
    val op r_canonical_sum_scalar_def =
    DT(((("ringNorm",12),[]),[]),
       [read"%90%55%101%178$0@@%153%197$0@@@|@"])
  fun op r_varlist_insert_def x = x
    val op r_varlist_insert_def =
    DT(((("ringNorm",13),[]),[]),
       [read"%90%55%105%191$0@@%200%197$0@@@|@"])
  fun op r_monom_insert_def x = x
    val op r_monom_insert_def =
    DT(((("ringNorm",14),[]),[]),
       [read"%90%55%102%188$0@@%171%197$0@@@|@"])
  fun op r_canonical_sum_merge_def x = x
    val op r_canonical_sum_merge_def =
    DT(((("ringNorm",15),[]),[]),
       [read"%90%55%104%176$0@@%151%197$0@@@|@"])
  fun op polynom_TY_DEF x = x
    val op polynom_TY_DEF =
    DT(((("ringNorm",32),
        [("bool",[14,25,26,53,132,133,138])]),["DISK_THM"]),
       [read"%120%57%148%14%85%0%117%89%14%117%150%121%5%116$1@%5%130%96@%94$0@%124@@%44%127|@|$0@@|@@%150%118%4%116$1@%4%130%147%96@@%94%125@$0@@%44%127|@|$0@@|@@%150%123%12%123%16%95%116$2@%12%16%130%147%147%96@@@%94%125@%124@@%134$1@%134$0@%44%127|@@@||$1@$0@@@%95$3$1@@$3$0@@@|@|@@%150%123%12%123%16%95%116$2@%12%16%130%147%147%147%96@@@@%94%125@%124@@%134$1@%134$0@%44%127|@@@||$1@$0@@@%95$3$1@@$3$0@@@|@|@@%123%7%95%116$1@%7%130%147%147%147%147%96@@@@@%94%125@%124@@%134$0@%44%127|@@|$0@@@$2$0@@|@@@@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op polynom_case_def x = x
    val op polynom_case_def =
    DT(((("ringNorm",44),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%95%86%5%79%23%77%26%83%28%83%31%80%34%98%172%142$5@@$4@$3@$2@$1@$0@@$4$5@@|@|@|@|@|@|@@%95%75%4%79%23%77%26%83%28%83%31%80%34%98%172%138$5@@$4@$3@$2@$1@$0@@$3$5@@|@|@|@|@|@|@@%95%88%11%88%15%79%23%77%26%83%28%83%31%80%34%98%172%141$6@$5@@$4@$3@$2@$1@$0@@$2$6@$5@@|@|@|@|@|@|@|@@%95%88%11%88%15%79%23%77%26%83%28%83%31%80%34%98%172%139$6@$5@@$4@$3@$2@$1@$0@@$1$6@$5@@|@|@|@|@|@|@|@@%88%6%79%23%77%26%83%28%83%31%80%34%98%172%140$5@@$4@$3@$2@$1@$0@@$0$5@@|@|@|@|@|@|@@@@@"])
  fun op polynom_size_def x = x
    val op polynom_size_def =
    DT(((("ringNorm",45),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%95%78%22%86%5%114%175$1@%142$0@@@%93%136%126%149@@@%161$0@@@|@|@@%95%78%22%75%4%114%175$1@%138$0@@@%93%136%126%149@@@$1$0@@@|@|@@%95%78%22%88%11%88%15%114%175$2@%141$1@$0@@@%93%136%126%149@@@%93%175$2@$1@@%175$2@$0@@@@|@|@|@@%95%78%22%88%11%88%15%114%175$2@%139$1@$0@@@%93%136%126%149@@@%93%175$2@$1@@%175$2@$0@@@@|@|@|@@%78%22%88%6%114%175$1@%140$0@@@%93%136%126%149@@@%175$1@$0@@@|@|@@@@@"])
  fun op polynom_normalize_def x = x
    val op polynom_normalize_def =
    DT(((("ringNorm",53),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%95%90%55%86%38%100%173$1@%142$0@@@%132%129$0@%135@@%137@@|@|@@%95%90%55%75%18%100%173$1@%138$0@@@%131$0@%135@%137@@|@|@@%95%90%55%88%51%88%54%100%173$2@%141$1@$0@@@%176$2@%173$2@$1@@%173$2@$0@@@|@|@|@@%95%90%55%88%51%88%54%100%173$2@%139$1@$0@@@%177$2@%173$2@$1@@%173$2@$0@@@|@|@|@@%90%55%88%45%100%173$1@%140$0@@@%180$1@%195$1@%193$1@@@%135@%173$1@$0@@@|@|@@@@@"])
  fun op polynom_simplify_def x = x
    val op polynom_simplify_def =
    DT(((("ringNorm",54),[]),[]),
       [read"%90%55%88%72%100%174$1@$0@@%181$1@%173$1@$0@@@|@|@"])
  fun op interp_p_def x = x
    val op interp_p_def =
    DT(((("ringNorm",55),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%95%90%55%92%70%75%18%97%164$2@$1@%138$0@@@$0@|@|@|@@%95%90%55%92%70%86%38%97%164$2@$1@%142$0@@@%201$0@$1@@|@|@|@@%95%90%55%92%70%88%47%88%49%97%164$3@$2@%141$1@$0@@@%196$3@%164$3@$2@$1@@%164$3@$2@$0@@@|@|@|@|@@%95%90%55%92%70%88%47%88%49%97%164$3@$2@%139$1@$0@@@%194$3@%164$3@$2@$1@@%164$3@$2@$0@@@|@|@|@|@@%90%55%92%70%88%47%97%164$2@$1@%140$0@@@%195$2@%164$2@$1@$0@@@|@|@|@@@@@"])
  fun op interp_sp_def x = x
    val op interp_sp_def =
    DT(((("ringNorm",16),
        [("bool",[58]),("canonical",[72]),("ring",[47]),("ringNorm",[0]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%92%70%75%18%97%185$2@$1@%143$0@@@$0@|@|@@%95%92%70%86%38%97%185$2@$1@%146$0@@@%201$0@$1@@|@|@@%95%92%70%91%48%91%50%97%185$3@$2@%145$1@$0@@@%196$3@%185$3@$2@$1@@%185$3@$2@$0@@@|@|@|@@%92%70%91%48%91%50%97%185$3@$2@%144$1@$0@@@%194$3@%185$3@$2@$1@@%185$3@$2@$0@@@|@|@|@@@@|@"])
  fun op canonical_sum_merge_def x = x
    val op canonical_sum_merge_def =
    DT(((("ringNorm",17),
        [("bool",[58]),("canonical",[20]),("ring",[47]),("ringNorm",[15]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%76%64%76%63%87%43%87%42%75%21%75%20%100%176$6@%131$0@$2@$4@@%131$1@$3@$5@@@%157%169%159@$2@$3@@%131$0@$2@%176$6@$4@%131$1@$3@$5@@@@%131%196$6@$0@$1@@$2@%176$6@$4@$5@@@%131$1@$3@%176$6@%131$0@$2@$4@@$5@@@@|@|@|@|@|@|@@%95%76%64%76%63%87%43%87%42%75%20%100%176$5@%131$0@$1@$3@@%132$2@$4@@@%157%169%159@$1@$2@@%131$0@$1@%176$5@$3@%132$2@$4@@@@%131%196$5@$0@%193$5@@@$1@%176$5@$3@$4@@@%132$2@%176$5@%131$0@$1@$3@@$4@@@@|@|@|@|@|@@%95%76%64%76%63%87%43%87%42%75%21%100%176$5@%132$1@$3@@%131$0@$2@$4@@@%157%169%159@$1@$2@@%132$1@%176$5@$3@%131$0@$2@$4@@@@%131%196$5@%193$5@@$0@@$1@%176$5@$3@$4@@@%131$0@$2@%176$5@%132$1@$3@@$4@@@@|@|@|@|@|@@%95%76%64%76%63%87%43%87%42%100%176$4@%132$0@$2@@%132$1@$3@@@%157%169%159@$0@$1@@%132$0@%176$4@$2@%132$1@$3@@@@%131%196$4@%193$4@@%193$4@@@$0@%176$4@$2@$3@@@%132$1@%176$4@%132$0@$2@@$3@@@@|@|@|@|@@%95%76%58%100%176$1@$0@%137@@$0@|@@%95%76%67%87%66%75%65%100%176$3@%137@%131$0@$1@$2@@@%131$0@$1@$2@@|@|@|@@%76%69%87%68%100%176$2@%137@%132$0@$1@@@%132$0@$1@@|@|@@@@@@@|@"])
  fun op monom_insert_def x = x
    val op monom_insert_def =
    DT(((("ringNorm",18),
        [("bool",[58]),("canonical",[24]),("ring",[47]),("ringNorm",[14]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%76%64%87%43%87%42%75%21%75%20%100%188$5@$0@$2@%131$1@$3@$4@@@%157%169%159@$2@$3@@%131$0@$2@%131$1@$3@$4@@@%131%196$5@$0@$1@@$2@$4@@%131$1@$3@%188$5@$0@$2@$4@@@@|@|@|@|@|@@%95%76%64%87%43%87%42%75%20%100%188$4@$0@$1@%132$2@$3@@@%157%169%159@$1@$2@@%131$0@$1@%132$2@$3@@@%131%196$4@$0@%193$4@@@$1@$3@@%132$2@%188$4@$0@$1@$3@@@@|@|@|@|@@%87%42%75%20%100%188$2@$0@$1@%137@@%131$0@$1@%137@@|@|@@@|@"])
  fun op varlist_insert_def x = x
    val op varlist_insert_def =
    DT(((("ringNorm",19),
        [("bool",[58]),("canonical",[28]),("ring",[47]),("ringNorm",[13]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%76%64%87%43%87%42%75%21%100%191$4@$1@%131$0@$2@$3@@@%157%169%159@$1@$2@@%132$1@%131$0@$2@$3@@@%131%196$4@%193$4@@$0@@$1@$3@@%131$0@$2@%191$4@$1@$3@@@@|@|@|@|@@%95%76%64%87%43%87%42%100%191$3@$0@%132$1@$2@@@%157%169%159@$0@$1@@%132$0@%132$1@$2@@@%131%196$3@%193$3@@%193$3@@@$0@$2@@%132$1@%191$3@$0@$2@@@@|@|@|@@%87%42%100%191$1@$0@%137@@%132$0@%137@@|@@@|@"])
  fun op canonical_sum_scalar_def x = x
    val op canonical_sum_scalar_def =
    DT(((("ringNorm",20),
        [("bool",[58]),("canonical",[29]),("ring",[47]),("ringNorm",[12]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%75%19%75%18%87%39%76%60%100%178$4@$3@%131$2@$1@$0@@@%131%194$4@$3@$2@@$1@%178$4@$3@$0@@@|@|@|@|@@%95%75%19%87%39%76%60%100%178$3@$2@%132$1@$0@@@%131$2@$1@%178$3@$2@$0@@@|@|@|@@%75%19%100%178$1@$0@%137@@%137@|@@@|@"])
  fun op canonical_sum_scalar2_def x = x
    val op canonical_sum_scalar2_def =
    DT(((("ringNorm",21),
        [("bool",[58]),("canonical",[30]),
         ("ringNorm",[11,13,14])]),["DISK_THM"]),
       [read"%90%55%95%87%41%75%18%87%39%76%60%100%179$4@$3@%131$2@$1@$0@@@%188$4@$2@%170%160@$3@$1@@%179$4@$3@$0@@@|@|@|@|@@%95%87%41%87%39%76%60%100%179$3@$2@%132$1@$0@@@%191$3@%170%160@$2@$1@@%179$3@$2@$0@@@|@|@|@@%87%41%100%179$1@$0@%137@@%137@|@@@|@"])
  fun op canonical_sum_scalar3_def x = x
    val op canonical_sum_scalar3_def =
    DT(((("ringNorm",22),
        [("bool",[58]),("canonical",[31]),("ring",[47]),
         ("ringNorm",[10,14]),("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%75%19%87%41%75%18%87%39%76%60%100%180$5@$4@$3@%131$2@$1@$0@@@%188$5@%194$5@$4@$2@@%170%160@$3@$1@@%180$5@$4@$3@$0@@@|@|@|@|@|@@%95%75%19%87%41%87%39%76%60%100%180$4@$3@$2@%132$1@$0@@@%188$4@$3@%170%160@$2@$1@@%180$4@$3@$2@$0@@@|@|@|@|@@%75%19%87%41%100%180$2@$1@$0@%137@@%137@|@|@@@|@"])
  fun op canonical_sum_prod_def x = x
    val op canonical_sum_prod_def =
    DT(((("ringNorm",23),
        [("bool",[58]),("canonical",[32]),
         ("ringNorm",[9,10,11,15])]),["DISK_THM"]),
       [read"%90%55%95%75%20%87%42%76%63%76%59%100%177$4@%131$3@$2@$1@@$0@@%176$4@%180$4@$3@$2@$0@@%177$4@$1@$0@@@|@|@|@|@@%95%87%42%76%63%76%59%100%177$3@%132$2@$1@@$0@@%176$3@%179$3@$2@$0@@%177$3@$1@$0@@@|@|@|@@%76%59%100%177$1@%137@$0@@%137@|@@@|@"])
  fun op canonical_sum_simplify_def x = x
    val op canonical_sum_simplify_def =
    DT(((("ringNorm",24),
        [("bool",[58]),("canonical",[33]),("ring",[47]),("ringNorm",[8]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%75%18%87%39%76%60%100%181$3@%131$2@$1@$0@@@%128%97$2@%192$3@@@%181$3@$0@@%128%97$2@%193$3@@@%132$1@%181$3@$0@@@%131$2@$1@%181$3@$0@@@@@|@|@|@@%95%87%39%76%60%100%181$2@%132$1@$0@@@%132$1@%181$2@$0@@@|@|@@%100%181$0@%137@@%137@@@|@"])
  fun op ivl_aux_def x = x
    val op ivl_aux_def =
    DT(((("ringNorm",25),
        [("bool",[58]),("canonical",[34]),("ring",[47]),("ringNorm",[7]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%92%70%86%71%97%187$2@$1@$0@%135@@%201$0@$1@@|@|@@%92%70%86%71%86%74%87%62%97%187$4@$3@$2@%129$1@$0@@@%194$4@%201$2@$3@@%187$4@$3@$1@$0@@@|@|@|@|@@|@"])
  fun op interp_vl_def x = x
    val op interp_vl_def =
    DT(((("ringNorm",26),
        [("bool",[58]),("canonical",[35]),("ring",[47]),("ringNorm",[6,7]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%92%70%97%186$1@$0@%135@@%193$1@@|@@%92%70%86%71%87%61%97%186$3@$2@%129$1@$0@@@%187$3@$2@$1@$0@@|@|@|@@|@"])
  fun op interp_m_def x = x
    val op interp_m_def =
    DT(((("ringNorm",27),
        [("bool",[58]),("canonical",[36]),("ring",[47]),("ringNorm",[5,7]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%92%70%75%18%97%184$2@$1@$0@%135@@$0@|@|@@%92%70%75%18%86%71%87%61%97%184$4@$3@$2@%129$1@$0@@@%194$4@$2@%187$4@$3@$1@$0@@@|@|@|@|@@|@"])
  fun op ics_aux_def x = x
    val op ics_aux_def =
    DT(((("ringNorm",28),
        [("bool",[58]),("canonical",[37]),("ring",[47]),
         ("ringNorm",[4,5,6]),("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%92%70%75%4%97%182$2@$1@$0@%137@@$0@|@|@@%95%92%70%75%4%87%39%76%60%97%182$4@$3@$2@%132$1@$0@@@%196$4@$2@%182$4@$3@%186$4@$3@$1@@$0@@@|@|@|@|@@%92%70%75%4%75%18%87%39%76%60%97%182$5@$4@$3@%131$2@$1@$0@@@%196$5@$3@%182$5@$4@%184$5@$4@$2@$1@@$0@@@|@|@|@|@|@@@|@"])
  fun op interp_cs_def x = x
    val op interp_cs_def =
    DT(((("ringNorm",29),
        [("bool",[58]),("canonical",[38]),("ring",[47]),
         ("ringNorm",[3,4,5,6]),("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%95%92%70%97%183$1@$0@%137@@%192$1@@|@@%95%92%70%87%39%76%60%97%183$3@$2@%132$1@$0@@@%182$3@$2@%186$3@$2@$1@@$0@@|@|@|@@%92%70%75%18%87%39%76%60%97%183$4@$3@%131$2@$1@$0@@@%182$4@$3@%184$4@$3@$2@$1@@$0@@|@|@|@|@@@|@"])
  fun op spolynom_normalize_def x = x
    val op spolynom_normalize_def =
    DT(((("ringNorm",30),
        [("bool",[58]),("canonical",[70]),
         ("ringNorm",[2,9,15])]),["DISK_THM"]),
       [read"%90%55%95%86%38%100%189$1@%146$0@@@%132%129$0@%135@@%137@@|@@%95%75%18%100%189$1@%143$0@@@%131$0@%135@%137@@|@@%95%91%40%91%56%100%189$2@%145$1@$0@@@%176$2@%189$2@$1@@%189$2@$0@@@|@|@@%91%40%91%56%100%189$2@%144$1@$0@@@%177$2@%189$2@$1@@%189$2@$0@@@|@|@@@@|@"])
  fun op spolynom_simplify_def x = x
    val op spolynom_simplify_def =
    DT(((("ringNorm",31),
        [("bool",[58]),("canonical",[71]),
         ("ringNorm",[1,2,8])]),["DISK_THM"]),
       [read"%90%55%91%73%100%190$1@$0@@%181$1@%189$1@$0@@@|@|@"])
  fun op datatype_polynom x = x
    val op datatype_polynom =
    DT(((("ringNorm",46),[("bool",[25,171])]),["DISK_THM"]),
       [read"%133%52%142@%138@%141@%139@%140@@"])
  fun op polynom_11 x = x
    val op polynom_11 =
    DT(((("ringNorm",47),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%95%86%5%86%9%99%115%142$1@@%142$0@@@%113$1@$0@@|@|@@%95%75%4%75%8%99%115%138$1@@%138$0@@@%97$1@$0@@|@|@@%95%88%11%88%15%88%13%88%17%99%115%141$3@$2@@%141$1@$0@@@%95%115$3@$1@@%115$2@$0@@@|@|@|@|@@%95%88%11%88%15%88%13%88%17%99%115%139$3@$2@@%139$1@$0@@@%95%115$3@$1@@%115$2@$0@@@|@|@|@|@@%88%6%88%10%99%115%140$1@@%140$0@@@%115$1@$0@@|@|@@@@@"])
  fun op polynom_distinct x = x
    val op polynom_distinct =
    DT(((("ringNorm",48),
        [("bool",[14,25,26,31,36,47,51,53,54,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%95%75%8%86%5%202%115%142$0@@%138$1@@@|@|@@%95%88%15%88%11%86%5%202%115%142$0@@%141$1@$2@@@|@|@|@@%95%88%15%88%11%86%5%202%115%142$0@@%139$1@$2@@@|@|@|@@%95%88%10%86%5%202%115%142$0@@%140$1@@@|@|@@%95%88%15%88%11%75%4%202%115%138$0@@%141$1@$2@@@|@|@|@@%95%88%15%88%11%75%4%202%115%138$0@@%139$1@$2@@@|@|@|@@%95%88%10%75%4%202%115%138$0@@%140$1@@@|@|@@%95%88%17%88%15%88%13%88%11%202%115%141$0@$2@@%139$1@$3@@@|@|@|@|@@%95%88%15%88%11%88%6%202%115%141$1@$2@@%140$0@@@|@|@|@@%88%15%88%11%88%6%202%115%139$1@$2@@%140$0@@@|@|@|@@@@@@@@@@"])
  fun op polynom_case_cong x = x
    val op polynom_case_cong =
    DT(((("ringNorm",49),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("ringNorm",
         [33,34,35,36,37,38,39,40,41,42,43,44])]),["DISK_THM"]),
       [read"%88%1%88%2%79%23%77%26%83%28%83%31%80%34%117%95%115$6@$5@@%95%86%5%117%115$6@%142$0@@@%98$5$0@@%24$0@@@|@@%95%75%4%117%115$6@%138$0@@@%98$4$0@@%27$0@@@|@@%95%88%11%88%15%117%115$7@%141$1@$0@@@%98$4$1@$0@@%30$1@$0@@@|@|@@%95%88%11%88%15%117%115$7@%139$1@$0@@@%98$3$1@$0@@%33$1@$0@@@|@|@@%88%6%117%115$6@%140$0@@@%98$1$0@@%36$0@@@|@@@@@@@%98%172$6@$4@$3@$2@$1@$0@@%172$5@%24@%27@%30@%33@%36@@@|@|@|@|@|@|@|@"])
  fun op polynom_nchotomy x = x
    val op polynom_nchotomy =
    DT(((("ringNorm",50),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%88%53%150%121%38%115$1@%142$0@@|@@%150%118%4%115$1@%138$0@@|@@%150%122%45%122%46%115$2@%141$1@$0@@|@|@@%150%122%45%122%46%115$2@%139$1@$0@@|@|@@%122%45%115$1@%140$0@@|@@@@@|@"])
  fun op polynom_Axiom x = x
    val op polynom_Axiom =
    DT(((("ringNorm",51),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("pair",[8,9]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%79%25%77%26%84%29%84%32%82%35%119%37%95%86%5%98$1%142$0@@@$6$0@@|@@%95%75%4%98$1%138$0@@@$5$0@@|@@%95%88%11%88%15%98$2%141$1@$0@@@$5$1@$0@$2$1@@$2$0@@@|@|@@%95%88%11%88%15%98$2%139$1@$0@@@$4$1@$0@$2$1@@$2$0@@@|@|@@%88%6%98$1%140$0@@@$2$0@$1$0@@@|@@@@@|@|@|@|@|@|@"])
  fun op polynom_induction x = x
    val op polynom_induction =
    DT(((("ringNorm",52),
        [("bool",[14,25,26,53,132,133,138]),
         ("ringNorm",[33,34,35,36,37,38,39,40,41,42,43])]),["DISK_THM"]),
       [read"%81%3%117%95%86%38$1%142$0@@|@@%95%75%4$1%138$0@@|@@%95%88%45%88%46%117%95$2$1@@$2$0@@@$2%141$1@$0@@@|@|@@%95%88%45%88%46%117%95$2$1@@$2$0@@@$2%139$1@$0@@@|@|@@%88%45%117$1$0@@$1%140$0@@@|@@@@@@%88%45$1$0@|@@|@"])
  fun op polynom_normalize_ok x = x
    val op polynom_normalize_ok =
    DT(((("ringNorm",56),
        [("bool",[14,25,26,53,56,58,132,133,138]),
         ("canonical",[34,35,36,37,38,43,48,49]),("ring",[41,47,48,50]),
         ("ringNorm",
         [3,4,5,6,7,9,10,15,33,34,35,36,37,38,39,40,41,42,43,53,55]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%117%167$0@@%92%70%88%45%97%183$2@$1@%173$2@$0@@@%164$2@$1@$0@@|@|@@|@"])
  fun op polynom_simplify_ok x = x
    val op polynom_simplify_ok =
    DT(((("ringNorm",57),
        [("bool",[14,25,26,53,56,58,132,133,138]),
         ("canonical",[34,35,36,37,38,43,48,49,50]),("ring",[41,47,48,50]),
         ("ringNorm",
         [3,4,5,6,7,8,9,10,15,33,34,35,36,37,38,39,40,41,42,43,53,54,55]),
         ("semi_ring",[10])]),["DISK_THM"]),
       [read"%90%55%117%167$0@@%92%70%88%45%97%183$2@$1@%174$2@$0@@@%164$2@$1@$0@@|@|@@|@"])
  end
  val _ = DB.bindl "ringNorm"
  [("r_interp_sp_def",r_interp_sp_def,DB.Def),
   ("r_spolynom_simplify_def",r_spolynom_simplify_def,DB.Def),
   ("r_spolynom_normalize_def",r_spolynom_normalize_def,DB.Def),
   ("r_interp_cs_def",r_interp_cs_def,DB.Def),
   ("r_ics_aux_def",r_ics_aux_def,DB.Def),
   ("r_interp_m_def",r_interp_m_def,DB.Def),
   ("r_interp_vl_def",r_interp_vl_def,DB.Def),
   ("r_ivl_aux_def",r_ivl_aux_def,DB.Def),
   ("r_canonical_sum_simplify_def",r_canonical_sum_simplify_def,DB.Def),
   ("r_canonical_sum_prod_def",r_canonical_sum_prod_def,DB.Def),
   ("r_canonical_sum_scalar3_def",r_canonical_sum_scalar3_def,DB.Def),
   ("r_canonical_sum_scalar2_def",r_canonical_sum_scalar2_def,DB.Def),
   ("r_canonical_sum_scalar_def",r_canonical_sum_scalar_def,DB.Def),
   ("r_varlist_insert_def",r_varlist_insert_def,DB.Def),
   ("r_monom_insert_def",r_monom_insert_def,DB.Def),
   ("r_canonical_sum_merge_def",r_canonical_sum_merge_def,DB.Def),
   ("polynom_TY_DEF",polynom_TY_DEF,DB.Def),
   ("polynom_case_def",polynom_case_def,DB.Def),
   ("polynom_size_def",polynom_size_def,DB.Def),
   ("polynom_normalize_def",polynom_normalize_def,DB.Def),
   ("polynom_simplify_def",polynom_simplify_def,DB.Def),
   ("interp_p_def",interp_p_def,DB.Def),
   ("interp_sp_def",interp_sp_def,DB.Thm),
   ("canonical_sum_merge_def",canonical_sum_merge_def,DB.Thm),
   ("monom_insert_def",monom_insert_def,DB.Thm),
   ("varlist_insert_def",varlist_insert_def,DB.Thm),
   ("canonical_sum_scalar_def",canonical_sum_scalar_def,DB.Thm),
   ("canonical_sum_scalar2_def",canonical_sum_scalar2_def,DB.Thm),
   ("canonical_sum_scalar3_def",canonical_sum_scalar3_def,DB.Thm),
   ("canonical_sum_prod_def",canonical_sum_prod_def,DB.Thm),
   ("canonical_sum_simplify_def",canonical_sum_simplify_def,DB.Thm),
   ("ivl_aux_def",ivl_aux_def,DB.Thm),
   ("interp_vl_def",interp_vl_def,DB.Thm),
   ("interp_m_def",interp_m_def,DB.Thm),
   ("ics_aux_def",ics_aux_def,DB.Thm),
   ("interp_cs_def",interp_cs_def,DB.Thm),
   ("spolynom_normalize_def",spolynom_normalize_def,DB.Thm),
   ("spolynom_simplify_def",spolynom_simplify_def,DB.Thm),
   ("datatype_polynom",datatype_polynom,DB.Thm),
   ("polynom_11",polynom_11,DB.Thm),
   ("polynom_distinct",polynom_distinct,DB.Thm),
   ("polynom_case_cong",polynom_case_cong,DB.Thm),
   ("polynom_nchotomy",polynom_nchotomy,DB.Thm),
   ("polynom_Axiom",polynom_Axiom,DB.Thm),
   ("polynom_induction",polynom_induction,DB.Thm),
   ("polynom_normalize_ok",polynom_normalize_ok,DB.Thm),
   ("polynom_simplify_ok",polynom_simplify_ok,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("ringTheory.ring_grammars",
                          ringTheory.ring_grammars),
                         ("canonicalTheory.canonical_grammars",
                          canonicalTheory.canonical_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_sp", (Term.prim_mk_const { Name = "r_interp_sp", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_sp", (Term.prim_mk_const { Name = "r_interp_sp", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_spolynom_simplify", (Term.prim_mk_const { Name = "r_spolynom_simplify", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_spolynom_simplify", (Term.prim_mk_const { Name = "r_spolynom_simplify", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_spolynom_normalize", (Term.prim_mk_const { Name = "r_spolynom_normalize", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_spolynom_normalize", (Term.prim_mk_const { Name = "r_spolynom_normalize", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_cs", (Term.prim_mk_const { Name = "r_interp_cs", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_cs", (Term.prim_mk_const { Name = "r_interp_cs", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_ics_aux", (Term.prim_mk_const { Name = "r_ics_aux", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_ics_aux", (Term.prim_mk_const { Name = "r_ics_aux", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_m", (Term.prim_mk_const { Name = "r_interp_m", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_m", (Term.prim_mk_const { Name = "r_interp_m", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_vl", (Term.prim_mk_const { Name = "r_interp_vl", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_interp_vl", (Term.prim_mk_const { Name = "r_interp_vl", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_ivl_aux", (Term.prim_mk_const { Name = "r_ivl_aux", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_ivl_aux", (Term.prim_mk_const { Name = "r_ivl_aux", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_simplify", (Term.prim_mk_const { Name = "r_canonical_sum_simplify", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_simplify", (Term.prim_mk_const { Name = "r_canonical_sum_simplify", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_prod", (Term.prim_mk_const { Name = "r_canonical_sum_prod", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_prod", (Term.prim_mk_const { Name = "r_canonical_sum_prod", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_scalar3", (Term.prim_mk_const { Name = "r_canonical_sum_scalar3", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_scalar3", (Term.prim_mk_const { Name = "r_canonical_sum_scalar3", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_scalar2", (Term.prim_mk_const { Name = "r_canonical_sum_scalar2", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_scalar2", (Term.prim_mk_const { Name = "r_canonical_sum_scalar2", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_scalar", (Term.prim_mk_const { Name = "r_canonical_sum_scalar", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_scalar", (Term.prim_mk_const { Name = "r_canonical_sum_scalar", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_varlist_insert", (Term.prim_mk_const { Name = "r_varlist_insert", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_varlist_insert", (Term.prim_mk_const { Name = "r_varlist_insert", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_monom_insert", (Term.prim_mk_const { Name = "r_monom_insert", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_monom_insert", (Term.prim_mk_const { Name = "r_monom_insert", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_merge", (Term.prim_mk_const { Name = "r_canonical_sum_merge", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("r_canonical_sum_merge", (Term.prim_mk_const { Name = "r_canonical_sum_merge", Thy = "ringNorm"}))
  val _ = update_grms temp_add_type "polynom"
  val _ = update_grms temp_add_type "polynom"












  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pvar", (Term.prim_mk_const { Name = "Pvar", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pvar", (Term.prim_mk_const { Name = "Pvar", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pconst", (Term.prim_mk_const { Name = "Pconst", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pconst", (Term.prim_mk_const { Name = "Pconst", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pplus", (Term.prim_mk_const { Name = "Pplus", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pplus", (Term.prim_mk_const { Name = "Pplus", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pmult", (Term.prim_mk_const { Name = "Pmult", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Pmult", (Term.prim_mk_const { Name = "Pmult", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Popp", (Term.prim_mk_const { Name = "Popp", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Popp", (Term.prim_mk_const { Name = "Popp", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("polynom_CASE", (Term.prim_mk_const { Name = "polynom_CASE", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("polynom_size", (Term.prim_mk_const { Name = "polynom_size", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("polynom_normalize", (Term.prim_mk_const { Name = "polynom_normalize", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("polynom_simplify", (Term.prim_mk_const { Name = "polynom_simplify", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("polynom_simplify", (Term.prim_mk_const { Name = "polynom_simplify", Thy = "ringNorm"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("interp_p", (Term.prim_mk_const { Name = "interp_p", Thy = "ringNorm"}))
  val ringNorm_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG polynom_Axiom,
           case_def=polynom_case_def,
           case_cong=polynom_case_cong,
           induction=ORIG polynom_induction,
           nchotomy=polynom_nchotomy,
           size=SOME(Parse.Term`(ringNorm$polynom_size) :('a -> (num$num)) -> ('a ringNorm$polynom) -> (num$num)`,
                     ORIG polynom_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME polynom_11,
           distinct=SOME polynom_distinct,
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


  fun IMPORT P =
    let open Parse abstraction
        fun sing [x] = x | sing _ = raise Match
        val r = sing (#Vals P)
        val ctab =
          [ Term`interp_p ^r`,
            Term`polynom_simplify ^r`,
            Term`polynom_normalize ^r`,
            Term`r_canonical_sum_merge ^r`,
            Term`r_monom_insert ^r`,
            Term`r_varlist_insert ^r`,
            Term`r_canonical_sum_scalar ^r`,
            Term`r_canonical_sum_scalar2 ^r`,
            Term`r_canonical_sum_scalar3 ^r`,
            Term`r_canonical_sum_prod ^r`,
            Term`r_canonical_sum_simplify ^r`,
            Term`r_ivl_aux ^r`,
            Term`r_interp_vl ^r`,
            Term`r_interp_m ^r`,
            Term`r_ics_aux ^r`,
            Term`r_interp_cs ^r`,
            Term`r_spolynom_normalize ^r`,
            Term`r_spolynom_simplify ^r`,
            Term`r_interp_sp ^r` ]
        val inst_fun = inst_thm_fun (compute_inst_infos ctab P) in
    { interp_p_def = inst_fun interp_p_def,
      polynom_simplify_def = inst_fun polynom_simplify_def,
      polynom_normalize_def = inst_fun polynom_normalize_def,
      polynom_size_def = inst_fun polynom_size_def,
      polynom_case_def = inst_fun polynom_case_def,
      polynom_TY_DEF = inst_fun polynom_TY_DEF,
      r_canonical_sum_merge_def = inst_fun r_canonical_sum_merge_def,
      r_monom_insert_def = inst_fun r_monom_insert_def,
      r_varlist_insert_def = inst_fun r_varlist_insert_def,
      r_canonical_sum_scalar_def = inst_fun r_canonical_sum_scalar_def,
      r_canonical_sum_scalar2_def = inst_fun r_canonical_sum_scalar2_def,
      r_canonical_sum_scalar3_def = inst_fun r_canonical_sum_scalar3_def,
      r_canonical_sum_prod_def = inst_fun r_canonical_sum_prod_def,
      r_canonical_sum_simplify_def = inst_fun r_canonical_sum_simplify_def,
      r_ivl_aux_def = inst_fun r_ivl_aux_def,
      r_interp_vl_def = inst_fun r_interp_vl_def,
      r_interp_m_def = inst_fun r_interp_m_def,
      r_ics_aux_def = inst_fun r_ics_aux_def,
      r_interp_cs_def = inst_fun r_interp_cs_def,
      r_spolynom_normalize_def = inst_fun r_spolynom_normalize_def,
      r_spolynom_simplify_def = inst_fun r_spolynom_simplify_def,
      r_interp_sp_def = inst_fun r_interp_sp_def,
      polynom_simplify_ok = inst_fun polynom_simplify_ok,
      polynom_normalize_ok = inst_fun polynom_normalize_ok,
      polynom_induction = inst_fun polynom_induction,
      polynom_Axiom = inst_fun polynom_Axiom,
      polynom_nchotomy = inst_fun polynom_nchotomy,
      polynom_case_cong = inst_fun polynom_case_cong,
      polynom_distinct = inst_fun polynom_distinct,
      polynom_11 = inst_fun polynom_11,
      datatype_polynom = inst_fun datatype_polynom,
      spolynom_simplify_def = inst_fun spolynom_simplify_def,
      spolynom_normalize_def = inst_fun spolynom_normalize_def,
      interp_cs_def = inst_fun interp_cs_def,
      ics_aux_def = inst_fun ics_aux_def,
      interp_m_def = inst_fun interp_m_def,
      interp_vl_def = inst_fun interp_vl_def,
      ivl_aux_def = inst_fun ivl_aux_def,
      canonical_sum_simplify_def = inst_fun canonical_sum_simplify_def,
      canonical_sum_prod_def = inst_fun canonical_sum_prod_def,
      canonical_sum_scalar3_def = inst_fun canonical_sum_scalar3_def,
      canonical_sum_scalar2_def = inst_fun canonical_sum_scalar2_def,
      canonical_sum_scalar_def = inst_fun canonical_sum_scalar_def,
      varlist_insert_def = inst_fun varlist_insert_def,
      monom_insert_def = inst_fun monom_insert_def,
      canonical_sum_merge_def = inst_fun canonical_sum_merge_def,
      interp_sp_def = inst_fun interp_sp_def }
    end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ringNorm",
    thydataty = "compute",
    data =
        "ringNorm.polynom_normalize_def ringNorm.polynom_simplify_def ringNorm.interp_p_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ringNorm"
end
