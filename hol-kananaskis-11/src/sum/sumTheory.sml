structure sumTheory :> sumTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading sumTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open combinTheory satTheory
  in end;
  val _ = Theory.link_parents
          ("sum",Arbnum.fromString "1488586017",Arbnum.fromString "12712")
          [("combin",
           Arbnum.fromString "1488585922",
           Arbnum.fromString "652622"),
           ("sat",
           Arbnum.fromString "1488585914",
           Arbnum.fromString "868419")];
  val _ = Theory.incorporate_types "sum" [("sum", 2)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("sum", "sum"), ID("min", "bool"), ID("bool", "!"),
   ID("sum", "++"), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "?!"), ID("sum", "ABS_sum"),
   ID("bool", "COND"), ID("bool", "DATATYPE"), ID("combin", "I"),
   ID("sum", "INL"), ID("sum", "INR"), ID("sum", "ISL"), ID("sum", "ISR"),
   ID("sum", "IS_SUM_REP"), ID("sum", "OUTL"), ID("sum", "OUTR"),
   ID("sum", "REP_sum"), ID("sum", "SUM_ALL"),
   ID("bool", "TYPE_DEFINITION"), ID("bool", "\\/"), ID("combin", "o"),
   ID("sum", "sum_CASE"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'c", TYV "'b", TYOP [0, 1, 0], TYOP [0, 2, 0], TYV "'a",
   TYOP [0, 4, 0], TYOP [0, 5, 3], TYOP [1, 4, 1], TYOP [0, 7, 6],
   TYOP [2], TYOP [0, 7, 9], TYOP [0, 1, 9], TYOP [0, 11, 10],
   TYOP [0, 4, 9], TYOP [0, 13, 12], TYOP [0, 4, 11], TYOP [0, 9, 15],
   TYOP [0, 7, 16], TYOP [0, 7, 1], TYOP [0, 7, 4], TYOP [0, 16, 9],
   TYOP [0, 1, 7], TYOP [0, 4, 7], TYOP [0, 16, 7], TYV "'d",
   TYOP [1, 0, 24], TYOP [0, 7, 25], TYOP [0, 1, 24], TYOP [0, 27, 26],
   TYOP [0, 5, 28], TYOP [0, 7, 0], TYOP [0, 21, 0], TYOP [0, 22, 31],
   TYV "'e", TYV "'g", TYV "'f", TYV "'h", TYOP [0, 13, 9],
   TYOP [0, 11, 9], TYOP [0, 0, 9], TYOP [0, 39, 9], TYOP [0, 24, 9],
   TYOP [0, 41, 9], TYOP [0, 33, 9], TYOP [0, 43, 9], TYOP [0, 35, 9],
   TYOP [0, 45, 9], TYOP [0, 34, 9], TYOP [0, 47, 9], TYOP [0, 36, 9],
   TYOP [0, 49, 9], TYOP [0, 5, 9], TYOP [0, 51, 9], TYOP [0, 37, 9],
   TYOP [0, 2, 9], TYOP [0, 54, 9], TYOP [0, 27, 9], TYOP [0, 56, 9],
   TYOP [0, 38, 9], TYOP [0, 20, 9], TYOP [0, 10, 9], TYOP [0, 60, 9],
   TYOP [0, 7, 7], TYOP [0, 1, 1], TYOP [0, 63, 62], TYOP [0, 4, 4],
   TYOP [0, 65, 64], TYOP [0, 9, 9], TYOP [0, 9, 67], TYOP [0, 4, 13],
   TYOP [0, 1, 11], TYOP [0, 0, 39], TYOP [0, 24, 41], TYOP [0, 33, 43],
   TYOP [0, 36, 49], TYOP [0, 5, 51], TYOP [0, 2, 54], TYOP [0, 16, 20],
   TYOP [0, 62, 9], TYOP [0, 62, 78], TYOP [0, 7, 10], TYOP [1, 1, 4],
   TYOP [0, 81, 9], TYOP [0, 81, 82], TYOP [0, 25, 9], TYOP [0, 25, 84],
   TYOP [1, 24, 0], TYOP [0, 86, 9], TYOP [0, 86, 87], TYOP [1, 33, 35],
   TYOP [0, 89, 9], TYOP [0, 89, 90], TYOP [1, 34, 36], TYOP [0, 92, 9],
   TYOP [0, 92, 93], TYOP [0, 30, 9], TYOP [0, 95, 9], TYOP [0, 17, 9],
   TYOP [0, 97, 9], TYOP [0, 81, 81], TYOP [0, 81, 99], TYOP [0, 9, 100],
   TYOP [0, 25, 25], TYOP [0, 25, 102], TYOP [0, 9, 103], TYOP [0, 86, 86],
   TYOP [0, 86, 105], TYOP [0, 9, 106], TYOP [0, 89, 89],
   TYOP [0, 89, 108], TYOP [0, 9, 109], TYOP [0, 92, 92],
   TYOP [0, 92, 111], TYOP [0, 9, 112], TYOP [0, 1, 81], TYOP [0, 0, 25],
   TYOP [0, 24, 86], TYOP [0, 33, 89], TYOP [0, 34, 92], TYOP [0, 4, 81],
   TYOP [0, 0, 86], TYOP [0, 24, 25], TYOP [0, 35, 89], TYOP [0, 36, 92],
   TYOP [0, 20, 97], TYOP [0, 4, 25], TYOP [0, 5, 125], TYOP [0, 115, 126],
   TYOP [0, 1, 25], TYOP [0, 27, 128], TYOP [0, 121, 129], TYOP [0, 22, 5],
   TYOP [0, 30, 131], TYOP [0, 21, 2], TYOP [0, 30, 133],
   TYOP [0, 128, 25], TYOP [0, 125, 135], TYOP [0, 7, 136]]
  end
  val _ = Theory.incorporate_consts "sum" tyvector
     [("sum_CASE", 8), ("SUM_ALL", 14), ("REP_sum", 17), ("OUTR", 18),
      ("OUTL", 19), ("IS_SUM_REP", 20), ("ISR", 10), ("ISL", 10),
      ("INR", 21), ("INL", 22), ("ABS_sum", 23), ("++", 29)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 7), TMV("M'", 7), TMV("P", 9), TMV("P", 13), TMV("P", 10),
   TMV("P'", 13), TMV("Q", 11), TMV("Q'", 11), TMV("a", 4), TMV("a", 7),
   TMV("b", 1), TMV("b", 9), TMV("e", 4), TMV("e", 1), TMV("f", 5),
   TMV("f", 16), TMV("f'", 5), TMV("f1", 2), TMV("f1'", 2), TMV("g", 2),
   TMV("g", 27), TMV("h", 30), TMV("r", 16), TMV("rep", 17), TMV("s", 7),
   TMV("s'", 7), TMV("ss", 7), TMV("sum", 32), TMV("v1", 4), TMV("v2", 1),
   TMV("x", 4), TMV("x", 1), TMV("x", 0), TMV("x", 33), TMV("x", 34),
   TMV("x", 7), TMV("y", 4), TMV("y", 1), TMV("y", 24), TMV("y", 35),
   TMV("y", 36), TMV("z", 4), TMV("z", 24), TMV("z", 33), TMV("z", 36),
   TMV("z", 7), TMC(3, 37), TMC(3, 38), TMC(3, 40), TMC(3, 42), TMC(3, 44),
   TMC(3, 46), TMC(3, 48), TMC(3, 50), TMC(3, 52), TMC(3, 53), TMC(3, 55),
   TMC(3, 57), TMC(3, 58), TMC(3, 59), TMC(3, 61), TMC(3, 60), TMC(4, 66),
   TMC(4, 29), TMC(5, 68), TMC(6, 69), TMC(6, 70), TMC(6, 71), TMC(6, 72),
   TMC(6, 73), TMC(6, 74), TMC(6, 68), TMC(6, 75), TMC(6, 76), TMC(6, 77),
   TMC(6, 79), TMC(6, 80), TMC(6, 83), TMC(6, 85), TMC(6, 88), TMC(6, 91),
   TMC(6, 94), TMC(7, 68), TMC(8, 37), TMC(8, 38), TMC(8, 96), TMC(8, 98),
   TMC(8, 60), TMC(9, 96), TMC(10, 23), TMC(11, 101), TMC(11, 104),
   TMC(11, 107), TMC(11, 110), TMC(11, 113), TMC(12, 39), TMC(13, 65),
   TMC(13, 63), TMC(13, 62), TMC(14, 22), TMC(14, 114), TMC(14, 115),
   TMC(14, 116), TMC(14, 117), TMC(14, 118), TMC(15, 119), TMC(15, 21),
   TMC(15, 120), TMC(15, 121), TMC(15, 122), TMC(15, 123), TMC(16, 10),
   TMC(17, 10), TMC(18, 20), TMC(19, 19), TMC(20, 18), TMC(21, 17),
   TMC(22, 14), TMC(23, 124), TMC(24, 68), TMC(25, 127), TMC(25, 130),
   TMC(25, 132), TMC(25, 134), TMC(26, 8), TMC(26, 137), TMC(27, 67)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op IS_SUM_REP x = x
    val op IS_SUM_REP =
    DT(((("sum",0),[]),[]),
       [read"%59%15%71%113$0@@%83%28%84%29%119%74$2@%11%30%37%64%65$1@$4@@$2@|||@@%74$2@%11%30%37%64%66$0@$3@@%126$2@@|||@@|@|@@|@"])
  fun op sum_TY_DEF x = x
    val op sum_TY_DEF =
    DT(((("sum",1),[("bool",[25,37,52,56]),("sum",[0])]),["DISK_THM"]),
       [read"%86%23%118%113@$0@|@"])
  fun op sum_ISO_DEF x = x
    val op sum_ISO_DEF =
    DT(((("sum",2),[("bool",[117]),("sum",[1])]),["DISK_THM"]),
       [read"%64%61%9%76%89%116$0@@@$0@|@@%59%22%71%113$0@@%74%116%89$0@@@$0@@|@@"])
  fun op INL_DEF x = x
    val op INL_DEF =
    DT(((("sum",3),[]),[]),
       [read"%46%12%76%99$0@@%89%11%30%37%64%65$1@$3@@$2@|||@@|@"])
  fun op INR_DEF x = x
    val op INR_DEF =
    DT(((("sum",4),[]),[]),
       [read"%47%13%76%106$0@@%89%11%30%37%64%66$0@$3@@%126$2@@|||@@|@"])
  fun op ISL x = x
    val op ISL =
    DT(((("sum",17),
        [("bool",[7,14,25,26,27,35,36,51,54,63]),("combin",[8]),
         ("sum",[9])]),["DISK_THM"]),
       [read"%64%46%30%111%99$0@@|@@%47%37%126%111%106$0@@@|@@"])
  fun op ISR x = x
    val op ISR =
    DT(((("sum",18),
        [("bool",[7,14,25,26,27,35,36,51,54,63]),("combin",[8]),
         ("sum",[9])]),["DISK_THM"]),
       [read"%64%47%31%112%106$0@@|@@%46%36%126%112%99$0@@@|@@"])
  fun op OUTL x = x
    val op OUTL =
    DT(((("sum",19),
        [("bool",[7,14,25,26,36,56]),("combin",[8]),
         ("sum",[9])]),["DISK_THM"]), [read"%46%30%65%114%99$0@@@$0@|@"])
  fun op OUTR x = x
    val op OUTR =
    DT(((("sum",20),
        [("bool",[7,14,25,26,36,56]),("combin",[8]),
         ("sum",[9])]),["DISK_THM"]), [read"%47%31%66%115%106$0@@@$0@|@"])
  fun op sum_case_def x = x
    val op sum_case_def =
    DT(((("sum",24),[("sum",[13])]),["DISK_THM"]),
       [read"%64%46%30%54%14%56%17%67%124%99$2@@$1@$0@@$1$2@@|@|@|@@%47%37%54%14%56%17%67%124%106$2@@$1@$0@@$0$2@@|@|@|@@"])
  fun op SUM_MAP_def x = x
    val op SUM_MAP_def =
    DT(((("sum",26),[("sum",[13])]),["DISK_THM"]),
       [read"%64%54%14%57%20%46%8%78%63$2@$1@%99$0@@@%101$2$0@@@|@|@|@@%54%14%57%20%47%10%78%63$2@$1@%106$0@@@%108$1$0@@@|@|@|@@"])
  fun op SUM_ALL_def x = x
    val op SUM_ALL_def =
    DT(((("sum",33),[("sum",[13])]),["DISK_THM"]),
       [read"%64%55%3%58%6%46%30%71%117$2@$1@%99$0@@@$2$0@@|@|@|@@%55%3%58%6%47%37%71%117$2@$1@%106$0@@@$1$0@@|@|@|@@"])
  fun op INL_11 x = x
    val op INL_11 =
    DT(((("sum",5),
        [("bool",[14,25,26,37,51,52,56,63]),
         ("sum",[0,2,3])]),["DISK_THM"]),
       [read"%71%76%99%30@@%99%36@@@%65%30@%36@@"])
  fun op INR_11 x = x
    val op INR_11 =
    DT(((("sum",6),
        [("bool",[14,26,51,54,56,63]),("sum",[0,2,4])]),["DISK_THM"]),
       [read"%71%76%106%31@@%106%37@@@%66%31@%37@@"])
  fun op INR_INL_11 x = x
    val op INR_INL_11 =
    DT(((("sum",7),[("sum",[5,6])]),["DISK_THM"]),
       [read"%64%46%36%46%30%71%76%99$0@@%99$1@@@%65$0@$1@@|@|@@%47%37%47%31%71%76%106$0@@%106$1@@@%66$0@$1@@|@|@@"])
  fun op INR_neq_INL x = x
    val op INR_neq_INL =
    DT(((("sum",8),
        [("bool",[14,25,26,27,37,51,52,54,56,63]),
         ("sum",[0,2,3,4])]),["DISK_THM"]),
       [read"%46%28%47%29%126%76%106$0@@%99$1@@@|@|@"])
  fun op sum_axiom x = x
    val op sum_axiom =
    DT(((("sum",9),
        [("bool",[7,14,25,26,27,36,37,51,56,58,63,64,68,105,129,140]),
         ("combin",[5]),("sum",[0,2,3,4,5,6,8])]),["DISK_THM"]),
       [read"%54%14%56%19%88%21%64%72%122$0@%99@@$2@@%73%123$0@%106@@$1@@|@|@|@"])
  fun op sum_INDUCT x = x
    val op sum_INDUCT =
    DT(((("sum",10),
        [("bool",[7,14,26,51,63]),("combin",[8]),
         ("sum",[9])]),["DISK_THM"]),
       [read"%60%4%82%64%46%30$1%99$0@@|@@%47%37$1%106$0@@|@@@%61%24$1$0@|@@|@"])
  fun op FORALL_SUM x = x
    val op FORALL_SUM =
    DT(((("sum",11),
        [("bool",[25,26,36,51,63]),("sum",[10])]),["DISK_THM"]),
       [read"%71%61%24%4$0@|@@%64%46%30%4%99$0@@|@@%47%37%4%106$0@@|@@@"])
  fun op EXISTS_SUM x = x
    val op EXISTS_SUM =
    DT(((("sum",12),[("bool",[54,71,96]),("sum",[11])]),["DISK_THM"]),
       [read"%60%4%71%87%24$1$0@|@@%119%83%30$1%99$0@@|@@%84%37$1%106$0@@|@@@|@"])
  fun op sum_Axiom x = x
    val op sum_Axiom =
    DT(((("sum",13),
        [("bool",[14,25,26,36,51,56,122]),("combin",[8]),
         ("sum",[9])]),["DISK_THM"]),
       [read"%54%14%56%19%85%21%64%46%30%67$1%99$0@@@$3$0@@|@@%47%37%67$1%106$0@@@$2$0@@|@@|@|@|@"])
  fun op sum_CASES x = x
    val op sum_CASES =
    DT(((("sum",14),[("bool",[181]),("sum",[10])]),["DISK_THM"]),
       [read"%61%26%119%83%30%76$1@%99$0@@|@@%84%37%76$1@%106$0@@|@@|@"])
  fun op sum_distinct x = x
    val op sum_distinct =
    DT(((("sum",15),
        [("bool",[25,26,27,35,53,54,63]),("sum",[13])]),["DISK_THM"]),
       [read"%46%30%47%37%126%76%99$1@@%106$0@@@|@|@"])
  fun op sum_distinct1 x = x
    val op sum_distinct1 =
    DT(((("sum",16),[("bool",[58]),("sum",[15])]),["DISK_THM"]),
       [read"%46%30%47%37%126%76%106$0@@%99$1@@@|@|@"])
  fun op ISL_OR_ISR x = x
    val op ISL_OR_ISR =
    DT(((("sum",21),
        [("bool",[25,26,27,52,63]),("sum",[14,17,18])]),["DISK_THM"]),
       [read"%61%35%119%111$0@@%112$0@@|@"])
  fun op INL x = x
    val op INL =
    DT(((("sum",22),
        [("bool",[25,26,27,53,56,63]),("sum",[14,17,19])]),["DISK_THM"]),
       [read"%61%35%82%111$0@@%76%99%114$0@@@$0@@|@"])
  fun op INR x = x
    val op INR =
    DT(((("sum",23),
        [("bool",[25,26,27,53,56,63]),("sum",[14,18,20])]),["DISK_THM"]),
       [read"%61%35%82%112$0@@%76%106%115$0@@@$0@@|@"])
  fun op sum_case_cong x = x
    val op sum_case_cong =
    DT(((("sum",25),[("sum",[14,24])]),["DISK_THM"]),
       [read"%61%0%61%1%54%14%56%17%82%64%76$3@$2@@%64%46%30%82%76$3@%99$0@@@%67$2$0@@%16$0@@@|@@%47%37%82%76$3@%106$0@@@%67$1$0@@%18$0@@@|@@@@%67%124$3@$1@$0@@%124$2@%16@%18@@@|@|@|@|@"])
  fun op SUM_MAP x = x
    val op SUM_MAP =
    DT(((("sum",27),
        [("bool",[25,26,27,36,51,56,58,63,105,129,147]),
         ("sum",[7,11,17,19,20,26])]),["DISK_THM"]),
       [read"%54%14%57%20%61%45%78%63$2@$1@$0@@%91%111$0@@%101$2%114$0@@@@%108$1%115$0@@@@@|@|@|@"])
  fun op SUM_MAP_CASE x = x
    val op SUM_MAP_CASE =
    DT(((("sum",28),
        [("bool",[25,36,51,56]),("combin",[8]),
         ("sum",[7,11,24,26])]),["DISK_THM"]),
       [read"%54%14%57%20%61%45%78%63$2@$1@$0@@%125$0@%120%101@$2@@%121%108@$1@@@|@|@|@"])
  fun op SUM_MAP_I x = x
    val op SUM_MAP_I =
    DT(((("sum",29),
        [("bool",[25,36,51,56,60]),("combin",[19]),
         ("sum",[7,11,26])]),["DISK_THM"]), [read"%75%62%96@%97@@%98@"])
  fun op cond_sum_expand x = x
    val op cond_sum_expand =
    DT(((("sum",30),
        [("bool",[13,25,26,27,36,51,53,54,56,58,63,105,106,124,147]),
         ("sum",[7,15])]),["DISK_THM"]),
       [read"%64%46%30%47%37%46%41%71%77%90%2@%105$2@@%100$1@@@%105$0@@@%64%2@%65$0@$2@@@|@|@|@@%64%48%32%49%38%49%42%71%79%92%2@%107$2@@%102$1@@@%102$0@@@%64%126%2@@%68$0@$1@@@|@|@|@@%64%50%33%51%39%50%43%71%80%93%2@%103$2@@%109$1@@@%103$0@@@%64%2@%69$0@$2@@@|@|@|@@%52%34%53%40%53%44%71%81%94%2@%104$2@@%110$1@@@%110$0@@@%64%126%2@@%70$0@$1@@@|@|@|@@@@"])
  fun op NOT_ISL_ISR x = x
    val op NOT_ISL_ISR =
    DT(((("sum",31),
        [("bool",[25,26,27,54,63]),("sum",[14,17,18])]),["DISK_THM"]),
       [read"%61%35%71%126%111$0@@@%112$0@@|@"])
  fun op NOT_ISR_ISL x = x
    val op NOT_ISR_ISL =
    DT(((("sum",32),
        [("bool",[25,26,27,54,63]),("sum",[14,17,18])]),["DISK_THM"]),
       [read"%61%35%71%126%112$0@@@%111$0@@|@"])
  fun op SUM_ALL_MONO x = x
    val op SUM_ALL_MONO =
    DT(((("sum",34),[("sum",[14,33])]),["DISK_THM"]),
       [read"%82%64%46%30%82%3$0@@%5$0@@|@@%47%37%82%6$0@@%7$0@@|@@@%82%117%3@%6@%24@@%117%5@%7@%24@@@"])
  fun op SUM_ALL_CONG x = x
    val op SUM_ALL_CONG =
    DT(((("sum",35),
        [("bool",[25,26,27,36,51,53,56,58,63,101,105,124,145]),
         ("sum",[7,11,15,33])]),["DISK_THM"]),
       [read"%61%24%61%25%55%3%55%5%58%6%58%7%82%64%76$5@$4@@%64%46%8%82%76$5@%99$0@@@%71$4$0@@$3$0@@@|@@%47%10%82%76$5@%106$0@@@%71$2$0@@$1$0@@@|@@@@%71%117$3@$1@$5@@%117$2@$0@$4@@@|@|@|@|@|@|@"])
  fun op datatype_sum x = x
    val op datatype_sum =
    DT(((("sum",36),[("bool",[25,171])]),["DISK_THM"]),
       [read"%95%27%99@%106@@"])
  end
  val _ = DB.bindl "sum"
  [("IS_SUM_REP",IS_SUM_REP,DB.Def), ("sum_TY_DEF",sum_TY_DEF,DB.Def),
   ("sum_ISO_DEF",sum_ISO_DEF,DB.Def), ("INL_DEF",INL_DEF,DB.Def),
   ("INR_DEF",INR_DEF,DB.Def), ("ISL",ISL,DB.Def), ("ISR",ISR,DB.Def),
   ("OUTL",OUTL,DB.Def), ("OUTR",OUTR,DB.Def),
   ("sum_case_def",sum_case_def,DB.Def),
   ("SUM_MAP_def",SUM_MAP_def,DB.Def), ("SUM_ALL_def",SUM_ALL_def,DB.Def),
   ("INL_11",INL_11,DB.Thm), ("INR_11",INR_11,DB.Thm),
   ("INR_INL_11",INR_INL_11,DB.Thm), ("INR_neq_INL",INR_neq_INL,DB.Thm),
   ("sum_axiom",sum_axiom,DB.Thm), ("sum_INDUCT",sum_INDUCT,DB.Thm),
   ("FORALL_SUM",FORALL_SUM,DB.Thm), ("EXISTS_SUM",EXISTS_SUM,DB.Thm),
   ("sum_Axiom",sum_Axiom,DB.Thm), ("sum_CASES",sum_CASES,DB.Thm),
   ("sum_distinct",sum_distinct,DB.Thm),
   ("sum_distinct1",sum_distinct1,DB.Thm),
   ("ISL_OR_ISR",ISL_OR_ISR,DB.Thm), ("INL",INL,DB.Thm),
   ("INR",INR,DB.Thm), ("sum_case_cong",sum_case_cong,DB.Thm),
   ("SUM_MAP",SUM_MAP,DB.Thm), ("SUM_MAP_CASE",SUM_MAP_CASE,DB.Thm),
   ("SUM_MAP_I",SUM_MAP_I,DB.Thm),
   ("cond_sum_expand",cond_sum_expand,DB.Thm),
   ("NOT_ISL_ISR",NOT_ISL_ISR,DB.Thm), ("NOT_ISR_ISL",NOT_ISR_ISL,DB.Thm),
   ("SUM_ALL_MONO",SUM_ALL_MONO,DB.Thm),
   ("SUM_ALL_CONG",SUM_ALL_CONG,DB.Thm),
   ("datatype_sum",datatype_sum,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("combinTheory.combin_grammars",
                          combinTheory.combin_grammars),
                         ("satTheory.sat_grammars",satTheory.sat_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_SUM_REP", (Term.prim_mk_const { Name = "IS_SUM_REP", Thy = "sum"}))
  val _ = update_grms temp_add_type "sum"
  val _ = update_grms temp_add_type "sum"
  val _ = update_grms
       temp_add_infix_type
       {Name = "sum", ParseName = SOME "+", Assoc = HOLgrammars.RIGHT, Prec = 60}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REP_sum", (Term.prim_mk_const { Name = "REP_sum", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS_sum", (Term.prim_mk_const { Name = "ABS_sum", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INL", (Term.prim_mk_const { Name = "INL", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INR", (Term.prim_mk_const { Name = "INR", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ISL", (Term.prim_mk_const { Name = "ISL", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ISR", (Term.prim_mk_const { Name = "ISR", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OUTL", (Term.prim_mk_const { Name = "OUTL", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OUTR", (Term.prim_mk_const { Name = "OUTR", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum_CASE", (Term.prim_mk_const { Name = "sum_CASE", Thy = "sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("++", (Term.prim_mk_const { Name = "++", Thy = "sum"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "++"))
       (Infix(HOLgrammars.LEFT, 480))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_ALL", (Term.prim_mk_const { Name = "SUM_ALL", Thy = "sum"}))
  val sum_grammars = Parse.current_lgrms()
  end


  val _ = TypeBase.write
    [TypeBasePure.mk_datatype_info
       {ax=TypeBasePure.ORIG sum_Axiom,
        case_def=sum_case_def,
        case_cong=sum_case_cong,
        induction=TypeBasePure.ORIG sum_INDUCT,
        nchotomy=sum_CASES,
        size=NONE,
        encode=NONE,
        fields=[],
        accessors=[],
        updates=[],
        recognizers=[ISL,ISR],
        destructors=[OUTL,OUTR],
        lift=SOME(mk_var("sumSyntax.lift_sum",Parse.Type`:'type -> ('a -> 'term) -> ('b -> 'term) -> ('a,'b)sum -> 'term`)),      one_one=SOME INR_INL_11,
        distinct=SOME sum_distinct}];
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sum",
    thydataty = "simp",
    data =
        "sum.INR_INL_11 sum.ISL sum.SUM_ALL_def sum.NOT_ISR_ISL sum.NOT_ISL_ISR sum.cond_sum_expand sum.SUM_MAP_def sum.sum_case_def sum.INR sum.INL sum.OUTR sum.OUTL sum.ISR sum.sum_distinct"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sum", thydataty = "mono", data = "sum.SUM_ALL_MONO"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sum", thydataty = "defncong", data = "sum.SUM_ALL_CONG"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sum",
    thydataty = "compute",
    data =
        "sum.sum_case_def sum.sum_distinct sum.ISR sum.ISL sum.OUTR sum.OUTL sum.SUM_ALL_def sum.sum_distinct1 sum.INL_11 sum.INR_11"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sum",
    thydataty = "OpenTheoryMap",
    data =
        "10.Data.Sum.+3.sum3.sum 14.Data.Sum.right3.sum3.INR13.Data.Sum.left3.sum3.INL18.Data.Sum.destRight3.sum4.OUTR17.Data.Sum.destLeft3.sum4.OUTL"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "sum"
end
