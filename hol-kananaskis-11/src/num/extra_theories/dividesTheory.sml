structure dividesTheory :> dividesTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading dividesTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open numeralTheory whileTheory
  in end;
  val _ = Theory.link_parents
          ("divides",
          Arbnum.fromString "1488586176",
          Arbnum.fromString "471620")
          [("numeral",
           Arbnum.fromString "1488586081",
           Arbnum.fromString "951418"),
           ("while",
           Arbnum.fromString "1488586097",
           Arbnum.fromString "778651")];
  val _ = Theory.incorporate_types "divides" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("bool", "COND"), ID("bool", "F"), ID("arithmetic", "FACT"),
   ID("while", "LEAST"), ID("arithmetic", "MOD"),
   ID("arithmetic", "NUMERAL"), ID("divides", "PRIMES"), ID("num", "SUC"),
   ID("bool", "T"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("divides", "divides"), ID("divides", "prime"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [0, 1, 1],
   TYOP [0, 2, 0], TYOP [0, 1, 4], TYOP [0, 0, 0], TYOP [0, 0, 7],
   TYOP [0, 0, 8], TYOP [0, 2, 1]]
  end
  val _ = Theory.incorporate_consts "divides" tyvector
     [("prime", 2), ("divides", 3), ("PRIMES", 4)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 1), TMV("b", 1), TMV("c", 1), TMV("i", 1), TMV("j", 1),
   TMV("m", 1), TMV("n", 1), TMV("p", 1), TMV("q", 1), TMV("x", 1),
   TMC(3, 5), TMC(4, 6), TMC(5, 6), TMC(6, 6), TMC(7, 8), TMC(8, 1),
   TMC(9, 3), TMC(10, 3), TMC(11, 8), TMC(11, 3), TMC(12, 8), TMC(13, 5),
   TMC(14, 4), TMC(15, 4), TMC(16, 9), TMC(17, 0), TMC(18, 4), TMC(19, 10),
   TMC(20, 6), TMC(21, 4), TMC(22, 4), TMC(23, 4), TMC(24, 0), TMC(25, 1),
   TMC(26, 8), TMC(27, 3), TMC(28, 2), TMC(29, 7)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op divides_def x = x
    val op divides_def =
    DT(((("divides",0),[]),[]),
       [read"%10%0%10%1%18%35$1@$0@@%21%8%19$1@%11$0@$2@@|@@|@|@"])
  fun op prime_def x = x
    val op prime_def =
    DT(((("divides",18),[]),[]),
       [read"%10%0%18%36$0@@%14%37%19$0@%29%22%33@@@@@%10%1%20%35$0@$1@@%34%19$0@$1@@%19$0@%29%22%33@@@@@|@@@|@"])
  fun op PRIMES_def x = x
    val op PRIMES_def =
    DT(((("divides",28),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%14%19%30%15@@%29%23%33@@@@%10%6%19%30%31$0@@@%27%7%14%36$0@@%16%30$1@@$0@@|@@|@@"])
  fun op ALL_DIVIDES_0 x = x
    val op ALL_DIVIDES_0 =
    DT(((("divides",1),
        [("arithmetic",[71]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%35$0@%15@|@"])
  fun op ZERO_DIVIDES x = x
    val op ZERO_DIVIDES =
    DT(((("divides",2),
        [("arithmetic",[67]),("bool",[25,37,56]),
         ("divides",[0])]),["DISK_THM"]),
       [read"%18%35%15@%5@@%19%5@%15@@"])
  fun op DIVIDES_REFL x = x
    val op DIVIDES_REFL =
    DT(((("divides",3),
        [("arithmetic",[71]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%35$0@$0@|@"])
  fun op DIVIDES_TRANS x = x
    val op DIVIDES_TRANS =
    DT(((("divides",4),
        [("arithmetic",[76]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%10%2%20%14%35$2@$1@@%35$1@$0@@@%35$2@$0@@|@|@|@"])
  fun op ONE_DIVIDES_ALL x = x
    val op ONE_DIVIDES_ALL =
    DT(((("divides",5),
        [("arithmetic",[71]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%35%29%22%33@@@$0@|@"])
  fun op DIVIDES_ONE x = x
    val op DIVIDES_ONE =
    DT(((("divides",6),
        [("arithmetic",[71,149]),
         ("bool",[2,15,25,26,53,54,55,58,63,74,84,99]),("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%9%18%35$0@%29%22%33@@@@%19$0@%29%22%33@@@@|@"])
  fun op DIVIDES_ADD_1 x = x
    val op DIVIDES_ADD_1 =
    DT(((("divides",7),
        [("arithmetic",[74]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%10%2%20%14%35$2@$1@@%35$2@$0@@@%35$2@%12$1@$0@@@|@|@|@"])
  fun op DIVIDES_ADD_2 x = x
    val op DIVIDES_ADD_2 =
    DT(((("divides",8),
        [("arithmetic",[24,25,27,46,71,73,93,100,172,173,177,180,269]),
         ("bool",[25,36,43,52,54,58,63,93,96,101,104,105,124]),
         ("divides",[0]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%10%0%10%1%10%2%20%14%35$2@$1@@%35$2@%12$1@$0@@@@%35$2@$0@@|@|@|@"])
  fun op DIVIDES_SUB x = x
    val op DIVIDES_SUB =
    DT(((("divides",9),
        [("arithmetic",[99]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%10%2%20%14%35$2@$1@@%35$2@$0@@@%35$2@%13$1@$0@@@|@|@|@"])
  fun op DIVIDES_LE x = x
    val op DIVIDES_LE =
    DT(((("divides",10),
        [("arithmetic",[28,41,46,67,71,93,172,173,176,180,190]),
         ("bool",[25,26,27,36,37,52,53,54,58,63,104,105,124]),
         ("divides",[0]),("num",[7]),("numeral",[3,8]),("prim_rec",[4,7]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%20%14%16%15@$0@@%35$1@$0@@@%17$1@$0@@|@|@"])
  fun op DIVIDES_LEQ_OR_ZERO x = x
    val op DIVIDES_LEQ_OR_ZERO =
    DT(((("divides",11),
        [("arithmetic",[28,73,148,190]),
         ("bool",[25,26,27,52,56,58,63,105,124]),("divides",[0]),
         ("num",[7]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%10%5%10%6%20%35$1@$0@@%34%17$1@$0@@%19$0@%15@@@|@|@"])
  fun op NOT_LT_DIVIDES x = x
    val op NOT_LT_DIVIDES =
    DT(((("divides",12),
        [("arithmetic",[61]),("bool",[25,53,54,63]),("divides",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%10%0%10%1%20%14%16%15@$0@@%16$0@$1@@@%37%35$1@$0@@@|@|@"])
  fun op DIVIDES_ANTISYM x = x
    val op DIVIDES_ANTISYM =
    DT(((("divides",13),
        [("arithmetic",[28,67,106,148]),
         ("bool",[25,26,27,37,51,52,53,54,56,58,63,105,124,140]),
         ("divides",[0,10]),("num",[7]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%20%14%35$1@$0@@%35$0@$1@@@%19$1@$0@@|@|@"])
  fun op DIVIDES_MULT x = x
    val op DIVIDES_MULT =
    DT(((("divides",14),
        [("arithmetic",[72,76]),("bool",[2,15,25,26,53,54,55,58,63,74,84]),
         ("divides",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%10%2%20%35$2@$1@@%35$2@%11$1@$0@@@|@|@|@"])
  fun op DIVIDES_MULT_LEFT x = x
    val op DIVIDES_MULT_LEFT =
    DT(((("divides",15),
        [("arithmetic",[67,70,71,73,76,127,149]),
         ("bool",[25,51,52,53,54,55,56,58,63,99,102,105,106,124]),
         ("divides",[0,1,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%6%10%5%18%35%11$1@$0@@$0@@%34%19$0@%15@@%19$1@%29%22%33@@@@@|@|@"])
  fun op DIVIDES_FACT x = x
    val op DIVIDES_FACT =
    DT(((("divides",16),
        [("arithmetic",[28,73,104,156]),
         ("bool",[25,26,27,53,58,63,105,124,140]),("divides",[0]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%10%1%20%16%15@$0@@%35$0@%26$0@@@|@"])
  fun op LEQ_DIVIDES_FACT x = x
    val op LEQ_DIVIDES_FACT =
    DT(((("divides",17),
        [("arithmetic",[24,28,73,146,156]),
         ("bool",[2,14,15,25,26,53,54,58,63,75,105,124]),
         ("divides",[3,14]),("num",[9]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%5%10%6%20%14%16%15@$1@@%17$1@$0@@@%35$1@%26$0@@@|@|@"])
  fun op NOT_PRIME_0 x = x
    val op NOT_PRIME_0 =
    DT(((("divides",19),
        [("bool",[25,26,27,36,51,52,53,54,56,58,63,105,124]),
         ("divides",[1,18]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%37%36%15@@"])
  fun op NOT_PRIME_1 x = x
    val op NOT_PRIME_1 =
    DT(((("divides",20),
        [("bool",[25,51,52,54,56,58,105,124]),
         ("divides",[18])]),["DISK_THM"]), [read"%37%36%29%22%33@@@@"])
  fun op PRIME_2 x = x
    val op PRIME_2 =
    DT(((("divides",21),
        [("arithmetic",[29,41,46,71,93,173,177,180]),
         ("bool",[25,36,51,52,53,54,55,63,93,96,101,104,105]),
         ("divides",[2,10,18]),("numeral",[0,3,5,6,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%36%29%23%33@@@"])
  fun op PRIME_3 x = x
    val op PRIME_3 =
    DT(((("divides",22),
        [("arithmetic",[46,71,73,93,173,177,180,214,215,257]),
         ("bool",
         [8,14,25,26,27,30,36,37,51,52,54,56,58,63,64,93,96,101,104,105]),
         ("divides",[0,2,10,18]),
         ("numeral",[0,3,5,6,7,8,17,21,34,35,40,41]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%36%29%22%22%33@@@@"])
  fun op PRIME_POS x = x
    val op PRIME_POS =
    DT(((("divides",23),
        [("arithmetic",[28]),("bool",[25,26,27,53,58,63,105,124]),
         ("divides",[19]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%10%7%20%36$0@@%16%15@$0@@|@"])
  fun op ONE_LT_PRIME x = x
    val op ONE_LT_PRIME =
    DT(((("divides",24),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",[25,36,52,53,54,63,93,96,104,105]),("divides",[19,20]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%7%20%36$0@@%16%29%22%33@@@$0@@|@"])
  fun op prime_divides_only_self x = x
    val op prime_divides_only_self =
    DT(((("divides",25),
        [("arithmetic",[72,73,149]),
         ("bool",[2,15,25,26,27,51,53,54,55,58,63,74,84,105,124]),
         ("divides",[0,18,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%5%10%6%20%14%36$1@@%14%36$0@@%35$1@$0@@@@%19$1@$0@@|@|@"])
  fun op PRIME_FACTOR x = x
    val op PRIME_FACTOR =
    DT(((("divides",26),
        [("arithmetic",[10,110]),
         ("bool",[2,14,15,25,26,30,53,54,58,63,75,84,99,100]),
         ("divides",[1,3,4,11,18,21]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%6%20%37%19$0@%29%22%33@@@@@%21%7%14%36$0@@%35$0@$1@@|@@|@"])
  fun op EUCLID x = x
    val op EUCLID =
    DT(((("divides",27),
        [("arithmetic",[25,29,59,81,157]),
         ("bool",[2,15,25,26,27,48,53,54,63,100]),
         ("divides",[6,8,17,20,23,26]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%6%21%7%14%16$1@$0@@%36$0@@|@|@"])
  fun op primePRIMES x = x
    val op primePRIMES =
    DT(((("divides",29),
        [("arithmetic",[28]),("bool",[2,15,25,26,53,54,58,63,96,105,124]),
         ("divides",[21,27,28]),("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("while",[9])]),["DISK_THM"]), [read"%10%6%36%30$0@@|@"])
  fun op INFINITE_PRIMES x = x
    val op INFINITE_PRIMES =
    DT(((("divides",30),
        [("bool",[2,15,25,26,53,54,58,63,96,105,124]),("divides",[27,28]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%10%6%16%30$0@@%30%31$0@@@|@"])
  fun op LT_PRIMES x = x
    val op LT_PRIMES =
    DT(((("divides",31),
        [("arithmetic",[34]),("bool",[14,25,26,27,53,54,58,63,99,105,124]),
         ("divides",[30]),("num",[9]),("prim_rec",[6,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%5%10%6%20%16$1@$0@@%16%30$1@@%30$0@@@|@|@"])
  fun op PRIMES_11 x = x
    val op PRIMES_11 =
    DT(((("divides",32),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,177,180]),
         ("bool",[25,36,52,53,54,55,63,96,101,104,105]),("divides",[31]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%5%10%6%20%19%30$1@@%30$0@@@%19$1@$0@@|@|@"])
  fun op INDEX_LESS_PRIMES x = x
    val op INDEX_LESS_PRIMES =
    DT(((("divides",33),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",[14,25,26,36,53,54,58,63,96,101,104,105,124]),
         ("divides",[28,29,30]),("num",[9]),("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("while",[9])]),["DISK_THM"]), [read"%10%6%16$0@%30$0@@|@"])
  fun op EUCLID_PRIMES x = x
    val op EUCLID_PRIMES =
    DT(((("divides",34),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",[25,36,53,54,63,71,72,104,105]),("divides",[33]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%10%6%21%3%16$1@%30$0@@|@|@"])
  fun op NEXT_LARGER_PRIME x = x
    val op NEXT_LARGER_PRIME =
    DT(((("divides",35),
        [("arithmetic",[59,109]),("bool",[2,15,25,26,53,54,63,75,99]),
         ("divides",[34]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%10%6%21%3%14%16$1@%30$0@@@%10%4%20%16$0@$1@@%17%30$0@@$2@@|@@|@|@"])
  fun op PRIMES_NO_GAP x = x
    val op PRIMES_NO_GAP =
    DT(((("divides",36),
        [("bool",[25,26,53,54,58,63,96,101,105,124]),
         ("divides",[28,29,30]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9])]),["DISK_THM"]),
       [read"%10%6%10%7%20%14%16%30$1@@$0@@%14%16$0@%30%31$1@@@@%36$0@@@@%25@|@|@"])
  fun op PRIMES_ONTO x = x
    val op PRIMES_ONTO =
    DT(((("divides",37),
        [("arithmetic",[10,24,25,28,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [14,25,26,36,43,52,53,54,56,63,71,72,75,92,93,96,99,104,105,107]),
         ("combin",[1,5,19,20]),("divides",[19,20,28,35,36]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%7%20%36$0@@%21%3%19%30$0@@$1@|@@|@"])
  fun op PRIME_INDEX x = x
    val op PRIME_INDEX =
    DT(((("divides",38),
        [("bool",[2,15,25,26,53,54,63]),("divides",[29,37]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%7%18%36$0@@%21%3%19$1@%30$0@@|@@|@"])
  fun op ONE_LT_PRIMES x = x
    val op ONE_LT_PRIMES =
    DT(((("divides",39),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",[25,36,52,53,54,63,93,96,104,105]),("divides",[19,20,29]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%6%16%29%22%33@@@%30$0@@|@"])
  fun op ZERO_LT_PRIMES x = x
    val op ZERO_LT_PRIMES =
    DT(((("divides",40),
        [("arithmetic",[34,59]),("bool",[25,53,54,63,104]),
         ("divides",[39]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%10%6%16%15@%30$0@@|@"])
  fun op compute_divides x = x
    val op compute_divides =
    DT(((("divides",41),
        [("arithmetic",
         [24,28,46,59,67,69,71,72,73,93,148,173,177,180,189,217,221,243]),
         ("bool",
         [2,5,15,25,26,27,30,36,37,51,52,53,54,55,56,58,63,64,74,83,84,96,
          99,100,101,104,105,129]),("divides",[0]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%10%0%10%1%18%35$1@$0@@%24%19$1@%15@@%19$0@%15@@%24%19$1@%29%22%33@@@@%32@%24%19$0@%15@@%32@%19%28$0@$1@@%15@@@@@|@|@"])
  end
  val _ = DB.bindl "divides"
  [("divides_def",divides_def,DB.Def), ("prime_def",prime_def,DB.Def),
   ("PRIMES_def",PRIMES_def,DB.Def),
   ("ALL_DIVIDES_0",ALL_DIVIDES_0,DB.Thm),
   ("ZERO_DIVIDES",ZERO_DIVIDES,DB.Thm),
   ("DIVIDES_REFL",DIVIDES_REFL,DB.Thm),
   ("DIVIDES_TRANS",DIVIDES_TRANS,DB.Thm),
   ("ONE_DIVIDES_ALL",ONE_DIVIDES_ALL,DB.Thm),
   ("DIVIDES_ONE",DIVIDES_ONE,DB.Thm),
   ("DIVIDES_ADD_1",DIVIDES_ADD_1,DB.Thm),
   ("DIVIDES_ADD_2",DIVIDES_ADD_2,DB.Thm),
   ("DIVIDES_SUB",DIVIDES_SUB,DB.Thm), ("DIVIDES_LE",DIVIDES_LE,DB.Thm),
   ("DIVIDES_LEQ_OR_ZERO",DIVIDES_LEQ_OR_ZERO,DB.Thm),
   ("NOT_LT_DIVIDES",NOT_LT_DIVIDES,DB.Thm),
   ("DIVIDES_ANTISYM",DIVIDES_ANTISYM,DB.Thm),
   ("DIVIDES_MULT",DIVIDES_MULT,DB.Thm),
   ("DIVIDES_MULT_LEFT",DIVIDES_MULT_LEFT,DB.Thm),
   ("DIVIDES_FACT",DIVIDES_FACT,DB.Thm),
   ("LEQ_DIVIDES_FACT",LEQ_DIVIDES_FACT,DB.Thm),
   ("NOT_PRIME_0",NOT_PRIME_0,DB.Thm), ("NOT_PRIME_1",NOT_PRIME_1,DB.Thm),
   ("PRIME_2",PRIME_2,DB.Thm), ("PRIME_3",PRIME_3,DB.Thm),
   ("PRIME_POS",PRIME_POS,DB.Thm), ("ONE_LT_PRIME",ONE_LT_PRIME,DB.Thm),
   ("prime_divides_only_self",prime_divides_only_self,DB.Thm),
   ("PRIME_FACTOR",PRIME_FACTOR,DB.Thm), ("EUCLID",EUCLID,DB.Thm),
   ("primePRIMES",primePRIMES,DB.Thm),
   ("INFINITE_PRIMES",INFINITE_PRIMES,DB.Thm),
   ("LT_PRIMES",LT_PRIMES,DB.Thm), ("PRIMES_11",PRIMES_11,DB.Thm),
   ("INDEX_LESS_PRIMES",INDEX_LESS_PRIMES,DB.Thm),
   ("EUCLID_PRIMES",EUCLID_PRIMES,DB.Thm),
   ("NEXT_LARGER_PRIME",NEXT_LARGER_PRIME,DB.Thm),
   ("PRIMES_NO_GAP",PRIMES_NO_GAP,DB.Thm),
   ("PRIMES_ONTO",PRIMES_ONTO,DB.Thm), ("PRIME_INDEX",PRIME_INDEX,DB.Thm),
   ("ONE_LT_PRIMES",ONE_LT_PRIMES,DB.Thm),
   ("ZERO_LT_PRIMES",ZERO_LT_PRIMES,DB.Thm),
   ("compute_divides",compute_divides,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("numeralTheory.numeral_grammars",
                          numeralTheory.numeral_grammars),
                         ("whileTheory.while_grammars",
                          whileTheory.while_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("divides", (Term.prim_mk_const { Name = "divides", Thy = "divides"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("divides", (Term.prim_mk_const { Name = "divides", Thy = "divides"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prime", (Term.prim_mk_const { Name = "prime", Thy = "divides"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prime", (Term.prim_mk_const { Name = "prime", Thy = "divides"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PRIMES", (Term.prim_mk_const { Name = "PRIMES", Thy = "divides"}))
  val divides_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "divides",
    thydataty = "simp",
    data =
        "divides.ALL_DIVIDES_0 divides.DIVIDES_ONE divides.PRIME_3 divides.PRIME_2 divides.NOT_PRIME_1 divides.NOT_PRIME_0 divides.DIVIDES_REFL divides.ONE_DIVIDES_ALL divides.ZERO_DIVIDES"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "divides",
    thydataty = "compute",
    data = "divides.compute_divides"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "divides"
end
