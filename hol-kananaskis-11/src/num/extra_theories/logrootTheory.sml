structure logrootTheory :> logrootTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading logrootTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open basicSizeTheory whileTheory
  in end;
  val _ = Theory.link_parents
          ("logroot",
          Arbnum.fromString "1488586117",
          Arbnum.fromString "342994")
          [("basicSize",
           Arbnum.fromString "1488586093",
           Arbnum.fromString "153614"),
           ("while",
           Arbnum.fromString "1488586097",
           Arbnum.fromString "778651")];
  val _ = Theory.incorporate_types "logroot" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("num", "num"), ID("bool", "!"),
   ID("min", "bool"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bool", "COND"),
   ID("arithmetic", "DIV"), ID("arithmetic", "EXP"), ID("pair", "FST"),
   ID("bool", "LET"), ID("logroot", "LOG"), ID("arithmetic", "MOD"),
   ID("arithmetic", "NUMERAL"), ID("logroot", "ROOT"), ID("pair", "SND"),
   ID("logroot", "SQRTd"), ID("num", "SUC"), ID("arithmetic", "ZERO"),
   ID("logroot", "iSQRT0"), ID("logroot", "iSQRT1"),
   ID("logroot", "iSQRT2"), ID("logroot", "iSQRT3")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0, 0], TYOP [0, 0, 1], TYOP [0, 0, 0],
   TYOP [0, 0, 3], TYOP [4], TYOP [0, 0, 5], TYOP [0, 6, 5],
   TYOP [0, 0, 2], TYOP [0, 5, 5], TYOP [0, 5, 9], TYOP [0, 0, 6],
   TYOP [0, 1, 5], TYOP [0, 1, 12], TYOP [0, 4, 5], TYOP [0, 14, 5],
   TYOP [0, 5, 4], TYOP [0, 1, 1], TYOP [0, 1, 17], TYOP [0, 5, 18],
   TYOP [0, 1, 0], TYOP [0, 3, 3], TYOP [0, 2, 2], TYOP [0, 17, 17]]
  end
  val _ = Theory.incorporate_consts "logroot" tyvector
     [("iSQRT3", 2), ("iSQRT2", 2), ("iSQRT1", 2), ("iSQRT0", 2),
      ("SQRTd", 2), ("ROOT", 4), ("LOG", 4)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("b", 0), TMV("c", 0), TMV("d", 0), TMV("e", 0),
   TMV("f", 4), TMV("m", 0), TMV("n", 0), TMV("p", 0), TMV("p", 1),
   TMV("r", 0), TMV("rt", 0), TMV("x", 0), TMV("y", 0), TMC(3, 7),
   TMC(5, 4), TMC(6, 4), TMC(7, 8), TMC(8, 4), TMC(9, 10), TMC(10, 0),
   TMC(11, 11), TMC(12, 11), TMC(13, 10), TMC(13, 11), TMC(13, 13),
   TMC(14, 10), TMC(15, 15), TMC(15, 7), TMC(16, 3), TMC(17, 3),
   TMC(18, 16), TMC(18, 19), TMC(19, 4), TMC(20, 4), TMC(21, 20),
   TMC(22, 21), TMC(22, 22), TMC(22, 23), TMC(23, 4), TMC(24, 4),
   TMC(25, 3), TMC(26, 4), TMC(27, 20), TMC(28, 2), TMC(29, 3), TMC(30, 0),
   TMC(31, 2), TMC(32, 2), TMC(33, 2), TMC(34, 2)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ROOT x = x
    val op ROOT =
    DT(((("logroot",5),
        [("bool",[58,90,146]),("logroot",[4])]),["DISK_THM"]),
       [read"%14%10%14%7%26%21%20@$1@@%19%22%34%42$1@$0@@$1@@$0@@%21$0@%34%45%42$1@$0@@@$1@@@@|@|@"])
  fun op LOG x = x
    val op LOG =
    DT(((("logroot",8),[("logroot",[7])]),["DISK_THM"]),
       [read"%14%0%14%7%26%19%21%41%29%46@@@$1@@%21%20@$0@@@%19%22%34$1@%39$1@$0@@@$0@@%21$0@%34$1@%45%39$1@$0@@@@@@|@|@"])
  fun op SQRTd_def x = x
    val op SQRTd_def =
    DT(((("logroot",27),[]),[]),
       [read"%14%7%25%44$0@@%17%42%41%30%46@@@$0@@%18$0@%15%42%41%30%46@@@$0@@%42%41%30%46@@@$0@@@@@|@"])
  fun op iSQRT0_def x = x
    val op iSQRT0_def =
    DT(((("logroot",29),[]),[]),
       [read"%14%7%25%47$0@@%38%9%37%3%32%24$0@%20@@%17%15%41%30%46@@@%35$1@@@%15%41%30%29%46@@@@%43$1@@@@%17%45%15%41%30%46@@@%35$1@@@@%18%15%41%30%29%46@@@@$0@@%41%29%46@@@@@|@%18%43$0@@%35$0@@@|@%44$0@@@|@"])
  fun op iSQRT1_def x = x
    val op iSQRT1_def =
    DT(((("logroot",30),[]),[]),
       [read"%14%7%25%48$0@@%38%9%37%3%32%24$0@%20@@%17%15%41%30%46@@@%35$1@@@%45%15%41%30%29%46@@@@%43$1@@@@@%17%45%15%41%30%46@@@%35$1@@@@%15%41%30%29%46@@@@%18$0@%41%29%46@@@@@@|@%18%45%43$0@@@%35$0@@@|@%44$0@@@|@"])
  fun op iSQRT2_def x = x
    val op iSQRT2_def =
    DT(((("logroot",31),[]),[]),
       [read"%14%7%25%49$0@@%38%9%37%3%37%2%37%4%32%24$0@%20@@%17$2@%15%41%30%46@@@$1@@@%17%45$2@@%18%15%41%30%46@@@$0@@%41%29%46@@@@@|@%18$0@$1@@|@%45%15%41%30%46@@@%43$1@@@@|@%15%41%30%46@@@%35$0@@@|@%44$0@@@|@"])
  fun op iSQRT3_def x = x
    val op iSQRT3_def =
    DT(((("logroot",32),[]),[]),
       [read"%14%7%25%50$0@@%38%9%37%3%37%2%37%4%32%24$0@%20@@%17$2@%45%15%41%30%46@@@$1@@@@%17%45$2@@%15%41%30%46@@@%18$0@%41%29%46@@@@@@|@%18%45$0@@$1@@|@%45%15%41%30%46@@@%43$1@@@@|@%15%41%30%46@@@%35$0@@@|@%44$0@@@|@"])
  fun op LT_EXP_ISO x = x
    val op LT_EXP_ISO =
    DT(((("logroot",0),
        [("arithmetic",
         [8,10,24,25,27,28,41,46,59,64,71,73,75,93,101,102,139,172,173,177,
          180,187]),
         ("bool",
         [14,25,26,36,43,47,48,51,52,53,54,55,58,63,71,93,94,96,99,101,104,
          105]),("num",[9]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%4%14%0%14%1%26%21%41%29%46@@@$2@@%23%21$1@$0@@%21%34$2@$1@@%34$2@$0@@@@|@|@|@"])
  fun op LE_EXP_ISO x = x
    val op LE_EXP_ISO =
    DT(((("logroot",1),
        [("arithmetic",
         [8,10,24,25,27,28,41,46,59,64,71,73,75,93,101,102,139,172,173,177,
          180,187]),
         ("bool",
         [14,25,26,36,43,47,48,51,52,53,54,55,58,63,71,93,94,96,99,101,104,
          105]),("num",[9]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%4%14%0%14%1%26%21%41%29%46@@@$2@@%23%22$1@$0@@%22%34$2@$1@@%34$2@$0@@@@|@|@|@"])
  fun op EXP_LT_ISO x = x
    val op EXP_LT_ISO =
    DT(((("logroot",2),
        [("arithmetic",[10,59,287]),
         ("bool",
         [14,25,26,27,43,47,48,51,53,54,55,58,63,71,93,94,96,99,105,124]),
         ("num",[9]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%0%14%1%14%10%26%21%20@$0@@%23%21$2@$1@@%21%34$2@$0@@%34$1@$0@@@@|@|@|@"])
  fun op EXP_LE_ISO x = x
    val op EXP_LE_ISO =
    DT(((("logroot",3),
        [("arithmetic",[10,59,287]),
         ("bool",
         [14,25,26,27,43,47,48,51,53,54,55,58,63,71,93,94,96,99,105,124]),
         ("num",[9]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%0%14%1%14%10%26%21%20@$0@@%23%22$2@$1@@%22%34$2@$0@@%34$1@$0@@@@|@|@|@"])
  fun op ROOT_exists x = x
    val op ROOT_exists =
    DT(((("logroot",4),
        [("arithmetic",
         [24,25,27,37,41,46,59,71,93,147,172,173,176,177,180,273,274,287]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,58,63,96,101,104,105,124,140]),
         ("num",[9]),("numeral",[3,5,8]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%10%14%7%26%21%20@$1@@%28%11%19%22%34$0@$2@@$1@@%21$1@%34%45$0@@$2@@@|@@|@|@"])
  fun op ROOT_UNIQUE x = x
    val op ROOT_UNIQUE =
    DT(((("logroot",6),
        [("arithmetic",
         [8,10,24,25,41,46,59,71,93,172,173,176,177,180,287]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,55,58,63,93,96,99,100,101,104,
          105,107,124]),("logroot",[5]),("num",[9]),("numeral",[3,8]),
         ("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%10%14%7%14%8%26%19%22%34$0@$2@@$1@@%21$1@%34%45$0@@$2@@@@%24%42$2@$1@@$0@@|@|@|@"])
  fun op LOG_exists x = x
    val op LOG_exists =
    DT(((("logroot",7),
        [("arithmetic",
         [8,24,25,28,41,46,59,71,93,154,172,173,176,177,180,188,272,274]),
         ("bool",
         [2,15,25,26,36,43,51,52,53,54,55,58,63,75,83,90,93,96,101,104,105,
          107,124,146]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9])]),["DISK_THM"]),
       [read"%27%5%14%0%14%7%26%19%21%41%29%46@@@$1@@%21%20@$0@@@%19%22%34$1@$2$1@$0@@@$0@@%21$0@%34$1@%45$2$1@$0@@@@@@|@|@|@"])
  fun op LOG_UNIQUE x = x
    val op LOG_UNIQUE =
    DT(((("logroot",9),
        [("arithmetic",
         [8,10,24,25,27,28,41,46,59,64,67,69,71,73,75,93,101,102,139,147,
          172,173,176,177,180,187,273,274,275]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,55,58,63,73,75,93,96,99,100,101,
          104,105,107]),("logroot",[8]),("num",[7,9]),
         ("numeral",[0,3,5,6,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%0%14%7%14%8%26%19%22%34$2@$0@@$1@@%21$1@%34$2@%45$0@@@@@%24%39$2@$1@@$0@@|@|@|@"])
  fun op LOG_ADD1 x = x
    val op LOG_ADD1 =
    DT(((("logroot",10),
        [("arithmetic",
         [8,41,46,59,71,76,93,148,172,173,177,180,184,186,273]),
         ("bool",[25,26,27,36,43,51,52,54,58,63,93,96,101,104,105,107]),
         ("logroot",[8,9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%7%14%0%14%1%26%19%21%20@$2@@%19%21%41%29%46@@@$1@@%21%20@$0@@@@%24%39$1@%15%34$1@%45$2@@@$0@@@%45%39$1@%15%34$1@$2@@$0@@@@@|@|@|@"])
  fun op LOG_BASE x = x
    val op LOG_BASE =
    DT(((("logroot",11),
        [("arithmetic",
         [8,18,24,25,26,27,41,46,59,64,69,70,71,74,75,93,95,173,180,275]),
         ("bool",
         [14,25,26,27,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124]),("logroot",[9]),("num",[9]),("numeral",[3,5,8]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%0%26%21%41%29%46@@@$0@@%24%39$0@$0@@%41%29%46@@@@|@"])
  fun op LOG_EXP x = x
    val op LOG_EXP =
    DT(((("logroot",12),
        [("arithmetic",
         [8,29,41,46,71,73,76,93,102,172,180,184,186,273,274]),
         ("bool",
         [25,26,27,36,51,52,53,54,58,63,73,75,96,100,101,104,105,124,170]),
         ("logroot",[8,9]),("marker",[8]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%7%14%0%14%1%26%19%21%41%29%46@@@$1@@%21%20@$0@@@%24%39$1@%15%34$1@$2@@$0@@@%16$2@%39$1@$0@@@@|@|@|@"])
  fun op LOG_1 x = x
    val op LOG_1 =
    DT(((("logroot",13),
        [("arithmetic",[8,41,46,59,71,73,93,173,176,180]),
         ("bool",[25,36,52,54,63,96,101,104,105]),("logroot",[9]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%0%26%21%41%29%46@@@$0@@%24%39$0@%41%29%46@@@@%20@@|@"])
  fun op LOG_DIV x = x
    val op LOG_DIV =
    DT(((("logroot",14),
        [("arithmetic",
         [18,24,25,27,41,46,59,71,73,93,102,173,177,180,250,252,275]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,73,93,94,96,101,104,
          105]),("logroot",[8,9]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%0%14%12%26%19%21%41%29%46@@@$1@@%22$1@$0@@@%24%39$1@$0@@%16%41%29%46@@@%39$1@%33$0@$1@@@@@|@|@"])
  fun op LOG_ADD x = x
    val op LOG_ADD =
    DT(((("logroot",15),
        [("arithmetic",
         [8,24,25,27,41,46,59,71,89,93,122,173,176,177,180,185]),
         ("bool",[25,36,43,52,53,54,58,63,96,101,104,105]),("logroot",[9]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%0%14%1%14%2%26%19%21%41%29%46@@@$2@@%21$1@%34$2@$0@@@@%24%39$2@%16$1@%34$2@$0@@@@$0@@|@|@|@"])
  fun op LOG_LE_MONO x = x
    val op LOG_LE_MONO =
    DT(((("logroot",16),
        [("arithmetic",[10,24,25,34,41,46,59,71,93,173,176,180]),
         ("bool",
         [25,27,36,43,48,52,53,54,63,93,96,99,100,101,104,105,107]),
         ("logroot",[0,8]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%0%14%12%14%13%26%19%21%41%29%46@@@$2@@%21%20@$1@@@%26%22$1@$0@@%22%39$2@$1@@%39$2@$0@@@@|@|@|@"])
  fun op LOG_RWT x = x
    val op LOG_RWT =
    DT(((("logroot",17),
        [("arithmetic",
         [8,24,25,26,41,46,59,64,71,91,93,102,173,176,180,275]),
         ("bool",
         [25,26,27,30,36,51,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("logroot",[9,14]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%14%6%14%7%26%19%21%41%29%46@@@$1@@%21%20@$0@@@%24%39$1@$0@@%31%21$0@$1@@%20@%45%39$1@%33$0@$1@@@@@@|@|@"])
  fun op LOG_EQ_0 x = x
    val op LOG_EQ_0 =
    DT(((("logroot",18),
        [("bool",[25,26,27,30,51,53,54,56,58,63,64,105,124]),
         ("logroot",[17]),("num",[7])]),["DISK_THM"]),
       [read"%14%0%14%1%26%19%21%41%29%46@@@$1@@%21%20@$0@@@%23%24%39$1@$0@@%20@@%21$0@$1@@@|@|@"])
  fun op LOG_MULT x = x
    val op LOG_MULT =
    DT(((("logroot",19),
        [("arithmetic",
         [24,25,28,41,46,59,64,69,71,73,74,93,172,173,177,180,189,227]),
         ("bool",
         [25,26,27,36,51,52,54,56,58,63,93,96,101,104,105,107,129,147,
          169]),("logroot",[17]),("marker",[9]),("numeral",[3,5,8]),
         ("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%1%14%12%26%19%21%41%29%46@@@$1@@%21%20@$0@@@%24%39$1@%15$1@$0@@@%45%39$1@$0@@@@|@|@"])
  fun op LOG_add_digit x = x
    val op LOG_add_digit =
    DT(((("logroot",20),
        [("arithmetic",
         [7,22,24,25,26,27,28,41,46,59,71,73,91,93,172,173,180,190,226,
          228]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          129]),("logroot",[17]),("marker",[9]),("num",[7]),
         ("numeral",[3,5,8]),("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%1%14%12%14%13%26%19%21%41%29%46@@@$2@@%19%21%20@$0@@%21$1@$2@@@@%24%39$2@%16%15$2@$0@@$1@@@%45%39$2@$0@@@@|@|@|@"])
  fun op ROOT_DIV x = x
    val op ROOT_DIV =
    DT(((("logroot",21),
        [("arithmetic",
         [8,10,24,25,27,28,41,46,59,64,69,71,73,76,93,95,139,172,173,174,
          176,177,180,184,185,209,234,248,250,252,287]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,55,56,58,63,83,93,96,99,100,101,
          104,105,124]),("logroot",[5,6]),("num",[9]),("numeral",[3,8]),
         ("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%10%14%12%14%13%26%19%21%20@$2@@%21%20@$0@@@%24%33%42$2@$1@@$0@@%42$2@%33$1@%34$0@$2@@@@@|@|@|@"])
  fun op ROOT_LE_MONO x = x
    val op ROOT_LE_MONO =
    DT(((("logroot",22),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180]),
         ("bool",[25,36,43,52,54,63,93,96,101,104,105,107]),
         ("logroot",[2,5]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%14%10%14%12%14%13%26%21%20@$2@@%26%22$1@$0@@%22%42$2@$1@@%42$2@$0@@@@|@|@|@"])
  fun op EXP_MUL x = x
    val op EXP_MUL =
    DT(((("logroot",23),
        [("arithmetic",[8,71,102]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("num",[9]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%14%0%14%1%14%2%24%34%34$2@$1@@$0@@%34$2@%15$1@$0@@@|@|@|@"])
  fun op LOG_ROOT x = x
    val op LOG_ROOT =
    DT(((("logroot",24),
        [("arithmetic",[24,25,41,46,59,64,71,90,93,172,173,176,180,209]),
         ("bool",
         [25,36,37,43,51,52,53,54,55,58,63,83,93,96,100,101,104,105,107]),
         ("logroot",[1,2,5,8,9,23]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%0%14%12%14%10%26%19%21%41%29%46@@@$2@@%19%21%20@$1@@%21%20@$0@@@@%24%39$2@%42$0@$1@@@%33%39$2@$1@@$0@@@|@|@|@"])
  fun op LOG_MOD x = x
    val op LOG_MOD =
    DT(((("logroot",25),
        [("arithmetic",
         [8,22,24,25,26,27,28,41,46,59,69,71,74,93,151,172,173,177,180,217,
          239,274]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,55,56,58,63,96,101,104,105,
          124]),("logroot",[15]),("num",[7,9]),("numeral",[3,5,7,8]),
         ("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%7%26%21%20@$0@@%24$0@%16%34%41%30%46@@@%39%41%30%46@@@$0@@@%40$0@%34%41%30%46@@@%39%41%30%46@@@$0@@@@@@|@"])
  fun op ROOT_COMPUTE x = x
    val op ROOT_COMPUTE =
    DT(((("logroot",26),
        [("arithmetic",
         [24,25,38,41,46,59,64,71,73,93,147,172,173,174,176,180,209,273,
          274]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,55,56,58,63,64,83,93,96,100,101,
          104,105,107,124]),("combin",[19]),("logroot",[3,5,6,21]),
         ("numeral",[3,5,8]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%14%10%14%7%26%21%20@$1@@%19%24%42$1@%20@@%20@@%24%42$1@$0@@%36%12%31%21$1@%34%45$0@@$2@@@$0@%45$0@@|@%15%41%30%46@@@%42$1@%33$0@%34%41%30%46@@@$1@@@@@@@@|@|@"])
  fun op numeral_sqrt x = x
    val op numeral_sqrt =
    DT(((("logroot",33),
        [("arithmetic",
         [1,2,3,4,8,18,22,24,25,27,41,46,59,62,63,64,67,69,70,71,73,74,75,
          76,79,81,82,88,91,93,100,130,136,148,172,173,176,177,180,183,186,
          195,200,209,214,216,217,219,221,237,250,269,275]),
         ("bool",
         [8,14,25,26,27,30,32,36,43,51,52,53,54,55,56,58,63,64,73,75,83,93,
          96,100,101,104,105,124,129,147]),("combin",[19]),
         ("logroot",[5,26,27,28,29,30,31,32]),
         ("numeral",[0,3,5,6,7,8,9,15,16,17,18,21,32,33,34,35,39,40,41]),
         ("pair",[4,8,9]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%19%25%44%46@@%17%20@%20@@@%19%25%44%29%46@@@%17%41%29%46@@@%20@@@%19%25%44%30%46@@@%17%41%29%46@@@%41%29%46@@@@@%19%25%44%29%29%7@@@@%50%7@@@%19%25%44%30%29%7@@@@%47%45%7@@@@%19%25%44%29%30%7@@@@%48%45%7@@@@%19%25%44%30%30%7@@@@%49%45%7@@@@%19%25%44%45%29%29%7@@@@@%47%45%7@@@@%19%25%44%45%30%29%7@@@@@%48%45%7@@@@%19%25%44%45%29%30%7@@@@@%49%45%7@@@@%25%44%45%30%30%7@@@@@%50%45%7@@@@@@@@@@@@@"])
  fun op numeral_root2 x = x
    val op numeral_root2 =
    DT(((("logroot",34),
        [("arithmetic",[1]),("bool",[25,56]),("logroot",[27]),
         ("pair",[8])]),["DISK_THM"]),
       [read"%24%42%41%30%46@@@%41%7@@@%35%44%7@@@"])
  end
  val _ = DB.bindl "logroot"
  [("ROOT",ROOT,DB.Def), ("LOG",LOG,DB.Def),
   ("SQRTd_def",SQRTd_def,DB.Def), ("iSQRT0_def",iSQRT0_def,DB.Def),
   ("iSQRT1_def",iSQRT1_def,DB.Def), ("iSQRT2_def",iSQRT2_def,DB.Def),
   ("iSQRT3_def",iSQRT3_def,DB.Def), ("LT_EXP_ISO",LT_EXP_ISO,DB.Thm),
   ("LE_EXP_ISO",LE_EXP_ISO,DB.Thm), ("EXP_LT_ISO",EXP_LT_ISO,DB.Thm),
   ("EXP_LE_ISO",EXP_LE_ISO,DB.Thm), ("ROOT_exists",ROOT_exists,DB.Thm),
   ("ROOT_UNIQUE",ROOT_UNIQUE,DB.Thm), ("LOG_exists",LOG_exists,DB.Thm),
   ("LOG_UNIQUE",LOG_UNIQUE,DB.Thm), ("LOG_ADD1",LOG_ADD1,DB.Thm),
   ("LOG_BASE",LOG_BASE,DB.Thm), ("LOG_EXP",LOG_EXP,DB.Thm),
   ("LOG_1",LOG_1,DB.Thm), ("LOG_DIV",LOG_DIV,DB.Thm),
   ("LOG_ADD",LOG_ADD,DB.Thm), ("LOG_LE_MONO",LOG_LE_MONO,DB.Thm),
   ("LOG_RWT",LOG_RWT,DB.Thm), ("LOG_EQ_0",LOG_EQ_0,DB.Thm),
   ("LOG_MULT",LOG_MULT,DB.Thm), ("LOG_add_digit",LOG_add_digit,DB.Thm),
   ("ROOT_DIV",ROOT_DIV,DB.Thm), ("ROOT_LE_MONO",ROOT_LE_MONO,DB.Thm),
   ("EXP_MUL",EXP_MUL,DB.Thm), ("LOG_ROOT",LOG_ROOT,DB.Thm),
   ("LOG_MOD",LOG_MOD,DB.Thm), ("ROOT_COMPUTE",ROOT_COMPUTE,DB.Thm),
   ("numeral_sqrt",numeral_sqrt,DB.Thm),
   ("numeral_root2",numeral_root2,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("basicSizeTheory.basicSize_grammars",
                          basicSizeTheory.basicSize_grammars),
                         ("whileTheory.while_grammars",
                          whileTheory.while_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ROOT", (Term.prim_mk_const { Name = "ROOT", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LOG", (Term.prim_mk_const { Name = "LOG", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SQRTd", (Term.prim_mk_const { Name = "SQRTd", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SQRTd", (Term.prim_mk_const { Name = "SQRTd", Thy = "logroot"}))


  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT0", (Term.prim_mk_const { Name = "iSQRT0", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT0", (Term.prim_mk_const { Name = "iSQRT0", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT1", (Term.prim_mk_const { Name = "iSQRT1", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT1", (Term.prim_mk_const { Name = "iSQRT1", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT2", (Term.prim_mk_const { Name = "iSQRT2", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT2", (Term.prim_mk_const { Name = "iSQRT2", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT3", (Term.prim_mk_const { Name = "iSQRT3", Thy = "logroot"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQRT3", (Term.prim_mk_const { Name = "iSQRT3", Thy = "logroot"}))
  val logroot_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "logroot",
    thydataty = "compute",
    data =
        "logroot.iSQRT0_def logroot.iSQRT1_def logroot.numeral_root2 logroot.numeral_sqrt logroot.iSQRT3_def logroot.iSQRT2_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "logroot"
end
