structure integerTheory :> integerTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading integerTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open dividesTheory quotient_listTheory quotient_optionTheory
             quotient_pairTheory quotient_sumTheory
  in end;
  val _ = Theory.link_parents
          ("integer",
          Arbnum.fromString "1488587637",
          Arbnum.fromString "492174")
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
           Arbnum.fromString "821239"),
           ("divides",
           Arbnum.fromString "1488586176",
           Arbnum.fromString "471620")];
  val _ = Theory.incorporate_types "integer" [("int", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("num", "num"),
   ID("min", "bool"), ID("integer", "int"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("arithmetic", "-"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"), ID("min", "@"),
   ID("integer", "ABS"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("arithmetic", "DIV"),
   ID("arithmetic", "EVEN"), ID("arithmetic", "EXP"), ID("bool", "F"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("integer", "LEAST_INT"),
   ID("arithmetic", "MAX"), ID("arithmetic", "MIN"),
   ID("arithmetic", "MOD"), ID("arithmetic", "NUMERAL"),
   ID("integer", "Num"), ID("arithmetic", "ODD"),
   ID("quotient", "QUOTIENT"), ID("pair", "SND"), ID("num", "SUC"),
   ID("bool", "T"), ID("bool", "TYPE_DEFINITION"), ID("pred_set", "UNIV"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("numeral", "iZ"),
   ID("integer", "int_0"), ID("integer", "int_1"),
   ID("integer", "int_ABS"), ID("integer", "int_ABS_CLASS"),
   ID("integer", "int_REP"), ID("integer", "int_REP_CLASS"),
   ID("integer", "int_add"), ID("integer", "int_div"),
   ID("integer", "int_divides"), ID("integer", "int_exp"),
   ID("integer", "int_ge"), ID("integer", "int_gt"),
   ID("integer", "int_le"), ID("integer", "int_lt"),
   ID("integer", "int_max"), ID("integer", "int_min"),
   ID("integer", "int_mod"), ID("integer", "int_mul"),
   ID("integer", "int_neg"), ID("integer", "int_of_num"),
   ID("integer", "int_quot"), ID("integer", "int_rem"),
   ID("integer", "int_sub"), ID("integer", "tint_0"),
   ID("integer", "tint_1"), ID("integer", "tint_add"),
   ID("integer", "tint_eq"), ID("integer", "tint_lt"),
   ID("integer", "tint_mul"), ID("integer", "tint_neg"),
   ID("integer", "tint_of_num"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0, 0], TYOP [0, 0, 1], TYOP [0, 1, 1],
   TYOP [0, 1, 3], TYOP [3], TYOP [0, 1, 5], TYOP [0, 1, 6], TYOP [4],
   TYOP [0, 8, 8], TYOP [0, 8, 9], TYOP [0, 0, 8], TYOP [0, 8, 5],
   TYOP [0, 8, 12], TYOP [0, 8, 11], TYOP [0, 8, 6], TYOP [0, 8, 1],
   TYOP [0, 6, 8], TYOP [0, 1, 8], TYOP [0, 8, 0], TYOP [0, 12, 8],
   TYOP [0, 12, 5], TYOP [0, 21, 5], TYOP [0, 6, 5], TYOP [0, 23, 5],
   TYOP [0, 0, 5], TYOP [0, 25, 5], TYOP [0, 0, 0], TYOP [0, 0, 27],
   TYOP [0, 0, 2], TYOP [0, 5, 5], TYOP [0, 5, 30], TYOP [0, 0, 25],
   TYOP [0, 6, 23], TYOP [0, 15, 5], TYOP [0, 34, 5], TYOP [0, 25, 0],
   TYOP [0, 6, 1], TYOP [0, 5, 31], TYOP [0, 5, 10], TYOP [0, 1, 0],
   TYOP [0, 16, 5], TYOP [0, 18, 41], TYOP [0, 7, 42], TYOP [0, 23, 34]]
  end
  val _ = Theory.incorporate_consts "integer" tyvector
     [("tint_of_num", 2), ("tint_neg", 3), ("tint_mul", 4), ("tint_lt", 7),
      ("tint_eq", 7), ("tint_add", 4), ("tint_1", 1), ("tint_0", 1),
      ("int_sub", 10), ("int_rem", 10), ("int_quot", 10),
      ("int_of_num", 11), ("int_neg", 9), ("int_mul", 10), ("int_mod", 10),
      ("int_min", 10), ("int_max", 10), ("int_lt", 13), ("int_le", 13),
      ("int_gt", 13), ("int_ge", 13), ("int_exp", 14), ("int_divides", 13),
      ("int_div", 10), ("int_add", 10), ("int_REP_CLASS", 15),
      ("int_REP", 16), ("int_ABS_CLASS", 17), ("int_ABS", 18),
      ("int_1", 8), ("int_0", 8), ("Num", 19), ("LEAST_INT", 20),
      ("ABS", 9)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 12), TMV("T1", 8), TMV("T2", 8), TMV("a", 8), TMV("b", 8),
   TMV("c", 6), TMV("c", 8), TMV("d", 8), TMV("i", 8), TMV("j", 8),
   TMV("k", 8), TMV("m", 8), TMV("m", 0), TMV("n", 8), TMV("n", 0),
   TMV("p", 8), TMV("p", 0), TMV("p", 1), TMV("q", 8), TMV("q", 0),
   TMV("q", 1), TMV("r", 6), TMV("r", 8), TMV("r", 1), TMV("rep", 15),
   TMV("t", 8), TMV("t", 1), TMV("w", 8), TMV("x", 8), TMV("x", 0),
   TMV("x", 1), TMV("x1", 8), TMV("x1", 0), TMV("x1", 1), TMV("x2", 8),
   TMV("x2", 0), TMV("x2", 1), TMV("y", 8), TMV("y", 0), TMV("y", 1),
   TMV("y1", 8), TMV("y1", 0), TMV("y1", 1), TMV("y2", 8), TMV("y2", 0),
   TMV("y2", 1), TMV("z", 8), TMV("z", 0), TMV("z", 1), TMC(5, 22),
   TMC(5, 24), TMC(5, 21), TMC(5, 26), TMC(5, 23), TMC(6, 28), TMC(7, 28),
   TMC(8, 29), TMC(9, 28), TMC(10, 31), TMC(11, 0), TMC(12, 32),
   TMC(13, 32), TMC(14, 31), TMC(14, 33), TMC(14, 13), TMC(14, 32),
   TMC(14, 7), TMC(15, 31), TMC(16, 35), TMC(16, 21), TMC(16, 26),
   TMC(16, 23), TMC(17, 26), TMC(18, 20), TMC(18, 36), TMC(18, 37),
   TMC(19, 9), TMC(20, 27), TMC(21, 27), TMC(22, 38), TMC(22, 39),
   TMC(23, 28), TMC(24, 25), TMC(25, 28), TMC(26, 5), TMC(27, 21),
   TMC(28, 40), TMC(29, 20), TMC(30, 28), TMC(31, 28), TMC(32, 28),
   TMC(33, 27), TMC(34, 19), TMC(35, 25), TMC(36, 43), TMC(37, 40),
   TMC(38, 27), TMC(39, 5), TMC(40, 44), TMC(41, 12), TMC(42, 0),
   TMC(43, 31), TMC(44, 27), TMC(45, 8), TMC(46, 8), TMC(47, 18),
   TMC(48, 17), TMC(49, 16), TMC(50, 15), TMC(51, 10), TMC(52, 10),
   TMC(53, 13), TMC(54, 14), TMC(55, 13), TMC(56, 13), TMC(57, 13),
   TMC(58, 13), TMC(59, 10), TMC(60, 10), TMC(61, 10), TMC(62, 10),
   TMC(63, 9), TMC(64, 11), TMC(65, 10), TMC(66, 10), TMC(67, 10),
   TMC(68, 1), TMC(69, 1), TMC(70, 4), TMC(71, 7), TMC(72, 7), TMC(73, 4),
   TMC(74, 3), TMC(75, 2), TMC(76, 30)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op int_ge x = x
    val op int_ge =
    DT(((("integer",76),[]),[]),
       [read"%51%28%51%37%62%113$1@$0@@%115$0@$1@@|@|@"])
  fun op int_gt x = x
    val op int_gt =
    DT(((("integer",75),[]),[]),
       [read"%51%28%51%37%62%114$1@$0@@%116$0@$1@@|@|@"])
  fun op int_le x = x
    val op int_le =
    DT(((("integer",74),[]),[]),
       [read"%51%28%51%37%62%115$1@$0@@%134%116$0@$1@@@|@|@"])
  fun op int_sub x = x
    val op int_sub =
    DT(((("integer",73),[]),[]),
       [read"%51%28%51%37%64%125$1@$0@@%109$1@%121$0@@@|@|@"])
  fun op tint_0 x = x
    val op tint_0 =
    DT(((("integer",6),[]),[]),
       [read"%66%126@%56%91%77%100@@@%91%77%100@@@@"])
  fun op tint_1 x = x
    val op tint_1 =
    DT(((("integer",7),[]),[]),
       [read"%66%127@%56%55%91%77%100@@@%91%77%100@@@@%91%77%100@@@@"])
  fun op tint_neg x = x
    val op tint_neg =
    DT(((("integer",8),[("pair",[16])]),["DISK_THM"]),
       [read"%52%29%52%38%66%132%56$1@$0@@@%56$0@$1@@|@|@"])
  fun op tint_add x = x
    val op tint_add =
    DT(((("integer",9),[("pair",[16])]),["DISK_THM"]),
       [read"%52%32%52%41%52%35%52%44%66%128%56$3@$2@@%56$1@$0@@@%56%55$3@$1@@%55$2@$0@@@|@|@|@|@"])
  fun op tint_mul x = x
    val op tint_mul =
    DT(((("integer",10),[("pair",[16])]),["DISK_THM"]),
       [read"%52%32%52%41%52%35%52%44%66%131%56$3@$2@@%56$1@$0@@@%56%55%54$3@$1@@%54$2@$0@@@%55%54$3@$0@@%54$2@$1@@@@|@|@|@|@"])
  fun op tint_lt x = x
    val op tint_lt =
    DT(((("integer",11),[("pair",[16])]),["DISK_THM"]),
       [read"%52%32%52%41%52%35%52%44%62%130%56$3@$2@@%56$1@$0@@@%60%55$3@$0@@%55$1@$2@@@|@|@|@|@"])
  fun op tint_eq x = x
    val op tint_eq =
    DT(((("integer",12),[("pair",[16])]),["DISK_THM"]),
       [read"%52%32%52%41%52%35%52%44%62%129%56$3@$2@@%56$1@$0@@@%65%55$3@$0@@%55$1@$2@@@|@|@|@|@"])
  fun op tint_of_num x = x
    val op tint_of_num =
    DT(((("integer",40),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%58%66%133%59@@%126@@%52%14%66%133%96$0@@@%128%133$0@@%127@@|@@"])
  fun op int_TY_DEF x = x
    val op int_TY_DEF =
    DT(((("integer",44),
        [("bool",[58]),("integer",[16]),
         ("quotient",[0,1,2])]),["DISK_THM"]),
       [read"%68%24%98%5%71%23%58%129$0@$0@@%63$1@%129$0@@@|@|@$0@|@"])
  fun op int_bijections x = x
    val op int_bijections =
    DT(((("integer",45),[("bool",[117]),("integer",[44])]),["DISK_THM"]),
       [read"%58%51%3%64%106%108$0@@@$0@|@@%50%21%62%5%71%23%58%129$0@$0@@%63$1@%129$0@@@|@|$0@@%63%108%106$0@@@$0@@|@@"])
  fun op int_REP_def x = x
    val op int_REP_def =
    DT(((("integer",47),[]),[]), [read"%51%3%66%107$0@@%75%108$0@@@|@"])
  fun op int_ABS_def x = x
    val op int_ABS_def =
    DT(((("integer",48),[]),[]), [read"%53%23%64%105$0@@%106%129$0@@@|@"])
  fun op int_0 x = x
    val op int_0 = DT(((("integer",50),[]),[]), [read"%64%103@%105%126@@"])
  fun op int_1 x = x
    val op int_1 = DT(((("integer",51),[]),[]), [read"%64%104@%105%127@@"])
  fun op int_neg x = x
    val op int_neg =
    DT(((("integer",52),[]),[]),
       [read"%51%1%64%121$0@@%105%132%107$0@@@@|@"])
  fun op int_add x = x
    val op int_add =
    DT(((("integer",53),[]),[]),
       [read"%51%1%51%2%64%109$1@$0@@%105%128%107$1@@%107$0@@@@|@|@"])
  fun op int_mul x = x
    val op int_mul =
    DT(((("integer",54),[]),[]),
       [read"%51%1%51%2%64%120$1@$0@@%105%131%107$1@@%107$0@@@@|@|@"])
  fun op int_lt x = x
    val op int_lt =
    DT(((("integer",55),[]),[]),
       [read"%51%1%51%2%62%116$1@$0@@%130%107$1@@%107$0@@@|@|@"])
  fun op Num x = x
    val op Num =
    DT(((("integer",215),[]),[]),
       [read"%51%8%65%92$0@@%74%14%64$1@%122$0@@|@@|@"])
  fun op int_div x = x
    val op int_div =
    DT(((("integer",219),
        [("bool",[15,25,26,54,63,76,101,140])]),["DISK_THM"]),
       [read"%51%8%51%9%67%134%64$0@%122%59@@@@%64%110$1@$0@@%80%116%122%59@@$0@@%80%115%122%59@@$1@@%122%81%92$1@@%92$0@@@@%109%121%122%81%92%121$1@@@%92$0@@@@@%80%65%90%92%121$1@@@%92$0@@@%59@@%122%59@@%121%122%91%77%100@@@@@@@@%80%115%122%59@@$1@@%109%121%122%81%92$1@@%92%121$0@@@@@@%80%65%90%92$1@@%92%121$0@@@@%59@@%122%59@@%121%122%91%77%100@@@@@@@%122%81%92%121$1@@@%92%121$0@@@@@@@@|@|@"])
  fun op int_mod x = x
    val op int_mod =
    DT(((("integer",225),
        [("bool",[15,25,26,54,63,76,101,140])]),["DISK_THM"]),
       [read"%51%8%51%9%67%134%64$0@%122%59@@@@%64%119$1@$0@@%125$1@%120%110$1@$0@@$0@@@@|@|@"])
  fun op INT_ABS x = x
    val op INT_ABS =
    DT(((("integer",253),[]),[]),
       [read"%51%13%64%76$0@@%80%116$0@%122%59@@@%121$0@@$0@@|@"])
  fun op int_quot x = x
    val op int_quot =
    DT(((("integer",267),
        [("bool",[15,25,26,37,52,54,63,76,101,140])]),["DISK_THM"]),
       [read"%51%8%51%9%67%134%64$0@%122%59@@@@%64%123$1@$0@@%80%116%122%59@@$0@@%80%115%122%59@@$1@@%122%81%92$1@@%92$0@@@@%121%122%81%92%121$1@@@%92$0@@@@@@%80%115%122%59@@$1@@%121%122%81%92$1@@%92%121$0@@@@@@%122%81%92%121$1@@@%92%121$0@@@@@@@@|@|@"])
  fun op int_rem x = x
    val op int_rem =
    DT(((("integer",275),
        [("bool",[15,25,26,37,52,54,63,76,101,140])]),["DISK_THM"]),
       [read"%51%8%51%9%67%134%64$0@%122%59@@@@%64%124$1@$0@@%125$1@%120%123$1@$0@@$0@@@@|@|@"])
  fun op INT_DIVIDES x = x
    val op INT_DIVIDES =
    DT(((("integer",286),[]),[]),
       [read"%51%15%51%18%62%111$1@$0@@%69%11%64%120$0@$2@@$1@|@@|@|@"])
  fun op int_exp x = x
    val op int_exp =
    DT(((("integer",301),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%58%51%15%64%112$0@%59@@%122%91%77%100@@@@|@@%51%15%52%14%64%112$1@%96$0@@@%120$1@%112$1@$0@@@|@|@@"])
  fun op INT_MIN x = x
    val op INT_MIN =
    DT(((("integer",310),[]),[]),
       [read"%51%28%51%37%64%118$1@$0@@%80%116$1@$0@@$1@$0@@|@|@"])
  fun op INT_MAX x = x
    val op INT_MAX =
    DT(((("integer",311),[]),[]),
       [read"%51%28%51%37%64%117$1@$0@@%80%116$1@$0@@$0@$1@@|@|@"])
  fun op LEAST_INT_DEF x = x
    val op LEAST_INT_DEF =
    DT(((("integer",345),[]),[]),
       [read"%49%0%64%87$0@@%73%8%58$1$0@@%51%9%67%116$0@$1@@%134$2$0@@@|@@|@@|@"])
  fun op INT_LT x = x
    val op INT_LT =
    DT(((("integer",165),
        [("arithmetic",[59]),("bool",[54,58]),
         ("integer",[101,164])]),["DISK_THM"]),
       [read"%52%12%52%14%62%116%122$1@@%122$0@@@%60$1@$0@@|@|@"])
  fun op INT_LE x = x
    val op INT_LE =
    DT(((("integer",164),
        [("arithmetic",[38,46,59]),("bool",[14,25,51,53,54,56,58,63]),
         ("integer",[104,108,114,126,127,129,155,157,162,163]),("num",[9]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%52%12%52%14%62%115%122$1@@%122$0@@@%61$1@$0@@|@|@"])
  fun op INT_POS x = x
    val op INT_POS =
    DT(((("integer",163),
        [("bool",[14,25,51,63]),("integer",[108,114,126,155,162]),
         ("num",[9])]),["DISK_THM"]),
       [read"%52%14%115%122%59@@%122$0@@|@"])
  fun op INT x = x
    val op INT =
    DT(((("integer",162),
        [("bool",[14,25,26,56,58,105]),
         ("integer",[16,17,34,40,49,50,51,53,56,78]),
         ("quotient",[0,12,13,20,22,38,39,47,63])]),["DISK_THM"]),
       [read"%52%14%64%122%96$0@@@%109%122$0@@%122%91%77%100@@@@@|@"])
  fun op INT_EQ_RMUL x = x
    val op INT_EQ_RMUL =
    DT(((("integer",161),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54,160]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%64%120$2@$0@@%120$1@$0@@@%101%64$0@%122%59@@@%64$2@$1@@@|@|@|@"])
  fun op INT_EQ_LMUL x = x
    val op INT_EQ_LMUL =
    DT(((("integer",160),
        [("bool",[25,56,58]),("integer",[140,150,159])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%64%120$2@$1@@%120$2@$0@@@%101%64$2@%122%59@@@%64$1@$0@@@|@|@|@"])
  fun op INT_ENTIRE x = x
    val op INT_ENTIRE =
    DT(((("integer",159),
        [("bool",[25,26,27,53,54,56,58,63,96,105]),("combin",[19]),
         ("integer",
         [16,28,31,36,39,49,50,54,55,77,93,94,95,96,97,119,122]),
         ("quotient",[0,12,13,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%120$1@$0@@%122%59@@@%101%64$1@%122%59@@@%64$0@%122%59@@@@|@|@"])
  fun op INT_LT_ADDL x = x
    val op INT_LT_ADDL =
    DT(((("integer",158),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,157]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%116$0@%109$1@$0@@@%116%122%59@@$1@@|@|@"])
  fun op INT_LT_ADDR x = x
    val op INT_LT_ADDR =
    DT(((("integer",157),
        [("bool",[25,56]),("integer",[80,99])]),["DISK_THM"]),
       [read"%51%28%51%37%62%116$1@%109$1@$0@@@%116%122%59@@$0@@|@|@"])
  fun op INT_LE_ADDL x = x
    val op INT_LE_ADDL =
    DT(((("integer",156),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,155]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%115$0@%109$1@$0@@@%115%122%59@@$1@@|@|@"])
  fun op INT_LE_ADDR x = x
    val op INT_LE_ADDR =
    DT(((("integer",155),
        [("bool",[25,56]),("integer",[80,128])]),["DISK_THM"]),
       [read"%51%28%51%37%62%115$1@%109$1@$0@@@%115%122%59@@$0@@|@|@"])
  fun op INT_LT_IMP_NE x = x
    val op INT_LT_IMP_NE =
    DT(((("integer",154),
        [("bool",[25,26,27,53,54,58,105]),("combin",[19]),
         ("integer",[16,28,39,49,55]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%67%116$1@$0@@%134%64$1@$0@@@|@|@"])
  fun op INT_NEG_MINUS1 x = x
    val op INT_NEG_MINUS1 =
    DT(((("integer",153),
        [("bool",[25,56,58]),("integer",[83,95])]),["DISK_THM"]),
       [read"%51%28%64%121$0@@%120%121%122%91%77%100@@@@@$0@@|@"])
  fun op INT_NEG_EQ x = x
    val op INT_NEG_EQ =
    DT(((("integer",152),
        [("bool",[25,26,56]),("integer",[97])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%121$1@@$0@@%64$1@%121$0@@@|@|@"])
  fun op INT_SUB_RDISTRIB x = x
    val op INT_SUB_RDISTRIB =
    DT(((("integer",151),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54,150]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%64%120%125$2@$1@@$0@@%125%120$2@$0@@%120$1@$0@@@|@|@|@"])
  fun op INT_SUB_LDISTRIB x = x
    val op INT_SUB_LDISTRIB =
    DT(((("integer",150),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,23,34,36,49,53,54,73,96]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%64%120$2@%125$1@$0@@@%125%120$2@$1@@%120$2@$0@@@|@|@|@"])
  fun op INT_ADD_SUB x = x
    val op INT_ADD_SUB =
    DT(((("integer",149),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,21,34,49,53,73,80,82]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125%109$1@$0@@$1@@$0@|@|@"])
  fun op INT_SUB_LE x = x
    val op INT_SUB_LE =
    DT(((("integer",148),
        [("bool",[25,56]),("integer",[79,129,137])]),["DISK_THM"]),
       [read"%51%28%51%37%62%115%122%59@@%125$1@$0@@@%115$0@$1@@|@|@"])
  fun op INT_SUB_LT x = x
    val op INT_SUB_LT =
    DT(((("integer",147),
        [("bool",[25,56]),("integer",[79,100,137])]),["DISK_THM"]),
       [read"%51%28%51%37%62%116%122%59@@%125$1@$0@@@%116$0@$1@@|@|@"])
  fun op INT_NEG_SUB x = x
    val op INT_NEG_SUB =
    DT(((("integer",146),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,73,92,97]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%121%125$1@$0@@@%125$0@$1@@|@|@"])
  fun op INT_NEG_0 x = x
    val op INT_NEG_0 =
    DT(((("integer",145),
        [("bool",[25,56]),("integer",[144])]),["DISK_THM"]),
       [read"%64%121%122%59@@@%122%59@@"])
  fun op INT_NEG_EQ0 x = x
    val op INT_NEG_EQ0 =
    DT(((("integer",144),
        [("bool",[26]),("integer",[80,81,82])]),["DISK_THM"]),
       [read"%51%28%62%64%121$0@@%122%59@@@%64$0@%122%59@@@|@"])
  fun op INT_LE_NEGR x = x
    val op INT_LE_NEGR =
    DT(((("integer",143),
        [("bool",[25,56]),("integer",[97,121,142])]),["DISK_THM"]),
       [read"%51%28%62%115$0@%121$0@@@%115$0@%122%59@@@|@"])
  fun op INT_LE_NEGL x = x
    val op INT_LE_NEGL =
    DT(((("integer",142),
        [("bool",[25,56]),("integer",[82,128,141])]),["DISK_THM"]),
       [read"%51%28%62%115%121$0@@$0@@%115%122%59@@$0@@|@"])
  fun op INT_LE_DOUBLE x = x
    val op INT_LE_DOUBLE =
    DT(((("integer",141),
        [("bool",[25,26,53]),("integer",[80,104,130,131])]),["DISK_THM"]),
       [read"%51%28%62%115%122%59@@%109$0@$0@@@%115%122%59@@$0@@|@"])
  fun op INT_SUB_0 x = x
    val op INT_SUB_0 =
    DT(((("integer",140),
        [("bool",[25,26,53]),("integer",[79,137,139])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%125$1@$0@@%122%59@@@%64$1@$0@@|@|@"])
  fun op INT_SUB_REFL x = x
    val op INT_SUB_REFL =
    DT(((("integer",139),
        [("bool",[25,56]),("integer",[73,82])]),["DISK_THM"]),
       [read"%51%28%64%125$0@$0@@%122%59@@|@"])
  fun op INT_SUB_ADD2 x = x
    val op INT_SUB_ADD2 =
    DT(((("integer",138),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,137]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%109$0@%125$1@$0@@@$1@|@|@"])
  fun op INT_SUB_ADD x = x
    val op INT_SUB_ADD =
    DT(((("integer",137),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,73,80,81]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%109%125$1@$0@@$0@@$1@|@|@"])
  fun op INT_LT_ADD1 x = x
    val op INT_LT_ADD1 =
    DT(((("integer",136),
        [("bool",[25,53,58,63]),
         ("integer",[80,99,109,127,130])]),["DISK_THM"]),
       [read"%51%28%51%37%67%115$1@$0@@%116$1@%109$0@%122%91%77%100@@@@@@|@|@"])
  fun op INT_LT_ADDNEG2 x = x
    val op INT_LT_ADDNEG2 =
    DT(((("integer",135),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,80,81,100]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116%109$2@%121$1@@@$0@@%116$2@%109$0@$1@@@|@|@|@"])
  fun op INT_LT_ADDNEG x = x
    val op INT_LT_ADDNEG =
    DT(((("integer",134),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,80,81,100]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116$1@%109$2@%121$0@@@@%116%109$1@$0@@$2@@|@|@|@"])
  fun op INT_LT_ADD x = x
    val op INT_LT_ADD =
    DT(((("integer",133),
        [("bool",[25,53]),("integer",[79,130])]),["DISK_THM"]),
       [read"%51%28%51%37%67%58%116%122%59@@$1@@%116%122%59@@$0@@@%116%122%59@@%109$1@$0@@@|@|@"])
  fun op INT_LE_ADD x = x
    val op INT_LE_ADD =
    DT(((("integer",132),
        [("bool",[25,53]),("integer",[79,131])]),["DISK_THM"]),
       [read"%51%28%51%37%67%58%115%122%59@@$1@@%115%122%59@@$0@@@%115%122%59@@%109$1@$0@@@|@|@"])
  fun op INT_LE_ADD2 x = x
    val op INT_LE_ADD2 =
    DT(((("integer",131),
        [("bool",[25,51,63]),("integer",[114,128,129])]),["DISK_THM"]),
       [read"%51%27%51%28%51%37%51%46%67%58%115$3@$2@@%115$1@$0@@@%115%109$3@$1@@%109$2@$0@@@|@|@|@|@"])
  fun op INT_LT_ADD2 x = x
    val op INT_LT_ADD2 =
    DT(((("integer",130),
        [("bool",[25,51,53,58,63,105]),("combin",[19]),
         ("integer",[16,29,39,49,55,99,100]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%27%51%28%51%37%51%46%67%58%116$3@$2@@%116$1@$0@@@%116%109$3@$1@@%109$2@$0@@@|@|@|@|@"])
  fun op INT_LE_RADD x = x
    val op INT_LE_RADD =
    DT(((("integer",129),[("integer",[74,100])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%115%109$2@$0@@%109$1@$0@@@%115$2@$1@@|@|@|@"])
  fun op INT_LE_LADD x = x
    val op INT_LE_LADD =
    DT(((("integer",128),[("integer",[74,99])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%115%109$2@$1@@%109$2@$0@@@%115$1@$0@@|@|@|@"])
  fun op INT_LT_01 x = x
    val op INT_LT_01 =
    DT(((("integer",127),
        [("bool",[25,26,27,51,54,58,63]),
         ("integer",[16,18,49,50,51,77,78,110,126]),
         ("quotient",[0,13,38,39,47])]),["DISK_THM"]),
       [read"%116%122%59@@%122%91%77%100@@@@"])
  fun op INT_LE_01 x = x
    val op INT_LE_01 =
    DT(((("integer",126),
        [("bool",[25,63]),("integer",[83,125])]),["DISK_THM"]),
       [read"%115%122%59@@%122%91%77%100@@@@"])
  fun op INT_LE_SQUARE x = x
    val op INT_LE_SQUARE =
    DT(((("integer",125),
        [("bool",[25,53,58]),
         ("integer",[95,96,97,123,124])]),["DISK_THM"]),
       [read"%51%28%115%122%59@@%120$0@$0@@|@"])
  fun op INT_LE_MUL x = x
    val op INT_LE_MUL =
    DT(((("integer",124),
        [("bool",[25,26,27,30,51,52,53,56,58,63,105]),("combin",[19]),
         ("integer",[16,31,36,39,49,50,54,55,77,93,94,109]),
         ("quotient",[0,12,13,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%67%58%115%122%59@@$1@@%115%122%59@@$0@@@%115%122%59@@%120$1@$0@@@|@|@"])
  fun op INT_LE_NEGTOTAL x = x
    val op INT_LE_NEGTOTAL =
    DT(((("integer",123),
        [("bool",[25,52,56,63]),("integer",[109,122])]),["DISK_THM"]),
       [read"%51%28%101%115%122%59@@$0@@%115%122%59@@%121$0@@@|@"])
  fun op INT_LT_NEGTOTAL x = x
    val op INT_LT_NEGTOTAL =
    DT(((("integer",122),
        [("bool",[25,52,53,56,58,63,105]),("combin",[19]),
         ("integer",[16,27,39,49,55,97,118]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%101%64$0@%122%59@@@%101%116%122%59@@$0@@%116%122%59@@%121$0@@@@|@"])
  fun op INT_NEG_GE0 x = x
    val op INT_NEG_GE0 =
    DT(((("integer",121),
        [("bool",[25,56]),("integer",[74,118])]),["DISK_THM"]),
       [read"%51%28%62%115%122%59@@%121$0@@@%115$0@%122%59@@@|@"])
  fun op INT_NEG_LE0 x = x
    val op INT_NEG_LE0 =
    DT(((("integer",120),
        [("bool",[25,56]),("integer",[74,119])]),["DISK_THM"]),
       [read"%51%28%62%115%121$0@@%122%59@@@%115%122%59@@$0@@|@"])
  fun op INT_NEG_GT0 x = x
    val op INT_NEG_GT0 =
    DT(((("integer",119),
        [("bool",[25,56,58]),("integer",[97,118])]),["DISK_THM"]),
       [read"%51%28%62%116%122%59@@%121$0@@@%116$0@%122%59@@@|@"])
  fun op INT_NEG_LT0 x = x
    val op INT_NEG_LT0 =
    DT(((("integer",118),
        [("bool",[25,56]),("integer",[79,81,100])]),["DISK_THM"]),
       [read"%51%28%62%116%121$0@@%122%59@@@%116%122%59@@$0@@|@"])
  fun op INT_LTE_ANTSYM x = x
    val op INT_LTE_ANTSYM =
    DT(((("integer",117),[("bool",[41]),("integer",[116])]),["DISK_THM"]),
       [read"%51%28%51%37%134%58%115$1@$0@@%116$0@$1@@@|@|@"])
  fun op INT_LET_ANTISYM x = x
    val op INT_LET_ANTISYM =
    DT(((("integer",116),
        [("bool",[13,25,51,54]),("integer",[74])]),["DISK_THM"]),
       [read"%51%28%51%37%134%58%116$1@$0@@%115$0@$1@@@|@|@"])
  fun op INT_LE_ANTISYM x = x
    val op INT_LE_ANTISYM =
    DT(((("integer",115),
        [("bool",[25,26,51,53,54,56,58,63,105]),("combin",[19]),
         ("integer",[16,27,39,49,55,74,108]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%58%115$1@$0@@%115$0@$1@@@%64$1@$0@@|@|@"])
  fun op INT_LE_TRANS x = x
    val op INT_LE_TRANS =
    DT(((("integer",114),
        [("bool",[25,53]),("integer",[109,111,113])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%115$2@$1@@%115$1@$0@@@%115$2@$0@@|@|@|@"])
  fun op INT_LET_TRANS x = x
    val op INT_LET_TRANS =
    DT(((("integer",113),
        [("bool",[25,53,58,98,105]),("combin",[19]),
         ("integer",[16,29,39,49,55,109]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%115$2@$1@@%116$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op INT_LTE_TRANS x = x
    val op INT_LTE_TRANS =
    DT(((("integer",112),
        [("bool",[25,53,58,97,105]),("combin",[19]),
         ("integer",[16,29,39,49,55,109]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%116$2@$1@@%115$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op INT_LT_IMP_LE x = x
    val op INT_LT_IMP_LE =
    DT(((("integer",111),
        [("bool",[25,52,63]),("integer",[109])]),["DISK_THM"]),
       [read"%51%28%51%37%67%116$1@$0@@%115$1@$0@@|@|@"])
  fun op INT_LT_LE x = x
    val op INT_LT_LE =
    DT(((("integer",110),
        [("bool",[25,26,27,51,52,53,54,58,63,98,105]),("combin",[19]),
         ("integer",[16,28,39,49,55,109]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,7])]),["DISK_THM"]),
       [read"%51%28%51%37%62%116$1@$0@@%58%115$1@$0@@%134%64$1@$0@@@@|@|@"])
  fun op INT_LE_LT x = x
    val op INT_LE_LT =
    DT(((("integer",109),
        [("bool",[25,26,52,53,54,56,58,63,105]),("combin",[19]),
         ("integer",[16,27,28,39,49,55,74,103]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%115$1@$0@@%101%116$1@$0@@%64$1@$0@@@|@|@"])
  fun op INT_LE_REFL x = x
    val op INT_LE_REFL =
    DT(((("integer",108),
        [("bool",[25,26,27,53,54,58,105]),("combin",[19]),
         ("integer",[16,28,39,49,55,74]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%115$0@$0@|@"])
  fun op INT_LTE_TOTAL x = x
    val op INT_LTE_TOTAL =
    DT(((("integer",107),
        [("bool",[25,30,63]),("integer",[74])]),["DISK_THM"]),
       [read"%51%28%51%37%101%116$1@$0@@%115$0@$1@@|@|@"])
  fun op INT_LET_TOTAL x = x
    val op INT_LET_TOTAL =
    DT(((("integer",106),
        [("bool",[25,30,63,95]),("integer",[74])]),["DISK_THM"]),
       [read"%51%28%51%37%101%115$1@$0@@%116$0@$1@@|@|@"])
  fun op INT_LE_TOTAL x = x
    val op INT_LE_TOTAL =
    DT(((("integer",105),
        [("bool",[25,26,27,54,58,96]),("integer",[74,102])]),["DISK_THM"]),
       [read"%51%28%51%37%101%115$1@$0@@%115$0@$1@@|@|@"])
  fun op INT_NOT_LE x = x
    val op INT_NOT_LE =
    DT(((("integer",104),
        [("bool",[25,54,56]),("integer",[74])]),["DISK_THM"]),
       [read"%51%28%51%37%62%134%115$1@$0@@@%116$0@$1@@|@|@"])
  fun op INT_LT_GT x = x
    val op INT_LT_GT =
    DT(((("integer",103),
        [("bool",[25,26,27,53,54]),("integer",[102])]),["DISK_THM"]),
       [read"%51%28%51%37%67%116$1@$0@@%134%116$0@$1@@@|@|@"])
  fun op INT_LT_ANTISYM x = x
    val op INT_LT_ANTISYM =
    DT(((("integer",102),
        [("bool",[25,26,27,53,54,58,105]),("combin",[19]),
         ("integer",[16,28,29,39,49,55]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%134%58%116$1@$0@@%116$0@$1@@@|@|@"])
  fun op INT_NOT_LT x = x
    val op INT_NOT_LT =
    DT(((("integer",101),
        [("bool",[25,56]),("integer",[74])]),["DISK_THM"]),
       [read"%51%28%51%37%62%134%116$1@$0@@@%115$0@$1@@|@|@"])
  fun op INT_LT_RADD x = x
    val op INT_LT_RADD =
    DT(((("integer",100),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,99]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116%109$2@$0@@%109$1@$0@@@%116$2@$1@@|@|@|@"])
  fun op INT_LT_LADD x = x
    val op INT_LT_LADD =
    DT(((("integer",99),
        [("bool",[25,26,53,58,63,105,124]),("combin",[19]),
         ("integer",[16,17,21,30,34,39,49,53,55,79,81]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116%109$2@$1@@%109$2@$0@@@%116$1@$0@@|@|@|@"])
  fun op INT_NEG_MUL2 x = x
    val op INT_NEG_MUL2 =
    DT(((("integer",98),
        [("bool",[25,36,56,58]),("integer",[95,96,97])]),["DISK_THM"]),
       [read"%51%28%51%37%64%120%121$1@@%121$0@@@%120$1@$0@@|@|@"])
  fun op INT_NEGNEG x = x
    val op INT_NEGNEG =
    DT(((("integer",97),
        [("bool",[25,56,58]),("integer",[82,90])]),["DISK_THM"]),
       [read"%51%28%64%121%121$0@@@$0@|@"])
  fun op INT_NEG_RMUL x = x
    val op INT_NEG_RMUL =
    DT(((("integer",96),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54,95]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%121%120$1@$0@@@%120$1@%121$0@@@|@|@"])
  fun op INT_NEG_LMUL x = x
    val op INT_NEG_LMUL =
    DT(((("integer",95),
        [("bool",[25,56,58]),("integer",[81,85,90,93])]),["DISK_THM"]),
       [read"%51%28%51%37%64%121%120$1@$0@@@%120%121$1@@$0@@|@|@"])
  fun op INT_MUL_RZERO x = x
    val op INT_MUL_RZERO =
    DT(((("integer",94),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54,93]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%64%120$0@%122%59@@@%122%59@@|@"])
  fun op INT_MUL_LZERO x = x
    val op INT_MUL_LZERO =
    DT(((("integer",93),
        [("bool",[25,56,58]),("integer",[80,85,88])]),["DISK_THM"]),
       [read"%51%28%64%120%122%59@@$0@@%122%59@@|@"])
  fun op INT_NEG_ADD x = x
    val op INT_NEG_ADD =
    DT(((("integer",92),
        [("bool",[25,53,56,58,63,105]),("combin",[19]),
         ("integer",[16,17,19,21,34,49,53,80,81,90]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%121%109$1@$0@@@%109%121$1@@%121$0@@@|@|@"])
  fun op INT_RNEG_UNIQ x = x
    val op INT_RNEG_UNIQ =
    DT(((("integer",91),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,90]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%109$1@$0@@%122%59@@@%64$0@%121$1@@@|@|@"])
  fun op INT_LNEG_UNIQ x = x
    val op INT_LNEG_UNIQ =
    DT(((("integer",90),
        [("bool",[25,56]),("integer",[81,87])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%109$1@$0@@%122%59@@@%64$1@%121$0@@@|@|@"])
  fun op INT_ADD_RID_UNIQ x = x
    val op INT_ADD_RID_UNIQ =
    DT(((("integer",89),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,88]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%109$1@$0@@$1@@%64$0@%122%59@@@|@|@"])
  fun op INT_ADD_LID_UNIQ x = x
    val op INT_ADD_LID_UNIQ =
    DT(((("integer",88),
        [("bool",[25,56,58]),("integer",[79,87])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%109$1@$0@@$0@@%64$1@%122%59@@@|@|@"])
  fun op INT_EQ_RADD x = x
    val op INT_EQ_RADD =
    DT(((("integer",87),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,86]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%64%109$2@$0@@%109$1@$0@@@%64$2@$1@@|@|@|@"])
  fun op INT_EQ_LADD x = x
    val op INT_EQ_LADD =
    DT(((("integer",86),
        [("bool",[25,26,53,56,58,105,124]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,79,81]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%64%109$2@$1@@%109$2@$0@@@%64$1@$0@@|@|@|@"])
  fun op INT_RDISTRIB x = x
    val op INT_RDISTRIB =
    DT(((("integer",85),
        [("bool",[25,36,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,23,34,36,49,53,54,61]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%64%120%109$2@$1@@$0@@%109%120$2@$0@@%120$1@$0@@@|@|@|@"])
  fun op INT_MUL_RID x = x
    val op INT_MUL_RID =
    DT(((("integer",84),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96,105]),
         ("combin",[19]),("integer",[16,17,20,36,49,54,78,83]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%51%28%64%120$0@%122%91%77%100@@@@@$0@|@"])
  fun op INT_MUL_LID x = x
    val op INT_MUL_LID =
    DT(((("integer",83),
        [("bool",[25,36,53,56,58,105]),("combin",[19]),
         ("integer",[16,25,36,49,51,54,78]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%64%120%122%91%77%100@@@@$0@@$0@|@"])
  fun op INT_ADD_RINV x = x
    val op INT_ADD_RINV =
    DT(((("integer",82),
        [("bool",[25,36,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,81]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%64%109$0@%121$0@@@%122%59@@|@"])
  fun op INT_ADD_LINV x = x
    val op INT_ADD_LINV =
    DT(((("integer",81),
        [("bool",[25,36,53,56,58,105]),("combin",[19]),
         ("integer",[16,26,32,34,49,50,52,53,77]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%64%109%121$0@@$0@@%122%59@@|@"])
  fun op INT_ADD_RID x = x
    val op INT_ADD_RID =
    DT(((("integer",80),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("integer",[59,79]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%51%28%64%109$0@%122%59@@@$0@|@"])
  fun op INT_ADD_LID x = x
    val op INT_ADD_LID =
    DT(((("integer",79),
        [("bool",[25,36,53,56,58,105]),("combin",[19]),
         ("integer",[16,24,34,49,50,53,77]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%64%109%122%59@@$0@@$0@|@"])
  fun op INT_1 x = x
    val op INT_1 =
    DT(((("integer",78),
        [("arithmetic",[17]),("bool",[14,25,26,53,56,58,105]),
         ("combin",[19]),("integer",[16,17,24,34,40,49,50,51,53,56]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%64%104@%122%91%77%100@@@@"])
  fun op INT_0 x = x
    val op INT_0 =
    DT(((("integer",77),
        [("bool",[14,25,26,56,58,105]),
         ("integer",[16,17,34,40,49,50,51,53,56]),
         ("quotient",[0,12,13,20,22,38,39,47,63])]),["DISK_THM"]),
       [read"%64%103@%122%59@@"])
  fun op NUM_POSINT_EX x = x
    val op NUM_POSINT_EX =
    DT(((("integer",72),
        [("bool",[14,25,26,53,58,105]),("combin",[19]),
         ("integer",[16,39,43,49,50,55,56]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%25%67%134%116$0@%103@@@%70%14%64$1@%122$0@@|@@|@"])
  fun op INT_LT_MUL x = x
    val op INT_LT_MUL =
    DT(((("integer",69),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,31,36,39,49,50,54,55]),
         ("quotient",[0,12,13,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%67%58%116%103@$1@@%116%103@$0@@@%116%103@%120$1@$0@@@|@|@"])
  fun op INT_LT_LADD_IMP x = x
    val op INT_LT_LADD_IMP =
    DT(((("integer",68),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,30,34,39,49,53,55]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%116$1@$0@@%116%109$2@$1@@%109$2@$0@@@|@|@|@"])
  fun op INT_LT_TRANS x = x
    val op INT_LT_TRANS =
    DT(((("integer",67),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,29,39,49,55]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%116$2@$1@@%116$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op INT_LT_REFL x = x
    val op INT_LT_REFL =
    DT(((("integer",66),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,28,39,49,55]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%134%116$0@$0@@|@"])
  fun op INT_LT_TOTAL x = x
    val op INT_LT_TOTAL =
    DT(((("integer",65),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,27,39,49,55]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%101%64$1@$0@@%101%116$1@$0@@%116$0@$1@@@|@|@"])
  fun op INT_LDISTRIB x = x
    val op INT_LDISTRIB =
    DT(((("integer",64),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,23,34,36,49,53,54]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%46%51%37%51%28%64%120$0@%109$1@$2@@@%109%120$0@$1@@%120$0@$2@@@|@|@|@"])
  fun op INT_MUL_ASSOC x = x
    val op INT_MUL_ASSOC =
    DT(((("integer",63),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,22,36,49,54]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%46%51%37%51%28%64%120$0@%120$1@$2@@@%120%120$0@$1@@$2@@|@|@|@"])
  fun op INT_ADD_ASSOC x = x
    val op INT_ADD_ASSOC =
    DT(((("integer",62),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,21,34,49,53]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%46%51%37%51%28%64%109$0@%109$1@$2@@@%109%109$0@$1@@$2@@|@|@|@"])
  fun op INT_MUL_COMM x = x
    val op INT_MUL_COMM =
    DT(((("integer",61),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%37%51%28%64%120$0@$1@@%120$1@$0@@|@|@"])
  fun op INT_MUL_SYM x = x
    val op INT_MUL_SYM =
    DT(((("integer",60),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%37%51%28%64%120$0@$1@@%120$1@$0@@|@|@"])
  fun op INT_ADD_COMM x = x
    val op INT_ADD_COMM =
    DT(((("integer",59),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%37%51%28%64%109$0@$1@@%109$1@$0@@|@|@"])
  fun op INT_ADD_SYM x = x
    val op INT_ADD_SYM =
    DT(((("integer",58),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%37%51%28%64%109$0@$1@@%109$1@$0@@|@|@"])
  fun op INT_10 x = x
    val op INT_10 =
    DT(((("integer",57),
        [("bool",[58]),("integer",[16,18,49,50,51]),
         ("quotient",[0,13,38,39,47])]),["DISK_THM"]),
       [read"%134%64%104@%103@@"])
  fun op EQ_LADD x = x
    val op EQ_LADD =
    DT(((("integer",0),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,52,54,58,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%29%52%38%52%47%62%65%55$2@$1@@%55$2@$0@@@%65$1@$0@@|@|@|@"])
  fun op EQ_ADDL x = x
    val op EQ_ADDL =
    DT(((("integer",1),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,52,54,58,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%29%52%38%62%65$1@%55$1@$0@@@%65$0@%59@@|@|@"])
  fun op LT_LADD x = x
    val op LT_LADD =
    DT(((("integer",2),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",[25,36,52,54,58,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%29%52%38%52%47%62%60%55$2@$1@@%55$2@$0@@@%60$1@$0@@|@|@|@"])
  fun op LT_ADDL x = x
    val op LT_ADDL =
    DT(((("integer",3),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",[25,36,52,54,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%29%52%38%62%60$1@%55$1@$0@@@%60%59@$0@@|@|@"])
  fun op LT_ADDR x = x
    val op LT_ADDR =
    DT(((("integer",4),
        [("arithmetic",[24,25,27,41,46,71,93,173,180]),
         ("bool",[25,36,54,58,63,104]),("numeral",[3,8])]),["DISK_THM"]),
       [read"%52%29%52%38%134%60%55$1@$0@@$1@@|@|@"])
  fun op LT_ADD2 x = x
    val op LT_ADD2 =
    DT(((("integer",5),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",[25,36,43,54,58,63,96,101,104,105]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%52%32%52%35%52%41%52%44%67%58%60$3@$1@@%60$2@$0@@@%60%55$3@$2@@%55$1@$0@@@|@|@|@|@"])
  fun op TINT_EQ_REFL x = x
    val op TINT_EQ_REFL =
    DT(((("integer",13),
        [("bool",[25,56]),("integer",[12]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%129$0@$0@|@"])
  fun op TINT_EQ_SYM x = x
    val op TINT_EQ_SYM =
    DT(((("integer",14),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,52,54,58,63,93,96,104,105,107]),("integer",[12]),
         ("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%30%53%39%62%129$1@$0@@%129$0@$1@@|@|@"])
  fun op TINT_EQ_TRANS x = x
    val op TINT_EQ_TRANS =
    DT(((("integer",15),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105]),("integer",[12]),
         ("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%30%53%39%53%48%67%58%129$2@$1@@%129$1@$0@@@%129$2@$0@@|@|@|@"])
  fun op TINT_EQ_EQUIV x = x
    val op TINT_EQ_EQUIV =
    DT(((("integer",16),
        [("bool",[14,25,26,53,58,63]),
         ("integer",[13,14,15])]),["DISK_THM"]),
       [read"%53%17%53%20%62%129$1@$0@@%63%129$1@@%129$0@@@|@|@"])
  fun op TINT_EQ_AP x = x
    val op TINT_EQ_AP =
    DT(((("integer",17),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105]),("integer",[12]),
         ("numeral",[3,8]),("pair",[3,7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%17%53%20%67%66$1@$0@@%129$1@$0@@|@|@"])
  fun op TINT_10 x = x
    val op TINT_10 =
    DT(((("integer",18),
        [("arithmetic",[172,173]),("bool",[25,54,63,104,105]),
         ("integer",[6,7,12]),("numeral",[0,3,5,8])]),["DISK_THM"]),
       [read"%134%129%127@%126@@"])
  fun op TINT_ADD_SYM x = x
    val op TINT_ADD_SYM =
    DT(((("integer",19),
        [("arithmetic",[24,25,27,71,173,177,180]),
         ("bool",[25,36,52,54,58,63,93,96,104]),("integer",[9]),
         ("numeral",[3,8]),("pair",[3,7])]),["DISK_THM"]),
       [read"%53%30%53%39%66%128$1@$0@@%128$0@$1@@|@|@"])
  fun op TINT_MUL_SYM x = x
    val op TINT_MUL_SYM =
    DT(((("integer",20),
        [("arithmetic",[26,72,91]),("bool",[25,51,56]),("integer",[10]),
         ("pair",[3,7])]),["DISK_THM"]),
       [read"%53%30%53%39%66%131$1@$0@@%131$0@$1@@|@|@"])
  fun op TINT_ADD_ASSOC x = x
    val op TINT_ADD_ASSOC =
    DT(((("integer",21),
        [("arithmetic",[27]),("bool",[25,51,56]),("integer",[9]),
         ("pair",[3,7])]),["DISK_THM"]),
       [read"%53%30%53%39%53%48%66%128$2@%128$1@$0@@@%128%128$2@$1@@$0@@|@|@|@"])
  fun op TINT_MUL_ASSOC x = x
    val op TINT_MUL_ASSOC =
    DT(((("integer",22),
        [("arithmetic",[26,27,74,75,76,91]),("bool",[25,51,56,58]),
         ("integer",[10]),("pair",[3,7])]),["DISK_THM"]),
       [read"%53%30%53%39%53%48%66%131$2@%131$1@$0@@@%131%131$2@$1@@$0@@|@|@|@"])
  fun op TINT_LDISTRIB x = x
    val op TINT_LDISTRIB =
    DT(((("integer",23),
        [("arithmetic",[25,27,75]),("bool",[25,51,56,63]),
         ("integer",[0,9,10]),("pair",[3,7])]),["DISK_THM"]),
       [read"%53%30%53%39%53%48%66%131$2@%128$1@$0@@@%128%131$2@$1@@%131$2@$0@@@|@|@|@"])
  fun op TINT_ADD_LID x = x
    val op TINT_ADD_LID =
    DT(((("integer",24),
        [("arithmetic",[25,27,71,173,177,180]),
         ("bool",[25,36,52,54,58,63,104]),("integer",[6,9,12]),
         ("numeral",[3,5,8]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%129%128%126@$0@@$0@|@"])
  fun op TINT_MUL_LID x = x
    val op TINT_MUL_LID =
    DT(((("integer",25),
        [("arithmetic",[24,25,27,71,74,173,177,180]),
         ("bool",[25,36,52,54,58,63,104]),("integer",[7,10,12]),
         ("numeral",[3,5,8]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%129%131%127@$0@@$0@|@"])
  fun op TINT_ADD_LINV x = x
    val op TINT_ADD_LINV =
    DT(((("integer",26),
        [("arithmetic",[25,27,71,173,177,180]),
         ("bool",[25,36,52,54,58,63,104]),("integer",[6,8,9,12]),
         ("numeral",[3,5,8]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%129%128%132$0@@$0@@%126@|@"])
  fun op TINT_LT_TOTAL x = x
    val op TINT_LT_TOTAL =
    DT(((("integer",27),
        [("arithmetic",[24,25,27,46,59,71,93,173,177,180]),
         ("bool",[25,36,52,54,58,63,96,104,105]),("integer",[11,12]),
         ("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%30%53%39%101%129$1@$0@@%101%130$1@$0@@%130$0@$1@@@|@|@"])
  fun op TINT_LT_REFL x = x
    val op TINT_LT_REFL =
    DT(((("integer",28),
        [("arithmetic",[24,25,27,41,71,173,180]),
         ("bool",[25,36,54,58,63,104]),("integer",[11]),("numeral",[3,8]),
         ("pair",[7])]),["DISK_THM"]), [read"%53%30%134%130$0@$0@@|@"])
  fun op TINT_LT_TRANS x = x
    val op TINT_LT_TRANS =
    DT(((("integer",29),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",[25,36,43,54,58,63,96,101,104,105]),("integer",[11]),
         ("numeral",[3,5,8]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%53%39%53%48%67%58%130$2@$1@@%130$1@$0@@@%130$2@$0@@|@|@|@"])
  fun op TINT_LT_ADD x = x
    val op TINT_LT_ADD =
    DT(((("integer",30),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",[25,36,54,58,63,96,101,104,105]),("integer",[9,11]),
         ("numeral",[3,8]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%53%39%53%48%67%130$1@$0@@%130%128$2@$1@@%128$2@$0@@@|@|@|@"])
  fun op TINT_LT_MUL x = x
    val op TINT_LT_MUL =
    DT(((("integer",31),
        [("arithmetic",[24,25,26,27,46,59,69,70,71,73,74,75,93,101,173]),
         ("bool",[25,36,54,58,63,104]),("integer",[2,6,10,11]),
         ("numeral",[3,5,8]),("pair",[7])]),["DISK_THM"]),
       [read"%53%30%53%39%67%58%130%126@$1@@%130%126@$0@@@%130%126@%131$1@$0@@@|@|@"])
  fun op TINT_NEG_WELLDEF x = x
    val op TINT_NEG_WELLDEF =
    DT(((("integer",32),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105]),("integer",[8,12]),
         ("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%33%53%36%67%129$1@$0@@%129%132$1@@%132$0@@@|@|@"])
  fun op TINT_ADD_WELLDEFR x = x
    val op TINT_ADD_WELLDEFR =
    DT(((("integer",33),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105]),("integer",[9,12]),
         ("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%33%53%36%53%39%67%129$2@$1@@%129%128$2@$0@@%128$1@$0@@@|@|@|@"])
  fun op TINT_ADD_WELLDEF x = x
    val op TINT_ADD_WELLDEF =
    DT(((("integer",34),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105]),("integer",[9,12]),
         ("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%33%53%36%53%42%53%45%67%58%129$3@$2@@%129$1@$0@@@%129%128$3@$1@@%128$2@$0@@@|@|@|@|@"])
  fun op TINT_MUL_WELLDEFR x = x
    val op TINT_MUL_WELLDEFR =
    DT(((("integer",35),
        [("arithmetic",[25,27,74]),("bool",[25,58,63]),("integer",[10,12]),
         ("pair",[7])]),["DISK_THM"]),
       [read"%53%33%53%36%53%39%67%129$2@$1@@%129%131$2@$0@@%131$1@$0@@@|@|@|@"])
  fun op TINT_MUL_WELLDEF x = x
    val op TINT_MUL_WELLDEF =
    DT(((("integer",36),
        [("bool",[25,63]),("integer",[15,20,35])]),["DISK_THM"]),
       [read"%53%33%53%36%53%42%53%45%67%58%129$3@$2@@%129$1@$0@@@%129%131$3@$1@@%131$2@$0@@@|@|@|@|@"])
  fun op TINT_LT_WELLDEFR x = x
    val op TINT_LT_WELLDEFR =
    DT(((("integer",37),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,180]),
         ("bool",[25,36,43,52,54,58,63,93,96,101,104,105,107]),
         ("integer",[11,12]),("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%33%53%36%53%39%67%129$2@$1@@%62%130$2@$0@@%130$1@$0@@@|@|@|@"])
  fun op TINT_LT_WELLDEFL x = x
    val op TINT_LT_WELLDEFL =
    DT(((("integer",38),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,180]),
         ("bool",[25,36,43,52,54,58,63,93,96,101,104,105,107]),
         ("integer",[11,12]),("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%30%53%42%53%45%67%129$1@$0@@%62%130$2@$1@@%130$2@$0@@@|@|@|@"])
  fun op TINT_LT_WELLDEF x = x
    val op TINT_LT_WELLDEF =
    DT(((("integer",39),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,180]),
         ("bool",[25,36,43,52,54,58,63,93,96,101,104,105,107]),
         ("integer",[11,12]),("numeral",[3,8]),("pair",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%33%53%36%53%42%53%45%67%58%129$3@$2@@%129$1@$0@@@%62%130$3@$1@@%130$2@$0@@@|@|@|@|@"])
  fun op tint_of_num_eq x = x
    val op tint_of_num_eq =
    DT(((("integer",41),
        [("arithmetic",[22,25,26,27,71,173,177,180]),
         ("bool",[14,25,36,52,54,56,58,63,104]),("integer",[6,7,9,40]),
         ("num",[9]),("numeral",[0,3,5,8]),
         ("pair",[7,8,9])]),["DISK_THM"]),
       [read"%52%14%65%86%133$0@@@%55%95%133$0@@@$0@@|@"])
  fun op TINT_INJ x = x
    val op TINT_INJ =
    DT(((("integer",42),
        [("arithmetic",[24,25,26,27,46,71,91,93,172,173,177,180]),
         ("bool",[14,25,26,27,36,52,53,54,56,58,63,93,96,104,105,107,124]),
         ("integer",[6,7,9,12,40,41]),("num",[9]),("numeral",[0,3,5,8]),
         ("pair",[7]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%12%52%14%62%129%133$1@@%133$0@@@%65$1@$0@@|@|@"])
  fun op NUM_POSTINT_EX x = x
    val op NUM_POSTINT_EX =
    DT(((("integer",43),
        [("arithmetic",
         [24,25,26,27,46,59,71,88,91,93,172,173,177,180,269]),
         ("bool",[25,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("integer",[6,11,12,41]),("numeral",[3,8]),("pair",[7,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%53%26%67%134%130$0@%126@@@%70%14%129$1@%133$0@@|@@|@"])
  fun op int_ABS_REP_CLASS x = x
    val op int_ABS_REP_CLASS =
    DT(((("integer",46),[("integer",[45])]),["DISK_THM"]),
       [read"%58%51%3%64%106%108$0@@@$0@|@@%50%5%62%71%23%58%129$0@$0@@%63$1@%129$0@@@|@@%63%108%106$0@@@$0@@|@@"])
  fun op int_QUOTIENT x = x
    val op int_QUOTIENT =
    DT(((("integer",49),
        [("bool",[15,25,26,51,53,56,58,63,105]),("integer",[16,46,47,48]),
         ("quotient",[0,1,2,3])]),["DISK_THM"]),
       [read"%94%129@%105@%107@"])
  fun op int_of_num x = x
    val op int_of_num =
    DT(((("integer",70),
        [("bool",[14,26,58,105]),("integer",[16,17,34,40,49,50,51,53,56]),
         ("quotient",[0,12,13,20,22,38,39,47,63])]),["DISK_THM"]),
       [read"%58%64%122%59@@%103@@%52%14%64%122%96$0@@@%109%122$0@@%104@@|@@"])
  fun op INT_INJ x = x
    val op INT_INJ =
    DT(((("integer",166),
        [("arithmetic",[95,106]),("bool",[25,26,51,56,58,63]),
         ("integer",[115,164])]),["DISK_THM"]),
       [read"%52%12%52%14%62%64%122$1@@%122$0@@@%65$1@$0@@|@|@"])
  fun op INT_ADD x = x
    val op INT_ADD =
    DT(((("integer",167),
        [("arithmetic",[0]),("bool",[14,25,36,53,56,58,63,105]),
         ("combin",[19]),("integer",[16,17,19,21,34,49,53,79,162]),
         ("num",[9]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%52%12%52%14%64%109%122$1@@%122$0@@@%122%55$1@$0@@@|@|@"])
  fun op INT_MUL x = x
    val op INT_MUL =
    DT(((("integer",168),
        [("arithmetic",[71]),("bool",[14,25,36,56,58]),
         ("integer",[83,85,93,162,167]),("num",[9])]),["DISK_THM"]),
       [read"%52%12%52%14%64%120%122$1@@%122$0@@@%122%54$1@$0@@@|@|@"])
  fun op INT_LT_NZ x = x
    val op INT_LT_NZ =
    DT(((("integer",169),
        [("bool",[25,26,27,30,51,54,56,58,63]),
         ("integer",[110,163])]),["DISK_THM"]),
       [read"%52%14%62%134%64%122$0@@%122%59@@@@%116%122%59@@%122$0@@@|@"])
  fun op INT_NZ_IMP_LT x = x
    val op INT_NZ_IMP_LT =
    DT(((("integer",170),
        [("bool",[25,53,58]),("integer",[166,169])]),["DISK_THM"]),
       [read"%52%14%67%134%65$0@%59@@@%116%122%59@@%122$0@@@|@"])
  fun op INT_DOUBLE x = x
    val op INT_DOUBLE =
    DT(((("integer",171),
        [("arithmetic",[18]),("bool",[25,56]),
         ("integer",[83,85,162])]),["DISK_THM"]),
       [read"%51%28%64%109$0@$0@@%120%122%91%78%100@@@@$0@@|@"])
  fun op INT_SUB_SUB x = x
    val op INT_SUB_SUB =
    DT(((("integer",172),
        [("bool",[25,53,56,58,63,105]),("combin",[19]),
         ("integer",[16,17,19,21,34,49,53,73,79,81]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125%125$1@$0@@$1@@%121$0@@|@|@"])
  fun op INT_LT_ADD_SUB x = x
    val op INT_LT_ADD_SUB =
    DT(((("integer",173),
        [("bool",[25,56]),("integer",[100,137])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116%109$2@$1@@$0@@%116$2@%125$0@$1@@@|@|@|@"])
  fun op INT_LT_SUB_RADD x = x
    val op INT_LT_SUB_RADD =
    DT(((("integer",174),
        [("bool",[25,56]),("integer",[100,137])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116%125$2@$1@@$0@@%116$2@%109$0@$1@@@|@|@|@"])
  fun op INT_LT_SUB_LADD x = x
    val op INT_LT_SUB_LADD =
    DT(((("integer",175),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,73,80,82,100]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%116$2@%125$1@$0@@@%116%109$2@$0@@$1@@|@|@|@"])
  fun op INT_LE_SUB_LADD x = x
    val op INT_LE_SUB_LADD =
    DT(((("integer",176),
        [("bool",[25,56,58]),("integer",[101,174])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%115$2@%125$1@$0@@@%115%109$2@$0@@$1@@|@|@|@"])
  fun op INT_LE_SUB_RADD x = x
    val op INT_LE_SUB_RADD =
    DT(((("integer",177),
        [("bool",[25,56,58]),("integer",[101,175])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%115%125$2@$1@@$0@@%115$2@%109$0@$1@@@|@|@|@"])
  fun op INT_LT_NEG x = x
    val op INT_LT_NEG =
    DT(((("integer",178),
        [("bool",[25,53,56,58,105]),("combin",[19]),
         ("integer",[16,17,19,21,34,49,53,79,81,82,100]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%62%116%121$1@@%121$0@@@%116$0@$1@@|@|@"])
  fun op INT_LE_NEG x = x
    val op INT_LE_NEG =
    DT(((("integer",179),
        [("bool",[25,56,58]),("integer",[101,178])]),["DISK_THM"]),
       [read"%51%28%51%37%62%115%121$1@@%121$0@@@%115$0@$1@@|@|@"])
  fun op INT_ADD2_SUB2 x = x
    val op INT_ADD2_SUB2 =
    DT(((("integer",180),
        [("bool",[25,53,58,63,105]),("combin",[19]),
         ("integer",[16,17,19,21,34,49,53,73,92]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%3%51%4%51%6%51%7%64%125%109$3@$2@@%109$1@$0@@@%109%125$3@$1@@%125$2@$0@@@|@|@|@|@"])
  fun op INT_SUB_LZERO x = x
    val op INT_SUB_LZERO =
    DT(((("integer",181),
        [("bool",[25,56]),("integer",[73,79])]),["DISK_THM"]),
       [read"%51%28%64%125%122%59@@$0@@%121$0@@|@"])
  fun op INT_SUB_RZERO x = x
    val op INT_SUB_RZERO =
    DT(((("integer",182),
        [("bool",[25,56]),("integer",[73,80,145])]),["DISK_THM"]),
       [read"%51%28%64%125$0@%122%59@@@$0@|@"])
  fun op INT_LET_ADD2 x = x
    val op INT_LET_ADD2 =
    DT(((("integer",183),
        [("bool",[25,51,63]),("integer",[99,112,129])]),["DISK_THM"]),
       [read"%51%27%51%28%51%37%51%46%67%58%115$3@$2@@%116$1@$0@@@%116%109$3@$1@@%109$2@$0@@@|@|@|@|@"])
  fun op INT_LTE_ADD2 x = x
    val op INT_LTE_ADD2 =
    DT(((("integer",184),
        [("bool",[25,41,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,183]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%27%51%28%51%37%51%46%67%58%116$3@$2@@%115$1@$0@@@%116%109$3@$1@@%109$2@$0@@@|@|@|@|@"])
  fun op INT_LET_ADD x = x
    val op INT_LET_ADD =
    DT(((("integer",185),
        [("bool",[25,51,63]),("integer",[79,183])]),["DISK_THM"]),
       [read"%51%28%51%37%67%58%115%122%59@@$1@@%116%122%59@@$0@@@%116%122%59@@%109$1@$0@@@|@|@"])
  fun op INT_LTE_ADD x = x
    val op INT_LTE_ADD =
    DT(((("integer",186),
        [("bool",[25,51,63]),("integer",[79,184])]),["DISK_THM"]),
       [read"%51%28%51%37%67%58%116%122%59@@$1@@%115%122%59@@$0@@@%116%122%59@@%109$1@$0@@@|@|@"])
  fun op INT_LT_MUL2 x = x
    val op INT_LT_MUL2 =
    DT(((("integer",187),
        [("bool",[25,51,53,56,58,63,105]),("combin",[19]),
         ("integer",
         [16,17,19,21,31,34,36,39,49,50,53,54,55,73,77,79,81,111,113,124,
          147,150,151,186]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%31%51%34%51%40%51%43%67%58%115%122%59@@$3@@%58%115%122%59@@$1@@%58%116$3@$2@@%116$1@$0@@@@@%116%120$3@$1@@%120$2@$0@@@|@|@|@|@"])
  fun op INT_SUB_LNEG x = x
    val op INT_SUB_LNEG =
    DT(((("integer",188),
        [("bool",[25,56]),("integer",[73,92])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125%121$1@@$0@@%121%109$1@$0@@@|@|@"])
  fun op INT_SUB_RNEG x = x
    val op INT_SUB_RNEG =
    DT(((("integer",189),
        [("bool",[25,56]),("integer",[73,97])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125$1@%121$0@@@%109$1@$0@@|@|@"])
  fun op INT_SUB_NEG2 x = x
    val op INT_SUB_NEG2 =
    DT(((("integer",190),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,19,34,49,53,73,92,97,188]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125%121$1@@%121$0@@@%125$0@$1@@|@|@"])
  fun op INT_SUB_TRIANGLE x = x
    val op INT_SUB_TRIANGLE =
    DT(((("integer",191),
        [("bool",[25,53,56,58,63,105]),("combin",[19]),
         ("integer",[16,17,19,21,34,49,53,73,79,81]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%3%51%4%51%6%64%109%125$2@$1@@%125$1@$0@@@%125$2@$0@@|@|@|@"])
  fun op INT_EQ_SUB_LADD x = x
    val op INT_EQ_SUB_LADD =
    DT(((("integer",192),
        [("bool",[25,56]),("integer",[87,137])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%64$2@%125$1@$0@@@%64%109$2@$0@@$1@@|@|@|@"])
  fun op INT_EQ_SUB_RADD x = x
    val op INT_EQ_SUB_RADD =
    DT(((("integer",193),[("bool",[58]),("integer",[192])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%62%64%125$2@$1@@$0@@%64$2@%109$0@$1@@@|@|@|@"])
  fun op INT_SUB x = x
    val op INT_SUB =
    DT(((("integer",194),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,269]),
         ("bool",[25,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("integer",[166,167,193]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%14%52%12%67%61$0@$1@@%64%125%122$1@@%122$0@@@%122%57$1@$0@@@@|@|@"])
  fun op INT_SUB_SUB2 x = x
    val op INT_SUB_SUB2 =
    DT(((("integer",195),
        [("bool",[25,56,58]),("integer",[97,146,172])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125$1@%125$1@$0@@@$0@|@|@"])
  fun op INT_ADD_SUB2 x = x
    val op INT_ADD_SUB2 =
    DT(((("integer",196),
        [("bool",[25,56,58]),("integer",[146,149])]),["DISK_THM"]),
       [read"%51%28%51%37%64%125$1@%109$1@$0@@@%121$0@@|@|@"])
  fun op INT_EQ_LMUL2 x = x
    val op INT_EQ_LMUL2 =
    DT(((("integer",197),
        [("bool",[26,27,52]),("integer",[160])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%134%64$2@%122%59@@@@%62%64$1@$0@@%64%120$2@$1@@%120$2@$0@@@@|@|@|@"])
  fun op INT_EQ_IMP_LE x = x
    val op INT_EQ_IMP_LE =
    DT(((("integer",198),[("integer",[108])]),["DISK_THM"]),
       [read"%51%28%51%37%67%64$1@$0@@%115$1@$0@@|@|@"])
  fun op INT_POS_NZ x = x
    val op INT_POS_NZ =
    DT(((("integer",199),[("bool",[58]),("integer",[154])]),["DISK_THM"]),
       [read"%51%28%67%116%122%59@@$0@@%134%64$0@%122%59@@@@|@"])
  fun op INT_EQ_RMUL_IMP x = x
    val op INT_EQ_RMUL_IMP =
    DT(((("integer",200),
        [("bool",[25,26,27,52,53]),("integer",[161])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%134%64$0@%122%59@@@@%64%120$2@$0@@%120$1@$0@@@@%64$2@$1@@|@|@|@"])
  fun op INT_EQ_LMUL_IMP x = x
    val op INT_EQ_LMUL_IMP =
    DT(((("integer",201),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("integer",[16,17,20,36,49,54,200]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%134%64$2@%122%59@@@@%64%120$2@$1@@%120$2@$0@@@@%64$1@$0@@|@|@|@"])
  fun op INT_DIFFSQ x = x
    val op INT_DIFFSQ =
    DT(((("integer",202),
        [("bool",[25,53,58,63,105]),("combin",[19]),
         ("integer",[16,17,19,20,21,23,34,36,49,53,54,73,85,88,90,96]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%28%51%37%64%120%109$1@$0@@%125$1@$0@@@%125%120$1@$1@@%120$0@$0@@@|@|@"])
  fun op INT_POASQ x = x
    val op INT_POASQ =
    DT(((("integer",203),
        [("bool",[25,26,52,53,58,63]),
         ("integer",[93,104,108,115,125,159])]),["DISK_THM"]),
       [read"%51%28%62%116%122%59@@%120$0@$0@@@%134%64$0@%122%59@@@@|@"])
  fun op INT_SUMSQ x = x
    val op INT_SUMSQ =
    DT(((("integer",204),
        [("bool",[25,26,27,51,54,56,63,96]),
         ("integer",[80,93,125,185,186,199,203])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%109%120$1@$1@@%120$0@$0@@@%122%59@@@%58%64$1@%122%59@@@%64$0@%122%59@@@@|@|@"])
  fun op INT_EQ_NEG x = x
    val op INT_EQ_NEG =
    DT(((("integer",205),
        [("bool",[41,58]),("integer",[115,179])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%121$1@@%121$0@@@%64$1@$0@@|@|@"])
  fun op INT_LT_CALCULATE x = x
    val op INT_LT_CALCULATE =
    DT(((("integer",206),
        [("arithmetic",[41,46,59,71,79,93,172,173,177,180]),
         ("bool",[14,25,26,27,36,43,51,52,54,56,58,63,93,96,104,105,107]),
         ("integer",[73,92,119,135,145,162,165,167,173,178]),("num",[9]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%14%52%12%58%62%116%122$1@@%122$0@@@%60$1@$0@@@%58%62%116%121%122$1@@@%121%122$0@@@@%60$0@$1@@@%58%62%116%121%122$1@@@%122$0@@@%101%134%65$1@%59@@@%134%65$0@%59@@@@@%62%116%122$1@@%121%122$0@@@@%84@@@@|@|@"])
  fun op NUM_POSINT x = x
    val op NUM_POSINT =
    DT(((("integer",207),
        [("bool",[7,14,25,26,53,58,63,105]),("combin",[19]),
         ("integer",[16,39,43,49,50,55,56,74,77,166]),
         ("quotient",
         [0,12,13,20,22,38,39,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%8%67%115%122%59@@$0@@%72%14%64$1@%122$0@@|@@|@"])
  fun op NUM_POSINT_EXISTS x = x
    val op NUM_POSINT_EXISTS =
    DT(((("integer",208),
        [("bool",
         [7,25,26,47,48,53,54,58,63,71,72,75,78,80,84,93,94,105,124,146]),
         ("integer",[207]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%67%115%122%59@@$0@@%70%14%64$1@%122$0@@|@@|@"])
  fun op NUM_NEGINT_EXISTS x = x
    val op NUM_NEGINT_EXISTS =
    DT(((("integer",209),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,63,71,72,78,93,94,96,146]),
         ("integer",[120,152,208]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%8%67%115$0@%122%59@@@%70%14%64$1@%121%122$0@@@|@@|@"])
  fun op INT_NUM_CASES x = x
    val op INT_NUM_CASES =
    DT(((("integer",210),
        [("arithmetic",[147]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,78,93,94,96,143,
          146]),("integer",[104,109,121,164,166,205,208,209]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%101%70%14%58%64$1@%122$0@@@%134%65$0@%59@@@|@@%101%70%14%58%64$1@%121%122$0@@@@%134%65$0@%59@@@|@@%64$0@%122%59@@@@|@"])
  fun op INT_DISCRETE x = x
    val op INT_DISCRETE =
    DT(((("integer",211),
        [("arithmetic",
         [24,25,26,39,41,46,59,64,71,93,173,176,177,180,200]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,76,77,93,
          94,96,101,104,105,146]),
         ("integer",[73,92,97,165,167,178,194,206,210]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%28%51%37%134%58%116$1@$0@@%116$0@%109$1@%122%91%77%100@@@@@@@|@|@"])
  fun op INT_LE_LT1 x = x
    val op INT_LE_LT1 =
    DT(((("integer",212),
        [("bool",[25,26,47,48,53,54,58,63,96,105,106]),("combin",[19]),
         ("integer",[16,29,39,49,55,74,109,157,165,211]),("numeral",[3,7]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%62%115%28@%37@@%116%28@%109%37@%122%91%77%100@@@@@@"])
  fun op INT_LT_LE1 x = x
    val op INT_LT_LE1 =
    DT(((("integer",213),
        [("bool",[25,56]),("integer",[100,212])]),["DISK_THM"]),
       [read"%62%116%28@%37@@%115%109%28@%122%91%77%100@@@@@%37@@"])
  fun op INT_MUL_EQ_1 x = x
    val op INT_MUL_EQ_1 =
    DT(((("integer",214),
        [("arithmetic",[46,67,71,79,93,148,149,172,173,177,180]),
         ("bool",[14,25,26,27,36,51,52,54,56,58,63,93,96,104,105,107]),
         ("integer",
         [73,92,93,95,96,97,145,152,162,166,167,168,192,205,210]),
         ("num",[9]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%28%51%37%62%64%120$1@$0@@%122%91%77%100@@@@@%101%58%64$1@%122%91%77%100@@@@@%64$0@%122%91%77%100@@@@@@%58%64$1@%121%122%91%77%100@@@@@@%64$0@%121%122%91%77%100@@@@@@@@|@|@"])
  fun op NUM_OF_INT x = x
    val op NUM_OF_INT =
    DT(((("integer",216),
        [("bool",[25,56,58,67]),("integer",[166,215])]),["DISK_THM"]),
       [read"%52%14%65%92%122$0@@@$0@|@"])
  fun op INT_OF_NUM x = x
    val op INT_OF_NUM =
    DT(((("integer",217),
        [("bool",[7,14,15,26,58]),
         ("integer",[163,207,215])]),["DISK_THM"]),
       [read"%51%8%62%64%122%92$0@@@$0@@%115%122%59@@$0@@|@"])
  fun op LE_NUM_OF_INT x = x
    val op LE_NUM_OF_INT =
    DT(((("integer",218),
        [("bool",[25,53,54,63]),("integer",[114,163,164,217]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%52%14%51%8%67%115%122$1@@$0@@%61$1@%92$0@@@|@|@"])
  fun op INT_DIV x = x
    val op INT_DIV =
    DT(((("integer",220),
        [("arithmetic",[46,59,71,93,173,176,177,180]),
         ("bool",
         [25,26,27,36,52,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("integer",[164,165,166,216,219]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%14%52%12%67%134%65$0@%59@@@%64%110%122$1@@%122$0@@@%122%81$1@$0@@@@|@|@"])
  fun op INT_DIV_NEG x = x
    val op INT_DIV_NEG =
    DT(((("integer",221),
        [("arithmetic",[46,59,71,93,147,173,176,177,180,217,220]),
         ("bool",
         [25,26,27,36,52,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("integer",[80,97,119,120,121,145,152,164,165,166,210,216,219]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%15%51%18%67%134%64$0@%122%59@@@@%64%110$1@%121$0@@@%110%121$1@@$0@@@|@|@"])
  fun op INT_DIV_1 x = x
    val op INT_DIV_1 =
    DT(((("integer",222),
        [("arithmetic",[17,46,71,93,147,172,173,177,180,211,231,232]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,72,78,94,96,104,
          105,108,109,111,129,146]),
         ("integer",
         [80,97,104,109,121,145,152,164,165,166,208,209,216,219,220]),
         ("numeral",[3,8]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%64%110$0@%122%91%77%100@@@@@$0@|@"])
  fun op INT_DIV_0 x = x
    val op INT_DIV_0 =
    DT(((("integer",223),
        [("arithmetic",[29,220]),("bool",[25,26,27,53,54,56,58,105,124]),
         ("integer",[144,145,166,210,220,221])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%64%110%122%59@@$0@@%122%59@@@|@"])
  fun op INT_DIV_ID x = x
    val op INT_DIV_ID =
    DT(((("integer",224),
        [("arithmetic",[29,41,46,71,93,172,180,233]),
         ("bool",
         [25,26,27,30,36,43,47,48,53,54,56,58,63,64,72,78,94,96,101,104,
          105,124,129,146]),
         ("integer",[97,104,109,119,144,165,166,208,209,216,219,220]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%67%134%64$0@%122%59@@@@%64%110$0@$0@@%122%91%77%100@@@@@|@"])
  fun op INT_MOD_BOUNDS x = x
    val op INT_MOD_BOUNDS =
    DT(((("integer",226),
        [("arithmetic",
         [22,24,25,26,27,29,41,46,59,69,71,73,88,93,95,147,172,173,176,177,
          180,184,209]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,73,84,93,94,96,
          101,104,105,107,129]),
         ("integer",
         [59,73,79,80,85,92,93,95,96,97,118,121,144,145,148,164,165,166,
          167,168,174,175,177,179,181,190,210,216,219,220,221,223,225]),
         ("marker",[6]),("numeral",[3,5,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%67%134%64$0@%122%59@@@@%79%116$0@%122%59@@@%58%116$0@%119$1@$0@@@%115%119$1@$0@@%122%59@@@@%58%115%122%59@@%119$1@$0@@@%116%119$1@$0@@$0@@@@|@|@"])
  fun op INT_DIVISION x = x
    val op INT_DIVISION =
    DT(((("integer",227),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,73,93,94,96,105,109,
          111]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,59,73,192,225,226]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%51%15%58%64$0@%109%120%110$0@$1@@$1@@%119$0@$1@@@@%79%116$1@%122%59@@@%58%116$1@%119$0@$1@@@%115%119$0@$1@@%122%59@@@@%58%115%122%59@@%119$0@$1@@@%116%119$0@$1@@$1@@@@|@@|@"])
  fun op INT_MOD x = x
    val op INT_MOD =
    DT(((("integer",228),
        [("arithmetic",[26,29,73,209]),
         ("bool",[25,26,27,47,48,53,54,58,63,71,73,84,94,105,124]),
         ("integer",[166,167,168,193,220,225]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%52%14%52%12%67%134%65$0@%59@@@%64%119%122$1@@%122$0@@@%122%90$1@$0@@@@|@|@"])
  fun op INT_MOD_NEG x = x
    val op INT_MOD_NEG =
    DT(((("integer",229),
        [("bool",[25,26,27,53,54,56,58,105,124]),
         ("integer",[73,92,96,97,144,166,210,221,225])]),["DISK_THM"]),
       [read"%51%15%51%18%67%134%64$0@%122%59@@@@%64%119$1@%121$0@@@%121%119%121$1@@$0@@@@|@|@"])
  fun op INT_MOD0 x = x
    val op INT_MOD0 =
    DT(((("integer",230),
        [("arithmetic",[46,59,71,93,173,177,180,219]),
         ("bool",
         [25,26,27,30,36,43,47,48,52,53,54,56,58,63,72,78,94,96,101,104,
          105,124,146]),("integer",[104,109,144,145,166,208,209,228,229]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%67%134%64$0@%122%59@@@@%64%119%122%59@@$0@@%122%59@@@|@"])
  fun op INT_DIV_MUL_ID x = x
    val op INT_DIV_MUL_ID =
    DT(((("integer",231),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,73,84,93,94,96,109,
          111]),("integer",[80,227]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%67%58%134%64$0@%122%59@@@@%64%119$1@$0@@%122%59@@@@%64%120%110$1@$0@@$0@@$1@@|@|@"])
  fun op INT_DIV_UNIQUE x = x
    val op INT_DIV_UNIQUE =
    DT(((("integer",232),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,60,62,71,73,77,93,99,129,155,172,173,176,
          177,180,189,198,200,209,214,216,218,226,227,269]),
         ("bool",
         [14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,72,78,83,84,
          93,94,96,100,101,104,105,107,124,129,146]),("combin",[19]),
         ("integer",
         [16,28,39,49,55,59,73,79,80,92,93,94,95,96,97,98,113,118,120,121,
          146,164,165,166,167,168,178,194,205,208,209,210,216,219,220,
          221]),("marker",[6]),("num",[9]),("numeral",[0,3,5,8]),
         ("prim_rec",[6]),("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%8%51%9%51%18%67%69%22%58%64$3@%109%120$1@$2@@$0@@@%79%116$2@%122%59@@@%58%116$2@$0@@%115$0@%122%59@@@@%58%115%122%59@@$0@@%116$0@$2@@@@|@@%64%110$2@$1@@$0@@|@|@|@"])
  fun op INT_MOD_UNIQUE x = x
    val op INT_MOD_UNIQUE =
    DT(((("integer",233),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,72,83,93,94,96,
          105,109,111,129]),("combin",[19]),
         ("integer",[16,28,39,49,55,113,149,225,232]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%51%9%51%11%67%69%18%58%64$3@%109%120$0@$2@@$1@@@%79%116$2@%122%59@@@%58%116$2@$1@@%115$1@%122%59@@@@%58%115%122%59@@$1@@%116$1@$2@@@@|@@%64%119$2@$1@@$0@@|@|@|@"])
  fun op INT_MOD_ID x = x
    val op INT_MOD_ID =
    DT(((("integer",234),
        [("bool",
         [5,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,129]),
         ("integer",[80,83,108,119,122,233]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%67%134%64$0@%122%59@@@@%64%119$0@$0@@%122%59@@@|@"])
  fun op INT_MOD_COMMON_FACTOR x = x
    val op INT_MOD_COMMON_FACTOR =
    DT(((("integer",235),
        [("bool",
         [5,13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,72,80,93,94,96,
          105,129]),("integer",[80,108,119,122,233]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%67%134%64$0@%122%59@@@@%51%18%64%119%120$0@$1@@$1@@%122%59@@|@@|@"])
  fun op INT_DIV_LMUL x = x
    val op INT_DIV_LMUL =
    DT(((("integer",236),
        [("bool",
         [5,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,129]),
         ("integer",[61,80,108,119,122,232]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%51%9%67%134%64$1@%122%59@@@@%64%110%120$1@$0@@$1@@$0@@|@|@"])
  fun op INT_DIV_RMUL x = x
    val op INT_DIV_RMUL =
    DT(((("integer",237),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("integer",[61,236]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%51%9%67%134%64$1@%122%59@@@@%64%110%120$0@$1@@$1@@$0@@|@|@"])
  fun op INT_MOD_EQ0 x = x
    val op INT_MOD_EQ0 =
    DT(((("integer",238),
        [("bool",
         [5,13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,72,93,94,96,105,
          109,111,129,143]),("integer",[80,108,119,122,161,227,233]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%51%15%62%64%119$0@$1@@%122%59@@@%69%10%64$1@%120$0@$2@@|@@|@@|@"])
  fun op INT_MUL_DIV x = x
    val op INT_MUL_DIV =
    DT(((("integer",239),
        [("bool",
         [5,13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,72,74,78,81,84,93,
          94,96,105,129,146]),("combin",[19]),
         ("integer",[16,17,22,36,49,54,80,108,119,122,232,237,238]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%51%10%67%58%134%64$1@%122%59@@@@%64%119$2@$1@@%122%59@@@@%64%110%120$0@$2@@$1@@%120$0@%110$2@$1@@@@|@|@|@"])
  fun op INT_ADD_DIV x = x
    val op INT_ADD_DIV =
    DT(((("integer",240),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,73,74,78,81,84,
          93,94,96,105,109,111,146]),("combin",[19]),
         ("integer",[16,17,21,34,49,53,59,85,86,87,227,232,237,238]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%51%9%51%10%67%58%134%64$0@%122%59@@@@%101%64%119$2@$0@@%122%59@@@%64%119$1@$0@@%122%59@@@@@%64%110%109$2@$1@@$0@@%109%110$2@$0@@%110$1@$0@@@@|@|@|@"])
  fun op INT_MOD_ADD_MULTIPLES x = x
    val op INT_MOD_ADD_MULTIPLES =
    DT(((("integer",241),
        [("bool",[25,51,53,54,55,56,58,63,83,99,100,105,124]),
         ("combin",[19]),
         ("integer",[16,17,21,27,28,29,34,39,49,53,55,85,112,113,227,233]),
         ("marker",[6]),("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%67%134%64%10@%122%59@@@@%64%119%109%120%18@%10@@%22@@%10@@%119%22@%10@@@"])
  fun op INT_MOD_NEG_NUMERATOR x = x
    val op INT_MOD_NEG_NUMERATOR =
    DT(((("integer",242),
        [("bool",[25,53,54,55,63]),("integer",[73,83,241]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%67%134%64%10@%122%59@@@@%64%119%121%28@@%10@@%119%125%10@%28@@%10@@@"])
  fun op INT_MOD_PLUS x = x
    val op INT_MOD_PLUS =
    DT(((("integer",243),
        [("bool",[25,26,27,53,54,55,56,58,63,83,99,100,105,170]),
         ("combin",[19]),("integer",[16,17,21,34,49,53,59,227,241]),
         ("marker",[6,8]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%67%134%64%10@%122%59@@@@%64%119%109%119%8@%10@@%119%9@%10@@@%10@@%119%109%8@%9@@%10@@@"])
  fun op INT_MOD_SUB x = x
    val op INT_MOD_SUB =
    DT(((("integer",244),
        [("bool",[25,26,27,53,54,55,56,58,63,83,99,100,105,170]),
         ("combin",[19]),
         ("integer",[16,17,21,34,49,53,59,73,92,95,227,241]),
         ("marker",[6,8]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%67%134%64%10@%122%59@@@@%64%119%125%119%8@%10@@%119%9@%10@@@%10@@%119%125%8@%9@@%10@@@"])
  fun op INT_MOD_MOD x = x
    val op INT_MOD_MOD =
    DT(((("integer",245),
        [("bool",[25,26,27,30,53,54,56,58,63,64,83,99,100]),
         ("integer",[79,93,227,233]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%67%134%64%10@%122%59@@@@%64%119%119%9@%10@@%10@@%119%9@%10@@@"])
  fun op INT_DIV_P x = x
    val op INT_DIV_P =
    DT(((("integer",246),
        [("bool",[25,26,53,54,55,58,63,83,84,99,100]),
         ("integer",[227,232]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%0%51%28%51%6%67%134%64$0@%122%59@@@@%62$2%110$1@$0@@@%69%10%69%22%58%64$3@%109%120$1@$2@@$0@@@%58%101%58%116$2@%122%59@@@%58%116$2@$0@@%115$0@%122%59@@@@@%58%134%116$2@%122%59@@@@%58%115%122%59@@$0@@%116$0@$2@@@@@$4$1@@@|@|@@@|@|@|@"])
  fun op INT_MOD_P x = x
    val op INT_MOD_P =
    DT(((("integer",247),
        [("bool",[25,26,53,54,55,58,63,83,84,99,100]),
         ("integer",[227,233]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%0%51%28%51%6%67%134%64$0@%122%59@@@@%62$2%119$1@$0@@@%69%10%69%22%58%64$3@%109%120$1@$2@@$0@@@%58%101%58%116$2@%122%59@@@%58%116$2@$0@@%115$0@%122%59@@@@@%58%134%116$2@%122%59@@@@%58%115%122%59@@$0@@%116$0@$2@@@@@$4$0@@@|@|@@@|@|@|@"])
  fun op INT_DIV_FORALL_P x = x
    val op INT_DIV_FORALL_P =
    DT(((("integer",248),
        [("bool",[25,26,53,54,55,58,63,83,84,99,100]),
         ("integer",[227,232]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%0%51%28%51%6%67%134%64$0@%122%59@@@@%62$2%110$1@$0@@@%51%10%51%22%67%58%64$3@%109%120$1@$2@@$0@@@%101%58%116$2@%122%59@@@%58%116$2@$0@@%115$0@%122%59@@@@@%58%134%116$2@%122%59@@@@%58%115%122%59@@$0@@%116$0@$2@@@@@@$4$1@@|@|@@@|@|@|@"])
  fun op INT_MOD_FORALL_P x = x
    val op INT_MOD_FORALL_P =
    DT(((("integer",249),
        [("bool",[25,26,53,54,55,58,63,83,84,99,100]),
         ("integer",[227,233]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%0%51%28%51%6%67%134%64$0@%122%59@@@@%62$2%119$1@$0@@@%51%18%51%22%67%58%64$3@%109%120$1@$2@@$0@@@%101%58%116$2@%122%59@@@%58%116$2@$0@@%115$0@%122%59@@@@@%58%134%116$2@%122%59@@@@%58%115%122%59@@$0@@%116$0@$2@@@@@@$4$0@@|@|@@@|@|@|@"])
  fun op INT_MOD_1 x = x
    val op INT_MOD_1 =
    DT(((("integer",250),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[25,26,27,36,51,54,56,58,63,104,105,129,147]),
         ("integer",[80,84,164,165,233]),("numeral",[3,7,8]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%51%8%64%119$0@%122%91%77%100@@@@@%122%59@@|@"])
  fun op INT_LESS_MOD x = x
    val op INT_LESS_MOD =
    DT(((("integer",251),
        [("bool",
         [5,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,129]),
         ("integer",[79,93,102,113,233]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%8%51%9%67%58%115%122%59@@$1@@%116$1@$0@@@%64%119$1@$0@@$1@@|@|@"])
  fun op INT_MOD_MINUS1 x = x
    val op INT_MOD_MINUS1 =
    DT(((("integer",252),
        [("bool",[25,26,27,30,47,48,53,54,56,58,63,64,96]),
         ("integer",
         [79,92,97,102,138,146,148,152,153,157,165,174,213,233]),
         ("numeral",[3,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%13%67%116%122%59@@$0@@%64%119%121%122%91%77%100@@@@@$0@@%125$0@%122%91%77%100@@@@@@|@"])
  fun op INT_ABS_POS x = x
    val op INT_ABS_POS =
    DT(((("integer",254),
        [("bool",[25,26,27,52,53,58,63,64,105,129]),("combin",[19]),
         ("integer",[16,28,39,49,55,103,108,109,119,122,145,253]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85])]),["DISK_THM"]),
       [read"%51%15%115%122%59@@%76$0@@|@"])
  fun op INT_ABS_NUM x = x
    val op INT_ABS_NUM =
    DT(((("integer",255),
        [("bool",[25,26,27,36,56,58,64,105,129]),
         ("integer",[101,163,253])]),["DISK_THM"]),
       [read"%52%14%64%76%122$0@@@%122$0@@|@"])
  fun op INT_NEG_SAME_EQ x = x
    val op INT_NEG_SAME_EQ =
    DT(((("integer",256),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("integer",[16,28,29,39,49,55,119,122,145]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%15%62%64$0@%121$0@@@%64$0@%122%59@@@|@"])
  fun op INT_ABS_NEG x = x
    val op INT_ABS_NEG =
    DT(((("integer",257),
        [("bool",
         [25,26,43,47,48,51,52,53,54,56,58,63,93,94,96,105,108,109,111,
          129]),("integer",[97,101,109,118,122,152,253,256]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%64%76%121$0@@@%76$0@@|@"])
  fun op INT_ABS_ABS x = x
    val op INT_ABS_ABS =
    DT(((("integer",258),
        [("bool",
         [25,26,27,30,47,48,53,54,56,58,63,64,72,78,94,105,129,146]),
         ("integer",[103,104,118,208,253,255]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%51%15%64%76%76$0@@@%76$0@@|@"])
  fun op INT_ABS_EQ_ID x = x
    val op INT_ABS_EQ_ID =
    DT(((("integer",259),
        [("arithmetic",[46,71,93,147,173,176,180]),
         ("bool",[25,36,54,56,63,104]),
         ("integer",[121,164,166,210,255,256,257]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%51%15%62%64%76$0@@$0@@%115%122%59@@$0@@|@"])
  fun op INT_ABS_MUL x = x
    val op INT_ABS_MUL =
    DT(((("integer",260),
        [("arithmetic",[67,73]),("bool",[25,56,58]),
         ("integer",[95,96,98,168,210,255,257])]),["DISK_THM"]),
       [read"%51%15%51%18%64%120%76$1@@%76$0@@@%76%120$1@$0@@@|@|@"])
  fun op INT_ABS_EQ0 x = x
    val op INT_ABS_EQ0 =
    DT(((("integer",261),
        [("bool",[25,56,63]),("integer",[144,210,255,257])]),["DISK_THM"]),
       [read"%51%15%62%64%76$0@@%122%59@@@%64$0@%122%59@@@|@"])
  fun op INT_ABS_LT0 x = x
    val op INT_ABS_LT0 =
    DT(((("integer",262),
        [("bool",[25,26,27,54]),("integer",[165,210,255,257]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%51%15%134%116%76$0@@%122%59@@@|@"])
  fun op INT_ABS_LE0 x = x
    val op INT_ABS_LE0 =
    DT(((("integer",263),
        [("arithmetic",[46,71,93,147,173,176,180]),
         ("bool",[25,26,27,36,54,56,63,104]),
         ("integer",[144,164,166,210,255,257]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%51%15%62%115%76$0@@%122%59@@@%64$0@%122%59@@@|@"])
  fun op INT_ABS_LT x = x
    val op INT_ABS_LT =
    DT(((("integer",264),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",[25,26,27,36,51,52,54,56,63,96,101,104,105]),
         ("integer",[97,118,119,145,206,210,255,257]),("numeral",[3,8]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%15%51%18%58%62%116%76$1@@$0@@%58%116$1@$0@@%116%121$0@@$1@@@@%58%62%116$0@%76$1@@@%101%116$0@$1@@%116$1@%121$0@@@@@%58%62%116%121%76$1@@@$0@@%101%116%121$0@@$1@@%116$1@$0@@@@%62%116$0@%121%76$1@@@@%58%116$1@%121$0@@@%116$0@$1@@@@@@|@|@"])
  fun op INT_ABS_LE x = x
    val op INT_ABS_LE =
    DT(((("integer",265),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",[25,26,27,36,51,52,54,56,63,96,101,104,105]),
         ("integer",[74,97,118,119,145,206,210,255,257]),("numeral",[3,8]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%15%51%18%58%62%115%76$1@@$0@@%58%115$1@$0@@%115%121$0@@$1@@@@%58%62%115$0@%76$1@@@%101%115$0@$1@@%115$1@%121$0@@@@@%58%62%115%121%76$1@@@$0@@%101%115%121$0@@$1@@%115$1@$0@@@@%62%115$0@%121%76$1@@@@%58%115$1@%121$0@@@%115$0@$1@@@@@@|@|@"])
  fun op INT_ABS_EQ x = x
    val op INT_ABS_EQ =
    DT(((("integer",266),
        [("arithmetic",[46,59,71,79,93,172,173,176,177,180]),
         ("bool",[14,25,26,27,36,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("integer",
         [73,92,97,104,145,152,162,164,166,167,192,205,206,210,255,257]),
         ("num",[9]),("numeral",[3,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%15%51%18%58%62%64%76$1@@$0@@%101%58%64$1@$0@@%116%122%59@@$0@@@%58%64$1@%121$0@@@%115%122%59@@$0@@@@@%62%64$0@%76$1@@@%101%58%64$1@$0@@%116%122%59@@$0@@@%58%64$1@%121$0@@@%115%122%59@@$0@@@@@|@|@"])
  fun op INT_QUOT x = x
    val op INT_QUOT =
    DT(((("integer",268),
        [("arithmetic",[46,59,71,93,173,176,177,180]),
         ("bool",
         [25,26,27,36,52,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("integer",[164,165,166,216,267]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%16%52%19%67%134%65$0@%59@@@%64%123%122$1@@%122$0@@@%122%81$1@$0@@@@|@|@"])
  fun op INT_QUOT_0 x = x
    val op INT_QUOT_0 =
    DT(((("integer",269),
        [("arithmetic",[29,46,71,93,173,176,180,220]),
         ("bool",[25,26,27,36,53,54,56,58,63,64,104,105,124,129]),
         ("integer",[97,119,144,164,165,166,210,216,267,268]),
         ("numeral",[3,8]),("prim_rec",[6])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%64%123%122%59@@$0@@%122%59@@@|@"])
  fun op INT_QUOT_1 x = x
    val op INT_QUOT_1 =
    DT(((("integer",270),
        [("arithmetic",[17,147,172,231,232]),
         ("bool",[25,26,27,54,56,58,63,64,104,105,129]),
         ("integer",[97,121,164,165,166,210,216,267,268]),
         ("numeral",[3,8]),("prim_rec",[7])]),["DISK_THM"]),
       [read"%51%15%64%123$0@%122%91%77%100@@@@@$0@|@"])
  fun op INT_QUOT_NEG x = x
    val op INT_QUOT_NEG =
    DT(((("integer",271),
        [("arithmetic",[29,46,71,93,147,173,176,180,220]),
         ("bool",[25,26,27,36,51,53,54,56,58,63,64,104,105,124,129]),
         ("integer",[97,118,119,120,121,144,145,164,165,166,210,216,267]),
         ("numeral",[3,8]),("prim_rec",[6])]),["DISK_THM"]),
       [read"%51%15%51%18%67%134%64$0@%122%59@@@@%58%64%123%121$1@@$0@@%121%123$1@$0@@@@%64%123$1@%121$0@@@%121%123$1@$0@@@@@|@|@"])
  fun op INT_ABS_QUOT x = x
    val op INT_ABS_QUOT =
    DT(((("integer",272),
        [("arithmetic",[29,73,146,147,148,209,220]),
         ("bool",
         [25,26,27,47,48,52,53,54,56,58,63,72,73,74,78,81,84,94,105,124,
          146]),("integer",[95,96,144,164,166,168,210,255,257,268,271]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%67%134%64$0@%122%59@@@@%115%76%120%123$1@$0@@$0@@@%76$1@@@|@|@"])
  fun op INT_QUOT_UNIQUE x = x
    val op INT_QUOT_UNIQUE =
    DT(((("integer",273),
        [("arithmetic",
         [22,26,41,46,53,59,67,71,73,79,93,148,154,172,173,176,177,180,189,
          214,226]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,78,
          83,93,94,96,101,104,105,107,124,129,146]),
         ("integer",
         [59,73,79,92,95,96,97,119,120,145,152,162,164,165,166,167,168,192,
          205,208,209,210,255,257,268,271]),("marker",[6]),("num",[9]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%15%51%18%51%10%67%69%22%58%64$3@%109%120$1@$2@@$0@@@%58%79%116%122%59@@$3@@%115%122%59@@$0@@%115$0@%122%59@@@@%116%76$0@@%76$2@@@@|@@%64%123$2@$1@@$0@@|@|@|@"])
  fun op INT_QUOT_ID x = x
    val op INT_QUOT_ID =
    DT(((("integer",274),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,65,93,94,96]),
         ("integer",[80,83,108,109,254,255,261,273]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%67%134%64$0@%122%59@@@@%64%123$0@$0@@%122%91%77%100@@@@@|@"])
  fun op INT_REM x = x
    val op INT_REM =
    DT(((("integer",276),
        [("arithmetic",[29,73,209]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,73,84,93,94,96,
          105,124]),("integer",[59,73,166,167,168,192,268,275]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%52%16%52%19%67%134%65$0@%59@@@%64%124%122$1@@%122$0@@@%122%90$1@$0@@@@|@|@"])
  fun op INT_REMQUOT x = x
    val op INT_REMQUOT =
    DT(((("integer",277),
        [("arithmetic",
         [24,25,26,29,41,46,53,59,67,71,73,88,93,154,173,176,177,180,209,
          220]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,71,73,76,84,93,
          94,96,101,104,105,107,129]),("combin",[19]),
         ("integer",
         [16,17,21,34,49,53,59,73,79,95,96,97,119,145,164,165,166,167,168,
          174,175,176,177,192,210,255,257,264,268,271,275]),("marker",[6]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%51%15%58%64$0@%109%120%123$0@$1@@$1@@%124$0@$1@@@@%58%79%116%122%59@@$0@@%115%122%59@@%124$0@$1@@@%115%124$0@$1@@%122%59@@@@%116%76%124$0@$1@@@%76$1@@@@|@@|@"])
  fun op INT_REM_UNIQUE x = x
    val op INT_REM_UNIQUE =
    DT(((("integer",278),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,83,93,94,96,108,
          109,111]),("integer",[59,193,255,262,273,275]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%58%116%76$0@@%76$1@@@%58%79%116%122%59@@$2@@%115%122%59@@$0@@%115$0@%122%59@@@@%69%10%64$3@%109%120$0@$2@@$1@@|@@@@%64%124$2@$1@@$0@@|@|@|@"])
  fun op INT_REM_NEG x = x
    val op INT_REM_NEG =
    DT(((("integer",279),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,55,56,58,63,71,93,94,96,105,
          124]),("combin",[19]),
         ("integer",
         [16,17,21,34,49,53,59,73,79,80,81,92,93,95,96,97,144,145,166,192,
          210,269,271,275]),("marker",[6]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%15%51%18%67%134%64$0@%122%59@@@@%58%64%124%121$1@@$0@@%121%124$1@$0@@@@%64%124$1@%121$0@@@%124$1@$0@@@@|@|@"])
  fun op INT_REM_ID x = x
    val op INT_REM_ID =
    DT(((("integer",280),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,65,93,94,96]),
         ("integer",[80,83,108,109,254,255,261,278]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%15%67%134%64$0@%122%59@@@@%64%124$0@$0@@%122%59@@@|@"])
  fun op INT_REM0 x = x
    val op INT_REM0 =
    DT(((("integer",281),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,65,72,93,94,96]),
         ("integer",[80,93,108,109,254,255,261,278]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%64%124%122%59@@$0@@%122%59@@@|@"])
  fun op INT_REM_COMMON_FACTOR x = x
    val op INT_REM_COMMON_FACTOR =
    DT(((("integer",282),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,65,72,93,94,96]),
         ("integer",[80,109,254,255,261,278]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%67%134%64$0@%122%59@@@@%51%18%64%124%120$0@$1@@$1@@%122%59@@|@@|@"])
  fun op INT_REM_EQ0 x = x
    val op INT_REM_EQ0 =
    DT(((("integer",283),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,93,94,96,108,109,
          111]),("integer",[80,108,109,254,255,261,277,278]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%18%67%134%64$0@%122%59@@@@%51%15%62%64%124$0@$1@@%122%59@@@%69%10%64$1@%120$0@$2@@|@@|@@|@"])
  fun op INT_MUL_QUOT x = x
    val op INT_MUL_QUOT =
    DT(((("integer",284),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,65,72,74,78,81,84,
          93,94,96,105,146]),("combin",[19]),
         ("integer",[16,17,22,36,49,54,80,108,109,254,255,261,273,283]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%15%51%18%51%10%67%58%134%64$1@%122%59@@@@%64%124$2@$1@@%122%59@@@@%64%123%120$0@$2@@$1@@%120$0@%123$2@$1@@@@|@|@|@"])
  fun op INT_REM_EQ_MOD x = x
    val op INT_REM_EQ_MOD =
    DT(((("integer",285),
        [("bool",
         [5,13,25,26,27,30,43,47,48,51,52,53,54,55,56,58,63,64,73,83,84,93,
          94,96,99,100,105,109,111,124,129,147,169]),("combin",[19]),
         ("integer",
         [16,17,21,28,34,39,49,53,55,59,73,79,83,85,92,97,101,102,108,109,
          111,138,148,157,174,193,212,213,227,230,257,259,278]),
         ("marker",[6,8]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%8%51%13%67%116%122%59@@$0@@%64%124$1@$0@@%80%116$1@%122%59@@@%109%125%119%125$1@%122%91%77%100@@@@@$0@@$0@@%122%91%77%100@@@@@%119$1@$0@@@@|@|@"])
  fun op INT_DIVIDES_MOD0 x = x
    val op INT_DIVIDES_MOD0 =
    DT(((("integer",287),
        [("bool",
         [13,25,26,27,30,37,47,48,51,52,53,54,56,58,63,72,74,78,81,84,94,
          96,146]),("integer",[94,235,238,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%62%111$1@$0@@%101%58%64%119$0@$1@@%122%59@@@%134%64$1@%122%59@@@@@%58%64$1@%122%59@@@%64$0@%122%59@@@@@|@|@"])
  fun op INT_DIVIDES_0 x = x
    val op INT_DIVIDES_0 =
    DT(((("integer",288),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,76,78,81,84,
          93,94,96,146]),("integer",[93,94,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%58%51%28%111$0@%122%59@@|@@%51%28%62%111%122%59@@$0@@%64$0@%122%59@@@|@@"])
  fun op INT_DIVIDES_1 x = x
    val op INT_DIVIDES_1 =
    DT(((("integer",289),
        [("bool",[25,26,43,47,48,53,54,58,63,72,74,78,81,84,93,94,96,146]),
         ("integer",[84,214,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%28%58%111%122%91%77%100@@@@$0@@%62%111$0@%122%91%77%100@@@@@%101%64$0@%122%91%77%100@@@@@%64$0@%121%122%91%77%100@@@@@@@@|@"])
  fun op INT_DIVIDES_REFL x = x
    val op INT_DIVIDES_REFL =
    DT(((("integer",290),
        [("bool",[25,26,47,48,53,54,58,63,71,72,74,78,81,84,146]),
         ("integer",[83,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%28%111$0@$0@|@"])
  fun op INT_DIVIDES_TRANS x = x
    val op INT_DIVIDES_TRANS =
    DT(((("integer",291),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,93,
          94,96,105,146]),("combin",[19]),
         ("integer",[16,17,22,36,49,54,286]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%58%111$2@$1@@%111$1@$0@@@%111$2@$0@@|@|@|@"])
  fun op INT_DIVIDES_MUL x = x
    val op INT_DIVIDES_MUL =
    DT(((("integer",292),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,73,74,76,78,81,
          84,94,146]),("integer",[61,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%58%111$1@%120$1@$0@@@%111$1@%120$0@$1@@@|@|@"])
  fun op INT_DIVIDES_LMUL x = x
    val op INT_DIVIDES_LMUL =
    DT(((("integer",293),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,93,
          94,96,105,146]),("combin",[19]),
         ("integer",[16,17,20,22,36,49,54,286]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%111$2@$1@@%111$2@%120$1@$0@@@|@|@|@"])
  fun op INT_DIVIDES_RMUL x = x
    val op INT_DIVIDES_RMUL =
    DT(((("integer",294),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,93,
          94,96,105,146]),("combin",[19]),
         ("integer",[16,17,20,22,36,49,54,286]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%111$2@$1@@%111$2@%120$0@$1@@@|@|@|@"])
  fun op INT_DIVIDES_MUL_BOTH x = x
    val op INT_DIVIDES_MUL_BOTH =
    DT(((("integer",295),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,72,76,80,81,93,
          94,96,105,124]),("combin",[19]),
         ("integer",[16,17,22,36,49,54,61,160,286]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%134%64$2@%122%59@@@@%62%111%120$2@$1@@%120$2@$0@@@%111$1@$0@@@|@|@|@"])
  fun op INT_DIVIDES_LADD x = x
    val op INT_DIVIDES_LADD =
    DT(((("integer",296),
        [("bool",[25,26,56]),("integer",[85,149,151,286])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%111$2@$1@@%62%111$2@%109$1@$0@@@%111$2@$0@@@|@|@|@"])
  fun op INT_DIVIDES_RADD x = x
    val op INT_DIVIDES_RADD =
    DT(((("integer",297),[("integer",[59,296])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%111$2@$1@@%62%111$2@%109$0@$1@@@%111$2@$0@@@|@|@|@"])
  fun op INT_DIVIDES_NEG x = x
    val op INT_DIVIDES_NEG =
    DT(((("integer",298),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105]),
         ("combin",[19]),("integer",[16,17,20,22,36,49,54,97,98,153,286]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%58%62%111$1@%121$0@@@%111$1@$0@@@%62%111%121$1@@$0@@%111$1@$0@@@|@|@"])
  fun op INT_DIVIDES_LSUB x = x
    val op INT_DIVIDES_LSUB =
    DT(((("integer",299),
        [("bool",[25,26,47,48,53,54,63,71,73,93,94,96]),
         ("integer",[73,296,298]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%111$2@$1@@%62%111$2@%125$1@$0@@@%111$2@$0@@@|@|@|@"])
  fun op INT_DIVIDES_RSUB x = x
    val op INT_DIVIDES_RSUB =
    DT(((("integer",300),
        [("bool",[25,26,47,48,53,54,63,71,73,93,94,96]),
         ("integer",[73,297,298]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%51%22%67%111$2@$1@@%62%111$2@%125$0@$1@@@%111$2@$0@@@|@|@|@"])
  fun op INT_EXP x = x
    val op INT_EXP =
    DT(((("integer",302),
        [("arithmetic",[8]),("bool",[14,25,56]),("integer",[168,301]),
         ("num",[9])]),["DISK_THM"]),
       [read"%52%14%52%12%64%112%122$1@@$0@@%122%83$1@$0@@@|@|@"])
  fun op INT_EXP_EQ0 x = x
    val op INT_EXP_EQ0 =
    DT(((("integer",303),
        [("arithmetic",[28,46,71,93,172,173,180]),
         ("bool",
         [14,25,26,27,36,47,48,51,53,54,56,58,63,72,78,104,105,124,146]),
         ("integer",[93,159,166,301]),("num",[9]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%52%14%62%64%112$1@$0@@%122%59@@@%58%64$1@%122%59@@@%134%65$0@%59@@@@|@|@"])
  fun op INT_MUL_SIGN_CASES x = x
    val op INT_MUL_SIGN_CASES =
    DT(((("integer",304),
        [("arithmetic",[29,41,46,60,71,93,148,172,173,176,180]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,78,94,96,101,104,
          105,146]),
         ("integer",[95,96,98,104,109,118,119,121,164,165,168,208,209]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%15%51%18%58%62%116%122%59@@%120$1@$0@@@%101%58%116%122%59@@$1@@%116%122%59@@$0@@@%58%116$1@%122%59@@@%116$0@%122%59@@@@@@%62%116%120$1@$0@@%122%59@@@%101%58%116%122%59@@$1@@%116$0@%122%59@@@@%58%116$1@%122%59@@@%116%122%59@@$0@@@@@|@|@"])
  fun op INT_EXP_NEG x = x
    val op INT_EXP_NEG =
    DT(((("integer",305),
        [("arithmetic",[8,12,13,158,159]),
         ("bool",[14,25,27,36,51,53,56,58,63,105,124]),
         ("integer",[95,96,97,168,301]),("num",[9])]),["DISK_THM"]),
       [read"%52%14%52%12%58%67%82$1@@%64%112%121%122$0@@@$1@@%122%83$0@$1@@@@@%67%93$1@@%64%112%121%122$0@@@$1@@%121%122%83$0@$1@@@@@@|@|@"])
  fun op INT_EXP_ADD_EXPONENTS x = x
    val op INT_EXP_ADD_EXPONENTS =
    DT(((("integer",306),
        [("arithmetic",[22,24,25]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,93,94,96,
          105]),("combin",[19]),("integer",[16,17,22,36,49,54,83,160,301]),
         ("num",[9]),("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%52%14%52%12%51%15%64%120%112$0@$2@@%112$0@$1@@@%112$0@%55$2@$1@@@|@|@|@"])
  fun op INT_EXP_MULTIPLY_EXPONENTS x = x
    val op INT_EXP_MULTIPLY_EXPONENTS =
    DT(((("integer",307),
        [("arithmetic",[71]),("bool",[14,25,36,56,58]),
         ("integer",[301,306]),("num",[9])]),["DISK_THM"]),
       [read"%52%12%52%14%51%15%64%112%112$0@$1@@$2@@%112$0@%54$1@$2@@@|@|@|@"])
  fun op INT_EXP_MOD x = x
    val op INT_EXP_MOD =
    DT(((("integer",308),
        [("arithmetic",[26,146]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,93,
          94,96,105,124,146]),("integer",[238,303,306]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%52%12%52%14%51%15%67%58%61$1@$2@@%134%64$0@%122%59@@@@@%64%119%112$0@$2@@%112$0@$1@@@%122%59@@@|@|@|@"])
  fun op INT_EXP_SUBTRACT_EXPONENTS x = x
    val op INT_EXP_SUBTRACT_EXPONENTS =
    DT(((("integer",309),
        [("arithmetic",
         [6,17,24,25,27,38,41,46,62,71,93,95,112,130,173,176,177,180,231]),
         ("bool",
         [14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,93,94,96,101,104,
          105,124,129]),("integer",[159,220,224,239,301,303,308]),
         ("num",[7,9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%52%12%52%14%51%15%67%58%61$1@$2@@%134%64$0@%122%59@@@@@%64%110%112$0@$2@@%112$0@$1@@@%112$0@%57$2@$1@@@@|@|@|@"])
  fun op INT_MIN_LT x = x
    val op INT_MIN_LT =
    DT(((("integer",312),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,124]),
         ("combin",[19]),("integer",[16,27,29,39,49,55,310]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%116$2@%118$1@$0@@@%58%116$2@$1@@%116$2@$0@@@|@|@|@"])
  fun op INT_MAX_LT x = x
    val op INT_MAX_LT =
    DT(((("integer",313),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,124]),
         ("combin",[19]),("integer",[16,27,29,39,49,55,311]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%116%117$2@$1@@$0@@%58%116$2@$0@@%116$1@$0@@@|@|@|@"])
  fun op INT_MIN_NUM x = x
    val op INT_MIN_NUM =
    DT(((("integer",314),
        [("arithmetic",[295]),
         ("bool",[5,25,26,27,30,36,52,53,54,56,58,63,64,105,108,109,129]),
         ("integer",[165,310])]),["DISK_THM"]),
       [read"%52%12%52%14%64%118%122$1@@%122$0@@@%122%89$1@$0@@@|@|@"])
  fun op INT_MAX_NUM x = x
    val op INT_MAX_NUM =
    DT(((("integer",315),
        [("arithmetic",[294]),
         ("bool",[5,25,26,27,30,36,52,53,54,56,58,63,64,105,108,109,129]),
         ("integer",[165,311])]),["DISK_THM"]),
       [read"%52%12%52%14%64%117%122$1@@%122$0@@@%122%88$1@$0@@@|@|@"])
  fun op INT_LT_MONO x = x
    val op INT_LT_MONO =
    DT(((("integer",316),
        [("bool",[25,26,43,47,48,53,54,58,63,73,93,94,96]),
         ("integer",[79,102,150,175,304]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%116%122%59@@$2@@%62%116%120$2@$1@@%120$2@$0@@@%116$1@$0@@@|@|@|@"])
  fun op INT_LE_MONO x = x
    val op INT_LE_MONO =
    DT(((("integer",317),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,93,94,96,105]),
         ("combin",[19]),
         ("integer",[16,28,39,49,55,79,103,109,150,159,176,304]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%28%51%37%51%46%67%116%122%59@@$2@@%62%115%120$2@$1@@%120$2@$0@@@%115$1@$0@@@|@|@|@"])
  fun op INFINITE_INT_UNIV x = x
    val op INFINITE_INT_UNIV =
    DT(((("integer",318),
        [("bool",[25,26,27,51,56,58,63]),("integer",[216]),
         ("pred_set",[3,14,144,199,235])]),["DISK_THM"]),
       [read"%134%85%99@@"])
  fun op INT_ADD_CALCULATE x = x
    val op INT_ADD_CALCULATE =
    DT(((("integer",319),
        [("arithmetic",
         [24,25,26,27,46,62,71,91,93,117,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,109,111]),
         ("integer",[59,73,79,80,92,166,167,193,194]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%15%52%14%52%12%58%64%109%122%59@@$2@@$2@@%58%64%109$2@%122%59@@@$2@@%58%64%109%122$1@@%122$0@@@%122%55$1@$0@@@@%58%64%109%122$1@@%121%122$0@@@@%80%61$0@$1@@%122%57$1@$0@@@%121%122%57$0@$1@@@@@@%58%64%109%121%122$1@@@%122$0@@@%80%61$1@$0@@%122%57$0@$1@@@%121%122%57$1@$0@@@@@@%64%109%121%122$1@@@%121%122$0@@@@%121%122%55$1@$0@@@@@@@@@|@|@|@"])
  fun op INT_ADD_REDUCE x = x
    val op INT_ADD_REDUCE =
    DT(((("integer",320),
        [("arithmetic",
         [1,24,25,26,27,46,62,71,91,93,117,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,109,111]),
         ("integer",[59,73,79,80,92,97,145,166,167,193,194]),
         ("numeral",[1,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%51%15%52%14%52%12%58%64%109%122%59@@$2@@$2@@%58%64%109$2@%122%59@@@$2@@%58%64%121%122%59@@@%122%59@@@%58%64%121%121$2@@@$2@@%58%64%109%122%91$1@@@%122%91$0@@@@%122%91%102%55$1@$0@@@@@@%58%64%109%122%91$1@@@%121%122%91$0@@@@@%80%61$0@$1@@%122%91%57$1@$0@@@@%121%122%91%57$0@$1@@@@@@@%58%64%109%121%122%91$1@@@@%122%91$0@@@@%80%61$1@$0@@%122%91%57$0@$1@@@@%121%122%91%57$1@$0@@@@@@@%64%109%121%122%91$1@@@@%121%122%91$0@@@@@%121%122%91%102%55$1@$0@@@@@@@@@@@@@|@|@|@"])
  fun op INT_SUB_CALCULATE x = x
    val op INT_SUB_CALCULATE =
    DT(((("integer",321),[("integer",[73])]),[]),
       [read"%51%28%51%37%64%125$1@$0@@%109$1@%121$0@@@|@|@"])
  fun op INT_SUB_REDUCE x = x
    val op INT_SUB_REDUCE =
    DT(((("integer",322),
        [("bool",[25,36,51,56]),
         ("integer",[73,79,80,97,145])]),["DISK_THM"]),
       [read"%52%12%52%14%51%15%58%64%125$0@%122%59@@@$0@@%58%64%125%122%59@@$0@@%121$0@@@%58%64%125%122%91$2@@@%122%91$1@@@@%109%122%91$2@@@%121%122%91$1@@@@@@%58%64%125%121%122%91$2@@@@%122%91$1@@@@%109%121%122%91$2@@@@%121%122%91$1@@@@@@%58%64%125%122%91$2@@@%121%122%91$1@@@@@%109%122%91$2@@@%122%91$1@@@@@%64%125%121%122%91$2@@@@%121%122%91$1@@@@@%109%121%122%91$2@@@@%122%91$1@@@@@@@@@|@|@|@"])
  fun op INT_MUL_CALCULATE x = x
    val op INT_MUL_CALCULATE =
    DT(((("integer",323),
        [("bool",[58]),("integer",[95,96,97,168])]),["DISK_THM"]),
       [read"%58%52%12%52%14%64%120%122$1@@%122$0@@@%122%54$1@$0@@@|@|@@%58%51%28%51%37%64%120%121$1@@$0@@%121%120$1@$0@@@|@|@@%58%51%28%51%37%64%120$1@%121$0@@@%121%120$1@$0@@@|@|@@%51%28%64%121%121$0@@@$0@|@@@@"])
  fun op INT_MUL_REDUCE x = x
    val op INT_MUL_REDUCE =
    DT(((("integer",324),
        [("arithmetic",[1]),("bool",[25,36,51,56,58]),
         ("integer",[93,94,95,96,97,168])]),["DISK_THM"]),
       [read"%52%12%52%14%51%15%58%64%120$0@%122%59@@@%122%59@@@%58%64%120%122%59@@$0@@%122%59@@@%58%64%120%122%91$2@@@%122%91$1@@@@%122%91%54$2@$1@@@@@%58%64%120%121%122%91$2@@@@%122%91$1@@@@%121%122%91%54$2@$1@@@@@@%58%64%120%122%91$2@@@%121%122%91$1@@@@@%121%122%91%54$2@$1@@@@@@%64%120%121%122%91$2@@@@%121%122%91$1@@@@@%122%91%54$2@$1@@@@@@@@@|@|@|@"])
  fun op INT_DIV_CALCULATE x = x
    val op INT_DIV_CALCULATE =
    DT(((("integer",325),[("integer",[97,144,166,220,221])]),["DISK_THM"]),
       [read"%58%52%14%52%12%67%134%65$0@%59@@@%64%110%122$1@@%122$0@@@%122%81$1@$0@@@@|@|@@%58%51%15%51%18%67%134%64$0@%122%59@@@@%64%110$1@%121$0@@@%110%121$1@@$0@@@|@|@@%58%52%12%52%14%62%64%122$1@@%122$0@@@%65$1@$0@@|@|@@%58%51%28%62%64%121$0@@%122%59@@@%64$0@%122%59@@@|@@%51%28%64%121%121$0@@@$0@|@@@@@"])
  fun op INT_DIV_REDUCE x = x
    val op INT_DIV_REDUCE =
    DT(((("integer",326),
        [("arithmetic",[1,3,4,21,22,24,25,29,147,217,220]),
         ("bool",[25,26,27,30,36,51,54,56,58,64,105,129]),
         ("integer",
         [97,121,145,164,165,166,167,216,219,220,221])]),["DISK_THM"]),
       [read"%52%12%52%14%58%64%110%122%59@@%122%91%77$0@@@@@%122%59@@@%58%64%110%122%59@@%122%91%78$0@@@@@%122%59@@@%58%64%110%122%91$1@@@%122%91%77$0@@@@@%122%81%91$1@@%91%77$0@@@@@@%58%64%110%122%91$1@@@%122%91%78$0@@@@@%122%81%91$1@@%91%78$0@@@@@@%58%64%110%121%122%91$1@@@@%122%91%77$0@@@@@%109%121%122%81%91$1@@%91%77$0@@@@@@%80%65%90%91$1@@%91%77$0@@@@%59@@%122%59@@%121%122%91%77%100@@@@@@@@%58%64%110%121%122%91$1@@@@%122%91%78$0@@@@@%109%121%122%81%91$1@@%91%78$0@@@@@@%80%65%90%91$1@@%91%78$0@@@@%59@@%122%59@@%121%122%91%77%100@@@@@@@@%58%64%110%122%91$1@@@%121%122%91%77$0@@@@@@%109%121%122%81%91$1@@%91%77$0@@@@@@%80%65%90%91$1@@%91%77$0@@@@%59@@%122%59@@%121%122%91%77%100@@@@@@@@%58%64%110%122%91$1@@@%121%122%91%78$0@@@@@@%109%121%122%81%91$1@@%91%78$0@@@@@@%80%65%90%91$1@@%91%78$0@@@@%59@@%122%59@@%121%122%91%77%100@@@@@@@@%58%64%110%121%122%91$1@@@@%121%122%91%77$0@@@@@@%122%81%91$1@@%91%77$0@@@@@@%64%110%121%122%91$1@@@@%121%122%91%78$0@@@@@@%122%81%91$1@@%91%78$0@@@@@@@@@@@@@@|@|@"])
  fun op INT_QUOT_CALCULATE x = x
    val op INT_QUOT_CALCULATE =
    DT(((("integer",327),[("integer",[97,144,166,268,271])]),["DISK_THM"]),
       [read"%58%52%16%52%19%67%134%65$0@%59@@@%64%123%122$1@@%122$0@@@%122%81$1@$0@@@@|@|@@%58%51%15%51%18%67%134%64$0@%122%59@@@@%58%64%123%121$1@@$0@@%121%123$1@$0@@@@%64%123$1@%121$0@@@%121%123$1@$0@@@@@|@|@@%58%52%12%52%14%62%64%122$1@@%122$0@@@%65$1@$0@@|@|@@%58%51%28%62%64%121$0@@%122%59@@@%64$0@%122%59@@@|@@%51%28%64%121%121$0@@@$0@|@@@@@"])
  fun op INT_QUOT_REDUCE x = x
    val op INT_QUOT_REDUCE =
    DT(((("integer",328),
        [("arithmetic",[1,3,4,24,220]),("bool",[25,26,27,36,51,54,56,63]),
         ("integer",[97,144,166,268,271]),("num",[7]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%52%12%52%14%58%64%123%122%59@@%122%91%77$0@@@@@%122%59@@@%58%64%123%122%59@@%122%91%78$0@@@@@%122%59@@@%58%64%123%122%91$1@@@%122%91%77$0@@@@@%122%81%91$1@@%91%77$0@@@@@@%58%64%123%122%91$1@@@%122%91%78$0@@@@@%122%81%91$1@@%91%78$0@@@@@@%58%64%123%121%122%91$1@@@@%122%91%77$0@@@@@%121%122%81%91$1@@%91%77$0@@@@@@@%58%64%123%121%122%91$1@@@@%122%91%78$0@@@@@%121%122%81%91$1@@%91%78$0@@@@@@@%58%64%123%122%91$1@@@%121%122%91%77$0@@@@@@%121%122%81%91$1@@%91%77$0@@@@@@@%58%64%123%122%91$1@@@%121%122%91%78$0@@@@@@%121%122%81%91$1@@%91%78$0@@@@@@@%58%64%123%121%122%91$1@@@@%121%122%91%77$0@@@@@@%122%81%91$1@@%91%77$0@@@@@@%64%123%121%122%91$1@@@@%121%122%91%78$0@@@@@@%122%81%91$1@@%91%78$0@@@@@@@@@@@@@@|@|@"])
  fun op INT_MOD_CALCULATE x = x
    val op INT_MOD_CALCULATE =
    DT(((("integer",329),[("integer",[97,144,166,228,229])]),["DISK_THM"]),
       [read"%58%52%14%52%12%67%134%65$0@%59@@@%64%119%122$1@@%122$0@@@%122%90$1@$0@@@@|@|@@%58%51%15%51%18%67%134%64$0@%122%59@@@@%64%119$1@%121$0@@@%121%119%121$1@@$0@@@@|@|@@%58%51%28%64%121%121$0@@@$0@|@@%58%52%12%52%14%62%64%122$1@@%122$0@@@%65$1@$0@@|@|@@%51%28%62%64%121$0@@%122%59@@@%64$0@%122%59@@@|@@@@@"])
  fun op INT_MOD_REDUCE x = x
    val op INT_MOD_REDUCE =
    DT(((("integer",330),
        [("arithmetic",
         [1,2,3,4,17,18,22,25,26,27,46,59,69,71,72,73,74,76,79,93,148,172,
          173,183,219]),("bool",[25,26,27,36,51,52,54,56,58,63,104,105]),
         ("integer",[225,329]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%52%12%52%14%58%64%119%122%59@@%122%91%77$0@@@@@%122%59@@@%58%64%119%122%59@@%122%91%78$0@@@@@%122%59@@@%58%64%119%122%91$1@@@%122%91%77$0@@@@@%122%90%91$1@@%91%77$0@@@@@@%58%64%119%122%91$1@@@%122%91%78$0@@@@@%122%90%91$1@@%91%78$0@@@@@@%58%64%119%28@%122%91%77$0@@@@@%125%28@%120%110%28@%122%91%77$0@@@@@%122%91%77$0@@@@@@@%64%119%28@%122%91%78$0@@@@@%125%28@%120%110%28@%122%91%78$0@@@@@%122%91%78$0@@@@@@@@@@@|@|@"])
  fun op INT_REM_CALCULATE x = x
    val op INT_REM_CALCULATE =
    DT(((("integer",331),[("integer",[97,144,166,276,279])]),["DISK_THM"]),
       [read"%58%52%16%52%19%67%134%65$0@%59@@@%64%124%122$1@@%122$0@@@%122%90$1@$0@@@@|@|@@%58%51%15%51%18%67%134%64$0@%122%59@@@@%58%64%124%121$1@@$0@@%121%124$1@$0@@@@%64%124$1@%121$0@@@%124$1@$0@@@@|@|@@%58%51%28%64%121%121$0@@@$0@|@@%58%52%12%52%14%62%64%122$1@@%122$0@@@%65$1@$0@@|@|@@%51%28%62%64%121$0@@%122%59@@@%64$0@%122%59@@@|@@@@@"])
  fun op INT_REM_REDUCE x = x
    val op INT_REM_REDUCE =
    DT(((("integer",332),
        [("arithmetic",
         [1,2,3,4,17,18,22,25,26,27,46,59,69,71,72,73,74,76,79,93,148,172,
          173,183,219]),("bool",[25,26,27,36,51,52,54,56,58,63,104,105]),
         ("integer",[331]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%52%12%52%14%58%64%124%122%59@@%122%91%77$0@@@@@%122%59@@@%58%64%124%122%59@@%122%91%78$0@@@@@%122%59@@@%58%64%124%122%91$1@@@%122%91%77$0@@@@@%122%90%91$1@@%91%77$0@@@@@@%58%64%124%122%91$1@@@%122%91%78$0@@@@@%122%90%91$1@@%91%78$0@@@@@@%58%64%124%121%122%91$1@@@@%122%91%77$0@@@@@%121%122%90%91$1@@%91%77$0@@@@@@@%58%64%124%121%122%91$1@@@@%122%91%78$0@@@@@%121%122%90%91$1@@%91%78$0@@@@@@@%58%64%124%122%91$1@@@%121%122%91%77$0@@@@@@%122%90%91$1@@%91%77$0@@@@@@%58%64%124%122%91$1@@@%121%122%91%78$0@@@@@@%122%90%91$1@@%91%78$0@@@@@@%58%64%124%121%122%91$1@@@@%121%122%91%77$0@@@@@@%121%122%90%91$1@@%91%77$0@@@@@@@%64%124%121%122%91$1@@@@%121%122%91%78$0@@@@@@%121%122%90%91$1@@%91%78$0@@@@@@@@@@@@@@@|@|@"])
  fun op INT_EXP_CALCULATE x = x
    val op INT_EXP_CALCULATE =
    DT(((("integer",333),
        [("arithmetic",[1,3,4,12,13,24,162,164]),
         ("bool",[25,36,51,54,56,63]),
         ("integer",[301,302,305])]),["DISK_THM"]),
       [read"%51%15%52%14%52%12%58%64%112$2@%59@@%122%91%77%100@@@@@%58%64%112%122$1@@$0@@%122%83$1@$0@@@@%58%64%112%121%122$1@@@%91%77$0@@@@%121%122%91%83$1@%91%77$0@@@@@@@@%64%112%121%122$1@@@%91%78$0@@@@%122%91%83$1@%91%78$0@@@@@@@@@|@|@|@"])
  fun op INT_EXP_REDUCE x = x
    val op INT_EXP_REDUCE =
    DT(((("integer",334),
        [("arithmetic",[1]),("bool",[25,36,51,56]),
         ("integer",[333])]),["DISK_THM"]),
       [read"%52%14%52%12%51%15%58%64%112$0@%59@@%122%91%77%100@@@@@%58%64%112%122%91$2@@@%91$1@@@%122%91%83$2@$1@@@@@%58%64%112%121%122%91$2@@@@%91%77$1@@@@%121%122%91%83$2@%77$1@@@@@@@%64%112%121%122%91$2@@@@%91%78$1@@@@%122%91%83$2@%78$1@@@@@@@@|@|@|@"])
  fun op INT_LT_REDUCE x = x
    val op INT_LT_REDUCE =
    DT(((("integer",335),
        [("arithmetic",
         [1,3,4,17,18,25,27,41,46,59,71,76,93,122,172,173,180,183]),
         ("bool",[25,36,43,51,52,54,56,58,63,96,104,105]),
         ("integer",[206]),("numeral",[3,8])]),["DISK_THM"]),
       [read"%52%14%52%12%58%62%116%122%59@@%122%91%77$1@@@@@%97@@%58%62%116%122%59@@%122%91%78$1@@@@@%97@@%58%62%116%122%59@@%122%59@@@%84@@%58%62%116%122%59@@%121%122%91$1@@@@@%84@@%58%62%116%122%91$1@@@%122%59@@@%84@@%58%62%116%121%122%91%77$1@@@@@%122%59@@@%97@@%58%62%116%121%122%91%78$1@@@@@%122%59@@@%97@@%58%62%116%122%91$1@@@%122%91$0@@@@%60$1@$0@@@%58%62%116%121%122%91%77$1@@@@@%122%91$0@@@@%97@@%58%62%116%121%122%91%78$1@@@@@%122%91$0@@@@%97@@%58%62%116%122%91$1@@@%121%122%91$0@@@@@%84@@%62%116%121%122%91$1@@@@%121%122%91$0@@@@@%60$0@$1@@@@@@@@@@@@@|@|@"])
  fun op INT_LE_CALCULATE x = x
    val op INT_LE_CALCULATE =
    DT(((("integer",336),[("integer",[109])]),["DISK_THM"]),
       [read"%51%28%51%37%62%115$1@$0@@%101%116$1@$0@@%64$1@$0@@@|@|@"])
  fun op INT_LE_REDUCE x = x
    val op INT_LE_REDUCE =
    DT(((("integer",337),
        [("arithmetic",
         [1,3,4,17,18,24,25,27,41,46,59,71,76,79,93,122,172,173,176,177,
          180,183]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,54,56,58,63,93,95,96,104,105,107]),
         ("integer",[73,92,97,145,152,162,166,167,192,205,206,336]),
         ("num",[9]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%14%52%12%58%62%115%122%59@@%122%59@@@%97@@%58%62%115%122%59@@%122%91$1@@@@%97@@%58%62%115%122%59@@%121%122%91%77$1@@@@@@%84@@%58%62%115%122%59@@%121%122%91%78$1@@@@@@%84@@%58%62%115%122%91%77$1@@@@%122%59@@@%84@@%58%62%115%122%91%78$1@@@@%122%59@@@%84@@%58%62%115%121%122%91%77$1@@@@@%122%59@@@%97@@%58%62%115%121%122%91%78$1@@@@@%122%59@@@%97@@%58%62%115%122%91$1@@@%122%91$0@@@@%61$1@$0@@@%58%62%115%122%91$1@@@%121%122%91%77$0@@@@@@%84@@%58%62%115%122%91$1@@@%121%122%91%78$0@@@@@@%84@@%58%62%115%121%122%91$1@@@@%122%91$0@@@@%97@@%62%115%121%122%91$1@@@@%121%122%91$0@@@@@%61$0@$1@@@@@@@@@@@@@@|@|@"])
  fun op INT_GT_CALCULATE x = x
    val op INT_GT_CALCULATE =
    DT(((("integer",338),[("integer",[75])]),[]),
       [read"%51%28%51%37%62%114$1@$0@@%116$0@$1@@|@|@"])
  fun op INT_GT_REDUCE x = x
    val op INT_GT_REDUCE =
    DT(((("integer",339),
        [("bool",[58]),("integer",[75,335])]),["DISK_THM"]),
       [read"%52%14%52%12%58%62%114%122%91%77$1@@@@%122%59@@@%97@@%58%62%114%122%91%78$1@@@@%122%59@@@%97@@%58%62%114%122%59@@%122%59@@@%84@@%58%62%114%121%122%91$1@@@@%122%59@@@%84@@%58%62%114%122%59@@%122%91$1@@@@%84@@%58%62%114%122%59@@%121%122%91%77$1@@@@@@%97@@%58%62%114%122%59@@%121%122%91%78$1@@@@@@%97@@%58%62%114%122%91$0@@@%122%91$1@@@@%60$1@$0@@@%58%62%114%122%91$0@@@%121%122%91%77$1@@@@@@%97@@%58%62%114%122%91$0@@@%121%122%91%78$1@@@@@@%97@@%58%62%114%121%122%91$0@@@@%122%91$1@@@@%84@@%62%114%121%122%91$0@@@@%121%122%91$1@@@@@%60$0@$1@@@@@@@@@@@@@|@|@"])
  fun op INT_GE_CALCULATE x = x
    val op INT_GE_CALCULATE =
    DT(((("integer",340),[("integer",[76])]),[]),
       [read"%51%28%51%37%62%113$1@$0@@%115$0@$1@@|@|@"])
  fun op INT_GE_REDUCE x = x
    val op INT_GE_REDUCE =
    DT(((("integer",341),
        [("bool",[58]),("integer",[76,337])]),["DISK_THM"]),
       [read"%52%14%52%12%58%62%113%122%59@@%122%59@@@%97@@%58%62%113%122%91$1@@@%122%59@@@%97@@%58%62%113%121%122%91%77$1@@@@@%122%59@@@%84@@%58%62%113%121%122%91%78$1@@@@@%122%59@@@%84@@%58%62%113%122%59@@%122%91%77$1@@@@@%84@@%58%62%113%122%59@@%122%91%78$1@@@@@%84@@%58%62%113%122%59@@%121%122%91%77$1@@@@@@%97@@%58%62%113%122%59@@%121%122%91%78$1@@@@@@%97@@%58%62%113%122%91$0@@@%122%91$1@@@@%61$1@$0@@@%58%62%113%121%122%91%77$0@@@@@%122%91$1@@@@%84@@%58%62%113%121%122%91%78$0@@@@@%122%91$1@@@@%84@@%58%62%113%122%91$0@@@%121%122%91$1@@@@@%97@@%62%113%121%122%91$0@@@@%121%122%91$1@@@@@%61$0@$1@@@@@@@@@@@@@@|@|@"])
  fun op INT_EQ_CALCULATE x = x
    val op INT_EQ_CALCULATE =
    DT(((("integer",342),
        [("arithmetic",[46,71,79,93,172,173,177,180]),
         ("bool",[14,25,26,27,36,51,52,54,56,58,63,93,96,104,105,107]),
         ("integer",[73,92,97,145,152,162,166,167,192,205]),("num",[9]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%58%52%12%52%14%62%64%122$1@@%122$0@@@%65$1@$0@@|@|@@%58%51%28%51%37%62%64%121$1@@%121$0@@@%64$1@$0@@|@|@@%52%14%52%12%58%62%64%122$1@@%121%122$0@@@@%58%65$1@%59@@%65$0@%59@@@@%62%64%121%122$1@@@%122$0@@@%58%65$1@%59@@%65$0@%59@@@@|@|@@@"])
  fun op INT_EQ_REDUCE x = x
    val op INT_EQ_REDUCE =
    DT(((("integer",343),
        [("arithmetic",[1,3,4,17,18,25,27,46,71,76,93,122,172,173,183]),
         ("bool",[25,36,43,51,52,54,56,58,63,96,104,105]),
         ("integer",[342]),("numeral",[3,8])]),["DISK_THM"]),
       [read"%52%14%52%12%58%62%64%122%59@@%122%59@@@%97@@%58%62%64%122%59@@%122%91%77$1@@@@@%84@@%58%62%64%122%59@@%122%91%78$1@@@@@%84@@%58%62%64%122%59@@%121%122%91%77$1@@@@@@%84@@%58%62%64%122%59@@%121%122%91%78$1@@@@@@%84@@%58%62%64%122%91%77$1@@@@%122%59@@@%84@@%58%62%64%122%91%78$1@@@@%122%59@@@%84@@%58%62%64%121%122%91%77$1@@@@@%122%59@@@%84@@%58%62%64%121%122%91%78$1@@@@@%122%59@@@%84@@%58%62%64%122%91$1@@@%122%91$0@@@@%65$1@$0@@@%58%62%64%122%91%77$1@@@@%121%122%91$0@@@@@%84@@%58%62%64%122%91%78$1@@@@%121%122%91$0@@@@@%84@@%58%62%64%121%122%91%77$1@@@@@%122%91$0@@@@%84@@%58%62%64%121%122%91%78$1@@@@@%122%91$0@@@@%84@@%62%64%121%122%91$1@@@@%121%122%91$0@@@@@%65$1@$0@@@@@@@@@@@@@@@@|@|@"])
  fun op INT_DIVIDES_REDUCE x = x
    val op INT_DIVIDES_REDUCE =
    DT(((("integer",344),
        [("arithmetic",[1,3,4,21,24]),
         ("bool",[25,26,27,36,47,48,51,52,53,54,56,58,63,71,94]),
         ("integer",[230,287,298,330,342]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%52%14%52%12%51%15%58%62%111%122%59@@%122%59@@@%97@@%58%62%111%122%59@@%122%91%77$2@@@@@%84@@%58%62%111%122%59@@%122%91%78$2@@@@@%84@@%58%62%111$0@%122%59@@@%97@@%58%62%111%122%91%77$2@@@@%122%91$1@@@@%65%90%91$1@@%91%77$2@@@@%59@@@%58%62%111%122%91%78$2@@@@%122%91$1@@@@%65%90%91$1@@%91%78$2@@@@%59@@@%58%62%111%122%91%77$2@@@@%121%122%91$1@@@@@%65%90%91$1@@%91%77$2@@@@%59@@@%58%62%111%122%91%78$2@@@@%121%122%91$1@@@@@%65%90%91$1@@%91%78$2@@@@%59@@@%58%62%111%121%122%91%77$2@@@@@%122%91$1@@@@%65%90%91$1@@%91%77$2@@@@%59@@@%58%62%111%121%122%91%78$2@@@@@%122%91$1@@@@%65%90%91$1@@%91%78$2@@@@%59@@@%58%62%111%121%122%91%77$2@@@@@%121%122%91$1@@@@@%65%90%91$1@@%91%77$2@@@@%59@@@%62%111%121%122%91%78$2@@@@@%121%122%91$1@@@@@%65%90%91$1@@%91%78$2@@@@%59@@@@@@@@@@@@@|@|@|@"])
  end
  val _ = DB.bindl "integer"
  [("int_ge",int_ge,DB.Def), ("int_gt",int_gt,DB.Def),
   ("int_le",int_le,DB.Def), ("int_sub",int_sub,DB.Def),
   ("tint_0",tint_0,DB.Def), ("tint_1",tint_1,DB.Def),
   ("tint_neg",tint_neg,DB.Def), ("tint_add",tint_add,DB.Def),
   ("tint_mul",tint_mul,DB.Def), ("tint_lt",tint_lt,DB.Def),
   ("tint_eq",tint_eq,DB.Def), ("tint_of_num",tint_of_num,DB.Def),
   ("int_TY_DEF",int_TY_DEF,DB.Def),
   ("int_bijections",int_bijections,DB.Def),
   ("int_REP_def",int_REP_def,DB.Def), ("int_ABS_def",int_ABS_def,DB.Def),
   ("int_0",int_0,DB.Def), ("int_1",int_1,DB.Def),
   ("int_neg",int_neg,DB.Def), ("int_add",int_add,DB.Def),
   ("int_mul",int_mul,DB.Def), ("int_lt",int_lt,DB.Def),
   ("Num",Num,DB.Def), ("int_div",int_div,DB.Def),
   ("int_mod",int_mod,DB.Def), ("INT_ABS",INT_ABS,DB.Def),
   ("int_quot",int_quot,DB.Def), ("int_rem",int_rem,DB.Def),
   ("INT_DIVIDES",INT_DIVIDES,DB.Def), ("int_exp",int_exp,DB.Def),
   ("INT_MIN",INT_MIN,DB.Def), ("INT_MAX",INT_MAX,DB.Def),
   ("LEAST_INT_DEF",LEAST_INT_DEF,DB.Def), ("INT_LT",INT_LT,DB.Thm),
   ("INT_LE",INT_LE,DB.Thm), ("INT_POS",INT_POS,DB.Thm),
   ("INT",INT,DB.Thm), ("INT_EQ_RMUL",INT_EQ_RMUL,DB.Thm),
   ("INT_EQ_LMUL",INT_EQ_LMUL,DB.Thm), ("INT_ENTIRE",INT_ENTIRE,DB.Thm),
   ("INT_LT_ADDL",INT_LT_ADDL,DB.Thm), ("INT_LT_ADDR",INT_LT_ADDR,DB.Thm),
   ("INT_LE_ADDL",INT_LE_ADDL,DB.Thm), ("INT_LE_ADDR",INT_LE_ADDR,DB.Thm),
   ("INT_LT_IMP_NE",INT_LT_IMP_NE,DB.Thm),
   ("INT_NEG_MINUS1",INT_NEG_MINUS1,DB.Thm),
   ("INT_NEG_EQ",INT_NEG_EQ,DB.Thm),
   ("INT_SUB_RDISTRIB",INT_SUB_RDISTRIB,DB.Thm),
   ("INT_SUB_LDISTRIB",INT_SUB_LDISTRIB,DB.Thm),
   ("INT_ADD_SUB",INT_ADD_SUB,DB.Thm), ("INT_SUB_LE",INT_SUB_LE,DB.Thm),
   ("INT_SUB_LT",INT_SUB_LT,DB.Thm), ("INT_NEG_SUB",INT_NEG_SUB,DB.Thm),
   ("INT_NEG_0",INT_NEG_0,DB.Thm), ("INT_NEG_EQ0",INT_NEG_EQ0,DB.Thm),
   ("INT_LE_NEGR",INT_LE_NEGR,DB.Thm), ("INT_LE_NEGL",INT_LE_NEGL,DB.Thm),
   ("INT_LE_DOUBLE",INT_LE_DOUBLE,DB.Thm), ("INT_SUB_0",INT_SUB_0,DB.Thm),
   ("INT_SUB_REFL",INT_SUB_REFL,DB.Thm),
   ("INT_SUB_ADD2",INT_SUB_ADD2,DB.Thm),
   ("INT_SUB_ADD",INT_SUB_ADD,DB.Thm), ("INT_LT_ADD1",INT_LT_ADD1,DB.Thm),
   ("INT_LT_ADDNEG2",INT_LT_ADDNEG2,DB.Thm),
   ("INT_LT_ADDNEG",INT_LT_ADDNEG,DB.Thm),
   ("INT_LT_ADD",INT_LT_ADD,DB.Thm), ("INT_LE_ADD",INT_LE_ADD,DB.Thm),
   ("INT_LE_ADD2",INT_LE_ADD2,DB.Thm), ("INT_LT_ADD2",INT_LT_ADD2,DB.Thm),
   ("INT_LE_RADD",INT_LE_RADD,DB.Thm), ("INT_LE_LADD",INT_LE_LADD,DB.Thm),
   ("INT_LT_01",INT_LT_01,DB.Thm), ("INT_LE_01",INT_LE_01,DB.Thm),
   ("INT_LE_SQUARE",INT_LE_SQUARE,DB.Thm),
   ("INT_LE_MUL",INT_LE_MUL,DB.Thm),
   ("INT_LE_NEGTOTAL",INT_LE_NEGTOTAL,DB.Thm),
   ("INT_LT_NEGTOTAL",INT_LT_NEGTOTAL,DB.Thm),
   ("INT_NEG_GE0",INT_NEG_GE0,DB.Thm), ("INT_NEG_LE0",INT_NEG_LE0,DB.Thm),
   ("INT_NEG_GT0",INT_NEG_GT0,DB.Thm), ("INT_NEG_LT0",INT_NEG_LT0,DB.Thm),
   ("INT_LTE_ANTSYM",INT_LTE_ANTSYM,DB.Thm),
   ("INT_LET_ANTISYM",INT_LET_ANTISYM,DB.Thm),
   ("INT_LE_ANTISYM",INT_LE_ANTISYM,DB.Thm),
   ("INT_LE_TRANS",INT_LE_TRANS,DB.Thm),
   ("INT_LET_TRANS",INT_LET_TRANS,DB.Thm),
   ("INT_LTE_TRANS",INT_LTE_TRANS,DB.Thm),
   ("INT_LT_IMP_LE",INT_LT_IMP_LE,DB.Thm), ("INT_LT_LE",INT_LT_LE,DB.Thm),
   ("INT_LE_LT",INT_LE_LT,DB.Thm), ("INT_LE_REFL",INT_LE_REFL,DB.Thm),
   ("INT_LTE_TOTAL",INT_LTE_TOTAL,DB.Thm),
   ("INT_LET_TOTAL",INT_LET_TOTAL,DB.Thm),
   ("INT_LE_TOTAL",INT_LE_TOTAL,DB.Thm), ("INT_NOT_LE",INT_NOT_LE,DB.Thm),
   ("INT_LT_GT",INT_LT_GT,DB.Thm),
   ("INT_LT_ANTISYM",INT_LT_ANTISYM,DB.Thm),
   ("INT_NOT_LT",INT_NOT_LT,DB.Thm), ("INT_LT_RADD",INT_LT_RADD,DB.Thm),
   ("INT_LT_LADD",INT_LT_LADD,DB.Thm),
   ("INT_NEG_MUL2",INT_NEG_MUL2,DB.Thm), ("INT_NEGNEG",INT_NEGNEG,DB.Thm),
   ("INT_NEG_RMUL",INT_NEG_RMUL,DB.Thm),
   ("INT_NEG_LMUL",INT_NEG_LMUL,DB.Thm),
   ("INT_MUL_RZERO",INT_MUL_RZERO,DB.Thm),
   ("INT_MUL_LZERO",INT_MUL_LZERO,DB.Thm),
   ("INT_NEG_ADD",INT_NEG_ADD,DB.Thm),
   ("INT_RNEG_UNIQ",INT_RNEG_UNIQ,DB.Thm),
   ("INT_LNEG_UNIQ",INT_LNEG_UNIQ,DB.Thm),
   ("INT_ADD_RID_UNIQ",INT_ADD_RID_UNIQ,DB.Thm),
   ("INT_ADD_LID_UNIQ",INT_ADD_LID_UNIQ,DB.Thm),
   ("INT_EQ_RADD",INT_EQ_RADD,DB.Thm), ("INT_EQ_LADD",INT_EQ_LADD,DB.Thm),
   ("INT_RDISTRIB",INT_RDISTRIB,DB.Thm),
   ("INT_MUL_RID",INT_MUL_RID,DB.Thm), ("INT_MUL_LID",INT_MUL_LID,DB.Thm),
   ("INT_ADD_RINV",INT_ADD_RINV,DB.Thm),
   ("INT_ADD_LINV",INT_ADD_LINV,DB.Thm),
   ("INT_ADD_RID",INT_ADD_RID,DB.Thm), ("INT_ADD_LID",INT_ADD_LID,DB.Thm),
   ("INT_1",INT_1,DB.Thm), ("INT_0",INT_0,DB.Thm),
   ("NUM_POSINT_EX",NUM_POSINT_EX,DB.Thm),
   ("INT_LT_MUL",INT_LT_MUL,DB.Thm),
   ("INT_LT_LADD_IMP",INT_LT_LADD_IMP,DB.Thm),
   ("INT_LT_TRANS",INT_LT_TRANS,DB.Thm),
   ("INT_LT_REFL",INT_LT_REFL,DB.Thm),
   ("INT_LT_TOTAL",INT_LT_TOTAL,DB.Thm),
   ("INT_LDISTRIB",INT_LDISTRIB,DB.Thm),
   ("INT_MUL_ASSOC",INT_MUL_ASSOC,DB.Thm),
   ("INT_ADD_ASSOC",INT_ADD_ASSOC,DB.Thm),
   ("INT_MUL_COMM",INT_MUL_COMM,DB.Thm),
   ("INT_MUL_SYM",INT_MUL_SYM,DB.Thm),
   ("INT_ADD_COMM",INT_ADD_COMM,DB.Thm),
   ("INT_ADD_SYM",INT_ADD_SYM,DB.Thm), ("INT_10",INT_10,DB.Thm),
   ("EQ_LADD",EQ_LADD,DB.Thm), ("EQ_ADDL",EQ_ADDL,DB.Thm),
   ("LT_LADD",LT_LADD,DB.Thm), ("LT_ADDL",LT_ADDL,DB.Thm),
   ("LT_ADDR",LT_ADDR,DB.Thm), ("LT_ADD2",LT_ADD2,DB.Thm),
   ("TINT_EQ_REFL",TINT_EQ_REFL,DB.Thm),
   ("TINT_EQ_SYM",TINT_EQ_SYM,DB.Thm),
   ("TINT_EQ_TRANS",TINT_EQ_TRANS,DB.Thm),
   ("TINT_EQ_EQUIV",TINT_EQ_EQUIV,DB.Thm),
   ("TINT_EQ_AP",TINT_EQ_AP,DB.Thm), ("TINT_10",TINT_10,DB.Thm),
   ("TINT_ADD_SYM",TINT_ADD_SYM,DB.Thm),
   ("TINT_MUL_SYM",TINT_MUL_SYM,DB.Thm),
   ("TINT_ADD_ASSOC",TINT_ADD_ASSOC,DB.Thm),
   ("TINT_MUL_ASSOC",TINT_MUL_ASSOC,DB.Thm),
   ("TINT_LDISTRIB",TINT_LDISTRIB,DB.Thm),
   ("TINT_ADD_LID",TINT_ADD_LID,DB.Thm),
   ("TINT_MUL_LID",TINT_MUL_LID,DB.Thm),
   ("TINT_ADD_LINV",TINT_ADD_LINV,DB.Thm),
   ("TINT_LT_TOTAL",TINT_LT_TOTAL,DB.Thm),
   ("TINT_LT_REFL",TINT_LT_REFL,DB.Thm),
   ("TINT_LT_TRANS",TINT_LT_TRANS,DB.Thm),
   ("TINT_LT_ADD",TINT_LT_ADD,DB.Thm), ("TINT_LT_MUL",TINT_LT_MUL,DB.Thm),
   ("TINT_NEG_WELLDEF",TINT_NEG_WELLDEF,DB.Thm),
   ("TINT_ADD_WELLDEFR",TINT_ADD_WELLDEFR,DB.Thm),
   ("TINT_ADD_WELLDEF",TINT_ADD_WELLDEF,DB.Thm),
   ("TINT_MUL_WELLDEFR",TINT_MUL_WELLDEFR,DB.Thm),
   ("TINT_MUL_WELLDEF",TINT_MUL_WELLDEF,DB.Thm),
   ("TINT_LT_WELLDEFR",TINT_LT_WELLDEFR,DB.Thm),
   ("TINT_LT_WELLDEFL",TINT_LT_WELLDEFL,DB.Thm),
   ("TINT_LT_WELLDEF",TINT_LT_WELLDEF,DB.Thm),
   ("tint_of_num_eq",tint_of_num_eq,DB.Thm), ("TINT_INJ",TINT_INJ,DB.Thm),
   ("NUM_POSTINT_EX",NUM_POSTINT_EX,DB.Thm),
   ("int_ABS_REP_CLASS",int_ABS_REP_CLASS,DB.Thm),
   ("int_QUOTIENT",int_QUOTIENT,DB.Thm), ("int_of_num",int_of_num,DB.Thm),
   ("INT_INJ",INT_INJ,DB.Thm), ("INT_ADD",INT_ADD,DB.Thm),
   ("INT_MUL",INT_MUL,DB.Thm), ("INT_LT_NZ",INT_LT_NZ,DB.Thm),
   ("INT_NZ_IMP_LT",INT_NZ_IMP_LT,DB.Thm),
   ("INT_DOUBLE",INT_DOUBLE,DB.Thm), ("INT_SUB_SUB",INT_SUB_SUB,DB.Thm),
   ("INT_LT_ADD_SUB",INT_LT_ADD_SUB,DB.Thm),
   ("INT_LT_SUB_RADD",INT_LT_SUB_RADD,DB.Thm),
   ("INT_LT_SUB_LADD",INT_LT_SUB_LADD,DB.Thm),
   ("INT_LE_SUB_LADD",INT_LE_SUB_LADD,DB.Thm),
   ("INT_LE_SUB_RADD",INT_LE_SUB_RADD,DB.Thm),
   ("INT_LT_NEG",INT_LT_NEG,DB.Thm), ("INT_LE_NEG",INT_LE_NEG,DB.Thm),
   ("INT_ADD2_SUB2",INT_ADD2_SUB2,DB.Thm),
   ("INT_SUB_LZERO",INT_SUB_LZERO,DB.Thm),
   ("INT_SUB_RZERO",INT_SUB_RZERO,DB.Thm),
   ("INT_LET_ADD2",INT_LET_ADD2,DB.Thm),
   ("INT_LTE_ADD2",INT_LTE_ADD2,DB.Thm),
   ("INT_LET_ADD",INT_LET_ADD,DB.Thm), ("INT_LTE_ADD",INT_LTE_ADD,DB.Thm),
   ("INT_LT_MUL2",INT_LT_MUL2,DB.Thm),
   ("INT_SUB_LNEG",INT_SUB_LNEG,DB.Thm),
   ("INT_SUB_RNEG",INT_SUB_RNEG,DB.Thm),
   ("INT_SUB_NEG2",INT_SUB_NEG2,DB.Thm),
   ("INT_SUB_TRIANGLE",INT_SUB_TRIANGLE,DB.Thm),
   ("INT_EQ_SUB_LADD",INT_EQ_SUB_LADD,DB.Thm),
   ("INT_EQ_SUB_RADD",INT_EQ_SUB_RADD,DB.Thm), ("INT_SUB",INT_SUB,DB.Thm),
   ("INT_SUB_SUB2",INT_SUB_SUB2,DB.Thm),
   ("INT_ADD_SUB2",INT_ADD_SUB2,DB.Thm),
   ("INT_EQ_LMUL2",INT_EQ_LMUL2,DB.Thm),
   ("INT_EQ_IMP_LE",INT_EQ_IMP_LE,DB.Thm),
   ("INT_POS_NZ",INT_POS_NZ,DB.Thm),
   ("INT_EQ_RMUL_IMP",INT_EQ_RMUL_IMP,DB.Thm),
   ("INT_EQ_LMUL_IMP",INT_EQ_LMUL_IMP,DB.Thm),
   ("INT_DIFFSQ",INT_DIFFSQ,DB.Thm), ("INT_POASQ",INT_POASQ,DB.Thm),
   ("INT_SUMSQ",INT_SUMSQ,DB.Thm), ("INT_EQ_NEG",INT_EQ_NEG,DB.Thm),
   ("INT_LT_CALCULATE",INT_LT_CALCULATE,DB.Thm),
   ("NUM_POSINT",NUM_POSINT,DB.Thm),
   ("NUM_POSINT_EXISTS",NUM_POSINT_EXISTS,DB.Thm),
   ("NUM_NEGINT_EXISTS",NUM_NEGINT_EXISTS,DB.Thm),
   ("INT_NUM_CASES",INT_NUM_CASES,DB.Thm),
   ("INT_DISCRETE",INT_DISCRETE,DB.Thm), ("INT_LE_LT1",INT_LE_LT1,DB.Thm),
   ("INT_LT_LE1",INT_LT_LE1,DB.Thm), ("INT_MUL_EQ_1",INT_MUL_EQ_1,DB.Thm),
   ("NUM_OF_INT",NUM_OF_INT,DB.Thm), ("INT_OF_NUM",INT_OF_NUM,DB.Thm),
   ("LE_NUM_OF_INT",LE_NUM_OF_INT,DB.Thm), ("INT_DIV",INT_DIV,DB.Thm),
   ("INT_DIV_NEG",INT_DIV_NEG,DB.Thm), ("INT_DIV_1",INT_DIV_1,DB.Thm),
   ("INT_DIV_0",INT_DIV_0,DB.Thm), ("INT_DIV_ID",INT_DIV_ID,DB.Thm),
   ("INT_MOD_BOUNDS",INT_MOD_BOUNDS,DB.Thm),
   ("INT_DIVISION",INT_DIVISION,DB.Thm), ("INT_MOD",INT_MOD,DB.Thm),
   ("INT_MOD_NEG",INT_MOD_NEG,DB.Thm), ("INT_MOD0",INT_MOD0,DB.Thm),
   ("INT_DIV_MUL_ID",INT_DIV_MUL_ID,DB.Thm),
   ("INT_DIV_UNIQUE",INT_DIV_UNIQUE,DB.Thm),
   ("INT_MOD_UNIQUE",INT_MOD_UNIQUE,DB.Thm),
   ("INT_MOD_ID",INT_MOD_ID,DB.Thm),
   ("INT_MOD_COMMON_FACTOR",INT_MOD_COMMON_FACTOR,DB.Thm),
   ("INT_DIV_LMUL",INT_DIV_LMUL,DB.Thm),
   ("INT_DIV_RMUL",INT_DIV_RMUL,DB.Thm),
   ("INT_MOD_EQ0",INT_MOD_EQ0,DB.Thm), ("INT_MUL_DIV",INT_MUL_DIV,DB.Thm),
   ("INT_ADD_DIV",INT_ADD_DIV,DB.Thm),
   ("INT_MOD_ADD_MULTIPLES",INT_MOD_ADD_MULTIPLES,DB.Thm),
   ("INT_MOD_NEG_NUMERATOR",INT_MOD_NEG_NUMERATOR,DB.Thm),
   ("INT_MOD_PLUS",INT_MOD_PLUS,DB.Thm),
   ("INT_MOD_SUB",INT_MOD_SUB,DB.Thm), ("INT_MOD_MOD",INT_MOD_MOD,DB.Thm),
   ("INT_DIV_P",INT_DIV_P,DB.Thm), ("INT_MOD_P",INT_MOD_P,DB.Thm),
   ("INT_DIV_FORALL_P",INT_DIV_FORALL_P,DB.Thm),
   ("INT_MOD_FORALL_P",INT_MOD_FORALL_P,DB.Thm),
   ("INT_MOD_1",INT_MOD_1,DB.Thm), ("INT_LESS_MOD",INT_LESS_MOD,DB.Thm),
   ("INT_MOD_MINUS1",INT_MOD_MINUS1,DB.Thm),
   ("INT_ABS_POS",INT_ABS_POS,DB.Thm), ("INT_ABS_NUM",INT_ABS_NUM,DB.Thm),
   ("INT_NEG_SAME_EQ",INT_NEG_SAME_EQ,DB.Thm),
   ("INT_ABS_NEG",INT_ABS_NEG,DB.Thm), ("INT_ABS_ABS",INT_ABS_ABS,DB.Thm),
   ("INT_ABS_EQ_ID",INT_ABS_EQ_ID,DB.Thm),
   ("INT_ABS_MUL",INT_ABS_MUL,DB.Thm), ("INT_ABS_EQ0",INT_ABS_EQ0,DB.Thm),
   ("INT_ABS_LT0",INT_ABS_LT0,DB.Thm), ("INT_ABS_LE0",INT_ABS_LE0,DB.Thm),
   ("INT_ABS_LT",INT_ABS_LT,DB.Thm), ("INT_ABS_LE",INT_ABS_LE,DB.Thm),
   ("INT_ABS_EQ",INT_ABS_EQ,DB.Thm), ("INT_QUOT",INT_QUOT,DB.Thm),
   ("INT_QUOT_0",INT_QUOT_0,DB.Thm), ("INT_QUOT_1",INT_QUOT_1,DB.Thm),
   ("INT_QUOT_NEG",INT_QUOT_NEG,DB.Thm),
   ("INT_ABS_QUOT",INT_ABS_QUOT,DB.Thm),
   ("INT_QUOT_UNIQUE",INT_QUOT_UNIQUE,DB.Thm),
   ("INT_QUOT_ID",INT_QUOT_ID,DB.Thm), ("INT_REM",INT_REM,DB.Thm),
   ("INT_REMQUOT",INT_REMQUOT,DB.Thm),
   ("INT_REM_UNIQUE",INT_REM_UNIQUE,DB.Thm),
   ("INT_REM_NEG",INT_REM_NEG,DB.Thm), ("INT_REM_ID",INT_REM_ID,DB.Thm),
   ("INT_REM0",INT_REM0,DB.Thm),
   ("INT_REM_COMMON_FACTOR",INT_REM_COMMON_FACTOR,DB.Thm),
   ("INT_REM_EQ0",INT_REM_EQ0,DB.Thm),
   ("INT_MUL_QUOT",INT_MUL_QUOT,DB.Thm),
   ("INT_REM_EQ_MOD",INT_REM_EQ_MOD,DB.Thm),
   ("INT_DIVIDES_MOD0",INT_DIVIDES_MOD0,DB.Thm),
   ("INT_DIVIDES_0",INT_DIVIDES_0,DB.Thm),
   ("INT_DIVIDES_1",INT_DIVIDES_1,DB.Thm),
   ("INT_DIVIDES_REFL",INT_DIVIDES_REFL,DB.Thm),
   ("INT_DIVIDES_TRANS",INT_DIVIDES_TRANS,DB.Thm),
   ("INT_DIVIDES_MUL",INT_DIVIDES_MUL,DB.Thm),
   ("INT_DIVIDES_LMUL",INT_DIVIDES_LMUL,DB.Thm),
   ("INT_DIVIDES_RMUL",INT_DIVIDES_RMUL,DB.Thm),
   ("INT_DIVIDES_MUL_BOTH",INT_DIVIDES_MUL_BOTH,DB.Thm),
   ("INT_DIVIDES_LADD",INT_DIVIDES_LADD,DB.Thm),
   ("INT_DIVIDES_RADD",INT_DIVIDES_RADD,DB.Thm),
   ("INT_DIVIDES_NEG",INT_DIVIDES_NEG,DB.Thm),
   ("INT_DIVIDES_LSUB",INT_DIVIDES_LSUB,DB.Thm),
   ("INT_DIVIDES_RSUB",INT_DIVIDES_RSUB,DB.Thm),
   ("INT_EXP",INT_EXP,DB.Thm), ("INT_EXP_EQ0",INT_EXP_EQ0,DB.Thm),
   ("INT_MUL_SIGN_CASES",INT_MUL_SIGN_CASES,DB.Thm),
   ("INT_EXP_NEG",INT_EXP_NEG,DB.Thm),
   ("INT_EXP_ADD_EXPONENTS",INT_EXP_ADD_EXPONENTS,DB.Thm),
   ("INT_EXP_MULTIPLY_EXPONENTS",INT_EXP_MULTIPLY_EXPONENTS,DB.Thm),
   ("INT_EXP_MOD",INT_EXP_MOD,DB.Thm),
   ("INT_EXP_SUBTRACT_EXPONENTS",INT_EXP_SUBTRACT_EXPONENTS,DB.Thm),
   ("INT_MIN_LT",INT_MIN_LT,DB.Thm), ("INT_MAX_LT",INT_MAX_LT,DB.Thm),
   ("INT_MIN_NUM",INT_MIN_NUM,DB.Thm), ("INT_MAX_NUM",INT_MAX_NUM,DB.Thm),
   ("INT_LT_MONO",INT_LT_MONO,DB.Thm), ("INT_LE_MONO",INT_LE_MONO,DB.Thm),
   ("INFINITE_INT_UNIV",INFINITE_INT_UNIV,DB.Thm),
   ("INT_ADD_CALCULATE",INT_ADD_CALCULATE,DB.Thm),
   ("INT_ADD_REDUCE",INT_ADD_REDUCE,DB.Thm),
   ("INT_SUB_CALCULATE",INT_SUB_CALCULATE,DB.Thm),
   ("INT_SUB_REDUCE",INT_SUB_REDUCE,DB.Thm),
   ("INT_MUL_CALCULATE",INT_MUL_CALCULATE,DB.Thm),
   ("INT_MUL_REDUCE",INT_MUL_REDUCE,DB.Thm),
   ("INT_DIV_CALCULATE",INT_DIV_CALCULATE,DB.Thm),
   ("INT_DIV_REDUCE",INT_DIV_REDUCE,DB.Thm),
   ("INT_QUOT_CALCULATE",INT_QUOT_CALCULATE,DB.Thm),
   ("INT_QUOT_REDUCE",INT_QUOT_REDUCE,DB.Thm),
   ("INT_MOD_CALCULATE",INT_MOD_CALCULATE,DB.Thm),
   ("INT_MOD_REDUCE",INT_MOD_REDUCE,DB.Thm),
   ("INT_REM_CALCULATE",INT_REM_CALCULATE,DB.Thm),
   ("INT_REM_REDUCE",INT_REM_REDUCE,DB.Thm),
   ("INT_EXP_CALCULATE",INT_EXP_CALCULATE,DB.Thm),
   ("INT_EXP_REDUCE",INT_EXP_REDUCE,DB.Thm),
   ("INT_LT_REDUCE",INT_LT_REDUCE,DB.Thm),
   ("INT_LE_CALCULATE",INT_LE_CALCULATE,DB.Thm),
   ("INT_LE_REDUCE",INT_LE_REDUCE,DB.Thm),
   ("INT_GT_CALCULATE",INT_GT_CALCULATE,DB.Thm),
   ("INT_GT_REDUCE",INT_GT_REDUCE,DB.Thm),
   ("INT_GE_CALCULATE",INT_GE_CALCULATE,DB.Thm),
   ("INT_GE_REDUCE",INT_GE_REDUCE,DB.Thm),
   ("INT_EQ_CALCULATE",INT_EQ_CALCULATE,DB.Thm),
   ("INT_EQ_REDUCE",INT_EQ_REDUCE,DB.Thm),
   ("INT_DIVIDES_REDUCE",INT_DIVIDES_REDUCE,DB.Thm)]

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
                          quotient_listTheory.quotient_list_grammars),
                         ("dividesTheory.divides_grammars",
                          dividesTheory.divides_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_0", (Term.prim_mk_const { Name = "tint_0", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_0", (Term.prim_mk_const { Name = "tint_0", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_1", (Term.prim_mk_const { Name = "tint_1", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_1", (Term.prim_mk_const { Name = "tint_1", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_neg", (Term.prim_mk_const { Name = "tint_neg", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_neg", (Term.prim_mk_const { Name = "tint_neg", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_add", (Term.prim_mk_const { Name = "tint_add", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_add", (Term.prim_mk_const { Name = "tint_add", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "tint_add"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_mul", (Term.prim_mk_const { Name = "tint_mul", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_mul", (Term.prim_mk_const { Name = "tint_mul", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "tint_mul"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_lt", (Term.prim_mk_const { Name = "tint_lt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_lt", (Term.prim_mk_const { Name = "tint_lt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_eq", (Term.prim_mk_const { Name = "tint_eq", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_eq", (Term.prim_mk_const { Name = "tint_eq", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tint_of_num", (Term.prim_mk_const { Name = "tint_of_num", Thy = "integer"}))
  val _ = update_grms temp_add_type "int"
  val _ = update_grms temp_add_type "int"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_REP_CLASS", (Term.prim_mk_const { Name = "int_REP_CLASS", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_ABS_CLASS", (Term.prim_mk_const { Name = "int_ABS_CLASS", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_REP", (Term.prim_mk_const { Name = "int_REP", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_REP", (Term.prim_mk_const { Name = "int_REP", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_ABS", (Term.prim_mk_const { Name = "int_ABS", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_ABS", (Term.prim_mk_const { Name = "int_ABS", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_0", (Term.prim_mk_const { Name = "int_0", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_0", (Term.prim_mk_const { Name = "int_0", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_1", (Term.prim_mk_const { Name = "int_1", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_1", (Term.prim_mk_const { Name = "int_1", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_neg", (Term.prim_mk_const { Name = "int_neg", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_neg", (Term.prim_mk_const { Name = "int_neg", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_add", (Term.prim_mk_const { Name = "int_add", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_add", (Term.prim_mk_const { Name = "int_add", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_mul", (Term.prim_mk_const { Name = "int_mul", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_mul", (Term.prim_mk_const { Name = "int_mul", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_lt", (Term.prim_mk_const { Name = "int_lt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_lt", (Term.prim_mk_const { Name = "int_lt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_of_num", (Term.prim_mk_const { Name = "int_of_num", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_of_num", (Term.prim_mk_const { Name = "int_of_num", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "int_add", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "int_lt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "int_mul", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "int_neg", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "~", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numeric_negate", (Term.prim_mk_const { Name = "int_neg", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_sub", (Term.prim_mk_const { Name = "int_sub", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_sub", (Term.prim_mk_const { Name = "int_sub", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "int_sub"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "int_sub", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_le", (Term.prim_mk_const { Name = "int_le", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_le", (Term.prim_mk_const { Name = "int_le", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "int_le", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_gt", (Term.prim_mk_const { Name = "int_gt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_gt", (Term.prim_mk_const { Name = "int_gt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "int_gt", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_ge", (Term.prim_mk_const { Name = "int_ge", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_ge", (Term.prim_mk_const { Name = "int_ge", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "int_ge", Thy = "integer"}))
  val _ = update_grms temp_add_numeral_form (#"i", SOME "int_of_num")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Num", (Term.prim_mk_const { Name = "Num", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Num", (Term.prim_mk_const { Name = "Num", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_div", (Term.prim_mk_const { Name = "int_div", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "/"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "int_div", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_mod", (Term.prim_mk_const { Name = "int_mod", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "%"))
       (Infix(HOLgrammars.LEFT, 650))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("%", (Term.prim_mk_const { Name = "int_mod", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS", (Term.prim_mk_const { Name = "ABS", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS", (Term.prim_mk_const { Name = "ABS", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_quot", (Term.prim_mk_const { Name = "int_quot", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "quot"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("quot", (Term.prim_mk_const { Name = "int_quot", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_rem", (Term.prim_mk_const { Name = "int_rem", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "rem"))
       (Infix(HOLgrammars.LEFT, 650))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rem", (Term.prim_mk_const { Name = "int_rem", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_divides", (Term.prim_mk_const { Name = "int_divides", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_divides", (Term.prim_mk_const { Name = "int_divides", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "int_divides"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_exp", (Term.prim_mk_const { Name = "int_exp", Thy = "integer"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "int_exp"))
       (Infix(HOLgrammars.RIGHT, 700))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("**", (Term.prim_mk_const { Name = "int_exp", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_min", (Term.prim_mk_const { Name = "int_min", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_min", (Term.prim_mk_const { Name = "int_min", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_max", (Term.prim_mk_const { Name = "int_max", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_max", (Term.prim_mk_const { Name = "int_max", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEAST_INT", (Term.prim_mk_const { Name = "LEAST_INT", Thy = "integer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEAST_INT", (Term.prim_mk_const { Name = "LEAST_INT", Thy = "integer"}))
  val _ = update_grms (UTOFF (temp_set_fixity "LEAST_INT")) (Binder)
  val integer_grammars = Parse.current_lgrms()
  end


  val _ = TypeBase.write [TypeBasePure.mk_nondatatype_info
    (``:int``, {nchotomy = SOME INT_NUM_CASES,
                induction = NONE,
                encode = NONE, size = NONE})];

  val () = Literal.add_literal
     (fn tm =>
        case Lib.total boolSyntax.dest_strip_comb tm of
           SOME ("integer$int_of_num", [n]) => numSyntax.is_numeral n
         | SOME ("integer$int_neg", [n]) =>
             (case Lib.total boolSyntax.dest_strip_comb n of
                 SOME ("integer$int_of_num", [n]) => numSyntax.is_numeral n
               | _ => false)
         | _ => false)
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "integer",
    thydataty = "simp",
    data =
        "integer.INT_ADD_LID integer.INT_ADD_LID_UNIQ integer.NUM_OF_INT integer.INT_SUB_SUB2 integer.INT_SUB_SUB integer.INT_SUB_RZERO integer.INT_SUB_RNEG integer.INT_SUB_REFL integer.INT_SUB_NEG2 integer.INT_SUB_LZERO integer.INT_SUB_ADD2 integer.INT_SUB_ADD integer.INT_SUB_0 integer.INT_NEG_SUB integer.INT_NEG_SAME_EQ integer.INT_NEG_MUL2 integer.INT_NEG_LT0 integer.INT_NEG_LE0 integer.INT_NEG_GT0 integer.INT_NEG_GE0 integer.INT_NEG_EQ0 integer.INT_NEG_0 integer.INT_NEGNEG integer.INT_MUL_RZERO integer.INT_MUL_LZERO integer.INT_MUL_LID integer.INT_MUL_EQ_1 integer.INT_MUL integer.INT_REM_NEG integer.INT_MOD_NEG integer.INT_REM_ID integer.INT_MOD_ID integer.INT_REM_COMMON_FACTOR integer.INT_MOD_COMMON_FACTOR integer.INT_REM0 integer.INT_MOD0 integer.INT_REM integer.INT_MOD integer.INT_MIN_NUM integer.INT_MAX_NUM integer.INT_LT_REFL integer.INT_LT_RADD integer.INT_LT_LADD integer.INT_LT_IMP_LE integer.INT_LT_CALCULATE integer.INT_LT_ADDR integer.INT_LT_ADDL integer.INT_LT_ADD integer.INT_LE_SQUARE integer.INT_LE_REFL integer.INT_LE_RADD integer.INT_LE_NEGR integer.INT_LE_NEGL integer.INT_LE_NEG integer.INT_LE_MUL integer.INT_LE_LADD integer.INT_LE_DOUBLE integer.INT_LE_ADDR integer.INT_LE_ADDL integer.INT_LE_ADD integer.INT_LE integer.INT_INJ integer.INT_EXP_EQ0 integer.INT_EXP integer.INT_EQ_LMUL integer.INT_EQ_RADD integer.INT_EQ_LADD integer.INT_EQ_CALCULATE integer.INT_ENTIRE integer.INT_QUOT_NEG integer.INT_DIV_NEG integer.INT_QUOT_ID integer.INT_DIV_ID integer.INT_QUOT_1 integer.INT_DIV_1 integer.INT_QUOT integer.INT_DIV integer.INT_DIVIDES_RSUB integer.INT_DIVIDES_RMUL integer.INT_DIVIDES_REFL integer.INT_DIVIDES_RADD integer.INT_DIVIDES_NEG integer.INT_DIVIDES_MUL integer.INT_DIVIDES_LSUB integer.INT_DIVIDES_LMUL integer.INT_DIVIDES_LADD integer.INT_DIVIDES_1 integer.INT_DIVIDES_0 integer.INT_ADD_SUB2 integer.INT_ADD_SUB integer.INT_ADD_RINV integer.INT_ADD_RID_UNIQ integer.INT_ADD_LINV integer.INT_ADD_RID integer.INFINITE_INT_UNIV integer.INT_MOD_MOD integer.INT_MUL_RID"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "integer", thydataty = "compute", data = "integer.NUM_OF_INT"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "integer"
end
