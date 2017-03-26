structure boolTheory :> boolTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading boolTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype

  val _ = Theory.link_parents
          ("bool",
          Arbnum.fromString "1488585882",
          Arbnum.fromString "632112")
          [("min",Arbnum.fromString "0",Arbnum.fromString "0")];
  val _ = Theory.incorporate_types "bool" [("itself", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "itself"),
   ID("min", "ind"), ID("bool", "!"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"), ID("min", "@"),
   ID("bool", "ARB"), ID("bool", "BOUNDED"), ID("bool", "COND"),
   ID("bool", "DATATYPE"), ID("bool", "F"), ID("bool", "IN"),
   ID("bool", "LET"), ID("bool", "ONE_ONE"), ID("bool", "ONTO"),
   ID("bool", "RES_ABSTRACT"), ID("bool", "RES_EXISTS"),
   ID("bool", "RES_EXISTS_UNIQUE"), ID("bool", "RES_FORALL"),
   ID("bool", "RES_SELECT"), ID("bool", "T"),
   ID("bool", "TYPE_DEFINITION"), ID("bool", "\\/"),
   ID("bool", "itself_case"), ID("bool", "literal_case"),
   ID("bool", "the_value"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYV "'a", TYOP [2, 2], TYV "'b",
   TYOP [0, 2, 4], TYOP [0, 5, 5], TYOP [0, 4, 4], TYOP [0, 3, 7],
   TYOP [0, 5, 6], TYOP [0, 4, 5], TYOP [0, 2, 10], TYOP [0, 5, 4],
   TYOP [0, 2, 12], TYOP [0, 0, 1], TYOP [0, 4, 2], TYOP [0, 15, 0],
   TYOP [0, 2, 0], TYOP [0, 17, 16], TYOP [0, 17, 2], TYOP [0, 17, 19],
   TYOP [0, 17, 0], TYOP [0, 17, 21], TYOP [0, 17, 6], TYOP [0, 5, 0],
   TYOP [0, 2, 21], TYOP [0, 2, 2], TYOP [0, 2, 26], TYOP [0, 0, 27],
   TYV "'c", TYOP [0, 4, 29], TYOP [0, 2, 30], TYOP [0, 4, 0],
   TYOP [0, 2, 32], TYOP [0, 1, 0], TYOP [0, 3, 0], TYOP [3],
   TYOP [0, 36, 36], TYOP [2, 4], TYOP [0, 38, 2], TYOP [0, 0, 2],
   TYOP [0, 3, 2], TYOP [0, 32, 0], TYOP [0, 24, 0], TYOP [0, 21, 0],
   TYOP [0, 27, 0], TYOP [0, 45, 0], TYOP [0, 33, 0], TYOP [0, 47, 0],
   TYOP [0, 16, 0], TYOP [0, 34, 0], TYOP [0, 50, 0], TYOP [0, 35, 0],
   TYOP [0, 52, 0], TYOP [0, 2, 17], TYOP [0, 4, 32], TYOP [0, 29, 0],
   TYOP [0, 29, 56], TYOP [0, 5, 24], TYOP [0, 25, 0], TYOP [0, 25, 59],
   TYOP [0, 1, 34], TYOP [0, 28, 0], TYOP [0, 28, 62], TYOP [0, 14, 0],
   TYOP [0, 14, 64], TYOP [0, 24, 43], TYOP [0, 6, 0], TYOP [0, 6, 67],
   TYOP [0, 21, 44], TYOP [0, 20, 0], TYOP [0, 20, 70], TYOP [0, 22, 0],
   TYOP [0, 22, 72], TYOP [0, 18, 0], TYOP [0, 18, 74], TYOP [0, 3, 35],
   TYOP [0, 40, 0], TYOP [0, 77, 0], TYOP [0, 37, 0], TYOP [0, 79, 0],
   TYOP [0, 41, 0], TYOP [0, 81, 0], TYOP [0, 39, 0], TYOP [0, 83, 0],
   TYOP [0, 4, 7], TYOP [0, 0, 85], TYOP [0, 0, 14], TYOP [0, 0, 9],
   TYOP [0, 2, 29], TYOP [0, 89, 89], TYOP [0, 17, 17], TYOP [0, 31, 31],
   TYOP [0, 17, 81]]
  end
  val _ = Theory.incorporate_consts "bool" tyvector
     [("~", 1), ("the_value", 3), ("literal_case", 6), ("itself_case", 8),
      ("case_split__magic", 9), ("case_arrow__magic", 11),
      ("case__magic", 13), ("\\/", 14), ("TYPE_DEFINITION", 18), ("T", 0),
      ("RES_SELECT", 20), ("RES_FORALL", 22), ("RES_EXISTS_UNIQUE", 22),
      ("RES_EXISTS", 22), ("RES_ABSTRACT", 23), ("ONTO", 24),
      ("ONE_ONE", 24), ("LET", 6), ("IN", 25), ("F", 0), ("DATATYPE", 17),
      ("COND", 28), ("BOUNDED", 1), ("ARB", 2), ("?!", 21), ("?", 21),
      ("/\\", 14), ("!", 21)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 0), TMV("B", 0), TMV("C", 0), TMV("M", 2), TMV("M", 5),
   TMV("N", 2), TMV("N", 5), TMV("N", 31), TMV("P", 0), TMV("P", 17),
   TMV("P", 33), TMV("P", 32), TMV("P", 1), TMV("P", 34), TMV("P", 35),
   TMV("P'", 0), TMV("Q", 0), TMV("Q", 17), TMV("Q'", 0), TMV("R", 0),
   TMV("a", 2), TMV("a", 4), TMV("abs", 5), TMV("b", 4), TMV("b", 0),
   TMV("bool", 14), TMV("e", 2), TMV("f", 5), TMV("f", 17), TMV("f", 27),
   TMV("f", 1), TMV("f", 37), TMV("f", 39), TMV("fn", 40), TMV("g", 5),
   TMV("g", 17), TMV("i", 3), TMV("m", 5), TMV("m", 17), TMV("m1", 5),
   TMV("m2", 5), TMV("p", 17), TMV("r", 2), TMV("rep", 15), TMV("rep", 41),
   TMV("t", 2), TMV("t", 4), TMV("t", 0), TMV("t", 5), TMV("t1", 2),
   TMV("t1", 0), TMV("t2", 2), TMV("t2", 4), TMV("t2", 0), TMV("t3", 0),
   TMV("u", 4), TMV("v", 2), TMV("v", 0), TMV("w", 0), TMV("x", 2),
   TMV("x", 4), TMV("x", 0), TMV("x'", 2), TMV("x'", 4), TMV("x'", 0),
   TMV("x''", 4), TMV("x1", 2), TMV("x2", 2), TMV("y", 2), TMV("y", 4),
   TMV("y", 0), TMV("y'", 2), TMV("y'", 0), TMV("z", 2), TMV("z", 0),
   TMC(4, 21), TMC(4, 42), TMC(4, 34), TMC(4, 43), TMC(4, 44), TMC(4, 46),
   TMC(4, 48), TMC(4, 49), TMC(4, 50), TMC(4, 51), TMC(4, 53), TMC(4, 52),
   TMC(5, 14), TMC(6, 54), TMC(6, 55), TMC(6, 57), TMC(6, 14), TMC(6, 58),
   TMC(6, 22), TMC(6, 60), TMC(6, 61), TMC(6, 63), TMC(6, 65), TMC(6, 66),
   TMC(6, 68), TMC(6, 69), TMC(6, 71), TMC(6, 73), TMC(6, 75), TMC(6, 76),
   TMC(7, 14), TMC(8, 21), TMC(8, 42), TMC(8, 43), TMC(8, 49), TMC(8, 78),
   TMC(8, 80), TMC(8, 82), TMC(8, 84), TMC(9, 21), TMC(10, 19), TMC(11, 2),
   TMC(12, 1), TMC(13, 28), TMC(13, 86), TMC(13, 87), TMC(13, 88),
   TMC(14, 17), TMC(14, 1), TMC(15, 0), TMC(16, 25), TMC(17, 6),
   TMC(17, 90), TMC(17, 91), TMC(17, 92), TMC(18, 24), TMC(18, 79),
   TMC(19, 24), TMC(19, 79), TMC(20, 23), TMC(21, 22), TMC(22, 22),
   TMC(23, 22), TMC(24, 20), TMC(25, 0), TMC(26, 18), TMC(26, 93),
   TMC(27, 14), TMC(28, 8), TMC(29, 6), TMC(29, 90), TMC(29, 91),
   TMC(29, 92), TMC(30, 3), TMC(30, 38), TMC(31, 1)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op BOOL_CASES_AX x = x
    val op BOOL_CASES_AX =
    DT(((("bool",13),[]),[]), [read"%77%47%142%91$0@%139@@%91$0@%124@@|@"])
  fun op ETA_AX x = x
    val op ETA_AX =
    DT(((("bool",14),[]),[]), [read"%78%48%92%59$1$0@|@$0@|@"])
  fun op SELECT_AX x = x
    val op SELECT_AX =
    DT(((("bool",15),[]),[]), [read"%79%9%75%59%105$1$0@@$1%115$1@@@|@|@"])
  fun op INFINITY_AX x = x
    val op INFINITY_AX =
    DT(((("bool",16),[]),[]), [read"%111%31%87%131$0@@%150%133$0@@@|@"])
  fun op T_DEF x = x
    val op T_DEF =
    DT(((("bool",0),[]),[]), [read"%91%139@%95%61$0|@%61$0|@@"])
  fun op FORALL_DEF x = x
    val op FORALL_DEF =
    DT(((("bool",1),[]),[]), [read"%100%75@%9%93$0@%59%139|@|@"])
  fun op EXISTS_DEF x = x
    val op EXISTS_DEF =
    DT(((("bool",2),[]),[]), [read"%100%106@%9$0%115$0@@|@"])
  fun op AND_DEF x = x
    val op AND_DEF =
    DT(((("bool",3),[]),[]),
       [read"%97%87@%50%53%77%47%105%105$2@%105$1@$0@@@$0@|@||@"])
  fun op OR_DEF x = x
    val op OR_DEF =
    DT(((("bool",4),[]),[]),
       [read"%97%142@%50%53%77%47%105%105$2@$0@@%105%105$1@$0@@$0@@|@||@"])
  fun op F_DEF x = x
    val op F_DEF = DT(((("bool",5),[]),[]), [read"%91%124@%77%47$0|@@"])
  fun op NOT_DEF x = x
    val op NOT_DEF =
    DT(((("bool",6),[]),[]), [read"%95%150@%47%105$0@%124@|@"])
  fun op EXISTS_UNIQUE_DEF x = x
    val op EXISTS_UNIQUE_DEF =
    DT(((("bool",7),[]),[]),
       [read"%100%114@%9%87%106$0@@%75%59%75%68%105%87$2$1@@$2$0@@@%88$1@$0@@|@|@@|@"])
  fun op LET_DEF x = x
    val op LET_DEF =
    DT(((("bool",8),[]),[]), [read"%99%126@%27%59$1$0@||@"])
  fun op COND_DEF x = x
    val op COND_DEF =
    DT(((("bool",9),[]),[]),
       [read"%96%118@%47%49%51%115%59%87%105%91$3@%139@@%88$0@$2@@@%105%91$3@%124@@%88$0@$1@@@|@|||@"])
  fun op ONE_ONE_DEF x = x
    val op ONE_ONE_DEF =
    DT(((("bool",10),[]),[]),
       [read"%98%130@%27%75%66%75%67%105%89$2$1@@$2$0@@@%88$1@$0@@|@|@|@"])
  fun op ONTO_DEF x = x
    val op ONTO_DEF =
    DT(((("bool",11),[]),[]),
       [read"%98%132@%27%76%69%106%59%89$1@$2$0@@|@|@|@"])
  fun op TYPE_DEFINITION x = x
    val op TYPE_DEFINITION =
    DT(((("bool",12),[]),[]),
       [read"%103%140@%9%43%87%76%63%76%65%105%88$2$1@@$2$0@@@%89$1@$0@@|@|@@%75%59%91$2$0@@%107%63%88$1@$2$0@@|@@|@@||@"])
  fun op literal_case_DEF x = x
    val op literal_case_DEF =
    DT(((("bool",17),[]),[]), [read"%99%144@%27%59$1$0@||@"])
  fun op IN_DEF x = x
    val op IN_DEF =
    DT(((("bool",18),[]),[]), [read"%94%125@%59%28$0$1@||@"])
  fun op RES_FORALL_DEF x = x
    val op RES_FORALL_DEF =
    DT(((("bool",19),[]),[]),
       [read"%102%137@%41%38%75%59%105%125$0@$2@@$1$0@@|@||@"])
  fun op RES_EXISTS_DEF x = x
    val op RES_EXISTS_DEF =
    DT(((("bool",20),[]),[]),
       [read"%102%135@%41%38%106%59%87%125$0@$2@@$1$0@@|@||@"])
  fun op RES_EXISTS_UNIQUE_DEF x = x
    val op RES_EXISTS_UNIQUE_DEF =
    DT(((("bool",21),[]),[]),
       [read"%102%136@%41%38%87%135$1@%59$1$0@|@@%137$1@%59%137$2@%68%105%87$2$1@@$2$0@@@%88$1@$0@@|@|@@||@"])
  fun op RES_SELECT_DEF x = x
    val op RES_SELECT_DEF =
    DT(((("bool",22),[]),[]),
       [read"%101%138@%41%38%115%59%87%125$0@$2@@$1$0@@|@||@"])
  fun op BOUNDED_DEF x = x
    val op BOUNDED_DEF =
    DT(((("bool",23),[]),[]), [read"%95%117@%57%139|@"])
  fun op DATATYPE_TAG_DEF x = x
    val op DATATYPE_TAG_DEF =
    DT(((("bool",24),[]),[]), [read"%93%122@%59%139|@"])
  fun op RES_ABSTRACT_DEF x = x
    val op RES_ABSTRACT_DEF =
    DT(((("bool",155),[("bool",[0,4,5,6,9,13,14,15,26,27,29])]),[]),
       [read"%87%79%41%78%37%75%59%105%125$0@$2@@%89%134$2@$1@$0@@$1$0@@@|@|@|@@%79%41%78%39%78%40%105%75%59%105%125$0@$3@@%89$2$0@@$1$0@@@|@@%92%134$2@$1@@%134$2@$0@@@|@|@|@@"])
  fun op itself_TY_DEF x = x
    val op itself_TY_DEF =
    DT(((("bool",173),[("bool",[26,140])]),[]),
       [read"%112%44%141%88%116@@$0@|@"])
  fun op itself_case_thm x = x
    val op itself_case_thm =
    DT(((("bool",177),[]),[]), [read"%76%23%89%143%148@$0@@$0@|@"])
  fun op TRUTH x = x
    val op TRUTH = DT(((("bool",25),[("bool",[0])]),[]), [read"%139"])
  fun op IMP_ANTISYM_AX x = x
    val op IMP_ANTISYM_AX =
    DT(((("bool",26),[("bool",[0,4,5,13])]),[]),
       [read"%77%50%77%53%105%105$1@$0@@%105%105$0@$1@@%91$1@$0@@@|@|@"])
  fun op FALSITY x = x
    val op FALSITY =
    DT(((("bool",27),[("bool",[5])]),[]), [read"%77%47%105%124@$0@|@"])
  fun op ETA_THM x = x
    val op ETA_THM =
    DT(((("bool",28),[("bool",[14])]),[]), [read"%78%4%92%59$1$0@|@$0@|@"])
  fun op EXCLUDED_MIDDLE x = x
    val op EXCLUDED_MIDDLE =
    DT(((("bool",30),[("bool",[29])]),[]), [read"%77%47%142$0@%150$0@@|@"])
  fun op BETA_THM x = x
    val op BETA_THM =
    DT(((("bool",31),[]),[]),
       [read"%78%27%75%68%89%59$2$0@|$0@@$1$0@@|@|@"])
  fun op LET_THM x = x
    val op LET_THM =
    DT(((("bool",32),[("bool",[8])]),[]),
       [read"%78%27%75%59%89%126$1@$0@@$1$0@@|@|@"])
  fun op FORALL_THM x = x
    val op FORALL_THM =
    DT(((("bool",33),[("bool",[14])]),[]),
       [read"%91%75%28@@%75%59%28$0@|@@"])
  fun op EXISTS_THM x = x
    val op EXISTS_THM =
    DT(((("bool",34),[("bool",[14])]),[]),
       [read"%91%106%28@@%106%59%28$0@|@@"])
  fun op ABS_SIMP x = x
    val op ABS_SIMP =
    DT(((("bool",35),[]),[]), [read"%75%49%76%52%88%60$2|$0@@$1@|@|@"])
  fun op FORALL_SIMP x = x
    val op FORALL_SIMP =
    DT(((("bool",36),[("bool",[26])]),[]),
       [read"%77%47%91%75%59$1|@@$0@|@"])
  fun op EXISTS_SIMP x = x
    val op EXISTS_SIMP =
    DT(((("bool",37),[("bool",[26])]),[]),
       [read"%77%47%91%106%59$1|@@$0@|@"])
  fun op AND_INTRO_THM x = x
    val op AND_INTRO_THM =
    DT(((("bool",38),[("bool",[3])]),[]),
       [read"%77%50%77%53%105$1@%105$0@%87$1@$0@@@|@|@"])
  fun op AND1_THM x = x
    val op AND1_THM =
    DT(((("bool",39),[("bool",[3])]),[]),
       [read"%77%50%77%53%105%87$1@$0@@$1@|@|@"])
  fun op AND2_THM x = x
    val op AND2_THM =
    DT(((("bool",40),[("bool",[3])]),[]),
       [read"%77%50%77%53%105%87$1@$0@@$0@|@|@"])
  fun op CONJ_SYM x = x
    val op CONJ_SYM =
    DT(((("bool",41),[("bool",[26])]),[]),
       [read"%77%50%77%53%91%87$1@$0@@%87$0@$1@@|@|@"])
  fun op CONJ_COMM x = x
    val op CONJ_COMM =
    DT(((("bool",42),[("bool",[26])]),[]),
       [read"%77%50%77%53%91%87$1@$0@@%87$0@$1@@|@|@"])
  fun op CONJ_ASSOC x = x
    val op CONJ_ASSOC =
    DT(((("bool",43),[("bool",[26])]),[]),
       [read"%77%50%77%53%77%54%91%87$2@%87$1@$0@@@%87%87$2@$1@@$0@@|@|@|@"])
  fun op OR_INTRO_THM1 x = x
    val op OR_INTRO_THM1 =
    DT(((("bool",44),[("bool",[4])]),[]),
       [read"%77%50%77%53%105$1@%142$1@$0@@|@|@"])
  fun op OR_INTRO_THM2 x = x
    val op OR_INTRO_THM2 =
    DT(((("bool",45),[("bool",[4])]),[]),
       [read"%77%50%77%53%105$0@%142$1@$0@@|@|@"])
  fun op OR_ELIM_THM x = x
    val op OR_ELIM_THM =
    DT(((("bool",46),[("bool",[4])]),[]),
       [read"%77%47%77%50%77%53%105%142$1@$0@@%105%105$1@$2@@%105%105$0@$2@@$2@@@|@|@|@"])
  fun op IMP_F x = x
    val op IMP_F =
    DT(((("bool",47),[("bool",[6])]),[]),
       [read"%77%47%105%105$0@%124@@%150$0@@|@"])
  fun op F_IMP x = x
    val op F_IMP =
    DT(((("bool",48),[("bool",[6])]),[]),
       [read"%77%47%105%150$0@@%105$0@%124@@|@"])
  fun op NOT_F x = x
    val op NOT_F =
    DT(((("bool",49),[("bool",[6,26,27])]),[]),
       [read"%77%47%105%150$0@@%91$0@%124@@|@"])
  fun op NOT_AND x = x
    val op NOT_AND =
    DT(((("bool",50),[]),[]), [read"%150%87%47@%150%47@@@"])
  fun op AND_CLAUSES x = x
    val op AND_CLAUSES =
    DT(((("bool",51),[("bool",[0,3,26,27,39])]),[]),
       [read"%77%47%87%91%87%139@$0@@$0@@%87%91%87$0@%139@@$0@@%87%91%87%124@$0@@%124@@%87%91%87$0@%124@@%124@@%91%87$0@$0@@$0@@@@@|@"])
  fun op OR_CLAUSES x = x
    val op OR_CLAUSES =
    DT(((("bool",52),[("bool",[0,4,26,27])]),[]),
       [read"%77%47%87%91%142%139@$0@@%139@@%87%91%142$0@%139@@%139@@%87%91%142%124@$0@@$0@@%87%91%142$0@%124@@$0@@%91%142$0@$0@@$0@@@@@|@"])
  fun op IMP_CLAUSES x = x
    val op IMP_CLAUSES =
    DT(((("bool",53),[("bool",[0,4,5,6,13,26,27])]),[]),
       [read"%77%47%87%91%105%139@$0@@$0@@%87%91%105$0@%139@@%139@@%87%91%105%124@$0@@%139@@%87%91%105$0@$0@@%139@@%91%105$0@%124@@%150$0@@@@@@|@"])
  fun op NOT_CLAUSES x = x
    val op NOT_CLAUSES =
    DT(((("bool",54),[("bool",[0,6,26,27,29])]),[]),
       [read"%87%77%47%91%150%150$0@@@$0@|@@%87%91%150%139@@%124@@%91%150%124@@%139@@@"])
  fun op EQ_REFL x = x
    val op EQ_REFL = DT(((("bool",55),[]),[]), [read"%75%59%88$0@$0@|@"])
  fun op REFL_CLAUSE x = x
    val op REFL_CLAUSE =
    DT(((("bool",56),[("bool",[4,5,13])]),[]),
       [read"%75%59%91%88$0@$0@@%139@|@"])
  fun op EQ_SYM x = x
    val op EQ_SYM =
    DT(((("bool",57),[]),[]),
       [read"%75%59%75%68%105%88$1@$0@@%88$0@$1@@|@|@"])
  fun op EQ_SYM_EQ x = x
    val op EQ_SYM_EQ =
    DT(((("bool",58),[("bool",[26])]),[]),
       [read"%75%59%75%68%91%88$1@$0@@%88$0@$1@@|@|@"])
  fun op EQ_EXT x = x
    val op EQ_EXT =
    DT(((("bool",59),[("bool",[14])]),[]),
       [read"%78%27%78%34%105%75%59%89$2$0@@$1$0@@|@@%92$1@$0@@|@|@"])
  fun op FUN_EQ_THM x = x
    val op FUN_EQ_THM =
    DT(((("bool",60),[("bool",[14,26])]),[]),
       [read"%78%27%78%34%91%92$1@$0@@%75%59%89$2$0@@$1$0@@|@@|@|@"])
  fun op EQ_TRANS x = x
    val op EQ_TRANS =
    DT(((("bool",61),[]),[]),
       [read"%75%59%75%68%75%73%105%87%88$2@$1@@%88$1@$0@@@%88$2@$0@@|@|@|@"])
  fun op BOOL_EQ_DISTINCT x = x
    val op BOOL_EQ_DISTINCT =
    DT(((("bool",62),[("bool",[0])]),[]),
       [read"%87%150%91%139@%124@@@%150%91%124@%139@@@"])
  fun op EQ_CLAUSES x = x
    val op EQ_CLAUSES =
    DT(((("bool",63),[("bool",[0,4,5,6,13,26,27])]),[]),
       [read"%77%47%87%91%91%139@$0@@$0@@%87%91%91$0@%139@@$0@@%87%91%91%124@$0@@%150$0@@@%91%91$0@%124@@%150$0@@@@@|@"])
  fun op COND_CLAUSES x = x
    val op COND_CLAUSES =
    DT(((("bool",64),[("bool",[0,4,5,6,9,13,15,26,27])]),[]),
       [read"%75%49%75%51%87%88%118%139@$1@$0@@$1@@%88%118%124@$1@$0@@$0@@|@|@"])
  fun op COND_ID x = x
    val op COND_ID =
    DT(((("bool",65),[("bool",[9,13,15,26])]),[]),
       [read"%77%24%75%45%88%118$1@$0@$0@@$0@|@|@"])
  fun op SELECT_THM x = x
    val op SELECT_THM =
    DT(((("bool",66),[("bool",[2])]),[]),
       [read"%79%9%91$0%115%59$1$0@|@@@%106%59$1$0@|@@|@"])
  fun op SELECT_REFL x = x
    val op SELECT_REFL =
    DT(((("bool",67),[("bool",[15])]),[]),
       [read"%75%59%88%115%68%88$0@$1@|@@$0@|@"])
  fun op SELECT_REFL_2 x = x
    val op SELECT_REFL_2 =
    DT(((("bool",68),[("bool",[15])]),[]),
       [read"%75%59%88%115%68%88$1@$0@|@@$0@|@"])
  fun op SELECT_UNIQUE x = x
    val op SELECT_UNIQUE =
    DT(((("bool",69),[("bool",[14,15,26])]),[]),
       [read"%79%9%75%59%105%75%68%91$2$0@@%88$0@$1@@|@@%88%115$1@@$0@@|@|@"])
  fun op SELECT_ELIM_THM x = x
    val op SELECT_ELIM_THM =
    DT(((("bool",70),[("bool",[15])]),[]),
       [read"%79%9%79%17%105%87%106%59$2$0@|@@%75%59%105$2$0@@$1$0@@|@@@$0%115$1@@@|@|@"])
  fun op NOT_FORALL_THM x = x
    val op NOT_FORALL_THM =
    DT(((("bool",71),[("bool",[26])]),[]),
       [read"%79%9%91%150%75%59$1$0@|@@@%106%59%150$1$0@@|@@|@"])
  fun op NOT_EXISTS_THM x = x
    val op NOT_EXISTS_THM =
    DT(((("bool",72),[("bool",[26])]),[]),
       [read"%79%9%91%150%106%59$1$0@|@@@%75%59%150$1$0@@|@@|@"])
  fun op FORALL_AND_THM x = x
    val op FORALL_AND_THM =
    DT(((("bool",73),[("bool",[26])]),[]),
       [read"%79%9%79%17%91%75%59%87$2$0@@$1$0@@|@@%87%75%59$2$0@|@@%75%59$1$0@|@@@|@|@"])
  fun op LEFT_AND_FORALL_THM x = x
    val op LEFT_AND_FORALL_THM =
    DT(((("bool",74),[("bool",[26])]),[]),
       [read"%79%9%77%16%91%87%75%59$2$0@|@@$0@@%75%59%87$2$0@@$1@|@@|@|@"])
  fun op RIGHT_AND_FORALL_THM x = x
    val op RIGHT_AND_FORALL_THM =
    DT(((("bool",75),[("bool",[26])]),[]),
       [read"%77%8%79%17%91%87$1@%75%59$1$0@|@@@%75%59%87$2@$1$0@@|@@|@|@"])
  fun op EXISTS_OR_THM x = x
    val op EXISTS_OR_THM =
    DT(((("bool",76),[("bool",[26])]),[]),
       [read"%79%9%79%17%91%106%59%142$2$0@@$1$0@@|@@%142%106%59$2$0@|@@%106%59$1$0@|@@@|@|@"])
  fun op LEFT_OR_EXISTS_THM x = x
    val op LEFT_OR_EXISTS_THM =
    DT(((("bool",77),[("bool",[26])]),[]),
       [read"%79%9%77%16%91%142%106%59$2$0@|@@$0@@%106%59%142$2$0@@$1@|@@|@|@"])
  fun op RIGHT_OR_EXISTS_THM x = x
    val op RIGHT_OR_EXISTS_THM =
    DT(((("bool",78),[("bool",[26])]),[]),
       [read"%77%8%79%17%91%142$1@%106%59$1$0@|@@@%106%59%142$2@$1$0@@|@@|@|@"])
  fun op BOTH_EXISTS_AND_THM x = x
    val op BOTH_EXISTS_AND_THM =
    DT(((("bool",79),[("bool",[26])]),[]),
       [read"%77%8%77%16%91%106%59%87$2@$1@|@@%87%106%59$2|@@%106%59$1|@@@|@|@"])
  fun op LEFT_EXISTS_AND_THM x = x
    val op LEFT_EXISTS_AND_THM =
    DT(((("bool",80),[("bool",[26])]),[]),
       [read"%79%9%77%16%91%106%59%87$2$0@@$1@|@@%87%106%59$2$0@|@@$0@@|@|@"])
  fun op RIGHT_EXISTS_AND_THM x = x
    val op RIGHT_EXISTS_AND_THM =
    DT(((("bool",81),[("bool",[26])]),[]),
       [read"%77%8%79%17%91%106%59%87$2@$1$0@@|@@%87$1@%106%59$1$0@|@@@|@|@"])
  fun op BOTH_FORALL_OR_THM x = x
    val op BOTH_FORALL_OR_THM =
    DT(((("bool",82),[("bool",[26])]),[]),
       [read"%77%8%77%16%91%75%59%142$2@$1@|@@%142%75%59$2|@@%75%59$1|@@@|@|@"])
  fun op LEFT_FORALL_OR_THM x = x
    val op LEFT_FORALL_OR_THM =
    DT(((("bool",83),[("bool",[26,27,29])]),[]),
       [read"%77%16%79%9%91%75%59%142$1$0@@$2@|@@%142%75%59$1$0@|@@$1@@|@|@"])
  fun op RIGHT_FORALL_OR_THM x = x
    val op RIGHT_FORALL_OR_THM =
    DT(((("bool",84),[("bool",[26,27,29])]),[]),
       [read"%77%8%79%17%91%75%59%142$2@$1$0@@|@@%142$1@%75%59$1$0@|@@@|@|@"])
  fun op BOTH_FORALL_IMP_THM x = x
    val op BOTH_FORALL_IMP_THM =
    DT(((("bool",85),[("bool",[26])]),[]),
       [read"%77%8%77%16%91%75%59%105$2@$1@|@@%105%106%59$2|@@%75%59$1|@@@|@|@"])
  fun op LEFT_FORALL_IMP_THM x = x
    val op LEFT_FORALL_IMP_THM =
    DT(((("bool",86),[("bool",[26])]),[]),
       [read"%79%9%77%16%91%75%59%105$2$0@@$1@|@@%105%106%59$2$0@|@@$0@@|@|@"])
  fun op RIGHT_FORALL_IMP_THM x = x
    val op RIGHT_FORALL_IMP_THM =
    DT(((("bool",87),[("bool",[26])]),[]),
       [read"%77%8%79%17%91%75%59%105$2@$1$0@@|@@%105$1@%75%59$1$0@|@@@|@|@"])
  fun op BOTH_EXISTS_IMP_THM x = x
    val op BOTH_EXISTS_IMP_THM =
    DT(((("bool",88),[("bool",[26])]),[]),
       [read"%77%8%77%16%91%106%59%105$2@$1@|@@%105%75%59$2|@@%106%59$1|@@@|@|@"])
  fun op LEFT_EXISTS_IMP_THM x = x
    val op LEFT_EXISTS_IMP_THM =
    DT(((("bool",89),[("bool",[26,27,29])]),[]),
       [read"%79%9%77%16%91%106%59%105$2$0@@$1@|@@%105%75%59$2$0@|@@$0@@|@|@"])
  fun op RIGHT_EXISTS_IMP_THM x = x
    val op RIGHT_EXISTS_IMP_THM =
    DT(((("bool",90),[("bool",[26,27,29])]),[]),
       [read"%77%8%79%17%91%106%59%105$2@$1$0@@|@@%105$1@%106%59$1$0@|@@@|@|@"])
  fun op OR_IMP_THM x = x
    val op OR_IMP_THM =
    DT(((("bool",91),[("bool",[0,4,5,13,26,27])]),[]),
       [read"%77%0%77%1%91%91$1@%142$0@$1@@@%105$0@$1@@|@|@"])
  fun op NOT_IMP x = x
    val op NOT_IMP =
    DT(((("bool",92),[("bool",[0,4,5,13,26,27])]),[]),
       [read"%77%0%77%1%91%150%105$1@$0@@@%87$1@%150$0@@@|@|@"])
  fun op DISJ_ASSOC x = x
    val op DISJ_ASSOC =
    DT(((("bool",93),[("bool",[26])]),[]),
       [read"%77%0%77%1%77%2%91%142$2@%142$1@$0@@@%142%142$2@$1@@$0@@|@|@|@"])
  fun op DISJ_SYM x = x
    val op DISJ_SYM =
    DT(((("bool",94),[("bool",[26])]),[]),
       [read"%77%0%77%1%91%142$1@$0@@%142$0@$1@@|@|@"])
  fun op DISJ_COMM x = x
    val op DISJ_COMM =
    DT(((("bool",95),[("bool",[26])]),[]),
       [read"%77%0%77%1%91%142$1@$0@@%142$0@$1@@|@|@"])
  fun op DE_MORGAN_THM x = x
    val op DE_MORGAN_THM =
    DT(((("bool",96),[("bool",[26,29])]),[]),
       [read"%77%0%77%1%87%91%150%87$1@$0@@@%142%150$1@@%150$0@@@@%91%150%142$1@$0@@@%87%150$1@@%150$0@@@@|@|@"])
  fun op LEFT_AND_OVER_OR x = x
    val op LEFT_AND_OVER_OR =
    DT(((("bool",97),[("bool",[26])]),[]),
       [read"%77%0%77%1%77%2%91%87$2@%142$1@$0@@@%142%87$2@$1@@%87$2@$0@@@|@|@|@"])
  fun op RIGHT_AND_OVER_OR x = x
    val op RIGHT_AND_OVER_OR =
    DT(((("bool",98),[("bool",[26])]),[]),
       [read"%77%0%77%1%77%2%91%87%142$1@$0@@$2@@%142%87$1@$2@@%87$0@$2@@@|@|@|@"])
  fun op LEFT_OR_OVER_AND x = x
    val op LEFT_OR_OVER_AND =
    DT(((("bool",99),[("bool",[26])]),[]),
       [read"%77%0%77%1%77%2%91%142$2@%87$1@$0@@@%87%142$2@$1@@%142$2@$0@@@|@|@|@"])
  fun op RIGHT_OR_OVER_AND x = x
    val op RIGHT_OR_OVER_AND =
    DT(((("bool",100),[("bool",[26])]),[]),
       [read"%77%0%77%1%77%2%91%142%87$1@$0@@$2@@%87%142$1@$2@@%142$0@$2@@@|@|@|@"])
  fun op IMP_DISJ_THM x = x
    val op IMP_DISJ_THM =
    DT(((("bool",101),[("bool",[0,4,5,6,13,26,27,29])]),[]),
       [read"%77%0%77%1%91%105$1@$0@@%142%150$1@@$0@@|@|@"])
  fun op DISJ_IMP_THM x = x
    val op DISJ_IMP_THM =
    DT(((("bool",102),[("bool",[3,26,39])]),[]),
       [read"%77%8%77%16%77%19%91%105%142$2@$1@@$0@@%87%105$2@$0@@%105$1@$0@@@|@|@|@"])
  fun op IMP_CONJ_THM x = x
    val op IMP_CONJ_THM =
    DT(((("bool",103),[("bool",[26])]),[]),
       [read"%77%8%77%16%77%19%91%105$2@%87$1@$0@@@%87%105$2@$1@@%105$2@$0@@@|@|@|@"])
  fun op IMP_F_EQ_F x = x
    val op IMP_F_EQ_F =
    DT(((("bool",104),[("bool",[0,4,5,6,13,26,27])]),[]),
       [read"%77%47%91%105$0@%124@@%91$0@%124@@|@"])
  fun op AND_IMP_INTRO x = x
    val op AND_IMP_INTRO =
    DT(((("bool",105),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%77%50%77%53%77%54%91%105$2@%105$1@$0@@@%105%87$2@$1@@$0@@|@|@|@"])
  fun op EQ_IMP_THM x = x
    val op EQ_IMP_THM =
    DT(((("bool",106),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%77%50%77%53%91%91$1@$0@@%87%105$1@$0@@%105$0@$1@@@|@|@"])
  fun op EQ_EXPAND x = x
    val op EQ_EXPAND =
    DT(((("bool",107),[("bool",[0,3,4,5,6,13,26,27,29,39])]),[]),
       [read"%77%50%77%53%91%91$1@$0@@%142%87$1@$0@@%87%150$1@@%150$0@@@@|@|@"])
  fun op COND_RATOR x = x
    val op COND_RATOR =
    DT(((("bool",108),[("bool",[0,4,5,6,9,13,15,26,27])]),[]),
       [read"%77%24%78%27%78%34%75%59%89%121$3@$2@$1@$0@@%119$3@$2$0@@$1$0@@@|@|@|@|@"])
  fun op COND_RAND x = x
    val op COND_RAND =
    DT(((("bool",109),[("bool",[0,4,5,6,9,13,15,26,27])]),[]),
       [read"%78%27%77%24%75%59%75%68%89$3%118$2@$1@$0@@@%119$2@$3$1@@$3$0@@@|@|@|@|@"])
  fun op COND_ABS x = x
    val op COND_ABS =
    DT(((("bool",110),[("bool",[0,4,5,6,9,13,14,15,26,27])]),[]),
       [read"%77%24%78%27%78%34%92%59%119$3@$2$0@@$1$0@@|@%121$2@$1@$0@@|@|@|@"])
  fun op COND_EXPAND x = x
    val op COND_EXPAND =
    DT(((("bool",111),[("bool",[0,3,4,5,6,9,13,15,26,27,29,39])]),[]),
       [read"%77%24%77%50%77%53%91%120$2@$1@$0@@%87%142%150$2@@$1@@%142$2@$0@@@|@|@|@"])
  fun op COND_EXPAND_IMP x = x
    val op COND_EXPAND_IMP =
    DT(((("bool",112),[("bool",[0,3,4,5,6,9,13,15,26,27,29,39])]),[]),
       [read"%77%24%77%50%77%53%91%120$2@$1@$0@@%87%105$2@$1@@%105%150$2@@$0@@@|@|@|@"])
  fun op COND_EXPAND_OR x = x
    val op COND_EXPAND_OR =
    DT(((("bool",113),[("bool",[0,3,4,5,6,9,13,15,26,27,29,39])]),[]),
       [read"%77%24%77%50%77%53%91%120$2@$1@$0@@%142%87$2@$1@@%87%150$2@@$0@@@|@|@|@"])
  fun op TYPE_DEFINITION_THM x = x
    val op TYPE_DEFINITION_THM =
    DT(((("bool",114),[("bool",[12])]),[]),
       [read"%79%9%82%43%91%140$1@$0@@%87%76%63%76%65%105%88$2$1@@$2$0@@@%89$1@$0@@|@|@@%75%59%91$2$0@@%107%63%88$1@$2$0@@|@@|@@@|@|@"])
  fun op ONTO_THM x = x
    val op ONTO_THM =
    DT(((("bool",115),[("bool",[11])]),[]),
       [read"%78%27%91%132$0@@%76%69%106%59%89$1@$2$0@@|@|@@|@"])
  fun op ONE_ONE_THM x = x
    val op ONE_ONE_THM =
    DT(((("bool",116),[("bool",[10])]),[]),
       [read"%78%27%91%130$0@@%75%66%75%67%105%89$2$1@@$2$0@@@%88$1@$0@@|@|@@|@"])
  fun op ABS_REP_THM x = x
    val op ABS_REP_THM =
    DT(((("bool",117),[("bool",[12,15,26])]),[]),
       [read"%79%9%105%109%43%140$1@$0@|@@%109%43%108%22%87%76%21%89$1$2$0@@@$0@|@@%75%42%91$3$0@@%88$2$1$0@@@$0@@|@@|@|@@|@"])
  fun op LET_RAND x = x
    val op LET_RAND =
    DT(((("bool",118),[("bool",[32])]),[]),
       [read"%91%11%126%59%6$0@|@%3@@@%128%59%11%6$0@@|@%3@@"])
  fun op LET_RATOR x = x
    val op LET_RATOR =
    DT(((("bool",119),[("bool",[32])]),[]),
       [read"%90%129%59%7$0@|@%3@%23@@%127%59%7$0@%23@|@%3@@"])
  fun op SWAP_FORALL_THM x = x
    val op SWAP_FORALL_THM =
    DT(((("bool",120),[("bool",[26])]),[]),
       [read"%81%10%91%75%59%76%69$2$1@$0@|@|@@%76%69%75%59$2$0@$1@|@|@@|@"])
  fun op SWAP_EXISTS_THM x = x
    val op SWAP_EXISTS_THM =
    DT(((("bool",121),[("bool",[26])]),[]),
       [read"%81%10%91%106%59%107%69$2$1@$0@|@|@@%107%69%106%59$2$0@$1@|@|@@|@"])
  fun op EXISTS_UNIQUE_THM x = x
    val op EXISTS_UNIQUE_THM =
    DT(((("bool",122),[("bool",[7])]),[]),
       [read"%91%114%59%9$0@|@@%87%106%59%9$0@|@@%75%59%75%68%105%87%9$1@@%9$0@@@%88$1@$0@@|@|@@@"])
  fun op LET_CONG x = x
    val op LET_CONG =
    DT(((("bool",123),[("bool",[0,3,4,5,6,8,13,26,27,39])]),[]),
       [read"%78%27%78%34%75%3%75%5%105%87%88$1@$0@@%75%59%105%88$0@$1@@%89$4$0@@$3$0@@@|@@@%89%126$3@$1@@%126$2@$0@@@|@|@|@|@"])
  fun op IMP_CONG x = x
    val op IMP_CONG =
    DT(((("bool",124),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%77%61%77%64%77%70%77%72%105%87%91$3@$2@@%105$2@%91$1@$0@@@@%91%105$3@$1@@%105$2@$0@@@|@|@|@|@"])
  fun op AND_CONG x = x
    val op AND_CONG =
    DT(((("bool",125),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%77%8%77%15%77%16%77%18%105%87%105$1@%91$3@$2@@@%105$2@%91$1@$0@@@@%91%87$3@$1@@%87$2@$0@@@|@|@|@|@"])
  fun op LEFT_AND_CONG x = x
    val op LEFT_AND_CONG =
    DT(((("bool",126),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%77%8%77%15%77%16%77%18%105%87%91$3@$2@@%105$2@%91$1@$0@@@@%91%87$3@$1@@%87$2@$0@@@|@|@|@|@"])
  fun op OR_CONG x = x
    val op OR_CONG =
    DT(((("bool",127),[("bool",[0,3,4,5,6,13,26,27,29,39])]),[]),
       [read"%77%8%77%15%77%16%77%18%105%87%105%150$1@@%91$3@$2@@@%105%150$2@@%91$1@$0@@@@%91%142$3@$1@@%142$2@$0@@@|@|@|@|@"])
  fun op LEFT_OR_CONG x = x
    val op LEFT_OR_CONG =
    DT(((("bool",128),[("bool",[0,3,4,5,6,13,26,27,29,39])]),[]),
       [read"%77%8%77%15%77%16%77%18%105%87%91$3@$2@@%105%150$2@@%91$1@$0@@@@%91%142$3@$1@@%142$2@$0@@@|@|@|@|@"])
  fun op COND_CONG x = x
    val op COND_CONG =
    DT(((("bool",129),[("bool",[0,3,4,5,6,9,13,15,26,27,29,39])]),[]),
       [read"%77%8%77%16%75%59%75%62%75%68%75%71%105%87%91$5@$4@@%87%105$4@%88$3@$2@@@%105%150$4@@%88$1@$0@@@@@%88%118$5@$3@$1@@%118$4@$2@$0@@@|@|@|@|@|@|@"])
  fun op RES_FORALL_CONG x = x
    val op RES_FORALL_CONG =
    DT(((("bool",130),[("bool",[19,26])]),[]),
       [read"%105%93%9@%17@@%105%75%59%105%125$0@%17@@%91%28$0@@%35$0@@@|@@%91%137%9@%28@@%137%17@%35@@@@"])
  fun op RES_EXISTS_CONG x = x
    val op RES_EXISTS_CONG =
    DT(((("bool",131),[("bool",[20,26])]),[]),
       [read"%105%93%9@%17@@%105%75%59%105%125$0@%17@@%91%28$0@@%35$0@@@|@@%91%135%9@%28@@%135%17@%35@@@@"])
  fun op MONO_AND x = x
    val op MONO_AND =
    DT(((("bool",132),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%105%87%105%61@%70@@%105%74@%58@@@%105%87%61@%74@@%87%70@%58@@@"])
  fun op MONO_OR x = x
    val op MONO_OR =
    DT(((("bool",133),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%105%87%105%61@%70@@%105%74@%58@@@%105%142%61@%74@@%142%70@%58@@@"])
  fun op MONO_IMP x = x
    val op MONO_IMP =
    DT(((("bool",134),[("bool",[0,3,4,5,6,13,26,27,39])]),[]),
       [read"%105%87%105%70@%61@@%105%74@%58@@@%105%105%61@%74@@%105%70@%58@@@"])
  fun op MONO_NOT x = x
    val op MONO_NOT =
    DT(((("bool",135),[("bool",[6])]),[]),
       [read"%105%105%70@%61@@%105%150%61@@%150%70@@@"])
  fun op MONO_NOT_EQ x = x
    val op MONO_NOT_EQ =
    DT(((("bool",136),[("bool",[0,6,26,27,29,135])]),[]),
       [read"%91%105%70@%61@@%105%150%61@@%150%70@@@"])
  fun op MONO_ALL x = x
    val op MONO_ALL =
    DT(((("bool",137),[]),[]),
       [read"%105%75%59%105%9$0@@%17$0@@|@@%105%75%59%9$0@|@@%75%59%17$0@|@@@"])
  fun op MONO_EXISTS x = x
    val op MONO_EXISTS =
    DT(((("bool",138),[("bool",[2])]),[]),
       [read"%105%75%59%105%9$0@@%17$0@@|@@%105%106%59%9$0@|@@%106%59%17$0@|@@@"])
  fun op MONO_COND x = x
    val op MONO_COND =
    DT(((("bool",139),[("bool",[0,4,5,6,9,13,15,26,27])]),[]),
       [read"%105%105%61@%70@@%105%105%74@%58@@%105%120%24@%61@%74@@%120%24@%70@%58@@@@"])
  fun op EXISTS_REFL x = x
    val op EXISTS_REFL =
    DT(((("bool",140),[]),[]), [read"%75%20%106%59%88$0@$1@|@|@"])
  fun op EXISTS_UNIQUE_REFL x = x
    val op EXISTS_UNIQUE_REFL =
    DT(((("bool",141),[("bool",[7,140])]),[]),
       [read"%75%20%114%59%88$0@$1@|@|@"])
  fun op UNWIND_THM1 x = x
    val op UNWIND_THM1 =
    DT(((("bool",142),[("bool",[26])]),[]),
       [read"%79%9%75%20%91%106%59%87%88$1@$0@@$2$0@@|@@$1$0@@|@|@"])
  fun op UNWIND_THM2 x = x
    val op UNWIND_THM2 =
    DT(((("bool",143),[("bool",[26,142])]),[]),
       [read"%79%9%75%20%91%106%59%87%88$0@$1@@$2$0@@|@@$1$0@@|@|@"])
  fun op UNWIND_FORALL_THM1 x = x
    val op UNWIND_FORALL_THM1 =
    DT(((("bool",144),[("bool",[26])]),[]),
       [read"%79%28%75%56%91%75%59%105%88$1@$0@@$2$0@@|@@$1$0@@|@|@"])
  fun op UNWIND_FORALL_THM2 x = x
    val op UNWIND_FORALL_THM2 =
    DT(((("bool",145),[("bool",[26])]),[]),
       [read"%79%28%75%56%91%75%59%105%88$0@$1@@$2$0@@|@@$1$0@@|@|@"])
  fun op SKOLEM_THM x = x
    val op SKOLEM_THM =
    DT(((("bool",146),[("bool",[15,26])]),[]),
       [read"%81%10%91%75%59%107%69$2$1@$0@|@|@@%108%27%75%59$2$0@$1$0@@|@|@@|@"])
  fun op bool_case_thm x = x
    val op bool_case_thm =
    DT(((("bool",147),[("bool",[0,4,5,6,9,13,15,26,27])]),[]),
       [read"%87%75%49%75%51%88%118%139@$1@$0@@$1@|@|@@%75%49%75%51%88%118%124@$1@$0@@$0@|@|@@"])
  fun op bool_case_ID x = x
    val op bool_case_ID =
    DT(((("bool",148),[("bool",[9,13,15,26])]),[]),
       [read"%77%24%75%45%88%118$1@$0@$0@@$0@|@|@"])
  fun op boolAxiom x = x
    val op boolAxiom =
    DT(((("bool",149),[("bool",[0,4,5,6,9,13,15,26,27])]),[]),
       [read"%75%49%75%51%110%33%87%88$0%139@@$2@@%88$0%124@@$1@@|@|@|@"])
  fun op bool_INDUCT x = x
    val op bool_INDUCT =
    DT(((("bool",150),[("bool",[13])]),[]),
       [read"%83%12%105%87$0%139@@$0%124@@@%77%24$1$0@|@@|@"])
  fun op bool_case_CONG x = x
    val op bool_case_CONG =
    DT(((("bool",151),[("bool",[0,3,4,5,6,9,13,15,26,27,29,39])]),[]),
       [read"%77%8%77%16%75%59%75%62%75%68%75%71%105%87%91$5@$4@@%87%105$4@%88$3@$2@@@%105%150$4@@%88$1@$0@@@@@%88%118$5@$3@$1@@%118$4@$2@$0@@@|@|@|@|@|@|@"])
  fun op FORALL_BOOL x = x
    val op FORALL_BOOL =
    DT(((("bool",152),[("bool",[26,150])]),[]),
       [read"%91%77%24%12$0@|@@%87%12%139@@%12%124@@@"])
  fun op UEXISTS_OR_THM x = x
    val op UEXISTS_OR_THM =
    DT(((("bool",153),[("bool",[7,26])]),[]),
       [read"%79%9%79%17%105%114%59%142$2$0@@$1$0@@|@@%142%114%59$2$0@|@@%114%59$1$0@|@@@|@|@"])
  fun op UEXISTS_SIMP x = x
    val op UEXISTS_SIMP =
    DT(((("bool",154),[("bool",[7,26,37])]),[]),
       [read"%91%114%59%47|@@%87%47@%75%59%75%68%88$1@$0@|@|@@@"])
  fun op RES_FORALL_THM x = x
    val op RES_FORALL_THM =
    DT(((("bool",156),[("bool",[19])]),[]),
       [read"%79%9%79%28%91%137$1@$0@@%75%59%105%125$0@$2@@$1$0@@|@@|@|@"])
  fun op RES_EXISTS_THM x = x
    val op RES_EXISTS_THM =
    DT(((("bool",157),[("bool",[20])]),[]),
       [read"%79%9%79%28%91%135$1@$0@@%106%59%87%125$0@$2@@$1$0@@|@@|@|@"])
  fun op RES_EXISTS_UNIQUE_THM x = x
    val op RES_EXISTS_UNIQUE_THM =
    DT(((("bool",158),[("bool",[21])]),[]),
       [read"%79%9%79%28%91%136$1@$0@@%87%135$1@%59$1$0@|@@%137$1@%59%137$2@%68%105%87$2$1@@$2$0@@@%88$1@$0@@|@|@@@|@|@"])
  fun op RES_SELECT_THM x = x
    val op RES_SELECT_THM =
    DT(((("bool",159),[("bool",[22])]),[]),
       [read"%79%9%79%28%88%138$1@$0@@%115%59%87%125$0@$2@@$1$0@@|@@|@|@"])
  fun op RES_FORALL_TRUE x = x
    val op RES_FORALL_TRUE =
    DT(((("bool",160),[("bool",[0,4,5,6,13,26,27,36,156])]),[]),
       [read"%91%137%9@%59%139|@@%139@"])
  fun op RES_EXISTS_FALSE x = x
    val op RES_EXISTS_FALSE =
    DT(((("bool",161),[("bool",[0,3,26,27,37,39,157])]),[]),
       [read"%91%135%9@%59%124|@@%124@"])
  fun op BOOL_FUN_CASES_THM x = x
    val op BOOL_FUN_CASES_THM =
    DT(((("bool",162),[("bool",[0,4,6,13,14,26,27,29])]),[]),
       [read"%83%30%142%95$0@%24%139|@@%142%95$0@%24%124|@@%142%95$0@%24$0|@@%95$0@%24%150$0@|@@@@|@"])
  fun op BOOL_FUN_INDUCT x = x
    val op BOOL_FUN_INDUCT =
    DT(((("bool",163),[("bool",[0,3,4,5,6,13,14,26,27,29,39])]),[]),
       [read"%84%13%105%87$0%24%139|@@%87$0%24%124|@@%87$0%24$0|@@$0%24%150$0@|@@@@@%83%30$1$0@|@@|@"])
  fun op literal_case_THM x = x
    val op literal_case_THM =
    DT(((("bool",164),[("bool",[17])]),[]),
       [read"%78%27%75%59%89%144$1@$0@@$1$0@@|@|@"])
  fun op literal_case_RAND x = x
    val op literal_case_RAND =
    DT(((("bool",165),[("bool",[17])]),[]),
       [read"%91%11%144%59%6$0@|@%3@@@%146%59%11%6$0@@|@%3@@"])
  fun op literal_case_RATOR x = x
    val op literal_case_RATOR =
    DT(((("bool",166),[("bool",[17])]),[]),
       [read"%90%147%59%7$0@|@%3@%23@@%145%59%7$0@%23@|@%3@@"])
  fun op literal_case_CONG x = x
    val op literal_case_CONG =
    DT(((("bool",167),[("bool",[0,3,4,5,6,13,17,26,27,39])]),[]),
       [read"%78%27%78%34%75%3%75%5%105%87%88$1@$0@@%75%59%105%88$0@$1@@%89$4$0@@$3$0@@@|@@@%89%144$3@$1@@%144$2@$0@@@|@|@|@|@"])
  fun op literal_case_id x = x
    val op literal_case_id =
    DT(((("bool",168),[("bool",[0,4,5,6,9,13,15,17,26,27])]),[]),
       [read"%89%144%59%119%88$0@%20@@%46@%55@|@%20@@%46@"])
  fun op BOUNDED_THM x = x
    val op BOUNDED_THM =
    DT(((("bool",169),[("bool",[23])]),[]),
       [read"%77%57%91%117$0@@%139@|@"])
  fun op LCOMM_THM x = x
    val op LCOMM_THM =
    DT(((("bool",170),[]),[]),
       [read"%80%29%105%75%59%75%68%75%73%88$3$2@$3$1@$0@@@$3$3$2@$1@@$0@@|@|@|@@%105%75%59%75%68%88$2$1@$0@@$2$0@$1@@|@|@@%75%59%75%68%75%73%88$3$2@$3$1@$0@@@$3$1@$3$2@$0@@@|@|@|@@@|@"])
  fun op DATATYPE_TAG_THM x = x
    val op DATATYPE_TAG_THM =
    DT(((("bool",171),[("bool",[24])]),[]),
       [read"%75%59%91%122$0@@%139@|@"])
  fun op DATATYPE_BOOL x = x
    val op DATATYPE_BOOL =
    DT(((("bool",172),[("bool",[171])]),[]),
       [read"%91%123%25%139@%124@@@%139@"])
  fun op ITSELF_UNIQUE x = x
    val op ITSELF_UNIQUE =
    DT(((("bool",174),[("bool",[12,173])]),[]),
       [read"%86%36%104$0@%148@|@"])
  fun op itself_Axiom x = x
    val op itself_Axiom =
    DT(((("bool",175),[]),[]), [read"%75%26%113%32%88$0%149@@$1@|@|@"])
  fun op itself_induction x = x
    val op itself_induction =
    DT(((("bool",176),[("bool",[174])]),[]),
       [read"%85%14%105$0%148@@%86%36$1$0@|@@|@"])
  fun op PULL_EXISTS x = x
    val op PULL_EXISTS =
    DT(((("bool",178),[("bool",[26])]),[]),
       [read"%79%9%77%16%87%91%105%106%59$2$0@|@@$0@@%75%59%105$2$0@@$1@|@@@%87%91%87%106%59$2$0@|@@$0@@%106%59%87$2$0@@$1@|@@@%91%87$0@%106%59$2$0@|@@@%106%59%87$1@$2$0@@|@@@@|@|@"])
  fun op PULL_FORALL x = x
    val op PULL_FORALL =
    DT(((("bool",179),[("bool",[26])]),[]),
       [read"%79%9%77%16%87%91%105$0@%75%59$2$0@|@@@%75%59%105$1@$2$0@@|@@@%87%91%87%75%59$2$0@|@@$0@@%75%59%87$2$0@@$1@|@@@%91%87$0@%75%59$2$0@|@@@%75%59%87$1@$2$0@@|@@@@|@|@"])
  fun op PEIRCE x = x
    val op PEIRCE =
    DT(((("bool",180),[("bool",[0,6,26,27,29])]),[]),
       [read"%105%105%105%8@%16@@%8@@%8@"])
  fun op JRH_INDUCT_UTIL x = x
    val op JRH_INDUCT_UTIL =
    DT(((("bool",181),[("bool",[14])]),[]),
       [read"%79%9%75%45%105%75%59%105%88$0@$1@@$2$0@@|@@%106$1@@|@|@"])
  end
  val _ = DB.bindl "bool"
  [("BOOL_CASES_AX",BOOL_CASES_AX,DB.Axm), ("ETA_AX",ETA_AX,DB.Axm),
   ("SELECT_AX",SELECT_AX,DB.Axm), ("INFINITY_AX",INFINITY_AX,DB.Axm),
   ("T_DEF",T_DEF,DB.Def), ("FORALL_DEF",FORALL_DEF,DB.Def),
   ("EXISTS_DEF",EXISTS_DEF,DB.Def), ("AND_DEF",AND_DEF,DB.Def),
   ("OR_DEF",OR_DEF,DB.Def), ("F_DEF",F_DEF,DB.Def),
   ("NOT_DEF",NOT_DEF,DB.Def),
   ("EXISTS_UNIQUE_DEF",EXISTS_UNIQUE_DEF,DB.Def),
   ("LET_DEF",LET_DEF,DB.Def), ("COND_DEF",COND_DEF,DB.Def),
   ("ONE_ONE_DEF",ONE_ONE_DEF,DB.Def), ("ONTO_DEF",ONTO_DEF,DB.Def),
   ("TYPE_DEFINITION",TYPE_DEFINITION,DB.Def),
   ("literal_case_DEF",literal_case_DEF,DB.Def), ("IN_DEF",IN_DEF,DB.Def),
   ("RES_FORALL_DEF",RES_FORALL_DEF,DB.Def),
   ("RES_EXISTS_DEF",RES_EXISTS_DEF,DB.Def),
   ("RES_EXISTS_UNIQUE_DEF",RES_EXISTS_UNIQUE_DEF,DB.Def),
   ("RES_SELECT_DEF",RES_SELECT_DEF,DB.Def),
   ("BOUNDED_DEF",BOUNDED_DEF,DB.Def),
   ("DATATYPE_TAG_DEF",DATATYPE_TAG_DEF,DB.Def),
   ("RES_ABSTRACT_DEF",RES_ABSTRACT_DEF,DB.Def),
   ("itself_TY_DEF",itself_TY_DEF,DB.Def),
   ("itself_case_thm",itself_case_thm,DB.Def), ("TRUTH",TRUTH,DB.Thm),
   ("IMP_ANTISYM_AX",IMP_ANTISYM_AX,DB.Thm), ("FALSITY",FALSITY,DB.Thm),
   ("ETA_THM",ETA_THM,DB.Thm), ("EXCLUDED_MIDDLE",EXCLUDED_MIDDLE,DB.Thm),
   ("BETA_THM",BETA_THM,DB.Thm), ("LET_THM",LET_THM,DB.Thm),
   ("FORALL_THM",FORALL_THM,DB.Thm), ("EXISTS_THM",EXISTS_THM,DB.Thm),
   ("ABS_SIMP",ABS_SIMP,DB.Thm), ("FORALL_SIMP",FORALL_SIMP,DB.Thm),
   ("EXISTS_SIMP",EXISTS_SIMP,DB.Thm),
   ("AND_INTRO_THM",AND_INTRO_THM,DB.Thm), ("AND1_THM",AND1_THM,DB.Thm),
   ("AND2_THM",AND2_THM,DB.Thm), ("CONJ_SYM",CONJ_SYM,DB.Thm),
   ("CONJ_COMM",CONJ_COMM,DB.Thm), ("CONJ_ASSOC",CONJ_ASSOC,DB.Thm),
   ("OR_INTRO_THM1",OR_INTRO_THM1,DB.Thm),
   ("OR_INTRO_THM2",OR_INTRO_THM2,DB.Thm),
   ("OR_ELIM_THM",OR_ELIM_THM,DB.Thm), ("IMP_F",IMP_F,DB.Thm),
   ("F_IMP",F_IMP,DB.Thm), ("NOT_F",NOT_F,DB.Thm),
   ("NOT_AND",NOT_AND,DB.Thm), ("AND_CLAUSES",AND_CLAUSES,DB.Thm),
   ("OR_CLAUSES",OR_CLAUSES,DB.Thm), ("IMP_CLAUSES",IMP_CLAUSES,DB.Thm),
   ("NOT_CLAUSES",NOT_CLAUSES,DB.Thm), ("EQ_REFL",EQ_REFL,DB.Thm),
   ("REFL_CLAUSE",REFL_CLAUSE,DB.Thm), ("EQ_SYM",EQ_SYM,DB.Thm),
   ("EQ_SYM_EQ",EQ_SYM_EQ,DB.Thm), ("EQ_EXT",EQ_EXT,DB.Thm),
   ("FUN_EQ_THM",FUN_EQ_THM,DB.Thm), ("EQ_TRANS",EQ_TRANS,DB.Thm),
   ("BOOL_EQ_DISTINCT",BOOL_EQ_DISTINCT,DB.Thm),
   ("EQ_CLAUSES",EQ_CLAUSES,DB.Thm), ("COND_CLAUSES",COND_CLAUSES,DB.Thm),
   ("COND_ID",COND_ID,DB.Thm), ("SELECT_THM",SELECT_THM,DB.Thm),
   ("SELECT_REFL",SELECT_REFL,DB.Thm),
   ("SELECT_REFL_2",SELECT_REFL_2,DB.Thm),
   ("SELECT_UNIQUE",SELECT_UNIQUE,DB.Thm),
   ("SELECT_ELIM_THM",SELECT_ELIM_THM,DB.Thm),
   ("NOT_FORALL_THM",NOT_FORALL_THM,DB.Thm),
   ("NOT_EXISTS_THM",NOT_EXISTS_THM,DB.Thm),
   ("FORALL_AND_THM",FORALL_AND_THM,DB.Thm),
   ("LEFT_AND_FORALL_THM",LEFT_AND_FORALL_THM,DB.Thm),
   ("RIGHT_AND_FORALL_THM",RIGHT_AND_FORALL_THM,DB.Thm),
   ("EXISTS_OR_THM",EXISTS_OR_THM,DB.Thm),
   ("LEFT_OR_EXISTS_THM",LEFT_OR_EXISTS_THM,DB.Thm),
   ("RIGHT_OR_EXISTS_THM",RIGHT_OR_EXISTS_THM,DB.Thm),
   ("BOTH_EXISTS_AND_THM",BOTH_EXISTS_AND_THM,DB.Thm),
   ("LEFT_EXISTS_AND_THM",LEFT_EXISTS_AND_THM,DB.Thm),
   ("RIGHT_EXISTS_AND_THM",RIGHT_EXISTS_AND_THM,DB.Thm),
   ("BOTH_FORALL_OR_THM",BOTH_FORALL_OR_THM,DB.Thm),
   ("LEFT_FORALL_OR_THM",LEFT_FORALL_OR_THM,DB.Thm),
   ("RIGHT_FORALL_OR_THM",RIGHT_FORALL_OR_THM,DB.Thm),
   ("BOTH_FORALL_IMP_THM",BOTH_FORALL_IMP_THM,DB.Thm),
   ("LEFT_FORALL_IMP_THM",LEFT_FORALL_IMP_THM,DB.Thm),
   ("RIGHT_FORALL_IMP_THM",RIGHT_FORALL_IMP_THM,DB.Thm),
   ("BOTH_EXISTS_IMP_THM",BOTH_EXISTS_IMP_THM,DB.Thm),
   ("LEFT_EXISTS_IMP_THM",LEFT_EXISTS_IMP_THM,DB.Thm),
   ("RIGHT_EXISTS_IMP_THM",RIGHT_EXISTS_IMP_THM,DB.Thm),
   ("OR_IMP_THM",OR_IMP_THM,DB.Thm), ("NOT_IMP",NOT_IMP,DB.Thm),
   ("DISJ_ASSOC",DISJ_ASSOC,DB.Thm), ("DISJ_SYM",DISJ_SYM,DB.Thm),
   ("DISJ_COMM",DISJ_COMM,DB.Thm), ("DE_MORGAN_THM",DE_MORGAN_THM,DB.Thm),
   ("LEFT_AND_OVER_OR",LEFT_AND_OVER_OR,DB.Thm),
   ("RIGHT_AND_OVER_OR",RIGHT_AND_OVER_OR,DB.Thm),
   ("LEFT_OR_OVER_AND",LEFT_OR_OVER_AND,DB.Thm),
   ("RIGHT_OR_OVER_AND",RIGHT_OR_OVER_AND,DB.Thm),
   ("IMP_DISJ_THM",IMP_DISJ_THM,DB.Thm),
   ("DISJ_IMP_THM",DISJ_IMP_THM,DB.Thm),
   ("IMP_CONJ_THM",IMP_CONJ_THM,DB.Thm), ("IMP_F_EQ_F",IMP_F_EQ_F,DB.Thm),
   ("AND_IMP_INTRO",AND_IMP_INTRO,DB.Thm),
   ("EQ_IMP_THM",EQ_IMP_THM,DB.Thm), ("EQ_EXPAND",EQ_EXPAND,DB.Thm),
   ("COND_RATOR",COND_RATOR,DB.Thm), ("COND_RAND",COND_RAND,DB.Thm),
   ("COND_ABS",COND_ABS,DB.Thm), ("COND_EXPAND",COND_EXPAND,DB.Thm),
   ("COND_EXPAND_IMP",COND_EXPAND_IMP,DB.Thm),
   ("COND_EXPAND_OR",COND_EXPAND_OR,DB.Thm),
   ("TYPE_DEFINITION_THM",TYPE_DEFINITION_THM,DB.Thm),
   ("ONTO_THM",ONTO_THM,DB.Thm), ("ONE_ONE_THM",ONE_ONE_THM,DB.Thm),
   ("ABS_REP_THM",ABS_REP_THM,DB.Thm), ("LET_RAND",LET_RAND,DB.Thm),
   ("LET_RATOR",LET_RATOR,DB.Thm),
   ("SWAP_FORALL_THM",SWAP_FORALL_THM,DB.Thm),
   ("SWAP_EXISTS_THM",SWAP_EXISTS_THM,DB.Thm),
   ("EXISTS_UNIQUE_THM",EXISTS_UNIQUE_THM,DB.Thm),
   ("LET_CONG",LET_CONG,DB.Thm), ("IMP_CONG",IMP_CONG,DB.Thm),
   ("AND_CONG",AND_CONG,DB.Thm), ("LEFT_AND_CONG",LEFT_AND_CONG,DB.Thm),
   ("OR_CONG",OR_CONG,DB.Thm), ("LEFT_OR_CONG",LEFT_OR_CONG,DB.Thm),
   ("COND_CONG",COND_CONG,DB.Thm),
   ("RES_FORALL_CONG",RES_FORALL_CONG,DB.Thm),
   ("RES_EXISTS_CONG",RES_EXISTS_CONG,DB.Thm),
   ("MONO_AND",MONO_AND,DB.Thm), ("MONO_OR",MONO_OR,DB.Thm),
   ("MONO_IMP",MONO_IMP,DB.Thm), ("MONO_NOT",MONO_NOT,DB.Thm),
   ("MONO_NOT_EQ",MONO_NOT_EQ,DB.Thm), ("MONO_ALL",MONO_ALL,DB.Thm),
   ("MONO_EXISTS",MONO_EXISTS,DB.Thm), ("MONO_COND",MONO_COND,DB.Thm),
   ("EXISTS_REFL",EXISTS_REFL,DB.Thm),
   ("EXISTS_UNIQUE_REFL",EXISTS_UNIQUE_REFL,DB.Thm),
   ("UNWIND_THM1",UNWIND_THM1,DB.Thm), ("UNWIND_THM2",UNWIND_THM2,DB.Thm),
   ("UNWIND_FORALL_THM1",UNWIND_FORALL_THM1,DB.Thm),
   ("UNWIND_FORALL_THM2",UNWIND_FORALL_THM2,DB.Thm),
   ("SKOLEM_THM",SKOLEM_THM,DB.Thm),
   ("bool_case_thm",bool_case_thm,DB.Thm),
   ("bool_case_ID",bool_case_ID,DB.Thm), ("boolAxiom",boolAxiom,DB.Thm),
   ("bool_INDUCT",bool_INDUCT,DB.Thm),
   ("bool_case_CONG",bool_case_CONG,DB.Thm),
   ("FORALL_BOOL",FORALL_BOOL,DB.Thm),
   ("UEXISTS_OR_THM",UEXISTS_OR_THM,DB.Thm),
   ("UEXISTS_SIMP",UEXISTS_SIMP,DB.Thm),
   ("RES_FORALL_THM",RES_FORALL_THM,DB.Thm),
   ("RES_EXISTS_THM",RES_EXISTS_THM,DB.Thm),
   ("RES_EXISTS_UNIQUE_THM",RES_EXISTS_UNIQUE_THM,DB.Thm),
   ("RES_SELECT_THM",RES_SELECT_THM,DB.Thm),
   ("RES_FORALL_TRUE",RES_FORALL_TRUE,DB.Thm),
   ("RES_EXISTS_FALSE",RES_EXISTS_FALSE,DB.Thm),
   ("BOOL_FUN_CASES_THM",BOOL_FUN_CASES_THM,DB.Thm),
   ("BOOL_FUN_INDUCT",BOOL_FUN_INDUCT,DB.Thm),
   ("literal_case_THM",literal_case_THM,DB.Thm),
   ("literal_case_RAND",literal_case_RAND,DB.Thm),
   ("literal_case_RATOR",literal_case_RATOR,DB.Thm),
   ("literal_case_CONG",literal_case_CONG,DB.Thm),
   ("literal_case_id",literal_case_id,DB.Thm),
   ("BOUNDED_THM",BOUNDED_THM,DB.Thm), ("LCOMM_THM",LCOMM_THM,DB.Thm),
   ("DATATYPE_TAG_THM",DATATYPE_TAG_THM,DB.Thm),
   ("DATATYPE_BOOL",DATATYPE_BOOL,DB.Thm),
   ("ITSELF_UNIQUE",ITSELF_UNIQUE,DB.Thm),
   ("itself_Axiom",itself_Axiom,DB.Thm),
   ("itself_induction",itself_induction,DB.Thm),
   ("PULL_EXISTS",PULL_EXISTS,DB.Thm), ("PULL_FORALL",PULL_FORALL,DB.Thm),
   ("PEIRCE",PEIRCE,DB.Thm), ("JRH_INDUCT_UTIL",JRH_INDUCT_UTIL,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("min_grammars",min_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("T", (Term.prim_mk_const { Name = "T", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("T", (Term.prim_mk_const { Name = "T", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("!", (Term.prim_mk_const { Name = "!", Thy = "bool"}))
  val _ = update_grms (UTOFF (temp_set_fixity "!")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("!", (Term.prim_mk_const { Name = "!", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("?", (Term.prim_mk_const { Name = "?", Thy = "bool"}))
  val _ = update_grms (UTOFF (temp_set_fixity "?")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("?", (Term.prim_mk_const { Name = "?", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/\\", (Term.prim_mk_const { Name = "/\\", Thy = "bool"}))
  val _ = update_grms temp_add_infix ("/\\", 400, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/\\", (Term.prim_mk_const { Name = "/\\", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\\/", (Term.prim_mk_const { Name = "\\/", Thy = "bool"}))
  val _ = update_grms temp_add_infix ("\\/", 300, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\\/", (Term.prim_mk_const { Name = "\\/", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("F", (Term.prim_mk_const { Name = "F", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("F", (Term.prim_mk_const { Name = "F", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "~", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "~", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("?!", (Term.prim_mk_const { Name = "?!", Thy = "bool"}))
  val _ = update_grms (UTOFF (temp_set_fixity "?!")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("?!", (Term.prim_mk_const { Name = "?!", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LET", (Term.prim_mk_const { Name = "LET", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LET", (Term.prim_mk_const { Name = "LET", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COND", (Term.prim_mk_const { Name = "COND", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("COND", (Term.prim_mk_const { Name = "COND", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ONE_ONE", (Term.prim_mk_const { Name = "ONE_ONE", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ONE_ONE", (Term.prim_mk_const { Name = "ONE_ONE", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ONTO", (Term.prim_mk_const { Name = "ONTO", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ONTO", (Term.prim_mk_const { Name = "ONTO", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TYPE_DEFINITION", (Term.prim_mk_const { Name = "TYPE_DEFINITION", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TYPE_DEFINITION", (Term.prim_mk_const { Name = "TYPE_DEFINITION", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "~", fixity = Prefix 900,
pp_elements = [TOK "~"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = " _ let", fixity = Prefix 8,
pp_elements = [TOK "let", BreakSpace(1, 0), TM, BreakSpace(1, 0), TOK "in", BreakSpace(1, 0)],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (INCONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = " _ and", fixity = Infix(HOLgrammars.LEFT, 9),
pp_elements = [TOK "and"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (INCONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "COND", fixity = Prefix 70,
pp_elements = [PPBlock([TOK "if", BreakSpace(1, 2), TM, BreakSpace(1, 0), TOK "then"], (CONSISTENT, 0)), BreakSpace(1, 2), TM, BreakSpace(1, 0), TOK "else", BreakSpace(1, 2)],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ARB", (Term.prim_mk_const { Name = "ARB", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("literal_case", (Term.prim_mk_const { Name = "literal_case", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ARB", (Term.prim_mk_const { Name = "ARB", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("literal_case", (Term.prim_mk_const { Name = "literal_case", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case", (Term.prim_mk_const { Name = "literal_case", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IN", (Term.prim_mk_const { Name = "IN", Thy = "bool"}))
  val _ = update_grms temp_add_infix ("IN", 425, HOLgrammars.NONASSOC)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IN", (Term.prim_mk_const { Name = "IN", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_FORALL", (Term.prim_mk_const { Name = "RES_FORALL", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_FORALL", (Term.prim_mk_const { Name = "RES_FORALL", Thy = "bool"}))
  val _ = update_grms temp_associate_restriction ("!", "RES_FORALL")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS", (Term.prim_mk_const { Name = "RES_EXISTS", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS", (Term.prim_mk_const { Name = "RES_EXISTS", Thy = "bool"}))
  val _ = update_grms temp_associate_restriction ("?", "RES_EXISTS")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS_UNIQUE", (Term.prim_mk_const { Name = "RES_EXISTS_UNIQUE", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS_UNIQUE", (Term.prim_mk_const { Name = "RES_EXISTS_UNIQUE", Thy = "bool"}))
  val _ = update_grms
       temp_associate_restriction
       ("?!", "RES_EXISTS_UNIQUE")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_SELECT", (Term.prim_mk_const { Name = "RES_SELECT", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_SELECT", (Term.prim_mk_const { Name = "RES_SELECT", Thy = "bool"}))
  val _ = update_grms temp_associate_restriction ("@", "RES_SELECT")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BOUNDED", (Term.prim_mk_const { Name = "BOUNDED", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DATATYPE", (Term.prim_mk_const { Name = "DATATYPE", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BOUNDED", (Term.prim_mk_const { Name = "BOUNDED", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DATATYPE", (Term.prim_mk_const { Name = "DATATYPE", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_ABSTRACT", (Term.prim_mk_const { Name = "RES_ABSTRACT", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_ABSTRACT", (Term.prim_mk_const { Name = "RES_ABSTRACT", Thy = "bool"}))
  val _ = update_grms temp_associate_restriction ("\\", "RES_ABSTRACT")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case__magic", (Term.prim_mk_const { Name = "case__magic", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case_split__magic", (Term.prim_mk_const { Name = "case_split__magic", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case_arrow__magic", (Term.prim_mk_const { Name = "case_arrow__magic", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case__magic", (Term.prim_mk_const { Name = "case__magic", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case_split__magic", (Term.prim_mk_const { Name = "case_split__magic", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("case_arrow__magic", (Term.prim_mk_const { Name = "case_arrow__magic", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "case_arrow__magic", fixity = Infix(HOLgrammars.RIGHT, 10),
pp_elements = [HardSpace 1, TOK "=>", BreakSpace(1, 2)],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "case__magic", fixity = Prefix 1,
pp_elements = [PPBlock([TOK "case", BreakSpace(1, 2), TM, BreakSpace(1, 2), TOK "of"], (CONSISTENT, 0)), BreakSpace(1, 2)],
paren_style = Always,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "case__magic", fixity = Prefix 1,
pp_elements = [PPBlock([TOK "case", BreakSpace(1, 2), TM, BreakSpace(1, 2), TOK "of"], (CONSISTENT, 0)), BreakSpace(1, 2), TM, BreakSpace(1, 0), TOK "|", HardSpace 1],
paren_style = Always,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "case__magic", fixity = Prefix 1,
pp_elements = [PPBlock([TOK "case", BreakSpace(1, 2), TM, BreakSpace(1, 2), TOK "of"], (CONSISTENT, 0)), TOK "|", HardSpace 1],
paren_style = Always,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "case__magic", fixity = Prefix 1,
pp_elements = [PPBlock([TOK "case", BreakSpace(1, 2), TM, BreakSpace(1, 2), TOK "of"], (CONSISTENT, 0)), BreakSpace(1, 2), TM, BreakSpace(1, 0), TOK "|", HardSpace 1, TM, BreakSpace(1, 0), TOK "|", HardSpace 1],
paren_style = Always,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms temp_add_type "itself"
  val _ = update_grms temp_add_type "itself"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("the_value", (Term.prim_mk_const { Name = "the_value", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("the_value", (Term.prim_mk_const { Name = "the_value", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("itself_case", (Term.prim_mk_const { Name = "itself_case", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=>", (#2 (parse_from_grammars min_grammars)[QUOTE "($= :bool -> bool -> bool)"]))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<=>"))
       (Infix(HOLgrammars.NONASSOC, 100))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<>", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :'a) (y :'a). bool$~ (x = y)"]))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<>"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NOTIN", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :'a) (y :'a -> bool). bool$~ (bool$IN x y)"]))
  val _ = update_grms
       (UTOFF (temp_set_fixity "NOTIN"))
       (Infix(HOLgrammars.NONASSOC, 425))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=/=>", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :bool) (y :bool). bool$~ (x = y)"]))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<=/=>"))
       (Infix(HOLgrammars.NONASSOC, 100))
  val bool_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bool",
    thydataty = "unicodedata",
    data =
        "U12.\\226\\135\\1463.==>U12.\\226\\136\\1281.!U12.\\226\\136\\1311.?U12.\\226\\136\\1673./\\\\U12.\\226\\136\\1683.\\\\/U13.\\226\\136\\131!2.?!U8.\\194\\1721.~U12.\\226\\136\\1362.INU12.\\226\\135\\1483.<=>R12.\\226\\137\\16012.\\226\\137\\160G12.\\226\\137\\160OCI0.IN450.H1.RK12.\\226\\137\\160S1.0.XNO12.\\226\\137\\16033.\\\\(x :'a) (y :'a). bool$~ (x = y)U12.\\226\\136\\1375.NOTINU12.\\226\\135\\1425.<=/=>"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bool",
    thydataty = "TexTokenMap",
    data =
        "3.==>15.\\\\HOLTokenImp{}1.12.\\226\\135\\14615.\\\\HOLTokenImp{}1.2.\\\\18.\\\\HOLTokenLambda{}1.8.\\206\\18718.\\\\HOLTokenLambda{}1.1.@19.\\\\HOLTokenHilbert{}1.2.<|19.\\\\HOLTokenLeftrec{}2.2.|>20.\\\\HOLTokenRightrec{}2.4.case18.\\\\HOLKeyword{case}4.2.of16.\\\\HOLKeyword{of}2.2.=>15.\\\\HOLTokenImp{}1.3.let17.\\\\HOLKeyword{let}3.3.and17.\\\\HOLKeyword{and}2.2.in16.\\\\HOLKeyword{in}2.2.if16.\\\\HOLKeyword{if}2.4.then18.\\\\HOLKeyword{then}4.4.else18.\\\\HOLKeyword{else}4.1.!18.\\\\HOLTokenForall{}1.12.\\226\\136\\12818.\\\\HOLTokenForall{}1.1.?18.\\\\HOLTokenExists{}1.12.\\226\\136\\13118.\\\\HOLTokenExists{}1.3./\\\\16.\\\\HOLTokenConj{}1.12.\\226\\136\\16716.\\\\HOLTokenConj{}1.3.\\\\/16.\\\\HOLTokenDisj{}1.12.\\226\\136\\16816.\\\\HOLTokenDisj{}1.2.?!18.\\\\HOLTokenUnique{}2.13.\\226\\136\\131!18.\\\\HOLTokenUnique{}2.1.~15.\\\\HOLTokenNeg{}1.8.\\194\\17215.\\\\HOLTokenNeg{}1.2.IN14.\\\\HOLTokenIn{}1.12.\\226\\136\\13614.\\\\HOLTokenIn{}1.3.<=>17.\\\\HOLTokenEquiv{}2.12.\\226\\135\\14817.\\\\HOLTokenEquiv{}2.2.<>20.\\\\HOLTokenNotEqual{}1.12.\\226\\137\\16020.\\\\HOLTokenNotEqual{}1.5.NOTIN17.\\\\HOLTokenNotIn{}1.12.\\226\\136\\13717.\\\\HOLTokenNotIn{}1.5.<=/=>20.\\\\HOLTokenNotEquiv{}2.12.\\226\\135\\14220.\\\\HOLTokenNotEquiv{}2."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bool",
    thydataty = "OpenTheoryMap",
    data =
        "2.->3.min3.fun4.bool3.min4.bool3.ind3.min3.ind 1.=3.min1.=6.select3.min1.@13.Data.Bool.==>3.min3.==>11.Data.Bool.T4.bool1.T11.Data.Bool.!4.bool1.!11.Data.Bool.?4.bool1.?15.Data.Bool./\\\\\\\\4.bool3./\\\\15.Data.Bool.\\\\\\\\/4.bool3.\\\\/11.Data.Bool.F4.bool1.F11.Data.Bool.~4.bool1.~12.Data.Bool.?!4.bool2.?!13.Data.Bool.let4.bool3.LET14.Data.Bool.cond4.bool4.COND18.Function.injective4.bool7.ONE_ONE19.Function.surjective4.bool4.ONTO20.HOL4.TYPE_DEFINITION4.bool15.TYPE_DEFINITION13.HOL4.DATATYPE4.bool8.DATATYPE13.Data.Bool.arb4.bool3.ARB17.HOL4.literal_case4.bool12.literal_case10.Set.member4.bool2.IN12.HOL4.bounded4.bool7.BOUNDED"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "bool"
end
