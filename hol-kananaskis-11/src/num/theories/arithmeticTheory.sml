structure arithmeticTheory :> arithmeticTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading arithmeticTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open pairTheory prim_recTheory
  in end;
  val _ = Theory.link_parents
          ("arithmetic",
          Arbnum.fromString "1488586036",
          Arbnum.fromString "382035")
          [("pair",
           Arbnum.fromString "1488586001",
           Arbnum.fromString "943113"),
           ("prim_rec",
           Arbnum.fromString "1488586030",
           Arbnum.fromString "891230")];
  val _ = Theory.incorporate_types "arithmetic" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("pair", "prod"),
   ID("min", "bool"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("arithmetic", ">="), ID("bool", "?"),
   ID("arithmetic", "ABS_DIFF"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("bool", "DATATYPE"),
   ID("arithmetic", "DIV"), ID("arithmetic", "DIV2"),
   ID("arithmetic", "DIVMOD"), ID("arithmetic", "EVEN"),
   ID("arithmetic", "EXP"), ID("bool", "F"), ID("arithmetic", "FACT"),
   ID("pair", "FST"), ID("arithmetic", "FUNPOW"), ID("bool", "LET"),
   ID("arithmetic", "MAX"), ID("arithmetic", "MIN"),
   ID("arithmetic", "MOD"), ID("arithmetic", "MODEQ"),
   ID("arithmetic", "NRC"), ID("arithmetic", "NUMERAL"),
   ID("arithmetic", "ODD"), ID("bool", "ONE_ONE"), ID("prim_rec", "PRE"),
   ID("relation", "RTC"), ID("pair", "SND"), ID("num", "SUC"),
   ID("bool", "T"), ID("relation", "TC"), ID("pair", "UNCURRY"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("arithmetic", "findq"), ID("prim_rec", "measure"),
   ID("arithmetic", "nat_elim__magic"), ID("arithmetic", "num_CASE"),
   ID("combin", "o"), ID("relation", "transitive"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1], TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [0, 0, 3],
   TYOP [0, 1, 4], TYOP [0, 1, 1], TYOP [2, 1, 1], TYOP [2, 1, 7],
   TYOP [0, 8, 1], TYOP [3], TYOP [0, 1, 10], TYOP [0, 0, 10],
   TYOP [0, 0, 12], TYOP [0, 1, 13], TYOP [0, 13, 14], TYOP [0, 1, 11],
   TYOP [0, 1, 16], TYOP [0, 1, 6], TYOP [0, 0, 0], TYOP [0, 1, 19],
   TYOP [0, 19, 20], TYOP [0, 8, 7], TYOP [0, 0, 1], TYOP [0, 1, 2],
   TYOP [0, 6, 0], TYOP [0, 1, 25], TYOP [0, 12, 10], TYOP [0, 19, 10],
   TYOP [0, 28, 10], TYOP [0, 13, 10], TYOP [0, 30, 10], TYOP [0, 23, 10],
   TYOP [0, 32, 10], TYOP [0, 2, 10], TYOP [0, 34, 10], TYOP [0, 11, 10],
   TYOP [0, 36, 10], TYOP [0, 24, 10], TYOP [0, 38, 10], TYOP [0, 16, 10],
   TYOP [0, 40, 10], TYOP [0, 6, 10], TYOP [0, 42, 10], TYOP [0, 1, 7],
   TYOP [0, 1, 44], TYOP [0, 7, 8], TYOP [0, 1, 46], TYOP [0, 10, 10],
   TYOP [0, 10, 48], TYOP [0, 16, 40], TYOP [0, 9, 10], TYOP [0, 9, 51],
   TYOP [0, 22, 10], TYOP [0, 22, 53], TYOP [0, 7, 10], TYOP [0, 7, 55],
   TYOP [0, 0, 19], TYOP [0, 10, 57], TYOP [0, 10, 18], TYOP [0, 7, 7],
   TYOP [0, 7, 60], TYOP [0, 10, 61], TYOP [0, 7, 1], TYOP [0, 6, 6],
   TYOP [0, 44, 44], TYOP [0, 13, 13], TYOP [0, 16, 16], TYOP [0, 18, 63],
   TYOP [0, 45, 60], TYOP [0, 1, 63], TYOP [0, 70, 9], TYOP [0, 1, 60],
   TYOP [0, 72, 22], TYOP [0, 9, 9], TYOP [0, 74, 9], TYOP [0, 8, 10],
   TYOP [0, 8, 76], TYOP [0, 77, 75], TYOP [0, 22, 22], TYOP [0, 79, 22],
   TYOP [0, 77, 80], TYOP [0, 23, 13], TYOP [0, 9, 77], TYOP [0, 22, 9],
   TYOP [0, 63, 84]]
  end
  val _ = Theory.incorporate_consts "arithmetic" tyvector
     [("num_CASE", 5), ("nat_elim__magic", 6), ("findq", 9), ("ZERO", 1),
      ("ODD", 11), ("NUMERAL", 6), ("NRC", 15), ("MODEQ", 17), ("MOD", 18),
      ("MIN", 18), ("MAX", 18), ("FUNPOW", 21), ("FACT", 6), ("EXP", 18),
      ("EVEN", 11), ("DIVMOD", 22), ("DIV2", 6), ("DIV", 18), ("BIT2", 6),
      ("BIT1", 6), ("ABS_DIFF", 18), (">=", 16), (">", 16), ("<=", 16),
      ("-", 18), ("+", 18), ("*", 18)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 1), TMV("M'", 1), TMV("P", 11), TMV("P", 16), TMV("R", 13),
   TMV("a", 1), TMV("b", 1), TMV("b1", 1), TMV("b2", 1), TMV("c", 1),
   TMV("d", 1), TMV("e0", 1), TMV("e1", 1), TMV("f", 0), TMV("f", 19),
   TMV("f", 23), TMV("f", 2), TMV("f", 24), TMV("f", 6), TMV("f", 9),
   TMV("f", 22), TMV("f'", 2), TMV("g", 2), TMV("i", 1), TMV("j", 1),
   TMV("k", 1), TMV("m", 1), TMV("m1", 1), TMV("m2", 1), TMV("n", 1),
   TMV("n1", 1), TMV("n2", 1), TMV("num", 26), TMV("p", 1), TMV("q", 1),
   TMV("r", 1), TMV("v", 0), TMV("v'", 0), TMV("x", 0), TMV("x", 1),
   TMV("x0", 1), TMV("x1", 1), TMV("y", 0), TMV("y", 1), TMV("y0", 1),
   TMV("y1", 1), TMV("z", 0), TMV("z", 1), TMC(4, 27), TMC(4, 29),
   TMC(4, 31), TMC(4, 33), TMC(4, 35), TMC(4, 37), TMC(4, 39), TMC(4, 41),
   TMC(4, 43), TMC(4, 36), TMC(5, 18), TMC(6, 18), TMC(7, 45), TMC(7, 47),
   TMC(8, 18), TMC(9, 49), TMC(10, 1), TMC(11, 16), TMC(12, 16),
   TMC(13, 13), TMC(13, 49), TMC(13, 50), TMC(13, 52), TMC(13, 54),
   TMC(13, 16), TMC(13, 56), TMC(14, 49), TMC(15, 16), TMC(16, 16),
   TMC(17, 27), TMC(17, 36), TMC(18, 18), TMC(19, 6), TMC(20, 6),
   TMC(21, 58), TMC(21, 59), TMC(21, 62), TMC(22, 12), TMC(23, 18),
   TMC(24, 6), TMC(25, 22), TMC(26, 11), TMC(27, 18), TMC(28, 10),
   TMC(29, 6), TMC(30, 63), TMC(31, 21), TMC(32, 64), TMC(32, 65),
   TMC(33, 18), TMC(34, 18), TMC(35, 18), TMC(36, 17), TMC(37, 15),
   TMC(38, 6), TMC(39, 11), TMC(40, 42), TMC(41, 6), TMC(42, 66),
   TMC(42, 67), TMC(43, 63), TMC(43, 22), TMC(44, 6), TMC(45, 10),
   TMC(46, 66), TMC(47, 68), TMC(47, 69), TMC(47, 71), TMC(47, 73),
   TMC(48, 78), TMC(48, 81), TMC(49, 1), TMC(50, 49), TMC(51, 9),
   TMC(52, 82), TMC(52, 83), TMC(53, 6), TMC(54, 5), TMC(55, 85),
   TMC(56, 30), TMC(56, 40), TMC(57, 48)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ADD x = x
    val op ADD =
    DT(((("arithmetic",0),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%57%29%72%59%64@$0@@$0@|@@%57%26%57%29%72%59%110$1@@$0@@%110%59$1@$0@@@|@|@@"])
  fun op NUMERAL_DEF x = x
    val op NUMERAL_DEF =
    DT(((("arithmetic",1),[]),[]), [read"%57%39%72%102$0@@$0@|@"])
  fun op ALT_ZERO x = x
    val op ALT_ZERO = DT(((("arithmetic",2),[]),[]), [read"%72%119@%64@"])
  fun op BIT1 x = x
    val op BIT1 =
    DT(((("arithmetic",3),[]),[]),
       [read"%57%29%72%80$0@@%59$0@%59$0@%110%64@@@@|@"])
  fun op BIT2 x = x
    val op BIT2 =
    DT(((("arithmetic",4),[]),[]),
       [read"%57%29%72%81$0@@%59$0@%59$0@%110%110%64@@@@@|@"])
  fun op nat_elim__magic x = x
    val op nat_elim__magic =
    DT(((("arithmetic",5),[]),[]), [read"%57%29%72%124$0@@$0@|@"])
  fun op SUB x = x
    val op SUB =
    DT(((("arithmetic",6),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%57%26%72%62%64@$0@@%64@|@@%57%26%57%29%72%62%110$1@@$0@@%83%65$1@$0@@%64@%110%62$1@$0@@@@|@|@@"])
  fun op MULT x = x
    val op MULT =
    DT(((("arithmetic",7),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%57%29%72%58%64@$0@@%64@|@@%57%26%57%29%72%58%110$1@@$0@@%59%58$1@$0@@$0@@|@|@@"])
  fun op EXP x = x
    val op EXP =
    DT(((("arithmetic",8),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%57%26%72%90$0@%64@@%102%80%119@@@|@@%57%26%57%29%72%90$1@%110$0@@@%58$1@%90$1@$0@@@|@|@@"])
  fun op GREATER_DEF x = x
    val op GREATER_DEF =
    DT(((("arithmetic",9),[]),[]),
       [read"%57%26%57%29%68%75$1@$0@@%65$0@$1@@|@|@"])
  fun op LESS_OR_EQ x = x
    val op LESS_OR_EQ =
    DT(((("arithmetic",10),[]),[]),
       [read"%57%26%57%29%68%66$1@$0@@%120%65$1@$0@@%72$1@$0@@@|@|@"])
  fun op GREATER_OR_EQ x = x
    val op GREATER_OR_EQ =
    DT(((("arithmetic",11),[]),[]),
       [read"%57%26%57%29%68%76$1@$0@@%120%75$1@$0@@%72$1@$0@@@|@|@"])
  fun op EVEN x = x
    val op EVEN =
    DT(((("arithmetic",12),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%68%89%64@@%111@@%57%29%68%89%110$0@@@%129%89$0@@@|@@"])
  fun op ODD x = x
    val op ODD =
    DT(((("arithmetic",13),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%68%103%64@@%91@@%57%29%68%103%110$0@@@%129%103$0@@@|@@"])
  fun op num_case_def x = x
    val op num_case_def =
    DT(((("arithmetic",14),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%48%36%52%16%67%125%64@$1@$0@@$1@|@|@@%57%29%48%36%52%16%67%125%110$2@@$1@$0@@$0$2@@|@|@|@@"])
  fun op FUNPOW x = x
    val op FUNPOW =
    DT(((("arithmetic",15),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%49%14%48%38%67%94$1@%64@$0@@$0@|@|@@%49%14%57%29%48%38%67%94$2@%110$1@@$0@@%94$2@$1@$2$0@@@|@|@|@@"])
  fun op NRC x = x
    val op NRC =
    DT(((("arithmetic",16),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%50%4%48%38%48%42%68%101$2@%64@$1@$0@@%67$1@$0@@|@|@|@@%50%4%57%29%48%38%48%42%68%101$3@%110$2@@$1@$0@@%77%46%63$4$2@$0@@%101$4@$3@$0@$1@@|@@|@|@|@|@@"])
  fun op FACT x = x
    val op FACT =
    DT(((("arithmetic",156),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%63%72%92%64@@%102%80%119@@@@%57%29%72%92%110$0@@@%58%110$0@@%92$0@@@|@@"])
  fun op DIVISION x = x
    val op DIVISION =
    DT(((("arithmetic",209),
        [("arithmetic",[208]),("bool",[2])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%25%63%72$0@%59%58%86$0@$1@@$1@@%99$0@$1@@@@%65%99$0@$1@@$1@@|@@|@"])
  fun op DIV2_def x = x
    val op DIV2_def =
    DT(((("arithmetic",210),[]),[]),
       [read"%57%29%72%87$0@@%86$0@%102%81%119@@@@|@"])
  fun op MAX_DEF x = x
    val op MAX_DEF =
    DT(((("arithmetic",294),[]),[]),
       [read"%57%26%57%29%72%97$1@$0@@%83%65$1@$0@@$0@$1@@|@|@"])
  fun op MIN_DEF x = x
    val op MIN_DEF =
    DT(((("arithmetic",295),[]),[]),
       [read"%57%26%57%29%72%98$1@$0@@%83%65$1@$0@@$1@$0@@|@|@"])
  fun op ABS_DIFF_def x = x
    val op ABS_DIFF_def =
    DT(((("arithmetic",323),[]),[]),
       [read"%57%29%57%26%72%79$1@$0@@%83%65$1@$0@@%62$0@$1@@%62$1@$0@@@|@|@"])
  fun op findq_def x = x
    val op findq_def =
    DT(((("arithmetic",361),[]),[]),
       [read"%70%121@%117%123%115%5%113%26%29%62$1@$0@||@|@@@%19%115%5%113%26%29%83%72$0@%64@@$2@%95%10%83%65$2@$0@@$3@$4%61%58%102%81%119@@@$3@@%60$2@$0@@@@|@%58%102%81%119@@@$0@@@||@|@|@@"])
  fun op DIVMOD_DEF x = x
    val op DIVMOD_DEF =
    DT(((("arithmetic",365),[]),[]),
       [read"%71%88@%118%123%126%93@%109@@@%20%116%5%114%26%29%84%72$0@%64@@%60%64@%64@@%84%65$1@$0@@%60$2@$1@@%96%34$4%61%59$3@$0@@%60%62$2@%58$1@$0@@@$1@@@|@%121%61%102%80%119@@@%60$1@$0@@@@@@||@|@|@@"])
  fun op MODEQ_DEF x = x
    val op MODEQ_DEF =
    DT(((("arithmetic",371),[]),[]),
       [read"%57%29%57%27%57%28%68%100$2@$1@$0@@%78%5%78%6%72%59%58$1@$4@@$3@@%59%58$0@$4@@$2@@|@|@@|@|@|@"])
  fun op ONE x = x
    val op ONE =
    DT(((("arithmetic",17),
        [("arithmetic",[0,1,2,3]),("bool",[25,56])]),["DISK_THM"]),
       [read"%72%102%80%119@@@%110%64@@"])
  fun op TWO x = x
    val op TWO =
    DT(((("arithmetic",18),
        [("arithmetic",[0,1,2,4,17]),("bool",[25,56])]),["DISK_THM"]),
       [read"%72%102%81%119@@@%110%102%80%119@@@@"])
  fun op NORM_0 x = x
    val op NORM_0 =
    DT(((("arithmetic",19),
        [("arithmetic",[1,2]),("bool",[25,56])]),["DISK_THM"]),
       [read"%72%102%119@@%64@"])
  fun op num_case_compute x = x
    val op num_case_compute =
    DT(((("arithmetic",20),
        [("arithmetic",[14]),("bool",[14,25,26,27,56,64]),("num",[7,9]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%57%29%67%125$0@%13@%22@@%82%72$0@%64@@%13@%22%105$0@@@@|@"])
  fun op SUC_NOT x = x
    val op SUC_NOT =
    DT(((("arithmetic",21),[("bool",[47]),("num",[7])]),["DISK_THM"]),
       [read"%57%29%129%72%64@%110$0@@@|@"])
  fun op ADD_0 x = x
    val op ADD_0 =
    DT(((("arithmetic",22),
        [("arithmetic",[0]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]), [read"%57%26%72%59$0@%64@@$0@|@"])
  fun op ADD_SUC x = x
    val op ADD_SUC =
    DT(((("arithmetic",23),
        [("arithmetic",[0]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%72%110%59$1@$0@@@%59$1@%110$0@@@|@|@"])
  fun op ADD_CLAUSES x = x
    val op ADD_CLAUSES =
    DT(((("arithmetic",24),
        [("arithmetic",[0,22,23]),("bool",[25,51,56])]),["DISK_THM"]),
       [read"%63%72%59%64@%26@@%26@@%63%72%59%26@%64@@%26@@%63%72%59%110%26@@%29@@%110%59%26@%29@@@@%72%59%26@%110%29@@@%110%59%26@%29@@@@@@"])
  fun op ADD_SYM x = x
    val op ADD_SYM =
    DT(((("arithmetic",25),
        [("arithmetic",[0,22,23]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%72%59$1@$0@@%59$0@$1@@|@|@"])
  fun op ADD_COMM x = x
    val op ADD_COMM =
    DT(((("arithmetic",26),[("arithmetic",[25])]),["DISK_THM"]),
       [read"%57%26%57%29%72%59$1@$0@@%59$0@$1@@|@|@"])
  fun op ADD_ASSOC x = x
    val op ADD_ASSOC =
    DT(((("arithmetic",27),
        [("arithmetic",[24]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%59$2@%59$1@$0@@@%59%59$2@$1@@$0@@|@|@|@"])
  fun op num_CASES x = x
    val op num_CASES =
    DT(((("arithmetic",28),
        [("bool",[14,25,26,27,52,56]),("num",[7,9])]),["DISK_THM"]),
       [read"%57%26%120%72$0@%64@@%78%29%72$1@%110$0@@|@@|@"])
  fun op NOT_ZERO_LT_ZERO x = x
    val op NOT_ZERO_LT_ZERO =
    DT(((("arithmetic",29),
        [("arithmetic",[28]),("bool",[25,26,27,54,56,63]),("num",[7]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%29%68%129%72$0@%64@@@%65%64@$0@@|@"])
  fun op NOT_LT_ZERO_EQ_ZERO x = x
    val op NOT_LT_ZERO_EQ_ZERO =
    DT(((("arithmetic",30),
        [("arithmetic",[29]),("bool",[25,36,54,56,58])]),["DISK_THM"]),
       [read"%57%29%68%129%65%64@$0@@@%72$0@%64@@|@"])
  fun op LESS_OR_EQ_ALT x = x
    val op LESS_OR_EQ_ALT =
    DT(((("arithmetic",31),
        [("arithmetic",[10]),("bool",[25,26,52,56,60,63]),
         ("prim_rec",[14]),("relation",[74])]),["DISK_THM"]),
       [read"%69%66@%107%39%43%72$0@%110$1@@||@@"])
  fun op LESS_ADD x = x
    val op LESS_ADD =
    DT(((("arithmetic",32),
        [("arithmetic",[0]),("bool",[14,25,26,27,53,56]),("num",[9]),
         ("prim_rec",[6,19])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$0@$1@@%78%33%72%59$0@$1@@$2@|@@|@|@"])
  fun op transitive_LESS x = x
    val op transitive_LESS =
    DT(((("arithmetic",33),
        [("bool",[25,63]),("prim_rec",[14]),
         ("relation",[14])]),["DISK_THM"]), [read"%128%65@"])
  fun op LESS_TRANS x = x
    val op LESS_TRANS =
    DT(((("arithmetic",34),
        [("arithmetic",[33]),("relation",[0])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%63%65$2@$1@@%65$1@$0@@@%65$2@$0@@|@|@|@"])
  fun op LESS_ANTISYM x = x
    val op LESS_ANTISYM =
    DT(((("arithmetic",35),
        [("arithmetic",[34]),("bool",[27]),
         ("prim_rec",[4])]),["DISK_THM"]),
       [read"%57%26%57%29%129%63%65$1@$0@@%65$0@$1@@@|@|@"])
  fun op LESS_MONO_REV x = x
    val op LESS_MONO_REV =
    DT(((("arithmetic",36),[("prim_rec",[10])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65%110$1@@%110$0@@@%65$1@$0@@|@|@"])
  fun op LESS_MONO_EQ x = x
    val op LESS_MONO_EQ =
    DT(((("arithmetic",37),[("prim_rec",[11])]),["DISK_THM"]),
       [read"%57%26%57%29%68%65%110$1@@%110$0@@@%65$1@$0@@|@|@"])
  fun op LESS_EQ_MONO x = x
    val op LESS_EQ_MONO =
    DT(((("arithmetic",38),
        [("arithmetic",[10,37]),("bool",[25,36,56]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%29%57%26%68%66%110$1@@%110$0@@@%66$1@$0@@|@|@"])
  fun op LESS_LESS_SUC x = x
    val op LESS_LESS_SUC =
    DT(((("arithmetic",39),
        [("arithmetic",[37]),("bool",[14,25,26,27,51,54,63]),("num",[9]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%129%63%65$1@$0@@%65$0@%110$1@@@@|@|@"])
  fun op transitive_measure x = x
    val op transitive_measure =
    DT(((("arithmetic",40),
        [("arithmetic",[34]),("bool",[25,58,63,105,124]),("prim_rec",[45]),
         ("relation",[0])]),["DISK_THM"]), [read"%51%15%127%122$0@@|@"])
  fun op LESS_EQ x = x
    val op LESS_EQ =
    DT(((("arithmetic",41),
        [("arithmetic",[31]),("bool",[25,36,56]),
         ("prim_rec",[13,14])]),["DISK_THM"]),
       [read"%57%26%57%29%68%65$1@$0@@%66%110$1@@$0@@|@|@"])
  fun op LESS_OR x = x
    val op LESS_OR =
    DT(((("arithmetic",42),
        [("arithmetic",[41]),("bool",[25,36,53])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$1@$0@@%66%110$1@@$0@@|@|@"])
  fun op OR_LESS x = x
    val op OR_LESS =
    DT(((("arithmetic",43),
        [("arithmetic",[41]),("bool",[25,36,53])]),["DISK_THM"]),
       [read"%57%26%57%29%74%66%110$1@@$0@@%65$1@$0@@|@|@"])
  fun op LESS_EQ_IFF_LESS_SUC x = x
    val op LESS_EQ_IFF_LESS_SUC =
    DT(((("arithmetic",44),
        [("arithmetic",[31]),("bool",[25,36,56]),
         ("prim_rec",[12,14])]),["DISK_THM"]),
       [read"%57%29%57%26%68%66$1@$0@@%65$1@%110$0@@@|@|@"])
  fun op LESS_EQ_IMP_LESS_SUC x = x
    val op LESS_EQ_IMP_LESS_SUC =
    DT(((("arithmetic",45),
        [("arithmetic",[44]),("bool",[25,36,53])]),["DISK_THM"]),
       [read"%57%29%57%26%74%66$1@$0@@%65$1@%110$0@@@|@|@"])
  fun op ZERO_LESS_EQ x = x
    val op ZERO_LESS_EQ =
    DT(((("arithmetic",46),
        [("arithmetic",[44]),("bool",[25,36,63]),
         ("prim_rec",[7])]),["DISK_THM"]), [read"%57%29%66%64@$0@|@"])
  fun op LESS_SUC_EQ_COR x = x
    val op LESS_SUC_EQ_COR =
    DT(((("arithmetic",47),
        [("arithmetic",[29,37]),("bool",[14,25,26,27,51,53,58,63]),
         ("num",[9]),("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65$1@$0@@%129%72%110$1@@$0@@@@%65%110$1@@$0@@|@|@"])
  fun op LESS_NOT_SUC x = x
    val op LESS_NOT_SUC =
    DT(((("arithmetic",48),
        [("arithmetic",[29,37]),("bool",[14,25,26,27,51,53,63]),
         ("num",[9]),("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65$1@$0@@%129%72$0@%110$1@@@@@%65%110$1@@$0@@|@|@"])
  fun op LESS_0_CASES x = x
    val op LESS_0_CASES =
    DT(((("arithmetic",49),
        [("bool",[14,25,52,56,63]),("num",[9]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%26%120%72%64@$0@@%65%64@$0@@|@"])
  fun op LESS_CASES_IMP x = x
    val op LESS_CASES_IMP =
    DT(((("arithmetic",50),
        [("arithmetic",[37]),("bool",[14,25,26,27,51,53,54,56,63]),
         ("num",[9]),("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%129%65$1@$0@@@%129%72$1@$0@@@@%65$0@$1@@|@|@"])
  fun op LESS_CASES x = x
    val op LESS_CASES =
    DT(((("arithmetic",51),
        [("arithmetic",[37,38,46]),("bool",[14,25,26,27,52,63]),
         ("num",[9]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%120%65$1@$0@@%66$0@$1@@|@|@"])
  fun op ADD_INV_0 x = x
    val op ADD_INV_0 =
    DT(((("arithmetic",52),
        [("arithmetic",[24]),("bool",[14,25,36,53,63]),("num",[9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%29%74%72%59$1@$0@@$1@@%72$0@%64@@|@|@"])
  fun op LESS_EQ_ADD x = x
    val op LESS_EQ_ADD =
    DT(((("arithmetic",53),
        [("arithmetic",[10,24]),("bool",[14,25,52,56,63]),("num",[9]),
         ("prim_rec",[15,16])]),["DISK_THM"]),
       [read"%57%26%57%29%66$1@%59$1@$0@@|@|@"])
  fun op LESS_EQ_ADD_EXISTS x = x
    val op LESS_EQ_ADD_EXISTS =
    DT(((("arithmetic",54),
        [("arithmetic",[0,10,32]),
         ("bool",[25,51,53,56,58,63,101,102,105,124,145])]),["DISK_THM"]),
       [read"%57%26%57%29%74%66$0@$1@@%78%33%72%59$0@$1@@$2@|@@|@|@"])
  fun op LESS_STRONG_ADD x = x
    val op LESS_STRONG_ADD =
    DT(((("arithmetic",55),
        [("arithmetic",[24,42,54]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$0@$1@@%78%33%72%59%110$0@@$1@@$2@|@@|@|@"])
  fun op LESS_EQ_SUC_REFL x = x
    val op LESS_EQ_SUC_REFL =
    DT(((("arithmetic",56),
        [("arithmetic",[10]),("bool",[25,52,63]),
         ("prim_rec",[15])]),["DISK_THM"]), [read"%57%26%66$0@%110$0@@|@"])
  fun op LESS_ADD_NONZERO x = x
    val op LESS_ADD_NONZERO =
    DT(((("arithmetic",57),
        [("arithmetic",[24,34]),("bool",[14,25,26,27,30,53,54,56,63]),
         ("num",[7,9]),("prim_rec",[15])]),["DISK_THM"]),
       [read"%57%26%57%29%74%129%72$0@%64@@@%65$1@%59$1@$0@@@|@|@"])
  fun op NOT_SUC_LESS_EQ_0 x = x
    val op NOT_SUC_LESS_EQ_0 =
    DT(((("arithmetic",58),
        [("arithmetic",[41]),("bool",[25,26,27,36,54,58]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%57%29%129%66%110$0@@%64@@|@"])
  fun op NOT_LESS x = x
    val op NOT_LESS =
    DT(((("arithmetic",59),
        [("arithmetic",[37,38,46,58]),("bool",[14,25,26,27,54,56,63]),
         ("num",[9]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%68%129%65$1@$0@@@%66$0@$1@@|@|@"])
  fun op NOT_LESS_EQUAL x = x
    val op NOT_LESS_EQUAL =
    DT(((("arithmetic",60),
        [("arithmetic",[59]),("bool",[25,36,54,56,58])]),["DISK_THM"]),
       [read"%57%26%57%29%68%129%66$1@$0@@@%65$0@$1@@|@|@"])
  fun op LESS_EQ_ANTISYM x = x
    val op LESS_EQ_ANTISYM =
    DT(((("arithmetic",61),
        [("arithmetic",[37,38,46,58]),("bool",[14,25,26,27,51,54,63]),
         ("num",[9]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%129%63%65$1@$0@@%66$0@$1@@@|@|@"])
  fun op SUB_0 x = x
    val op SUB_0 =
    DT(((("arithmetic",62),
        [("arithmetic",[6]),("bool",[14,25,26,27,51,56,64]),("num",[9]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%57%26%63%72%62%64@$0@@%64@@%72%62$0@%64@@$0@@|@"])
  fun op SUB_EQ_0 x = x
    val op SUB_EQ_0 =
    DT(((("arithmetic",63),
        [("arithmetic",[6,10,47,49,59]),
         ("bool",[14,25,26,27,30,48,52,56,63,64,94]),("num",[7,9]),
         ("prim_rec",[19,21])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%62$1@$0@@%64@@%66$1@$0@@|@|@"])
  fun op ADD1 x = x
    val op ADD1 =
    DT(((("arithmetic",64),
        [("arithmetic",[17,24]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%72%110$0@@%59$0@%102%80%119@@@@|@"])
  fun op SUC_SUB1 x = x
    val op SUC_SUB1 =
    DT(((("arithmetic",65),
        [("arithmetic",[6,17,37]),("bool",[14,25,26,27,56,63,64]),
         ("num",[9]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%72%62%110$0@@%102%80%119@@@@$0@|@"])
  fun op PRE_SUB1 x = x
    val op PRE_SUB1 =
    DT(((("arithmetic",66),
        [("arithmetic",[6,28,65]),("bool",[25,56]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%57%26%72%105$0@@%62$0@%102%80%119@@@@|@"])
  fun op MULT_0 x = x
    val op MULT_0 =
    DT(((("arithmetic",67),
        [("arithmetic",[7,24]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]), [read"%57%26%72%58$0@%64@@%64@|@"])
  fun op MULT_SUC x = x
    val op MULT_SUC =
    DT(((("arithmetic",68),
        [("arithmetic",[7,24,27]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%72%58$1@%110$0@@@%59$1@%58$1@$0@@@|@|@"])
  fun op MULT_LEFT_1 x = x
    val op MULT_LEFT_1 =
    DT(((("arithmetic",69),
        [("arithmetic",[7,17,24]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%26%72%58%102%80%119@@@$0@@$0@|@"])
  fun op MULT_RIGHT_1 x = x
    val op MULT_RIGHT_1 =
    DT(((("arithmetic",70),
        [("arithmetic",[7,17,24]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%72%58$0@%102%80%119@@@@$0@|@"])
  fun op MULT_CLAUSES x = x
    val op MULT_CLAUSES =
    DT(((("arithmetic",71),
        [("arithmetic",[7,67,68,69,70]),
         ("bool",[25,36,51,56])]),["DISK_THM"]),
       [read"%57%26%57%29%63%72%58%64@$1@@%64@@%63%72%58$1@%64@@%64@@%63%72%58%102%80%119@@@$1@@$1@@%63%72%58$1@%102%80%119@@@@$1@@%63%72%58%110$1@@$0@@%59%58$1@$0@@$0@@@%72%58$1@%110$0@@@%59$1@%58$1@$0@@@@@@@@|@|@"])
  fun op MULT_SYM x = x
    val op MULT_SYM =
    DT(((("arithmetic",72),
        [("arithmetic",[25,71]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%72%58$1@$0@@%58$0@$1@@|@|@"])
  fun op MULT_COMM x = x
    val op MULT_COMM =
    DT(((("arithmetic",73),[("arithmetic",[72])]),["DISK_THM"]),
       [read"%57%26%57%29%72%58$1@$0@@%58$0@$1@@|@|@"])
  fun op RIGHT_ADD_DISTRIB x = x
    val op RIGHT_ADD_DISTRIB =
    DT(((("arithmetic",74),
        [("arithmetic",[24,25,27,71]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%58%59$2@$1@@$0@@%59%58$2@$0@@%58$1@$0@@@|@|@|@"])
  fun op LEFT_ADD_DISTRIB x = x
    val op LEFT_ADD_DISTRIB =
    DT(((("arithmetic",75),
        [("arithmetic",[24,25,27,71]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%58$0@%59$2@$1@@@%59%58$0@$2@@%58$0@$1@@@|@|@|@"])
  fun op MULT_ASSOC x = x
    val op MULT_ASSOC =
    DT(((("arithmetic",76),
        [("arithmetic",[71,74]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%58$2@%58$1@$0@@@%58%58$2@$1@@$0@@|@|@|@"])
  fun op SUB_ADD x = x
    val op SUB_ADD =
    DT(((("arithmetic",77),
        [("arithmetic",[6,10,24,39,59]),("bool",[14,25,26,27,30,56,63,64]),
         ("num",[9]),("prim_rec",[6,15])]),["DISK_THM"]),
       [read"%57%26%57%29%74%66$0@$1@@%72%59%62$1@$0@@$0@@$1@@|@|@"])
  fun op PRE_SUB x = x
    val op PRE_SUB =
    DT(((("arithmetic",78),
        [("arithmetic",[6,10,63]),("bool",[14,25,26,27,30,52,56,58,63,64]),
         ("num",[9]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%57%26%57%29%72%105%62$1@$0@@@%62%105$1@@$0@@|@|@"])
  fun op ADD_EQ_0 x = x
    val op ADD_EQ_0 =
    DT(((("arithmetic",79),
        [("arithmetic",[24]),("bool",[14,25,26,27,51,54,56,63]),
         ("num",[7,9])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%59$1@$0@@%64@@%63%72$1@%64@@%72$0@%64@@@|@|@"])
  fun op ADD_EQ_1 x = x
    val op ADD_EQ_1 =
    DT(((("arithmetic",80),
        [("arithmetic",[17,24,79]),("bool",[14,25,26,27,36,51,52,56,58]),
         ("num",[7,9]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%59$1@$0@@%102%80%119@@@@%120%63%72$1@%102%80%119@@@@%72$0@%64@@@%63%72$1@%64@@%72$0@%102%80%119@@@@@@|@|@"])
  fun op ADD_INV_0_EQ x = x
    val op ADD_INV_0_EQ =
    DT(((("arithmetic",81),
        [("arithmetic",[24,52]),("bool",[25,26,56,63])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%59$1@$0@@$1@@%72$0@%64@@|@|@"])
  fun op PRE_SUC_EQ x = x
    val op PRE_SUC_EQ =
    DT(((("arithmetic",82),
        [("bool",[14,25,26,27,53,56,63]),("num",[9]),
         ("prim_rec",[1,3,4])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65%64@$0@@%68%72$1@%105$0@@@%72%110$1@@$0@@@|@|@"])
  fun op INV_PRE_EQ x = x
    val op INV_PRE_EQ =
    DT(((("arithmetic",83),
        [("bool",[14,25,26,27,51,53,56,63]),("num",[9]),
         ("prim_rec",[1,3,4])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$1@@%65%64@$0@@@%68%72%105$1@@%105$0@@@%72$1@$0@@@|@|@"])
  fun op LESS_SUC_NOT x = x
    val op LESS_SUC_NOT =
    DT(((("arithmetic",84),[("arithmetic",[42,59])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$1@$0@@%129%65$0@%110$1@@@@|@|@"])
  fun op ADD_EQ_SUB x = x
    val op ADD_EQ_SUB =
    DT(((("arithmetic",85),
        [("arithmetic",[0,6,10,24,25,37,52,59,62,84]),
         ("bool",[14,25,26,27,47,52,53,54,56,63,64]),("num",[7,9]),
         ("prim_rec",[1,6,7,15,24])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%66$1@$0@@%68%72%59$2@$1@@$0@@%72$2@%62$0@$1@@@@|@|@|@"])
  fun op LESS_MONO_ADD x = x
    val op LESS_MONO_ADD =
    DT(((("arithmetic",86),
        [("arithmetic",[24,37]),("bool",[14,25,63]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%65$2@$1@@%65%59$2@$0@@%59$1@$0@@@|@|@|@"])
  fun op LESS_MONO_ADD_INV x = x
    val op LESS_MONO_ADD_INV =
    DT(((("arithmetic",87),
        [("arithmetic",[24,37]),("bool",[14,25,53,63]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%65%59$2@$0@@%59$1@$0@@@%65$2@$1@@|@|@|@"])
  fun op LESS_MONO_ADD_EQ x = x
    val op LESS_MONO_ADD_EQ =
    DT(((("arithmetic",88),
        [("arithmetic",[86,87]),("bool",[25,26,63])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%59$2@$0@@%59$1@$0@@@%65$2@$1@@|@|@|@"])
  fun op LT_ADD_RCANCEL x = x
    val op LT_ADD_RCANCEL =
    DT(((("arithmetic",89),[("arithmetic",[88])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%59$2@$0@@%59$1@$0@@@%65$2@$1@@|@|@|@"])
  fun op LT_ADD_LCANCEL x = x
    val op LT_ADD_LCANCEL =
    DT(((("arithmetic",90),[("arithmetic",[26,89])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%59$0@$2@@%59$0@$1@@@%65$2@$1@@|@|@|@"])
  fun op EQ_MONO_ADD_EQ x = x
    val op EQ_MONO_ADD_EQ =
    DT(((("arithmetic",91),
        [("arithmetic",[24]),("bool",[14,25,56]),("num",[9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%72%59$2@$0@@%59$1@$0@@@%72$2@$1@@|@|@|@"])
  fun op LESS_EQ_MONO_ADD_EQ x = x
    val op LESS_EQ_MONO_ADD_EQ =
    DT(((("arithmetic",92),
        [("arithmetic",[10,88,91]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%59$2@$0@@%59$1@$0@@@%66$2@$1@@|@|@|@"])
  fun op LESS_EQ_TRANS x = x
    val op LESS_EQ_TRANS =
    DT(((("arithmetic",93),
        [("arithmetic",[31]),("bool",[25,36,63]),
         ("relation",[0,23])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%63%66$2@$1@@%66$1@$0@@@%66$2@$0@@|@|@|@"])
  fun op LESS_EQ_LESS_EQ_MONO x = x
    val op LESS_EQ_LESS_EQ_MONO =
    DT(((("arithmetic",94),[("arithmetic",[25,92,93])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%57%34%74%63%66$3@$1@@%66$2@$0@@@%66%59$3@$2@@%59$1@$0@@@|@|@|@|@"])
  fun op LESS_EQ_REFL x = x
    val op LESS_EQ_REFL =
    DT(((("arithmetic",95),
        [("arithmetic",[10]),("bool",[25,52,56])]),["DISK_THM"]),
       [read"%57%26%66$0@$0@|@"])
  fun op LESS_IMP_LESS_OR_EQ x = x
    val op LESS_IMP_LESS_OR_EQ =
    DT(((("arithmetic",96),
        [("arithmetic",[10]),("bool",[25,52,63])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$1@$0@@%66$1@$0@@|@|@"])
  fun op LESS_MONO_MULT x = x
    val op LESS_MONO_MULT =
    DT(((("arithmetic",97),
        [("arithmetic",[71,94,95]),("bool",[14,25,63]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%66$2@$1@@%66%58$2@$0@@%58$1@$0@@@|@|@|@"])
  fun op LESS_MONO_MULT2 x = x
    val op LESS_MONO_MULT2 =
    DT(((("arithmetic",98),
        [("arithmetic",[73,93,97]),
         ("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%57%23%57%24%74%63%66$3@$1@@%66$2@$0@@@%66%58$3@$2@@%58$1@$0@@@|@|@|@|@"])
  fun op RIGHT_SUB_DISTRIB x = x
    val op RIGHT_SUB_DISTRIB =
    DT(((("arithmetic",99),
        [("arithmetic",[59,63,71,74,77,85,96,97]),
         ("bool",[25,30,54,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%58%62$2@$1@@$0@@%62%58$2@$0@@%58$1@$0@@@|@|@|@"])
  fun op LEFT_SUB_DISTRIB x = x
    val op LEFT_SUB_DISTRIB =
    DT(((("arithmetic",100),
        [("arithmetic",[72,99]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%58$0@%62$2@$1@@@%62%58$0@$2@@%58$0@$1@@@|@|@|@"])
  fun op LESS_ADD_1 x = x
    val op LESS_ADD_1 =
    DT(((("arithmetic",101),
        [("arithmetic",[17,24]),("bool",[14,25,26,27,36,53,56]),
         ("num",[9]),("prim_rec",[6,19])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$0@$1@@%78%33%72$2@%59$1@%59$0@%102%80%119@@@@@|@@|@|@"])
  fun op EXP_ADD x = x
    val op EXP_ADD =
    DT(((("arithmetic",102),
        [("arithmetic",[8,24,71,76]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%33%57%34%57%29%72%90$0@%59$2@$1@@@%58%90$0@$2@@%90$0@$1@@@|@|@|@"])
  fun op NOT_ODD_EQ_EVEN x = x
    val op NOT_ODD_EQ_EVEN =
    DT(((("arithmetic",103),
        [("arithmetic",[24]),("bool",[14,25,26,27,47,54]),("num",[7,9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%29%57%26%129%72%110%59$1@$1@@@%59$0@$0@@@|@|@"])
  fun op MULT_SUC_EQ x = x
    val op MULT_SUC_EQ =
    DT(((("arithmetic",104),
        [("arithmetic",[10,17,24,25,27,51,71,74,91,101]),
         ("bool",[25,26,27,47,54,56,58,63]),("num",[7]),
         ("prim_rec",[24])]),["DISK_THM"]),
       [read"%57%33%57%26%57%29%68%72%58$0@%110$2@@@%58$1@%110$2@@@@%72$0@$1@@|@|@|@"])
  fun op MULT_EXP_MONO x = x
    val op MULT_EXP_MONO =
    DT(((("arithmetic",105),
        [("arithmetic",[8,71,76,104]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%33%57%34%57%29%57%26%68%72%58$1@%90%110$2@@$3@@@%58$0@%90%110$2@@$3@@@@%72$1@$0@@|@|@|@|@"])
  fun op LESS_EQUAL_ANTISYM x = x
    val op LESS_EQUAL_ANTISYM =
    DT(((("arithmetic",106),
        [("arithmetic",[10,35]),("bool",[25,27,56])]),["DISK_THM"]),
       [read"%57%29%57%26%74%63%66$1@$0@@%66$0@$1@@@%72$1@$0@@|@|@"])
  fun op LESS_ADD_SUC x = x
    val op LESS_ADD_SUC =
    DT(((("arithmetic",107),
        [("arithmetic",[24,37]),("bool",[14,25,36,63]),("num",[9]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%26%57%29%65$1@%59$1@%110$0@@@|@|@"])
  fun op LESS_OR_EQ_ADD x = x
    val op LESS_OR_EQ_ADD =
    DT(((("arithmetic",108),
        [("arithmetic",[0,10,32,59]),
         ("bool",[25,30,56,58])]),["DISK_THM"]),
       [read"%57%29%57%26%120%65$1@$0@@%78%33%72$2@%59$0@$1@@|@@|@|@"])
  fun op WOP x = x
    val op WOP =
    DT(((("arithmetic",109),
        [("bool",[14,25,26,27,36,53]),("num",[9]),
         ("prim_rec",[6,15,19])]),["DISK_THM"]),
       [read"%53%2%74%78%29$1$0@|@@%78%29%63$1$0@@%57%26%74%65$0@$1@@%129$2$0@@@|@@|@@|@"])
  fun op COMPLETE_INDUCTION x = x
    val op COMPLETE_INDUCTION =
    DT(((("arithmetic",110),
        [("arithmetic",[109]),
         ("bool",[14,25,26,27,36,51,54,63,92])]),["DISK_THM"]),
       [read"%53%2%74%57%29%74%57%26%74%65$0@$1@@$2$0@@|@@$1$0@@|@@%57%29$1$0@|@@|@"])
  fun op FORALL_NUM_THM x = x
    val op FORALL_NUM_THM =
    DT(((("arithmetic",111),
        [("bool",[2,15,25,26,53,54,58,63,83,99]),("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%68%57%29%2$0@|@@%63%2%64@@%57%29%74%2$0@@%2%110$0@@@|@@@"])
  fun op SUB_MONO_EQ x = x
    val op SUB_MONO_EQ =
    DT(((("arithmetic",112),
        [("arithmetic",[6,37]),("bool",[14,25,36,56,63,64]),("num",[9]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%29%57%26%72%62%110$1@@%110$0@@@%62$1@$0@@|@|@"])
  fun op SUC_SUB x = x
    val op SUC_SUB =
    DT(((("arithmetic",113),
        [("arithmetic",[6,17,112]),("bool",[14,25,26,27,56,64]),
         ("num",[9]),("prim_rec",[4])]),["DISK_THM"]),
       [read"%57%5%72%62%110$0@@$0@@%102%80%119@@@|@"])
  fun op SUB_PLUS x = x
    val op SUB_PLUS =
    DT(((("arithmetic",114),
        [("arithmetic",[24,62,112]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%5%57%6%57%9%72%62$2@%59$1@$0@@@%62%62$2@$1@@$0@@|@|@|@"])
  fun op INV_PRE_LESS x = x
    val op INV_PRE_LESS =
    DT(((("arithmetic",115),
        [("arithmetic",[37]),("bool",[14,25,26,27,54,63]),("num",[9]),
         ("prim_rec",[3,4,6,7])]),["DISK_THM"]),
       [read"%57%26%74%65%64@$0@@%57%29%68%65%105$1@@%105$0@@@%65$1@$0@@|@@|@"])
  fun op INV_PRE_LESS_EQ x = x
    val op INV_PRE_LESS_EQ =
    DT(((("arithmetic",116),
        [("arithmetic",[46,64,92]),("bool",[14,25,26,27,53,56,63]),
         ("num",[9]),("prim_rec",[3,4,7])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%26%68%66%105$0@@%105$1@@@%66$0@$1@@|@@|@"])
  fun op SUB_LESS_EQ x = x
    val op SUB_LESS_EQ =
    DT(((("arithmetic",117),
        [("arithmetic",[25,53,63,114]),("bool",[25,36,63])]),["DISK_THM"]),
       [read"%57%29%57%26%66%62$1@$0@@$1@|@|@"])
  fun op SUB_EQ_EQ_0 x = x
    val op SUB_EQ_EQ_0 =
    DT(((("arithmetic",118),
        [("arithmetic",[6,17,24,43,59,62,101]),
         ("bool",[14,25,26,27,30,52,54,56,58,63,64]),("num",[7,9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%62$1@$0@@$1@@%120%72$1@%64@@%72$0@%64@@@|@|@"])
  fun op SUB_LESS_0 x = x
    val op SUB_LESS_0 =
    DT(((("arithmetic",119),
        [("arithmetic",[6,10,17,24,53,59,63,101]),
         ("bool",[25,26,27,52,53,63,64]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%29%57%26%68%65$0@$1@@%65%64@%62$1@$0@@@|@|@"])
  fun op SUB_LESS_OR x = x
    val op SUB_LESS_OR =
    DT(((("arithmetic",120),
        [("arithmetic",[17,24,53,66,101]),("bool",[25,63]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65$0@$1@@%66$0@%62$1@%102%80%119@@@@@|@|@"])
  fun op LESS_SUB_ADD_LESS x = x
    val op LESS_SUB_ADD_LESS =
    DT(((("arithmetic",121),
        [("arithmetic",[6,59,62,77]),
         ("bool",[14,25,26,27,30,36,52,53,54,63,64]),("num",[9]),
         ("prim_rec",[6,19])]),["DISK_THM"]),
       [read"%57%29%57%26%57%23%74%65$0@%62$2@$1@@@%65%59$0@$1@@$2@@|@|@|@"])
  fun op TIMES2 x = x
    val op TIMES2 =
    DT(((("arithmetic",122),
        [("arithmetic",[1,2,4,24,71]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%29%72%58%102%81%119@@@$0@@%59$0@$0@@|@"])
  fun op LESS_MULT_MONO x = x
    val op LESS_MULT_MONO =
    DT(((("arithmetic",123),
        [("arithmetic",[24,25,27,37,71,88]),
         ("bool",[14,25,26,27,36,54,56,63]),("num",[9]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%57%23%57%29%68%65%58%110$0@@$2@@%58%110$0@@$1@@@%65$2@$1@@|@|@|@"])
  fun op MULT_MONO_EQ x = x
    val op MULT_MONO_EQ =
    DT(((("arithmetic",124),
        [("arithmetic",[24,25,27,71,91]),
         ("bool",[14,25,26,27,36,47,54,56,63]),("num",[7,9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%23%57%29%68%72%58%110$0@@$2@@%58%110$0@@$1@@@%72$2@$1@@|@|@|@"])
  fun op EQ_ADD_LCANCEL x = x
    val op EQ_ADD_LCANCEL =
    DT(((("arithmetic",125),
        [("arithmetic",[24]),("bool",[14,25,36,56]),("num",[9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%72%59$2@$1@@%59$2@$0@@@%72$1@$0@@|@|@|@"])
  fun op EQ_ADD_RCANCEL x = x
    val op EQ_ADD_RCANCEL =
    DT(((("arithmetic",126),[("arithmetic",[26,125])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%72%59$2@$0@@%59$1@$0@@@%72$2@$1@@|@|@|@"])
  fun op EQ_MULT_LCANCEL x = x
    val op EQ_MULT_LCANCEL =
    DT(((("arithmetic",127),
        [("arithmetic",[24,27,71,125]),
         ("bool",[14,25,26,27,36,52,54,56,58,63]),("num",[7,9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%72%58$2@$1@@%58$2@$0@@@%120%72$2@%64@@%72$1@$0@@@|@|@|@"])
  fun op ADD_SUB x = x
    val op ADD_SUB =
    DT(((("arithmetic",128),
        [("arithmetic",[6,24,25,53,59]),("bool",[14,25,26,27,56,63,64]),
         ("num",[9]),("prim_rec",[1,15])]),["DISK_THM"]),
       [read"%57%5%57%9%72%62%59$1@$0@@$0@@$1@|@|@"])
  fun op LESS_EQ_ADD_SUB x = x
    val op LESS_EQ_ADD_SUB =
    DT(((("arithmetic",129),
        [("arithmetic",[10,17,25,27,63,81,95,101,128]),
         ("bool",[25,36,56,58,63])]),["DISK_THM"]),
       [read"%57%9%57%6%74%66$1@$0@@%57%5%72%62%59$0@$1@@$2@@%59$0@%62$1@$2@@@|@@|@|@"])
  fun op SUB_EQUAL_0 x = x
    val op SUB_EQUAL_0 =
    DT(((("arithmetic",130),[("arithmetic",[24,128])]),["DISK_THM"]),
       [read"%57%9%72%62$0@$0@@%64@|@"])
  fun op LESS_EQ_SUB_LESS x = x
    val op LESS_EQ_SUB_LESS =
    DT(((("arithmetic",131),
        [("arithmetic",[10,17,24,25,28,88,101,107,128,130]),
         ("bool",[25,26,27,54,56,63]),("prim_rec",[4,7])]),["DISK_THM"]),
       [read"%57%5%57%6%74%66$0@$1@@%57%9%68%65%62$2@$1@@$0@@%65$2@%59$1@$0@@@|@@|@|@"])
  fun op NOT_SUC_LESS_EQ x = x
    val op NOT_SUC_LESS_EQ =
    DT(((("arithmetic",132),
        [("arithmetic",[41,59]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%29%57%26%68%129%66%110$1@@$0@@@%66$0@$1@@|@|@"])
  fun op SUB_SUB x = x
    val op SUB_SUB =
    DT(((("arithmetic",133),
        [("arithmetic",[10,17,25,62,101,114,128,130]),
         ("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%6%57%9%74%66$0@$1@@%57%5%72%62$0@%62$2@$1@@@%62%59$0@$1@@$2@@|@@|@|@"])
  fun op LESS_IMP_LESS_ADD x = x
    val op LESS_IMP_LESS_ADD =
    DT(((("arithmetic",134),
        [("arithmetic",[17,24,27,101,107])]),["DISK_THM"]),
       [read"%57%29%57%26%74%65$1@$0@@%57%33%65$2@%59$1@$0@@|@@|@|@"])
  fun op SUB_LESS_EQ_ADD x = x
    val op SUB_LESS_EQ_ADD =
    DT(((("arithmetic",135),
        [("arithmetic",[10,25,85,131]),("bool",[58])]),["DISK_THM"]),
       [read"%57%26%57%33%74%66$1@$0@@%57%29%68%66%62$1@$2@@$0@@%66$1@%59$2@$0@@@|@@|@|@"])
  fun op SUB_CANCEL x = x
    val op SUB_CANCEL =
    DT(((("arithmetic",136),
        [("arithmetic",[10,25,59,63,81,85,91,96,101,128,130]),
         ("bool",[25,54,56,58,63]),("prim_rec",[24])]),["DISK_THM"]),
       [read"%57%33%57%29%57%26%74%63%66$1@$2@@%66$0@$2@@@%68%72%62$2@$1@@%62$2@$0@@@%72$1@$0@@@|@|@|@"])
  fun op CANCEL_SUB x = x
    val op CANCEL_SUB =
    DT(((("arithmetic",137),
        [("arithmetic",[10,25,59,63,91,101,128,130]),
         ("bool",[25,26,27,54,56,58,63]),("prim_rec",[24])]),["DISK_THM"]),
       [read"%57%33%57%29%57%26%74%63%66$2@$1@@%66$2@$0@@@%68%72%62$1@$2@@%62$0@$2@@@%72$1@$0@@@|@|@|@"])
  fun op NOT_EXP_0 x = x
    val op NOT_EXP_0 =
    DT(((("arithmetic",138),
        [("arithmetic",[8,17,71,124]),("bool",[14,25,26,27,36,54]),
         ("num",[7,9])]),["DISK_THM"]),
       [read"%57%26%57%29%129%72%90%110$0@@$1@@%64@@|@|@"])
  fun op ZERO_LESS_EXP x = x
    val op ZERO_LESS_EXP =
    DT(((("arithmetic",139),
        [("arithmetic",[49,138]),("bool",[27])]),["DISK_THM"]),
       [read"%57%26%57%29%65%64@%90%110$0@@$1@@|@|@"])
  fun op ODD_OR_EVEN x = x
    val op ODD_OR_EVEN =
    DT(((("arithmetic",140),
        [("arithmetic",[17,24,71]),("bool",[14,25,52,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%29%78%26%120%72$1@%58%110%110%64@@@$0@@@%72$1@%59%58%110%110%64@@@$0@@%102%80%119@@@@@|@|@"])
  fun op LESS_EXP_SUC_MONO x = x
    val op LESS_EXP_SUC_MONO =
    DT(((("arithmetic",141),
        [("arithmetic",[8,17,24,37,71,123]),("bool",[14,25,36,63]),
         ("num",[9]),("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%29%57%26%65%90%110%110$0@@@$1@@%90%110%110$0@@@%110$1@@@|@|@"])
  fun op LESS_LESS_CASES x = x
    val op LESS_LESS_CASES =
    DT(((("arithmetic",142),
        [("arithmetic",[10,51]),("bool",[25,52,56,63])]),["DISK_THM"]),
       [read"%57%26%57%29%120%72$1@$0@@%120%65$1@$0@@%65$0@$1@@@|@|@"])
  fun op GREATER_EQ x = x
    val op GREATER_EQ =
    DT(((("arithmetic",143),
        [("arithmetic",[9,10,11]),("bool",[58])]),["DISK_THM"]),
       [read"%57%29%57%26%68%76$1@$0@@%66$0@$1@@|@|@"])
  fun op LESS_EQ_CASES x = x
    val op LESS_EQ_CASES =
    DT(((("arithmetic",144),
        [("arithmetic",[51,96]),("bool",[25,52,63])]),["DISK_THM"]),
       [read"%57%26%57%29%120%66$1@$0@@%66$0@$1@@|@|@"])
  fun op LESS_EQUAL_ADD x = x
    val op LESS_EQUAL_ADD =
    DT(((("arithmetic",145),
        [("arithmetic",[10,24,25,32]),("bool",[25,56,58])]),["DISK_THM"]),
       [read"%57%26%57%29%74%66$1@$0@@%78%33%72$1@%59$2@$0@@|@@|@|@"])
  fun op LESS_EQ_EXISTS x = x
    val op LESS_EQ_EXISTS =
    DT(((("arithmetic",146),
        [("arithmetic",[53,145]),("bool",[26])]),["DISK_THM"]),
       [read"%57%26%57%29%68%66$1@$0@@%78%33%72$1@%59$2@$0@@|@@|@|@"])
  fun op LESS_EQ_0 x = x
    val op LESS_EQ_0 =
    DT(((("arithmetic",147),
        [("arithmetic",[46,95,106]),("bool",[26])]),["DISK_THM"]),
       [read"%57%29%68%66$0@%64@@%72$0@%64@@|@"])
  fun op MULT_EQ_0 x = x
    val op MULT_EQ_0 =
    DT(((("arithmetic",148),
        [("arithmetic",[24,28,71]),("bool",[25,26,27,52,54,56,63]),
         ("num",[7])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%58$1@$0@@%64@@%120%72$1@%64@@%72$0@%64@@@|@|@"])
  fun op MULT_EQ_1 x = x
    val op MULT_EQ_1 =
    DT(((("arithmetic",149),
        [("arithmetic",[17,24,28,71,79,148]),
         ("bool",[25,26,27,51,52,54,56,58,63]),
         ("prim_rec",[1,22])]),["DISK_THM"]),
       [read"%57%39%57%43%68%72%58$1@$0@@%102%80%119@@@@%63%72$1@%102%80%119@@@@%72$0@%102%80%119@@@@@|@|@"])
  fun op MULT_EQ_ID x = x
    val op MULT_EQ_ID =
    DT(((("arithmetic",150),
        [("arithmetic",[17,25,28,71,81,148]),
         ("bool",[25,26,27,52,53,54,55,58,63,99]),("num",[7]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%58$1@$0@@$0@@%120%72$1@%102%80%119@@@@%72$0@%64@@@|@|@"])
  fun op LESS_MULT2 x = x
    val op LESS_MULT2 =
    DT(((("arithmetic",151),
        [("arithmetic",[59,147,148]),
         ("bool",[25,26,53,96])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$1@@%65%64@$0@@@%65%64@%58$1@$0@@@|@|@"])
  fun op ZERO_LESS_MULT x = x
    val op ZERO_LESS_MULT =
    DT(((("arithmetic",152),
        [("arithmetic",[24,28,71]),("bool",[25,26,27,51,54,63]),
         ("prim_rec",[4,7])]),["DISK_THM"]),
       [read"%57%26%57%29%68%65%64@%58$1@$0@@@%63%65%64@$1@@%65%64@$0@@@|@|@"])
  fun op ZERO_LESS_ADD x = x
    val op ZERO_LESS_ADD =
    DT(((("arithmetic",153),
        [("arithmetic",[24,28]),("bool",[25,26,27,52,56,63]),
         ("prim_rec",[4,7])]),["DISK_THM"]),
       [read"%57%26%57%29%68%65%64@%59$1@$0@@@%120%65%64@$1@@%65%64@$0@@@|@|@"])
  fun op LESS_EQ_LESS_TRANS x = x
    val op LESS_EQ_LESS_TRANS =
    DT(((("arithmetic",154),
        [("arithmetic",[10,34]),
         ("bool",[25,26,27,30,51,52,53,56,63])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%63%66$2@$1@@%65$1@$0@@@%65$2@$0@@|@|@|@"])
  fun op LESS_LESS_EQ_TRANS x = x
    val op LESS_LESS_EQ_TRANS =
    DT(((("arithmetic",155),
        [("arithmetic",[10,34]),
         ("bool",[25,26,27,30,51,52,53,56,63])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%74%63%65$2@$1@@%66$1@$0@@@%65$2@$0@@|@|@|@"])
  fun op FACT_LESS x = x
    val op FACT_LESS =
    DT(((("arithmetic",157),
        [("arithmetic",[17,151,156]),("bool",[14,25,51,63]),("num",[9]),
         ("prim_rec",[7,15])]),["DISK_THM"]),
       [read"%57%29%65%64@%92$0@@|@"])
  fun op EVEN_ODD x = x
    val op EVEN_ODD =
    DT(((("arithmetic",158),
        [("arithmetic",[12,13]),("bool",[14,25,54,56,63]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%29%68%89$0@@%129%103$0@@@|@"])
  fun op ODD_EVEN x = x
    val op ODD_EVEN =
    DT(((("arithmetic",159),
        [("arithmetic",[158]),("bool",[25,36,54,56])]),["DISK_THM"]),
       [read"%57%29%68%103$0@@%129%89$0@@@|@"])
  fun op EVEN_OR_ODD x = x
    val op EVEN_OR_ODD =
    DT(((("arithmetic",160),
        [("arithmetic",[158]),("bool",[25,36,50,54,63,96])]),["DISK_THM"]),
       [read"%57%29%120%89$0@@%103$0@@|@"])
  fun op EVEN_AND_ODD x = x
    val op EVEN_AND_ODD =
    DT(((("arithmetic",161),
        [("arithmetic",[159]),("bool",[25,26,27,36,50,54])]),["DISK_THM"]),
       [read"%57%29%129%63%89$0@@%103$0@@@|@"])
  fun op EVEN_ADD x = x
    val op EVEN_ADD =
    DT(((("arithmetic",162),
        [("arithmetic",[12,24]),("bool",[13,14,25,36,54,56,63]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%68%89%59$1@$0@@@%68%89$1@@%89$0@@@|@|@"])
  fun op EVEN_MULT x = x
    val op EVEN_MULT =
    DT(((("arithmetic",163),
        [("arithmetic",[12,71,162]),("bool",[13,14,25,36,52,54,56,63]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%68%89%58$1@$0@@@%120%89$1@@%89$0@@@|@|@"])
  fun op ODD_ADD x = x
    val op ODD_ADD =
    DT(((("arithmetic",164),
        [("arithmetic",[159,162]),
         ("bool",[13,25,54,56,63])]),["DISK_THM"]),
       [read"%57%26%57%29%68%103%59$1@$0@@@%129%68%103$1@@%103$0@@@@|@|@"])
  fun op ODD_MULT x = x
    val op ODD_MULT =
    DT(((("arithmetic",165),
        [("arithmetic",[159,163]),("bool",[25,56,96])]),["DISK_THM"]),
       [read"%57%26%57%29%68%103%58$1@$0@@@%63%103$1@@%103$0@@@|@|@"])
  fun op EVEN_DOUBLE x = x
    val op EVEN_DOUBLE =
    DT(((("arithmetic",166),
        [("arithmetic",[1,3,4,12,17,24,163]),
         ("bool",[25,54,56])]),["DISK_THM"]),
       [read"%57%29%89%58%102%81%119@@@$0@@|@"])
  fun op ODD_DOUBLE x = x
    val op ODD_DOUBLE =
    DT(((("arithmetic",167),
        [("arithmetic",[13,158,166]),
         ("bool",[25,36,58,63])]),["DISK_THM"]),
       [read"%57%29%103%110%58%102%81%119@@@$0@@@|@"])
  fun op EVEN_ODD_EXISTS x = x
    val op EVEN_ODD_EXISTS =
    DT(((("arithmetic",168),
        [("arithmetic",[1,3,4,12,17,24,71,159]),
         ("bool",[14,25,51,53,54,56]),("num",[9])]),["DISK_THM"]),
       [read"%57%29%63%74%89$0@@%78%26%72$1@%58%102%81%119@@@$0@@|@@@%74%103$0@@%78%26%72$1@%110%58%102%81%119@@@$0@@@|@@@|@"])
  fun op EVEN_EXISTS x = x
    val op EVEN_EXISTS =
    DT(((("arithmetic",169),
        [("arithmetic",[166,168]),("bool",[25,26,63])]),["DISK_THM"]),
       [read"%57%29%68%89$0@@%78%26%72$1@%58%102%81%119@@@$0@@|@@|@"])
  fun op ODD_EXISTS x = x
    val op ODD_EXISTS =
    DT(((("arithmetic",170),
        [("arithmetic",[167,168]),("bool",[25,26,63])]),["DISK_THM"]),
       [read"%57%29%68%103$0@@%78%26%72$1@%110%58%102%81%119@@@$0@@@|@@|@"])
  fun op EVEN_EXP x = x
    val op EVEN_EXP =
    DT(((("arithmetic",171),
        [("arithmetic",[8,28,163]),("bool",[25,52,53,54,63]),
         ("prim_rec",[6]),("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$0@@%89$1@@@%89%90$1@$0@@@|@|@"])
  fun op EQ_LESS_EQ x = x
    val op EQ_LESS_EQ =
    DT(((("arithmetic",172),
        [("arithmetic",[95,106]),("bool",[25,26,51,63])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72$1@$0@@%63%66$1@$0@@%66$0@$1@@@|@|@"])
  fun op ADD_MONO_LESS_EQ x = x
    val op ADD_MONO_LESS_EQ =
    DT(((("arithmetic",173),
        [("arithmetic",[25,92]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%59$2@$1@@%59$2@$0@@@%66$1@$0@@|@|@|@"])
  fun op LE_ADD_LCANCEL x = x
    val op LE_ADD_LCANCEL =
    DT(((("arithmetic",174),[("arithmetic",[173])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%59$2@$1@@%59$2@$0@@@%66$1@$0@@|@|@|@"])
  fun op LE_ADD_RCANCEL x = x
    val op LE_ADD_RCANCEL =
    DT(((("arithmetic",175),[("arithmetic",[26,174])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%59$1@$2@@%59$0@$2@@@%66$1@$0@@|@|@|@"])
  fun op NOT_LEQ x = x
    val op NOT_LEQ =
    DT(((("arithmetic",176),
        [("arithmetic",[41,59]),("bool",[25,36,54,56])]),["DISK_THM"]),
       [read"%57%26%57%29%68%129%66$1@$0@@@%66%110$0@@$1@@|@|@"])
  fun op NOT_NUM_EQ x = x
    val op NOT_NUM_EQ =
    DT(((("arithmetic",177),
        [("arithmetic",[172,176]),("bool",[94,96])]),["DISK_THM"]),
       [read"%57%26%57%29%68%129%72$1@$0@@@%120%66%110$1@@$0@@%66%110$0@@$1@@@|@|@"])
  fun op NOT_GREATER x = x
    val op NOT_GREATER =
    DT(((("arithmetic",178),
        [("arithmetic",[9,59]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%26%57%29%68%129%75$1@$0@@@%66$1@$0@@|@|@"])
  fun op NOT_GREATER_EQ x = x
    val op NOT_GREATER_EQ =
    DT(((("arithmetic",179),
        [("arithmetic",[143,176]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%26%57%29%68%129%76$1@$0@@@%66%110$1@@$0@@|@|@"])
  fun op SUC_ONE_ADD x = x
    val op SUC_ONE_ADD =
    DT(((("arithmetic",180),[("arithmetic",[25,64])]),["DISK_THM"]),
       [read"%57%29%72%110$0@@%59%102%80%119@@@$0@@|@"])
  fun op SUC_ADD_SYM x = x
    val op SUC_ADD_SYM =
    DT(((("arithmetic",181),[("arithmetic",[24,25])]),["DISK_THM"]),
       [read"%57%26%57%29%72%110%59$1@$0@@@%59%110$0@@$1@@|@|@"])
  fun op NOT_SUC_ADD_LESS_EQ x = x
    val op NOT_SUC_ADD_LESS_EQ =
    DT(((("arithmetic",182),
        [("arithmetic",[41,53,59]),("bool",[25,63])]),["DISK_THM"]),
       [read"%57%26%57%29%129%66%110%59$1@$0@@@$1@@|@|@"])
  fun op MULT_LESS_EQ_SUC x = x
    val op MULT_LESS_EQ_SUC =
    DT(((("arithmetic",183),
        [("arithmetic",[24,25,34,59,71,72,86,97]),
         ("bool",[14,25,26,53,54,63]),("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66$2@$1@@%66%58%110$0@@$2@@%58%110$0@@$1@@@|@|@|@"])
  fun op LE_MULT_LCANCEL x = x
    val op LE_MULT_LCANCEL =
    DT(((("arithmetic",184),
        [("arithmetic",[28,71,95,183]),("bool",[25,26,27,52,56,58,63]),
         ("num",[7])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%58$2@$1@@%58$2@$0@@@%120%72$2@%64@@%66$1@$0@@@|@|@|@"])
  fun op LE_MULT_RCANCEL x = x
    val op LE_MULT_RCANCEL =
    DT(((("arithmetic",185),
        [("arithmetic",[73,184]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%58$2@$1@@%58$0@$1@@@%120%72$1@%64@@%66$2@$0@@@|@|@|@"])
  fun op LT_MULT_LCANCEL x = x
    val op LT_MULT_LCANCEL =
    DT(((("arithmetic",186),
        [("arithmetic",[28,71,123]),("bool",[25,26,27,51,54,56,63]),
         ("prim_rec",[4,7])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%58$2@$1@@%58$2@$0@@@%63%65%64@$2@@%65$1@$0@@@|@|@|@"])
  fun op LT_MULT_RCANCEL x = x
    val op LT_MULT_RCANCEL =
    DT(((("arithmetic",187),
        [("arithmetic",[73,186]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%58$2@$1@@%58$0@$1@@@%63%65%64@$1@@%65$2@$0@@@|@|@|@"])
  fun op LT_MULT_CANCEL_LBARE x = x
    val op LT_MULT_CANCEL_LBARE =
    DT(((("arithmetic",188),[("arithmetic",[71,186,187])]),["DISK_THM"]),
       [read"%63%68%65%26@%58%26@%29@@@%63%65%64@%26@@%65%102%80%119@@@%29@@@@%68%65%26@%58%29@%26@@@%63%65%64@%26@@%65%102%80%119@@@%29@@@@"])
  fun op LT_MULT_CANCEL_RBARE x = x
    val op LT_MULT_CANCEL_RBARE =
    DT(((("arithmetic",189),
        [("arithmetic",[17,28,37,71,186,187]),("bool",[25,26,27,54,56,63]),
         ("num",[7]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%63%68%65%58%26@%29@@%26@@%63%65%64@%26@@%72%29@%64@@@@%68%65%58%26@%29@@%29@@%63%65%64@%29@@%72%26@%64@@@@"])
  fun op LE_MULT_CANCEL_LBARE x = x
    val op LE_MULT_CANCEL_LBARE =
    DT(((("arithmetic",190),
        [("arithmetic",[17,41,71,184,185]),
         ("bool",[25,56])]),["DISK_THM"]),
       [read"%63%68%66%26@%58%26@%29@@@%120%72%26@%64@@%65%64@%29@@@@%68%66%26@%58%29@%26@@@%120%72%26@%64@@%65%64@%29@@@@"])
  fun op LE_MULT_CANCEL_RBARE x = x
    val op LE_MULT_CANCEL_RBARE =
    DT(((("arithmetic",191),[("arithmetic",[71,184,185])]),["DISK_THM"]),
       [read"%63%68%66%58%26@%29@@%26@@%120%72%26@%64@@%66%29@%102%80%119@@@@@@%68%66%58%26@%29@@%29@@%120%72%29@%64@@%66%26@%102%80%119@@@@@@"])
  fun op SUB_LEFT_ADD x = x
    val op SUB_LEFT_ADD =
    DT(((("arithmetic",192),
        [("arithmetic",[24,59,63,96,129]),
         ("bool",[25,26,27,30,54,56,63,64])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%59$2@%62$1@$0@@@%83%66$1@$0@@$2@%62%59$2@$1@@$0@@@|@|@|@"])
  fun op SUB_RIGHT_ADD x = x
    val op SUB_RIGHT_ADD =
    DT(((("arithmetic",193),
        [("arithmetic",[24,25,59,63,96,129]),
         ("bool",[25,26,27,30,54,56,63,64])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%59%62$2@$1@@$0@@%83%66$2@$1@@$0@%62%59$2@$0@@$1@@@|@|@|@"])
  fun op SUB_LEFT_SUB x = x
    val op SUB_LEFT_SUB =
    DT(((("arithmetic",194),
        [("arithmetic",[59,62,63,96,133]),
         ("bool",[25,26,27,30,54,56,63,64])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%62$2@%62$1@$0@@@%83%66$1@$0@@$2@%62%59$2@$0@@$1@@@|@|@|@"])
  fun op SUB_RIGHT_SUB x = x
    val op SUB_RIGHT_SUB =
    DT(((("arithmetic",195),
        [("arithmetic",[24,62,112]),("bool",[14,25,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%62%62$2@$1@@$0@@%62$2@%59$1@$0@@@|@|@|@"])
  fun op SUB_LEFT_SUC x = x
    val op SUB_LEFT_SUC =
    DT(((("arithmetic",196),
        [("arithmetic",[6,10,63]),
         ("bool",[25,26,27,30,56,63,64,96])]),["DISK_THM"]),
       [read"%57%26%57%29%72%110%62$1@$0@@@%83%66$1@$0@@%110%64@@%62%110$1@@$0@@@|@|@"])
  fun op SUB_LEFT_LESS_EQ x = x
    val op SUB_LEFT_LESS_EQ =
    DT(((("arithmetic",197),
        [("arithmetic",[10,24,25,59,63,77,92,96,134]),
         ("bool",[13,25,26,27,30,52,54,56,63]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66$2@%62$1@$0@@@%120%66%59$2@$0@@$1@@%66$2@%64@@@|@|@|@"])
  fun op SUB_RIGHT_LESS_EQ x = x
    val op SUB_RIGHT_LESS_EQ =
    DT(((("arithmetic",198),
        [("arithmetic",[10,46,59,63,96,134,135]),
         ("bool",[25,30,52,54,63])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%62$2@$1@@$0@@%66$2@%59$1@$0@@@|@|@|@"])
  fun op SUB_LEFT_LESS x = x
    val op SUB_LEFT_LESS =
    DT(((("arithmetic",199),
        [("arithmetic",[0,41,197]),("bool",[25,26,27,52,56]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65$2@%62$1@$0@@@%65%59$2@$0@@$1@@|@|@|@"])
  fun op SUB_RIGHT_LESS x = x
    val op SUB_RIGHT_LESS =
    DT(((("arithmetic",200),
        [("arithmetic",[25,59,197]),
         ("bool",[13,25,54,56,63,96])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%62$2@$1@@$0@@%63%65$2@%59$1@$0@@@%65%64@$0@@@|@|@|@"])
  fun op SUB_LEFT_GREATER_EQ x = x
    val op SUB_LEFT_GREATER_EQ =
    DT(((("arithmetic",201),
        [("arithmetic",[9,10,11,25,198]),
         ("bool",[25,56,58])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%76$2@%62$1@$0@@@%76%59$2@$0@@$1@@|@|@|@"])
  fun op SUB_RIGHT_GREATER_EQ x = x
    val op SUB_RIGHT_GREATER_EQ =
    DT(((("arithmetic",202),
        [("arithmetic",[9,10,11,25,197]),
         ("bool",[25,56,58])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%76%62$2@$1@@$0@@%120%76$2@%59$1@$0@@@%76%64@$0@@@|@|@|@"])
  fun op SUB_LEFT_GREATER x = x
    val op SUB_LEFT_GREATER =
    DT(((("arithmetic",203),
        [("arithmetic",[9,25,200]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%75$2@%62$1@$0@@@%63%75%59$2@$0@@$1@@%75$2@%64@@@|@|@|@"])
  fun op SUB_RIGHT_GREATER x = x
    val op SUB_RIGHT_GREATER =
    DT(((("arithmetic",204),
        [("arithmetic",[9,25,199]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%75%62$2@$1@@$0@@%75$2@%59$1@$0@@@|@|@|@"])
  fun op SUB_LEFT_EQ x = x
    val op SUB_LEFT_EQ =
    DT(((("arithmetic",205),
        [("arithmetic",[24,25,57,59,172,197,198]),
         ("bool",[25,30,51,52,54,56,63,98])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%72$2@%62$1@$0@@@%120%72%59$2@$0@@$1@@%63%66$2@%64@@%66$1@$0@@@@|@|@|@"])
  fun op SUB_RIGHT_EQ x = x
    val op SUB_RIGHT_EQ =
    DT(((("arithmetic",206),
        [("arithmetic",[24,25,57,59,172,197,198]),
         ("bool",[25,30,51,52,54,56,63,97])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%72%62$2@$1@@$0@@%120%72$2@%59$1@$0@@@%63%66$2@$1@@%66$0@%64@@@@|@|@|@"])
  fun op LE x = x
    val op LE =
    DT(((("arithmetic",207),
        [("arithmetic",[10,45,147]),("bool",[25,26,52,56,63]),
         ("prim_rec",[17])]),["DISK_THM"]),
       [read"%63%57%29%68%66$0@%64@@%72$0@%64@@|@@%57%26%57%29%68%66$1@%110$0@@@%120%72$1@%110$0@@@%66$1@$0@@@|@|@@"])
  fun op DA x = x
    val op DA =
    DT(((("arithmetic",208),
        [("arithmetic",[10,17,24,25,27,51,57,71,74,101,109]),
         ("bool",[25,26,27,51,53,54,56]),("num",[7])]),["DISK_THM"]),
       [read"%57%25%57%29%74%65%64@$0@@%78%35%78%34%63%72$3@%59%58$0@$2@@$1@@@%65$1@$2@@|@|@@|@|@"])
  fun op MOD_ONE x = x
    val op MOD_ONE =
    DT(((("arithmetic",211),
        [("arithmetic",[209]),("bool",[25,26,27,52,53,63]),
         ("prim_rec",[6,15,19])]),["DISK_THM"]),
       [read"%57%25%72%99$0@%110%64@@@%64@|@"])
  fun op MOD_1 x = x
    val op MOD_1 =
    DT(((("arithmetic",212),[("arithmetic",[17,211])]),["DISK_THM"]),
       [read"%57%25%72%99$0@%102%80%119@@@@%64@|@"])
  fun op DIV_LESS_EQ x = x
    val op DIV_LESS_EQ =
    DT(((("arithmetic",213),
        [("arithmetic",[27,28,53,71,209]),("bool",[27]),
         ("prim_rec",[24])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%25%66%86$0@$1@@$0@|@@|@"])
  fun op DIV_UNIQUE x = x
    val op DIV_UNIQUE =
    DT(((("arithmetic",214),
        [("arithmetic",
         [17,24,25,27,37,46,59,64,71,74,75,88,92,101,106,155,173,209]),
         ("bool",[14,25,26,27,51,53,54,58,63]),("num",[9]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%29%57%25%57%34%74%78%35%63%72$2@%59%58$1@$3@@$0@@@%65$0@$3@@|@@%72%86$1@$2@@$0@@|@|@|@"])
  fun op MOD_UNIQUE x = x
    val op MOD_UNIQUE =
    DT(((("arithmetic",215),
        [("arithmetic",[17,24,25,91,101,209,214]),
         ("bool",[25,51,53,56,63]),("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%29%57%25%57%35%74%78%34%63%72$2@%59%58$0@$3@@$1@@@%65$1@$3@@|@@%72%99$1@$2@@$0@@|@|@|@"])
  fun op DIV_MULT x = x
    val op DIV_MULT =
    DT(((("arithmetic",216),
        [("arithmetic",[28,214]),("bool",[25,26,27,51,53,56,63]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%57%29%57%35%74%65$0@$1@@%57%34%72%86%59%58$0@$2@@$1@@$2@@$0@|@@|@|@"])
  fun op LESS_MOD x = x
    val op LESS_MOD =
    DT(((("arithmetic",217),
        [("arithmetic",[24,71,215]),("bool",[25,51,56,63])]),["DISK_THM"]),
       [read"%57%29%57%25%74%65$0@$1@@%72%99$0@$1@@$0@@|@|@"])
  fun op MOD_EQ_0 x = x
    val op MOD_EQ_0 =
    DT(((("arithmetic",218),
        [("arithmetic",[24,209,215]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%25%72%99%58$0@$1@@$1@@%64@|@@|@"])
  fun op ZERO_MOD x = x
    val op ZERO_MOD =
    DT(((("arithmetic",219),
        [("arithmetic",[71,218]),("bool",[25,53])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%72%99%64@$0@@%64@@|@"])
  fun op ZERO_DIV x = x
    val op ZERO_DIV =
    DT(((("arithmetic",220),
        [("arithmetic",[24,71,214]),("bool",[25,51,56,63])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%72%86%64@$0@@%64@@|@"])
  fun op MOD_MULT x = x
    val op MOD_MULT =
    DT(((("arithmetic",221),
        [("arithmetic",[215]),("bool",[25,51,56,63])]),["DISK_THM"]),
       [read"%57%29%57%35%74%65$0@$1@@%57%34%72%99%59%58$0@$2@@$1@@$2@@$1@|@@|@|@"])
  fun op MOD_TIMES x = x
    val op MOD_TIMES =
    DT(((("arithmetic",222),
        [("arithmetic",[27,74,209,221])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%34%57%35%72%99%59%58$1@$2@@$0@@$2@@%99$0@$2@@|@|@@|@"])
  fun op MOD_TIMES_SUB x = x
    val op MOD_TIMES_SUB =
    DT(((("arithmetic",223),
        [("arithmetic",[7,28,129,222]),("bool",[25,26,27,36,51,53,56,63]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%57%29%57%34%57%35%74%63%65%64@$2@@%63%65%64@$1@@%66$0@$2@@@@%72%99%62%58$1@$2@@$0@@$2@@%99%62$2@$0@@$2@@@|@|@|@"])
  fun op MOD_PLUS x = x
    val op MOD_PLUS =
    DT(((("arithmetic",224),
        [("arithmetic",[25,27,209,222]),("bool",[25,56])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%24%57%25%72%99%59%99$1@$2@@%99$0@$2@@@$2@@%99%59$1@$0@@$2@@|@|@@|@"])
  fun op MOD_MOD x = x
    val op MOD_MOD =
    DT(((("arithmetic",225),[("arithmetic",[209,217])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%25%72%99%99$0@$1@@$1@@%99$0@$1@@|@@|@"])
  fun op LESS_DIV_EQ_ZERO x = x
    val op LESS_DIV_EQ_ZERO =
    DT(((("arithmetic",226),[("arithmetic",[0,7,216])]),["DISK_THM"]),
       [read"%57%35%57%29%74%65$1@$0@@%72%86$1@$0@@%64@@|@|@"])
  fun op MULT_DIV x = x
    val op MULT_DIV =
    DT(((("arithmetic",227),
        [("arithmetic",[22,216]),("bool",[26])]),["DISK_THM"]),
       [read"%57%29%57%34%74%65%64@$1@@%72%86%58$0@$1@@$1@@$0@@|@|@"])
  fun op ADD_DIV_ADD_DIV x = x
    val op ADD_DIV_ADD_DIV =
    DT(((("arithmetic",228),
        [("arithmetic",[22,27,74,208,216,226]),
         ("bool",[25,26,30,56,58])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%39%57%35%72%86%59%58$1@$2@@$0@@$2@@%59$1@%86$0@$2@@@|@|@@|@"])
  fun op ADD_DIV_RWT x = x
    val op ADD_DIV_RWT =
    DT(((("arithmetic",229),
        [("arithmetic",[22,26,27,74,125,126,209,214]),
         ("bool",[25,51,56,58,63,169]),("marker",[9])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%26%57%33%74%120%72%99$1@$2@@%64@@%72%99$0@$2@@%64@@@%72%86%59$1@$0@@$2@@%59%86$1@$2@@%86$0@$2@@@@|@|@@|@"])
  fun op MOD_MULT_MOD x = x
    val op MOD_MULT_MOD =
    DT(((("arithmetic",230),
        [("arithmetic",[24,71,72,76,208,221,222]),
         ("bool",[14,25,26,27,51,53,58,63]),("num",[9]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$0@@%65%64@$1@@@%57%39%72%99%99$0@%58$1@$2@@@$1@@%99$0@$1@@|@@|@|@"])
  fun op DIV_ONE x = x
    val op DIV_ONE =
    DT(((("arithmetic",231),
        [("arithmetic",[17,70,227]),("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%34%72%86$0@%110%64@@@$0@|@"])
  fun op DIV_1 x = x
    val op DIV_1 =
    DT(((("arithmetic",232),[("arithmetic",[17,231])]),["DISK_THM"]),
       [read"%57%34%72%86$0@%102%80%119@@@@$0@|@"])
  fun op DIVMOD_ID x = x
    val op DIVMOD_ID =
    DT(((("arithmetic",233),
        [("arithmetic",[24,71,214,215]),
         ("bool",[25,51,56,63])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%63%72%86$0@$0@@%102%80%119@@@@%72%99$0@$0@@%64@@@|@"])
  fun op DIV_DIV_DIV_MULT x = x
    val op DIV_DIV_DIV_MULT =
    DT(((("arithmetic",234),
        [("arithmetic",
         [7,24,25,27,34,53,71,72,74,76,81,88,155,208,216,226,228]),
         ("bool",[14,25,26,27,51,53,56,58,63]),("num",[9]),
         ("prim_rec",[6,7,15,19])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$1@@%65%64@$0@@@%57%39%72%86%86$0@$2@@$1@@%86$0@%58$2@$1@@@|@@|@|@"])
  fun op SUC_PRE x = x
    val op SUC_PRE =
    DT(((("arithmetic",235),
        [("arithmetic",[28]),("bool",[25,26,27,54,56,63]),("num",[7]),
         ("prim_rec",[3,6,7])]),["DISK_THM"]),
       [read"%68%65%64@%26@@%72%110%105%26@@@%26@@"])
  fun op DIV_LESS x = x
    val op DIV_LESS =
    DT(((("arithmetic",236),
        [("arithmetic",[17,24,25,27,28,37,71,86,209,226,228,235]),
         ("bool",[25,51,52,53,56,58,63]),
         ("prim_rec",[5,7])]),["DISK_THM"]),
       [read"%57%29%57%10%74%63%65%64@$1@@%65%102%80%119@@@$0@@@%65%86$1@$0@@$1@@|@|@"])
  fun op MOD_LESS x = x
    val op MOD_LESS =
    DT(((("arithmetic",237),
        [("arithmetic",[209]),("bool",[25,53,54,58,63,83,100]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%57%26%57%29%74%65%64@$0@@%65%99$1@$0@@$0@@|@|@"])
  fun op ADD_MODULUS x = x
    val op ADD_MODULUS =
    DT(((("arithmetic",238),
        [("arithmetic",[24,25,224,225,233]),
         ("bool",[25,53,54,58,63,83,100]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%63%57%29%57%39%74%65%64@$1@@%72%99%59$0@$1@@$1@@%99$0@$1@@@|@|@@%57%29%57%39%74%65%64@$1@@%72%99%59$1@$0@@$1@@%99$0@$1@@@|@|@@"])
  fun op ADD_MODULUS_LEFT x = x
    val op ADD_MODULUS_LEFT =
    DT(((("arithmetic",239),[("arithmetic",[238])]),["DISK_THM"]),
       [read"%57%29%57%39%74%65%64@$1@@%72%99%59$0@$1@@$1@@%99$0@$1@@@|@|@"])
  fun op ADD_MODULUS_RIGHT x = x
    val op ADD_MODULUS_RIGHT =
    DT(((("arithmetic",240),[("arithmetic",[238])]),["DISK_THM"]),
       [read"%57%29%57%39%74%65%64@$1@@%72%99%59$1@$0@@$1@@%99$0@$1@@@|@|@"])
  fun op DIV_P x = x
    val op DIV_P =
    DT(((("arithmetic",241),
        [("arithmetic",[209,214]),
         ("bool",[25,26,51,56,63])]),["DISK_THM"]),
       [read"%53%2%57%33%57%34%74%65%64@$0@@%68$2%86$1@$0@@@%78%25%78%35%63%72$3@%59%58$1@$2@@$0@@@%63%65$0@$2@@$4$1@@@|@|@@@|@|@|@"])
  fun op DIV_P_UNIV x = x
    val op DIV_P_UNIV =
    DT(((("arithmetic",242),
        [("arithmetic",[209,214]),
         ("bool",[25,26,51,56,63])]),["DISK_THM"]),
       [read"%53%2%57%26%57%29%74%65%64@$0@@%68$2%86$1@$0@@@%57%34%57%35%74%63%72$3@%59%58$1@$2@@$0@@@%65$0@$2@@@$4$1@@|@|@@@|@|@|@"])
  fun op MOD_P x = x
    val op MOD_P =
    DT(((("arithmetic",243),
        [("arithmetic",[209,215]),
         ("bool",[25,26,51,56,63])]),["DISK_THM"]),
       [read"%53%2%57%33%57%34%74%65%64@$0@@%68$2%99$1@$0@@@%78%25%78%35%63%72$3@%59%58$1@$2@@$0@@@%63%65$0@$2@@$4$0@@@|@|@@@|@|@|@"])
  fun op MOD_P_UNIV x = x
    val op MOD_P_UNIV =
    DT(((("arithmetic",244),
        [("arithmetic",[209,215]),
         ("bool",[25,26,51,56,63])]),["DISK_THM"]),
       [read"%53%2%57%26%57%29%74%65%64@$0@@%68$2%99$1@$0@@@%57%34%57%35%74%63%72$3@%59%58$1@$2@@$0@@@%65$0@$2@@@$4$0@@|@|@@@|@|@|@"])
  fun op MOD_TIMES2 x = x
    val op MOD_TIMES2 =
    DT(((("arithmetic",245),
        [("arithmetic",[27,73,74,75,76,209,222]),("bool",[25,56,58]),
         ("marker",[6])]),["DISK_THM"]),
       [read"%57%29%74%65%64@$0@@%57%24%57%25%72%99%58%99$1@$2@@%99$0@$2@@@$2@@%99%58$1@$0@@$2@@|@|@@|@"])
  fun op MOD_COMMON_FACTOR x = x
    val op MOD_COMMON_FACTOR =
    DT(((("arithmetic",246),
        [("arithmetic",[28,73,75,76,123,151,209,217,222]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,78,93,94,96,105,
          146]),("marker",[6]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%33%57%34%74%63%65%64@$2@@%65%64@$0@@@%72%58$2@%99$1@$0@@@%99%58$2@$1@@%58$2@$0@@@@|@|@|@"])
  fun op X_MOD_Y_EQ_X x = x
    val op X_MOD_Y_EQ_X =
    DT(((("arithmetic",247),
        [("arithmetic",[24,71,209,215]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,73,84,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%39%57%43%74%65%64@$0@@%68%72%99$1@$0@@$1@@%65$1@$0@@@|@|@"])
  fun op DIV_LE_MONOTONE x = x
    val op DIV_LE_MONOTONE =
    DT(((("arithmetic",248),
        [("arithmetic",[29,53,71,90,93,155,176,185,209]),
         ("bool",[25,26,27,51,52,53,63]),("marker",[6]),
         ("prim_rec",[4])]),["DISK_THM"]),
       [read"%57%29%57%39%57%43%74%63%65%64@$2@@%66$1@$0@@@%66%86$1@$2@@%86$0@$2@@@|@|@|@"])
  fun op LE_LT1 x = x
    val op LE_LT1 =
    DT(((("arithmetic",249),
        [("arithmetic",[10,64]),("bool",[25,26,52,56,58,63]),
         ("prim_rec",[17,18])]),["DISK_THM"]),
       [read"%57%39%57%43%68%66$1@$0@@%65$1@%59$0@%102%80%119@@@@@|@|@"])
  fun op X_LE_DIV x = x
    val op X_LE_DIV =
    DT(((("arithmetic",250),
        [("arithmetic",[53,71,74,90,93,154,185,187,209,249]),
         ("bool",[25,26,51,52,53,58,63,105,124]),
         ("marker",[6])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%74%65%64@$0@@%68%66$2@%86$1@$0@@@%66%58$2@$0@@$1@@@|@|@|@"])
  fun op X_LT_DIV x = x
    val op X_LT_DIV =
    DT(((("arithmetic",251),
        [("arithmetic",[53,59,71,74,89,90,93,175,185,209,249]),
         ("bool",[25,26,51,52,53,54,58,63]),("marker",[6])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%74%65%64@$0@@%68%65$2@%86$1@$0@@@%66%58%59$2@%102%80%119@@@@$0@@$1@@@|@|@|@"])
  fun op DIV_LT_X x = x
    val op DIV_LT_X =
    DT(((("arithmetic",252),
        [("arithmetic",[60,250]),("bool",[25,58,63])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%74%65%64@$0@@%68%65%86$1@$0@@$2@@%65$1@%58$2@$0@@@@|@|@|@"])
  fun op DIV_LE_X x = x
    val op DIV_LE_X =
    DT(((("arithmetic",253),
        [("arithmetic",[59,60,251]),("bool",[25,58,63])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%74%65%64@$0@@%68%66%86$1@$0@@$2@@%65$1@%58%59$2@%102%80%119@@@@$0@@@@|@|@|@"])
  fun op DIV_EQ_X x = x
    val op DIV_EQ_X =
    DT(((("arithmetic",254),
        [("arithmetic",[64,172,250,253]),
         ("bool",[25,36,42,43,53,56,58,63,105,124]),
         ("marker",[8])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%74%65%64@$0@@%68%72%86$1@$0@@$2@@%63%66%58$2@$0@@$1@@%65$1@%58%110$2@@$0@@@@@|@|@|@"])
  fun op DIV_MOD_MOD_DIV x = x
    val op DIV_MOD_MOD_DIV =
    DT(((("arithmetic",255),
        [("arithmetic",[73,76,152,209,217,222,228,252]),
         ("bool",[25,51,53,56,63,170]),("marker",[6,8])]),["DISK_THM"]),
       [read"%57%26%57%29%57%25%74%63%65%64@$1@@%65%64@$0@@@%72%99%86$2@$1@@$0@@%86%99$2@%58$1@$0@@@$1@@@|@|@|@"])
  fun op MULT_EQ_DIV x = x
    val op MULT_EQ_DIV =
    DT(((("arithmetic",256),
        [("arithmetic",[24,73,209,218,227]),
         ("bool",[25,26,51,53,56,63])]),["DISK_THM"]),
       [read"%74%65%64@%39@@%68%72%58%39@%43@@%47@@%63%72%43@%86%47@%39@@@%72%99%47@%39@@%64@@@@"])
  fun op NUMERAL_MULT_EQ_DIV x = x
    val op NUMERAL_MULT_EQ_DIV =
    DT(((("arithmetic",257),
        [("arithmetic",[1,3,4,24,256]),("bool",[25,63]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%63%68%72%58%102%80%39@@@%43@@%102%47@@@%63%72%43@%86%102%47@@%102%80%39@@@@@%72%99%102%47@@%102%80%39@@@@%64@@@@%68%72%58%102%81%39@@@%43@@%102%47@@@%63%72%43@%86%102%47@@%102%81%39@@@@@%72%99%102%47@@%102%81%39@@@@%64@@@@"])
  fun op MOD_EQ_0_DIVISOR x = x
    val op MOD_EQ_0_DIVISOR =
    DT(((("arithmetic",258),
        [("arithmetic",[72,218,256]),
         ("bool",[25,26,56,57,63,169])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%68%72%99%25@%29@@%64@@%78%10%72%25@%58$0@%29@@|@@@"])
  fun op MOD_SUC x = x
    val op MOD_SUC =
    DT(((("arithmetic",259),
        [("arithmetic",[23,24,48,71,209,215,237]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,73,84,93,94,96]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%74%63%65%64@%43@@%129%72%110%39@@%58%110%86%39@%43@@@%43@@@@@%72%99%110%39@@%43@@%110%99%39@%43@@@@"])
  fun op MOD_SUC_IFF x = x
    val op MOD_SUC_IFF =
    DT(((("arithmetic",260),
        [("arithmetic",[21,218,259]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,84,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%74%65%64@%43@@%68%72%99%110%39@@%43@@%110%99%39@%43@@@@%129%72%110%39@@%58%110%86%39@%43@@@%43@@@@@"])
  fun op ONE_MOD x = x
    val op ONE_MOD =
    DT(((("arithmetic",261),
        [("arithmetic",[0,7,17,34,219,220,259]),
         ("bool",[25,26,27,53,54,56,58,63,105,124]),
         ("prim_rec",[15,24])]),["DISK_THM"]),
       [read"%74%65%102%80%119@@@%29@@%72%99%102%80%119@@@%29@@%102%80%119@@@@"])
  fun op ONE_MOD_IFF x = x
    val op ONE_MOD_IFF =
    DT(((("arithmetic",262),
        [("arithmetic",[17,21,28,34,211,261]),
         ("bool",[25,26,27,51,53,56,58,63,105,124]),
         ("prim_rec",[4,7,9,15])]),["DISK_THM"]),
       [read"%68%65%102%80%119@@@%29@@%63%65%64@%29@@%72%99%102%80%119@@@%29@@%102%80%119@@@@@"])
  fun op MOD_LESS_EQ x = x
    val op MOD_LESS_EQ =
    DT(((("arithmetic",263),
        [("arithmetic",[10,59,93,96,217,237]),
         ("bool",[30])]),["DISK_THM"]),
       [read"%74%65%64@%43@@%66%99%39@%43@@%39@@"])
  fun op MOD_LIFT_PLUS x = x
    val op MOD_LIFT_PLUS =
    DT(((("arithmetic",264),
        [("arithmetic",[0,22,23,24,25,71,86,199,209,259]),
         ("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,61,63,73,84,93,94,96,
          105,124]),("num",[9]),("prim_rec",[4,5]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%74%63%65%64@%29@@%65%25@%62%29@%99%39@%29@@@@@%72%99%59%39@%25@@%29@@%59%99%39@%29@@%25@@@"])
  fun op MOD_LIFT_PLUS_IFF x = x
    val op MOD_LIFT_PLUS_IFF =
    DT(((("arithmetic",265),
        [("arithmetic",[25,199,237,264]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%68%72%99%59%39@%25@@%29@@%59%99%39@%29@@%25@@@%65%25@%62%29@%99%39@%29@@@@@"])
  fun op num_case_cong x = x
    val op num_case_cong =
    DT(((("arithmetic",266),[("arithmetic",[14,28])]),["DISK_THM"]),
       [read"%57%0%57%1%48%36%52%16%74%63%72$3@$2@@%63%74%72$2@%64@@%67$1@%37@@@%57%29%74%72$3@%110$0@@@%67$1$0@@%21$0@@@|@@@@%67%125$3@$1@$0@@%125$2@%37@%21@@@|@|@|@|@"])
  fun op SUC_ELIM_THM x = x
    val op SUC_ELIM_THM =
    DT(((("arithmetic",267),
        [("arithmetic",[17,39,59,62,64,65,112,142,196]),
         ("bool",[25,26,27,30,48,53,58,63,64,105,124,129]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%55%3%68%57%29$1%110$0@@$0@|@@%57%29%74%65%64@$0@@$1$0@%62$0@%102%80%119@@@@@|@@|@"])
  fun op SUC_ELIM_NUMERALS x = x
    val op SUC_ELIM_NUMERALS =
    DT(((("arithmetic",268),
        [("arithmetic",[1,2,3,4,24,62,112,122,160,169,170]),
         ("bool",[25,26,36,51,53,56,58,105,124])]),["DISK_THM"]),
       [read"%54%17%52%22%68%57%29%67$1%110$0@@@$2$0@%110$0@@@|@@%63%57%29%67$1%102%80$0@@@@$2%62%102%80$0@@@%102%80%119@@@@%102%80$0@@@@|@@%57%29%67$1%102%81$0@@@@$2%102%80$0@@@%102%81$0@@@@|@@@|@|@"])
  fun op SUB_ELIM_THM x = x
    val op SUB_ELIM_THM =
    DT(((("arithmetic",269),
        [("arithmetic",[25,27,53,63,79,81,91,128,144,146]),
         ("bool",[25,26,36,56,58,63])]),["DISK_THM"]),
       [read"%68%2%62%5@%6@@@%57%10%63%74%72%6@%59%5@$0@@@%2%64@@@%74%72%5@%59%6@$0@@@%2$0@@@|@@"])
  fun op PRE_ELIM_THM x = x
    val op PRE_ELIM_THM =
    DT(((("arithmetic",270),
        [("bool",[14,25,26,27,36,51,53,56,58]),("num",[7,9]),
         ("prim_rec",[1,3])]),["DISK_THM"]),
       [read"%68%2%105%29@@@%57%26%63%74%72%29@%64@@%2%64@@@%74%72%29@%110$0@@@%2$0@@@|@@"])
  fun op MULT_INCREASES x = x
    val op MULT_INCREASES =
    DT(((("arithmetic",271),
        [("arithmetic",[7,17,26,41,57,148]),
         ("bool",[14,25,26,27,36,51,53,58]),("num",[9]),
         ("prim_rec",[4,6])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%102%80%119@@@$1@@%65%64@$0@@@%66%110$0@@%58$1@$0@@@|@|@"])
  fun op EXP_ALWAYS_BIG_ENOUGH x = x
    val op EXP_ALWAYS_BIG_ENOUGH =
    DT(((("arithmetic",272),
        [("arithmetic",[8,10,28,29,41,46,138,271]),
         ("bool",[14,25,26,27,30,37,47,48,51,53,54,56,58,63,72]),
         ("num",[9]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%57%6%74%65%102%80%119@@@$0@@%57%29%78%26%66$1@%90$2@$0@@|@|@@|@"])
  fun op EXP_EQ_0 x = x
    val op EXP_EQ_0 =
    DT(((("arithmetic",273),
        [("arithmetic",[8,17,28,29,138,148]),
         ("bool",[25,26,27,51,52,54,56,58,63]),("num",[7])]),["DISK_THM"]),
       [read"%57%29%57%26%68%72%90$1@$0@@%64@@%63%72$1@%64@@%65%64@$0@@@|@|@"])
  fun op ZERO_LT_EXP x = x
    val op ZERO_LT_EXP =
    DT(((("arithmetic",274),
        [("arithmetic",[29,273]),("bool",[25,26,53,54,55,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%68%65%64@%90%39@%43@@@%120%65%64@%39@@%72%43@%64@@@"])
  fun op EXP_1 x = x
    val op EXP_1 =
    DT(((("arithmetic",275),
        [("arithmetic",[8,17,71,149]),("bool",[14,25,51,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%29%63%72%90%102%80%119@@@$0@@%102%80%119@@@@%72%90$0@%102%80%119@@@@$0@@|@"])
  fun op EXP_EQ_1 x = x
    val op EXP_EQ_1 =
    DT(((("arithmetic",276),
        [("arithmetic",[8,149,275]),("bool",[14,25,26,52,53,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%29%57%26%68%72%90$1@$0@@%102%80%119@@@@%120%72$1@%102%80%119@@@@%72$0@%64@@@|@|@"])
  fun op EXP_BASE_LE_MONO x = x
    val op EXP_BASE_LE_MONO =
    DT(((("arithmetic",277),
        [("arithmetic",
         [10,17,24,26,28,32,34,37,41,51,60,70,102,145,184,186,273,274,
          276]),("bool",[2,15,25,26,27,51,52,53,54,58,63,99,169]),
         ("prim_rec",[4,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%6%74%65%102%80%119@@@$0@@%57%29%57%26%68%66%90$2@$0@@%90$2@$1@@@%66$0@$1@@|@|@@|@"])
  fun op EXP_BASE_LT_MONO x = x
    val op EXP_BASE_LT_MONO =
    DT(((("arithmetic",278),
        [("arithmetic",
         [10,17,24,26,28,32,34,37,41,51,59,70,102,145,184,186,273,274,
          276]),("bool",[2,15,25,26,27,51,52,53,54,58,63,99,169]),
         ("prim_rec",[4,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%6%74%65%102%80%119@@@$0@@%57%29%57%26%68%65%90$2@$0@@%90$2@$1@@@%65$0@$1@@|@|@@|@"])
  fun op EXP_BASE_INJECTIVE x = x
    val op EXP_BASE_INJECTIVE =
    DT(((("arithmetic",279),
        [("arithmetic",[95,106,277]),
         ("bool",[25,26,53,54,55,58,63,83,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%6%74%65%102%80%119@@@$0@@%57%29%57%26%68%72%90$2@$1@@%90$2@$0@@@%72$1@$0@@|@|@@|@"])
  fun op EXP_BASE_LEQ_MONO_IMP x = x
    val op EXP_BASE_LEQ_MONO_IMP =
    DT(((("arithmetic",280),
        [("arithmetic",[17,29,41,70,102,145,184,273]),
         ("bool",[25,26,27,51,52,54,58,169])]),["DISK_THM"]),
       [read"%57%29%57%26%57%6%74%63%65%64@$0@@%66$1@$2@@@%66%90$0@$1@@%90$0@$2@@@|@|@|@"])
  fun op EXP_BASE_LEQ_MONO_SUC_IMP x = x
    val op EXP_BASE_LEQ_MONO_SUC_IMP =
    DT(((("arithmetic",281),
        [("arithmetic",[280]),("bool",[51,63]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%74%66%26@%29@@%66%90%110%6@@%26@@%90%110%6@@%29@@@"])
  fun op EXP_BASE_LE_IFF x = x
    val op EXP_BASE_LE_IFF =
    DT(((("arithmetic",282),
        [("arithmetic",[8,17,21,28,29,37,46,58,71,95,275,277,280]),
         ("bool",[25,26,27,30,51,52,53,54,56,58,63,105,124]),("num",[7]),
         ("prim_rec",[1,4,6,7])]),["DISK_THM"]),
       [read"%68%66%90%6@%26@@%90%6@%29@@@%120%63%72%6@%64@@%72%29@%64@@@%120%63%72%6@%64@@%65%64@%26@@@%120%72%6@%102%80%119@@@@%63%65%102%80%119@@@%6@@%66%26@%29@@@@@@"])
  fun op X_LE_X_EXP x = x
    val op X_LE_X_EXP =
    DT(((("arithmetic",283),
        [("arithmetic",[8,28,46,190,274]),("bool",[25,26,27,52,53,63]),
         ("num",[7]),("prim_rec",[4,7])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%66%39@%90%39@%29@@@"])
  fun op X_LT_EXP_X x = x
    val op X_LT_EXP_X =
    DT(((("arithmetic",284),
        [("arithmetic",[8,17,18,29,34,42,64,70,97,122,154,173,186]),
         ("bool",[14,25,26,30,47,48,51,53,54,58,63,105,124]),("num",[9]),
         ("prim_rec",[7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%74%65%102%80%119@@@%6@@%65%39@%90%6@%39@@@"])
  fun op ZERO_EXP x = x
    val op ZERO_EXP =
    DT(((("arithmetic",285),
        [("arithmetic",[7,8,28]),("bool",[25,26,27,56,58,64,105,129]),
         ("num",[7])]),["DISK_THM"]),
       [read"%72%90%64@%39@@%83%72%39@%64@@%102%80%119@@@%64@@"])
  fun op X_LT_EXP_X_IFF x = x
    val op X_LT_EXP_X_IFF =
    DT(((("arithmetic",286),
        [("arithmetic",[8,17,21,28,37,275,284,285]),
         ("bool",[25,26,27,52,53,56,58,63,64,105,124,129]),
         ("prim_rec",[6,7,19])]),["DISK_THM"]),
       [read"%68%65%39@%90%6@%39@@@%120%65%102%80%119@@@%6@@%72%39@%64@@@"])
  fun op EXP_EXP_LT_MONO x = x
    val op EXP_EXP_LT_MONO =
    DT(((("arithmetic",287),
        [("arithmetic",[8,10,28,29,59,71,93,95,154,184,185,187]),
         ("bool",[14,25,26,27,36,51,53,54,58,63,73,75,83,99,105,124]),
         ("num",[9]),("prim_rec",[4,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%5%57%6%68%65%90$1@%29@@%90$0@%29@@@%63%65$1@$0@@%65%64@%29@@@|@|@"])
  fun op EXP_EXP_LE_MONO x = x
    val op EXP_EXP_LE_MONO =
    DT(((("arithmetic",288),
        [("arithmetic",[8,10,28,29,60,71,93,95,154,184,185,187]),
         ("bool",[14,25,26,27,36,51,53,54,58,63,73,75,83,99,105,124]),
         ("num",[9]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%5%57%6%68%66%90$1@%29@@%90$0@%29@@@%120%66$1@$0@@%72%29@%64@@@|@|@"])
  fun op EXP_EXP_INJECTIVE x = x
    val op EXP_EXP_INJECTIVE =
    DT(((("arithmetic",289),
        [("arithmetic",[95,106,288]),("bool",[25,26,53,54,55,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%7%57%8%57%39%68%72%90$2@$0@@%90$1@$0@@@%120%72$0@%64@@%72$2@$1@@@|@|@|@"])
  fun op EXP_SUB x = x
    val op EXP_SUB =
    DT(((("arithmetic",290),
        [("arithmetic",[24,28,77,102,139,241]),
         ("bool",[25,26,27,53,54,55,58,63,143]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%33%57%34%57%29%74%63%65%64@$0@@%66$1@$2@@@%72%90$0@%62$2@$1@@@%86%90$0@$2@@%90$0@$1@@@@|@|@|@"])
  fun op EXP_SUB_NUMERAL x = x
    val op EXP_SUB_NUMERAL =
    DT(((("arithmetic",291),
        [("arithmetic",[1,2,3,4,24,38,46,62,112,275,290]),
         ("bool",[25,51,56,58,63])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%63%72%86%90%29@%102%80%39@@@@%29@@%90%29@%62%102%80%39@@@%102%80%119@@@@@@%72%86%90%29@%102%81%39@@@@%29@@%90%29@%102%80%39@@@@@@"])
  fun op EXP_BASE_MULT x = x
    val op EXP_BASE_MULT =
    DT(((("arithmetic",292),
        [("arithmetic",[8,71,73,76]),("bool",[14,25,36,56,170]),
         ("marker",[8]),("num",[9])]),["DISK_THM"]),
       [read"%57%47%57%39%57%43%72%90%58$1@$0@@$2@@%58%90$1@$2@@%90$0@$2@@@|@|@|@"])
  fun op EXP_EXP_MULT x = x
    val op EXP_EXP_MULT =
    DT(((("arithmetic",293),
        [("arithmetic",[8,71,102]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%47%57%39%57%43%72%90$1@%58$0@$2@@@%90%90$1@$0@@$2@@|@|@|@"])
  fun op MAX_COMM x = x
    val op MAX_COMM =
    DT(((("arithmetic",296),
        [("arithmetic",[35,59,106,294]),
         ("bool",[25,26,27,30,56,63,64])]),["DISK_THM"]),
       [read"%57%26%57%29%72%97$1@$0@@%97$0@$1@@|@|@"])
  fun op MIN_COMM x = x
    val op MIN_COMM =
    DT(((("arithmetic",297),
        [("arithmetic",[35,59,106,295]),
         ("bool",[25,26,27,30,56,63,64])]),["DISK_THM"]),
       [read"%57%26%57%29%72%98$1@$0@@%98$0@$1@@|@|@"])
  fun op MAX_ASSOC x = x
    val op MAX_ASSOC =
    DT(((("arithmetic",298),
        [("arithmetic",[34,59,93,294]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,105,
          108,109,111,129]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%97$2@%97$1@$0@@@%97%97$2@$1@@$0@@|@|@|@"])
  fun op MIN_ASSOC x = x
    val op MIN_ASSOC =
    DT(((("arithmetic",299),
        [("arithmetic",[34,59,93,295]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,105,
          108,109,111,129]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%72%98$2@%98$1@$0@@@%98%98$2@$1@@$0@@|@|@|@"])
  fun op MIN_MAX_EQ x = x
    val op MIN_MAX_EQ =
    DT(((("arithmetic",300),
        [("arithmetic",[35,59,106,294,295]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96,108,109,
          111]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%26%57%29%68%72%98$1@$0@@%97$1@$0@@@%72$1@$0@@|@|@"])
  fun op MIN_MAX_LT x = x
    val op MIN_MAX_LT =
    DT(((("arithmetic",301),
        [("arithmetic",[10,59,294,295]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96,108,109,
          111]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%68%65%98$1@$0@@%97$1@$0@@@%129%72$1@$0@@@|@|@"])
  fun op MIN_MAX_LE x = x
    val op MIN_MAX_LE =
    DT(((("arithmetic",302),
        [("arithmetic",[10,59,294,295]),
         ("bool",[25,26,43,47,48,53,54,58,63,71,73,76,94,108,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%26%57%29%66%98$1@$0@@%97$1@$0@@|@|@"])
  fun op MIN_MAX_PRED x = x
    val op MIN_MAX_PRED =
    DT(((("arithmetic",303),
        [("arithmetic",[294,295]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,63,71,73,93,94,96,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%53%2%57%26%57%29%74%63$2$1@@$2$0@@@%63$2%98$1@$0@@@$2%97$1@$0@@@@|@|@|@"])
  fun op MIN_LT x = x
    val op MIN_LT =
    DT(((("arithmetic",304),
        [("arithmetic",[10,34,35,59,295]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,
          108,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%57%33%63%68%65%98$1@$2@@$0@@%120%65$1@$0@@%65$2@$0@@@@%68%65$0@%98$1@$2@@@%63%65$0@$1@@%65$0@$2@@@@|@|@|@"])
  fun op MAX_LT x = x
    val op MAX_LT =
    DT(((("arithmetic",305),
        [("arithmetic",[10,34,35,59,294]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,
          108,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%57%33%63%68%65$0@%97$1@$2@@@%120%65$0@$1@@%65$0@$2@@@@%68%65%97$1@$2@@$0@@%63%65$1@$0@@%65$2@$0@@@@|@|@|@"])
  fun op MIN_LE x = x
    val op MIN_LE =
    DT(((("arithmetic",306),
        [("arithmetic",[10,34,59,295]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,
          108,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%57%33%63%68%66%98$1@$2@@$0@@%120%66$1@$0@@%66$2@$0@@@@%68%66$0@%98$1@$2@@@%63%66$0@$1@@%66$0@$2@@@@|@|@|@"])
  fun op MAX_LE x = x
    val op MAX_LE =
    DT(((("arithmetic",307),
        [("arithmetic",[10,34,59,294]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,
          108,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%57%33%63%68%66$0@%97$1@$2@@@%120%66$0@$1@@%66$0@$2@@@@%68%66%97$1@$2@@$0@@%63%66$1@$0@@%66$2@$0@@@@|@|@|@"])
  fun op MIN_0 x = x
    val op MIN_0 =
    DT(((("arithmetic",308),
        [("arithmetic",[10,59,295]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,
          108,109,111]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%29%63%72%98$0@%64@@%64@@%72%98%64@$0@@%64@@|@"])
  fun op MAX_0 x = x
    val op MAX_0 =
    DT(((("arithmetic",309),
        [("arithmetic",[10,59,294]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96,
          108,109,111]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%29%63%72%97$0@%64@@$0@@%72%97%64@$0@@$0@@|@"])
  fun op MIN_IDEM x = x
    val op MIN_IDEM =
    DT(((("arithmetic",310),
        [("arithmetic",[295]),
         ("bool",[25,26,47,48,53,54,63,71,73,94,109,111]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%57%29%72%98$0@$0@@$0@|@"])
  fun op MAX_IDEM x = x
    val op MAX_IDEM =
    DT(((("arithmetic",311),
        [("arithmetic",[294]),
         ("bool",[25,26,47,48,53,54,63,71,73,94,109,111]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%57%29%72%97$0@$0@@$0@|@"])
  fun op EXISTS_GREATEST x = x
    val op EXISTS_GREATEST =
    DT(((("arithmetic",312),
        [("arithmetic",[9,10,28,39,49,59,109]),
         ("bool",[25,26,27,36,51,52,53,54,56,63,92]),
         ("prim_rec",[15])]),["DISK_THM"]),
       [read"%53%2%68%63%78%39$1$0@|@@%78%39%57%43%74%75$0@$1@@%129$2$0@@@|@|@@@%78%39%63$1$0@@%57%43%74%75$0@$1@@%129$2$0@@@|@@|@@|@"])
  fun op EXISTS_NUM x = x
    val op EXISTS_NUM =
    DT(((("arithmetic",313),
        [("arithmetic",[28]),
         ("bool",[25,26,47,48,53,54,58,63,71,72,76,78,80,93,94,96,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%53%2%68%78%29$1$0@|@@%120$0%64@@%78%26$1%110$0@@|@@@|@"])
  fun op FORALL_NUM x = x
    val op FORALL_NUM =
    DT(((("arithmetic",314),
        [("arithmetic",[28]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,76,78,81,93,94,96,
          146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%53%2%68%57%29$1$0@|@@%63$0%64@@%57%29$1%110$0@@|@@@|@"])
  fun op BOUNDED_FORALL_THM x = x
    val op BOUNDED_FORALL_THM =
    DT(((("arithmetic",315),
        [("arithmetic",[10,17,25,107,117,120,155,200]),
         ("bool",[25,26,51,53,54,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%9%74%65%64@$0@@%68%57%29%74%65$0@$1@@%2$0@@|@@%63%2%62$0@%102%80%119@@@@@%57%29%74%65$0@%62$1@%102%80%119@@@@@%2$0@@|@@@@|@"])
  fun op BOUNDED_EXISTS_THM x = x
    val op BOUNDED_EXISTS_THM =
    DT(((("arithmetic",316),
        [("arithmetic",[28,64,65,120,142,154,199]),
         ("bool",[2,15,25,26,53,54,63,75]),("prim_rec",[4,5,15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%9%74%65%64@$0@@%68%78%29%63%65$0@$1@@%2$0@@|@@%120%2%62$0@%102%80%119@@@@@%78%29%63%65$0@%62$1@%102%80%119@@@@@%2$0@@|@@@@|@"])
  fun op transitive_monotone x = x
    val op transitive_monotone =
    DT(((("arithmetic",317),
        [("arithmetic",[28]),
         ("bool",[2,14,15,25,26,27,53,54,58,63,75,84,99]),("num",[9]),
         ("prim_rec",[6,7,19]),("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%50%4%52%16%74%63%127$1@@%57%29$2$1$0@@$1%110$0@@@|@@@%57%26%57%29%74%65$1@$0@@$3$2$1@@$2$0@@@|@|@@|@|@"])
  fun op STRICTLY_INCREASING_TC x = x
    val op STRICTLY_INCREASING_TC =
    DT(((("arithmetic",318),
        [("arithmetic",[34,317]),
         ("bool",[2,15,25,26,51,53,54,58,63,75,84,99,105,124]),
         ("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%56%18%74%57%29%65$1$0@@$1%110$0@@@|@@%57%26%57%29%74%65$1@$0@@%65$2$1@@$2$0@@@|@|@@|@"])
  fun op STRICTLY_INCREASING_ONE_ONE x = x
    val op STRICTLY_INCREASING_ONE_ONE =
    DT(((("arithmetic",319),
        [("arithmetic",[10,59,318]),
         ("bool",[2,15,25,26,53,54,55,58,63,83,99,116]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%56%18%74%57%29%65$1$0@@$1%110$0@@@|@@%104$0@@|@"])
  fun op ONE_ONE_UNBOUNDED x = x
    val op ONE_ONE_UNBOUNDED =
    DT(((("arithmetic",320),
        [("arithmetic",[10,21,28,35,47,60,93,95,147,154,294,307,317]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,51,52,53,54,55,56,58,63,64,70,71,72,75,
          84,92,96,99,105,116,124,129,147]),("marker",[6]),("num",[9]),
         ("prim_rec",[15,19,24,38]),("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%56%18%74%104$0@@%57%6%78%29%65$1@$2$0@@|@|@@|@"])
  fun op STRICTLY_INCREASING_UNBOUNDED x = x
    val op STRICTLY_INCREASING_UNBOUNDED =
    DT(((("arithmetic",321),
        [("arithmetic",[319,320]),("bool",[2,15,25,26,53,54,58,63,83]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%56%18%74%57%29%65$1$0@@$1%110$0@@@|@@%57%6%78%29%65$1@$2$0@@|@|@@|@"])
  fun op NOT_STRICTLY_DECREASING x = x
    val op NOT_STRICTLY_DECREASING =
    DT(((("arithmetic",322),
        [("arithmetic",[10,28,34,35,59,317,320]),
         ("bool",[2,15,25,26,53,54,55,58,63,83,99,105,116,124]),
         ("prim_rec",[7,24]),("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%56%18%129%57%29%65$1%110$0@@@$1$0@@|@@|@"])
  fun op ABS_DIFF_SYM x = x
    val op ABS_DIFF_SYM =
    DT(((("arithmetic",324),
        [("arithmetic",[10,35,59,323]),
         ("bool",[25,26,27,30,53,54,55,56,63,64,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%72%79$1@$0@@%79$0@$1@@|@|@"])
  fun op ABS_DIFF_COMM x = x
    val op ABS_DIFF_COMM =
    DT(((("arithmetic",325),[("arithmetic",[324])]),["DISK_THM"]),
       [read"%57%29%57%26%72%79$1@$0@@%79$0@$1@@|@|@"])
  fun op ABS_DIFF_EQS x = x
    val op ABS_DIFF_EQS =
    DT(((("arithmetic",326),
        [("arithmetic",[130,323]),("bool",[25,56,65])]),["DISK_THM"]),
       [read"%57%29%72%79$0@$0@@%64@|@"])
  fun op ABS_DIFF_EQ_0 x = x
    val op ABS_DIFF_EQ_0 =
    DT(((("arithmetic",327),
        [("arithmetic",[10,35,63,323]),
         ("bool",[25,26,27,30,52,53,54,55,56,63,64]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%68%72%79$1@$0@@%64@@%72$1@$0@@|@|@"])
  fun op ABS_DIFF_ZERO x = x
    val op ABS_DIFF_ZERO =
    DT(((("arithmetic",328),
        [("arithmetic",[29,62,323]),
         ("bool",[25,26,27,30,53,54,56,58,63,64,105,129]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%63%72%79$0@%64@@$0@@%72%79%64@$0@@$0@@|@"])
  fun op ABS_DIFF_TRIANGLE x = x
    val op ABS_DIFF_TRIANGLE =
    DT(((("arithmetic",329),
        [("arithmetic",
         [0,10,22,25,29,34,35,46,53,57,59,60,61,93,95,117,119,128,129,133,
          136,192,193,194,199,200,323,324,326]),
         ("bool",
         [14,25,26,27,30,36,51,53,54,55,56,58,63,99,105,124,129,147,169]),
         ("marker",[6]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%66%79$2@$0@@%59%79$2@$1@@%79$1@$0@@@|@|@|@"])
  fun op ABS_DIFF_ADD_SAME x = x
    val op ABS_DIFF_ADD_SAME =
    DT(((("arithmetic",330),
        [("arithmetic",[25,53,89,90,128,133,323]),
         ("bool",[25,26,27,30,53,54,56,58,63,64,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%26%57%33%72%79%59$2@$0@@%59$1@$0@@@%79$2@$1@@|@|@|@"])
  fun op LT_SUB_RCANCEL x = x
    val op LT_SUB_RCANCEL =
    DT(((("arithmetic",331),
        [("arithmetic",[0,10,34,60,63,77,199]),
         ("bool",[25,26,27,30,48,53,54,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%65%62$1@$2@@%62$0@$2@@@%63%65$1@$0@@%65$2@$0@@@|@|@|@"])
  fun op LE_SUB_RCANCEL x = x
    val op LE_SUB_RCANCEL =
    DT(((("arithmetic",332),
        [("arithmetic",[10,22,25,34,46,60,63,95,128,192,206,331]),
         ("bool",[25,26,27,30,51,52,53,54,58,63,64,99,105,129,147]),
         ("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%57%33%68%66%62$1@$2@@%62$0@$2@@@%120%66$1@$2@@%66$1@$0@@@|@|@|@"])
  fun op ABS_DIFF_SUMS x = x
    val op ABS_DIFF_SUMS =
    DT(((("arithmetic",333),
        [("arithmetic",
         [0,10,22,25,27,34,35,53,60,86,93,95,114,117,128,142,154,155,173,
          174,175,192,193,195,197,198,199,323,324,326,330,332]),
         ("bool",
         [14,25,26,27,30,36,48,52,53,54,55,56,58,63,64,99,105,124,129,147,
          169]),("marker",[6,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%30%57%31%57%27%57%28%66%79%59$3@$2@@%59$1@$0@@@%59%79$3@$1@@%79$2@$0@@@|@|@|@|@"])
  fun op FUNPOW_SUC x = x
    val op FUNPOW_SUC =
    DT(((("arithmetic",334),
        [("arithmetic",[15]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%49%14%57%29%48%38%67%94$2@%110$1@@$0@@$2%94$2@$1@$0@@@|@|@|@"])
  fun op FUNPOW_0 x = x
    val op FUNPOW_0 =
    DT(((("arithmetic",335),
        [("arithmetic",[15]),("bool",[25,56])]),["DISK_THM"]),
       [read"%67%94%14@%64@%38@@%38@"])
  fun op FUNPOW_ADD x = x
    val op FUNPOW_ADD =
    DT(((("arithmetic",336),
        [("arithmetic",[15,24,334]),("bool",[14,25,36,56]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%26%57%29%67%94%14@%59$1@$0@@%38@@%94%14@$1@%94%14@$0@%38@@@|@|@"])
  fun op FUNPOW_1 x = x
    val op FUNPOW_1 =
    DT(((("arithmetic",337),
        [("arithmetic",[15,17]),("bool",[25,56])]),["DISK_THM"]),
       [read"%67%94%14@%102%80%119@@@%38@@%14%38@@"])
  fun op NRC_0 x = x
    val op NRC_0 =
    DT(((("arithmetic",338),[("arithmetic",[16])]),["DISK_THM"]),
       [read"%50%4%48%38%48%42%68%101$2@%64@$1@$0@@%67$1@$0@@|@|@|@"])
  fun op NRC_1 x = x
    val op NRC_1 =
    DT(((("arithmetic",339),
        [("arithmetic",[16,17]),("bool",[25,26,56,143])]),["DISK_THM"]),
       [read"%68%101%4@%102%80%119@@@%38@%42@@%4%38@%42@@"])
  fun op NRC_ADD_I x = x
    val op NRC_ADD_I =
    DT(((("arithmetic",340),
        [("arithmetic",[0,16]),("bool",[14,25,26,53,54,58,63,105,124]),
         ("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%57%26%57%29%48%38%48%42%48%46%74%63%101%4@$4@$2@$1@@%101%4@$3@$1@$0@@@%101%4@%59$4@$3@@$2@$0@@|@|@|@|@|@"])
  fun op NRC_ADD_E x = x
    val op NRC_ADD_E =
    DT(((("arithmetic",341),
        [("arithmetic",[0,16]),
         ("bool",[2,14,15,25,26,53,54,58,63,83,100,105,124,143]),
         ("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%57%26%57%29%48%38%48%46%74%101%4@%59$3@$2@@$1@$0@@%77%42%63%101%4@$4@$2@$0@@%101%4@$3@$0@$1@@|@@|@|@|@|@"])
  fun op NRC_ADD_EQN x = x
    val op NRC_ADD_EQN =
    DT(((("arithmetic",342),
        [("arithmetic",[340,341]),("bool",[2,15,25,26,53,54,63,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%68%101%4@%59%26@%29@@%38@%46@@%77%42%63%101%4@%26@%38@$0@@%101%4@%29@$0@%46@@|@@"])
  fun op NRC_SUC_RECURSE_LEFT x = x
    val op NRC_SUC_RECURSE_LEFT =
    DT(((("arithmetic",343),
        [("arithmetic",[64,339,342]),
         ("bool",[2,15,25,26,53,54,58,63,74,84,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%68%101%4@%110%29@@%38@%42@@%77%46%63%101%4@%29@%38@$0@@%4$0@%42@@|@@"])
  fun op NRC_RTC x = x
    val op NRC_RTC =
    DT(((("arithmetic",344),
        [("arithmetic",[16]),("bool",[14,25,53,54,58,63,73,75,105,124]),
         ("num",[9]),("relation",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%57%29%48%38%48%42%74%101%4@$2@$1@$0@@%106%4@$1@$0@@|@|@|@"])
  fun op RTC_NRC x = x
    val op RTC_NRC =
    DT(((("arithmetic",345),
        [("arithmetic",[16]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,74,76,78,80,
          81,84,94,96,146]),("combin",[19]),("relation",[15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%48%38%48%42%74%106%4@$1@$0@@%78%29%101%4@$0@$2@$1@|@@|@|@"])
  fun op RTC_eq_NRC x = x
    val op RTC_eq_NRC =
    DT(((("arithmetic",346),
        [("arithmetic",[344,345]),
         ("bool",[25,26,47,48,53,54,58,63,71,72,78,80,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%50%4%48%38%48%42%68%106$2@$1@$0@@%78%29%101$3@$0@$2@$1@|@@|@|@|@"])
  fun op TC_eq_NRC x = x
    val op TC_eq_NRC =
    DT(((("arithmetic",347),
        [("arithmetic",[16,346]),
         ("bool",
         [25,26,36,47,48,53,54,56,58,63,71,72,76,77,78,80,81,84,96]),
         ("combin",[19]),("relation",[60]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%50%4%48%38%48%42%68%112$2@$1@$0@@%78%29%101$3@%110$0@@$2@$1@|@@|@|@|@"])
  fun op LESS_EQUAL_DIFF x = x
    val op LESS_EQUAL_DIFF =
    DT(((("arithmetic",348),
        [("arithmetic",[62,112,147,207]),
         ("bool",
         [13,14,25,26,27,30,36,37,47,48,51,52,53,54,56,63,71,72,73,78,93,
          94,96,146]),("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%26%57%29%74%66$1@$0@@%78%25%72$2@%62$1@$0@@|@@|@|@"])
  fun op MOD_2 x = x
    val op MOD_2 =
    DT(((("arithmetic",349),
        [("arithmetic",[17,18,22,37,64,73,158,159,169,170,215]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,72,74,76,77,78,80,
          81,84,93,94,96,108,109,111,146]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%72%99$0@%102%81%119@@@@%83%89$0@@%64@%102%80%119@@@@|@"])
  fun op EVEN_MOD2 x = x
    val op EVEN_MOD2 =
    DT(((("arithmetic",350),
        [("arithmetic",[17,21,349]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,63,71,73,94,96,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%57%39%68%89$0@@%72%99$0@%102%81%119@@@@%64@@|@"])
  fun op SUC_MOD x = x
    val op SUC_MOD =
    DT(((("arithmetic",351),
        [("arithmetic",
         [0,7,17,21,22,26,27,28,42,48,53,60,64,88,95,154,173,209,217,224,
          225,226,233]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("num",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%29%57%5%57%6%74%65%64@$2@@%68%72%99%110$1@@$2@@%99%110$0@@$2@@@%72%99$1@$2@@%99$0@$2@@@@|@|@|@"])
  fun op ADD_MOD x = x
    val op ADD_MOD =
    DT(((("arithmetic",352),
        [("arithmetic",[24,351]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("num",[9])]),["DISK_THM"]),
       [read"%57%29%57%5%57%6%57%33%74%65%64@$3@@%68%72%99%59$2@$0@@$3@@%99%59$1@$0@@$3@@@%72%99$2@$3@@%99$1@$3@@@@|@|@|@|@"])
  fun op MOD_ELIM x = x
    val op MOD_ELIM =
    DT(((("arithmetic",353),
        [("arithmetic",[9,10,11,25,29,34,57,59,77,110,200,217,238]),
         ("bool",[2,15,25,26,30,51,53,54,55,58,63,73,83,99,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%53%2%57%39%57%29%74%63%65%64@$0@@%63$2$1@@%57%43%74$3%59$0@$1@@@$3$0@@|@@@@$2%99$1@$0@@@|@|@|@"])
  fun op DOUBLE_LT x = x
    val op DOUBLE_LT =
    DT(((("arithmetic",354),
        [("arithmetic",[48,64,158,166,167]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("prim_rec",[5]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%33%57%34%68%65%59%58%102%81%119@@@$1@@%102%80%119@@@@%58%102%81%119@@@$0@@@%65%58%102%81%119@@@$1@@%58%102%81%119@@@$0@@@|@|@"])
  fun op EXP2_LT x = x
    val op EXP2_LT =
    DT(((("arithmetic",355),
        [("arithmetic",[8,18,22,73,123,209,349,354]),
         ("bool",[25,26,27,30,53,56,58,63,64,105,124,129]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%57%26%57%29%68%65%86$0@%102%81%119@@@@%90%102%81%119@@@$1@@@%65$0@%90%102%81%119@@@%110$1@@@@|@|@"])
  fun op SUB_LESS x = x
    val op SUB_LESS =
    DT(((("arithmetic",356),
        [("arithmetic",[25,29,57,128,146]),
         ("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$0@@%66$0@$1@@@%65%62$1@$0@@$1@@|@|@"])
  fun op SUB_MOD x = x
    val op SUB_MOD =
    DT(((("arithmetic",357),
        [("arithmetic",[25,128,146,238]),
         ("bool",[2,15,25,26,53,54,58,63,73,74,84]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%74%63%65%64@$0@@%66$0@$1@@@%72%99%62$1@$0@@$0@@%99$1@$0@@@|@|@"])
  fun op ONE_LT_MULT_IMP x = x
    val op ONE_LT_MULT_IMP =
    DT(((("arithmetic",358),
        [("arithmetic",[17,24,27,28,37,71,134]),
         ("bool",[25,53,54,58,63,83,105,124]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%33%57%34%74%63%65%102%80%119@@@$1@@%65%64@$0@@@%65%102%80%119@@@%58$1@$0@@@|@|@"])
  fun op ONE_LT_MULT x = x
    val op ONE_LT_MULT =
    DT(((("arithmetic",359),
        [("arithmetic",[10,17,24,28,37,58,71,152,153]),
         ("bool",[14,25,26,27,48,51,52,53,54,56,63,99]),("num",[9]),
         ("prim_rec",[4,7]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%57%39%57%43%68%65%102%80%119@@@%58$1@$0@@@%120%63%65%64@$1@@%65%102%80%119@@@$0@@@%63%65%64@$0@@%65%102%80%119@@@$1@@@@|@|@"])
  fun op ONE_LT_EXP x = x
    val op ONE_LT_EXP =
    DT(((("arithmetic",360),
        [("arithmetic",[8,17,274,359]),
         ("bool",[14,25,26,27,51,53,54,63,100]),("num",[9]),
         ("prim_rec",[4,5,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%39%57%43%68%65%102%80%119@@@%90$1@$0@@@%63%65%102%80%119@@@$1@@%65%64@$0@@@|@|@"])
  fun op findq_thm x = x
    val op findq_thm =
    DT(((("arithmetic",362),
        [("arithmetic",
         [17,18,24,26,29,37,38,58,59,60,69,71,90,93,154,185,187,192,199,
          200,361]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,95,96,101,105,
          124,129,145,147,169]),("combin",[8,11,15,16,17,33,34,35]),
         ("marker",[6,9]),("pair",[16]),("prim_rec",[7,44,45]),
         ("relation",[120,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%72%121%61%5@%60%26@%29@@@@%83%72%29@%64@@%5@%95%10%83%65%26@$0@@%5@%121%61%58%102%81%119@@@%5@@%60%26@$0@@@@|@%58%102%81%119@@@%29@@@@"])
  fun op findq_eq_0 x = x
    val op findq_eq_0 =
    DT(((("arithmetic",363),
        [("arithmetic",
         [17,18,24,26,29,37,38,58,59,60,69,71,90,93,110,148,154,185,187,
          192,199,200,362]),
         ("bool",
         [13,25,26,27,30,32,47,48,51,52,53,54,56,58,63,64,87,93,94,95,96,
          101,105,124,129,145,169]),("num",[7]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%5%57%26%57%29%68%72%121%61$2@%60$1@$0@@@@%64@@%72$2@%64@@|@|@|@"])
  fun op findq_divisor x = x
    val op findq_divisor =
    DT(((("arithmetic",364),
        [("arithmetic",
         [17,18,24,26,29,37,38,58,59,60,69,71,73,76,90,93,110,154,184,185,
          186,187,192,199,200,362]),
         ("bool",
         [13,25,26,27,30,32,47,48,51,52,53,54,56,58,63,64,87,93,94,95,96,
          101,105,124,129,145,169,170]),("marker",[8]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%74%66%29@%26@@%66%58%121%61%5@%60%26@%29@@@@%29@@%58%5@%26@@@"])
  fun op DIVMOD_THM x = x
    val op DIVMOD_THM =
    DT(((("arithmetic",366),
        [("arithmetic",[17,26,29,57,59,148,155,200,363,365]),
         ("bool",
         [25,26,27,32,47,48,51,52,53,54,56,58,63,93,94,96,105,124,129,
          147]),("combin",[8]),("num",[7]),("pair",[8,9,16]),
         ("prim_rec",[44,45]),("relation",[120,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%73%88%61%5@%60%26@%29@@@@%84%72%29@%64@@%60%64@%64@@%84%65%26@%29@@%60%5@%26@@%96%34%88%61%59%5@$0@@%60%62%26@%58%29@$0@@@%29@@@|@%121%61%102%80%119@@@%60%26@%29@@@@@@@"])
  fun op MOD_SUB x = x
    val op MOD_SUB =
    DT(((("arithmetic",367),
        [("arithmetic",
         [26,27,29,71,73,74,76,99,106,128,185,192,193,200,206,209,214,215,
          253]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,55,56,58,63,64,73,84,93,94,96,
          105,129]),("marker",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%74%63%65%64@%29@@%66%58%29@%34@@%26@@@%72%99%62%26@%58%29@%34@@@%29@@%99%26@%29@@@"])
  fun op DIV_SUB x = x
    val op DIV_SUB =
    DT(((("arithmetic",368),
        [("arithmetic",
         [26,27,29,71,73,74,76,99,106,128,185,192,193,200,206,209,214,
          253]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,55,56,58,63,64,73,84,93,94,96,
          105,129]),("marker",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%74%63%65%64@%29@@%66%58%29@%34@@%26@@@%72%86%62%26@%58%29@%34@@@%29@@%62%86%26@%29@@%34@@@"])
  fun op DIVMOD_CORRECT x = x
    val op DIVMOD_CORRECT =
    DT(((("arithmetic",369),
        [("arithmetic",
         [17,24,26,27,57,59,69,73,106,110,125,128,148,155,192,200,217,226,
          250,363,364,366,367,368]),
         ("bool",
         [25,26,27,30,47,48,51,52,53,54,55,56,58,63,64,87,93,94,96,105,124,
          169]),("combin",[8,11,15,16,17,33,34,35]),("marker",[6]),
         ("num",[7]),("pair",[4]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%57%26%57%29%57%5%74%65%64@$1@@%73%88%61$0@%60$2@$1@@@@%60%59$0@%86$2@$1@@@%99$2@$1@@@@|@|@|@"])
  fun op DIVMOD_CALC x = x
    val op DIVMOD_CALC =
    DT(((("arithmetic",370),
        [("arithmetic",[24,369]),("bool",[25,53,56,58,63,105,124]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%63%57%26%57%29%74%65%64@$0@@%72%86$1@$0@@%93%88%61%64@%60$1@$0@@@@@@|@|@@%57%26%57%29%74%65%64@$0@@%72%99$1@$0@@%108%88%61%64@%60$1@$0@@@@@@|@|@@"])
  fun op MODEQ_0_CONG x = x
    val op MODEQ_0_CONG =
    DT(((("arithmetic",372),
        [("arithmetic",[24,71,371]),("bool",[25,37,56])]),["DISK_THM"]),
       [read"%68%100%64@%27@%28@@%72%27@%28@@"])
  fun op MODEQ_NONZERO_MODEQUALITY x = x
    val op MODEQ_NONZERO_MODEQUALITY =
    DT(((("arithmetic",373),
        [("arithmetic",[26,27,74,209,215,371]),
         ("bool",[25,51,56,58,63,105,106,124,170]),
         ("marker",[6,8])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%68%100%29@%27@%28@@%72%99%27@%29@@%99%28@%29@@@@"])
  fun op MODEQ_THM x = x
    val op MODEQ_THM =
    DT(((("arithmetic",374),
        [("arithmetic",[29,372,373]),("bool",[25,26,53,54,55,63,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%68%100%29@%27@%28@@%120%63%72%29@%64@@%72%27@%28@@@%63%65%64@%29@@%72%99%27@%29@@%99%28@%29@@@@@"])
  fun op MODEQ_INTRO_CONG x = x
    val op MODEQ_INTRO_CONG =
    DT(((("arithmetic",375),
        [("arithmetic",[373]),("bool",[25,53,54,63,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%74%100%29@%11@%12@@%72%99%11@%29@@%99%12@%29@@@@"])
  fun op MODEQ_PLUS_CONG x = x
    val op MODEQ_PLUS_CONG =
    DT(((("arithmetic",376),
        [("arithmetic",[224,374]),
         ("bool",
         [25,26,27,51,52,53,56,58,63,73,93,95,101,102,103,105,124,145,
          169]),("prim_rec",[4])]),["DISK_THM"]),
       [read"%74%100%29@%40@%41@@%74%100%29@%44@%45@@%100%29@%59%40@%44@@%59%41@%45@@@@"])
  fun op MODEQ_MULT_CONG x = x
    val op MODEQ_MULT_CONG =
    DT(((("arithmetic",377),
        [("arithmetic",[245,374]),
         ("bool",
         [25,26,27,51,52,53,56,58,63,73,93,95,101,102,103,105,124,145,
          169]),("prim_rec",[4])]),["DISK_THM"]),
       [read"%74%100%29@%40@%41@@%74%100%29@%44@%45@@%100%29@%58%40@%44@@%58%41@%45@@@@"])
  fun op MODEQ_REFL x = x
    val op MODEQ_REFL =
    DT(((("arithmetic",378),
        [("arithmetic",[29,374]),
         ("bool",[25,30,51,56,58,63])]),["DISK_THM"]),
       [read"%57%39%100%29@$0@$0@|@"])
  fun op MODEQ_SYM x = x
    val op MODEQ_SYM =
    DT(((("arithmetic",379),
        [("arithmetic",[374]),("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%68%100%29@%39@%43@@%100%29@%43@%39@@"])
  fun op MODEQ_TRANS x = x
    val op MODEQ_TRANS =
    DT(((("arithmetic",380),
        [("arithmetic",[374]),
         ("bool",
         [25,26,27,36,51,52,53,56,58,63,93,95,97,98,101,102,105,124,145]),
         ("prim_rec",[4])]),["DISK_THM"]),
       [read"%57%39%57%43%57%47%74%63%100%29@$2@$1@@%100%29@$1@$0@@@%100%29@$2@$0@@|@|@|@"])
  fun op MODEQ_NUMERAL x = x
    val op MODEQ_NUMERAL =
    DT(((("arithmetic",381),
        [("arithmetic",[1,3,4,24,225,373]),
         ("bool",[25,51,53,56,58,63,105,124]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%63%74%66%102%29@@%102%26@@@%100%102%80%29@@@%102%80%26@@@%99%102%80%26@@@%102%80%29@@@@@@%63%74%66%102%29@@%102%26@@@%100%102%80%29@@@%102%81%26@@@%99%102%81%26@@@%102%80%29@@@@@@%63%74%66%102%29@@%102%26@@@%100%102%81%29@@@%102%81%26@@@%99%102%81%26@@@%102%81%29@@@@@@%74%65%102%29@@%102%26@@@%100%102%81%29@@@%102%80%26@@@%99%102%80%26@@@%102%81%29@@@@@@@@"])
  fun op MODEQ_MOD x = x
    val op MODEQ_MOD =
    DT(((("arithmetic",382),
        [("arithmetic",[225,373]),
         ("bool",[25,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%100%29@%99%39@%29@@%39@@"])
  fun op MODEQ_0 x = x
    val op MODEQ_0 =
    DT(((("arithmetic",383),
        [("arithmetic",[219,233,373]),
         ("bool",[25,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%74%65%64@%29@@%100%29@%29@%64@@"])
  fun op datatype_num x = x
    val op datatype_num =
    DT(((("arithmetic",384),[("bool",[25,171])]),["DISK_THM"]),
       [read"%85%32%64@%110@@"])
  end
  val _ = DB.bindl "arithmetic"
  [("ADD",ADD,DB.Def), ("NUMERAL_DEF",NUMERAL_DEF,DB.Def),
   ("ALT_ZERO",ALT_ZERO,DB.Def), ("BIT1",BIT1,DB.Def),
   ("BIT2",BIT2,DB.Def), ("nat_elim__magic",nat_elim__magic,DB.Def),
   ("SUB",SUB,DB.Def), ("MULT",MULT,DB.Def), ("EXP",EXP,DB.Def),
   ("GREATER_DEF",GREATER_DEF,DB.Def), ("LESS_OR_EQ",LESS_OR_EQ,DB.Def),
   ("GREATER_OR_EQ",GREATER_OR_EQ,DB.Def), ("EVEN",EVEN,DB.Def),
   ("ODD",ODD,DB.Def), ("num_case_def",num_case_def,DB.Def),
   ("FUNPOW",FUNPOW,DB.Def), ("NRC",NRC,DB.Def), ("FACT",FACT,DB.Def),
   ("DIVISION",DIVISION,DB.Def), ("DIV2_def",DIV2_def,DB.Def),
   ("MAX_DEF",MAX_DEF,DB.Def), ("MIN_DEF",MIN_DEF,DB.Def),
   ("ABS_DIFF_def",ABS_DIFF_def,DB.Def), ("findq_def",findq_def,DB.Def),
   ("DIVMOD_DEF",DIVMOD_DEF,DB.Def), ("MODEQ_DEF",MODEQ_DEF,DB.Def),
   ("ONE",ONE,DB.Thm), ("TWO",TWO,DB.Thm), ("NORM_0",NORM_0,DB.Thm),
   ("num_case_compute",num_case_compute,DB.Thm),
   ("SUC_NOT",SUC_NOT,DB.Thm), ("ADD_0",ADD_0,DB.Thm),
   ("ADD_SUC",ADD_SUC,DB.Thm), ("ADD_CLAUSES",ADD_CLAUSES,DB.Thm),
   ("ADD_SYM",ADD_SYM,DB.Thm), ("ADD_COMM",ADD_COMM,DB.Thm),
   ("ADD_ASSOC",ADD_ASSOC,DB.Thm), ("num_CASES",num_CASES,DB.Thm),
   ("NOT_ZERO_LT_ZERO",NOT_ZERO_LT_ZERO,DB.Thm),
   ("NOT_LT_ZERO_EQ_ZERO",NOT_LT_ZERO_EQ_ZERO,DB.Thm),
   ("LESS_OR_EQ_ALT",LESS_OR_EQ_ALT,DB.Thm), ("LESS_ADD",LESS_ADD,DB.Thm),
   ("transitive_LESS",transitive_LESS,DB.Thm),
   ("LESS_TRANS",LESS_TRANS,DB.Thm), ("LESS_ANTISYM",LESS_ANTISYM,DB.Thm),
   ("LESS_MONO_REV",LESS_MONO_REV,DB.Thm),
   ("LESS_MONO_EQ",LESS_MONO_EQ,DB.Thm),
   ("LESS_EQ_MONO",LESS_EQ_MONO,DB.Thm),
   ("LESS_LESS_SUC",LESS_LESS_SUC,DB.Thm),
   ("transitive_measure",transitive_measure,DB.Thm),
   ("LESS_EQ",LESS_EQ,DB.Thm), ("LESS_OR",LESS_OR,DB.Thm),
   ("OR_LESS",OR_LESS,DB.Thm),
   ("LESS_EQ_IFF_LESS_SUC",LESS_EQ_IFF_LESS_SUC,DB.Thm),
   ("LESS_EQ_IMP_LESS_SUC",LESS_EQ_IMP_LESS_SUC,DB.Thm),
   ("ZERO_LESS_EQ",ZERO_LESS_EQ,DB.Thm),
   ("LESS_SUC_EQ_COR",LESS_SUC_EQ_COR,DB.Thm),
   ("LESS_NOT_SUC",LESS_NOT_SUC,DB.Thm),
   ("LESS_0_CASES",LESS_0_CASES,DB.Thm),
   ("LESS_CASES_IMP",LESS_CASES_IMP,DB.Thm),
   ("LESS_CASES",LESS_CASES,DB.Thm), ("ADD_INV_0",ADD_INV_0,DB.Thm),
   ("LESS_EQ_ADD",LESS_EQ_ADD,DB.Thm),
   ("LESS_EQ_ADD_EXISTS",LESS_EQ_ADD_EXISTS,DB.Thm),
   ("LESS_STRONG_ADD",LESS_STRONG_ADD,DB.Thm),
   ("LESS_EQ_SUC_REFL",LESS_EQ_SUC_REFL,DB.Thm),
   ("LESS_ADD_NONZERO",LESS_ADD_NONZERO,DB.Thm),
   ("NOT_SUC_LESS_EQ_0",NOT_SUC_LESS_EQ_0,DB.Thm),
   ("NOT_LESS",NOT_LESS,DB.Thm), ("NOT_LESS_EQUAL",NOT_LESS_EQUAL,DB.Thm),
   ("LESS_EQ_ANTISYM",LESS_EQ_ANTISYM,DB.Thm), ("SUB_0",SUB_0,DB.Thm),
   ("SUB_EQ_0",SUB_EQ_0,DB.Thm), ("ADD1",ADD1,DB.Thm),
   ("SUC_SUB1",SUC_SUB1,DB.Thm), ("PRE_SUB1",PRE_SUB1,DB.Thm),
   ("MULT_0",MULT_0,DB.Thm), ("MULT_SUC",MULT_SUC,DB.Thm),
   ("MULT_LEFT_1",MULT_LEFT_1,DB.Thm),
   ("MULT_RIGHT_1",MULT_RIGHT_1,DB.Thm),
   ("MULT_CLAUSES",MULT_CLAUSES,DB.Thm), ("MULT_SYM",MULT_SYM,DB.Thm),
   ("MULT_COMM",MULT_COMM,DB.Thm),
   ("RIGHT_ADD_DISTRIB",RIGHT_ADD_DISTRIB,DB.Thm),
   ("LEFT_ADD_DISTRIB",LEFT_ADD_DISTRIB,DB.Thm),
   ("MULT_ASSOC",MULT_ASSOC,DB.Thm), ("SUB_ADD",SUB_ADD,DB.Thm),
   ("PRE_SUB",PRE_SUB,DB.Thm), ("ADD_EQ_0",ADD_EQ_0,DB.Thm),
   ("ADD_EQ_1",ADD_EQ_1,DB.Thm), ("ADD_INV_0_EQ",ADD_INV_0_EQ,DB.Thm),
   ("PRE_SUC_EQ",PRE_SUC_EQ,DB.Thm), ("INV_PRE_EQ",INV_PRE_EQ,DB.Thm),
   ("LESS_SUC_NOT",LESS_SUC_NOT,DB.Thm), ("ADD_EQ_SUB",ADD_EQ_SUB,DB.Thm),
   ("LESS_MONO_ADD",LESS_MONO_ADD,DB.Thm),
   ("LESS_MONO_ADD_INV",LESS_MONO_ADD_INV,DB.Thm),
   ("LESS_MONO_ADD_EQ",LESS_MONO_ADD_EQ,DB.Thm),
   ("LT_ADD_RCANCEL",LT_ADD_RCANCEL,DB.Thm),
   ("LT_ADD_LCANCEL",LT_ADD_LCANCEL,DB.Thm),
   ("EQ_MONO_ADD_EQ",EQ_MONO_ADD_EQ,DB.Thm),
   ("LESS_EQ_MONO_ADD_EQ",LESS_EQ_MONO_ADD_EQ,DB.Thm),
   ("LESS_EQ_TRANS",LESS_EQ_TRANS,DB.Thm),
   ("LESS_EQ_LESS_EQ_MONO",LESS_EQ_LESS_EQ_MONO,DB.Thm),
   ("LESS_EQ_REFL",LESS_EQ_REFL,DB.Thm),
   ("LESS_IMP_LESS_OR_EQ",LESS_IMP_LESS_OR_EQ,DB.Thm),
   ("LESS_MONO_MULT",LESS_MONO_MULT,DB.Thm),
   ("LESS_MONO_MULT2",LESS_MONO_MULT2,DB.Thm),
   ("RIGHT_SUB_DISTRIB",RIGHT_SUB_DISTRIB,DB.Thm),
   ("LEFT_SUB_DISTRIB",LEFT_SUB_DISTRIB,DB.Thm),
   ("LESS_ADD_1",LESS_ADD_1,DB.Thm), ("EXP_ADD",EXP_ADD,DB.Thm),
   ("NOT_ODD_EQ_EVEN",NOT_ODD_EQ_EVEN,DB.Thm),
   ("MULT_SUC_EQ",MULT_SUC_EQ,DB.Thm),
   ("MULT_EXP_MONO",MULT_EXP_MONO,DB.Thm),
   ("LESS_EQUAL_ANTISYM",LESS_EQUAL_ANTISYM,DB.Thm),
   ("LESS_ADD_SUC",LESS_ADD_SUC,DB.Thm),
   ("LESS_OR_EQ_ADD",LESS_OR_EQ_ADD,DB.Thm), ("WOP",WOP,DB.Thm),
   ("COMPLETE_INDUCTION",COMPLETE_INDUCTION,DB.Thm),
   ("FORALL_NUM_THM",FORALL_NUM_THM,DB.Thm),
   ("SUB_MONO_EQ",SUB_MONO_EQ,DB.Thm), ("SUC_SUB",SUC_SUB,DB.Thm),
   ("SUB_PLUS",SUB_PLUS,DB.Thm), ("INV_PRE_LESS",INV_PRE_LESS,DB.Thm),
   ("INV_PRE_LESS_EQ",INV_PRE_LESS_EQ,DB.Thm),
   ("SUB_LESS_EQ",SUB_LESS_EQ,DB.Thm), ("SUB_EQ_EQ_0",SUB_EQ_EQ_0,DB.Thm),
   ("SUB_LESS_0",SUB_LESS_0,DB.Thm), ("SUB_LESS_OR",SUB_LESS_OR,DB.Thm),
   ("LESS_SUB_ADD_LESS",LESS_SUB_ADD_LESS,DB.Thm),
   ("TIMES2",TIMES2,DB.Thm), ("LESS_MULT_MONO",LESS_MULT_MONO,DB.Thm),
   ("MULT_MONO_EQ",MULT_MONO_EQ,DB.Thm),
   ("EQ_ADD_LCANCEL",EQ_ADD_LCANCEL,DB.Thm),
   ("EQ_ADD_RCANCEL",EQ_ADD_RCANCEL,DB.Thm),
   ("EQ_MULT_LCANCEL",EQ_MULT_LCANCEL,DB.Thm), ("ADD_SUB",ADD_SUB,DB.Thm),
   ("LESS_EQ_ADD_SUB",LESS_EQ_ADD_SUB,DB.Thm),
   ("SUB_EQUAL_0",SUB_EQUAL_0,DB.Thm),
   ("LESS_EQ_SUB_LESS",LESS_EQ_SUB_LESS,DB.Thm),
   ("NOT_SUC_LESS_EQ",NOT_SUC_LESS_EQ,DB.Thm), ("SUB_SUB",SUB_SUB,DB.Thm),
   ("LESS_IMP_LESS_ADD",LESS_IMP_LESS_ADD,DB.Thm),
   ("SUB_LESS_EQ_ADD",SUB_LESS_EQ_ADD,DB.Thm),
   ("SUB_CANCEL",SUB_CANCEL,DB.Thm), ("CANCEL_SUB",CANCEL_SUB,DB.Thm),
   ("NOT_EXP_0",NOT_EXP_0,DB.Thm), ("ZERO_LESS_EXP",ZERO_LESS_EXP,DB.Thm),
   ("ODD_OR_EVEN",ODD_OR_EVEN,DB.Thm),
   ("LESS_EXP_SUC_MONO",LESS_EXP_SUC_MONO,DB.Thm),
   ("LESS_LESS_CASES",LESS_LESS_CASES,DB.Thm),
   ("GREATER_EQ",GREATER_EQ,DB.Thm),
   ("LESS_EQ_CASES",LESS_EQ_CASES,DB.Thm),
   ("LESS_EQUAL_ADD",LESS_EQUAL_ADD,DB.Thm),
   ("LESS_EQ_EXISTS",LESS_EQ_EXISTS,DB.Thm),
   ("LESS_EQ_0",LESS_EQ_0,DB.Thm), ("MULT_EQ_0",MULT_EQ_0,DB.Thm),
   ("MULT_EQ_1",MULT_EQ_1,DB.Thm), ("MULT_EQ_ID",MULT_EQ_ID,DB.Thm),
   ("LESS_MULT2",LESS_MULT2,DB.Thm),
   ("ZERO_LESS_MULT",ZERO_LESS_MULT,DB.Thm),
   ("ZERO_LESS_ADD",ZERO_LESS_ADD,DB.Thm),
   ("LESS_EQ_LESS_TRANS",LESS_EQ_LESS_TRANS,DB.Thm),
   ("LESS_LESS_EQ_TRANS",LESS_LESS_EQ_TRANS,DB.Thm),
   ("FACT_LESS",FACT_LESS,DB.Thm), ("EVEN_ODD",EVEN_ODD,DB.Thm),
   ("ODD_EVEN",ODD_EVEN,DB.Thm), ("EVEN_OR_ODD",EVEN_OR_ODD,DB.Thm),
   ("EVEN_AND_ODD",EVEN_AND_ODD,DB.Thm), ("EVEN_ADD",EVEN_ADD,DB.Thm),
   ("EVEN_MULT",EVEN_MULT,DB.Thm), ("ODD_ADD",ODD_ADD,DB.Thm),
   ("ODD_MULT",ODD_MULT,DB.Thm), ("EVEN_DOUBLE",EVEN_DOUBLE,DB.Thm),
   ("ODD_DOUBLE",ODD_DOUBLE,DB.Thm),
   ("EVEN_ODD_EXISTS",EVEN_ODD_EXISTS,DB.Thm),
   ("EVEN_EXISTS",EVEN_EXISTS,DB.Thm), ("ODD_EXISTS",ODD_EXISTS,DB.Thm),
   ("EVEN_EXP",EVEN_EXP,DB.Thm), ("EQ_LESS_EQ",EQ_LESS_EQ,DB.Thm),
   ("ADD_MONO_LESS_EQ",ADD_MONO_LESS_EQ,DB.Thm),
   ("LE_ADD_LCANCEL",LE_ADD_LCANCEL,DB.Thm),
   ("LE_ADD_RCANCEL",LE_ADD_RCANCEL,DB.Thm), ("NOT_LEQ",NOT_LEQ,DB.Thm),
   ("NOT_NUM_EQ",NOT_NUM_EQ,DB.Thm), ("NOT_GREATER",NOT_GREATER,DB.Thm),
   ("NOT_GREATER_EQ",NOT_GREATER_EQ,DB.Thm),
   ("SUC_ONE_ADD",SUC_ONE_ADD,DB.Thm), ("SUC_ADD_SYM",SUC_ADD_SYM,DB.Thm),
   ("NOT_SUC_ADD_LESS_EQ",NOT_SUC_ADD_LESS_EQ,DB.Thm),
   ("MULT_LESS_EQ_SUC",MULT_LESS_EQ_SUC,DB.Thm),
   ("LE_MULT_LCANCEL",LE_MULT_LCANCEL,DB.Thm),
   ("LE_MULT_RCANCEL",LE_MULT_RCANCEL,DB.Thm),
   ("LT_MULT_LCANCEL",LT_MULT_LCANCEL,DB.Thm),
   ("LT_MULT_RCANCEL",LT_MULT_RCANCEL,DB.Thm),
   ("LT_MULT_CANCEL_LBARE",LT_MULT_CANCEL_LBARE,DB.Thm),
   ("LT_MULT_CANCEL_RBARE",LT_MULT_CANCEL_RBARE,DB.Thm),
   ("LE_MULT_CANCEL_LBARE",LE_MULT_CANCEL_LBARE,DB.Thm),
   ("LE_MULT_CANCEL_RBARE",LE_MULT_CANCEL_RBARE,DB.Thm),
   ("SUB_LEFT_ADD",SUB_LEFT_ADD,DB.Thm),
   ("SUB_RIGHT_ADD",SUB_RIGHT_ADD,DB.Thm),
   ("SUB_LEFT_SUB",SUB_LEFT_SUB,DB.Thm),
   ("SUB_RIGHT_SUB",SUB_RIGHT_SUB,DB.Thm),
   ("SUB_LEFT_SUC",SUB_LEFT_SUC,DB.Thm),
   ("SUB_LEFT_LESS_EQ",SUB_LEFT_LESS_EQ,DB.Thm),
   ("SUB_RIGHT_LESS_EQ",SUB_RIGHT_LESS_EQ,DB.Thm),
   ("SUB_LEFT_LESS",SUB_LEFT_LESS,DB.Thm),
   ("SUB_RIGHT_LESS",SUB_RIGHT_LESS,DB.Thm),
   ("SUB_LEFT_GREATER_EQ",SUB_LEFT_GREATER_EQ,DB.Thm),
   ("SUB_RIGHT_GREATER_EQ",SUB_RIGHT_GREATER_EQ,DB.Thm),
   ("SUB_LEFT_GREATER",SUB_LEFT_GREATER,DB.Thm),
   ("SUB_RIGHT_GREATER",SUB_RIGHT_GREATER,DB.Thm),
   ("SUB_LEFT_EQ",SUB_LEFT_EQ,DB.Thm),
   ("SUB_RIGHT_EQ",SUB_RIGHT_EQ,DB.Thm), ("LE",LE,DB.Thm),
   ("DA",DA,DB.Thm), ("MOD_ONE",MOD_ONE,DB.Thm), ("MOD_1",MOD_1,DB.Thm),
   ("DIV_LESS_EQ",DIV_LESS_EQ,DB.Thm), ("DIV_UNIQUE",DIV_UNIQUE,DB.Thm),
   ("MOD_UNIQUE",MOD_UNIQUE,DB.Thm), ("DIV_MULT",DIV_MULT,DB.Thm),
   ("LESS_MOD",LESS_MOD,DB.Thm), ("MOD_EQ_0",MOD_EQ_0,DB.Thm),
   ("ZERO_MOD",ZERO_MOD,DB.Thm), ("ZERO_DIV",ZERO_DIV,DB.Thm),
   ("MOD_MULT",MOD_MULT,DB.Thm), ("MOD_TIMES",MOD_TIMES,DB.Thm),
   ("MOD_TIMES_SUB",MOD_TIMES_SUB,DB.Thm), ("MOD_PLUS",MOD_PLUS,DB.Thm),
   ("MOD_MOD",MOD_MOD,DB.Thm),
   ("LESS_DIV_EQ_ZERO",LESS_DIV_EQ_ZERO,DB.Thm),
   ("MULT_DIV",MULT_DIV,DB.Thm),
   ("ADD_DIV_ADD_DIV",ADD_DIV_ADD_DIV,DB.Thm),
   ("ADD_DIV_RWT",ADD_DIV_RWT,DB.Thm),
   ("MOD_MULT_MOD",MOD_MULT_MOD,DB.Thm), ("DIV_ONE",DIV_ONE,DB.Thm),
   ("DIV_1",DIV_1,DB.Thm), ("DIVMOD_ID",DIVMOD_ID,DB.Thm),
   ("DIV_DIV_DIV_MULT",DIV_DIV_DIV_MULT,DB.Thm),
   ("SUC_PRE",SUC_PRE,DB.Thm), ("DIV_LESS",DIV_LESS,DB.Thm),
   ("MOD_LESS",MOD_LESS,DB.Thm), ("ADD_MODULUS",ADD_MODULUS,DB.Thm),
   ("ADD_MODULUS_LEFT",ADD_MODULUS_LEFT,DB.Thm),
   ("ADD_MODULUS_RIGHT",ADD_MODULUS_RIGHT,DB.Thm), ("DIV_P",DIV_P,DB.Thm),
   ("DIV_P_UNIV",DIV_P_UNIV,DB.Thm), ("MOD_P",MOD_P,DB.Thm),
   ("MOD_P_UNIV",MOD_P_UNIV,DB.Thm), ("MOD_TIMES2",MOD_TIMES2,DB.Thm),
   ("MOD_COMMON_FACTOR",MOD_COMMON_FACTOR,DB.Thm),
   ("X_MOD_Y_EQ_X",X_MOD_Y_EQ_X,DB.Thm),
   ("DIV_LE_MONOTONE",DIV_LE_MONOTONE,DB.Thm), ("LE_LT1",LE_LT1,DB.Thm),
   ("X_LE_DIV",X_LE_DIV,DB.Thm), ("X_LT_DIV",X_LT_DIV,DB.Thm),
   ("DIV_LT_X",DIV_LT_X,DB.Thm), ("DIV_LE_X",DIV_LE_X,DB.Thm),
   ("DIV_EQ_X",DIV_EQ_X,DB.Thm),
   ("DIV_MOD_MOD_DIV",DIV_MOD_MOD_DIV,DB.Thm),
   ("MULT_EQ_DIV",MULT_EQ_DIV,DB.Thm),
   ("NUMERAL_MULT_EQ_DIV",NUMERAL_MULT_EQ_DIV,DB.Thm),
   ("MOD_EQ_0_DIVISOR",MOD_EQ_0_DIVISOR,DB.Thm),
   ("MOD_SUC",MOD_SUC,DB.Thm), ("MOD_SUC_IFF",MOD_SUC_IFF,DB.Thm),
   ("ONE_MOD",ONE_MOD,DB.Thm), ("ONE_MOD_IFF",ONE_MOD_IFF,DB.Thm),
   ("MOD_LESS_EQ",MOD_LESS_EQ,DB.Thm),
   ("MOD_LIFT_PLUS",MOD_LIFT_PLUS,DB.Thm),
   ("MOD_LIFT_PLUS_IFF",MOD_LIFT_PLUS_IFF,DB.Thm),
   ("num_case_cong",num_case_cong,DB.Thm),
   ("SUC_ELIM_THM",SUC_ELIM_THM,DB.Thm),
   ("SUC_ELIM_NUMERALS",SUC_ELIM_NUMERALS,DB.Thm),
   ("SUB_ELIM_THM",SUB_ELIM_THM,DB.Thm),
   ("PRE_ELIM_THM",PRE_ELIM_THM,DB.Thm),
   ("MULT_INCREASES",MULT_INCREASES,DB.Thm),
   ("EXP_ALWAYS_BIG_ENOUGH",EXP_ALWAYS_BIG_ENOUGH,DB.Thm),
   ("EXP_EQ_0",EXP_EQ_0,DB.Thm), ("ZERO_LT_EXP",ZERO_LT_EXP,DB.Thm),
   ("EXP_1",EXP_1,DB.Thm), ("EXP_EQ_1",EXP_EQ_1,DB.Thm),
   ("EXP_BASE_LE_MONO",EXP_BASE_LE_MONO,DB.Thm),
   ("EXP_BASE_LT_MONO",EXP_BASE_LT_MONO,DB.Thm),
   ("EXP_BASE_INJECTIVE",EXP_BASE_INJECTIVE,DB.Thm),
   ("EXP_BASE_LEQ_MONO_IMP",EXP_BASE_LEQ_MONO_IMP,DB.Thm),
   ("EXP_BASE_LEQ_MONO_SUC_IMP",EXP_BASE_LEQ_MONO_SUC_IMP,DB.Thm),
   ("EXP_BASE_LE_IFF",EXP_BASE_LE_IFF,DB.Thm),
   ("X_LE_X_EXP",X_LE_X_EXP,DB.Thm), ("X_LT_EXP_X",X_LT_EXP_X,DB.Thm),
   ("ZERO_EXP",ZERO_EXP,DB.Thm), ("X_LT_EXP_X_IFF",X_LT_EXP_X_IFF,DB.Thm),
   ("EXP_EXP_LT_MONO",EXP_EXP_LT_MONO,DB.Thm),
   ("EXP_EXP_LE_MONO",EXP_EXP_LE_MONO,DB.Thm),
   ("EXP_EXP_INJECTIVE",EXP_EXP_INJECTIVE,DB.Thm),
   ("EXP_SUB",EXP_SUB,DB.Thm), ("EXP_SUB_NUMERAL",EXP_SUB_NUMERAL,DB.Thm),
   ("EXP_BASE_MULT",EXP_BASE_MULT,DB.Thm),
   ("EXP_EXP_MULT",EXP_EXP_MULT,DB.Thm), ("MAX_COMM",MAX_COMM,DB.Thm),
   ("MIN_COMM",MIN_COMM,DB.Thm), ("MAX_ASSOC",MAX_ASSOC,DB.Thm),
   ("MIN_ASSOC",MIN_ASSOC,DB.Thm), ("MIN_MAX_EQ",MIN_MAX_EQ,DB.Thm),
   ("MIN_MAX_LT",MIN_MAX_LT,DB.Thm), ("MIN_MAX_LE",MIN_MAX_LE,DB.Thm),
   ("MIN_MAX_PRED",MIN_MAX_PRED,DB.Thm), ("MIN_LT",MIN_LT,DB.Thm),
   ("MAX_LT",MAX_LT,DB.Thm), ("MIN_LE",MIN_LE,DB.Thm),
   ("MAX_LE",MAX_LE,DB.Thm), ("MIN_0",MIN_0,DB.Thm),
   ("MAX_0",MAX_0,DB.Thm), ("MIN_IDEM",MIN_IDEM,DB.Thm),
   ("MAX_IDEM",MAX_IDEM,DB.Thm),
   ("EXISTS_GREATEST",EXISTS_GREATEST,DB.Thm),
   ("EXISTS_NUM",EXISTS_NUM,DB.Thm), ("FORALL_NUM",FORALL_NUM,DB.Thm),
   ("BOUNDED_FORALL_THM",BOUNDED_FORALL_THM,DB.Thm),
   ("BOUNDED_EXISTS_THM",BOUNDED_EXISTS_THM,DB.Thm),
   ("transitive_monotone",transitive_monotone,DB.Thm),
   ("STRICTLY_INCREASING_TC",STRICTLY_INCREASING_TC,DB.Thm),
   ("STRICTLY_INCREASING_ONE_ONE",STRICTLY_INCREASING_ONE_ONE,DB.Thm),
   ("ONE_ONE_UNBOUNDED",ONE_ONE_UNBOUNDED,DB.Thm),
   ("STRICTLY_INCREASING_UNBOUNDED",STRICTLY_INCREASING_UNBOUNDED,DB.Thm),
   ("NOT_STRICTLY_DECREASING",NOT_STRICTLY_DECREASING,DB.Thm),
   ("ABS_DIFF_SYM",ABS_DIFF_SYM,DB.Thm),
   ("ABS_DIFF_COMM",ABS_DIFF_COMM,DB.Thm),
   ("ABS_DIFF_EQS",ABS_DIFF_EQS,DB.Thm),
   ("ABS_DIFF_EQ_0",ABS_DIFF_EQ_0,DB.Thm),
   ("ABS_DIFF_ZERO",ABS_DIFF_ZERO,DB.Thm),
   ("ABS_DIFF_TRIANGLE",ABS_DIFF_TRIANGLE,DB.Thm),
   ("ABS_DIFF_ADD_SAME",ABS_DIFF_ADD_SAME,DB.Thm),
   ("LT_SUB_RCANCEL",LT_SUB_RCANCEL,DB.Thm),
   ("LE_SUB_RCANCEL",LE_SUB_RCANCEL,DB.Thm),
   ("ABS_DIFF_SUMS",ABS_DIFF_SUMS,DB.Thm),
   ("FUNPOW_SUC",FUNPOW_SUC,DB.Thm), ("FUNPOW_0",FUNPOW_0,DB.Thm),
   ("FUNPOW_ADD",FUNPOW_ADD,DB.Thm), ("FUNPOW_1",FUNPOW_1,DB.Thm),
   ("NRC_0",NRC_0,DB.Thm), ("NRC_1",NRC_1,DB.Thm),
   ("NRC_ADD_I",NRC_ADD_I,DB.Thm), ("NRC_ADD_E",NRC_ADD_E,DB.Thm),
   ("NRC_ADD_EQN",NRC_ADD_EQN,DB.Thm),
   ("NRC_SUC_RECURSE_LEFT",NRC_SUC_RECURSE_LEFT,DB.Thm),
   ("NRC_RTC",NRC_RTC,DB.Thm), ("RTC_NRC",RTC_NRC,DB.Thm),
   ("RTC_eq_NRC",RTC_eq_NRC,DB.Thm), ("TC_eq_NRC",TC_eq_NRC,DB.Thm),
   ("LESS_EQUAL_DIFF",LESS_EQUAL_DIFF,DB.Thm), ("MOD_2",MOD_2,DB.Thm),
   ("EVEN_MOD2",EVEN_MOD2,DB.Thm), ("SUC_MOD",SUC_MOD,DB.Thm),
   ("ADD_MOD",ADD_MOD,DB.Thm), ("MOD_ELIM",MOD_ELIM,DB.Thm),
   ("DOUBLE_LT",DOUBLE_LT,DB.Thm), ("EXP2_LT",EXP2_LT,DB.Thm),
   ("SUB_LESS",SUB_LESS,DB.Thm), ("SUB_MOD",SUB_MOD,DB.Thm),
   ("ONE_LT_MULT_IMP",ONE_LT_MULT_IMP,DB.Thm),
   ("ONE_LT_MULT",ONE_LT_MULT,DB.Thm), ("ONE_LT_EXP",ONE_LT_EXP,DB.Thm),
   ("findq_thm",findq_thm,DB.Thm), ("findq_eq_0",findq_eq_0,DB.Thm),
   ("findq_divisor",findq_divisor,DB.Thm),
   ("DIVMOD_THM",DIVMOD_THM,DB.Thm), ("MOD_SUB",MOD_SUB,DB.Thm),
   ("DIV_SUB",DIV_SUB,DB.Thm), ("DIVMOD_CORRECT",DIVMOD_CORRECT,DB.Thm),
   ("DIVMOD_CALC",DIVMOD_CALC,DB.Thm),
   ("MODEQ_0_CONG",MODEQ_0_CONG,DB.Thm),
   ("MODEQ_NONZERO_MODEQUALITY",MODEQ_NONZERO_MODEQUALITY,DB.Thm),
   ("MODEQ_THM",MODEQ_THM,DB.Thm),
   ("MODEQ_INTRO_CONG",MODEQ_INTRO_CONG,DB.Thm),
   ("MODEQ_PLUS_CONG",MODEQ_PLUS_CONG,DB.Thm),
   ("MODEQ_MULT_CONG",MODEQ_MULT_CONG,DB.Thm),
   ("MODEQ_REFL",MODEQ_REFL,DB.Thm), ("MODEQ_SYM",MODEQ_SYM,DB.Thm),
   ("MODEQ_TRANS",MODEQ_TRANS,DB.Thm),
   ("MODEQ_NUMERAL",MODEQ_NUMERAL,DB.Thm), ("MODEQ_MOD",MODEQ_MOD,DB.Thm),
   ("MODEQ_0",MODEQ_0,DB.Thm), ("datatype_num",datatype_num,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("pairTheory.pair_grammars",
                          pairTheory.pair_grammars),
                         ("prim_recTheory.prim_rec_grammars",
                          prim_recTheory.prim_rec_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "+", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "+"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMERAL", (Term.prim_mk_const { Name = "NUMERAL", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMERAL", (Term.prim_mk_const { Name = "NUMERAL", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZERO", (Term.prim_mk_const { Name = "ZERO", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZERO", (Term.prim_mk_const { Name = "ZERO", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1", (Term.prim_mk_const { Name = "BIT1", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT1", (Term.prim_mk_const { Name = "BIT1", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT2", (Term.prim_mk_const { Name = "BIT2", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT2", (Term.prim_mk_const { Name = "BIT2", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nat_elim__magic", (Term.prim_mk_const { Name = "nat_elim__magic", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nat_elim__magic", (Term.prim_mk_const { Name = "nat_elim__magic", Thy = "arithmetic"}))
  val _ = update_grms temp_add_numeral_form (#"n", NONE)
  val _ = update_grms
       (UTOFF (temp_set_fixity "-"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "-", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "numeric_negate", fixity = Prefix 900,
pp_elements = [TOK "-"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "&", fixity = Prefix 900,
pp_elements = [TOK "&"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("&", (Term.prim_mk_const { Name = "nat_elim__magic", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "*"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "*", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXP", (Term.prim_mk_const { Name = "EXP", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "EXP"))
       (Infix(HOLgrammars.RIGHT, 700))
  val _ = update_grms temp_add_infix ("**", 700, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("**", (Term.prim_mk_const { Name = "EXP", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "\194\178", fixity = Suffix 2100,
pp_elements = [TOK "\194\178"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\194\178", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :(num$num)). arithmetic$EXP x (arithmetic$NUMERAL (arithmetic$BIT2 arithmetic$ZERO))"]))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "\194\179", fixity = Suffix 2100,
pp_elements = [TOK "\194\179"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\194\179", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :(num$num)). arithmetic$EXP x (arithmetic$NUMERAL (arithmetic$BIT1 (arithmetic$BIT1 arithmetic$ZERO)))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = ">", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = ">", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity ">"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "<=", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "<=", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<="))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = ">=", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = ">=", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity ">="))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVEN", (Term.prim_mk_const { Name = "EVEN", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ODD", (Term.prim_mk_const { Name = "ODD", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_CASE", (Term.prim_mk_const { Name = "num_CASE", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUNPOW", (Term.prim_mk_const { Name = "FUNPOW", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NRC", (Term.prim_mk_const { Name = "NRC", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RELPOW", (Term.prim_mk_const { Name = "NRC", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NRC", (Term.prim_mk_const { Name = "NRC", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FACT", (Term.prim_mk_const { Name = "FACT", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MOD", (Term.prim_mk_const { Name = "MOD", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIV", (Term.prim_mk_const { Name = "DIV", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "MOD"))
       (Infix(HOLgrammars.LEFT, 650))
  val _ = update_grms
       (UTOFF (temp_set_fixity "DIV"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIV2", (Term.prim_mk_const { Name = "DIV2", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIV2", (Term.prim_mk_const { Name = "DIV2", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAX", (Term.prim_mk_const { Name = "MAX", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAX", (Term.prim_mk_const { Name = "MAX", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MIN", (Term.prim_mk_const { Name = "MIN", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MIN", (Term.prim_mk_const { Name = "MIN", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS_DIFF", (Term.prim_mk_const { Name = "ABS_DIFF", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS_DIFF", (Term.prim_mk_const { Name = "ABS_DIFF", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("findq", (Term.prim_mk_const { Name = "findq", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("findq", (Term.prim_mk_const { Name = "findq", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIVMOD", (Term.prim_mk_const { Name = "DIVMOD", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DIVMOD", (Term.prim_mk_const { Name = "DIVMOD", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MODEQ", (Term.prim_mk_const { Name = "MODEQ", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MODEQ", (Term.prim_mk_const { Name = "MODEQ", Thy = "arithmetic"}))
  val arithmetic_grammars = Parse.current_lgrms()
  end


  val _ = TypeBase.write
    [TypeBasePure.mk_datatype_info
       {ax=TypeBasePure.ORIG prim_recTheory.num_Axiom,
        case_def=num_case_def,
        case_cong=num_case_cong,
        induction=TypeBasePure.ORIG numTheory.INDUCTION,
        nchotomy=num_CASES,
        size=SOME(Parse.Term`\x:num. x`, TypeBasePure.ORIG boolTheory.REFL_CLAUSE),
        encode=NONE,
        fields=[],
        accessors=[],
        updates=[],
        recognizers=[],
        destructors=[CONJUNCT2(prim_recTheory.PRE)],
        lift=SOME(mk_var("numSyntax.lift_num",Parse.Type`:'type -> num -> 'term`)),
        one_one=SOME prim_recTheory.INV_SUC_EQ,
        distinct=SOME numTheory.NOT_SUC}];
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "arithmetic",
    thydataty = "unicodedata",
    data =
        "U12.\\226\\136\\1461.-U12.\\226\\137\\1642.<=U12.\\226\\137\\1652.>="
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "arithmetic",
    thydataty = "simp",
    data =
        "arithmetic.NOT_LT_ZERO_EQ_ZERO arithmetic.NRC_0 arithmetic.NRC_1 arithmetic.SUC_SUB arithmetic.FUNPOW_1 arithmetic.FUNPOW_0 arithmetic.ABS_DIFF_ZERO arithmetic.ABS_DIFF_EQS arithmetic.EXP_SUB_NUMERAL arithmetic.transitive_LESS"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "arithmetic",
    thydataty = "TexTokenMap",
    data =
        "12.\\226\\136\\14615.\\\\ensuremath{-}1.1.*16.\\\\HOLTokenProd{}1.2.**15.\\\\HOLTokenExp{}2.1.>14.\\\\HOLTokenGt{}1.12.\\226\\137\\16415.\\\\HOLTokenLeq{}1.2.<=15.\\\\HOLTokenLeq{}1.2.>=15.\\\\HOLTokenGeq{}1.12.\\226\\137\\16515.\\\\HOLTokenGeq{}1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "arithmetic",
    thydataty = "OpenTheoryMap",
    data =
        " 16.Number.Natural.+10.arithmetic1.+19.Number.Natural.zero10.arithmetic4.ZERO19.Number.Natural.zero3.num1.011.Unwanted.id10.arithmetic7.NUMERAL19.Number.Natural.bit110.arithmetic4.BIT119.Number.Natural.bit210.arithmetic4.BIT216.Number.Natural.-10.arithmetic1.-16.Number.Natural.*10.arithmetic1.*16.Number.Natural.^10.arithmetic3.EXP16.Number.Natural.>10.arithmetic1.>17.Number.Natural.<=10.arithmetic2.<=17.Number.Natural.>=10.arithmetic2.>=19.Number.Natural.even10.arithmetic4.EVEN18.Number.Natural.odd10.arithmetic3.ODD20.HOL4.arithmetic.DIV210.arithmetic4.DIV2"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "arithmetic"
end
