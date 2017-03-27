structure ind_typeTheory :> ind_typeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ind_typeTheory ... " else ()
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
          ("ind_type",
          Arbnum.fromString "1488586463",
          Arbnum.fromString "553745")
          [("numeral",
           Arbnum.fromString "1488586081",
           Arbnum.fromString "951418"),
           ("while",
           Arbnum.fromString "1488586097",
           Arbnum.fromString "778651")];
  val _ = Theory.incorporate_types "ind_type" [("recspace", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("ind_type", "recspace"), ID("min", "bool"),
   ID("num", "num"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("min", "@"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"), ID("bool", "COND"),
   ID("ind_type", "CONSTR"), ID("arithmetic", "EXP"),
   ID("ind_type", "FCONS"), ID("ind_type", "FNIL"), ID("ind_type", "INJA"),
   ID("ind_type", "INJF"), ID("ind_type", "INJN"), ID("ind_type", "INJP"),
   ID("ind_type", "ISO"), ID("arithmetic", "NUMERAL"),
   ID("ind_type", "NUMFST"), ID("ind_type", "NUMLEFT"),
   ID("ind_type", "NUMPAIR"), ID("ind_type", "NUMRIGHT"),
   ID("ind_type", "NUMSND"), ID("ind_type", "NUMSUM"), ID("num", "SUC"),
   ID("bool", "T"), ID("bool", "TYPE_DEFINITION"), ID("ind_type", "ZBOT"),
   ID("ind_type", "ZCONSTR"), ID("arithmetic", "ZERO"),
   ID("ind_type", "ZRECSPACE"), ID("bool", "\\/"),
   ID("ind_type", "dest_rec"), ID("ind_type", "mk_rec"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [2], TYOP [0, 0, 2], TYOP [3],
   TYOP [0, 4, 3], TYOP [0, 5, 1], TYOP [0, 1, 5], TYOP [0, 5, 2],
   TYOP [0, 4, 5], TYOP [0, 9, 5], TYOP [0, 0, 10], TYOP [0, 4, 11],
   TYOP [0, 4, 4], TYOP [0, 2, 13], TYOP [0, 4, 13], TYOP [0, 4, 2],
   TYV "'b", TYOP [0, 17, 0], TYOP [0, 18, 2], TYOP [0, 0, 17],
   TYOP [0, 20, 19], TYOP [0, 5, 5], TYOP [0, 5, 22], TYOP [0, 0, 5],
   TYOP [0, 4, 0], TYOP [0, 25, 25], TYOP [0, 0, 26], TYOP [0, 4, 1],
   TYOP [0, 28, 1], TYOP [0, 0, 29], TYOP [0, 4, 30], TYOP [0, 4, 17],
   TYOP [0, 32, 17], TYOP [0, 28, 33], TYOP [0, 0, 34], TYOP [0, 4, 35],
   TYV "'C", TYV "'B", TYOP [0, 38, 37], TYV "'A", TYOP [0, 40, 39],
   TYOP [0, 1, 2], TYOP [0, 37, 40], TYOP [0, 37, 38], TYV "'c",
   TYOP [0, 0, 45], TYOP [0, 1, 17], TYOP [0, 45, 0], TYV "'d",
   TYOP [0, 17, 49], TYOP [0, 49, 17], TYOP [0, 45, 49], TYOP [0, 40, 2],
   TYOP [0, 53, 2], TYOP [0, 38, 2], TYOP [0, 55, 2], TYOP [0, 3, 2],
   TYOP [0, 17, 2], TYOP [0, 58, 2], TYOP [0, 2, 2], TYOP [0, 60, 2],
   TYOP [0, 41, 2], TYOP [0, 62, 2], TYOP [0, 20, 2], TYOP [0, 64, 2],
   TYOP [0, 57, 2], TYOP [0, 19, 2], TYOP [0, 8, 2], TYOP [0, 68, 2],
   TYOP [0, 25, 2], TYOP [0, 70, 2], TYOP [0, 36, 2], TYOP [0, 72, 2],
   TYOP [0, 9, 2], TYOP [0, 74, 2], TYOP [0, 28, 2], TYOP [0, 76, 2],
   TYOP [0, 42, 2], TYOP [0, 78, 2], TYOP [0, 16, 2], TYOP [0, 2, 60],
   TYOP [0, 40, 53], TYOP [0, 38, 55], TYOP [0, 37, 2], TYOP [0, 37, 84],
   TYOP [0, 0, 3], TYOP [0, 17, 58], TYOP [0, 8, 68], TYOP [0, 5, 8],
   TYOP [0, 9, 74], TYOP [0, 28, 76], TYOP [0, 4, 16], TYOP [0, 1, 42],
   TYOP [0, 43, 2], TYOP [0, 94, 2], TYOP [0, 44, 2], TYOP [0, 96, 2],
   TYOP [0, 47, 2], TYOP [0, 98, 2], TYOP [0, 7, 2], TYOP [0, 100, 2],
   TYOP [0, 8, 5], TYOP [0, 0, 0], TYOP [0, 0, 103], TYOP [0, 2, 104],
   TYOP [0, 2, 81], TYOP [0, 2, 15], TYOP [0, 103, 2], TYOP [0, 103, 108],
   TYOP [0, 48, 2], TYOP [0, 46, 110], TYOP [0, 51, 2], TYOP [0, 50, 112],
   TYOP [0, 52, 20], TYOP [0, 114, 2], TYOP [0, 20, 52],
   TYOP [0, 116, 115], TYOP [0, 8, 100]]
  end
  val _ = Theory.incorporate_consts "ind_type" tyvector
     [("mk_rec", 6), ("dest_rec", 7), ("ZRECSPACE", 8), ("ZCONSTR", 12),
      ("ZBOT", 5), ("NUMSUM", 14), ("NUMSND", 13), ("NUMRIGHT", 13),
      ("NUMPAIR", 15), ("NUMLEFT", 16), ("NUMFST", 13), ("ISO", 21),
      ("INJP", 23), ("INJN", 9), ("INJF", 10), ("INJA", 24), ("FNIL", 25),
      ("FCONS", 27), ("CONSTR", 31), ("BOTTOM", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("Fn", 36), TMV("P", 41), TMV("P", 3), TMV("P", 42), TMV("X", 43),
   TMV("Y", 44), TMV("ZRECSPACE'", 8), TMV("a", 0), TMV("a", 1),
   TMV("a'", 45), TMV("a0", 5), TMV("a1", 0), TMV("a2", 0), TMV("b", 0),
   TMV("b", 17), TMV("b", 2), TMV("b1", 2), TMV("b2", 2), TMV("c", 4),
   TMV("c1", 4), TMV("c2", 4), TMV("f", 20), TMV("f", 46), TMV("f", 25),
   TMV("f", 9), TMV("f", 47), TMV("f'", 48), TMV("f1", 5), TMV("f1", 9),
   TMV("f1'", 5), TMV("f2", 5), TMV("f2", 9), TMV("f2'", 5), TMV("g", 18),
   TMV("g", 50), TMV("g'", 51), TMV("h", 20), TMV("h", 52), TMV("i", 0),
   TMV("i1", 0), TMV("i2", 0), TMV("m", 4), TMV("n", 4), TMV("n1", 4),
   TMV("n2", 4), TMV("r", 5), TMV("r", 9), TMV("r", 28), TMV("r1", 28),
   TMV("r2", 28), TMV("rep", 7), TMV("x", 40), TMV("x", 0), TMV("x", 17),
   TMV("x", 2), TMV("x", 5), TMV("x", 4), TMV("x", 1), TMV("x1", 40),
   TMV("x1", 4), TMV("x2", 40), TMV("x2", 4), TMV("y", 38), TMV("y", 0),
   TMV("y", 5), TMV("y", 4), TMV("y", 1), TMV("y1", 38), TMV("y1", 4),
   TMV("y2", 38), TMV("y2", 4), TMV("z", 5), TMC(4, 54), TMC(4, 56),
   TMC(4, 57), TMC(4, 59), TMC(4, 61), TMC(4, 63), TMC(4, 65), TMC(4, 66),
   TMC(4, 67), TMC(4, 69), TMC(4, 71), TMC(4, 68), TMC(4, 73), TMC(4, 75),
   TMC(4, 77), TMC(4, 79), TMC(4, 80), TMC(4, 78), TMC(5, 15), TMC(6, 15),
   TMC(7, 15), TMC(8, 81), TMC(9, 4), TMC(10, 82), TMC(10, 83),
   TMC(10, 85), TMC(10, 86), TMC(10, 87), TMC(10, 81), TMC(10, 88),
   TMC(10, 89), TMC(10, 90), TMC(10, 91), TMC(10, 92), TMC(10, 93),
   TMC(11, 81), TMC(12, 57), TMC(12, 59), TMC(12, 95), TMC(12, 97),
   TMC(12, 75), TMC(12, 99), TMC(12, 101), TMC(12, 80), TMC(13, 102),
   TMC(14, 0), TMC(15, 13), TMC(16, 13), TMC(17, 1), TMC(18, 105),
   TMC(18, 106), TMC(18, 107), TMC(19, 31), TMC(20, 15), TMC(21, 27),
   TMC(22, 25), TMC(23, 24), TMC(24, 10), TMC(25, 9), TMC(26, 23),
   TMC(27, 109), TMC(27, 21), TMC(27, 111), TMC(27, 113), TMC(27, 117),
   TMC(28, 13), TMC(29, 13), TMC(30, 16), TMC(31, 15), TMC(32, 13),
   TMC(33, 13), TMC(34, 14), TMC(35, 13), TMC(36, 2), TMC(37, 118),
   TMC(38, 5), TMC(39, 12), TMC(40, 4), TMC(41, 8), TMC(42, 81),
   TMC(43, 7), TMC(44, 6), TMC(45, 60)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op NUMPAIR x = x
    val op NUMPAIR =
    DT(((("ind_type",1),[]),[]),
       [read"%88%56%88%65%105%140$1@$0@@%90%125%137%119%149@@@$1@@%91%90%137%119%149@@@$0@@%137%118%149@@@@@|@|@"])
  fun op NUMPAIR_DEST x = x
    val op NUMPAIR_DEST =
    DT(((("ind_type",4),[("ind_type",[0,3])]),["DISK_THM"]),
       [read"%88%56%88%65%93%105%138%140$1@$0@@@$1@@%105%142%140$1@$0@@@$0@@|@|@"])
  fun op NUMSUM x = x
    val op NUMSUM =
    DT(((("ind_type",5),[]),[]),
       [read"%76%15%88%56%105%143$1@$0@@%123$1@%144%90%137%119%149@@@$0@@@%90%137%119%149@@@$0@@@|@|@"])
  fun op NUMSUM_DEST x = x
    val op NUMSUM_DEST =
    DT(((("ind_type",7),[("ind_type",[0,6])]),["DISK_THM"]),
       [read"%76%54%88%65%93%100%139%143$1@$0@@@$1@@%105%141%143$1@$0@@@$0@@|@|@"])
  fun op INJN x = x
    val op INJN =
    DT(((("ind_type",8),[]),[]),
       [read"%88%41%102%130$0@@%42%7%105$1@$2@||@|@"])
  fun op INJA x = x
    val op INJA =
    DT(((("ind_type",10),[]),[]),
       [read"%74%7%102%128$0@@%42%13%98$0@$2@||@|@"])
  fun op INJF x = x
    val op INJF =
    DT(((("ind_type",12),[]),[]),
       [read"%85%24%102%129$0@@%42$1%138$0@@%142$0@@|@|@"])
  fun op INJP x = x
    val op INJP =
    DT(((("ind_type",14),[]),[]),
       [read"%83%27%83%30%102%131$1@$0@@%42%7%122%139$1@@$3%141$1@@$0@@$2%141$1@@$0@@||@|@|@"])
  fun op ZCONSTR x = x
    val op ZCONSTR =
    DT(((("ind_type",16),[]),[]),
       [read"%88%18%74%38%85%46%102%148$2@$1@$0@@%131%130%144$2@@@%131%128$1@@%129$0@@@@|@|@|@"])
  fun op ZBOT x = x
    val op ZBOT =
    DT(((("ind_type",17),[]),[]),
       [read"%102%147@%131%130%94@@%116%71%145|@@@"])
  fun op ZRECSPACE_def x = x
    val op ZRECSPACE_def =
    DT(((("ind_type",19),[]),[]),
       [read"%101%150@%10%81%6%107%83%10%107%151%102$0@%147@@%115%18%108%38%112%46%93%102$3@%148$2@$1@$0@@@%88%42$5$1$0@@|@@|@|@|@@@$1$0@@|@@$0$1@@|@|@"])
  fun op recspace_TY_DEF x = x
    val op recspace_TY_DEF =
    DT(((("ind_type",24),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("ind_type",[19])]),["DISK_THM"]), [read"%114%50%146%150@$0@|@"])
  fun op recspace_repfns x = x
    val op recspace_repfns =
    DT(((("ind_type",25),[("bool",[117]),("ind_type",[24])]),["DISK_THM"]),
       [read"%93%89%8%106%153%152$0@@@$0@|@@%83%45%100%150$0@@%102%152%153$0@@@$0@@|@@"])
  fun op BOTTOM x = x
    val op BOTTOM =
    DT(((("ind_type",26),[]),[]), [read"%106%120@%153%147@@"])
  fun op CONSTR x = x
    val op CONSTR =
    DT(((("ind_type",27),[]),[]),
       [read"%88%18%74%38%86%47%106%124$2@$1@$0@@%153%148$2@$1@%42%152$1$0@@|@@@|@|@|@"])
  fun op FCONS x = x
    val op FCONS =
    DT(((("ind_type",34),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%93%74%7%82%23%98%126$1@$0@%94@@$1@|@|@@%74%7%82%23%88%42%98%126$2@$1@%144$0@@@$1$0@@|@|@|@@"])
  fun op FNIL x = x
    val op FNIL =
    DT(((("ind_type",35),[]),[]), [read"%88%42%98%127$0@@%117@|@"])
  fun op ISO x = x
    val op ISO =
    DT(((("ind_type",37),[]),[]),
       [read"%78%21%80%33%100%133$1@$0@@%93%75%53%99$2$1$0@@@$0@|@@%74%63%98$1$2$0@@@$0@|@@@|@|@"])
  fun op INJ_INVERSE2 x = x
    val op INJ_INVERSE2 =
    DT(((("ind_type",0),[("bool",[25,26,51,56,67,143])]),["DISK_THM"]),
       [read"%77%1%107%72%58%73%67%72%60%73%69%100%97$4$3@$2@@$4$1@$0@@@%93%95$3@$1@@%96$2@$0@@@|@|@|@|@@%110%4%111%5%72%51%73%62%93%95$3$4$1@$0@@@$1@@%96$2$4$1@$0@@@$0@@|@|@|@|@@|@"])
  fun op NUMPAIR_INJ_LEMMA x = x
    val op NUMPAIR_INJ_LEMMA =
    DT(((("ind_type",2),
        [("arithmetic",[8,69,76,91,127,162,163,273]),
         ("bool",[14,25,26,27,51,52,53,54,56,58,63,105,124]),
         ("ind_type",[1]),("num",[7,9]),("numeral",[3,6,21]),
         ("prim_rec",[1,6])]),["DISK_THM"]),
       [read"%88%59%88%68%88%61%88%70%107%105%140$3@$2@@%140$1@$0@@@%105$3@$1@@|@|@|@|@"])
  fun op NUMPAIR_INJ x = x
    val op NUMPAIR_INJ =
    DT(((("ind_type",3),
        [("arithmetic",[126,127,273]),
         ("bool",[25,26,51,52,53,56,58,105,124]),("ind_type",[1,2]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%88%59%88%68%88%61%88%70%100%105%140$3@$2@@%140$1@$0@@@%93%105$3@$1@@%105$2@$0@@@|@|@|@|@"])
  fun op NUMSUM_INJ x = x
    val op NUMSUM_INJ =
    DT(((("ind_type",6),
        [("arithmetic",[12,127,166]),
         ("bool",[25,26,27,30,51,52,53,54,56,58,63,64,105,124]),
         ("ind_type",[5]),("numeral",[3,6]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%76%16%88%59%76%17%88%61%100%105%143$3@$2@@%143$1@$0@@@%93%100$3@$1@@%105$2@$0@@@|@|@|@|@"])
  fun op INJN_INJ x = x
    val op INJN_INJ =
    DT(((("ind_type",9),
        [("bool",[25,26,53,56,58,63,105,124]),
         ("ind_type",[8])]),["DISK_THM"]),
       [read"%88%43%88%44%100%102%130$1@@%130$0@@@%105$1@$0@@|@|@"])
  fun op INJA_INJ x = x
    val op INJA_INJ =
    DT(((("ind_type",11),
        [("bool",[25,26,36,53,56,60,63]),("ind_type",[10])]),["DISK_THM"]),
       [read"%74%11%74%12%100%102%128$1@@%128$0@@@%98$1@$0@@|@|@"])
  fun op INJF_INJ x = x
    val op INJF_INJ =
    DT(((("ind_type",13),
        [("bool",[25,26,53,56,58,60,105,124]),
         ("ind_type",[4,12])]),["DISK_THM"]),
       [read"%85%28%85%31%100%102%129$1@@%129$0@@@%103$1@$0@@|@|@"])
  fun op INJP_INJ x = x
    val op INJP_INJ =
    DT(((("ind_type",15),
        [("bool",[14,25,26,27,51,53,54,56,58,60,64,73,105,124,129]),
         ("ind_type",[7,14])]),["DISK_THM"]),
       [read"%83%27%83%29%83%30%83%32%100%102%131$3@$1@@%131$2@$0@@@%93%102$3@$2@@%102$1@$0@@@|@|@|@|@"])
  fun op ZCONSTR_ZBOT x = x
    val op ZCONSTR_ZBOT =
    DT(((("ind_type",18),
        [("bool",[25,26,27,36,51,54]),("ind_type",[9,15,16,17]),
         ("num",[7])]),["DISK_THM"]),
       [read"%88%18%74%38%85%46%154%102%148$2@$1@$0@@%147@@|@|@|@"])
  fun op ZRECSPACE_rules x = x
    val op ZRECSPACE_rules =
    DT(((("ind_type",20),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("ind_type",[19])]),["DISK_THM"]),
       [read"%93%150%147@@%88%18%74%38%85%46%107%88%42%150$1$0@@|@@%150%148$2@$1@$0@@@|@|@|@@"])
  fun op ZRECSPACE_ind x = x
    val op ZRECSPACE_ind =
    DT(((("ind_type",21),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("ind_type",[19])]),["DISK_THM"]),
       [read"%81%6%107%93$0%147@@%88%18%74%38%85%46%107%88%42$4$1$0@@|@@$3%148$2@$1@$0@@@|@|@|@@@%83%10%107%150$0@@$1$0@@|@@|@"])
  fun op ZRECSPACE_strongind x = x
    val op ZRECSPACE_strongind =
    DT(((("ind_type",22),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("ind_type",[19])]),["DISK_THM"]),
       [read"%81%6%107%93$0%147@@%88%18%74%38%85%46%107%88%42%93%150$1$0@@@$4$1$0@@@|@@$3%148$2@$1@$0@@@|@|@|@@@%83%10%107%150$0@@$1$0@@|@@|@"])
  fun op ZRECSPACE_cases x = x
    val op ZRECSPACE_cases =
    DT(((("ind_type",23),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("ind_type",[19])]),["DISK_THM"]),
       [read"%83%10%100%150$0@@%151%102$0@%147@@%115%18%108%38%112%46%93%102$3@%148$2@$1@$0@@@%88%42%150$1$0@@|@@|@|@|@@@|@"])
  fun op MK_REC_INJ x = x
    val op MK_REC_INJ =
    DT(((("ind_type",28),
        [("bool",[25,56,58]),("ind_type",[25])]),["DISK_THM"]),
       [read"%83%55%83%64%107%106%153$1@@%153$0@@@%107%93%150$1@@%150$0@@@%102$1@$0@@@|@|@"])
  fun op DEST_REC_INJ x = x
    val op DEST_REC_INJ =
    DT(((("ind_type",29),
        [("bool",[25,26,53,56]),("ind_type",[25])]),["DISK_THM"]),
       [read"%89%57%89%66%100%102%152$1@@%152$0@@@%106$1@$0@@|@|@"])
  fun op CONSTR_BOT x = x
    val op CONSTR_BOT =
    DT(((("ind_type",30),
        [("bool",[14,25,26,27,36,51,53,54,56,63,132,133,137,138]),
         ("ind_type",[18,19,25,26,27,28])]),["DISK_THM"]),
       [read"%88%18%74%38%86%47%154%106%124$2@$1@$0@@%120@@|@|@|@"])
  fun op CONSTR_INJ x = x
    val op CONSTR_INJ =
    DT(((("ind_type",31),
        [("bool",[14,25,26,36,51,53,56,60,63,132,133,137,138]),
         ("ind_type",[9,11,13,15,16,19,25,27,28,29]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%88%19%74%39%86%48%88%20%74%40%86%49%100%106%124$5@$4@$3@@%124$2@$1@$0@@@%93%105$5@$2@@%93%98$4@$1@@%104$3@$0@@@@|@|@|@|@|@|@"])
  fun op CONSTR_IND x = x
    val op CONSTR_IND =
    DT(((("ind_type",32),
        [("bool",[14,25,26,36,51,53,56,58,63,73,105,124,132,133,137,138]),
         ("ind_type",[19,25,26,27]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%87%3%107%93$0%120@@%88%18%74%38%86%47%107%88%42$4$1$0@@|@@$3%124$2@$1@$0@@@|@|@|@@@%89%57$1$0@|@@|@"])
  fun op CONSTR_REC x = x
    val op CONSTR_REC =
    DT(((("ind_type",33),
        [("bool",
         [14,25,26,27,36,37,43,51,52,53,56,58,60,63,73,105,122,124,132,133,
          137,138,140,141,143,146,181]),
         ("ind_type",[30,31,32])]),["DISK_THM"]),
       [read"%84%0%113%25%88%18%74%38%86%47%99$3%124$2@$1@$0@@@$4$2@$1@$0@%42$4$1$0@@|@@|@|@|@|@|@"])
  fun op FCONS_DEST x = x
    val op FCONS_DEST =
    DT(((("ind_type",36),
        [("arithmetic",[28,46,62,65,71,93,172,173,180]),
         ("bool",[25,26,27,36,54,56,58,63,64,104,105,129]),
         ("ind_type",[34]),("numeral",[3,8])]),["DISK_THM"]),
       [read"%98%126%7@%23@%42@@%121%105%42@%94@@%7@%23%92%42@%137%118%149@@@@@@"])
  fun op ISO_REFL x = x
    val op ISO_REFL =
    DT(((("ind_type",38),
        [("bool",[25,36,51,56]),("ind_type",[37])]),["DISK_THM"]),
       [read"%132%52$0|@%52$0|@"])
  fun op ISO_FUN x = x
    val op ISO_FUN =
    DT(((("ind_type",39),
        [("bool",[25,36,51,53,56,58,60,105,124]),
         ("ind_type",[37])]),["DISK_THM"]),
       [read"%107%93%134%22@%26@@%135%34@%35@@@%136%36%9%34$1%26$0@@@||@%37%7%35$1%22$0@@@||@@"])
  fun op ISO_USAGE x = x
    val op ISO_USAGE =
    DT(((("ind_type",40),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,76,77,78,80,81,
          93,94,96,105,124]),("ind_type",[37]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%107%133%21@%33@@%93%79%2%100%74%52$1$0@|@@%75%53$1%33$0@@|@@|@@%93%79%2%100%108%52$1$0@|@@%109%53$1%33$0@@|@@|@@%74%7%75%14%100%98$1@%33$0@@@%99%21$1@@$0@@|@|@@@@"])
  end
  val _ = DB.bindl "ind_type"
  [("NUMPAIR",NUMPAIR,DB.Def), ("NUMPAIR_DEST",NUMPAIR_DEST,DB.Def),
   ("NUMSUM",NUMSUM,DB.Def), ("NUMSUM_DEST",NUMSUM_DEST,DB.Def),
   ("INJN",INJN,DB.Def), ("INJA",INJA,DB.Def), ("INJF",INJF,DB.Def),
   ("INJP",INJP,DB.Def), ("ZCONSTR",ZCONSTR,DB.Def), ("ZBOT",ZBOT,DB.Def),
   ("ZRECSPACE_def",ZRECSPACE_def,DB.Def),
   ("recspace_TY_DEF",recspace_TY_DEF,DB.Def),
   ("recspace_repfns",recspace_repfns,DB.Def), ("BOTTOM",BOTTOM,DB.Def),
   ("CONSTR",CONSTR,DB.Def), ("FCONS",FCONS,DB.Def), ("FNIL",FNIL,DB.Def),
   ("ISO",ISO,DB.Def), ("INJ_INVERSE2",INJ_INVERSE2,DB.Thm),
   ("NUMPAIR_INJ_LEMMA",NUMPAIR_INJ_LEMMA,DB.Thm),
   ("NUMPAIR_INJ",NUMPAIR_INJ,DB.Thm), ("NUMSUM_INJ",NUMSUM_INJ,DB.Thm),
   ("INJN_INJ",INJN_INJ,DB.Thm), ("INJA_INJ",INJA_INJ,DB.Thm),
   ("INJF_INJ",INJF_INJ,DB.Thm), ("INJP_INJ",INJP_INJ,DB.Thm),
   ("ZCONSTR_ZBOT",ZCONSTR_ZBOT,DB.Thm),
   ("ZRECSPACE_rules",ZRECSPACE_rules,DB.Thm),
   ("ZRECSPACE_ind",ZRECSPACE_ind,DB.Thm),
   ("ZRECSPACE_strongind",ZRECSPACE_strongind,DB.Thm),
   ("ZRECSPACE_cases",ZRECSPACE_cases,DB.Thm),
   ("MK_REC_INJ",MK_REC_INJ,DB.Thm), ("DEST_REC_INJ",DEST_REC_INJ,DB.Thm),
   ("CONSTR_BOT",CONSTR_BOT,DB.Thm), ("CONSTR_INJ",CONSTR_INJ,DB.Thm),
   ("CONSTR_IND",CONSTR_IND,DB.Thm), ("CONSTR_REC",CONSTR_REC,DB.Thm),
   ("FCONS_DEST",FCONS_DEST,DB.Thm), ("ISO_REFL",ISO_REFL,DB.Thm),
   ("ISO_FUN",ISO_FUN,DB.Thm), ("ISO_USAGE",ISO_USAGE,DB.Thm)]

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
       ("NUMPAIR", (Term.prim_mk_const { Name = "NUMPAIR", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMPAIR", (Term.prim_mk_const { Name = "NUMPAIR", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMFST", (Term.prim_mk_const { Name = "NUMFST", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMSND", (Term.prim_mk_const { Name = "NUMSND", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMSUM", (Term.prim_mk_const { Name = "NUMSUM", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMSUM", (Term.prim_mk_const { Name = "NUMSUM", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMLEFT", (Term.prim_mk_const { Name = "NUMLEFT", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NUMRIGHT", (Term.prim_mk_const { Name = "NUMRIGHT", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJN", (Term.prim_mk_const { Name = "INJN", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJN", (Term.prim_mk_const { Name = "INJN", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJA", (Term.prim_mk_const { Name = "INJA", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJA", (Term.prim_mk_const { Name = "INJA", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJF", (Term.prim_mk_const { Name = "INJF", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJF", (Term.prim_mk_const { Name = "INJF", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJP", (Term.prim_mk_const { Name = "INJP", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INJP", (Term.prim_mk_const { Name = "INJP", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZCONSTR", (Term.prim_mk_const { Name = "ZCONSTR", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZCONSTR", (Term.prim_mk_const { Name = "ZCONSTR", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZBOT", (Term.prim_mk_const { Name = "ZBOT", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZBOT", (Term.prim_mk_const { Name = "ZBOT", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZRECSPACE", (Term.prim_mk_const { Name = "ZRECSPACE", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZRECSPACE", (Term.prim_mk_const { Name = "ZRECSPACE", Thy = "ind_type"}))
  val _ = update_grms temp_add_type "recspace"
  val _ = update_grms temp_add_type "recspace"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dest_rec", (Term.prim_mk_const { Name = "dest_rec", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mk_rec", (Term.prim_mk_const { Name = "mk_rec", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BOTTOM", (Term.prim_mk_const { Name = "BOTTOM", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BOTTOM", (Term.prim_mk_const { Name = "BOTTOM", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CONSTR", (Term.prim_mk_const { Name = "CONSTR", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CONSTR", (Term.prim_mk_const { Name = "CONSTR", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCONS", (Term.prim_mk_const { Name = "FCONS", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FNIL", (Term.prim_mk_const { Name = "FNIL", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FNIL", (Term.prim_mk_const { Name = "FNIL", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ISO", (Term.prim_mk_const { Name = "ISO", Thy = "ind_type"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ISO", (Term.prim_mk_const { Name = "ISO", Thy = "ind_type"}))
  val _ = update_grms
       (temp_remove_ovl_mapping "NUMPAIR")
        {Name = "NUMPAIR", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "NUMSUM")
        {Name = "NUMSUM", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "INJN")
        {Name = "INJN", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "INJA")
        {Name = "INJA", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "INJF")
        {Name = "INJF", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "INJP")
        {Name = "INJP", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "FCONS")
        {Name = "FCONS", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "ZCONSTR")
        {Name = "ZCONSTR", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "ZBOT")
        {Name = "ZBOT", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "BOTTOM")
        {Name = "BOTTOM", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "CONSTR")
        {Name = "CONSTR", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "FNIL")
        {Name = "FNIL", Thy = "ind_type"}
  val _ = update_grms
       (temp_remove_ovl_mapping "ISO")
        {Name = "ISO", Thy = "ind_type"}
  val ind_type_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ind_type",
    thydataty = "rule_induction",
    data = "ind_type.ZRECSPACE_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ind_type",
    thydataty = "OpenTheoryMap",
    data =
        "22.HOL4.Datatype.recspace8.ind_type8.recspace 20.HOL4.Datatype.CONSTR8.ind_type6.CONSTR19.HOL4.Datatype.FCONS8.ind_type5.FCONS18.HOL4.Datatype.FNIL8.ind_type4.FNIL20.HOL4.Datatype.BOTTOM8.ind_type6.BOTTOM"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ind_type"
end
