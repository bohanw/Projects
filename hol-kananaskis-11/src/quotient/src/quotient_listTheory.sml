structure quotient_listTheory :> quotient_listTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quotient_listTheory ... " else ()
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
          ("quotient_list",
          Arbnum.fromString "1488586871",
          Arbnum.fromString "821239")
          [("quotient",
           Arbnum.fromString "1488586854",
           Arbnum.fromString "11971")];
  val _ = Theory.incorporate_types "quotient_list" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("list", "list"),
   ID("bool", "!"), ID("quotient", "-->"), ID("bool", "/\\"),
   ID("min", "="), ID("num", "num"), ID("quotient", "===>"),
   ID("min", "==>"), ID("list", "APPEND"), ID("list", "CONS"),
   ID("quotient", "EQUIV"), ID("list", "EVERY"), ID("list", "EXISTS"),
   ID("list", "FILTER"), ID("list", "FLAT"), ID("list", "FOLDL"),
   ID("list", "FOLDR"), ID("combin", "I"), ID("list", "LENGTH"),
   ID("list", "LIST_REL"), ID("list", "MAP"), ID("list", "NIL"),
   ID("list", "NULL"), ID("quotient", "QUOTIENT"), ID("list", "REVERSE")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 0],
   TYOP [0, 3, 4], TYOP [0, 1, 2], TYOP [0, 3, 1], TYV "'c",
   TYOP [0, 3, 8], TYV "'d", TYOP [0, 1, 10], TYOP [0, 8, 10],
   TYOP [0, 10, 8], TYOP [0, 8, 13], TYOP [0, 10, 10], TYOP [0, 8, 15],
   TYOP [0, 1, 3], TYOP [0, 3, 17], TYOP [0, 1, 1], TYOP [0, 3, 19],
   TYOP [2, 1], TYOP [2, 8], TYOP [2, 10], TYOP [2, 21], TYOP [2, 3],
   TYOP [2, 25], TYOP [0, 8, 3], TYOP [0, 10, 1], TYOP [0, 4, 0],
   TYOP [0, 2, 0], TYOP [0, 8, 0], TYOP [0, 31, 0], TYOP [0, 10, 0],
   TYOP [0, 33, 0], TYOP [0, 7, 0], TYOP [0, 35, 0], TYOP [0, 9, 0],
   TYOP [0, 37, 0], TYOP [0, 29, 0], TYOP [0, 5, 0], TYOP [0, 40, 0],
   TYOP [0, 18, 0], TYOP [0, 42, 0], TYOP [0, 20, 0], TYOP [0, 44, 0],
   TYOP [0, 17, 0], TYOP [0, 46, 0], TYOP [0, 11, 0], TYOP [0, 48, 0],
   TYOP [0, 30, 0], TYOP [0, 6, 0], TYOP [0, 51, 0], TYOP [0, 27, 0],
   TYOP [0, 53, 0], TYOP [0, 12, 0], TYOP [0, 55, 0], TYOP [0, 14, 0],
   TYOP [0, 57, 0], TYOP [0, 16, 0], TYOP [0, 59, 0], TYOP [0, 28, 0],
   TYOP [0, 61, 0], TYOP [0, 25, 0], TYOP [0, 63, 0], TYOP [0, 21, 0],
   TYOP [0, 65, 0], TYOP [0, 22, 0], TYOP [0, 67, 0], TYOP [0, 23, 0],
   TYOP [0, 69, 0], TYOP [0, 26, 0], TYOP [0, 71, 0], TYOP [0, 24, 0],
   TYOP [0, 73, 0], TYOP [0, 2, 4], TYOP [0, 0, 0], TYOP [0, 76, 75],
   TYOP [0, 7, 77], TYOP [0, 12, 7], TYOP [0, 28, 79], TYOP [0, 9, 80],
   TYOP [0, 14, 18], TYOP [0, 13, 17], TYOP [0, 83, 82], TYOP [0, 9, 84],
   TYOP [0, 16, 20], TYOP [0, 15, 19], TYOP [0, 87, 86], TYOP [0, 9, 88],
   TYOP [0, 27, 83], TYOP [0, 11, 90], TYOP [0, 28, 87], TYOP [0, 11, 92],
   TYOP [0, 0, 76], TYOP [0, 8, 31], TYOP [0, 10, 33], TYOP [0, 4, 29],
   TYOP [0, 25, 63], TYOP [0, 98, 0], TYOP [0, 98, 99], TYOP [0, 25, 25],
   TYOP [0, 101, 0], TYOP [0, 101, 102], TYOP [0, 21, 65],
   TYOP [0, 23, 69], TYOP [7], TYOP [0, 106, 0], TYOP [0, 106, 107],
   TYOP [0, 7, 35], TYOP [0, 6, 109], TYOP [0, 5, 110], TYOP [0, 94, 97],
   TYOP [0, 5, 112], TYOP [0, 18, 42], TYOP [0, 17, 46],
   TYOP [0, 115, 114], TYOP [0, 5, 116], TYOP [0, 20, 44], TYOP [0, 19, 0],
   TYOP [0, 19, 119], TYOP [0, 120, 118], TYOP [0, 5, 121],
   TYOP [0, 5, 115], TYOP [0, 6, 123], TYOP [0, 6, 120], TYOP [0, 6, 125],
   TYOP [0, 25, 101], TYOP [0, 21, 21], TYOP [0, 21, 128],
   TYOP [0, 3, 101], TYOP [0, 1, 128], TYOP [0, 4, 63], TYOP [0, 2, 65],
   TYOP [0, 4, 101], TYOP [0, 2, 128], TYOP [0, 26, 25], TYOP [0, 24, 21],
   TYOP [0, 21, 3], TYOP [0, 3, 138], TYOP [0, 18, 139], TYOP [0, 23, 8],
   TYOP [0, 8, 141], TYOP [0, 14, 142], TYOP [0, 25, 1], TYOP [0, 1, 144],
   TYOP [0, 20, 145], TYOP [0, 22, 10], TYOP [0, 10, 147],
   TYOP [0, 16, 148], TYOP [0, 3, 3], TYOP [0, 25, 106], TYOP [0, 21, 106],
   TYOP [0, 5, 98], TYOP [0, 6, 104], TYOP [0, 26, 71], TYOP [0, 98, 155],
   TYOP [0, 150, 101], TYOP [0, 25, 21], TYOP [0, 7, 158],
   TYOP [0, 21, 25], TYOP [0, 17, 160], TYOP [0, 21, 23],
   TYOP [0, 11, 162], TYOP [0, 22, 25], TYOP [0, 27, 164],
   TYOP [0, 22, 23], TYOP [0, 12, 166], TYOP [0, 23, 21],
   TYOP [0, 28, 168], TYOP [0, 24, 26], TYOP [0, 160, 170],
   TYOP [0, 7, 46], TYOP [0, 5, 172], TYOP [0, 9, 53], TYOP [0, 5, 174],
   TYOP [0, 11, 61], TYOP [0, 6, 176], TYOP [0, 160, 0],
   TYOP [0, 158, 178], TYOP [0, 98, 179]]
  end
  val _ = Theory.incorporate_consts "quotient_list" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 2), TMV("P1", 4), TMV("P2", 4), TMV("R", 5), TMV("R1", 5),
   TMV("R2", 6), TMV("abs", 7), TMV("abs1", 9), TMV("abs2", 11),
   TMV("e", 8), TMV("e", 10), TMV("e1", 3), TMV("e1", 1), TMV("e2", 3),
   TMV("e2", 1), TMV("f", 12), TMV("f", 14), TMV("f", 16), TMV("f1", 7),
   TMV("f1", 18), TMV("f1", 20), TMV("f2", 7), TMV("f2", 18),
   TMV("f2", 20), TMV("h", 1), TMV("h1", 3), TMV("h2", 3), TMV("l", 21),
   TMV("l", 22), TMV("l", 23), TMV("l", 24), TMV("l1", 25), TMV("l1", 21),
   TMV("l1", 26), TMV("l2", 25), TMV("l2", 21), TMV("l2", 26),
   TMV("m", 21), TMV("m1", 25), TMV("m2", 25), TMV("r", 25),
   TMV("rep", 17), TMV("rep1", 27), TMV("rep2", 28), TMV("s", 25),
   TMV("t", 21), TMV("t1", 25), TMV("t2", 25), TMV("x", 3), TMV("x", 25),
   TMV("y", 3), TMC(3, 29), TMC(3, 30), TMC(3, 32), TMC(3, 34), TMC(3, 36),
   TMC(3, 38), TMC(3, 39), TMC(3, 41), TMC(3, 43), TMC(3, 45), TMC(3, 47),
   TMC(3, 49), TMC(3, 50), TMC(3, 52), TMC(3, 54), TMC(3, 56), TMC(3, 58),
   TMC(3, 60), TMC(3, 62), TMC(3, 64), TMC(3, 66), TMC(3, 68), TMC(3, 70),
   TMC(3, 72), TMC(3, 74), TMC(4, 78), TMC(4, 81), TMC(4, 85), TMC(4, 89),
   TMC(4, 91), TMC(4, 93), TMC(5, 94), TMC(6, 5), TMC(6, 95), TMC(6, 96),
   TMC(6, 94), TMC(6, 97), TMC(6, 100), TMC(6, 103), TMC(6, 98),
   TMC(6, 104), TMC(6, 105), TMC(6, 108), TMC(8, 111), TMC(8, 113),
   TMC(8, 117), TMC(8, 122), TMC(8, 124), TMC(8, 126), TMC(9, 94),
   TMC(10, 127), TMC(10, 129), TMC(11, 130), TMC(11, 131), TMC(12, 40),
   TMC(12, 99), TMC(13, 132), TMC(13, 133), TMC(14, 132), TMC(14, 133),
   TMC(15, 134), TMC(15, 135), TMC(16, 136), TMC(16, 137), TMC(17, 140),
   TMC(17, 143), TMC(18, 146), TMC(18, 149), TMC(19, 150), TMC(19, 76),
   TMC(19, 101), TMC(20, 151), TMC(20, 152), TMC(21, 153), TMC(21, 154),
   TMC(21, 156), TMC(22, 157), TMC(22, 159), TMC(22, 161), TMC(22, 163),
   TMC(22, 165), TMC(22, 167), TMC(22, 169), TMC(22, 171), TMC(23, 25),
   TMC(23, 21), TMC(24, 63), TMC(24, 65), TMC(25, 173), TMC(25, 175),
   TMC(25, 177), TMC(25, 180), TMC(26, 101), TMC(26, 128)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op LIST_MAP_I x = x
    val op LIST_MAP_I =
    DT(((("quotient_list",0),
        [("bool",[14,25,36,56,60]),("combin",[19]),
         ("list",[23,43])]),["DISK_THM"]), [read"%89%127%119@@%121@"])
  fun op LIST_REL_EQ x = x
    val op LIST_REL_EQ =
    DT(((("quotient_list",1),
        [("bool",[14,25,26,27,36,54,56,63]),
         ("list",[43,48,49,50,139])]),["DISK_THM"]),
       [read"%88%124%83@@%90@"])
  fun op LIST_REL_REFL x = x
    val op LIST_REL_REFL =
    DT(((("quotient_list",2),
        [("bool",[14,25,51,56,63]),("list",[43,139])]),["DISK_THM"]),
       [read"%58%3%100%51%48%51%50%86$2$1@$0@@%87$2$1@@$2$0@@@|@|@@%70%49%124$1@$0@$0@|@@|@"])
  fun op LIST_EQUIV x = x
    val op LIST_EQUIV =
    DT(((("quotient_list",3),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,73,93,94,
          96]),("combin",[19]),("list",[43,46,139]),("quotient",[0]),
         ("quotient_list",[2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%58%3%100%105$0@@%106%124$0@@@|@"])
  fun op LIST_REL_REL x = x
    val op LIST_REL_REL =
    DT(((("quotient_list",4),
        [("bool",[14,25,26,27,36,47,48,51,53,54,56,63]),("combin",[19]),
         ("list",[23,43,46,48,49,50,139]),("quotient",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%40%70%44%86%124$4@$1@$0@@%82%124$4@$1@$1@@%82%124$4@$0@$0@@%91%128$3@$1@@%128$3@$0@@@@@|@|@@|@|@|@"])
  fun op LIST_QUOTIENT x = x
    val op LIST_QUOTIENT =
    DT(((("quotient_list",5),
        [("bool",[14,25,26,27,36,47,48,51,53,54,56,63]),("combin",[19]),
         ("list",[23,43,46,48,49,50,139]),("quotient",[3,4,5,6]),
         ("quotient_list",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%142%124$2@@%128$1@@%129$0@@@|@|@|@"])
  fun op CONS_PRS x = x
    val op CONS_PRS =
    DT(((("quotient_list",6),
        [("bool",[14,25,36,56]),("list",[23,43]),
         ("quotient",[4])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%45%52%24%91%104$0@$1@@%128$3@%103$2$0@@%129$2@$1@@@@|@|@@|@|@|@"])
  fun op CONS_RSP x = x
    val op CONS_RSP =
    DT(((("quotient_list",7),
        [("bool",[25,51,53]),("list",[46,139])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%46%70%47%51%25%51%26%100%82$6$1@$0@@%124$6@$3@$2@@@%124$6@%103$1@$3@@%103$0@$2@@@|@|@|@|@@|@|@|@"])
  fun op NIL_PRS x = x
    val op NIL_PRS =
    DT(((("quotient_list",8),
        [("bool",[25,56]),("list",[23])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%91%136@%128$1@%135@@@|@|@|@"])
  fun op NIL_RSP x = x
    val op NIL_RSP =
    DT(((("quotient_list",9),[("bool",[25]),("list",[139])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%124$2@%135@%135@@|@|@|@"])
  fun op MAP_PRS x = x
    val op MAP_PRS =
    DT(((("quotient_list",10),
        [("bool",[14,25,36,51,56]),("list",[23,43,48]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%58%4%56%7%65%42%100%140$2@$1@$0@@%64%5%62%8%69%43%100%141$2@$1@$0@@%72%28%66%15%92%132$0@$1@@%130$3@%128%77$6@$2@$0@@%131$5@$1@@@@|@|@@|@|@|@@|@|@|@"])
  fun op MAP_RSP x = x
    val op MAP_RSP =
    DT(((("quotient_list",11),
        [("bool",[14,25,51,53,63]),("list",[23,43,139]),
         ("quotient",[34])]),["DISK_THM"]),
       [read"%58%4%56%7%65%42%100%140$2@$1@$0@@%64%5%62%8%69%43%100%141$2@$1@$0@@%70%31%70%34%55%18%55%21%100%82%94$9@$6@$1@$0@@%124$9@$3@$2@@@%125$6@%128$1@$3@@%128$0@$2@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op LENGTH_PRS x = x
    val op LENGTH_PRS =
    DT(((("quotient_list",12),
        [("bool",[14,25,36,56]),("list",[22,23,43])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%27%93%123$0@@%122%129$1@$0@@@|@@|@|@|@"])
  fun op LENGTH_RSP x = x
    val op LENGTH_RSP =
    DT(((("quotient_list",13),
        [("bool",[14,25,53,56]),("list",[22,43,139]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%31%70%34%100%124$4@$1@$0@@%93%122$1@@%122$0@@@|@|@@|@|@|@"])
  fun op APPEND_PRS x = x
    val op APPEND_PRS =
    DT(((("quotient_list",14),
        [("bool",[14,25,36,56]),("list",[20,23,43]),
         ("quotient",[4])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%27%71%37%91%102$1@$0@@%128$3@%101%129$2@$1@@%129$2@$0@@@@|@|@@|@|@|@"])
  fun op APPEND_RSP x = x
    val op APPEND_RSP =
    DT(((("quotient_list",15),
        [("bool",[14,25,51,53,63]),("list",[20,43,139])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%31%70%34%70%38%70%39%100%82%124$6@$3@$2@@%124$6@$1@$0@@@%124$6@%101$3@$1@@%101$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op FLAT_PRS x = x
    val op FLAT_PRS =
    DT(((("quotient_list",16),
        [("bool",[14,25,36,56]),("list",[20,21,23,43,58]),
         ("quotient",[4])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%75%30%91%114$0@@%128$2@%113%134%129$1@@$0@@@@|@@|@|@|@"])
  fun op FLAT_RSP x = x
    val op FLAT_RSP =
    DT(((("quotient_list",17),
        [("bool",[14,25,26,51,53,63,105]),("list",[21,43,139]),
         ("quotient_list",[15])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%74%33%74%36%100%126%124$4@@$1@$0@@%124$4@%113$1@@%113$0@@@|@|@@|@|@|@"])
  fun op REVERSE_PRS x = x
    val op REVERSE_PRS =
    DT(((("quotient_list",18),
        [("bool",[14,25,56]),("list",[23,43,58,173]),
         ("quotient",[4])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%27%91%144$0@@%128$2@%143%129$1@$0@@@@|@@|@|@|@"])
  fun op REVERSE_RSP x = x
    val op REVERSE_RSP =
    DT(((("quotient_list",19),
        [("bool",[14,25,26,51,53,63,105]),("list",[43,139,173]),
         ("quotient_list",[15])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%31%70%34%100%124$4@$1@$0@@%124$4@%143$1@@%143$0@@@|@|@@|@|@|@"])
  fun op FILTER_PRS x = x
    val op FILTER_PRS =
    DT(((("quotient_list",20),
        [("bool",[14,25,26,27,30,56,63,64]),("combin",[19]),
         ("list",[23,27,43]),("quotient",[4,17])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%63%0%71%27%91%112$1@$0@@%128$3@%111%76$3@%120@$1@@%129$2@$0@@@@|@|@@|@|@|@"])
  fun op FILTER_RSP x = x
    val op FILTER_RSP =
    DT(((("quotient_list",21),
        [("bool",[14,25,26,27,30,36,48,51,53,63,64]),("list",[27,43,139]),
         ("quotient",[20])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%57%1%57%2%70%31%70%34%100%82%95$6@%86@$3@$2@@%124$6@$1@$0@@@%124$6@%111$3@$1@@%111$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op NULL_PRS x = x
    val op NULL_PRS =
    DT(((("quotient_list",22),
        [("bool",[25,26,27,54,63]),("list",[23,41,46])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%27%86%138$0@@%137%129$1@$0@@@|@@|@|@|@"])
  fun op NULL_RSP x = x
    val op NULL_RSP =
    DT(((("quotient_list",23),
        [("bool",[14,25,26,27,53,54,56,63]),
         ("list",[41,43,139])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%31%70%34%100%124$4@$1@$0@@%86%137$1@@%137$0@@@|@|@@|@|@|@"])
  fun op ALL_EL_PRS x = x
    val op ALL_EL_PRS =
    DT(((("quotient_list",24),
        [("bool",[14,25,36,56,63]),("combin",[19]),("list",[23,30,43]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%27%63%0%86%108$0@$1@@%107%76$3@%120@$0@@%129$2@$1@@@|@|@@|@|@|@"])
  fun op ALL_EL_RSP x = x
    val op ALL_EL_RSP =
    DT(((("quotient_list",25),
        [("bool",[14,25,36,51,53,63]),("list",[30,43,139]),
         ("quotient",[20])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%31%70%34%57%1%57%2%100%82%95$6@%86@$1@$0@@%124$6@$3@$2@@@%86%107$1@$3@@%107$0@$2@@@|@|@|@|@@|@|@|@"])
  fun op SOME_EL_PRS x = x
    val op SOME_EL_PRS =
    DT(((("quotient_list",26),
        [("bool",[14,25,36,54,56,63]),("combin",[19]),("list",[23,31,43]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%71%27%63%0%86%110$0@$1@@%109%76$3@%120@$0@@%129$2@$1@@@|@|@@|@|@|@"])
  fun op SOME_EL_RSP x = x
    val op SOME_EL_RSP =
    DT(((("quotient_list",27),
        [("bool",[14,25,36,51,53,54,63]),("list",[31,43,139]),
         ("quotient",[20])]),["DISK_THM"]),
       [read"%58%3%55%6%61%41%100%139$2@$1@$0@@%70%31%70%34%57%1%57%2%100%82%95$6@%86@$1@$0@@%124$6@$3@$2@@@%86%109$1@$3@@%109$0@$2@@@|@|@|@|@@|@|@|@"])
  fun op FOLDL_PRS x = x
    val op FOLDL_PRS =
    DT(((("quotient_list",28),
        [("bool",[14,25,36,56]),("list",[23,29,43]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%58%4%56%7%65%42%100%140$2@$1@$0@@%64%5%62%8%69%43%100%141$2@$1@$0@@%73%29%67%16%53%9%84%116$1@$0@$2@@$7%115%78$7@%80$4@$6@@$1@@$6$0@@%133$3@$2@@@@|@|@|@@|@|@|@@|@|@|@"])
  fun op FOLDL_RSP x = x
    val op FOLDL_RSP =
    DT(((("quotient_list",29),
        [("bool",[14,25,26,51,53,63,105]),("list",[29,43,139]),
         ("quotient",[20])]),["DISK_THM"]),
       [read"%58%4%56%7%65%42%100%140$2@$1@$0@@%64%5%62%8%69%43%100%141$2@$1@$0@@%71%32%71%35%59%19%59%22%51%11%51%13%100%82%96$11@%98$8@$11@@$3@$2@@%82$11$1@$0@@%125$8@$5@$4@@@@$11%115$3@$1@$5@@%115$2@$0@$4@@@|@|@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op FOLDR_PRS x = x
    val op FOLDR_PRS =
    DT(((("quotient_list",30),
        [("bool",[14,25,36,56]),("list",[23,28,43]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%58%4%56%7%65%42%100%140$2@$1@$0@@%64%5%62%8%69%43%100%141$2@$1@$0@@%72%28%68%17%54%10%85%118$1@$0@$2@@$4%117%79$7@%81$4@$3@@$1@@$3$0@@%131$6@$2@@@@|@|@|@@|@|@|@@|@|@|@"])
  fun op FOLDR_RSP x = x
    val op FOLDR_RSP =
    DT(((("quotient_list",31),
        [("bool",[14,25,26,51,53,63,105]),("list",[28,43,139]),
         ("quotient",[20])]),["DISK_THM"]),
       [read"%58%4%56%7%65%42%100%140$2@$1@$0@@%64%5%62%8%69%43%100%141$2@$1@$0@@%70%31%70%34%60%20%60%23%52%12%52%14%100%82%97$11@%99$8@$8@@$3@$2@@%82$8$1@$0@@%124$11@$5@$4@@@@$8%117$3@$1@$5@@%117$2@$0@$4@@@|@|@|@|@|@|@@|@|@|@@|@|@|@"])
  end
  val _ = DB.bindl "quotient_list"
  [("LIST_MAP_I",LIST_MAP_I,DB.Thm), ("LIST_REL_EQ",LIST_REL_EQ,DB.Thm),
   ("LIST_REL_REFL",LIST_REL_REFL,DB.Thm),
   ("LIST_EQUIV",LIST_EQUIV,DB.Thm), ("LIST_REL_REL",LIST_REL_REL,DB.Thm),
   ("LIST_QUOTIENT",LIST_QUOTIENT,DB.Thm), ("CONS_PRS",CONS_PRS,DB.Thm),
   ("CONS_RSP",CONS_RSP,DB.Thm), ("NIL_PRS",NIL_PRS,DB.Thm),
   ("NIL_RSP",NIL_RSP,DB.Thm), ("MAP_PRS",MAP_PRS,DB.Thm),
   ("MAP_RSP",MAP_RSP,DB.Thm), ("LENGTH_PRS",LENGTH_PRS,DB.Thm),
   ("LENGTH_RSP",LENGTH_RSP,DB.Thm), ("APPEND_PRS",APPEND_PRS,DB.Thm),
   ("APPEND_RSP",APPEND_RSP,DB.Thm), ("FLAT_PRS",FLAT_PRS,DB.Thm),
   ("FLAT_RSP",FLAT_RSP,DB.Thm), ("REVERSE_PRS",REVERSE_PRS,DB.Thm),
   ("REVERSE_RSP",REVERSE_RSP,DB.Thm), ("FILTER_PRS",FILTER_PRS,DB.Thm),
   ("FILTER_RSP",FILTER_RSP,DB.Thm), ("NULL_PRS",NULL_PRS,DB.Thm),
   ("NULL_RSP",NULL_RSP,DB.Thm), ("ALL_EL_PRS",ALL_EL_PRS,DB.Thm),
   ("ALL_EL_RSP",ALL_EL_RSP,DB.Thm), ("SOME_EL_PRS",SOME_EL_PRS,DB.Thm),
   ("SOME_EL_RSP",SOME_EL_RSP,DB.Thm), ("FOLDL_PRS",FOLDL_PRS,DB.Thm),
   ("FOLDL_RSP",FOLDL_RSP,DB.Thm), ("FOLDR_PRS",FOLDR_PRS,DB.Thm),
   ("FOLDR_RSP",FOLDR_RSP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quotientTheory.quotient_grammars",
                          quotientTheory.quotient_grammars)]
  val _ = List.app (update_grms reveal) []

  val quotient_list_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quotient_list"
end
