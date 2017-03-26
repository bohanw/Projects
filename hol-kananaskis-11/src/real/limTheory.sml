structure limTheory :> limTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading limTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open seqTheory
  in end;
  val _ = Theory.link_parents
          ("lim",Arbnum.fromString "1488589284",Arbnum.fromString "159894")
          [("seq",
           Arbnum.fromString "1488589269",
           Arbnum.fromString "64759")];
  val _ = Theory.incorporate_types "lim" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("realax", "real"),
   ID("num", "num"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("pair", "prod"), ID("topology", "metric"),
   ID("topology", "topology"), ID("arithmetic", "-"), ID("real", "/"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("arithmetic", "NUMERAL"), ID("arithmetic", "ZERO"),
   ID("real", "abs"), ID("lim", "contl"), ID("lim", "differentiable"),
   ID("lim", "diffl"), ID("realax", "inv"), ID("topology", "mr1"),
   ID("topology", "mtop"), ID("real", "pow"), ID("realax", "real_add"),
   ID("realax", "real_lt"), ID("real", "real_lte"),
   ID("realax", "real_mul"), ID("realax", "real_neg"),
   ID("real", "real_of_num"), ID("real", "real_sub"), ID("real", "sum"),
   ID("nets", "tends"), ID("lim", "tends_real_real"),
   ID("nets", "tendsto"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [0, 1, 1],
   TYOP [0, 4, 3], TYOP [0, 4, 2], TYOP [3], TYOP [0, 7, 4],
   TYOP [0, 8, 0], TYOP [0, 9, 0], TYOP [0, 4, 0], TYOP [0, 11, 0],
   TYOP [0, 7, 0], TYOP [0, 13, 0], TYOP [0, 2, 0], TYOP [0, 7, 7],
   TYOP [0, 7, 16], TYOP [8, 1], TYOP [7, 18, 1], TYOP [0, 1, 19],
   TYOP [0, 18, 20], TYOP [7, 7, 7], TYOP [0, 7, 22], TYOP [0, 7, 23],
   TYOP [9, 1], TYOP [7, 25, 3], TYOP [0, 3, 26], TYOP [0, 25, 27],
   TYOP [0, 1, 4], TYOP [0, 0, 0], TYOP [0, 0, 30], TYOP [0, 7, 13],
   TYOP [0, 18, 25], TYOP [0, 7, 1], TYOP [0, 1, 34], TYOP [0, 34, 1],
   TYOP [0, 22, 36], TYOP [0, 26, 0], TYOP [0, 1, 38], TYOP [0, 4, 39],
   TYOP [0, 19, 3]]
  end
  val _ = Theory.incorporate_consts "lim" tyvector
     [("tends_real_real", 5), ("diffl", 5), ("differentiable", 6),
      ("contl", 6)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("L", 1), TMV("M", 1), TMV("N", 1), TMV("a", 1), TMV("b", 1),
   TMV("c", 1), TMV("d", 1), TMV("e", 1), TMV("f", 8), TMV("f", 4),
   TMV("f'", 8), TMV("g", 4), TMV("h", 1), TMV("k", 1), TMV("l", 1),
   TMV("m", 7), TMV("m", 1), TMV("n", 7), TMV("r", 7), TMV("x", 1),
   TMV("x0", 1), TMV("y", 1), TMV("y0", 1), TMV("z", 1), TMC(4, 10),
   TMC(4, 12), TMC(4, 14), TMC(4, 15), TMC(5, 17), TMC(6, 21), TMC(6, 24),
   TMC(6, 28), TMC(10, 17), TMC(11, 29), TMC(12, 31), TMC(13, 7),
   TMC(14, 32), TMC(15, 32), TMC(16, 31), TMC(16, 3), TMC(17, 31),
   TMC(18, 12), TMC(18, 15), TMC(19, 16), TMC(20, 16), TMC(21, 16),
   TMC(22, 7), TMC(23, 4), TMC(24, 6), TMC(25, 6), TMC(26, 5), TMC(27, 4),
   TMC(28, 18), TMC(29, 33), TMC(30, 35), TMC(31, 29), TMC(32, 3),
   TMC(33, 3), TMC(34, 29), TMC(35, 4), TMC(36, 34), TMC(37, 29),
   TMC(38, 37), TMC(39, 40), TMC(40, 5), TMC(41, 41), TMC(42, 30)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op tends_real_real x = x
    val op tends_real_real =
    DT(((("lim",0),[]),[]),
       [read"%25%9%27%14%27%20%38%64$2@$1@$0@@%63$2@$1@%31%53%52@@%65%29%52@$0@@@@@|@|@|@"])
  fun op diffl x = x
    val op diffl =
    DT(((("lim",14),[]),[]),
       [read"%25%9%27%14%27%19%38%50$2@$1@$0@@%64%12%33%61$3%55$1@$0@@@$3$1@@@$0@|@$1@%60%35@@@|@|@|@"])
  fun op contl x = x
    val op contl =
    DT(((("lim",15),[]),[]),
       [read"%25%9%27%19%38%48$1@$0@@%64%12$2%55$1@$0@@|@$1$0@@%60%35@@@|@|@"])
  fun op differentiable x = x
    val op differentiable =
    DT(((("lim",16),[]),[]),
       [read"%25%9%27%19%38%49$1@$0@@%42%14%50$2@$0@$1@|@@|@|@"])
  fun op LIM x = x
    val op LIM =
    DT(((("lim",1),
        [("lim",[0]),("nets",[11]),("real",[213]),
         ("topology",[34,42])]),["DISK_THM"]),
       [read"%25%9%27%22%27%20%38%64$2@$1@$0@@%27%7%40%56%60%35@@$0@@%42%6%34%56%60%35@@$0@@%27%19%40%34%56%60%35@@%47%61$0@$3@@@@%56%47%61$0@$3@@@$1@@@%56%47%61$5$0@@$4@@@$2@@|@@|@@|@@|@|@|@"])
  fun op LIM_CONST x = x
    val op LIM_CONST =
    DT(((("lim",2),
        [("bool",[25,26,27,35,36,51,53,54,58,63]),("lim",[0]),
         ("nets",[3,7]),("real",[55,87,214]),
         ("topology",[20,31,34,42])]),["DISK_THM"]),
       [read"%27%13%27%19%64%19$2|@$1@$0@|@|@"])
  fun op LIM_ADD x = x
    val op LIM_ADD =
    DT(((("lim",3),[("lim",[0]),("nets",[6,20])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%64$4@$2@$0@@%64$3@$1@$0@@@%64%19%55$5$0@@$4$0@@|@%55$2@$1@@$0@@|@|@|@|@|@"])
  fun op LIM_MUL x = x
    val op LIM_MUL =
    DT(((("lim",4),[("lim",[0]),("nets",[6,23])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%64$4@$2@$0@@%64$3@$1@$0@@@%64%19%58$5$0@@$4$0@@|@%58$2@$1@@$0@@|@|@|@|@|@"])
  fun op LIM_NEG x = x
    val op LIM_NEG =
    DT(((("lim",5),[("lim",[0]),("nets",[6,21])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%38%64$2@$1@$0@@%64%19%59$3$0@@|@%59$1@@$0@@|@|@|@"])
  fun op LIM_INV x = x
    val op LIM_INV =
    DT(((("lim",6),[("lim",[0]),("nets",[6,24])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%40%34%64$2@$1@$0@@%66%39$1@%60%35@@@@@%64%19%51$3$0@@|@%51$1@@$0@@|@|@|@"])
  fun op LIM_SUB x = x
    val op LIM_SUB =
    DT(((("lim",7),[("lim",[0]),("nets",[6,22])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%64$4@$2@$0@@%64$3@$1@$0@@@%64%19%61$5$0@@$4$0@@|@%61$2@$1@@$0@@|@|@|@|@|@"])
  fun op LIM_DIV x = x
    val op LIM_DIV =
    DT(((("lim",8),[("lim",[0]),("nets",[6,25])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%64$4@$2@$0@@%34%64$3@$1@$0@@%66%39$1@%60%35@@@@@@%64%19%33$5$0@@$4$0@@|@%33$2@$1@@$0@@|@|@|@|@|@"])
  fun op LIM_NULL x = x
    val op LIM_NULL =
    DT(((("lim",9),[("lim",[0]),("nets",[13])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%38%64$2@$1@$0@@%64%19%61$3$0@@$2@|@%60%35@@$0@@|@|@|@"])
  fun op LIM_X x = x
    val op LIM_X =
    DT(((("lim",10),[("bool",[25,51,63]),("lim",[1])]),["DISK_THM"]),
       [read"%27%20%64%19$0|@$0@$0@|@"])
  fun op LIM_UNIQ x = x
    val op LIM_UNIQ =
    DT(((("lim",11),[("lim",[0]),("nets",[6,8])]),["DISK_THM"]),
       [read"%25%9%27%14%27%16%27%19%40%34%64$3@$2@$0@@%64$3@$1@$0@@@%39$2@$1@@|@|@|@|@"])
  fun op LIM_EQUAL x = x
    val op LIM_EQUAL =
    DT(((("lim",12),
        [("bool",[25,58,63]),("lim",[1]),("real",[87,214]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%20%40%27%19%40%66%39$0@$1@@@%39$4$0@@$3$0@@@|@@%38%64$3@$1@$0@@%64$2@$1@$0@@@|@|@|@|@"])
  fun op LIM_TRANSFORM x = x
    val op LIM_TRANSFORM =
    DT(((("lim",13),
        [("bool",[25,51,53,63]),("lim",[1]),
         ("real",[12,55,59,60,77,144,149,151,162,172,209])]),["DISK_THM"]),
       [read"%25%9%25%11%27%20%27%14%40%34%64%19%61$4$0@@$3$0@@|@%60%35@@$1@@%64$2@$0@$1@@@%64$3@$0@$1@@|@|@|@|@"])
  fun op DIFF_UNIQ x = x
    val op DIFF_UNIQ =
    DT(((("lim",17),[("lim",[11,14])]),["DISK_THM"]),
       [read"%25%9%27%14%27%16%27%19%40%34%50$3@$2@$0@@%50$3@$1@$0@@@%39$2@$1@@|@|@|@|@"])
  fun op DIFF_CONT x = x
    val op DIFF_CONT =
    DT(((("lim",18),
        [("bool",[25,51,56,58,63]),("lim",[0,1,4,12,14,15]),("nets",[13]),
         ("real",[40,148,162])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%40%50$2@$1@$0@@%48$2@$0@@|@|@|@"])
  fun op CONTL_LIM x = x
    val op CONTL_LIM =
    DT(((("lim",19),
        [("bool",[25,26,51,53,63]),("lim",[1,15]),("real",[85,96,162]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%25%9%27%19%38%48$1@$0@@%64$1@$1$0@@$0@@|@|@"])
  fun op DIFF_CARAT x = x
    val op DIFF_CARAT =
    DT(((("lim",20),
        [("bool",[25,26,27,30,51,54,56,58,63,64]),("lim",[12,14,15]),
         ("real",[17,26,29,30,35,40,86,87,96,148]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%38%50$2@$1@$0@@%41%11%34%27%23%39%61$4$0@@$4$2@@@%58$1$0@@%61$0@$2@@@|@@%34%48$0@$1@@%39$0$1@@$2@@@|@@|@|@|@"])
  fun op CONT_CONST x = x
    val op CONT_CONST =
    DT(((("lim",21),[("bool",[35]),("lim",[2,19])]),["DISK_THM"]),
       [read"%27%13%27%19%48%19$2|@$0@|@|@"])
  fun op CONT_ADD x = x
    val op CONT_ADD =
    DT(((("lim",22),[("lim",[3,19])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%40%34%48$2@$0@@%48$1@$0@@@%48%19%55$3$0@@$2$0@@|@$0@@|@|@|@"])
  fun op CONT_MUL x = x
    val op CONT_MUL =
    DT(((("lim",23),[("lim",[4,19])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%40%34%48$2@$0@@%48$1@$0@@@%48%19%58$3$0@@$2$0@@|@$0@@|@|@|@"])
  fun op CONT_NEG x = x
    val op CONT_NEG =
    DT(((("lim",24),[("bool",[25,53,58]),("lim",[5,19])]),["DISK_THM"]),
       [read"%25%9%27%19%40%48$1@$0@@%48%19%59$2$0@@|@$0@@|@|@"])
  fun op CONT_INV x = x
    val op CONT_INV =
    DT(((("lim",25),[("lim",[6,19])]),["DISK_THM"]),
       [read"%25%9%27%19%40%34%48$1@$0@@%66%39$1$0@@%60%35@@@@@%48%19%51$2$0@@|@$0@@|@|@"])
  fun op CONT_SUB x = x
    val op CONT_SUB =
    DT(((("lim",26),[("lim",[7,19])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%40%34%48$2@$0@@%48$1@$0@@@%48%19%61$3$0@@$2$0@@|@$0@@|@|@|@"])
  fun op CONT_DIV x = x
    val op CONT_DIV =
    DT(((("lim",27),[("lim",[8,19])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%40%34%48$2@$0@@%34%48$1@$0@@%66%39$1$0@@%60%35@@@@@@%48%19%33$3$0@@$2$0@@|@$0@@|@|@|@"])
  fun op CONT_COMPOSE x = x
    val op CONT_COMPOSE =
    DT(((("lim",28),
        [("bool",[25,30,51,53,54,58,63]),("lim",[1,15]),
         ("real",[85,86,87,162,206,214])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%40%34%48$2@$0@@%48$1@$2$0@@@@%48%19$2$3$0@@|@$0@@|@|@|@"])
  fun op IVT x = x
    val op IVT =
    DT(((("lim",29),
        [("bool",[25,26,27,30,36,51,52,53,54,58,63,64,92,96]),
         ("lim",[1,15]),("pair",[16]),
         ("real",
         [4,10,22,48,51,52,55,57,58,60,61,74,75,76,84,87,94,95,159,162,204,
          213,214]),("seq",[40])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%27%21%40%34%57$2@$1@@%34%34%57$3$2@@$0@@%57$0@$3$1@@@@%27%19%40%34%57$3@$0@@%57$0@$2@@@%48$4@$0@@|@@@@%42%19%34%57$3@$0@@%34%57$0@$2@@%39$4$0@@$1@@@|@@|@|@|@|@"])
  fun op IVT2 x = x
    val op IVT2 =
    DT(((("lim",30),
        [("bool",[25,51,63]),("lim",[24,29]),
         ("real",[43,101,159])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%27%21%40%34%57$2@$1@@%34%34%57$3$1@@$0@@%57$0@$3$2@@@@%27%19%40%34%57$3@$0@@%57$0@$2@@@%48$4@$0@@|@@@@%42%19%34%57$3@$0@@%34%57$0@$2@@%39$4$0@@$1@@@|@@|@|@|@|@"])
  fun op DIFF_CONST x = x
    val op DIFF_CONST =
    DT(((("lim",31),
        [("bool",[35]),("lim",[2,14]),("real",[26,39,86])]),["DISK_THM"]),
       [read"%27%13%27%19%50%19$2|@%60%35@@$0@|@|@"])
  fun op DIFF_ADD x = x
    val op DIFF_ADD =
    DT(((("lim",32),
        [("bool",[25,51,58,63]),("lim",[3,14]),
         ("real",[26,31,160])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%50$4@$2@$0@@%50$3@$1@$0@@@%50%19%55$5$0@@$4$0@@|@%55$2@$1@@$0@@|@|@|@|@|@"])
  fun op DIFF_MUL x = x
    val op DIFF_MUL =
    DT(((("lim",33),
        [("bool",[25,36,51,56,58,63]),("lim",[2,3,4,14,15,18]),
         ("real",[4,6,7,8,15,17,22,26,31,99,100])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%50$4@$2@$0@@%50$3@$1@$0@@@%50%19%58$5$0@@$4$0@@|@%55%58$2@$3$0@@@%58$1@$4$0@@@@$0@@|@|@|@|@|@"])
  fun op DIFF_CMUL x = x
    val op DIFF_CMUL =
    DT(((("lim",34),
        [("bool",[25,56,63]),("lim",[31,33]),("real",[7,15,39]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%25%9%27%5%27%14%27%19%40%50$3@$1@$0@@%50%19%58$3@$4$0@@|@%58$2@$1@@$0@@|@|@|@|@"])
  fun op DIFF_NEG x = x
    val op DIFF_NEG =
    DT(((("lim",35),[("lim",[34]),("real",[102])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%40%50$2@$1@$0@@%50%19%59$3$0@@|@%59$1@@$0@@|@|@|@"])
  fun op DIFF_SUB x = x
    val op DIFF_SUB =
    DT(((("lim",36),
        [("bool",[25,53]),("lim",[32,35]),("real",[22])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%50$4@$2@$0@@%50$3@$1@$0@@@%50%19%61$5$0@@$4$0@@|@%61$2@$1@@$0@@|@|@|@|@|@"])
  fun op DIFF_CHAIN x = x
    val op DIFF_CHAIN =
    DT(((("lim",37),
        [("bool",[25,26,27,30,51,54,56,58,63,64]),
         ("lim",[12,15,18,20,23,28]),
         ("real",[17,26,29,30,35,40,86,87,96,148]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%50$4@$2@$3$0@@@%50$3@$1@$0@@@%50%19$5$4$0@@|@%58$2@$1@@$0@@|@|@|@|@|@"])
  fun op DIFF_X x = x
    val op DIFF_X =
    DT(((("lim",38),
        [("bool",[25,51,58,63]),("lim",[1,14]),
         ("real",[74,86,96,135,162,206,214])]),["DISK_THM"]),
       [read"%27%19%50%19$0|@%60%45%43%46@@@@$0@|@"])
  fun op DIFF_POW x = x
    val op DIFF_POW =
    DT(((("lim",39),
        [("arithmetic",[17,28,64,128]),("bool",[14,25,36,56,63]),
         ("lim",[31,33,38]),("num",[9]),
         ("real",[4,17,18,29,31,39,126,233,239]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%26%17%27%19%50%19%54$0@$2@|@%58%60$1@@%54$0@%32$1@%45%43%46@@@@@@$0@|@|@"])
  fun op DIFF_XM1 x = x
    val op DIFF_XM1 =
    DT(((("lim",40),
        [("bool",[25,26,27,51,52,53,54,58,63]),
         ("lim",[1,2,3,4,5,6,10,13,14]),
         ("real",
         [11,15,17,18,19,26,27,36,42,45,87,93,96,97,99,100,162,205,208,214,
          241])]),["DISK_THM"]),
       [read"%27%19%40%66%39$0@%60%35@@@@%50%19%51$0@|@%59%54%51$0@@%45%44%46@@@@@$0@@|@"])
  fun op DIFF_INV x = x
    val op DIFF_INV =
    DT(((("lim",41),
        [("bool",[14,25,26,27,51,54,63]),("lim",[37,40]),
         ("real",[15,26,42,236])]),["DISK_THM"]),
       [read"%25%9%27%14%27%19%40%34%50$2@$1@$0@@%66%39$2$0@@%60%35@@@@@%50%19%51$3$0@@|@%59%33$1@%54$2$0@@%45%44%46@@@@@@$0@@|@|@|@"])
  fun op DIFF_DIV x = x
    val op DIFF_DIV =
    DT(((("lim",42),
        [("bool",[25,26,27,51,53,54,56,58,63]),("lim",[33,41]),
         ("real",[15,17,18,22,26,30,31,41,175,241])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%16%27%19%40%34%50$4@$2@$0@@%34%50$3@$1@$0@@%66%39$3$0@@%60%35@@@@@@%50%19%33$5$0@@$4$0@@|@%33%61%58$2@$3$0@@@%58$1@$4$0@@@@%54$3$0@@%45%44%46@@@@@$0@@|@|@|@|@|@"])
  fun op DIFF_SUM x = x
    val op DIFF_SUM =
    DT(((("lim",43),
        [("arithmetic",[24,34,53]),("bool",[14,25,51,53,63]),
         ("lim",[31,32]),("num",[9]),("prim_rec",[15]),
         ("real",[280])]),["DISK_THM"]),
       [read"%24%8%24%10%26%15%26%17%27%19%40%26%18%40%34%37$3@$0@@%36$0@%28$3@$2@@@@%50%19$6$1@$0@|@$4$0@$1@@$1@@|@@%50%19%62%30$3@$2@@%17$6$0@$1@|@|@%62%30$2@$1@@%18$4$0@$1@|@@$0@@|@|@|@|@|@"])
  fun op CONT_BOUNDED x = x
    val op CONT_BOUNDED =
    DT(((("lim",44),
        [("bool",[25,26,27,30,36,51,53,54,58,63,64]),("lim",[1,15]),
         ("pair",[16]),
         ("real",
         [4,22,52,55,58,60,61,74,75,76,84,86,87,93,95,159,162,204,206,209,
          214,217]),("seq",[40])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%57$1@$0@@%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@@%42%1%27%19%40%34%57$3@$0@@%57$0@$2@@@%57$4$0@@$1@@|@|@@|@|@|@"])
  fun op CONT_HASSUP x = x
    val op CONT_HASSUP =
    DT(((("lim",45),
        [("bool",[25,26,27,43,51,53,54,56,63,96]),("lim",[44]),
         ("real",[11,48,55,273])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%57$1@$0@@%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@@%42%1%34%27%19%40%34%57$3@$0@@%57$0@$2@@@%57$4$0@@$1@@|@@%27%2%40%56$0@$1@@%42%19%34%57$4@$0@@%34%57$0@$3@@%56$1@$5$0@@@@|@@|@@|@@|@|@|@"])
  fun op CONT_ATTAINS x = x
    val op CONT_ATTAINS =
    DT(((("lim",46),
        [("bool",[14,25,26,36,43,51,53,58,63,92]),("lim",[21,25,26,44,45]),
         ("real",
         [4,12,48,55,57,58,59,60,74,87,94,104,105,106,124,154,155,168]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%57$1@$0@@%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@@%42%1%34%27%19%40%34%57$3@$0@@%57$0@$2@@@%57$4$0@@$1@@|@@%42%19%34%57$3@$0@@%34%57$0@$2@@%39$4$0@@$1@@@|@@|@@|@|@|@"])
  fun op CONT_ATTAINS2 x = x
    val op CONT_ATTAINS2 =
    DT(((("lim",47),
        [("bool",[25,51,58,63]),("lim",[24,46]),
         ("real",[43,101,159])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%57$1@$0@@%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@@%42%1%34%27%19%40%34%57$3@$0@@%57$0@$2@@@%57$1@$4$0@@@|@@%42%19%34%57$3@$0@@%34%57$0@$2@@%39$4$0@@$1@@@|@@|@@|@|@|@"])
  fun op CONT_ATTAINS_ALL x = x
    val op CONT_ATTAINS_ALL =
    DT(((("lim",48),
        [("bool",[25,36,51,53,56,63]),("lim",[29,30,46,47]),
         ("real",[52,55,61])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%57$1@$0@@%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@@%42%0%42%1%34%57$1@$0@@%34%27%21%40%34%57$2@$0@@%57$0@$1@@@%42%19%34%57$5@$0@@%34%57$0@$4@@%39$6$0@@$1@@@|@@|@@%27%19%40%34%57$4@$0@@%57$0@$3@@@%34%57$2@$5$0@@@%57$5$0@@$1@@@|@@@|@|@@|@|@|@"])
  fun op DIFF_LINC x = x
    val op DIFF_LINC =
    DT(((("lim",49),
        [("bool",[25,51,53,58,63,64]),("lim",[1,14]),
         ("real",[26,39,58,94,106,110,162,204,225])]),["DISK_THM"]),
       [read"%25%9%27%19%27%14%40%34%50$2@$0@$1@@%56%60%35@@$0@@@%42%6%34%56%60%35@@$0@@%27%12%40%34%56%60%35@@$0@@%56$0@$1@@@%56$4$3@@$4%55$3@$0@@@@|@@|@@|@|@|@"])
  fun op DIFF_LDEC x = x
    val op DIFF_LDEC =
    DT(((("lim",50),
        [("bool",[25,51,53,54,58,63,64]),("lim",[1,14]),
         ("real",
         [22,26,39,42,43,48,58,65,67,94,105,106,110,117,162,204,
          226])]),["DISK_THM"]),
       [read"%25%9%27%19%27%14%40%34%50$2@$0@$1@@%56$0@%60%35@@@@%42%6%34%56%60%35@@$0@@%27%12%40%34%56%60%35@@$0@@%56$0@$1@@@%56$4$3@@$4%61$3@$0@@@@|@@|@@|@|@|@"])
  fun op DIFF_LMAX x = x
    val op DIFF_LMAX =
    DT(((("lim",51),
        [("bool",[25,51,53,54,56,58,63,64]),("lim",[49,50]),
         ("real",[10,48,58,151,179,180,204,208])]),["DISK_THM"]),
       [read"%25%9%27%19%27%14%40%34%50$2@$0@$1@@%42%6%34%56%60%35@@$0@@%27%21%40%56%47%61$3@$0@@@$1@@%57$4$0@@$4$3@@@|@@|@@@%39$0@%60%35@@@|@|@|@"])
  fun op DIFF_LMIN x = x
    val op DIFF_LMIN =
    DT(((("lim",52),
        [("bool",[25,51,63]),("lim",[35,51]),
         ("real",[91,159])]),["DISK_THM"]),
       [read"%25%9%27%19%27%14%40%34%50$2@$0@$1@@%42%6%34%56%60%35@@$0@@%27%21%40%56%47%61$3@$0@@@$1@@%57$4$3@@$4$0@@@|@@|@@@%39$0@%60%35@@@|@|@|@"])
  fun op DIFF_LCONST x = x
    val op DIFF_LCONST =
    DT(((("lim",53),
        [("bool",[51,63]),("lim",[51]),("real",[55])]),["DISK_THM"]),
       [read"%25%9%27%19%27%14%40%34%50$2@$0@$1@@%42%6%34%56%60%35@@$0@@%27%21%40%56%47%61$3@$0@@@$1@@%39$4$0@@$4$3@@@|@@|@@@%39$0@%60%35@@@|@|@|@"])
  fun op INTERVAL_LEMMA x = x
    val op INTERVAL_LEMMA =
    DT(((("lim",54),
        [("bool",[25,26,27,30,51,54,58,63,64]),
         ("real",[4,12,51,58,61,93,94,95,151,154,155,204])]),["DISK_THM"]),
       [read"%27%3%27%4%27%19%40%34%56$2@$0@@%56$0@$1@@@%42%6%34%56%60%35@@$0@@%27%21%40%56%47%61$2@$0@@@$1@@%34%57$4@$0@@%57$0@$3@@@|@@|@@|@|@|@"])
  fun op ROLLE x = x
    val op ROLLE =
    DT(((("lim",55),
        [("bool",[25,26,30,36,51,53,54,58,63,96]),
         ("lim",[16,46,47,51,52,53,54]),
         ("real",[57,58,62,181])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%56$1@$0@@%34%39$2$1@@$2$0@@@%34%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@%27%19%40%34%56$2@$0@@%56$0@$1@@@%49$3@$0@@|@@@@@%42%23%34%56$2@$0@@%34%56$0@$1@@%50$3@%60%35@@$0@@@|@@|@|@|@"])
  fun op MVT_LEMMA x = x
    val op MVT_LEMMA =
    DT(((("lim",56),
        [("bool",[25,26,27,30,52,56,58,63]),
         ("real",
         [4,6,7,8,9,15,17,22,27,31,38,41,42,43,87,98,100,
          148])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%39%19%61$3$0@@%58%33%61$3$1@@$3$2@@@%61$1@$2@@@$0@@|$1@@%19%61$3$0@@%58%33%61$3$1@@$3$2@@@%61$1@$2@@@$0@@|$0@@|@|@|@"])
  fun op MVT x = x
    val op MVT =
    DT(((("lim",57),
        [("bool",[14,25,26,27,35,36,43,51,53,54,56,58,63]),
         ("lim",[16,18,21,23,26,32,34,36,38,55,56]),
         ("real",[7,11,29,84,87,147])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%56$1@$0@@%34%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@%27%19%40%34%56$2@$0@@%56$0@$1@@@%49$3@$0@@|@@@@%42%14%42%23%34%56$3@$0@@%34%56$0@$2@@%34%50$4@$1@$0@@%39%61$4$2@@$4$3@@@%58%61$2@$3@@$1@@@@@|@|@@|@|@|@"])
  fun op DIFF_ISCONST_END x = x
    val op DIFF_ISCONST_END =
    DT(((("lim",58),
        [("bool",[25,36,51,53,63]),("lim",[16,17,57]),("real",[40,87]),
         ("sat",[1,3,5,6,7,11,12,15])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%56$1@$0@@%34%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@%27%19%40%34%56$2@$0@@%56$0@$1@@@%50$3@%60%35@@$0@@|@@@@%39$2$0@@$2$1@@@|@|@|@"])
  fun op DIFF_ISCONST x = x
    val op DIFF_ISCONST =
    DT(((("lim",59),
        [("bool",[25,51,53,56,63]),("lim",[58]),
         ("real",[56,59,61])]),["DISK_THM"]),
       [read"%25%9%27%3%27%4%40%34%56$1@$0@@%34%27%19%40%34%57$2@$0@@%57$0@$1@@@%48$3@$0@@|@@%27%19%40%34%56$2@$0@@%56$0@$1@@@%50$3@%60%35@@$0@@|@@@@%27%19%40%34%57$2@$0@@%57$0@$1@@@%39$3$0@@$3$2@@@|@@|@|@|@"])
  fun op DIFF_ISCONST_ALL x = x
    val op DIFF_ISCONST_ALL =
    DT(((("lim",60),
        [("bool",[25,36,51,53,58,63]),("lim",[18,58]),
         ("real",[10])]),["DISK_THM"]),
       [read"%25%9%40%27%19%50$1@%60%35@@$0@|@@%27%19%27%21%39$2$1@@$2$0@@|@|@@|@"])
  fun op INTERVAL_ABS x = x
    val op INTERVAL_ABS =
    DT(((("lim",61),
        [("bool",[25,26,27,30,51,63,64]),
         ("real",[4,51,58,61,76,93,95,157,204])]),["DISK_THM"]),
       [read"%27%19%27%23%27%6%38%34%57%61$2@$0@@$1@@%57$1@%55$2@$0@@@@%57%47%61$1@$2@@@$0@@|@|@|@"])
  fun op CONT_INJ_LEMMA x = x
    val op CONT_INJ_LEMMA =
    DT(((("lim",62),
        [("bool",[25,36,51,53,58,63,64]),("lim",[29,30]),
         ("real",
         [4,52,55,58,59,60,93,95,96,105,122,124,152,154,157,204,
          208])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%27%6%40%34%56%60%35@@$0@@%34%27%23%40%57%47%61$0@$2@@@$1@@%39$3$4$0@@@$0@@|@@%27%23%40%57%47%61$0@$2@@@$1@@%48$4@$0@@|@@@@%66%27%23%40%57%47%61$0@$2@@@$1@@%57$4$0@@$4$2@@@|@@@|@|@|@|@"])
  fun op CONT_INJ_LEMMA2 x = x
    val op CONT_INJ_LEMMA2 =
    DT(((("lim",63),
        [("bool",[36,51,63]),("lim",[24,62]),
         ("real",[43,159])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%27%6%40%34%56%60%35@@$0@@%34%27%23%40%57%47%61$0@$2@@@$1@@%39$3$4$0@@@$0@@|@@%27%23%40%57%47%61$0@$2@@@$1@@%48$4@$0@@|@@@@%66%27%23%40%57%47%61$0@$2@@@$1@@%57$4$2@@$4$0@@@|@@@|@|@|@|@"])
  fun op CONT_INJ_RANGE x = x
    val op CONT_INJ_RANGE =
    DT(((("lim",64),
        [("bool",[25,36,43,51,53,54,58,63]),("lim",[48,61,62,63]),
         ("real",
         [4,6,55,57,58,61,75,85,86,88,94,122,151,156,157,
          206])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%27%6%40%34%56%60%35@@$0@@%34%27%23%40%57%47%61$0@$2@@@$1@@%39$3$4$0@@@$0@@|@@%27%23%40%57%47%61$0@$2@@@$1@@%48$4@$0@@|@@@@%42%7%34%56%60%35@@$0@@%27%21%40%57%47%61$0@$5$3@@@@$1@@%42%23%34%57%47%61$0@$4@@@$3@@%39$6$0@@$1@@|@@|@@|@@|@|@|@|@"])
  fun op CONT_INVERSE x = x
    val op CONT_INVERSE =
    DT(((("lim",65),
        [("bool",[25,36,51,53,58,63]),("lim",[1,15,64]),
         ("real",[58,60,61,86,96,151,162,206,214])]),["DISK_THM"]),
       [read"%25%9%25%11%27%19%27%6%40%34%56%60%35@@$0@@%34%27%23%40%57%47%61$0@$2@@@$1@@%39$3$4$0@@@$0@@|@@%27%23%40%57%47%61$0@$2@@@$1@@%48$4@$0@@|@@@@%48$2@$3$1@@@|@|@|@|@"])
  fun op DIFF_INVERSE x = x
    val op DIFF_INVERSE =
    DT(((("lim",66),
        [("bool",[25,26,27,30,36,51,53,54,56,58,63,64]),
         ("lim",[1,6,13,18,19,20,28,64,65]),
         ("real",
         [11,12,15,17,18,19,26,40,58,86,87,148,151,161,162,175,205,206,208,
          214]),("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%19%27%6%40%34%56%60%35@@$0@@%34%27%23%40%57%47%61$0@$2@@@$1@@%39$4$5$0@@@$0@@|@@%34%27%23%40%57%47%61$0@$2@@@$1@@%48$5@$0@@|@@%34%50$4@$2@$1@@%66%39$2@%60%35@@@@@@@@%50$3@%51$2@@$4$1@@@|@|@|@|@|@"])
  fun op DIFF_INVERSE_LT x = x
    val op DIFF_INVERSE_LT =
    DT(((("lim",67),
        [("bool",[25,26,27,51,54,63]),("lim",[66]),
         ("real",[60,144,145])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%19%27%6%40%34%56%60%35@@$0@@%34%27%23%40%56%47%61$0@$2@@@$1@@%39$4$5$0@@@$0@@|@@%34%27%23%40%56%47%61$0@$2@@@$1@@%48$5@$0@@|@@%34%50$4@$2@$1@@%66%39$2@%60%35@@@@@@@@%50$3@%51$2@@$4$1@@@|@|@|@|@|@"])
  fun op INTERVAL_CLEMMA x = x
    val op INTERVAL_CLEMMA =
    DT(((("lim",68),
        [("bool",[25,51,53,58,63]),("lim",[61]),
         ("real",[4,46,59,60,94,151,155,157])]),["DISK_THM"]),
       [read"%27%3%27%4%27%19%40%34%56$2@$0@@%56$0@$1@@@%42%6%34%56%60%35@@$0@@%27%21%40%57%47%61$0@$2@@@$1@@%34%56$4@$0@@%56$0@$3@@@|@@|@@|@|@|@"])
  fun op DIFF_INVERSE_OPEN x = x
    val op DIFF_INVERSE_OPEN =
    DT(((("lim",69),
        [("bool",[25,26,27,51,53,54,56,63]),
         ("lim",[66,68])]),["DISK_THM"]),
       [read"%25%9%25%11%27%14%27%3%27%19%27%4%40%34%56$2@$1@@%34%56$1@$0@@%34%27%23%40%34%56$3@$0@@%56$0@$1@@@%34%39$5$6$0@@@$0@@%48$6@$0@@@|@@%34%50$5@$3@$1@@%66%39$3@%60%35@@@@@@@@%50$4@%51$3@@$5$1@@@|@|@|@|@|@|@"])
  end
  val _ = DB.bindl "lim"
  [("tends_real_real",tends_real_real,DB.Def), ("diffl",diffl,DB.Def),
   ("contl",contl,DB.Def), ("differentiable",differentiable,DB.Def),
   ("LIM",LIM,DB.Thm), ("LIM_CONST",LIM_CONST,DB.Thm),
   ("LIM_ADD",LIM_ADD,DB.Thm), ("LIM_MUL",LIM_MUL,DB.Thm),
   ("LIM_NEG",LIM_NEG,DB.Thm), ("LIM_INV",LIM_INV,DB.Thm),
   ("LIM_SUB",LIM_SUB,DB.Thm), ("LIM_DIV",LIM_DIV,DB.Thm),
   ("LIM_NULL",LIM_NULL,DB.Thm), ("LIM_X",LIM_X,DB.Thm),
   ("LIM_UNIQ",LIM_UNIQ,DB.Thm), ("LIM_EQUAL",LIM_EQUAL,DB.Thm),
   ("LIM_TRANSFORM",LIM_TRANSFORM,DB.Thm), ("DIFF_UNIQ",DIFF_UNIQ,DB.Thm),
   ("DIFF_CONT",DIFF_CONT,DB.Thm), ("CONTL_LIM",CONTL_LIM,DB.Thm),
   ("DIFF_CARAT",DIFF_CARAT,DB.Thm), ("CONT_CONST",CONT_CONST,DB.Thm),
   ("CONT_ADD",CONT_ADD,DB.Thm), ("CONT_MUL",CONT_MUL,DB.Thm),
   ("CONT_NEG",CONT_NEG,DB.Thm), ("CONT_INV",CONT_INV,DB.Thm),
   ("CONT_SUB",CONT_SUB,DB.Thm), ("CONT_DIV",CONT_DIV,DB.Thm),
   ("CONT_COMPOSE",CONT_COMPOSE,DB.Thm), ("IVT",IVT,DB.Thm),
   ("IVT2",IVT2,DB.Thm), ("DIFF_CONST",DIFF_CONST,DB.Thm),
   ("DIFF_ADD",DIFF_ADD,DB.Thm), ("DIFF_MUL",DIFF_MUL,DB.Thm),
   ("DIFF_CMUL",DIFF_CMUL,DB.Thm), ("DIFF_NEG",DIFF_NEG,DB.Thm),
   ("DIFF_SUB",DIFF_SUB,DB.Thm), ("DIFF_CHAIN",DIFF_CHAIN,DB.Thm),
   ("DIFF_X",DIFF_X,DB.Thm), ("DIFF_POW",DIFF_POW,DB.Thm),
   ("DIFF_XM1",DIFF_XM1,DB.Thm), ("DIFF_INV",DIFF_INV,DB.Thm),
   ("DIFF_DIV",DIFF_DIV,DB.Thm), ("DIFF_SUM",DIFF_SUM,DB.Thm),
   ("CONT_BOUNDED",CONT_BOUNDED,DB.Thm),
   ("CONT_HASSUP",CONT_HASSUP,DB.Thm),
   ("CONT_ATTAINS",CONT_ATTAINS,DB.Thm),
   ("CONT_ATTAINS2",CONT_ATTAINS2,DB.Thm),
   ("CONT_ATTAINS_ALL",CONT_ATTAINS_ALL,DB.Thm),
   ("DIFF_LINC",DIFF_LINC,DB.Thm), ("DIFF_LDEC",DIFF_LDEC,DB.Thm),
   ("DIFF_LMAX",DIFF_LMAX,DB.Thm), ("DIFF_LMIN",DIFF_LMIN,DB.Thm),
   ("DIFF_LCONST",DIFF_LCONST,DB.Thm),
   ("INTERVAL_LEMMA",INTERVAL_LEMMA,DB.Thm), ("ROLLE",ROLLE,DB.Thm),
   ("MVT_LEMMA",MVT_LEMMA,DB.Thm), ("MVT",MVT,DB.Thm),
   ("DIFF_ISCONST_END",DIFF_ISCONST_END,DB.Thm),
   ("DIFF_ISCONST",DIFF_ISCONST,DB.Thm),
   ("DIFF_ISCONST_ALL",DIFF_ISCONST_ALL,DB.Thm),
   ("INTERVAL_ABS",INTERVAL_ABS,DB.Thm),
   ("CONT_INJ_LEMMA",CONT_INJ_LEMMA,DB.Thm),
   ("CONT_INJ_LEMMA2",CONT_INJ_LEMMA2,DB.Thm),
   ("CONT_INJ_RANGE",CONT_INJ_RANGE,DB.Thm),
   ("CONT_INVERSE",CONT_INVERSE,DB.Thm),
   ("DIFF_INVERSE",DIFF_INVERSE,DB.Thm),
   ("DIFF_INVERSE_LT",DIFF_INVERSE_LT,DB.Thm),
   ("INTERVAL_CLEMMA",INTERVAL_CLEMMA,DB.Thm),
   ("DIFF_INVERSE_OPEN",DIFF_INVERSE_OPEN,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("seqTheory.seq_grammars",seqTheory.seq_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tends_real_real", (Term.prim_mk_const { Name = "tends_real_real", Thy = "lim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tends_real_real", (Term.prim_mk_const { Name = "tends_real_real", Thy = "lim"}))
  val _ = update_grms temp_add_infix ("->", 250, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("->", (Term.prim_mk_const { Name = "tends_real_real", Thy = "lim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diffl", (Term.prim_mk_const { Name = "diffl", Thy = "lim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diffl", (Term.prim_mk_const { Name = "diffl", Thy = "lim"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "diffl"))
       (Infix(HOLgrammars.RIGHT, 750))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("contl", (Term.prim_mk_const { Name = "contl", Thy = "lim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("contl", (Term.prim_mk_const { Name = "contl", Thy = "lim"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "contl"))
       (Infix(HOLgrammars.RIGHT, 750))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("differentiable", (Term.prim_mk_const { Name = "differentiable", Thy = "lim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("differentiable", (Term.prim_mk_const { Name = "differentiable", Thy = "lim"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "differentiable"))
       (Infix(HOLgrammars.RIGHT, 750))
  val lim_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "lim"
end
