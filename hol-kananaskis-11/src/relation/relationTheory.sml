structure relationTheory :> relationTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading relationTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open combinTheory normalFormsTheory satTheory
  in end;
  val _ = Theory.link_parents
          ("relation",
          Arbnum.fromString "1488585979",
          Arbnum.fromString "52748")
          [("normalForms",
           Arbnum.fromString "1488585933",
           Arbnum.fromString "503437"),
           ("combin",
           Arbnum.fromString "1488585922",
           Arbnum.fromString "652622"),
           ("sat",
           Arbnum.fromString "1488585914",
           Arbnum.fromString "868419")];
  val _ = Theory.incorporate_types "relation" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"),
   ID("min", "@"), ID("bool", "ARB"), ID("bool", "COND"),
   ID("relation", "CR"), ID("relation", "EMPTY_REL"),
   ID("relation", "EQC"), ID("bool", "F"), ID("combin", "I"),
   ID("relation", "IDEM"), ID("bool", "IN"),
   ID("relation", "INDUCTIVE_INVARIANT"),
   ID("relation", "INDUCTIVE_INVARIANT_ON"), ID("relation", "INVOL"),
   ID("relation", "LinearOrder"), ID("relation", "O"),
   ID("relation", "Order"), ID("relation", "PreOrder"),
   ID("relation", "RC"), ID("relation", "RCOMPL"), ID("relation", "RDOM"),
   ID("relation", "RDOM_DELETE"), ID("relation", "RESTRICT"),
   ID("relation", "RINTER"), ID("relation", "RRANGE"),
   ID("relation", "RRESTRICT"), ID("relation", "RSUBSET"),
   ID("relation", "RTC"), ID("relation", "RUNION"),
   ID("relation", "RUNIV"), ID("relation", "SC"), ID("relation", "SN"),
   ID("relation", "STRORD"), ID("relation", "StrongLinearOrder"),
   ID("relation", "StrongOrder"), ID("bool", "T"), ID("relation", "TC"),
   ID("relation", "WCR"), ID("relation", "WF"), ID("relation", "WFP"),
   ID("relation", "WFREC"), ID("relation", "WeakLinearOrder"),
   ID("relation", "WeakOrder"), ID("bool", "\\/"),
   ID("relation", "antisymmetric"), ID("relation", "approx"),
   ID("relation", "diag"), ID("relation", "diamond"),
   ID("relation", "equivalence"), ID("relation", "inv"),
   ID("relation", "inv_image"), ID("relation", "irreflexive"),
   ID("relation", "nf"), ID("combin", "o"), ID("relation", "rcdiamond"),
   ID("relation", "reflexive"), ID("relation", "symmetric"),
   ID("relation", "the_fun"), ID("relation", "total"),
   ID("relation", "transitive"), ID("relation", "trichotomous"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [0, 3, 0],
   TYV "'b", TYOP [0, 1, 5], TYOP [0, 1, 6], TYOP [0, 6, 6],
   TYOP [0, 8, 7], TYOP [0, 3, 9], TYOP [0, 5, 0], TYOP [0, 1, 11],
   TYOP [0, 12, 2], TYOP [0, 6, 3], TYOP [0, 5, 11], TYOP [0, 15, 14],
   TYOP [0, 3, 3], TYOP [0, 2, 3], TYOP [0, 6, 0], TYOP [0, 1, 19],
   TYOP [0, 8, 20], TYOP [0, 3, 21], TYV "'g", TYOP [0, 23, 0],
   TYOP [0, 23, 24], TYOP [0, 25, 0], TYOP [0, 8, 6], TYOP [0, 3, 27],
   TYOP [0, 3, 2], TYOP [0, 12, 12], TYOP [0, 12, 30], TYOP [0, 12, 0],
   TYOP [0, 12, 32], TYOP [0, 2, 12], TYOP [0, 12, 34], TYOP [0, 12, 11],
   TYOP [0, 3, 7], TYOP [0, 6, 37], TYOP [0, 1, 12], TYOP [0, 12, 39],
   TYV "'k", TYOP [0, 41, 0], TYOP [0, 23, 42], TYV "'h", TYOP [0, 44, 0],
   TYOP [0, 23, 45], TYOP [0, 46, 43], TYOP [0, 44, 42], TYOP [0, 48, 47],
   TYV "'z", TYOP [0, 50, 50], TYOP [0, 51, 0], TYOP [0, 8, 0],
   TYOP [0, 12, 53], TYOP [0, 2, 54], TYOP [0, 3, 55], TYOP [0, 3, 54],
   TYOP [0, 5, 2], TYV "'c", TYOP [0, 59, 11], TYOP [0, 59, 0], TYV "'d",
   TYOP [0, 62, 61], TYOP [0, 62, 0], TYOP [0, 1, 64], TYOP [0, 59, 2],
   TYOP [0, 1, 1], TYOP [0, 5, 1], TYOP [0, 2, 0], TYOP [0, 11, 0],
   TYOP [0, 24, 0], TYOP [0, 42, 0], TYOP [0, 50, 0], TYOP [0, 73, 0],
   TYOP [0, 19, 0], TYOP [0, 69, 0], TYOP [0, 4, 0], TYOP [0, 32, 0],
   TYOP [0, 68, 0], TYOP [0, 79, 0], TYOP [0, 15, 0], TYOP [0, 81, 0],
   TYOP [0, 26, 0], TYOP [0, 46, 0], TYOP [0, 84, 0], TYOP [0, 48, 0],
   TYOP [0, 86, 0], TYOP [0, 52, 0], TYOP [0, 53, 0], TYOP [0, 0, 0],
   TYOP [0, 0, 90], TYOP [0, 50, 73], TYOP [0, 6, 19], TYOP [0, 2, 69],
   TYOP [0, 3, 4], TYOP [0, 51, 52], TYOP [0, 45, 0], TYOP [0, 19, 6],
   TYOP [0, 5, 5], TYOP [0, 5, 99], TYOP [0, 0, 100], TYOP [0, 17, 0],
   TYOP [0, 1, 69], TYOP [0, 90, 0], TYOP [0, 3, 17], TYOP [0, 3, 12],
   TYOP [0, 12, 106], TYOP [0, 66, 60], TYOP [0, 12, 108],
   TYOP [0, 15, 30], TYOP [0, 1, 61], TYOP [0, 111, 12], TYOP [0, 60, 112],
   TYOP [0, 62, 11], TYOP [0, 63, 114], TYOP [0, 60, 115],
   TYOP [0, 65, 12], TYOP [0, 114, 117], TYOP [0, 65, 111],
   TYOP [0, 63, 119], TYOP [0, 58, 2], TYOP [0, 66, 0], TYOP [0, 66, 122],
   TYOP [0, 60, 0], TYOP [0, 60, 124], TYOP [0, 33, 0], TYOP [0, 68, 15],
   TYOP [0, 3, 127], TYOP [0, 51, 51], TYOP [0, 51, 129]]
  end
  val _ = Theory.incorporate_consts "relation" tyvector
     [("trichotomous", 4), ("transitive", 4), ("total", 4),
      ("the_fun", 10), ("symmetric", 4), ("reflexive", 4),
      ("rcdiamond", 4), ("nf", 13), ("irreflexive", 4), ("inv_image", 16),
      ("inv", 17), ("equivalence", 4), ("diamond", 4), ("diag", 18),
      ("approx", 22), ("antisymmetric", 4), ("WeakOrder", 26),
      ("WeakLinearOrder", 4), ("WFREC", 28), ("WFP", 29), ("WF", 4),
      ("WCR", 4), ("TC", 17), ("StrongOrder", 26),
      ("StrongLinearOrder", 4), ("STRORD", 17), ("SN", 4), ("SC", 17),
      ("RUNIV", 12), ("RUNION", 31), ("RTC", 17), ("RSUBSET", 33),
      ("RRESTRICT", 35), ("RRANGE", 36), ("RINTER", 31), ("RESTRICT", 38),
      ("RDOM_DELETE", 40), ("RDOM", 13), ("RCOMPL", 30), ("RC", 17),
      ("PreOrder", 4), ("Order", 26), ("O", 49), ("LinearOrder", 4),
      ("INVOL", 52), ("INDUCTIVE_INVARIANT_ON", 56),
      ("INDUCTIVE_INVARIANT", 57), ("IDEM", 52), ("EQC", 17),
      ("EMPTY_REL", 3), ("CR", 4)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 2), TMV("B", 2), TMV("D", 2), TMV("M", 8), TMV("P", 2),
   TMV("P", 3), TMV("P", 12), TMV("Q", 3), TMV("Q", 15), TMV("R", 3),
   TMV("R", 12), TMV("R", 58), TMV("R", 15), TMV("R'", 3), TMV("R1", 3),
   TMV("R1", 12), TMV("R1", 60), TMV("R1", 48), TMV("R2", 3),
   TMV("R2", 12), TMV("R2", 63), TMV("R2", 46), TMV("R3", 12),
   TMV("R3", 65), TMV("S1", 66), TMV("S2", 66), TMV("Z", 25), TMV("a", 1),
   TMV("a", 50), TMV("b", 1), TMV("b", 50), TMV("f", 67), TMV("f", 6),
   TMV("f", 68), TMV("f", 51), TMV("k", 1), TMV("min", 1), TMV("s", 2),
   TMV("u", 1), TMV("v", 1), TMV("v", 5), TMV("w", 1), TMV("x", 1),
   TMV("x", 5), TMV("x", 23), TMV("x", 50), TMV("y", 1), TMV("y", 5),
   TMV("y", 44), TMV("y", 12), TMV("z", 1), TMV("z", 41), TMV("z", 12),
   TMC(2, 69), TMC(2, 70), TMC(2, 71), TMC(2, 72), TMC(2, 74), TMC(2, 75),
   TMC(2, 76), TMC(2, 77), TMC(2, 78), TMC(2, 80), TMC(2, 82), TMC(2, 83),
   TMC(2, 85), TMC(2, 87), TMC(2, 88), TMC(2, 89), TMC(3, 91), TMC(4, 3),
   TMC(4, 15), TMC(4, 92), TMC(4, 91), TMC(4, 93), TMC(4, 94), TMC(4, 95),
   TMC(4, 33), TMC(4, 96), TMC(5, 91), TMC(6, 69), TMC(6, 70), TMC(6, 97),
   TMC(7, 75), TMC(8, 98), TMC(9, 5), TMC(10, 101), TMC(11, 4), TMC(12, 3),
   TMC(13, 17), TMC(14, 0), TMC(15, 51), TMC(16, 52), TMC(16, 102),
   TMC(17, 103), TMC(18, 57), TMC(19, 56), TMC(20, 52), TMC(20, 104),
   TMC(20, 102), TMC(21, 4), TMC(22, 105), TMC(22, 107), TMC(22, 109),
   TMC(22, 110), TMC(22, 113), TMC(22, 116), TMC(22, 118), TMC(22, 120),
   TMC(22, 49), TMC(23, 4), TMC(23, 26), TMC(24, 4), TMC(25, 17),
   TMC(26, 17), TMC(26, 30), TMC(27, 13), TMC(28, 40), TMC(29, 38),
   TMC(30, 105), TMC(30, 31), TMC(31, 36), TMC(31, 121), TMC(32, 35),
   TMC(33, 95), TMC(33, 33), TMC(33, 123), TMC(33, 125), TMC(34, 17),
   TMC(35, 105), TMC(35, 31), TMC(36, 12), TMC(37, 17), TMC(38, 4),
   TMC(39, 17), TMC(40, 4), TMC(41, 4), TMC(41, 26), TMC(42, 0),
   TMC(43, 17), TMC(44, 4), TMC(45, 4), TMC(45, 81), TMC(46, 29),
   TMC(47, 28), TMC(48, 4), TMC(49, 4), TMC(49, 26), TMC(49, 126),
   TMC(50, 91), TMC(51, 4), TMC(51, 26), TMC(51, 126), TMC(52, 22),
   TMC(53, 18), TMC(54, 4), TMC(55, 4), TMC(56, 17), TMC(57, 128),
   TMC(57, 16), TMC(58, 4), TMC(58, 26), TMC(59, 13), TMC(60, 130),
   TMC(61, 4), TMC(62, 4), TMC(62, 81), TMC(62, 26), TMC(63, 4),
   TMC(63, 81), TMC(64, 10), TMC(65, 4), TMC(65, 81), TMC(66, 4),
   TMC(66, 81), TMC(66, 26), TMC(67, 4), TMC(68, 90)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op transitive_def x = x
    val op transitive_def =
    DT(((("relation",0),[]),[]),
       [read"%60%9%73%173$0@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@|@"])
  fun op reflexive_def x = x
    val op reflexive_def =
    DT(((("relation",1),[]),[]),
       [read"%60%9%73%165$0@@%53%42$1$0@$0@|@@|@"])
  fun op irreflexive_def x = x
    val op irreflexive_def =
    DT(((("relation",2),[]),[]),
       [read"%60%9%73%160$0@@%53%42%177$1$0@$0@@|@@|@"])
  fun op symmetric_def x = x
    val op symmetric_def =
    DT(((("relation",3),[]),[]),
       [read"%60%9%73%168$0@@%53%42%53%46%73$2$1@$0@@$2$0@$1@@|@|@@|@"])
  fun op antisymmetric_def x = x
    val op antisymmetric_def =
    DT(((("relation",4),[]),[]),
       [read"%60%9%73%150$0@@%53%42%53%46%79%69$2$1@$0@@$2$0@$1@@@%70$1@$0@@|@|@@|@"])
  fun op equivalence_def x = x
    val op equivalence_def =
    DT(((("relation",5),[]),[]),
       [read"%60%9%73%156$0@@%69%165$0@@%69%168$0@@%173$0@@@@|@"])
  fun op total_def x = x
    val op total_def =
    DT(((("relation",6),[]),[]),
       [read"%60%9%73%171$0@@%53%42%53%46%149$2$1@$0@@$2$0@$1@@|@|@@|@"])
  fun op trichotomous x = x
    val op trichotomous =
    DT(((("relation",7),[]),[]),
       [read"%60%9%73%176$0@@%53%27%53%29%149$2$1@$0@@%149$2$0@$1@@%70$1@$0@@@|@|@@|@"])
  fun op TC_DEF x = x
    val op TC_DEF =
    DT(((("relation",8),[]),[]),
       [read"%60%9%53%27%53%29%73%139$2@$1@$0@@%60%5%79%69%53%42%53%46%79$5$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@$0$2@$1@@|@@|@|@|@"])
  fun op RTC_DEF x = x
    val op RTC_DEF =
    DT(((("relation",9),[]),[]),
       [read"%60%9%53%27%53%29%73%128$2@$1@$0@@%60%5%79%69%53%42$1$0@$0@|@@%53%42%53%46%53%50%79%69$6$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@$0$2@$1@@|@@|@|@|@"])
  fun op RC_DEF x = x
    val op RC_DEF =
    DT(((("relation",10),[]),[]),
       [read"%60%9%53%42%53%46%73%113$2@$1@$0@@%149%70$1@$0@@$2$1@$0@@@|@|@|@"])
  fun op SC_DEF x = x
    val op SC_DEF =
    DT(((("relation",11),[]),[]),
       [read"%60%9%53%42%53%46%73%132$2@$1@$0@@%149$2$1@$0@@$2$0@$1@@@|@|@|@"])
  fun op EQC_DEF x = x
    val op EQC_DEF =
    DT(((("relation",12),[]),[]),
       [read"%60%9%76%89$0@@%113%139%132$0@@@@|@"])
  fun op WF_DEF x = x
    val op WF_DEF =
    DT(((("relation",100),[]),[]),
       [read"%60%9%73%141$0@@%59%1%79%80%41$1$0@|@@%80%36%69$1$0@@%53%29%79$3$0@$1@@%177$2$0@@@|@@|@@|@@|@"])
  fun op EMPTY_REL_DEF x = x
    val op EMPTY_REL_DEF =
    DT(((("relation",106),[]),[]),
       [read"%53%42%53%46%73%88$1@$0@@%90@|@|@"])
  fun op inv_image_def x = x
    val op inv_image_def =
    DT(((("relation",113),[]),[]),
       [read"%63%12%58%32%76%159$1@$0@@%42%46$3$2$1@@$2$0@@||@|@|@"])
  fun op RESTRICT_DEF x = x
    val op RESTRICT_DEF =
    DT(((("relation",120),[]),[]),
       [read"%58%32%60%9%53%42%74%118$2@$1@$0@@%46%86$2$0@$1@@$3$0@@%85@|@|@|@|@"])
  fun op approx_def x = x
    val op approx_def =
    DT(((("relation",122),[]),[]),
       [read"%60%9%68%3%53%42%58%32%73%153$3@$2@$1@$0@@%74$0@%118%46$3%118$1@$4@$0@@$0@|@$3@$1@@@|@|@|@|@"])
  fun op the_fun_def x = x
    val op the_fun_def =
    DT(((("relation",123),[]),[]),
       [read"%60%9%68%3%53%42%74%170$2@$1@$0@@%84%32%153$3@$2@$1@$0@|@@|@|@|@"])
  fun op WFREC_DEF x = x
    val op WFREC_DEF =
    DT(((("relation",124),[]),[]),
       [read"%60%9%68%3%74%144$1@$0@@%42$1%118%170%139$2@@%32%39$3%118$1@$4@$0@@$0@||@$0@@$2@$0@@$0@|@|@|@"])
  fun op WFP_DEF x = x
    val op WFP_DEF =
    DT(((("relation",128),[]),[]),
       [read"%60%9%53%27%73%143$1@$0@@%59%4%79%53%42%79%53%46%79$4$0@$1@@$2$0@@|@@$1$0@@|@@$0$1@@|@@|@|@"])
  fun op INDUCTIVE_INVARIANT_DEF x = x
    val op INDUCTIVE_INVARIANT_DEF =
    DT(((("relation",134),[]),[]),
       [read"%60%9%61%6%68%3%73%95$2@$1@$0@@%58%32%53%42%79%53%46%79$5$0@$1@@$4$0@$2$0@@@|@@$3$0@$2$1@$0@@@|@|@@|@|@|@"])
  fun op INDUCTIVE_INVARIANT_ON_DEF x = x
    val op INDUCTIVE_INVARIANT_ON_DEF =
    DT(((("relation",135),[]),[]),
       [read"%60%9%59%2%61%6%68%3%73%96$3@$2@$1@$0@@%58%32%53%42%79%69$4$0@@%53%46%79$5$0@@%79$6$0@$1@@$4$0@$2$0@@@@|@@@$3$0@$2$1@$0@@@|@|@@|@|@|@|@"])
  fun op inv_DEF x = x
    val op inv_DEF =
    DT(((("relation",140),[]),[]),
       [read"%60%9%53%42%53%46%73%157$2@$1@$0@@$2$0@$1@@|@|@|@"])
  fun op INVOL_DEF x = x
    val op INVOL_DEF =
    DT(((("relation",154),[]),[]),
       [read"%67%34%73%97$0@@%78%163$0@$0@@%91@@|@"])
  fun op IDEM_DEF x = x
    val op IDEM_DEF =
    DT(((("relation",159),[]),[]),
       [read"%67%34%73%92$0@@%78%163$0@$0@@$0@@|@"])
  fun op O_DEF x = x
    val op O_DEF =
    DT(((("relation",162),[]),[]),
       [read"%66%17%65%21%55%44%56%51%73%109$3@$2@$1@$0@@%82%48%69$3$2@$0@@$4$0@$1@@|@@|@|@|@|@"])
  fun op RSUBSET x = x
    val op RSUBSET =
    DT(((("relation",164),[]),[]),
       [read"%61%15%61%19%73%125$1@$0@@%53%42%54%47%79$3$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op RUNION x = x
    val op RUNION =
    DT(((("relation",166),[]),[]),
       [read"%61%15%61%19%53%42%54%47%73%130$3@$2@$1@$0@@%149$3$1@$0@@$2$1@$0@@@|@|@|@|@"])
  fun op RINTER x = x
    val op RINTER =
    DT(((("relation",169),[]),[]),
       [read"%61%15%61%19%53%42%54%47%73%120$3@$2@$1@$0@@%69$3$1@$0@@$2$1@$0@@@|@|@|@|@"])
  fun op RCOMPL x = x
    val op RCOMPL =
    DT(((("relation",174),[]),[]),
       [read"%61%10%53%42%54%47%73%115$2@$1@$0@@%177$2$1@$0@@@|@|@|@"])
  fun op PreOrder x = x
    val op PreOrder =
    DT(((("relation",178),[]),[]),
       [read"%60%9%73%112$0@@%69%165$0@@%173$0@@@|@"])
  fun op Order x = x
    val op Order =
    DT(((("relation",179),[]),[]),
       [read"%64%26%73%111$0@@%69%151$0@@%175$0@@@|@"])
  fun op WeakOrder x = x
    val op WeakOrder =
    DT(((("relation",180),[]),[]),
       [read"%64%26%73%147$0@@%69%167$0@@%69%151$0@@%175$0@@@@|@"])
  fun op StrongOrder x = x
    val op StrongOrder =
    DT(((("relation",181),[]),[]),
       [read"%64%26%73%137$0@@%69%161$0@@%175$0@@@|@"])
  fun op STRORD x = x
    val op STRORD =
    DT(((("relation",190),[]),[]),
       [read"%60%9%53%27%53%29%73%134$2@$1@$0@@%69$2$1@$0@@%177%70$1@$0@@@@|@|@|@"])
  fun op LinearOrder x = x
    val op LinearOrder =
    DT(((("relation",204),[]),[]),
       [read"%60%9%73%100$0@@%69%110$0@@%176$0@@@|@"])
  fun op StrongLinearOrder x = x
    val op StrongLinearOrder =
    DT(((("relation",205),[]),[]),
       [read"%60%9%73%135$0@@%69%136$0@@%176$0@@@|@"])
  fun op WeakLinearOrder x = x
    val op WeakLinearOrder =
    DT(((("relation",206),[]),[]),
       [read"%60%9%73%145$0@@%69%146$0@@%176$0@@@|@"])
  fun op diag_def x = x
    val op diag_def =
    DT(((("relation",208),[]),[]),
       [read"%59%0%53%42%53%46%73%154$2@$1@$0@@%69%70$1@$0@@%94$1@$2@@@|@|@|@"])
  fun op RDOM_DEF x = x
    val op RDOM_DEF =
    DT(((("relation",215),[]),[]),
       [read"%61%10%53%42%73%116$1@$0@@%81%47$2$1@$0@|@@|@|@"])
  fun op RRANGE x = x
    val op RRANGE =
    DT(((("relation",217),[]),[]),
       [read"%61%10%54%47%73%121$1@$0@@%80%42$2$0@$1@|@@|@|@"])
  fun op RUNIV x = x
    val op RUNIV =
    DT(((("relation",220),[]),[]),
       [read"%53%42%54%47%73%131$1@$0@@%138@|@|@"])
  fun op RRESTRICT_DEF x = x
    val op RRESTRICT_DEF =
    DT(((("relation",223),[]),[]),
       [read"%61%10%59%37%53%42%54%47%73%123$3@$2@$1@$0@@%69$3$1@$0@@%94$1@$2@@@|@|@|@|@"])
  fun op RDOM_DELETE_DEF x = x
    val op RDOM_DELETE_DEF =
    DT(((("relation",225),[]),[]),
       [read"%61%10%53%42%53%38%54%40%73%117$3@$2@$1@$0@@%69$3$1@$0@@%177%70$1@$2@@@@|@|@|@|@"])
  fun op diamond_def x = x
    val op diamond_def =
    DT(((("relation",227),[]),[]),
       [read"%60%9%73%155$0@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$2@$0@@@%80%38%69$4$2@$0@@$4$1@$0@@|@@|@|@|@@|@"])
  fun op rcdiamond_def x = x
    val op rcdiamond_def =
    DT(((("relation",228),[]),[]),
       [read"%60%9%73%164$0@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$2@$0@@@%80%38%69%113$4@$2@$0@@%113$4@$1@$0@@|@@|@|@|@@|@"])
  fun op CR_def x = x
    val op CR_def =
    DT(((("relation",229),[]),[]), [read"%60%9%73%87$0@@%155%128$0@@@|@"])
  fun op WCR_def x = x
    val op WCR_def =
    DT(((("relation",230),[]),[]),
       [read"%60%9%73%140$0@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$2@$0@@@%80%38%69%128$4@$2@$0@@%128$4@$1@$0@@|@@|@|@|@@|@"])
  fun op SN_def x = x
    val op SN_def =
    DT(((("relation",231),[]),[]), [read"%60%9%73%133$0@@%141%157$0@@@|@"])
  fun op nf_def x = x
    val op nf_def =
    DT(((("relation",232),[]),[]),
       [read"%61%10%53%42%73%162$1@$0@@%54%47%177$2$1@$0@@|@@|@|@"])
  fun op SC_SYMMETRIC x = x
    val op SC_SYMMETRIC =
    DT(((("relation",13),
        [("bool",[25,26,47,48,53,54,63,71]),("relation",[3,11]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%168%132$0@@|@"])
  fun op TC_TRANSITIVE x = x
    val op TC_TRANSITIVE =
    DT(((("relation",14),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,76,77,78,93,94,96,146]),
         ("combin",[19]),("relation",[0,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%173%139$0@@|@"])
  fun op RTC_INDUCT x = x
    val op RTC_INDUCT =
    DT(((("relation",15),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,76,77,78,80,81,93,94,96,
          146]),("combin",[19]),("relation",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42$1$0@$0@|@@%53%42%53%46%53%50%79%69$4$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@%53%42%53%46%79%128$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_RULES x = x
    val op TC_RULES =
    DT(((("relation",16),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,72,76,77,78,93,94,96,146]),
         ("combin",[19]),("relation",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%53%42%53%46%79$2$1@$0@@%139$2@$1@$0@@|@|@@%53%42%53%46%53%50%79%69%139$3@$2@$1@@%139$3@$1@$0@@@%139$3@$2@$0@@|@|@|@@|@"])
  fun op RTC_RULES x = x
    val op RTC_RULES =
    DT(((("relation",17),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,73,76,77,78,80,81,93,94,96,
          146]),("combin",[19]),("relation",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%53%42%128$1@$0@$0@|@@%53%42%53%46%53%50%79%69$3$2@$1@@%128$3@$1@$0@@@%128$3@$2@$0@@|@|@|@@|@"])
  fun op RTC_REFL x = x
    val op RTC_REFL =
    DT(((("relation",18),
        [("bool",[25,63]),("relation",[17])]),["DISK_THM"]),
       [read"%128%9@%42@%42@"])
  fun op RTC_SINGLE x = x
    val op RTC_SINGLE =
    DT(((("relation",19),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,93,94,96]),
         ("combin",[19]),("relation",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79$2$1@$0@@%128$2@$1@$0@@|@|@|@"])
  fun op RTC_STRONG_INDUCT x = x
    val op RTC_STRONG_INDUCT =
    DT(((("relation",20),
        [("bool",[25,26,36,47,48,51,53,54,56,58,63,73,93,94,96,105,124]),
         ("combin",[19]),("relation",[15,17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42$1$0@$0@|@@%53%42%53%46%53%50%79%69$4$2@$1@@%69%128$4@$1@$0@@$3$1@$0@@@@$3$2@$0@@|@|@|@@@%53%42%53%46%79%128$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op RTC_RTC x = x
    val op RTC_RTC =
    DT(((("relation",21),
        [("bool",[25,26,36,47,48,51,53,54,56,58,63,71,73,81,93,94,96]),
         ("combin",[19]),("relation",[17,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79%128$2@$1@$0@@%53%50%79%128$3@$1@$0@@%128$3@$2@$0@@|@@|@|@|@"])
  fun op RTC_TRANSITIVE x = x
    val op RTC_TRANSITIVE =
    DT(((("relation",22),
        [("bool",[25,26,47,48,53,54,58,63,71,84,93,94,96]),
         ("relation",[0,21]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%173%128$0@@|@"])
  fun op transitive_RTC x = x
    val op transitive_RTC =
    DT(((("relation",23),[("relation",[22])]),["DISK_THM"]),
       [read"%60%9%173%128$0@@|@"])
  fun op RTC_REFLEXIVE x = x
    val op RTC_REFLEXIVE =
    DT(((("relation",24),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,75,78,80,84,93,146]),
         ("combin",[19]),("relation",[1,17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%165%128$0@@|@"])
  fun op reflexive_RTC x = x
    val op reflexive_RTC =
    DT(((("relation",25),[("relation",[24])]),["DISK_THM"]),
       [read"%60%9%165%128$0@@|@"])
  fun op RC_REFLEXIVE x = x
    val op RC_REFLEXIVE =
    DT(((("relation",26),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          94,146]),("combin",[19]),("relation",[1,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%165%113$0@@|@"])
  fun op reflexive_RC x = x
    val op reflexive_RC =
    DT(((("relation",27),[("relation",[26])]),["DISK_THM"]),
       [read"%60%9%165%113$0@@|@"])
  fun op RC_lifts_monotonicities x = x
    val op RC_lifts_monotonicities =
    DT(((("relation",28),
        [("bool",[25,53,54,55,63,99]),("relation",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%9%31$1@@%31$0@@@|@|@@%53%42%53%46%79%113%9@$1@$0@@%113%9@%31$1@@%31$0@@@|@|@@"])
  fun op RC_MONOTONE x = x
    val op RC_MONOTONE =
    DT(((("relation",29),
        [("bool",[25,52,56,63]),("relation",[10])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%7$1@$0@@|@|@@%79%113%9@%42@%46@@%113%7@%42@%46@@@"])
  fun op RC_lifts_invariants x = x
    val op RC_lifts_invariants =
    DT(((("relation",30),
        [("bool",[25,53,54,63,99]),("relation",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%69%4$1@@%9$1@$0@@@%4$0@@|@|@@%53%42%53%46%79%69%4$1@@%113%9@$1@$0@@@%4$0@@|@|@@"])
  fun op RC_lifts_equalities x = x
    val op RC_lifts_equalities =
    DT(((("relation",31),
        [("bool",[25,53,54,55,63,99]),("relation",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%71%32$1@@%32$0@@@|@|@@%53%42%53%46%79%113%9@$1@$0@@%71%32$1@@%32$0@@@|@|@@"])
  fun op SC_lifts_monotonicities x = x
    val op SC_lifts_monotonicities =
    DT(((("relation",32),
        [("bool",[25,53,54,63,99]),("relation",[11]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%9%31$1@@%31$0@@@|@|@@%53%42%53%46%79%132%9@$1@$0@@%132%9@%31$1@@%31$0@@@|@|@@"])
  fun op SC_lifts_equalities x = x
    val op SC_lifts_equalities =
    DT(((("relation",33),
        [("bool",[25,53,54,63,99]),("relation",[11]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%71%32$1@@%32$0@@@|@|@@%53%42%53%46%79%132%9@$1@$0@@%71%32$1@@%32$0@@@|@|@@"])
  fun op SC_MONOTONE x = x
    val op SC_MONOTONE =
    DT(((("relation",34),
        [("bool",[25,52,63]),("relation",[11])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%7$1@$0@@|@|@@%79%132%9@%42@%46@@%132%7@%42@%46@@@"])
  fun op symmetric_RC x = x
    val op symmetric_RC =
    DT(((("relation",35),
        [("bool",[13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("relation",[3,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%73%168%113$0@@@%168$0@@|@"])
  fun op antisymmetric_RC x = x
    val op antisymmetric_RC =
    DT(((("relation",36),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,76,80,81,93,94,
          96,105,124]),("relation",[4,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%150%113$0@@@%150$0@@|@"])
  fun op transitive_RC x = x
    val op transitive_RC =
    DT(((("relation",37),
        [("bool",[25,26,47,48,52,53,54,56,58,63,93,94,96,105,124]),
         ("relation",[0,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%173$0@@%173%113$0@@@|@"])
  fun op TC_SUBSET x = x
    val op TC_SUBSET =
    DT(((("relation",38),
        [("bool",[25,26,47,48,53,54,58,63,71,81,93,94]),("relation",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79$2$1@$0@@%139$2@$1@$0@@|@|@|@"])
  fun op RTC_SUBSET x = x
    val op RTC_SUBSET =
    DT(((("relation",39),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,93,94,96]),
         ("combin",[19]),("relation",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79$2$1@$0@@%128$2@$1@$0@@|@|@|@"])
  fun op RC_SUBSET x = x
    val op RC_SUBSET =
    DT(((("relation",40),
        [("bool",[25,26,36,43,47,48,53,54,56,58,63,71]),("combin",[19]),
         ("relation",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79$2$1@$0@@%113$2@$1@$0@@|@|@|@"])
  fun op RC_RTC x = x
    val op RC_RTC =
    DT(((("relation",41),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,73,93,94,96]),
         ("combin",[19]),("relation",[10,17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79%113$2@$1@$0@@%128$2@$1@$0@@|@|@|@"])
  fun op TC_INDUCT x = x
    val op TC_INDUCT =
    DT(((("relation",42),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,76,77,78,80,81,93,94,96,
          146]),("combin",[19]),("relation",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@%53%38%53%39%79%139$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_INDUCT_LEFT1 x = x
    val op TC_INDUCT_LEFT1 =
    DT(((("relation",43),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,73,76,77,78,80,81,84,93,94,
          96,106,140,146]),("combin",[19]),("relation",[16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$4$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@%53%42%53%46%79%139$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_INDUCT_RIGHT1 x = x
    val op TC_INDUCT_RIGHT1 =
    DT(((("relation",44),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,73,76,77,78,80,81,84,93,94,
          96,106,140,146]),("combin",[19]),("relation",[16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@$4$1@$0@@@$3$2@$0@@|@|@|@@@%53%42%53%46%79%139$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_STRONG_INDUCT x = x
    val op TC_STRONG_INDUCT =
    DT(((("relation",45),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96]),
         ("combin",[19]),("relation",[16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@%69$3$1@$0@@%69%139$4@$2@$1@@%139$4@$1@$0@@@@@$3$2@$0@@|@|@|@@@%53%38%53%39%79%139$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_STRONG_INDUCT_LEFT1 x = x
    val op TC_STRONG_INDUCT_LEFT1 =
    DT(((("relation",46),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96]),
         ("combin",[19]),("relation",[16,43]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$4$2@$1@@%69$3$1@$0@@%139$4@$1@$0@@@@$3$2@$0@@|@|@|@@@%53%38%53%39%79%139$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_STRONG_INDUCT_RIGHT1 x = x
    val op TC_STRONG_INDUCT_RIGHT1 =
    DT(((("relation",47),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96]),
         ("combin",[19]),("relation",[16,44]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@%69%139$4@$2@$1@@$4$1@$0@@@@$3$2@$0@@|@|@|@@@%53%38%53%39%79%139$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op TC_lifts_monotonicities x = x
    val op TC_lifts_monotonicities =
    DT(((("relation",48),
        [("bool",[25,53,54,58,63,73,75]),("relation",[16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%9%31$1@@%31$0@@@|@|@@%53%42%53%46%79%139%9@$1@$0@@%139%9@%31$1@@%31$0@@@|@|@@"])
  fun op TC_lifts_invariants x = x
    val op TC_lifts_invariants =
    DT(((("relation",49),
        [("bool",[25,53,54,63]),("relation",[42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%69%4$1@@%9$1@$0@@@%4$0@@|@|@@%53%42%53%46%79%69%4$1@@%139%9@$1@$0@@@%4$0@@|@|@@"])
  fun op TC_lifts_equalities x = x
    val op TC_lifts_equalities =
    DT(((("relation",50),
        [("bool",[25,53,54,55,63]),("relation",[42]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%71%32$1@@%32$0@@@|@|@@%53%42%53%46%79%139%9@$1@$0@@%71%32$1@@%32$0@@@|@|@@"])
  fun op TC_lifts_transitive_relations x = x
    val op TC_lifts_transitive_relations =
    DT(((("relation",51),
        [("bool",[2,15,25,26,53,54,58,63,75,84,99]),("relation",[0,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%69%53%42%53%46%79%9$1@$0@@%8%32$1@@%32$0@@@|@|@@%174%8@@@%53%42%53%46%79%139%9@$1@$0@@%8%32$1@@%32$0@@@|@|@@"])
  fun op TC_implies_one_step x = x
    val op TC_implies_one_step =
    DT(((("relation",52),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,78,93,94,96,105,
          124]),("relation",[42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%53%42%53%46%79%69%139%9@$1@$0@@%177%70$1@$0@@@@%80%50%69%9$2@$0@@%177%70$2@$0@@@|@@|@|@"])
  fun op TC_RTC x = x
    val op TC_RTC =
    DT(((("relation",53),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,84,93,94,96]),
         ("combin",[19]),("relation",[17,21,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79%139$2@$1@$0@@%128$2@$1@$0@@|@|@|@"])
  fun op RTC_TC_RC x = x
    val op RTC_TC_RC =
    DT(((("relation",54),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,73,93,94,96]),
         ("combin",[19]),("relation",[10,16,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79%128$2@$1@$0@@%149%113$2@$1@$0@@%139$2@$1@$0@@@|@|@|@"])
  fun op TC_RC_EQNS x = x
    val op TC_RC_EQNS =
    DT(((("relation",55),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,73,76,78,
          84,93,94,96,105,124]),("combin",[19]),
         ("relation",[10,15,16,17,20,21,41,42,53]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%69%76%113%139$0@@@%128$0@@@%76%139%113$0@@@%128$0@@@|@"])
  fun op RTC_INDUCT_RIGHT1 x = x
    val op RTC_INDUCT_RIGHT1 =
    DT(((("relation",56),
        [("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,76,78,93,94,96,102,105,124]),
         ("relation",[10,44,55]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42$1$0@$0@|@@%53%42%53%46%53%50%79%69$3$2@$1@@$4$1@$0@@@$3$2@$0@@|@|@|@@@%53%42%53%46%79%128$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op RTC_RULES_RIGHT1 x = x
    val op RTC_RULES_RIGHT1 =
    DT(((("relation",57),
        [("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,73,76,78,81,84,93,94,96]),
         ("combin",[19]),("relation",[15,17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%53%42%128$1@$0@$0@|@@%53%42%53%46%53%50%79%69%128$3@$2@$1@@$3$1@$0@@@%128$3@$2@$0@@|@|@|@@|@"])
  fun op RTC_STRONG_INDUCT_RIGHT1 x = x
    val op RTC_STRONG_INDUCT_RIGHT1 =
    DT(((("relation",58),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96]),
         ("combin",[19]),("relation",[56,57]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42$1$0@$0@|@@%53%42%53%46%53%50%79%69$3$2@$1@@%69%128$4@$2@$1@@$4$1@$0@@@@$3$2@$0@@|@|@|@@@%53%42%53%46%79%128$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op EXTEND_RTC_TC x = x
    val op EXTEND_RTC_TC =
    DT(((("relation",59),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,73,76,78,81,84,93,94,96]),
         ("combin",[19]),("relation",[15,16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%53%50%79%69$3$2@$1@@%128$3@$1@$0@@@%139$3@$2@$0@@|@|@|@|@"])
  fun op EXTEND_RTC_TC_EQN x = x
    val op EXTEND_RTC_TC_EQN =
    DT(((("relation",60),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,72,73,75,76,78,80,81,84,93,
          94,96,146]),("combin",[19]),("relation",[0,17,22,42,57,59]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%50%73%139$2@$1@$0@@%80%46%69$3$2@$0@@%128$3@$0@$1@@|@@|@|@|@"])
  fun op reflexive_RC_identity x = x
    val op reflexive_RC_identity =
    DT(((("relation",61),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,60,63,71,81,93,94,96,105,
          124]),("relation",[1,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%79%165$0@@%76%113$0@@$0@@|@"])
  fun op symmetric_SC_identity x = x
    val op symmetric_SC_identity =
    DT(((("relation",62),
        [("bool",[25,36,52,53,56,58,60,105,124]),
         ("relation",[3,11])]),["DISK_THM"]),
       [read"%60%9%79%168$0@@%76%132$0@@$0@@|@"])
  fun op transitive_TC_identity x = x
    val op transitive_TC_identity =
    DT(((("relation",63),
        [("bool",
         [25,26,36,47,48,51,53,54,58,60,63,71,93,94,96,105,106,124]),
         ("relation",[0,16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%173$0@@%76%139$0@@$0@@|@"])
  fun op RC_IDEM x = x
    val op RC_IDEM =
    DT(((("relation",64),
        [("bool",[25,36,56,63]),("relation",[26,61])]),["DISK_THM"]),
       [read"%60%9%76%113%113$0@@@%113$0@@|@"])
  fun op SC_IDEM x = x
    val op SC_IDEM =
    DT(((("relation",65),
        [("bool",[25,36,56,63]),("relation",[13,62])]),["DISK_THM"]),
       [read"%60%9%76%132%132$0@@@%132$0@@|@"])
  fun op TC_IDEM x = x
    val op TC_IDEM =
    DT(((("relation",66),
        [("bool",[25,36,56,63]),("relation",[14,63])]),["DISK_THM"]),
       [read"%60%9%76%139%139$0@@@%139$0@@|@"])
  fun op RC_MOVES_OUT x = x
    val op RC_MOVES_OUT =
    DT(((("relation",67),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,60,63,71,93,94,96]),
         ("relation",[10,11,55,64]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%76%132%113$0@@@%113%132$0@@@@%69%76%113%113$0@@@%113$0@@@%76%139%113$0@@@%113%139$0@@@@@|@"])
  fun op symmetric_TC x = x
    val op symmetric_TC =
    DT(((("relation",68),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96,106]),
         ("combin",[19]),("relation",[3,16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%168$0@@%168%139$0@@@|@"])
  fun op reflexive_TC x = x
    val op reflexive_TC =
    DT(((("relation",69),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,75,78,80,84,94,146]),
         ("combin",[19]),("relation",[1,38]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%165$0@@%165%139$0@@@|@"])
  fun op EQC_EQUIVALENCE x = x
    val op EQC_EQUIVALENCE =
    DT(((("relation",70),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96]),
         ("relation",[5,12,13,14,26,35,55,68]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%156%89$0@@|@"])
  fun op EQC_IDEM x = x
    val op EQC_IDEM =
    DT(((("relation",71),
        [("bool",[25,36,56,63]),
         ("relation",[12,13,62,66,67,68])]),["DISK_THM"]),
       [read"%60%9%76%89%89$0@@@%89$0@@|@"])
  fun op RTC_IDEM x = x
    val op RTC_IDEM =
    DT(((("relation",72),
        [("bool",[25,36,56,58]),("relation",[55,66,67])]),["DISK_THM"]),
       [read"%60%9%76%128%128$0@@@%128$0@@|@"])
  fun op RTC_CASES1 x = x
    val op RTC_CASES1 =
    DT(((("relation",73),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,73,76,78,80,
          81,93,94,96,106]),("combin",[19]),("relation",[15,17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%73%128$2@$1@$0@@%149%70$1@$0@@%80%38%69$3$2@$0@@%128$3@$0@$1@@|@@@|@|@|@"])
  fun op RTC_CASES_TC x = x
    val op RTC_CASES_TC =
    DT(((("relation",74),
        [("bool",[2,15,25,26,53,54,55,58,63,74,75,84,99]),
         ("relation",[60,73]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%73%128$2@$1@$0@@%149%70$1@$0@@%139$2@$1@$0@@@|@|@|@"])
  fun op RTC_CASES2 x = x
    val op RTC_CASES2 =
    DT(((("relation",75),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,73,76,78,80,
          81,84,93,94,96,106]),("combin",[19]),("relation",[15,17,21,39]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%73%128$2@$1@$0@@%149%70$1@$0@@%80%38%69%128$3@$2@$0@@$3$0@$1@@|@@@|@|@|@"])
  fun op RTC_CASES_RTC_TWICE x = x
    val op RTC_CASES_RTC_TWICE =
    DT(((("relation",76),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,72,73,76,78,80,81,84,93,94,96,
          106]),("combin",[19]),("relation",[15,17,21,39]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%73%128$2@$1@$0@@%80%38%69%128$3@$2@$0@@%128$3@$0@$1@@|@@|@|@|@"])
  fun op TC_CASES1_E x = x
    val op TC_CASES1_E =
    DT(((("relation",77),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,72,76,78,80,81,93,94,96]),
         ("combin",[19]),("relation",[0,14,38,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%50%79%139$2@$1@$0@@%149$2$1@$0@@%80%46%69$3$2@$0@@%139$3@$0@$1@@|@@@|@|@|@"])
  fun op TC_CASES1 x = x
    val op TC_CASES1 =
    DT(((("relation",78),
        [("bool",[25,26,36,47,48,53,54,56,58,63,72,73,78,81,93,94,96,146]),
         ("combin",[19]),("relation",[16,77]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%73%139%9@%42@%50@@%149%9%42@%50@@%80%46%69%9%42@$0@@%139%9@$0@%50@@|@@@"])
  fun op TC_CASES2_E x = x
    val op TC_CASES2_E =
    DT(((("relation",79),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,72,76,78,80,81,93,94,96]),
         ("combin",[19]),("relation",[0,14,38,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%50%79%139$2@$1@$0@@%149$2$1@$0@@%80%46%69%139$3@$2@$0@@$3$0@$1@@|@@@|@|@|@"])
  fun op TC_CASES2 x = x
    val op TC_CASES2 =
    DT(((("relation",80),
        [("bool",[25,26,36,47,48,53,54,56,58,63,72,73,78,81,93,94,96,146]),
         ("combin",[19]),("relation",[16,79]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%73%139%9@%42@%50@@%149%9%42@%50@@%80%46%69%139%9@%42@$0@@%9$0@%50@@|@@@"])
  fun op TC_MONOTONE x = x
    val op TC_MONOTONE =
    DT(((("relation",81),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96]),
         ("combin",[19]),("relation",[16,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%7$1@$0@@|@|@@%79%139%9@%42@%46@@%139%7@%42@%46@@@"])
  fun op RTC_MONOTONE x = x
    val op RTC_MONOTONE =
    DT(((("relation",82),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,93,94,96]),
         ("combin",[19]),("relation",[15,17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%7$1@$0@@|@|@@%79%128%9@%42@%46@@%128%7@%42@%46@@@"])
  fun op EQC_INDUCTION x = x
    val op EQC_INDUCTION =
    DT(((("relation",83),
        [("bool",[25,26,47,48,53,54,58,63,71,76,78,93,94,96]),
         ("relation",[10,11,12,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%69%53%42$1$0@$0@|@@%69%53%42%53%46%79$2$1@$0@@$2$0@$1@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@@@%53%42%53%46%79%89$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op EQC_REFL x = x
    val op EQC_REFL =
    DT(((("relation",84),
        [("bool",[25,52,56]),("relation",[10,12])]),["DISK_THM"]),
       [read"%60%9%53%42%89$1@$0@$0@|@|@"])
  fun op EQC_R x = x
    val op EQC_R =
    DT(((("relation",85),
        [("bool",[25,52,58,63,105,124]),
         ("relation",[10,11,12,38])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79$2$1@$0@@%89$2@$1@$0@@|@|@|@"])
  fun op EQC_SYM x = x
    val op EQC_SYM =
    DT(((("relation",86),
        [("bool",
         [25,26,36,43,47,48,52,53,54,56,58,63,71,75,78,80,84,93,94,96,105,
          124,146]),("combin",[19]),("relation",[3,10,12,13,68]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79%89$2@$1@$0@@%89$2@$0@$1@@|@|@|@"])
  fun op EQC_TRANS x = x
    val op EQC_TRANS =
    DT(((("relation",87),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,75,78,80,84,93,94,96,146]),
         ("combin",[19]),("relation",[0,12,14,37]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%53%50%79%69%89$3@$2@$1@@%89$3@$1@$0@@@%89$3@$2@$0@@|@|@|@|@"])
  fun op transitive_EQC x = x
    val op transitive_EQC =
    DT(((("relation",88),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,75,78,80,84,93,94,96,146]),
         ("combin",[19]),("relation",[0,87]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%173%89%9@@"])
  fun op symmetric_EQC x = x
    val op symmetric_EQC =
    DT(((("relation",89),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,75,78,80,84,93,94,96,146]),
         ("combin",[19]),("relation",[3,86]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%168%89%9@@"])
  fun op reflexive_EQC x = x
    val op reflexive_EQC =
    DT(((("relation",90),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,75,78,80,84,146]),
         ("combin",[19]),("relation",[1,84]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%165%89%9@@"])
  fun op EQC_MOVES_IN x = x
    val op EQC_MOVES_IN =
    DT(((("relation",91),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,60,63,73,93,94,96,105,124]),
         ("combin",[19]),("relation",[11,12,16,42,65,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%76%89%113$0@@@%89$0@@@%69%76%89%132$0@@@%89$0@@@%76%89%139$0@@@%89$0@@@@|@"])
  fun op STRONG_EQC_INDUCTION x = x
    val op STRONG_EQC_INDUCTION =
    DT(((("relation",92),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,76,78,81,93,94,96]),
         ("combin",[19]),("relation",[83,84,85,86,87]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%53%42%53%46%79$3$1@$0@@$2$1@$0@@|@|@@%69%53%42$1$0@$0@|@@%69%53%42%53%46%79%69%89$3@$1@$0@@$2$1@$0@@@$2$0@$1@@|@|@@%53%42%53%46%53%50%79%69$3$2@$1@@%69$3$1@$0@@%69%89$4@$2@$1@@%89$4@$1@$0@@@@@$3$2@$0@@|@|@|@@@@@%53%42%53%46%79%89$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op ALT_equivalence x = x
    val op ALT_equivalence =
    DT(((("relation",93),
        [("bool",
         [25,26,43,47,48,53,54,58,60,63,71,73,76,77,78,80,81,84,93,94,96,
          106,146]),("relation",[0,1,3,5]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%156$0@@%53%42%53%46%73$2$1@$0@@%75$2$1@@$2$0@@@|@|@@|@"])
  fun op EQC_MONOTONE x = x
    val op EQC_MONOTONE =
    DT(((("relation",94),
        [("bool",[25,53,54,63]),("relation",[84,85,86,87,92]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%13$1@$0@@|@|@@%79%89%9@%42@%46@@%89%13@%42@%46@@@"])
  fun op RTC_EQC x = x
    val op RTC_EQC =
    DT(((("relation",95),
        [("bool",[25,53,54,63]),("relation",[15,84,85,87]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%53%42%53%46%79%128%9@$1@$0@@%89%9@$1@$0@@|@|@"])
  fun op RTC_lifts_monotonicities x = x
    val op RTC_lifts_monotonicities =
    DT(((("relation",96),
        [("bool",[25,53,54,58,63,73,75]),("relation",[15,17,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%9%31$1@@%31$0@@@|@|@@%53%42%53%46%79%128%9@$1@$0@@%128%9@%31$1@@%31$0@@@|@|@@"])
  fun op RTC_lifts_reflexive_transitive_relations x = x
    val op RTC_lifts_reflexive_transitive_relations =
    DT(((("relation",97),
        [("bool",[25,36,51,53,54,63]),("relation",[0,1,15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%69%53%42%53%46%79%9$1@$0@@%8%32$1@@%32$0@@@|@|@@%69%166%8@@%174%8@@@@%53%42%53%46%79%128%9@$1@$0@@%8%32$1@@%32$0@@@|@|@@"])
  fun op RTC_lifts_equalities x = x
    val op RTC_lifts_equalities =
    DT(((("relation",98),
        [("bool",[25,26,36,51,53,56,58,63,101,105,124,145]),
         ("relation",[0,1,97])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%9$1@$0@@%71%32$1@@%32$0@@@|@|@@%53%42%53%46%79%128%9@$1@$0@@%71%32$1@@%32$0@@@|@|@@"])
  fun op RTC_lifts_invariants x = x
    val op RTC_lifts_invariants =
    DT(((("relation",99),
        [("bool",[25,42,53,54,58,63,105,169]),("relation",[15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%53%42%53%46%79%69%4$1@@%9$1@$0@@@%4$0@@|@|@@%53%42%53%46%79%69%4$1@@%128%9@$1@$0@@@%4$0@@|@|@@"])
  fun op WF_INDUCTION_THM x = x
    val op WF_INDUCTION_THM =
    DT(((("relation",101),
        [("bool",[25,26,27,36,51,54,63]),("relation",[100]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%60%9%79%141$0@@%59%4%79%53%42%79%53%46%79$3$0@$1@@$2$0@@|@@$1$0@@|@@%53%42$1$0@|@@|@@|@"])
  fun op INDUCTION_WF_THM x = x
    val op INDUCTION_WF_THM =
    DT(((("relation",102),
        [("bool",[25,26,54,63,96]),("relation",[100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%59%4%79%53%42%79%53%46%79$3$0@$1@@$2$0@@|@@$1$0@@|@@%53%42$1$0@|@@|@@%141$0@@|@"])
  fun op WF_EQ_INDUCTION_THM x = x
    val op WF_EQ_INDUCTION_THM =
    DT(((("relation",103),
        [("bool",[26]),("relation",[101,102])]),["DISK_THM"]),
       [read"%60%9%73%141$0@@%59%4%79%53%42%79%53%46%79$3$0@$1@@$2$0@@|@@$1$0@@|@@%53%42$1$0@|@@|@@|@"])
  fun op WF_NOT_REFL x = x
    val op WF_NOT_REFL =
    DT(((("relation",104),
        [("bool",[53,63]),("relation",[100])]),["DISK_THM"]),
       [read"%60%9%53%42%53%46%79%141$2@@%79$2$1@$0@@%177%70$1@$0@@@@|@|@|@"])
  fun op WF_irreflexive x = x
    val op WF_irreflexive =
    DT(((("relation",105),
        [("bool",[2,15,25,26,53,54,55,58,63,75,84]),("relation",[2,104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%141%9@@%160%9@@"])
  fun op WF_EMPTY_REL x = x
    val op WF_EMPTY_REL =
    DT(((("relation",107),
        [("bool",[25,36,51,53]),("relation",[100,106])]),["DISK_THM"]),
       [read"%141%88@"])
  fun op WF_SUBSET x = x
    val op WF_SUBSET =
    DT(((("relation",108),
        [("bool",[51,63]),("relation",[100])]),["DISK_THM"]),
       [read"%60%9%60%5%79%69%141$1@@%53%42%53%46%79$2$1@$0@@$3$1@$0@@|@|@@@%141$0@@|@|@"])
  fun op WF_TC x = x
    val op WF_TC =
    DT(((("relation",109),
        [("bool",[25,26,51,54,63,96]),("relation",[0,14,38,79,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%141$0@@%141%139$0@@@|@"])
  fun op WF_TC_EQN x = x
    val op WF_TC_EQN =
    DT(((("relation",110),
        [("bool",[2,15,25,26,53,54,63,99]),("relation",[38,108,109]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%73%141%139%9@@@%141%9@@"])
  fun op WF_noloops x = x
    val op WF_noloops =
    DT(((("relation",111),
        [("bool",[25,53,54,55,63]),("relation",[104,110]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%79%141%9@@%79%139%9@%42@%46@@%177%70%42@%46@@@@"])
  fun op WF_antisymmetric x = x
    val op WF_antisymmetric =
    DT(((("relation",112),
        [("bool",[25,53,54,55,58,63,73,75]),("relation",[4,16,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%141%9@@%150%9@@"])
  fun op inv_image_thm x = x
    val op inv_image_thm =
    DT(((("relation",114),
        [("bool",[60]),("relation",[113])]),["DISK_THM"]),
       [read"%63%12%58%32%53%42%53%46%73%159$3@$2@$1@$0@@$3$2$1@@$2$0@@@|@|@|@|@"])
  fun op WF_inv_image x = x
    val op WF_inv_image =
    DT(((("relation",115),
        [("bool",[25,26,51,53,54,56,63,96]),("relation",[100,113]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%63%12%58%32%79%142$1@@%141%159$1@$0@@@|@|@"])
  fun op total_inv_image x = x
    val op total_inv_image =
    DT(((("relation",116),
        [("bool",[25,36,53,58,63,105,124]),
         ("relation",[6,114])]),["DISK_THM"]),
       [read"%60%9%62%33%79%171$1@@%172%158$1@$0@@@|@|@"])
  fun op reflexive_inv_image x = x
    val op reflexive_inv_image =
    DT(((("relation",117),
        [("bool",[25,36,53,58,63,105,124]),
         ("relation",[1,114])]),["DISK_THM"]),
       [read"%60%9%62%33%79%165$1@@%166%158$1@$0@@@|@|@"])
  fun op symmetric_inv_image x = x
    val op symmetric_inv_image =
    DT(((("relation",118),
        [("bool",[25,36,53,56,58,105,124]),
         ("relation",[3,114])]),["DISK_THM"]),
       [read"%60%9%62%33%79%168$1@@%169%158$1@$0@@@|@|@"])
  fun op transitive_inv_image x = x
    val op transitive_inv_image =
    DT(((("relation",119),
        [("bool",[25,53,54,58,63,105,124]),("relation",[0,114]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%60%9%62%33%79%173$1@@%174%158$1@$0@@@|@|@"])
  fun op RESTRICT_LEMMA x = x
    val op RESTRICT_LEMMA =
    DT(((("relation",121),
        [("bool",[25,56,63,64]),("relation",[120])]),["DISK_THM"]),
       [read"%58%32%60%9%53%46%53%50%79$2$1@$0@@%71%118$3@$2@$0@$1@@$3$1@@@|@|@|@|@"])
  fun op WFREC_THM x = x
    val op WFREC_THM =
    DT(((("relation",125),
        [("bool",[14,15,25,26,27,30,36,51,53,56,58,63,64]),
         ("relation",[0,14,38,101,109,120,122,123,124]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%60%9%68%3%79%141$1@@%53%42%71%144$2@$1@$0@@$1%118%144$2@$1@@$2@$0@@$0@@|@@|@|@"])
  fun op WFREC_COROLLARY x = x
    val op WFREC_COROLLARY =
    DT(((("relation",126),
        [("bool",[25,63]),("relation",[125])]),["DISK_THM"]),
       [read"%68%3%60%9%58%32%79%74$0@%144$1@$2@@@%79%141$1@@%53%42%71$1$0@@$3%118$1@$2@$0@@$0@@|@@@|@|@|@"])
  fun op WF_RECURSION_THM x = x
    val op WF_RECURSION_THM =
    DT(((("relation",127),
        [("bool",[7,14,25,26,27,30,53,56,63,64]),
         ("relation",[101,120,125]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%60%9%79%141$0@@%68%3%83%32%53%42%71$1$0@@$2%118$1@$3@$0@@$0@@|@|@|@@|@"])
  fun op WFP_RULES x = x
    val op WFP_RULES =
    DT(((("relation",129),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,74,77,78,80,81,83,84,93,94,96,
          146]),("combin",[19]),("relation",[128]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%79%53%46%79$2$0@$1@@%143$2@$0@@|@@%143$1@$0@@|@|@"])
  fun op WFP_INDUCT x = x
    val op WFP_INDUCT =
    DT(((("relation",130),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,74,77,80,81,83,93,94,96,146]),
         ("combin",[19]),("relation",[128]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%59%4%79%53%42%79%53%46%79$3$0@$1@@$2$0@@|@@$1$0@@|@@%53%42%79%143$2@$0@@$1$0@@|@@|@|@"])
  fun op WFP_CASES x = x
    val op WFP_CASES =
    DT(((("relation",131),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,77,81,84,93,94,96,146]),
         ("combin",[19]),("relation",[129,130]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%53%42%73%143$1@$0@@%53%46%79$2$0@$1@@%143$2@$0@@|@@|@|@"])
  fun op WFP_STRONG_INDUCT x = x
    val op WFP_STRONG_INDUCT =
    DT(((("relation",132),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,77,78,93,94,96,146]),
         ("combin",[19]),("relation",[129,130]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%53%42%79%69%143$1@$0@@%53%46%79$2$0@$1@@%4$0@@|@@@%4$0@@|@@%53%42%79%143$1@$0@@%4$0@@|@@|@"])
  fun op WF_EQ_WFP x = x
    val op WF_EQ_WFP =
    DT(((("relation",133),
        [("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,74,77,80,81,83,84,93,94,96,
          146]),("combin",[19]),("relation",[102,103,129,132]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%141$0@@%53%42%143$1@$0@|@@|@"])
  fun op INDUCTIVE_INVARIANT_WFREC x = x
    val op INDUCTIVE_INVARIANT_WFREC =
    DT(((("relation",136),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,83,99,109]),
         ("relation",[101,120,125,134]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%61%6%68%3%79%69%141$2@@%95$2@$1@$0@@@%53%42$2$0@%144$3@$1@$0@@|@@|@|@|@"])
  fun op TFL_INDUCTIVE_INVARIANT_WFREC x = x
    val op TFL_INDUCTIVE_INVARIANT_WFREC =
    DT(((("relation",137),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,84,93,94,96]),
         ("combin",[19]),("relation",[136]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%58%32%60%9%61%6%68%3%53%42%79%69%74$4@%144$3@$1@@@%69%141$3@@%95$3@$2@$1@@@@$2$0@$4$0@@@|@|@|@|@|@"])
  fun op INDUCTIVE_INVARIANT_ON_WFREC x = x
    val op INDUCTIVE_INVARIANT_ON_WFREC =
    DT(((("relation",138),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,74,77,78,80,81,83,84,93,94,96,
          105,124,146]),("combin",[19]),("relation",[134,135,136]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%61%6%68%3%59%2%53%42%79%69%141$4@@%69%96$4@$1@$3@$2@@$1$0@@@@$3$0@%144$4@$2@$0@@@|@|@|@|@|@"])
  fun op TFL_INDUCTIVE_INVARIANT_ON_WFREC x = x
    val op TFL_INDUCTIVE_INVARIANT_ON_WFREC =
    DT(((("relation",139),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("combin",[19]),("relation",[138]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%58%32%60%9%59%2%61%6%68%3%53%42%79%69%74$5@%144$4@$1@@@%69%141$4@@%69%96$4@$3@$2@$1@@$3$0@@@@@$2$0@$5$0@@@|@|@|@|@|@|@"])
  fun op inv_inv x = x
    val op inv_inv =
    DT(((("relation",141),
        [("bool",[25,36,56,60]),("relation",[140])]),["DISK_THM"]),
       [read"%60%9%76%157%157$0@@@$0@|@"])
  fun op inv_RC x = x
    val op inv_RC =
    DT(((("relation",142),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,60,63,71,93,94,96]),
         ("relation",[10,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%76%157%113$0@@@%113%157$0@@@|@"])
  fun op inv_SC x = x
    val op inv_SC =
    DT(((("relation",143),
        [("bool",[25,26,47,48,51,53,54,60,63,71]),("relation",[11,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%76%157%132$0@@@%132$0@@@%76%132%157$0@@@%132$0@@@|@"])
  fun op inv_TC x = x
    val op inv_TC =
    DT(((("relation",144),
        [("bool",
         [25,26,36,47,48,53,54,56,58,60,63,71,73,76,78,93,94,96,105,106,
          124]),("combin",[19]),("relation",[16,42,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%76%157%139$0@@@%139%157$0@@@|@"])
  fun op inv_EQC x = x
    val op inv_EQC =
    DT(((("relation",145),
        [("bool",[25,36,51,56]),
         ("relation",[12,142,143,144])]),["DISK_THM"]),
       [read"%60%9%69%76%157%89$0@@@%89$0@@@%76%89%157$0@@@%89$0@@@|@"])
  fun op inv_MOVES_OUT x = x
    val op inv_MOVES_OUT =
    DT(((("relation",146),
        [("bool",[25,36,51,56,58]),
         ("relation",[12,55,141,142,143,144])]),["DISK_THM"]),
       [read"%60%9%69%76%157%157$0@@@$0@@%69%76%132%157$0@@@%132$0@@@%69%76%113%157$0@@@%157%113$0@@@@%69%76%139%157$0@@@%157%139$0@@@@%69%76%128%157$0@@@%157%128$0@@@@%76%89%157$0@@@%89$0@@@@@@@|@"])
  fun op reflexive_inv x = x
    val op reflexive_inv =
    DT(((("relation",147),
        [("bool",[25,36,56]),("relation",[1,140])]),["DISK_THM"]),
       [read"%60%9%73%165%157$0@@@%165$0@@|@"])
  fun op irreflexive_inv x = x
    val op irreflexive_inv =
    DT(((("relation",148),
        [("bool",[25,56]),("relation",[2,140])]),["DISK_THM"]),
       [read"%60%9%73%160%157$0@@@%160$0@@|@"])
  fun op symmetric_inv x = x
    val op symmetric_inv =
    DT(((("relation",149),
        [("bool",[25,26,47,48,53,54,58,63,71,76,81,94]),
         ("relation",[3,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%168%157$0@@@%168$0@@|@"])
  fun op antisymmetric_inv x = x
    val op antisymmetric_inv =
    DT(((("relation",150),
        [("bool",[25,26,47,48,53,54,58,63,71,76,80,81,93,94,96,105,124]),
         ("relation",[4,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%150%157$0@@@%150$0@@|@"])
  fun op transitive_inv x = x
    val op transitive_inv =
    DT(((("relation",151),
        [("bool",[25,26,47,48,53,54,58,63,71,76,81,93,94,96,105,124]),
         ("relation",[0,140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%173%157$0@@@%173$0@@|@"])
  fun op symmetric_inv_identity x = x
    val op symmetric_inv_identity =
    DT(((("relation",152),
        [("bool",[25,36,53,56,58,60,105,124]),
         ("relation",[3,140])]),["DISK_THM"]),
       [read"%60%9%79%168$0@@%76%157$0@@$0@@|@"])
  fun op equivalence_inv_identity x = x
    val op equivalence_inv_identity =
    DT(((("relation",153),
        [("bool",[25,36,53,56,58,63,105,124]),
         ("relation",[5,152])]),["DISK_THM"]),
       [read"%60%9%79%156$0@@%76%157$0@@$0@@|@"])
  fun op INVOL x = x
    val op INVOL =
    DT(((("relation",155),
        [("bool",[25,56,60]),("combin",[8,19]),
         ("relation",[154])]),["DISK_THM"]),
       [read"%67%34%73%97$0@@%57%45%72$1$1$0@@@$0@|@@|@"])
  fun op INVOL_ONE_ONE x = x
    val op INVOL_ONE_ONE =
    DT(((("relation",156),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,75,78,80,81,84,
          93,94,96,146]),("combin",[19]),("relation",[155]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%67%34%79%97$0@@%57%28%57%30%73%72$2$1@@$2$0@@@%72$1@$0@@|@|@@|@"])
  fun op INVOL_ONE_ENO x = x
    val op INVOL_ONE_ENO =
    DT(((("relation",157),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,75,78,80,81,84,
          93,94,96,146]),("combin",[19]),("relation",[155]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%67%34%79%97$0@@%57%28%57%30%73%72$2$1@@$0@@%72$1@$2$0@@@|@|@@|@"])
  fun op NOT_INVOL x = x
    val op NOT_INVOL =
    DT(((("relation",158),
        [("bool",[25,36,54,56]),("relation",[155])]),["DISK_THM"]),
       [read"%98%177@"])
  fun op IDEM x = x
    val op IDEM =
    DT(((("relation",160),
        [("bool",[25,56,60]),("combin",[8]),
         ("relation",[159])]),["DISK_THM"]),
       [read"%67%34%73%92$0@@%57%45%72$1$1$0@@@$1$0@@|@@|@"])
  fun op inv_INVOL x = x
    val op inv_INVOL =
    DT(((("relation",161),
        [("bool",[25,36,56]),("relation",[141,155])]),["DISK_THM"]),
       [read"%99%157@"])
  fun op inv_O x = x
    val op inv_O =
    DT(((("relation",163),
        [("bool",[25,26,47,48,53,54,58,60,63,72,76,80,81,96]),
         ("relation",[140,162]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%60%13%76%157%101$1@$0@@@%101%157$0@@%157$1@@@|@|@"])
  fun op irreflexive_RSUBSET x = x
    val op irreflexive_RSUBSET =
    DT(((("relation",165),
        [("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("relation",[2,164]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%60%14%60%18%79%69%160$0@@%124$1@$0@@@%160$1@@|@|@"])
  fun op RUNION_COMM x = x
    val op RUNION_COMM =
    DT(((("relation",167),
        [("bool",[25,26,47,48,53,54,60,63]),("relation",[166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%130%15@%19@@%130%19@%15@@"])
  fun op RUNION_ASSOC x = x
    val op RUNION_ASSOC =
    DT(((("relation",168),
        [("bool",[25,26,47,48,53,54,60,63]),("relation",[166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%130%15@%130%19@%22@@@%130%130%15@%19@@%22@@"])
  fun op RINTER_COMM x = x
    val op RINTER_COMM =
    DT(((("relation",170),
        [("bool",[25,26,47,48,53,54,60,63]),("relation",[169]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%120%15@%19@@%120%19@%15@@"])
  fun op RINTER_ASSOC x = x
    val op RINTER_ASSOC =
    DT(((("relation",171),
        [("bool",[25,26,47,48,53,54,60,63]),("relation",[169]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%120%15@%120%19@%22@@@%120%120%15@%19@@%22@@"])
  fun op antisymmetric_RINTER x = x
    val op antisymmetric_RINTER =
    DT(((("relation",172),
        [("bool",[25,36,51,53,58,63,105,124]),
         ("relation",[4,169])]),["DISK_THM"]),
       [read"%69%79%150%14@@%150%119%14@%18@@@@%79%150%18@@%150%119%14@%18@@@@"])
  fun op transitive_RINTER x = x
    val op transitive_RINTER =
    DT(((("relation",173),
        [("bool",[25,36,51,53,58,63,86,105,124]),
         ("relation",[0,169])]),["DISK_THM"]),
       [read"%79%69%173%14@@%173%18@@@%173%119%14@%18@@@"])
  fun op reflexive_Id_RSUBSET x = x
    val op reflexive_Id_RSUBSET =
    DT(((("relation",175),
        [("bool",[25,26,56,63,101,145]),
         ("relation",[1,164])]),["DISK_THM"]),
       [read"%60%9%73%165$0@@%124%70@$0@@|@"])
  fun op symmetric_inv_RSUBSET x = x
    val op symmetric_inv_RSUBSET =
    DT(((("relation",176),
        [("bool",[25,26,47,48,53,54,58,63,71,76,80,81,94,105,124]),
         ("relation",[3,140,164]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%73%168%9@@%124%157%9@@%9@@"])
  fun op transitive_O_RSUBSET x = x
    val op transitive_O_RSUBSET =
    DT(((("relation",177),
        [("bool",
         [25,26,47,48,53,54,58,63,71,72,76,80,81,83,93,94,96,105,124]),
         ("relation",[0,162,164]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%73%173%9@@%124%101%9@%9@@%9@@"])
  fun op irrefl_trans_implies_antisym x = x
    val op irrefl_trans_implies_antisym =
    DT(((("relation",182),
        [("bool",[25,53,54,58,63,105,124]),("relation",[0,2,4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%60%9%79%69%160$0@@%173$0@@@%150$0@@|@"])
  fun op StrongOrd_Ord x = x
    val op StrongOrd_Ord =
    DT(((("relation",183),
        [("bool",[25,51,53,58,63,105,124]),
         ("relation",[179,181,182])]),["DISK_THM"]),
       [read"%60%9%79%136$0@@%110$0@@|@"])
  fun op WeakOrd_Ord x = x
    val op WeakOrd_Ord =
    DT(((("relation",184),
        [("bool",[25,51,53,58,63,105,124]),
         ("relation",[179,180])]),["DISK_THM"]),
       [read"%60%9%79%146$0@@%110$0@@|@"])
  fun op WeakOrder_EQ x = x
    val op WeakOrder_EQ =
    DT(((("relation",185),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("relation",[1,4,180]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%79%146$0@@%53%46%53%50%73%70$1@$0@@%69$2$1@$0@@$2$0@$1@@@|@|@@|@"])
  fun op RSUBSET_ANTISYM x = x
    val op RSUBSET_ANTISYM =
    DT(((("relation",186),
        [("bool",[25,26,47,48,53,54,58,60,63,94,105,124]),
         ("relation",[164]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%61%15%61%19%79%69%125$1@$0@@%125$0@$1@@@%77$1@$0@@|@|@"])
  fun op RSUBSET_antisymmetric x = x
    val op RSUBSET_antisymmetric =
    DT(((("relation",187),
        [("bool",[25,36,63]),("relation",[4,186])]),["DISK_THM"]),
       [read"%152%125@"])
  fun op RSUBSET_WeakOrder x = x
    val op RSUBSET_WeakOrder =
    DT(((("relation",188),
        [("bool",[25,26,36,47,48,51,53,54,58,60,63,94,105,124]),
         ("relation",[0,1,4,164,180]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%148%125@"])
  fun op EqIsBothRSUBSET x = x
    val op EqIsBothRSUBSET =
    DT(((("relation",189),[("relation",[185,188])]),["DISK_THM"]),
       [read"%61%49%61%52%73%77$1@$0@@%69%125$1@$0@@%125$0@$1@@@|@|@"])
  fun op STRORD_AND_NOT_Id x = x
    val op STRORD_AND_NOT_Id =
    DT(((("relation",191),
        [("bool",[25,36,56,60]),("relation",[169,174,190])]),["DISK_THM"]),
       [read"%76%134%9@@%119%9@%114%70@@@"])
  fun op RC_OR_Id x = x
    val op RC_OR_Id =
    DT(((("relation",192),
        [("bool",[25,26,47,48,53,54,60,63]),("relation",[10,166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%76%113%9@@%129%9@%70@@"])
  fun op RC_Weak x = x
    val op RC_Weak =
    DT(((("relation",193),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96,105,106,
          124]),("relation",[0,4,10,27,36,37,179,180]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%73%110%9@@%146%113%9@@@"])
  fun op STRORD_Strong x = x
    val op STRORD_Strong =
    DT(((("relation",194),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,76,78,80,81,93,
          94,96,105,124]),("relation",[0,2,4,179,181,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%73%110$0@@%136%134$0@@@|@"])
  fun op STRORD_RC x = x
    val op STRORD_RC =
    DT(((("relation",195),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,60,63,93,94,96,105,124]),
         ("relation",[0,2,10,181,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%79%136$0@@%76%134%113$0@@@$0@@|@"])
  fun op RC_STRORD x = x
    val op RC_STRORD =
    DT(((("relation",196),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,60,63,93,94,96,105,124]),
         ("relation",[0,1,4,10,180,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%79%146$0@@%76%113%134$0@@@$0@@|@"])
  fun op IDEM_STRORD x = x
    val op IDEM_STRORD =
    DT(((("relation",197),
        [("bool",[25,26,47,48,53,54,60,63]),("relation",[160,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%93%134@"])
  fun op IDEM_RC x = x
    val op IDEM_RC =
    DT(((("relation",198),
        [("bool",[25,36,56]),("relation",[64,160])]),["DISK_THM"]),
       [read"%93%113@"])
  fun op IDEM_SC x = x
    val op IDEM_SC =
    DT(((("relation",199),
        [("bool",[25,36,56]),("relation",[65,160])]),["DISK_THM"]),
       [read"%93%132@"])
  fun op IDEM_TC x = x
    val op IDEM_TC =
    DT(((("relation",200),
        [("bool",[25,36,56]),("relation",[66,160])]),["DISK_THM"]),
       [read"%93%139@"])
  fun op IDEM_RTC x = x
    val op IDEM_RTC =
    DT(((("relation",201),
        [("bool",[25,36,56]),("relation",[72,160])]),["DISK_THM"]),
       [read"%93%128@"])
  fun op trichotomous_STRORD x = x
    val op trichotomous_STRORD =
    DT(((("relation",202),
        [("bool",[25,26,51,53,54,63,99,100]),("relation",[7,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%73%176%134%9@@@%176%9@@"])
  fun op trichotomous_RC x = x
    val op trichotomous_RC =
    DT(((("relation",203),
        [("bool",[25,26,52,53,54,58,63]),("relation",[7,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%73%176%113%9@@@%176%9@@"])
  fun op WeakLinearOrder_dichotomy x = x
    val op WeakLinearOrder_dichotomy =
    DT(((("relation",207),
        [("bool",
         [25,26,36,47,48,53,54,56,58,63,71,76,78,80,81,84,93,94,96]),
         ("combin",[19]),("relation",[7,185,206]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%73%145$0@@%69%146$0@@%53%27%53%29%149$2$1@$0@@$2$0@$1@@|@|@@@|@"])
  fun op O_ASSOC x = x
    val op O_ASSOC =
    DT(((("relation",209),
        [("bool",
         [25,26,47,48,53,54,58,60,63,72,76,77,78,80,81,83,84,93,96]),
         ("relation",[162]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%105%16@%108%20@%23@@@%107%106%16@%20@@%23@@"])
  fun op Id_O x = x
    val op Id_O =
    DT(((("relation",210),
        [("bool",[25,26,36,56,60,143]),("relation",[162])]),["DISK_THM"]),
       [read"%77%104%71@%10@@%10@"])
  fun op O_Id x = x
    val op O_Id =
    DT(((("relation",211),
        [("bool",[25,26,36,56,58,60,143]),
         ("relation",[162])]),["DISK_THM"]), [read"%77%102%10@%70@@%10@"])
  fun op O_MONO x = x
    val op O_MONO =
    DT(((("relation",212),
        [("bool",[25,26,47,48,53,54,58,63,72,94,96,105,124]),
         ("relation",[162,164]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%79%69%125%15@%19@@%126%24@%25@@@%127%103%15@%24@@%103%19@%25@@@"])
  fun op inv_Id x = x
    val op inv_Id =
    DT(((("relation",213),
        [("bool",[25,36,56,58,60]),("relation",[140])]),["DISK_THM"]),
       [read"%76%157%70@@%70@"])
  fun op inv_diag x = x
    val op inv_diag =
    DT(((("relation",214),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,60,63,93,94,96]),
         ("relation",[140,208]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%76%157%154%0@@@%154%0@@"])
  fun op IN_RDOM x = x
    val op IN_RDOM =
    DT(((("relation",216),
        [("bool",[18,25,56]),("relation",[215])]),["DISK_THM"]),
       [read"%73%94%42@%116%10@@@%81%47%10%42@$0@|@@"])
  fun op IN_RRANGE x = x
    val op IN_RRANGE =
    DT(((("relation",218),
        [("bool",[18,25,56]),("relation",[217])]),["DISK_THM"]),
       [read"%73%94%46@%122%11@@@%81%43%11$0@%46@|@@"])
  fun op IN_RDOM_RUNION x = x
    val op IN_RDOM_RUNION =
    DT(((("relation",219),
        [("bool",[18,25,56,76]),("relation",[166,215])]),["DISK_THM"]),
       [read"%73%94%42@%116%130%15@%19@@@@%149%94%42@%116%15@@@%94%42@%116%19@@@@"])
  fun op RUNIV_SUBSET x = x
    val op RUNIV_SUBSET =
    DT(((("relation",221),
        [("bool",[25,36,53,56,58,60,63,105,124]),
         ("relation",[164,220])]),["DISK_THM"]),
       [read"%69%73%125%131@%10@@%77%10@%131@@@%125%10@%131@@"])
  fun op REMPTY_SUBSET x = x
    val op REMPTY_SUBSET =
    DT(((("relation",222),
        [("bool",[25,27,36,53,56,58,60,63,105,124]),
         ("relation",[106,164])]),["DISK_THM"]),
       [read"%69%124%88@%9@@%73%124%9@%88@@%76%9@%88@@@"])
  fun op IN_RDOM_RRESTRICT x = x
    val op IN_RDOM_RRESTRICT =
    DT(((("relation",224),
        [("bool",[18,25,26,27,48,53,54,63]),("relation",[215,223]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%73%94%42@%116%123%10@%37@@@@%69%94%42@%116%10@@@%94%42@%37@@@"])
  fun op IN_RDOM_DELETE x = x
    val op IN_RDOM_DELETE =
    DT(((("relation",226),
        [("bool",[18,25,26,27,48,53,54,63]),("relation",[215,225]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%73%94%42@%116%117%10@%35@@@@%69%94%42@%116%10@@@%177%70%42@%35@@@@"])
  fun op rcdiamond_diamond x = x
    val op rcdiamond_diamond =
    DT(((("relation",233),
        [("bool",[2,15,25,26,53,54,55,58,63,99,100,105,124]),
         ("relation",[10,227,228]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%60%9%73%164$0@@%155%113$0@@@|@"])
  fun op diamond_RC_diamond x = x
    val op diamond_RC_diamond =
    DT(((("relation",234),
        [("bool",[2,15,25,26,51,53,54,55,58,63,99,100,105,124]),
         ("relation",[10,227]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%60%9%79%155$0@@%155%113$0@@@|@"])
  fun op diamond_TC_diamond x = x
    val op diamond_TC_diamond =
    DT(((("relation",235),
        [("bool",
         [2,15,25,26,36,47,48,53,54,56,58,63,71,72,73,76,78,80,81,83,84,93,
          94,96,100,146]),("combin",[19]),("relation",[16,43,227]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%60%9%79%155$0@@%155%139$0@@@|@"])
  fun op establish_CR x = x
    val op establish_CR =
    DT(((("relation",236),
        [("bool",[25,26,47,48,53,54,56,58,63,71,73,76,94]),
         ("relation",[55,229,233,234,235]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%69%79%164$0@@%87$0@@@%79%155$0@@%87$0@@@|@"])
  fun op Newmans_lemma x = x
    val op Newmans_lemma =
    DT(((("relation",237),
        [("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,72,73,74,75,78,80,81,84,93,
          94,96,105,124,146]),("combin",[19]),
         ("relation",[16,17,21,59,73,101,109,140,146,227,229,230,231]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%60%9%79%69%140$0@@%133$0@@@%87$0@@|@"])
  end
  val _ = DB.bindl "relation"
  [("transitive_def",transitive_def,DB.Def),
   ("reflexive_def",reflexive_def,DB.Def),
   ("irreflexive_def",irreflexive_def,DB.Def),
   ("symmetric_def",symmetric_def,DB.Def),
   ("antisymmetric_def",antisymmetric_def,DB.Def),
   ("equivalence_def",equivalence_def,DB.Def),
   ("total_def",total_def,DB.Def), ("trichotomous",trichotomous,DB.Def),
   ("TC_DEF",TC_DEF,DB.Def), ("RTC_DEF",RTC_DEF,DB.Def),
   ("RC_DEF",RC_DEF,DB.Def), ("SC_DEF",SC_DEF,DB.Def),
   ("EQC_DEF",EQC_DEF,DB.Def), ("WF_DEF",WF_DEF,DB.Def),
   ("EMPTY_REL_DEF",EMPTY_REL_DEF,DB.Def),
   ("inv_image_def",inv_image_def,DB.Def),
   ("RESTRICT_DEF",RESTRICT_DEF,DB.Def), ("approx_def",approx_def,DB.Def),
   ("the_fun_def",the_fun_def,DB.Def), ("WFREC_DEF",WFREC_DEF,DB.Def),
   ("WFP_DEF",WFP_DEF,DB.Def),
   ("INDUCTIVE_INVARIANT_DEF",INDUCTIVE_INVARIANT_DEF,DB.Def),
   ("INDUCTIVE_INVARIANT_ON_DEF",INDUCTIVE_INVARIANT_ON_DEF,DB.Def),
   ("inv_DEF",inv_DEF,DB.Def), ("INVOL_DEF",INVOL_DEF,DB.Def),
   ("IDEM_DEF",IDEM_DEF,DB.Def), ("O_DEF",O_DEF,DB.Def),
   ("RSUBSET",RSUBSET,DB.Def), ("RUNION",RUNION,DB.Def),
   ("RINTER",RINTER,DB.Def), ("RCOMPL",RCOMPL,DB.Def),
   ("PreOrder",PreOrder,DB.Def), ("Order",Order,DB.Def),
   ("WeakOrder",WeakOrder,DB.Def), ("StrongOrder",StrongOrder,DB.Def),
   ("STRORD",STRORD,DB.Def), ("LinearOrder",LinearOrder,DB.Def),
   ("StrongLinearOrder",StrongLinearOrder,DB.Def),
   ("WeakLinearOrder",WeakLinearOrder,DB.Def),
   ("diag_def",diag_def,DB.Def), ("RDOM_DEF",RDOM_DEF,DB.Def),
   ("RRANGE",RRANGE,DB.Def), ("RUNIV",RUNIV,DB.Def),
   ("RRESTRICT_DEF",RRESTRICT_DEF,DB.Def),
   ("RDOM_DELETE_DEF",RDOM_DELETE_DEF,DB.Def),
   ("diamond_def",diamond_def,DB.Def),
   ("rcdiamond_def",rcdiamond_def,DB.Def), ("CR_def",CR_def,DB.Def),
   ("WCR_def",WCR_def,DB.Def), ("SN_def",SN_def,DB.Def),
   ("nf_def",nf_def,DB.Def), ("SC_SYMMETRIC",SC_SYMMETRIC,DB.Thm),
   ("TC_TRANSITIVE",TC_TRANSITIVE,DB.Thm),
   ("RTC_INDUCT",RTC_INDUCT,DB.Thm), ("TC_RULES",TC_RULES,DB.Thm),
   ("RTC_RULES",RTC_RULES,DB.Thm), ("RTC_REFL",RTC_REFL,DB.Thm),
   ("RTC_SINGLE",RTC_SINGLE,DB.Thm),
   ("RTC_STRONG_INDUCT",RTC_STRONG_INDUCT,DB.Thm),
   ("RTC_RTC",RTC_RTC,DB.Thm), ("RTC_TRANSITIVE",RTC_TRANSITIVE,DB.Thm),
   ("transitive_RTC",transitive_RTC,DB.Thm),
   ("RTC_REFLEXIVE",RTC_REFLEXIVE,DB.Thm),
   ("reflexive_RTC",reflexive_RTC,DB.Thm),
   ("RC_REFLEXIVE",RC_REFLEXIVE,DB.Thm),
   ("reflexive_RC",reflexive_RC,DB.Thm),
   ("RC_lifts_monotonicities",RC_lifts_monotonicities,DB.Thm),
   ("RC_MONOTONE",RC_MONOTONE,DB.Thm),
   ("RC_lifts_invariants",RC_lifts_invariants,DB.Thm),
   ("RC_lifts_equalities",RC_lifts_equalities,DB.Thm),
   ("SC_lifts_monotonicities",SC_lifts_monotonicities,DB.Thm),
   ("SC_lifts_equalities",SC_lifts_equalities,DB.Thm),
   ("SC_MONOTONE",SC_MONOTONE,DB.Thm),
   ("symmetric_RC",symmetric_RC,DB.Thm),
   ("antisymmetric_RC",antisymmetric_RC,DB.Thm),
   ("transitive_RC",transitive_RC,DB.Thm), ("TC_SUBSET",TC_SUBSET,DB.Thm),
   ("RTC_SUBSET",RTC_SUBSET,DB.Thm), ("RC_SUBSET",RC_SUBSET,DB.Thm),
   ("RC_RTC",RC_RTC,DB.Thm), ("TC_INDUCT",TC_INDUCT,DB.Thm),
   ("TC_INDUCT_LEFT1",TC_INDUCT_LEFT1,DB.Thm),
   ("TC_INDUCT_RIGHT1",TC_INDUCT_RIGHT1,DB.Thm),
   ("TC_STRONG_INDUCT",TC_STRONG_INDUCT,DB.Thm),
   ("TC_STRONG_INDUCT_LEFT1",TC_STRONG_INDUCT_LEFT1,DB.Thm),
   ("TC_STRONG_INDUCT_RIGHT1",TC_STRONG_INDUCT_RIGHT1,DB.Thm),
   ("TC_lifts_monotonicities",TC_lifts_monotonicities,DB.Thm),
   ("TC_lifts_invariants",TC_lifts_invariants,DB.Thm),
   ("TC_lifts_equalities",TC_lifts_equalities,DB.Thm),
   ("TC_lifts_transitive_relations",TC_lifts_transitive_relations,DB.Thm),
   ("TC_implies_one_step",TC_implies_one_step,DB.Thm),
   ("TC_RTC",TC_RTC,DB.Thm), ("RTC_TC_RC",RTC_TC_RC,DB.Thm),
   ("TC_RC_EQNS",TC_RC_EQNS,DB.Thm),
   ("RTC_INDUCT_RIGHT1",RTC_INDUCT_RIGHT1,DB.Thm),
   ("RTC_RULES_RIGHT1",RTC_RULES_RIGHT1,DB.Thm),
   ("RTC_STRONG_INDUCT_RIGHT1",RTC_STRONG_INDUCT_RIGHT1,DB.Thm),
   ("EXTEND_RTC_TC",EXTEND_RTC_TC,DB.Thm),
   ("EXTEND_RTC_TC_EQN",EXTEND_RTC_TC_EQN,DB.Thm),
   ("reflexive_RC_identity",reflexive_RC_identity,DB.Thm),
   ("symmetric_SC_identity",symmetric_SC_identity,DB.Thm),
   ("transitive_TC_identity",transitive_TC_identity,DB.Thm),
   ("RC_IDEM",RC_IDEM,DB.Thm), ("SC_IDEM",SC_IDEM,DB.Thm),
   ("TC_IDEM",TC_IDEM,DB.Thm), ("RC_MOVES_OUT",RC_MOVES_OUT,DB.Thm),
   ("symmetric_TC",symmetric_TC,DB.Thm),
   ("reflexive_TC",reflexive_TC,DB.Thm),
   ("EQC_EQUIVALENCE",EQC_EQUIVALENCE,DB.Thm),
   ("EQC_IDEM",EQC_IDEM,DB.Thm), ("RTC_IDEM",RTC_IDEM,DB.Thm),
   ("RTC_CASES1",RTC_CASES1,DB.Thm), ("RTC_CASES_TC",RTC_CASES_TC,DB.Thm),
   ("RTC_CASES2",RTC_CASES2,DB.Thm),
   ("RTC_CASES_RTC_TWICE",RTC_CASES_RTC_TWICE,DB.Thm),
   ("TC_CASES1_E",TC_CASES1_E,DB.Thm), ("TC_CASES1",TC_CASES1,DB.Thm),
   ("TC_CASES2_E",TC_CASES2_E,DB.Thm), ("TC_CASES2",TC_CASES2,DB.Thm),
   ("TC_MONOTONE",TC_MONOTONE,DB.Thm),
   ("RTC_MONOTONE",RTC_MONOTONE,DB.Thm),
   ("EQC_INDUCTION",EQC_INDUCTION,DB.Thm), ("EQC_REFL",EQC_REFL,DB.Thm),
   ("EQC_R",EQC_R,DB.Thm), ("EQC_SYM",EQC_SYM,DB.Thm),
   ("EQC_TRANS",EQC_TRANS,DB.Thm),
   ("transitive_EQC",transitive_EQC,DB.Thm),
   ("symmetric_EQC",symmetric_EQC,DB.Thm),
   ("reflexive_EQC",reflexive_EQC,DB.Thm),
   ("EQC_MOVES_IN",EQC_MOVES_IN,DB.Thm),
   ("STRONG_EQC_INDUCTION",STRONG_EQC_INDUCTION,DB.Thm),
   ("ALT_equivalence",ALT_equivalence,DB.Thm),
   ("EQC_MONOTONE",EQC_MONOTONE,DB.Thm), ("RTC_EQC",RTC_EQC,DB.Thm),
   ("RTC_lifts_monotonicities",RTC_lifts_monotonicities,DB.Thm),
   ("RTC_lifts_reflexive_transitive_relations",
    RTC_lifts_reflexive_transitive_relations,
    DB.Thm), ("RTC_lifts_equalities",RTC_lifts_equalities,DB.Thm),
   ("RTC_lifts_invariants",RTC_lifts_invariants,DB.Thm),
   ("WF_INDUCTION_THM",WF_INDUCTION_THM,DB.Thm),
   ("INDUCTION_WF_THM",INDUCTION_WF_THM,DB.Thm),
   ("WF_EQ_INDUCTION_THM",WF_EQ_INDUCTION_THM,DB.Thm),
   ("WF_NOT_REFL",WF_NOT_REFL,DB.Thm),
   ("WF_irreflexive",WF_irreflexive,DB.Thm),
   ("WF_EMPTY_REL",WF_EMPTY_REL,DB.Thm), ("WF_SUBSET",WF_SUBSET,DB.Thm),
   ("WF_TC",WF_TC,DB.Thm), ("WF_TC_EQN",WF_TC_EQN,DB.Thm),
   ("WF_noloops",WF_noloops,DB.Thm),
   ("WF_antisymmetric",WF_antisymmetric,DB.Thm),
   ("inv_image_thm",inv_image_thm,DB.Thm),
   ("WF_inv_image",WF_inv_image,DB.Thm),
   ("total_inv_image",total_inv_image,DB.Thm),
   ("reflexive_inv_image",reflexive_inv_image,DB.Thm),
   ("symmetric_inv_image",symmetric_inv_image,DB.Thm),
   ("transitive_inv_image",transitive_inv_image,DB.Thm),
   ("RESTRICT_LEMMA",RESTRICT_LEMMA,DB.Thm),
   ("WFREC_THM",WFREC_THM,DB.Thm),
   ("WFREC_COROLLARY",WFREC_COROLLARY,DB.Thm),
   ("WF_RECURSION_THM",WF_RECURSION_THM,DB.Thm),
   ("WFP_RULES",WFP_RULES,DB.Thm), ("WFP_INDUCT",WFP_INDUCT,DB.Thm),
   ("WFP_CASES",WFP_CASES,DB.Thm),
   ("WFP_STRONG_INDUCT",WFP_STRONG_INDUCT,DB.Thm),
   ("WF_EQ_WFP",WF_EQ_WFP,DB.Thm),
   ("INDUCTIVE_INVARIANT_WFREC",INDUCTIVE_INVARIANT_WFREC,DB.Thm),
   ("TFL_INDUCTIVE_INVARIANT_WFREC",TFL_INDUCTIVE_INVARIANT_WFREC,DB.Thm),
   ("INDUCTIVE_INVARIANT_ON_WFREC",INDUCTIVE_INVARIANT_ON_WFREC,DB.Thm),
   ("TFL_INDUCTIVE_INVARIANT_ON_WFREC",
    TFL_INDUCTIVE_INVARIANT_ON_WFREC,
    DB.Thm), ("inv_inv",inv_inv,DB.Thm), ("inv_RC",inv_RC,DB.Thm),
   ("inv_SC",inv_SC,DB.Thm), ("inv_TC",inv_TC,DB.Thm),
   ("inv_EQC",inv_EQC,DB.Thm), ("inv_MOVES_OUT",inv_MOVES_OUT,DB.Thm),
   ("reflexive_inv",reflexive_inv,DB.Thm),
   ("irreflexive_inv",irreflexive_inv,DB.Thm),
   ("symmetric_inv",symmetric_inv,DB.Thm),
   ("antisymmetric_inv",antisymmetric_inv,DB.Thm),
   ("transitive_inv",transitive_inv,DB.Thm),
   ("symmetric_inv_identity",symmetric_inv_identity,DB.Thm),
   ("equivalence_inv_identity",equivalence_inv_identity,DB.Thm),
   ("INVOL",INVOL,DB.Thm), ("INVOL_ONE_ONE",INVOL_ONE_ONE,DB.Thm),
   ("INVOL_ONE_ENO",INVOL_ONE_ENO,DB.Thm), ("NOT_INVOL",NOT_INVOL,DB.Thm),
   ("IDEM",IDEM,DB.Thm), ("inv_INVOL",inv_INVOL,DB.Thm),
   ("inv_O",inv_O,DB.Thm),
   ("irreflexive_RSUBSET",irreflexive_RSUBSET,DB.Thm),
   ("RUNION_COMM",RUNION_COMM,DB.Thm),
   ("RUNION_ASSOC",RUNION_ASSOC,DB.Thm),
   ("RINTER_COMM",RINTER_COMM,DB.Thm),
   ("RINTER_ASSOC",RINTER_ASSOC,DB.Thm),
   ("antisymmetric_RINTER",antisymmetric_RINTER,DB.Thm),
   ("transitive_RINTER",transitive_RINTER,DB.Thm),
   ("reflexive_Id_RSUBSET",reflexive_Id_RSUBSET,DB.Thm),
   ("symmetric_inv_RSUBSET",symmetric_inv_RSUBSET,DB.Thm),
   ("transitive_O_RSUBSET",transitive_O_RSUBSET,DB.Thm),
   ("irrefl_trans_implies_antisym",irrefl_trans_implies_antisym,DB.Thm),
   ("StrongOrd_Ord",StrongOrd_Ord,DB.Thm),
   ("WeakOrd_Ord",WeakOrd_Ord,DB.Thm),
   ("WeakOrder_EQ",WeakOrder_EQ,DB.Thm),
   ("RSUBSET_ANTISYM",RSUBSET_ANTISYM,DB.Thm),
   ("RSUBSET_antisymmetric",RSUBSET_antisymmetric,DB.Thm),
   ("RSUBSET_WeakOrder",RSUBSET_WeakOrder,DB.Thm),
   ("EqIsBothRSUBSET",EqIsBothRSUBSET,DB.Thm),
   ("STRORD_AND_NOT_Id",STRORD_AND_NOT_Id,DB.Thm),
   ("RC_OR_Id",RC_OR_Id,DB.Thm), ("RC_Weak",RC_Weak,DB.Thm),
   ("STRORD_Strong",STRORD_Strong,DB.Thm), ("STRORD_RC",STRORD_RC,DB.Thm),
   ("RC_STRORD",RC_STRORD,DB.Thm), ("IDEM_STRORD",IDEM_STRORD,DB.Thm),
   ("IDEM_RC",IDEM_RC,DB.Thm), ("IDEM_SC",IDEM_SC,DB.Thm),
   ("IDEM_TC",IDEM_TC,DB.Thm), ("IDEM_RTC",IDEM_RTC,DB.Thm),
   ("trichotomous_STRORD",trichotomous_STRORD,DB.Thm),
   ("trichotomous_RC",trichotomous_RC,DB.Thm),
   ("WeakLinearOrder_dichotomy",WeakLinearOrder_dichotomy,DB.Thm),
   ("O_ASSOC",O_ASSOC,DB.Thm), ("Id_O",Id_O,DB.Thm), ("O_Id",O_Id,DB.Thm),
   ("O_MONO",O_MONO,DB.Thm), ("inv_Id",inv_Id,DB.Thm),
   ("inv_diag",inv_diag,DB.Thm), ("IN_RDOM",IN_RDOM,DB.Thm),
   ("IN_RRANGE",IN_RRANGE,DB.Thm),
   ("IN_RDOM_RUNION",IN_RDOM_RUNION,DB.Thm),
   ("RUNIV_SUBSET",RUNIV_SUBSET,DB.Thm),
   ("REMPTY_SUBSET",REMPTY_SUBSET,DB.Thm),
   ("IN_RDOM_RRESTRICT",IN_RDOM_RRESTRICT,DB.Thm),
   ("IN_RDOM_DELETE",IN_RDOM_DELETE,DB.Thm),
   ("rcdiamond_diamond",rcdiamond_diamond,DB.Thm),
   ("diamond_RC_diamond",diamond_RC_diamond,DB.Thm),
   ("diamond_TC_diamond",diamond_TC_diamond,DB.Thm),
   ("establish_CR",establish_CR,DB.Thm),
   ("Newmans_lemma",Newmans_lemma,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("normalFormsTheory.normalForms_grammars",
                          normalFormsTheory.normalForms_grammars),
                         ("combinTheory.combin_grammars",
                          combinTheory.combin_grammars),
                         ("satTheory.sat_grammars",satTheory.sat_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("transitive", (Term.prim_mk_const { Name = "transitive", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reflexive", (Term.prim_mk_const { Name = "reflexive", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("irreflexive", (Term.prim_mk_const { Name = "irreflexive", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("symmetric", (Term.prim_mk_const { Name = "symmetric", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("antisymmetric", (Term.prim_mk_const { Name = "antisymmetric", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("equivalence", (Term.prim_mk_const { Name = "equivalence", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("total", (Term.prim_mk_const { Name = "total", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trichotomous", (Term.prim_mk_const { Name = "trichotomous", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TC", (Term.prim_mk_const { Name = "TC", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "TC", fixity = Suffix 2100,
pp_elements = [TOK "^+"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RTC", (Term.prim_mk_const { Name = "RTC", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "RTC", fixity = Suffix 2100,
pp_elements = [TOK "^*"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RC", (Term.prim_mk_const { Name = "RC", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SC", (Term.prim_mk_const { Name = "SC", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQC", (Term.prim_mk_const { Name = "EQC", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "EQC", fixity = Suffix 2100,
pp_elements = [TOK "^="],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WF", (Term.prim_mk_const { Name = "WF", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EMPTY_REL", (Term.prim_mk_const { Name = "EMPTY_REL", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inv_image", (Term.prim_mk_const { Name = "inv_image", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RESTRICT", (Term.prim_mk_const { Name = "RESTRICT", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("approx", (Term.prim_mk_const { Name = "approx", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("the_fun", (Term.prim_mk_const { Name = "the_fun", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WFREC", (Term.prim_mk_const { Name = "WFREC", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WFP", (Term.prim_mk_const { Name = "WFP", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INDUCTIVE_INVARIANT", (Term.prim_mk_const { Name = "INDUCTIVE_INVARIANT", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INDUCTIVE_INVARIANT_ON", (Term.prim_mk_const { Name = "INDUCTIVE_INVARIANT_ON", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inv", (Term.prim_mk_const { Name = "inv", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INVOL", (Term.prim_mk_const { Name = "INVOL", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IDEM", (Term.prim_mk_const { Name = "IDEM", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Id", (Term.prim_mk_const { Name = "=", Thy = "min"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("=", (Term.prim_mk_const { Name = "=", Thy = "min"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("O", (Term.prim_mk_const { Name = "O", Thy = "relation"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "O"))
       (Infix(HOLgrammars.RIGHT, 800))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RSUBSET", (Term.prim_mk_const { Name = "RSUBSET", Thy = "relation"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "RSUBSET"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RUNION", (Term.prim_mk_const { Name = "RUNION", Thy = "relation"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "RUNION"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RINTER", (Term.prim_mk_const { Name = "RINTER", Thy = "relation"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "RINTER"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RCOMPL", (Term.prim_mk_const { Name = "RCOMPL", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PreOrder", (Term.prim_mk_const { Name = "PreOrder", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Order", (Term.prim_mk_const { Name = "Order", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WeakOrder", (Term.prim_mk_const { Name = "WeakOrder", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("StrongOrder", (Term.prim_mk_const { Name = "StrongOrder", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STRORD", (Term.prim_mk_const { Name = "STRORD", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LinearOrder", (Term.prim_mk_const { Name = "LinearOrder", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("StrongLinearOrder", (Term.prim_mk_const { Name = "StrongLinearOrder", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WeakLinearOrder", (Term.prim_mk_const { Name = "WeakLinearOrder", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diag", (Term.prim_mk_const { Name = "diag", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RDOM", (Term.prim_mk_const { Name = "RDOM", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RRANGE", (Term.prim_mk_const { Name = "RRANGE", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RUNIV", (Term.prim_mk_const { Name = "RUNIV", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REMPTY", (Term.prim_mk_const { Name = "EMPTY_REL", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RRESTRICT", (Term.prim_mk_const { Name = "RRESTRICT", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RDOM_DELETE", (Term.prim_mk_const { Name = "RDOM_DELETE", Thy = "relation"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "\\\\"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\\\\", (Term.prim_mk_const { Name = "RDOM_DELETE", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diamond", (Term.prim_mk_const { Name = "diamond", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rcdiamond", (Term.prim_mk_const { Name = "rcdiamond", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CR", (Term.prim_mk_const { Name = "CR", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WCR", (Term.prim_mk_const { Name = "WCR", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SN", (Term.prim_mk_const { Name = "SN", Thy = "relation"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nf", (Term.prim_mk_const { Name = "nf", Thy = "relation"}))
  val relation_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "relation",
    thydataty = "unicodedata",
    data = "U12.\\226\\129\\1862.TC"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "relation",
    thydataty = "simp",
    data =
        "relation.TC_TRANSITIVE relation.antisymmetric_RC relation.IN_RDOM_DELETE relation.RDOM_DELETE_DEF relation.IN_RDOM_RRESTRICT relation.RRESTRICT_DEF relation.REMPTY_SUBSET relation.RUNIV_SUBSET relation.RUNIV relation.O_Id relation.Id_O relation.trichotomous_RC relation.trichotomous_STRORD relation.transitive_RINTER relation.antisymmetric_RINTER relation.reflexive_inv relation.transitive_inv_image relation.symmetric_inv_image relation.reflexive_inv_image relation.total_inv_image relation.inv_image_thm relation.EMPTY_REL_DEF relation.EQC_MOVES_IN relation.EQC_REFL relation.RTC_IDEM relation.EQC_IDEM relation.EQC_EQUIVALENCE relation.TC_IDEM relation.SC_IDEM relation.RC_IDEM relation.reflexive_RC relation.symmetric_RC relation.reflexive_RTC relation.RTC_REFL relation.RTC_TRANSITIVE relation.RTC_SINGLE"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "relation",
    thydataty = "mono",
    data =
        "relation.RC_MONOTONE relation.RTC_MONOTONE relation.EQC_MONOTONE relation.SC_MONOTONE relation.TC_MONOTONE"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "relation",
    thydataty = "TexTokenMap",
    data =
        "12.\\226\\129\\18619.\\\\HOLTokenSupPlus{}1.2.^+19.\\\\HOLTokenSupPlus{}1.2.^*19.\\\\HOLTokenSupStar{}1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "relation",
    thydataty = "OpenTheoryMap",
    data = " 20.Relation.wellFounded8.relation2.WF"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "relation"
end
