structure integerRingTheory :> integerRingTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading integerRingTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open integerTheory ringNormTheory
  in end;
  val _ = Theory.link_parents
          ("integerRing",
          Arbnum.fromString "1488587789",
          Arbnum.fromString "669667")
          [("ringNorm",
           Arbnum.fromString "1488587607",
           Arbnum.fromString "810569"),
           ("integer",
           Arbnum.fromString "1488587637",
           Arbnum.fromString "492174")];
  val _ = Theory.incorporate_types "integerRing" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("canonical", "canonical_sum"),
   ID("integer", "int"), ID("list", "list"), ID("quote", "index"),
   ID("canonical", "spolynom"), ID("quote", "varmap"),
   ID("ringNorm", "polynom"), ID("min", "bool"), ID("num", "num"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("arithmetic", "-"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "@"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("bool", "COND"), ID("list", "CONS"), ID("canonical", "Cons_monom"),
   ID("canonical", "Cons_varlist"), ID("quote", "Empty_vm"),
   ID("quote", "End_idx"), ID("bool", "F"), ID("quote", "Left_idx"),
   ID("list", "NIL"), ID("arithmetic", "NUMERAL"),
   ID("canonical", "Nil_monom"), ID("quote", "Node_vm"),
   ID("ringNorm", "Pconst"), ID("ringNorm", "Pmult"),
   ID("ringNorm", "Popp"), ID("ringNorm", "Pplus"), ID("ringNorm", "Pvar"),
   ID("quote", "Right_idx"), ID("bool", "T"), ID("arithmetic", "ZERO"),
   ID("prelim", "compare"), ID("prelim", "ordering"),
   ID("numeral", "iDUB"), ID("numeral", "iSUB"),
   ID("quote", "index_compare"), ID("quote", "index_lt"),
   ID("integer", "int_0"), ID("integer", "int_1"),
   ID("integer", "int_add"), ID("integerRing", "int_interp_p"),
   ID("integer", "int_mul"), ID("integer", "int_neg"),
   ID("integer", "int_of_num"), ID("integerRing", "int_polynom_normalize"),
   ID("integerRing", "int_polynom_simplify"),
   ID("integerRing", "int_r_canonical_sum_merge"),
   ID("integerRing", "int_r_canonical_sum_prod"),
   ID("integerRing", "int_r_canonical_sum_scalar"),
   ID("integerRing", "int_r_canonical_sum_scalar2"),
   ID("integerRing", "int_r_canonical_sum_scalar3"),
   ID("integerRing", "int_r_canonical_sum_simplify"),
   ID("integerRing", "int_r_ics_aux"),
   ID("integerRing", "int_r_interp_cs"),
   ID("integerRing", "int_r_interp_m"),
   ID("integerRing", "int_r_interp_sp"),
   ID("integerRing", "int_r_interp_vl"),
   ID("integerRing", "int_r_ivl_aux"),
   ID("integerRing", "int_r_monom_insert"),
   ID("integerRing", "int_r_spolynom_normalize"),
   ID("integerRing", "int_r_spolynom_simplify"),
   ID("integerRing", "int_r_varlist_insert"), ID("ringNorm", "interp_p"),
   ID("ring", "ring"), ID("ring", "is_ring"), ID("prelim", "list_compare"),
   ID("prelim", "list_merge"), ID("ringNorm", "polynom_normalize"),
   ID("ringNorm", "polynom_simplify"),
   ID("ringNorm", "r_canonical_sum_merge"),
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
   ID("ringNorm", "r_varlist_insert"), ID("ring", "recordtype.ring"),
   ID("quote", "varmap_find"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0], TYOP [0, 1, 1], TYOP [4], TYOP [3, 3],
   TYOP [0, 4, 2], TYOP [5, 0], TYOP [0, 6, 1], TYOP [0, 0, 5],
   TYOP [0, 4, 0], TYOP [0, 3, 9], TYOP [6, 0], TYOP [0, 11, 10],
   TYOP [0, 11, 9], TYOP [0, 6, 0], TYOP [0, 11, 14], TYOP [0, 0, 9],
   TYOP [0, 11, 16], TYOP [0, 1, 0], TYOP [0, 11, 18], TYOP [0, 0, 18],
   TYOP [0, 11, 20], TYOP [0, 0, 2], TYOP [0, 1, 2], TYOP [7, 0],
   TYOP [0, 24, 1], TYOP [0, 24, 0], TYOP [0, 11, 26], TYOP [8], TYOP [9],
   TYV "'a", TYOP [6, 30], TYOP [0, 30, 28], TYOP [0, 32, 28],
   TYOP [0, 28, 28], TYOP [0, 34, 28], TYOP [0, 1, 28], TYOP [0, 36, 28],
   TYOP [0, 3, 28], TYOP [0, 38, 28], TYOP [0, 0, 28], TYOP [0, 40, 28],
   TYOP [0, 4, 28], TYOP [0, 42, 28], TYOP [0, 29, 28], TYOP [0, 44, 28],
   TYOP [0, 24, 28], TYOP [0, 46, 28], TYOP [0, 31, 28], TYOP [0, 48, 28],
   TYOP [0, 11, 28], TYOP [0, 50, 28], TYOP [0, 29, 29], TYOP [0, 29, 52],
   TYOP [0, 28, 34], TYOP [0, 29, 44], TYOP [0, 30, 32], TYOP [0, 1, 36],
   TYOP [0, 2, 28], TYOP [0, 2, 58], TYOP [0, 23, 28], TYOP [0, 23, 60],
   TYOP [0, 22, 28], TYOP [0, 22, 62], TYOP [0, 8, 28], TYOP [0, 8, 64],
   TYOP [0, 5, 28], TYOP [0, 5, 66], TYOP [0, 25, 28], TYOP [0, 25, 68],
   TYOP [0, 7, 28], TYOP [0, 7, 70], TYOP [0, 19, 28], TYOP [0, 19, 72],
   TYOP [0, 12, 28], TYOP [0, 12, 74], TYOP [0, 21, 28], TYOP [0, 21, 76],
   TYOP [0, 17, 28], TYOP [0, 17, 78], TYOP [0, 13, 28], TYOP [0, 13, 80],
   TYOP [0, 27, 28], TYOP [0, 27, 82], TYOP [0, 15, 28], TYOP [0, 15, 84],
   TYOP [0, 0, 40], TYOP [0, 32, 30], TYOP [0, 28, 23], TYOP [0, 0, 0],
   TYOP [0, 0, 89], TYOP [0, 28, 90], TYOP [0, 28, 53], TYOP [0, 4, 4],
   TYOP [0, 3, 93], TYOP [0, 3, 3], TYOP [0, 31, 31], TYOP [0, 31, 96],
   TYOP [0, 30, 97], TYOP [0, 0, 24], TYOP [0, 24, 24], TYOP [0, 24, 100],
   TYOP [0, 3, 24], TYOP [0, 1, 23], TYOP [43], TYOP [0, 104, 103],
   TYOP [0, 3, 104], TYOP [0, 3, 106], TYOP [0, 3, 38], TYOP [0, 29, 0],
   TYOP [74, 0], TYOP [0, 110, 27], TYOP [0, 110, 28], TYOP [0, 4, 104],
   TYOP [0, 4, 113], TYOP [0, 107, 114], TYOP [0, 4, 93],
   TYOP [0, 108, 116], TYOP [0, 110, 25], TYOP [0, 110, 23],
   TYOP [0, 110, 22], TYOP [0, 110, 5], TYOP [0, 110, 8], TYOP [0, 110, 2],
   TYOP [0, 110, 21], TYOP [0, 110, 19], TYOP [0, 110, 17],
   TYOP [0, 110, 15], TYOP [0, 110, 13], TYOP [0, 110, 12],
   TYOP [0, 110, 7], TYOP [0, 89, 110], TYOP [0, 90, 131],
   TYOP [0, 90, 132], TYOP [0, 0, 133], TYOP [0, 0, 134], TYOP [0, 31, 30],
   TYOP [0, 3, 136], TYOP [0, 11, 0], TYOP [0, 3, 138]]
  end
  val _ = Theory.incorporate_consts "integerRing" tyvector
     [("int_r_varlist_insert", 5), ("int_r_spolynom_simplify", 7),
      ("int_r_spolynom_normalize", 7), ("int_r_monom_insert", 8),
      ("int_r_ivl_aux", 12), ("int_r_interp_vl", 13),
      ("int_r_interp_sp", 15), ("int_r_interp_m", 17),
      ("int_r_interp_cs", 19), ("int_r_ics_aux", 21),
      ("int_r_canonical_sum_simplify", 2),
      ("int_r_canonical_sum_scalar3", 8),
      ("int_r_canonical_sum_scalar2", 5),
      ("int_r_canonical_sum_scalar", 22), ("int_r_canonical_sum_prod", 23),
      ("int_r_canonical_sum_merge", 23), ("int_polynom_simplify", 25),
      ("int_polynom_normalize", 25), ("int_interp_p", 27)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("b", 28), TMV("c", 0), TMV("c0", 0), TMV("c1", 0),
   TMV("c2", 0), TMV("i", 3), TMV("i1", 3), TMV("l", 4), TMV("l0", 4),
   TMV("l1", 4), TMV("l2", 4), TMV("m", 29), TMV("n", 29), TMV("p", 24),
   TMV("p1", 24), TMV("p2", 24), TMV("pl", 24), TMV("pr", 24),
   TMV("s1", 1), TMV("s2", 1), TMV("t", 28), TMV("t", 1), TMV("t", 4),
   TMV("t'", 4), TMV("t1", 1), TMV("t2", 1), TMV("v1", 31), TMV("v2", 31),
   TMV("v4", 0), TMV("v5", 4), TMV("v6", 1), TMV("v7", 4), TMV("v8", 1),
   TMV("vm", 11), TMV("x", 30), TMV("x", 3), TMV("x", 0), TMV("x", 29),
   TMV("x", 24), TMV("x'", 3), TMC(10, 33), TMC(10, 35), TMC(10, 37),
   TMC(10, 39), TMC(10, 41), TMC(10, 43), TMC(10, 45), TMC(10, 47),
   TMC(10, 49), TMC(10, 51), TMC(11, 53), TMC(12, 53), TMC(13, 53),
   TMC(14, 54), TMC(15, 29), TMC(16, 55), TMC(17, 55), TMC(18, 56),
   TMC(18, 54), TMC(18, 57), TMC(18, 59), TMC(18, 61), TMC(18, 63),
   TMC(18, 65), TMC(18, 67), TMC(18, 69), TMC(18, 71), TMC(18, 73),
   TMC(18, 75), TMC(18, 77), TMC(18, 79), TMC(18, 81), TMC(18, 83),
   TMC(18, 85), TMC(18, 86), TMC(18, 55), TMC(19, 87), TMC(20, 52),
   TMC(21, 52), TMC(22, 88), TMC(22, 91), TMC(22, 92), TMC(23, 94),
   TMC(24, 8), TMC(25, 5), TMC(26, 31), TMC(27, 3), TMC(28, 28),
   TMC(29, 95), TMC(30, 4), TMC(31, 52), TMC(32, 1), TMC(33, 98),
   TMC(34, 99), TMC(35, 101), TMC(36, 100), TMC(37, 101), TMC(38, 102),
   TMC(39, 95), TMC(40, 28), TMC(41, 29), TMC(42, 105), TMC(44, 52),
   TMC(45, 92), TMC(46, 107), TMC(47, 108), TMC(48, 0), TMC(49, 0),
   TMC(50, 90), TMC(51, 27), TMC(52, 90), TMC(53, 89), TMC(54, 109),
   TMC(55, 25), TMC(56, 25), TMC(57, 23), TMC(58, 23), TMC(59, 22),
   TMC(60, 5), TMC(61, 8), TMC(62, 2), TMC(63, 21), TMC(64, 19),
   TMC(65, 17), TMC(66, 15), TMC(67, 13), TMC(68, 12), TMC(69, 8),
   TMC(70, 7), TMC(71, 7), TMC(72, 5), TMC(73, 111), TMC(75, 112),
   TMC(76, 115), TMC(77, 117), TMC(78, 118), TMC(79, 118), TMC(80, 119),
   TMC(81, 119), TMC(82, 120), TMC(83, 121), TMC(84, 122), TMC(85, 123),
   TMC(86, 124), TMC(87, 125), TMC(88, 126), TMC(89, 127), TMC(90, 128),
   TMC(91, 129), TMC(92, 122), TMC(93, 130), TMC(94, 130), TMC(95, 121),
   TMC(96, 135), TMC(97, 137), TMC(97, 139), TMC(98, 34)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op int_interp_p_def x = x
    val op int_interp_p_def =
    DT(((("integerRing",1),[]),[]),
       [read"%73%110@%132%154%107@%108@%109@%111@%112@@@"])
  fun op int_polynom_simplify_def x = x
    val op int_polynom_simplify_def =
    DT(((("integerRing",2),[]),[]),
       [read"%66%115@%137%154%107@%108@%109@%111@%112@@@"])
  fun op int_polynom_normalize_def x = x
    val op int_polynom_normalize_def =
    DT(((("integerRing",3),[]),[]),
       [read"%66%114@%136%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_canonical_sum_merge_def x = x
    val op int_r_canonical_sum_merge_def =
    DT(((("integerRing",4),[]),[]),
       [read"%62%116@%138%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_monom_insert_def x = x
    val op int_r_monom_insert_def =
    DT(((("integerRing",5),[]),[]),
       [read"%64%128@%150%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_varlist_insert_def x = x
    val op int_r_varlist_insert_def =
    DT(((("integerRing",6),[]),[]),
       [read"%65%131@%153%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_canonical_sum_scalar_def x = x
    val op int_r_canonical_sum_scalar_def =
    DT(((("integerRing",7),[]),[]),
       [read"%63%118@%140%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_canonical_sum_scalar2_def x = x
    val op int_r_canonical_sum_scalar2_def =
    DT(((("integerRing",8),[]),[]),
       [read"%65%119@%141%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_canonical_sum_scalar3_def x = x
    val op int_r_canonical_sum_scalar3_def =
    DT(((("integerRing",9),[]),[]),
       [read"%64%120@%142%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_canonical_sum_prod_def x = x
    val op int_r_canonical_sum_prod_def =
    DT(((("integerRing",10),[]),[]),
       [read"%62%117@%139%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_canonical_sum_simplify_def x = x
    val op int_r_canonical_sum_simplify_def =
    DT(((("integerRing",11),[]),[]),
       [read"%61%121@%143%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_ivl_aux_def x = x
    val op int_r_ivl_aux_def =
    DT(((("integerRing",12),[]),[]),
       [read"%69%127@%149%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_interp_vl_def x = x
    val op int_r_interp_vl_def =
    DT(((("integerRing",13),[]),[]),
       [read"%72%126@%148%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_interp_m_def x = x
    val op int_r_interp_m_def =
    DT(((("integerRing",14),[]),[]),
       [read"%71%124@%146%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_ics_aux_def x = x
    val op int_r_ics_aux_def =
    DT(((("integerRing",15),[]),[]),
       [read"%70%122@%144%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_interp_cs_def x = x
    val op int_r_interp_cs_def =
    DT(((("integerRing",16),[]),[]),
       [read"%68%123@%145%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_spolynom_normalize_def x = x
    val op int_r_spolynom_normalize_def =
    DT(((("integerRing",17),[]),[]),
       [read"%67%129@%151%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_spolynom_simplify_def x = x
    val op int_r_spolynom_simplify_def =
    DT(((("integerRing",18),[]),[]),
       [read"%67%130@%152%154%107@%108@%109@%111@%112@@@"])
  fun op int_r_interp_sp_def x = x
    val op int_r_interp_sp_def =
    DT(((("integerRing",19),[]),[]),
       [read"%74%125@%147%154%107@%108@%109@%111@%112@@@"])
  fun op int_is_ring x = x
    val op int_is_ring =
    DT(((("integerRing",0),
        [("bool",[36,51,56]),("integer",[58,60,62,63,77,78,79,82,83,85]),
         ("ring",[11,35])]),["DISK_THM"]),
       [read"%133%154%107@%108@%109@%111@%112@@"])
  fun op int_ring_thms x = x
    val op int_ring_thms =
    DT(((("integerRing",20),
        [("bool",[58]),
         ("integerRing",[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]),
         ("quote",[42]),("ring",[11]),
         ("ringNorm",
         [17,18,19,20,21,22,23,24,25,26,27,28,29,53,54,55,
          57])]),["DISK_THM"]),
       [read"%54%133%154%107@%108@%109@%111@%112@@@%54%50%34%48%14%75%110$1@$0@@%123$1@%115$0@@@|@|@@%54%54%54%50%34%45%2%75%110$1@%94$0@@@$0@|@|@@%54%50%34%44%6%75%110$1@%98$0@@@%156$0@$1@@|@|@@%54%50%34%48%15%48%16%75%110$2@%97$1@$0@@@%109%110$2@$1@@%110$2@$0@@@|@|@|@@%54%50%34%48%15%48%16%75%110$2@%95$1@$0@@@%111%110$2@$1@@%110$2@$0@@@|@|@|@@%50%34%48%15%75%110$1@%96$0@@@%112%110$1@$0@@@|@|@@@@@@%54%41%35%49%28%49%27%58%155%87@%93$2@$0@$1@@@$2@|@|@|@@%54%41%35%49%28%49%27%44%7%58%155%99$0@@%93$3@$1@$2@@@%155$0@$2@@|@|@|@|@@%54%41%35%49%28%49%27%44%7%58%155%89$0@@%93$3@$1@$2@@@%155$0@$1@@|@|@|@|@@%44%6%58%155$0@%86@@%77%35%100|@@|@@@@@@%54%54%43%26%43%25%46%11%46%10%45%5%45%4%60%116%84$0@$2@$4@@%84$1@$3@$5@@@%102%134%105@$2@$3@@%84$0@$2@%116$4@%84$1@$3@$5@@@@%84%109$0@$1@@$2@%116$4@$5@@@%84$1@$3@%116%84$0@$2@$4@@$5@@@@|@|@|@|@|@|@@%54%43%26%43%25%46%11%46%10%45%4%60%116%84$0@$1@$3@@%85$2@$4@@@%102%134%105@$1@$2@@%84$0@$1@%116$3@%85$2@$4@@@@%84%109$0@%108@@$1@%116$3@$4@@@%85$2@%116%84$0@$1@$3@@$4@@@@|@|@|@|@|@@%54%43%26%43%25%46%11%46%10%45%5%60%116%85$1@$3@@%84$0@$2@$4@@@%102%134%105@$1@$2@@%85$1@%116$3@%84$0@$2@$4@@@@%84%109%108@$0@@$1@%116$3@$4@@@%84$0@$2@%116%85$1@$3@@$4@@@@|@|@|@|@|@@%54%43%26%43%25%46%11%46%10%60%116%85$0@$2@@%85$1@$3@@@%102%134%105@$0@$1@@%85$0@%116$2@%85$1@$3@@@@%84%109%108@%108@@$0@%116$2@$3@@@%85$1@%116%85$0@$2@@$3@@@@|@|@|@|@@%54%43%19%60%116$0@%92@@$0@|@@%54%43%31%46%30%45%29%60%116%92@%84$0@$1@$2@@@%84$0@$1@$2@@|@|@|@@%43%33%46%32%60%116%92@%85$0@$1@@@%85$0@$1@@|@|@@@@@@@@%54%54%43%26%46%11%46%10%45%5%45%4%60%128$0@$2@%84$1@$3@$4@@@%102%134%105@$2@$3@@%84$0@$2@%84$1@$3@$4@@@%84%109$0@$1@@$2@$4@@%84$1@$3@%128$0@$2@$4@@@@|@|@|@|@|@@%54%43%26%46%11%46%10%45%4%60%128$0@$1@%85$2@$3@@@%102%134%105@$1@$2@@%84$0@$1@%85$2@$3@@@%84%109$0@%108@@$1@$3@@%85$2@%128$0@$1@$3@@@@|@|@|@|@@%46%10%45%4%60%128$0@$1@%92@@%84$0@$1@%92@@|@|@@@@%54%54%43%26%46%11%46%10%45%5%60%131$1@%84$0@$2@$3@@@%102%134%105@$1@$2@@%85$1@%84$0@$2@$3@@@%84%109%108@$0@@$1@$3@@%84$0@$2@%131$1@$3@@@@|@|@|@|@@%54%43%26%46%11%46%10%60%131$0@%85$1@$2@@@%102%134%105@$0@$1@@%85$0@%85$1@$2@@@%84%109%108@%108@@$0@$2@@%85$1@%131$0@$2@@@@|@|@|@@%46%10%60%131$0@%92@@%85$0@%92@@|@@@@%54%54%45%3%45%2%46%8%43%22%60%118$3@%84$2@$1@$0@@@%84%111$3@$2@@$1@%118$3@$0@@@|@|@|@|@@%54%45%3%46%8%43%22%60%118$2@%85$1@$0@@@%84$2@$1@%118$2@$0@@@|@|@|@@%45%3%60%118$0@%92@@%92@|@@@@%54%54%46%9%45%2%46%8%43%22%60%119$3@%84$2@$1@$0@@@%128$2@%135%106@$3@$1@@%119$3@$0@@@|@|@|@|@@%54%46%9%46%8%43%22%60%119$2@%85$1@$0@@@%131%135%106@$2@$1@@%119$2@$0@@@|@|@|@@%46%9%60%119$0@%92@@%92@|@@@@%54%54%45%3%46%9%45%2%46%8%43%22%60%120$4@$3@%84$2@$1@$0@@@%128%111$4@$2@@%135%106@$3@$1@@%120$4@$3@$0@@@|@|@|@|@|@@%54%45%3%46%9%46%8%43%22%60%120$3@$2@%85$1@$0@@@%128$3@%135%106@$2@$1@@%120$3@$2@$0@@@|@|@|@|@@%45%3%46%9%60%120$1@$0@%92@@%92@|@|@@@@%54%54%45%4%46%10%43%25%43%20%60%117%84$3@$2@$1@@$0@@%116%120$3@$2@$0@@%117$1@$0@@@|@|@|@|@@%54%46%10%43%25%43%20%60%117%85$2@$1@@$0@@%116%119$2@$0@@%117$1@$0@@@|@|@|@@%43%20%60%117%92@$0@@%92@|@@@@%54%54%45%2%46%8%43%22%60%121%84$2@$1@$0@@@%80%75$2@%107@@%121$0@@%80%75$2@%108@@%85$1@%121$0@@@%84$2@$1@%121$0@@@@@|@|@|@@%54%46%8%43%22%60%121%85$1@$0@@@%85$1@%121$0@@@|@|@@%60%121%92@@%92@@@@%54%54%50%34%44%36%75%127$1@$0@%90@@%156$0@$1@@|@|@@%50%34%44%36%44%40%46%24%75%127$3@$2@%83$1@$0@@@%111%156$2@$3@@%127$3@$1@$0@@@|@|@|@|@@@%54%54%50%34%75%126$0@%90@@%108@|@@%50%34%44%36%46%23%75%126$2@%83$1@$0@@@%127$2@$1@$0@@|@|@|@@@%54%54%50%34%45%2%75%124$1@$0@%90@@$0@|@|@@%50%34%45%2%44%36%46%23%75%124$3@$2@%83$1@$0@@@%111$2@%127$3@$1@$0@@@|@|@|@|@@@%54%54%50%34%45%0%75%122$1@$0@%92@@$0@|@|@@%54%50%34%45%0%46%8%43%22%75%122$3@$2@%85$1@$0@@@%109$2@%122$3@%126$3@$1@@$0@@@|@|@|@|@@%50%34%45%0%45%2%46%8%43%22%75%122$4@$3@%84$2@$1@$0@@@%109$3@%122$4@%124$4@$2@$1@@$0@@@|@|@|@|@|@@@@%54%54%50%34%75%123$0@%92@@%107@|@@%54%50%34%46%8%43%22%75%123$2@%85$1@$0@@@%122$2@%126$2@$1@@$0@@|@|@|@@%50%34%45%2%46%8%43%22%75%123$3@%84$2@$1@$0@@@%122$3@%124$3@$2@$1@@$0@@|@|@|@|@@@@%54%54%44%6%60%114%98$0@@@%85%83$0@%90@@%92@@|@@%54%45%2%60%114%94$0@@@%84$0@%90@%92@@|@@%54%48%17%48%18%60%114%97$1@$0@@@%116%114$1@@%114$0@@@|@|@@%54%48%17%48%18%60%114%95$1@$0@@@%117%114$1@@%114$0@@@|@|@@%48%14%60%114%96$0@@@%120%112%108@@%90@%114$0@@@|@@@@@@%48%39%60%115$0@@%121%114$0@@@|@@@@@@@@@@@@@@@@@@"])
  fun op int_calculate x = x
    val op int_calculate =
    DT(((("integerRing",21),
        [("bool",[25,51,56]),("integer",[319,323,342])]),["DISK_THM"]),
       [read"%54%75%109%113%13@@%113%12@@@%113%52%13@%12@@@@%54%75%109%112%113%13@@@%113%12@@@%81%57%13@%12@@%113%53%12@%13@@@%112%113%53%13@%12@@@@@@%54%75%109%113%13@@%112%113%12@@@@%81%57%12@%13@@%113%53%13@%12@@@%112%113%53%12@%13@@@@@@%54%75%109%112%113%13@@@%112%113%12@@@@%112%113%52%13@%12@@@@@%54%75%111%113%13@@%113%12@@@%113%51%13@%12@@@@%54%75%111%112%113%13@@@%113%12@@@%112%113%51%13@%12@@@@@%54%75%111%113%13@@%112%113%12@@@@%112%113%51%13@%12@@@@@%54%75%111%112%113%13@@@%112%113%12@@@@%113%51%13@%12@@@@%54%59%75%113%13@@%113%12@@@%76%13@%12@@@%54%59%75%113%13@@%112%113%12@@@@%54%76%13@%55@@%76%12@%55@@@@%54%59%75%112%113%13@@@%113%12@@@%54%76%13@%55@@%76%12@%55@@@@%54%59%75%112%113%13@@@%112%113%12@@@@%76%13@%12@@@%54%75%112%112%37@@@%37@@%75%112%113%55@@@%113%55@@@@@@@@@@@@@@@"])
  fun op int_rewrites x = x
    val op int_rewrites =
    DT(((("integerRing",22),
        [("bool",[51]),("integer",[77,78]),("integerRing",[21]),
         ("numeral",[7,8,15,16])]),["DISK_THM"]),
       [read"%54%54%75%109%113%13@@%113%12@@@%113%52%13@%12@@@@%54%75%109%112%113%13@@@%113%12@@@%81%57%13@%12@@%113%53%12@%13@@@%112%113%53%13@%12@@@@@@%54%75%109%113%13@@%112%113%12@@@@%81%57%12@%13@@%113%53%13@%12@@@%112%113%53%12@%13@@@@@@%54%75%109%112%113%13@@@%112%113%12@@@@%112%113%52%13@%12@@@@@%54%75%111%113%13@@%113%12@@@%113%51%13@%12@@@@%54%75%111%112%113%13@@@%113%12@@@%112%113%51%13@%12@@@@@%54%75%111%113%13@@%112%113%12@@@@%112%113%51%13@%12@@@@@%54%75%111%112%113%13@@@%112%113%12@@@@%113%51%13@%12@@@@%54%59%75%113%13@@%113%12@@@%76%13@%12@@@%54%59%75%113%13@@%112%113%12@@@@%54%76%13@%55@@%76%12@%55@@@@%54%59%75%112%113%13@@@%113%12@@@%54%76%13@%55@@%76%12@%55@@@@%54%59%75%112%113%13@@@%112%113%12@@@@%76%13@%12@@@%54%75%112%112%37@@@%37@@%75%112%113%55@@@%113%55@@@@@@@@@@@@@@@@%54%75%107@%113%55@@@%54%75%108@%113%91%78%101@@@@@%54%47%13%47%12%54%59%56%101@%78$1@@@%100@@%54%59%56%101@%79$1@@@%100@@%54%59%56$1@%101@@%88@@%54%59%56%78$1@@%78$0@@@%56$1@$0@@@%54%59%56%79$1@@%79$0@@@%56$1@$0@@@%54%59%56%78$1@@%79$0@@@%157%56$0@$1@@@@%59%56%79$1@@%78$0@@@%56$1@$0@@@@@@@@|@|@@%54%47%13%47%12%54%59%57%101@$1@@%100@@%54%59%57%78$1@@%101@@%88@@%54%59%57%79$1@@%101@@%88@@%54%59%57%78$1@@%78$0@@@%57$1@$0@@@%54%59%57%78$1@@%79$0@@@%57$1@$0@@@%54%59%57%79$1@@%78$0@@@%157%57$0@$1@@@@%59%57%79$1@@%79$0@@@%57$1@$0@@@@@@@@|@|@@%54%47%13%47%12%76%91%53$1@$0@@@%82%56$0@$1@@%91%104%100@$1@$0@@@%55@@|@|@@%54%42%1%47%13%47%12%54%76%104$2@%101@%38@@%101@@%54%76%104%100@$1@%101@@$1@@%54%76%104%88@%78$1@@%101@@%103$1@@@%54%76%104%100@%78$1@@%78$0@@@%103%104%100@$1@$0@@@@%54%76%104%88@%78$1@@%78$0@@@%78%104%88@$1@$0@@@@%54%76%104%100@%78$1@@%79$0@@@%78%104%88@$1@$0@@@@%54%76%104%88@%78$1@@%79$0@@@%103%104%88@$1@$0@@@@%54%76%104%88@%79$1@@%101@@%78$1@@@%54%76%104%100@%79$1@@%78$0@@@%78%104%100@$1@$0@@@@%54%76%104%88@%79$1@@%78$0@@@%103%104%100@$1@$0@@@@%54%76%104%100@%79$1@@%79$0@@@%103%104%100@$1@$0@@@@%76%104%88@%79$1@@%79$0@@@%78%104%88@$1@$0@@@@@@@@@@@@@@|@|@|@@%42%21%54%59%54%100@$0@@$0@@%54%59%54$0@%100@@$0@@%54%59%54%88@$0@@%88@@%54%59%54$0@%88@@%88@@%59%54$0@$0@@$0@@@@@|@@@@@@@@"])
  end
  val _ = DB.bindl "integerRing"
  [("int_interp_p_def",int_interp_p_def,DB.Def),
   ("int_polynom_simplify_def",int_polynom_simplify_def,DB.Def),
   ("int_polynom_normalize_def",int_polynom_normalize_def,DB.Def),
   ("int_r_canonical_sum_merge_def",int_r_canonical_sum_merge_def,DB.Def),
   ("int_r_monom_insert_def",int_r_monom_insert_def,DB.Def),
   ("int_r_varlist_insert_def",int_r_varlist_insert_def,DB.Def),
   ("int_r_canonical_sum_scalar_def",
    int_r_canonical_sum_scalar_def,
    DB.Def),
   ("int_r_canonical_sum_scalar2_def",
    int_r_canonical_sum_scalar2_def,
    DB.Def),
   ("int_r_canonical_sum_scalar3_def",
    int_r_canonical_sum_scalar3_def,
    DB.Def),
   ("int_r_canonical_sum_prod_def",int_r_canonical_sum_prod_def,DB.Def),
   ("int_r_canonical_sum_simplify_def",
    int_r_canonical_sum_simplify_def,
    DB.Def), ("int_r_ivl_aux_def",int_r_ivl_aux_def,DB.Def),
   ("int_r_interp_vl_def",int_r_interp_vl_def,DB.Def),
   ("int_r_interp_m_def",int_r_interp_m_def,DB.Def),
   ("int_r_ics_aux_def",int_r_ics_aux_def,DB.Def),
   ("int_r_interp_cs_def",int_r_interp_cs_def,DB.Def),
   ("int_r_spolynom_normalize_def",int_r_spolynom_normalize_def,DB.Def),
   ("int_r_spolynom_simplify_def",int_r_spolynom_simplify_def,DB.Def),
   ("int_r_interp_sp_def",int_r_interp_sp_def,DB.Def),
   ("int_is_ring",int_is_ring,DB.Thm),
   ("int_ring_thms",int_ring_thms,DB.Thm),
   ("int_calculate",int_calculate,DB.Thm),
   ("int_rewrites",int_rewrites,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("ringNormTheory.ringNorm_grammars",
                          ringNormTheory.ringNorm_grammars),
                         ("integerTheory.integer_grammars",
                          integerTheory.integer_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_interp_p", (Term.prim_mk_const { Name = "int_interp_p", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_interp_p", (Term.prim_mk_const { Name = "int_interp_p", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_polynom_simplify", (Term.prim_mk_const { Name = "int_polynom_simplify", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_polynom_simplify", (Term.prim_mk_const { Name = "int_polynom_simplify", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_polynom_normalize", (Term.prim_mk_const { Name = "int_polynom_normalize", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_polynom_normalize", (Term.prim_mk_const { Name = "int_polynom_normalize", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_merge", (Term.prim_mk_const { Name = "int_r_canonical_sum_merge", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_merge", (Term.prim_mk_const { Name = "int_r_canonical_sum_merge", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_monom_insert", (Term.prim_mk_const { Name = "int_r_monom_insert", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_monom_insert", (Term.prim_mk_const { Name = "int_r_monom_insert", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_varlist_insert", (Term.prim_mk_const { Name = "int_r_varlist_insert", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_varlist_insert", (Term.prim_mk_const { Name = "int_r_varlist_insert", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_scalar", (Term.prim_mk_const { Name = "int_r_canonical_sum_scalar", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_scalar", (Term.prim_mk_const { Name = "int_r_canonical_sum_scalar", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_scalar2", (Term.prim_mk_const { Name = "int_r_canonical_sum_scalar2", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_scalar2", (Term.prim_mk_const { Name = "int_r_canonical_sum_scalar2", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_scalar3", (Term.prim_mk_const { Name = "int_r_canonical_sum_scalar3", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_scalar3", (Term.prim_mk_const { Name = "int_r_canonical_sum_scalar3", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_prod", (Term.prim_mk_const { Name = "int_r_canonical_sum_prod", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_prod", (Term.prim_mk_const { Name = "int_r_canonical_sum_prod", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_simplify", (Term.prim_mk_const { Name = "int_r_canonical_sum_simplify", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_canonical_sum_simplify", (Term.prim_mk_const { Name = "int_r_canonical_sum_simplify", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_ivl_aux", (Term.prim_mk_const { Name = "int_r_ivl_aux", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_ivl_aux", (Term.prim_mk_const { Name = "int_r_ivl_aux", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_vl", (Term.prim_mk_const { Name = "int_r_interp_vl", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_vl", (Term.prim_mk_const { Name = "int_r_interp_vl", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_m", (Term.prim_mk_const { Name = "int_r_interp_m", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_m", (Term.prim_mk_const { Name = "int_r_interp_m", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_ics_aux", (Term.prim_mk_const { Name = "int_r_ics_aux", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_ics_aux", (Term.prim_mk_const { Name = "int_r_ics_aux", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_cs", (Term.prim_mk_const { Name = "int_r_interp_cs", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_cs", (Term.prim_mk_const { Name = "int_r_interp_cs", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_spolynom_normalize", (Term.prim_mk_const { Name = "int_r_spolynom_normalize", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_spolynom_normalize", (Term.prim_mk_const { Name = "int_r_spolynom_normalize", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_spolynom_simplify", (Term.prim_mk_const { Name = "int_r_spolynom_simplify", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_spolynom_simplify", (Term.prim_mk_const { Name = "int_r_spolynom_simplify", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_sp", (Term.prim_mk_const { Name = "int_r_interp_sp", Thy = "integerRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_r_interp_sp", (Term.prim_mk_const { Name = "int_r_interp_sp", Thy = "integerRing"}))
  val integerRing_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "integerRing"
end
