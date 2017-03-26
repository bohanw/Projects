structure gcdTheory :> gcdTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading gcdTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open basicSizeTheory dividesTheory
  in end;
  val _ = Theory.link_parents
          ("gcd",Arbnum.fromString "1488586186",Arbnum.fromString "995298")
          [("basicSize",
           Arbnum.fromString "1488586093",
           Arbnum.fromString "153614"),
           ("divides",
           Arbnum.fromString "1488586176",
           Arbnum.fromString "471620")];
  val _ = Theory.incorporate_types "gcd" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("min", "bool"),
   ID("pair", "prod"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("arithmetic", "DIV"),
   ID("arithmetic", "EVEN"), ID("combin", "I"), ID("arithmetic", "MOD"),
   ID("arithmetic", "NUMERAL"), ID("arithmetic", "ODD"), ID("num", "SUC"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("divides", "divides"), ID("gcd", "gcd"),
   ID("gcd", "gcd_tupled"), ID("gcd", "is_gcd"), ID("gcd", "lcm"),
   ID("arithmetic", "num_CASE"), ID("pair", "pair_CASE"),
   ID("divides", "prime"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYOP [2], TYOP [0, 0, 3],
   TYOP [0, 0, 4], TYOP [0, 0, 5], TYOP [3, 0, 0], TYOP [0, 7, 0],
   TYOP [0, 7, 3], TYOP [0, 7, 9], TYOP [0, 5, 3], TYOP [0, 11, 3],
   TYOP [0, 4, 3], TYOP [0, 0, 7], TYOP [0, 0, 14], TYOP [0, 3, 3],
   TYOP [0, 3, 16], TYOP [0, 8, 3], TYOP [0, 8, 18], TYOP [0, 10, 3],
   TYOP [0, 20, 10], TYOP [0, 3, 2], TYOP [0, 8, 8], TYOP [0, 23, 8],
   TYOP [0, 10, 24], TYOP [0, 1, 0], TYOP [0, 0, 26], TYOP [0, 0, 27],
   TYOP [0, 2, 0], TYOP [0, 7, 29]]
  end
  val _ = Theory.incorporate_consts "gcd" tyvector
     [("lcm", 2), ("is_gcd", 6), ("gcd_tupled", 8), ("gcd", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 5), TMV("R", 10), TMV("a", 0), TMV("a", 7), TMV("b", 0),
   TMV("c", 0), TMV("d", 0), TMV("gcd_tupled", 8), TMV("k", 0),
   TMV("m", 0), TMV("n", 0), TMV("p", 0), TMV("q", 0), TMV("v", 0),
   TMV("v1", 0), TMV("x", 0), TMV("x1", 0), TMV("y", 0), TMV("y'", 0),
   TMC(4, 12), TMC(4, 13), TMC(5, 2), TMC(6, 2), TMC(7, 15), TMC(8, 2),
   TMC(9, 17), TMC(10, 0), TMC(11, 5), TMC(12, 5), TMC(13, 17),
   TMC(13, 19), TMC(13, 5), TMC(14, 17), TMC(15, 13), TMC(16, 21),
   TMC(17, 1), TMC(18, 1), TMC(19, 22), TMC(20, 2), TMC(21, 4), TMC(22, 1),
   TMC(23, 2), TMC(24, 1), TMC(25, 4), TMC(26, 1), TMC(27, 20),
   TMC(28, 25), TMC(29, 0), TMC(30, 17), TMC(31, 5), TMC(32, 2),
   TMC(33, 8), TMC(34, 6), TMC(35, 2), TMC(36, 28), TMC(37, 30),
   TMC(38, 4), TMC(39, 16)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op is_gcd_def x = x
    val op is_gcd_def =
    DT(((("gcd",0),[]),[]),
       [read"%20%2%20%4%20%5%29%52$2@$1@$0@@%25%49$0@$2@@%25%49$0@$1@@%20%6%32%25%49$0@$3@@%49$0@$2@@@%49$0@$1@@|@@@@|@|@|@"])
  fun op gcd_tupled_primitive_def x = x
    val op gcd_tupled_primitive_def =
    DT(((("gcd",9),[]),[]),
       [read"%30%51@%46%34%1%25%45$0@@%25%20%15%20%17%32%57%28$0@$1@@@$2%23%44$1@@%24$0@$1@@@%23%44$1@@%44$0@@@@|@|@@%20%15%20%17%32%28$0@$1@@$2%23%24$1@$0@@%44$0@@@%23%44$1@@%44$0@@@@|@|@@@|@@%7%3%55$0@%13%17%54$1@%40$0@@%15%54$1@%40%44$0@@@%18%40%37%28$0@$1@@$5%23%24$1@$0@@%44$0@@@@$5%23%44$1@@%24$0@$1@@@@@|@|@||@||@@"])
  fun op gcd_curried_def x = x
    val op gcd_curried_def =
    DT(((("gcd",10),[]),[]),
       [read"%20%15%20%16%31%50$1@$0@@%51%23$1@$0@@@|@|@"])
  fun op lcm_def x = x
    val op lcm_def =
    DT(((("gcd",31),[]),[]),
       [read"%20%9%20%10%31%53$1@$0@@%37%48%31$1@%26@@%31$0@%26@@@%26@%38%21$1@$0@@%50$1@$0@@@@|@|@"])
  fun op IS_GCD_UNIQUE x = x
    val op IS_GCD_UNIQUE =
    DT(((("gcd",1),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("divides",[13]),("gcd",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%20%4%20%5%20%6%32%25%52$3@$2@$1@@%52$3@$2@$0@@@%31$1@$0@@|@|@|@|@"])
  fun op IS_GCD_REF x = x
    val op IS_GCD_REF =
    DT(((("gcd",2),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("divides",[3]),("gcd",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%52$0@$0@$0@|@"])
  fun op IS_GCD_SYM x = x
    val op IS_GCD_SYM =
    DT(((("gcd",3),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("gcd",[0]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%20%4%20%5%29%52$2@$1@$0@@%52$1@$2@$0@@|@|@|@"])
  fun op IS_GCD_0R x = x
    val op IS_GCD_0R =
    DT(((("gcd",4),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("divides",[1,3]),("gcd",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%52$0@%26@$0@|@"])
  fun op IS_GCD_0L x = x
    val op IS_GCD_0L =
    DT(((("gcd",5),
        [("bool",[25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,146]),
         ("divides",[1,3]),("gcd",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%52%26@$0@$0@|@"])
  fun op PRIME_IS_GCD x = x
    val op PRIME_IS_GCD =
    DT(((("gcd",6),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,93,
          94,96,146]),("divides",[5,18]),("gcd",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%11%20%4%32%56$1@@%48%49$1@$0@@%52$1@$0@%42%35%47@@@@@|@|@"])
  fun op IS_GCD_MINUS_L x = x
    val op IS_GCD_MINUS_L =
    DT(((("gcd",7),
        [("arithmetic",[25,77]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("divides",[7,8]),("gcd",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%2%20%4%20%5%32%25%28$1@$2@@%52%24$2@$1@@$1@$0@@@%52$2@$1@$0@@|@|@|@"])
  fun op IS_GCD_MINUS_R x = x
    val op IS_GCD_MINUS_R =
    DT(((("gcd",8),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("gcd",[3,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%20%4%20%5%32%25%28$2@$1@@%52$2@%24$1@$2@@$0@@@%52$2@$1@$0@@|@|@|@"])
  fun op gcd_ind x = x
    val op gcd_ind =
    DT(((("gcd",11),
        [("arithmetic",[24,25,27,28,46,59,71,88,93,173,176,180,200]),
         ("bool",[25,27,36,51,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("pair",[5,7,8,9,16]),("prim_rec",[7,42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%19%0%32%25%20%17$1%26@$0@|@@%25%20%15$1%44$0@@%26@|@@%20%15%20%17%32%25%32%57%28$0@$1@@@$2%44$1@@%24$0@$1@@@@%32%28$0@$1@@$2%24$1@$0@@%44$0@@@@@$2%44$1@@%44$0@@@|@|@@@@%20%13%20%14$2$1@$0@|@|@@|@"])
  fun op gcd_def x = x
    val op gcd_def =
    DT(((("gcd",12),
        [("arithmetic",[14,24,25,27,46,59,71,88,93,173,176,180,200]),
         ("bool",[15,25,36,51,53,54,58,63,96,101,104,105,124,129]),
         ("combin",[19]),("gcd",[9,10]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[7,42]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%25%20%17%31%50%26@$0@@$0@|@@%25%20%15%31%50%44$0@@%26@@%44$0@@|@@%20%17%20%15%31%50%44$0@@%44$1@@@%37%28$1@$0@@%50%24$0@$1@@%44$1@@@%50%44$0@@%24$1@$0@@@@|@|@@@"])
  fun op GCD_IS_GCD x = x
    val op GCD_IS_GCD =
    DT(((("gcd",13),
        [("arithmetic",
         [14,24,25,27,38,46,59,71,88,93,112,173,176,180,200]),
         ("bool",
         [13,15,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,93,94,96,101,
          104,105,124,129]),("combin",[19]),("gcd",[4,5,7,8,9,10,11]),
         ("numeral",[3,5,8]),("pair",[7,8,9,16,49]),("prim_rec",[7,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%2%20%4%52$1@$0@%50$1@$0@@|@|@"])
  fun op GCD_REF x = x
    val op GCD_REF =
    DT(((("gcd",14),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("gcd",[1,2,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%31%50$0@$0@@$0@|@"])
  fun op GCD_SYM x = x
    val op GCD_SYM =
    DT(((("gcd",15),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("gcd",[1,3,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%20%4%31%50$1@$0@@%50$0@$1@@|@|@"])
  fun op GCD_0R x = x
    val op GCD_0R =
    DT(((("gcd",16),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("gcd",[1,4,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%31%50$0@%26@@$0@|@"])
  fun op GCD_0L x = x
    val op GCD_0L =
    DT(((("gcd",17),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("gcd",[1,5,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%2%31%50%26@$0@@$0@|@"])
  fun op GCD_ADD_R x = x
    val op GCD_ADD_R =
    DT(((("gcd",18),
        [("arithmetic",[25,53,128]),("bool",[25,51,63,105]),
         ("gcd",[1,8,13])]),["DISK_THM"]),
       [read"%20%2%20%4%31%50$1@%22$1@$0@@@%50$1@$0@@|@|@"])
  fun op GCD_ADD_R_THM x = x
    val op GCD_ADD_R_THM =
    DT(((("gcd",19),[("arithmetic",[26]),("gcd",[18])]),["DISK_THM"]),
       [read"%25%20%2%20%4%31%50$1@%22$1@$0@@@%50$1@$0@@|@|@@%20%2%20%4%31%50$1@%22$0@$1@@@%50$1@$0@@|@|@@"])
  fun op GCD_ADD_L x = x
    val op GCD_ADD_L =
    DT(((("gcd",20),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("gcd",[15,18]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%20%2%20%4%31%50%22$1@$0@@$1@@%50$1@$0@@|@|@"])
  fun op GCD_ADD_L_THM x = x
    val op GCD_ADD_L_THM =
    DT(((("gcd",21),[("arithmetic",[26]),("gcd",[20])]),["DISK_THM"]),
       [read"%25%20%2%20%4%31%50%22$1@$0@@$1@@%50$1@$0@@|@|@@%20%2%20%4%31%50%22$0@$1@@$1@@%50$1@$0@@|@|@@"])
  fun op GCD_EQ_0 x = x
    val op GCD_EQ_0 =
    DT(((("gcd",22),
        [("arithmetic",[14,24,25,27,46,59,63,71,88,93,173,176,180,200]),
         ("bool",
         [15,25,26,27,30,36,51,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("combin",[19]),("gcd",[9,10,11]),("num",[7]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[7,42]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%20%10%20%9%29%31%50$1@$0@@%26@@%25%31$1@%26@@%31$0@%26@@@|@|@"])
  fun op GCD_1 x = x
    val op GCD_1 =
    DT(((("gcd",23),
        [("arithmetic",
         [14,24,25,27,46,59,62,71,88,93,147,172,173,176,177,180,200]),
         ("bool",
         [13,15,25,26,27,30,36,47,48,51,52,53,54,56,58,63,65,93,94,96,101,
          104,105,107,124,129]),("combin",[19]),("gcd",[9,10,11,15]),
         ("numeral",[3,5,6,8]),("pair",[7,8,9,16,49]),("prim_rec",[7,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%25%31%50%42%35%47@@@%15@@%42%35%47@@@@%31%50%15@%42%35%47@@@@%42%35%47@@@@"])
  fun op PRIME_GCD x = x
    val op PRIME_GCD =
    DT(((("gcd",24),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("gcd",[1,6,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%11%20%4%32%56$1@@%48%49$1@$0@@%31%50$1@$0@@%42%35%47@@@@@|@|@"])
  fun op L_EUCLIDES x = x
    val op L_EUCLIDES =
    DT(((("gcd",25),
        [("arithmetic",
         [14,24,25,27,46,53,59,67,71,72,75,88,93,172,173,176,177,180,200,
          269]),
         ("bool",
         [13,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,93,94,96,
          101,104,105,124,129]),("combin",[19]),("divides",[1,3,8,14]),
         ("gcd",[9,10,11]),("numeral",[3,5,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[7,42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%2%20%4%20%5%32%25%31%50$2@$1@@%42%35%47@@@@%49$1@%21$2@$0@@@@%49$1@$0@@|@|@|@"])
  fun op P_EUCLIDES x = x
    val op P_EUCLIDES =
    DT(((("gcd",26),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("gcd",[1,13,15,24,25]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%11%20%2%20%4%32%25%56$2@@%49$2@%21$1@$0@@@@%48%49$2@$1@@%49$2@$0@@@|@|@|@"])
  fun op FACTOR_OUT_GCD x = x
    val op FACTOR_OUT_GCD =
    DT(((("gcd",27),
        [("arithmetic",[76]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,72,73,74,75,78,
          80,81,84,93,94,96,146]),("divides",[0,15]),("gcd",[0,13,22]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%10%20%9%32%25%57%31$1@%26@@@%57%31$0@%26@@@@%33%11%33%12%25%31$3@%21$1@%50$3@$2@@@@%25%31$2@%21$0@%50$3@$2@@@@%31%50$1@$0@@%42%35%47@@@@@|@|@@|@|@"])
  fun op GCD_SUCfree_ind x = x
    val op GCD_SUCfree_ind =
    DT(((("gcd",28),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,199,269]),
         ("bool",
         [25,30,36,43,51,52,53,54,55,58,63,93,96,99,101,104,105,124]),
         ("numeral",[3,5,8]),("pair",[16,25,53,56]),("prim_rec",[42]),
         ("relation",[101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%19%0%32%25%20%17$1%26@$0@|@@%25%20%15%20%17%32$2$1@$0@@$2$0@$1@@|@|@@%25%20%15$1$0@$0@|@@%20%15%20%17%32%25%27%26@$1@@%25%27%26@$0@@$2$1@$0@@@@$2$1@%22$1@$0@@@|@|@@@@@%20%9%20%10$2$1@$0@|@|@@|@"])
  fun op LINEAR_GCD x = x
    val op LINEAR_GCD =
    DT(((("gcd",29),
        [("arithmetic",
         [22,25,26,27,41,46,59,67,69,71,73,74,75,79,91,93,172,173,177,
          180]),
         ("bool",
         [13,25,26,27,30,36,37,43,47,48,51,52,53,54,56,58,63,72,78,80,81,
          93,94,96,104,105,107,124,146]),("gcd",[14,15,17,19,28]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%10%20%9%32%57%31$1@%26@@@%33%11%33%12%31%21$1@$3@@%22%21$0@$2@@%50$2@$3@@@|@|@@|@|@"])
  fun op GCD_EFFICIENTLY x = x
    val op GCD_EFFICIENTLY =
    DT(((("gcd",30),
        [("arithmetic",
         [14,24,25,27,28,38,41,46,59,62,67,71,73,88,93,112,114,147,172,173,
          176,177,180,195,197,200,209,219,269]),
         ("bool",
         [14,15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,65,93,96,101,104,
          105,124,129,147]),("combin",[19]),("gcd",[9,10,15,16,17]),
         ("marker",[6]),("num",[9]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[7,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%2%20%4%31%50$1@$0@@%37%31$1@%26@@$0@%50%41$0@$1@@$1@@@|@|@"])
  fun op LCM_IS_LEAST_COMMON_MULTIPLE x = x
    val op LCM_IS_LEAST_COMMON_MULTIPLE =
    DT(((("gcd",32),
        [("arithmetic",
         [22,24,25,41,46,59,67,71,73,76,93,102,127,148,172,173,177,180,214,
          275]),
         ("bool",
         [2,13,15,25,26,27,30,36,43,47,48,51,52,53,54,55,56,58,63,72,74,78,
          80,81,84,93,94,96,100,101,104,105,124,129,146,147]),
         ("divides",[0,1,2]),("gcd",[16,17,25,27,31]),("marker",[6]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%25%49%9@%53%9@%10@@@%25%49%10@%53%9@%10@@@%20%11%32%25%49%9@$0@@%49%10@$0@@@%49%53%9@%10@@$0@@|@@@"])
  fun op LCM_0 x = x
    val op LCM_0 =
    DT(((("gcd",33),
        [("arithmetic",[67,73]),("bool",[25,52,56,58,105,129,147]),
         ("gcd",[16,17,31])]),["DISK_THM"]),
       [read"%25%31%53%26@%15@@%26@@%31%53%15@%26@@%26@@"])
  fun op LCM_1 x = x
    val op LCM_1 =
    DT(((("gcd",34),
        [("arithmetic",[69,70,232]),
         ("bool",[25,26,27,30,52,56,58,63,64,105,129]),("gcd",[23,31]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%25%31%53%42%35%47@@@%15@@%15@@%31%53%15@%42%35%47@@@@%15@@"])
  fun op LCM_COMM x = x
    val op LCM_COMM =
    DT(((("gcd",35),
        [("arithmetic",[73]),
         ("bool",[25,26,27,30,51,54,56,58,63,64,96,105,129]),
         ("gcd",[15,31])]),["DISK_THM"]), [read"%31%53%2@%4@@%53%4@%2@@"])
  fun op LCM_LE x = x
    val op LCM_LE =
    DT(((("gcd",36),
        [("arithmetic",[41,46,71,73,76,93,152,172,173,176,180,184,227]),
         ("bool",
         [2,15,25,26,27,36,51,52,53,54,58,63,74,75,84,96,99,101,104,105,
          124,129,147]),("divides",[0]),("gcd",[0,13,15,31]),
         ("marker",[6]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%32%25%27%26@%9@@%27%26@%10@@@%25%28%9@%53%9@%10@@@%28%9@%53%10@%9@@@@"])
  fun op LCM_LEAST x = x
    val op LCM_LEAST =
    DT(((("gcd",37),
        [("arithmetic",[24,25,41,46,71,93,173,180]),
         ("bool",[25,36,53,54,63,75,96,101,104,105]),("divides",[10]),
         ("gcd",[32]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%32%25%27%26@%9@@%27%26@%10@@@%20%11%32%25%27%26@$0@@%27$0@%53%9@%10@@@@%48%57%49%9@$0@@@%57%49%10@$0@@@@|@@"])
  fun op GCD_COMMON_FACTOR x = x
    val op GCD_COMMON_FACTOR =
    DT(((("gcd",38),
        [("arithmetic",[14,24,25,27,46,59,71,75,88,93,173,176,180,200]),
         ("bool",[15,25,36,51,53,54,56,58,63,96,101,104,105,124,129]),
         ("combin",[19]),("gcd",[9,10,14,15,18,28]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[7,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%9%20%10%20%8%31%50%21$0@$2@@%21$0@$1@@@%21$0@%50$2@$1@@@|@|@|@"])
  fun op GCD_CANCEL_MULT x = x
    val op GCD_CANCEL_MULT =
    DT(((("gcd",39),
        [("arithmetic",[76]),("bool",[25,26,51,53,54,55,63,75]),
         ("divides",[0,4,5]),("gcd",[0,1,13,25]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%9%20%10%20%8%32%31%50$2@$0@@%42%35%47@@@@%31%50$2@%21$0@$1@@@%50$2@$1@@@|@|@|@"])
  fun op BINARY_GCD x = x
    val op BINARY_GCD =
    DT(((("gcd",40),
        [("arithmetic",[73,159,169,227]),
         ("bool",[25,26,27,52,53,56,58,63,105,124]),("divides",[0,21,23]),
         ("gcd",[15,24,38,39])]),["DISK_THM"]),
       [read"%20%9%20%10%25%32%25%39$1@@%39$0@@@%31%50$1@$0@@%21%42%36%47@@@%50%38$1@%42%36%47@@@@%38$0@%42%36%47@@@@@@@@%32%25%39$1@@%43$0@@@%31%50$1@$0@@%50%38$1@%42%36%47@@@@$0@@@@|@|@"])
  end
  val _ = DB.bindl "gcd"
  [("is_gcd_def",is_gcd_def,DB.Def),
   ("gcd_tupled_primitive_def",gcd_tupled_primitive_def,DB.Def),
   ("gcd_curried_def",gcd_curried_def,DB.Def), ("lcm_def",lcm_def,DB.Def),
   ("IS_GCD_UNIQUE",IS_GCD_UNIQUE,DB.Thm),
   ("IS_GCD_REF",IS_GCD_REF,DB.Thm), ("IS_GCD_SYM",IS_GCD_SYM,DB.Thm),
   ("IS_GCD_0R",IS_GCD_0R,DB.Thm), ("IS_GCD_0L",IS_GCD_0L,DB.Thm),
   ("PRIME_IS_GCD",PRIME_IS_GCD,DB.Thm),
   ("IS_GCD_MINUS_L",IS_GCD_MINUS_L,DB.Thm),
   ("IS_GCD_MINUS_R",IS_GCD_MINUS_R,DB.Thm), ("gcd_ind",gcd_ind,DB.Thm),
   ("gcd_def",gcd_def,DB.Thm), ("GCD_IS_GCD",GCD_IS_GCD,DB.Thm),
   ("GCD_REF",GCD_REF,DB.Thm), ("GCD_SYM",GCD_SYM,DB.Thm),
   ("GCD_0R",GCD_0R,DB.Thm), ("GCD_0L",GCD_0L,DB.Thm),
   ("GCD_ADD_R",GCD_ADD_R,DB.Thm), ("GCD_ADD_R_THM",GCD_ADD_R_THM,DB.Thm),
   ("GCD_ADD_L",GCD_ADD_L,DB.Thm), ("GCD_ADD_L_THM",GCD_ADD_L_THM,DB.Thm),
   ("GCD_EQ_0",GCD_EQ_0,DB.Thm), ("GCD_1",GCD_1,DB.Thm),
   ("PRIME_GCD",PRIME_GCD,DB.Thm), ("L_EUCLIDES",L_EUCLIDES,DB.Thm),
   ("P_EUCLIDES",P_EUCLIDES,DB.Thm),
   ("FACTOR_OUT_GCD",FACTOR_OUT_GCD,DB.Thm),
   ("GCD_SUCfree_ind",GCD_SUCfree_ind,DB.Thm),
   ("LINEAR_GCD",LINEAR_GCD,DB.Thm),
   ("GCD_EFFICIENTLY",GCD_EFFICIENTLY,DB.Thm),
   ("LCM_IS_LEAST_COMMON_MULTIPLE",LCM_IS_LEAST_COMMON_MULTIPLE,DB.Thm),
   ("LCM_0",LCM_0,DB.Thm), ("LCM_1",LCM_1,DB.Thm),
   ("LCM_COMM",LCM_COMM,DB.Thm), ("LCM_LE",LCM_LE,DB.Thm),
   ("LCM_LEAST",LCM_LEAST,DB.Thm),
   ("GCD_COMMON_FACTOR",GCD_COMMON_FACTOR,DB.Thm),
   ("GCD_CANCEL_MULT",GCD_CANCEL_MULT,DB.Thm),
   ("BINARY_GCD",BINARY_GCD,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("basicSizeTheory.basicSize_grammars",
                          basicSizeTheory.basicSize_grammars),
                         ("dividesTheory.divides_grammars",
                          dividesTheory.divides_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_gcd", (Term.prim_mk_const { Name = "is_gcd", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_gcd", (Term.prim_mk_const { Name = "is_gcd", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gcd_tupled", (Term.prim_mk_const { Name = "gcd_tupled", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gcd_tupled", (Term.prim_mk_const { Name = "gcd_tupled", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gcd", (Term.prim_mk_const { Name = "gcd", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gcd", (Term.prim_mk_const { Name = "gcd", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lcm", (Term.prim_mk_const { Name = "lcm", Thy = "gcd"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lcm", (Term.prim_mk_const { Name = "lcm", Thy = "gcd"}))
  val gcd_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "gcd",
    thydataty = "simp",
    data =
        "gcd.GCD_REF gcd.LCM_0 gcd.LCM_LE gcd.LCM_1 gcd.GCD_EQ_0 gcd.GCD_1 gcd.GCD_0L gcd.GCD_ADD_L_THM gcd.GCD_ADD_R_THM gcd.GCD_0R"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "gcd",
    thydataty = "compute",
    data = "gcd.GCD_EFFICIENTLY gcd.lcm_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "gcd"
end
