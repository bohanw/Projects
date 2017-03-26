structure ratRingTheory :> ratRingTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ratRingTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open ratTheory
  in end;
  val _ = Theory.link_parents
          ("ratRing",
          Arbnum.fromString "1488589138",
          Arbnum.fromString "806978")
          [("rat",
           Arbnum.fromString "1488589091",
           Arbnum.fromString "416948")];
  val _ = Theory.incorporate_types "ratRing" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("canonical", "canonical_sum"), ID("rat", "rat"),
   ID("list", "list"), ID("quote", "index"), ID("canonical", "spolynom"),
   ID("quote", "varmap"), ID("ringNorm", "polynom"), ID("bool", "!"),
   ID("min", "bool"), ID("bool", "/\\"), ID("num", "0"), ID("num", "num"),
   ID("min", "="), ID("min", "@"), ID("arithmetic", "BIT1"),
   ID("bool", "COND"), ID("list", "CONS"), ID("canonical", "Cons_monom"),
   ID("canonical", "Cons_varlist"), ID("quote", "Empty_vm"),
   ID("quote", "End_idx"), ID("quote", "Left_idx"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("canonical", "Nil_monom"),
   ID("quote", "Node_vm"), ID("ringNorm", "Pconst"),
   ID("ringNorm", "Pmult"), ID("ringNorm", "Popp"),
   ID("ringNorm", "Pplus"), ID("ringNorm", "Pvar"),
   ID("quote", "Right_idx"), ID("bool", "T"), ID("arithmetic", "ZERO"),
   ID("prelim", "compare"), ID("prelim", "ordering"),
   ID("quote", "index_compare"), ID("quote", "index_lt"),
   ID("ringNorm", "interp_p"), ID("ring", "ring"), ID("ring", "is_ring"),
   ID("prelim", "list_compare"), ID("prelim", "list_merge"),
   ID("ringNorm", "polynom_normalize"), ID("ringNorm", "polynom_simplify"),
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
   ID("ringNorm", "r_varlist_insert"), ID("rat", "rat_add"),
   ID("rat", "rat_ainv"), ID("ratRing", "rat_interp_p"),
   ID("rat", "rat_mul"), ID("rat", "rat_of_num"),
   ID("ratRing", "rat_polynom_normalize"),
   ID("ratRing", "rat_polynom_simplify"),
   ID("ratRing", "rat_r_canonical_sum_merge"),
   ID("ratRing", "rat_r_canonical_sum_prod"),
   ID("ratRing", "rat_r_canonical_sum_scalar"),
   ID("ratRing", "rat_r_canonical_sum_scalar2"),
   ID("ratRing", "rat_r_canonical_sum_scalar3"),
   ID("ratRing", "rat_r_canonical_sum_simplify"),
   ID("ratRing", "rat_r_ics_aux"), ID("ratRing", "rat_r_interp_cs"),
   ID("ratRing", "rat_r_interp_m"), ID("ratRing", "rat_r_interp_sp"),
   ID("ratRing", "rat_r_interp_vl"), ID("ratRing", "rat_r_ivl_aux"),
   ID("ratRing", "rat_r_monom_insert"),
   ID("ratRing", "rat_r_spolynom_normalize"),
   ID("ratRing", "rat_r_spolynom_simplify"),
   ID("ratRing", "rat_r_varlist_insert"), ID("ring", "recordtype.ring"),
   ID("quote", "varmap_find")]
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
   TYOP [0, 24, 1], TYOP [0, 24, 0], TYOP [0, 11, 26], TYV "'a",
   TYOP [6, 28], TYOP [9], TYOP [0, 28, 30], TYOP [0, 31, 30],
   TYOP [0, 1, 30], TYOP [0, 33, 30], TYOP [0, 3, 30], TYOP [0, 35, 30],
   TYOP [0, 4, 30], TYOP [0, 37, 30], TYOP [0, 24, 30], TYOP [0, 39, 30],
   TYOP [0, 0, 30], TYOP [0, 41, 30], TYOP [0, 29, 30], TYOP [0, 43, 30],
   TYOP [0, 11, 30], TYOP [0, 45, 30], TYOP [0, 30, 30], TYOP [0, 30, 47],
   TYOP [12], TYOP [0, 28, 31], TYOP [0, 1, 33], TYOP [0, 2, 30],
   TYOP [0, 2, 52], TYOP [0, 23, 30], TYOP [0, 23, 54], TYOP [0, 5, 30],
   TYOP [0, 5, 56], TYOP [0, 25, 30], TYOP [0, 25, 58], TYOP [0, 22, 30],
   TYOP [0, 22, 60], TYOP [0, 8, 30], TYOP [0, 8, 62], TYOP [0, 7, 30],
   TYOP [0, 7, 64], TYOP [0, 19, 30], TYOP [0, 19, 66], TYOP [0, 12, 30],
   TYOP [0, 12, 68], TYOP [0, 13, 30], TYOP [0, 13, 70], TYOP [0, 27, 30],
   TYOP [0, 27, 72], TYOP [0, 21, 30], TYOP [0, 21, 74], TYOP [0, 17, 30],
   TYOP [0, 17, 76], TYOP [0, 15, 30], TYOP [0, 15, 78], TYOP [0, 0, 41],
   TYOP [0, 31, 28], TYOP [0, 49, 49], TYOP [0, 30, 23], TYOP [0, 4, 4],
   TYOP [0, 3, 84], TYOP [0, 3, 3], TYOP [0, 29, 29], TYOP [0, 29, 87],
   TYOP [0, 28, 88], TYOP [0, 0, 24], TYOP [0, 24, 24], TYOP [0, 24, 91],
   TYOP [0, 3, 24], TYOP [0, 1, 23], TYOP [36], TYOP [0, 95, 94],
   TYOP [0, 3, 95], TYOP [0, 3, 97], TYOP [0, 3, 35], TYOP [40, 0],
   TYOP [0, 100, 27], TYOP [0, 100, 30], TYOP [0, 4, 95], TYOP [0, 4, 103],
   TYOP [0, 98, 104], TYOP [0, 4, 84], TYOP [0, 99, 106],
   TYOP [0, 100, 25], TYOP [0, 100, 23], TYOP [0, 100, 22],
   TYOP [0, 100, 5], TYOP [0, 100, 8], TYOP [0, 100, 2], TYOP [0, 100, 21],
   TYOP [0, 100, 19], TYOP [0, 100, 17], TYOP [0, 100, 15],
   TYOP [0, 100, 13], TYOP [0, 100, 12], TYOP [0, 100, 7], TYOP [0, 0, 0],
   TYOP [0, 0, 121], TYOP [0, 49, 0], TYOP [0, 121, 100],
   TYOP [0, 122, 124], TYOP [0, 122, 125], TYOP [0, 0, 126],
   TYOP [0, 0, 127], TYOP [0, 29, 28], TYOP [0, 3, 129], TYOP [0, 11, 0],
   TYOP [0, 3, 131]]
  end
  val _ = Theory.incorporate_consts "ratRing" tyvector
     [("rat_r_varlist_insert", 5), ("rat_r_spolynom_simplify", 7),
      ("rat_r_spolynom_normalize", 7), ("rat_r_monom_insert", 8),
      ("rat_r_ivl_aux", 12), ("rat_r_interp_vl", 13),
      ("rat_r_interp_sp", 15), ("rat_r_interp_m", 17),
      ("rat_r_interp_cs", 19), ("rat_r_ics_aux", 21),
      ("rat_r_canonical_sum_simplify", 2),
      ("rat_r_canonical_sum_scalar3", 8),
      ("rat_r_canonical_sum_scalar2", 5),
      ("rat_r_canonical_sum_scalar", 22), ("rat_r_canonical_sum_prod", 23),
      ("rat_r_canonical_sum_merge", 23), ("rat_polynom_simplify", 25),
      ("rat_polynom_normalize", 25), ("rat_interp_p", 27)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("c", 0), TMV("c0", 0), TMV("c1", 0), TMV("c2", 0),
   TMV("i", 3), TMV("i1", 3), TMV("l", 4), TMV("l0", 4), TMV("l1", 4),
   TMV("l2", 4), TMV("p", 24), TMV("p1", 24), TMV("p2", 24), TMV("pl", 24),
   TMV("pr", 24), TMV("s1", 1), TMV("s2", 1), TMV("t", 1), TMV("t", 4),
   TMV("t'", 4), TMV("t1", 1), TMV("t2", 1), TMV("v1", 29), TMV("v2", 29),
   TMV("v4", 0), TMV("v5", 4), TMV("v6", 1), TMV("v7", 4), TMV("v8", 1),
   TMV("vm", 11), TMV("x", 28), TMV("x", 3), TMV("x", 24), TMV("x'", 3),
   TMC(8, 32), TMC(8, 34), TMC(8, 36), TMC(8, 38), TMC(8, 40), TMC(8, 42),
   TMC(8, 44), TMC(8, 46), TMC(10, 48), TMC(11, 49), TMC(13, 50),
   TMC(13, 51), TMC(13, 53), TMC(13, 55), TMC(13, 57), TMC(13, 59),
   TMC(13, 61), TMC(13, 63), TMC(13, 65), TMC(13, 67), TMC(13, 69),
   TMC(13, 71), TMC(13, 73), TMC(13, 75), TMC(13, 77), TMC(13, 79),
   TMC(13, 80), TMC(14, 81), TMC(15, 82), TMC(16, 83), TMC(17, 85),
   TMC(18, 8), TMC(19, 5), TMC(20, 29), TMC(21, 3), TMC(22, 86),
   TMC(23, 4), TMC(24, 82), TMC(25, 1), TMC(26, 89), TMC(27, 90),
   TMC(28, 92), TMC(29, 91), TMC(30, 92), TMC(31, 93), TMC(32, 86),
   TMC(33, 30), TMC(34, 49), TMC(35, 96), TMC(37, 98), TMC(38, 99),
   TMC(39, 101), TMC(41, 102), TMC(42, 105), TMC(43, 107), TMC(44, 108),
   TMC(45, 108), TMC(46, 109), TMC(47, 109), TMC(48, 110), TMC(49, 111),
   TMC(50, 112), TMC(51, 113), TMC(52, 114), TMC(53, 115), TMC(54, 116),
   TMC(55, 117), TMC(56, 118), TMC(57, 119), TMC(58, 112), TMC(59, 120),
   TMC(60, 120), TMC(61, 111), TMC(62, 122), TMC(63, 121), TMC(64, 27),
   TMC(65, 122), TMC(66, 123), TMC(67, 25), TMC(68, 25), TMC(69, 23),
   TMC(70, 23), TMC(71, 22), TMC(72, 5), TMC(73, 8), TMC(74, 2),
   TMC(75, 21), TMC(76, 19), TMC(77, 17), TMC(78, 15), TMC(79, 13),
   TMC(80, 12), TMC(81, 8), TMC(82, 7), TMC(83, 7), TMC(84, 5),
   TMC(85, 128), TMC(86, 130), TMC(86, 132)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op rat_interp_p_def x = x
    val op rat_interp_p_def =
    DT(((("ratRing",1),[]),[]),
       [read"%57%110@%86%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_polynom_simplify_def x = x
    val op rat_polynom_simplify_def =
    DT(((("ratRing",2),[]),[]),
       [read"%50%114@%91%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_polynom_normalize_def x = x
    val op rat_polynom_normalize_def =
    DT(((("ratRing",3),[]),[]),
       [read"%50%113@%90%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_canonical_sum_merge_def x = x
    val op rat_r_canonical_sum_merge_def =
    DT(((("ratRing",4),[]),[]),
       [read"%48%115@%92%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_monom_insert_def x = x
    val op rat_r_monom_insert_def =
    DT(((("ratRing",5),[]),[]),
       [read"%52%127@%104%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_varlist_insert_def x = x
    val op rat_r_varlist_insert_def =
    DT(((("ratRing",6),[]),[]),
       [read"%49%130@%107%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_canonical_sum_scalar_def x = x
    val op rat_r_canonical_sum_scalar_def =
    DT(((("ratRing",7),[]),[]),
       [read"%51%117@%94%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_canonical_sum_scalar2_def x = x
    val op rat_r_canonical_sum_scalar2_def =
    DT(((("ratRing",8),[]),[]),
       [read"%49%118@%95%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_canonical_sum_scalar3_def x = x
    val op rat_r_canonical_sum_scalar3_def =
    DT(((("ratRing",9),[]),[]),
       [read"%52%119@%96%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_canonical_sum_prod_def x = x
    val op rat_r_canonical_sum_prod_def =
    DT(((("ratRing",10),[]),[]),
       [read"%48%116@%93%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_canonical_sum_simplify_def x = x
    val op rat_r_canonical_sum_simplify_def =
    DT(((("ratRing",11),[]),[]),
       [read"%47%120@%97%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_ivl_aux_def x = x
    val op rat_r_ivl_aux_def =
    DT(((("ratRing",12),[]),[]),
       [read"%55%126@%103%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_interp_vl_def x = x
    val op rat_r_interp_vl_def =
    DT(((("ratRing",13),[]),[]),
       [read"%56%125@%102%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_interp_m_def x = x
    val op rat_r_interp_m_def =
    DT(((("ratRing",14),[]),[]),
       [read"%59%123@%100%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_ics_aux_def x = x
    val op rat_r_ics_aux_def =
    DT(((("ratRing",15),[]),[]),
       [read"%58%121@%98%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_interp_cs_def x = x
    val op rat_r_interp_cs_def =
    DT(((("ratRing",16),[]),[]),
       [read"%54%122@%99%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_spolynom_normalize_def x = x
    val op rat_r_spolynom_normalize_def =
    DT(((("ratRing",17),[]),[]),
       [read"%53%128@%105%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_spolynom_simplify_def x = x
    val op rat_r_spolynom_simplify_def =
    DT(((("ratRing",18),[]),[]),
       [read"%53%129@%106%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op rat_r_interp_sp_def x = x
    val op rat_r_interp_sp_def =
    DT(((("ratRing",19),[]),[]),
       [read"%60%124@%101%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@"])
  fun op RAT_IS_RING x = x
    val op RAT_IS_RING =
    DT(((("ratRing",0),
        [("bool",[36,51,56]),("rat",[79,80,81,82,84,86,87,91]),
         ("ring",[11,35])]),["DISK_THM"]),
       [read"%87%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@"])
  fun op rat_ring_thms x = x
    val op rat_ring_thms =
    DT(((("ratRing",20),
        [("bool",[58]),("quote",[42]),
         ("ratRing",[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]),
         ("ring",[11]),
         ("ringNorm",
         [17,18,19,20,21,22,23,24,25,26,27,28,29,53,54,55,
          57])]),["DISK_THM"]),
       [read"%43%87%131%112%44@@%112%72%63%82@@@@%108@%111@%109@@@%43%42%30%39%11%61%110$1@$0@@%122$1@%114$0@@@|@|@@%43%43%43%42%30%40%1%61%110$1@%75$0@@@$0@|@|@@%43%42%30%37%5%61%110$1@%79$0@@@%133$0@$1@@|@|@@%43%42%30%39%12%39%13%61%110$2@%78$1@$0@@@%108%110$2@$1@@%110$2@$0@@@|@|@|@@%43%42%30%39%12%39%13%61%110$2@%76$1@$0@@@%111%110$2@$1@@%110$2@$0@@@|@|@|@@%42%30%39%12%61%110$1@%77$0@@@%109%110$1@$0@@@|@|@@@@@@%43%35%31%41%24%41%23%45%132%69@%74$2@$0@$1@@@$2@|@|@|@@%43%35%31%41%24%41%23%37%6%45%132%80$0@@%74$3@$1@$2@@@%132$0@$2@@|@|@|@|@@%43%35%31%41%24%41%23%37%6%45%132%70$0@@%74$3@$1@$2@@@%132$0@$1@@|@|@|@|@@%37%5%45%132$0@%68@@%62%31%81|@@|@@@@@@%43%43%36%22%36%21%38%10%38%9%40%4%40%3%46%115%66$0@$2@$4@@%66$1@$3@$5@@@%83%88%84@$2@$3@@%66$0@$2@%115$4@%66$1@$3@$5@@@@%66%108$0@$1@@$2@%115$4@$5@@@%66$1@$3@%115%66$0@$2@$4@@$5@@@@|@|@|@|@|@|@@%43%36%22%36%21%38%10%38%9%40%3%46%115%66$0@$1@$3@@%67$2@$4@@@%83%88%84@$1@$2@@%66$0@$1@%115$3@%67$2@$4@@@@%66%108$0@%112%72%63%82@@@@@$1@%115$3@$4@@@%67$2@%115%66$0@$1@$3@@$4@@@@|@|@|@|@|@@%43%36%22%36%21%38%10%38%9%40%4%46%115%67$1@$3@@%66$0@$2@$4@@@%83%88%84@$1@$2@@%67$1@%115$3@%66$0@$2@$4@@@@%66%108%112%72%63%82@@@@$0@@$1@%115$3@$4@@@%66$0@$2@%115%67$1@$3@@$4@@@@|@|@|@|@|@@%43%36%22%36%21%38%10%38%9%46%115%67$0@$2@@%67$1@$3@@@%83%88%84@$0@$1@@%67$0@%115$2@%67$1@$3@@@@%66%108%112%72%63%82@@@@%112%72%63%82@@@@@$0@%115$2@$3@@@%67$1@%115%67$0@$2@@$3@@@@|@|@|@|@@%43%36%16%46%115$0@%73@@$0@|@@%43%36%27%38%26%40%25%46%115%73@%66$0@$1@$2@@@%66$0@$1@$2@@|@|@|@@%36%29%38%28%46%115%73@%67$0@$1@@@%67$0@$1@@|@|@@@@@@@@%43%43%36%22%38%10%38%9%40%4%40%3%46%127$0@$2@%66$1@$3@$4@@@%83%88%84@$2@$3@@%66$0@$2@%66$1@$3@$4@@@%66%108$0@$1@@$2@$4@@%66$1@$3@%127$0@$2@$4@@@@|@|@|@|@|@@%43%36%22%38%10%38%9%40%3%46%127$0@$1@%67$2@$3@@@%83%88%84@$1@$2@@%66$0@$1@%67$2@$3@@@%66%108$0@%112%72%63%82@@@@@$1@$3@@%67$2@%127$0@$1@$3@@@@|@|@|@|@@%38%9%40%3%46%127$0@$1@%73@@%66$0@$1@%73@@|@|@@@@%43%43%36%22%38%10%38%9%40%4%46%130$1@%66$0@$2@$3@@@%83%88%84@$1@$2@@%67$1@%66$0@$2@$3@@@%66%108%112%72%63%82@@@@$0@@$1@$3@@%66$0@$2@%130$1@$3@@@@|@|@|@|@@%43%36%22%38%10%38%9%46%130$0@%67$1@$2@@@%83%88%84@$0@$1@@%67$0@%67$1@$2@@@%66%108%112%72%63%82@@@@%112%72%63%82@@@@@$0@$2@@%67$1@%130$0@$2@@@@|@|@|@@%38%9%46%130$0@%73@@%67$0@%73@@|@@@@%43%43%40%2%40%1%38%7%36%18%46%117$3@%66$2@$1@$0@@@%66%111$3@$2@@$1@%117$3@$0@@@|@|@|@|@@%43%40%2%38%7%36%18%46%117$2@%67$1@$0@@@%66$2@$1@%117$2@$0@@@|@|@|@@%40%2%46%117$0@%73@@%73@|@@@@%43%43%38%8%40%1%38%7%36%18%46%118$3@%66$2@$1@$0@@@%127$2@%89%85@$3@$1@@%118$3@$0@@@|@|@|@|@@%43%38%8%38%7%36%18%46%118$2@%67$1@$0@@@%130%89%85@$2@$1@@%118$2@$0@@@|@|@|@@%38%8%46%118$0@%73@@%73@|@@@@%43%43%40%2%38%8%40%1%38%7%36%18%46%119$4@$3@%66$2@$1@$0@@@%127%111$4@$2@@%89%85@$3@$1@@%119$4@$3@$0@@@|@|@|@|@|@@%43%40%2%38%8%38%7%36%18%46%119$3@$2@%67$1@$0@@@%127$3@%89%85@$2@$1@@%119$3@$2@$0@@@|@|@|@|@@%40%2%38%8%46%119$1@$0@%73@@%73@|@|@@@@%43%43%40%3%38%9%36%21%36%17%46%116%66$3@$2@$1@@$0@@%115%119$3@$2@$0@@%116$1@$0@@@|@|@|@|@@%43%38%9%36%21%36%17%46%116%67$2@$1@@$0@@%115%118$2@$0@@%116$1@$0@@@|@|@|@@%36%17%46%116%73@$0@@%73@|@@@@%43%43%40%1%38%7%36%18%46%120%66$2@$1@$0@@@%64%61$2@%112%44@@@%120$0@@%64%61$2@%112%72%63%82@@@@@%67$1@%120$0@@@%66$2@$1@%120$0@@@@@|@|@|@@%43%38%7%36%18%46%120%67$1@$0@@@%67$1@%120$0@@@|@|@@%46%120%73@@%73@@@@%43%43%42%30%37%32%61%126$1@$0@%71@@%133$0@$1@@|@|@@%42%30%37%32%37%34%38%20%61%126$3@$2@%65$1@$0@@@%111%133$2@$3@@%126$3@$1@$0@@@|@|@|@|@@@%43%43%42%30%61%125$0@%71@@%112%72%63%82@@@@|@@%42%30%37%32%38%19%61%125$2@%65$1@$0@@@%126$2@$1@$0@@|@|@|@@@%43%43%42%30%40%1%61%123$1@$0@%71@@$0@|@|@@%42%30%40%1%37%32%38%19%61%123$3@$2@%65$1@$0@@@%111$2@%126$3@$1@$0@@@|@|@|@|@@@%43%43%42%30%40%0%61%121$1@$0@%73@@$0@|@|@@%43%42%30%40%0%38%7%36%18%61%121$3@$2@%67$1@$0@@@%108$2@%121$3@%125$3@$1@@$0@@@|@|@|@|@@%42%30%40%0%40%1%38%7%36%18%61%121$4@$3@%66$2@$1@$0@@@%108$3@%121$4@%123$4@$2@$1@@$0@@@|@|@|@|@|@@@@%43%43%42%30%61%122$0@%73@@%112%44@@|@@%43%42%30%38%7%36%18%61%122$2@%67$1@$0@@@%121$2@%125$2@$1@@$0@@|@|@|@@%42%30%40%1%38%7%36%18%61%122$3@%66$2@$1@$0@@@%121$3@%123$3@$2@$1@@$0@@|@|@|@|@@@@%43%43%37%5%46%113%79$0@@@%67%65$0@%71@@%73@@|@@%43%40%1%46%113%75$0@@@%66$0@%71@%73@@|@@%43%39%14%39%15%46%113%78$1@$0@@@%115%113$1@@%113$0@@@|@|@@%43%39%14%39%15%46%113%76$1@$0@@@%116%113$1@@%113$0@@@|@|@@%39%11%46%113%77$0@@@%119%109%112%72%63%82@@@@@%71@%113$0@@@|@@@@@@%39%33%46%114$0@@%120%113$0@@@|@@@@@@@@@@@@@@@@@@"])
  end
  val _ = DB.bindl "ratRing"
  [("rat_interp_p_def",rat_interp_p_def,DB.Def),
   ("rat_polynom_simplify_def",rat_polynom_simplify_def,DB.Def),
   ("rat_polynom_normalize_def",rat_polynom_normalize_def,DB.Def),
   ("rat_r_canonical_sum_merge_def",rat_r_canonical_sum_merge_def,DB.Def),
   ("rat_r_monom_insert_def",rat_r_monom_insert_def,DB.Def),
   ("rat_r_varlist_insert_def",rat_r_varlist_insert_def,DB.Def),
   ("rat_r_canonical_sum_scalar_def",
    rat_r_canonical_sum_scalar_def,
    DB.Def),
   ("rat_r_canonical_sum_scalar2_def",
    rat_r_canonical_sum_scalar2_def,
    DB.Def),
   ("rat_r_canonical_sum_scalar3_def",
    rat_r_canonical_sum_scalar3_def,
    DB.Def),
   ("rat_r_canonical_sum_prod_def",rat_r_canonical_sum_prod_def,DB.Def),
   ("rat_r_canonical_sum_simplify_def",
    rat_r_canonical_sum_simplify_def,
    DB.Def), ("rat_r_ivl_aux_def",rat_r_ivl_aux_def,DB.Def),
   ("rat_r_interp_vl_def",rat_r_interp_vl_def,DB.Def),
   ("rat_r_interp_m_def",rat_r_interp_m_def,DB.Def),
   ("rat_r_ics_aux_def",rat_r_ics_aux_def,DB.Def),
   ("rat_r_interp_cs_def",rat_r_interp_cs_def,DB.Def),
   ("rat_r_spolynom_normalize_def",rat_r_spolynom_normalize_def,DB.Def),
   ("rat_r_spolynom_simplify_def",rat_r_spolynom_simplify_def,DB.Def),
   ("rat_r_interp_sp_def",rat_r_interp_sp_def,DB.Def),
   ("RAT_IS_RING",RAT_IS_RING,DB.Thm),
   ("rat_ring_thms",rat_ring_thms,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("ratTheory.rat_grammars",ratTheory.rat_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_interp_p", (Term.prim_mk_const { Name = "rat_interp_p", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_interp_p", (Term.prim_mk_const { Name = "rat_interp_p", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_polynom_simplify", (Term.prim_mk_const { Name = "rat_polynom_simplify", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_polynom_simplify", (Term.prim_mk_const { Name = "rat_polynom_simplify", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_polynom_normalize", (Term.prim_mk_const { Name = "rat_polynom_normalize", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_polynom_normalize", (Term.prim_mk_const { Name = "rat_polynom_normalize", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_merge", (Term.prim_mk_const { Name = "rat_r_canonical_sum_merge", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_merge", (Term.prim_mk_const { Name = "rat_r_canonical_sum_merge", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_monom_insert", (Term.prim_mk_const { Name = "rat_r_monom_insert", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_monom_insert", (Term.prim_mk_const { Name = "rat_r_monom_insert", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_varlist_insert", (Term.prim_mk_const { Name = "rat_r_varlist_insert", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_varlist_insert", (Term.prim_mk_const { Name = "rat_r_varlist_insert", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_scalar", (Term.prim_mk_const { Name = "rat_r_canonical_sum_scalar", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_scalar", (Term.prim_mk_const { Name = "rat_r_canonical_sum_scalar", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_scalar2", (Term.prim_mk_const { Name = "rat_r_canonical_sum_scalar2", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_scalar2", (Term.prim_mk_const { Name = "rat_r_canonical_sum_scalar2", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_scalar3", (Term.prim_mk_const { Name = "rat_r_canonical_sum_scalar3", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_scalar3", (Term.prim_mk_const { Name = "rat_r_canonical_sum_scalar3", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_prod", (Term.prim_mk_const { Name = "rat_r_canonical_sum_prod", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_prod", (Term.prim_mk_const { Name = "rat_r_canonical_sum_prod", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_simplify", (Term.prim_mk_const { Name = "rat_r_canonical_sum_simplify", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_canonical_sum_simplify", (Term.prim_mk_const { Name = "rat_r_canonical_sum_simplify", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_ivl_aux", (Term.prim_mk_const { Name = "rat_r_ivl_aux", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_ivl_aux", (Term.prim_mk_const { Name = "rat_r_ivl_aux", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_vl", (Term.prim_mk_const { Name = "rat_r_interp_vl", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_vl", (Term.prim_mk_const { Name = "rat_r_interp_vl", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_m", (Term.prim_mk_const { Name = "rat_r_interp_m", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_m", (Term.prim_mk_const { Name = "rat_r_interp_m", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_ics_aux", (Term.prim_mk_const { Name = "rat_r_ics_aux", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_ics_aux", (Term.prim_mk_const { Name = "rat_r_ics_aux", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_cs", (Term.prim_mk_const { Name = "rat_r_interp_cs", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_cs", (Term.prim_mk_const { Name = "rat_r_interp_cs", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_spolynom_normalize", (Term.prim_mk_const { Name = "rat_r_spolynom_normalize", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_spolynom_normalize", (Term.prim_mk_const { Name = "rat_r_spolynom_normalize", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_spolynom_simplify", (Term.prim_mk_const { Name = "rat_r_spolynom_simplify", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_spolynom_simplify", (Term.prim_mk_const { Name = "rat_r_spolynom_simplify", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_sp", (Term.prim_mk_const { Name = "rat_r_interp_sp", Thy = "ratRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_r_interp_sp", (Term.prim_mk_const { Name = "rat_r_interp_sp", Thy = "ratRing"}))
  val ratRing_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ratRing"
end
