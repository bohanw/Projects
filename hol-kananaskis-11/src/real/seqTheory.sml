structure seqTheory :> seqTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading seqTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open netsTheory
  in end;
  val _ = Theory.link_parents
          ("seq",Arbnum.fromString "1488589269",Arbnum.fromString "64759")
          [("nets",
           Arbnum.fromString "1488589257",
           Arbnum.fromString "777883")];
  val _ = Theory.incorporate_types "seq" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("realax", "real"),
   ID("num", "num"), ID("pair", "prod"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("topology", "metric"), ID("topology", "topology"), ID("seq", "-->"),
   ID("real", "/"), ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">="), ID("bool", "?"), ID("min", "@"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("arithmetic", "NUMERAL"), ID("num", "SUC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("real", "abs"), ID("nets", "bounded"),
   ID("seq", "cauchy"), ID("seq", "convergent"), ID("realax", "inv"),
   ID("seq", "lim"), ID("seq", "mono"), ID("topology", "mr1"),
   ID("topology", "mtop"), ID("real", "pow"), ID("realax", "real_add"),
   ID("real", "real_ge"), ID("real", "real_gt"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("realax", "real_mul"),
   ID("realax", "real_neg"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("seq", "subseq"), ID("real", "sum"),
   ID("seq", "suminf"), ID("seq", "summable"), ID("seq", "sums"),
   ID("nets", "tends"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [3], TYOP [0, 3, 1],
   TYOP [0, 4, 2], TYOP [0, 4, 0], TYOP [0, 4, 1], TYOP [0, 3, 3],
   TYOP [0, 8, 0], TYOP [4, 1, 1], TYOP [0, 10, 0], TYOP [0, 9, 0],
   TYOP [0, 6, 0], TYOP [0, 11, 0], TYOP [0, 14, 0], TYOP [0, 3, 0],
   TYOP [0, 16, 0], TYOP [0, 2, 0], TYOP [0, 3, 8], TYOP [0, 3, 16],
   TYOP [9, 1], TYOP [4, 21, 20], TYOP [0, 20, 22], TYOP [0, 21, 23],
   TYOP [4, 3, 3], TYOP [0, 3, 25], TYOP [0, 3, 26], TYOP [0, 1, 10],
   TYOP [0, 1, 28], TYOP [10, 1], TYOP [4, 30, 20], TYOP [0, 20, 31],
   TYOP [0, 30, 32], TYOP [0, 1, 1], TYOP [0, 1, 34], TYOP [0, 0, 0],
   TYOP [0, 0, 36], TYOP [0, 1, 2], TYOP [0, 2, 1], TYOP [0, 22, 6],
   TYOP [0, 21, 30], TYOP [0, 1, 4], TYOP [0, 25, 7], TYOP [0, 31, 0],
   TYOP [0, 1, 44], TYOP [0, 4, 45]]
  end
  val _ = Theory.incorporate_consts "seq" tyvector
     [("sums", 5), ("summable", 6), ("suminf", 7), ("subseq", 9),
      ("mono", 6), ("lim", 7), ("convergent", 6), ("cauchy", 6),
      ("-->", 5)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("N", 3), TMV("N1", 3), TMV("N2", 3), TMV("P", 11), TMV("a", 1),
   TMV("b", 1), TMV("c", 1), TMV("d", 3), TMV("d", 1), TMV("e", 1),
   TMV("f", 8), TMV("f", 4), TMV("g", 4), TMV("k", 3), TMV("k", 1),
   TMV("k'", 1), TMV("l", 1), TMV("m", 3), TMV("m", 1), TMV("n", 3),
   TMV("s", 4), TMV("s", 1), TMV("x", 4), TMV("x", 3), TMV("x", 1),
   TMV("x0", 1), TMV("x1", 1), TMV("x2", 1), TMV("y", 4), TMV("y", 1),
   TMV("y0", 1), TMC(5, 12), TMC(5, 13), TMC(5, 15), TMC(5, 17),
   TMC(5, 18), TMC(6, 19), TMC(7, 19), TMC(8, 24), TMC(8, 27), TMC(8, 29),
   TMC(8, 33), TMC(11, 5), TMC(12, 35), TMC(13, 37), TMC(14, 3),
   TMC(15, 20), TMC(16, 20), TMC(17, 37), TMC(17, 38), TMC(18, 37),
   TMC(19, 20), TMC(20, 12), TMC(20, 17), TMC(20, 18), TMC(21, 39),
   TMC(22, 8), TMC(23, 8), TMC(24, 8), TMC(25, 8), TMC(26, 3), TMC(27, 37),
   TMC(28, 34), TMC(29, 40), TMC(30, 6), TMC(31, 6), TMC(32, 34),
   TMC(33, 7), TMC(34, 6), TMC(35, 21), TMC(36, 41), TMC(37, 42),
   TMC(38, 35), TMC(39, 38), TMC(40, 38), TMC(41, 38), TMC(42, 38),
   TMC(43, 35), TMC(44, 34), TMC(45, 4), TMC(46, 35), TMC(47, 9),
   TMC(48, 43), TMC(49, 7), TMC(50, 6), TMC(51, 5), TMC(52, 46),
   TMC(53, 36)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op tends_num_real x = x
    val op tends_num_real =
    DT(((("seq",0),[]),[]),
       [read"%32%22%35%25%48%42$1@$0@@%86$1@$0@%41%70%69@@%51@@@|@|@"])
  fun op convergent x = x
    val op convergent =
    DT(((("seq",10),[]),[]), [read"%32%11%48%65$0@@%54%16%42$1@$0@|@@|@"])
  fun op cauchy x = x
    val op cauchy =
    DT(((("seq",11),[]),[]),
       [read"%32%11%48%64$0@@%35%9%50%75%79%45@@$0@@%53%0%34%17%34%19%50%44%51$1@$2@@%51$0@$2@@@%75%62%80$4$1@@$4$0@@@@$3@@|@|@|@@|@@|@"])
  fun op lim x = x
    val op lim =
    DT(((("seq",12),[]),[]), [read"%32%11%49%67$0@@%55%16%42$1@$0@|@@|@"])
  fun op subseq x = x
    val op subseq =
    DT(((("seq",14),[]),[]),
       [read"%31%10%48%81$0@@%34%17%34%19%50%46$1@$0@@%46$2$1@@$2$0@@@|@|@@|@"])
  fun op mono x = x
    val op mono =
    DT(((("seq",16),[]),[]),
       [read"%32%11%48%68$0@@%61%34%17%34%19%50%47$1@$0@@%76$2$1@@$2$0@@@|@|@@%34%17%34%19%50%47$1@$0@@%73$2$1@@$2$0@@@|@|@@@|@"])
  fun op sums x = x
    val op sums =
    DT(((("seq",41),[]),[]),
       [read"%32%11%35%21%48%85$1@$0@@%42%19%82%39%45@$0@@$2@|@$0@@|@|@"])
  fun op summable x = x
    val op summable =
    DT(((("seq",42),[]),[]), [read"%32%11%48%84$0@@%54%21%85$1@$0@|@@|@"])
  fun op suminf x = x
    val op suminf =
    DT(((("seq",43),[]),[]), [read"%32%11%49%83$0@@%55%21%85$1@$0@|@@|@"])
  fun op SEQ x = x
    val op SEQ =
    DT(((("seq",1),
        [("nets",[9]),("real",[213]),("seq",[0]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%32%22%35%25%48%42$1@$0@@%35%9%50%75%79%45@@$0@@%53%0%34%19%50%51$0@$1@@%75%62%80$4$0@@$3@@@$2@@|@|@@|@@|@|@"])
  fun op SEQ_CONST x = x
    val op SEQ_CONST =
    DT(((("seq",2),
        [("bool",[25,35,36,37,53,63]),("real",[86,206]),
         ("seq",[1])]),["DISK_THM"]), [read"%35%14%42%23$1|@$0@|@"])
  fun op SEQ_ADD x = x
    val op SEQ_ADD =
    DT(((("seq",3),[("nets",[5,20]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%25%32%28%35%30%50%44%42$3@$2@@%42$1@$0@@@%42%19%72$4$0@@$2$0@@|@%72$2@$0@@@|@|@|@|@"])
  fun op SEQ_MUL x = x
    val op SEQ_MUL =
    DT(((("seq",4),[("nets",[5,23]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%25%32%28%35%30%50%44%42$3@$2@@%42$1@$0@@@%42%19%77$4$0@@$2$0@@|@%77$2@$0@@@|@|@|@|@"])
  fun op SEQ_NEG x = x
    val op SEQ_NEG =
    DT(((("seq",5),[("nets",[5,21]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%25%48%42$1@$0@@%42%19%78$2$0@@|@%78$0@@@|@|@"])
  fun op SEQ_INV x = x
    val op SEQ_INV =
    DT(((("seq",6),[("nets",[5,24]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%25%50%44%42$1@$0@@%87%49$0@%79%45@@@@@%42%19%66$2$0@@|@%66$0@@@|@|@"])
  fun op SEQ_SUB x = x
    val op SEQ_SUB =
    DT(((("seq",7),[("nets",[5,22]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%25%32%28%35%30%50%44%42$3@$2@@%42$1@$0@@@%42%19%80$4$0@@$2$0@@|@%80$2@$0@@@|@|@|@|@"])
  fun op SEQ_DIV x = x
    val op SEQ_DIV =
    DT(((("seq",8),[("nets",[5,25]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%25%32%28%35%30%50%44%42$3@$2@@%44%42$1@$0@@%87%49$0@%79%45@@@@@@%42%19%43$4$0@@$2$0@@|@%43$2@$0@@@|@|@|@|@"])
  fun op SEQ_UNIQ x = x
    val op SEQ_UNIQ =
    DT(((("seq",9),[("nets",[5,8]),("seq",[0])]),["DISK_THM"]),
       [read"%32%22%35%26%35%27%50%44%42$2@$1@@%42$2@$0@@@%49$1@$0@@|@|@|@"])
  fun op SEQ_LIM x = x
    val op SEQ_LIM =
    DT(((("seq",13),
        [("bool",[15,25,26,53]),("seq",[10,12])]),["DISK_THM"]),
       [read"%32%11%48%65$0@@%42$0@%67$0@@@|@"])
  fun op SUBSEQ_SUC x = x
    val op SUBSEQ_SUC =
    DT(((("seq",15),
        [("arithmetic",[24,34,64,101]),("bool",[14,25,26,51,58,63]),
         ("num",[9]),("prim_rec",[15]),("seq",[14])]),["DISK_THM"]),
       [read"%31%10%48%81$0@@%34%19%46$1$0@@$1%59$0@@@|@@|@"])
  fun op MONO_SUC x = x
    val op MONO_SUC =
    DT(((("seq",17),
        [("arithmetic",[24,56,145]),("bool",[14,25,26,51,53,63]),
         ("num",[9]),("real",[25,55,61]),
         ("sat",[1,3,5,6,7,11,13,15,17,18]),("seq",[16])]),["DISK_THM"]),
       [read"%32%11%48%68$0@@%61%34%19%73$1%59$0@@@$1$0@@|@@%34%19%76$1%59$0@@@$1$0@@|@@@|@"])
  fun op MAX_LEMMA x = x
    val op MAX_LEMMA =
    DT(((("seq",18),
        [("bool",[14,25,26,27,36,37,51,53,63]),("num",[9]),
         ("prim_rec",[6,19]),("real",[53,55,58,61,83])]),["DISK_THM"]),
       [read"%32%20%34%0%54%14%34%19%50%46$0@$2@@%75%62$3$0@@@$1@@|@|@|@|@"])
  fun op SEQ_BOUNDED x = x
    val op SEQ_BOUNDED =
    DT(((("seq",19),
        [("arithmetic",[51,95,143]),("bool",[25,26,51,53,63]),
         ("nets",[12]),("real",[52,59]),("seq",[18])]),["DISK_THM"]),
       [read"%32%20%48%63%38%69@%51@@$0@@%54%14%34%19%75%62$2$0@@@$1@|@|@@|@"])
  fun op SEQ_BOUNDED_2 x = x
    val op SEQ_BOUNDED_2 =
    DT(((("seq",20),
        [("bool",[25,26,27,30,51,53,63,64]),
         ("real",[60,61,74,122,123,124,159,204,210,217]),
         ("seq",[19])]),["DISK_THM"]),
       [read"%32%11%35%14%35%15%50%34%19%44%76$2@$3$0@@@%76$3$0@@$1@@|@@%63%38%69@%51@@$2@@|@|@|@"])
  fun op SEQ_CBOUNDED x = x
    val op SEQ_CBOUNDED =
    DT(((("seq",21),
        [("arithmetic",[95,143]),("bool",[25,51,53,63]),("nets",[2]),
         ("real",[74]),("seq",[11]),("topology",[34])]),["DISK_THM"]),
       [read"%32%11%50%64$0@@%63%38%69@%51@@$0@@|@"])
  fun op SEQ_ICONV x = x
    val op SEQ_ICONV =
    DT(((("seq",22),
        [("bool",[25,26,27,30,41,51,53,56,58,63,64]),
         ("real",[4,11,22,25,28,48,59,60,76,93,124,154,204,217,270]),
         ("sat",[1,3,5,6,7,11,12,14,15]),("seq",[1,10,19])]),["DISK_THM"]),
       [read"%32%11%50%44%63%38%69@%51@@$0@@%34%17%34%19%50%51$1@$0@@%73$2$1@@$2$0@@@|@|@@@%65$0@@|@"])
  fun op SEQ_NEG_CONV x = x
    val op SEQ_NEG_CONV =
    DT(((("seq",23),
        [("bool",[25,26,53,58]),("real",[43]),
         ("seq",[5,10])]),["DISK_THM"]),
       [read"%32%11%48%65$0@@%65%19%78$1$0@@|@@|@"])
  fun op SEQ_NEG_BOUNDED x = x
    val op SEQ_NEG_BOUNDED =
    DT(((("seq",24),
        [("bool",[25,56]),("real",[208]),("seq",[19])]),["DISK_THM"]),
       [read"%32%11%48%63%38%69@%51@@%19%78$1$0@@|@@%63%38%69@%51@@$0@@|@"])
  fun op SEQ_BCONV x = x
    val op SEQ_BCONV =
    DT(((("seq",25),
        [("arithmetic",[143]),("bool",[25,36,51,58,63]),("real",[25,159]),
         ("seq",[16,22,23,24])]),["DISK_THM"]),
       [read"%32%11%50%44%63%38%69@%51@@$0@@%68$0@@@%65$0@@|@"])
  fun op SEQ_MONOSUB x = x
    val op SEQ_MONOSUB =
    DT(((("seq",26),
        [("arithmetic",[9,10,28,41,93,95,96,143]),
         ("bool",[2,7,14,15,25,26,27,30,36,51,53,58,63,92,98]),("num",[9]),
         ("prim_rec",[37]),("real",[11,25,51,58]),
         ("sat",[1,3,5,6,7,11,12,14,15]),("seq",[15,17])]),["DISK_THM"]),
       [read"%32%20%52%10%44%81$0@@%68%19$2$1$0@@|@@|@|@"])
  fun op SEQ_SBOUNDED x = x
    val op SEQ_SBOUNDED =
    DT(((("seq",27),[("bool",[25,63]),("seq",[19])]),["DISK_THM"]),
       [read"%32%20%31%10%50%63%38%69@%51@@$1@@%63%38%69@%51@@%19$2$1$0@@|@@|@|@"])
  fun op SEQ_SUBLE x = x
    val op SEQ_SUBLE =
    DT(((("seq",28),
        [("arithmetic",[38,41,59,93]),("bool",[14,25,26,27,51,54,58,63]),
         ("num",[9]),("prim_rec",[6]),("seq",[15])]),["DISK_THM"]),
       [read"%31%10%50%81$0@@%34%19%47$0@$1$0@@|@@|@"])
  fun op SEQ_DIRECT x = x
    val op SEQ_DIRECT =
    DT(((("seq",29),
        [("arithmetic",[93,95,143,144]),("bool",[51,63]),
         ("seq",[28])]),["DISK_THM"]),
       [read"%31%10%50%81$0@@%34%1%34%2%53%19%44%51$0@$2@@%51$3$0@@$1@@|@|@|@@|@"])
  fun op SEQ_CAUCHY x = x
    val op SEQ_CAUCHY =
    DT(((("seq",30),
        [("bool",[25,26,51,53,56,63]),("real",[60,77,144,149,172,209,213]),
         ("seq",[1,10,11,21,25,26,27,29])]),["DISK_THM"]),
       [read"%32%11%48%64$0@@%65$0@@|@"])
  fun op SEQ_LE x = x
    val op SEQ_LE =
    DT(((("seq",31),
        [("arithmetic",[95,143]),("bool",[51,53,63]),("nets",[5,27]),
         ("seq",[0])]),["DISK_THM"]),
       [read"%32%11%32%12%35%16%35%18%50%44%42$3@$1@@%44%42$2@$0@@%53%0%34%19%50%51$0@$1@@%76$5$0@@$4$0@@@|@|@@@@%76$1@$0@@|@|@|@|@"])
  fun op SEQ_SUC x = x
    val op SEQ_SUC =
    DT(((("seq",32),
        [("arithmetic",[28,38,56,59,93,143]),
         ("bool",[25,26,51,53,54,58,63]),("prim_rec",[7]),
         ("seq",[1])]),["DISK_THM"]),
       [read"%32%11%35%16%48%42$1@$0@@%42%19$2%59$0@@|@$0@@|@|@"])
  fun op SEQ_ABS x = x
    val op SEQ_ABS =
    DT(((("seq",33),
        [("bool",[25,56]),("real",[162,216]),("seq",[1])]),["DISK_THM"]),
       [read"%32%11%48%42%19%62$1$0@@|@%79%45@@@%42$0@%79%45@@@|@"])
  fun op SEQ_ABS_IMP x = x
    val op SEQ_ABS_IMP =
    DT(((("seq",34),[("nets",[26]),("seq",[0])]),["DISK_THM"]),
       [read"%32%11%35%16%50%42$1@$0@@%42%19%62$2$0@@|@%62$0@@@|@|@"])
  fun op SEQ_INV0 x = x
    val op SEQ_INV0 =
    DT(((("seq",35),
        [("bool",[25,51,58,63]),
         ("real",[12,24,59,104,105,106,162,168,215,217]),
         ("seq",[1])]),["DISK_THM"]),
       [read"%32%11%50%35%29%53%0%34%19%50%51$0@$1@@%74$3$0@@$2@@|@|@|@@%42%19%66$1$0@@|@%79%45@@@|@"])
  fun op SEQ_POWER_ABS x = x
    val op SEQ_POWER_ABS =
    DT(((("seq",36),
        [("arithmetic",[17,28,59,143]),("bool",[25,51,53,54,58,63]),
         ("prim_rec",[7]),
         ("real",
         [4,7,12,24,55,56,59,61,74,84,104,105,125,128,133,155,162,168,177,
          206,210,214,216,234,235,236,238,275]),
         ("seq",[1,35])]),["DISK_THM"]),
       [read"%35%6%50%75%62$0@@%79%58%56%60@@@@@%42%19%71%62$1@@$0@|@%79%45@@@|@"])
  fun op SEQ_POWER x = x
    val op SEQ_POWER =
    DT(((("seq",37),
        [("bool",[58]),("real",[237]),("seq",[33,36])]),["DISK_THM"]),
       [read"%35%6%50%75%62$0@@%79%58%56%60@@@@@%42%19%71$1@$0@|@%79%45@@@|@"])
  fun op NEST_LEMMA x = x
    val op NEST_LEMMA =
    DT(((("seq",38),
        [("arithmetic",[24,53,143]),
         ("bool",[14,25,36,37,51,52,53,54,58,63,64]),("num",[9]),
         ("real",[22,25,48,51,55,58,60,61,75,76,93,94,95,159,204]),
         ("sat",[1,3,5,6,7,11,15]),
         ("seq",[1,13,17,20,25,31])]),["DISK_THM"]),
       [read"%32%11%32%12%50%44%34%19%73$2%59$0@@@$2$0@@|@@%44%34%19%76$1%59$0@@@$1$0@@|@@%34%19%76$2$0@@$1$0@@|@@@@%54%16%54%18%44%76$1@$0@@%44%44%34%19%76$4$0@@$2@|@@%42$3@$1@@@%44%34%19%76$1@$3$0@@|@@%42$2@$0@@@@|@|@@|@|@"])
  fun op NEST_LEMMA_UNIQ x = x
    val op NEST_LEMMA_UNIQ =
    DT(((("seq",39),
        [("bool",[25,36,43,51,53,58,63]),("real",[87]),
         ("seq",[7,9,38])]),["DISK_THM"]),
       [read"%32%11%32%12%50%44%34%19%73$2%59$0@@@$2$0@@|@@%44%34%19%76$1%59$0@@@$1$0@@|@@%44%34%19%76$2$0@@$1$0@@|@@%42%19%80$2$0@@$1$0@@|@%79%45@@@@@@%54%16%44%44%34%19%76$3$0@@$1@|@@%42$2@$0@@@%44%34%19%76$1@$2$0@@|@@%42$1@$0@@@|@@|@|@"])
  fun op BOLZANO_LEMMA x = x
    val op BOLZANO_LEMMA =
    DT(((("seq",40),
        [("arithmetic",[18,25,53,143]),
         ("bool",[7,14,25,26,27,30,35,36,51,53,54,56,58,63,64]),
         ("num",[9]),("numeral",[3,6]),("pair",[7,8,9]),
         ("prim_rec",[7,15,37]),
         ("real",
         [4,6,7,8,15,17,18,19,22,25,26,27,29,30,38,40,55,60,77,92,93,95,99,
          110,129,130,133,144,146,147,149,175,195,202,203,204,213,215,219,
          233,235,236,237]),("sat",[1,3,5,6,7,11,15]),
         ("seq",[1,2,4,5,33,36,39])]),["DISK_THM"]),
       [read"%33%3%50%44%35%4%35%5%35%6%50%44%76$2@$1@@%44%76$1@$0@@%44$3%40$2@$1@@@$3%40$1@$0@@@@@@$3%40$2@$0@@@|@|@|@@%35%24%54%8%44%75%79%45@@$0@@%35%4%35%5%50%44%76$1@$3@@%44%76$3@$0@@%75%80$0@$1@@$2@@@@$4%40$1@$0@@@|@|@@|@|@@@%35%4%35%5%50%76$1@$0@@$2%40$1@$0@@@|@|@@|@"])
  fun op SUM_SUMMABLE x = x
    val op SUM_SUMMABLE =
    DT(((("seq",44),[("seq",[42])]),[]),
       [read"%32%11%35%16%50%85$1@$0@@%84$1@@|@|@"])
  fun op SUMMABLE_SUM x = x
    val op SUMMABLE_SUM =
    DT(((("seq",45),[("bool",[14,15]),("seq",[42,43])]),["DISK_THM"]),
       [read"%32%11%50%84$0@@%85$0@%83$0@@@|@"])
  fun op SUM_UNIQ x = x
    val op SUM_UNIQ =
    DT(((("seq",46),
        [("bool",[25,51,58,63]),("seq",[9,41,42,45])]),["DISK_THM"]),
       [read"%32%11%35%24%50%85$1@$0@@%49$0@%83$1@@@|@|@"])
  fun op SER_0 x = x
    val op SER_0 =
    DT(((("seq",47),
        [("arithmetic",[95,143,145]),("bool",[25,58,63]),
         ("real",[35,87,205,282,291]),("seq",[1,41])]),["DISK_THM"]),
       [read"%32%11%34%19%50%34%17%50%47$1@$0@@%49$2$0@@%79%45@@@|@@%85$1@%82%39%45@$0@@$1@@@|@|@"])
  fun op SER_POS_LE x = x
    val op SER_POS_LE =
    DT(((("seq",48),
        [("arithmetic",[143,145]),("bool",[25,58,63]),
         ("real",[122,282,288]),("sat",[1,3,5,6,7,11,12,14,15]),
         ("seq",[2,31,41,45])]),["DISK_THM"]),
       [read"%32%11%34%19%50%44%84$1@@%34%17%50%47$1@$0@@%76%79%45@@$2$0@@@|@@@%76%82%39%45@$0@@$1@@%83$1@@@|@|@"])
  fun op SER_POS_LT x = x
    val op SER_POS_LT =
    DT(((("seq",49),
        [("arithmetic",[17,24,56,64,93,95]),("bool",[25,51,58,63]),
         ("real",[7,58,59,124,280,282]),("seq",[48])]),["DISK_THM"]),
       [read"%32%11%34%19%50%44%84$1@@%34%17%50%47$1@$0@@%75%79%45@@$2$0@@@|@@@%75%82%39%45@$0@@$1@@%83$1@@@|@|@"])
  fun op SER_GROUP x = x
    val op SER_GROUP =
    DT(((("seq",50),
        [("arithmetic",[28,53,71,93,143,147]),("bool",[25,26,27,51,53,63]),
         ("prim_rec",[4]),("real",[299]),("seq",[1,41,45])]),["DISK_THM"]),
       [read"%32%11%34%13%50%44%84$1@@%46%45@$0@@@%85%19%82%39%36$0@$1@@$1@@$2@|@%83$1@@@|@|@"])
  fun op SER_PAIR x = x
    val op SER_PAIR =
    DT(((("seq",51),
        [("arithmetic",[18,72]),("prim_rec",[7]),
         ("seq",[50])]),["DISK_THM"]),
       [read"%32%11%50%84$0@@%85%19%82%39%36%58%57%60@@@$0@@%58%57%60@@@@$1@|@%83$0@@@|@"])
  fun op SER_OFFSET x = x
    val op SER_OFFSET =
    DT(((("seq",52),
        [("arithmetic",[53,93,143]),("bool",[25,51,58,63]),
         ("real",[4,6,7,8,22,38,43,302]),("seq",[1,41,45])]),["DISK_THM"]),
       [read"%32%11%50%84$0@@%34%13%85%19$2%37$0@$1@@|@%80%83$1@@%82%39%45@$0@@$1@@@|@@|@"])
  fun op SER_POS_LT_PAIR x = x
    val op SER_POS_LT_PAIR =
    DT(((("seq",53),
        [("arithmetic",[17,18,24,25,27,53,64,71,143]),
         ("bool",[14,25,26,51,53,56,58,63,64]),("num",[9]),
         ("real",[4,6,48,55,58,61,76,95,122,154,191,204,280]),
         ("seq",[1,41,45])]),["DISK_THM"]),
       [read"%32%11%34%19%50%44%84$1@@%34%7%75%79%45@@%72$2%37$1@%36%58%57%60@@@$0@@@@$2%37$1@%37%36%58%57%60@@@$0@@%58%56%60@@@@@@@|@@@%75%82%39%45@$0@@$1@@%83$1@@@|@|@"])
  fun op SER_ADD x = x
    val op SER_ADD =
    DT(((("seq",54),[("real",[292]),("seq",[3,41])]),["DISK_THM"]),
       [read"%32%22%35%25%32%28%35%30%50%44%85$3@$2@@%85$1@$0@@@%85%19%72$4$0@@$2$0@@|@%72$2@$0@@@|@|@|@|@"])
  fun op SER_CMUL x = x
    val op SER_CMUL =
    DT(((("seq",55),
        [("bool",[25,51,63]),("real",[293]),
         ("seq",[2,4,41])]),["DISK_THM"]),
       [read"%32%22%35%25%35%6%50%85$2@$1@@%85%19%77$1@$3$0@@|@%77$0@$1@@@|@|@|@"])
  fun op SER_NEG x = x
    val op SER_NEG =
    DT(((("seq",56),[("real",[102]),("seq",[55])]),["DISK_THM"]),
       [read"%32%22%35%25%50%85$1@$0@@%85%19%78$2$0@@|@%78$0@@@|@|@"])
  fun op SER_SUB x = x
    val op SER_SUB =
    DT(((("seq",57),
        [("bool",[25,53]),("real",[22]),("seq",[54,56])]),["DISK_THM"]),
       [read"%32%22%35%25%32%28%35%30%50%44%85$3@$2@@%85$1@$0@@@%85%19%80$4$0@@$2$0@@|@%80$2@$0@@@|@|@|@|@"])
  fun op SER_CDIV x = x
    val op SER_CDIV =
    DT(((("seq",58),[("real",[15,26]),("seq",[55])]),["DISK_THM"]),
       [read"%32%22%35%25%35%6%50%85$2@$1@@%85%19%43$3$0@@$1@|@%43$1@$0@@@|@|@|@"])
  fun op SER_CAUCHY x = x
    val op SER_CAUCHY =
    DT(((("seq",59),
        [("arithmetic",[53,93,143,144,145]),("bool",[25,26,51,58,63]),
         ("real",[213,283]),("sat",[1,3,5,6,7,11,14,15]),
         ("seq",[10,11,30,41,42])]),["DISK_THM"]),
       [read"%32%11%48%84$0@@%35%9%50%75%79%45@@$0@@%53%0%34%17%34%19%50%51$1@$2@@%75%62%82%39$1@$0@@$4@@@$3@@|@|@|@@|@@|@"])
  fun op SER_ZERO x = x
    val op SER_ZERO =
    DT(((("seq",60),
        [("arithmetic",[24]),("bool",[25,53,63]),("real",[7,162,280]),
         ("seq",[1,59])]),["DISK_THM"]),
       [read"%32%11%50%84$0@@%42$0@%79%45@@@|@"])
  fun op SER_COMPAR x = x
    val op SER_COMPAR =
    DT(((("seq",61),
        [("arithmetic",[25,53,93,143]),("bool",[25,51,63]),
         ("real",[60,217,284,285]),("seq",[59])]),["DISK_THM"]),
       [read"%32%11%32%12%50%44%53%0%34%19%50%51$0@$1@@%76%62$3$0@@@$2$0@@@|@|@@%84$0@@@%84$1@@|@|@"])
  fun op SER_COMPARA x = x
    val op SER_COMPARA =
    DT(((("seq",62),
        [("bool",[25,56]),("real",[216]),("seq",[61])]),["DISK_THM"]),
       [read"%32%11%32%12%50%44%53%0%34%19%50%51$0@$1@@%76%62$3$0@@@$2$0@@@|@|@@%84$0@@@%84%13%62$2$0@@|@@|@|@"])
  fun op SER_LE x = x
    val op SER_LE =
    DT(((("seq",63),
        [("arithmetic",[46,143]),("bool",[25,43,51,53,58,63]),
         ("real",[285]),("seq",[31,41,45])]),["DISK_THM"]),
       [read"%32%11%32%12%50%44%34%19%76$2$0@@$1$0@@|@@%44%84$1@@%84$0@@@@%76%83$1@@%83$0@@@|@|@"])
  fun op SER_LE2 x = x
    val op SER_LE2 =
    DT(((("seq",64),
        [("bool",[25,36,37,51,53,63]),("real",[61,217]),
         ("seq",[61,63])]),["DISK_THM"]),
       [read"%32%11%32%12%50%44%34%19%76%62$2$0@@@$1$0@@|@@%84$0@@@%44%84$1@@%76%83$1@@%83$0@@@@|@|@"])
  fun op SER_ACONV x = x
    val op SER_ACONV =
    DT(((("seq",65),
        [("bool",[25,51,63]),("real",[60,284,289]),
         ("seq",[59])]),["DISK_THM"]),
       [read"%32%11%50%84%19%62$1$0@@|@@%84$0@@|@"])
  fun op SER_ABS x = x
    val op SER_ABS =
    DT(((("seq",66),
        [("bool",[51,63]),("real",[290]),
         ("seq",[31,34,41,45,65])]),["DISK_THM"]),
       [read"%32%11%50%84%19%62$1$0@@|@@%76%62%83$0@@@%83%19%62$1$0@@|@@@|@"])
  fun op GP_FINITE x = x
    val op GP_FINITE =
    DT(((("seq",67),
        [("arithmetic",[24]),("bool",[14,25,26,27,52,54,56,58,63]),
         ("num",[9]),
         ("real",
         [4,6,8,15,22,27,29,31,86,87,98,99,136,148,233,
          280])]),["DISK_THM"]),
       [read"%35%24%50%87%49$0@%79%58%56%60@@@@@@%34%19%49%82%39%45@$0@@%19%71$2@$0@|@@%43%80%71$1@$0@@%79%58%56%60@@@@@%80$1@%79%58%56%60@@@@@@|@@|@"])
  fun op GP x = x
    val op GP =
    DT(((("seq",68),
        [("bool",[25,26,27,30,51,53,54,58,63]),
         ("real",[11,26,44,87,93,117,118,162,207]),
         ("seq",[2,7,8,37,41,67])]),["DISK_THM"]),
       [read"%35%24%50%75%62$0@@%79%58%56%60@@@@@%85%19%71$1@$0@|@%66%80%79%58%56%60@@@@$0@@@@|@"])
  fun op ABS_NEG_LEMMA x = x
    val op ABS_NEG_LEMMA =
    DT(((("seq",69),
        [("bool",[25,26,51,53,58,63]),
         ("real",[41,51,61,68,71,210,214])]),["DISK_THM"]),
       [read"%35%6%50%76$0@%79%45@@@%35%24%35%29%50%76%62$1@@%77$2@%62$0@@@@%49$1@%79%45@@@|@|@@|@"])
  fun op SER_RATIO x = x
    val op SER_RATIO =
    DT(((("seq",70),
        [("arithmetic",[24,28,38,43,53,143,145]),
         ("bool",[14,25,26,27,53,58,63,64]),("num",[9]),("prim_rec",[6]),
         ("real",
         [15,17,19,26,29,53,55,58,61,105,176,204,206,233,235,239,291]),
         ("seq",[42,55,59,61,68,69])]),["DISK_THM"]),
       [read"%32%11%35%6%34%0%50%44%75$1@%79%58%56%60@@@@@%34%19%50%51$0@$1@@%76%62$3%59$0@@@@%77$2@%62$3$0@@@@@|@@@%84$2@@|@|@|@"])
  fun op LE_SEQ_IMP_LE_LIM x = x
    val op LE_SEQ_IMP_LE_LIM =
    DT(((("seq",71),
        [("arithmetic",[95,143]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,124,
          129]),("real",[4,7,51,57,59,60,61,93,124,154,156,204,337]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[1])]),["DISK_THM"]),
       [read"%35%24%35%29%32%11%50%44%34%19%76$3@$1$0@@|@@%42$0@$1@@@%76$2@$1@@|@|@|@"])
  fun op SEQ_LE_IMP_LIM_LE x = x
    val op SEQ_LE_IMP_LIM_LE =
    DT(((("seq",72),
        [("arithmetic",[95,143]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,124,
          129]),("real",[4,7,51,55,57,61,78,93,122,154,156,204,337]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[1])]),["DISK_THM"]),
       [read"%35%24%35%29%32%11%50%44%34%19%76$1$0@@$3@|@@%42$0@$1@@@%76$1@$2@@|@|@|@"])
  fun op SEQ_MONO_LE x = x
    val op SEQ_MONO_LE =
    DT(((("seq",73),
        [("arithmetic",
         [24,25,27,46,62,71,93,95,143,144,172,173,177,180,269,348]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,78,93,94,
          96,101,104,105,124,129,146]),("num",[9]),("numeral",[0,3,5,8]),
         ("real",[4,7,51,55,57,61,93,122,154,156,204,337]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[1])]),["DISK_THM"]),
       [read"%32%11%35%24%34%19%50%44%34%19%76$3$0@@$3%37$0@%58%56%60@@@@@|@@%42$2@$1@@@%76$2$0@@$1@@|@|@|@"])
  fun op SEQ_LE_MONO x = x
    val op SEQ_LE_MONO =
    DT(((("seq",74),
        [("bool",[25,36,51,53,58,63,105,124]),("real",[159]),
         ("seq",[5,73])]),["DISK_THM"]),
       [read"%32%11%35%24%34%19%50%44%34%19%76$3%37$0@%58%56%60@@@@@$3$0@@|@@%42$2@$1@@@%76$1@$2$0@@@|@|@|@"])
  end
  val _ = DB.bindl "seq"
  [("tends_num_real",tends_num_real,DB.Def),
   ("convergent",convergent,DB.Def), ("cauchy",cauchy,DB.Def),
   ("lim",lim,DB.Def), ("subseq",subseq,DB.Def), ("mono",mono,DB.Def),
   ("sums",sums,DB.Def), ("summable",summable,DB.Def),
   ("suminf",suminf,DB.Def), ("SEQ",SEQ,DB.Thm),
   ("SEQ_CONST",SEQ_CONST,DB.Thm), ("SEQ_ADD",SEQ_ADD,DB.Thm),
   ("SEQ_MUL",SEQ_MUL,DB.Thm), ("SEQ_NEG",SEQ_NEG,DB.Thm),
   ("SEQ_INV",SEQ_INV,DB.Thm), ("SEQ_SUB",SEQ_SUB,DB.Thm),
   ("SEQ_DIV",SEQ_DIV,DB.Thm), ("SEQ_UNIQ",SEQ_UNIQ,DB.Thm),
   ("SEQ_LIM",SEQ_LIM,DB.Thm), ("SUBSEQ_SUC",SUBSEQ_SUC,DB.Thm),
   ("MONO_SUC",MONO_SUC,DB.Thm), ("MAX_LEMMA",MAX_LEMMA,DB.Thm),
   ("SEQ_BOUNDED",SEQ_BOUNDED,DB.Thm),
   ("SEQ_BOUNDED_2",SEQ_BOUNDED_2,DB.Thm),
   ("SEQ_CBOUNDED",SEQ_CBOUNDED,DB.Thm), ("SEQ_ICONV",SEQ_ICONV,DB.Thm),
   ("SEQ_NEG_CONV",SEQ_NEG_CONV,DB.Thm),
   ("SEQ_NEG_BOUNDED",SEQ_NEG_BOUNDED,DB.Thm),
   ("SEQ_BCONV",SEQ_BCONV,DB.Thm), ("SEQ_MONOSUB",SEQ_MONOSUB,DB.Thm),
   ("SEQ_SBOUNDED",SEQ_SBOUNDED,DB.Thm), ("SEQ_SUBLE",SEQ_SUBLE,DB.Thm),
   ("SEQ_DIRECT",SEQ_DIRECT,DB.Thm), ("SEQ_CAUCHY",SEQ_CAUCHY,DB.Thm),
   ("SEQ_LE",SEQ_LE,DB.Thm), ("SEQ_SUC",SEQ_SUC,DB.Thm),
   ("SEQ_ABS",SEQ_ABS,DB.Thm), ("SEQ_ABS_IMP",SEQ_ABS_IMP,DB.Thm),
   ("SEQ_INV0",SEQ_INV0,DB.Thm), ("SEQ_POWER_ABS",SEQ_POWER_ABS,DB.Thm),
   ("SEQ_POWER",SEQ_POWER,DB.Thm), ("NEST_LEMMA",NEST_LEMMA,DB.Thm),
   ("NEST_LEMMA_UNIQ",NEST_LEMMA_UNIQ,DB.Thm),
   ("BOLZANO_LEMMA",BOLZANO_LEMMA,DB.Thm),
   ("SUM_SUMMABLE",SUM_SUMMABLE,DB.Thm),
   ("SUMMABLE_SUM",SUMMABLE_SUM,DB.Thm), ("SUM_UNIQ",SUM_UNIQ,DB.Thm),
   ("SER_0",SER_0,DB.Thm), ("SER_POS_LE",SER_POS_LE,DB.Thm),
   ("SER_POS_LT",SER_POS_LT,DB.Thm), ("SER_GROUP",SER_GROUP,DB.Thm),
   ("SER_PAIR",SER_PAIR,DB.Thm), ("SER_OFFSET",SER_OFFSET,DB.Thm),
   ("SER_POS_LT_PAIR",SER_POS_LT_PAIR,DB.Thm), ("SER_ADD",SER_ADD,DB.Thm),
   ("SER_CMUL",SER_CMUL,DB.Thm), ("SER_NEG",SER_NEG,DB.Thm),
   ("SER_SUB",SER_SUB,DB.Thm), ("SER_CDIV",SER_CDIV,DB.Thm),
   ("SER_CAUCHY",SER_CAUCHY,DB.Thm), ("SER_ZERO",SER_ZERO,DB.Thm),
   ("SER_COMPAR",SER_COMPAR,DB.Thm), ("SER_COMPARA",SER_COMPARA,DB.Thm),
   ("SER_LE",SER_LE,DB.Thm), ("SER_LE2",SER_LE2,DB.Thm),
   ("SER_ACONV",SER_ACONV,DB.Thm), ("SER_ABS",SER_ABS,DB.Thm),
   ("GP_FINITE",GP_FINITE,DB.Thm), ("GP",GP,DB.Thm),
   ("ABS_NEG_LEMMA",ABS_NEG_LEMMA,DB.Thm), ("SER_RATIO",SER_RATIO,DB.Thm),
   ("LE_SEQ_IMP_LE_LIM",LE_SEQ_IMP_LE_LIM,DB.Thm),
   ("SEQ_LE_IMP_LIM_LE",SEQ_LE_IMP_LIM_LE,DB.Thm),
   ("SEQ_MONO_LE",SEQ_MONO_LE,DB.Thm), ("SEQ_LE_MONO",SEQ_LE_MONO,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("netsTheory.nets_grammars",
                          netsTheory.nets_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-->", (Term.prim_mk_const { Name = "-->", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-->", (Term.prim_mk_const { Name = "-->", Thy = "seq"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "-->"))
       (Infix(HOLgrammars.RIGHT, 750))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("convergent", (Term.prim_mk_const { Name = "convergent", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("convergent", (Term.prim_mk_const { Name = "convergent", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cauchy", (Term.prim_mk_const { Name = "cauchy", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cauchy", (Term.prim_mk_const { Name = "cauchy", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lim", (Term.prim_mk_const { Name = "lim", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lim", (Term.prim_mk_const { Name = "lim", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subseq", (Term.prim_mk_const { Name = "subseq", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("subseq", (Term.prim_mk_const { Name = "subseq", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono", (Term.prim_mk_const { Name = "mono", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono", (Term.prim_mk_const { Name = "mono", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sums", (Term.prim_mk_const { Name = "sums", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sums", (Term.prim_mk_const { Name = "sums", Thy = "seq"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "sums"))
       (Infix(HOLgrammars.RIGHT, 750))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("summable", (Term.prim_mk_const { Name = "summable", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("summable", (Term.prim_mk_const { Name = "summable", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("suminf", (Term.prim_mk_const { Name = "suminf", Thy = "seq"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("suminf", (Term.prim_mk_const { Name = "suminf", Thy = "seq"}))
  val seq_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "seq"
end
