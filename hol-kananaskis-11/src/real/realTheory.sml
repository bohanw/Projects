structure realTheory :> realTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading realTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open realaxTheory
  in end;
  val _ = Theory.link_parents
          ("real",
          Arbnum.fromString "1488589207",
          Arbnum.fromString "633189")
          [("realax",
           Arbnum.fromString "1488589187",
           Arbnum.fromString "922331")];
  val _ = Theory.incorporate_types "real" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("min", "bool"),
   ID("pair", "prod"), ID("num", "num"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("arithmetic", "-"), ID("real", "/"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("arithmetic", ">="),
   ID("bool", "?"), ID("bool", "?!"), ID("min", "@"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bool", "COND"),
   ID("arithmetic", "DIV"), ID("arithmetic", "EXP"), ID("bool", "F"),
   ID("arithmetic", "FACT"), ID("pred_set", "FINITE"), ID("combin", "I"),
   ID("while", "LEAST"), ID("arithmetic", "NUMERAL"),
   ID("real", "NUM_CEILING"), ID("real", "NUM_FLOOR"),
   ID("arithmetic", "ODD"), ID("num", "SUC"), ID("bool", "T"),
   ID("pred_set", "UNIV"), ID("relation", "WF"), ID("relation", "WFREC"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("real", "abs"),
   ID("real", "inf"), ID("realax", "inv"), ID("real", "max"),
   ID("real", "min"), ID("arithmetic", "num_CASE"),
   ID("pair", "pair_CASE"), ID("real", "pos"), ID("real", "pow"),
   ID("realax", "real_0"), ID("realax", "real_1"),
   ID("realax", "real_add"), ID("real", "real_ge"), ID("real", "real_gt"),
   ID("realax", "real_lt"), ID("real", "real_lte"),
   ID("realax", "real_mul"), ID("realax", "real_neg"),
   ID("real", "real_of_num"), ID("real", "real_sub"), ID("real", "sum"),
   ID("real", "sum_tupled"), ID("real", "sup"), ID("marker", "unint"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 0, 1], TYOP [0, 2, 0], TYOP [4],
   TYOP [0, 4, 0], TYOP [3, 4, 4], TYOP [3, 6, 5], TYOP [0, 7, 0],
   TYOP [0, 5, 0], TYOP [0, 6, 9], TYOP [0, 0, 0], TYOP [0, 0, 11],
   TYOP [0, 0, 2], TYOP [0, 0, 5], TYOP [0, 0, 4], TYOP [0, 5, 1],
   TYOP [0, 6, 16], TYOP [0, 7, 1], TYOP [0, 7, 18], TYOP [0, 4, 4],
   TYOP [0, 20, 1], TYOP [0, 21, 1], TYOP [0, 16, 1], TYOP [0, 17, 1],
   TYOP [0, 24, 1], TYOP [0, 2, 1], TYOP [0, 26, 1], TYOP [0, 4, 1],
   TYOP [0, 28, 1], TYOP [0, 6, 1], TYOP [0, 30, 1], TYOP [0, 4, 20],
   TYOP [0, 4, 6], TYOP [0, 4, 33], TYOP [0, 5, 7], TYOP [0, 6, 35],
   TYOP [0, 1, 1], TYOP [0, 1, 37], TYOP [0, 4, 28], TYOP [0, 8, 1],
   TYOP [0, 8, 40], TYOP [0, 19, 1], TYOP [0, 42, 19], TYOP [0, 1, 38],
   TYOP [0, 11, 11], TYOP [0, 11, 45], TYOP [0, 1, 46], TYOP [0, 1, 12],
   TYOP [0, 28, 4], TYOP [0, 8, 8], TYOP [0, 50, 8], TYOP [0, 19, 51],
   TYOP [0, 0, 9], TYOP [0, 4, 53], TYOP [0, 4, 5], TYOP [0, 55, 0],
   TYOP [0, 6, 56], TYOP [0, 10, 0], TYOP [0, 7, 58]]
  end
  val _ = Theory.incorporate_consts "real" tyvector
     [("sup", 3), ("sum_tupled", 8), ("sum", 10), ("real_sub", 12),
      ("real_of_num", 5), ("real_lte", 13), ("real_gt", 13),
      ("real_ge", 13), ("pow", 14), ("pos", 11), ("min", 12), ("max", 12),
      ("inf", 3), ("abs", 11), ("NUM_FLOOR", 15), ("NUM_CEILING", 15),
      ("/", 12)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("N", 4), TMV("P", 17), TMV("P", 2), TMV("R", 19), TMV("a", 4),
   TMV("a", 7), TMV("a", 0), TMV("b", 4), TMV("b", 0), TMV("c", 0),
   TMV("d", 4), TMV("d", 0), TMV("e", 0), TMV("f", 5), TMV("g", 5),
   TMV("h", 0), TMV("k", 4), TMV("k", 0), TMV("m", 4), TMV("n", 4),
   TMV("p", 20), TMV("p", 2), TMV("p", 4), TMV("r", 4), TMV("r", 0),
   TMV("s", 0), TMV("sum_tupled", 8), TMV("u", 0), TMV("v", 4),
   TMV("v", 6), TMV("v", 0), TMV("v1", 4), TMV("v2", 5), TMV("v3", 4),
   TMV("w", 0), TMV("x", 4), TMV("x", 6), TMV("x", 0), TMV("x0", 0),
   TMV("x1", 5), TMV("x1", 0), TMV("x2", 0), TMV("y", 4), TMV("y", 0),
   TMV("y0", 0), TMV("y1", 0), TMV("y2", 0), TMV("z", 0), TMC(5, 22),
   TMC(5, 23), TMC(5, 25), TMC(5, 27), TMC(5, 29), TMC(5, 31), TMC(5, 26),
   TMC(6, 32), TMC(7, 32), TMC(8, 34), TMC(8, 36), TMC(9, 32), TMC(10, 12),
   TMC(11, 38), TMC(12, 4), TMC(13, 39), TMC(14, 39), TMC(15, 38),
   TMC(15, 41), TMC(15, 39), TMC(15, 13), TMC(16, 38), TMC(17, 39),
   TMC(18, 29), TMC(18, 26), TMC(19, 29), TMC(19, 26), TMC(20, 43),
   TMC(20, 3), TMC(21, 20), TMC(22, 20), TMC(23, 44), TMC(23, 47),
   TMC(23, 48), TMC(24, 32), TMC(25, 32), TMC(26, 1), TMC(27, 20),
   TMC(28, 26), TMC(29, 11), TMC(30, 49), TMC(31, 20), TMC(32, 15),
   TMC(33, 15), TMC(34, 28), TMC(35, 20), TMC(36, 1), TMC(37, 2),
   TMC(38, 42), TMC(39, 52), TMC(40, 4), TMC(41, 38), TMC(42, 11),
   TMC(43, 3), TMC(44, 11), TMC(45, 12), TMC(46, 12), TMC(47, 54),
   TMC(48, 57), TMC(48, 59), TMC(49, 11), TMC(50, 14), TMC(51, 0),
   TMC(52, 0), TMC(53, 12), TMC(54, 13), TMC(55, 13), TMC(56, 13),
   TMC(57, 13), TMC(58, 12), TMC(59, 11), TMC(60, 5), TMC(61, 12),
   TMC(62, 10), TMC(63, 8), TMC(64, 3), TMC(65, 11), TMC(66, 37)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op real_of_num x = x
    val op real_of_num =
    DT(((("real",0),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%61%68%119%62@@%110@@%52%19%68%119%93$0@@@%112%119$0@@%111@@|@@"])
  fun op real_sub x = x
    val op real_sub =
    DT(((("real",22),[]),[]),
       [read"%54%37%54%43%68%120$1@$0@@%112$1@%118$0@@@|@|@"])
  fun op real_lte x = x
    val op real_lte =
    DT(((("real",23),[]),[]),
       [read"%54%37%54%43%65%116$1@$0@@%125%115$0@$1@@@|@|@"])
  fun op real_gt x = x
    val op real_gt =
    DT(((("real",24),[]),[]),
       [read"%54%37%54%43%65%114$1@$0@@%115$0@$1@@|@|@"])
  fun op real_ge x = x
    val op real_ge =
    DT(((("real",25),[]),[]),
       [read"%54%37%54%43%65%113$1@$0@@%116$0@$1@@|@|@"])
  fun op real_div x = x
    val op real_div =
    DT(((("real",26),[]),[]),
       [read"%54%37%54%43%68%60$1@$0@@%117$1@%102$0@@@|@|@"])
  fun op abs x = x
    val op abs =
    DT(((("real",204),[]),[]),
       [read"%54%37%68%100$0@@%81%116%119%62@@$0@@$0@%118$0@@@|@"])
  fun op pow x = x
    val op pow =
    DT(((("real",233),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%61%54%37%68%109$0@%62@@%119%89%77%98@@@@|@@%54%37%52%19%68%109$1@%93$0@@@%117$1@%109$1@$0@@@|@|@@"])
  fun op sup x = x
    val op sup =
    DT(((("real",269),[]),[]),
       [read"%51%2%68%123$0@@%76%25%54%43%65%72%37%61$3$0@@%115$1@$0@@|@@%115$0@$1@@|@|@@|@"])
  fun op sum_tupled_primitive x = x
    val op sum_tupled_primitive =
    DT(((("real",277),[]),[]),
       [read"%66%122@%97%75%3%61%96$0@@%49%13%52%18%52%19$3%58%57$0@$1@@$2@@%58%57$0@%93$1@@@$2@@|@|@|@@|@@%26%5%107$0@%29%13%106$1@%19%33%105$0@%87%119%62@@@%18%87%112$6%58%57$2@$0@@$3@@@$3%56$2@$0@@@@|@||@||@||@@"])
  fun op sum_curried x = x
    val op sum_curried =
    DT(((("real",278),[]),[]),
       [read"%53%36%49%39%68%121$1@$0@@%122%58$1@$0@@@|@|@"])
  fun op pos_def x = x
    val op pos_def =
    DT(((("real",347),[]),[]),
       [read"%54%37%68%108$0@@%81%116%119%62@@$0@@$0@%119%62@@@|@"])
  fun op min_def x = x
    val op min_def =
    DT(((("real",354),[]),[]),
       [read"%54%37%54%43%68%104$1@$0@@%81%116$1@$0@@$1@$0@@|@|@"])
  fun op max_def x = x
    val op max_def =
    DT(((("real",365),[]),[]),
       [read"%54%37%54%43%68%103$1@$0@@%81%116$1@$0@@$0@$1@@|@|@"])
  fun op inf_def x = x
    val op inf_def =
    DT(((("real",378),[]),[]),
       [read"%51%21%68%101$0@@%118%123%24$1%118$0@@|@@@|@"])
  fun op NUM_FLOOR_def x = x
    val op NUM_FLOOR_def =
    DT(((("real",437),[]),[]),
       [read"%54%37%67%91$0@@%88%19%114%119%56$0@%89%77%98@@@@@$1@|@@|@"])
  fun op NUM_CEILING_def x = x
    val op NUM_CEILING_def =
    DT(((("real",438),[]),[]),
       [read"%54%37%67%90$0@@%88%19%116$1@%119$0@@|@@|@"])
  fun op REAL_0 x = x
    val op REAL_0 =
    DT(((("real",1),[("bool",[25,56]),("real",[0])]),["DISK_THM"]),
       [read"%68%110@%119%62@@"])
  fun op REAL_1 x = x
    val op REAL_1 =
    DT(((("real",2),
        [("arithmetic",[17]),("bool",[25,56]),("real",[0]),
         ("realax",[82])]),["DISK_THM"]),
       [read"%68%111@%119%89%77%98@@@@"])
  fun op REAL_10 x = x
    val op REAL_10 =
    DT(((("real",3),[("real",[1,2]),("realax",[76])]),["DISK_THM"]),
       [read"%125%68%119%89%77%98@@@@%119%62@@@"])
  fun op REAL_ADD_SYM x = x
    val op REAL_ADD_SYM =
    DT(((("real",4),[("realax",[77])]),["DISK_THM"]),
       [read"%54%37%54%43%68%112$1@$0@@%112$0@$1@@|@|@"])
  fun op REAL_ADD_COMM x = x
    val op REAL_ADD_COMM =
    DT(((("real",5),[("real",[4])]),["DISK_THM"]),
       [read"%54%37%54%43%68%112$1@$0@@%112$0@$1@@|@|@"])
  fun op REAL_ADD_ASSOC x = x
    val op REAL_ADD_ASSOC =
    DT(((("real",6),[("realax",[79])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%112$2@%112$1@$0@@@%112%112$2@$1@@$0@@|@|@|@"])
  fun op REAL_ADD_LID x = x
    val op REAL_ADD_LID =
    DT(((("real",7),[("real",[1]),("realax",[82])]),["DISK_THM"]),
       [read"%54%37%68%112%119%62@@$0@@$0@|@"])
  fun op REAL_ADD_LINV x = x
    val op REAL_ADD_LINV =
    DT(((("real",8),[("real",[1]),("realax",[84])]),["DISK_THM"]),
       [read"%54%37%68%112%118$0@@$0@@%119%62@@|@"])
  fun op REAL_LDISTRIB x = x
    val op REAL_LDISTRIB =
    DT(((("real",9),[("realax",[81])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117$2@%112$1@$0@@@%112%117$2@$1@@%117$2@$0@@@|@|@|@"])
  fun op REAL_LT_TOTAL x = x
    val op REAL_LT_TOTAL =
    DT(((("real",10),[("realax",[86])]),["DISK_THM"]),
       [read"%54%37%54%43%99%68$1@$0@@%99%115$1@$0@@%115$0@$1@@@|@|@"])
  fun op REAL_LT_REFL x = x
    val op REAL_LT_REFL =
    DT(((("real",11),[("realax",[87])]),["DISK_THM"]),
       [read"%54%37%125%115$0@$0@@|@"])
  fun op REAL_LT_TRANS x = x
    val op REAL_LT_TRANS =
    DT(((("real",12),[("realax",[88])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115$2@$1@@%115$1@$0@@@%115$2@$0@@|@|@|@"])
  fun op REAL_LT_IADD x = x
    val op REAL_LT_IADD =
    DT(((("real",13),[("realax",[89])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115$1@$0@@%115%112$2@$1@@%112$2@$0@@@|@|@|@"])
  fun op REAL_SUP_ALLPOS x = x
    val op REAL_SUP_ALLPOS =
    DT(((("real",14),[("real",[1]),("realax",[75])]),["DISK_THM"]),
       [read"%51%2%69%61%54%37%69$1$0@@%115%119%62@@$0@@|@@%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%115$0@$1@@|@|@@@@%72%25%54%43%65%72%37%61$3$0@@%115$1@$0@@|@@%115$0@$1@@|@|@@|@"])
  fun op REAL_MUL_SYM x = x
    val op REAL_MUL_SYM =
    DT(((("real",15),[("realax",[78])]),["DISK_THM"]),
       [read"%54%37%54%43%68%117$1@$0@@%117$0@$1@@|@|@"])
  fun op REAL_MUL_COMM x = x
    val op REAL_MUL_COMM =
    DT(((("real",16),[("real",[15])]),["DISK_THM"]),
       [read"%54%37%54%43%68%117$1@$0@@%117$0@$1@@|@|@"])
  fun op REAL_MUL_ASSOC x = x
    val op REAL_MUL_ASSOC =
    DT(((("real",17),[("realax",[80])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117$2@%117$1@$0@@@%117%117$2@$1@@$0@@|@|@|@"])
  fun op REAL_MUL_LID x = x
    val op REAL_MUL_LID =
    DT(((("real",18),[("real",[2]),("realax",[83])]),["DISK_THM"]),
       [read"%54%37%68%117%119%89%77%98@@@@$0@@$0@|@"])
  fun op REAL_MUL_LINV x = x
    val op REAL_MUL_LINV =
    DT(((("real",19),[("real",[1,2]),("realax",[85])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%68%117%102$0@@$0@@%119%89%77%98@@@@@|@"])
  fun op REAL_LT_MUL x = x
    val op REAL_LT_MUL =
    DT(((("real",20),[("real",[1]),("realax",[90])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%115%119%62@@$0@@@%115%119%62@@%117$1@$0@@@|@|@"])
  fun op REAL_INV_0 x = x
    val op REAL_INV_0 =
    DT(((("real",21),[("real",[1]),("realax",[91])]),["DISK_THM"]),
       [read"%68%102%119%62@@@%119%62@@"])
  fun op REAL_ADD_RID x = x
    val op REAL_ADD_RID =
    DT(((("real",27),[("real",[4,7])]),["DISK_THM"]),
       [read"%54%37%68%112$0@%119%62@@@$0@|@"])
  fun op REAL_ADD_RINV x = x
    val op REAL_ADD_RINV =
    DT(((("real",28),[("real",[4,8])]),["DISK_THM"]),
       [read"%54%37%68%112$0@%118$0@@@%119%62@@|@"])
  fun op REAL_MUL_RID x = x
    val op REAL_MUL_RID =
    DT(((("real",29),[("real",[15,18])]),["DISK_THM"]),
       [read"%54%37%68%117$0@%119%89%77%98@@@@@$0@|@"])
  fun op REAL_MUL_RINV x = x
    val op REAL_MUL_RINV =
    DT(((("real",30),[("real",[15,19])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%68%117$0@%102$0@@@%119%89%77%98@@@@@|@"])
  fun op REAL_RDISTRIB x = x
    val op REAL_RDISTRIB =
    DT(((("real",31),[("real",[9,15])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117%112$2@$1@@$0@@%112%117$2@$0@@%117$1@$0@@@|@|@|@"])
  fun op REAL_EQ_LADD x = x
    val op REAL_EQ_LADD =
    DT(((("real",32),[("bool",[25,26,53]),("real",[6,7,8])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68%112$2@$1@@%112$2@$0@@@%68$1@$0@@|@|@|@"])
  fun op REAL_EQ_RADD x = x
    val op REAL_EQ_RADD =
    DT(((("real",33),[("real",[4,32])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68%112$2@$0@@%112$1@$0@@@%68$2@$1@@|@|@|@"])
  fun op REAL_ADD_LID_UNIQ x = x
    val op REAL_ADD_LID_UNIQ =
    DT(((("real",34),[("bool",[58]),("real",[7,33])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%112$1@$0@@$0@@%68$1@%119%62@@@|@|@"])
  fun op REAL_ADD_RID_UNIQ x = x
    val op REAL_ADD_RID_UNIQ =
    DT(((("real",35),[("real",[4,34])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%112$1@$0@@$1@@%68$0@%119%62@@@|@|@"])
  fun op REAL_LNEG_UNIQ x = x
    val op REAL_LNEG_UNIQ =
    DT(((("real",36),[("real",[8,33])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%112$1@$0@@%119%62@@@%68$1@%118$0@@@|@|@"])
  fun op REAL_RNEG_UNIQ x = x
    val op REAL_RNEG_UNIQ =
    DT(((("real",37),[("real",[4,36])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%112$1@$0@@%119%62@@@%68$0@%118$1@@@|@|@"])
  fun op REAL_NEG_ADD x = x
    val op REAL_NEG_ADD =
    DT(((("real",38),
        [("bool",[25,56,58,63]),("real",[4,6,7,8,36])]),["DISK_THM"]),
       [read"%54%37%54%43%68%118%112$1@$0@@@%112%118$1@@%118$0@@@|@|@"])
  fun op REAL_MUL_LZERO x = x
    val op REAL_MUL_LZERO =
    DT(((("real",39),
        [("bool",[25,56,58]),("real",[7,31,34])]),["DISK_THM"]),
       [read"%54%37%68%117%119%62@@$0@@%119%62@@|@"])
  fun op REAL_MUL_RZERO x = x
    val op REAL_MUL_RZERO =
    DT(((("real",40),[("real",[15,39])]),["DISK_THM"]),
       [read"%54%37%68%117$0@%119%62@@@%119%62@@|@"])
  fun op REAL_NEG_LMUL x = x
    val op REAL_NEG_LMUL =
    DT(((("real",41),
        [("bool",[25,56,58]),("real",[8,31,36,39])]),["DISK_THM"]),
       [read"%54%37%54%43%68%118%117$1@$0@@@%117%118$1@@$0@@|@|@"])
  fun op REAL_NEG_RMUL x = x
    val op REAL_NEG_RMUL =
    DT(((("real",42),[("real",[15,41])]),["DISK_THM"]),
       [read"%54%37%54%43%68%118%117$1@$0@@@%117$1@%118$0@@@|@|@"])
  fun op REAL_NEGNEG x = x
    val op REAL_NEGNEG =
    DT(((("real",43),[("bool",[25,56,58]),("real",[28,36])]),["DISK_THM"]),
       [read"%54%37%68%118%118$0@@@$0@|@"])
  fun op REAL_NEG_MUL2 x = x
    val op REAL_NEG_MUL2 =
    DT(((("real",44),
        [("bool",[25,36,56,58]),("real",[41,42,43])]),["DISK_THM"]),
       [read"%54%37%54%43%68%117%118$1@@%118$0@@@%117$1@$0@@|@|@"])
  fun op REAL_ENTIRE x = x
    val op REAL_ENTIRE =
    DT(((("real",45),
        [("bool",[25,26,27,30,52,53,56]),
         ("real",[17,18,19,39,40])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%117$1@$0@@%119%62@@@%99%68$1@%119%62@@@%68$0@%119%62@@@@|@|@"])
  fun op REAL_LT_LADD x = x
    val op REAL_LT_LADD =
    DT(((("real",46),
        [("bool",[25,26,53]),("real",[6,7,8,13])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115%112$2@$1@@%112$2@$0@@@%115$1@$0@@|@|@|@"])
  fun op REAL_LT_RADD x = x
    val op REAL_LT_RADD =
    DT(((("real",47),[("real",[4,46])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115%112$2@$0@@%112$1@$0@@@%115$2@$1@@|@|@|@"])
  fun op REAL_NOT_LT x = x
    val op REAL_NOT_LT =
    DT(((("real",48),[("bool",[25,56]),("real",[23])]),["DISK_THM"]),
       [read"%54%37%54%43%65%125%115$1@$0@@@%116$0@$1@@|@|@"])
  fun op REAL_LT_ANTISYM x = x
    val op REAL_LT_ANTISYM =
    DT(((("real",49),
        [("bool",[25,26,27,53,54]),("real",[11,12])]),["DISK_THM"]),
       [read"%54%37%54%43%125%61%115$1@$0@@%115$0@$1@@@|@|@"])
  fun op REAL_LT_GT x = x
    val op REAL_LT_GT =
    DT(((("real",50),
        [("bool",[25,26,27,53,54]),("real",[49])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115$1@$0@@%125%115$0@$1@@@|@|@"])
  fun op REAL_NOT_LE x = x
    val op REAL_NOT_LE =
    DT(((("real",51),[("bool",[25,54,56]),("real",[23])]),["DISK_THM"]),
       [read"%54%37%54%43%65%125%116$1@$0@@@%115$0@$1@@|@|@"])
  fun op REAL_LE_TOTAL x = x
    val op REAL_LE_TOTAL =
    DT(((("real",52),
        [("bool",[25,26,27,54,58,96]),("real",[23,49])]),["DISK_THM"]),
       [read"%54%37%54%43%99%116$1@$0@@%116$0@$1@@|@|@"])
  fun op REAL_LET_TOTAL x = x
    val op REAL_LET_TOTAL =
    DT(((("real",53),[("bool",[13,25,52,54]),("real",[23])]),["DISK_THM"]),
       [read"%54%37%54%43%99%116$1@$0@@%115$0@$1@@|@|@"])
  fun op REAL_LTE_TOTAL x = x
    val op REAL_LTE_TOTAL =
    DT(((("real",54),[("bool",[13,25,52,54]),("real",[23])]),["DISK_THM"]),
       [read"%54%37%54%43%99%115$1@$0@@%116$0@$1@@|@|@"])
  fun op REAL_LE_REFL x = x
    val op REAL_LE_REFL =
    DT(((("real",55),
        [("bool",[25,26,27,54]),("real",[11,23])]),["DISK_THM"]),
       [read"%54%37%116$0@$0@|@"])
  fun op REAL_LE_LT x = x
    val op REAL_LE_LT =
    DT(((("real",56),
        [("bool",[25,26,52,53,54,56,63]),
         ("real",[10,11,23,50])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116$1@$0@@%99%115$1@$0@@%68$1@$0@@@|@|@"])
  fun op REAL_LT_LE x = x
    val op REAL_LT_LE =
    DT(((("real",57),
        [("bool",[25,26,27,51,52,54,63,98]),("real",[11,56]),
         ("sat",[1,3,7])]),["DISK_THM"]),
       [read"%54%37%54%43%65%115$1@$0@@%61%116$1@$0@@%125%68$1@$0@@@@|@|@"])
  fun op REAL_LT_IMP_LE x = x
    val op REAL_LT_IMP_LE =
    DT(((("real",58),[("bool",[25,52,63]),("real",[56])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115$1@$0@@%116$1@$0@@|@|@"])
  fun op REAL_LTE_TRANS x = x
    val op REAL_LTE_TRANS =
    DT(((("real",59),[("bool",[25,53,97]),("real",[12,56])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115$2@$1@@%116$1@$0@@@%115$2@$0@@|@|@|@"])
  fun op REAL_LET_TRANS x = x
    val op REAL_LET_TRANS =
    DT(((("real",60),[("bool",[98]),("real",[12,56])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%116$2@$1@@%115$1@$0@@@%115$2@$0@@|@|@|@"])
  fun op REAL_LE_TRANS x = x
    val op REAL_LE_TRANS =
    DT(((("real",61),[("bool",[25,53]),("real",[56,58,60])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%116$2@$1@@%116$1@$0@@@%116$2@$0@@|@|@|@"])
  fun op REAL_LE_ANTISYM x = x
    val op REAL_LE_ANTISYM =
    DT(((("real",62),
        [("bool",[25,26,51,53,54,56,63]),
         ("real",[10,23,55])]),["DISK_THM"]),
       [read"%54%37%54%43%65%61%116$1@$0@@%116$0@$1@@@%68$1@$0@@|@|@"])
  fun op REAL_LET_ANTISYM x = x
    val op REAL_LET_ANTISYM =
    DT(((("real",63),[("bool",[13,25,51,54]),("real",[23])]),["DISK_THM"]),
       [read"%54%37%54%43%125%61%115$1@$0@@%116$0@$1@@@|@|@"])
  fun op REAL_LTE_ANTSYM x = x
    val op REAL_LTE_ANTSYM =
    DT(((("real",64),[("bool",[41]),("real",[63])]),["DISK_THM"]),
       [read"%54%37%54%43%125%61%116$1@$0@@%115$0@$1@@@|@|@"])
  fun op REAL_NEG_LT0 x = x
    val op REAL_NEG_LT0 =
    DT(((("real",65),[("bool",[25,56]),("real",[7,8,47])]),["DISK_THM"]),
       [read"%54%37%65%115%118$0@@%119%62@@@%115%119%62@@$0@@|@"])
  fun op REAL_NEG_GT0 x = x
    val op REAL_NEG_GT0 =
    DT(((("real",66),[("bool",[25,56,58]),("real",[43,65])]),["DISK_THM"]),
       [read"%54%37%65%115%119%62@@%118$0@@@%115$0@%119%62@@@|@"])
  fun op REAL_NEG_LE0 x = x
    val op REAL_NEG_LE0 =
    DT(((("real",67),[("bool",[25,56]),("real",[23,66])]),["DISK_THM"]),
       [read"%54%37%65%116%118$0@@%119%62@@@%116%119%62@@$0@@|@"])
  fun op REAL_NEG_GE0 x = x
    val op REAL_NEG_GE0 =
    DT(((("real",68),[("bool",[25,56]),("real",[23,65])]),["DISK_THM"]),
       [read"%54%37%65%116%119%62@@%118$0@@@%116$0@%119%62@@@|@"])
  fun op REAL_LT_NEGTOTAL x = x
    val op REAL_LT_NEGTOTAL =
    DT(((("real",69),
        [("bool",[25,52,56,63]),("real",[10,43,65])]),["DISK_THM"]),
       [read"%54%37%99%68$0@%119%62@@@%99%115%119%62@@$0@@%115%119%62@@%118$0@@@@|@"])
  fun op REAL_LE_NEGTOTAL x = x
    val op REAL_LE_NEGTOTAL =
    DT(((("real",70),
        [("bool",[25,52,56,63]),("real",[56,69])]),["DISK_THM"]),
       [read"%54%37%99%116%119%62@@$0@@%116%119%62@@%118$0@@@|@"])
  fun op REAL_LE_MUL x = x
    val op REAL_LE_MUL =
    DT(((("real",71),
        [("bool",[25,26,27,30,51,52,53,56,63]),
         ("real",[20,39,40,56])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%116%119%62@@$1@@%116%119%62@@$0@@@%116%119%62@@%117$1@$0@@@|@|@"])
  fun op REAL_LE_SQUARE x = x
    val op REAL_LE_SQUARE =
    DT(((("real",72),
        [("bool",[25,53,58]),("real",[41,42,43,70,71])]),["DISK_THM"]),
       [read"%54%37%116%119%62@@%117$0@$0@@|@"])
  fun op REAL_LE_01 x = x
    val op REAL_LE_01 =
    DT(((("real",73),[("real",[18,72])]),["DISK_THM"]),
       [read"%116%119%62@@%119%89%77%98@@@@"])
  fun op REAL_LT_01 x = x
    val op REAL_LT_01 =
    DT(((("real",74),
        [("bool",[25,26,27,51,54,58,63]),
         ("real",[3,57,73])]),["DISK_THM"]),
       [read"%115%119%62@@%119%89%77%98@@@@"])
  fun op REAL_LE_LADD x = x
    val op REAL_LE_LADD =
    DT(((("real",75),[("real",[23,46])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%116%112$2@$1@@%112$2@$0@@@%116$1@$0@@|@|@|@"])
  fun op REAL_LE_RADD x = x
    val op REAL_LE_RADD =
    DT(((("real",76),[("real",[23,47])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%116%112$2@$0@@%112$1@$0@@@%116$2@$1@@|@|@|@"])
  fun op REAL_LT_ADD2 x = x
    val op REAL_LT_ADD2 =
    DT(((("real",77),
        [("bool",[25,51,63]),("real",[12,46,47])]),["DISK_THM"]),
       [read"%54%34%54%37%54%43%54%47%69%61%115$3@$2@@%115$1@$0@@@%115%112$3@$1@@%112$2@$0@@@|@|@|@|@"])
  fun op REAL_LE_ADD2 x = x
    val op REAL_LE_ADD2 =
    DT(((("real",78),
        [("bool",[25,51,63]),("real",[61,75,76])]),["DISK_THM"]),
       [read"%54%34%54%37%54%43%54%47%69%61%116$3@$2@@%116$1@$0@@@%116%112$3@$1@@%112$2@$0@@@|@|@|@|@"])
  fun op REAL_LE_ADD x = x
    val op REAL_LE_ADD =
    DT(((("real",79),[("bool",[25,53]),("real",[7,78])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%116%119%62@@$1@@%116%119%62@@$0@@@%116%119%62@@%112$1@$0@@@|@|@"])
  fun op REAL_LT_ADD x = x
    val op REAL_LT_ADD =
    DT(((("real",80),[("bool",[25,53]),("real",[7,77])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%115%119%62@@$0@@@%115%119%62@@%112$1@$0@@@|@|@"])
  fun op REAL_LT_ADDNEG x = x
    val op REAL_LT_ADDNEG =
    DT(((("real",81),
        [("bool",[25,56,58]),("real",[6,8,27,47])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115$1@%112$2@%118$0@@@@%115%112$1@$0@@$2@@|@|@|@"])
  fun op REAL_LT_ADDNEG2 x = x
    val op REAL_LT_ADDNEG2 =
    DT(((("real",82),
        [("bool",[25,56,58]),("real",[6,8,27,47])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115%112$2@%118$1@@@$0@@%115$2@%112$0@$1@@@|@|@|@"])
  fun op REAL_LT_ADD1 x = x
    val op REAL_LT_ADD1 =
    DT(((("real",83),
        [("bool",[25,53,58,63]),("real",[27,46,56,74,77])]),["DISK_THM"]),
       [read"%54%37%54%43%69%116$1@$0@@%115$1@%112$0@%119%89%77%98@@@@@@|@|@"])
  fun op REAL_SUB_ADD x = x
    val op REAL_SUB_ADD =
    DT(((("real",84),
        [("bool",[25,56,58]),("real",[6,8,22,27])]),["DISK_THM"]),
       [read"%54%37%54%43%68%112%120$1@$0@@$0@@$1@|@|@"])
  fun op REAL_SUB_ADD2 x = x
    val op REAL_SUB_ADD2 =
    DT(((("real",85),[("real",[4,84])]),["DISK_THM"]),
       [read"%54%37%54%43%68%112$0@%120$1@$0@@@$1@|@|@"])
  fun op REAL_SUB_REFL x = x
    val op REAL_SUB_REFL =
    DT(((("real",86),[("bool",[25,56]),("real",[22,28])]),["DISK_THM"]),
       [read"%54%37%68%120$0@$0@@%119%62@@|@"])
  fun op REAL_SUB_0 x = x
    val op REAL_SUB_0 =
    DT(((("real",87),
        [("bool",[25,26,53]),("real",[7,84,86])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%120$1@$0@@%119%62@@@%68$1@$0@@|@|@"])
  fun op REAL_LE_DOUBLE x = x
    val op REAL_LE_DOUBLE =
    DT(((("real",88),
        [("bool",[25,26,53]),("real",[7,51,77,78])]),["DISK_THM"]),
       [read"%54%37%65%116%119%62@@%112$0@$0@@@%116%119%62@@$0@@|@"])
  fun op REAL_LE_NEGL x = x
    val op REAL_LE_NEGL =
    DT(((("real",89),[("bool",[25,56]),("real",[28,75,88])]),["DISK_THM"]),
       [read"%54%37%65%116%118$0@@$0@@%116%119%62@@$0@@|@"])
  fun op REAL_LE_NEGR x = x
    val op REAL_LE_NEGR =
    DT(((("real",90),[("bool",[25,56]),("real",[43,68,89])]),["DISK_THM"]),
       [read"%54%37%65%116$0@%118$0@@@%116$0@%119%62@@@|@"])
  fun op REAL_NEG_EQ0 x = x
    val op REAL_NEG_EQ0 =
    DT(((("real",91),[("bool",[26]),("real",[8,27,28])]),["DISK_THM"]),
       [read"%54%37%65%68%118$0@@%119%62@@@%68$0@%119%62@@@|@"])
  fun op REAL_NEG_0 x = x
    val op REAL_NEG_0 =
    DT(((("real",92),[("bool",[25,56]),("real",[91])]),["DISK_THM"]),
       [read"%68%118%119%62@@@%119%62@@"])
  fun op REAL_NEG_SUB x = x
    val op REAL_NEG_SUB =
    DT(((("real",93),[("real",[4,22,38,43])]),["DISK_THM"]),
       [read"%54%37%54%43%68%118%120$1@$0@@@%120$0@$1@@|@|@"])
  fun op REAL_SUB_LT x = x
    val op REAL_SUB_LT =
    DT(((("real",94),[("bool",[25,56]),("real",[7,47,84])]),["DISK_THM"]),
       [read"%54%37%54%43%65%115%119%62@@%120$1@$0@@@%115$0@$1@@|@|@"])
  fun op REAL_SUB_LE x = x
    val op REAL_SUB_LE =
    DT(((("real",95),[("bool",[25,56]),("real",[7,76,84])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116%119%62@@%120$1@$0@@@%116$0@$1@@|@|@"])
  fun op REAL_ADD_SUB x = x
    val op REAL_ADD_SUB =
    DT(((("real",96),
        [("bool",[25,56,58]),("real",[4,6,22,27,28])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120%112$1@$0@@$1@@$0@|@|@"])
  fun op REAL_EQ_LMUL x = x
    val op REAL_EQ_LMUL =
    DT(((("real",97),
        [("bool",[25,26,27,30,52,53,56]),
         ("real",[17,18,19,39])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68%117$2@$1@@%117$2@$0@@@%99%68$2@%119%62@@@%68$1@$0@@@|@|@|@"])
  fun op REAL_EQ_RMUL x = x
    val op REAL_EQ_RMUL =
    DT(((("real",98),[("real",[15,97])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68%117$2@$0@@%117$1@$0@@@%99%68$0@%119%62@@@%68$2@$1@@@|@|@|@"])
  fun op REAL_SUB_LDISTRIB x = x
    val op REAL_SUB_LDISTRIB =
    DT(((("real",99),[("bool",[25,56]),("real",[9,22,42])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117$2@%120$1@$0@@@%120%117$2@$1@@%117$2@$0@@@|@|@|@"])
  fun op REAL_SUB_RDISTRIB x = x
    val op REAL_SUB_RDISTRIB =
    DT(((("real",100),[("real",[15,99])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117%120$2@$1@@$0@@%120%117$2@$0@@%117$1@$0@@@|@|@|@"])
  fun op REAL_NEG_EQ x = x
    val op REAL_NEG_EQ =
    DT(((("real",101),[("bool",[25,26,56]),("real",[43])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%118$1@@$0@@%68$1@%118$0@@@|@|@"])
  fun op REAL_NEG_MINUS1 x = x
    val op REAL_NEG_MINUS1 =
    DT(((("real",102),
        [("bool",[25,56,58]),("real",[18,41])]),["DISK_THM"]),
       [read"%54%37%68%118$0@@%117%118%119%89%77%98@@@@@$0@@|@"])
  fun op REAL_INV_NZ x = x
    val op REAL_INV_NZ =
    DT(((("real",103),
        [("bool",[25,26,27,53,54]),("real",[3,19,39])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%125%68%102$0@@%119%62@@@@|@"])
  fun op REAL_INVINV x = x
    val op REAL_INVINV =
    DT(((("real",104),
        [("bool",[25,26,27,30,52,53,58]),
         ("real",[3,19,30,40,98])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%68%102%102$0@@@$0@@|@"])
  fun op REAL_LT_IMP_NE x = x
    val op REAL_LT_IMP_NE =
    DT(((("real",105),
        [("bool",[25,26,27,54]),("real",[11])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115$1@$0@@%125%68$1@$0@@@|@|@"])
  fun op REAL_INV_POS x = x
    val op REAL_INV_POS =
    DT(((("real",106),
        [("bool",[25,26,27,53,58]),
         ("real",[10,19,20,41,49,66,74,103,105])]),["DISK_THM"]),
       [read"%54%37%69%115%119%62@@$0@@%115%119%62@@%102$0@@@|@"])
  fun op REAL_LT_LMUL_0 x = x
    val op REAL_LT_LMUL_0 =
    DT(((("real",107),
        [("bool",[25,26,51,53,58,63]),
         ("real",[17,18,19,20,105,106])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115%119%62@@$1@@%65%115%119%62@@%117$1@$0@@@%115%119%62@@$0@@@|@|@"])
  fun op REAL_LT_RMUL_0 x = x
    val op REAL_LT_RMUL_0 =
    DT(((("real",108),[("real",[15,107])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115%119%62@@$0@@%65%115%119%62@@%117$1@$0@@@%115%119%62@@$1@@@|@|@"])
  fun op REAL_LT_LMUL x = x
    val op REAL_LT_LMUL =
    DT(((("real",109),[("bool",[58]),("real",[94,99,107])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$2@@%65%115%117$2@$1@@%117$2@$0@@@%115$1@$0@@@|@|@|@"])
  fun op REAL_LT_RMUL x = x
    val op REAL_LT_RMUL =
    DT(((("real",110),[("real",[15,109])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%115%117$2@$0@@%117$1@$0@@@%115$2@$1@@@|@|@|@"])
  fun op REAL_LT_RMUL_IMP x = x
    val op REAL_LT_RMUL_IMP =
    DT(((("real",111),[("bool",[25,53]),("real",[110])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115$2@$1@@%115%119%62@@$0@@@%115%117$2@$0@@%117$1@$0@@@|@|@|@"])
  fun op REAL_LT_LMUL_IMP x = x
    val op REAL_LT_LMUL_IMP =
    DT(((("real",112),[("bool",[25,53]),("real",[109])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115$1@$0@@%115%119%62@@$2@@@%115%117$2@$1@@%117$2@$0@@@|@|@|@"])
  fun op REAL_LINV_UNIQ x = x
    val op REAL_LINV_UNIQ =
    DT(((("real",113),
        [("bool",[25,26,27,30,53,58]),
         ("real",[3,17,18,19,29,39,104])]),["DISK_THM"]),
       [read"%54%37%54%43%69%68%117$1@$0@@%119%89%77%98@@@@@%68$1@%102$0@@@|@|@"])
  fun op REAL_RINV_UNIQ x = x
    val op REAL_RINV_UNIQ =
    DT(((("real",114),[("real",[15,113])]),["DISK_THM"]),
       [read"%54%37%54%43%69%68%117$1@$0@@%119%89%77%98@@@@@%68$0@%102$1@@@|@|@"])
  fun op REAL_INV_INV x = x
    val op REAL_INV_INV =
    DT(((("real",115),
        [("bool",[25,26,27,30,54,56,58]),
         ("real",[19,21,114])]),["DISK_THM"]),
       [read"%54%37%68%102%102$0@@@$0@|@"])
  fun op REAL_INV_EQ_0 x = x
    val op REAL_INV_EQ_0 =
    DT(((("real",116),
        [("bool",[25,26,56,58]),("real",[21,115])]),["DISK_THM"]),
       [read"%54%37%65%68%102$0@@%119%62@@@%68$0@%119%62@@@|@"])
  fun op REAL_NEG_INV x = x
    val op REAL_NEG_INV =
    DT(((("real",117),
        [("bool",[25,56,58]),("real",[19,41,42,43,113])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%68%118%102$0@@@%102%118$0@@@@|@"])
  fun op REAL_INV_1OVER x = x
    val op REAL_INV_1OVER =
    DT(((("real",118),[("bool",[25,56]),("real",[18,26])]),["DISK_THM"]),
       [read"%54%37%68%102$0@@%60%119%89%77%98@@@@$0@@|@"])
  fun op REAL_LT_INV_EQ x = x
    val op REAL_LT_INV_EQ =
    DT(((("real",119),
        [("bool",[25,26,58,63]),("real",[106,115])]),["DISK_THM"]),
       [read"%54%37%65%115%119%62@@%102$0@@@%115%119%62@@$0@@|@"])
  fun op REAL_LE_INV_EQ x = x
    val op REAL_LE_INV_EQ =
    DT(((("real",120),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("real",[56,116,119]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%65%116%119%62@@%102$0@@@%116%119%62@@$0@@|@"])
  fun op REAL_LE_INV x = x
    val op REAL_LE_INV =
    DT(((("real",121),[("bool",[25,36,53]),("real",[120])]),["DISK_THM"]),
       [read"%54%37%69%116%119%62@@$0@@%116%119%62@@%102$0@@@|@"])
  fun op REAL_LE_ADDR x = x
    val op REAL_LE_ADDR =
    DT(((("real",122),[("bool",[25,56]),("real",[27,75])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116$1@%112$1@$0@@@%116%119%62@@$0@@|@|@"])
  fun op REAL_LE_ADDL x = x
    val op REAL_LE_ADDL =
    DT(((("real",123),[("real",[4,122])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116$0@%112$1@$0@@@%116%119%62@@$1@@|@|@"])
  fun op REAL_LT_ADDR x = x
    val op REAL_LT_ADDR =
    DT(((("real",124),[("bool",[25,56]),("real",[27,46])]),["DISK_THM"]),
       [read"%54%37%54%43%65%115$1@%112$1@$0@@@%115%119%62@@$0@@|@|@"])
  fun op REAL_LT_ADDL x = x
    val op REAL_LT_ADDL =
    DT(((("real",125),[("real",[4,124])]),["DISK_THM"]),
       [read"%54%37%54%43%65%115$0@%112$1@$0@@@%115%119%62@@$1@@|@|@"])
  fun op REAL x = x
    val op REAL =
    DT(((("real",126),[("bool",[25,56]),("real",[0,2])]),["DISK_THM"]),
       [read"%52%19%68%119%93$0@@@%112%119$0@@%119%89%77%98@@@@@|@"])
  fun op REAL_POS x = x
    val op REAL_POS =
    DT(((("real",127),
        [("bool",[14,25,51,63]),("num",[9]),
         ("real",[55,61,73,122,126])]),["DISK_THM"]),
       [read"%52%19%116%119%62@@%119$0@@|@"])
  fun op REAL_LE x = x
    val op REAL_LE =
    DT(((("real",128),
        [("arithmetic",[38,46,59]),("bool",[14,25,51,53,54,56,58,63]),
         ("num",[9]),("prim_rec",[7]),
         ("real",[51,55,61,73,74,76,122,124,126,127])]),["DISK_THM"]),
       [read"%52%18%52%19%65%116%119$1@@%119$0@@@%64$1@$0@@|@|@"])
  fun op REAL_LT x = x
    val op REAL_LT =
    DT(((("real",129),
        [("arithmetic",[59]),("bool",[54,58]),
         ("real",[48,128])]),["DISK_THM"]),
       [read"%52%18%52%19%65%115%119$1@@%119$0@@@%63$1@$0@@|@|@"])
  fun op REAL_INJ x = x
    val op REAL_INJ =
    DT(((("real",130),
        [("arithmetic",[95,106]),("bool",[25,26,51,56,58,63]),
         ("real",[62,128])]),["DISK_THM"]),
       [read"%52%18%52%19%65%68%119$1@@%119$0@@@%67$1@$0@@|@|@"])
  fun op REAL_ADD x = x
    val op REAL_ADD =
    DT(((("real",131),
        [("arithmetic",[0]),("bool",[14,25,36,56,58,63]),("num",[9]),
         ("real",[4,6,7,126])]),["DISK_THM"]),
       [read"%52%18%52%19%68%112%119$1@@%119$0@@@%119%56$1@$0@@@|@|@"])
  fun op REAL_MUL x = x
    val op REAL_MUL =
    DT(((("real",132),
        [("arithmetic",[71]),("bool",[14,25,36,56,58]),("num",[9]),
         ("real",[18,31,39,126,131])]),["DISK_THM"]),
       [read"%52%18%52%19%68%117%119$1@@%119$0@@@%119%55$1@$0@@@|@|@"])
  fun op REAL_INV1 x = x
    val op REAL_INV1 =
    DT(((("real",133),
        [("bool",[25,56,58]),("real",[18,113])]),["DISK_THM"]),
       [read"%68%102%119%89%77%98@@@@@%119%89%77%98@@@@"])
  fun op REAL_OVER1 x = x
    val op REAL_OVER1 =
    DT(((("real",134),
        [("bool",[25,56]),("real",[26,29,133])]),["DISK_THM"]),
       [read"%54%37%68%60$0@%119%89%77%98@@@@@$0@|@"])
  fun op REAL_DIV_REFL x = x
    val op REAL_DIV_REFL =
    DT(((("real",135),[("bool",[25,63]),("real",[26,30])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%68%60$0@$0@@%119%89%77%98@@@@@|@"])
  fun op REAL_DIV_LZERO x = x
    val op REAL_DIV_LZERO =
    DT(((("real",136),[("bool",[25,56]),("real",[26,39])]),["DISK_THM"]),
       [read"%54%37%68%60%119%62@@$0@@%119%62@@|@"])
  fun op REAL_LT_NZ x = x
    val op REAL_LT_NZ =
    DT(((("real",137),
        [("bool",[25,26,27,30,51,54,56,58,63]),
         ("real",[57,127])]),["DISK_THM"]),
       [read"%52%19%65%125%68%119$0@@%119%62@@@@%115%119%62@@%119$0@@@|@"])
  fun op REAL_NZ_IMP_LT x = x
    val op REAL_NZ_IMP_LT =
    DT(((("real",138),
        [("bool",[25,53,58]),("real",[130,137])]),["DISK_THM"]),
       [read"%52%19%69%125%67$0@%62@@@%115%119%62@@%119$0@@@|@"])
  fun op REAL_LT_RDIV_0 x = x
    val op REAL_LT_RDIV_0 =
    DT(((("real",139),[("real",[26,106,108])]),["DISK_THM"]),
       [read"%54%43%54%47%69%115%119%62@@$0@@%65%115%119%62@@%60$1@$0@@@%115%119%62@@$1@@@|@|@"])
  fun op REAL_LT_RDIV x = x
    val op REAL_LT_RDIV =
    DT(((("real",140),[("real",[26,106,110])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%115%60$2@$0@@%60$1@$0@@@%115$2@$1@@@|@|@|@"])
  fun op REAL_LT_FRACTION_0 x = x
    val op REAL_LT_FRACTION_0 =
    DT(((("real",141),
        [("bool",[25,26,27,54,58]),("real",[130,137,139])]),["DISK_THM"]),
       [read"%52%19%54%11%69%125%67$1@%62@@@%65%115%119%62@@%60$0@%119$1@@@@%115%119%62@@$0@@@|@|@"])
  fun op REAL_LT_MULTIPLE x = x
    val op REAL_LT_MULTIPLE =
    DT(((("real",142),
        [("arithmetic",[17,34]),
         ("bool",[14,25,26,27,30,36,51,52,53,56,63]),("num",[9]),
         ("prim_rec",[6,7,17]),
         ("real",[9,15,29,108,125,126,129])]),["DISK_THM"]),
       [read"%52%19%54%11%69%63%89%77%98@@@$1@@%65%115$0@%117%119$1@@$0@@@%115%119%62@@$0@@@|@|@"])
  fun op REAL_LT_FRACTION x = x
    val op REAL_LT_FRACTION =
    DT(((("real",143),
        [("bool",[25,26,27,30,53,58]),("prim_rec",[6]),
         ("real",[15,17,19,26,29,110,130,137,142])]),["DISK_THM"]),
       [read"%52%19%54%11%69%63%89%77%98@@@$1@@%65%115%60$0@%119$1@@@$0@@%115%119%62@@$0@@@|@|@"])
  fun op REAL_LT_HALF1 x = x
    val op REAL_LT_HALF1 =
    DT(((("real",144),
        [("arithmetic",[18]),("bool",[25,26,27,54]),("num",[7]),
         ("real",[141])]),["DISK_THM"]),
       [read"%54%11%65%115%119%62@@%60$0@%119%89%78%98@@@@@@%115%119%62@@$0@@|@"])
  fun op REAL_LT_HALF2 x = x
    val op REAL_LT_HALF2 =
    DT(((("real",145),
        [("arithmetic",[18]),("bool",[25,63]),("prim_rec",[15]),
         ("real",[143])]),["DISK_THM"]),
       [read"%54%11%65%115%60$0@%119%89%78%98@@@@@$0@@%115%119%62@@$0@@|@"])
  fun op REAL_DOUBLE x = x
    val op REAL_DOUBLE =
    DT(((("real",146),
        [("arithmetic",[18]),("bool",[25,56]),
         ("real",[18,31,126])]),["DISK_THM"]),
       [read"%54%37%68%112$0@$0@@%117%119%89%78%98@@@@$0@@|@"])
  fun op REAL_DIV_LMUL x = x
    val op REAL_DIV_LMUL =
    DT(((("real",147),
        [("bool",[25,56,58]),("real",[15,17,19,26,29])]),["DISK_THM"]),
       [read"%54%37%54%43%69%125%68$0@%119%62@@@@%68%117$0@%60$1@$0@@@$1@@|@|@"])
  fun op REAL_DIV_RMUL x = x
    val op REAL_DIV_RMUL =
    DT(((("real",148),[("real",[15,147])]),["DISK_THM"]),
       [read"%54%37%54%43%69%125%68$0@%119%62@@@@%68%117%60$1@$0@@$0@@$1@@|@|@"])
  fun op REAL_HALF_DOUBLE x = x
    val op REAL_HALF_DOUBLE =
    DT(((("real",149),
        [("bool",[25,54]),("numeral",[3,6]),
         ("real",[130,146,147])]),["DISK_THM"]),
       [read"%54%37%68%112%60$0@%119%89%78%98@@@@@%60$0@%119%89%78%98@@@@@@$0@|@"])
  fun op REAL_DOWN x = x
    val op REAL_DOWN =
    DT(((("real",150),
        [("bool",[25,51,63]),("real",[144,145])]),["DISK_THM"]),
       [read"%54%37%69%115%119%62@@$0@@%72%43%61%115%119%62@@$0@@%115$0@$1@@|@@|@"])
  fun op REAL_DOWN2 x = x
    val op REAL_DOWN2 =
    DT(((("real",151),
        [("bool",[25,51,63]),("real",[10,12,150])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%115%119%62@@$0@@@%72%47%61%115%119%62@@$0@@%61%115$0@$2@@%115$0@$1@@@|@@|@|@"])
  fun op REAL_SUB_SUB x = x
    val op REAL_SUB_SUB =
    DT(((("real",152),
        [("bool",[25,56,63]),("real",[4,6,7,8,22])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120%120$1@$0@@$1@@%118$0@@|@|@"])
  fun op REAL_LT_ADD_SUB x = x
    val op REAL_LT_ADD_SUB =
    DT(((("real",153),[("bool",[25,56]),("real",[47,84])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115%112$2@$1@@$0@@%115$2@%120$0@$1@@@|@|@|@"])
  fun op REAL_LT_SUB_RADD x = x
    val op REAL_LT_SUB_RADD =
    DT(((("real",154),[("bool",[25,56]),("real",[47,84])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115%120$2@$1@@$0@@%115$2@%112$0@$1@@@|@|@|@"])
  fun op REAL_LT_SUB_LADD x = x
    val op REAL_LT_SUB_LADD =
    DT(((("real",155),
        [("bool",[25,56,58]),("real",[6,22,27,28,47])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%115$2@%120$1@$0@@@%115%112$2@$0@@$1@@|@|@|@"])
  fun op REAL_LE_SUB_LADD x = x
    val op REAL_LE_SUB_LADD =
    DT(((("real",156),
        [("bool",[25,56,58]),("real",[48,154])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%116$2@%120$1@$0@@@%116%112$2@$0@@$1@@|@|@|@"])
  fun op REAL_LE_SUB_RADD x = x
    val op REAL_LE_SUB_RADD =
    DT(((("real",157),
        [("bool",[25,56,58]),("real",[48,155])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%116%120$2@$1@@$0@@%116$2@%112$0@$1@@@|@|@|@"])
  fun op REAL_LT_NEG x = x
    val op REAL_LT_NEG =
    DT(((("real",158),
        [("bool",[25,56]),("real",[4,6,7,8,28,47])]),["DISK_THM"]),
       [read"%54%37%54%43%65%115%118$1@@%118$0@@@%115$0@$1@@|@|@"])
  fun op REAL_LE_NEG x = x
    val op REAL_LE_NEG =
    DT(((("real",159),
        [("bool",[25,56,58]),("real",[48,158])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116%118$1@@%118$0@@@%116$0@$1@@|@|@"])
  fun op REAL_ADD2_SUB2 x = x
    val op REAL_ADD2_SUB2 =
    DT(((("real",160),
        [("bool",[25,63]),("real",[4,6,22,38])]),["DISK_THM"]),
       [read"%54%6%54%8%54%9%54%11%68%120%112$3@$2@@%112$1@$0@@@%112%120$3@$1@@%120$2@$0@@@|@|@|@|@"])
  fun op REAL_SUB_LZERO x = x
    val op REAL_SUB_LZERO =
    DT(((("real",161),[("bool",[25,56]),("real",[7,22])]),["DISK_THM"]),
       [read"%54%37%68%120%119%62@@$0@@%118$0@@|@"])
  fun op REAL_SUB_RZERO x = x
    val op REAL_SUB_RZERO =
    DT(((("real",162),
        [("bool",[25,56]),("real",[22,27,92])]),["DISK_THM"]),
       [read"%54%37%68%120$0@%119%62@@@$0@|@"])
  fun op REAL_LET_ADD2 x = x
    val op REAL_LET_ADD2 =
    DT(((("real",163),
        [("bool",[25,51,63]),("real",[46,59,76])]),["DISK_THM"]),
       [read"%54%34%54%37%54%43%54%47%69%61%116$3@$2@@%115$1@$0@@@%115%112$3@$1@@%112$2@$0@@@|@|@|@|@"])
  fun op REAL_LTE_ADD2 x = x
    val op REAL_LTE_ADD2 =
    DT(((("real",164),[("bool",[41]),("real",[4,163])]),["DISK_THM"]),
       [read"%54%34%54%37%54%43%54%47%69%61%115$3@$2@@%116$1@$0@@@%115%112$3@$1@@%112$2@$0@@@|@|@|@|@"])
  fun op REAL_LET_ADD x = x
    val op REAL_LET_ADD =
    DT(((("real",165),
        [("bool",[25,51,63]),("real",[7,163])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%116%119%62@@$1@@%115%119%62@@$0@@@%115%119%62@@%112$1@$0@@@|@|@"])
  fun op REAL_LTE_ADD x = x
    val op REAL_LTE_ADD =
    DT(((("real",166),
        [("bool",[25,51,63]),("real",[7,164])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%116%119%62@@$0@@@%115%119%62@@%112$1@$0@@@|@|@"])
  fun op REAL_LT_MUL2 x = x
    val op REAL_LT_MUL2 =
    DT(((("real",167),
        [("bool",[25,51,56,58,63]),
         ("real",[4,6,7,8,20,22,58,60,71,94,99,100,166])]),["DISK_THM"]),
       [read"%54%40%54%41%54%45%54%46%69%61%116%119%62@@$3@@%61%116%119%62@@$1@@%61%115$3@$2@@%115$1@$0@@@@@%115%117$3@$1@@%117$2@$0@@@|@|@|@|@"])
  fun op REAL_LT_INV x = x
    val op REAL_LT_INV =
    DT(((("real",168),
        [("bool",[25,51,58,63]),
         ("real",[12,15,17,18,20,29,30,105,109])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%115$1@$0@@@%115%102$0@@%102$1@@@|@|@"])
  fun op REAL_SUB_LNEG x = x
    val op REAL_SUB_LNEG =
    DT(((("real",169),[("bool",[25,56]),("real",[22,38])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120%118$1@@$0@@%118%112$1@$0@@@|@|@"])
  fun op REAL_SUB_RNEG x = x
    val op REAL_SUB_RNEG =
    DT(((("real",170),[("bool",[25,56]),("real",[22,43])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120$1@%118$0@@@%112$1@$0@@|@|@"])
  fun op REAL_SUB_NEG2 x = x
    val op REAL_SUB_NEG2 =
    DT(((("real",171),[("real",[4,22,38,43,169])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120%118$1@@%118$0@@@%120$0@$1@@|@|@"])
  fun op REAL_SUB_TRIANGLE x = x
    val op REAL_SUB_TRIANGLE =
    DT(((("real",172),
        [("bool",[25,56,63]),("real",[4,6,7,8,22])]),["DISK_THM"]),
       [read"%54%6%54%8%54%9%68%112%120$2@$1@@%120$1@$0@@@%120$2@$0@@|@|@|@"])
  fun op REAL_EQ_SUB_LADD x = x
    val op REAL_EQ_SUB_LADD =
    DT(((("real",173),[("bool",[25,56]),("real",[33,84])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68$2@%120$1@$0@@@%68%112$2@$0@@$1@@|@|@|@"])
  fun op REAL_EQ_SUB_RADD x = x
    val op REAL_EQ_SUB_RADD =
    DT(((("real",174),[("bool",[58]),("real",[173])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68%120$2@$1@@$0@@%68$2@%112$0@$1@@@|@|@|@"])
  fun op REAL_INV_MUL x = x
    val op REAL_INV_MUL =
    DT(((("real",175),
        [("bool",[25,26,27,54,58,63]),
         ("real",[15,17,18,19,114])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%125%68$1@%119%62@@@@%125%68$0@%119%62@@@@@%68%102%117$1@$0@@@%117%102$1@@%102$0@@@@|@|@"])
  fun op REAL_LE_LMUL x = x
    val op REAL_LE_LMUL =
    DT(((("real",176),
        [("bool",[25,58,63]),("real",[48,109])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$2@@%65%116%117$2@$1@@%117$2@$0@@@%116$1@$0@@@|@|@|@"])
  fun op REAL_LE_RMUL x = x
    val op REAL_LE_RMUL =
    DT(((("real",177),[("real",[15,176])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%116%117$2@$0@@%117$1@$0@@@%116$2@$1@@@|@|@|@"])
  fun op REAL_SUB_INV2 x = x
    val op REAL_SUB_INV2 =
    DT(((("real",178),
        [("bool",[25,26,27,51,54,56]),
         ("real",[15,17,18,19,26,30,100,175])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%125%68$1@%119%62@@@@%125%68$0@%119%62@@@@@%68%120%102$1@@%102$0@@@%60%120$0@$1@@%117$1@$0@@@@|@|@"])
  fun op REAL_SUB_SUB2 x = x
    val op REAL_SUB_SUB2 =
    DT(((("real",179),
        [("bool",[25,56,58]),("real",[43,93,152])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120$1@%120$1@$0@@@$0@|@|@"])
  fun op REAL_ADD_SUB2 x = x
    val op REAL_ADD_SUB2 =
    DT(((("real",180),
        [("bool",[25,56,58]),("real",[93,96])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120$1@%112$1@$0@@@%118$0@@|@|@"])
  fun op REAL_MEAN x = x
    val op REAL_MEAN =
    DT(((("real",181),
        [("bool",[25,51,58,63]),
         ("real",[4,94,124,150,155])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115$1@$0@@%72%47%61%115$2@$0@@%115$0@$1@@|@@|@|@"])
  fun op REAL_EQ_LMUL2 x = x
    val op REAL_EQ_LMUL2 =
    DT(((("real",182),[("bool",[26,27,52]),("real",[97])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%125%68$2@%119%62@@@@%65%68$1@$0@@%68%117$2@$1@@%117$2@$0@@@@|@|@|@"])
  fun op REAL_LE_MUL2 x = x
    val op REAL_LE_MUL2 =
    DT(((("real",183),
        [("bool",[25,26,27,30,51,52,56,63]),
         ("real",[39,40,55,56,58,167,176,177])]),["DISK_THM"]),
       [read"%54%40%54%41%54%45%54%46%69%61%116%119%62@@$3@@%61%116%119%62@@$1@@%61%116$3@$2@@%116$1@$0@@@@@%116%117$3@$1@@%117$2@$0@@@|@|@|@|@"])
  fun op REAL_LE_LDIV x = x
    val op REAL_LE_LDIV =
    DT(((("real",184),
        [("bool",[25,58,63]),("real",[105,148,177]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115%119%62@@$2@@%116$1@%117$0@$2@@@@%116%60$1@$2@@$0@@|@|@|@"])
  fun op REAL_LE_RDIV x = x
    val op REAL_LE_RDIV =
    DT(((("real",185),
        [("bool",[25,58,63]),("real",[105,148,177]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115%119%62@@$2@@%116%117$1@$2@@$0@@@%116$1@%60$0@$2@@@|@|@|@"])
  fun op REAL_LT_DIV x = x
    val op REAL_LT_DIV =
    DT(((("real",186),
        [("bool",[25,51,63]),("real",[20,26,119])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%115%119%62@@$0@@@%115%119%62@@%60$1@$0@@@|@|@"])
  fun op REAL_LE_DIV x = x
    val op REAL_LE_DIV =
    DT(((("real",187),
        [("bool",[25,51,63]),("real",[26,71,120])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%116%119%62@@$1@@%116%119%62@@$0@@@%116%119%62@@%60$1@$0@@@|@|@"])
  fun op REAL_LT_1 x = x
    val op REAL_LT_1 =
    DT(((("real",188),
        [("bool",[25,51,58,63]),
         ("real",[18,60,105,110,148])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%116%119%62@@$1@@%115$1@$0@@@%115%60$1@$0@@%119%89%77%98@@@@@|@|@"])
  fun op REAL_LE_LMUL_IMP x = x
    val op REAL_LE_LMUL_IMP =
    DT(((("real",189),
        [("bool",[25,63]),("real",[39,55,56,176])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%116%119%62@@$2@@%116$1@$0@@@%116%117$2@$1@@%117$2@$0@@@|@|@|@"])
  fun op REAL_LE_RMUL_IMP x = x
    val op REAL_LE_RMUL_IMP =
    DT(((("real",190),[("real",[15,189])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%116%119%62@@$2@@%116$1@$0@@@%116%117$1@$2@@%117$0@$2@@@|@|@|@"])
  fun op REAL_EQ_IMP_LE x = x
    val op REAL_EQ_IMP_LE =
    DT(((("real",191),[("real",[55])]),["DISK_THM"]),
       [read"%54%37%54%43%69%68$1@$0@@%116$1@$0@@|@|@"])
  fun op REAL_INV_LT1 x = x
    val op REAL_INV_LT1 =
    DT(((("real",192),
        [("bool",[25,26,27,51,53,54,58,63,92]),
         ("real",[11,18,19,48,56,58,104,105,106,133,167]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%54%37%69%61%115%119%62@@$0@@%115$0@%119%89%77%98@@@@@@%115%119%89%77%98@@@@%102$0@@@|@"])
  fun op REAL_POS_NZ x = x
    val op REAL_POS_NZ =
    DT(((("real",193),[("bool",[58]),("real",[105])]),["DISK_THM"]),
       [read"%54%37%69%115%119%62@@$0@@%125%68$0@%119%62@@@@|@"])
  fun op REAL_EQ_RMUL_IMP x = x
    val op REAL_EQ_RMUL_IMP =
    DT(((("real",194),
        [("bool",[25,26,27,52,53]),("real",[98])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%125%68$0@%119%62@@@@%68%117$2@$0@@%117$1@$0@@@@%68$2@$1@@|@|@|@"])
  fun op REAL_EQ_LMUL_IMP x = x
    val op REAL_EQ_LMUL_IMP =
    DT(((("real",195),[("real",[15,194])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%125%68$2@%119%62@@@@%68%117$2@$1@@%117$2@$0@@@@%68$1@$0@@|@|@|@"])
  fun op REAL_FACT_NZ x = x
    val op REAL_FACT_NZ =
    DT(((("real",196),
        [("arithmetic",[157]),("bool",[25,63]),
         ("real",[129,193])]),["DISK_THM"]),
       [read"%52%19%125%68%119%85$0@@@%119%62@@@|@"])
  fun op REAL_DIFFSQ x = x
    val op REAL_DIFFSQ =
    DT(((("real",197),
        [("bool",[25,58,63]),
         ("real",[4,6,9,15,22,31,34,36,42])]),["DISK_THM"]),
       [read"%54%37%54%43%68%117%112$1@$0@@%120$1@$0@@@%120%117$1@$1@@%117$0@$0@@@|@|@"])
  fun op REAL_POASQ x = x
    val op REAL_POASQ =
    DT(((("real",198),
        [("bool",[25,26,52,53,58,63]),
         ("real",[39,45,51,55,62,72])]),["DISK_THM"]),
       [read"%54%37%65%115%119%62@@%117$0@$0@@@%125%68$0@%119%62@@@@|@"])
  fun op REAL_SUMSQ x = x
    val op REAL_SUMSQ =
    DT(((("real",199),
        [("bool",[25,26,27,51,54,56,63,96]),
         ("real",[7,39,72,165,166,193,198])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%112%117$1@$1@@%117$0@$0@@@%119%62@@@%61%68$1@%119%62@@@%68$0@%119%62@@@@|@|@"])
  fun op REAL_EQ_NEG x = x
    val op REAL_EQ_NEG =
    DT(((("real",200),[("bool",[41,58]),("real",[62,159])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%118$1@@%118$0@@@%68$1@$0@@|@|@"])
  fun op REAL_DIV_MUL2 x = x
    val op REAL_DIV_MUL2 =
    DT(((("real",201),
        [("bool",[25,26,27,51,54,56,63]),
         ("real",[15,17,18,19,26,175])]),["DISK_THM"]),
       [read"%54%37%54%47%69%61%125%68$1@%119%62@@@@%125%68$0@%119%62@@@@@%54%43%68%60$0@$1@@%60%117$2@$0@@%117$2@$1@@@|@@|@|@"])
  fun op REAL_MIDDLE1 x = x
    val op REAL_MIDDLE1 =
    DT(((("real",202),
        [("arithmetic",[18]),("bool",[25,51,58,63]),("prim_rec",[7]),
         ("real",[15,75,129,146,185])]),["DISK_THM"]),
       [read"%54%6%54%8%69%116$1@$0@@%116$1@%60%112$1@$0@@%119%89%78%98@@@@@@|@|@"])
  fun op REAL_MIDDLE2 x = x
    val op REAL_MIDDLE2 =
    DT(((("real",203),
        [("arithmetic",[18]),("bool",[25,51,58,63]),("prim_rec",[7]),
         ("real",[15,76,129,146,184])]),["DISK_THM"]),
       [read"%54%6%54%8%69%116$1@$0@@%116%60%112$1@$0@@%119%89%78%98@@@@@$0@@|@|@"])
  fun op ABS_ZERO x = x
    val op ABS_ZERO =
    DT(((("real",205),
        [("bool",[25,26,27,30,56,63,64]),("real",[91,204])]),["DISK_THM"]),
       [read"%54%37%65%68%100$0@@%119%62@@@%68$0@%119%62@@@|@"])
  fun op ABS_0 x = x
    val op ABS_0 =
    DT(((("real",206),[("bool",[25,56]),("real",[205])]),["DISK_THM"]),
       [read"%68%100%119%62@@@%119%62@@"])
  fun op ABS_1 x = x
    val op ABS_1 =
    DT(((("real",207),
        [("arithmetic",[46]),("bool",[25,56,63,64]),
         ("real",[128,204])]),["DISK_THM"]),
       [read"%68%100%119%89%77%98@@@@@%119%89%77%98@@@@"])
  fun op ABS_NEG x = x
    val op ABS_NEG =
    DT(((("real",208),
        [("bool",[25,26,27,30,53,56,63,64]),
         ("real",[43,49,51,62,68,92,204])]),["DISK_THM"]),
       [read"%54%37%68%100%118$0@@@%100$0@@|@"])
  fun op ABS_TRIANGLE x = x
    val op ABS_TRIANGLE =
    DT(((("real",209),
        [("bool",[25,26,27,30,51,53,58,63,64]),
         ("real",[7,38,48,51,55,58,75,76,77,78,89,90,204])]),["DISK_THM"]),
       [read"%54%37%54%43%116%100%112$1@$0@@@%112%100$1@@%100$0@@@|@|@"])
  fun op ABS_POS x = x
    val op ABS_POS =
    DT(((("real",210),
        [("bool",[25,26,27,30,52,63,64]),("real",[70,204])]),["DISK_THM"]),
       [read"%54%37%116%119%62@@%100$0@@|@"])
  fun op ABS_MUL x = x
    val op ABS_MUL =
    DT(((("real",211),
        [("bool",[25,26,27,30,52,56,58,63,64]),
         ("real",[41,42,70,71,204,208])]),["DISK_THM"]),
       [read"%54%37%54%43%68%100%117$1@$0@@@%117%100$1@@%100$0@@@|@|@"])
  fun op ABS_LT_MUL2 x = x
    val op ABS_LT_MUL2 =
    DT(((("real",212),
        [("bool",[25,51,63]),("real",[167,210,211])]),["DISK_THM"]),
       [read"%54%34%54%37%54%43%54%47%69%61%115%100$3@@$1@@%115%100$2@@$0@@@%115%100%117$3@$2@@@%117$1@$0@@@|@|@|@|@"])
  fun op ABS_SUB x = x
    val op ABS_SUB =
    DT(((("real",213),
        [("bool",[25,56,58]),("real",[93,208])]),["DISK_THM"]),
       [read"%54%37%54%43%68%100%120$1@$0@@@%100%120$0@$1@@@|@|@"])
  fun op ABS_NZ x = x
    val op ABS_NZ =
    DT(((("real",214),
        [("bool",[25,26,27,54,58,63,64]),("real",[11,55,56,204,205,210]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%54%37%65%125%68$0@%119%62@@@@%115%119%62@@%100$0@@@|@"])
  fun op ABS_INV x = x
    val op ABS_INV =
    DT(((("real",215),
        [("arithmetic",[17,59]),("bool",[25,26,27,54,56,58,64]),
         ("prim_rec",[6]),("real",[19,113,128,204,211])]),["DISK_THM"]),
       [read"%54%37%69%125%68$0@%119%62@@@@%68%100%102$0@@@%102%100$0@@@@|@"])
  fun op ABS_ABS x = x
    val op ABS_ABS =
    DT(((("real",216),
        [("bool",[25,56,63,64]),("real",[204,210])]),["DISK_THM"]),
       [read"%54%37%68%100%100$0@@@%100$0@@|@"])
  fun op ABS_LE x = x
    val op ABS_LE =
    DT(((("real",217),
        [("bool",[25,26,27,30,53,63,64]),
         ("real",[51,55,58,90,204])]),["DISK_THM"]),
       [read"%54%37%116$0@%100$0@@|@"])
  fun op ABS_REFL x = x
    val op ABS_REFL =
    DT(((("real",218),
        [("bool",[25,26,27,30,52,53,54,56,58,63,64]),("numeral",[3,6]),
         ("real",[37,45,55,130,146,204])]),["DISK_THM"]),
       [read"%54%37%65%68%100$0@@$0@@%116%119%62@@$0@@|@"])
  fun op ABS_N x = x
    val op ABS_N =
    DT(((("real",219),
        [("arithmetic",[46]),("bool",[25,63]),
         ("real",[128,218])]),["DISK_THM"]),
       [read"%52%19%68%100%119$0@@@%119$0@@|@"])
  fun op ABS_BETWEEN x = x
    val op ABS_BETWEEN =
    DT(((("real",220),
        [("bool",[25,26,27,30,51,63,64]),
         ("real",[4,12,51,60,93,95,124,154,204])]),["DISK_THM"]),
       [read"%54%37%54%43%54%11%65%61%115%119%62@@$0@@%61%115%120$2@$0@@$1@@%115$1@%112$2@$0@@@@@%115%100%120$1@$2@@@$0@@|@|@|@"])
  fun op ABS_BOUND x = x
    val op ABS_BOUND =
    DT(((("real",221),
        [("bool",[25,58,63]),("real",[213,220])]),["DISK_THM"]),
       [read"%54%37%54%43%54%11%69%115%100%120$2@$1@@@$0@@%115$1@%112$2@$0@@@|@|@|@"])
  fun op ABS_STILLNZ x = x
    val op ABS_STILLNZ =
    DT(((("real",222),
        [("bool",[25,26,27,54]),("real",[11,161,208])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115%100%120$1@$0@@@%100$0@@@%125%68$1@%119%62@@@@|@|@"])
  fun op ABS_CASES x = x
    val op ABS_CASES =
    DT(((("real",223),
        [("bool",[13,25,52,54,58]),("real",[214])]),["DISK_THM"]),
       [read"%54%37%99%68$0@%119%62@@@%115%119%62@@%100$0@@@|@"])
  fun op ABS_BETWEEN1 x = x
    val op ABS_BETWEEN1 =
    DT(((("real",224),
        [("bool",[25,51,63,64]),
         ("real",[12,22,47,53,95,204])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%61%115$2@$0@@%115%100%120$1@$2@@@%120$0@$2@@@@%115$1@$0@@|@|@|@"])
  fun op ABS_SIGN x = x
    val op ABS_SIGN =
    DT(((("real",225),[("bool",[25,53]),("real",[125,221])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115%100%120$1@$0@@@$0@@%115%119%62@@$1@@|@|@"])
  fun op ABS_SIGN2 x = x
    val op ABS_SIGN2 =
    DT(((("real",226),
        [("bool",[25,53,58]),("real",[43,65,171,213,225])]),["DISK_THM"]),
       [read"%54%37%54%43%69%115%100%120$1@$0@@@%118$0@@@%115$1@%119%62@@@|@|@"])
  fun op ABS_DIV x = x
    val op ABS_DIV =
    DT(((("real",227),
        [("bool",[25,56]),("real",[26,211,215])]),["DISK_THM"]),
       [read"%54%43%69%125%68$0@%119%62@@@@%54%37%68%100%60$0@$1@@@%60%100$0@@%100$1@@@|@@|@"])
  fun op ABS_CIRCLE x = x
    val op ABS_CIRCLE =
    DT(((("real",228),
        [("bool",[25,51,53,63]),
         ("real",[55,60,85,163,209])]),["DISK_THM"]),
       [read"%54%37%54%43%54%15%69%115%100$0@@%120%100$1@@%100$2@@@@%115%100%112$2@$0@@@%100$1@@@|@|@|@"])
  fun op REAL_SUB_ABS x = x
    val op REAL_SUB_ABS =
    DT(((("real",229),
        [("bool",[25,63]),
         ("real",[4,22,55,61,76,84,96,209])]),["DISK_THM"]),
       [read"%54%37%54%43%116%120%100$1@@%100$0@@@%100%120$1@$0@@@|@|@"])
  fun op ABS_SUB_ABS x = x
    val op ABS_SUB_ABS =
    DT(((("real",230),
        [("bool",[25,26,27,30,63,64]),
         ("real",[93,204,213,229])]),["DISK_THM"]),
       [read"%54%37%54%43%116%100%120%100$1@@%100$0@@@@%100%120$1@$0@@@|@|@"])
  fun op ABS_BETWEEN2 x = x
    val op ABS_BETWEEN2 =
    DT(((("real",231),
        [("bool",[25,26,27,51,53,54,56,58,63,64]),
         ("real",
         [4,6,7,8,12,22,48,51,58,59,60,76,77,85,93,94,95,122,145,149,204,
          209,213,217,221]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%54%38%54%37%54%44%54%43%69%61%115$3@$1@@%61%115%100%120$2@$3@@@%60%120$1@$3@@%119%89%78%98@@@@@@%115%100%120$0@$1@@@%60%120$1@$3@@%119%89%78%98@@@@@@@@%115$2@$0@@|@|@|@|@"])
  fun op ABS_BOUNDS x = x
    val op ABS_BOUNDS =
    DT(((("real",232),
        [("bool",[25,26,27,30,51,54,58,63,64]),
         ("real",[43,51,58,61,89,90,159,204]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%54%37%54%17%65%116%100$1@@$0@@%61%116%118$0@@$1@@%116$1@$0@@@|@|@"])
  fun op POW_0 x = x
    val op POW_0 =
    DT(((("real",234),
        [("bool",[14,25,56]),("num",[9]),("real",[39,233])]),["DISK_THM"]),
       [read"%52%19%68%109%119%62@@%93$0@@@%119%62@@|@"])
  fun op POW_NZ x = x
    val op POW_NZ =
    DT(((("real",235),
        [("bool",[14,25,26,27,52,54]),("num",[9]),
         ("real",[3,45,233])]),["DISK_THM"]),
       [read"%54%9%52%19%69%125%68$1@%119%62@@@@%125%68%109$1@$0@@%119%62@@@@|@|@"])
  fun op POW_INV x = x
    val op POW_INV =
    DT(((("real",236),
        [("bool",[14,25,26,27,51,53,54,56]),("num",[9]),
         ("real",[133,175,233,235])]),["DISK_THM"]),
       [read"%54%9%69%125%68$0@%119%62@@@@%52%19%68%102%109$1@$0@@@%109%102$1@@$0@@|@@|@"])
  fun op POW_ABS x = x
    val op POW_ABS =
    DT(((("real",237),
        [("bool",[14,25,56]),("num",[9]),
         ("real",[207,211,233])]),["DISK_THM"]),
       [read"%54%9%52%19%68%109%100$1@@$0@@%100%109$1@$0@@@|@|@"])
  fun op POW_PLUS1 x = x
    val op POW_PLUS1 =
    DT(((("real",238),
        [("arithmetic",[17,46]),("bool",[14,25,51,58,63]),("num",[9]),
         ("prim_rec",[7]),
         ("real",
         [6,7,9,18,27,29,31,39,55,58,61,71,77,122,126,128,129,176,
          233])]),["DISK_THM"]),
       [read"%54%12%69%115%119%62@@$0@@%52%19%116%112%119%89%77%98@@@@%117%119$0@@$1@@@%109%112%119%89%77%98@@@@$1@@$0@@|@@|@"])
  fun op POW_ADD x = x
    val op POW_ADD =
    DT(((("real",239),
        [("arithmetic",[24]),("bool",[14,25,56,63]),("num",[9]),
         ("real",[15,17,29,233])]),["DISK_THM"]),
       [read"%54%9%52%18%52%19%68%109$2@%56$1@$0@@@%117%109$2@$1@@%109$2@$0@@@|@|@|@"])
  fun op POW_1 x = x
    val op POW_1 =
    DT(((("real",240),
        [("arithmetic",[17]),("bool",[25,56]),
         ("real",[29,233])]),["DISK_THM"]),
       [read"%54%37%68%109$0@%89%77%98@@@@$0@|@"])
  fun op POW_2 x = x
    val op POW_2 =
    DT(((("real",241),
        [("arithmetic",[18]),("bool",[25,56]),
         ("real",[233,240])]),["DISK_THM"]),
       [read"%54%37%68%109$0@%89%78%98@@@@%117$0@$0@@|@"])
  fun op POW_ONE x = x
    val op POW_ONE =
    DT(((("real",242),
        [("bool",[14,25,56]),("num",[9]),("real",[18,233])]),["DISK_THM"]),
       [read"%52%19%68%109%119%89%77%98@@@@$0@@%119%89%77%98@@@@|@"])
  fun op POW_POS x = x
    val op POW_POS =
    DT(((("real",243),
        [("bool",[14,25,51,63]),("num",[9]),
         ("real",[71,73,233])]),["DISK_THM"]),
       [read"%54%37%69%116%119%62@@$0@@%52%19%116%119%62@@%109$1@$0@@|@@|@"])
  fun op POW_LE x = x
    val op POW_LE =
    DT(((("real",244),
        [("bool",[14,25,36,51,53,63]),("num",[9]),
         ("real",[55,183,233,243])]),["DISK_THM"]),
       [read"%52%19%54%37%54%43%69%61%116%119%62@@$1@@%116$1@$0@@@%116%109$1@$2@@%109$0@$2@@@|@|@|@"])
  fun op POW_M1 x = x
    val op POW_M1 =
    DT(((("real",245),
        [("bool",[14,25,56]),("num",[9]),
         ("real",[18,207,208,211,233])]),["DISK_THM"]),
       [read"%52%19%68%100%109%118%119%89%77%98@@@@@$0@@@%119%89%77%98@@@@|@"])
  fun op POW_MUL x = x
    val op POW_MUL =
    DT(((("real",246),
        [("bool",[14,25,36,56,63]),("num",[9]),
         ("real",[15,17,18,233])]),["DISK_THM"]),
       [read"%52%19%54%37%54%43%68%109%117$1@$0@@$2@@%117%109$1@$2@@%109$0@$2@@@|@|@|@"])
  fun op REAL_LE_POW2 x = x
    val op REAL_LE_POW2 =
    DT(((("real",247),[("bool",[25,63]),("real",[72,241])]),["DISK_THM"]),
       [read"%54%37%116%119%62@@%109$0@%89%78%98@@@@|@"])
  fun op ABS_POW2 x = x
    val op ABS_POW2 =
    DT(((("real",248),[("bool",[25,63]),("real",[218,247])]),["DISK_THM"]),
       [read"%54%37%68%100%109$0@%89%78%98@@@@@%109$0@%89%78%98@@@@|@"])
  fun op REAL_POW2_ABS x = x
    val op REAL_POW2_ABS =
    DT(((("real",249),
        [("bool",[25,56,58]),("real",[211,241,248])]),["DISK_THM"]),
       [read"%54%37%68%109%100$0@@%89%78%98@@@@%109$0@%89%78%98@@@@|@"])
  fun op REAL_LE1_POW2 x = x
    val op REAL_LE1_POW2 =
    DT(((("real",250),
        [("bool",[25,51,58,63]),("real",[18,73,183,241])]),["DISK_THM"]),
       [read"%54%37%69%116%119%89%77%98@@@@$0@@%116%119%89%77%98@@@@%109$0@%89%78%98@@@@@|@"])
  fun op REAL_LT1_POW2 x = x
    val op REAL_LT1_POW2 =
    DT(((("real",251),
        [("bool",[25,51,58,63]),("real",[18,73,167,241])]),["DISK_THM"]),
       [read"%54%37%69%115%119%89%77%98@@@@$0@@%115%119%89%77%98@@@@%109$0@%89%78%98@@@@@|@"])
  fun op POW_POS_LT x = x
    val op POW_POS_LT =
    DT(((("real",252),
        [("bool",[25,26,27,54,58,63]),
         ("real",[57,235,243])]),["DISK_THM"]),
       [read"%54%37%52%19%69%115%119%62@@$1@@%115%119%62@@%109$1@%93$0@@@@|@|@"])
  fun op POW_2_LE1 x = x
    val op POW_2_LE1 =
    DT(((("real",253),
        [("arithmetic",[18,46,56]),("bool",[14,25,51,58,63]),("num",[9]),
         ("real",[18,55,128,183,233])]),["DISK_THM"]),
       [read"%52%19%116%119%89%77%98@@@@%109%119%89%78%98@@@@$0@@|@"])
  fun op POW_2_LT x = x
    val op POW_2_LT =
    DT(((("real",254),
        [("arithmetic",[64]),("bool",[14,25,51,58,63]),("num",[9]),
         ("real",[74,131,146,164,233,253])]),["DISK_THM"]),
       [read"%52%19%115%119$0@@%109%119%89%78%98@@@@$0@@|@"])
  fun op POW_MINUS1 x = x
    val op POW_MINUS1 =
    DT(((("real",255),
        [("arithmetic",[17,18,24,71]),("bool",[14,25,56,58]),("num",[9]),
         ("real",[18,41,42,43,233])]),["DISK_THM"]),
       [read"%52%19%68%109%118%119%89%77%98@@@@@%55%89%78%98@@@$0@@@%119%89%77%98@@@@|@"])
  fun op POW_LT x = x
    val op POW_LT =
    DT(((("real",256),
        [("bool",[14,25,51,63]),("num",[9]),
         ("real",[29,167,233,243])]),["DISK_THM"]),
       [read"%52%19%54%37%54%43%69%61%116%119%62@@$1@@%115$1@$0@@@%115%109$1@%93$2@@@%109$0@%93$2@@@@|@|@|@"])
  fun op REAL_POW_LT x = x
    val op REAL_POW_LT =
    DT(((("real",257),
        [("bool",[14,25,51,63]),("num",[9]),
         ("real",[20,74,233])]),["DISK_THM"]),
       [read"%54%37%52%19%69%115%119%62@@$1@@%115%119%62@@%109$1@$0@@@|@|@"])
  fun op POW_EQ x = x
    val op POW_EQ =
    DT(((("real",258),
        [("bool",[25,26,51,56,58,63]),
         ("real",[10,105,256])]),["DISK_THM"]),
       [read"%52%19%54%37%54%43%69%61%116%119%62@@$1@@%61%116%119%62@@$0@@%68%109$1@%93$2@@@%109$0@%93$2@@@@@@%68$1@$0@@|@|@|@"])
  fun op POW_ZERO x = x
    val op POW_ZERO =
    DT(((("real",259),
        [("bool",[14,25,26,27,53]),("num",[9]),
         ("real",[3,45,233])]),["DISK_THM"]),
       [read"%52%19%54%37%69%68%109$0@$1@@%119%62@@@%68$0@%119%62@@@|@|@"])
  fun op POW_ZERO_EQ x = x
    val op POW_ZERO_EQ =
    DT(((("real",260),
        [("bool",[25,26,56,63]),("real",[234,259])]),["DISK_THM"]),
       [read"%52%19%54%37%65%68%109$0@%93$1@@@%119%62@@@%68$0@%119%62@@@|@|@"])
  fun op REAL_POW_LT2 x = x
    val op REAL_POW_LT2 =
    DT(((("real",261),
        [("bool",[14,25,26,27,30,36,51,53,54,56,63]),("num",[7,9]),
         ("real",[29,167,233,243])]),["DISK_THM"]),
       [read"%52%19%54%37%54%43%69%61%125%67$2@%62@@@%61%116%119%62@@$1@@%115$1@$0@@@@%115%109$1@$2@@%109$0@$2@@@|@|@|@"])
  fun op REAL_POW_MONO_LT x = x
    val op REAL_POW_MONO_LT =
    DT(((("real",262),
        [("arithmetic",[17,46,64,101,107]),("bool",[14,25,26,51,56,58,63]),
         ("num",[9]),("prim_rec",[7]),
         ("real",[12,18,29,112,128,129,167,233,239,257])]),["DISK_THM"]),
       [read"%52%18%52%19%54%37%69%61%115%119%89%77%98@@@@$0@@%63$2@$1@@@%115%109$0@$2@@%109$0@$1@@@|@|@|@"])
  fun op REAL_POW_POW x = x
    val op REAL_POW_POW =
    DT(((("real",263),
        [("arithmetic",[71]),("bool",[14,25,56]),("num",[9]),
         ("real",[233,239])]),["DISK_THM"]),
       [read"%54%37%52%18%52%19%68%109%109$2@$1@@$0@@%109$2@%55$1@$0@@@|@|@|@"])
  fun op REAL_SUP_SOMEPOS x = x
    val op REAL_SUP_SOMEPOS =
    DT(((("real",264),
        [("bool",[25,26,36,51,53,63]),("real",[10,12,14]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%51%2%69%61%72%37%61$1$0@@%115%119%62@@$0@@|@@%72%47%54%37%69$2$0@@%115$0@$1@@|@|@@@%72%25%54%43%65%72%37%61$3$0@@%115$1@$0@@|@@%115$0@$1@@|@|@@|@"])
  fun op SUP_LEMMA1 x = x
    val op SUP_LEMMA1 =
    DT(((("real",265),
        [("bool",[25,26,51,58,63]),("real",[6,8,27,82])]),["DISK_THM"]),
       [read"%51%2%54%25%54%11%69%54%43%65%72%37%61%37$5%112$0@$3@@|$0@@%115$1@$0@@|@@%115$0@$2@@|@@%54%43%65%72%37%61$4$0@@%115$1@$0@@|@@%115$0@%112$2@$1@@@|@@|@|@|@"])
  fun op SUP_LEMMA2 x = x
    val op SUP_LEMMA2 =
    DT(((("real",266),
        [("bool",[25,51,63]),
         ("real",[6,7,8,10,27,28,66,74])]),["DISK_THM"]),
       [read"%51%2%69%72%37$1$0@|@@%72%11%72%37%61%37$3%112$0@$2@@|$0@@%115%119%62@@$0@@|@|@@|@"])
  fun op SUP_LEMMA3 x = x
    val op SUP_LEMMA3 =
    DT(((("real",267),[("bool",[25,63]),("real",[81])]),["DISK_THM"]),
       [read"%54%11%69%72%47%54%37%69%2$0@@%115$0@$1@@|@|@@%72%47%54%37%69%37%2%112$0@$3@@|$0@@%115$0@$1@@|@|@@|@"])
  fun op REAL_SUP_EXISTS x = x
    val op REAL_SUP_EXISTS =
    DT(((("real",268),[("real",[264,265,266,267])]),["DISK_THM"]),
       [read"%51%2%69%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%115$0@$1@@|@|@@@%72%25%54%43%65%72%37%61$3$0@@%115$1@$0@@|@@%115$0@$1@@|@|@@|@"])
  fun op REAL_SUP x = x
    val op REAL_SUP =
    DT(((("real",270),
        [("bool",[15,25,53,58]),("real",[268,269])]),["DISK_THM"]),
       [read"%51%2%69%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%115$0@$1@@|@|@@@%54%43%65%72%37%61$2$0@@%115$1@$0@@|@@%115$0@%123$1@@@|@@|@"])
  fun op REAL_SUP_UBOUND x = x
    val op REAL_SUP_UBOUND =
    DT(((("real",271),
        [("bool",[25,26,27,51,53,63]),("real",[11,48,270])]),["DISK_THM"]),
       [read"%51%2%69%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%115$0@$1@@|@|@@@%54%43%69$1$0@@%116$0@%123$1@@@|@@|@"])
  fun op SETOK_LE_LT x = x
    val op SETOK_LE_LT =
    DT(((("real",272),
        [("bool",[25,26,63]),("real",[58,83])]),["DISK_THM"]),
       [read"%51%2%65%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%116$0@$1@@|@|@@@%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%115$0@$1@@|@|@@@|@"])
  fun op REAL_SUP_LE x = x
    val op REAL_SUP_LE =
    DT(((("real",273),[("bool",[25,63]),("real",[270,272])]),["DISK_THM"]),
       [read"%51%2%69%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%116$0@$1@@|@|@@@%54%43%65%72%37%61$2$0@@%115$1@$0@@|@@%115$0@%123$1@@@|@@|@"])
  fun op REAL_SUP_UBOUND_LE x = x
    val op REAL_SUP_UBOUND_LE =
    DT(((("real",274),[("bool",[25,63]),("real",[271,272])]),["DISK_THM"]),
       [read"%51%2%69%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%116$0@$1@@|@|@@@%54%43%69$1$0@@%116$0@%123$1@@@|@@|@"])
  fun op REAL_ARCH x = x
    val op REAL_ARCH =
    DT(((("real",275),
        [("bool",[25,26,27,51,53,54,56,58,63]),
         ("real",[11,18,31,48,124,131,154,273]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%54%37%69%115%119%62@@$0@@%54%43%71%19%115$1@%117%119$0@@$2@@|@|@@|@"])
  fun op REAL_ARCH_LEAST x = x
    val op REAL_ARCH_LEAST =
    DT(((("real",276),
        [("arithmetic",[28,109]),("bool",[14,25,26,51,53,54,56,58,63]),
         ("prim_rec",[3,15]),("real",[39,48,51,275])]),["DISK_THM"]),
       [read"%54%43%69%115%119%62@@$0@@%54%37%69%116%119%62@@$0@@%71%19%61%116%117%119$0@@$2@@$1@@%115$1@%117%119%93$0@@@$2@@@|@@|@@|@"])
  fun op sum_ind x = x
    val op sum_ind =
    DT(((("real",279),
        [("arithmetic",[24,25,28,59,71,88,173,180]),
         ("bool",[25,27,36,53,54,58,63,104]),("numeral",[3,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%50%1%69%61%52%19%49%13$2%57$1@%62@@$0@|@|@@%52%19%52%18%49%13%69$3%57$2@$1@@$0@@$3%57$2@%93$1@@@$0@@|@|@|@@@%52%28%52%31%49%32$3%57$2@$1@@$0@|@|@|@@|@"])
  fun op sum x = x
    val op sum =
    DT(((("real",280),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[15,25,36,54,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("real",[277,278]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%61%52%19%49%13%68%121%57$1@%62@@$0@@%119%62@@|@|@@%52%19%52%18%49%13%68%121%57$2@%93$1@@@$0@@%112%121%57$2@$1@@$0@@$0%56$2@$1@@@@|@|@|@@"])
  fun op sum_compute x = x
    val op sum_compute =
    DT(((("real",281),
        [("arithmetic",[14,24,25,59,71,88,173,180,268]),
         ("bool",[15,25,26,36,54,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("real",[277,278]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%61%52%19%49%13%68%121%57$1@%62@@$0@@%119%62@@|@|@@%61%52%19%52%18%49%13%68%121%57$2@%89%77$1@@@@$0@@%112%121%57$2@%59%89%77$1@@@%89%77%98@@@@@$0@@$0%56$2@%59%89%77$1@@@%89%77%98@@@@@@@|@|@|@@%52%19%52%18%49%13%68%121%57$2@%89%78$1@@@@$0@@%112%121%57$2@%89%77$1@@@@$0@@$0%56$2@%89%77$1@@@@@@|@|@|@@@"])
  fun op SUM_TWO x = x
    val op SUM_TWO =
    DT(((("real",282),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[6,27,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%19%52%22%68%112%121%57%62@$1@@$2@@%121%57$1@$0@@$2@@@%121%57%62@%56$1@$0@@@$2@@|@|@|@"])
  fun op SUM_DIFF x = x
    val op SUM_DIFF =
    DT(((("real",283),[("real",[4,173,282])]),["DISK_THM"]),
       [read"%49%13%52%18%52%19%68%121%57$1@$0@@$2@@%120%121%57%62@%56$1@$0@@@$2@@%121%57%62@$1@@$2@@@|@|@|@"])
  fun op ABS_SUM x = x
    val op ABS_SUM =
    DT(((("real",284),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,51,54,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[55,61,76,206,209,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%18%52%19%116%100%121%57$1@$0@@$2@@@%121%57$1@$0@@%19%100$3$0@@|@@|@|@|@"])
  fun op SUM_LE x = x
    val op SUM_LE =
    DT(((("real",285),
        [("arithmetic",[14,24,25,34,53,59,71,88,173,180]),
         ("bool",[14,15,25,36,51,53,54,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[15,42]),("real",[55,78,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%49%14%52%18%52%19%69%52%23%69%61%64$2@$0@@%63$0@%56$1@$2@@@@%116$4$0@@$3$0@@@|@@%116%121%57$1@$0@@$3@@%121%57$1@$0@@$2@@@|@|@|@|@"])
  fun op SUM_EQ x = x
    val op SUM_EQ =
    DT(((("real",286),[("bool",[58]),("real",[62,191,285])]),["DISK_THM"]),
       [read"%49%13%49%14%52%18%52%19%69%52%23%69%61%64$2@$0@@%63$0@%56$1@$2@@@@%68$4$0@@$3$0@@@|@@%68%121%57$1@$0@@$3@@%121%57$1@$0@@$2@@@|@|@|@|@"])
  fun op SUM_POS x = x
    val op SUM_POS =
    DT(((("real",287),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,51,54,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[55,79,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%69%52%19%116%119%62@@$1$0@@|@@%52%18%52%19%116%119%62@@%121%57$1@$0@@$2@@|@|@@|@"])
  fun op SUM_POS_GEN x = x
    val op SUM_POS_GEN =
    DT(((("real",288),
        [("arithmetic",[14,24,25,53,59,71,88,173,180]),
         ("bool",[14,15,25,36,51,54,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[55,79,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%18%69%52%19%69%64$1@$0@@%116%119%62@@$2$0@@@|@@%52%19%116%119%62@@%121%57$1@$0@@$2@@|@@|@|@"])
  fun op SUM_ABS x = x
    val op SUM_ABS =
    DT(((("real",289),
        [("bool",[25,36,63]),("real",[210,218,287])]),["DISK_THM"]),
       [read"%49%13%52%18%52%19%68%100%121%57$1@$0@@%18%100$3$0@@|@@@%121%57$1@$0@@%18%100$3$0@@|@@|@|@|@"])
  fun op SUM_ABS_LE x = x
    val op SUM_ABS_LE =
    DT(((("real",290),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,51,54,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[55,61,76,206,209,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%18%52%19%116%100%121%57$1@$0@@$2@@@%121%57$1@$0@@%19%100$3$0@@|@@|@|@|@"])
  fun op SUM_ZERO x = x
    val op SUM_ZERO =
    DT(((("real",291),
        [("arithmetic",[14,24,25,27,53,59,71,88,143,145,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[7,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%0%69%52%19%69%70$0@$1@@%68$2$0@@%119%62@@@|@@%52%18%52%19%69%70$1@$2@@%68%121%57$1@$0@@$3@@%119%62@@@|@|@@|@|@"])
  fun op SUM_ADD x = x
    val op SUM_ADD =
    DT(((("real",292),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[4,6,7,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%49%14%52%18%52%19%68%121%57$1@$0@@%19%112$4$0@@$3$0@@|@@%112%121%57$1@$0@@$3@@%121%57$1@$0@@$2@@@|@|@|@|@"])
  fun op SUM_CMUL x = x
    val op SUM_CMUL =
    DT(((("real",293),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[9,40,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%54%9%52%18%52%19%68%121%57$1@$0@@%19%117$3@$4$0@@|@@%117$2@%121%57$1@$0@@$3@@@|@|@|@|@"])
  fun op SUM_NEG x = x
    val op SUM_NEG =
    DT(((("real",294),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[38,92,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%19%52%10%68%121%57$1@$0@@%19%118$3$0@@|@@%118%121%57$1@$0@@$2@@@|@|@|@"])
  fun op SUM_SUB x = x
    val op SUM_SUB =
    DT(((("real",295),
        [("bool",[25,56,58]),("real",[22,292,294])]),["DISK_THM"]),
       [read"%49%13%49%14%52%18%52%19%68%121%57$1@$0@@%19%120$4$0@@$3$0@@|@@%120%121%57$1@$0@@$3@@%121%57$1@$0@@$2@@@|@|@|@|@"])
  fun op SUM_SUBST x = x
    val op SUM_SUBST =
    DT(((("real",296),
        [("arithmetic",[14,24,25,45,53,59,71,86,88,96,173,180]),
         ("bool",[14,15,25,36,51,53,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[15,42]),("real",[277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%49%14%52%18%52%19%69%52%22%69%61%64$2@$0@@%63$0@%56$2@$1@@@@%68$4$0@@$3$0@@@|@@%68%121%57$1@$0@@$3@@%121%57$1@$0@@$2@@@|@|@|@|@"])
  fun op SUM_NSUB x = x
    val op SUM_NSUB =
    DT(((("real",297),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[4,6,18,22,31,38,39,86,126,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%52%19%49%13%54%9%68%120%121%57%62@$2@@$1@@%117%119$2@@$0@@@%121%57%62@$2@@%22%120$2$0@@$1@|@@|@|@|@"])
  fun op SUM_BOUND x = x
    val op SUM_BOUND =
    DT(((("real",298),
        [("arithmetic",[14,24,25,53,59,71,88,173,180]),
         ("bool",[14,15,25,36,51,53,54,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[15,16,42]),("real",[18,31,39,55,78,126,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%54%17%52%18%52%19%69%52%22%69%61%64$2@$0@@%63$0@%56$2@$1@@@@%116$4$0@@$3@@|@@%116%121%57$1@$0@@$3@@%117%119$0@@$2@@@|@|@|@|@"])
  fun op SUM_GROUP x = x
    val op SUM_GROUP =
    DT(((("real",299),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[277,278,282]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%52%19%52%16%49%13%68%121%57%62@$2@@%18%121%57%55$0@$2@@$2@@$1@|@@%121%57%62@%55$2@$1@@@$0@@|@|@|@"])
  fun op SUM_1 x = x
    val op SUM_1 =
    DT(((("real",300),
        [("arithmetic",[14,17,24,25,59,71,88,173,180]),
         ("bool",[15,25,36,54,56,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("real",[7,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%19%68%121%57$0@%89%77%98@@@@$1@@$1$0@@|@|@"])
  fun op SUM_2 x = x
    val op SUM_2 =
    DT(((("real",301),
        [("arithmetic",[14,17,18,24,25,59,71,88,173,180]),
         ("bool",[15,25,36,54,56,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("real",[7,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%19%68%121%57$0@%89%78%98@@@@$1@@%112$1$0@@$1%56$0@%89%77%98@@@@@@|@|@"])
  fun op SUM_OFFSET x = x
    val op SUM_OFFSET =
    DT(((("real",302),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[96,277,278,282]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%19%52%16%68%121%57%62@$1@@%18$3%56$0@$1@@|@@%120%121%57%62@%56$1@$0@@@$2@@%121%57%62@$0@@$2@@@|@|@|@"])
  fun op SUM_REINDEX x = x
    val op SUM_REINDEX =
    DT(((("real",303),
        [("arithmetic",[14,24,25,27,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[32,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%18%52%16%52%19%68%121%57%56$2@$1@@$0@@$3@@%121%57$2@$0@@%23$4%56$0@$2@@|@@|@|@|@|@"])
  fun op SUM_0 x = x
    val op SUM_0 =
    DT(((("real",304),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[7,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%52%18%52%19%68%121%57$1@$0@@%23%119%62@|@@%119%62@@|@|@"])
  fun op SUM_PERMUTE_0 x = x
    val op SUM_PERMUTE_0 =
    DT(((("real",305),
        [("arithmetic",
         [10,14,23,24,25,34,38,41,51,59,64,65,71,88,101,107,145,173,180]),
         ("bool",[7,14,15,25,26,27,30,36,51,53,54,56,58,63,64,104]),
         ("combin",[19]),("num",[9]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[1,4,11,15,16,42]),
         ("real",[4,6,32,59,128,129,277,278,282,286,303]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%52%19%48%20%69%52%42%69%63$0@$2@@%73%35%61%63$0@$3@@%67$2$0@@$1@@|@@|@@%49%13%68%121%57%62@$2@@%19$1$2$0@@|@@%121%57%62@$2@@$0@@|@@|@|@"])
  fun op SUM_CANCEL x = x
    val op SUM_CANCEL =
    DT(((("real",306),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("real",[4,6,8,22,27,86,277,278]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%49%13%52%19%52%10%68%121%57$1@$0@@%19%120$3%93$0@@@$3$0@@|@@%120$2%56$1@$0@@@$2$1@@@|@|@|@"])
  fun op REAL_MUL_RNEG x = x
    val op REAL_MUL_RNEG =
    DT(((("real",307),
        [("bool",[25,56,58]),("real",[8,9,33,40])]),["DISK_THM"]),
       [read"%54%37%54%43%68%117$1@%118$0@@@%118%117$1@$0@@@|@|@"])
  fun op REAL_MUL_LNEG x = x
    val op REAL_MUL_LNEG =
    DT(((("real",308),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("real",[15,307]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%54%37%54%43%68%117%118$1@@$0@@%118%117$1@$0@@@|@|@"])
  fun op real_lt x = x
    val op real_lt =
    DT(((("real",309),
        [("bool",[25,63]),("real",[23]),
         ("sat",[1,3,5,6,7,11,15,17,18])]),["DISK_THM"]),
       [read"%54%43%54%37%65%115$0@$1@@%125%116$1@$0@@@|@|@"])
  fun op REAL_LE_LADD_IMP x = x
    val op REAL_LE_LADD_IMP =
    DT(((("real",310),
        [("bool",[25,58,63]),("real",[75]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%116$1@$0@@%116%112$2@$1@@%112$2@$0@@@|@|@|@"])
  fun op REAL_LE_LNEG x = x
    val op REAL_LE_LNEG =
    DT(((("real",311),
        [("bool",[25,26,53]),("real",[4,6,7,8,310])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116%118$1@@$0@@%116%119%62@@%112$1@$0@@@|@|@"])
  fun op REAL_LE_NEG2 x = x
    val op REAL_LE_NEG2 =
    DT(((("real",312),[("real",[159])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116%118$1@@%118$0@@@%116$0@$1@@|@|@"])
  fun op REAL_NEG_NEG x = x
    val op REAL_NEG_NEG =
    DT(((("real",313),[("real",[43])]),["DISK_THM"]),
       [read"%54%37%68%118%118$0@@@$0@|@"])
  fun op REAL_LE_RNEG x = x
    val op REAL_LE_RNEG =
    DT(((("real",314),
        [("bool",[58]),("real",[4,8,38,311,312,313])]),["DISK_THM"]),
       [read"%54%37%54%43%65%116$1@%118$0@@@%116%112$1@$0@@%119%62@@@|@|@"])
  fun op REAL_POW_INV x = x
    val op REAL_POW_INV =
    DT(((("real",315),
        [("bool",[14,25,26,30,36,47,48,53,54,56,63]),("num",[9]),
         ("real",[21,39,133,175,233,235]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%54%37%52%19%68%109%102$1@@$0@@%102%109$1@$0@@@|@|@"])
  fun op REAL_POW_DIV x = x
    val op REAL_POW_DIV =
    DT(((("real",316),
        [("bool",[25,36,56]),("real",[26,246,315])]),["DISK_THM"]),
       [read"%54%37%54%43%52%19%68%109%60$2@$1@@$0@@%60%109$2@$0@@%109$1@$0@@@|@|@|@"])
  fun op REAL_POW_ADD x = x
    val op REAL_POW_ADD =
    DT(((("real",317),
        [("arithmetic",[24]),("bool",[14,25,36,56]),("num",[9]),
         ("real",[17,18,233])]),["DISK_THM"]),
       [read"%54%37%52%18%52%19%68%109$2@%56$1@$0@@@%117%109$2@$1@@%109$2@$0@@@|@|@|@"])
  fun op REAL_LE_RDIV_EQ x = x
    val op REAL_LE_RDIV_EQ =
    DT(((("real",318),
        [("bool",[25,26,27,54,56,58,63]),
         ("real",[17,19,26,29,177,193])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%116$2@%60$1@$0@@@%116%117$2@$0@@$1@@@|@|@|@"])
  fun op REAL_LE_LDIV_EQ x = x
    val op REAL_LE_LDIV_EQ =
    DT(((("real",319),
        [("bool",[25,26,27,54,56,58,63]),
         ("real",[17,19,26,29,177,193])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%116%60$2@$0@@$1@@%116$2@%117$1@$0@@@@|@|@|@"])
  fun op REAL_LT_RDIV_EQ x = x
    val op REAL_LT_RDIV_EQ =
    DT(((("real",320),
        [("bool",[25,26,27,53,54,56,58,63,105,124]),("real",[51,319]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%115$2@%60$1@$0@@@%115%117$2@$0@@$1@@@|@|@|@"])
  fun op REAL_LT_LDIV_EQ x = x
    val op REAL_LT_LDIV_EQ =
    DT(((("real",321),
        [("bool",[25,26,27,53,54,56,58,63,105,124]),("real",[51,318]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%115%60$2@$0@@$1@@%115$2@%117$1@$0@@@@|@|@|@"])
  fun op REAL_EQ_RDIV_EQ x = x
    val op REAL_EQ_RDIV_EQ =
    DT(((("real",322),
        [("bool",[25,53,56,58,63,105,124]),
         ("real",[62,318,319])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%68$2@%60$1@$0@@@%68%117$2@$0@@$1@@@|@|@|@"])
  fun op REAL_EQ_LDIV_EQ x = x
    val op REAL_EQ_LDIV_EQ =
    DT(((("real",323),
        [("bool",[25,53,56,58,63,105,124]),
         ("real",[62,318,319])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%115%119%62@@$0@@%65%68%60$2@$0@@$1@@%68$2@%117$1@$0@@@@|@|@|@"])
  fun op REAL_OF_NUM_POW x = x
    val op REAL_OF_NUM_POW =
    DT(((("real",324),
        [("arithmetic",[8]),("bool",[14,25,36,56]),("num",[9]),
         ("real",[132,233])]),["DISK_THM"]),
       [read"%52%35%52%19%68%109%119$1@@$0@@%119%83$1@$0@@@|@|@"])
  fun op REAL_ADD_LDISTRIB x = x
    val op REAL_ADD_LDISTRIB =
    DT(((("real",325),[("real",[9])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117$2@%112$1@$0@@@%112%117$2@$1@@%117$2@$0@@@|@|@|@"])
  fun op REAL_ADD_RDISTRIB x = x
    val op REAL_ADD_RDISTRIB =
    DT(((("real",326),[("real",[31])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%117%112$2@$1@@$0@@%112%117$2@$0@@%117$1@$0@@@|@|@|@"])
  fun op REAL_OF_NUM_ADD x = x
    val op REAL_OF_NUM_ADD =
    DT(((("real",327),[("real",[131])]),["DISK_THM"]),
       [read"%52%18%52%19%68%112%119$1@@%119$0@@@%119%56$1@$0@@@|@|@"])
  fun op REAL_OF_NUM_LE x = x
    val op REAL_OF_NUM_LE =
    DT(((("real",328),[("real",[128])]),["DISK_THM"]),
       [read"%52%18%52%19%65%116%119$1@@%119$0@@@%64$1@$0@@|@|@"])
  fun op REAL_OF_NUM_MUL x = x
    val op REAL_OF_NUM_MUL =
    DT(((("real",329),[("real",[132])]),["DISK_THM"]),
       [read"%52%18%52%19%68%117%119$1@@%119$0@@@%119%55$1@$0@@@|@|@"])
  fun op REAL_OF_NUM_SUC x = x
    val op REAL_OF_NUM_SUC =
    DT(((("real",330),
        [("arithmetic",[64]),("bool",[25,36,56]),
         ("real",[131])]),["DISK_THM"]),
       [read"%52%19%68%112%119$0@@%119%89%77%98@@@@@%119%93$0@@@|@"])
  fun op REAL_OF_NUM_EQ x = x
    val op REAL_OF_NUM_EQ =
    DT(((("real",331),[("real",[130])]),["DISK_THM"]),
       [read"%52%18%52%19%65%68%119$1@@%119$0@@@%67$1@$0@@|@|@"])
  fun op REAL_EQ_MUL_LCANCEL x = x
    val op REAL_EQ_MUL_LCANCEL =
    DT(((("real",332),[("bool",[25,36,56]),("real",[97])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%68%117$2@$1@@%117$2@$0@@@%99%68$2@%119%62@@@%68$1@$0@@@|@|@|@"])
  fun op REAL_ABS_0 x = x
    val op REAL_ABS_0 =
    DT(((("real",333),[("real",[206])]),["DISK_THM"]),
       [read"%68%100%119%62@@@%119%62@@"])
  fun op REAL_ABS_TRIANGLE x = x
    val op REAL_ABS_TRIANGLE =
    DT(((("real",334),[("real",[209])]),["DISK_THM"]),
       [read"%54%37%54%43%116%100%112$1@$0@@@%112%100$1@@%100$0@@@|@|@"])
  fun op REAL_ABS_MUL x = x
    val op REAL_ABS_MUL =
    DT(((("real",335),[("real",[211])]),["DISK_THM"]),
       [read"%54%37%54%43%68%100%117$1@$0@@@%117%100$1@@%100$0@@@|@|@"])
  fun op REAL_ABS_POS x = x
    val op REAL_ABS_POS =
    DT(((("real",336),[("real",[210])]),["DISK_THM"]),
       [read"%54%37%116%119%62@@%100$0@@|@"])
  fun op REAL_LE_EPSILON x = x
    val op REAL_LE_EPSILON =
    DT(((("real",337),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,78,92,93,94,96,
          105,124,146]),("real",[4,7,48,51,150,155,157]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%37%54%43%69%54%12%69%115%119%62@@$0@@%116$2@%112$1@$0@@@|@@%116$1@$0@@|@|@"])
  fun op REAL_BIGNUM x = x
    val op REAL_BIGNUM =
    DT(((("real",338),
        [("bool",[25,26,47,48,53,54,58,63,72,80,146]),("real",[29,74,275]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%54%24%71%19%115$1@%119$0@@|@|@"])
  fun op REAL_INV_LT_ANTIMONO x = x
    val op REAL_INV_LT_ANTIMONO =
    DT(((("real",339),
        [("bool",[25,26,47,48,53,54,58,63,93,94,96]),
         ("real",[106,115,168]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%54%43%69%61%115%119%62@@$1@@%115%119%62@@$0@@@%65%115%102$1@@%102$0@@@%115$0@$1@@@|@|@"])
  fun op REAL_INV_INJ x = x
    val op REAL_INV_INJ =
    DT(((("real",340),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("real",[115]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%54%43%65%68%102$1@@%102$0@@@%68$1@$0@@|@|@"])
  fun op REAL_DIV_RMUL_CANCEL x = x
    val op REAL_DIV_RMUL_CANCEL =
    DT(((("real",341),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96,105,124]),
         ("real",[15,17,18,21,26,30,39,40,175,332]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%54%9%54%6%54%8%69%125%68$2@%119%62@@@@%68%60%117$1@$2@@%117$0@$2@@@%60$1@$0@@@|@|@|@"])
  fun op REAL_DIV_LMUL_CANCEL x = x
    val op REAL_DIV_LMUL_CANCEL =
    DT(((("real",342),
        [("bool",[25,53,54,55,63]),("real",[15,341]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%9%54%6%54%8%69%125%68$2@%119%62@@@@%68%60%117$2@$1@@%117$2@$0@@@%60$1@$0@@@|@|@|@"])
  fun op REAL_DIV_ADD x = x
    val op REAL_DIV_ADD =
    DT(((("real",343),[("bool",[25,56]),("real",[26,326])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%68%112%60$1@$2@@%60$0@$2@@@%60%112$1@$0@@$2@@|@|@|@"])
  fun op REAL_ADD_RAT x = x
    val op REAL_ADD_RAT =
    DT(((("real",344),
        [("bool",[25,26,27,53,54,56,58,105,124]),
         ("real",[341,342,343])]),["DISK_THM"]),
       [read"%54%6%54%8%54%9%54%11%69%61%125%68$2@%119%62@@@@%125%68$0@%119%62@@@@@%68%112%60$3@$2@@%60$1@$0@@@%60%112%117$3@$0@@%117$2@$1@@@%117$2@$0@@@@|@|@|@|@"])
  fun op REAL_SUB_RAT x = x
    val op REAL_SUB_RAT =
    DT(((("real",345),
        [("bool",[25,53,54,55,58,63,105,124]),("real",[22,26,41,42,344]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%6%54%8%54%9%54%11%69%61%125%68$2@%119%62@@@@%125%68$0@%119%62@@@@@%68%120%60$3@$2@@%60$1@$0@@@%60%120%117$3@$0@@%117$2@$1@@@%117$2@$0@@@@|@|@|@|@"])
  fun op REAL_SUB x = x
    val op REAL_SUB =
    DT(((("real",346),
        [("arithmetic",[24,25,27,46,63,71,93,172,173,176,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,52,54,56,58,63,64,93,96,101,104,105,129]),
         ("numeral",[3,5,8]),("real",[4,22,131,173,174]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%52%18%52%19%68%120%119$1@@%119$0@@@%81%67%59$1@$0@@%62@@%118%119%59$0@$1@@@@%119%59$1@$0@@@@|@|@"])
  fun op REAL_POS_POS x = x
    val op REAL_POS_POS =
    DT(((("real",348),
        [("bool",[25,26,27,30,63,64]),("real",[55,347])]),["DISK_THM"]),
       [read"%54%37%116%119%62@@%108$0@@|@"])
  fun op REAL_POS_ID x = x
    val op REAL_POS_ID =
    DT(((("real",349),
        [("bool",[25,53,56,58,63,105,124,129,147]),
         ("real",[347])]),["DISK_THM"]),
       [read"%54%37%69%116%119%62@@$0@@%68%108$0@@$0@@|@"])
  fun op REAL_POS_INFLATE x = x
    val op REAL_POS_INFLATE =
    DT(((("real",350),
        [("bool",[25,26,27,30,47,48,53,54,63,64]),("real",[52,55,347]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%54%37%116$0@%108$0@@|@"])
  fun op REAL_POS_MONO x = x
    val op REAL_POS_MONO =
    DT(((("real",351),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96,105,124]),
         ("real",[52,55,61,347]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%54%43%69%116$1@$0@@%116%108$1@@%108$0@@@|@|@"])
  fun op REAL_POS_EQ_ZERO x = x
    val op REAL_POS_EQ_ZERO =
    DT(((("real",352),
        [("bool",[25,26,27,30,43,47,48,53,54,56,58,63,64,93,94,96]),
         ("real",[52,62,347]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%65%68%108$0@@%119%62@@@%116$0@%119%62@@@|@"])
  fun op REAL_POS_LE_ZERO x = x
    val op REAL_POS_LE_ZERO =
    DT(((("real",353),
        [("bool",[13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,93,94]),
         ("real",[52,62,347]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%65%116%108$0@@%119%62@@@%116$0@%119%62@@@|@"])
  fun op REAL_MIN_REFL x = x
    val op REAL_MIN_REFL =
    DT(((("real",355),[("bool",[25,56,65]),("real",[354])]),["DISK_THM"]),
       [read"%54%37%68%104$0@$0@@$0@|@"])
  fun op REAL_LE_MIN x = x
    val op REAL_LE_MIN =
    DT(((("real",356),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("real",[52,61,354]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%65%116$2@%104$1@$0@@@%61%116$2@$1@@%116$2@$0@@@|@|@|@"])
  fun op REAL_MIN_LE x = x
    val op REAL_MIN_LE =
    DT(((("real",357),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("real",[52,61,354]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%65%116%104$1@$0@@$2@@%99%116$1@$2@@%116$0@$2@@@|@|@|@"])
  fun op REAL_MIN_LE1 x = x
    val op REAL_MIN_LE1 =
    DT(((("real",358),
        [("bool",[25,52,63]),("real",[55,357])]),["DISK_THM"]),
       [read"%54%37%54%43%116%104$1@$0@@$1@|@|@"])
  fun op REAL_MIN_LE2 x = x
    val op REAL_MIN_LE2 =
    DT(((("real",359),
        [("bool",[25,52,63]),("real",[55,357])]),["DISK_THM"]),
       [read"%54%37%54%43%116%104$1@$0@@$0@|@|@"])
  fun op REAL_MIN_ALT x = x
    val op REAL_MIN_ALT =
    DT(((("real",360),
        [("bool",
         [25,26,27,30,43,47,48,53,54,56,58,63,64,93,94,96,105,124,129,
          147]),("real",[62,354]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%54%43%61%69%116$1@$0@@%68%104$1@$0@@$1@@@%69%116$0@$1@@%68%104$1@$0@@$0@@@|@|@"])
  fun op REAL_MIN_LE_LIN x = x
    val op REAL_MIN_LE_LIN =
    DT(((("real",361),
        [("bool",[25,26,47,48,51,53,54,58,63]),
         ("real",[18,31,52,55,61,78,85,95,189,360]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%69%61%116%119%62@@$2@@%116$2@%119%89%77%98@@@@@@%116%104$1@$0@@%112%117$2@$1@@%117%120%119%89%77%98@@@@$2@@$0@@@@|@|@|@"])
  fun op REAL_MIN_ADD x = x
    val op REAL_MIN_ADD =
    DT(((("real",362),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),
         ("real",[76,354])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%68%104%112$1@$2@@%112$0@$2@@@%112%104$1@$0@@$2@@|@|@|@"])
  fun op REAL_MIN_SUB x = x
    val op REAL_MIN_SUB =
    DT(((("real",363),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),
         ("real",[84,157,354])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%68%104%120$1@$2@@%120$0@$2@@@%120%104$1@$0@@$2@@|@|@|@"])
  fun op REAL_IMP_MIN_LE2 x = x
    val op REAL_IMP_MIN_LE2 =
    DT(((("real",364),
        [("bool",[25,52,58,63,105,124]),("real",[356,357])]),["DISK_THM"]),
       [read"%54%40%54%41%54%45%54%46%69%61%116$3@$1@@%116$2@$0@@@%116%104$3@$2@@%104$1@$0@@@|@|@|@|@"])
  fun op REAL_MAX_REFL x = x
    val op REAL_MAX_REFL =
    DT(((("real",366),[("bool",[25,56,65]),("real",[365])]),["DISK_THM"]),
       [read"%54%37%68%103$0@$0@@$0@|@"])
  fun op REAL_LE_MAX x = x
    val op REAL_LE_MAX =
    DT(((("real",367),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("real",[52,61,365]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%65%116$2@%103$1@$0@@@%99%116$2@$1@@%116$2@$0@@@|@|@|@"])
  fun op REAL_LE_MAX1 x = x
    val op REAL_LE_MAX1 =
    DT(((("real",368),
        [("bool",[25,52,63]),("real",[55,367])]),["DISK_THM"]),
       [read"%54%37%54%43%116$1@%103$1@$0@@|@|@"])
  fun op REAL_LE_MAX2 x = x
    val op REAL_LE_MAX2 =
    DT(((("real",369),
        [("bool",[25,52,63]),("real",[55,367])]),["DISK_THM"]),
       [read"%54%37%54%43%116$0@%103$1@$0@@|@|@"])
  fun op REAL_MAX_LE x = x
    val op REAL_MAX_LE =
    DT(((("real",370),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("real",[52,61,365]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%65%116%103$1@$0@@$2@@%61%116$1@$2@@%116$0@$2@@@|@|@|@"])
  fun op REAL_MAX_ALT x = x
    val op REAL_MAX_ALT =
    DT(((("real",371),
        [("bool",
         [25,26,27,30,43,47,48,53,54,56,58,63,64,93,94,96,105,124,129,
          147]),("real",[62,365]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%37%54%43%61%69%116$1@$0@@%68%103$1@$0@@$0@@@%69%116$0@$1@@%68%103$1@$0@@$1@@@|@|@"])
  fun op REAL_MAX_MIN x = x
    val op REAL_MAX_MIN =
    DT(((("real",372),
        [("bool",[25,56,63]),("real",[43,52,312,360,371])]),["DISK_THM"]),
       [read"%54%37%54%43%68%103$1@$0@@%118%104%118$1@@%118$0@@@@|@|@"])
  fun op REAL_MIN_MAX x = x
    val op REAL_MIN_MAX =
    DT(((("real",373),
        [("bool",[25,56,63]),("real",[43,52,312,360,371])]),["DISK_THM"]),
       [read"%54%37%54%43%68%104$1@$0@@%118%103%118$1@@%118$0@@@@|@|@"])
  fun op REAL_LIN_LE_MAX x = x
    val op REAL_LIN_LE_MAX =
    DT(((("real",374),
        [("bool",[25,51,53,58,63,105,124]),
         ("real",[38,43,307,312,361,373])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%69%61%116%119%62@@$2@@%116$2@%119%89%77%98@@@@@@%116%112%117$2@$1@@%117%120%119%89%77%98@@@@$2@@$0@@@%103$1@$0@@@|@|@|@"])
  fun op REAL_MAX_ADD x = x
    val op REAL_MAX_ADD =
    DT(((("real",375),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),
         ("real",[76,365])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%68%103%112$1@$2@@%112$0@$2@@@%112%103$1@$0@@$2@@|@|@|@"])
  fun op REAL_MAX_SUB x = x
    val op REAL_MAX_SUB =
    DT(((("real",376),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),
         ("real",[84,157,365])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%68%103%120$1@$2@@%120$0@$2@@@%120%103$1@$0@@$2@@|@|@|@"])
  fun op REAL_IMP_MAX_LE2 x = x
    val op REAL_IMP_MAX_LE2 =
    DT(((("real",377),
        [("bool",[25,52,58,63,105,124]),("real",[367,370])]),["DISK_THM"]),
       [read"%54%40%54%41%54%45%54%46%69%61%116$3@$1@@%116$2@$0@@@%116%103$3@$2@@%103$1@$0@@@|@|@|@|@"])
  fun op REAL_SUP_EXISTS_UNIQUE x = x
    val op REAL_SUP_EXISTS_UNIQUE =
    DT(((("real",379),
        [("bool",
         [7,25,26,27,36,43,47,48,53,54,56,58,63,71,72,75,76,77,78,80,81,83,
          93,94,96,146]),("combin",[19]),("real",[11,48,62,273]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%21%69%61%72%37$1$0@|@@%72%47%54%37%69$2$0@@%116$0@$1@@|@|@@@%74%25%54%43%65%72%37%61$3$0@@%115$1@$0@@|@@%115$0@$1@@|@|@@|@"])
  fun op REAL_SUP_MAX x = x
    val op REAL_SUP_MAX =
    DT(((("real",380),
        [("bool",
         [7,25,26,36,43,47,48,53,54,56,58,63,71,72,75,76,77,78,80,83,84,93,
          94,96,146]),("combin",[19]),("real",[59,273,379]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%21%54%47%69%61$1$0@@%54%37%69$2$0@@%116$0@$1@@|@@@%68%123$1@@$0@@|@|@"])
  fun op REAL_IMP_SUP_LE x = x
    val op REAL_IMP_SUP_LE =
    DT(((("real",381),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,72,92,94,96,146]),
         ("combin",[19]),("real",[23,48,273]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%21%54%37%69%61%72%24$2$0@|@@%54%24%69$2$0@@%116$0@$1@@|@@@%116%123$1@@$0@@|@|@"])
  fun op REAL_IMP_LE_SUP x = x
    val op REAL_IMP_LE_SUP =
    DT(((("real",382),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,72,78,93,94,96,146]),
         ("combin",[19]),("real",[61,274]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%21%54%37%69%61%72%24$2$0@|@@%61%72%47%54%24%69$3$0@@%116$0@$1@@|@|@@%72%24%61$2$0@@%116$1@$0@@|@@@@%116$0@%123$1@@@|@|@"])
  fun op REAL_INF_MIN x = x
    val op REAL_INF_MIN =
    DT(((("real",383),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,77,93,94,96,105,
          124]),("real",[43,159,378,380]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%21%54%47%69%61$1$0@@%54%37%69$2$0@@%116$1@$0@@|@@@%68%101$1@@$0@@|@|@"])
  fun op REAL_IMP_LE_INF x = x
    val op REAL_IMP_LE_INF =
    DT(((("real",384),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124]),
         ("real",[43,159,378,381]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%21%54%24%69%61%72%37$2$0@|@@%54%37%69$2$0@@%116$1@$0@@|@@@%116$0@%101$1@@@|@|@"])
  fun op REAL_IMP_INF_LE x = x
    val op REAL_IMP_INF_LE =
    DT(((("real",385),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,93,94,96,105,124,
          146]),("real",[43,159,378,382]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%21%54%24%69%61%72%47%54%37%69$3$0@@%116$1@$0@@|@|@@%72%37%61$2$0@@%116$0@$1@@|@@@%116%101$1@@$0@@|@|@"])
  fun op REAL_INF_LT x = x
    val op REAL_INF_LT =
    DT(((("real",386),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,72,78,80,94,96]),
         ("combin",[19]),("real",[23,384]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%21%54%47%69%61%72%37$2$0@|@@%115%101$1@@$0@@@%72%37%61$2$0@@%115$0@$1@@|@@|@|@"])
  fun op REAL_INF_CLOSE x = x
    val op REAL_INF_CLOSE =
    DT(((("real",387),
        [("bool",[25,26,47,48,53,54,63,72]),("real",[124,386]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%51%21%54%12%69%61%72%37$2$0@|@@%115%119%62@@$0@@@%72%37%61$2$0@@%115$0@%112%101$2@@$1@@@|@@|@|@"])
  fun op SUP_EPSILON x = x
    val op SUP_EPSILON =
    DT(((("real",388),
        [("arithmetic",[28,56,64]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,101,105,
          124]),("prim_rec",[15]),
         ("real",
         [4,6,18,22,32,38,39,43,48,57,61,76,98,128,130,131,148,157,162,173,
          177,200,273,308,309,326,338]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("while",[11])]),["DISK_THM"]),
       [read"%51%21%54%12%69%61%115%119%62@@$0@@%61%72%37$2$0@|@@%72%47%54%37%69$3$0@@%116$0@$1@@|@|@@@@%72%37%61$2$0@@%116%123$2@@%112$0@$1@@@|@@|@|@"])
  fun op REAL_LE_SUP x = x
    val op REAL_LE_SUP =
    DT(((("real",389),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,77,78,92,93,
          94,96,105,124,146]),("combin",[19]),
         ("real",[27,57,59,61,75,124,154,156,157,273,309,337]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%21%54%37%69%61%72%43$2$0@|@@%72%43%54%47%69$3$0@@%116$0@$1@@|@|@@@%65%116$0@%123$1@@@%54%43%69%54%47%69$3$0@@%116$0@$1@@|@@%116$1@$0@@|@@@|@|@"])
  fun op REAL_INF_LE x = x
    val op REAL_INF_LE =
    DT(((("real",390),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,77,78,80,93,94,
          96,105,124,146]),("real",[43,159,378,389]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%21%54%37%69%61%72%43$2$0@|@@%72%43%54%47%69$3$0@@%116$1@$0@@|@|@@@%65%116%101$1@@$0@@%54%43%69%54%47%69$3$0@@%116$1@$0@@|@@%116$0@$1@@|@@@|@|@"])
  fun op REAL_SUP_CONST x = x
    val op REAL_SUP_CONST =
    DT(((("real",391),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,77,78,93,94,96,
          146]),("real",[55,62,381,382]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%37%68%123%24%68$0@$1@|@@$0@|@"])
  fun op REAL_MUL_SUB2_CANCEL x = x
    val op REAL_MUL_SUB2_CANCEL =
    DT(((("real",392),
        [("bool",[25,56,58]),("real",[31,85])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%68%112%117$1@$0@@%117%120$2@$1@@$0@@@%117$2@$0@@|@|@|@"])
  fun op REAL_MUL_SUB1_CANCEL x = x
    val op REAL_MUL_SUB1_CANCEL =
    DT(((("real",393),[("bool",[25,56,58]),("real",[9,85])]),["DISK_THM"]),
       [read"%54%47%54%37%54%43%68%112%117$0@$1@@%117$0@%120$2@$1@@@@%117$0@$2@@|@|@|@"])
  fun op REAL_NEG_HALF x = x
    val op REAL_NEG_HALF =
    DT(((("real",394),
        [("bool",[25,53,56,58,105,124]),
         ("real",[33,84,149])]),["DISK_THM"]),
       [read"%54%37%68%120$0@%60$0@%119%89%78%98@@@@@@%60$0@%119%89%78%98@@@@@|@"])
  fun op REAL_NEG_THIRD x = x
    val op REAL_NEG_THIRD =
    DT(((("real",395),
        [("arithmetic",[172,173,177,180]),
         ("bool",[25,26,27,51,52,53,54,56,58,63,104,105,124]),
         ("numeral",[0,3,5,8]),
         ("real",[18,96,98,99,130,131,147,195,326])]),["DISK_THM"]),
       [read"%54%37%68%120$0@%60$0@%119%89%77%77%98@@@@@@@%60%117%119%89%78%98@@@@$0@@%119%89%77%77%98@@@@@@|@"])
  fun op REAL_DIV_DENOM_CANCEL x = x
    val op REAL_DIV_DENOM_CANCEL =
    DT(((("real",396),
        [("bool",[25,26,27,30,51,53,54,55,56,58,63,105,124]),
         ("real",[15,17,19,21,26,29,39,40,104,116,175]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%125%68$2@%119%62@@@@%68%60%60$1@$2@@%60$0@$2@@@%60$1@$0@@@|@|@|@"])
  fun op REAL_DIV_DENOM_CANCEL2 x = x
    val op REAL_DIV_DENOM_CANCEL2 =
    DT(((("real",397),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,396])]),["DISK_THM"]),
       [read"%54%43%54%47%68%60%60$1@%119%89%78%98@@@@@%60$0@%119%89%78%98@@@@@@%60$1@$0@@|@|@"])
  fun op REAL_DIV_DENOM_CANCEL3 x = x
    val op REAL_DIV_DENOM_CANCEL3 =
    DT(((("real",398),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,396])]),["DISK_THM"]),
       [read"%54%43%54%47%68%60%60$1@%119%89%77%77%98@@@@@@%60$0@%119%89%77%77%98@@@@@@@%60$1@$0@@|@|@"])
  fun op REAL_DIV_INNER_CANCEL x = x
    val op REAL_DIV_INNER_CANCEL =
    DT(((("real",399),
        [("bool",[25,26,27,53,54,55,56,58,63,105,124]),
         ("real",[15,17,19,26,29]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%125%68$2@%119%62@@@@%68%117%60$1@$2@@%60$2@$0@@@%60$1@$0@@@|@|@|@"])
  fun op REAL_DIV_INNER_CANCEL2 x = x
    val op REAL_DIV_INNER_CANCEL2 =
    DT(((("real",400),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,399])]),["DISK_THM"]),
       [read"%54%43%54%47%68%117%60$1@%119%89%78%98@@@@@%60%119%89%78%98@@@@$0@@@%60$1@$0@@|@|@"])
  fun op REAL_DIV_INNER_CANCEL3 x = x
    val op REAL_DIV_INNER_CANCEL3 =
    DT(((("real",401),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,399])]),["DISK_THM"]),
       [read"%54%43%54%47%68%117%60$1@%119%89%77%77%98@@@@@@%60%119%89%77%77%98@@@@@$0@@@%60$1@$0@@|@|@"])
  fun op REAL_DIV_OUTER_CANCEL x = x
    val op REAL_DIV_OUTER_CANCEL =
    DT(((("real",402),
        [("bool",[25,26,27,53,54,55,56,58,63,105,124]),
         ("real",[15,17,18,26,30]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%69%125%68$2@%119%62@@@@%68%117%60$2@$1@@%60$0@$2@@@%60$0@$1@@@|@|@|@"])
  fun op REAL_DIV_OUTER_CANCEL2 x = x
    val op REAL_DIV_OUTER_CANCEL2 =
    DT(((("real",403),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,402])]),["DISK_THM"]),
       [read"%54%43%54%47%68%117%60%119%89%78%98@@@@$1@@%60$0@%119%89%78%98@@@@@@%60$0@$1@@|@|@"])
  fun op REAL_DIV_OUTER_CANCEL3 x = x
    val op REAL_DIV_OUTER_CANCEL3 =
    DT(((("real",404),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,402])]),["DISK_THM"]),
       [read"%54%43%54%47%68%117%60%119%89%77%77%98@@@@@$1@@%60$0@%119%89%77%77%98@@@@@@@%60$0@$1@@|@|@"])
  fun op REAL_DIV_REFL2 x = x
    val op REAL_DIV_REFL2 =
    DT(((("real",405),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,135])]),["DISK_THM"]),
       [read"%68%60%119%89%78%98@@@@%119%89%78%98@@@@@%119%89%77%98@@@@"])
  fun op REAL_DIV_REFL3 x = x
    val op REAL_DIV_REFL3 =
    DT(((("real",406),
        [("arithmetic",[172]),("bool",[25,26,27,53,54,58,63,104,105,124]),
         ("numeral",[3,8]),("real",[130,135])]),["DISK_THM"]),
       [read"%68%60%119%89%77%77%98@@@@@%119%89%77%77%98@@@@@@%119%89%77%98@@@@"])
  fun op REAL_HALF_BETWEEN x = x
    val op REAL_HALF_BETWEEN =
    DT(((("real",407),
        [("arithmetic",[59,172,173]),
         ("bool",[8,14,25,26,27,47,48,51,53,54,56,58,63,64,94,104,105]),
         ("numeral",[3,5,8,17,21,34,35,40,41]),
         ("real",[15,17,19,26,52,128,129,130,132,176,309]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%61%61%115%119%62@@%60%119%89%77%98@@@@%119%89%78%98@@@@@@%115%60%119%89%77%98@@@@%119%89%78%98@@@@@%119%89%77%98@@@@@@%61%116%119%62@@%60%119%89%77%98@@@@%119%89%78%98@@@@@@%116%60%119%89%77%98@@@@%119%89%78%98@@@@@%119%89%77%98@@@@@@"])
  fun op REAL_THIRDS_BETWEEN x = x
    val op REAL_THIRDS_BETWEEN =
    DT(((("real",408),
        [("arithmetic",[59,172,173]),
         ("bool",[8,14,25,26,27,47,48,51,53,54,56,58,63,64,94,104,105]),
         ("numeral",[0,3,5,8,17,21,34,35,40,41]),
         ("real",[15,17,19,26,52,128,129,130,132,176,309]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%61%61%115%119%62@@%60%119%89%77%98@@@@%119%89%77%77%98@@@@@@@%61%115%60%119%89%77%98@@@@%119%89%77%77%98@@@@@@%119%89%77%98@@@@@%61%115%119%62@@%60%119%89%78%98@@@@%119%89%77%77%98@@@@@@@%115%60%119%89%78%98@@@@%119%89%77%77%98@@@@@@%119%89%77%98@@@@@@@@%61%116%119%62@@%60%119%89%77%98@@@@%119%89%77%77%98@@@@@@@%61%116%60%119%89%77%98@@@@%119%89%77%77%98@@@@@@%119%89%77%98@@@@@%61%116%119%62@@%60%119%89%78%98@@@@%119%89%77%77%98@@@@@@@%116%60%119%89%78%98@@@@%119%89%77%77%98@@@@@@%119%89%77%98@@@@@@@@"])
  fun op REAL_LE_SUB_CANCEL2 x = x
    val op REAL_LE_SUB_CANCEL2 =
    DT(((("real",409),[("bool",[25,56]),("real",[84,157])]),["DISK_THM"]),
       [read"%54%37%54%43%54%47%65%116%120$2@$0@@%120$1@$0@@@%116$2@$1@@|@|@|@"])
  fun op REAL_ADD_SUB_ALT x = x
    val op REAL_ADD_SUB_ALT =
    DT(((("real",410),[("bool",[25,56]),("real",[174])]),["DISK_THM"]),
       [read"%54%37%54%43%68%120%112$1@$0@@$0@@$1@|@|@"])
  fun op INFINITE_REAL_UNIV x = x
    val op INFINITE_REAL_UNIV =
    DT(((("real",411),
        [("bool",[25,26,27,36,53,54,56,58,63,83]),
         ("pred_set",[24,192,201,235]),("real",[130]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%125%86%95@@"])
  fun op add_rat x = x
    val op add_rat =
    DT(((("real",412),
        [("bool",[25,26,27,30,51,54,56,58,63,64,105,129]),("marker",[5]),
         ("real",[16,32,33,343,344])]),["DISK_THM"]),
       [read"%68%112%60%37@%43@@%60%27@%30@@@%81%68%43@%119%62@@@%112%124%60%37@%43@@@%60%27@%30@@@%81%68%30@%119%62@@@%112%60%37@%43@@%124%60%27@%30@@@@%81%68%43@%30@@%60%112%37@%27@@%30@@%60%112%117%37@%30@@%117%27@%43@@@%117%43@%30@@@@@@"])
  fun op add_ratl x = x
    val op add_ratl =
    DT(((("real",413),
        [("bool",[25,26,27,30,51,54,56,58,63,64,105,129]),("marker",[5]),
         ("numeral",[3,6]),("real",[16,29,33,130,134,344])]),["DISK_THM"]),
       [read"%68%112%60%37@%43@@%47@@%81%68%43@%119%62@@@%112%124%60%37@%43@@@%47@@%60%112%37@%117%47@%43@@@%43@@@"])
  fun op add_ratr x = x
    val op add_ratr =
    DT(((("real",414),
        [("bool",[25,56,58,105,129]),("real",[5,413])]),["DISK_THM"]),
       [read"%68%112%37@%60%43@%47@@@%81%68%47@%119%62@@@%112%37@%124%60%43@%47@@@@%60%112%117%37@%47@@%43@@%47@@@"])
  fun op add_ints x = x
    val op add_ints =
    DT(((("real",415),
        [("arithmetic",
         [24,25,27,41,46,59,63,71,91,93,130,173,176,177,180]),
         ("bool",[25,26,27,30,36,52,54,56,58,63,64,96,101,104,105,129]),
         ("numeral",[3,5,8]),("real",[5,22,33,38,92,130,131,346]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%61%68%112%119%19@@%119%18@@@%119%56%19@%18@@@@%61%68%112%118%119%19@@@%119%18@@@%81%64%19@%18@@%119%59%18@%19@@@%118%119%59%19@%18@@@@@@%61%68%112%119%19@@%118%119%18@@@@%81%63%19@%18@@%118%119%59%18@%19@@@@%119%59%19@%18@@@@@%68%112%118%119%19@@@%118%119%18@@@@%118%119%56%19@%18@@@@@@@"])
  fun op mult_rat x = x
    val op mult_rat =
    DT(((("real",416),
        [("bool",[25,26,27,30,51,52,54,56,58,63,64,105,129]),
         ("marker",[5]),("real",[16,17,45,97,98,147,195])]),["DISK_THM"]),
       [read"%68%117%60%37@%43@@%60%27@%30@@@%81%68%43@%119%62@@@%117%124%60%37@%43@@@%60%27@%30@@@%81%68%30@%119%62@@@%117%60%37@%43@@%124%60%27@%30@@@@%60%117%37@%27@@%117%43@%30@@@@@"])
  fun op mult_ratl x = x
    val op mult_ratl =
    DT(((("real",417),
        [("bool",[25,26,27,30,52,56,58,63,64,105,129,147]),("marker",[5]),
         ("numeral",[3,6]),("real",[29,98,130,134,416])]),["DISK_THM"]),
       [read"%68%117%60%37@%43@@%47@@%81%68%43@%119%62@@@%117%124%60%37@%43@@@%47@@%60%117%37@%47@@%43@@@"])
  fun op mult_ratr x = x
    val op mult_ratr =
    DT(((("real",418),
        [("bool",[25,26,27,30,52,56,58,63,64,105,129,147]),("marker",[5]),
         ("real",[16,98,417])]),["DISK_THM"]),
       [read"%68%117%37@%60%43@%47@@@%81%68%47@%119%62@@@%117%37@%124%60%43@%47@@@@%60%117%37@%43@@%47@@@"])
  fun op mult_ints x = x
    val op mult_ints =
    DT(((("real",419),
        [("bool",[25,56]),("real",[43,130,132,307,308])]),["DISK_THM"]),
       [read"%61%68%117%119%4@@%119%7@@@%119%55%4@%7@@@@%61%68%117%118%119%4@@@%119%7@@@%118%119%55%4@%7@@@@@%61%68%117%119%4@@%118%119%7@@@@%118%119%55%4@%7@@@@@%68%117%118%119%4@@@%118%119%7@@@@%119%55%4@%7@@@@@@"])
  fun op pow_rat x = x
    val op pow_rat =
    DT(((("real",420),
        [("arithmetic",[1,2,3,4,8,13,24,71]),
         ("bool",[14,25,26,27,30,51,54,56,58,63,64,105,129]),("num",[9]),
         ("real",[132,233,307,308,313,316,324])]),["DISK_THM"]),
       [read"%61%68%109%37@%62@@%119%89%77%98@@@@@%61%68%109%119%62@@%89%77%19@@@@%119%62@@@%61%68%109%119%62@@%89%78%19@@@@%119%62@@@%61%68%109%119%89%4@@@%89%19@@@%119%83%89%4@@%89%19@@@@@%61%68%109%118%119%89%4@@@@%89%19@@@%80%92%89%19@@@%118@%37$0|@%119%83%89%4@@%89%19@@@@@@%68%109%60%37@%43@@%19@@%60%109%37@%19@@%109%43@%19@@@@@@@@"])
  fun op neg_rat x = x
    val op neg_rat =
    DT(((("real",421),
        [("bool",[25,26,27,30,54,56,58,63,64,105,129]),("marker",[5]),
         ("real",[26,92,117,307,308])]),["DISK_THM"]),
       [read"%61%68%118%60%37@%43@@@%81%68%43@%119%62@@@%118%124%60%37@%43@@@@%60%118%37@@%43@@@@%68%60%37@%118%43@@@%81%68%43@%119%62@@@%124%60%37@%43@@@%60%118%37@@%43@@@@"])
  fun op eq_rat x = x
    val op eq_rat =
    DT(((("real",422),
        [("bool",[25,26,27,30,52,53,54,55,56,58,63,64,100,105,129]),
         ("marker",[5]),("real",[16,17,45,147,182]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%65%68%60%37@%43@@%60%27@%30@@@%79%68%43@%119%62@@@%68%124%60%37@%43@@@%60%27@%30@@@%79%68%30@%119%62@@@%68%60%37@%43@@%124%60%27@%30@@@@%79%68%43@%30@@%68%37@%27@@%68%117%37@%30@@%117%43@%27@@@@@@"])
  fun op eq_ratl x = x
    val op eq_ratl =
    DT(((("real",423),
        [("bool",[25,26,27,30,53,54,55,56,58,63,64,99,105,129]),
         ("marker",[5]),("real",[97,147]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%65%68%60%37@%43@@%47@@%79%68%43@%119%62@@@%68%124%60%37@%43@@@%47@@%68%37@%117%43@%47@@@@"])
  fun op eq_ratr x = x
    val op eq_ratr =
    DT(((("real",424),
        [("bool",[25,26,51,53,54,55,63,99,100]),("real",[423]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%65%68%47@%60%37@%43@@@%79%68%43@%119%62@@@%68%47@%124%60%37@%43@@@@%68%117%43@%47@@%37@@@"])
  fun op eq_ints x = x
    val op eq_ints =
    DT(((("real",425),
        [("arithmetic",[46,71,93,147,173,177,180]),
         ("bool",
         [25,26,36,51,52,53,54,55,56,58,63,96,99,100,101,104,105,124]),
         ("numeral",[3,8]),("real",[62,68,92,128,130,200]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%61%65%68%119%19@@%119%18@@@%67%19@%18@@@%61%65%68%118%119%19@@@%119%18@@@%61%67%19@%62@@%67%18@%62@@@@%61%65%68%119%19@@%118%119%18@@@@%61%67%19@%62@@%67%18@%62@@@@%65%68%118%119%19@@@%118%119%18@@@@%67%19@%18@@@@@"])
  fun op div_ratr x = x
    val op div_ratr =
    DT(((("real",426),
        [("bool",[25,26,27,30,51,54,56,58,63,64,96,105,129]),
         ("marker",[5]),("real",[16,17,26,115,116,175])]),["DISK_THM"]),
       [read"%68%60%37@%60%43@%47@@@%81%99%68%43@%119%62@@@%68%47@%119%62@@@@%60%37@%124%60%43@%47@@@@%60%117%37@%47@@%43@@@"])
  fun op div_ratl x = x
    val op div_ratl =
    DT(((("real",427),
        [("bool",[25,26,27,30,51,52,54,56,58,63,64,105,129]),
         ("marker",[5]),("real",[17,26,45,97,98,116,175])]),["DISK_THM"]),
       [read"%68%60%60%37@%43@@%47@@%81%68%43@%119%62@@@%60%124%60%37@%43@@@%47@@%81%68%47@%119%62@@@%124%60%60%37@%43@@%47@@@%60%37@%117%43@%47@@@@@"])
  fun op div_rat x = x
    val op div_rat =
    DT(((("real",428),
        [("bool",[25,26,27,30,51,54,56,58,63,64,96,105,129]),
         ("marker",[5]),("real",[16,17,26,115,116,175])]),["DISK_THM"]),
       [read"%68%60%60%37@%43@@%60%27@%30@@@%81%99%68%27@%119%62@@@%68%30@%119%62@@@@%60%60%37@%43@@%124%60%27@%30@@@@%81%68%43@%119%62@@@%60%124%60%37@%43@@@%60%27@%30@@@%60%117%37@%30@@%117%43@%27@@@@@"])
  fun op le_rat x = x
    val op le_rat =
    DT(((("real",429),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",[25,26,27,30,36,51,52,54,56,58,63,64,96,101,104,105,129]),
         ("marker",[5]),("numeral",[3,8]),
         ("real",[16,17,20,129,130,147,176]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%65%116%60%37@%119%19@@@%60%27@%119%18@@@@%79%67%19@%62@@%116%124%60%37@%119%62@@@@%60%27@%119%18@@@@%79%67%18@%62@@%116%60%37@%119%19@@@%124%60%27@%119%62@@@@@%116%117%119%18@@%37@@%117%119%19@@%27@@@@@"])
  fun op le_ratl x = x
    val op le_ratl =
    DT(((("real",430),
        [("bool",[27,58,105,129,147]),("numeral",[3,6]),
         ("real",[18,134,429])]),["DISK_THM"]),
       [read"%65%116%60%37@%119%19@@@%27@@%79%67%19@%62@@%116%124%60%37@%119%62@@@@%27@@%116%37@%117%119%19@@%27@@@@"])
  fun op le_ratr x = x
    val op le_ratr =
    DT(((("real",431),
        [("bool",[27,58,105,129,147]),("numeral",[3,6]),
         ("real",[18,134,429])]),["DISK_THM"]),
       [read"%65%116%37@%60%27@%119%18@@@@%79%67%18@%62@@%116%37@%124%60%27@%119%62@@@@@%116%117%119%18@@%37@@%27@@@"])
  fun op le_int x = x
    val op le_int =
    DT(((("real",432),
        [("arithmetic",[28,147]),("bool",[25,26,27,51,56,58,63]),
         ("num",[7]),("prim_rec",[7]),
         ("real",[51,59,61,65,67,92,127,128,129,159])]),["DISK_THM"]),
       [read"%61%65%116%119%19@@%119%18@@@%64%19@%18@@@%61%65%116%118%119%19@@@%119%18@@@%94@@%61%65%116%119%19@@%118%119%18@@@@%61%67%19@%62@@%67%18@%62@@@@%65%116%118%119%19@@@%118%119%18@@@@%64%18@%19@@@@@"])
  fun op lt_rat x = x
    val op lt_rat =
    DT(((("real",433),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",[25,26,27,30,36,51,52,54,56,58,63,64,96,101,104,105,129]),
         ("marker",[5]),("numeral",[3,8]),
         ("real",[16,17,20,109,129,130,147]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%65%115%60%37@%119%19@@@%60%27@%119%18@@@@%79%67%19@%62@@%115%124%60%37@%119%62@@@@%60%27@%119%18@@@@%79%67%18@%62@@%115%60%37@%119%19@@@%124%60%27@%119%62@@@@@%115%117%119%18@@%37@@%117%119%19@@%27@@@@@"])
  fun op lt_ratl x = x
    val op lt_ratl =
    DT(((("real",434),
        [("bool",[27,58,105,129,147]),("numeral",[3,6]),
         ("real",[18,134,433])]),["DISK_THM"]),
       [read"%65%115%60%37@%119%19@@@%27@@%79%67%19@%62@@%115%124%60%37@%119%62@@@@%27@@%115%37@%117%119%19@@%27@@@@"])
  fun op lt_ratr x = x
    val op lt_ratr =
    DT(((("real",435),
        [("bool",[27,58,105,129,147]),("numeral",[3,6]),
         ("real",[18,134,433])]),["DISK_THM"]),
       [read"%65%115%37@%60%27@%119%18@@@@%79%67%18@%62@@%115%37@%124%60%27@%119%62@@@@@%115%117%119%18@@%37@@%27@@@"])
  fun op lt_int x = x
    val op lt_int =
    DT(((("real",436),
        [("arithmetic",[28,41,46,59,71,93,172,173,177,180]),
         ("bool",[25,26,27,36,43,52,54,56,58,63,93,96,104,105,107]),
         ("num",[7]),("numeral",[3,8]),("prim_rec",[7]),
         ("real",[48,60,61,65,67,127,129,158]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%61%65%115%119%19@@%119%18@@@%63%19@%18@@@%61%65%115%118%119%19@@@%119%18@@@%99%125%67%19@%62@@@%125%67%18@%62@@@@@%61%65%115%119%19@@%118%119%18@@@@%84@@%65%115%118%119%19@@@%118%119%18@@@@%63%18@%19@@@@@"])
  fun op NUM_FLOOR_LE x = x
    val op NUM_FLOOR_LE =
    DT(((("real",439),
        [("arithmetic",[24,25,28,59,64,70,71,173,180]),
         ("bool",[25,36,51,53,54,58,63,104,105,124]),("numeral",[3,7,8]),
         ("real",[24,27,48,127,129,131,132,164,275,437]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%69%116%119%62@@%37@@%116%119%91%37@@@%37@@"])
  fun op NUM_FLOOR_LE2 x = x
    val op NUM_FLOOR_LE2 =
    DT(((("real",440),
        [("arithmetic",[22,24,25,28,41,46,59,64,70,71,93,147,173,176,180]),
         ("bool",
         [25,26,27,36,47,48,51,53,54,58,63,93,94,96,101,104,105,106,124]),
         ("numeral",[3,7,8]),("prim_rec",[6]),
         ("real",[24,27,48,60,61,127,128,129,131,132,164,275,437]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%69%116%119%62@@%43@@%65%64%35@%91%43@@@%116%119%35@@%43@@@"])
  fun op NUM_FLOOR_LET x = x
    val op NUM_FLOOR_LET =
    DT(((("real",441),
        [("arithmetic",[24,25,27,28,41,46,59,64,70,71,88,93,173,176,180]),
         ("bool",[25,36,51,53,54,58,63,96,101,104,105,106,124]),
         ("numeral",[3,5,7,8]),
         ("real",[24,27,48,59,60,76,127,128,129,131,132,164,275,437]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%65%64%91%37@@%42@@%115%37@%112%119%42@@%119%89%77%98@@@@@@"])
  fun op NUM_FLOOR_DIV x = x
    val op NUM_FLOOR_DIV =
    DT(((("real",442),
        [("arithmetic",[24,25,28,59,64,70,71,173,180]),
         ("bool",[25,36,51,53,54,58,63,104,105,124]),("numeral",[3,7,8]),
         ("real",[24,27,39,48,127,129,131,132,164,275,318,437]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%69%61%116%119%62@@%37@@%115%119%62@@%43@@@%116%117%119%91%60%37@%43@@@@%43@@%37@@"])
  fun op NUM_FLOOR_DIV_LOWERBOUND x = x
    val op NUM_FLOOR_DIV_LOWERBOUND =
    DT(((("real",443),
        [("arithmetic",[22,25,28,70]),("bool",[25,51,53,54,58,63,105,124]),
         ("numeral",[3,7]),
         ("real",[18,24,27,127,129,131,132,164,275,321,437]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%69%61%116%119%62@@%37@@%115%119%62@@%43@@@%115%37@%117%119%56%91%60%37@%43@@@%89%77%98@@@@@%43@@@"])
  fun op NUM_FLOOR_EQNS x = x
    val op NUM_FLOOR_EQNS =
    DT(((("real",444),
        [("arithmetic",
         [22,24,25,26,27,28,41,46,59,64,67,69,71,73,74,93,154,172,173,177,
          180,190,200,214,269]),
         ("bool",
         [25,26,27,36,43,47,48,51,52,53,54,56,58,63,72,78,93,94,96,101,104,
          105,107,124,143,146]),("numeral",[3,5,7,8]),("prim_rec",[6]),
         ("real",[24,129,132,321,437]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("while",[9])]),["DISK_THM"]),
       [read"%61%67%91%119%19@@@%19@@%69%63%62@%18@@%67%91%60%119%19@@%119%18@@@@%82%19@%18@@@@"])
  fun op NUM_FLOOR_LOWER_BOUND x = x
    val op NUM_FLOOR_LOWER_BOUND =
    DT(((("real",445),
        [("bool",[25,53,56,58,105,124]),("real",[47,441])]),["DISK_THM"]),
       [read"%65%115%37@%119%19@@@%64%91%112%37@%119%89%77%98@@@@@@%19@@"])
  fun op NUM_FLOOR_upper_bound x = x
    val op NUM_FLOOR_upper_bound =
    DT(((("real",446),
        [("arithmetic",[60]),("bool",[25,53]),
         ("real",[48,445])]),["DISK_THM"]),
       [read"%65%116%119%19@@%37@@%63%19@%91%112%37@%119%89%77%98@@@@@@@"])
  fun op LE_NUM_CEILING x = x
    val op LE_NUM_CEILING =
    DT(((("real",447),
        [("arithmetic",[70]),
         ("bool",[2,15,25,26,36,51,53,54,58,63,105,124]),("numeral",[3,7]),
         ("real",[58,129,132,275,438]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%54%37%116$0@%119%90$0@@@|@"])
  fun op NUM_CEILING_LE x = x
    val op NUM_CEILING_LE =
    DT(((("real",448),
        [("arithmetic",[60]),("bool",[25,26,53,54,58,63,105,124]),
         ("real",[438]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%54%37%52%19%69%116$1@%119$0@@@%64%90$1@@$0@@|@|@"])
  end
  val _ = DB.bindl "real"
  [("real_of_num",real_of_num,DB.Def), ("real_sub",real_sub,DB.Def),
   ("real_lte",real_lte,DB.Def), ("real_gt",real_gt,DB.Def),
   ("real_ge",real_ge,DB.Def), ("real_div",real_div,DB.Def),
   ("abs",abs,DB.Def), ("pow",pow,DB.Def), ("sup",sup,DB.Def),
   ("sum_tupled_primitive",sum_tupled_primitive,DB.Def),
   ("sum_curried",sum_curried,DB.Def), ("pos_def",pos_def,DB.Def),
   ("min_def",min_def,DB.Def), ("max_def",max_def,DB.Def),
   ("inf_def",inf_def,DB.Def), ("NUM_FLOOR_def",NUM_FLOOR_def,DB.Def),
   ("NUM_CEILING_def",NUM_CEILING_def,DB.Def), ("REAL_0",REAL_0,DB.Thm),
   ("REAL_1",REAL_1,DB.Thm), ("REAL_10",REAL_10,DB.Thm),
   ("REAL_ADD_SYM",REAL_ADD_SYM,DB.Thm),
   ("REAL_ADD_COMM",REAL_ADD_COMM,DB.Thm),
   ("REAL_ADD_ASSOC",REAL_ADD_ASSOC,DB.Thm),
   ("REAL_ADD_LID",REAL_ADD_LID,DB.Thm),
   ("REAL_ADD_LINV",REAL_ADD_LINV,DB.Thm),
   ("REAL_LDISTRIB",REAL_LDISTRIB,DB.Thm),
   ("REAL_LT_TOTAL",REAL_LT_TOTAL,DB.Thm),
   ("REAL_LT_REFL",REAL_LT_REFL,DB.Thm),
   ("REAL_LT_TRANS",REAL_LT_TRANS,DB.Thm),
   ("REAL_LT_IADD",REAL_LT_IADD,DB.Thm),
   ("REAL_SUP_ALLPOS",REAL_SUP_ALLPOS,DB.Thm),
   ("REAL_MUL_SYM",REAL_MUL_SYM,DB.Thm),
   ("REAL_MUL_COMM",REAL_MUL_COMM,DB.Thm),
   ("REAL_MUL_ASSOC",REAL_MUL_ASSOC,DB.Thm),
   ("REAL_MUL_LID",REAL_MUL_LID,DB.Thm),
   ("REAL_MUL_LINV",REAL_MUL_LINV,DB.Thm),
   ("REAL_LT_MUL",REAL_LT_MUL,DB.Thm), ("REAL_INV_0",REAL_INV_0,DB.Thm),
   ("REAL_ADD_RID",REAL_ADD_RID,DB.Thm),
   ("REAL_ADD_RINV",REAL_ADD_RINV,DB.Thm),
   ("REAL_MUL_RID",REAL_MUL_RID,DB.Thm),
   ("REAL_MUL_RINV",REAL_MUL_RINV,DB.Thm),
   ("REAL_RDISTRIB",REAL_RDISTRIB,DB.Thm),
   ("REAL_EQ_LADD",REAL_EQ_LADD,DB.Thm),
   ("REAL_EQ_RADD",REAL_EQ_RADD,DB.Thm),
   ("REAL_ADD_LID_UNIQ",REAL_ADD_LID_UNIQ,DB.Thm),
   ("REAL_ADD_RID_UNIQ",REAL_ADD_RID_UNIQ,DB.Thm),
   ("REAL_LNEG_UNIQ",REAL_LNEG_UNIQ,DB.Thm),
   ("REAL_RNEG_UNIQ",REAL_RNEG_UNIQ,DB.Thm),
   ("REAL_NEG_ADD",REAL_NEG_ADD,DB.Thm),
   ("REAL_MUL_LZERO",REAL_MUL_LZERO,DB.Thm),
   ("REAL_MUL_RZERO",REAL_MUL_RZERO,DB.Thm),
   ("REAL_NEG_LMUL",REAL_NEG_LMUL,DB.Thm),
   ("REAL_NEG_RMUL",REAL_NEG_RMUL,DB.Thm),
   ("REAL_NEGNEG",REAL_NEGNEG,DB.Thm),
   ("REAL_NEG_MUL2",REAL_NEG_MUL2,DB.Thm),
   ("REAL_ENTIRE",REAL_ENTIRE,DB.Thm),
   ("REAL_LT_LADD",REAL_LT_LADD,DB.Thm),
   ("REAL_LT_RADD",REAL_LT_RADD,DB.Thm),
   ("REAL_NOT_LT",REAL_NOT_LT,DB.Thm),
   ("REAL_LT_ANTISYM",REAL_LT_ANTISYM,DB.Thm),
   ("REAL_LT_GT",REAL_LT_GT,DB.Thm), ("REAL_NOT_LE",REAL_NOT_LE,DB.Thm),
   ("REAL_LE_TOTAL",REAL_LE_TOTAL,DB.Thm),
   ("REAL_LET_TOTAL",REAL_LET_TOTAL,DB.Thm),
   ("REAL_LTE_TOTAL",REAL_LTE_TOTAL,DB.Thm),
   ("REAL_LE_REFL",REAL_LE_REFL,DB.Thm), ("REAL_LE_LT",REAL_LE_LT,DB.Thm),
   ("REAL_LT_LE",REAL_LT_LE,DB.Thm),
   ("REAL_LT_IMP_LE",REAL_LT_IMP_LE,DB.Thm),
   ("REAL_LTE_TRANS",REAL_LTE_TRANS,DB.Thm),
   ("REAL_LET_TRANS",REAL_LET_TRANS,DB.Thm),
   ("REAL_LE_TRANS",REAL_LE_TRANS,DB.Thm),
   ("REAL_LE_ANTISYM",REAL_LE_ANTISYM,DB.Thm),
   ("REAL_LET_ANTISYM",REAL_LET_ANTISYM,DB.Thm),
   ("REAL_LTE_ANTSYM",REAL_LTE_ANTSYM,DB.Thm),
   ("REAL_NEG_LT0",REAL_NEG_LT0,DB.Thm),
   ("REAL_NEG_GT0",REAL_NEG_GT0,DB.Thm),
   ("REAL_NEG_LE0",REAL_NEG_LE0,DB.Thm),
   ("REAL_NEG_GE0",REAL_NEG_GE0,DB.Thm),
   ("REAL_LT_NEGTOTAL",REAL_LT_NEGTOTAL,DB.Thm),
   ("REAL_LE_NEGTOTAL",REAL_LE_NEGTOTAL,DB.Thm),
   ("REAL_LE_MUL",REAL_LE_MUL,DB.Thm),
   ("REAL_LE_SQUARE",REAL_LE_SQUARE,DB.Thm),
   ("REAL_LE_01",REAL_LE_01,DB.Thm), ("REAL_LT_01",REAL_LT_01,DB.Thm),
   ("REAL_LE_LADD",REAL_LE_LADD,DB.Thm),
   ("REAL_LE_RADD",REAL_LE_RADD,DB.Thm),
   ("REAL_LT_ADD2",REAL_LT_ADD2,DB.Thm),
   ("REAL_LE_ADD2",REAL_LE_ADD2,DB.Thm),
   ("REAL_LE_ADD",REAL_LE_ADD,DB.Thm), ("REAL_LT_ADD",REAL_LT_ADD,DB.Thm),
   ("REAL_LT_ADDNEG",REAL_LT_ADDNEG,DB.Thm),
   ("REAL_LT_ADDNEG2",REAL_LT_ADDNEG2,DB.Thm),
   ("REAL_LT_ADD1",REAL_LT_ADD1,DB.Thm),
   ("REAL_SUB_ADD",REAL_SUB_ADD,DB.Thm),
   ("REAL_SUB_ADD2",REAL_SUB_ADD2,DB.Thm),
   ("REAL_SUB_REFL",REAL_SUB_REFL,DB.Thm),
   ("REAL_SUB_0",REAL_SUB_0,DB.Thm),
   ("REAL_LE_DOUBLE",REAL_LE_DOUBLE,DB.Thm),
   ("REAL_LE_NEGL",REAL_LE_NEGL,DB.Thm),
   ("REAL_LE_NEGR",REAL_LE_NEGR,DB.Thm),
   ("REAL_NEG_EQ0",REAL_NEG_EQ0,DB.Thm), ("REAL_NEG_0",REAL_NEG_0,DB.Thm),
   ("REAL_NEG_SUB",REAL_NEG_SUB,DB.Thm),
   ("REAL_SUB_LT",REAL_SUB_LT,DB.Thm), ("REAL_SUB_LE",REAL_SUB_LE,DB.Thm),
   ("REAL_ADD_SUB",REAL_ADD_SUB,DB.Thm),
   ("REAL_EQ_LMUL",REAL_EQ_LMUL,DB.Thm),
   ("REAL_EQ_RMUL",REAL_EQ_RMUL,DB.Thm),
   ("REAL_SUB_LDISTRIB",REAL_SUB_LDISTRIB,DB.Thm),
   ("REAL_SUB_RDISTRIB",REAL_SUB_RDISTRIB,DB.Thm),
   ("REAL_NEG_EQ",REAL_NEG_EQ,DB.Thm),
   ("REAL_NEG_MINUS1",REAL_NEG_MINUS1,DB.Thm),
   ("REAL_INV_NZ",REAL_INV_NZ,DB.Thm), ("REAL_INVINV",REAL_INVINV,DB.Thm),
   ("REAL_LT_IMP_NE",REAL_LT_IMP_NE,DB.Thm),
   ("REAL_INV_POS",REAL_INV_POS,DB.Thm),
   ("REAL_LT_LMUL_0",REAL_LT_LMUL_0,DB.Thm),
   ("REAL_LT_RMUL_0",REAL_LT_RMUL_0,DB.Thm),
   ("REAL_LT_LMUL",REAL_LT_LMUL,DB.Thm),
   ("REAL_LT_RMUL",REAL_LT_RMUL,DB.Thm),
   ("REAL_LT_RMUL_IMP",REAL_LT_RMUL_IMP,DB.Thm),
   ("REAL_LT_LMUL_IMP",REAL_LT_LMUL_IMP,DB.Thm),
   ("REAL_LINV_UNIQ",REAL_LINV_UNIQ,DB.Thm),
   ("REAL_RINV_UNIQ",REAL_RINV_UNIQ,DB.Thm),
   ("REAL_INV_INV",REAL_INV_INV,DB.Thm),
   ("REAL_INV_EQ_0",REAL_INV_EQ_0,DB.Thm),
   ("REAL_NEG_INV",REAL_NEG_INV,DB.Thm),
   ("REAL_INV_1OVER",REAL_INV_1OVER,DB.Thm),
   ("REAL_LT_INV_EQ",REAL_LT_INV_EQ,DB.Thm),
   ("REAL_LE_INV_EQ",REAL_LE_INV_EQ,DB.Thm),
   ("REAL_LE_INV",REAL_LE_INV,DB.Thm),
   ("REAL_LE_ADDR",REAL_LE_ADDR,DB.Thm),
   ("REAL_LE_ADDL",REAL_LE_ADDL,DB.Thm),
   ("REAL_LT_ADDR",REAL_LT_ADDR,DB.Thm),
   ("REAL_LT_ADDL",REAL_LT_ADDL,DB.Thm), ("REAL",REAL,DB.Thm),
   ("REAL_POS",REAL_POS,DB.Thm), ("REAL_LE",REAL_LE,DB.Thm),
   ("REAL_LT",REAL_LT,DB.Thm), ("REAL_INJ",REAL_INJ,DB.Thm),
   ("REAL_ADD",REAL_ADD,DB.Thm), ("REAL_MUL",REAL_MUL,DB.Thm),
   ("REAL_INV1",REAL_INV1,DB.Thm), ("REAL_OVER1",REAL_OVER1,DB.Thm),
   ("REAL_DIV_REFL",REAL_DIV_REFL,DB.Thm),
   ("REAL_DIV_LZERO",REAL_DIV_LZERO,DB.Thm),
   ("REAL_LT_NZ",REAL_LT_NZ,DB.Thm),
   ("REAL_NZ_IMP_LT",REAL_NZ_IMP_LT,DB.Thm),
   ("REAL_LT_RDIV_0",REAL_LT_RDIV_0,DB.Thm),
   ("REAL_LT_RDIV",REAL_LT_RDIV,DB.Thm),
   ("REAL_LT_FRACTION_0",REAL_LT_FRACTION_0,DB.Thm),
   ("REAL_LT_MULTIPLE",REAL_LT_MULTIPLE,DB.Thm),
   ("REAL_LT_FRACTION",REAL_LT_FRACTION,DB.Thm),
   ("REAL_LT_HALF1",REAL_LT_HALF1,DB.Thm),
   ("REAL_LT_HALF2",REAL_LT_HALF2,DB.Thm),
   ("REAL_DOUBLE",REAL_DOUBLE,DB.Thm),
   ("REAL_DIV_LMUL",REAL_DIV_LMUL,DB.Thm),
   ("REAL_DIV_RMUL",REAL_DIV_RMUL,DB.Thm),
   ("REAL_HALF_DOUBLE",REAL_HALF_DOUBLE,DB.Thm),
   ("REAL_DOWN",REAL_DOWN,DB.Thm), ("REAL_DOWN2",REAL_DOWN2,DB.Thm),
   ("REAL_SUB_SUB",REAL_SUB_SUB,DB.Thm),
   ("REAL_LT_ADD_SUB",REAL_LT_ADD_SUB,DB.Thm),
   ("REAL_LT_SUB_RADD",REAL_LT_SUB_RADD,DB.Thm),
   ("REAL_LT_SUB_LADD",REAL_LT_SUB_LADD,DB.Thm),
   ("REAL_LE_SUB_LADD",REAL_LE_SUB_LADD,DB.Thm),
   ("REAL_LE_SUB_RADD",REAL_LE_SUB_RADD,DB.Thm),
   ("REAL_LT_NEG",REAL_LT_NEG,DB.Thm), ("REAL_LE_NEG",REAL_LE_NEG,DB.Thm),
   ("REAL_ADD2_SUB2",REAL_ADD2_SUB2,DB.Thm),
   ("REAL_SUB_LZERO",REAL_SUB_LZERO,DB.Thm),
   ("REAL_SUB_RZERO",REAL_SUB_RZERO,DB.Thm),
   ("REAL_LET_ADD2",REAL_LET_ADD2,DB.Thm),
   ("REAL_LTE_ADD2",REAL_LTE_ADD2,DB.Thm),
   ("REAL_LET_ADD",REAL_LET_ADD,DB.Thm),
   ("REAL_LTE_ADD",REAL_LTE_ADD,DB.Thm),
   ("REAL_LT_MUL2",REAL_LT_MUL2,DB.Thm),
   ("REAL_LT_INV",REAL_LT_INV,DB.Thm),
   ("REAL_SUB_LNEG",REAL_SUB_LNEG,DB.Thm),
   ("REAL_SUB_RNEG",REAL_SUB_RNEG,DB.Thm),
   ("REAL_SUB_NEG2",REAL_SUB_NEG2,DB.Thm),
   ("REAL_SUB_TRIANGLE",REAL_SUB_TRIANGLE,DB.Thm),
   ("REAL_EQ_SUB_LADD",REAL_EQ_SUB_LADD,DB.Thm),
   ("REAL_EQ_SUB_RADD",REAL_EQ_SUB_RADD,DB.Thm),
   ("REAL_INV_MUL",REAL_INV_MUL,DB.Thm),
   ("REAL_LE_LMUL",REAL_LE_LMUL,DB.Thm),
   ("REAL_LE_RMUL",REAL_LE_RMUL,DB.Thm),
   ("REAL_SUB_INV2",REAL_SUB_INV2,DB.Thm),
   ("REAL_SUB_SUB2",REAL_SUB_SUB2,DB.Thm),
   ("REAL_ADD_SUB2",REAL_ADD_SUB2,DB.Thm), ("REAL_MEAN",REAL_MEAN,DB.Thm),
   ("REAL_EQ_LMUL2",REAL_EQ_LMUL2,DB.Thm),
   ("REAL_LE_MUL2",REAL_LE_MUL2,DB.Thm),
   ("REAL_LE_LDIV",REAL_LE_LDIV,DB.Thm),
   ("REAL_LE_RDIV",REAL_LE_RDIV,DB.Thm),
   ("REAL_LT_DIV",REAL_LT_DIV,DB.Thm), ("REAL_LE_DIV",REAL_LE_DIV,DB.Thm),
   ("REAL_LT_1",REAL_LT_1,DB.Thm),
   ("REAL_LE_LMUL_IMP",REAL_LE_LMUL_IMP,DB.Thm),
   ("REAL_LE_RMUL_IMP",REAL_LE_RMUL_IMP,DB.Thm),
   ("REAL_EQ_IMP_LE",REAL_EQ_IMP_LE,DB.Thm),
   ("REAL_INV_LT1",REAL_INV_LT1,DB.Thm),
   ("REAL_POS_NZ",REAL_POS_NZ,DB.Thm),
   ("REAL_EQ_RMUL_IMP",REAL_EQ_RMUL_IMP,DB.Thm),
   ("REAL_EQ_LMUL_IMP",REAL_EQ_LMUL_IMP,DB.Thm),
   ("REAL_FACT_NZ",REAL_FACT_NZ,DB.Thm),
   ("REAL_DIFFSQ",REAL_DIFFSQ,DB.Thm), ("REAL_POASQ",REAL_POASQ,DB.Thm),
   ("REAL_SUMSQ",REAL_SUMSQ,DB.Thm), ("REAL_EQ_NEG",REAL_EQ_NEG,DB.Thm),
   ("REAL_DIV_MUL2",REAL_DIV_MUL2,DB.Thm),
   ("REAL_MIDDLE1",REAL_MIDDLE1,DB.Thm),
   ("REAL_MIDDLE2",REAL_MIDDLE2,DB.Thm), ("ABS_ZERO",ABS_ZERO,DB.Thm),
   ("ABS_0",ABS_0,DB.Thm), ("ABS_1",ABS_1,DB.Thm),
   ("ABS_NEG",ABS_NEG,DB.Thm), ("ABS_TRIANGLE",ABS_TRIANGLE,DB.Thm),
   ("ABS_POS",ABS_POS,DB.Thm), ("ABS_MUL",ABS_MUL,DB.Thm),
   ("ABS_LT_MUL2",ABS_LT_MUL2,DB.Thm), ("ABS_SUB",ABS_SUB,DB.Thm),
   ("ABS_NZ",ABS_NZ,DB.Thm), ("ABS_INV",ABS_INV,DB.Thm),
   ("ABS_ABS",ABS_ABS,DB.Thm), ("ABS_LE",ABS_LE,DB.Thm),
   ("ABS_REFL",ABS_REFL,DB.Thm), ("ABS_N",ABS_N,DB.Thm),
   ("ABS_BETWEEN",ABS_BETWEEN,DB.Thm), ("ABS_BOUND",ABS_BOUND,DB.Thm),
   ("ABS_STILLNZ",ABS_STILLNZ,DB.Thm), ("ABS_CASES",ABS_CASES,DB.Thm),
   ("ABS_BETWEEN1",ABS_BETWEEN1,DB.Thm), ("ABS_SIGN",ABS_SIGN,DB.Thm),
   ("ABS_SIGN2",ABS_SIGN2,DB.Thm), ("ABS_DIV",ABS_DIV,DB.Thm),
   ("ABS_CIRCLE",ABS_CIRCLE,DB.Thm), ("REAL_SUB_ABS",REAL_SUB_ABS,DB.Thm),
   ("ABS_SUB_ABS",ABS_SUB_ABS,DB.Thm),
   ("ABS_BETWEEN2",ABS_BETWEEN2,DB.Thm), ("ABS_BOUNDS",ABS_BOUNDS,DB.Thm),
   ("POW_0",POW_0,DB.Thm), ("POW_NZ",POW_NZ,DB.Thm),
   ("POW_INV",POW_INV,DB.Thm), ("POW_ABS",POW_ABS,DB.Thm),
   ("POW_PLUS1",POW_PLUS1,DB.Thm), ("POW_ADD",POW_ADD,DB.Thm),
   ("POW_1",POW_1,DB.Thm), ("POW_2",POW_2,DB.Thm),
   ("POW_ONE",POW_ONE,DB.Thm), ("POW_POS",POW_POS,DB.Thm),
   ("POW_LE",POW_LE,DB.Thm), ("POW_M1",POW_M1,DB.Thm),
   ("POW_MUL",POW_MUL,DB.Thm), ("REAL_LE_POW2",REAL_LE_POW2,DB.Thm),
   ("ABS_POW2",ABS_POW2,DB.Thm), ("REAL_POW2_ABS",REAL_POW2_ABS,DB.Thm),
   ("REAL_LE1_POW2",REAL_LE1_POW2,DB.Thm),
   ("REAL_LT1_POW2",REAL_LT1_POW2,DB.Thm),
   ("POW_POS_LT",POW_POS_LT,DB.Thm), ("POW_2_LE1",POW_2_LE1,DB.Thm),
   ("POW_2_LT",POW_2_LT,DB.Thm), ("POW_MINUS1",POW_MINUS1,DB.Thm),
   ("POW_LT",POW_LT,DB.Thm), ("REAL_POW_LT",REAL_POW_LT,DB.Thm),
   ("POW_EQ",POW_EQ,DB.Thm), ("POW_ZERO",POW_ZERO,DB.Thm),
   ("POW_ZERO_EQ",POW_ZERO_EQ,DB.Thm),
   ("REAL_POW_LT2",REAL_POW_LT2,DB.Thm),
   ("REAL_POW_MONO_LT",REAL_POW_MONO_LT,DB.Thm),
   ("REAL_POW_POW",REAL_POW_POW,DB.Thm),
   ("REAL_SUP_SOMEPOS",REAL_SUP_SOMEPOS,DB.Thm),
   ("SUP_LEMMA1",SUP_LEMMA1,DB.Thm), ("SUP_LEMMA2",SUP_LEMMA2,DB.Thm),
   ("SUP_LEMMA3",SUP_LEMMA3,DB.Thm),
   ("REAL_SUP_EXISTS",REAL_SUP_EXISTS,DB.Thm),
   ("REAL_SUP",REAL_SUP,DB.Thm),
   ("REAL_SUP_UBOUND",REAL_SUP_UBOUND,DB.Thm),
   ("SETOK_LE_LT",SETOK_LE_LT,DB.Thm), ("REAL_SUP_LE",REAL_SUP_LE,DB.Thm),
   ("REAL_SUP_UBOUND_LE",REAL_SUP_UBOUND_LE,DB.Thm),
   ("REAL_ARCH",REAL_ARCH,DB.Thm),
   ("REAL_ARCH_LEAST",REAL_ARCH_LEAST,DB.Thm), ("sum_ind",sum_ind,DB.Thm),
   ("sum",sum,DB.Thm), ("sum_compute",sum_compute,DB.Thm),
   ("SUM_TWO",SUM_TWO,DB.Thm), ("SUM_DIFF",SUM_DIFF,DB.Thm),
   ("ABS_SUM",ABS_SUM,DB.Thm), ("SUM_LE",SUM_LE,DB.Thm),
   ("SUM_EQ",SUM_EQ,DB.Thm), ("SUM_POS",SUM_POS,DB.Thm),
   ("SUM_POS_GEN",SUM_POS_GEN,DB.Thm), ("SUM_ABS",SUM_ABS,DB.Thm),
   ("SUM_ABS_LE",SUM_ABS_LE,DB.Thm), ("SUM_ZERO",SUM_ZERO,DB.Thm),
   ("SUM_ADD",SUM_ADD,DB.Thm), ("SUM_CMUL",SUM_CMUL,DB.Thm),
   ("SUM_NEG",SUM_NEG,DB.Thm), ("SUM_SUB",SUM_SUB,DB.Thm),
   ("SUM_SUBST",SUM_SUBST,DB.Thm), ("SUM_NSUB",SUM_NSUB,DB.Thm),
   ("SUM_BOUND",SUM_BOUND,DB.Thm), ("SUM_GROUP",SUM_GROUP,DB.Thm),
   ("SUM_1",SUM_1,DB.Thm), ("SUM_2",SUM_2,DB.Thm),
   ("SUM_OFFSET",SUM_OFFSET,DB.Thm), ("SUM_REINDEX",SUM_REINDEX,DB.Thm),
   ("SUM_0",SUM_0,DB.Thm), ("SUM_PERMUTE_0",SUM_PERMUTE_0,DB.Thm),
   ("SUM_CANCEL",SUM_CANCEL,DB.Thm),
   ("REAL_MUL_RNEG",REAL_MUL_RNEG,DB.Thm),
   ("REAL_MUL_LNEG",REAL_MUL_LNEG,DB.Thm), ("real_lt",real_lt,DB.Thm),
   ("REAL_LE_LADD_IMP",REAL_LE_LADD_IMP,DB.Thm),
   ("REAL_LE_LNEG",REAL_LE_LNEG,DB.Thm),
   ("REAL_LE_NEG2",REAL_LE_NEG2,DB.Thm),
   ("REAL_NEG_NEG",REAL_NEG_NEG,DB.Thm),
   ("REAL_LE_RNEG",REAL_LE_RNEG,DB.Thm),
   ("REAL_POW_INV",REAL_POW_INV,DB.Thm),
   ("REAL_POW_DIV",REAL_POW_DIV,DB.Thm),
   ("REAL_POW_ADD",REAL_POW_ADD,DB.Thm),
   ("REAL_LE_RDIV_EQ",REAL_LE_RDIV_EQ,DB.Thm),
   ("REAL_LE_LDIV_EQ",REAL_LE_LDIV_EQ,DB.Thm),
   ("REAL_LT_RDIV_EQ",REAL_LT_RDIV_EQ,DB.Thm),
   ("REAL_LT_LDIV_EQ",REAL_LT_LDIV_EQ,DB.Thm),
   ("REAL_EQ_RDIV_EQ",REAL_EQ_RDIV_EQ,DB.Thm),
   ("REAL_EQ_LDIV_EQ",REAL_EQ_LDIV_EQ,DB.Thm),
   ("REAL_OF_NUM_POW",REAL_OF_NUM_POW,DB.Thm),
   ("REAL_ADD_LDISTRIB",REAL_ADD_LDISTRIB,DB.Thm),
   ("REAL_ADD_RDISTRIB",REAL_ADD_RDISTRIB,DB.Thm),
   ("REAL_OF_NUM_ADD",REAL_OF_NUM_ADD,DB.Thm),
   ("REAL_OF_NUM_LE",REAL_OF_NUM_LE,DB.Thm),
   ("REAL_OF_NUM_MUL",REAL_OF_NUM_MUL,DB.Thm),
   ("REAL_OF_NUM_SUC",REAL_OF_NUM_SUC,DB.Thm),
   ("REAL_OF_NUM_EQ",REAL_OF_NUM_EQ,DB.Thm),
   ("REAL_EQ_MUL_LCANCEL",REAL_EQ_MUL_LCANCEL,DB.Thm),
   ("REAL_ABS_0",REAL_ABS_0,DB.Thm),
   ("REAL_ABS_TRIANGLE",REAL_ABS_TRIANGLE,DB.Thm),
   ("REAL_ABS_MUL",REAL_ABS_MUL,DB.Thm),
   ("REAL_ABS_POS",REAL_ABS_POS,DB.Thm),
   ("REAL_LE_EPSILON",REAL_LE_EPSILON,DB.Thm),
   ("REAL_BIGNUM",REAL_BIGNUM,DB.Thm),
   ("REAL_INV_LT_ANTIMONO",REAL_INV_LT_ANTIMONO,DB.Thm),
   ("REAL_INV_INJ",REAL_INV_INJ,DB.Thm),
   ("REAL_DIV_RMUL_CANCEL",REAL_DIV_RMUL_CANCEL,DB.Thm),
   ("REAL_DIV_LMUL_CANCEL",REAL_DIV_LMUL_CANCEL,DB.Thm),
   ("REAL_DIV_ADD",REAL_DIV_ADD,DB.Thm),
   ("REAL_ADD_RAT",REAL_ADD_RAT,DB.Thm),
   ("REAL_SUB_RAT",REAL_SUB_RAT,DB.Thm), ("REAL_SUB",REAL_SUB,DB.Thm),
   ("REAL_POS_POS",REAL_POS_POS,DB.Thm),
   ("REAL_POS_ID",REAL_POS_ID,DB.Thm),
   ("REAL_POS_INFLATE",REAL_POS_INFLATE,DB.Thm),
   ("REAL_POS_MONO",REAL_POS_MONO,DB.Thm),
   ("REAL_POS_EQ_ZERO",REAL_POS_EQ_ZERO,DB.Thm),
   ("REAL_POS_LE_ZERO",REAL_POS_LE_ZERO,DB.Thm),
   ("REAL_MIN_REFL",REAL_MIN_REFL,DB.Thm),
   ("REAL_LE_MIN",REAL_LE_MIN,DB.Thm), ("REAL_MIN_LE",REAL_MIN_LE,DB.Thm),
   ("REAL_MIN_LE1",REAL_MIN_LE1,DB.Thm),
   ("REAL_MIN_LE2",REAL_MIN_LE2,DB.Thm),
   ("REAL_MIN_ALT",REAL_MIN_ALT,DB.Thm),
   ("REAL_MIN_LE_LIN",REAL_MIN_LE_LIN,DB.Thm),
   ("REAL_MIN_ADD",REAL_MIN_ADD,DB.Thm),
   ("REAL_MIN_SUB",REAL_MIN_SUB,DB.Thm),
   ("REAL_IMP_MIN_LE2",REAL_IMP_MIN_LE2,DB.Thm),
   ("REAL_MAX_REFL",REAL_MAX_REFL,DB.Thm),
   ("REAL_LE_MAX",REAL_LE_MAX,DB.Thm),
   ("REAL_LE_MAX1",REAL_LE_MAX1,DB.Thm),
   ("REAL_LE_MAX2",REAL_LE_MAX2,DB.Thm),
   ("REAL_MAX_LE",REAL_MAX_LE,DB.Thm),
   ("REAL_MAX_ALT",REAL_MAX_ALT,DB.Thm),
   ("REAL_MAX_MIN",REAL_MAX_MIN,DB.Thm),
   ("REAL_MIN_MAX",REAL_MIN_MAX,DB.Thm),
   ("REAL_LIN_LE_MAX",REAL_LIN_LE_MAX,DB.Thm),
   ("REAL_MAX_ADD",REAL_MAX_ADD,DB.Thm),
   ("REAL_MAX_SUB",REAL_MAX_SUB,DB.Thm),
   ("REAL_IMP_MAX_LE2",REAL_IMP_MAX_LE2,DB.Thm),
   ("REAL_SUP_EXISTS_UNIQUE",REAL_SUP_EXISTS_UNIQUE,DB.Thm),
   ("REAL_SUP_MAX",REAL_SUP_MAX,DB.Thm),
   ("REAL_IMP_SUP_LE",REAL_IMP_SUP_LE,DB.Thm),
   ("REAL_IMP_LE_SUP",REAL_IMP_LE_SUP,DB.Thm),
   ("REAL_INF_MIN",REAL_INF_MIN,DB.Thm),
   ("REAL_IMP_LE_INF",REAL_IMP_LE_INF,DB.Thm),
   ("REAL_IMP_INF_LE",REAL_IMP_INF_LE,DB.Thm),
   ("REAL_INF_LT",REAL_INF_LT,DB.Thm),
   ("REAL_INF_CLOSE",REAL_INF_CLOSE,DB.Thm),
   ("SUP_EPSILON",SUP_EPSILON,DB.Thm), ("REAL_LE_SUP",REAL_LE_SUP,DB.Thm),
   ("REAL_INF_LE",REAL_INF_LE,DB.Thm),
   ("REAL_SUP_CONST",REAL_SUP_CONST,DB.Thm),
   ("REAL_MUL_SUB2_CANCEL",REAL_MUL_SUB2_CANCEL,DB.Thm),
   ("REAL_MUL_SUB1_CANCEL",REAL_MUL_SUB1_CANCEL,DB.Thm),
   ("REAL_NEG_HALF",REAL_NEG_HALF,DB.Thm),
   ("REAL_NEG_THIRD",REAL_NEG_THIRD,DB.Thm),
   ("REAL_DIV_DENOM_CANCEL",REAL_DIV_DENOM_CANCEL,DB.Thm),
   ("REAL_DIV_DENOM_CANCEL2",REAL_DIV_DENOM_CANCEL2,DB.Thm),
   ("REAL_DIV_DENOM_CANCEL3",REAL_DIV_DENOM_CANCEL3,DB.Thm),
   ("REAL_DIV_INNER_CANCEL",REAL_DIV_INNER_CANCEL,DB.Thm),
   ("REAL_DIV_INNER_CANCEL2",REAL_DIV_INNER_CANCEL2,DB.Thm),
   ("REAL_DIV_INNER_CANCEL3",REAL_DIV_INNER_CANCEL3,DB.Thm),
   ("REAL_DIV_OUTER_CANCEL",REAL_DIV_OUTER_CANCEL,DB.Thm),
   ("REAL_DIV_OUTER_CANCEL2",REAL_DIV_OUTER_CANCEL2,DB.Thm),
   ("REAL_DIV_OUTER_CANCEL3",REAL_DIV_OUTER_CANCEL3,DB.Thm),
   ("REAL_DIV_REFL2",REAL_DIV_REFL2,DB.Thm),
   ("REAL_DIV_REFL3",REAL_DIV_REFL3,DB.Thm),
   ("REAL_HALF_BETWEEN",REAL_HALF_BETWEEN,DB.Thm),
   ("REAL_THIRDS_BETWEEN",REAL_THIRDS_BETWEEN,DB.Thm),
   ("REAL_LE_SUB_CANCEL2",REAL_LE_SUB_CANCEL2,DB.Thm),
   ("REAL_ADD_SUB_ALT",REAL_ADD_SUB_ALT,DB.Thm),
   ("INFINITE_REAL_UNIV",INFINITE_REAL_UNIV,DB.Thm),
   ("add_rat",add_rat,DB.Thm), ("add_ratl",add_ratl,DB.Thm),
   ("add_ratr",add_ratr,DB.Thm), ("add_ints",add_ints,DB.Thm),
   ("mult_rat",mult_rat,DB.Thm), ("mult_ratl",mult_ratl,DB.Thm),
   ("mult_ratr",mult_ratr,DB.Thm), ("mult_ints",mult_ints,DB.Thm),
   ("pow_rat",pow_rat,DB.Thm), ("neg_rat",neg_rat,DB.Thm),
   ("eq_rat",eq_rat,DB.Thm), ("eq_ratl",eq_ratl,DB.Thm),
   ("eq_ratr",eq_ratr,DB.Thm), ("eq_ints",eq_ints,DB.Thm),
   ("div_ratr",div_ratr,DB.Thm), ("div_ratl",div_ratl,DB.Thm),
   ("div_rat",div_rat,DB.Thm), ("le_rat",le_rat,DB.Thm),
   ("le_ratl",le_ratl,DB.Thm), ("le_ratr",le_ratr,DB.Thm),
   ("le_int",le_int,DB.Thm), ("lt_rat",lt_rat,DB.Thm),
   ("lt_ratl",lt_ratl,DB.Thm), ("lt_ratr",lt_ratr,DB.Thm),
   ("lt_int",lt_int,DB.Thm), ("NUM_FLOOR_LE",NUM_FLOOR_LE,DB.Thm),
   ("NUM_FLOOR_LE2",NUM_FLOOR_LE2,DB.Thm),
   ("NUM_FLOOR_LET",NUM_FLOOR_LET,DB.Thm),
   ("NUM_FLOOR_DIV",NUM_FLOOR_DIV,DB.Thm),
   ("NUM_FLOOR_DIV_LOWERBOUND",NUM_FLOOR_DIV_LOWERBOUND,DB.Thm),
   ("NUM_FLOOR_EQNS",NUM_FLOOR_EQNS,DB.Thm),
   ("NUM_FLOOR_LOWER_BOUND",NUM_FLOOR_LOWER_BOUND,DB.Thm),
   ("NUM_FLOOR_upper_bound",NUM_FLOOR_upper_bound,DB.Thm),
   ("LE_NUM_CEILING",LE_NUM_CEILING,DB.Thm),
   ("NUM_CEILING_LE",NUM_CEILING_LE,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("realaxTheory.realax_grammars",
                          realaxTheory.realax_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_of_num", (Term.prim_mk_const { Name = "real_of_num", Thy = "real"}))
  val _ = update_grms temp_add_numeral_form (#"r", SOME "real_of_num")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_sub", (Term.prim_mk_const { Name = "real_sub", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_sub", (Term.prim_mk_const { Name = "real_sub", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_lte", (Term.prim_mk_const { Name = "real_lte", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_lte", (Term.prim_mk_const { Name = "real_lte", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_gt", (Term.prim_mk_const { Name = "real_gt", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_gt", (Term.prim_mk_const { Name = "real_gt", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_ge", (Term.prim_mk_const { Name = "real_ge", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_ge", (Term.prim_mk_const { Name = "real_ge", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "/", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "/", Thy = "real"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "/"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/decfrac/", (Term.prim_mk_const { Name = "/", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "/", Thy = "real"}))
  val _ = update_grms
       temp_add_user_printer
       ("(DecimalFractionPP.fraction{Thy=\"real\",Division=\"/\",fromNum=\"real_of_num\"})", (#2 (parse_from_grammars min_grammars)[QUOTE "real$/ (real$real_of_num (arithmetic$NUMERAL (x :(num$num)))) (real$real_of_num (arithmetic$NUMERAL (y :(num$num))))"]), (DecimalFractionPP.fraction{Thy="real",Division="/",fromNum="real_of_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "-", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "<=", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = ">", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = ">=", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "real_sub", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "real_lte", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "real_gt", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "real_ge", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs", (Term.prim_mk_const { Name = "abs", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs", (Term.prim_mk_const { Name = "abs", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pow", (Term.prim_mk_const { Name = "pow", Thy = "real"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "pow"))
       (Infix(HOLgrammars.RIGHT, 700))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sup", (Term.prim_mk_const { Name = "sup", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sup", (Term.prim_mk_const { Name = "sup", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum_tupled", (Term.prim_mk_const { Name = "sum_tupled", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum_tupled", (Term.prim_mk_const { Name = "sum_tupled", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum", (Term.prim_mk_const { Name = "sum", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum", (Term.prim_mk_const { Name = "sum", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pos", (Term.prim_mk_const { Name = "pos", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pos", (Term.prim_mk_const { Name = "pos", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("min", (Term.prim_mk_const { Name = "min", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("min", (Term.prim_mk_const { Name = "min", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("max", (Term.prim_mk_const { Name = "max", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("max", (Term.prim_mk_const { Name = "max", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inf", (Term.prim_mk_const { Name = "inf", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inf", (Term.prim_mk_const { Name = "inf", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUM_FLOOR", (Term.prim_mk_const { Name = "NUM_FLOOR", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUM_FLOOR", (Term.prim_mk_const { Name = "NUM_FLOOR", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUM_CEILING", (Term.prim_mk_const { Name = "NUM_CEILING", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUM_CEILING", (Term.prim_mk_const { Name = "NUM_CEILING", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("flr", (Term.prim_mk_const { Name = "NUM_FLOOR", Thy = "real"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("clg", (Term.prim_mk_const { Name = "NUM_CEILING", Thy = "real"}))
  val real_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "real",
    thydataty = "simp",
    data =
        "real.REAL_ADD_LID real.REAL_ADD_LINV real.INFINITE_REAL_UNIV real.REAL_ABS_0 real.REAL_SUB_RZERO real.REAL_SUB_LZERO real.REAL_LE_NEG real.REAL_LT_NEG real.REAL_OVER1 real.REAL_MUL real.REAL_ADD real.REAL_INJ real.REAL_LT real.REAL_LE real.REAL_POS real.REAL_EQ_RMUL real.REAL_EQ_LMUL real.REAL_NEG_0 real.REAL_SUB_0 real.REAL_SUB_REFL real.REAL_LE_RADD real.REAL_LE_LADD real.REAL_NEG_GE0 real.REAL_NEG_LE0 real.REAL_NEG_GT0 real.REAL_NEG_LT0 real.REAL_LE_REFL real.REAL_LT_RADD real.REAL_LT_LADD real.REAL_ENTIRE real.REAL_NEGNEG real.REAL_MUL_RZERO real.REAL_MUL_LZERO real.REAL_EQ_RADD real.REAL_EQ_LADD real.REAL_MUL_RID real.REAL_ADD_RINV real.REAL_ADD_RID real.REAL_MUL_LID real.REAL_LT_REFL"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "real",
    thydataty = "compute",
    data =
        "real.sum real.sum_compute real.NUM_CEILING_def real.inf_def real.max_def real.min_def real.pos_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "real"
end
