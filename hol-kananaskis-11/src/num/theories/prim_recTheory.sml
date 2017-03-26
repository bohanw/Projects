structure prim_recTheory :> prim_recTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading prim_recTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open numTheory relationTheory
  in end;
  val _ = Theory.link_parents
          ("prim_rec",
          Arbnum.fromString "1488586030",
          Arbnum.fromString "891230")
          [("relation",
           Arbnum.fromString "1488585979",
           Arbnum.fromString "52748"),
           ("num",
           Arbnum.fromString "1488586028",
           Arbnum.fromString "955711")];
  val _ = Theory.incorporate_types "prim_rec" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"), ID("bool", "!"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"), ID("min", "@"),
   ID("bool", "COND"), ID("prim_rec", "PRE"), ID("prim_rec", "PRIM_REC"),
   ID("prim_rec", "PRIM_REC_FUN"), ID("relation", "RTC"),
   ID("prim_rec", "SIMP_REC"), ID("prim_rec", "SIMP_REC_REL"),
   ID("num", "SUC"), ID("relation", "TC"), ID("relation", "WF"),
   ID("bool", "\\/"), ID("relation", "inv_image"),
   ID("prim_rec", "measure"), ID("prim_rec", "wellfounded"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [0, 3, 0],
   TYOP [2], TYOP [0, 1, 5], TYOP [0, 6, 3], TYOP [0, 5, 0],
   TYOP [0, 1, 1], TYOP [0, 9, 8], TYOP [0, 1, 10], TYOP [0, 5, 1],
   TYOP [0, 12, 11], TYOP [0, 9, 12], TYOP [0, 1, 14], TYOP [0, 5, 12],
   TYOP [0, 1, 12], TYOP [0, 17, 16], TYOP [0, 1, 18], TYOP [0, 17, 12],
   TYOP [0, 1, 20], TYOP [0, 5, 5], TYOP [0, 5, 8], TYOP [0, 5, 9],
   TYOP [0, 2, 0], TYOP [0, 9, 0], TYOP [0, 26, 0], TYOP [0, 25, 0],
   TYOP [0, 4, 0], TYOP [0, 17, 0], TYOP [0, 30, 0], TYOP [0, 6, 0],
   TYOP [0, 32, 0], TYOP [0, 12, 0], TYOP [0, 34, 0], TYOP [0, 24, 0],
   TYOP [0, 36, 0], TYOP [0, 8, 0], TYOP [0, 0, 0], TYOP [0, 0, 39],
   TYOP [0, 7, 0], TYOP [0, 7, 41], TYOP [0, 16, 0], TYOP [0, 16, 43],
   TYOP [0, 23, 0], TYOP [0, 23, 45], TYOP [0, 38, 0], TYOP [0, 8, 5],
   TYOP [0, 5, 22], TYOP [0, 0, 49], TYOP [0, 3, 3], TYOP [0, 23, 23],
   TYOP [0, 12, 12], TYOP [0, 53, 16], TYOP [0, 12, 54], TYOP [0, 23, 7]]
  end
  val _ = Theory.incorporate_consts "prim_rec" tyvector
     [("wellfounded", 4), ("measure", 7), ("SIMP_REC_REL", 13),
      ("SIMP_REC", 15), ("PRIM_REC_FUN", 19), ("PRIM_REC", 21),
      ("PRE", 22), ("<", 23)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 2), TMV("P", 8), TMV("R", 3), TMV("a", 1), TMV("e", 1),
   TMV("f", 9), TMV("f", 17), TMV("f", 6), TMV("f", 12), TMV("f", 24),
   TMV("f'", 9), TMV("fn", 12), TMV("fn1", 12), TMV("fun", 12),
   TMV("g", 12), TMV("g1", 12), TMV("g2", 12), TMV("m", 1), TMV("m", 6),
   TMV("m", 5), TMV("m1", 5), TMV("m2", 5), TMV("n", 1), TMV("n", 5),
   TMV("x", 1), TMV("x", 5), TMV("y", 1), TMV("y", 5), TMC(3, 25),
   TMC(3, 27), TMC(3, 28), TMC(3, 29), TMC(3, 31), TMC(3, 33), TMC(3, 35),
   TMC(3, 37), TMC(3, 38), TMC(4, 40), TMC(5, 5), TMC(6, 23), TMC(7, 3),
   TMC(7, 40), TMC(7, 42), TMC(7, 44), TMC(7, 46), TMC(7, 23), TMC(8, 40),
   TMC(9, 25), TMC(9, 35), TMC(9, 47), TMC(10, 25), TMC(10, 35),
   TMC(11, 48), TMC(12, 50), TMC(13, 22), TMC(14, 21), TMC(15, 19),
   TMC(16, 51), TMC(16, 52), TMC(17, 15), TMC(17, 55), TMC(18, 13),
   TMC(19, 22), TMC(20, 51), TMC(20, 52), TMC(21, 4), TMC(21, 45),
   TMC(22, 40), TMC(23, 56), TMC(24, 7), TMC(25, 4), TMC(26, 39)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op LESS_DEF x = x
    val op LESS_DEF =
    DT(((("prim_rec",0),[]),[]),
       [read"%36%19%36%23%41%39$1@$0@@%49%1%37%36%23%46$1%62$0@@@$1$0@@|@@%37$0$2@@%71$0$1@@@@|@@|@|@"])
  fun op PRE_DEF x = x
    val op PRE_DEF =
    DT(((("prim_rec",2),[]),[]),
       [read"%36%19%45%54$0@@%53%45$0@%38@@%38@%52%23%45$1@%62$0@@|@@@|@"])
  fun op SIMP_REC_REL x = x
    val op SIMP_REC_REL =
    DT(((("prim_rec",25),[]),[]),
       [read"%34%13%28%24%29%5%36%23%41%61$3@$2@$1@$0@@%37%40$3%38@@$2@@%36%19%46%39$0@$1@@%40$4%62$0@@@$2$4$0@@@@|@@@|@|@|@|@"])
  fun op SIMP_REC x = x
    val op SIMP_REC =
    DT(((("prim_rec",29),
        [("bool",[25,26,27,30,31,51,53,56,60,63,64,73,122,146]),
         ("prim_rec",[28])]),["DISK_THM"]),
       [read"%28%24%29%10%36%23%48%14%37%61$0@$3@$2@%62$1@@@%40%59$3@$2@$1@@$0$1@@@|@|@|@|@"])
  fun op PRIM_REC_FUN x = x
    val op PRIM_REC_FUN =
    DT(((("prim_rec",32),[]),[]),
       [read"%28%24%32%6%43%56$1@$0@@%60%23$2|@%13%23$2$1%54$0@@@$0@||@@|@|@"])
  fun op PRIM_REC x = x
    val op PRIM_REC =
    DT(((("prim_rec",34),[]),[]),
       [read"%28%24%32%6%36%19%40%55$2@$1@$0@@%56$2@$1@$0@%54$0@@@|@|@|@"])
  fun op wellfounded_def x = x
    val op wellfounded_def =
    DT(((("prim_rec",39),[]),[]),
       [read"%31%2%41%70$0@@%71%48%8%36%23$2$1%62$0@@@$1$0@@|@|@@@|@"])
  fun op measure_def x = x
    val op measure_def =
    DT(((("prim_rec",43),[]),[]), [read"%42%69@%68%39@@"])
  fun op INV_SUC_EQ x = x
    val op INV_SUC_EQ =
    DT(((("prim_rec",1),[("bool",[26]),("num",[8])]),["DISK_THM"]),
       [read"%36%19%36%23%41%45%62$1@@%62$0@@@%45$1@$0@@|@|@"])
  fun op PRE x = x
    val op PRE =
    DT(((("prim_rec",3),
        [("bool",[25,26,27,56,64,68]),("num",[7]),
         ("prim_rec",[1,2])]),["DISK_THM"]),
       [read"%37%45%54%38@@%38@@%36%19%45%54%62$0@@@$0@|@@"])
  fun op LESS_REFL x = x
    val op LESS_REFL =
    DT(((("prim_rec",4),
        [("bool",[25,26,27,37,50,51,54]),("prim_rec",[0])]),["DISK_THM"]),
       [read"%36%23%71%39$0@$0@@|@"])
  fun op SUC_LESS x = x
    val op SUC_LESS =
    DT(((("prim_rec",5),
        [("bool",[25,26,27,36,51,54,63]),("prim_rec",[0])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39%62$1@@$0@@%39$1@$0@@|@|@"])
  fun op NOT_LESS_0 x = x
    val op NOT_LESS_0 =
    DT(((("prim_rec",6),
        [("bool",[14,25,26,27,53,54]),("num",[9]),
         ("prim_rec",[4,5])]),["DISK_THM"]),
       [read"%36%23%71%39$0@%38@@|@"])
  fun op LESS_0 x = x
    val op LESS_0 =
    DT(((("prim_rec",7),
        [("bool",[25,26,27,36,51,53,54,56]),("num",[7]),
         ("prim_rec",[0])]),["DISK_THM"]), [read"%36%23%39%38@%62$0@@|@"])
  fun op LESS_0_0 x = x
    val op LESS_0_0 =
    DT(((("prim_rec",8),[("bool",[25,63]),("prim_rec",[7])]),["DISK_THM"]),
       [read"%39%38@%62%38@@"])
  fun op LESS_MONO x = x
    val op LESS_MONO =
    DT(((("prim_rec",9),
        [("bool",[14,25,26,27,51,53,54,63]),("num",[9]),
         ("prim_rec",[0,3])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39$1@$0@@%39%62$1@@%62$0@@@|@|@"])
  fun op LESS_MONO_REV x = x
    val op LESS_MONO_REV =
    DT(((("prim_rec",10),
        [("bool",[25,26,27,36,51,54,63]),("prim_rec",[0])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39%62$1@@%62$0@@@%39$1@$0@@|@|@"])
  fun op LESS_MONO_EQ x = x
    val op LESS_MONO_EQ =
    DT(((("prim_rec",11),
        [("bool",[25,26,63]),("prim_rec",[9,10])]),["DISK_THM"]),
       [read"%36%19%36%23%41%39%62$1@@%62$0@@@%39$1@$0@@|@|@"])
  fun op TC_IM_RTC_SUC x = x
    val op TC_IM_RTC_SUC =
    DT(((("prim_rec",12),
        [("bool",[25,26,51,52,56,63]),("prim_rec",[1]),
         ("relation",[74,80])]),["DISK_THM"]),
       [read"%36%19%36%23%41%64%25%27%45$0@%62$1@@||@$1@%62$0@@@%58%25%27%45$0@%62$1@@||@$1@$0@@|@|@"])
  fun op RTC_IM_TC x = x
    val op RTC_IM_TC =
    DT(((("prim_rec",13),
        [("bool",[25,26,51,56,63]),("relation",[60])]),["DISK_THM"]),
       [read"%28%17%28%22%41%57%24%26%40$0@%5$1@@||@%5$1@@$0@@%63%24%26%40$0@%5$1@@||@$1@$0@@|@|@"])
  fun op LESS_ALT x = x
    val op LESS_ALT =
    DT(((("prim_rec",14),
        [("bool",[14,25,26,27,36,37,51,52,54,56,58,60,63]),("num",[7,9]),
         ("prim_rec",[6,7,11,12,13]),("relation",[38,80])]),["DISK_THM"]),
       [read"%44%39@%64%25%27%45$0@%62$1@@||@@"])
  fun op LESS_SUC_REFL x = x
    val op LESS_SUC_REFL =
    DT(((("prim_rec",15),
        [("bool",[14,25,63]),("num",[9]),
         ("prim_rec",[8,9])]),["DISK_THM"]), [read"%36%23%39$0@%62$0@@|@"])
  fun op LESS_SUC x = x
    val op LESS_SUC =
    DT(((("prim_rec",16),
        [("bool",[25,26,27,36,51,53,54,63]),
         ("prim_rec",[0])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39$1@$0@@%39$1@%62$0@@@|@|@"])
  fun op LESS_LEMMA1 x = x
    val op LESS_LEMMA1 =
    DT(((("prim_rec",17),
        [("bool",[25,36,53]),("prim_rec",[12,14]),
         ("relation",[74])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39$1@%62$0@@@%67%45$1@$0@@%39$1@$0@@@|@|@"])
  fun op LESS_LEMMA2 x = x
    val op LESS_LEMMA2 =
    DT(((("prim_rec",18),
        [("bool",[25,63]),("prim_rec",[15,16])]),["DISK_THM"]),
       [read"%36%19%36%23%46%67%45$1@$0@@%39$1@$0@@@%39$1@%62$0@@@|@|@"])
  fun op LESS_THM x = x
    val op LESS_THM =
    DT(((("prim_rec",19),
        [("bool",[26]),("prim_rec",[17,18])]),["DISK_THM"]),
       [read"%36%19%36%23%41%39$1@%62$0@@@%67%45$1@$0@@%39$1@$0@@@|@|@"])
  fun op LESS_SUC_IMP x = x
    val op LESS_SUC_IMP =
    DT(((("prim_rec",20),
        [("bool",[25,27,48,63]),("prim_rec",[19])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39$1@%62$0@@@%46%71%45$1@$0@@@%39$1@$0@@@|@|@"])
  fun op EQ_LESS x = x
    val op EQ_LESS =
    DT(((("prim_rec",21),
        [("bool",[14,25,26,27,52,53,56]),("num",[7,8,9]),
         ("prim_rec",[19])]),["DISK_THM"]),
       [read"%36%23%46%45%62%19@@$0@@%39%19@$0@@|@"])
  fun op SUC_ID x = x
    val op SUC_ID =
    DT(((("prim_rec",22),
        [("bool",[14,25,26,27,54]),("num",[7,9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%36%23%71%45%62$0@@$0@@|@"])
  fun op NOT_LESS_EQ x = x
    val op NOT_LESS_EQ =
    DT(((("prim_rec",23),
        [("bool",[25,26,27,54]),("prim_rec",[4])]),["DISK_THM"]),
       [read"%36%19%36%23%46%45$1@$0@@%71%39$1@$0@@@|@|@"])
  fun op LESS_NOT_EQ x = x
    val op LESS_NOT_EQ =
    DT(((("prim_rec",24),[("bool",[27]),("prim_rec",[4])]),["DISK_THM"]),
       [read"%36%19%36%23%46%39$1@$0@@%71%45$1@$0@@@|@|@"])
  fun op SIMP_REC_EXISTS x = x
    val op SIMP_REC_EXISTS =
    DT(((("prim_rec",26),
        [("bool",[14,25,26,27,30,35,36,51,53,56,58,63,64]),("num",[7,9]),
         ("prim_rec",[1,4,6,20,25])]),["DISK_THM"]),
       [read"%28%24%29%5%36%23%48%13%61$0@$3@$2@$1@|@|@|@|@"])
  fun op SIMP_REC_REL_UNIQUE x = x
    val op SIMP_REC_REL_UNIQUE =
    DT(((("prim_rec",27),
        [("bool",[14,25,53,56]),("num",[9]),
         ("prim_rec",[5,25])]),["DISK_THM"]),
       [read"%28%24%29%5%34%15%34%16%36%20%36%21%46%37%61$3@$5@$4@$1@@%61$2@$5@$4@$0@@@%36%23%46%37%39$0@$2@@%39$0@$1@@@%40$4$0@@$3$0@@@|@@|@|@|@|@|@|@"])
  fun op SIMP_REC_REL_UNIQUE_RESULT x = x
    val op SIMP_REC_REL_UNIQUE_RESULT =
    DT(((("prim_rec",28),
        [("bool",[26,51,63,122,143]),
         ("prim_rec",[15,26,27])]),["DISK_THM"]),
       [read"%28%24%29%5%36%23%50%26%48%14%37%61$0@$4@$3@%62$2@@@%40$1@$0$2@@@|@|@|@|@|@"])
  fun op LESS_SUC_SUC x = x
    val op LESS_SUC_SUC =
    DT(((("prim_rec",30),
        [("bool",[14,25,51,52,56]),("num",[9]),
         ("prim_rec",[19])]),["DISK_THM"]),
       [read"%36%19%37%39$0@%62$0@@@%39$0@%62%62$0@@@@|@"])
  fun op SIMP_REC_THM x = x
    val op SIMP_REC_THM =
    DT(((("prim_rec",31),
        [("bool",[25,56,63]),("prim_rec",[25,27,29,30])]),["DISK_THM"]),
       [read"%28%24%29%5%37%40%59$1@$0@%38@@$1@@%36%19%40%59$2@$1@%62$0@@@$1%59$2@$1@$0@@@|@@|@|@"])
  fun op PRIM_REC_EQN x = x
    val op PRIM_REC_EQN =
    DT(((("prim_rec",33),
        [("bool",[25,35,56]),("prim_rec",[31,32])]),["DISK_THM"]),
       [read"%28%24%32%6%37%36%23%40%56$2@$1@%38@$0@@$2@|@@%36%19%36%23%40%56$3@$2@%62$1@@$0@@$2%56$3@$2@$1@%54$0@@@$0@@|@|@@|@|@"])
  fun op PRIM_REC_THM x = x
    val op PRIM_REC_THM =
    DT(((("prim_rec",35),
        [("bool",[25,35,56]),("prim_rec",[3,31,32,34])]),["DISK_THM"]),
       [read"%28%24%32%6%37%40%55$1@$0@%38@@$1@@%36%19%40%55$2@$1@%62$0@@@$1%55$2@$1@$0@@$0@@|@@|@|@"])
  fun op DC x = x
    val op DC =
    DT(((("prim_rec",36),
        [("bool",[14,15,25,36,51,56,63]),("num",[9]),
         ("prim_rec",[31])]),["DISK_THM"]),
       [read"%30%0%31%2%28%3%46%37$2$0@@%28%24%46$3$0@@%47%26%37$4$0@@$3$1@$0@@|@@|@@@%48%8%37%40$0%38@@$1@@%36%23%37$4$1$0@@@$3$1$0@@$1%62$0@@@@|@@|@@|@|@|@"])
  fun op num_Axiom_old x = x
    val op num_Axiom_old =
    DT(((("prim_rec",37),
        [("bool",[7,14,25,26,36,51,56]),("num",[9]),
         ("prim_rec",[35])]),["DISK_THM"]),
       [read"%28%4%32%6%51%12%37%40$0%38@@$2@@%36%23%40$1%62$0@@@$2$1$0@@$0@@|@@|@|@|@"])
  fun op num_Axiom x = x
    val op num_Axiom =
    DT(((("prim_rec",38),
        [("bool",[7,25,36,51,56]),("prim_rec",[37])]),["DISK_THM"]),
       [read"%28%4%35%9%48%11%37%40$0%38@@$2@@%36%23%40$1%62$0@@@$2$0@$1$0@@@|@@|@|@|@"])
  fun op WF_IFF_WELLFOUNDED x = x
    val op WF_IFF_WELLFOUNDED =
    DT(((("prim_rec",40),
        [("bool",[14,15,25,26,51,54,58,63,71,72,92,96,101]),("num",[9]),
         ("prim_rec",[31,39]),("relation",[100])]),["DISK_THM"]),
       [read"%31%2%41%65$0@@%70$0@@|@"])
  fun op WF_PRED x = x
    val op WF_PRED =
    DT(((("prim_rec",41),
        [("bool",[14,25,26,27,54,58,63,71,72,92,96,101]),("num",[7,9]),
         ("prim_rec",[1]),("relation",[100])]),["DISK_THM"]),
       [read"%66%25%27%45$0@%62$1@@||@"])
  fun op WF_LESS x = x
    val op WF_LESS =
    DT(((("prim_rec",42),
        [("bool",[25,63]),("prim_rec",[14,41]),
         ("relation",[110])]),["DISK_THM"]), [read"%66%39@"])
  fun op WF_measure x = x
    val op WF_measure =
    DT(((("prim_rec",44),
        [("prim_rec",[42,43]),("relation",[115])]),["DISK_THM"]),
       [read"%33%18%65%69$0@@|@"])
  fun op measure_thm x = x
    val op measure_thm =
    DT(((("prim_rec",45),
        [("bool",[25,36,56]),("prim_rec",[43]),
         ("relation",[113])]),["DISK_THM"]),
       [read"%33%7%28%24%28%26%41%69$2@$1@$0@@%39$2$1@@$2$0@@@|@|@|@"])
  end
  val _ = DB.bindl "prim_rec"
  [("LESS_DEF",LESS_DEF,DB.Def), ("PRE_DEF",PRE_DEF,DB.Def),
   ("SIMP_REC_REL",SIMP_REC_REL,DB.Def), ("SIMP_REC",SIMP_REC,DB.Def),
   ("PRIM_REC_FUN",PRIM_REC_FUN,DB.Def), ("PRIM_REC",PRIM_REC,DB.Def),
   ("wellfounded_def",wellfounded_def,DB.Def),
   ("measure_def",measure_def,DB.Def), ("INV_SUC_EQ",INV_SUC_EQ,DB.Thm),
   ("PRE",PRE,DB.Thm), ("LESS_REFL",LESS_REFL,DB.Thm),
   ("SUC_LESS",SUC_LESS,DB.Thm), ("NOT_LESS_0",NOT_LESS_0,DB.Thm),
   ("LESS_0",LESS_0,DB.Thm), ("LESS_0_0",LESS_0_0,DB.Thm),
   ("LESS_MONO",LESS_MONO,DB.Thm), ("LESS_MONO_REV",LESS_MONO_REV,DB.Thm),
   ("LESS_MONO_EQ",LESS_MONO_EQ,DB.Thm),
   ("TC_IM_RTC_SUC",TC_IM_RTC_SUC,DB.Thm), ("RTC_IM_TC",RTC_IM_TC,DB.Thm),
   ("LESS_ALT",LESS_ALT,DB.Thm), ("LESS_SUC_REFL",LESS_SUC_REFL,DB.Thm),
   ("LESS_SUC",LESS_SUC,DB.Thm), ("LESS_LEMMA1",LESS_LEMMA1,DB.Thm),
   ("LESS_LEMMA2",LESS_LEMMA2,DB.Thm), ("LESS_THM",LESS_THM,DB.Thm),
   ("LESS_SUC_IMP",LESS_SUC_IMP,DB.Thm), ("EQ_LESS",EQ_LESS,DB.Thm),
   ("SUC_ID",SUC_ID,DB.Thm), ("NOT_LESS_EQ",NOT_LESS_EQ,DB.Thm),
   ("LESS_NOT_EQ",LESS_NOT_EQ,DB.Thm),
   ("SIMP_REC_EXISTS",SIMP_REC_EXISTS,DB.Thm),
   ("SIMP_REC_REL_UNIQUE",SIMP_REC_REL_UNIQUE,DB.Thm),
   ("SIMP_REC_REL_UNIQUE_RESULT",SIMP_REC_REL_UNIQUE_RESULT,DB.Thm),
   ("LESS_SUC_SUC",LESS_SUC_SUC,DB.Thm),
   ("SIMP_REC_THM",SIMP_REC_THM,DB.Thm),
   ("PRIM_REC_EQN",PRIM_REC_EQN,DB.Thm),
   ("PRIM_REC_THM",PRIM_REC_THM,DB.Thm), ("DC",DC,DB.Thm),
   ("num_Axiom_old",num_Axiom_old,DB.Thm), ("num_Axiom",num_Axiom,DB.Thm),
   ("WF_IFF_WELLFOUNDED",WF_IFF_WELLFOUNDED,DB.Thm),
   ("WF_PRED",WF_PRED,DB.Thm), ("WF_LESS",WF_LESS,DB.Thm),
   ("WF_measure",WF_measure,DB.Thm), ("measure_thm",measure_thm,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("relationTheory.relation_grammars",
                          relationTheory.relation_grammars),
                         ("numTheory.num_grammars",numTheory.num_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "<", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PRE", (Term.prim_mk_const { Name = "PRE", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIMP_REC_REL", (Term.prim_mk_const { Name = "SIMP_REC_REL", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIMP_REC", (Term.prim_mk_const { Name = "SIMP_REC", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PRIM_REC_FUN", (Term.prim_mk_const { Name = "PRIM_REC_FUN", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PRIM_REC", (Term.prim_mk_const { Name = "PRIM_REC", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wellfounded", (Term.prim_mk_const { Name = "wellfounded", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("measure", (Term.prim_mk_const { Name = "measure", Thy = "prim_rec"}))
  val prim_rec_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "prim_rec",
    thydataty = "simp",
    data = "prim_rec.WF_LESS prim_rec.WF_measure prim_rec.measure_thm"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "prim_rec",
    thydataty = "TexTokenMap",
    data = "1.<14.\\\\HOLTokenLt{}1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "prim_rec",
    thydataty = "OpenTheoryMap",
    data =
        " 16.Number.Natural.<8.prim_rec1.<18.Number.Natural.pre8.prim_rec3.PRE16.Relation.measure8.prim_rec7.measure"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "prim_rec"
end
