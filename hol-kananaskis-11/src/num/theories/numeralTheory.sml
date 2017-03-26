structure numeralTheory :> numeralTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading numeralTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open arithmeticTheory
  in end;
  val _ = Theory.link_parents
          ("numeral",
          Arbnum.fromString "1488586081",
          Arbnum.fromString "951418")
          [("arithmetic",
           Arbnum.fromString "1488586036",
           Arbnum.fromString "382035")];
  val _ = Theory.incorporate_types "numeral" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("min", "bool"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("pair", "prod"), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("arithmetic", ">"),
   ID("arithmetic", ">="), ID("bool", "?"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("arithmetic", "DIV"),
   ID("arithmetic", "DIV2"), ID("arithmetic", "DIVMOD"),
   ID("arithmetic", "EVEN"), ID("arithmetic", "EXP"), ID("bool", "F"),
   ID("arithmetic", "FACT"), ID("pair", "FST"), ID("arithmetic", "FUNPOW"),
   ID("bool", "LET"), ID("arithmetic", "MAX"), ID("arithmetic", "MIN"),
   ID("arithmetic", "MOD"), ID("arithmetic", "NUMERAL"),
   ID("arithmetic", "ODD"), ID("prim_rec", "PRE"), ID("pair", "SND"),
   ID("num", "SUC"), ID("bool", "T"), ID("arithmetic", "ZERO"),
   ID("numeral", "exactlog"), ID("arithmetic", "findq"),
   ID("numeral", "iBIT_cases"), ID("numeral", "iDUB"),
   ID("numeral", "iSQR"), ID("numeral", "iSUB"), ID("numeral", "iZ"),
   ID("numeral", "iiSUC"), ID("numeral", "internal_mult"),
   ID("numeral", "onecount"), ID("numeral", "texp_help"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYOP [2], TYOP [0, 3, 2],
   TYV "'a", TYOP [0, 0, 5], TYOP [0, 6, 5], TYOP [0, 6, 7],
   TYOP [0, 5, 8], TYOP [0, 0, 9], TYOP [0, 0, 3], TYOP [0, 5, 5],
   TYOP [0, 0, 12], TYOP [0, 5, 3], TYOP [0, 14, 3], TYOP [0, 3, 3],
   TYOP [0, 16, 3], TYOP [0, 6, 3], TYOP [0, 18, 3], TYOP [0, 11, 3],
   TYOP [0, 20, 3], TYOP [0, 13, 3], TYOP [0, 22, 3], TYOP [7, 0, 0],
   TYOP [0, 0, 24], TYOP [0, 0, 25], TYOP [7, 0, 24], TYOP [0, 24, 27],
   TYOP [0, 0, 28], TYOP [0, 3, 16], TYOP [0, 0, 11], TYOP [0, 5, 14],
   TYOP [0, 2, 3], TYOP [0, 2, 33], TYOP [0, 24, 3], TYOP [0, 24, 35],
   TYOP [0, 24, 24], TYOP [0, 24, 37], TYOP [0, 3, 38], TYOP [0, 27, 24],
   TYOP [0, 24, 0], TYOP [0, 12, 13], TYOP [0, 1, 1], TYOP [0, 25, 25],
   TYOP [0, 27, 0], TYOP [0, 1, 0], TYOP [0, 1, 46], TYOP [0, 0, 47],
   TYOP [0, 0, 48]]
  end
  val _ = Theory.incorporate_consts "numeral" tyvector
     [("texp_help", 2), ("onecount", 2), ("internal_mult", 2),
      ("iiSUC", 1), ("iZ", 1), ("iSUB", 4), ("iSQR", 1), ("iDUB", 1),
      ("iBIT_cases", 10), ("exactlog", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 11), TMV("a", 0), TMV("acc", 0), TMV("b", 3), TMV("b1f", 13),
   TMV("b2f", 13), TMV("bf1", 6), TMV("bf2", 6), TMV("f", 12), TMV("f", 6),
   TMV("m", 0), TMV("n", 0), TMV("q", 0), TMV("x", 5), TMV("x", 0),
   TMV("y", 0), TMV("zf", 5), TMC(3, 15), TMC(3, 17), TMC(3, 19),
   TMC(3, 21), TMC(3, 23), TMC(3, 20), TMC(4, 2), TMC(5, 2), TMC(6, 26),
   TMC(6, 29), TMC(8, 2), TMC(9, 30), TMC(10, 0), TMC(11, 31), TMC(12, 31),
   TMC(13, 32), TMC(13, 30), TMC(13, 34), TMC(13, 31), TMC(13, 36),
   TMC(14, 30), TMC(15, 31), TMC(16, 31), TMC(17, 19), TMC(18, 1),
   TMC(19, 1), TMC(20, 4), TMC(20, 39), TMC(21, 2), TMC(22, 1),
   TMC(23, 40), TMC(24, 11), TMC(25, 2), TMC(26, 3), TMC(27, 1),
   TMC(28, 41), TMC(29, 42), TMC(30, 43), TMC(30, 44), TMC(31, 2),
   TMC(32, 2), TMC(33, 2), TMC(34, 1), TMC(35, 11), TMC(36, 1),
   TMC(37, 41), TMC(38, 1), TMC(39, 3), TMC(40, 0), TMC(41, 1),
   TMC(42, 45), TMC(43, 10), TMC(43, 49), TMC(44, 1), TMC(45, 1),
   TMC(46, 4), TMC(47, 1), TMC(48, 1), TMC(49, 2), TMC(50, 2), TMC(51, 2),
   TMC(52, 16)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op iZ x = x
    val op iZ = DT(((("numeral",1),[]),[]), [read"%22%14%35%73$0@@$0@|@"])
  fun op iiSUC x = x
    val op iiSUC =
    DT(((("numeral",2),[]),[]), [read"%22%11%35%74$0@@%63%63$0@@@|@"])
  fun op iBIT_cases x = x
    val op iBIT_cases =
    DT(((("numeral",11),[("numeral",[10])]),["DISK_THM"]),
       [read"%28%17%16%19%6%19%7%32%68%65@$2@$1@$0@@$2@|@|@|@@%28%22%11%17%16%19%6%19%7%32%68%41$3@@$2@$1@$0@@$1$3@@|@|@|@|@@%22%11%17%16%19%6%19%7%32%68%42$3@@$2@$1@$0@@$0$3@@|@|@|@|@@@"])
  fun op iDUB x = x
    val op iDUB =
    DT(((("numeral",12),[]),[]), [read"%22%14%35%70$0@@%24$0@$0@@|@"])
  fun op iSUB_DEF x = x
    val op iSUB_DEF =
    DT(((("numeral",13),[("numeral",[10])]),["DISK_THM"]),
       [read"%28%18%3%22%14%35%72$1@%65@$0@@%65@|@|@@%28%18%3%22%11%22%14%35%72$2@%41$1@@$0@@%43$2@%69$0@%41$1@@%10%70%72%64@$2@$0@@|@%10%41%72%50@$2@$0@@|@@%69$0@%70$1@@%10%41%72%50@$2@$0@@|@%10%70%72%50@$2@$0@@|@@@|@|@|@@%18%3%22%11%22%14%35%72$2@%42$1@@$0@@%43$2@%69$0@%42$1@@%10%41%72%64@$2@$0@@|@%10%70%72%64@$2@$0@@|@@%69$0@%41$1@@%10%70%72%64@$2@$0@@|@%10%41%72%50@$2@$0@@|@@@|@|@|@@@"])
  fun op iSQR x = x
    val op iSQR =
    DT(((("numeral",19),[]),[]), [read"%22%14%35%71$0@@%23$0@$0@@|@"])
  fun op texp_help_def x = x
    val op texp_help_def =
    DT(((("numeral",29),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%28%22%2%35%77%29@$0@@%42$0@@|@@%22%11%22%2%35%77%63$1@@$0@@%77$1@%41$0@@@|@|@@"])
  fun op onecount_def x = x
    val op onecount_def =
    DT(((("numeral",34),[("bool",[60]),("numeral",[10])]),["DISK_THM"]),
       [read"%28%22%14%35%76%65@$0@@$0@|@@%28%22%11%22%14%35%76%41$1@@$0@@%76$1@%63$0@@@|@|@@%22%11%22%14%35%76%42$1@@$0@@%65@|@|@@@"])
  fun op exactlog_def x = x
    val op exactlog_def =
    DT(((("numeral",35),[("numeral",[10])]),["DISK_THM"]),
       [read"%28%35%66%65@@%65@@%28%22%11%35%66%41$0@@@%65@|@@%22%11%35%66%42$0@@@%54%14%43%35$0@%65@@%65@%41$0@@|@%76$0@%65@@@|@@@"])
  fun op internal_mult_def x = x
    val op internal_mult_def =
    DT(((("numeral",38),[]),[]), [read"%34%75@%23@"])
  fun op numeral_suc x = x
    val op numeral_suc =
    DT(((("numeral",0),
        [("arithmetic",[2,3,4,24]),("bool",[25,36,51,56])]),["DISK_THM"]),
       [read"%28%35%63%65@@%41%65@@@%28%22%11%35%63%41$0@@@%42$0@@|@@%22%11%35%63%42$0@@@%41%63$0@@@|@@@"])
  fun op numeral_distrib x = x
    val op numeral_distrib =
    DT(((("numeral",3),
        [("arithmetic",[1,2,3,4,8,9,10,11,12,13,24,49,62,71]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,76,93,94,96,102,
          105,106,124]),("numeral",[1]),("prim_rec",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%28%22%11%35%24%29@$0@@$0@|@@%28%22%11%35%24$0@%29@@$0@|@@%28%22%11%22%10%35%24%59$1@@%59$0@@@%59%73%24$1@$0@@@@|@|@@%28%22%11%35%23%29@$0@@%29@|@@%28%22%11%35%23$0@%29@@%29@|@@%28%22%11%22%10%35%23%59$1@@%59$0@@@%59%23$1@$0@@@|@|@@%28%22%11%35%27%29@$0@@%29@|@@%28%22%11%35%27$0@%29@@$0@|@@%28%22%11%22%10%35%27%59$1@@%59$0@@@%59%27$1@$0@@@|@|@@%28%22%11%35%49%29@%59%41$0@@@@%29@|@@%28%22%11%35%49%29@%59%42$0@@@@%29@|@@%28%22%11%35%49$0@%29@@%59%41%65@@@|@@%28%22%11%22%10%35%49%59$1@@%59$0@@@%59%49$1@$0@@@|@|@@%28%35%63%29@@%59%41%65@@@@%28%22%11%35%63%59$0@@@%59%63$0@@@|@@%28%35%61%29@@%29@@%28%22%11%35%61%59$0@@@%59%61$0@@@|@@%28%22%11%33%35%59$0@@%29@@%35$0@%65@@|@@%28%22%11%33%35%29@%59$0@@@%35$0@%65@@|@@%28%22%11%22%10%33%35%59$1@@%59$0@@@%35$1@$0@@|@|@@%28%22%11%33%30$0@%29@@%50@|@@%28%22%11%33%30%29@%59$0@@@%30%65@$0@@|@@%28%22%11%22%10%33%30%59$1@@%59$0@@@%30$1@$0@@|@|@@%28%22%11%33%38%29@$0@@%50@|@@%28%22%11%33%38%59$0@@%29@@%30%65@$0@@|@@%28%22%11%22%10%33%38%59$1@@%59$0@@@%30$0@$1@@|@|@@%28%22%11%33%31%29@$0@@%64@|@@%28%22%11%33%31%59$0@@%29@@%31$0@%65@@|@@%28%22%11%22%10%33%31%59$1@@%59$0@@@%31$1@$0@@|@|@@%28%22%11%33%39$0@%29@@%64@|@@%28%22%11%33%39%29@$0@@%35$0@%29@@|@@%28%22%11%22%10%33%39%59$1@@%59$0@@@%31$0@$1@@|@|@@%28%22%11%33%60%59$0@@@%60$0@@|@@%28%22%11%33%48%59$0@@@%48$0@@|@@%28%78%60%29@@@%48%29@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op numeral_iisuc x = x
    val op numeral_iisuc =
    DT(((("numeral",4),
        [("arithmetic",[2,3,4,24]),("bool",[25,51,56]),
         ("numeral",[2])]),["DISK_THM"]),
       [read"%28%35%74%65@@%42%65@@@%28%35%74%41%11@@@%41%63%11@@@@%35%74%42%11@@@%42%63%11@@@@@"])
  fun op numeral_add x = x
    val op numeral_add =
    DT(((("numeral",5),
        [("arithmetic",[2,3,4,24,25,27]),("bool",[25,51,56,63]),
         ("numeral",[1,2]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%22%11%22%10%28%35%73%24%65@$1@@@$1@@%28%35%73%24$1@%65@@@$1@@%28%35%73%24%41$1@@%41$0@@@@%42%73%24$1@$0@@@@@%28%35%73%24%41$1@@%42$0@@@@%41%63%24$1@$0@@@@@%28%35%73%24%42$1@@%41$0@@@@%41%63%24$1@$0@@@@@%28%35%73%24%42$1@@%42$0@@@@%42%63%24$1@$0@@@@@%28%35%63%24%65@$1@@@%63$1@@@%28%35%63%24$1@%65@@@%63$1@@@%28%35%63%24%41$1@@%41$0@@@@%41%63%24$1@$0@@@@@%28%35%63%24%41$1@@%42$0@@@@%42%63%24$1@$0@@@@@%28%35%63%24%42$1@@%41$0@@@@%42%63%24$1@$0@@@@@%28%35%63%24%42$1@@%42$0@@@@%41%74%24$1@$0@@@@@%28%35%74%24%65@$1@@@%74$1@@@%28%35%74%24$1@%65@@@%74$1@@@%28%35%74%24%41$1@@%41$0@@@@%42%63%24$1@$0@@@@@%28%35%74%24%41$1@@%42$0@@@@%41%74%24$1@$0@@@@@%28%35%74%24%42$1@@%41$0@@@@%41%74%24$1@$0@@@@@%35%74%24%42$1@@%42$0@@@@%42%74%24$1@$0@@@@@@@@@@@@@@@@@@@@@|@|@"])
  fun op numeral_eq x = x
    val op numeral_eq =
    DT(((("numeral",6),
        [("arithmetic",[2,3,4,24]),("bool",[14,25,26,27,51,54,56,58,63]),
         ("num",[7,9]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%22%11%22%10%28%33%35%65@%41$1@@@%50@@%28%33%35%41$1@@%65@@%50@@%28%33%35%65@%42$1@@@%50@@%28%33%35%42$1@@%65@@%50@@%28%33%35%41$1@@%42$0@@@%50@@%28%33%35%42$1@@%41$0@@@%50@@%28%33%35%41$1@@%41$0@@@%35$1@$0@@@%33%35%42$1@@%42$0@@@%35$1@$0@@@@@@@@@|@|@"])
  fun op numeral_lt x = x
    val op numeral_lt =
    DT(((("numeral",7),
        [("arithmetic",[2,3,4,24,28,37,38,46,58]),
         ("bool",[14,25,26,27,36,51,54,56,58,63]),("num",[9]),
         ("prim_rec",[6,7]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%22%11%22%10%28%33%30%65@%41$1@@@%64@@%28%33%30%65@%42$1@@@%64@@%28%33%30$1@%65@@%50@@%28%33%30%41$1@@%41$0@@@%30$1@$0@@@%28%33%30%42$1@@%42$0@@@%30$1@$0@@@%28%33%30%41$1@@%42$0@@@%78%30$0@$1@@@@%33%30%42$1@@%41$0@@@%30$1@$0@@@@@@@@|@|@"])
  fun op numeral_lte x = x
    val op numeral_lte =
    DT(((("numeral",8),
        [("arithmetic",[2,3,4,24,28,37,38,46,58,59]),
         ("bool",[14,25,26,27,36,51,54,56,58,63]),("num",[9]),
         ("prim_rec",[6,7]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%22%11%22%10%28%33%31%65@$1@@%64@@%28%33%31%41$1@@%65@@%50@@%28%33%31%42$1@@%65@@%50@@%28%33%31%41$1@@%41$0@@@%31$1@$0@@@%28%33%31%41$1@@%42$0@@@%31$1@$0@@@%28%33%31%42$1@@%41$0@@@%78%31$0@$1@@@@%33%31%42$1@@%42$0@@@%31$1@$0@@@@@@@@|@|@"])
  fun op numeral_pre x = x
    val op numeral_pre =
    DT(((("numeral",9),
        [("arithmetic",[2,3,4,24,27]),("bool",[25,36,51,56]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%28%35%61%65@@%65@@%28%35%61%41%65@@@%65@@%28%22%11%35%61%41%41$0@@@@%42%61%41$0@@@@|@@%28%22%11%35%61%41%42$0@@@@%42%41$0@@@|@@%22%11%35%61%42$0@@@%41$0@@|@@@@@"])
  fun op bit_initiality x = x
    val op bit_initiality =
    DT(((("numeral",10),
        [("arithmetic",[3,4,24,107]),
         ("bool",[7,25,27,37,54,56,58,63,64,68,105,124,129,140]),
         ("numeral",[6]),("prim_rec",[42]),
         ("relation",[120,127])]),["DISK_THM"]),
       [read"%17%16%21%4%21%5%40%9%28%32$0%65@@$3@@%28%22%11%32$1%41$0@@@$3$0@$1$0@@@|@@%22%11%32$1%42$0@@@$2$0@$1$0@@@|@@@|@|@|@|@"])
  fun op bit_induction x = x
    val op bit_induction =
    DT(((("numeral",14),
        [("arithmetic",[2,3,4,24,107]),
         ("bool",
         [7,14,25,26,36,47,48,51,52,53,54,56,58,63,71,72,76,78,91,96,146]),
         ("combin",[19]),("num",[9]),("numeral",[0,10]),("prim_rec",[42]),
         ("relation",[101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%20%0%37%28$0%65@@%28%22%11%37$1$0@@$1%41$0@@@|@@%22%11%37$1$0@@$1%42$0@@@|@@@@%22%11$1$0@|@@|@"])
  fun op iSUB_THM x = x
    val op iSUB_THM =
    DT(((("numeral",15),
        [("arithmetic",[2,3,4,24]),("bool",[14,25,36,51,52,56,64]),
         ("num",[9]),("numeral",[0,11,13])]),["DISK_THM"]),
       [read"%18%3%22%11%22%10%28%35%72$2@%65@%14@@%65@@%28%35%72%64@$1@%65@@$1@@%28%35%72%50@%41$1@@%65@@%70$1@@@%28%35%72%64@%41$1@@%41$0@@@%70%72%64@$1@$0@@@@%28%35%72%50@%41$1@@%41$0@@@%41%72%50@$1@$0@@@@%28%35%72%64@%41$1@@%42$0@@@%41%72%50@$1@$0@@@@%28%35%72%50@%41$1@@%42$0@@@%70%72%50@$1@$0@@@@%28%35%72%50@%42$1@@%65@@%41$1@@@%28%35%72%64@%42$1@@%41$0@@@%41%72%64@$1@$0@@@@%28%35%72%50@%42$1@@%41$0@@@%70%72%64@$1@$0@@@@%28%35%72%64@%42$1@@%42$0@@@%70%72%64@$1@$0@@@@%35%72%50@%42$1@@%42$0@@@%41%72%50@$1@$0@@@@@@@@@@@@@@|@|@|@"])
  fun op numeral_sub x = x
    val op numeral_sub =
    DT(((("numeral",16),
        [("arithmetic",
         [1,2,3,4,6,10,24,27,28,34,37,38,39,41,46,58,59,62,63,95,96,106,
          107,112,155,192,193,195,196]),
         ("bool",
         [5,14,25,26,27,30,36,51,52,53,54,56,58,63,64,105,108,109,124,
          129]),("num",[9]),("numeral",[0,7,8,11,12,13,14]),
         ("prim_rec",[1,4,6,7]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%22%11%22%10%35%59%27$1@$0@@@%43%30$0@$1@@%59%72%64@$1@$0@@@%29@@|@|@"])
  fun op iDUB_removal x = x
    val op iDUB_removal =
    DT(((("numeral",17),
        [("arithmetic",[2,3,4,24]),("bool",[25,36,51,56]),
         ("numeral",[12])]),["DISK_THM"]),
       [read"%22%11%28%35%70%41$0@@@%42%70$0@@@@%28%35%70%42$0@@@%42%41$0@@@@%35%70%65@@%65@@@|@"])
  fun op numeral_mult x = x
    val op numeral_mult =
    DT(((("numeral",18),
        [("arithmetic",[2,3,4,24,25,27,71,74]),("bool",[25,51,56,63]),
         ("numeral",[1,12])]),["DISK_THM"]),
       [read"%22%11%22%10%28%35%23%65@$1@@%65@@%28%35%23$1@%65@@%65@@%28%35%23%41$1@@$0@@%73%24%70%23$1@$0@@@$0@@@@%35%23%42$1@@$0@@%70%73%24%23$1@$0@@$0@@@@@@@|@|@"])
  fun op numeral_exp x = x
    val op numeral_exp =
    DT(((("numeral",20),
        [("arithmetic",[1,2,3,4,8,24,76,102]),("bool",[25,36,51,56,63]),
         ("numeral",[19])]),["DISK_THM"]),
       [read"%28%22%11%35%49$0@%65@@%41%65@@|@@%28%22%11%22%10%35%49$1@%41$0@@@%23$1@%71%49$1@$0@@@@|@|@@%22%11%22%10%35%49$1@%42$0@@@%23%71$1@@%71%49$1@$0@@@@|@|@@@"])
  fun op numeral_evenodd x = x
    val op numeral_evenodd =
    DT(((("numeral",21),
        [("arithmetic",[2,3,4,12,13,24,162,164]),
         ("bool",[25,36,51,54,56])]),["DISK_THM"]),
       [read"%22%11%28%48%65@@%28%48%42$0@@@%28%78%48%41$0@@@@%28%78%60%65@@@%28%78%60%42$0@@@@%60%41$0@@@@@@@|@"])
  fun op numeral_fact x = x
    val op numeral_fact =
    DT(((("numeral",22),
        [("arithmetic",[1,3,4,24,28,156]),("bool",[25,56]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%28%35%51%29@@%59%41%65@@@@%28%22%11%35%51%59%41$0@@@@%23%59%41$0@@@%51%61%59%41$0@@@@@@|@@%22%11%35%51%59%42$0@@@@%23%59%42$0@@@%51%59%41$0@@@@@|@@@"])
  fun op numeral_funpow x = x
    val op numeral_funpow =
    DT(((("numeral",23),
        [("arithmetic",[1,3,4,15,24,28]),("bool",[25,56]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%28%32%53%8@%29@%13@@%13@@%28%32%53%8@%59%41%11@@@%13@@%53%8@%61%59%41%11@@@@%8%13@@@@%32%53%8@%59%42%11@@@%13@@%53%8@%59%41%11@@@%8%13@@@@@"])
  fun op numeral_MIN x = x
    val op numeral_MIN =
    DT(((("numeral",24),
        [("arithmetic",[1,295,308]),("bool",[25,51,56])]),["DISK_THM"]),
       [read"%28%35%57%29@%14@@%29@@%28%35%57%14@%29@@%29@@%35%57%59%14@@%59%15@@@%59%43%30%14@%15@@%14@%15@@@@@"])
  fun op numeral_MAX x = x
    val op numeral_MAX =
    DT(((("numeral",25),
        [("arithmetic",[1,294,309]),("bool",[25,51,56])]),["DISK_THM"]),
       [read"%28%35%56%29@%14@@%14@@%28%35%56%14@%29@@%14@@%35%56%59%14@@%59%15@@@%59%43%30%14@%15@@%15@%14@@@@@"])
  fun op divmod_POS x = x
    val op divmod_POS =
    DT(((("numeral",26),
        [("arithmetic",[366]),
         ("bool",[25,26,27,30,51,53,56,58,63,64,105,124,169]),("pair",[4]),
         ("prim_rec",[4])]),["DISK_THM"]),
       [read"%22%11%37%30%29@$0@@%36%47%26%1@%25%10@$0@@@@%44%30%10@$0@@%25%1@%10@@%55%12%47%26%24%1@$0@@%25%27%10@%23$1@$0@@@$1@@@|@%67%26%59%41%65@@@%25%10@$0@@@@@@@|@"])
  fun op DIVMOD_NUMERAL_CALC x = x
    val op DIVMOD_NUMERAL_CALC =
    DT(((("numeral",27),
        [("arithmetic",[2,370]),("bool",[25,53,54,58,63,73]),
         ("numeral",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%28%22%10%22%11%35%45$1@%41$0@@@%52%47%26%65@%25$1@%41$0@@@@@@|@|@@%28%22%10%22%11%35%45$1@%42$0@@@%52%47%26%65@%25$1@%42$0@@@@@@|@|@@%28%22%10%22%11%35%58$1@%41$0@@@%62%47%26%65@%25$1@%41$0@@@@@@|@|@@%22%10%22%11%35%58$1@%42$0@@@%62%47%26%65@%25$1@%42$0@@@@@@|@|@@@@"])
  fun op numeral_div2 x = x
    val op numeral_div2 =
    DT(((("numeral",28),
        [("arithmetic",[1,2,3,4,24,27,73,122,210,220,226,228,233]),
         ("bool",[25,53,54,55,58,63,73,75,83,100]),("numeral",[0,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%28%35%46%29@@%29@@%28%22%11%35%46%59%41$0@@@@%59$0@@|@@%22%11%35%46%59%42$0@@@@%59%63$0@@@|@@@"])
  fun op texp_help_thm x = x
    val op texp_help_thm =
    DT(((("numeral",30),
        [("arithmetic",[3,4,8,17,18,24,26,27,71,74,75,122]),
         ("bool",[14,25,56,170]),("marker",[8]),("num",[9]),
         ("numeral",[29]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%22%11%22%1%35%77$1@$0@@%23%24$0@%59%41%65@@@@%49%59%42%65@@@%24$1@%59%41%65@@@@@@|@|@"])
  fun op texp_help0 x = x
    val op texp_help0 =
    DT(((("numeral",31),
        [("arithmetic",[24,71,73,102,275]),("bool",[25,56]),
         ("numeral",[30])]),["DISK_THM"]),
       [read"%35%77%11@%29@@%49%59%42%65@@@%24%11@%59%41%65@@@@@"])
  fun op numeral_texp_help x = x
    val op numeral_texp_help =
    DT(((("numeral",32),
        [("arithmetic",[2,3,4,24]),("bool",[25,56]),("numeral",[29]),
         ("prim_rec",[1,3])]),["DISK_THM"]),
       [read"%28%35%77%65@%2@@%42%2@@@%28%35%77%41%11@@%2@@%77%61%41%11@@@%41%2@@@@%35%77%42%11@@%2@@%77%41%11@@%41%2@@@@@"])
  fun op TWO_EXP_THM x = x
    val op TWO_EXP_THM =
    DT(((("numeral",33),
        [("arithmetic",[1,2,3,4,8,24]),("bool",[25,56]),("numeral",[31]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%28%35%49%59%42%65@@@%29@@%59%41%65@@@@%28%35%49%59%42%65@@@%59%41%11@@@@%59%77%61%41%11@@@%65@@@@%35%49%59%42%65@@@%59%42%11@@@@%59%77%41%11@@%65@@@@@"])
  fun op onecount_characterisation x = x
    val op onecount_characterisation =
    DT(((("numeral",36),
        [("arithmetic",
         [2,3,6,8,17,18,24,26,28,29,30,35,56,59,60,61,71,93,95,106,122,128,
          130,193,273]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,55,56,58,63,64,83,100,105,124,129,147,
          169]),("marker",[6]),("num",[7]),("numeral",[14,34]),
         ("prim_rec",[1,4,6,7,15,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%11%22%1%37%28%30%29@%76$1@$0@@@%30%29@$1@@@%35$1@%27%49%59%42%65@@@%27%76$1@$0@@$0@@@%59%41%65@@@@@|@|@"])
  fun op exactlog_characterisation x = x
    val op exactlog_characterisation =
    DT(((("numeral",37),
        [("arithmetic",
         [2,4,17,18,24,26,29,30,35,38,58,60,62,65,73,102,106,122,128,192,
          193,273,275]),
         ("bool",
         [25,26,27,30,32,51,52,53,54,55,56,58,63,64,105,124,129,147,169,
          181]),("marker",[6]),("num",[7]),("numeral",[6,14,34,35,36]),
         ("prim_rec",[4,6,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%11%22%10%37%35%66$1@@%41$0@@@%35$1@%49%59%42%65@@@%24$0@%59%41%65@@@@@@|@|@"])
  fun op DIV2_BIT1 x = x
    val op DIV2_BIT1 =
    DT(((("numeral",39),
        [("arithmetic",[1]),("bool",[25,56]),
         ("numeral",[28])]),["DISK_THM"]), [read"%35%46%41%14@@@%14@"])
  fun op enumeral_mult x = x
    val op enumeral_mult =
    DT(((("numeral",40),
        [("arithmetic",[2,28,64,71,73,76]),
         ("bool",[25,26,27,30,32,53,54,56,58,63,64,105,124,129,140]),
         ("combin",[8,11,15,16,33,35]),("marker",[6,8]),
         ("numeral",[6,14,18,21,30,35,37,38,39]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%28%35%23%65@%11@@%65@@%28%35%23%11@%65@@%65@@%28%35%23%41%14@@%41%15@@@%75%41%14@@%41%15@@@@%28%35%23%41%14@@%42%15@@@%54%11%43%60$0@@%77%46$0@@%61%41%14@@@@%75%41%14@@%42%15@@@|@%66%42%15@@@@@%28%35%23%42%14@@%41%15@@@%54%10%43%60$0@@%77%46$0@@%61%41%15@@@@%75%42%14@@%41%15@@@|@%66%42%14@@@@@%35%23%42%14@@%42%15@@@%54%10%54%11%43%60$1@@%77%46$1@@%61%42%15@@@@%43%60$0@@%77%46$0@@%61%42%14@@@@%75%42%14@@%42%15@@@@|@%66%42%15@@@|@%66%42%14@@@@@@@@@"])
  fun op internal_mult_characterisation x = x
    val op internal_mult_characterisation =
    DT(((("numeral",41),[("numeral",[18,38])]),["DISK_THM"]),
       [read"%22%11%22%10%28%35%75%65@$1@@%65@@%28%35%75$1@%65@@%65@@%28%35%75%41$1@@$0@@%73%24%70%75$1@$0@@@$0@@@@%35%75%42$1@@$0@@%70%73%24%75$1@$0@@$0@@@@@@@|@|@"])
  end
  val _ = DB.bindl "numeral"
  [("iZ",iZ,DB.Def), ("iiSUC",iiSUC,DB.Def),
   ("iBIT_cases",iBIT_cases,DB.Def), ("iDUB",iDUB,DB.Def),
   ("iSUB_DEF",iSUB_DEF,DB.Def), ("iSQR",iSQR,DB.Def),
   ("texp_help_def",texp_help_def,DB.Def),
   ("onecount_def",onecount_def,DB.Def),
   ("exactlog_def",exactlog_def,DB.Def),
   ("internal_mult_def",internal_mult_def,DB.Def),
   ("numeral_suc",numeral_suc,DB.Thm),
   ("numeral_distrib",numeral_distrib,DB.Thm),
   ("numeral_iisuc",numeral_iisuc,DB.Thm),
   ("numeral_add",numeral_add,DB.Thm), ("numeral_eq",numeral_eq,DB.Thm),
   ("numeral_lt",numeral_lt,DB.Thm), ("numeral_lte",numeral_lte,DB.Thm),
   ("numeral_pre",numeral_pre,DB.Thm),
   ("bit_initiality",bit_initiality,DB.Thm),
   ("bit_induction",bit_induction,DB.Thm), ("iSUB_THM",iSUB_THM,DB.Thm),
   ("numeral_sub",numeral_sub,DB.Thm),
   ("iDUB_removal",iDUB_removal,DB.Thm),
   ("numeral_mult",numeral_mult,DB.Thm),
   ("numeral_exp",numeral_exp,DB.Thm),
   ("numeral_evenodd",numeral_evenodd,DB.Thm),
   ("numeral_fact",numeral_fact,DB.Thm),
   ("numeral_funpow",numeral_funpow,DB.Thm),
   ("numeral_MIN",numeral_MIN,DB.Thm), ("numeral_MAX",numeral_MAX,DB.Thm),
   ("divmod_POS",divmod_POS,DB.Thm),
   ("DIVMOD_NUMERAL_CALC",DIVMOD_NUMERAL_CALC,DB.Thm),
   ("numeral_div2",numeral_div2,DB.Thm),
   ("texp_help_thm",texp_help_thm,DB.Thm),
   ("texp_help0",texp_help0,DB.Thm),
   ("numeral_texp_help",numeral_texp_help,DB.Thm),
   ("TWO_EXP_THM",TWO_EXP_THM,DB.Thm),
   ("onecount_characterisation",onecount_characterisation,DB.Thm),
   ("exactlog_characterisation",exactlog_characterisation,DB.Thm),
   ("DIV2_BIT1",DIV2_BIT1,DB.Thm), ("enumeral_mult",enumeral_mult,DB.Thm),
   ("internal_mult_characterisation",
    internal_mult_characterisation,
    DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("arithmeticTheory.arithmetic_grammars",
                          arithmeticTheory.arithmetic_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iZ", (Term.prim_mk_const { Name = "iZ", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iZ", (Term.prim_mk_const { Name = "iZ", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iiSUC", (Term.prim_mk_const { Name = "iiSUC", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iiSUC", (Term.prim_mk_const { Name = "iiSUC", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iBIT_cases", (Term.prim_mk_const { Name = "iBIT_cases", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iDUB", (Term.prim_mk_const { Name = "iDUB", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iDUB", (Term.prim_mk_const { Name = "iDUB", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSUB", (Term.prim_mk_const { Name = "iSUB", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQR", (Term.prim_mk_const { Name = "iSQR", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iSQR", (Term.prim_mk_const { Name = "iSQR", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("texp_help", (Term.prim_mk_const { Name = "texp_help", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("onecount", (Term.prim_mk_const { Name = "onecount", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("exactlog", (Term.prim_mk_const { Name = "exactlog", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("internal_mult", (Term.prim_mk_const { Name = "internal_mult", Thy = "numeral"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("internal_mult", (Term.prim_mk_const { Name = "internal_mult", Thy = "numeral"}))
  val _ = update_grms
       (temp_remove_ovl_mapping "iZ")
        {Name = "iZ", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iiSUC")
        {Name = "iiSUC", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iDUB")
        {Name = "iDUB", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iSUB")
        {Name = "iSUB", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "iSQR")
        {Name = "iSQR", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "texp_help")
        {Name = "texp_help", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "onecount")
        {Name = "onecount", Thy = "numeral"}
  val _ = update_grms
       (temp_remove_ovl_mapping "exactlog")
        {Name = "exactlog", Thy = "numeral"}
  val numeral_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "numeral",
    thydataty = "OpenTheoryMap",
    data =
        " 11.Unwanted.id7.numeral2.iZ18.HOL4.Numeral.iiSUC7.numeral5.iiSUC23.HOL4.Numeral.iBIT_cases7.numeral10.iBIT_cases17.HOL4.Numeral.iDUB7.numeral4.iDUB17.HOL4.Numeral.iSUB7.numeral4.iSUB17.HOL4.Numeral.iSQR7.numeral4.iSQR22.HOL4.Numeral.texp_help7.numeral9.texp_help21.HOL4.Numeral.onecount7.numeral8.onecount21.HOL4.Numeral.exactlog7.numeral8.exactlog26.HOL4.Numeral.internal_mult7.numeral13.internal_mult"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "numeral"
end
