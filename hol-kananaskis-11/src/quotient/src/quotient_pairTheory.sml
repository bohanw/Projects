structure quotient_pairTheory :> quotient_pairTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quotient_pairTheory ... " else ()
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
          ("quotient_pair",
          Arbnum.fromString "1488586891",
          Arbnum.fromString "242612")
          [("quotient",
           Arbnum.fromString "1488586854",
           Arbnum.fromString "11971")];
  val _ = Theory.incorporate_types "quotient_pair" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("bool", "!"), ID("pair", "##"), ID("quotient_pair", "###"),
   ID("pair", ","), ID("quotient", "-->"), ID("bool", "/\\"),
   ID("min", "="), ID("quotient", "===>"), ID("min", "==>"),
   ID("pair", "CURRY"), ID("quotient", "EQUIV"), ID("pair", "FST"),
   ID("combin", "I"), ID("quotient", "QUOTIENT"), ID("pair", "SND"),
   ID("pair", "UNCURRY")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'d", TYV "'c", TYOP [2, 2, 1], TYOP [0, 3, 0], TYV "'b",
   TYV "'a", TYOP [2, 6, 5], TYOP [0, 7, 4], TYOP [0, 1, 0],
   TYOP [0, 5, 9], TYOP [0, 10, 8], TYOP [0, 2, 0], TYOP [0, 6, 12],
   TYOP [0, 13, 11], TYOP [0, 6, 0], TYOP [0, 6, 15], TYOP [0, 5, 0],
   TYOP [0, 5, 17], TYOP [0, 2, 12], TYOP [0, 1, 9], TYOP [0, 6, 2],
   TYOP [0, 6, 1], TYV "'e", TYOP [0, 6, 23], TYOP [0, 5, 1],
   TYOP [0, 5, 23], TYV "'f", TYOP [0, 5, 27], TYOP [0, 2, 27], TYV "'g",
   TYOP [0, 2, 30], TYV "'h", TYOP [0, 1, 32], TYOP [0, 23, 27],
   TYOP [0, 1, 34], TYOP [2, 1, 23], TYOP [0, 36, 27], TYOP [0, 6, 5],
   TYOP [0, 5, 2], TYOP [0, 6, 39], TYOP [0, 7, 2], TYOP [0, 30, 32],
   TYOP [0, 2, 1], TYOP [0, 2, 6], TYOP [0, 1, 6], TYOP [0, 23, 6],
   TYOP [0, 1, 5], TYOP [0, 23, 5], TYOP [0, 27, 5], TYOP [0, 27, 2],
   TYOP [0, 30, 2], TYOP [0, 32, 1], TYOP [0, 15, 0], TYOP [0, 17, 0],
   TYOP [0, 12, 0], TYOP [0, 9, 0], TYOP [0, 23, 0], TYOP [0, 57, 0],
   TYOP [0, 38, 0], TYOP [0, 59, 0], TYOP [0, 21, 0], TYOP [0, 61, 0],
   TYOP [0, 22, 0], TYOP [0, 63, 0], TYOP [0, 24, 0], TYOP [0, 65, 0],
   TYOP [0, 16, 0], TYOP [0, 67, 0], TYOP [0, 40, 0], TYOP [0, 69, 0],
   TYOP [0, 13, 0], TYOP [0, 71, 0], TYOP [0, 25, 0], TYOP [0, 73, 0],
   TYOP [0, 26, 0], TYOP [0, 75, 0], TYOP [0, 28, 0], TYOP [0, 77, 0],
   TYOP [0, 18, 0], TYOP [0, 79, 0], TYOP [0, 10, 0], TYOP [0, 81, 0],
   TYOP [0, 44, 0], TYOP [0, 83, 0], TYOP [0, 43, 0], TYOP [0, 85, 0],
   TYOP [0, 29, 0], TYOP [0, 87, 0], TYOP [0, 31, 0], TYOP [0, 89, 0],
   TYOP [0, 19, 0], TYOP [0, 91, 0], TYOP [0, 45, 0], TYOP [0, 93, 0],
   TYOP [0, 47, 0], TYOP [0, 95, 0], TYOP [0, 33, 0], TYOP [0, 97, 0],
   TYOP [0, 20, 0], TYOP [0, 99, 0], TYOP [0, 35, 0], TYOP [0, 101, 0],
   TYOP [0, 46, 0], TYOP [0, 103, 0], TYOP [0, 48, 0], TYOP [0, 105, 0],
   TYOP [0, 34, 0], TYOP [0, 107, 0], TYOP [0, 49, 0], TYOP [0, 109, 0],
   TYOP [0, 50, 0], TYOP [0, 111, 0], TYOP [0, 51, 0], TYOP [0, 113, 0],
   TYOP [0, 42, 0], TYOP [0, 115, 0], TYOP [0, 52, 0], TYOP [0, 117, 0],
   TYOP [0, 41, 0], TYOP [0, 119, 0], TYOP [0, 37, 0], TYOP [0, 121, 0],
   TYOP [0, 7, 0], TYOP [0, 123, 0], TYOP [0, 4, 0], TYOP [0, 36, 0],
   TYOP [0, 126, 0], TYOP [0, 7, 7], TYOP [0, 5, 5], TYOP [0, 129, 128],
   TYOP [0, 6, 6], TYOP [0, 131, 130], TYOP [2, 5, 1], TYOP [2, 6, 2],
   TYOP [0, 134, 133], TYOP [0, 43, 135], TYOP [0, 38, 136],
   TYOP [0, 7, 3], TYOP [0, 25, 138], TYOP [0, 21, 139], TYOP [0, 7, 36],
   TYOP [0, 26, 141], TYOP [0, 22, 142], TYOP [2, 27, 32],
   TYOP [0, 133, 144], TYOP [0, 33, 145], TYOP [0, 28, 146],
   TYOP [0, 3, 7], TYOP [0, 47, 148], TYOP [0, 44, 149], TYOP [0, 36, 7],
   TYOP [0, 48, 151], TYOP [0, 45, 152], TYOP [2, 23, 30],
   TYOP [0, 154, 134], TYOP [0, 51, 155], TYOP [0, 46, 156],
   TYOP [0, 154, 144], TYOP [0, 42, 158], TYOP [0, 34, 159],
   TYOP [0, 7, 123], TYOP [0, 18, 161], TYOP [0, 16, 162],
   TYOP [0, 134, 0], TYOP [0, 134, 164], TYOP [0, 19, 165],
   TYOP [0, 16, 166], TYOP [0, 133, 0], TYOP [0, 133, 168],
   TYOP [0, 20, 169], TYOP [0, 18, 170], TYOP [0, 5, 7], TYOP [0, 6, 172],
   TYOP [0, 1, 3], TYOP [0, 2, 174], TYOP [0, 35, 40], TYOP [0, 34, 39],
   TYOP [0, 177, 176], TYOP [0, 22, 178], TYOP [0, 34, 38],
   TYOP [0, 49, 180], TYOP [0, 24, 181], TYOP [0, 50, 177],
   TYOP [0, 26, 183], TYOP [0, 42, 43], TYOP [0, 52, 185],
   TYOP [0, 31, 186], TYOP [0, 37, 41], TYOP [0, 50, 188],
   TYOP [0, 141, 189], TYOP [0, 135, 158], TYOP [0, 145, 191],
   TYOP [0, 155, 192], TYOP [0, 0, 0], TYOP [0, 0, 194], TYOP [0, 27, 0],
   TYOP [0, 27, 196], TYOP [0, 15, 53], TYOP [0, 17, 54], TYOP [0, 161, 0],
   TYOP [0, 161, 200], TYOP [0, 8, 0], TYOP [0, 8, 202], TYOP [0, 128, 0],
   TYOP [0, 128, 204], TYOP [0, 158, 0], TYOP [0, 158, 206],
   TYOP [0, 3, 4], TYOP [0, 38, 59], TYOP [0, 18, 209], TYOP [0, 16, 210],
   TYOP [0, 40, 69], TYOP [0, 39, 0], TYOP [0, 39, 213],
   TYOP [0, 214, 212], TYOP [0, 16, 215], TYOP [0, 19, 214],
   TYOP [0, 18, 217], TYOP [0, 43, 85], TYOP [0, 20, 219],
   TYOP [0, 19, 220], TYOP [0, 41, 119], TYOP [0, 19, 222],
   TYOP [0, 161, 223], TYOP [0, 135, 0], TYOP [0, 135, 225],
   TYOP [0, 169, 226], TYOP [0, 165, 227], TYOP [0, 41, 40],
   TYOP [0, 37, 35], TYOP [0, 7, 6], TYOP [0, 3, 2], TYOP [0, 21, 83],
   TYOP [0, 16, 233], TYOP [0, 22, 93], TYOP [0, 16, 235],
   TYOP [0, 24, 103], TYOP [0, 16, 237], TYOP [0, 25, 95],
   TYOP [0, 18, 239], TYOP [0, 26, 105], TYOP [0, 18, 241],
   TYOP [0, 28, 109], TYOP [0, 18, 243], TYOP [0, 29, 111],
   TYOP [0, 19, 245], TYOP [0, 31, 113], TYOP [0, 19, 247],
   TYOP [0, 33, 117], TYOP [0, 20, 249], TYOP [0, 148, 0],
   TYOP [0, 138, 251], TYOP [0, 161, 252], TYOP [0, 7, 5], TYOP [0, 3, 1],
   TYOP [0, 40, 41], TYOP [0, 5, 4], TYOP [0, 6, 257], TYOP [0, 258, 8],
   TYOP [0, 2, 9], TYOP [0, 260, 4], TYOP [0, 35, 37]]
  end
  val _ = Theory.incorporate_consts "quotient_pair" tyvector [("###", 14)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("R1", 16), TMV("R1", 13), TMV("R2", 18), TMV("R2", 10),
   TMV("R3", 19), TMV("R4", 20), TMV("a", 6), TMV("a", 2), TMV("a", 1),
   TMV("a1", 6), TMV("a2", 5), TMV("abs1", 21), TMV("abs1", 22),
   TMV("abs1", 24), TMV("abs2", 25), TMV("abs2", 26), TMV("abs2", 28),
   TMV("abs3", 29), TMV("abs3", 31), TMV("abs4", 33), TMV("b", 5),
   TMV("b", 1), TMV("b", 23), TMV("b1", 6), TMV("b2", 5), TMV("c", 2),
   TMV("d", 1), TMV("f", 35), TMV("f", 34), TMV("f", 37), TMV("f1", 38),
   TMV("f1", 40), TMV("f1", 41), TMV("f2", 38), TMV("f2", 40),
   TMV("f2", 41), TMV("g", 42), TMV("g1", 43), TMV("g2", 43), TMV("p", 3),
   TMV("p", 36), TMV("p1", 7), TMV("p2", 7), TMV("rep1", 44),
   TMV("rep1", 45), TMV("rep1", 46), TMV("rep2", 47), TMV("rep2", 48),
   TMV("rep2", 49), TMV("rep3", 50), TMV("rep3", 51), TMV("rep4", 52),
   TMV("x", 6), TMV("x", 5), TMV("x", 7), TMV("y", 6), TMV("y", 5),
   TMC(3, 53), TMC(3, 54), TMC(3, 55), TMC(3, 56), TMC(3, 58), TMC(3, 60),
   TMC(3, 62), TMC(3, 64), TMC(3, 66), TMC(3, 68), TMC(3, 70), TMC(3, 72),
   TMC(3, 74), TMC(3, 76), TMC(3, 78), TMC(3, 80), TMC(3, 82), TMC(3, 84),
   TMC(3, 86), TMC(3, 88), TMC(3, 90), TMC(3, 92), TMC(3, 94), TMC(3, 96),
   TMC(3, 98), TMC(3, 100), TMC(3, 102), TMC(3, 104), TMC(3, 106),
   TMC(3, 108), TMC(3, 110), TMC(3, 112), TMC(3, 114), TMC(3, 116),
   TMC(3, 118), TMC(3, 120), TMC(3, 122), TMC(3, 124), TMC(3, 125),
   TMC(3, 127), TMC(4, 132), TMC(4, 137), TMC(4, 140), TMC(4, 143),
   TMC(4, 147), TMC(4, 150), TMC(4, 153), TMC(4, 157), TMC(4, 160),
   TMC(5, 163), TMC(5, 167), TMC(5, 14), TMC(5, 171), TMC(6, 173),
   TMC(6, 175), TMC(7, 179), TMC(7, 182), TMC(7, 184), TMC(7, 187),
   TMC(7, 190), TMC(7, 193), TMC(8, 195), TMC(9, 16), TMC(9, 18),
   TMC(9, 19), TMC(9, 20), TMC(9, 197), TMC(9, 195), TMC(9, 198),
   TMC(9, 199), TMC(9, 201), TMC(9, 203), TMC(9, 205), TMC(9, 207),
   TMC(9, 161), TMC(9, 208), TMC(10, 211), TMC(10, 216), TMC(10, 218),
   TMC(10, 221), TMC(10, 224), TMC(10, 228), TMC(11, 195), TMC(12, 229),
   TMC(12, 230), TMC(13, 67), TMC(13, 79), TMC(13, 200), TMC(14, 231),
   TMC(14, 232), TMC(15, 131), TMC(15, 129), TMC(15, 128), TMC(16, 234),
   TMC(16, 236), TMC(16, 238), TMC(16, 240), TMC(16, 242), TMC(16, 244),
   TMC(16, 246), TMC(16, 248), TMC(16, 250), TMC(16, 253), TMC(17, 254),
   TMC(17, 255), TMC(18, 256), TMC(18, 259), TMC(18, 261), TMC(18, 262)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op PAIR_REL x = x
    val op PAIR_REL =
    DT(((("quotient_pair",1),[]),[]),
       [read"%68%1%73%3%128%108$1@$0@@%163%6%20%164%25%26%118$5$3@$1@@$4$2@$0@@||@||@@|@|@"])
  fun op PAIR_MAP_I x = x
    val op PAIR_MAP_I =
    DT(((("quotient_pair",0),
        [("bool",[14,25,26,56]),("combin",[19]),
         ("pair",[5,38])]),["DISK_THM"]), [read"%129%97%147@%148@@%149@"])
  fun op PAIR_REL_THM x = x
    val op PAIR_REL_THM =
    DT(((("quotient_pair",2),
        [("pair",[16]),("quotient_pair",[1])]),["DISK_THM"]),
       [read"%68%1%73%3%57%6%58%20%59%25%60%26%124%108$5@$4@%110$3@$2@@%111$1@$0@@@%118$5$3@$1@@$4$2@$0@@@|@|@|@|@|@|@"])
  fun op PAIR_REL_EQ x = x
    val op PAIR_REL_EQ =
    DT(((("quotient_pair",3),
        [("bool",[14,25,26,56]),("pair",[3,5]),
         ("quotient_pair",[2])]),["DISK_THM"]),
       [read"%127%106%119@%120@@%131@"])
  fun op PAIR_REL_REFL x = x
    val op PAIR_REL_REFL =
    DT(((("quotient_pair",4),
        [("bool",[25,51,56]),("pair",[5]),
         ("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%72%2%139%118%57%52%57%55%124$3$1@$0@@%125$3$1@@$3$0@@@|@|@@%58%53%58%56%124$2$1@$0@@%126$2$1@@$2$0@@@|@|@@@%94%54%106$2@$1@$0@$0@|@@|@|@"])
  fun op PAIR_EQUIV x = x
    val op PAIR_EQUIV =
    DT(((("quotient_pair",5),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("combin",[19]),("pair",[5]),("quotient",[0]),
         ("quotient_pair",[2,4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%66%0%72%2%139%142$1@@%139%143$0@@%144%106$1@$0@@@@|@|@"])
  fun op PAIR_QUOTIENT x = x
    val op PAIR_QUOTIENT =
    DT(((("quotient_pair",6),
        [("bool",[25,26,36,47,48,51,53,54,56,63]),("combin",[19]),
         ("pair",[3,5,38]),("quotient",[3,4,5,6]),("quotient_pair",[2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%159%106$5@$2@@%99$4@$1@@%102$3@$0@@@|@|@|@@|@|@|@"])
  fun op FST_PRS x = x
    val op FST_PRS =
    DT(((("quotient_pair",7),
        [("bool",[25,56]),("pair",[5,8,38]),
         ("quotient",[4])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%95%39%121%146$0@@$5%145%102$4@$1@$0@@@@|@@|@|@|@@|@|@|@"])
  fun op FST_RSP x = x
    val op FST_RSP =
    DT(((("quotient_pair",8),
        [("pair",[5,8]),("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%94%41%94%42%139%106$7@$4@$1@$0@@$7%145$1@@%145$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op SND_PRS x = x
    val op SND_PRS =
    DT(((("quotient_pair",9),
        [("bool",[25,56]),("pair",[5,9,38]),
         ("quotient",[4])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%95%39%122%161$0@@$2%160%102$4@$1@$0@@@@|@@|@|@|@@|@|@|@"])
  fun op SND_RSP x = x
    val op SND_RSP =
    DT(((("quotient_pair",10),
        [("pair",[5,9]),("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%94%41%94%42%139%106$7@$4@$1@$0@@$4%160$1@@%160$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op COMMA_PRS x = x
    val op COMMA_PRS =
    DT(((("quotient_pair",11),
        [("bool",[25,56]),("pair",[38]),("quotient",[4])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%59%7%60%21%132%111$1@$0@@%99$6@$3@%110$5$1@@$2$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op COMMA_RSP x = x
    val op COMMA_RSP =
    DT(((("quotient_pair",12),
        [("bool",[25,53]),("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%63%11%74%43%139%150$2@$1@$0@@%72%2%69%14%80%46%139%153$2@$1@$0@@%57%9%58%10%57%23%58%24%139%118$9$3@$1@@$6$2@$0@@@%106$9@$6@%110$3@$2@@%110$1@$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op CURRY_PRS x = x
    val op CURRY_PRS =
    DT(((("quotient_pair",13),
        [("bool",[25,56]),("pair",[12,38]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%66%0%64%12%79%44%139%151$2@$1@$0@@%72%2%70%15%85%47%139%154$2@$1@$0@@%78%4%76%17%88%49%139%156$2@$1@$0@@%93%29%60%8%61%22%123%141$2@$1@$0@@$4%140%116%100$10@$7@@$3@$2@@$9$1@@$6$0@@@@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op CURRY_RSP x = x
    val op CURRY_RSP =
    DT(((("quotient_pair",14),
        [("pair",[12]),("quotient",[20]),
         ("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%64%12%79%44%139%151$2@$1@$0@@%72%2%70%15%85%47%139%154$2@$1@$0@@%78%4%76%17%88%49%139%156$2@$1@$0@@%92%32%92%35%139%137%106$10@$7@@$4@$1@$0@@%134$10@%135$7@$4@@%140$1@@%140$0@@@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op UNCURRY_PRS x = x
    val op UNCURRY_PRS =
    DT(((("quotient_pair",15),
        [("bool",[25,56]),("pair",[5,16,38]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%66%0%64%12%79%44%139%151$2@$1@$0@@%72%2%70%15%85%47%139%154$2@$1@$0@@%78%4%76%17%88%49%139%156$2@$1@$0@@%83%27%96%40%123%165$1@$0@@$3%162%112$9@%114$6@$2@@$1@@%103$8@$5@$0@@@@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op UNCURRY_RSP x = x
    val op UNCURRY_RSP =
    DT(((("quotient_pair",16),
        [("pair",[5,16]),("quotient",[20]),
         ("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%64%12%79%44%139%151$2@$1@$0@@%72%2%70%15%85%47%139%154$2@$1@$0@@%78%4%76%17%88%49%139%156$2@$1@$0@@%67%31%67%34%139%134$10@%135$7@$4@@$1@$0@@%137%106$10@$7@@$4@%162$1@@%162$0@@@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op PAIR_MAP_PRS x = x
    val op PAIR_MAP_PRS =
    DT(((("quotient_pair",17),
        [("bool",[14,25,26,56]),("pair",[5,38]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%66%0%65%13%84%45%139%152$2@$1@$0@@%72%2%71%16%87%48%139%155$2@$1@$0@@%78%4%77%18%89%50%139%157$2@$1@$0@@%82%5%81%19%91%51%139%158$2@$1@$0@@%86%28%90%36%130%105$1@$0@@%117%104$11@$5@@%101$9@$3@@%98%113$12@$8@$1@@%115$6@$2@$0@@@@|@|@@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op PAIR_MAP_RSP x = x
    val op PAIR_MAP_RSP =
    DT(((("quotient_pair",18),
        [("pair",[5,38]),("quotient",[20]),
         ("quotient_pair",[2])]),["DISK_THM"]),
       [read"%66%0%65%13%84%45%139%152$2@$1@$0@@%72%2%71%16%87%48%139%155$2@$1@$0@@%78%4%77%18%89%50%139%157$2@$1@$0@@%82%5%81%19%91%51%139%158$2@$1@$0@@%62%30%62%33%75%37%75%38%139%118%133$15@$12@$3@$2@@%136$9@$6@$1@$0@@@%138%107$15@$9@@%109$12@$6@@%98$3@$1@@%98$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  end
  val _ = DB.bindl "quotient_pair"
  [("PAIR_REL",PAIR_REL,DB.Def), ("PAIR_MAP_I",PAIR_MAP_I,DB.Thm),
   ("PAIR_REL_THM",PAIR_REL_THM,DB.Thm),
   ("PAIR_REL_EQ",PAIR_REL_EQ,DB.Thm),
   ("PAIR_REL_REFL",PAIR_REL_REFL,DB.Thm),
   ("PAIR_EQUIV",PAIR_EQUIV,DB.Thm),
   ("PAIR_QUOTIENT",PAIR_QUOTIENT,DB.Thm), ("FST_PRS",FST_PRS,DB.Thm),
   ("FST_RSP",FST_RSP,DB.Thm), ("SND_PRS",SND_PRS,DB.Thm),
   ("SND_RSP",SND_RSP,DB.Thm), ("COMMA_PRS",COMMA_PRS,DB.Thm),
   ("COMMA_RSP",COMMA_RSP,DB.Thm), ("CURRY_PRS",CURRY_PRS,DB.Thm),
   ("CURRY_RSP",CURRY_RSP,DB.Thm), ("UNCURRY_PRS",UNCURRY_PRS,DB.Thm),
   ("UNCURRY_RSP",UNCURRY_RSP,DB.Thm),
   ("PAIR_MAP_PRS",PAIR_MAP_PRS,DB.Thm),
   ("PAIR_MAP_RSP",PAIR_MAP_RSP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quotientTheory.quotient_grammars",
                          quotientTheory.quotient_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("###", (Term.prim_mk_const { Name = "###", Thy = "quotient_pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("###", (Term.prim_mk_const { Name = "###", Thy = "quotient_pair"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "###"))
       (Infix(HOLgrammars.RIGHT, 490))
  val quotient_pair_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quotient_pair"
end
