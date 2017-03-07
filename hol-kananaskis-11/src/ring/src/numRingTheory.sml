structure numRingTheory :> numRingTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading numRingTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quantHeuristicsTheory rich_listTheory ringNormTheory
  in end;
  val _ = Theory.link_parents
          ("numRing",
          Arbnum.fromString "1488587625",
          Arbnum.fromString "425661")
          [("ringNorm",
           Arbnum.fromString "1488587607",
           Arbnum.fromString "810569"),
           ("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749"),
           ("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227")];
  val _ = Theory.incorporate_types "numRing" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("canonical", "canonical_sum"), ID("num", "num"),
   ID("list", "list"), ID("quote", "index"), ID("canonical", "spolynom"),
   ID("quote", "varmap"), ID("bool", "!"), ID("min", "bool"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("arithmetic", ">"),
   ID("arithmetic", ">="), ID("min", "@"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("list", "CONS"),
   ID("canonical", "Cons_monom"), ID("canonical", "Cons_varlist"),
   ID("arithmetic", "EVEN"), ID("arithmetic", "EXP"),
   ID("quote", "Empty_vm"), ID("quote", "End_idx"), ID("bool", "F"),
   ID("quote", "Left_idx"), ID("list", "NIL"), ID("arithmetic", "NUMERAL"),
   ID("canonical", "Nil_monom"), ID("quote", "Node_vm"),
   ID("arithmetic", "ODD"), ID("prim_rec", "PRE"),
   ID("quote", "Right_idx"), ID("canonical", "SPconst"),
   ID("canonical", "SPmult"), ID("canonical", "SPplus"),
   ID("canonical", "SPvar"), ID("num", "SUC"), ID("bool", "T"),
   ID("arithmetic", "ZERO"), ID("canonical", "canonical_sum_merge"),
   ID("semi_ring", "semi_ring"), ID("canonical", "canonical_sum_prod"),
   ID("canonical", "canonical_sum_scalar"),
   ID("canonical", "canonical_sum_scalar2"),
   ID("canonical", "canonical_sum_scalar3"),
   ID("canonical", "canonical_sum_simplify"), ID("prelim", "compare"),
   ID("prelim", "ordering"), ID("numeral", "iDUB"), ID("numeral", "iZ"),
   ID("canonical", "ics_aux"), ID("numeral", "iiSUC"),
   ID("quote", "index_compare"), ID("quote", "index_lt"),
   ID("canonical", "interp_cs"), ID("canonical", "interp_m"),
   ID("canonical", "interp_sp"), ID("canonical", "interp_vl"),
   ID("semi_ring", "is_semi_ring"), ID("canonical", "ivl_aux"),
   ID("prelim", "list_compare"), ID("prelim", "list_merge"),
   ID("canonical", "monom_insert"),
   ID("numRing", "num_canonical_sum_merge"),
   ID("numRing", "num_canonical_sum_prod"),
   ID("numRing", "num_canonical_sum_scalar"),
   ID("numRing", "num_canonical_sum_scalar2"),
   ID("numRing", "num_canonical_sum_scalar3"),
   ID("numRing", "num_canonical_sum_simplify"),
   ID("numRing", "num_ics_aux"), ID("numRing", "num_interp_cs"),
   ID("numRing", "num_interp_m"), ID("numRing", "num_interp_sp"),
   ID("numRing", "num_interp_vl"), ID("numRing", "num_ivl_aux"),
   ID("numRing", "num_monom_insert"),
   ID("numRing", "num_spolynom_normalize"),
   ID("numRing", "num_spolynom_simplify"),
   ID("numRing", "num_varlist_insert"),
   ID("semi_ring", "recordtype.semi_ring"),
   ID("canonical", "spolynom_normalize"),
   ID("canonical", "spolynom_simplify"), ID("canonical", "varlist_insert"),
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
   TYOP [0, 11, 20], TYOP [0, 0, 2], TYOP [0, 1, 2], TYV "'a",
   TYOP [6, 24], TYOP [8], TYOP [0, 24, 26], TYOP [0, 27, 26],
   TYOP [0, 1, 26], TYOP [0, 29, 26], TYOP [0, 3, 26], TYOP [0, 31, 26],
   TYOP [0, 4, 26], TYOP [0, 33, 26], TYOP [0, 0, 26], TYOP [0, 35, 26],
   TYOP [0, 6, 26], TYOP [0, 37, 26], TYOP [0, 25, 26], TYOP [0, 39, 26],
   TYOP [0, 11, 26], TYOP [0, 41, 26], TYOP [0, 0, 0], TYOP [0, 0, 43],
   TYOP [0, 26, 26], TYOP [0, 26, 45], TYOP [0, 0, 35], TYOP [0, 24, 27],
   TYOP [0, 1, 29], TYOP [0, 2, 26], TYOP [0, 2, 50], TYOP [0, 23, 26],
   TYOP [0, 23, 52], TYOP [0, 5, 26], TYOP [0, 5, 54], TYOP [0, 22, 26],
   TYOP [0, 22, 56], TYOP [0, 8, 26], TYOP [0, 8, 58], TYOP [0, 7, 26],
   TYOP [0, 7, 60], TYOP [0, 19, 26], TYOP [0, 19, 62], TYOP [0, 12, 26],
   TYOP [0, 12, 64], TYOP [0, 13, 26], TYOP [0, 13, 66], TYOP [0, 21, 26],
   TYOP [0, 21, 68], TYOP [0, 17, 26], TYOP [0, 17, 70], TYOP [0, 15, 26],
   TYOP [0, 15, 72], TYOP [0, 27, 24], TYOP [0, 26, 23], TYOP [0, 4, 4],
   TYOP [0, 3, 76], TYOP [0, 3, 3], TYOP [0, 25, 25], TYOP [0, 25, 79],
   TYOP [0, 24, 80], TYOP [0, 0, 6], TYOP [0, 6, 6], TYOP [0, 6, 83],
   TYOP [0, 3, 6], TYOP [47, 0], TYOP [0, 86, 23], TYOP [0, 86, 22],
   TYOP [0, 86, 5], TYOP [0, 86, 8], TYOP [0, 86, 2], TYOP [0, 1, 23],
   TYOP [54], TYOP [0, 93, 92], TYOP [0, 86, 21], TYOP [0, 3, 93],
   TYOP [0, 3, 96], TYOP [0, 3, 31], TYOP [0, 86, 19], TYOP [0, 86, 17],
   TYOP [0, 86, 15], TYOP [0, 86, 13], TYOP [0, 86, 26], TYOP [0, 86, 12],
   TYOP [0, 4, 93], TYOP [0, 4, 105], TYOP [0, 97, 106], TYOP [0, 4, 76],
   TYOP [0, 98, 108], TYOP [0, 44, 86], TYOP [0, 44, 110],
   TYOP [0, 0, 111], TYOP [0, 0, 112], TYOP [0, 86, 7], TYOP [0, 25, 24],
   TYOP [0, 3, 115], TYOP [0, 11, 0], TYOP [0, 3, 117]]
  end
  val _ = Theory.incorporate_consts "numRing" tyvector
     [("num_varlist_insert", 5), ("num_spolynom_simplify", 7),
      ("num_spolynom_normalize", 7), ("num_monom_insert", 8),
      ("num_ivl_aux", 12), ("num_interp_vl", 13), ("num_interp_sp", 15),
      ("num_interp_m", 17), ("num_interp_cs", 19), ("num_ics_aux", 21),
      ("num_canonical_sum_simplify", 2), ("num_canonical_sum_scalar3", 8),
      ("num_canonical_sum_scalar2", 5), ("num_canonical_sum_scalar", 22),
      ("num_canonical_sum_prod", 23), ("num_canonical_sum_merge", 23)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("c", 0), TMV("c0", 0), TMV("c1", 0), TMV("c2", 0),
   TMV("i", 3), TMV("i1", 3), TMV("l", 4), TMV("l", 6), TMV("l0", 4),
   TMV("l1", 4), TMV("l2", 4), TMV("m", 0), TMV("n", 0), TMV("p", 6),
   TMV("p1", 6), TMV("p2", 6), TMV("r", 6), TMV("s1", 1), TMV("s2", 1),
   TMV("t", 1), TMV("t", 4), TMV("t'", 4), TMV("t1", 1), TMV("t2", 1),
   TMV("v1", 25), TMV("v2", 25), TMV("v4", 0), TMV("v5", 4), TMV("v6", 1),
   TMV("v7", 4), TMV("v8", 1), TMV("vm", 11), TMV("x", 24), TMV("x", 3),
   TMV("x", 6), TMV("x'", 3), TMC(7, 28), TMC(7, 30), TMC(7, 32),
   TMC(7, 34), TMC(7, 36), TMC(7, 38), TMC(7, 40), TMC(7, 42), TMC(9, 44),
   TMC(10, 44), TMC(11, 44), TMC(12, 46), TMC(13, 0), TMC(14, 47),
   TMC(15, 47), TMC(16, 48), TMC(16, 46), TMC(16, 49), TMC(16, 51),
   TMC(16, 53), TMC(16, 55), TMC(16, 57), TMC(16, 59), TMC(16, 61),
   TMC(16, 63), TMC(16, 65), TMC(16, 67), TMC(16, 69), TMC(16, 71),
   TMC(16, 73), TMC(16, 47), TMC(17, 47), TMC(18, 47), TMC(19, 74),
   TMC(20, 43), TMC(21, 43), TMC(22, 75), TMC(23, 77), TMC(24, 8),
   TMC(25, 5), TMC(26, 35), TMC(27, 44), TMC(28, 25), TMC(29, 3),
   TMC(30, 26), TMC(31, 78), TMC(32, 4), TMC(33, 43), TMC(34, 1),
   TMC(35, 81), TMC(36, 35), TMC(37, 43), TMC(38, 78), TMC(39, 82),
   TMC(40, 84), TMC(41, 84), TMC(42, 85), TMC(43, 43), TMC(44, 26),
   TMC(45, 0), TMC(46, 87), TMC(48, 87), TMC(49, 88), TMC(50, 89),
   TMC(51, 90), TMC(52, 91), TMC(53, 94), TMC(55, 43), TMC(56, 43),
   TMC(57, 95), TMC(58, 43), TMC(59, 97), TMC(60, 98), TMC(61, 99),
   TMC(62, 100), TMC(63, 101), TMC(64, 102), TMC(65, 103), TMC(66, 104),
   TMC(67, 107), TMC(68, 109), TMC(69, 90), TMC(70, 23), TMC(71, 23),
   TMC(72, 22), TMC(73, 5), TMC(74, 8), TMC(75, 2), TMC(76, 21),
   TMC(77, 19), TMC(78, 17), TMC(79, 15), TMC(80, 13), TMC(81, 12),
   TMC(82, 8), TMC(83, 7), TMC(84, 7), TMC(85, 5), TMC(86, 113),
   TMC(87, 114), TMC(88, 114), TMC(89, 89), TMC(90, 116), TMC(90, 118),
   TMC(91, 45)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op num_interp_sp_def x = x
    val op num_interp_sp_def =
    DT(((("numRing",1),[]),[]),
       [read"%66%128@%112%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_spolynom_simplify_def x = x
    val op num_spolynom_simplify_def =
    DT(((("numRing",2),[]),[]),
       [read"%60%133@%137%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_spolynom_normalize_def x = x
    val op num_spolynom_normalize_def =
    DT(((("numRing",3),[]),[]),
       [read"%60%132@%136%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_interp_cs_def x = x
    val op num_interp_cs_def =
    DT(((("numRing",4),[]),[]),
       [read"%61%126@%110%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_ics_aux_def x = x
    val op num_ics_aux_def =
    DT(((("numRing",5),[]),[]),
       [read"%64%125@%106%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_interp_m_def x = x
    val op num_interp_m_def =
    DT(((("numRing",6),[]),[]),
       [read"%65%127@%111%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_interp_vl_def x = x
    val op num_interp_vl_def =
    DT(((("numRing",7),[]),[]),
       [read"%63%129@%113%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_ivl_aux_def x = x
    val op num_ivl_aux_def =
    DT(((("numRing",8),[]),[]),
       [read"%62%130@%115%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_canonical_sum_simplify_def x = x
    val op num_canonical_sum_simplify_def =
    DT(((("numRing",9),[]),[]),
       [read"%55%124@%102%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_canonical_sum_prod_def x = x
    val op num_canonical_sum_prod_def =
    DT(((("numRing",10),[]),[]),
       [read"%56%120@%98%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_canonical_sum_scalar3_def x = x
    val op num_canonical_sum_scalar3_def =
    DT(((("numRing",11),[]),[]),
       [read"%59%123@%101%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_canonical_sum_scalar2_def x = x
    val op num_canonical_sum_scalar2_def =
    DT(((("numRing",12),[]),[]),
       [read"%57%122@%100%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_canonical_sum_scalar_def x = x
    val op num_canonical_sum_scalar_def =
    DT(((("numRing",13),[]),[]),
       [read"%58%121@%99%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_varlist_insert_def x = x
    val op num_varlist_insert_def =
    DT(((("numRing",14),[]),[]),
       [read"%57%134@%138%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_monom_insert_def x = x
    val op num_monom_insert_def =
    DT(((("numRing",15),[]),[]),
       [read"%59%131@%118%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_canonical_sum_merge_def x = x
    val op num_canonical_sum_merge_def =
    DT(((("numRing",16),[]),[]),
       [read"%56%119@%97%135%49@%84%71%96@@@%46@%45@@@"])
  fun op num_semi_ring x = x
    val op num_semi_ring =
    DT(((("numRing",0),
        [("arithmetic",[22,25,26,27,67,69,73,74,76,91]),
         ("bool",[25,36,51,56,58]),("semi_ring",[10,33])]),["DISK_THM"]),
       [read"%114%135%49@%84%71%96@@@%46@%45@@"])
  fun op num_ring_thms x = x
    val op num_ring_thms =
    DT(((("numRing",17),
        [("bool",[58]),
         ("canonical",
         [20,24,28,29,30,31,32,33,34,35,36,37,38,70,71,72,74]),
         ("numRing",[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]),
         ("quote",[42]),("semi_ring",[10])]),["DISK_THM"]),
       [read"%48%114%135%49@%84%71%96@@@%46@%45@@@%48%44%32%42%14%67%128$1@$0@@%126$1@%133$0@@@|@|@@%48%48%48%44%32%41%1%67%128$1@%90$0@@@$0@|@|@@%48%44%32%39%5%67%128$1@%93$0@@@%140$0@$1@@|@|@@%48%44%32%42%15%42%16%67%128$2@%92$1@$0@@@%46%128$2@$1@@%128$2@$0@@@|@|@|@@%44%32%42%15%42%16%67%128$2@%91$1@$0@@@%45%128$2@$1@@%128$2@$0@@@|@|@|@@@@@%48%37%33%43%26%43%25%52%139%80@%86$2@$0@$1@@@$2@|@|@|@@%48%37%33%43%26%43%25%39%6%52%139%89$0@@%86$3@$1@$2@@@%139$0@$2@@|@|@|@|@@%48%37%33%43%26%43%25%39%6%52%139%82$0@@%86$3@$1@$2@@@%139$0@$1@@|@|@|@|@@%39%5%52%139$0@%79@@%70%33%95|@@|@@@@@@%48%48%38%24%38%23%40%11%40%10%41%4%41%3%54%119%75$0@$2@$4@@%75$1@$3@$5@@@%103%116%108@$2@$3@@%75$0@$2@%119$4@%75$1@$3@$5@@@@%75%46$0@$1@@$2@%119$4@$5@@@%75$1@$3@%119%75$0@$2@$4@@$5@@@@|@|@|@|@|@|@@%48%38%24%38%23%40%11%40%10%41%3%54%119%75$0@$1@$3@@%76$2@$4@@@%103%116%108@$1@$2@@%75$0@$1@%119$3@%76$2@$4@@@@%75%46$0@%84%71%96@@@@$1@%119$3@$4@@@%76$2@%119%75$0@$1@$3@@$4@@@@|@|@|@|@|@@%48%38%24%38%23%40%11%40%10%41%4%54%119%76$1@$3@@%75$0@$2@$4@@@%103%116%108@$1@$2@@%76$1@%119$3@%75$0@$2@$4@@@@%75%46%84%71%96@@@$0@@$1@%119$3@$4@@@%75$0@$2@%119%76$1@$3@@$4@@@@|@|@|@|@|@@%48%38%24%38%23%40%11%40%10%54%119%76$0@$2@@%76$1@$3@@@%103%116%108@$0@$1@@%76$0@%119$2@%76$1@$3@@@@%75%46%84%71%96@@@%84%71%96@@@@$0@%119$2@$3@@@%76$1@%119%76$0@$2@@$3@@@@|@|@|@|@@%48%38%18%54%119$0@%85@@$0@|@@%48%38%29%40%28%41%27%54%119%85@%75$0@$1@$2@@@%75$0@$1@$2@@|@|@|@@%38%31%40%30%54%119%85@%76$0@$1@@@%76$0@$1@@|@|@@@@@@@@%48%48%38%24%40%11%40%10%41%4%41%3%54%131$0@$2@%75$1@$3@$4@@@%103%116%108@$2@$3@@%75$0@$2@%75$1@$3@$4@@@%75%46$0@$1@@$2@$4@@%75$1@$3@%131$0@$2@$4@@@@|@|@|@|@|@@%48%38%24%40%11%40%10%41%3%54%131$0@$1@%76$2@$3@@@%103%116%108@$1@$2@@%75$0@$1@%76$2@$3@@@%75%46$0@%84%71%96@@@@$1@$3@@%76$2@%131$0@$1@$3@@@@|@|@|@|@@%40%10%41%3%54%131$0@$1@%85@@%75$0@$1@%85@@|@|@@@@%48%48%38%24%40%11%40%10%41%4%54%134$1@%75$0@$2@$3@@@%103%116%108@$1@$2@@%76$1@%75$0@$2@$3@@@%75%46%84%71%96@@@$0@@$1@$3@@%75$0@$2@%134$1@$3@@@@|@|@|@|@@%48%38%24%40%11%40%10%54%134$0@%76$1@$2@@@%103%116%108@$0@$1@@%76$0@%76$1@$2@@@%75%46%84%71%96@@@%84%71%96@@@@$0@$2@@%76$1@%134$0@$2@@@@|@|@|@@%40%10%54%134$0@%85@@%76$0@%85@@|@@@@%48%48%41%2%41%1%40%7%38%20%54%121$3@%75$2@$1@$0@@@%75%45$3@$2@@$1@%121$3@$0@@@|@|@|@|@@%48%41%2%40%7%38%20%54%121$2@%76$1@$0@@@%75$2@$1@%121$2@$0@@@|@|@|@@%41%2%54%121$0@%85@@%85@|@@@@%48%48%40%9%41%1%40%7%38%20%54%122$3@%75$2@$1@$0@@@%131$2@%117%109@$3@$1@@%122$3@$0@@@|@|@|@|@@%48%40%9%40%7%38%20%54%122$2@%76$1@$0@@@%134%117%109@$2@$1@@%122$2@$0@@@|@|@|@@%40%9%54%122$0@%85@@%85@|@@@@%48%48%41%2%40%9%41%1%40%7%38%20%54%123$4@$3@%75$2@$1@$0@@@%131%45$4@$2@@%117%109@$3@$1@@%123$4@$3@$0@@@|@|@|@|@|@@%48%41%2%40%9%40%7%38%20%54%123$3@$2@%76$1@$0@@@%131$3@%117%109@$2@$1@@%123$3@$2@$0@@@|@|@|@|@@%41%2%40%9%54%123$1@$0@%85@@%85@|@|@@@@%48%48%41%3%40%10%38%23%38%19%54%120%75$3@$2@$1@@$0@@%119%123$3@$2@$0@@%120$1@$0@@@|@|@|@|@@%48%40%10%38%23%38%19%54%120%76$2@$1@@$0@@%119%122$2@$0@@%120$1@$0@@@|@|@|@@%38%19%54%120%85@$0@@%85@|@@@@%48%48%41%1%40%7%38%20%54%124%75$2@$1@$0@@@%73%67$2@%49@@%124$0@@%73%67$2@%84%71%96@@@@%76$1@%124$0@@@%75$2@$1@%124$0@@@@@|@|@|@@%48%40%7%38%20%54%124%76$1@$0@@@%76$1@%124$0@@@|@|@@%54%124%85@@%85@@@@%48%48%44%32%39%34%67%130$1@$0@%83@@%140$0@$1@@|@|@@%44%32%39%34%39%36%40%22%67%130$3@$2@%74$1@$0@@@%45%140$2@$3@@%130$3@$1@$0@@@|@|@|@|@@@%48%48%44%32%67%129$0@%83@@%84%71%96@@@|@@%44%32%39%34%40%21%67%129$2@%74$1@$0@@@%130$2@$1@$0@@|@|@|@@@%48%48%44%32%41%1%67%127$1@$0@%83@@$0@|@|@@%44%32%41%1%39%34%40%21%67%127$3@$2@%74$1@$0@@@%45$2@%130$3@$1@$0@@@|@|@|@|@@@%48%48%44%32%41%0%67%125$1@$0@%85@@$0@|@|@@%48%44%32%41%0%40%7%38%20%67%125$3@$2@%76$1@$0@@@%46$2@%125$3@%129$3@$1@@$0@@@|@|@|@|@@%44%32%41%0%41%1%40%7%38%20%67%125$4@$3@%75$2@$1@$0@@@%46$3@%125$4@%127$4@$2@$1@@$0@@@|@|@|@|@|@@@@%48%48%44%32%67%126$0@%85@@%49@|@@%48%44%32%40%7%38%20%67%126$2@%76$1@$0@@@%125$2@%129$2@$1@@$0@@|@|@|@@%44%32%41%1%40%7%38%20%67%126$3@%75$2@$1@$0@@@%125$3@%127$3@$2@$1@@$0@@|@|@|@|@@@@%48%48%39%5%54%132%93$0@@@%76%74$0@%83@@%85@@|@@%48%41%1%54%132%90$0@@@%75$0@%83@%85@@|@@%48%42%8%42%17%54%132%92$1@$0@@@%119%132$1@@%132$0@@@|@|@@%42%8%42%17%54%132%91$1@$0@@@%120%132$1@@%132$0@@@|@|@@@@@%42%35%54%133$0@@%124%132$0@@@|@@@@@@@@@@@@@@@@@@"])
  fun op num_rewrites x = x
    val op num_rewrites =
    DT(((("numRing",18),
        [("bool",[56]),("numeral",[0,3,4,5,6,17,18])]),["DISK_THM"]),
       [read"%48%48%41%13%67%46%49@$0@@$0@|@@%48%41%13%67%46$0@%49@@$0@|@@%48%41%13%41%12%67%46%84$1@@%84$0@@@%84%105%46$1@$0@@@@|@|@@%48%41%13%67%45%49@$0@@%49@|@@%48%41%13%67%45$0@%49@@%49@|@@%48%41%13%41%12%67%45%84$1@@%84$0@@@%84%45$1@$0@@@|@|@@%48%41%13%67%47%49@$0@@%49@|@@%48%41%13%67%47$0@%49@@$0@|@@%48%41%13%41%12%67%47%84$1@@%84$0@@@%84%47$1@$0@@@|@|@@%48%41%13%67%78%49@%84%71$0@@@@%49@|@@%48%41%13%67%78%49@%84%72$0@@@@%49@|@@%48%41%13%67%78$0@%49@@%84%71%96@@@|@@%48%41%13%41%12%67%78%84$1@@%84$0@@@%84%78$1@$0@@@|@|@@%48%67%94%49@@%84%71%96@@@@%48%41%13%67%94%84$0@@@%84%94$0@@@|@@%48%67%88%49@@%49@@%48%41%13%67%88%84$0@@@%84%88$0@@@|@@%48%41%13%53%67%84$0@@%49@@%67$0@%96@@|@@%48%41%13%53%67%49@%84$0@@@%67$0@%96@@|@@%48%41%13%41%12%53%67%84$1@@%84$0@@@%67$1@$0@@|@|@@%48%41%13%53%50$0@%49@@%81@|@@%48%41%13%53%50%49@%84$0@@@%50%96@$0@@|@@%48%41%13%41%12%53%50%84$1@@%84$0@@@%50$1@$0@@|@|@@%48%41%13%53%68%49@$0@@%81@|@@%48%41%13%53%68%84$0@@%49@@%50%96@$0@@|@@%48%41%13%41%12%53%68%84$1@@%84$0@@@%50$0@$1@@|@|@@%48%41%13%53%51%49@$0@@%95@|@@%48%41%13%53%51%84$0@@%49@@%51$0@%96@@|@@%48%41%13%41%12%53%51%84$1@@%84$0@@@%51$1@$0@@|@|@@%48%41%13%53%69$0@%49@@%95@|@@%48%41%13%53%69%49@$0@@%67$0@%49@@|@@%48%41%13%41%12%53%69%84$1@@%84$0@@@%51$0@$1@@|@|@@%48%41%13%53%87%84$0@@@%87$0@@|@@%48%41%13%53%77%84$0@@@%77$0@@|@@%48%141%87%49@@@%77%49@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%48%41%13%41%12%48%53%67%96@%71$1@@@%81@@%48%53%67%71$1@@%96@@%81@@%48%53%67%96@%72$1@@@%81@@%48%53%67%72$1@@%96@@%81@@%48%53%67%71$1@@%72$0@@@%81@@%48%53%67%72$1@@%71$0@@@%81@@%48%53%67%71$1@@%71$0@@@%67$1@$0@@@%53%67%72$1@@%72$0@@@%67$1@$0@@@@@@@@@|@|@@%48%48%67%94%96@@%71%96@@@%48%41%13%67%94%71$0@@@%72$0@@|@@%41%13%67%94%72$0@@@%71%94$0@@@|@@@@%48%48%67%107%96@@%72%96@@@%48%67%107%71%13@@@%71%94%13@@@@%67%107%72%13@@@%72%94%13@@@@@@%48%41%13%41%12%48%67%105%46%96@$1@@@$1@@%48%67%105%46$1@%96@@@$1@@%48%67%105%46%71$1@@%71$0@@@@%72%105%46$1@$0@@@@@%48%67%105%46%71$1@@%72$0@@@@%71%94%46$1@$0@@@@@%48%67%105%46%72$1@@%71$0@@@@%71%94%46$1@$0@@@@@%48%67%105%46%72$1@@%72$0@@@@%72%94%46$1@$0@@@@@%48%67%94%46%96@$1@@@%94$1@@@%48%67%94%46$1@%96@@@%94$1@@@%48%67%94%46%71$1@@%71$0@@@@%71%94%46$1@$0@@@@@%48%67%94%46%71$1@@%72$0@@@@%72%94%46$1@$0@@@@@%48%67%94%46%72$1@@%71$0@@@@%72%94%46$1@$0@@@@@%48%67%94%46%72$1@@%72$0@@@@%71%107%46$1@$0@@@@@%48%67%107%46%96@$1@@@%107$1@@@%48%67%107%46$1@%96@@@%107$1@@@%48%67%107%46%71$1@@%71$0@@@@%72%94%46$1@$0@@@@@%48%67%107%46%71$1@@%72$0@@@@%71%107%46$1@$0@@@@@%48%67%107%46%72$1@@%71$0@@@@%71%107%46$1@$0@@@@@%67%107%46%72$1@@%72$0@@@@%72%107%46$1@$0@@@@@@@@@@@@@@@@@@@@@|@|@@%48%41%13%41%12%48%67%45%96@$1@@%96@@%48%67%45$1@%96@@%96@@%48%67%45%71$1@@$0@@%105%46%104%45$1@$0@@@$0@@@@%67%45%72$1@@$0@@%104%105%46%45$1@$0@@$0@@@@@@@|@|@@%48%41%13%48%67%104%71$0@@@%72%104$0@@@@%48%67%104%72$0@@@%72%71$0@@@@%67%104%96@@%96@@@|@@%48%53%67%96@%96@@%95@@%53%67%49@%49@@%95@@@@@@@@@"])
  end
  val _ = DB.bindl "numRing"
  [("num_interp_sp_def",num_interp_sp_def,DB.Def),
   ("num_spolynom_simplify_def",num_spolynom_simplify_def,DB.Def),
   ("num_spolynom_normalize_def",num_spolynom_normalize_def,DB.Def),
   ("num_interp_cs_def",num_interp_cs_def,DB.Def),
   ("num_ics_aux_def",num_ics_aux_def,DB.Def),
   ("num_interp_m_def",num_interp_m_def,DB.Def),
   ("num_interp_vl_def",num_interp_vl_def,DB.Def),
   ("num_ivl_aux_def",num_ivl_aux_def,DB.Def),
   ("num_canonical_sum_simplify_def",
    num_canonical_sum_simplify_def,
    DB.Def),
   ("num_canonical_sum_prod_def",num_canonical_sum_prod_def,DB.Def),
   ("num_canonical_sum_scalar3_def",num_canonical_sum_scalar3_def,DB.Def),
   ("num_canonical_sum_scalar2_def",num_canonical_sum_scalar2_def,DB.Def),
   ("num_canonical_sum_scalar_def",num_canonical_sum_scalar_def,DB.Def),
   ("num_varlist_insert_def",num_varlist_insert_def,DB.Def),
   ("num_monom_insert_def",num_monom_insert_def,DB.Def),
   ("num_canonical_sum_merge_def",num_canonical_sum_merge_def,DB.Def),
   ("num_semi_ring",num_semi_ring,DB.Thm),
   ("num_ring_thms",num_ring_thms,DB.Thm),
   ("num_rewrites",num_rewrites,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("ringNormTheory.ringNorm_grammars",
                          ringNormTheory.ringNorm_grammars),
                         ("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars),
                         ("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_sp", (Term.prim_mk_const { Name = "num_interp_sp", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_sp", (Term.prim_mk_const { Name = "num_interp_sp", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_spolynom_simplify", (Term.prim_mk_const { Name = "num_spolynom_simplify", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_spolynom_simplify", (Term.prim_mk_const { Name = "num_spolynom_simplify", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_spolynom_normalize", (Term.prim_mk_const { Name = "num_spolynom_normalize", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_spolynom_normalize", (Term.prim_mk_const { Name = "num_spolynom_normalize", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_cs", (Term.prim_mk_const { Name = "num_interp_cs", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_cs", (Term.prim_mk_const { Name = "num_interp_cs", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_ics_aux", (Term.prim_mk_const { Name = "num_ics_aux", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_ics_aux", (Term.prim_mk_const { Name = "num_ics_aux", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_m", (Term.prim_mk_const { Name = "num_interp_m", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_m", (Term.prim_mk_const { Name = "num_interp_m", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_vl", (Term.prim_mk_const { Name = "num_interp_vl", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_interp_vl", (Term.prim_mk_const { Name = "num_interp_vl", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_ivl_aux", (Term.prim_mk_const { Name = "num_ivl_aux", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_ivl_aux", (Term.prim_mk_const { Name = "num_ivl_aux", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_simplify", (Term.prim_mk_const { Name = "num_canonical_sum_simplify", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_simplify", (Term.prim_mk_const { Name = "num_canonical_sum_simplify", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_prod", (Term.prim_mk_const { Name = "num_canonical_sum_prod", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_prod", (Term.prim_mk_const { Name = "num_canonical_sum_prod", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_scalar3", (Term.prim_mk_const { Name = "num_canonical_sum_scalar3", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_scalar3", (Term.prim_mk_const { Name = "num_canonical_sum_scalar3", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_scalar2", (Term.prim_mk_const { Name = "num_canonical_sum_scalar2", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_scalar2", (Term.prim_mk_const { Name = "num_canonical_sum_scalar2", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_scalar", (Term.prim_mk_const { Name = "num_canonical_sum_scalar", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_scalar", (Term.prim_mk_const { Name = "num_canonical_sum_scalar", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_varlist_insert", (Term.prim_mk_const { Name = "num_varlist_insert", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_varlist_insert", (Term.prim_mk_const { Name = "num_varlist_insert", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_monom_insert", (Term.prim_mk_const { Name = "num_monom_insert", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_monom_insert", (Term.prim_mk_const { Name = "num_monom_insert", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_merge", (Term.prim_mk_const { Name = "num_canonical_sum_merge", Thy = "numRing"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_canonical_sum_merge", (Term.prim_mk_const { Name = "num_canonical_sum_merge", Thy = "numRing"}))
  val numRing_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "numRing"
end
