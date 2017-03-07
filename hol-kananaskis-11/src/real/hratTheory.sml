structure hratTheory :> hratTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading hratTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quotient_listTheory quotient_optionTheory quotient_pairTheory
             quotient_sumTheory
  in end;
  val _ = Theory.link_parents
          ("hrat",
          Arbnum.fromString "1488589161",
          Arbnum.fromString "197410")
          [("quotient_option",
           Arbnum.fromString "1488586881",
           Arbnum.fromString "638882"),
           ("quotient_sum",
           Arbnum.fromString "1488586900",
           Arbnum.fromString "351824"),
           ("quotient_pair",
           Arbnum.fromString "1488586891",
           Arbnum.fromString "242612"),
           ("quotient_list",
           Arbnum.fromString "1488586871",
           Arbnum.fromString "821239")];
  val _ = Theory.incorporate_types "hrat" [("hrat", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("num", "num"),
   ID("min", "bool"), ID("hrat", "hrat"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("prim_rec", "PRE"),
   ID("quotient", "QUOTIENT"), ID("num", "SUC"),
   ID("bool", "TYPE_DEFINITION"), ID("bool", "\\/"), ID("hrat", "hrat_1"),
   ID("hrat", "hrat_ABS"), ID("hrat", "hrat_ABS_CLASS"),
   ID("hrat", "hrat_REP"), ID("hrat", "hrat_REP_CLASS"),
   ID("hrat", "hrat_add"), ID("hrat", "hrat_inv"), ID("hrat", "hrat_mul"),
   ID("hrat", "hrat_sucint"), ID("hrat", "trat_1"), ID("hrat", "trat_add"),
   ID("hrat", "trat_eq"), ID("hrat", "trat_inv"), ID("hrat", "trat_mul"),
   ID("hrat", "trat_sucint"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0, 0], TYOP [0, 0, 1], TYOP [0, 1, 1],
   TYOP [0, 1, 3], TYOP [3], TYOP [0, 1, 5], TYOP [0, 1, 6], TYOP [4],
   TYOP [0, 0, 8], TYOP [0, 8, 8], TYOP [0, 8, 10], TYOP [0, 8, 6],
   TYOP [0, 8, 1], TYOP [0, 6, 8], TYOP [0, 1, 8], TYOP [0, 6, 5],
   TYOP [0, 16, 5], TYOP [0, 8, 5], TYOP [0, 18, 5], TYOP [0, 0, 5],
   TYOP [0, 20, 5], TYOP [0, 0, 0], TYOP [0, 0, 22], TYOP [0, 0, 2],
   TYOP [0, 5, 5], TYOP [0, 5, 25], TYOP [0, 6, 16], TYOP [0, 8, 18],
   TYOP [0, 0, 20], TYOP [0, 12, 5], TYOP [0, 30, 5], TYOP [0, 6, 1],
   TYOP [0, 13, 5], TYOP [0, 15, 33], TYOP [0, 7, 34], TYOP [0, 16, 30]]
  end
  val _ = Theory.incorporate_consts "hrat" tyvector
     [("trat_sucint", 2), ("trat_mul", 4), ("trat_inv", 3), ("trat_eq", 7),
      ("trat_add", 4), ("trat_1", 1), ("hrat_sucint", 9), ("hrat_mul", 11),
      ("hrat_inv", 10), ("hrat_add", 11), ("hrat_REP_CLASS", 12),
      ("hrat_REP", 13), ("hrat_ABS_CLASS", 14), ("hrat_ABS", 15),
      ("hrat_1", 8)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("T1", 8), TMV("T1", 0), TMV("T2", 8), TMV("a", 8), TMV("c", 6),
   TMV("d", 8), TMV("d", 1), TMV("h", 8), TMV("h", 1), TMV("i", 8),
   TMV("i", 1), TMV("j", 8), TMV("j", 1), TMV("n", 0), TMV("p", 1),
   TMV("p1", 1), TMV("p2", 1), TMV("q", 1), TMV("q1", 1), TMV("q2", 1),
   TMV("r", 6), TMV("r", 1), TMV("rep", 12), TMV("x", 0), TMV("x'", 0),
   TMV("y", 0), TMV("y'", 0), TMC(5, 17), TMC(5, 19), TMC(5, 21),
   TMC(5, 16), TMC(6, 23), TMC(7, 23), TMC(8, 24), TMC(9, 26), TMC(10, 0),
   TMC(11, 26), TMC(11, 27), TMC(11, 28), TMC(11, 29), TMC(11, 7),
   TMC(12, 26), TMC(13, 31), TMC(13, 19), TMC(13, 21), TMC(13, 16),
   TMC(14, 32), TMC(15, 22), TMC(16, 35), TMC(17, 22), TMC(18, 36),
   TMC(19, 26), TMC(20, 8), TMC(21, 15), TMC(22, 14), TMC(23, 13),
   TMC(24, 12), TMC(25, 11), TMC(26, 10), TMC(27, 11), TMC(28, 9),
   TMC(29, 1), TMC(30, 4), TMC(31, 7), TMC(32, 3), TMC(33, 4), TMC(34, 2),
   TMC(35, 25)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op trat_1 x = x
    val op trat_1 = DT(((("hrat",0),[]),[]), [read"%40%61@%33%35@%35@@"])
  fun op trat_inv x = x
    val op trat_inv =
    DT(((("hrat",1),[("pair",[16])]),["DISK_THM"]),
       [read"%29%23%29%25%40%64%33$1@$0@@@%33$0@$1@@|@|@"])
  fun op trat_add x = x
    val op trat_add =
    DT(((("hrat",2),[("pair",[16])]),["DISK_THM"]),
       [read"%29%23%29%25%29%24%29%26%40%62%33$3@$2@@%33$1@$0@@@%33%47%32%31%49$3@@%49$0@@@%31%49$1@@%49$2@@@@@%47%31%49$2@@%49$0@@@@@|@|@|@|@"])
  fun op trat_mul x = x
    val op trat_mul =
    DT(((("hrat",3),[("pair",[16])]),["DISK_THM"]),
       [read"%29%23%29%25%29%24%29%26%40%65%33$3@$2@@%33$1@$0@@@%33%47%31%49$3@@%49$1@@@@%47%31%49$2@@%49$0@@@@@|@|@|@|@"])
  fun op trat_sucint x = x
    val op trat_sucint =
    DT(((("hrat",4),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%34%40%66%35@@%61@@%29%13%40%66%49$0@@@%62%66$0@@%61@@|@@"])
  fun op trat_eq x = x
    val op trat_eq =
    DT(((("hrat",5),[("pair",[16])]),["DISK_THM"]),
       [read"%29%23%29%25%29%24%29%26%36%63%33$3@$2@@%33$1@$0@@@%39%31%49$3@@%49$0@@@%31%49$1@@%49$2@@@@|@|@|@|@"])
  fun op hrat_TY_DEF x = x
    val op hrat_TY_DEF =
    DT(((("hrat",30),
        [("bool",[58]),("hrat",[29]),("quotient",[0,1,2])]),["DISK_THM"]),
       [read"%42%22%50%4%45%21%34%63$0@$0@@%37$1@%63$0@@@|@|@$0@|@"])
  fun op hrat_bijections x = x
    val op hrat_bijections =
    DT(((("hrat",31),[("bool",[117]),("hrat",[30])]),["DISK_THM"]),
       [read"%34%28%3%38%54%56$0@@@$0@|@@%27%20%36%4%45%21%34%63$0@$0@@%37$1@%63$0@@@|@|$0@@%37%56%54$0@@@$0@@|@@"])
  fun op hrat_REP_def x = x
    val op hrat_REP_def =
    DT(((("hrat",33),[]),[]), [read"%28%3%40%55$0@@%46%56$0@@@|@"])
  fun op hrat_ABS_def x = x
    val op hrat_ABS_def =
    DT(((("hrat",34),[]),[]), [read"%30%21%38%53$0@@%54%63$0@@@|@"])
  fun op hrat_1 x = x
    val op hrat_1 = DT(((("hrat",36),[]),[]), [read"%38%52@%53%61@@"])
  fun op hrat_inv x = x
    val op hrat_inv =
    DT(((("hrat",37),[]),[]), [read"%28%0%38%58$0@@%53%64%55$0@@@@|@"])
  fun op hrat_add x = x
    val op hrat_add =
    DT(((("hrat",38),[]),[]),
       [read"%28%0%28%2%38%57$1@$0@@%53%62%55$1@@%55$0@@@@|@|@"])
  fun op hrat_mul x = x
    val op hrat_mul =
    DT(((("hrat",39),[]),[]),
       [read"%28%0%28%2%38%59$1@$0@@%53%65%55$1@@%55$0@@@@|@|@"])
  fun op hrat_sucint x = x
    val op hrat_sucint =
    DT(((("hrat",40),[]),[]), [read"%29%1%38%60$0@@%53%66$0@@@|@"])
  fun op TRAT_EQ_REFL x = x
    val op TRAT_EQ_REFL =
    DT(((("hrat",6),[("hrat",[5]),("pair",[7])]),["DISK_THM"]),
       [read"%30%14%63$0@$0@|@"])
  fun op TRAT_EQ_SYM x = x
    val op TRAT_EQ_SYM =
    DT(((("hrat",7),
        [("bool",[58]),("hrat",[5]),("pair",[7])]),["DISK_THM"]),
       [read"%30%14%30%17%36%63$1@$0@@%63$0@$1@@|@|@"])
  fun op TRAT_EQ_TRANS x = x
    val op TRAT_EQ_TRANS =
    DT(((("hrat",8),
        [("arithmetic",[72,76,104]),("bool",[25,58,63]),("hrat",[5]),
         ("pair",[7])]),["DISK_THM"]),
       [read"%30%14%30%17%30%21%41%34%63$2@$1@@%63$1@$0@@@%63$2@$0@@|@|@|@"])
  fun op TRAT_EQ_AP x = x
    val op TRAT_EQ_AP =
    DT(((("hrat",9),[("hrat",[6])]),["DISK_THM"]),
       [read"%30%14%30%17%41%40$1@$0@@%63$1@$0@@|@|@"])
  fun op TRAT_ADD_SYM_EQ x = x
    val op TRAT_ADD_SYM_EQ =
    DT(((("hrat",10),
        [("arithmetic",[25,72]),("hrat",[2]),
         ("pair",[3,7])]),["DISK_THM"]),
       [read"%30%8%30%10%40%62$1@$0@@%62$0@$1@@|@|@"])
  fun op TRAT_MUL_SYM_EQ x = x
    val op TRAT_MUL_SYM_EQ =
    DT(((("hrat",11),
        [("arithmetic",[72]),("hrat",[3]),("pair",[3,7])]),["DISK_THM"]),
       [read"%30%8%30%10%40%65$1@$0@@%65$0@$1@@|@|@"])
  fun op TRAT_INV_WELLDEFINED x = x
    val op TRAT_INV_WELLDEFINED =
    DT(((("hrat",12),
        [("arithmetic",[72]),("hrat",[1,5]),("pair",[7])]),["DISK_THM"]),
       [read"%30%14%30%17%41%63$1@$0@@%63%64$1@@%64$0@@@|@|@"])
  fun op TRAT_ADD_WELLDEFINED x = x
    val op TRAT_ADD_WELLDEFINED =
    DT(((("hrat",13),
        [("arithmetic",[24,28,71,72,74,76]),
         ("bool",[25,26,27,51,52,53,54,56,63]),("hrat",[2,5]),("num",[7]),
         ("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%14%30%17%30%21%41%63$2@$1@@%63%62$2@$0@@%62$1@$0@@@|@|@|@"])
  fun op TRAT_ADD_WELLDEFINED2 x = x
    val op TRAT_ADD_WELLDEFINED2 =
    DT(((("hrat",14),[("bool",[25,63]),("hrat",[8,10,13])]),["DISK_THM"]),
       [read"%30%15%30%16%30%18%30%19%41%34%63$3@$2@@%63$1@$0@@@%63%62$3@$1@@%62$2@$0@@@|@|@|@|@"])
  fun op TRAT_MUL_WELLDEFINED x = x
    val op TRAT_MUL_WELLDEFINED =
    DT(((("hrat",15),
        [("arithmetic",[24,28,71,72,76]),
         ("bool",[25,26,27,52,53,54,56,63]),("hrat",[3,5]),("num",[7]),
         ("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%14%30%17%30%21%41%63$2@$1@@%63%65$2@$0@@%65$1@$0@@@|@|@|@"])
  fun op TRAT_MUL_WELLDEFINED2 x = x
    val op TRAT_MUL_WELLDEFINED2 =
    DT(((("hrat",16),[("bool",[25,63]),("hrat",[8,11,15])]),["DISK_THM"]),
       [read"%30%15%30%16%30%18%30%19%41%34%63$3@$2@@%63$1@$0@@@%63%65$3@$1@@%65$2@$0@@@|@|@|@|@"])
  fun op TRAT_ADD_SYM x = x
    val op TRAT_ADD_SYM =
    DT(((("hrat",17),[("hrat",[9,10])]),["DISK_THM"]),
       [read"%30%8%30%10%63%62$1@$0@@%62$0@$1@@|@|@"])
  fun op TRAT_ADD_ASSOC x = x
    val op TRAT_ADD_ASSOC =
    DT(((("hrat",18),
        [("arithmetic",[24,27,28,71,72,74,76]),
         ("bool",[25,26,27,51,52,53,54,56,58,63]),("hrat",[2,9]),
         ("num",[7]),("pair",[3,7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%30%10%30%12%63%62$2@%62$1@$0@@@%62%62$2@$1@@$0@@|@|@|@"])
  fun op TRAT_MUL_SYM x = x
    val op TRAT_MUL_SYM =
    DT(((("hrat",19),[("hrat",[9,11])]),["DISK_THM"]),
       [read"%30%8%30%10%63%65$1@$0@@%65$0@$1@@|@|@"])
  fun op TRAT_MUL_ASSOC x = x
    val op TRAT_MUL_ASSOC =
    DT(((("hrat",20),
        [("arithmetic",[24,28,71,76]),
         ("bool",[25,26,27,51,52,53,54,56,63]),("hrat",[3,9]),("num",[7]),
         ("pair",[3,7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%30%10%30%12%63%65$2@%65$1@$0@@@%65%65$2@$1@@$0@@|@|@|@"])
  fun op TRAT_LDISTRIB x = x
    val op TRAT_LDISTRIB =
    DT(((("hrat",21),
        [("arithmetic",[24,28,71,72,74,75,76]),
         ("bool",[25,26,27,51,52,53,54,56,63]),("hrat",[2,3,5]),
         ("num",[7]),("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%30%10%30%12%63%65$2@%62$1@$0@@@%62%65$2@$1@@%65$2@$0@@@|@|@|@"])
  fun op TRAT_MUL_LID x = x
    val op TRAT_MUL_LID =
    DT(((("hrat",22),
        [("arithmetic",[24,71]),("bool",[25,56]),("hrat",[0,3,9]),
         ("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%63%65%61@$0@@$0@|@"])
  fun op TRAT_MUL_LINV x = x
    val op TRAT_MUL_LINV =
    DT(((("hrat",23),
        [("arithmetic",[24,28,71,72,76]),
         ("bool",[25,26,27,52,53,54,56,63]),("hrat",[0,1,3,5]),("num",[7]),
         ("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%63%65%64$0@@$0@@%61@|@"])
  fun op TRAT_NOZERO x = x
    val op TRAT_NOZERO =
    DT(((("hrat",24),
        [("arithmetic",[24,28,71,72,74,76,81]),
         ("bool",[25,26,27,51,52,53,54,56,58,63]),("hrat",[2,5]),
         ("num",[7]),("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%30%10%67%63%62$1@$0@@$1@@|@|@"])
  fun op TRAT_ADD_TOTAL x = x
    val op TRAT_ADD_TOTAL =
    DT(((("hrat",25),
        [("arithmetic",[24,28,64,71,72,74,76,101,142]),
         ("bool",[25,26,27,51,52,53,54,56,58,63]),("hrat",[2,5]),
         ("num",[7]),("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%30%10%51%63$1@$0@@%51%45%6%63$2@%62$1@$0@@|@@%45%6%63$1@%62$2@$0@@|@@@|@|@"])
  fun op TRAT_SUCINT_0 x = x
    val op TRAT_SUCINT_0 =
    DT(((("hrat",26),
        [("arithmetic",[24,28,71]),
         ("bool",[14,25,26,27,51,52,53,54,56,63]),
         ("hrat",[0,2,4,5,6,8,13]),("num",[7,9]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%29%13%63%66$0@@%33$0@%35@@|@"])
  fun op TRAT_ARCH x = x
    val op TRAT_ARCH =
    DT(((("hrat",27),
        [("arithmetic",
         [17,24,25,27,28,57,59,63,64,68,70,71,74,76,77,96,97,99]),
         ("bool",[25,26,27,51,52,53,54,56,58,63]),("hrat",[2,5,8,26]),
         ("num",[7]),("pair",[7]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%30%8%44%13%45%6%63%66$1@@%62$2@$0@@|@|@|@"])
  fun op TRAT_SUCINT x = x
    val op TRAT_SUCINT =
    DT(((("hrat",28),[("bool",[25,56]),("hrat",[4,9])]),["DISK_THM"]),
       [read"%34%63%66%35@@%61@@%29%13%63%66%49$0@@@%62%66$0@@%61@@|@@"])
  fun op TRAT_EQ_EQUIV x = x
    val op TRAT_EQ_EQUIV =
    DT(((("hrat",29),
        [("bool",[14,25,26,53,58,63]),("hrat",[6,7,8])]),["DISK_THM"]),
       [read"%30%14%30%17%36%63$1@$0@@%37%63$1@@%63$0@@@|@|@"])
  fun op hrat_ABS_REP_CLASS x = x
    val op hrat_ABS_REP_CLASS =
    DT(((("hrat",32),[("hrat",[31])]),["DISK_THM"]),
       [read"%34%28%3%38%54%56$0@@@$0@|@@%27%4%36%45%21%34%63$0@$0@@%37$1@%63$0@@@|@@%37%56%54$0@@@$0@@|@@"])
  fun op hrat_QUOTIENT x = x
    val op hrat_QUOTIENT =
    DT(((("hrat",35),
        [("bool",[15,25,26,51,53,56,58,63,105]),("hrat",[29,32,33,34]),
         ("quotient",[0,1,2,3])]),["DISK_THM"]), [read"%48%63@%53@%55@"])
  fun op HRAT_ADD_SYM x = x
    val op HRAT_ADD_SYM =
    DT(((("hrat",41),
        [("bool",[25,53,58,105]),("combin",[19]),("hrat",[14,17,29,35,38]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%28%9%38%57$1@$0@@%57$0@$1@@|@|@"])
  fun op HRAT_ADD_ASSOC x = x
    val op HRAT_ADD_ASSOC =
    DT(((("hrat",42),
        [("bool",[25,53,58,105]),("combin",[19]),("hrat",[14,18,29,35,38]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%28%9%28%11%38%57$2@%57$1@$0@@@%57%57$2@$1@@$0@@|@|@|@"])
  fun op HRAT_MUL_SYM x = x
    val op HRAT_MUL_SYM =
    DT(((("hrat",43),
        [("bool",[25,53,58,105]),("combin",[19]),("hrat",[16,19,29,35,39]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%28%9%38%59$1@$0@@%59$0@$1@@|@|@"])
  fun op HRAT_MUL_ASSOC x = x
    val op HRAT_MUL_ASSOC =
    DT(((("hrat",44),
        [("bool",[25,53,58,105]),("combin",[19]),("hrat",[16,20,29,35,39]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%28%9%28%11%38%59$2@%59$1@$0@@@%59%59$2@$1@@$0@@|@|@|@"])
  fun op HRAT_LDISTRIB x = x
    val op HRAT_LDISTRIB =
    DT(((("hrat",45),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("hrat",[14,16,21,29,35,38,39]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%28%9%28%11%38%59$2@%57$1@$0@@@%57%59$2@$1@@%59$2@$0@@@|@|@|@"])
  fun op HRAT_MUL_LID x = x
    val op HRAT_MUL_LID =
    DT(((("hrat",46),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("hrat",[16,22,29,35,36,39]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%38%59%52@$0@@$0@|@"])
  fun op HRAT_MUL_LINV x = x
    val op HRAT_MUL_LINV =
    DT(((("hrat",47),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("hrat",[12,16,23,29,35,36,37,39]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%38%59%58$0@@$0@@%52@|@"])
  fun op HRAT_NOZERO x = x
    val op HRAT_NOZERO =
    DT(((("hrat",48),
        [("bool",[25,53,58,105]),("combin",[19]),("hrat",[14,24,29,35,38]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%28%7%28%9%67%38%57$1@$0@@$1@@|@|@"])
  fun op HRAT_ADD_TOTAL x = x
    val op HRAT_ADD_TOTAL =
    DT(((("hrat",49),
        [("bool",[25,53,58,105]),("combin",[19]),("hrat",[14,25,29,35,38]),
         ("quotient",
         [0,12,20,22,38,39,40,47,48,49,51,52,63,85,86])]),["DISK_THM"]),
       [read"%28%7%28%9%51%38$1@$0@@%51%43%5%38$2@%57$1@$0@@|@@%43%5%38$1@%57$2@$0@@|@@@|@|@"])
  fun op HRAT_ARCH x = x
    val op HRAT_ARCH =
    DT(((("hrat",50),
        [("bool",[14,25,26,53,58,105]),("combin",[19]),
         ("hrat",[14,27,29,35,38,40]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,51,52,63,85,86])]),["DISK_THM"]),
       [read"%28%7%44%13%43%5%38%60$1@@%57$2@$0@@|@|@|@"])
  fun op HRAT_SUCINT x = x
    val op HRAT_SUCINT =
    DT(((("hrat",51),
        [("bool",[14,26,58,105]),("hrat",[14,28,29,35,36,38,40]),
         ("quotient",[0,12,13,20,22,38,39,47,63])]),["DISK_THM"]),
       [read"%34%38%60%35@@%52@@%29%13%38%60%49$0@@@%57%60$0@@%52@@|@@"])
  end
  val _ = DB.bindl "hrat"
  [("trat_1",trat_1,DB.Def), ("trat_inv",trat_inv,DB.Def),
   ("trat_add",trat_add,DB.Def), ("trat_mul",trat_mul,DB.Def),
   ("trat_sucint",trat_sucint,DB.Def), ("trat_eq",trat_eq,DB.Def),
   ("hrat_TY_DEF",hrat_TY_DEF,DB.Def),
   ("hrat_bijections",hrat_bijections,DB.Def),
   ("hrat_REP_def",hrat_REP_def,DB.Def),
   ("hrat_ABS_def",hrat_ABS_def,DB.Def), ("hrat_1",hrat_1,DB.Def),
   ("hrat_inv",hrat_inv,DB.Def), ("hrat_add",hrat_add,DB.Def),
   ("hrat_mul",hrat_mul,DB.Def), ("hrat_sucint",hrat_sucint,DB.Def),
   ("TRAT_EQ_REFL",TRAT_EQ_REFL,DB.Thm),
   ("TRAT_EQ_SYM",TRAT_EQ_SYM,DB.Thm),
   ("TRAT_EQ_TRANS",TRAT_EQ_TRANS,DB.Thm),
   ("TRAT_EQ_AP",TRAT_EQ_AP,DB.Thm),
   ("TRAT_ADD_SYM_EQ",TRAT_ADD_SYM_EQ,DB.Thm),
   ("TRAT_MUL_SYM_EQ",TRAT_MUL_SYM_EQ,DB.Thm),
   ("TRAT_INV_WELLDEFINED",TRAT_INV_WELLDEFINED,DB.Thm),
   ("TRAT_ADD_WELLDEFINED",TRAT_ADD_WELLDEFINED,DB.Thm),
   ("TRAT_ADD_WELLDEFINED2",TRAT_ADD_WELLDEFINED2,DB.Thm),
   ("TRAT_MUL_WELLDEFINED",TRAT_MUL_WELLDEFINED,DB.Thm),
   ("TRAT_MUL_WELLDEFINED2",TRAT_MUL_WELLDEFINED2,DB.Thm),
   ("TRAT_ADD_SYM",TRAT_ADD_SYM,DB.Thm),
   ("TRAT_ADD_ASSOC",TRAT_ADD_ASSOC,DB.Thm),
   ("TRAT_MUL_SYM",TRAT_MUL_SYM,DB.Thm),
   ("TRAT_MUL_ASSOC",TRAT_MUL_ASSOC,DB.Thm),
   ("TRAT_LDISTRIB",TRAT_LDISTRIB,DB.Thm),
   ("TRAT_MUL_LID",TRAT_MUL_LID,DB.Thm),
   ("TRAT_MUL_LINV",TRAT_MUL_LINV,DB.Thm),
   ("TRAT_NOZERO",TRAT_NOZERO,DB.Thm),
   ("TRAT_ADD_TOTAL",TRAT_ADD_TOTAL,DB.Thm),
   ("TRAT_SUCINT_0",TRAT_SUCINT_0,DB.Thm), ("TRAT_ARCH",TRAT_ARCH,DB.Thm),
   ("TRAT_SUCINT",TRAT_SUCINT,DB.Thm),
   ("TRAT_EQ_EQUIV",TRAT_EQ_EQUIV,DB.Thm),
   ("hrat_ABS_REP_CLASS",hrat_ABS_REP_CLASS,DB.Thm),
   ("hrat_QUOTIENT",hrat_QUOTIENT,DB.Thm),
   ("HRAT_ADD_SYM",HRAT_ADD_SYM,DB.Thm),
   ("HRAT_ADD_ASSOC",HRAT_ADD_ASSOC,DB.Thm),
   ("HRAT_MUL_SYM",HRAT_MUL_SYM,DB.Thm),
   ("HRAT_MUL_ASSOC",HRAT_MUL_ASSOC,DB.Thm),
   ("HRAT_LDISTRIB",HRAT_LDISTRIB,DB.Thm),
   ("HRAT_MUL_LID",HRAT_MUL_LID,DB.Thm),
   ("HRAT_MUL_LINV",HRAT_MUL_LINV,DB.Thm),
   ("HRAT_NOZERO",HRAT_NOZERO,DB.Thm),
   ("HRAT_ADD_TOTAL",HRAT_ADD_TOTAL,DB.Thm),
   ("HRAT_ARCH",HRAT_ARCH,DB.Thm), ("HRAT_SUCINT",HRAT_SUCINT,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quotient_optionTheory.quotient_option_grammars",
                          quotient_optionTheory.quotient_option_grammars),
                         ("quotient_sumTheory.quotient_sum_grammars",
                          quotient_sumTheory.quotient_sum_grammars),
                         ("quotient_pairTheory.quotient_pair_grammars",
                          quotient_pairTheory.quotient_pair_grammars),
                         ("quotient_listTheory.quotient_list_grammars",
                          quotient_listTheory.quotient_list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_1", (Term.prim_mk_const { Name = "trat_1", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_1", (Term.prim_mk_const { Name = "trat_1", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_inv", (Term.prim_mk_const { Name = "trat_inv", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_inv", (Term.prim_mk_const { Name = "trat_inv", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_add", (Term.prim_mk_const { Name = "trat_add", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_add", (Term.prim_mk_const { Name = "trat_add", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "trat_add"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_mul", (Term.prim_mk_const { Name = "trat_mul", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_mul", (Term.prim_mk_const { Name = "trat_mul", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "trat_mul"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_sucint", (Term.prim_mk_const { Name = "trat_sucint", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_eq", (Term.prim_mk_const { Name = "trat_eq", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("trat_eq", (Term.prim_mk_const { Name = "trat_eq", Thy = "hrat"}))
  val _ = update_grms temp_add_type "hrat"
  val _ = update_grms temp_add_type "hrat"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_REP_CLASS", (Term.prim_mk_const { Name = "hrat_REP_CLASS", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_ABS_CLASS", (Term.prim_mk_const { Name = "hrat_ABS_CLASS", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_REP", (Term.prim_mk_const { Name = "hrat_REP", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_REP", (Term.prim_mk_const { Name = "hrat_REP", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_ABS", (Term.prim_mk_const { Name = "hrat_ABS", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_ABS", (Term.prim_mk_const { Name = "hrat_ABS", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_1", (Term.prim_mk_const { Name = "hrat_1", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_1", (Term.prim_mk_const { Name = "hrat_1", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_inv", (Term.prim_mk_const { Name = "hrat_inv", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_inv", (Term.prim_mk_const { Name = "hrat_inv", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_add", (Term.prim_mk_const { Name = "hrat_add", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_add", (Term.prim_mk_const { Name = "hrat_add", Thy = "hrat"}))
  val _ = update_grms temp_add_infix ("hrat_add", 500, HOLgrammars.LEFT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_mul", (Term.prim_mk_const { Name = "hrat_mul", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_mul", (Term.prim_mk_const { Name = "hrat_mul", Thy = "hrat"}))
  val _ = update_grms temp_add_infix ("hrat_mul", 600, HOLgrammars.LEFT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_sucint", (Term.prim_mk_const { Name = "hrat_sucint", Thy = "hrat"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_sucint", (Term.prim_mk_const { Name = "hrat_sucint", Thy = "hrat"}))
  val hrat_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "hrat"
end
