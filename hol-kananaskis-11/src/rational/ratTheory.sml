structure ratTheory :> ratTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ratTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open fracTheory
  in end;
  val _ = Theory.link_parents
          ("rat",Arbnum.fromString "1488589091",Arbnum.fromString "416948")
          [("frac",
           Arbnum.fromString "1488589059",
           Arbnum.fromString "25048")];
  val _ = Theory.incorporate_types "rat" [("rat", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("frac", "frac"),
   ID("rat", "rat"), ID("integer", "int"), ID("num", "num"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("pair", "prod"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("integer", "ABS"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("combin", "I"),
   ID("arithmetic", "NUMERAL"), ID("integer", "Num"),
   ID("bool", "ONE_ONE"), ID("quotient", "QUOTIENT"),
   ID("intExtension", "SGN"), ID("num", "SUC"),
   ID("bool", "TYPE_DEFINITION"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("frac", "abs_frac"), ID("rat", "abs_rat"),
   ID("rat", "abs_rat_CLASS"), ID("frac", "frac_0"), ID("frac", "frac_1"),
   ID("frac", "frac_add"), ID("frac", "frac_ainv"), ID("frac", "frac_div"),
   ID("frac", "frac_dnm"), ID("frac", "frac_minv"), ID("frac", "frac_mul"),
   ID("frac", "frac_nmr"), ID("frac", "frac_save"), ID("frac", "frac_sgn"),
   ID("frac", "frac_sub"), ID("integer", "int_add"),
   ID("integer", "int_gt"), ID("integer", "int_le"),
   ID("integer", "int_lt"), ID("integer", "int_mul"),
   ID("integer", "int_neg"), ID("integer", "int_of_num"),
   ID("integer", "int_sub"), ID("arithmetic", "num_CASE"),
   ID("rat", "rat_0"), ID("rat", "rat_1"), ID("rat", "rat_add"),
   ID("rat", "rat_ainv"), ID("rat", "rat_cons"), ID("rat", "rat_div"),
   ID("rat", "rat_dnm"), ID("rat", "rat_equiv"), ID("rat", "rat_geq"),
   ID("rat", "rat_gre"), ID("rat", "rat_leq"), ID("rat", "rat_les"),
   ID("rat", "rat_minv"), ID("rat", "rat_mul"), ID("rat", "rat_nmr"),
   ID("rat", "rat_of_num"), ID("rat", "rat_sgn"), ID("rat", "rat_sub"),
   ID("rat", "rep_rat"), ID("rat", "rep_rat_CLASS"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [3], TYOP [0, 3, 2],
   TYOP [0, 3, 1], TYOP [0, 3, 3], TYOP [0, 3, 6], TYOP [4],
   TYOP [0, 3, 8], TYOP [5], TYOP [0, 10, 3], TYOP [0, 3, 0],
   TYOP [0, 3, 12], TYOP [0, 1, 2], TYOP [0, 8, 3], TYOP [0, 8, 15],
   TYOP [0, 2, 3], TYOP [0, 1, 3], TYOP [0, 10, 0], TYOP [0, 10, 19],
   TYV "'a", TYOP [0, 21, 0], TYOP [0, 22, 0], TYOP [0, 2, 0],
   TYOP [0, 24, 0], TYOP [0, 19, 0], TYOP [0, 26, 0], TYOP [0, 8, 0],
   TYOP [0, 28, 0], TYOP [0, 12, 0], TYOP [0, 10, 10], TYOP [0, 10, 31],
   TYOP [10, 8, 8], TYOP [0, 8, 33], TYOP [0, 8, 34], TYOP [0, 0, 0],
   TYOP [0, 0, 36], TYOP [0, 2, 24], TYOP [0, 11, 0], TYOP [0, 11, 39],
   TYOP [0, 8, 28], TYOP [0, 4, 0], TYOP [0, 42, 0], TYOP [0, 2, 1],
   TYOP [0, 20, 0], TYOP [0, 45, 20], TYOP [0, 8, 8], TYOP [0, 0, 7],
   TYOP [0, 8, 10], TYOP [0, 6, 0], TYOP [0, 5, 0], TYOP [0, 18, 51],
   TYOP [0, 14, 52], TYOP [0, 24, 42], TYOP [0, 11, 11], TYOP [0, 55, 11],
   TYOP [0, 20, 56], TYOP [0, 33, 1], TYOP [0, 1, 1], TYOP [0, 1, 59],
   TYOP [0, 1, 8], TYOP [0, 10, 1], TYOP [0, 8, 62], TYOP [0, 8, 47],
   TYOP [0, 10, 8], TYOP [0, 11, 3], TYOP [0, 3, 66], TYOP [0, 10, 67]]
  end
  val _ = Theory.incorporate_consts "rat" tyvector
     [("rep_rat_CLASS", 4), ("rep_rat", 5), ("rat_sub", 7), ("rat_sgn", 9),
      ("rat_of_num", 11), ("rat_nmr", 9), ("rat_mul", 7), ("rat_minv", 6),
      ("rat_les", 13), ("rat_leq", 13), ("rat_gre", 13), ("rat_geq", 13),
      ("rat_equiv", 14), ("rat_dnm", 9), ("rat_div", 7), ("rat_cons", 16),
      ("rat_ainv", 6), ("rat_add", 7), ("rat_1", 3), ("rat_0", 3),
      ("abs_rat_CLASS", 17), ("abs_rat", 18)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 19), TMV("R", 20), TMV("a", 1), TMV("a", 10), TMV("a", 3),
   TMV("a1", 8), TMV("b", 1), TMV("b", 8), TMV("b", 3), TMV("b1", 10),
   TMV("c", 1), TMV("c", 2), TMV("c", 8), TMV("c", 3), TMV("dnm", 8),
   TMV("f1", 1), TMV("f2", 1), TMV("m", 10), TMV("n", 21), TMV("n", 10),
   TMV("n1", 10), TMV("nmr", 8), TMV("p", 3), TMV("q", 3), TMV("r", 1),
   TMV("r", 2), TMV("r", 3), TMV("r1", 3), TMV("r2", 3), TMV("r3", 3),
   TMV("rat_of_num", 11), TMV("rep", 4), TMV("v", 10), TMV("x", 1),
   TMV("x'", 1), TMV("y", 1), TMC(6, 23), TMC(6, 24), TMC(6, 25),
   TMC(6, 27), TMC(6, 29), TMC(6, 26), TMC(6, 30), TMC(7, 32), TMC(8, 32),
   TMC(9, 35), TMC(11, 32), TMC(12, 37), TMC(13, 10), TMC(14, 20),
   TMC(15, 37), TMC(15, 14), TMC(15, 38), TMC(15, 40), TMC(15, 41),
   TMC(15, 20), TMC(15, 13), TMC(16, 37), TMC(17, 24), TMC(17, 43),
   TMC(17, 29), TMC(17, 26), TMC(17, 30), TMC(18, 44), TMC(18, 46),
   TMC(19, 47), TMC(20, 31), TMC(21, 31), TMC(22, 48), TMC(23, 6),
   TMC(24, 31), TMC(25, 49), TMC(26, 50), TMC(27, 53), TMC(28, 47),
   TMC(29, 31), TMC(30, 54), TMC(31, 45), TMC(32, 57), TMC(33, 10),
   TMC(34, 37), TMC(35, 58), TMC(36, 18), TMC(37, 17), TMC(38, 1),
   TMC(39, 1), TMC(40, 60), TMC(41, 59), TMC(42, 60), TMC(43, 61),
   TMC(44, 59), TMC(45, 60), TMC(46, 61), TMC(47, 63), TMC(48, 61),
   TMC(49, 60), TMC(50, 64), TMC(51, 41), TMC(52, 41), TMC(53, 41),
   TMC(54, 64), TMC(55, 47), TMC(56, 65), TMC(57, 64), TMC(58, 68),
   TMC(59, 3), TMC(60, 3), TMC(61, 7), TMC(62, 6), TMC(63, 16), TMC(64, 7),
   TMC(65, 9), TMC(66, 14), TMC(67, 13), TMC(68, 13), TMC(69, 13),
   TMC(70, 13), TMC(71, 6), TMC(72, 7), TMC(73, 9), TMC(74, 11),
   TMC(75, 9), TMC(76, 7), TMC(77, 5), TMC(78, 4), TMC(79, 36)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op rat_equiv_def x = x
    val op rat_equiv_def =
    DT(((("rat",0),[]),[]),
       [read"%37%15%37%16%50%112$1@$0@@%54%100%92$1@@%89$0@@@%100%92$0@@%89$1@@@@|@|@"])
  fun op rat_TY_DEF x = x
    val op rat_TY_DEF =
    DT(((("rat",10),
        [("bool",[58]),("quotient",[0,1,2]),("rat",[8])]),["DISK_THM"]),
       [read"%59%31%76%11%58%24%47%112$0@$0@@%52$1@%112$0@@@|@|@$0@|@"])
  fun op rat_bijections x = x
    val op rat_bijections =
    DT(((("rat",11),[("bool",[117]),("rat",[10])]),["DISK_THM"]),
       [read"%47%42%4%56%83%124$0@@@$0@|@@%38%25%50%11%58%24%47%112$0@$0@@%52$1@%112$0@@@|@|$0@@%52%124%83$0@@@$0@@|@@"])
  fun op rep_rat_def x = x
    val op rep_rat_def =
    DT(((("rat",13),[]),[]), [read"%42%4%51%123$0@@%63%124$0@@@|@"])
  fun op abs_rat_def x = x
    val op abs_rat_def =
    DT(((("rat",14),[]),[]), [read"%37%24%56%82$0@@%83%112$0@@@|@"])
  fun op rat_nmr_def x = x
    val op rat_nmr_def =
    DT(((("rat",17),[]),[]), [read"%42%26%54%119$0@@%92%123$0@@@|@"])
  fun op rat_dnm_def x = x
    val op rat_dnm_def =
    DT(((("rat",18),[]),[]), [read"%42%26%54%111$0@@%89%123$0@@@|@"])
  fun op rat_sgn_def x = x
    val op rat_sgn_def =
    DT(((("rat",19),[]),[]), [read"%42%26%54%121$0@@%94%123$0@@@|@"])
  fun op rat_0_def x = x
    val op rat_0_def = DT(((("rat",20),[]),[]), [read"%56%105@%82%84@@"])
  fun op rat_1_def x = x
    val op rat_1_def = DT(((("rat",21),[]),[]), [read"%56%106@%82%85@@"])
  fun op rat_ainv_def x = x
    val op rat_ainv_def =
    DT(((("rat",22),[]),[]), [read"%42%27%56%108$0@@%82%87%123$0@@@@|@"])
  fun op rat_minv_def x = x
    val op rat_minv_def =
    DT(((("rat",23),[]),[]), [read"%42%27%56%117$0@@%82%90%123$0@@@@|@"])
  fun op rat_add_def x = x
    val op rat_add_def =
    DT(((("rat",24),[]),[]),
       [read"%42%27%42%28%56%107$1@$0@@%82%86%123$1@@%123$0@@@@|@|@"])
  fun op rat_sub_def x = x
    val op rat_sub_def =
    DT(((("rat",25),[]),[]),
       [read"%42%27%42%28%56%122$1@$0@@%82%95%123$1@@%123$0@@@@|@|@"])
  fun op rat_mul_def x = x
    val op rat_mul_def =
    DT(((("rat",26),[]),[]),
       [read"%42%27%42%28%56%118$1@$0@@%82%91%123$1@@%123$0@@@@|@|@"])
  fun op rat_div_def x = x
    val op rat_div_def =
    DT(((("rat",27),[]),[]),
       [read"%42%27%42%28%56%110$1@$0@@%82%88%123$1@@%123$0@@@@|@|@"])
  fun op rat_les_def x = x
    val op rat_les_def =
    DT(((("rat",28),[]),[]),
       [read"%42%27%42%28%50%116$1@$0@@%54%121%122$0@$1@@@%102%70%66%79@@@@@|@|@"])
  fun op rat_gre_def x = x
    val op rat_gre_def =
    DT(((("rat",29),[]),[]),
       [read"%42%27%42%28%50%114$1@$0@@%116$0@$1@@|@|@"])
  fun op rat_leq_def x = x
    val op rat_leq_def =
    DT(((("rat",30),[]),[]),
       [read"%42%27%42%28%50%115$1@$0@@%80%116$1@$0@@%56$1@$0@@@|@|@"])
  fun op rat_geq_def x = x
    val op rat_geq_def =
    DT(((("rat",31),[]),[]),
       [read"%42%27%42%28%50%113$1@$0@@%115$0@$1@@|@|@"])
  fun op rat_cons_def x = x
    val op rat_cons_def =
    DT(((("rat",32),[]),[]),
       [read"%40%21%40%14%56%109$1@$0@@%82%81%45%100%100%74$1@@%74$0@@@%65$1@@@%65$0@@@@@|@|@"])
  fun op rat_of_num_primitive_def x = x
    val op rat_of_num_primitive_def =
    DT(((("rat",33),[]),[]),
       [read"%53%120@%78%64%1%47%77$0@@%41%19$1%75$0@@%75%75$0@@@|@@|@@%30%3%104$0@%69%105@@%32%104$0@%69%106@@%19%69%107$3%75$0@@@%106@@|@|@||@@"])
  fun op RAT_EQUIV_REF x = x
    val op RAT_EQUIV_REF =
    DT(((("rat",1),[("bool",[25,56]),("rat",[0])]),["DISK_THM"]),
       [read"%37%2%112$0@$0@|@"])
  fun op RAT_EQUIV_SYM x = x
    val op RAT_EQUIV_SYM =
    DT(((("rat",2),[("bool",[25,56,58]),("rat",[0])]),["DISK_THM"]),
       [read"%37%2%37%6%50%112$1@$0@@%112$0@$1@@|@|@"])
  fun op RAT_EQUIV_NMR_Z_IFF x = x
    val op RAT_EQUIV_NMR_Z_IFF =
    DT(((("rat",3),
        [("bool",[26,27,52,58]),("frac",[21]),("integer",[93,154,159]),
         ("rat",[0])]),["DISK_THM"]),
       [read"%37%2%37%6%57%112$1@$0@@%50%54%92$1@@%102%48@@@%54%92$0@@%102%48@@@@|@|@"])
  fun op RAT_EQUIV_NMR_GTZ_IFF x = x
    val op RAT_EQUIV_NMR_GTZ_IFF =
    DT(((("rat",4),
        [("bool",[25,26,27,51,52,58,63]),("frac",[21]),
         ("integer",[75,101,111,304]),("rat",[0])]),["DISK_THM"]),
       [read"%37%2%37%6%57%112$1@$0@@%50%97%92$1@@%102%48@@@%97%92$0@@%102%48@@@@|@|@"])
  fun op RAT_EQUIV_NMR_LTZ_IFF x = x
    val op RAT_EQUIV_NMR_LTZ_IFF =
    DT(((("rat",5),
        [("bool",[26,27,51,52,58,63]),("frac",[21]),
         ("integer",[75,101,111,304]),("rat",[0])]),["DISK_THM"]),
       [read"%37%2%37%6%57%112$1@$0@@%50%99%92$1@@%102%48@@@%99%92$0@@%102%48@@@@|@|@"])
  fun op RAT_NMR_Z_IFF_EQUIV x = x
    val op RAT_NMR_Z_IFF_EQUIV =
    DT(((("rat",6),
        [("bool",[25,26,27,52,56,58]),("frac",[21]),
         ("integer",[93,154,159]),("rat",[0])]),["DISK_THM"]),
       [read"%37%2%37%6%57%54%92$1@@%102%48@@@%50%112$1@$0@@%54%92$0@@%102%48@@@@|@|@"])
  fun op RAT_EQUIV_TRANS x = x
    val op RAT_EQUIV_TRANS =
    DT(((("rat",7),
        [("bool",[25,30,56,63]),("frac",[21]),("intExtension",[13]),
         ("integer",[60,63,197]),("rat",[0,3,6])]),["DISK_THM"]),
       [read"%37%2%37%6%37%10%57%47%112$2@$1@@%112$1@$0@@@%112$2@$0@@|@|@|@"])
  fun op RAT_EQUIV x = x
    val op RAT_EQUIV =
    DT(((("rat",8),
        [("bool",[25,26,58,60,63,105]),("rat",[1,2,7])]),["DISK_THM"]),
       [read"%37%15%37%16%50%112$1@$0@@%52%112$1@@%112$0@@@|@|@"])
  fun op RAT_EQUIV_ALT x = x
    val op RAT_EQUIV_ALT =
    DT(((("rat",9),
        [("bool",[25,26,51,56,57,60,63]),("frac",[13,17,21,22,23]),
         ("intExtension",[1,13]),("integer",[60,61,63]),
         ("rat",[0])]),["DISK_THM"]),
       [read"%37%2%52%112$0@@%33%60%7%60%12%47%99%102%48@@$1@@%47%99%102%48@@$0@@%51%91$3@%81%45$1@$1@@@@%91$2@%81%45$0@$0@@@@@@|@|@|@|@"])
  fun op rat_ABS_REP_CLASS x = x
    val op rat_ABS_REP_CLASS =
    DT(((("rat",12),[("rat",[11])]),["DISK_THM"]),
       [read"%47%42%4%56%83%124$0@@@$0@|@@%38%11%50%58%24%47%112$0@$0@@%52$1@%112$0@@@|@@%52%124%83$0@@@$0@@|@@"])
  fun op rat_QUOTIENT x = x
    val op rat_QUOTIENT =
    DT(((("rat",15),
        [("bool",[15,25,26,51,53,56,58,63,105]),("quotient",[0,1,2,3]),
         ("rat",[8,12,13,14])]),["DISK_THM"]), [read"%73%112@%82@%123@"])
  fun op rat_def x = x
    val op rat_def =
    DT(((("rat",16),[("rat",[15])]),["DISK_THM"]),
       [read"%73%112@%82@%123@"])
  fun op rat_of_num_ind x = x
    val op rat_of_num_ind =
    DT(((("rat",34),
        [("arithmetic",[24,25,28,37,59,71,173,180]),
         ("bool",[25,27,36,53,54,63,104]),("numeral",[3,8]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%39%0%57%47$0%48@@%47$0%75%48@@@%41%19%57$1%75$0@@@$1%75%75$0@@@@|@@@@%41%32$1$0@|@@|@"])
  fun op rat_of_num_def x = x
    val op rat_of_num_def =
    DT(((("rat",35),
        [("arithmetic",[14,24,25,37,59,71,173,180]),
         ("bool",[15,25,36,54,63,104]),("combin",[19]),("numeral",[3,8]),
         ("prim_rec",[42]),("rat",[33]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%47%56%120%48@@%105@@%47%56%120%75%48@@@%106@@%41%19%56%120%75%75$0@@@@%107%120%75$0@@@%106@@|@@@"])
  fun op rat_of_num_def_compute x = x
    val op rat_of_num_def_compute =
    DT(((("rat",36),
        [("arithmetic",[14,24,25,37,59,71,173,180,268]),
         ("bool",[15,25,36,54,63,104]),("combin",[19]),("numeral",[3,8]),
         ("prim_rec",[42]),("rat",[33]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%47%56%120%48@@%105@@%47%56%120%75%48@@@%106@@%47%41%19%56%120%75%70%66$0@@@@@%107%120%70%66$0@@@@%106@@|@@%41%19%56%120%75%70%67$0@@@@@%107%120%70%67$0@@@@%106@@|@@@@"])
  fun op rat_0 x = x
    val op rat_0 =
    DT(((("rat",37),
        [("arithmetic",[14,24,25,37,59,71,173,180]),
         ("bool",
         [13,15,25,26,27,30,36,47,48,51,52,53,54,56,63,93,94,96,104]),
         ("combin",[19]),("numeral",[3,8]),("prim_rec",[42]),
         ("rat",[20,33]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%56%120%48@@%82%84@@"])
  fun op rat_1 x = x
    val op rat_1 =
    DT(((("rat",38),
        [("arithmetic",[14,24,25,37,59,71,173,180]),
         ("bool",[15,25,36,54,56,58,63,104]),("combin",[19]),
         ("integer",[162,166,320]),("numeral",[3,8]),("prim_rec",[42]),
         ("rat",[21,33]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%56%120%70%66%79@@@@%82%85@@"])
  fun op RAT x = x
    val op RAT =
    DT(((("rat",39),
        [("bool",[25,26,47,48,53,54,63]),("quotient",[3]),("rat",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%26%56%82%123$0@@@$0@|@"])
  fun op RAT_ABS_EQUIV x = x
    val op RAT_ABS_EQUIV =
    DT(((("rat",40),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,94,96]),
         ("quotient",[3]),("rat",[0,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%15%37%16%50%56%82$1@@%82$0@@@%112$1@$0@@|@|@"])
  fun op RAT_EQ x = x
    val op RAT_EQ =
    DT(((("rat",41),[("bool",[25,56]),("rat",[0,40])]),["DISK_THM"]),
       [read"%37%15%37%16%50%56%82$1@@%82$0@@@%54%100%92$1@@%89$0@@@%100%92$0@@%89$1@@@@|@|@"])
  fun op RAT_EQ_ALT x = x
    val op RAT_EQ_ALT =
    DT(((("rat",42),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("quotient",[3]),("rat",[0,16,17,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%50%56$1@$0@@%54%100%119$1@@%111$0@@@%100%119$0@@%111$1@@@@|@|@"])
  fun op RAT_NMREQ0_CONG x = x
    val op RAT_NMREQ0_CONG =
    DT(((("rat",43),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("quotient",[3]),("rat",[0,2,3,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%15%50%54%92%123%82$0@@@@%102%48@@@%54%92$0@@%102%48@@@|@"])
  fun op RAT_NMRLT0_CONG x = x
    val op RAT_NMRLT0_CONG =
    DT(((("rat",44),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("quotient",[3]),("rat",[0,2,5,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%15%50%99%92%123%82$0@@@@%102%48@@@%99%92$0@@%102%48@@@|@"])
  fun op RAT_NMRGT0_CONG x = x
    val op RAT_NMRGT0_CONG =
    DT(((("rat",45),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("quotient",[3]),("rat",[0,2,4,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%15%50%97%92%123%82$0@@@@%102%48@@@%97%92$0@@%102%48@@@|@"])
  fun op RAT_SGN_CONG x = x
    val op RAT_SGN_CONG =
    DT(((("rat",46),
        [("bool",[25,56,58,105,129]),("frac",[5]),("intExtension",[0]),
         ("rat",[43,44])]),["DISK_THM"]),
       [read"%37%15%54%94%123%82$0@@@@%94$0@@|@"])
  fun op RAT_AINV_CONG x = x
    val op RAT_AINV_CONG =
    DT(((("rat",47),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("frac",[6,21,22,23]),("integer",[205,323]),("quotient",[3]),
         ("rat",[0,2,16,40]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%33%56%82%87%123%82$0@@@@@%82%87$0@@@|@"])
  fun op FRAC_MINV_EQUIV x = x
    val op FRAC_MINV_EQUIV =
    DT(((("rat",48),
        [("bool",[25,26,27,30,52,53,54,56,58,63,64,105,124,129]),
         ("frac",[5,7,22,23]),("intExtension",[0,9]),
         ("integer",[61,83,93,94,95,96,98,145,153,159,166,206,253,342]),
         ("prim_rec",[6]),("rat",[0,3])]),["DISK_THM"]),
       [read"%57%125%54%92%35@@%102%48@@@@%57%112%33@%35@@%112%90%33@@%90%35@@@@"])
  fun op RAT_MINV_CONG x = x
    val op RAT_MINV_CONG =
    DT(((("rat",49),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("quotient",[3]),("rat",[0,2,16,40,48]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%33%57%125%54%92$0@@%102%48@@@@%56%82%90%123%82$0@@@@@%82%90$0@@@@|@"])
  fun op FRAC_ADD_EQUIV1 x = x
    val op FRAC_ADD_EQUIV1 =
    DT(((("rat",50),
        [("bool",[25,56,63]),("frac",[11,21,22,23]),("intExtension",[1]),
         ("integer",[60,63,85]),("rat",[0])]),["DISK_THM"]),
       [read"%57%112%33@%34@@%112%86%33@%35@@%86%34@%35@@@"])
  fun op RAT_ADD_CONG1 x = x
    val op RAT_ADD_CONG1 =
    DT(((("rat",51),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("quotient",[3]),("rat",[0,2,16,40,50]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%33%37%35%56%82%86%123%82$1@@@$0@@@%82%86$1@$0@@@|@|@"])
  fun op RAT_ADD_CONG2 x = x
    val op RAT_ADD_CONG2 =
    DT(((("rat",52),
        [("bool",[25,56]),("frac",[33]),("rat",[51])]),["DISK_THM"]),
       [read"%37%33%37%35%56%82%86$1@%123%82$0@@@@@%82%86$1@$0@@@|@|@"])
  fun op RAT_ADD_CONG x = x
    val op RAT_ADD_CONG =
    DT(((("rat",53),[("rat",[51,52])]),["DISK_THM"]),
       [read"%47%37%33%37%35%56%82%86%123%82$1@@@$0@@@%82%86$1@$0@@@|@|@@%37%33%37%35%56%82%86$1@%123%82$0@@@@@%82%86$1@$0@@@|@|@@"])
  fun op FRAC_MUL_EQUIV1 x = x
    val op FRAC_MUL_EQUIV1 =
    DT(((("rat",54),
        [("bool",[25,56,63]),("frac",[13,21,22,23]),("intExtension",[1]),
         ("integer",[60,63]),("rat",[0])]),["DISK_THM"]),
       [read"%57%112%33@%34@@%112%91%33@%35@@%91%34@%35@@@"])
  fun op RAT_MUL_CONG1 x = x
    val op RAT_MUL_CONG1 =
    DT(((("rat",55),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("quotient",[3]),("rat",[0,2,16,40,54]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%33%37%35%56%82%91%123%82$1@@@$0@@@%82%91$1@$0@@@|@|@"])
  fun op RAT_MUL_CONG2 x = x
    val op RAT_MUL_CONG2 =
    DT(((("rat",56),
        [("bool",[25,56]),("frac",[34]),("rat",[55])]),["DISK_THM"]),
       [read"%37%33%37%35%56%82%91$1@%123%82$0@@@@@%82%91$1@$0@@@|@|@"])
  fun op RAT_MUL_CONG x = x
    val op RAT_MUL_CONG =
    DT(((("rat",57),[("rat",[55,56])]),["DISK_THM"]),
       [read"%47%37%33%37%35%56%82%91%123%82$1@@@$0@@@%82%91$1@$0@@@|@|@@%37%33%37%35%56%82%91$1@%123%82$0@@@@@%82%91$1@$0@@@|@|@@"])
  fun op RAT_SUB_CONG1 x = x
    val op RAT_SUB_CONG1 =
    DT(((("rat",58),
        [("bool",[25,56]),("frac",[12]),("rat",[53])]),["DISK_THM"]),
       [read"%37%33%37%35%56%82%95%123%82$1@@@$0@@@%82%95$1@$0@@@|@|@"])
  fun op RAT_SUB_CONG2 x = x
    val op RAT_SUB_CONG2 =
    DT(((("rat",59),
        [("bool",[25,56,58]),("frac",[41]),("rat",[47,58])]),["DISK_THM"]),
       [read"%37%33%37%35%56%82%95$1@%123%82$0@@@@@%82%95$1@$0@@@|@|@"])
  fun op RAT_SUB_CONG x = x
    val op RAT_SUB_CONG =
    DT(((("rat",60),[("rat",[58,59])]),["DISK_THM"]),
       [read"%47%37%33%37%35%56%82%95%123%82$1@@@$0@@@%82%95$1@$0@@@|@|@@%37%33%37%35%56%82%95$1@%123%82$0@@@@@%82%95$1@$0@@@|@|@@"])
  fun op RAT_DIV_CONG1 x = x
    val op RAT_DIV_CONG1 =
    DT(((("rat",61),
        [("bool",[25,56]),("frac",[14]),("rat",[57])]),["DISK_THM"]),
       [read"%37%33%37%35%57%125%54%92$0@@%102%48@@@@%56%82%88%123%82$1@@@$0@@@%82%88$1@$0@@@@|@|@"])
  fun op RAT_DIV_CONG2 x = x
    val op RAT_DIV_CONG2 =
    DT(((("rat",62),
        [("bool",[25,26,27,54,56,58,63]),("frac",[13,14,21,22,23]),
         ("intExtension",[1]),("integer",[60,63,160]),
         ("rat",[0,40,49])]),["DISK_THM"]),
       [read"%37%33%37%35%57%125%54%92$0@@%102%48@@@@%56%82%88$1@%123%82$0@@@@@%82%88$1@$0@@@@|@|@"])
  fun op RAT_DIV_CONG x = x
    val op RAT_DIV_CONG =
    DT(((("rat",63),[("rat",[61,62])]),["DISK_THM"]),
       [read"%47%37%33%37%35%57%125%54%92$0@@%102%48@@@@%56%82%88%123%82$1@@@$0@@@%82%88$1@$0@@@@|@|@@%37%33%37%35%57%125%54%92$0@@%102%48@@@@%56%82%88$1@%123%82$0@@@@@%82%88$1@$0@@@@|@|@@"])
  fun op RAT_NMRDNM_EQ x = x
    val op RAT_NMRDNM_EQ =
    DT(((("rat",64),
        [("bool",[25,56,63]),("frac",[9,21,22,23]),("integer",[83,84,206]),
         ("numeral",[3,7]),("rat",[0,38,40])]),["DISK_THM"]),
       [read"%50%56%82%81%45%92%15@@%89%15@@@@@%120%70%66%79@@@@@%54%92%15@@%89%15@@@"])
  fun op RAT_AINV_CALCULATE x = x
    val op RAT_AINV_CALCULATE =
    DT(((("rat",65),
        [("bool",[25,26,47,48,53,54,63]),("rat",[22,47]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%37%15%56%108%82$0@@@%82%87$0@@@|@"])
  fun op RAT_MINV_CALCULATE x = x
    val op RAT_MINV_CALCULATE =
    DT(((("rat",66),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,94,96]),
         ("rat",[23,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%15%57%125%54%102%48@@%92$0@@@@%56%117%82$0@@@%82%90$0@@@@|@"])
  fun op RAT_ADD_CALCULATE x = x
    val op RAT_ADD_CALCULATE =
    DT(((("rat",67),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[24,53]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%37%15%37%16%56%107%82$1@@%82$0@@@%82%86$1@$0@@@|@|@"])
  fun op RAT_SUB_CALCULATE x = x
    val op RAT_SUB_CALCULATE =
    DT(((("rat",68),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[25,60]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%37%15%37%16%56%122%82$1@@%82$0@@@%82%95$1@$0@@@|@|@"])
  fun op RAT_MUL_CALCULATE x = x
    val op RAT_MUL_CALCULATE =
    DT(((("rat",69),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[26,57]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%37%15%37%16%56%118%82$1@@%82$0@@@%82%91$1@$0@@@|@|@"])
  fun op RAT_DIV_CALCULATE x = x
    val op RAT_DIV_CALCULATE =
    DT(((("rat",70),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,94,96]),
         ("rat",[27,63]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%37%15%37%16%57%125%54%92$0@@%102%48@@@@%56%110%82$1@@%82$0@@@%82%88$1@$0@@@@|@|@"])
  fun op RAT_EQ_CALCULATE x = x
    val op RAT_EQ_CALCULATE =
    DT(((("rat",71),
        [("bool",[25,26,47,48,53,54,63,71,94]),("rat",[0,40]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%37%15%37%16%50%56%82$1@@%82$0@@@%54%100%92$1@@%89$0@@@%100%92$0@@%89$1@@@@|@|@"])
  fun op RAT_LES_CALCULATE x = x
    val op RAT_LES_CALCULATE =
    DT(((("rat",72),
        [("bool",[14,25,37,51,52,54,56,58,63,64,72,96,101]),
         ("frac",[5,6,11,12,21,22,23]),("intExtension",[1,20]),
         ("int_arith",[3,9]),
         ("integer",
         [59,61,62,75,79,80,83,85,92,93,95,96,97,104,115,134,145,320,337]),
         ("numeral",[7,8,16]),("rat",[19,28,46,68]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%37%15%37%16%50%116%82$1@@%82$0@@@%99%100%92$1@@%89$0@@@%100%92$0@@%89$1@@@@|@|@"])
  fun op RAT_OF_NUM_CALCULATE x = x
    val op RAT_OF_NUM_CALCULATE =
    DT(((("rat",73),
        [("arithmetic",[14,24,25,37,59,70,71,173,180]),
         ("bool",[15,25,36,53,54,56,58,63,104,105,124]),("combin",[19]),
         ("frac",[8,9,11,22,23]),("int_arith",[34]),
         ("integer",[83,162,168,335]),("numeral",[3,8]),("prim_rec",[42]),
         ("rat",[20,21,33,34,67]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%41%20%56%120$0@@%82%81%45%102$0@@%102%70%66%79@@@@@@@|@"])
  fun op RAT_EQ0_NMR x = x
    val op RAT_EQ0_NMR =
    DT(((("rat",74),
        [("bool",[25,56,58]),("frac",[8,22,23]),("integer",[84,93,335]),
         ("rat",[0,17,37,39,40,43])]),["DISK_THM"]),
       [read"%42%27%50%56$0@%120%48@@@%54%119$0@@%102%48@@@|@"])
  fun op RAT_0LES_NMR x = x
    val op RAT_0LES_NMR =
    DT(((("rat",75),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,108,
          109,111,129]),("frac",[5,8,16,21,22,28]),("intExtension",[0,1]),
         ("integer",[65,84,93,102,140,166,182,206,335,342]),
         ("numeral",[3,6]),("prim_rec",[6]),
         ("rat",[17,19,28,37,39,43,44,68]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%50%116%120%48@@$0@@%99%102%48@@%119$0@@@|@"])
  fun op RAT_LES0_NMR x = x
    val op RAT_LES0_NMR =
    DT(((("rat",76),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,108,
          109,111,129]),("frac",[5,8,16,21,22,28]),("intExtension",[0,1]),
         ("integer",[65,66,84,93,102,118,140,145,152,166,181,335,342]),
         ("numeral",[3,6]),("rat",[17,19,28,37,39,43,44,68]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%50%116$0@%120%48@@@%99%119$0@@%102%48@@@|@"])
  fun op RAT_0LEQ_NMR x = x
    val op RAT_0LEQ_NMR =
    DT(((("rat",77),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("integer",[109]),("rat",[17,30,74,75]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%50%115%120%48@@$0@@%98%102%48@@%119$0@@@|@"])
  fun op RAT_LEQ0_NMR x = x
    val op RAT_LEQ0_NMR =
    DT(((("rat",78),
        [("bool",[25,26,47,48,53,54,63,71,94]),("integer",[109]),
         ("rat",[17,30,74,76]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%50%115$0@%120%48@@@%98%119$0@@%102%48@@@|@"])
  fun op RAT_ADD_ASSOC x = x
    val op RAT_ADD_ASSOC =
    DT(((("rat",79),
        [("bool",[25,36,56]),("frac",[31]),("rat",[24,53])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%56%107$2@%107$1@$0@@@%107%107$2@$1@@$0@@|@|@|@"])
  fun op RAT_MUL_ASSOC x = x
    val op RAT_MUL_ASSOC =
    DT(((("rat",80),
        [("bool",[25,36,56]),("frac",[32]),("rat",[26,57])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%56%118$2@%118$1@$0@@@%118%118$2@$1@@$0@@|@|@|@"])
  fun op RAT_ADD_COMM x = x
    val op RAT_ADD_COMM =
    DT(((("rat",81),
        [("bool",[25,52,56]),("frac",[33]),("integer",[160]),
         ("rat",[0,24,40])]),["DISK_THM"]),
       [read"%42%4%42%8%56%107$1@$0@@%107$0@$1@@|@|@"])
  fun op RAT_MUL_COMM x = x
    val op RAT_MUL_COMM =
    DT(((("rat",82),
        [("bool",[25,52,56]),("frac",[34]),("integer",[160]),
         ("rat",[0,26,40])]),["DISK_THM"]),
       [read"%42%4%42%8%56%118$1@$0@@%118$0@$1@@|@|@"])
  fun op RAT_ADD_RID x = x
    val op RAT_ADD_RID =
    DT(((("rat",83),
        [("bool",[25,56]),("frac",[35]),("quotient",[3]),
         ("rat",[16,24,37,53])]),["DISK_THM"]),
       [read"%42%4%56%107$0@%120%48@@@$0@|@"])
  fun op RAT_ADD_LID x = x
    val op RAT_ADD_LID =
    DT(((("rat",84),[("bool",[25,56]),("rat",[81,83])]),["DISK_THM"]),
       [read"%42%4%56%107%120%48@@$0@@$0@|@"])
  fun op RAT_MUL_RID x = x
    val op RAT_MUL_RID =
    DT(((("rat",85),
        [("bool",[25,56]),("frac",[36]),("quotient",[3]),
         ("rat",[16,26,38,57])]),["DISK_THM"]),
       [read"%42%4%56%118$0@%120%70%66%79@@@@@$0@|@"])
  fun op RAT_MUL_LID x = x
    val op RAT_MUL_LID =
    DT(((("rat",86),[("bool",[25,56]),("rat",[82,85])]),["DISK_THM"]),
       [read"%42%4%56%118%120%70%66%79@@@@$0@@$0@|@"])
  fun op RAT_ADD_RINV x = x
    val op RAT_ADD_RINV =
    DT(((("rat",87),
        [("bool",[14,25,56,63,64]),("frac",[6,8,11,21,22,23]),
         ("intExtension",[1]),("integer",[84,93,335]),
         ("integerRing",[20,22]),("numRing",[18]),("prelim",[23,28,33]),
         ("quote",[20,23]),("rat",[0,22,24,37,40,53])]),["DISK_THM"]),
       [read"%42%4%56%107$0@%108$0@@@%120%48@@|@"])
  fun op RAT_ADD_LINV x = x
    val op RAT_ADD_LINV =
    DT(((("rat",88),[("bool",[25,56]),("rat",[81,87])]),["DISK_THM"]),
       [read"%42%4%56%107%108$0@@$0@@%120%48@@|@"])
  fun op RAT_MUL_RINV x = x
    val op RAT_MUL_RINV =
    DT(((("rat",89),
        [("bool",[14,25,26,27,30,51,53,56,58,63,64,105,124,129,147]),
         ("frac",[5,7,8,9,13,21,22,23]),("intExtension",[0,1,9]),
         ("integer",[83,84,93,166,206,253,335]),("integerRing",[20,22]),
         ("numRing",[18]),("numeral",[3,7]),("prelim",[24,33]),
         ("quote",[20,23]),("quotient",[3]),
         ("rat",[0,16,23,26,37,38,40,43,57])]),["DISK_THM"]),
       [read"%42%4%57%125%56$0@%120%48@@@@%56%118$0@%117$0@@@%120%70%66%79@@@@@|@"])
  fun op RAT_MUL_LINV x = x
    val op RAT_MUL_LINV =
    DT(((("rat",90),
        [("bool",[25,26,27,53,54,56,58,105,124]),
         ("rat",[82,89])]),["DISK_THM"]),
       [read"%42%4%57%125%56$0@%120%48@@@@%56%118%117$0@@$0@@%120%70%66%79@@@@@|@"])
  fun op RAT_RDISTRIB x = x
    val op RAT_RDISTRIB =
    DT(((("rat",91),
        [("bool",[14,25,56,63,64]),("frac",[11,13,21,22,23]),
         ("intExtension",[1]),("integerRing",[20]),
         ("prelim",[23,24,28,33]),("quote",[20,23]),
         ("rat",[0,24,26,40,53,57])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%56%118%107$2@$1@@$0@@%107%118$2@$0@@%118$1@$0@@@|@|@|@"])
  fun op RAT_LDISTRIB x = x
    val op RAT_LDISTRIB =
    DT(((("rat",92),[("bool",[25,36,56]),("rat",[82,91])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%56%118$0@%107$2@$1@@@%107%118$0@$2@@%118$0@$1@@@|@|@|@"])
  fun op RAT_1_NOT_0 x = x
    val op RAT_1_NOT_0 =
    DT(((("rat",93),
        [("bool",[25,54,63]),("frac",[8,9,22,23]),
         ("integer",[83,93,166,335]),("numeral",[3,6]),
         ("rat",[0,37,38,40])]),["DISK_THM"]),
       [read"%125%56%120%70%66%79@@@@%120%48@@@"])
  fun op RAT_MUL_LZERO x = x
    val op RAT_MUL_LZERO =
    DT(((("rat",94),
        [("bool",[25,26,47,48,53,54,56,58,63]),("frac",[16,21,22,23,29]),
         ("intExtension",[1]),("integer",[84,93,166,335]),
         ("rat",[39,41,69,73]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%27%56%118%120%48@@$0@@%120%48@@|@"])
  fun op RAT_MUL_RZERO x = x
    val op RAT_MUL_RZERO =
    DT(((("rat",95),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("rat",[82,94]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%27%56%118$0@%120%48@@@%120%48@@|@"])
  fun op RAT_SUB_ADDAINV x = x
    val op RAT_SUB_ADDAINV =
    DT(((("rat",96),
        [("bool",[25,56]),("frac",[12]),
         ("rat",[22,24,25,53])]),["DISK_THM"]),
       [read"%42%27%42%28%56%122$1@$0@@%107$1@%108$0@@@|@|@"])
  fun op RAT_DIV_MULMINV x = x
    val op RAT_DIV_MULMINV =
    DT(((("rat",97),
        [("bool",[25,56]),("frac",[14]),
         ("rat",[23,26,27,57])]),["DISK_THM"]),
       [read"%42%27%42%28%56%110$1@$0@@%118$1@%117$0@@@|@|@"])
  fun op RAT_AINV_0 x = x
    val op RAT_AINV_0 =
    DT(((("rat",98),
        [("bool",[25,56]),("frac",[38]),("rat",[22,37,47])]),["DISK_THM"]),
       [read"%56%108%120%48@@@%120%48@@"])
  fun op RAT_AINV_AINV x = x
    val op RAT_AINV_AINV =
    DT(((("rat",99),
        [("bool",[25,56]),("frac",[39]),("quotient",[3]),
         ("rat",[16,22,47])]),["DISK_THM"]),
       [read"%42%27%56%108%108$0@@@$0@|@"])
  fun op RAT_AINV_ADD x = x
    val op RAT_AINV_ADD =
    DT(((("rat",100),
        [("bool",[25,56]),("frac",[40]),
         ("rat",[22,24,47,53])]),["DISK_THM"]),
       [read"%42%27%42%28%56%108%107$1@$0@@@%107%108$1@@%108$0@@@|@|@"])
  fun op RAT_AINV_SUB x = x
    val op RAT_AINV_SUB =
    DT(((("rat",101),
        [("bool",[25,26,47,48,53,54,63]),("rat",[81,96,99,100]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%56%108%122$1@$0@@@%122$0@$1@@|@|@"])
  fun op RAT_AINV_RMUL x = x
    val op RAT_AINV_RMUL =
    DT(((("rat",102),
        [("bool",[25,26,47,48,53,54,63,94]),("frac",[42]),
         ("rat",[22,26,47,57]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%56%108%118$1@$0@@@%118$1@%108$0@@@|@|@"])
  fun op RAT_AINV_LMUL x = x
    val op RAT_AINV_LMUL =
    DT(((("rat",103),
        [("bool",[25,26,47,48,53,54,63,94]),("frac",[43]),
         ("rat",[22,26,47,57]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%56%108%118$1@$0@@@%118%108$1@@$0@@|@|@"])
  fun op RAT_AINV_MINV x = x
    val op RAT_AINV_MINV =
    DT(((("rat",104),
        [("bool",[13,14,25,26,27,30,51,52,53,54,56,58,63,64,105,129,147]),
         ("frac",[16,21,22,23,24,25]),("intExtension",[0,9]),
         ("integer",[83,97,98,118,145,160,205,253,323]),
         ("integerRing",[20,22]),("numRing",[18]),("prelim",[33]),
         ("quote",[20,23]),
         ("rat",
         [0,17,22,23,39,40,41,43,47,49,65,74,98,99])]),["DISK_THM"]),
       [read"%42%27%57%125%56$0@%120%48@@@@%56%108%117$0@@@%117%108$0@@@@|@"])
  fun op RAT_SUB_RDISTRIB x = x
    val op RAT_SUB_RDISTRIB =
    DT(((("rat",105),
        [("bool",[25,26,47,48,53,54,63]),("rat",[91,96,103]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%56%118%122$2@$1@@$0@@%122%118$2@$0@@%118$1@$0@@@|@|@|@"])
  fun op RAT_SUB_LDISTRIB x = x
    val op RAT_SUB_LDISTRIB =
    DT(((("rat",106),
        [("bool",[25,26,47,48,53,54,63]),("rat",[92,96,102]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%56%118$0@%122$2@$1@@@%122%118$0@$2@@%118$0@$1@@@|@|@|@"])
  fun op RAT_SUB_LID x = x
    val op RAT_SUB_LID =
    DT(((("rat",107),[("bool",[25,56]),("rat",[84,96])]),["DISK_THM"]),
       [read"%42%27%56%122%120%48@@$0@@%108$0@@|@"])
  fun op RAT_SUB_RID x = x
    val op RAT_SUB_RID =
    DT(((("rat",108),[("bool",[25,56]),("rat",[83,96,98])]),["DISK_THM"]),
       [read"%42%27%56%122$0@%120%48@@@$0@|@"])
  fun op RAT_SUB_ID x = x
    val op RAT_SUB_ID =
    DT(((("rat",109),[("bool",[25,56]),("rat",[87,96])]),["DISK_THM"]),
       [read"%42%26%56%122$0@$0@@%120%48@@|@"])
  fun op RAT_EQ_SUB0 x = x
    val op RAT_EQ_SUB0 =
    DT(((("rat",110),
        [("bool",[25,56,58]),("frac",[8,16,21,22,23,28]),
         ("intExtension",[1]),("integer",[84,93,140,335]),
         ("rat",[0,37,39,40,68])]),["DISK_THM"]),
       [read"%42%27%42%28%50%56%122$1@$0@@%120%48@@@%56$1@$0@@|@|@"])
  fun op RAT_EQ_0SUB x = x
    val op RAT_EQ_0SUB =
    DT(((("rat",111),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("rat",[110]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%56%120%48@@%122$1@$0@@@%56$1@$0@@|@|@"])
  fun op RAT_SGN_CALCULATE x = x
    val op RAT_SGN_CALCULATE =
    DT(((("rat",112),[("bool",[25,56]),("rat",[19,46])]),["DISK_THM"]),
       [read"%54%121%82%15@@@%94%15@@"])
  fun op RAT_SGN_CLAUSES x = x
    val op RAT_SGN_CLAUSES =
    DT(((("rat",113),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,73,93,94,96]),
         ("frac",[5,22,23,55]),("intExtension",[20]),
         ("integer",[84,93,152,335]),
         ("rat",[19,28,29,39,41,46,65,73,84,96,108]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%47%50%54%121$0@@%101%102%70%66%79@@@@@@%116$0@%120%48@@@@%47%50%54%121$0@@%102%48@@@%56$0@%120%48@@@@%50%54%121$0@@%102%70%66%79@@@@@%114$0@%120%48@@@@@|@"])
  fun op RAT_SGN_0 x = x
    val op RAT_SGN_0 =
    DT(((("rat",114),
        [("bool",[25,56,64]),("frac",[5,8,22]),("intExtension",[0]),
         ("integer",[335]),("rat",[19,37,46])]),["DISK_THM"]),
       [read"%54%121%120%48@@@%102%48@@"])
  fun op RAT_SGN_AINV x = x
    val op RAT_SGN_AINV =
    DT(((("rat",115),
        [("bool",[25,26,47,48,53,54,63]),("frac",[55]),("rat",[19,22,46]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%27%54%101%121%108$0@@@@%121$0@@|@"])
  fun op RAT_SGN_MUL x = x
    val op RAT_SGN_MUL =
    DT(((("rat",116),
        [("bool",[25,26,47,48,53,54,63]),("frac",[53]),("rat",[19,26,46]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%54%121%118$1@$0@@@%100%121$1@@%121$0@@@|@|@"])
  fun op RAT_SGN_MINV x = x
    val op RAT_SGN_MINV =
    DT(((("rat",117),
        [("bool",
         [25,26,27,30,47,48,51,52,53,54,56,58,63,64,94,96,105,129,147]),
         ("frac",[5,7,21,22,54]),("intExtension",[0,9,20]),
         ("integer",[75,102,119,206,304]),("numeral",[3,6,7]),
         ("prim_rec",[6]),("rat",[17,19,23,44,45,74]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%57%125%56$0@%120%48@@@@%54%121%117$0@@@%121$0@@@|@"])
  fun op RAT_SGN_TOTAL x = x
    val op RAT_SGN_TOTAL =
    DT(((("rat",118),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,63,71,94,108,109,111]),
         ("frac",[5]),("intExtension",[0]),("rat",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%80%54%121$0@@%101%102%70%66%79@@@@@@%80%54%121$0@@%102%48@@@%54%121$0@@%102%70%66%79@@@@@@|@"])
  fun op RAT_SGN_COMPLEMENT x = x
    val op RAT_SGN_COMPLEMENT =
    DT(((("rat",119),
        [("bool",[25,51,52,54,56,58,63]),("integer",[166,342]),
         ("numeral",[3,6]),("rat",[118])]),["DISK_THM"]),
       [read"%42%27%47%50%125%54%121$0@@%101%102%70%66%79@@@@@@@%80%54%121$0@@%102%48@@@%54%121$0@@%102%70%66%79@@@@@@@%47%50%125%54%121$0@@%102%48@@@@%80%54%121$0@@%101%102%70%66%79@@@@@@%54%121$0@@%102%70%66%79@@@@@@@%50%125%54%121$0@@%102%70%66%79@@@@@@%80%54%121$0@@%101%102%70%66%79@@@@@@%54%121$0@@%102%48@@@@@@|@"])
  fun op RAT_LES_REF x = x
    val op RAT_LES_REF =
    DT(((("rat",120),
        [("bool",[25,36,54]),("integer",[166]),("numeral",[3,6]),
         ("rat",[28,109,114])]),["DISK_THM"]),
       [read"%42%27%125%116$0@$0@@|@"])
  fun op RAT_LES_ANTISYM x = x
    val op RAT_LES_ANTISYM =
    DT(((("rat",121),
        [("bool",[25,51,53,54,56,58,105,124]),("frac",[41,49]),
         ("integer",[152,342]),("numeral",[3,6]),
         ("rat",[19,25,28,46])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116$1@$0@@%125%116$0@$1@@@|@|@"])
  fun op RAT_LES_TRANS x = x
    val op RAT_LES_TRANS =
    DT(((("rat",122),
        [("bool",[14,25,26,47,48,51,53,54,56,58,63,64,93,94,96]),
         ("frac",[5,16,21,22,23,27,28]),("intExtension",[1,20]),
         ("integer",[73,75,133]),("integerRing",[20,22]),("numRing",[18]),
         ("prelim",[23,24,28,33]),("quote",[20,23]),
         ("rat",[19,24,25,28,39,41,46,53,67,68]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%47%116$2@$1@@%116$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op RAT_LES_TOTAL x = x
    val op RAT_LES_TOTAL =
    DT(((("rat",123),
        [("bool",[25,26,47,48,53,54,58,63,93,94,96]),("integer",[205]),
         ("rat",[28,101,110,113,115,118]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%80%116$1@$0@@%80%56$1@$0@@%116$0@$1@@@|@|@"])
  fun op RAT_LEQ_REF x = x
    val op RAT_LEQ_REF =
    DT(((("rat",124),[("bool",[25,52,56]),("rat",[30])]),["DISK_THM"]),
       [read"%42%27%115$0@$0@|@"])
  fun op RAT_LEQ_ANTISYM x = x
    val op RAT_LEQ_ANTISYM =
    DT(((("rat",125),
        [("bool",[25,26,47,48,53,54,56,63,96]),("rat",[30,121]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%57%47%115$1@$0@@%115$0@$1@@@%56$1@$0@@|@|@"])
  fun op RAT_LEQ_TRANS x = x
    val op RAT_LEQ_TRANS =
    DT(((("rat",126),
        [("bool",[25,26,47,48,52,53,54,56,58,63,93,94,96]),
         ("rat",[30,122]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%47%115$2@$1@@%115$1@$0@@@%115$2@$0@@|@|@|@"])
  fun op RAT_LES_01 x = x
    val op RAT_LES_01 =
    DT(((("rat",127),
        [("bool",[25,26,27,47,48,53,54,56,58,63,64,105,129]),
         ("frac",[5,22,28]),("intExtension",[0,1]),
         ("integer",[83,93,140,166,182,206,335]),("numeral",[3,6]),
         ("prim_rec",[6]),("rat",[19,28,43,44,68,73]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%116%120%48@@%120%70%66%79@@@@"])
  fun op RAT_LES_IMP_LEQ x = x
    val op RAT_LES_IMP_LEQ =
    DT(((("rat",128),
        [("bool",[25,52,53,56,58,105,124]),("rat",[28,30])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116$1@$0@@%115$1@$0@@|@|@"])
  fun op RAT_LES_IMP_NEQ x = x
    val op RAT_LES_IMP_NEQ =
    DT(((("rat",129),
        [("bool",[25,53,54,58,105,124]),("integer",[166]),
         ("numeral",[3,6]),("rat",[28,110,113])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116$1@$0@@%125%56$1@$0@@@|@|@"])
  fun op RAT_LEQ_LES x = x
    val op RAT_LEQ_LES =
    DT(((("rat",130),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[30,121,123]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%50%125%116$0@$1@@@%115$1@$0@@|@|@"])
  fun op RAT_LES_LEQ x = x
    val op RAT_LES_LEQ =
    DT(((("rat",131),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[30,121,123,129]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%125%115$0@$1@@@%116$1@$0@@|@|@"])
  fun op RAT_LES_LEQ2 x = x
    val op RAT_LES_LEQ2 =
    DT(((("rat",132),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("rat",[30,121,129]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%116$1@$0@@%47%115$1@$0@@%125%115$0@$1@@@@|@|@"])
  fun op RAT_LES_LEQ_TRANS x = x
    val op RAT_LES_LEQ_TRANS =
    DT(((("rat",133),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[30,122]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%57%47%116$2@$1@@%115$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op RAT_LEQ_LES_TRANS x = x
    val op RAT_LEQ_LES_TRANS =
    DT(((("rat",134),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[30,122]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%4%42%8%42%13%57%47%115$2@$1@@%116$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op RAT_0LES_0LES_ADD x = x
    val op RAT_0LES_0LES_ADD =
    DT(((("rat",135),
        [("bool",[25,26,43,47,48,53,54,58,63,73,93,94,96]),
         ("frac",[16,21,22,27]),("intExtension",[1]),
         ("integer",[75,133,304]),("rat",[17,39,45,67,75]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116%120%48@@$1@@%57%116%120%48@@$0@@%116%120%48@@%107$1@$0@@@@|@|@"])
  fun op RAT_LES0_LES0_ADD x = x
    val op RAT_LES0_LES0_ADD =
    DT(((("rat",136),
        [("bool",[25,26,43,47,48,53,54,58,63,73,93,94,96]),
         ("frac",[16,21,22,27]),("intExtension",[1,25]),("integer",[304]),
         ("rat",[17,39,44,67,76]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116$1@%120%48@@@%57%116$0@%120%48@@@%116%107$1@$0@@%120%48@@@@|@|@"])
  fun op RAT_0LES_0LEQ_ADD x = x
    val op RAT_0LES_0LEQ_ADD =
    DT(((("rat",137),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[30,83,135]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116%120%48@@$1@@%57%115%120%48@@$0@@%116%120%48@@%107$1@$0@@@@|@|@"])
  fun op RAT_LES0_LEQ0_ADD x = x
    val op RAT_LES0_LEQ0_ADD =
    DT(((("rat",138),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[30,83,136]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%57%116$1@%120%48@@@%57%115$0@%120%48@@@%116%107$1@$0@@%120%48@@@@|@|@"])
  fun op RAT_AINV_ONE_ONE x = x
    val op RAT_AINV_ONE_ONE =
    DT(((("rat",139),
        [("bool",[10,13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("frac",[16,21,22,23,24]),("integer",[205,323]),
         ("rat",[39,41,65]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%72%108@"])
  fun op RAT_ADD_ONE_ONE x = x
    val op RAT_ADD_ONE_ONE =
    DT(((("rat",140),
        [("bool",[10,14,25,26,47,48,53,54,56,58,63,64,96]),
         ("frac",[16,21,22,23,27]),("intExtension",[1,7]),
         ("integer",[85,86,161]),("integerRing",[20]),
         ("prelim",[23,24,28,33]),("quote",[20,23]),("rat",[39,41,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%72%107$0@@|@"])
  fun op RAT_MUL_ONE_ONE x = x
    val op RAT_MUL_ONE_ONE =
    DT(((("rat",141),
        [("bool",
         [10,13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,64,71,93,94,96]),
         ("frac",[16,21,22,23,29]),("intExtension",[1,6,7]),
         ("integer",[200]),("integerRing",[20]),("prelim",[24,33]),
         ("quote",[20,23]),("rat",[17,39,41,69,74,93,94]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%50%125%56$0@%120%48@@@@%72%118$0@@@|@"])
  fun op RAT_EQ_AINV x = x
    val op RAT_EQ_AINV =
    DT(((("rat",142),
        [("bool",[25,56,58]),("frac",[16,21,22,23,24]),
         ("integer",[205,323]),("rat",[0,39,40,65])]),["DISK_THM"]),
       [read"%42%27%42%28%50%56%108$1@@%108$0@@@%56$1@$0@@|@|@"])
  fun op RAT_EQ_LADD x = x
    val op RAT_EQ_LADD =
    DT(((("rat",143),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96,116]),
         ("rat",[81,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%56%107$0@$2@@%107$0@$1@@@%56$2@$1@@|@|@|@"])
  fun op RAT_EQ_RADD x = x
    val op RAT_EQ_RADD =
    DT(((("rat",144),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96,116]),
         ("rat",[81,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%56%107$2@$0@@%107$1@$0@@@%56$2@$1@@|@|@|@"])
  fun op RAT_EQ_RMUL x = x
    val op RAT_EQ_RMUL =
    DT(((("rat",145),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96,116]),
         ("rat",[82,141]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%125%56$0@%120%48@@@@%50%56%118$2@$0@@%118$1@$0@@@%56$2@$1@@@|@|@|@"])
  fun op RAT_EQ_LMUL x = x
    val op RAT_EQ_LMUL =
    DT(((("rat",146),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("rat",[82,145]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%125%56$0@%120%48@@@@%50%56%118$0@$2@@%118$0@$1@@@%56$2@$1@@@|@|@|@"])
  fun op RAT_AINV_EQ x = x
    val op RAT_AINV_EQ =
    DT(((("rat",147),
        [("bool",[25,26,56,58]),("rat",[99,142])]),["DISK_THM"]),
       [read"%42%27%42%28%50%56%108$1@@$0@@%56$1@%108$0@@@|@|@"])
  fun op RAT_LSUB_EQ x = x
    val op RAT_LSUB_EQ =
    DT(((("rat",148),
        [("bool",[25,26,56,58]),
         ("rat",[79,81,83,84,88,96])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%56%122$2@$1@@$0@@%56$2@%107$1@$0@@@|@|@|@"])
  fun op RAT_RSUB_EQ x = x
    val op RAT_RSUB_EQ =
    DT(((("rat",149),
        [("bool",[25,26,56,58]),("rat",[79,83,87,88,96])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%56$2@%122$1@$0@@@%56%107$2@$0@@$1@@|@|@|@"])
  fun op RAT_LDIV_EQ x = x
    val op RAT_LDIV_EQ =
    DT(((("rat",150),
        [("bool",[25,26,27,54,56,58,63]),
         ("rat",[80,82,85,89,97,146])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%125%56$1@%120%48@@@@%50%56%110$2@$1@@$0@@%56$2@%118$1@$0@@@@|@|@|@"])
  fun op RAT_RDIV_EQ x = x
    val op RAT_RDIV_EQ =
    DT(((("rat",151),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("rat",[82,150]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%125%56$0@%120%48@@@@%50%56$2@%110$1@$0@@@%56%118$2@$0@@$1@@@|@|@|@"])
  fun op RAT_LES_RADD x = x
    val op RAT_LES_RADD =
    DT(((("rat",152),
        [("bool",[25,56,63]),
         ("rat",[19,28,79,81,83,87,96,100])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%116%107$2@$0@@%107$1@$0@@@%116$2@$1@@|@|@|@"])
  fun op RAT_LES_LADD x = x
    val op RAT_LES_LADD =
    DT(((("rat",153),
        [("bool",[25,26,47,48,53,54,63,71,93,94,96]),("rat",[81,152]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%116%107$0@$2@@%107$0@$1@@@%116$2@$1@@|@|@|@"])
  fun op RAT_LES_AINV x = x
    val op RAT_LES_AINV =
    DT(((("rat",154),
        [("bool",[25,56,58,63]),("rat",[79,81,84,88,152])]),["DISK_THM"]),
       [read"%42%27%42%28%50%116%108$1@@%108$0@@@%116$0@$1@@|@|@"])
  fun op RAT_LSUB_LES x = x
    val op RAT_LSUB_LES =
    DT(((("rat",155),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[28,79,81,96,99,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%116%122$2@$1@@$0@@%116$2@%107$1@$0@@@|@|@|@"])
  fun op RAT_RSUB_LES x = x
    val op RAT_RSUB_LES =
    DT(((("rat",156),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rat",[28,79,81,96,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%50%116$2@%122$1@$0@@@%116%107$2@$0@@$1@@|@|@|@"])
  fun op RAT_LES_RMUL_POS x = x
    val op RAT_LES_RMUL_POS =
    DT(((("rat",157),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("integer",[83,166]),("numeral",[3,6]),
         ("rat",[28,80,85,89,105,108,113,116,117]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116%120%48@@$0@@%50%116%118$2@$0@@%118$1@$0@@@%116$2@$1@@@|@|@|@"])
  fun op RAT_LES_LMUL_POS x = x
    val op RAT_LES_LMUL_POS =
    DT(((("rat",158),
        [("bool",[25,26,47,48,53,54,63,71,93,94,96]),("rat",[82,157]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116%120%48@@$0@@%50%116%118$0@$2@@%118$0@$1@@@%116$2@$1@@@|@|@|@"])
  fun op RAT_LES_RMUL_NEG x = x
    val op RAT_LES_RMUL_NEG =
    DT(((("rat",159),
        [("bool",[25,26,51,54,56,58,63]),("integer",[83,152,166,205,342]),
         ("numeral",[3,6]),
         ("rat",
         [28,80,81,84,85,89,91,96,100,103,113,115,116,117,
          147])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116$0@%120%48@@@%50%116%118$1@$0@@%118$2@$0@@@%116$2@$1@@@|@|@|@"])
  fun op RAT_LES_LMUL_NEG x = x
    val op RAT_LES_LMUL_NEG =
    DT(((("rat",160),
        [("bool",[25,26,47,48,53,54,63,71,93,94,96]),("rat",[82,159]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116$0@%120%48@@@%50%116%118$0@$1@@%118$0@$2@@@%116$2@$1@@@|@|@|@"])
  fun op RAT_AINV_LES x = x
    val op RAT_AINV_LES =
    DT(((("rat",161),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[99,154]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%50%116%108$1@@$0@@%116%108$0@@$1@@|@|@"])
  fun op RAT_LDIV_LES_POS x = x
    val op RAT_LDIV_LES_POS =
    DT(((("rat",162),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[80,82,85,89,97,120,158]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116%120%48@@$1@@%50%116%110$2@$1@@$0@@%116$2@%118$1@$0@@@@|@|@|@"])
  fun op RAT_LDIV_LES_NEG x = x
    val op RAT_LDIV_LES_NEG =
    DT(((("rat",163),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[80,82,85,90,97,120,159]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116$1@%120%48@@@%50%116%110$2@$1@@$0@@%116%118$1@$0@@$2@@@|@|@|@"])
  fun op RAT_RDIV_LES_POS x = x
    val op RAT_RDIV_LES_POS =
    DT(((("rat",164),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[80,82,85,89,97,120,157]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116%120%48@@$0@@%50%116$2@%110$1@$0@@@%116%118$2@$0@@$1@@@|@|@|@"])
  fun op RAT_RDIV_LES_NEG x = x
    val op RAT_RDIV_LES_NEG =
    DT(((("rat",165),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("rat",[80,82,85,89,97,120,159]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%42%28%42%29%57%116$0@%120%48@@@%50%116$2@%110$1@$0@@@%116$1@%118$2@$0@@@@|@|@|@"])
  fun op RAT_LES_SUB0 x = x
    val op RAT_LES_SUB0 =
    DT(((("rat",166),
        [("bool",[25,56,58,63]),
         ("rat",[79,83,84,88,96,152])]),["DISK_THM"]),
       [read"%42%27%42%28%50%116%122$1@$0@@%120%48@@@%116$1@$0@@|@|@"])
  fun op RAT_LES_0SUB x = x
    val op RAT_LES_0SUB =
    DT(((("rat",167),
        [("bool",[25,26,47,48,53,54,58,63,71,94]),("rat",[98,101,154,166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%116%120%48@@%122$1@$0@@@%116$0@$1@@|@|@"])
  fun op RAT_MINV_LES x = x
    val op RAT_MINV_LES =
    DT(((("rat",168),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("integer",[205]),("rat",[28,107,108,115,117,120]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%27%57%116%120%48@@$0@@%47%50%116%117$0@@%120%48@@@%116$0@%120%48@@@@%50%116%120%48@@%117$0@@@%116%120%48@@$0@@@@|@"])
  fun op RAT_MUL_SIGN_CASES x = x
    val op RAT_MUL_SIGN_CASES =
    DT(((("rat",169),
        [("bool",[25,51,52,54,56,58,63]),
         ("integer",[83,84,93,94,98,166,205,214,342]),("numeral",[3,6]),
         ("rat",[28,107,108,115,116,118])]),["DISK_THM"]),
       [read"%42%22%42%23%47%50%116%120%48@@%118$1@$0@@@%80%47%116%120%48@@$1@@%116%120%48@@$0@@@%47%116$1@%120%48@@@%116$0@%120%48@@@@@@%50%116%118$1@$0@@%120%48@@@%80%47%116%120%48@@$1@@%116$0@%120%48@@@@%47%116$1@%120%48@@@%116%120%48@@$0@@@@@|@|@"])
  fun op RAT_NO_ZERODIV x = x
    val op RAT_NO_ZERODIV =
    DT(((("rat",170),
        [("bool",[25,26,27,30,47,48,52,53,54,56,58,63,93,96]),
         ("frac",[16,21,22,29]),("intExtension",[1,4]),("integer",[159]),
         ("rat",[17,39,43,69,74,94,95]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%80%56$1@%120%48@@@%56$0@%120%48@@@@%56%118$1@$0@@%120%48@@@|@|@"])
  fun op RAT_NO_ZERODIV_NEG x = x
    val op RAT_NO_ZERODIV_NEG =
    DT(((("rat",171),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("rat",[170]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%125%56%118$1@$0@@%120%48@@@@%47%125%56$1@%120%48@@@@%125%56$0@%120%48@@@@@|@|@"])
  fun op RAT_NO_IDDIV x = x
    val op RAT_NO_IDDIV =
    DT(((("rat",172),
        [("bool",[25,26,27,30,47,48,52,53,54,56,58,63]),
         ("rat",[80,85,86,95,145]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%42%28%50%56%118$1@$0@@$0@@%80%56$1@%120%70%66%79@@@@@%56$0@%120%48@@@@|@|@"])
  fun op RAT_DENSE_THM x = x
    val op RAT_DENSE_THM =
    DT(((("rat",173),
        [("bool",[14,25,26,47,48,51,53,54,56,58,63,64,105,124]),
         ("frac",[6,11,12,21,22,23,47]),("intExtension",[1,15]),
         ("integer",[75,85,93,335]),("integerRing",[20,22]),
         ("numRing",[18]),("prelim",[23,24,28,33]),("quote",[20,23]),
         ("rat",[17,18,19,25,28,45,60]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%27%42%29%57%116$1@$0@@%62%28%47%116$2@$0@@%116$0@$1@@|@@|@|@"])
  fun op RAT_SAVE x = x
    val op RAT_SAVE =
    DT(((("rat",174),
        [("bool",
         [13,14,25,26,27,30,37,42,43,47,48,51,52,53,54,56,58,63,64,72,96,
          101]),("combin",[8,19]),("frac",[15,16,21,22,23]),
         ("int_arith",[3,9,10,34,61,62]),
         ("integer",
         [59,62,73,74,79,80,83,85,92,93,95,96,97,104,115,145,160,217,320,
          335,337]),("numeral",[5,7,8,16]),("rat",[0,17,18,39,40]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%27%60%5%61%9%56$2@%82%93$1@$0@@@|@|@|@"])
  fun op RAT_SAVE_MINV x = x
    val op RAT_SAVE_MINV =
    DT(((("rat",175),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("frac",[58,63]),("rat",[17,43,66,74]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%40%5%41%9%57%125%56%82%93$1@$0@@@%120%48@@@@%56%117%82%93$1@$0@@@@%82%93%100%74$1@@%96%102$0@@%102%70%66%79@@@@@@%71%103%65$1@@%102%70%66%79@@@@@@@@@|@|@"])
  fun op RAT_SAVE_TO_CONS x = x
    val op RAT_SAVE_TO_CONS =
    DT(((("rat",176),
        [("bool",
         [25,26,27,30,37,51,52,53,54,56,58,63,64,72,101,105,129,147]),
         ("frac",[15,22,23]),("intExtension",[0]),
         ("int_arith",[3,9,34,62]),
         ("integer",
         [59,62,74,80,83,84,87,92,93,94,95,96,98,145,160,166,253,320,335]),
         ("numeral",[5]),("rat",[0,32,40]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%40%5%41%9%56%82%93$1@$0@@@%109$1@%96%102$0@@%102%70%66%79@@@@@@|@|@"])
  fun op RAT_OF_NUM x = x
    val op RAT_OF_NUM =
    DT(((("rat",177),
        [("arithmetic",[14,24,25,37,59,71,173,180]),
         ("bool",[14,15,25,36,51,54,56,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("prim_rec",[42]),("rat",[33,84]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%36%18%47%56%120%48@@%105@@%41%19%56%120%75$0@@@%107%120$0@@%106@@|@@|@"])
  fun op RAT_SAVE_NUM x = x
    val op RAT_SAVE_NUM =
    DT(((("rat",178),
        [("arithmetic",[70]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("frac",[8,9,15,22,23,27]),("intExtension",[1]),
         ("int_arith",[34]),("integer",[79,83,84,162,168,335]),("num",[9]),
         ("rat",[20,21,41,67,177]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%41%19%56%120$0@@%82%93%102$0@@%48@@@|@"])
  fun op RAT_CONS_TO_NUM x = x
    val op RAT_CONS_TO_NUM =
    DT(((("rat",179),
        [("arithmetic",[214,215]),
         ("bool",
         [8,13,14,25,26,27,30,37,43,47,48,51,52,53,54,56,58,63,64,72,96,
          101,105,129,147]),("frac",[8,9,22,23,24,27]),
         ("intExtension",[0,1]),("int_arith",[3,9,34,54,61,62]),
         ("integer",
         [59,62,63,64,74,79,80,83,84,85,92,93,94,95,96,97,104,115,145,162,
          166,206,253,255,257,320,324,326,335,337,342]),("num",[7,9]),
         ("numeral",[0,3,5,6,7,8,15,16,17,21,34,35,40,41]),
         ("prim_rec",[6]),("rat",[21,32,37,41,65,67,98,100,177]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%19%47%56%109%102$0@@%102%70%66%79@@@@@%120$0@@@%56%109%101%102$0@@@%102%70%66%79@@@@@%108%120$0@@@@|@"])
  fun op RAT_0 x = x
    val op RAT_0 =
    DT(((("rat",180),
        [("arithmetic",[14,24,25,37,59,71,173,180]),
         ("bool",[15,25,36,54,56,63,104]),("combin",[19]),
         ("numeral",[3,8]),("prim_rec",[42]),("rat",[33]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%56%105@%120%48@@"])
  fun op RAT_1 x = x
    val op RAT_1 =
    DT(((("rat",181),
        [("arithmetic",[14,24,25,37,59,71,173,180]),
         ("bool",[15,25,36,54,56,58,63,104]),("combin",[19]),
         ("integer",[162,166,320]),("numeral",[3,8]),("prim_rec",[42]),
         ("rat",[33]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%56%106@%120%70%66%79@@@@"])
  fun op RAT_ADD_NUM_CALCULATE x = x
    val op RAT_ADD_NUM_CALCULATE =
    DT(((("rat",182),
        [("arithmetic",[22,25,26,38,46,58,62,71,93,112,173,176,180]),
         ("bool",
         [13,14,25,26,27,30,36,37,47,48,51,52,53,54,56,58,63,64,71,72,73,
          76,93,94,96,101,104,105,109,111,129]),("int_arith",[3,9,34]),
         ("integer",
         [59,62,79,80,83,85,92,93,95,96,104,115,162,166,167,320,337]),
         ("num",[9]),("numeral",[3,5,7,8,15,16]),
         ("rat",[79,81,83,84,87,98,100,142,177]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%47%41%19%41%17%56%107%120$1@@%120$0@@@%120%44$1@$0@@@|@|@@%47%41%19%41%17%56%107%108%120$1@@@%120$0@@@%68%49$1@$0@@%120%46$0@$1@@@%108%120%46$1@$0@@@@@|@|@@%47%41%19%41%17%56%107%120$1@@%108%120$0@@@@%68%49$0@$1@@%120%46$1@$0@@@%108%120%46$0@$1@@@@@|@|@@%41%19%41%17%56%107%108%120$1@@@%108%120$0@@@@%108%120%44$1@$0@@@@|@|@@@@"])
  fun op RAT_MUL_NUM_CALCULATE x = x
    val op RAT_MUL_NUM_CALCULATE =
    DT(((("rat",183),
        [("arithmetic",[22,25,26,67,69,71,73,74,75]),
         ("bool",
         [13,14,25,26,27,30,36,37,47,48,51,52,53,54,55,56,58,63,64,71,72,
          93,94,96,101]),("int_arith",[3,9,34]),
         ("integer",
         [59,62,79,80,83,85,92,93,95,96,104,115,162,166,167,320,337]),
         ("num",[9]),("numeral",[3,5,7,8,15,16,17,40,41]),
         ("rat",[79,81,83,84,85,86,91,92,94,95,99,102,103,142,177]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%47%41%19%41%17%56%118%120$1@@%120$0@@@%120%43$1@$0@@@|@|@@%47%41%19%41%17%56%118%108%120$1@@@%120$0@@@%108%120%43$1@$0@@@@|@|@@%47%41%19%41%17%56%118%120$1@@%108%120$0@@@@%108%120%43$1@$0@@@@|@|@@%41%19%41%17%56%118%108%120$1@@@%108%120$0@@@@%120%43$1@$0@@@|@|@@@@"])
  fun op RAT_EQ_NUM_CALCULATE x = x
    val op RAT_EQ_NUM_CALCULATE =
    DT(((("rat",184),
        [("arithmetic",[18,24,46,71,93,172,173,180]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,93,94,96,104,
          105,124]),("num",[7,9]),("numeral",[3,8]),("prim_rec",[1]),
         ("rat",
         [30,81,96,98,100,121,124,127,137,142,144,147,149,154,177,180,
          181]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%47%41%19%41%17%50%56%120$1@@%120$0@@@%55$1@$0@@|@|@@%47%41%19%41%17%50%56%120$1@@%108%120$0@@@@%47%55$1@%48@@%55$0@%48@@@|@|@@%47%41%19%41%17%50%56%108%120$1@@@%120$0@@@%47%55$1@%48@@%55$0@%48@@@|@|@@%41%19%41%17%50%56%108%120$1@@@%108%120$0@@@@%55$1@$0@@|@|@@@@"])
  end
  val _ = DB.bindl "rat"
  [("rat_equiv_def",rat_equiv_def,DB.Def),
   ("rat_TY_DEF",rat_TY_DEF,DB.Def),
   ("rat_bijections",rat_bijections,DB.Def),
   ("rep_rat_def",rep_rat_def,DB.Def), ("abs_rat_def",abs_rat_def,DB.Def),
   ("rat_nmr_def",rat_nmr_def,DB.Def), ("rat_dnm_def",rat_dnm_def,DB.Def),
   ("rat_sgn_def",rat_sgn_def,DB.Def), ("rat_0_def",rat_0_def,DB.Def),
   ("rat_1_def",rat_1_def,DB.Def), ("rat_ainv_def",rat_ainv_def,DB.Def),
   ("rat_minv_def",rat_minv_def,DB.Def),
   ("rat_add_def",rat_add_def,DB.Def), ("rat_sub_def",rat_sub_def,DB.Def),
   ("rat_mul_def",rat_mul_def,DB.Def), ("rat_div_def",rat_div_def,DB.Def),
   ("rat_les_def",rat_les_def,DB.Def), ("rat_gre_def",rat_gre_def,DB.Def),
   ("rat_leq_def",rat_leq_def,DB.Def), ("rat_geq_def",rat_geq_def,DB.Def),
   ("rat_cons_def",rat_cons_def,DB.Def),
   ("rat_of_num_primitive_def",rat_of_num_primitive_def,DB.Def),
   ("RAT_EQUIV_REF",RAT_EQUIV_REF,DB.Thm),
   ("RAT_EQUIV_SYM",RAT_EQUIV_SYM,DB.Thm),
   ("RAT_EQUIV_NMR_Z_IFF",RAT_EQUIV_NMR_Z_IFF,DB.Thm),
   ("RAT_EQUIV_NMR_GTZ_IFF",RAT_EQUIV_NMR_GTZ_IFF,DB.Thm),
   ("RAT_EQUIV_NMR_LTZ_IFF",RAT_EQUIV_NMR_LTZ_IFF,DB.Thm),
   ("RAT_NMR_Z_IFF_EQUIV",RAT_NMR_Z_IFF_EQUIV,DB.Thm),
   ("RAT_EQUIV_TRANS",RAT_EQUIV_TRANS,DB.Thm),
   ("RAT_EQUIV",RAT_EQUIV,DB.Thm), ("RAT_EQUIV_ALT",RAT_EQUIV_ALT,DB.Thm),
   ("rat_ABS_REP_CLASS",rat_ABS_REP_CLASS,DB.Thm),
   ("rat_QUOTIENT",rat_QUOTIENT,DB.Thm), ("rat_def",rat_def,DB.Thm),
   ("rat_of_num_ind",rat_of_num_ind,DB.Thm),
   ("rat_of_num_def",rat_of_num_def,DB.Thm),
   ("rat_of_num_def_compute",rat_of_num_def_compute,DB.Thm),
   ("rat_0",rat_0,DB.Thm), ("rat_1",rat_1,DB.Thm), ("RAT",RAT,DB.Thm),
   ("RAT_ABS_EQUIV",RAT_ABS_EQUIV,DB.Thm), ("RAT_EQ",RAT_EQ,DB.Thm),
   ("RAT_EQ_ALT",RAT_EQ_ALT,DB.Thm),
   ("RAT_NMREQ0_CONG",RAT_NMREQ0_CONG,DB.Thm),
   ("RAT_NMRLT0_CONG",RAT_NMRLT0_CONG,DB.Thm),
   ("RAT_NMRGT0_CONG",RAT_NMRGT0_CONG,DB.Thm),
   ("RAT_SGN_CONG",RAT_SGN_CONG,DB.Thm),
   ("RAT_AINV_CONG",RAT_AINV_CONG,DB.Thm),
   ("FRAC_MINV_EQUIV",FRAC_MINV_EQUIV,DB.Thm),
   ("RAT_MINV_CONG",RAT_MINV_CONG,DB.Thm),
   ("FRAC_ADD_EQUIV1",FRAC_ADD_EQUIV1,DB.Thm),
   ("RAT_ADD_CONG1",RAT_ADD_CONG1,DB.Thm),
   ("RAT_ADD_CONG2",RAT_ADD_CONG2,DB.Thm),
   ("RAT_ADD_CONG",RAT_ADD_CONG,DB.Thm),
   ("FRAC_MUL_EQUIV1",FRAC_MUL_EQUIV1,DB.Thm),
   ("RAT_MUL_CONG1",RAT_MUL_CONG1,DB.Thm),
   ("RAT_MUL_CONG2",RAT_MUL_CONG2,DB.Thm),
   ("RAT_MUL_CONG",RAT_MUL_CONG,DB.Thm),
   ("RAT_SUB_CONG1",RAT_SUB_CONG1,DB.Thm),
   ("RAT_SUB_CONG2",RAT_SUB_CONG2,DB.Thm),
   ("RAT_SUB_CONG",RAT_SUB_CONG,DB.Thm),
   ("RAT_DIV_CONG1",RAT_DIV_CONG1,DB.Thm),
   ("RAT_DIV_CONG2",RAT_DIV_CONG2,DB.Thm),
   ("RAT_DIV_CONG",RAT_DIV_CONG,DB.Thm),
   ("RAT_NMRDNM_EQ",RAT_NMRDNM_EQ,DB.Thm),
   ("RAT_AINV_CALCULATE",RAT_AINV_CALCULATE,DB.Thm),
   ("RAT_MINV_CALCULATE",RAT_MINV_CALCULATE,DB.Thm),
   ("RAT_ADD_CALCULATE",RAT_ADD_CALCULATE,DB.Thm),
   ("RAT_SUB_CALCULATE",RAT_SUB_CALCULATE,DB.Thm),
   ("RAT_MUL_CALCULATE",RAT_MUL_CALCULATE,DB.Thm),
   ("RAT_DIV_CALCULATE",RAT_DIV_CALCULATE,DB.Thm),
   ("RAT_EQ_CALCULATE",RAT_EQ_CALCULATE,DB.Thm),
   ("RAT_LES_CALCULATE",RAT_LES_CALCULATE,DB.Thm),
   ("RAT_OF_NUM_CALCULATE",RAT_OF_NUM_CALCULATE,DB.Thm),
   ("RAT_EQ0_NMR",RAT_EQ0_NMR,DB.Thm),
   ("RAT_0LES_NMR",RAT_0LES_NMR,DB.Thm),
   ("RAT_LES0_NMR",RAT_LES0_NMR,DB.Thm),
   ("RAT_0LEQ_NMR",RAT_0LEQ_NMR,DB.Thm),
   ("RAT_LEQ0_NMR",RAT_LEQ0_NMR,DB.Thm),
   ("RAT_ADD_ASSOC",RAT_ADD_ASSOC,DB.Thm),
   ("RAT_MUL_ASSOC",RAT_MUL_ASSOC,DB.Thm),
   ("RAT_ADD_COMM",RAT_ADD_COMM,DB.Thm),
   ("RAT_MUL_COMM",RAT_MUL_COMM,DB.Thm),
   ("RAT_ADD_RID",RAT_ADD_RID,DB.Thm), ("RAT_ADD_LID",RAT_ADD_LID,DB.Thm),
   ("RAT_MUL_RID",RAT_MUL_RID,DB.Thm), ("RAT_MUL_LID",RAT_MUL_LID,DB.Thm),
   ("RAT_ADD_RINV",RAT_ADD_RINV,DB.Thm),
   ("RAT_ADD_LINV",RAT_ADD_LINV,DB.Thm),
   ("RAT_MUL_RINV",RAT_MUL_RINV,DB.Thm),
   ("RAT_MUL_LINV",RAT_MUL_LINV,DB.Thm),
   ("RAT_RDISTRIB",RAT_RDISTRIB,DB.Thm),
   ("RAT_LDISTRIB",RAT_LDISTRIB,DB.Thm),
   ("RAT_1_NOT_0",RAT_1_NOT_0,DB.Thm),
   ("RAT_MUL_LZERO",RAT_MUL_LZERO,DB.Thm),
   ("RAT_MUL_RZERO",RAT_MUL_RZERO,DB.Thm),
   ("RAT_SUB_ADDAINV",RAT_SUB_ADDAINV,DB.Thm),
   ("RAT_DIV_MULMINV",RAT_DIV_MULMINV,DB.Thm),
   ("RAT_AINV_0",RAT_AINV_0,DB.Thm),
   ("RAT_AINV_AINV",RAT_AINV_AINV,DB.Thm),
   ("RAT_AINV_ADD",RAT_AINV_ADD,DB.Thm),
   ("RAT_AINV_SUB",RAT_AINV_SUB,DB.Thm),
   ("RAT_AINV_RMUL",RAT_AINV_RMUL,DB.Thm),
   ("RAT_AINV_LMUL",RAT_AINV_LMUL,DB.Thm),
   ("RAT_AINV_MINV",RAT_AINV_MINV,DB.Thm),
   ("RAT_SUB_RDISTRIB",RAT_SUB_RDISTRIB,DB.Thm),
   ("RAT_SUB_LDISTRIB",RAT_SUB_LDISTRIB,DB.Thm),
   ("RAT_SUB_LID",RAT_SUB_LID,DB.Thm), ("RAT_SUB_RID",RAT_SUB_RID,DB.Thm),
   ("RAT_SUB_ID",RAT_SUB_ID,DB.Thm), ("RAT_EQ_SUB0",RAT_EQ_SUB0,DB.Thm),
   ("RAT_EQ_0SUB",RAT_EQ_0SUB,DB.Thm),
   ("RAT_SGN_CALCULATE",RAT_SGN_CALCULATE,DB.Thm),
   ("RAT_SGN_CLAUSES",RAT_SGN_CLAUSES,DB.Thm),
   ("RAT_SGN_0",RAT_SGN_0,DB.Thm), ("RAT_SGN_AINV",RAT_SGN_AINV,DB.Thm),
   ("RAT_SGN_MUL",RAT_SGN_MUL,DB.Thm),
   ("RAT_SGN_MINV",RAT_SGN_MINV,DB.Thm),
   ("RAT_SGN_TOTAL",RAT_SGN_TOTAL,DB.Thm),
   ("RAT_SGN_COMPLEMENT",RAT_SGN_COMPLEMENT,DB.Thm),
   ("RAT_LES_REF",RAT_LES_REF,DB.Thm),
   ("RAT_LES_ANTISYM",RAT_LES_ANTISYM,DB.Thm),
   ("RAT_LES_TRANS",RAT_LES_TRANS,DB.Thm),
   ("RAT_LES_TOTAL",RAT_LES_TOTAL,DB.Thm),
   ("RAT_LEQ_REF",RAT_LEQ_REF,DB.Thm),
   ("RAT_LEQ_ANTISYM",RAT_LEQ_ANTISYM,DB.Thm),
   ("RAT_LEQ_TRANS",RAT_LEQ_TRANS,DB.Thm),
   ("RAT_LES_01",RAT_LES_01,DB.Thm),
   ("RAT_LES_IMP_LEQ",RAT_LES_IMP_LEQ,DB.Thm),
   ("RAT_LES_IMP_NEQ",RAT_LES_IMP_NEQ,DB.Thm),
   ("RAT_LEQ_LES",RAT_LEQ_LES,DB.Thm), ("RAT_LES_LEQ",RAT_LES_LEQ,DB.Thm),
   ("RAT_LES_LEQ2",RAT_LES_LEQ2,DB.Thm),
   ("RAT_LES_LEQ_TRANS",RAT_LES_LEQ_TRANS,DB.Thm),
   ("RAT_LEQ_LES_TRANS",RAT_LEQ_LES_TRANS,DB.Thm),
   ("RAT_0LES_0LES_ADD",RAT_0LES_0LES_ADD,DB.Thm),
   ("RAT_LES0_LES0_ADD",RAT_LES0_LES0_ADD,DB.Thm),
   ("RAT_0LES_0LEQ_ADD",RAT_0LES_0LEQ_ADD,DB.Thm),
   ("RAT_LES0_LEQ0_ADD",RAT_LES0_LEQ0_ADD,DB.Thm),
   ("RAT_AINV_ONE_ONE",RAT_AINV_ONE_ONE,DB.Thm),
   ("RAT_ADD_ONE_ONE",RAT_ADD_ONE_ONE,DB.Thm),
   ("RAT_MUL_ONE_ONE",RAT_MUL_ONE_ONE,DB.Thm),
   ("RAT_EQ_AINV",RAT_EQ_AINV,DB.Thm), ("RAT_EQ_LADD",RAT_EQ_LADD,DB.Thm),
   ("RAT_EQ_RADD",RAT_EQ_RADD,DB.Thm), ("RAT_EQ_RMUL",RAT_EQ_RMUL,DB.Thm),
   ("RAT_EQ_LMUL",RAT_EQ_LMUL,DB.Thm), ("RAT_AINV_EQ",RAT_AINV_EQ,DB.Thm),
   ("RAT_LSUB_EQ",RAT_LSUB_EQ,DB.Thm), ("RAT_RSUB_EQ",RAT_RSUB_EQ,DB.Thm),
   ("RAT_LDIV_EQ",RAT_LDIV_EQ,DB.Thm), ("RAT_RDIV_EQ",RAT_RDIV_EQ,DB.Thm),
   ("RAT_LES_RADD",RAT_LES_RADD,DB.Thm),
   ("RAT_LES_LADD",RAT_LES_LADD,DB.Thm),
   ("RAT_LES_AINV",RAT_LES_AINV,DB.Thm),
   ("RAT_LSUB_LES",RAT_LSUB_LES,DB.Thm),
   ("RAT_RSUB_LES",RAT_RSUB_LES,DB.Thm),
   ("RAT_LES_RMUL_POS",RAT_LES_RMUL_POS,DB.Thm),
   ("RAT_LES_LMUL_POS",RAT_LES_LMUL_POS,DB.Thm),
   ("RAT_LES_RMUL_NEG",RAT_LES_RMUL_NEG,DB.Thm),
   ("RAT_LES_LMUL_NEG",RAT_LES_LMUL_NEG,DB.Thm),
   ("RAT_AINV_LES",RAT_AINV_LES,DB.Thm),
   ("RAT_LDIV_LES_POS",RAT_LDIV_LES_POS,DB.Thm),
   ("RAT_LDIV_LES_NEG",RAT_LDIV_LES_NEG,DB.Thm),
   ("RAT_RDIV_LES_POS",RAT_RDIV_LES_POS,DB.Thm),
   ("RAT_RDIV_LES_NEG",RAT_RDIV_LES_NEG,DB.Thm),
   ("RAT_LES_SUB0",RAT_LES_SUB0,DB.Thm),
   ("RAT_LES_0SUB",RAT_LES_0SUB,DB.Thm),
   ("RAT_MINV_LES",RAT_MINV_LES,DB.Thm),
   ("RAT_MUL_SIGN_CASES",RAT_MUL_SIGN_CASES,DB.Thm),
   ("RAT_NO_ZERODIV",RAT_NO_ZERODIV,DB.Thm),
   ("RAT_NO_ZERODIV_NEG",RAT_NO_ZERODIV_NEG,DB.Thm),
   ("RAT_NO_IDDIV",RAT_NO_IDDIV,DB.Thm),
   ("RAT_DENSE_THM",RAT_DENSE_THM,DB.Thm), ("RAT_SAVE",RAT_SAVE,DB.Thm),
   ("RAT_SAVE_MINV",RAT_SAVE_MINV,DB.Thm),
   ("RAT_SAVE_TO_CONS",RAT_SAVE_TO_CONS,DB.Thm),
   ("RAT_OF_NUM",RAT_OF_NUM,DB.Thm), ("RAT_SAVE_NUM",RAT_SAVE_NUM,DB.Thm),
   ("RAT_CONS_TO_NUM",RAT_CONS_TO_NUM,DB.Thm), ("RAT_0",RAT_0,DB.Thm),
   ("RAT_1",RAT_1,DB.Thm),
   ("RAT_ADD_NUM_CALCULATE",RAT_ADD_NUM_CALCULATE,DB.Thm),
   ("RAT_MUL_NUM_CALCULATE",RAT_MUL_NUM_CALCULATE,DB.Thm),
   ("RAT_EQ_NUM_CALCULATE",RAT_EQ_NUM_CALCULATE,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("fracTheory.frac_grammars",
                          fracTheory.frac_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_equiv", (Term.prim_mk_const { Name = "rat_equiv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_equiv", (Term.prim_mk_const { Name = "rat_equiv", Thy = "rat"}))
  val _ = update_grms temp_add_type "rat"
  val _ = update_grms temp_add_type "rat"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rep_rat_CLASS", (Term.prim_mk_const { Name = "rep_rat_CLASS", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs_rat_CLASS", (Term.prim_mk_const { Name = "abs_rat_CLASS", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rep_rat", (Term.prim_mk_const { Name = "rep_rat", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rep_rat", (Term.prim_mk_const { Name = "rep_rat", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs_rat", (Term.prim_mk_const { Name = "abs_rat", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs_rat", (Term.prim_mk_const { Name = "abs_rat", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_nmr", (Term.prim_mk_const { Name = "rat_nmr", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_nmr", (Term.prim_mk_const { Name = "rat_nmr", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_dnm", (Term.prim_mk_const { Name = "rat_dnm", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_dnm", (Term.prim_mk_const { Name = "rat_dnm", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_sgn", (Term.prim_mk_const { Name = "rat_sgn", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_sgn", (Term.prim_mk_const { Name = "rat_sgn", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_0", (Term.prim_mk_const { Name = "rat_0", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_0", (Term.prim_mk_const { Name = "rat_0", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_1", (Term.prim_mk_const { Name = "rat_1", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_1", (Term.prim_mk_const { Name = "rat_1", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_ainv", (Term.prim_mk_const { Name = "rat_ainv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_ainv", (Term.prim_mk_const { Name = "rat_ainv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_minv", (Term.prim_mk_const { Name = "rat_minv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_minv", (Term.prim_mk_const { Name = "rat_minv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_add", (Term.prim_mk_const { Name = "rat_add", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_add", (Term.prim_mk_const { Name = "rat_add", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_sub", (Term.prim_mk_const { Name = "rat_sub", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_sub", (Term.prim_mk_const { Name = "rat_sub", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_mul", (Term.prim_mk_const { Name = "rat_mul", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_mul", (Term.prim_mk_const { Name = "rat_mul", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_div", (Term.prim_mk_const { Name = "rat_div", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_div", (Term.prim_mk_const { Name = "rat_div", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_les", (Term.prim_mk_const { Name = "rat_les", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_les", (Term.prim_mk_const { Name = "rat_les", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_gre", (Term.prim_mk_const { Name = "rat_gre", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_gre", (Term.prim_mk_const { Name = "rat_gre", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_leq", (Term.prim_mk_const { Name = "rat_leq", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_leq", (Term.prim_mk_const { Name = "rat_leq", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_geq", (Term.prim_mk_const { Name = "rat_geq", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_geq", (Term.prim_mk_const { Name = "rat_geq", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_cons", (Term.prim_mk_const { Name = "rat_cons", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_cons", (Term.prim_mk_const { Name = "rat_cons", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_of_num", (Term.prim_mk_const { Name = "rat_of_num", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rat_of_num", (Term.prim_mk_const { Name = "rat_of_num", Thy = "rat"}))
  val _ = update_grms temp_add_numeral_form (#"q", SOME "rat_of_num")
  val _ = update_grms
       (UTOFF (temp_set_fixity "//"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "rat_add", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "rat_sub", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "rat_mul", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/decfrac/", (Term.prim_mk_const { Name = "rat_div", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "rat_div", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "rat_les", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "rat_leq", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "rat_gre", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "rat_geq", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "rat_ainv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numeric_negate", (Term.prim_mk_const { Name = "rat_ainv", Thy = "rat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("//", (Term.prim_mk_const { Name = "rat_cons", Thy = "rat"}))
  val _ = update_grms
       temp_add_user_printer
       ("(DecimalFractionPP.fraction{Thy=\"rat\",Division=\"rat_div\",fromNum=\"rat_of_num\"})", (#2 (parse_from_grammars min_grammars)[QUOTE "rat$rat_div (rat$rat_of_num (arithmetic$NUMERAL (x :(num$num)))) (rat$rat_of_num (arithmetic$NUMERAL (y :(num$num))))"]), (DecimalFractionPP.fraction{Thy="rat",Division="rat_div",fromNum="rat_of_num"}))
  val rat_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "rat",
    thydataty = "compute",
    data =
        "rat.rat_equiv_def rat.rat_geq_def rat.rat_of_num_def_compute rat.rat_of_num_def rat.rat_cons_def rat.rat_gre_def rat.rat_leq_def rat.rat_les_def rat.rat_minv_def rat.rat_nmr_def rat.rat_ainv_def rat.rat_1_def rat.rat_0_def rat.rat_sgn_def rat.rat_dnm_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "rat"
end
