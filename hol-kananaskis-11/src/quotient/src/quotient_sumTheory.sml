structure quotient_sumTheory :> quotient_sumTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quotient_sumTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quotientTheory
  in end;
  val _ = Theory.link_parents
          ("quotient_sum",
          Arbnum.fromString "1488586900",
          Arbnum.fromString "351824")
          [("quotient",
           Arbnum.fromString "1488586854",
           Arbnum.fromString "11971")];
  val _ = Theory.incorporate_types "quotient_sum" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("sum", "sum"), ID("bool", "!"), ID("sum", "++"),
   ID("quotient_sum", "+++"), ID("pair", ","), ID("quotient", "-->"),
   ID("bool", "/\\"), ID("min", "="), ID("quotient", "===>"),
   ID("min", "==>"), ID("min", "@"), ID("quotient", "EQUIV"),
   ID("bool", "F"), ID("combin", "I"), ID("sum", "INL"), ID("sum", "INR"),
   ID("sum", "ISL"), ID("sum", "ISR"), ID("quotient", "QUOTIENT"),
   ID("quotient_sum", "SUM_REL_tupled"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("pair", "pair_CASE"), ID("sum", "sum_CASE")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYV "'a", TYOP [3, 2, 1], TYOP [2, 3, 3],
   TYOP [0, 1, 0], TYOP [0, 1, 5], TYOP [2, 6, 4], TYOP [0, 2, 0],
   TYOP [0, 2, 8], TYOP [2, 9, 7], TYOP [0, 10, 0], TYOP [0, 3, 0],
   TYOP [0, 3, 12], TYOP [0, 6, 13], TYOP [0, 9, 14], TYOP [0, 10, 11],
   TYV "'c", TYOP [0, 17, 0], TYOP [0, 17, 18], TYV "'d", TYOP [0, 20, 0],
   TYOP [0, 20, 21], TYOP [3, 17, 20], TYOP [0, 2, 17], TYV "'e",
   TYOP [0, 2, 25], TYOP [0, 1, 20], TYV "'f", TYOP [0, 1, 28], TYV "'g",
   TYOP [0, 17, 30], TYV "'h", TYOP [0, 20, 32], TYOP [0, 25, 28],
   TYOP [0, 2, 1], TYOP [0, 30, 32], TYOP [0, 17, 20], TYOP [0, 17, 2],
   TYOP [0, 25, 2], TYOP [0, 20, 1], TYOP [0, 28, 1], TYOP [0, 30, 17],
   TYOP [0, 32, 20], TYOP [0, 8, 0], TYOP [0, 5, 0], TYOP [0, 18, 0],
   TYOP [0, 21, 0], TYOP [0, 35, 0], TYOP [0, 48, 0], TYOP [0, 24, 0],
   TYOP [0, 50, 0], TYOP [0, 26, 0], TYOP [0, 52, 0], TYOP [0, 9, 0],
   TYOP [0, 54, 0], TYOP [0, 27, 0], TYOP [0, 56, 0], TYOP [0, 29, 0],
   TYOP [0, 58, 0], TYOP [0, 6, 0], TYOP [0, 60, 0], TYOP [0, 38, 0],
   TYOP [0, 62, 0], TYOP [0, 37, 0], TYOP [0, 64, 0], TYOP [0, 31, 0],
   TYOP [0, 66, 0], TYOP [0, 19, 0], TYOP [0, 68, 0], TYOP [0, 40, 0],
   TYOP [0, 70, 0], TYOP [0, 33, 0], TYOP [0, 72, 0], TYOP [0, 22, 0],
   TYOP [0, 74, 0], TYOP [0, 39, 0], TYOP [0, 76, 0], TYOP [0, 34, 0],
   TYOP [0, 78, 0], TYOP [0, 41, 0], TYOP [0, 80, 0], TYOP [0, 42, 0],
   TYOP [0, 82, 0], TYOP [0, 36, 0], TYOP [0, 84, 0], TYOP [0, 43, 0],
   TYOP [0, 86, 0], TYOP [0, 15, 0], TYOP [0, 88, 0], TYOP [0, 12, 0],
   TYOP [0, 23, 0], TYOP [0, 91, 0], TYOP [3, 1, 20], TYOP [3, 2, 17],
   TYOP [0, 94, 93], TYOP [0, 37, 95], TYOP [0, 35, 96], TYOP [0, 3, 23],
   TYOP [0, 27, 98], TYOP [0, 24, 99], TYOP [3, 28, 32], TYOP [0, 93, 101],
   TYOP [0, 33, 102], TYOP [0, 29, 103], TYOP [0, 23, 3],
   TYOP [0, 40, 105], TYOP [0, 38, 106], TYOP [3, 25, 30],
   TYOP [0, 108, 94], TYOP [0, 42, 109], TYOP [0, 39, 110],
   TYOP [0, 108, 101], TYOP [0, 36, 112], TYOP [0, 34, 113],
   TYOP [0, 94, 0], TYOP [0, 94, 115], TYOP [0, 19, 116], TYOP [0, 9, 117],
   TYOP [0, 93, 0], TYOP [0, 93, 119], TYOP [0, 22, 120], TYOP [0, 6, 121],
   TYOP [0, 7, 10], TYOP [0, 9, 123], TYOP [0, 4, 7], TYOP [0, 6, 125],
   TYOP [0, 3, 4], TYOP [0, 3, 127], TYOP [0, 34, 35], TYOP [0, 41, 129],
   TYOP [0, 26, 130], TYOP [0, 36, 37], TYOP [0, 43, 132],
   TYOP [0, 31, 133], TYOP [0, 95, 112], TYOP [0, 102, 135],
   TYOP [0, 109, 136], TYOP [0, 0, 0], TYOP [0, 0, 138], TYOP [0, 11, 0],
   TYOP [0, 11, 140], TYOP [0, 13, 0], TYOP [0, 13, 142], TYOP [0, 112, 0],
   TYOP [0, 112, 144], TYOP [0, 23, 91], TYOP [0, 35, 48],
   TYOP [0, 6, 147], TYOP [0, 9, 148], TYOP [0, 37, 64], TYOP [0, 22, 150],
   TYOP [0, 19, 151], TYOP [0, 95, 0], TYOP [0, 95, 153],
   TYOP [0, 120, 154], TYOP [0, 116, 155], TYOP [0, 16, 0],
   TYOP [0, 157, 16], TYOP [0, 2, 3], TYOP [0, 17, 23], TYOP [0, 1, 3],
   TYOP [0, 20, 23], TYOP [0, 24, 62], TYOP [0, 9, 163], TYOP [0, 26, 76],
   TYOP [0, 9, 165], TYOP [0, 27, 70], TYOP [0, 6, 167], TYOP [0, 29, 80],
   TYOP [0, 6, 169], TYOP [0, 31, 82], TYOP [0, 19, 171], TYOP [0, 33, 86],
   TYOP [0, 22, 173], TYOP [0, 105, 0], TYOP [0, 98, 175],
   TYOP [0, 13, 176], TYOP [0, 11, 11], TYOP [0, 178, 11],
   TYOP [0, 16, 179], TYOP [0, 7, 0], TYOP [0, 9, 181], TYOP [0, 182, 0],
   TYOP [0, 10, 183], TYOP [0, 4, 0], TYOP [0, 6, 185], TYOP [0, 186, 0],
   TYOP [0, 7, 187], TYOP [0, 4, 142], TYOP [0, 8, 45], TYOP [0, 3, 190]]
  end
  val _ = Theory.incorporate_consts "quotient_sum" tyvector
     [("SUM_REL_tupled", 11), ("+++", 15)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 15), TMV("R", 16), TMV("R1", 9), TMV("R2", 6), TMV("R3", 19),
   TMV("R4", 22), TMV("SUM_REL_tupled", 11), TMV("a", 17), TMV("a", 10),
   TMV("a", 23), TMV("a1", 2), TMV("a1", 3), TMV("a2", 2), TMV("a2", 3),
   TMV("a2'", 2), TMV("abs1", 24), TMV("abs1", 26), TMV("abs2", 27),
   TMV("abs2", 29), TMV("abs3", 31), TMV("abs4", 33), TMV("b", 20),
   TMV("b1", 1), TMV("b2", 1), TMV("b2'", 1), TMV("f", 34), TMV("f1", 35),
   TMV("f2", 35), TMV("g", 36), TMV("g1", 37), TMV("g2", 37),
   TMV("rep1", 38), TMV("rep1", 39), TMV("rep2", 40), TMV("rep2", 41),
   TMV("rep3", 42), TMV("rep4", 43), TMV("v", 9), TMV("v1", 6),
   TMV("v1", 7), TMV("v2", 3), TMV("v3", 4), TMV("v3", 3), TMV("v4", 3),
   TMV("v5", 3), TMV("x", 9), TMV("x1", 6), TMV("x2", 3), TMV("x3", 3),
   TMC(4, 44), TMC(4, 45), TMC(4, 46), TMC(4, 47), TMC(4, 49), TMC(4, 51),
   TMC(4, 53), TMC(4, 55), TMC(4, 57), TMC(4, 59), TMC(4, 61), TMC(4, 63),
   TMC(4, 65), TMC(4, 67), TMC(4, 69), TMC(4, 71), TMC(4, 73), TMC(4, 75),
   TMC(4, 77), TMC(4, 79), TMC(4, 81), TMC(4, 83), TMC(4, 85), TMC(4, 87),
   TMC(4, 89), TMC(4, 90), TMC(4, 92), TMC(5, 97), TMC(5, 100),
   TMC(5, 104), TMC(5, 107), TMC(5, 111), TMC(5, 114), TMC(6, 15),
   TMC(6, 118), TMC(6, 122), TMC(7, 124), TMC(7, 126), TMC(7, 128),
   TMC(8, 131), TMC(8, 134), TMC(8, 137), TMC(9, 139), TMC(10, 9),
   TMC(10, 6), TMC(10, 139), TMC(10, 141), TMC(10, 143), TMC(10, 145),
   TMC(10, 13), TMC(10, 146), TMC(11, 149), TMC(11, 152), TMC(11, 156),
   TMC(12, 139), TMC(13, 158), TMC(14, 54), TMC(14, 60), TMC(14, 142),
   TMC(15, 0), TMC(16, 138), TMC(17, 159), TMC(17, 160), TMC(18, 161),
   TMC(18, 162), TMC(19, 12), TMC(19, 91), TMC(20, 12), TMC(20, 91),
   TMC(21, 164), TMC(21, 166), TMC(21, 168), TMC(21, 170), TMC(21, 172),
   TMC(21, 174), TMC(21, 177), TMC(22, 11), TMC(23, 157), TMC(24, 180),
   TMC(25, 184), TMC(25, 188), TMC(25, 189), TMC(26, 191)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op SUM_REL_tupled_primitive_def x = x
    val op SUM_REL_tupled_primitive_def =
    DT(((("quotient_sum",0),[]),[]),
       [read"%95%125@%127%104%1%126$0@|@@%6%8%128$0@%2%39%129$0@%3%41%130$0@%43%44%131$1@%10%131$1@%12%109$7$1@$0@@|@%24%109%108@|@|@%22%131$1@%14%109%108@|@%23%109$5$1@$0@@|@|@||@||@||@||@@"])
  fun op SUM_REL_curried_def x = x
    val op SUM_REL_curried_def =
    DT(((("quotient_sum",1),[]),[]),
       [read"%56%45%59%46%74%47%74%48%94%82$3@$2@$1@$0@@%125%85$3@%86$2@%87$1@$0@@@@@|@|@|@|@"])
  fun op SUM_REL_ind x = x
    val op SUM_REL_ind =
    DT(((("quotient_sum",2),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80]),("pair",[5,16]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[14])]),["DISK_THM"]),
       [read"%73%0%103%91%56%2%59%3%49%10%49%12$4$3@$2@%110$1@@%110$0@@|@|@|@|@@%91%56%2%59%3%50%22%50%23$4$3@$2@%112$1@@%112$0@@|@|@|@|@@%91%56%2%59%3%49%10%50%23$4$3@$2@%110$1@@%112$0@@|@|@|@|@@%56%2%59%3%50%22%49%12$4$3@$2@%112$1@@%110$0@@|@|@|@|@@@@@%56%37%59%38%74%40%74%42$4$3@$2@$1@$0@|@|@|@|@@|@"])
  fun op SUM_REL_def x = x
    val op SUM_REL_def =
    DT(((("quotient_sum",3),
        [("bool",[15,58]),("combin",[19]),("pair",[49]),
         ("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[24])]),["DISK_THM"]),
       [read"%91%94%82%2@%3@%110%10@@%110%12@@@%2%10@%12@@@%91%94%82%2@%3@%112%22@@%112%23@@@%3%22@%23@@@%91%94%82%2@%3@%110%10@@%112%23@@@%108@@%94%82%2@%3@%112%22@@%110%12@@@%108@@@@"])
  fun op SUM_REL_EQ x = x
    val op SUM_REL_EQ =
    DT(((("quotient_sum",4),
        [("bool",[14,15,25,26,27,54,56,58,63]),("combin",[19]),
         ("pair",[49]),("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[7,14,15,16,24])]),["DISK_THM"]),
       [read"%96%82%92@%93@@%98@"])
  fun op SUM_EQUIV x = x
    val op SUM_EQUIV =
    DT(((("quotient_sum",5),
        [("bool",[14,15,25,26,53,54,56,58,63]),("combin",[19]),
         ("pair",[49]),("quotient",[0]),("quotient_sum",[0,1]),
         ("relation",[107,126]),("sum",[14,24])]),["DISK_THM"]),
       [read"%56%2%59%3%103%105$1@@%103%106$0@@%107%82$1@$0@@@@|@|@"])
  fun op SUM_QUOTIENT x = x
    val op SUM_QUOTIENT =
    DT(((("quotient_sum",6),
        [("bool",[15,25,26,27,51,54,56,58,63]),("combin",[19]),
         ("pair",[49]),("quotient",[3,4,5,6]),("quotient_sum",[0,1]),
         ("relation",[107,126]),("sum",[7,14,15,24,26])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%124%82$5@$2@@%77$4@$1@@%79$3@$0@@@|@|@|@@|@|@|@"])
  fun op INL_PRS x = x
    val op INL_PRS =
    DT(((("quotient_sum",7),
        [("bool",[25,56]),("quotient",[4]),("sum",[7,26])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%51%7%99%111$0@@%77$5@$2@%110$4$0@@@@|@@|@|@|@@|@|@|@"])
  fun op INL_RSP x = x
    val op INL_RSP =
    DT(((("quotient_sum",8),
        [("bool",[15,25,53,58]),("combin",[19]),("pair",[49]),
         ("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[24])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%49%10%49%12%103$7$1@$0@@%82$7@$4@%110$1@@%110$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op INR_PRS x = x
    val op INR_PRS =
    DT(((("quotient_sum",9),
        [("bool",[25,56]),("quotient",[4]),("sum",[7,26])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%52%21%99%113$0@@%77$5@$2@%112$1$0@@@@|@@|@|@|@@|@|@|@"])
  fun op INR_RSP x = x
    val op INR_RSP =
    DT(((("quotient_sum",10),
        [("bool",[15,25,53,58]),("combin",[19]),("pair",[49]),
         ("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[24])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%50%22%50%23%103$4$1@$0@@%82$7@$4@%112$1@@%112$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op ISL_PRS x = x
    val op ISL_PRS =
    DT(((("quotient_sum",11),
        [("bool",[25,26,27,54,63]),("sum",[14,17,26])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%75%9%94%115$0@@%114%79$4@$1@$0@@@|@@|@|@|@@|@|@|@"])
  fun op ISL_RSP x = x
    val op ISL_RSP =
    DT(((("quotient_sum",12),
        [("bool",[15,25,26,27,53,54,58,63]),("combin",[19]),("pair",[49]),
         ("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[14,17,24])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%74%11%74%13%103%82$7@$4@$1@$0@@%94%114$1@@%114$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op ISR_PRS x = x
    val op ISR_PRS =
    DT(((("quotient_sum",13),
        [("bool",[25,26,27,54,63]),("sum",[14,18,26])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%75%9%94%117$0@@%116%79$4@$1@$0@@@|@@|@|@|@@|@|@|@"])
  fun op ISR_RSP x = x
    val op ISR_RSP =
    DT(((("quotient_sum",14),
        [("bool",[15,25,26,27,53,54,58,63]),("combin",[19]),("pair",[49]),
         ("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[14,18,24])]),["DISK_THM"]),
       [read"%56%2%54%15%60%31%103%118$2@$1@$0@@%59%3%57%17%64%33%103%120$2@$1@$0@@%74%11%74%13%103%82$7@$4@$1@$0@@%94%116$1@@%116$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op SUM_MAP_PRS x = x
    val op SUM_MAP_PRS =
    DT(((("quotient_sum",15),
        [("bool",[14,25,26,56]),("quotient",[4,17]),
         ("sum",[14,26])]),["DISK_THM"]),
       [read"%56%2%55%16%67%32%103%119$2@$1@$0@@%59%3%58%18%69%34%103%121$2@$1@$0@@%63%4%62%19%70%35%103%122$2@$1@$0@@%66%5%65%20%72%36%103%123$2@$1@$0@@%68%25%71%28%97%81$1@$0@@%90%80$11@$5@@%78$9@$3@@%76%88$12@$8@$1@@%89$6@$2@$0@@@@|@|@@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op SUM_MAP_RSP x = x
    val op SUM_MAP_RSP =
    DT(((("quotient_sum",16),
        [("bool",[15,25,53,58,63]),("combin",[19]),("pair",[49]),
         ("quotient",[20]),("quotient_sum",[0,1]),("relation",[107,126]),
         ("sum",[14,24,26])]),["DISK_THM"]),
       [read"%56%2%55%16%67%32%103%119$2@$1@$0@@%59%3%58%18%69%34%103%121$2@$1@$0@@%63%4%62%19%70%35%103%122$2@$1@$0@@%66%5%65%20%72%36%103%123$2@$1@$0@@%53%26%53%27%61%29%61%30%103%91%100$15@$12@$3@$2@@%101$9@$6@$1@$0@@@%102%83$15@$9@@%84$12@$6@@%76$3@$1@@%76$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  end
  val _ = DB.bindl "quotient_sum"
  [("SUM_REL_tupled_primitive_def",SUM_REL_tupled_primitive_def,DB.Def),
   ("SUM_REL_curried_def",SUM_REL_curried_def,DB.Def),
   ("SUM_REL_ind",SUM_REL_ind,DB.Thm), ("SUM_REL_def",SUM_REL_def,DB.Thm),
   ("SUM_REL_EQ",SUM_REL_EQ,DB.Thm), ("SUM_EQUIV",SUM_EQUIV,DB.Thm),
   ("SUM_QUOTIENT",SUM_QUOTIENT,DB.Thm), ("INL_PRS",INL_PRS,DB.Thm),
   ("INL_RSP",INL_RSP,DB.Thm), ("INR_PRS",INR_PRS,DB.Thm),
   ("INR_RSP",INR_RSP,DB.Thm), ("ISL_PRS",ISL_PRS,DB.Thm),
   ("ISL_RSP",ISL_RSP,DB.Thm), ("ISR_PRS",ISR_PRS,DB.Thm),
   ("ISR_RSP",ISR_RSP,DB.Thm), ("SUM_MAP_PRS",SUM_MAP_PRS,DB.Thm),
   ("SUM_MAP_RSP",SUM_MAP_RSP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quotientTheory.quotient_grammars",
                          quotientTheory.quotient_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_infix ("+++", 480, HOLgrammars.LEFT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_REL_tupled", (Term.prim_mk_const { Name = "SUM_REL_tupled", Thy = "quotient_sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_REL_tupled", (Term.prim_mk_const { Name = "SUM_REL_tupled", Thy = "quotient_sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+++", (Term.prim_mk_const { Name = "+++", Thy = "quotient_sum"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+++", (Term.prim_mk_const { Name = "+++", Thy = "quotient_sum"}))
  val quotient_sum_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "quotient_sum",
    thydataty = "compute",
    data = "quotient_sum.SUM_REL_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quotient_sum"
end
