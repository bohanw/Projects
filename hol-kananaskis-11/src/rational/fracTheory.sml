structure fracTheory :> fracTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading fracTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open intExtensionTheory
  in end;
  val _ = Theory.link_parents
          ("frac",Arbnum.fromString "1488589059",Arbnum.fromString "25048")
          [("intExtension",
           Arbnum.fromString "1488589035",
           Arbnum.fromString "643789")];
  val _ = Theory.incorporate_types "frac" [("frac", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("integer", "int"),
   ID("frac", "frac"), ID("min", "bool"), ID("num", "num"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("integer", "ABS"),
   ID("arithmetic", "BIT1"), ID("pair", "FST"),
   ID("arithmetic", "NUMERAL"), ID("integer", "Num"),
   ID("bool", "ONE_ONE"), ID("bool", "ONTO"), ID("intExtension", "SGN"),
   ID("pair", "SND"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("frac", "abs_frac"),
   ID("frac", "frac_0"), ID("frac", "frac_1"), ID("frac", "frac_add"),
   ID("frac", "frac_ainv"), ID("frac", "frac_div"), ID("frac", "frac_dnm"),
   ID("frac", "frac_minv"), ID("frac", "frac_mul"), ID("frac", "frac_nmr"),
   ID("frac", "frac_save"), ID("frac", "frac_sgn"), ID("frac", "frac_sub"),
   ID("integer", "int_add"), ID("integer", "int_lt"),
   ID("integer", "int_mul"), ID("integer", "int_neg"),
   ID("integer", "int_of_num"), ID("integer", "int_sub"),
   ID("frac", "les_abs"), ID("frac", "rep_frac"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0, 0], TYOP [3], TYOP [0, 2, 1], TYOP [4],
   TYOP [0, 2, 4], TYOP [0, 2, 5], TYOP [0, 2, 2], TYOP [0, 2, 7],
   TYOP [0, 2, 0], TYOP [5], TYOP [0, 10, 2], TYOP [0, 0, 11],
   TYOP [0, 1, 2], TYOP [0, 4, 4], TYOP [0, 14, 4], TYOP [0, 5, 4],
   TYOP [0, 0, 4], TYOP [0, 17, 4], TYOP [0, 10, 4], TYOP [0, 19, 4],
   TYOP [0, 1, 4], TYOP [0, 21, 4], TYOP [0, 10, 10], TYOP [0, 10, 23],
   TYOP [0, 0, 1], TYOP [0, 0, 25], TYOP [0, 4, 14], TYOP [0, 0, 17],
   TYOP [0, 1, 21], TYOP [0, 3, 4], TYOP [0, 30, 4], TYOP [0, 0, 0],
   TYOP [0, 1, 0], TYOP [0, 0, 10], TYOP [0, 7, 4], TYOP [0, 21, 30],
   TYOP [0, 0, 32], TYOP [0, 10, 0]]
  end
  val _ = Theory.incorporate_consts "frac" tyvector
     [("rep_frac", 3), ("les_abs", 6), ("frac_sub", 8), ("frac_sgn", 9),
      ("frac_save", 12), ("frac_nmr", 9), ("frac_mul", 8),
      ("frac_minv", 7), ("frac_dnm", 9), ("frac_div", 8), ("frac_ainv", 7),
      ("frac_add", 8), ("frac_1", 2), ("frac_0", 2), ("abs_frac", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 4), TMV("a", 2), TMV("a", 0), TMV("a1", 0), TMV("a2", 0),
   TMV("b", 2), TMV("b", 0), TMV("b1", 0), TMV("b1", 10), TMV("b2", 0),
   TMV("b2", 10), TMV("c", 2), TMV("dnm", 10), TMV("f", 2), TMV("f", 1),
   TMV("f1", 2), TMV("f2", 2), TMV("nmr", 0), TMV("r", 1), TMV("rep", 3),
   TMC(6, 15), TMC(6, 16), TMC(6, 18), TMC(6, 20), TMC(6, 22), TMC(7, 24),
   TMC(8, 24), TMC(9, 26), TMC(10, 27), TMC(11, 10), TMC(12, 27),
   TMC(12, 6), TMC(12, 28), TMC(12, 29), TMC(13, 27), TMC(14, 31),
   TMC(15, 32), TMC(16, 23), TMC(17, 33), TMC(18, 23), TMC(19, 34),
   TMC(20, 35), TMC(21, 35), TMC(22, 32), TMC(23, 33), TMC(24, 36),
   TMC(25, 10), TMC(26, 27), TMC(27, 13), TMC(28, 2), TMC(29, 2),
   TMC(30, 8), TMC(31, 7), TMC(32, 8), TMC(33, 9), TMC(34, 7), TMC(35, 8),
   TMC(36, 9), TMC(37, 12), TMC(38, 9), TMC(39, 8), TMC(40, 37),
   TMC(41, 28), TMC(42, 37), TMC(43, 32), TMC(44, 38), TMC(45, 37),
   TMC(46, 6), TMC(47, 3), TMC(48, 14)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op frac_TY_DEF x = x
    val op frac_TY_DEF =
    DT(((("frac",0),
        [("bool",[25]),("integer",[206]),("numeral",[3,7]),
         ("pair",[9])]),["DISK_THM"]),
       [read"%35%19%45%14%62%65%29@@%44$0@@|@$0@|@"])
  fun op frac_tybij x = x
    val op frac_tybij =
    DT(((("frac",1),[("bool",[117]),("frac",[0])]),["DISK_THM"]),
       [read"%28%21%1%31%48%68$0@@@$0@|@@%24%18%30%14%62%65%29@@%44$0@@|$0@@%33%68%48$0@@@$0@@|@@"])
  fun op frac_nmr_def x = x
    val op frac_nmr_def =
    DT(((("frac",3),[]),[]), [read"%21%13%32%57$0@@%38%68$0@@@|@"])
  fun op frac_dnm_def x = x
    val op frac_dnm_def =
    DT(((("frac",4),[]),[]), [read"%21%13%32%54$0@@%44%68$0@@@|@"])
  fun op frac_sgn_def x = x
    val op frac_sgn_def =
    DT(((("frac",5),[]),[]), [read"%21%15%32%59$0@@%43%57$0@@@|@"])
  fun op frac_ainv_def x = x
    val op frac_ainv_def =
    DT(((("frac",6),[]),[]),
       [read"%21%15%31%52$0@@%48%27%64%57$0@@@%54$0@@@@|@"])
  fun op frac_minv_def x = x
    val op frac_minv_def =
    DT(((("frac",7),[]),[]),
       [read"%21%15%31%55$0@@%48%27%63%59$0@@%54$0@@@%36%57$0@@@@@|@"])
  fun op frac_0_def x = x
    val op frac_0_def =
    DT(((("frac",8),[]),[]),
       [read"%31%49@%48%27%65%29@@%65%39%37%46@@@@@@"])
  fun op frac_1_def x = x
    val op frac_1_def =
    DT(((("frac",9),[]),[]),
       [read"%31%50@%48%27%65%39%37%46@@@@%65%39%37%46@@@@@@"])
  fun op les_abs_def x = x
    val op les_abs_def =
    DT(((("frac",10),[]),[]),
       [read"%21%15%21%16%30%67$1@$0@@%62%63%57$1@@%54$0@@@%63%57$0@@%54$1@@@@|@|@"])
  fun op frac_add_def x = x
    val op frac_add_def =
    DT(((("frac",11),[]),[]),
       [read"%21%15%21%16%31%51$1@$0@@%48%27%61%63%57$1@@%54$0@@@%63%57$0@@%54$1@@@@%63%54$1@@%54$0@@@@@|@|@"])
  fun op frac_sub_def x = x
    val op frac_sub_def =
    DT(((("frac",12),[]),[]),
       [read"%21%15%21%16%31%60$1@$0@@%51$1@%52$0@@@|@|@"])
  fun op frac_mul_def x = x
    val op frac_mul_def =
    DT(((("frac",13),[]),[]),
       [read"%21%15%21%16%31%56$1@$0@@%48%27%63%57$1@@%57$0@@@%63%54$1@@%54$0@@@@@|@|@"])
  fun op frac_div_def x = x
    val op frac_div_def =
    DT(((("frac",14),[]),[]),
       [read"%21%15%21%16%31%53$1@$0@@%56$1@%55$0@@@|@|@"])
  fun op frac_save_def x = x
    val op frac_save_def =
    DT(((("frac",15),[]),[]),
       [read"%22%17%23%12%31%58$1@$0@@%48%27$1@%61%65$0@@%65%39%37%46@@@@@@@|@|@"])
  fun op frac_bij x = x
    val op frac_bij =
    DT(((("frac",2),[("frac",[1])]),["DISK_THM"]),
       [read"%28%21%1%31%48%68$0@@@$0@|@@%24%18%30%14%62%65%29@@%44$0@@|$0@@%33%68%48$0@@@$0@@|@@"])
  fun op FRAC x = x
    val op FRAC =
    DT(((("frac",16),
        [("bool",[25,56]),("frac",[2,3,4]),("pair",[7])]),["DISK_THM"]),
       [read"%21%13%31%48%27%57$0@@%54$0@@@@$0@|@"])
  fun op FRAC_EQ x = x
    val op FRAC_EQ =
    DT(((("frac",17),
        [("bool",[25,26,51,53,56,58,63,105,124]),("frac",[2]),
         ("pair",[4,9])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%30%31%48%27$3@$2@@@%48%27$1@$0@@@@%28%32$3@$1@@%32$2@$0@@@@@|@|@|@|@"])
  fun op FRAC_EQ_ALT x = x
    val op FRAC_EQ_ALT =
    DT(((("frac",18),
        [("bool",[25,26,51,56,58]),("frac",[16])]),["DISK_THM"]),
       [read"%21%15%21%16%30%31$1@$0@@%28%32%57$1@@%57$0@@@%32%54$1@@%54$0@@@@|@|@"])
  fun op FRAC_NOT_EQ x = x
    val op FRAC_NOT_EQ =
    DT(((("frac",19),
        [("bool",[25,26,47,48,53,54,63,93,94,96]),("frac",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%30%69%31%48%27$3@$2@@@%48%27$1@$0@@@@@%47%69%32$3@$1@@@%69%32$2@$0@@@@@@|@|@|@|@"])
  fun op FRAC_NOT_EQ_IMP x = x
    val op FRAC_NOT_EQ_IMP =
    DT(((("frac",20),
        [("bool",[25,51,53,58,63,96,105,124]),("frac",[17]),
         ("pair",[4])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%34%69%33%27$3@$2@@%27$1@$0@@@@%69%31%48%27$3@$2@@@%48%27$1@$0@@@@@@@|@|@|@|@"])
  fun op FRAC_DNMPOS x = x
    val op FRAC_DNMPOS =
    DT(((("frac",21),
        [("bool",[25,56,58,63]),("frac",[2,4])]),["DISK_THM"]),
       [read"%21%13%62%65%29@@%54$0@@|@"])
  fun op NMR x = x
    val op NMR =
    DT(((("frac",22),
        [("bool",[25,56,58]),("frac",[2,3]),("pair",[8,9])]),["DISK_THM"]),
       [read"%22%2%22%6%34%62%65%29@@$0@@%32%57%48%27$1@$0@@@@$1@@|@|@"])
  fun op DNM x = x
    val op DNM =
    DT(((("frac",23),
        [("bool",[25,56,58]),("frac",[2,4]),("pair",[9])]),["DISK_THM"]),
       [read"%22%2%22%6%34%62%65%29@@$0@@%32%54%48%27$1@$0@@@@$0@@|@|@"])
  fun op FRAC_AINV_CALCULATE x = x
    val op FRAC_AINV_CALCULATE =
    DT(((("frac",24),[("bool",[25,56]),("frac",[6,22,23])]),["DISK_THM"]),
       [read"%22%3%22%7%34%62%65%29@@$0@@%31%52%48%27$1@$0@@@@%48%27%64$1@@$0@@@@|@|@"])
  fun op FRAC_MINV_CALCULATE x = x
    val op FRAC_MINV_CALCULATE =
    DT(((("frac",25),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,94]),
         ("frac",[5,7,22,23]),("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%22%3%22%7%34%62%65%29@@$0@@%34%69%32$1@%65%29@@@@%31%55%48%27$1@$0@@@@%48%27%63%43$1@@$0@@%36$1@@@@@@|@|@"])
  fun op FRAC_SGN_CALCULATE x = x
    val op FRAC_SGN_CALCULATE =
    DT(((("frac",26),[("bool",[25,56]),("frac",[5,22])]),["DISK_THM"]),
       [read"%22%3%22%7%34%62%65%29@@$0@@%32%59%48%27$1@$0@@@@%43$1@@@|@|@"])
  fun op FRAC_ADD_CALCULATE x = x
    val op FRAC_ADD_CALCULATE =
    DT(((("frac",27),[("bool",[25,56]),("frac",[11,22,23])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%31%51%48%27$3@$2@@@%48%27$1@$0@@@@%48%27%61%63$3@$0@@%63$1@$2@@@%63$2@$0@@@@@@|@|@|@|@"])
  fun op FRAC_SUB_CALCULATE x = x
    val op FRAC_SUB_CALCULATE =
    DT(((("frac",28),
        [("bool",[25,56]),("frac",[6,11,12,22,23]),
         ("integer",[321,323])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%31%60%48%27$3@$2@@@%48%27$1@$0@@@@%48%27%66%63$3@$0@@%63$1@$2@@@%63$2@$0@@@@@@|@|@|@|@"])
  fun op FRAC_MULT_CALCULATE x = x
    val op FRAC_MULT_CALCULATE =
    DT(((("frac",29),[("bool",[25,56]),("frac",[13,22,23])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%31%56%48%27$3@$2@@@%48%27$1@$0@@@@%48%27%63$3@$1@@%63$2@$0@@@@@@|@|@|@|@"])
  fun op FRAC_DIV_CALCULATE x = x
    val op FRAC_DIV_CALCULATE =
    DT(((("frac",30),
        [("bool",[25,56]),("frac",[5,7,13,14,22,23]),("intExtension",[9]),
         ("integer",[61,63])]),["DISK_THM"]),
       [read"%22%3%22%7%22%4%22%9%34%62%65%29@@$2@@%34%62%65%29@@$0@@%34%69%32$1@%65%29@@@@%31%53%48%27$3@$2@@@%48%27$1@$0@@@@%48%27%63%63$3@%43$1@@@$0@@%63$2@%36$1@@@@@@@@|@|@|@|@"])
  fun op FRAC_ADD_ASSOC x = x
    val op FRAC_ADD_ASSOC =
    DT(((("frac",31),
        [("bool",[14,25,56,63,64]),("frac",[11,21,22,23]),
         ("intExtension",[1]),("integerRing",[20]),
         ("prelim",[23,24,28,33]),("quote",[20,23])]),["DISK_THM"]),
       [read"%21%1%21%5%21%11%31%51$2@%51$1@$0@@@%51%51$2@$1@@$0@@|@|@|@"])
  fun op FRAC_MUL_ASSOC x = x
    val op FRAC_MUL_ASSOC =
    DT(((("frac",32),
        [("bool",[14,25,56,63,64]),("frac",[13,21,22,23]),
         ("intExtension",[1]),("integerRing",[20]),("prelim",[33]),
         ("quote",[20,23])]),["DISK_THM"]),
       [read"%21%1%21%5%21%11%31%56$2@%56$1@$0@@@%56%56$2@$1@@$0@@|@|@|@"])
  fun op FRAC_ADD_COMM x = x
    val op FRAC_ADD_COMM =
    DT(((("frac",33),
        [("bool",[14,25,56,64]),("frac",[11]),("integerRing",[20]),
         ("prelim",[23,24,28,33]),("quote",[20,23])]),["DISK_THM"]),
       [read"%21%1%21%5%31%51$1@$0@@%51$0@$1@@|@|@"])
  fun op FRAC_MUL_COMM x = x
    val op FRAC_MUL_COMM =
    DT(((("frac",34),
        [("bool",[14,25,56,64]),("frac",[13]),("integerRing",[20]),
         ("prelim",[24,33]),("quote",[20,23])]),["DISK_THM"]),
       [read"%21%1%21%5%31%56$1@$0@@%56$0@$1@@|@|@"])
  fun op FRAC_ADD_RID x = x
    val op FRAC_ADD_RID =
    DT(((("frac",35),
        [("bool",[25,56]),("frac",[8,11,16,22,23]),
         ("integer",[80,84,93,206]),("numeral",[3,7])]),["DISK_THM"]),
       [read"%21%1%31%51$0@%49@@$0@|@"])
  fun op FRAC_MUL_RID x = x
    val op FRAC_MUL_RID =
    DT(((("frac",36),
        [("bool",[25,56]),("frac",[9,13,16,22,23]),("integer",[84,206]),
         ("numeral",[3,7])]),["DISK_THM"]),
       [read"%21%1%31%56$0@%50@@$0@|@"])
  fun op FRAC_1_0 x = x
    val op FRAC_1_0 =
    DT(((("frac",37),
        [("bool",[25,51,54,56]),("frac",[8,9,20]),("integer",[166,335]),
         ("numeral",[3,6]),("pair",[4])]),["DISK_THM"]),
       [read"%69%31%50@%49@@"])
  fun op FRAC_AINV_0 x = x
    val op FRAC_AINV_0 =
    DT(((("frac",38),
        [("bool",[25,56,63]),("frac",[6,8,22,23]),
         ("integer",[145,335])]),["DISK_THM"]), [read"%31%52%49@@%49@"])
  fun op FRAC_AINV_AINV x = x
    val op FRAC_AINV_AINV =
    DT(((("frac",39),
        [("bool",[25,56,63]),("frac",[6,16,21,22,23]),
         ("integer",[97])]),["DISK_THM"]),
       [read"%21%15%31%52%52$0@@@$0@|@"])
  fun op FRAC_AINV_ADD x = x
    val op FRAC_AINV_ADD =
    DT(((("frac",40),
        [("bool",[14,25,51,52,56,63,64]),("frac",[6,11,21,22,23]),
         ("intExtension",[1]),("integer",[160]),("integerRing",[20,22]),
         ("numRing",[18]),("prelim",[23,24,28,33]),
         ("quote",[20,23])]),["DISK_THM"]),
       [read"%21%15%21%16%31%52%51$1@$0@@@%51%52$1@@%52$0@@@|@|@"])
  fun op FRAC_AINV_SUB x = x
    val op FRAC_AINV_SUB =
    DT(((("frac",41),
        [("bool",[14,25,51,56,63,64]),("frac",[6,11,12,21,22,23]),
         ("intExtension",[1]),("integerRing",[20,22]),("numRing",[18]),
         ("prelim",[23,24,28,33]),("quote",[20,23])]),["DISK_THM"]),
       [read"%21%15%21%16%31%52%60$0@$1@@@%60$1@$0@@|@|@"])
  fun op FRAC_AINV_RMUL x = x
    val op FRAC_AINV_RMUL =
    DT(((("frac",42),
        [("bool",[13,14,25,26,27,30,47,48,51,52,53,54,56,63,64,94]),
         ("frac",[6,13,21,22,23]),("intExtension",[1]),
         ("integerRing",[20,22]),("numRing",[18]),("prelim",[33]),
         ("quote",[20,23]),("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%21%15%21%16%31%52%56$1@$0@@@%56$1@%52$0@@@|@|@"])
  fun op FRAC_AINV_LMUL x = x
    val op FRAC_AINV_LMUL =
    DT(((("frac",43),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("frac",[34,42]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%21%15%21%16%31%52%56$1@$0@@@%56%52$1@@$0@@|@|@"])
  fun op FRAC_SUB_ADD x = x
    val op FRAC_SUB_ADD =
    DT(((("frac",44),
        [("bool",[14,25,51,56,63,64]),("frac",[6,11,12,21,22,23]),
         ("intExtension",[1]),("integerRing",[20,22]),("numRing",[18]),
         ("prelim",[23,24,28,33]),("quote",[20,23])]),["DISK_THM"]),
       [read"%21%1%21%5%21%11%31%60$2@%51$1@$0@@@%60%60$2@$1@@$0@@|@|@|@"])
  fun op FRAC_SUB_SUB x = x
    val op FRAC_SUB_SUB =
    DT(((("frac",45),
        [("bool",[14,25,51,56,63,64]),("frac",[6,11,12,21,22,23]),
         ("intExtension",[1]),("integerRing",[20,22]),("numRing",[18]),
         ("prelim",[23,24,28,33]),("quote",[20,23])]),["DISK_THM"]),
       [read"%21%1%21%5%21%11%31%60$2@%60$1@$0@@@%51%60$2@$1@@$0@@|@|@|@"])
  fun op FRAC_SGN_TOTAL x = x
    val op FRAC_SGN_TOTAL =
    DT(((("frac",46),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,94,108,109,111]),
         ("frac",[5]),("intExtension",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%21%15%47%32%59$0@@%64%65%39%37%46@@@@@@%47%32%59$0@@%65%29@@@%32%59$0@@%65%39%37%46@@@@@@|@"])
  fun op FRAC_SGN_POS x = x
    val op FRAC_SGN_POS =
    DT(((("frac",47),
        [("bool",[25,26,27,30,47,48,51,53,54,56,58,63,64,93,94,96]),
         ("frac",[5]),("intExtension",[0]),
         ("integer",[65,103,166,206,342]),("numeral",[3,6]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%21%15%30%32%59$0@@%65%39%37%46@@@@@%62%65%29@@%57$0@@@|@"])
  fun op FRAC_SGN_NOT_NEG x = x
    val op FRAC_SGN_NOT_NEG =
    DT(((("frac",48),
        [("bool",[25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96]),
         ("frac",[5]),("intExtension",[0]),
         ("integer",[65,103,166,206,342]),("numeral",[3,6]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%21%15%30%69%32%59$0@@%64%65%39%37%46@@@@@@@%47%32%65%29@@%57$0@@@%62%65%29@@%57$0@@@@|@"])
  fun op FRAC_SGN_NEG x = x
    val op FRAC_SGN_NEG =
    DT(((("frac",49),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,109,
          111,124,129,147]),("frac",[5,6,16,21,22,23]),
         ("intExtension",[0,3]),("integer",[97,103,118,145,152,166]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%21%13%32%64%59%52$0@@@@%59$0@@|@"])
  fun op FRAC_SGN_IMP_EQGT x = x
    val op FRAC_SGN_IMP_EQGT =
    DT(((("frac",50),
        [("bool",[25,51,52,54,56,58,63]),("frac",[46]),
         ("integer",[166,342]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%21%15%30%69%32%59$0@@%64%65%39%37%46@@@@@@@%47%32%59$0@@%65%29@@@%32%59$0@@%65%39%37%46@@@@@@|@"])
  fun op FRAC_SGN_MUL x = x
    val op FRAC_SGN_MUL =
    DT(((("frac",51),
        [("bool",
         [25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,73,93,94,96,105,129,
          147]),("frac",[5,13,21,22]),("intExtension",[0,1,4]),
         ("integer",[65,83,84,93,94,98,103,159,166,304,342]),
         ("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%21%15%21%16%32%59%56$1@$0@@@%63%59$1@@%59$0@@@|@|@"])
  fun op FRAC_ABS_SGN x = x
    val op FRAC_ABS_SGN =
    DT(((("frac",52),
        [("bool",[25,26,27,30,53,56,58,63,64,105,124,129,147]),
         ("frac",[5]),("intExtension",[0]),
         ("integer",[166,255,257])]),["DISK_THM"]),
       [read"%21%15%34%69%32%57$0@@%65%29@@@@%32%36%59$0@@@%65%39%37%46@@@@@|@"])
  fun op FRAC_SGN_MUL2 x = x
    val op FRAC_SGN_MUL2 =
    DT(((("frac",53),
        [("bool",[25,26,47,48,53,54,63]),("frac",[5,13,21,22]),
         ("intExtension",[1,22]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%21%15%21%16%32%59%56$1@$0@@@%63%59$1@@%59$0@@@|@|@"])
  fun op FRAC_SGN_CASES x = x
    val op FRAC_SGN_CASES =
    DT(((("frac",54),
        [("bool",[25,26,30,47,48,53,54,63,96]),("frac",[46]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%21%15%20%0%34%28%34%32%59$1@@%64%65%39%37%46@@@@@@$0@@%28%34%32%59$1@@%65%29@@@$0@@%34%32%59$1@@%65%39%37%46@@@@@$0@@@@$0@|@|@"])
  fun op FRAC_SGN_AINV x = x
    val op FRAC_SGN_AINV =
    DT(((("frac",55),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,147]),
         ("frac",[5,6,21,22]),("intExtension",[0]),
         ("integer",[65,97,102,145,152,166,178,342]),("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%21%15%32%64%59%52$0@@@@%59$0@@|@"])
  fun op FRAC_AINV_ONEONE x = x
    val op FRAC_AINV_ONEONE =
    DT(((("frac",56),
        [("bool",[10,25,53,56,58,63,105,124]),("frac",[6,16,17,21,22,23]),
         ("integer",[205])]),["DISK_THM"]), [read"%41%52@"])
  fun op FRAC_AINV_ONTO x = x
    val op FRAC_AINV_ONTO =
    DT(((("frac",57),
        [("bool",[11,13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("frac",[39]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%52@"])
  fun op FRAC_NMR_SAVE x = x
    val op FRAC_NMR_SAVE =
    DT(((("frac",58),
        [("bool",[25,26,27,30,37,47,48,51,53,54,56,58,63,72,94,101]),
         ("frac",[15,22]),("int_arith",[9,34,62]),
         ("integer",[59,62,74,80,83,92,95,96,145,320,335]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%3%23%8%32%57%58$1@$0@@@$1@|@|@"])
  fun op FRAC_DNM_SAVE x = x
    val op FRAC_DNM_SAVE =
    DT(((("frac",59),
        [("bool",[25,26,27,30,37,47,48,51,53,54,56,58,63,72,94,101]),
         ("frac",[15,23]),("int_arith",[9,34,62]),
         ("integer",[59,62,74,80,83,92,95,96,145,320,335]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%3%23%8%32%54%58$1@$0@@@%61%65$0@@%65%39%37%46@@@@@|@|@"])
  fun op FRAC_0_SAVE x = x
    val op FRAC_0_SAVE =
    DT(((("frac",60),
        [("bool",[14,25,26,27,30,36,37,51,52,53,54,56,58,63,64,72,96,101]),
         ("frac",[8,15]),("int_arith",[3,9,34,61,62]),
         ("integer",[59,62,74,80,83,92,95,96,104,115,145,320,335,337]),
         ("numeral",[7,8,16]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%31%49@%58%65%29@@%29@@"])
  fun op FRAC_1_SAVE x = x
    val op FRAC_1_SAVE =
    DT(((("frac",61),
        [("bool",[14,25,26,27,30,36,37,51,52,53,54,56,58,63,64,72,96,101]),
         ("frac",[9,15]),("int_arith",[3,9,34,61,62]),
         ("integer",[59,62,74,80,83,92,95,96,104,115,145,320,335,337]),
         ("numeral",[7,8,16]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%31%50@%58%65%39%37%46@@@@%29@@"])
  fun op FRAC_AINV_SAVE x = x
    val op FRAC_AINV_SAVE =
    DT(((("frac",62),
        [("bool",[25,26,27,30,37,51,53,54,56,58,63,72,101]),
         ("frac",[6,15,22,23]),("int_arith",[9,34,62]),
         ("integer",[59,62,74,80,83,92,95,96,145,320,335]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%22%3%23%8%31%52%58$1@$0@@@%58%64$1@@$0@@|@|@"])
  fun op FRAC_MINV_SAVE x = x
    val op FRAC_MINV_SAVE =
    DT(((("frac",63),
        [("bool",
         [13,14,25,26,27,30,37,42,43,51,52,53,54,56,58,63,64,72,96,101,105,
          129,147]),("combin",[8,19]),("frac",[5,7,15,22,23]),
         ("intExtension",[0]),("int_arith",[3,9,34,61,62,63,65,67]),
         ("integer",
         [59,62,73,74,80,83,87,92,95,96,97,104,115,145,160,166,193,205,217,
          253,320,335,337]),("numeral",[7,8,16]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%22%3%23%8%34%69%32$1@%65%29@@@@%31%55%58$1@$0@@@%58%63%43$1@@%61%65$0@@%65%39%37%46@@@@@@%40%66%36$1@@%65%39%37%46@@@@@@@@|@|@"])
  fun op FRAC_ADD_SAVE x = x
    val op FRAC_ADD_SAVE =
    DT(((("frac",64),
        [("arithmetic",[26,27,70]),
         ("bool",[25,26,27,30,37,51,53,54,56,58,63,72,101,170]),
         ("frac",[11,15,22,23]),("int_arith",[9,34,62]),
         ("integer",
         [59,62,64,74,80,83,84,85,87,92,95,96,145,166,167,168,320,335]),
         ("marker",[8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%22%3%23%8%22%4%23%10%31%51%58$3@$2@@%58$1@$0@@@%58%61%61%61%63$3@%65$0@@@%63$1@%65$2@@@@$3@@$1@@%26%26%25$2@$0@@$2@@$0@@@|@|@|@|@"])
  fun op FRAC_MUL_SAVE x = x
    val op FRAC_MUL_SAVE =
    DT(((("frac",65),
        [("arithmetic",[26,27,69,70,74,75,91]),
         ("bool",[25,26,27,30,37,51,53,54,56,58,63,72,101]),
         ("frac",[13,15,22,23]),("int_arith",[9,34,62]),
         ("integer",[59,62,74,80,83,92,95,96,145,319,320,323,335,342]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%22%3%23%8%22%4%23%10%31%56%58$3@$2@@%58$1@$0@@@%58%63$3@$1@@%26%26%25$2@$0@@$2@@$0@@@|@|@|@|@"])
  end
  val _ = DB.bindl "frac"
  [("frac_TY_DEF",frac_TY_DEF,DB.Def), ("frac_tybij",frac_tybij,DB.Def),
   ("frac_nmr_def",frac_nmr_def,DB.Def),
   ("frac_dnm_def",frac_dnm_def,DB.Def),
   ("frac_sgn_def",frac_sgn_def,DB.Def),
   ("frac_ainv_def",frac_ainv_def,DB.Def),
   ("frac_minv_def",frac_minv_def,DB.Def),
   ("frac_0_def",frac_0_def,DB.Def), ("frac_1_def",frac_1_def,DB.Def),
   ("les_abs_def",les_abs_def,DB.Def),
   ("frac_add_def",frac_add_def,DB.Def),
   ("frac_sub_def",frac_sub_def,DB.Def),
   ("frac_mul_def",frac_mul_def,DB.Def),
   ("frac_div_def",frac_div_def,DB.Def),
   ("frac_save_def",frac_save_def,DB.Def), ("frac_bij",frac_bij,DB.Thm),
   ("FRAC",FRAC,DB.Thm), ("FRAC_EQ",FRAC_EQ,DB.Thm),
   ("FRAC_EQ_ALT",FRAC_EQ_ALT,DB.Thm), ("FRAC_NOT_EQ",FRAC_NOT_EQ,DB.Thm),
   ("FRAC_NOT_EQ_IMP",FRAC_NOT_EQ_IMP,DB.Thm),
   ("FRAC_DNMPOS",FRAC_DNMPOS,DB.Thm), ("NMR",NMR,DB.Thm),
   ("DNM",DNM,DB.Thm), ("FRAC_AINV_CALCULATE",FRAC_AINV_CALCULATE,DB.Thm),
   ("FRAC_MINV_CALCULATE",FRAC_MINV_CALCULATE,DB.Thm),
   ("FRAC_SGN_CALCULATE",FRAC_SGN_CALCULATE,DB.Thm),
   ("FRAC_ADD_CALCULATE",FRAC_ADD_CALCULATE,DB.Thm),
   ("FRAC_SUB_CALCULATE",FRAC_SUB_CALCULATE,DB.Thm),
   ("FRAC_MULT_CALCULATE",FRAC_MULT_CALCULATE,DB.Thm),
   ("FRAC_DIV_CALCULATE",FRAC_DIV_CALCULATE,DB.Thm),
   ("FRAC_ADD_ASSOC",FRAC_ADD_ASSOC,DB.Thm),
   ("FRAC_MUL_ASSOC",FRAC_MUL_ASSOC,DB.Thm),
   ("FRAC_ADD_COMM",FRAC_ADD_COMM,DB.Thm),
   ("FRAC_MUL_COMM",FRAC_MUL_COMM,DB.Thm),
   ("FRAC_ADD_RID",FRAC_ADD_RID,DB.Thm),
   ("FRAC_MUL_RID",FRAC_MUL_RID,DB.Thm), ("FRAC_1_0",FRAC_1_0,DB.Thm),
   ("FRAC_AINV_0",FRAC_AINV_0,DB.Thm),
   ("FRAC_AINV_AINV",FRAC_AINV_AINV,DB.Thm),
   ("FRAC_AINV_ADD",FRAC_AINV_ADD,DB.Thm),
   ("FRAC_AINV_SUB",FRAC_AINV_SUB,DB.Thm),
   ("FRAC_AINV_RMUL",FRAC_AINV_RMUL,DB.Thm),
   ("FRAC_AINV_LMUL",FRAC_AINV_LMUL,DB.Thm),
   ("FRAC_SUB_ADD",FRAC_SUB_ADD,DB.Thm),
   ("FRAC_SUB_SUB",FRAC_SUB_SUB,DB.Thm),
   ("FRAC_SGN_TOTAL",FRAC_SGN_TOTAL,DB.Thm),
   ("FRAC_SGN_POS",FRAC_SGN_POS,DB.Thm),
   ("FRAC_SGN_NOT_NEG",FRAC_SGN_NOT_NEG,DB.Thm),
   ("FRAC_SGN_NEG",FRAC_SGN_NEG,DB.Thm),
   ("FRAC_SGN_IMP_EQGT",FRAC_SGN_IMP_EQGT,DB.Thm),
   ("FRAC_SGN_MUL",FRAC_SGN_MUL,DB.Thm),
   ("FRAC_ABS_SGN",FRAC_ABS_SGN,DB.Thm),
   ("FRAC_SGN_MUL2",FRAC_SGN_MUL2,DB.Thm),
   ("FRAC_SGN_CASES",FRAC_SGN_CASES,DB.Thm),
   ("FRAC_SGN_AINV",FRAC_SGN_AINV,DB.Thm),
   ("FRAC_AINV_ONEONE",FRAC_AINV_ONEONE,DB.Thm),
   ("FRAC_AINV_ONTO",FRAC_AINV_ONTO,DB.Thm),
   ("FRAC_NMR_SAVE",FRAC_NMR_SAVE,DB.Thm),
   ("FRAC_DNM_SAVE",FRAC_DNM_SAVE,DB.Thm),
   ("FRAC_0_SAVE",FRAC_0_SAVE,DB.Thm), ("FRAC_1_SAVE",FRAC_1_SAVE,DB.Thm),
   ("FRAC_AINV_SAVE",FRAC_AINV_SAVE,DB.Thm),
   ("FRAC_MINV_SAVE",FRAC_MINV_SAVE,DB.Thm),
   ("FRAC_ADD_SAVE",FRAC_ADD_SAVE,DB.Thm),
   ("FRAC_MUL_SAVE",FRAC_MUL_SAVE,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("intExtensionTheory.intExtension_grammars",
                          intExtensionTheory.intExtension_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "frac"
  val _ = update_grms temp_add_type "frac"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rep_frac", (Term.prim_mk_const { Name = "rep_frac", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs_frac", (Term.prim_mk_const { Name = "abs_frac", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_nmr", (Term.prim_mk_const { Name = "frac_nmr", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_nmr", (Term.prim_mk_const { Name = "frac_nmr", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_dnm", (Term.prim_mk_const { Name = "frac_dnm", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_dnm", (Term.prim_mk_const { Name = "frac_dnm", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_sgn", (Term.prim_mk_const { Name = "frac_sgn", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_sgn", (Term.prim_mk_const { Name = "frac_sgn", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_ainv", (Term.prim_mk_const { Name = "frac_ainv", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_ainv", (Term.prim_mk_const { Name = "frac_ainv", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_minv", (Term.prim_mk_const { Name = "frac_minv", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_minv", (Term.prim_mk_const { Name = "frac_minv", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_0", (Term.prim_mk_const { Name = "frac_0", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_0", (Term.prim_mk_const { Name = "frac_0", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_1", (Term.prim_mk_const { Name = "frac_1", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_1", (Term.prim_mk_const { Name = "frac_1", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("les_abs", (Term.prim_mk_const { Name = "les_abs", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("les_abs", (Term.prim_mk_const { Name = "les_abs", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_add", (Term.prim_mk_const { Name = "frac_add", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_add", (Term.prim_mk_const { Name = "frac_add", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_sub", (Term.prim_mk_const { Name = "frac_sub", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_sub", (Term.prim_mk_const { Name = "frac_sub", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_mul", (Term.prim_mk_const { Name = "frac_mul", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_mul", (Term.prim_mk_const { Name = "frac_mul", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_div", (Term.prim_mk_const { Name = "frac_div", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_div", (Term.prim_mk_const { Name = "frac_div", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_save", (Term.prim_mk_const { Name = "frac_save", Thy = "frac"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frac_save", (Term.prim_mk_const { Name = "frac_save", Thy = "frac"}))
  val frac_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "frac",
    thydataty = "compute",
    data =
        "frac.frac_nmr_def frac.frac_save_def frac.frac_sgn_def frac.frac_div_def frac.frac_mul_def frac.frac_sub_def frac.frac_add_def frac.les_abs_def frac.frac_1_def frac.frac_0_def frac.frac_minv_def frac.frac_ainv_def frac.frac_dnm_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "frac"
end
