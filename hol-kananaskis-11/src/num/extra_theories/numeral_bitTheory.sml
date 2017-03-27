structure numeral_bitTheory :> numeral_bitTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading numeral_bitTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open bitTheory
  in end;
  val _ = Theory.link_parents
          ("numeral_bit",
          Arbnum.fromString "1488586165",
          Arbnum.fromString "445730")
          [("bit",
           Arbnum.fromString "1488586140",
           Arbnum.fromString "581172")];
  val _ = Theory.incorporate_types "numeral_bit" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("min", "bool"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("bit", "BITWISE"), ID("numeral_bit", "BIT_MODF"),
   ID("bit", "BIT_MODIFY"), ID("numeral_bit", "BIT_REV"),
   ID("bit", "BIT_REVERSE"), ID("bool", "COND"), ID("arithmetic", "DIV"),
   ID("arithmetic", "DIV2"), ID("bit", "DIV_2EXP"), ID("bool", "F"),
   ID("combin", "FAIL"), ID("numeral_bit", "FDUB"),
   ID("arithmetic", "FUNPOW"), ID("bool", "LET"), ID("logroot", "LOG"),
   ID("bit", "LOG2"), ID("bit", "LOWEST_SET_BIT"), ID("arithmetic", "MOD"),
   ID("bit", "MOD_2EXP"), ID("bit", "MOD_2EXP_EQ"),
   ID("bit", "MOD_2EXP_MAX"), ID("arithmetic", "NUMERAL"),
   ID("arithmetic", "ODD"), ID("bit", "SBIT"),
   ID("numeral_bit", "SFUNPOW"), ID("num", "SUC"), ID("bool", "T"),
   ID("bit", "TIMES_2EXP"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("numeral_bit", "iBITWISE"), ID("numeral_bit", "iDIV2"),
   ID("numeral", "iDUB"), ID("numeral_bit", "iLOG2"),
   ID("numeral_bit", "iMOD_2EXP"), ID("numeral_bit", "iSUC"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYOP [2], TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 5, 2], TYOP [0, 0, 6], TYOP [0, 1, 2],
   TYOP [0, 1, 1], TYOP [0, 0, 2], TYOP [0, 0, 10], TYOP [0, 0, 4],
   TYOP [0, 12, 11], TYOP [0, 0, 13], TYV "'a", TYOP [0, 15, 3],
   TYOP [0, 16, 3], TYOP [0, 5, 3], TYOP [0, 18, 3], TYOP [0, 12, 3],
   TYOP [0, 20, 3], TYOP [0, 1, 3], TYOP [0, 22, 3], TYOP [0, 0, 3],
   TYOP [0, 24, 3], TYOP [0, 0, 24], TYOP [0, 7, 3], TYOP [0, 7, 27],
   TYOP [0, 2, 3], TYOP [0, 2, 29], TYOP [0, 1, 22], TYOP [0, 12, 1],
   TYOP [0, 0, 32], TYOP [0, 3, 2], TYOP [0, 2, 34], TYOP [0, 0, 26],
   TYOP [0, 3, 1]]
  end
  val _ = Theory.incorporate_consts "numeral_bit" tyvector
     [("iSUC", 1), ("iMOD_2EXP", 2), ("iLOG2", 1), ("iDIV2", 1),
      ("iBITWISE", 7), ("SFUNPOW", 8), ("FDUB", 9), ("BIT_REV", 10),
      ("BIT_MODF", 14)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 15), TMV("a", 0), TMV("b", 0), TMV("base < 2 or n = 0", 3),
   TMV("e", 0), TMV("f", 5), TMV("f", 12), TMV("f", 1), TMV("i", 0),
   TMV("m", 0), TMV("n", 15), TMV("n", 0), TMV("opr", 5), TMV("w", 0),
   TMV("x", 0), TMV("y", 0), TMC(3, 17), TMC(3, 19), TMC(3, 21),
   TMC(3, 23), TMC(3, 25), TMC(4, 2), TMC(5, 2), TMC(6, 2), TMC(7, 5),
   TMC(8, 0), TMC(9, 26), TMC(10, 5), TMC(10, 28), TMC(10, 30),
   TMC(10, 31), TMC(10, 26), TMC(11, 5), TMC(12, 1), TMC(13, 1),
   TMC(14, 7), TMC(15, 14), TMC(16, 33), TMC(17, 10), TMC(18, 2),
   TMC(19, 34), TMC(20, 2), TMC(21, 1), TMC(22, 2), TMC(23, 3),
   TMC(24, 35), TMC(25, 9), TMC(26, 8), TMC(27, 9), TMC(28, 2), TMC(29, 1),
   TMC(30, 1), TMC(31, 2), TMC(32, 2), TMC(33, 36), TMC(34, 26),
   TMC(35, 1), TMC(36, 24), TMC(37, 37), TMC(38, 8), TMC(39, 1),
   TMC(40, 3), TMC(41, 2), TMC(42, 0), TMC(43, 5), TMC(44, 7), TMC(45, 1),
   TMC(46, 1), TMC(47, 1), TMC(48, 2), TMC(49, 1), TMC(50, 4)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op iMOD_2EXP x = x
    val op iMOD_2EXP = DT(((("numeral_bit",0),[]),[]), [read"%29%69@%53@"])
  fun op BIT_REV_def x = x
    val op BIT_REV_def =
    DT(((("numeral_bit",6),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%24%20%14%20%15%31%38%25@$1@$0@@$0@|@|@@%20%11%20%14%20%15%31%38%60$2@@$1@$0@@%38$2@%41$1@%56%34%63@@@@%22%21%56%34%63@@@$0@@%58%57$1@@%25@@@@|@|@|@@"])
  fun op BIT_MODF_def x = x
    val op BIT_MODF_def =
    DT(((("numeral_bit",8),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%24%18%6%20%14%20%2%20%4%20%15%31%36%25@$4@$3@$2@$1@$0@@$0@|@|@|@|@|@@%20%11%18%6%20%14%20%2%20%4%20%15%31%36%60$5@@$4@$3@$2@$1@$0@@%36$5@$4@%41$3@%56%34%63@@@@%22$2@%56%33%63@@@@%21%56%34%63@@@$1@@%40$4$2@%57$3@@@%22$1@$0@@$0@@@|@|@|@|@|@|@@"])
  fun op iBITWISE_def x = x
    val op iBITWISE_def =
    DT(((("numeral_bit",10),[]),[]), [read"%28%65@%35@"])
  fun op iSUC x = x
    val op iSUC = DT(((("numeral_bit",17),[]),[]), [read"%30%70@%60@"])
  fun op iDIV2 x = x
    val op iDIV2 = DT(((("numeral_bit",18),[]),[]), [read"%30%66@%42@"])
  fun op SFUNPOW_def x = x
    val op SFUNPOW_def =
    DT(((("numeral_bit",19),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%24%19%7%20%14%31%59$1@%25@$0@@$0@|@|@@%19%7%20%11%20%14%31%59$2@%60$1@@$0@@%40%31$0@%25@@%25@%59$2@$1@$2$0@@@@|@|@|@@"])
  fun op FDUB_def x = x
    val op FDUB_def =
    DT(((("numeral_bit",20),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%24%19%7%31%46$0@%25@@%25@|@@%19%7%20%11%31%46$1@%60$0@@@$1$1%60$0@@@@|@|@@"])
  fun op iLOG2_def x = x
    val op iLOG2_def =
    DT(((("numeral_bit",31),[]),[]),
       [read"%20%11%31%68$0@@%50%22$0@%56%33%63@@@@@|@"])
  fun op numeral_imod_2exp x = x
    val op numeral_imod_2exp =
    DT(((("numeral_bit",1),
        [("arithmetic",
         [0,1,2,3,4,8,17,18,27,28,64,65,67,70,73,122,139,186,209,212,217,
          219,221,224,246,278,354]),("bit",[0]),
         ("bool",[25,51,53,54,55,56,58,63,73,75,83,99,100,105,169]),
         ("numeral",[0,12]),("numeral_bit",[0]),("prim_rec",[7,15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%24%20%11%31%69%25@$0@@%63@|@@%24%20%14%16%10%31%69$1@%63@@%63@|@|@@%24%20%14%20%11%31%69%56%33$1@@@%33$0@@@%33%69%23%56%33$1@@@%56%33%63@@@@$0@@@|@|@@%24%20%14%20%11%31%69%56%34$1@@@%33$0@@@%33%69%56%33$1@@@$0@@@|@|@@%24%20%14%20%11%31%69%56%33$1@@@%34$0@@@%67%69%23%56%33$1@@@%56%33%63@@@@%60$0@@@@|@|@@%20%14%20%11%31%69%56%34$1@@@%34$0@@@%67%69%56%33$1@@@%60$0@@@@|@|@@@@@@"])
  fun op MOD_2EXP x = x
    val op MOD_2EXP =
    DT(((("numeral_bit",2),
        [("arithmetic",
         [0,1,2,3,4,8,17,18,27,28,64,67,70,73,122,139,186,209,212,217,219,
          221,224,246,278,354]),("bit",[0]),
         ("bool",[25,36,51,53,54,55,56,58,63,73,75,83,99,100,105,169]),
         ("numeral",[12]),("numeral_bit",[0]),("prim_rec",[7,15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%24%20%14%31%53$0@%25@@%25@|@@%20%14%20%11%31%53$1@%56$0@@@%56%69$1@$0@@@|@|@@"])
  fun op DIV_2EXP x = x
    val op DIV_2EXP =
    DT(((("numeral_bit",3),
        [("arithmetic",[8,15,18,64,102,139,210,232,234,275,334]),
         ("bit",[1]),("bool",[14,25,36,51,53,54,56,58,63,105]),("num",[9]),
         ("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%20%11%20%14%31%43$1@$0@@%47%42@$1@$0@@|@|@"])
  fun op numeral_mod2 x = x
    val op numeral_mod2 =
    DT(((("numeral_bit",4),
        [("arithmetic",
         [0,1,3,4,17,22,25,27,64,67,73,95,122,217,233,247,375,376,377,378,
          381]),("bool",[25,53,54,55,56,58,63,73,75]),("numeral",[3,7]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%24%31%52%25@%56%34%63@@@@%25@@%24%20%11%31%52%56%33$0@@@%56%34%63@@@@%56%33%63@@@|@@%20%11%31%52%56%34$0@@@%56%34%63@@@@%25@|@@@"])
  fun op iDUB_NUMERAL x = x
    val op iDUB_NUMERAL =
    DT(((("numeral_bit",5),
        [("arithmetic",[1]),("bool",[25,56])]),["DISK_THM"]),
       [read"%31%67%56%8@@@%56%67%8@@@"])
  fun op BIT_REVERSE_EVAL x = x
    val op BIT_REVERSE_EVAL =
    DT(((("numeral_bit",7),
        [("arithmetic",[8,15,18,73,91,139,232,234,275,334]),
         ("bit",[7,11,21,33,88]),("bool",[14,25,36,51,56,58,63,105]),
         ("num",[9]),("numeral",[3,7,9,32,33]),("numeral_bit",[6]),
         ("pair",[4,9,16])]),["DISK_THM"]),
       [read"%20%9%20%11%31%39$1@$0@@%38$1@$0@%25@@|@|@"])
  fun op BIT_MODIFY_EVAL x = x
    val op BIT_MODIFY_EVAL =
    DT(((("numeral_bit",9),
        [("arithmetic",
         [8,15,18,22,24,25,26,27,70,71,72,73,76,91,139,173,177,180,232,234,
          275,334]),("bit",[4,7,13,21,33,88]),
         ("bool",
         [14,25,26,27,30,36,51,52,54,56,58,63,64,104,105,129,147,170]),
         ("num",[9]),("numeral",[0,3,5,7,8,9,32,33]),("numeral_bit",[8]),
         ("pair",[4,8,16])]),["DISK_THM"]),
       [read"%20%9%18%6%20%11%31%37$2@$1@$0@@%36$2@$1@$0@%25@%56%33%63@@@%25@@|@|@|@"])
  fun op iBITWISE x = x
    val op iBITWISE =
    DT(((("numeral_bit",11),
        [("arithmetic",[2,3,8,22,25,26,27,69,74,210,268]),
         ("bit",[4,12,116]),
         ("bool",[25,26,27,30,32,56,58,63,64,105,129,147]),
         ("numeral",[3,5,12]),("numeral_bit",[10])]),["DISK_THM"]),
       [read"%24%17%12%20%1%20%2%31%65%25@$2@$1@$0@@%63@|@|@|@@%24%20%14%17%12%20%1%20%2%31%65%56%33$3@@@$2@$1@$0@@%48%13%40$3%57$2@@%57$1@@@%33$0@@%67$0@@|@%65%23%56%33$3@@@%56%33%63@@@@$2@%42$1@@%42$0@@@@|@|@|@|@@%20%14%17%12%20%1%20%2%31%65%56%34$3@@@$2@$1@$0@@%48%13%40$3%57$2@@%57$1@@@%33$0@@%67$0@@|@%65%56%33$3@@@$2@%42$1@@%42$0@@@@|@|@|@|@@@"])
  fun op NUMERAL_BITWISE x = x
    val op NUMERAL_BITWISE =
    DT(((("numeral_bit",12),
        [("arithmetic",[1]),("bool",[25,36,51,56]),
         ("numeral_bit",[10])]),["DISK_THM"]),
       [read"%24%20%14%17%5%16%0%31%35$2@$1@%25@%25@@%56%65$2@$1@%25@%25@@@|@|@|@@%24%20%14%17%5%20%1%31%35$2@$1@%56$0@@%25@@%56%65$2@$1@%56$0@@%25@@@|@|@|@@%24%20%14%17%5%20%2%31%35$2@$1@%25@%56$0@@@%56%65$2@$1@%25@%56$0@@@@|@|@|@@%20%14%17%5%20%1%20%2%31%35$3@$2@%56$1@@%56$0@@@%56%65$3@$2@%56$1@@%56$0@@@@|@|@|@|@@@@"])
  fun op NUMERAL_BIT_REV x = x
    val op NUMERAL_BIT_REV =
    DT(((("numeral_bit",13),
        [("arithmetic",[0,1,2,3,4,22,27,69,73,74,210,214,268]),("bit",[4]),
         ("bool",[14,25,26,27,30,43,51,54,56,58,63,64,105,129,147]),
         ("numeral",[0,3,5,7,12,33]),("numeral_bit",[6])]),["DISK_THM"]),
       [read"%24%20%14%20%15%31%38%25@$1@$0@@$0@|@|@@%24%20%11%20%15%31%38%56%33$1@@@%25@$0@@%38%23%56%33$1@@@%56%33%63@@@@%25@%67$0@@@|@|@@%24%20%11%20%15%31%38%56%34$1@@@%25@$0@@%38%56%33$1@@@%25@%67$0@@@|@|@@%24%20%11%20%14%20%15%31%38%56%33$2@@@%56$1@@$0@@%38%23%56%33$2@@@%56%33%63@@@@%42%56$1@@@%40%57$1@@%33$0@@%67$0@@@@|@|@|@@%20%11%20%14%20%15%31%38%56%34$2@@@%56$1@@$0@@%38%56%33$2@@@%42%56$1@@@%40%57$1@@%33$0@@%67$0@@@@|@|@|@@@@@"])
  fun op NUMERAL_BIT_REVERSE x = x
    val op NUMERAL_BIT_REVERSE =
    DT(((("numeral_bit",14),
        [("arithmetic",[1,2]),("bool",[25,36,51,56]),
         ("numeral_bit",[7])]),["DISK_THM"]),
       [read"%24%20%9%31%39%56$0@@%25@@%56%38%56$0@@%25@%63@@@|@@%20%11%20%9%31%39%56$0@@%56$1@@@%56%38%56$0@@%56$1@@%63@@@|@|@@"])
  fun op NUMERAL_BIT_MODF x = x
    val op NUMERAL_BIT_MODF =
    DT(((("numeral_bit",15),
        [("arithmetic",[0,1,2,3,4,69,73,74,210,214,268]),
         ("bool",[14,25,26,27,30,43,51,54,56,58,63,64,105,129]),
         ("numeral",[0,3,5,7,12]),("numeral_bit",[8])]),["DISK_THM"]),
       [read"%24%18%6%20%14%20%2%20%4%20%15%31%36%25@$4@$3@$2@$1@$0@@$0@|@|@|@|@|@@%24%20%11%18%6%20%2%20%4%20%15%31%36%56%33$4@@@$3@%25@$2@%56$1@@$0@@%36%23%56%33$4@@@%56%33%63@@@@$3@%25@%22$2@%56%33%63@@@@%56%67$1@@@%40$3$2@%44@@%22%56$1@@$0@@$0@@@|@|@|@|@|@@%24%20%11%18%6%20%2%20%4%20%15%31%36%56%34$4@@@$3@%25@$2@%56$1@@$0@@%36%56%33$4@@@$3@%25@%22$2@%56%33%63@@@@%56%67$1@@@%40$3$2@%44@@%22%56$1@@$0@@$0@@@|@|@|@|@|@@%24%20%11%18%6%20%14%20%2%20%4%20%15%31%36%56%33$5@@@$4@%56$3@@$2@%56$1@@$0@@%36%23%56%33$5@@@%56%33%63@@@@$4@%42%56$3@@@%22$2@%56%33%63@@@@%56%67$1@@@%40$4$2@%57$3@@@%22%56$1@@$0@@$0@@@|@|@|@|@|@|@@%20%11%18%6%20%14%20%2%20%4%20%15%31%36%56%34$5@@@$4@%56$3@@$2@%56$1@@$0@@%36%56%33$5@@@$4@%42%56$3@@@%22$2@%56%33%63@@@@%56%67$1@@@%40$4$2@%57$3@@@%22%56$1@@$0@@$0@@@|@|@|@|@|@|@@@@@"])
  fun op NUMERAL_BIT_MODIFY x = x
    val op NUMERAL_BIT_MODIFY =
    DT(((("numeral_bit",16),
        [("arithmetic",[1,2]),("bool",[25,36,51,56]),
         ("numeral_bit",[9])]),["DISK_THM"]),
       [read"%24%20%9%18%6%31%37%56$1@@$0@%25@@%36%56$1@@$0@%25@%25@%56%33%63@@@%25@@|@|@@%20%9%18%6%20%11%31%37%56$2@@$1@%56$0@@@%36%56$2@@$1@%56$0@@%25@%56%33%63@@@%25@@|@|@|@@"])
  fun op NUMERAL_TIMES_2EXP x = x
    val op NUMERAL_TIMES_2EXP =
    DT(((("numeral_bit",21),
        [("arithmetic",[1,2,4,8,24,69,71,73,74,76,105,138,148]),
         ("bit",[2]),("bool",[14,25,26,27,30,36,52,56,58,63,64]),
         ("num",[7,9]),("numeral",[0,3,5,12]),
         ("numeral_bit",[19])]),["DISK_THM"]),
       [read"%24%20%11%31%62$0@%25@@%25@|@@%20%11%20%14%31%62$1@%56$0@@@%56%59%67@$1@$0@@@|@|@@"])
  fun op NUMERAL_iDIV2 x = x
    val op NUMERAL_iDIV2 =
    DT(((("numeral_bit",22),
        [("arithmetic",
         [2,3,4,22,24,27,59,64,73,91,122,166,173,210,214,220,226,227,229,
          233,236,350]),("bool",[8,14,25,26,27,30,51,54,56,58,63,64,104]),
         ("numeral",[0,3,5,7,8,17,21,34,35,40,41]),
         ("numeral_bit",[17,18])]),["DISK_THM"]),
       [read"%24%31%66%63@@%63@@%24%31%66%70%63@@@%63@@%24%31%66%33%11@@@%11@@%24%31%66%70%33%11@@@@%70%11@@@%24%31%66%34%11@@@%70%11@@@%24%31%66%70%34%11@@@@%70%11@@@%31%56%70%11@@@%56%60%11@@@@@@@@@"])
  fun op NUMERAL_DIV_2EXP x = x
    val op NUMERAL_DIV_2EXP =
    DT(((("numeral_bit",23),
        [("arithmetic",[1,8,18,28,139,210,214,220,232,234]),("bit",[1]),
         ("bool",[14,25,26,27,30,36,51,56,58,63,64,105,129]),("num",[9]),
         ("numeral",[3,7]),("numeral_bit",[18,19])]),["DISK_THM"]),
       [read"%24%20%11%31%43$0@%25@@%25@|@@%20%11%20%14%31%43$1@%56$0@@@%56%59%66@$1@$0@@@|@|@@"])
  fun op NUMERAL_SFUNPOW_iDIV2 x = x
    val op NUMERAL_SFUNPOW_iDIV2 =
    DT(((("numeral_bit",24),
        [("arithmetic",[1,3,4,24,28,210,214]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,60,63,64,93,94,96,
          105,108,109,111,129,147]),("combin",[19]),("num",[9]),
         ("numeral",[3,7]),("numeral_bit",[18,19,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%24%20%14%31%59%66@%25@$0@@$0@|@@%24%20%15%31%59%66@$0@%25@@%25@|@@%24%20%11%20%14%31%59%66@%56%33$1@@@$0@@%59%46%66@@%56$1@@%66$0@@@|@|@@%20%11%20%14%31%59%66@%56%34$1@@@$0@@%59%46%66@@%56$1@@%66%66$0@@@@|@|@@@@"])
  fun op NUMERAL_SFUNPOW_iDUB x = x
    val op NUMERAL_SFUNPOW_iDUB =
    DT(((("numeral_bit",25),
        [("arithmetic",[1,3,4,22,24,25,28]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,60,63,64,93,94,96,
          105,108,109,111,129,147]),("combin",[19]),("num",[9]),
         ("numeral",[12]),("numeral_bit",[19,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%24%20%14%31%59%67@%25@$0@@$0@|@@%24%20%15%31%59%67@$0@%25@@%25@|@@%24%20%11%20%14%31%59%67@%56%33$1@@@$0@@%59%46%67@@%56$1@@%67$0@@@|@|@@%20%11%20%14%31%59%67@%56%34$1@@@$0@@%59%46%67@@%56$1@@%67%67$0@@@@|@|@@@@"])
  fun op NUMERAL_SFUNPOW_FDUB x = x
    val op NUMERAL_SFUNPOW_FDUB =
    DT(((("numeral_bit",26),
        [("arithmetic",[1,3,4,24,28]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,60,63,64,93,94,96,
          105,108,109,111,129,147]),("combin",[19]),("num",[9]),
         ("numeral_bit",[19,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%19%7%24%20%14%31%59%46$1@@%25@$0@@$0@|@@%24%20%15%31%59%46$1@@$0@%25@@%25@|@@%24%20%11%20%14%31%59%46$2@@%56%33$1@@@$0@@%59%46%46$2@@@%56$1@@%46$2@$0@@@|@|@@%20%11%20%14%31%59%46$2@@%56%34$1@@@$0@@%59%46%46$2@@@%56$1@@%46$2@%46$2@$0@@@@|@|@@@@|@"])
  fun op FDUB_iDIV2 x = x
    val op FDUB_iDIV2 =
    DT(((("numeral_bit",27),
        [("arithmetic",[28,210,214]),("bool",[14,25,26,27,30,51,56,63,64]),
         ("numeral",[3,7]),("numeral_bit",[18,20])]),["DISK_THM"]),
       [read"%20%14%31%46%66@$0@@%66%66$0@@@|@"])
  fun op FDUB_iDUB x = x
    val op FDUB_iDUB =
    DT(((("numeral_bit",28),
        [("arithmetic",[22,25,28,69,74,104]),("bool",[25,56,58]),
         ("numeral",[0,3,5,12]),("numeral_bit",[20])]),["DISK_THM"]),
       [read"%20%14%31%46%67@$0@@%67%67$0@@@|@"])
  fun op FDUB_FDUB x = x
    val op FDUB_FDUB =
    DT(((("numeral_bit",29),
        [("arithmetic",[2,3,4,24]),("bool",[25,36,51,56]),
         ("numeral_bit",[17,20])]),["DISK_THM"]),
       [read"%24%31%46%46%7@@%63@@%63@@%24%20%14%31%46%46%7@@%70$0@@@%46%7@%46%7@%70$0@@@@|@@%24%20%14%31%46%46%7@@%33$0@@@%46%7@%46%7@%33$0@@@@|@@%20%14%31%46%46%7@@%34$0@@@%46%7@%46%7@%34$0@@@@|@@@@"])
  fun op LOG_compute x = x
    val op LOG_compute =
    DT(((("numeral_bit",30),
        [("arithmetic",[41,46,59,71,93,173,177,180]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,96,101,104,105,129,147]),
         ("combin",[40]),("logroot",[17]),("numeral",[3,5,8]),
         ("prim_rec",[1]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%20%9%20%11%31%49$1@$0@@%40%64%26$1@%56%34%63@@@@%31$0@%25@@@%45%49@%3@$1@$0@@%40%26$0@$1@@%25@%60%49$1@%41$0@$1@@@@@@|@|@"])
  fun op numeral_ilog2 x = x
    val op numeral_ilog2 =
    DT(((("numeral_bit",32),
        [("arithmetic",
         [1,2,3,4,8,18,22,24,25,26,27,41,46,59,64,69,71,73,74,75,76,93,95,
          102,173,176,177,180,183,184,275]),("bit",[9,18]),
         ("bool",
         [8,14,25,26,27,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          124,169]),("logroot",[8]),
         ("numeral",[0,3,5,6,7,8,9,17,18,21,32,33,34,35,40,41]),
         ("numeral_bit",[31]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%24%31%68%63@@%25@@%24%20%11%31%68%33$0@@@%22%56%33%63@@@%68$0@@@|@@%20%11%31%68%34$0@@@%22%56%33%63@@@%68$0@@@|@@@"])
  fun op numeral_log2 x = x
    val op numeral_log2 =
    DT(((("numeral_bit",33),
        [("arithmetic",[1,2,3,4,22,25,27,69,74]),("bool",[25,56,58]),
         ("numeral",[0,3,5,12]),("numeral_bit",[31])]),["DISK_THM"]),
       [read"%24%20%11%31%50%56%33$0@@@@%68%67$0@@@|@@%20%11%31%50%56%34$0@@@@%68%33$0@@@|@@"])
  fun op MOD_2EXP_EQ x = x
    val op MOD_2EXP_EQ =
    DT(((("numeral_bit",34),
        [("arithmetic",[24,25,28,38,46,71,93,147,173,176,180,210,212]),
         ("bit",[0,15,43,86,88,107]),
         ("bool",[25,26,36,51,53,54,56,58,63,96,101,104,105,124,145]),
         ("numeral",[3,8,33])]),["DISK_THM"]),
       [read"%24%20%1%20%2%27%54%25@$1@$0@@%61@|@|@@%24%20%11%20%1%20%2%27%54%60$2@@$1@$0@@%24%27%57$1@@%57$0@@@%54$2@%42$1@@%42$0@@@@|@|@|@@%20%11%20%1%27%54$1@$0@$0@@%61@|@|@@@"])
  fun op MOD_2EXP_MAX x = x
    val op MOD_2EXP_MAX =
    DT(((("numeral_bit",35),
        [("arithmetic",
         [18,24,25,27,28,38,41,46,59,71,93,130,139,173,176,180,200,210,
          212]),("bit",[0,7,16,43,45,86,88,107,113]),
         ("bool",
         [14,25,26,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,124]),
         ("numeral",[3,5,7,8,9,15,16,32,33]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%24%20%1%27%55%25@$0@@%61@|@@%20%11%20%1%27%55%60$1@@$0@@%24%57$0@@%55$1@%42$0@@@@|@|@@"])
  fun op LOWEST_SET_BIT x = x
    val op LOWEST_SET_BIT =
    DT(((("numeral_bit",36),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,59,62,64,69,71,93,172,173,176,177,180,
          200,210,251,269]),("bit",[10,88,107,129,132]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,58,63,64,93,96,101,104,105,107,124,
          129]),("numeral",[0,3,5,6,8,21]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[6,7])]),["DISK_THM"]),
       [read"%20%11%32%71%31$0@%25@@@%31%51$0@@%40%57$0@@%25@%22%56%33%63@@@%51%42$0@@@@@@|@"])
  fun op LOWEST_SET_BIT_compute x = x
    val op LOWEST_SET_BIT_compute =
    DT(((("numeral_bit",37),
        [("arithmetic",[25,27,71,173,177,180]),
         ("bool",[25,26,27,36,52,53,54,58,63,104,105,124,129,147]),
         ("numeral",[3,5,6,8,21,28]),("numeral_bit",[36])]),["DISK_THM"]),
       [read"%24%20%11%31%51%56%34$0@@@@%60%51%56%60$0@@@@@|@@%20%11%31%51%56%33$0@@@@%25@|@@"])
  end
  val _ = DB.bindl "numeral_bit"
  [("iMOD_2EXP",iMOD_2EXP,DB.Def), ("BIT_REV_def",BIT_REV_def,DB.Def),
   ("BIT_MODF_def",BIT_MODF_def,DB.Def),
   ("iBITWISE_def",iBITWISE_def,DB.Def), ("iSUC",iSUC,DB.Def),
   ("iDIV2",iDIV2,DB.Def), ("SFUNPOW_def",SFUNPOW_def,DB.Def),
   ("FDUB_def",FDUB_def,DB.Def), ("iLOG2_def",iLOG2_def,DB.Def),
   ("numeral_imod_2exp",numeral_imod_2exp,DB.Thm),
   ("MOD_2EXP",MOD_2EXP,DB.Thm), ("DIV_2EXP",DIV_2EXP,DB.Thm),
   ("numeral_mod2",numeral_mod2,DB.Thm),
   ("iDUB_NUMERAL",iDUB_NUMERAL,DB.Thm),
   ("BIT_REVERSE_EVAL",BIT_REVERSE_EVAL,DB.Thm),
   ("BIT_MODIFY_EVAL",BIT_MODIFY_EVAL,DB.Thm),
   ("iBITWISE",iBITWISE,DB.Thm),
   ("NUMERAL_BITWISE",NUMERAL_BITWISE,DB.Thm),
   ("NUMERAL_BIT_REV",NUMERAL_BIT_REV,DB.Thm),
   ("NUMERAL_BIT_REVERSE",NUMERAL_BIT_REVERSE,DB.Thm),
   ("NUMERAL_BIT_MODF",NUMERAL_BIT_MODF,DB.Thm),
   ("NUMERAL_BIT_MODIFY",NUMERAL_BIT_MODIFY,DB.Thm),
   ("NUMERAL_TIMES_2EXP",NUMERAL_TIMES_2EXP,DB.Thm),
   ("NUMERAL_iDIV2",NUMERAL_iDIV2,DB.Thm),
   ("NUMERAL_DIV_2EXP",NUMERAL_DIV_2EXP,DB.Thm),
   ("NUMERAL_SFUNPOW_iDIV2",NUMERAL_SFUNPOW_iDIV2,DB.Thm),
   ("NUMERAL_SFUNPOW_iDUB",NUMERAL_SFUNPOW_iDUB,DB.Thm),
   ("NUMERAL_SFUNPOW_FDUB",NUMERAL_SFUNPOW_FDUB,DB.Thm),
   ("FDUB_iDIV2",FDUB_iDIV2,DB.Thm), ("FDUB_iDUB",FDUB_iDUB,DB.Thm),
   ("FDUB_FDUB",FDUB_FDUB,DB.Thm), ("LOG_compute",LOG_compute,DB.Thm),
   ("numeral_ilog2",numeral_ilog2,DB.Thm),
   ("numeral_log2",numeral_log2,DB.Thm),
   ("MOD_2EXP_EQ",MOD_2EXP_EQ,DB.Thm),
   ("MOD_2EXP_MAX",MOD_2EXP_MAX,DB.Thm),
   ("LOWEST_SET_BIT",LOWEST_SET_BIT,DB.Thm),
   ("LOWEST_SET_BIT_compute",LOWEST_SET_BIT_compute,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("bitTheory.bit_grammars",bitTheory.bit_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iMOD_2EXP", (Term.prim_mk_const { Name = "iMOD_2EXP", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iMOD_2EXP", (Term.prim_mk_const { Name = "iMOD_2EXP", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT_REV", (Term.prim_mk_const { Name = "BIT_REV", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT_MODF", (Term.prim_mk_const { Name = "BIT_MODF", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iBITWISE", (Term.prim_mk_const { Name = "iBITWISE", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iBITWISE", (Term.prim_mk_const { Name = "iBITWISE", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSUC", (Term.prim_mk_const { Name = "iSUC", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSUC", (Term.prim_mk_const { Name = "iSUC", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iDIV2", (Term.prim_mk_const { Name = "iDIV2", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iDIV2", (Term.prim_mk_const { Name = "iDIV2", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SFUNPOW", (Term.prim_mk_const { Name = "SFUNPOW", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FDUB", (Term.prim_mk_const { Name = "FDUB", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iLOG2", (Term.prim_mk_const { Name = "iLOG2", Thy = "numeral_bit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iLOG2", (Term.prim_mk_const { Name = "iLOG2", Thy = "numeral_bit"}))
  val _ = update_grms
       (temp_remove_ovl_mapping "iBITWISE")
        {Name = "iBITWISE", Thy = "numeral_bit"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iSUC")
        {Name = "iSUC", Thy = "numeral_bit"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iDIV2")
        {Name = "iDIV2", Thy = "numeral_bit"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iLOG2")
        {Name = "iLOG2", Thy = "numeral_bit"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iMOD_2EXP")
        {Name = "iMOD_2EXP", Thy = "numeral_bit"}
  val numeral_bit_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "numeral_bit"
end
