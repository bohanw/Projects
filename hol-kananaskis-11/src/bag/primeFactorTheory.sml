structure primeFactorTheory :> primeFactorTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading primeFactorTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open bagTheory gcdTheory
  in end;
  val _ = Theory.link_parents
          ("primeFactor",
          Arbnum.fromString "1488587119",
          Arbnum.fromString "340570")
          [("gcd",
           Arbnum.fromString "1488586186",
           Arbnum.fromString "995298"),
           ("bag",
           Arbnum.fromString "1488587017",
           Arbnum.fromString "666432")];
  val _ = Theory.incorporate_types "primeFactor" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("bool", "!"), ID("min", "bool"),
   ID("arithmetic", "*"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("bag", "BAG_GEN_PROD"), ID("bag", "BAG_IN"), ID("bag", "BAG_INSERT"),
   ID("bag", "BAG_UNION"), ID("arithmetic", "BIT1"),
   ID("bag", "EMPTY_BAG"), ID("arithmetic", "EXP"),
   ID("bag", "FINITE_BAG"), ID("arithmetic", "NUMERAL"),
   ID("primeFactor", "PRIME_FACTORS"), ID("arithmetic", "ZERO"),
   ID("divides", "divides"), ID("divides", "prime")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYOP [3], TYOP [0, 1, 3],
   TYOP [0, 4, 3], TYOP [0, 0, 3], TYOP [0, 6, 3], TYOP [0, 3, 3],
   TYOP [0, 3, 8], TYOP [0, 0, 6], TYOP [0, 1, 4], TYOP [0, 1, 1],
   TYOP [0, 0, 4], TYOP [0, 0, 12], TYOP [0, 1, 12]]
  end
  val _ = Theory.incorporate_consts "primeFactor" tyvector
     [("PRIME_FACTORS", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("b", 1), TMV("b", 0), TMV("b1", 1), TMV("b2", 1),
   TMV("e", 0), TMV("m", 0), TMV("n", 0), TMV("p", 0), TMV("x", 0),
   TMC(2, 5), TMC(2, 7), TMC(4, 2), TMC(5, 9), TMC(6, 0), TMC(7, 10),
   TMC(8, 11), TMC(8, 10), TMC(9, 9), TMC(10, 5), TMC(11, 12), TMC(12, 13),
   TMC(13, 14), TMC(14, 15), TMC(15, 1), TMC(16, 1), TMC(17, 2),
   TMC(18, 4), TMC(19, 1), TMC(20, 2), TMC(21, 0), TMC(22, 10), TMC(23, 6)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op PRIME_FACTORS_def x = x
    val op PRIME_FACTORS_def =
    DT(((("primeFactor",1),
        [("bool",[58,90,146]),("primeFactor",[0])]),["DISK_THM"]),
       [read"%11%7%18%15%14@$0@@%13%27%29$0@@@%13%11%6%18%21$0@%29$1@@@%32$0@@|@@%17$0@%20%29$0@@%28%24%30@@@@@@@|@"])
  fun op PRIME_FACTORS_EXIST x = x
    val op PRIME_FACTORS_EXIST =
    DT(((("primeFactor",0),
        [("arithmetic",
         [24,25,41,46,59,70,71,72,73,93,110,150,152,172,173,177,180,188]),
         ("bag",[15,60,126,183,186,187]),
         ("bool",
         [2,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,63,74,75,83,84,
          93,96,99,100,101,104,105,124]),("divides",[0,20,26]),
         ("numeral",[3,5,8]),("prim_rec",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%7%18%15%14@$0@@%19%1%13%27$0@@%13%11%6%18%21$0@$1@@%32$0@@|@@%17$1@%20$0@%28%24%30@@@@@@|@@|@"])
  fun op UNIQUE_PRIME_FACTORS x = x
    val op UNIQUE_PRIME_FACTORS =
    DT(((("primeFactor",2),
        [("arithmetic",[28,29,46,59,70,71,72,93,110,124,173,177,180,188]),
         ("bag",[9,15,31,125,126,183,186,187,188,190]),
         ("bool",
         [2,14,15,25,26,27,36,52,53,54,55,56,58,63,74,75,83,84,93,96,99,
          100,104,105,124]),("divides",[0,6,19,20,25]),("gcd",[26]),
         ("numeral",[3,5,8]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%7%10%3%10%4%18%13%13%27$1@@%13%11%6%18%21$0@$2@@%32$0@@|@@%17$2@%20$1@%28%24%30@@@@@@@%13%27$0@@%13%11%6%18%21$0@$1@@%32$0@@|@@%17$2@%20$0@%28%24%30@@@@@@@@%16$1@$0@@|@|@|@"])
  fun op PRIME_FACTORIZATION x = x
    val op PRIME_FACTORIZATION =
    DT(((("primeFactor",3),
        [("bool",[2,15,25,26,52,53,54,55,58,63,74,75,83,99,100]),
         ("primeFactor",[1,2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%7%18%15%14@$0@@%10%1%18%13%27$0@@%13%11%9%18%21$0@$1@@%32$0@@|@@%17%20$0@%28%24%30@@@@$1@@@@%16$0@%29$1@@@|@@|@"])
  fun op PRIME_FACTORS_1 x = x
    val op PRIME_FACTORS_1 =
    DT(((("primeFactor",4),
        [("arithmetic",[59]),("bag",[60,126,183]),
         ("bool",[2,15,25,26,53,54,55,58,63,75,83,99,100,104]),
         ("numeral",[3,8]),("primeFactor",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%16%29%28%24%30@@@@%25@"])
  fun op PRIME_FACTOR_DIVIDES x = x
    val op PRIME_FACTOR_DIVIDES =
    DT(((("primeFactor",5),
        [("bag",[213]),("bool",[25,53,54,58,63,74,75,83,100]),
         ("primeFactor",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%9%11%7%18%13%15%14@$0@@%21$1@%29$0@@@@%31$1@$0@@|@|@"])
  fun op DIVISOR_IN_PRIME_FACTORS x = x
    val op DIVISOR_IN_PRIME_FACTORS =
    DT(((("primeFactor",6),
        [("arithmetic",[73,152]),("bag",[15,123,187]),
         ("bool",[2,15,25,26,53,54,55,58,63,74,75,83,99,100]),
         ("divides",[0]),("marker",[6]),("primeFactor",[1,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%8%11%7%18%13%15%14@$0@@%13%32$1@@%31$1@$0@@@@%21$1@%29$0@@@|@|@"])
  fun op PRIME_FACTORS_MULT x = x
    val op PRIME_FACTORS_MULT =
    DT(((("primeFactor",7),
        [("arithmetic",[151]),("bag",[20,129,215]),
         ("bool",[2,15,25,26,53,54,55,58,63,74,75,83,99,100]),
         ("primeFactor",[1,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%0%11%2%18%13%15%14@$1@@%15%14@$0@@@%16%29%12$1@$0@@@%23%29$1@@%29$0@@@@|@|@"])
  fun op FACTORS_prime x = x
    val op FACTORS_prime =
    DT(((("primeFactor",8),
        [("arithmetic",[24,25,34,59,71,73,173,177,180]),
         ("bag",[15,60,122,123,183,187]),
         ("bool",[2,15,25,26,36,52,53,54,55,58,63,83,99,100,104]),
         ("divides",[24]),("numeral",[3,8]),("primeFactor",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%8%18%32$0@@%16%29$0@@%22$0@%25@@@|@"])
  fun op PRIME_FACTORS_EXP x = x
    val op PRIME_FACTORS_EXP =
    DT(((("primeFactor",9),
        [("arithmetic",[8,25,27,34,59,71,173,177,180,274]),
         ("bag",[1,8,25,36]),
         ("bool",[14,25,36,51,52,53,54,56,58,63,99,104,105,124,129,147]),
         ("divides",[24]),("num",[9]),("numeral",[3,5,8]),
         ("primeFactor",[4,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%11%8%11%5%18%32$1@@%17%29%26$1@$0@@$1@@$0@@|@|@"])
  end
  val _ = DB.bindl "primeFactor"
  [("PRIME_FACTORS_def",PRIME_FACTORS_def,DB.Def),
   ("PRIME_FACTORS_EXIST",PRIME_FACTORS_EXIST,DB.Thm),
   ("UNIQUE_PRIME_FACTORS",UNIQUE_PRIME_FACTORS,DB.Thm),
   ("PRIME_FACTORIZATION",PRIME_FACTORIZATION,DB.Thm),
   ("PRIME_FACTORS_1",PRIME_FACTORS_1,DB.Thm),
   ("PRIME_FACTOR_DIVIDES",PRIME_FACTOR_DIVIDES,DB.Thm),
   ("DIVISOR_IN_PRIME_FACTORS",DIVISOR_IN_PRIME_FACTORS,DB.Thm),
   ("PRIME_FACTORS_MULT",PRIME_FACTORS_MULT,DB.Thm),
   ("FACTORS_prime",FACTORS_prime,DB.Thm),
   ("PRIME_FACTORS_EXP",PRIME_FACTORS_EXP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("gcdTheory.gcd_grammars",gcdTheory.gcd_grammars),
                         ("bagTheory.bag_grammars",bagTheory.bag_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PRIME_FACTORS", (Term.prim_mk_const { Name = "PRIME_FACTORS", Thy = "primeFactor"}))
  val primeFactor_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "primeFactor"
end
