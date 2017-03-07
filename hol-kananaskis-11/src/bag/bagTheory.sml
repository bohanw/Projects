structure bagTheory :> bagTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading bagTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open dividesTheory quantHeuristicsTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("bag",Arbnum.fromString "1488587017",Arbnum.fromString "666432")
          [("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749"),
           ("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227"),
           ("divides",
           Arbnum.fromString "1488586176",
           Arbnum.fromString "471620")];
  val _ = Theory.incorporate_types "bag" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"),
   ID("pair", "prod"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("arithmetic", ">="), ID("bool", "?"),
   ID("min", "@"), ID("bool", "ARB"), ID("bag", "BAG_ALL_DISTINCT"),
   ID("bag", "BAG_CARD"), ID("bag", "BAG_CARD_RELn"),
   ID("bag", "BAG_CHOICE"), ID("bag", "BAG_DELETE"), ID("bag", "BAG_DIFF"),
   ID("bag", "BAG_DISJOINT"), ID("bag", "BAG_EVERY"),
   ID("bag", "BAG_FILTER"), ID("bag", "BAG_GEN_PROD"),
   ID("bag", "BAG_GEN_SUM"), ID("bag", "BAG_IMAGE"), ID("bag", "BAG_IN"),
   ID("bag", "BAG_INN"), ID("bag", "BAG_INSERT"), ID("bag", "BAG_INTER"),
   ID("bag", "BAG_MERGE"), ID("bag", "BAG_OF_SET"), ID("bag", "BAG_REST"),
   ID("bag", "BAG_UNION"), ID("bag", "BIG_BAG_UNION"),
   ID("arithmetic", "BIT1"), ID("bool", "COND"), ID("pred_set", "DELETE"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"), ID("bag", "EL_BAG"),
   ID("pred_set", "EMPTY"), ID("bag", "EMPTY_BAG"),
   ID("pred_set", "FINITE"), ID("bag", "FINITE_BAG"),
   ID("pred_set", "GSPEC"), ID("combin", "I"), ID("pred_set", "IMAGE"),
   ID("bool", "IN"), ID("pred_set", "INSERT"), ID("pred_set", "INTER"),
   ID("bag", "ITBAG"), ID("bag", "ITBAG_tupled"), ID("pred_set", "ITSET"),
   ID("combin", "K"), ID("bool", "LET"), ID("arithmetic", "NUMERAL"),
   ID("bag", "PSUB_BAG"), ID("bag", "SET_OF_BAG"), ID("bag", "SING_BAG"),
   ID("pred_set", "SUBSET"), ID("bag", "SUB_BAG"), ID("num", "SUC"),
   ID("pred_set", "SUM_IMAGE"), ID("bool", "T"), ID("relation", "TC"),
   ID("pred_set", "UNION"), ID("relation", "WF"), ID("relation", "WFP"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("bag", "bag_size"), ID("divides", "divides"), ID("bag", "dominates"),
   ID("bag", "mlt1"), ID("combin", "o"), ID("pair", "pair_CASE"),
   ID("relation", "transitive"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYV "'a", TYOP [0, 2, 1], TYOP [0, 3, 0],
   TYOP [0, 3, 4], TYOP [0, 2, 0], TYOP [0, 2, 6], TYOP [0, 7, 5],
   TYV "'b", TYOP [0, 9, 0], TYOP [0, 10, 0], TYOP [0, 6, 11],
   TYOP [0, 2, 10], TYOP [0, 13, 12], TYOP [0, 3, 1], TYOP [0, 3, 15],
   TYOP [0, 3, 6], TYOP [3, 3, 9], TYOP [0, 18, 9], TYOP [0, 9, 9],
   TYOP [0, 2, 20], TYOP [0, 21, 19], TYOP [0, 3, 20], TYOP [0, 21, 23],
   TYOP [0, 2, 3], TYOP [0, 4, 3], TYOP [0, 3, 3], TYOP [0, 3, 27],
   TYOP [0, 6, 3], TYOP [0, 2, 27], TYOP [0, 1, 4], TYOP [0, 2, 31],
   TYOP [0, 2, 4], TYOP [0, 9, 1], TYOP [0, 34, 3], TYOP [0, 9, 2],
   TYOP [0, 36, 35], TYOP [0, 1, 1], TYOP [0, 38, 38], TYOP [0, 6, 27],
   TYOP [0, 6, 4], TYOP [0, 3, 33], TYOP [0, 3, 2], TYOP [0, 1, 0],
   TYOP [0, 3, 44], TYOP [0, 3, 10], TYOP [0, 18, 0], TYOP [0, 18, 47],
   TYV "'c", TYOP [0, 49, 1], TYV "'d", TYOP [0, 51, 1], TYOP [0, 2, 2],
   TYOP [0, 2, 9], TYOP [0, 49, 2], TYOP [0, 6, 0], TYOP [0, 54, 0],
   TYOP [0, 57, 0], TYOP [0, 56, 0], TYOP [0, 7, 0], TYOP [0, 60, 0],
   TYOP [0, 21, 0], TYOP [0, 62, 0], TYOP [0, 13, 0], TYOP [0, 64, 0],
   TYOP [0, 4, 0], TYOP [0, 36, 0], TYOP [0, 67, 0], TYOP [0, 11, 0],
   TYOP [0, 34, 0], TYOP [0, 70, 0], TYOP [0, 55, 0], TYOP [0, 72, 0],
   TYOP [0, 50, 0], TYOP [0, 74, 0], TYOP [0, 52, 0], TYOP [0, 76, 0],
   TYOP [0, 66, 0], TYOP [0, 46, 0], TYOP [0, 79, 0], TYOP [0, 45, 0],
   TYOP [0, 81, 0], TYOP [0, 38, 0], TYOP [0, 83, 0], TYOP [0, 44, 0],
   TYOP [0, 1, 38], TYOP [3, 2, 0], TYOP [0, 0, 87], TYOP [0, 2, 88],
   TYOP [0, 9, 18], TYOP [0, 3, 90], TYOP [0, 0, 0], TYOP [0, 0, 92],
   TYOP [0, 1, 44], TYOP [0, 9, 10], TYOP [0, 6, 56], TYOP [0, 34, 70],
   TYOP [0, 50, 74], TYOP [0, 52, 76], TYOP [0, 38, 83], TYOP [0, 19, 0],
   TYOP [0, 19, 101], TYOP [0, 48, 0], TYOP [0, 103, 48], TYOP [0, 34, 1],
   TYOP [0, 34, 34], TYOP [0, 34, 106], TYOP [0, 50, 50],
   TYOP [0, 50, 108], TYOP [0, 52, 52], TYOP [0, 52, 110],
   TYOP [0, 10, 70], TYOP [0, 10, 106], TYOP [0, 53, 27], TYOP [0, 3, 34],
   TYOP [0, 54, 115], TYOP [0, 50, 3], TYOP [0, 55, 117], TYOP [0, 50, 34],
   TYOP [0, 49, 9], TYOP [0, 120, 119], TYOP [0, 9, 70], TYOP [0, 1, 83],
   TYOP [0, 9, 106], TYOP [0, 1, 39], TYOP [0, 38, 39], TYOP [0, 9, 20],
   TYOP [0, 0, 127], TYOP [0, 0, 28], TYOP [0, 0, 86], TYOP [0, 4, 5],
   TYOP [0, 6, 6], TYOP [0, 6, 132], TYOP [0, 2, 87], TYOP [0, 134, 6],
   TYOP [0, 10, 6], TYOP [0, 36, 136], TYOP [0, 2, 56], TYOP [0, 9, 11],
   TYOP [0, 3, 66], TYOP [0, 2, 132], TYOP [0, 4, 4], TYOP [0, 3, 142],
   TYOP [0, 4, 142], TYOP [0, 3, 38], TYOP [0, 2, 38], TYOP [0, 146, 145],
   TYOP [0, 86, 39], TYOP [0, 4, 27], TYOP [0, 28, 149], TYOP [0, 1, 3],
   TYOP [0, 105, 105], TYOP [0, 34, 10], TYOP [0, 4, 1], TYOP [0, 15, 154],
   TYOP [0, 5, 5], TYOP [0, 100, 100], TYOP [0, 5, 0], TYOP [0, 5, 4],
   TYOP [0, 19, 19], TYOP [0, 160, 19], TYOP [0, 48, 161], TYOP [0, 7, 96],
   TYOP [0, 94, 100], TYOP [0, 55, 120], TYOP [0, 54, 165],
   TYOP [0, 92, 132], TYOP [0, 23, 9], TYOP [0, 18, 168]]
  end
  val _ = Theory.incorporate_consts "bag" tyvector
     [("mlt1", 8), ("dominates", 14), ("bag_size", 16), ("SUB_BAG", 5),
      ("SING_BAG", 4), ("SET_OF_BAG", 17), ("PSUB_BAG", 5),
      ("ITBAG_tupled", 22), ("ITBAG", 24), ("FINITE_BAG", 4),
      ("EMPTY_BAG", 3), ("EL_BAG", 25), ("BIG_BAG_UNION", 26),
      ("BAG_UNION", 28), ("BAG_REST", 27), ("BAG_OF_SET", 29),
      ("BAG_MERGE", 28), ("BAG_INTER", 28), ("BAG_INSERT", 30),
      ("BAG_INN", 32), ("BAG_IN", 33), ("BAG_IMAGE", 37),
      ("BAG_GEN_SUM", 39), ("BAG_GEN_PROD", 39), ("BAG_FILTER", 40),
      ("BAG_EVERY", 41), ("BAG_DISJOINT", 5), ("BAG_DIFF", 28),
      ("BAG_DELETE", 42), ("BAG_CHOICE", 43), ("BAG_CARD_RELn", 45),
      ("BAG_CARD", 15), ("BAG_ALL_DISTINCT", 4)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 3), TMV("B", 3), TMV("B1", 3), TMV("B2", 3), TMV("C", 3),
   TMV("ITBAG_tupled", 19), TMV("KK", 3), TMV("M", 3), TMV("M0", 3),
   TMV("N", 3), TMV("P", 6), TMV("P", 10), TMV("P", 4), TMV("P", 46),
   TMV("P", 45), TMV("Q", 6), TMV("R", 7), TMV("R", 13), TMV("R", 48),
   TMV("W", 3), TMV("X", 6), TMV("X", 3), TMV("Y", 6), TMV("Y", 3),
   TMV("Y'", 3), TMV("Z", 3), TMV("a", 2), TMV("a", 9), TMV("a", 3),
   TMV("a", 1), TMV("a", 18), TMV("acc", 9), TMV("acc", 1), TMV("b", 2),
   TMV("b", 3), TMV("b", 10), TMV("b", 34), TMV("b", 50), TMV("b", 38),
   TMV("b", 1), TMV("b'", 3), TMV("b0", 3), TMV("b1", 3), TMV("b1", 34),
   TMV("b1", 50), TMV("b1", 52), TMV("b1", 38), TMV("b2", 3),
   TMV("b2", 34), TMV("b2", 50), TMV("b2", 52), TMV("b2", 38),
   TMV("b3", 3), TMV("b4", 3), TMV("b5", 3), TMV("bag", 38), TMV("c", 3),
   TMV("d", 3), TMV("e", 2), TMV("e", 9), TMV("e", 1), TMV("e'", 2),
   TMV("e0", 9), TMV("e1", 2), TMV("e2", 2), TMV("e2", 9), TMV("eb", 3),
   TMV("eltsize", 3), TMV("f", 53), TMV("f", 54), TMV("f", 21),
   TMV("f", 36), TMV("g", 55), TMV("i", 6), TMV("i", 3), TMV("k", 3),
   TMV("m", 1), TMV("m1", 1), TMV("m2", 1), TMV("n", 1), TMV("p", 2),
   TMV("r", 7), TMV("rep", 3), TMV("res", 3), TMV("s", 6), TMV("s1", 6),
   TMV("s1", 4), TMV("s2", 10), TMV("s2", 4), TMV("sb", 34), TMV("sob", 4),
   TMV("v", 3), TMV("v1", 9), TMV("x", 2), TMV("x", 9), TMV("x", 6),
   TMV("x", 3), TMV("x", 1), TMV("x1", 9), TMV("y", 2), TMV("y", 9),
   TMV("y", 6), TMV("y", 3), TMV("z", 9), TMC(4, 56), TMC(4, 11),
   TMC(4, 58), TMC(4, 59), TMC(4, 61), TMC(4, 63), TMC(4, 65), TMC(4, 66),
   TMC(4, 68), TMC(4, 69), TMC(4, 71), TMC(4, 73), TMC(4, 75), TMC(4, 77),
   TMC(4, 78), TMC(4, 80), TMC(4, 82), TMC(4, 84), TMC(4, 85), TMC(5, 86),
   TMC(6, 86), TMC(7, 89), TMC(7, 91), TMC(8, 86), TMC(9, 93), TMC(10, 1),
   TMC(11, 94), TMC(12, 94), TMC(13, 7), TMC(13, 95), TMC(13, 93),
   TMC(13, 96), TMC(13, 5), TMC(13, 97), TMC(13, 98), TMC(13, 99),
   TMC(13, 100), TMC(13, 102), TMC(13, 94), TMC(14, 93), TMC(15, 94),
   TMC(16, 94), TMC(17, 56), TMC(17, 11), TMC(17, 66), TMC(17, 85),
   TMC(18, 104), TMC(19, 9), TMC(20, 4), TMC(20, 70), TMC(21, 15),
   TMC(21, 105), TMC(22, 45), TMC(23, 43), TMC(24, 42), TMC(25, 28),
   TMC(25, 107), TMC(25, 109), TMC(25, 111), TMC(26, 5), TMC(26, 97),
   TMC(27, 41), TMC(27, 112), TMC(28, 40), TMC(28, 113), TMC(29, 39),
   TMC(30, 39), TMC(31, 114), TMC(31, 116), TMC(31, 37), TMC(31, 118),
   TMC(31, 121), TMC(32, 33), TMC(32, 122), TMC(32, 123), TMC(33, 32),
   TMC(34, 30), TMC(34, 124), TMC(34, 125), TMC(35, 28), TMC(36, 28),
   TMC(37, 29), TMC(38, 27), TMC(39, 28), TMC(39, 107), TMC(39, 109),
   TMC(39, 126), TMC(40, 26), TMC(41, 38), TMC(42, 128), TMC(42, 129),
   TMC(42, 130), TMC(43, 131), TMC(44, 133), TMC(45, 96), TMC(46, 25),
   TMC(47, 6), TMC(47, 4), TMC(48, 3), TMC(48, 34), TMC(48, 50),
   TMC(48, 52), TMC(48, 38), TMC(49, 56), TMC(49, 66), TMC(50, 4),
   TMC(50, 70), TMC(50, 74), TMC(50, 83), TMC(51, 135), TMC(52, 53),
   TMC(52, 20), TMC(53, 137), TMC(54, 138), TMC(54, 139), TMC(54, 140),
   TMC(55, 141), TMC(55, 143), TMC(56, 144), TMC(57, 24), TMC(57, 147),
   TMC(57, 148), TMC(58, 22), TMC(59, 150), TMC(60, 151), TMC(61, 152),
   TMC(62, 38), TMC(63, 5), TMC(64, 17), TMC(64, 153), TMC(65, 4),
   TMC(66, 96), TMC(67, 5), TMC(67, 99), TMC(68, 38), TMC(69, 155),
   TMC(70, 0), TMC(71, 156), TMC(71, 157), TMC(72, 133), TMC(72, 144),
   TMC(73, 60), TMC(73, 158), TMC(73, 103), TMC(74, 159), TMC(75, 162),
   TMC(76, 1), TMC(77, 93), TMC(78, 16), TMC(79, 94), TMC(80, 163),
   TMC(80, 14), TMC(81, 8), TMC(81, 164), TMC(82, 166), TMC(82, 167),
   TMC(83, 169), TMC(84, 60), TMC(85, 92)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op EMPTY_BAG x = x
    val op EMPTY_BAG = DT(((("bag",0),[]),[]), [read"%136%202@%228%129@@"])
  fun op BAG_INN x = x
    val op BAG_INN =
    DT(((("bag",2),[]),[]),
       [read"%104%58%122%79%111%34%134%179$2@$1@$0@@%145$0$2@@$1@@|@|@|@"])
  fun op SUB_BAG x = x
    val op SUB_BAG =
    DT(((("bag",3),[]),[]),
       [read"%111%42%111%47%134%236$1@$0@@%104%93%122%79%143%179$1@$0@$3@@%179$1@$0@$2@@|@|@@|@|@"])
  fun op PSUB_BAG x = x
    val op PSUB_BAG =
    DT(((("bag",4),[]),[]),
       [read"%111%42%111%47%134%231$1@$0@@%128%236$1@$0@@%262%136$1@$0@@@@|@|@"])
  fun op BAG_IN x = x
    val op BAG_IN =
    DT(((("bag",5),[]),[]),
       [read"%104%58%111%34%134%176$1@$0@@%179$1@%230%192%250@@@$0@@|@|@"])
  fun op BAG_UNION x = x
    val op BAG_UNION =
    DT(((("bag",6),[]),[]),
       [read"%111%34%111%56%136%187$1@$0@@%93%124$2$0@@$1$0@@|@|@|@"])
  fun op BAG_DIFF x = x
    val op BAG_DIFF =
    DT(((("bag",7),[]),[]),
       [read"%111%42%111%47%136%159$1@$0@@%93%127$2$0@@$1$0@@|@|@|@"])
  fun op BAG_INSERT x = x
    val op BAG_INSERT =
    DT(((("bag",8),[]),[]),
       [read"%104%58%111%34%136%180$1@$0@@%93%195%132$0@$2@@%124$1$2@@%230%192%250@@@@$1$0@@|@|@|@"])
  fun op BAG_INTER x = x
    val op BAG_INTER =
    DT(((("bag",10),[]),[]),
       [read"%111%42%111%47%136%183$1@$0@@%93%195%130$2$0@@$1$0@@@$2$0@@$1$0@@|@|@|@"])
  fun op BAG_MERGE x = x
    val op BAG_MERGE =
    DT(((("bag",11),[]),[]),
       [read"%111%42%111%47%136%184$1@$0@@%93%195%130$2$0@@$1$0@@@$1$0@@$2$0@@|@|@|@"])
  fun op BAG_DELETE x = x
    val op BAG_DELETE =
    DT(((("bag",37),[]),[]),
       [read"%111%41%104%58%111%34%134%158$2@$1@$0@@%136$2@%180$1@$0@@@|@|@|@"])
  fun op SING_BAG x = x
    val op SING_BAG =
    DT(((("bag",51),[]),[]),
       [read"%111%34%134%234$0@@%146%93%136$1@%180$0@%202@@|@@|@"])
  fun op EL_BAG x = x
    val op EL_BAG =
    DT(((("bag",53),[]),[]), [read"%104%58%136%199$0@@%180$0@%202@@|@"])
  fun op SET_OF_BAG x = x
    val op SET_OF_BAG =
    DT(((("bag",100),[]),[]), [read"%111%34%135%232$0@@%93%176$0@$1@|@|@"])
  fun op BAG_OF_SET x = x
    val op BAG_OF_SET =
    DT(((("bag",101),[]),[]),
       [read"%107%10%136%185$0@@%93%195%217$0@$1@@%230%192%250@@@%129@|@|@"])
  fun op BAG_DISJOINT x = x
    val op BAG_DISJOINT =
    DT(((("bag",115),[]),[]),
       [read"%111%42%111%47%134%163$1@$0@@%198%232$1@@%232$0@@@|@|@"])
  fun op FINITE_BAG x = x
    val op FINITE_BAG =
    DT(((("bag",121),[]),[]),
       [read"%111%34%134%209$0@@%118%12%143%128$0%202@@%111%34%143$1$0@@%104%58$2%180$0@$1@@|@@|@@@$0$1@@|@@|@"])
  fun op BAG_CARD_RELn x = x
    val op BAG_CARD_RELn =
    DT(((("bag",131),[]),[]),
       [read"%111%34%122%79%134%156$1@$0@@%120%14%143%128$0%202@%129@@%111%34%122%79%143$2$1@$0@@%104%58$3%180$0@$2@@%238$1@@|@@|@|@@@$0$2@$1@@|@@|@|@"])
  fun op BAG_CARD x = x
    val op BAG_CARD =
    DT(((("bag",132),
        [("arithmetic",[64]),("bag",[124,131]),
         ("bool",
         [2,15,25,26,36,47,48,53,54,56,58,63,71,72,77,78,80,81,84,90,93,94,
          96,146]),("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%156$0@%154$0@@@|@"])
  fun op BAG_FILTER_DEF x = x
    val op BAG_FILTER_DEF =
    DT(((("bag",142),[]),[]),
       [read"%107%10%111%34%136%167$1@$0@@%58%195$2$0@@$1$0@@%129@|@|@|@"])
  fun op BAG_IMAGE_DEF x = x
    val op BAG_IMAGE_DEF =
    DT(((("bag",152),[]),[]),
       [read"%112%71%114%36%136%173$1@$0@@%58%229%89%195%210$0@@%155$0@@%230%192%250@@@|@%168%62%132$3$0@@$1@|@$1@@|@|@|@"])
  fun op BAG_CHOICE_DEF x = x
    val op BAG_CHOICE_DEF =
    DT(((("bag",161),
        [("bag",[62]),
         ("bool",[2,25,26,36,47,48,53,54,56,58,63,71,72,75,77,80,83,146]),
         ("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%34%143%262%136$0@%202@@@%176%157$0@@$0@@|@"])
  fun op BAG_REST_DEF x = x
    val op BAG_REST_DEF =
    DT(((("bag",162),[]),[]),
       [read"%111%34%136%186$0@@%159$0@%199%157$0@@@@|@"])
  fun op ITBAG_tupled_primitive_def x = x
    val op ITBAG_tupled_primitive_def =
    DT(((("bag",172),[]),[]),
       [read"%109%70%141%226$0@@%249%150%18%128%247$0@@%105%31%111%34%143%128%209$0@@%262%136$0@%202@@@@$2%126%186$0@@$3%157$0@@$1@@@%126$0@$1@@@|@|@@|@@%5%30%260$0@%34%31%215%193%209$1@@%193%136$1@%202@@$0@$3%126%186$1@@$4%157$1@@$0@@@@@%151@@||@||@@|@"])
  fun op ITBAG_curried_def x = x
    val op ITBAG_curried_def =
    DT(((("bag",173),[]),[]),
       [read"%109%70%111%96%105%98%133%223$2@$1@$0@@%226$2@%126$1@$0@@@|@|@|@"])
  fun op BAG_GEN_SUM_def x = x
    val op BAG_GEN_SUM_def =
    DT(((("bag",180),[]),[]),
       [read"%121%55%122%79%142%170$1@$0@@%225%124@$1@$0@@|@|@"])
  fun op BAG_GEN_PROD_def x = x
    val op BAG_GEN_PROD_def =
    DT(((("bag",181),[]),[]),
       [read"%121%55%122%79%142%169$1@$0@@%225%123@$1@$0@@|@|@"])
  fun op BAG_EVERY x = x
    val op BAG_EVERY =
    DT(((("bag",191),[]),[]),
       [read"%107%10%111%34%134%165$1@$0@@%104%58%143%176$0@$1@@$2$0@@|@@|@|@"])
  fun op BAG_ALL_DISTINCT x = x
    val op BAG_ALL_DISTINCT =
    DT(((("bag",199),[]),[]),
       [read"%111%34%134%152$0@@%104%58%131$1$0@@%230%192%250@@@|@@|@"])
  fun op BIG_BAG_UNION_def x = x
    val op BIG_BAG_UNION_def =
    DT(((("bag",216),[]),[]),
       [read"%118%90%136%191$0@@%93%239%34$0$1@|@$1@|@|@"])
  fun op mlt1_def x = x
    val op mlt1_def =
    DT(((("bag",226),[]),[]),
       [read"%108%81%111%42%111%47%134%256$2@$1@$0@@%128%209$1@@%128%209$0@@%146%58%148%82%148%83%128%136$4@%187$1@$0@@@%128%136$3@%187$0@%180$2@%202@@@@%104%61%143%176$0@$2@@$6$0@$3@@|@@@|@|@|@@@@|@|@|@"])
  fun op dominates_def x = x
    val op dominates_def =
    DT(((("bag",238),[]),[]),
       [read"%110%17%107%85%113%87%134%255$2@$1@$0@@%104%93%143%217$0@$2@@%147%100%128%218$0@$2@@$4$1@$0@@|@@|@@|@|@|@"])
  fun op bag_size_def x = x
    val op bag_size_def =
    DT(((("bag",259),[]),[]),
       [read"%111%67%111%34%142%252$1@$0@@%224%58%32%124%124%230%192%250@@@$3$1@@@$0@||@$0@%129@@|@|@"])
  fun op EMPTY_BAG_alt x = x
    val op EMPTY_BAG_alt =
    DT(((("bag",1),
        [("bag",[0]),("bool",[25,36,56,60]),
         ("combin",[12])]),["DISK_THM"]), [read"%136%202@%93%129|@"])
  fun op BAG_cases x = x
    val op BAG_cases =
    DT(((("bag",9),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,269]),
         ("bag",[0,8]),
         ("bool",
         [25,26,27,30,36,43,52,54,56,58,60,63,64,71,93,96,101,104,105,129,
          147]),("combin",[12]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%34%251%136$0@%202@@%148%41%146%58%136$2@%180$0@$1@@|@|@@|@"])
  fun op BAG_MERGE_IDEM x = x
    val op BAG_MERGE_IDEM =
    DT(((("bag",12),
        [("bag",[11]),("bool",[25,36,56,60,65])]),["DISK_THM"]),
       [read"%111%34%136%184$0@$0@@$0@|@"])
  fun op BAG_INN_0 x = x
    val op BAG_INN_0 =
    DT(((("bag",13),
        [("arithmetic",[46,71,93,143,173,176,180]),("bag",[2]),
         ("bool",[25,36,54,63,104]),("numeral",[3,8])]),["DISK_THM"]),
       [read"%111%34%104%58%179$0@%129@$1@|@|@"])
  fun op BAG_INN_LESS x = x
    val op BAG_INN_LESS =
    DT(((("bag",14),
        [("arithmetic",[24,25,27,41,46,71,93,143,173,176,180]),("bag",[2]),
         ("bool",[25,36,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%111%34%104%58%122%79%122%76%143%128%179$2@$1@$3@@%130$0@$1@@@%179$2@$0@$3@@|@|@|@|@"])
  fun op BAG_IN_BAG_INSERT x = x
    val op BAG_IN_BAG_INSERT =
    DT(((("bag",15),
        [("arithmetic",[25,27,46,71,93,143,173,176,180]),("bag",[2,5,8]),
         ("bool",[25,26,27,30,36,52,54,56,63,64,104]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%111%34%104%63%104%64%134%176$1@%180$0@$2@@@%251%132$1@$0@@%176$1@$2@@@|@|@|@"])
  fun op BAG_INN_BAG_INSERT x = x
    val op BAG_INN_BAG_INSERT =
    DT(((("bag",16),
        [("arithmetic",[24,25,27,46,71,93,143,172,173,179,180,269]),
         ("bag",[2,8]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%34%104%63%104%64%134%179$1@%79@%180$0@$2@@@%251%128%179$1@%127%79@%230%192%250@@@@$2@@%132$1@$0@@@%179$1@%79@$2@@@|@|@|@"])
  fun op BAG_INN_BAG_INSERT_STRONG x = x
    val op BAG_INN_BAG_INSERT_STRONG =
    DT(((("bag",17),
        [("arithmetic",[24,25,28,59,62,65,71,173,180]),("bag",[14,16]),
         ("bool",
         [25,26,27,30,36,47,48,51,52,53,54,55,56,58,63,75,93,94,96,104,
          106]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%34%122%79%104%63%104%64%134%179$1@$2@%180$0@$3@@@%251%128%179$1@%127$2@%230%192%250@@@@$3@@%132$1@$0@@@%128%179$1@$2@$3@@%262%132$1@$0@@@@@|@|@|@|@"])
  fun op BAG_UNION_EQ_LCANCEL1 x = x
    val op BAG_UNION_EQ_LCANCEL1 =
    DT(((("bag",18),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180]),("bag",[0,6]),
         ("bool",[25,36,52,54,56,58,60,63,93,96,104,105,107]),
         ("combin",[12]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%136%34@%187%34@%56@@@%136%56@%202@@"])
  fun op BAG_UNION_EQ_RCANCEL1 x = x
    val op BAG_UNION_EQ_RCANCEL1 =
    DT(((("bag",19),
        [("arithmetic",[24,25,26,27,46,71,93,172,173,177,180]),
         ("bag",[0,6]),
         ("bool",[25,36,52,54,56,58,60,63,93,96,104,105,107]),
         ("combin",[12]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%136%34@%187%56@%34@@@%136%56@%202@@"])
  fun op BAG_IN_BAG_UNION x = x
    val op BAG_IN_BAG_UNION =
    DT(((("bag",20),
        [("arithmetic",[24,25,46,71,93,143,173,179,180]),("bag",[2,5,6]),
         ("bool",[25,36,43,52,54,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%104%58%134%176$0@%187$2@$1@@@%251%176$0@$2@@%176$0@$1@@@|@|@|@"])
  fun op BAG_INN_BAG_UNION x = x
    val op BAG_INN_BAG_UNION =
    DT(((("bag",21),
        [("arithmetic",
         [24,25,27,41,46,59,71,79,93,143,172,173,176,177,180]),
         ("bag",[2,6]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,58,63,93,96,101,104,105,106,124,
          143]),("num",[9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%122%79%104%58%111%42%111%47%134%179$2@$3@%187$1@$0@@@%149%77%149%78%128%142$5@%124$1@$0@@@%128%179$4@$1@$3@@%179$4@$0@$2@@@|@|@@|@|@|@|@"])
  fun op BAG_INN_BAG_MERGE x = x
    val op BAG_INN_BAG_MERGE =
    DT(((("bag",22),
        [("arithmetic",[24,25,27,41,46,59,71,93,143,173,179,180]),
         ("bag",[2,11]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,63,64,93,96,101,104,105,107,108,
          109]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%122%79%104%58%111%42%111%47%134%179$2@$3@%184$1@$0@@@%251%179$2@$3@$1@@%179$2@$3@$0@@@|@|@|@|@"])
  fun op BAG_IN_BAG_MERGE x = x
    val op BAG_IN_BAG_MERGE =
    DT(((("bag",23),[("bag",[5,22]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%104%58%111%42%111%47%134%176$2@%184$1@$0@@@%251%176$2@$1@@%176$2@$0@@@|@|@|@"])
  fun op BAG_EXTENSION x = x
    val op BAG_EXTENSION =
    DT(((("bag",24),
        [("arithmetic",[24,25,46,71,93,95,143,172,173,176,177,180]),
         ("bag",[2]),
         ("bool",[25,26,36,52,53,54,56,58,60,63,93,96,99,104,105,107,124]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%134%136$1@$0@@%122%79%104%58%134%179$0@$1@$3@@%179$0@$1@$2@@|@|@@|@|@"])
  fun op BAG_UNION_INSERT x = x
    val op BAG_UNION_INSERT =
    DT(((("bag",25),
        [("arithmetic",[26,27,91]),("bag",[6,8]),
         ("bool",[25,26,27,30,56,58,60,63,64,105,129,147])]),["DISK_THM"]),
       [read"%104%58%111%42%111%47%128%136%187%180$2@$1@@$0@@%180$2@%187$1@$0@@@@%136%187$1@%180$2@$0@@@%180$2@%187$1@$0@@@@|@|@|@"])
  fun op BAG_INSERT_DIFF x = x
    val op BAG_INSERT_DIFF =
    DT(((("bag",26),
        [("arithmetic",[81]),("bag",[8]),
         ("bool",[25,51,52,54,56,60,63,101,108,109,111,145]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%104%93%111%34%262%136%180$1@$0@@$0@@|@|@"])
  fun op BAG_INSERT_NOT_EMPTY x = x
    val op BAG_INSERT_NOT_EMPTY =
    DT(((("bag",27),
        [("arithmetic",[79]),("bag",[0,8]),
         ("bool",[25,51,52,54,60,63,71,76,96,108,109,111,140]),
         ("combin",[12]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%104%93%111%34%262%136%180$1@$0@@%202@@|@|@"])
  fun op BAG_INSERT_ONE_ONE x = x
    val op BAG_INSERT_ONE_ONE =
    DT(((("bag",28),
        [("arithmetic",[91]),("bag",[8]),
         ("bool",
         [25,26,27,36,51,52,53,54,55,56,58,60,63,73,96,101,105,106,108,109,
          111,124,127,129,145]),("marker",[9]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%104%93%134%136%180$0@$2@@%180$0@$1@@@%136$2@$1@@|@|@|@"])
  fun op C_BAG_INSERT_ONE_ONE x = x
    val op C_BAG_INSERT_ONE_ONE =
    DT(((("bag",29),
        [("arithmetic",[24,25,71,81,91,172,173]),("bag",[8]),
         ("bool",
         [25,26,27,36,51,52,53,54,55,56,58,60,63,104,105,108,109,111,127]),
         ("marker",[9]),("numeral",[3,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%104%93%104%99%111%34%134%136%180$2@$0@@%180$1@$0@@@%132$2@$1@@|@|@|@"])
  fun op BAG_INSERT_commutes x = x
    val op BAG_INSERT_commutes =
    DT(((("bag",30),
        [("arithmetic",[91]),("bag",[8]),
         ("bool",
         [25,26,27,30,54,56,58,60,63,64,105,129,147])]),["DISK_THM"]),
       [read"%111%34%104%63%104%64%136%180$1@%180$0@$2@@@%180$0@%180$1@$2@@@|@|@|@"])
  fun op BAG_DECOMPOSE x = x
    val op BAG_DECOMPOSE =
    DT(((("bag",31),
        [("arithmetic",[22,24,25,27,46,62,71,93,143,172,173,177,180,269]),
         ("bag",[0,2,5,7,8]),
         ("bool",
         [25,26,27,36,43,51,52,53,54,56,58,60,63,93,96,101,104,105,109,111,
          124,129,145,147]),("combin",[12]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%104%58%111%34%143%176$1@$0@@%148%40%136$1@%180$2@$0@@|@@|@|@"])
  fun op BAG_UNION_LEFT_CANCEL x = x
    val op BAG_UNION_LEFT_CANCEL =
    DT(((("bag",32),
        [("arithmetic",[25,91]),("bag",[6]),
         ("bool",[25,36,56,60])]),["DISK_THM"]),
       [read"%111%34%111%42%111%47%134%136%187$2@$1@@%187$2@$0@@@%136$1@$0@@|@|@|@"])
  fun op COMM_BAG_UNION x = x
    val op COMM_BAG_UNION =
    DT(((("bag",33),
        [("arithmetic",[26,91]),("bag",[6]),
         ("bool",[25,36,56,60])]),["DISK_THM"]),
       [read"%111%42%111%47%136%187$1@$0@@%187$0@$1@@|@|@"])
  fun op BAG_UNION_RIGHT_CANCEL x = x
    val op BAG_UNION_RIGHT_CANCEL =
    DT(((("bag",34),
        [("bag",[32,33]),("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%111%42%111%47%134%136%187$1@$2@@%187$0@$2@@@%136$1@$0@@|@|@|@"])
  fun op ASSOC_BAG_UNION x = x
    val op ASSOC_BAG_UNION =
    DT(((("bag",35),
        [("arithmetic",[27,91]),("bag",[6]),
         ("bool",[25,36,56,58,60])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%136%187$2@%187$1@$0@@@%187%187$2@$1@@$0@@|@|@|@"])
  fun op BAG_UNION_EMPTY x = x
    val op BAG_UNION_EMPTY =
    DT(((("bag",36),
        [("arithmetic",[22,25,79]),("bag",[0,6]),
         ("bool",[25,26,36,53,54,55,56,60,63]),("combin",[12]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%111%34%136%187$0@%202@@$0@|@@%128%114%36%137%188%203@$0@@$0@|@@%116%44%116%49%134%138%189$1@$0@@%204@@%128%138$1@%204@@%138$0@%204@@@|@|@@@"])
  fun op BAG_DELETE_EMPTY x = x
    val op BAG_DELETE_EMPTY =
    DT(((("bag",38),[("bag",[27,37]),("bool",[58])]),["DISK_THM"]),
       [read"%104%58%111%34%262%158%202@$1@$0@@|@|@"])
  fun op BAG_DELETE_commutes x = x
    val op BAG_DELETE_commutes =
    DT(((("bag",39),
        [("bag",[30,37]),
         ("bool",[25,26,58,63,93,95,101,105,124,143,145])]),["DISK_THM"]),
       [read"%111%41%111%42%111%47%104%63%104%64%143%128%158$4@$1@$3@@%158$3@$0@$2@@@%148%40%128%158$5@$1@$0@@%158$0@$2@$3@@|@@|@|@|@|@|@"])
  fun op BAG_DELETE_11 x = x
    val op BAG_DELETE_11 =
    DT(((("bag",40),
        [("bag",[28,29,37]),
         ("bool",[25,56,58,105,106,124])]),["DISK_THM"]),
       [read"%111%41%104%63%104%64%111%42%111%47%143%128%158$4@$3@$1@@%158$4@$2@$0@@@%134%132$3@$2@@%136$1@$0@@@|@|@|@|@|@"])
  fun op BAG_INN_BAG_DELETE x = x
    val op BAG_INN_BAG_DELETE =
    DT(((("bag",41),
        [("arithmetic",[9,41,46,59,71,93,173,177,180]),
         ("bag",[5,14,31,37]),
         ("bool",[25,36,52,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%122%79%104%58%143%128%179$0@$1@$2@@%144$1@%129@@@%148%40%158$3@$1@$0@|@@|@|@|@"])
  fun op BAG_IN_BAG_DELETE x = x
    val op BAG_IN_BAG_DELETE =
    DT(((("bag",42),
        [("arithmetic",[9,59]),("bag",[5,41]),
         ("bool",[2,14,15,25,26,36,53,54,56,63,104]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%104%58%143%176$0@$1@@%148%40%158$2@$1@$0@|@@|@|@"])
  fun op BAG_DELETE_INSERT x = x
    val op BAG_DELETE_INSERT =
    DT(((("bag",43),
        [("bag",[15,28,37,42]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,93,94,96,105,124,
          140]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%104%93%104%99%111%42%111%47%143%158%180$3@$1@@$2@$0@@%251%128%132$3@$2@@%136$1@$0@@@%128%148%52%158$2@$3@$0@|@@%262%132$3@$2@@@@@|@|@|@|@"])
  fun op BAG_DELETE_BAG_IN_up x = x
    val op BAG_DELETE_BAG_IN_up =
    DT(((("bag",44),[("bag",[15,37]),("bool",[25,52,63])]),["DISK_THM"]),
       [read"%111%41%111%34%104%58%143%158$2@$0@$1@@%104%61%143%176$0@$2@@%176$0@$3@@|@@|@|@|@"])
  fun op BAG_DELETE_BAG_IN_down x = x
    val op BAG_DELETE_BAG_IN_down =
    DT(((("bag",45),
        [("bag",[15,37]),
         ("bool",
         [25,26,27,36,51,53,54,56,58,63,93,95,97,101,102,105,124,
          145])]),["DISK_THM"]),
       [read"%111%41%111%34%104%63%104%64%143%128%158$3@$1@$2@@%128%262%132$1@$0@@@%176$0@$3@@@@%176$0@$2@@|@|@|@|@"])
  fun op BAG_DELETE_BAG_IN x = x
    val op BAG_DELETE_BAG_IN =
    DT(((("bag",46),
        [("bag",[15,37]),
         ("bool",[25,36,52,53,56,58,105,124])]),["DISK_THM"]),
       [read"%111%41%111%34%104%58%143%158$2@$0@$1@@%176$0@$2@@|@|@|@"])
  fun op BAG_DELETE_concrete x = x
    val op BAG_DELETE_concrete =
    DT(((("bag",47),
        [("arithmetic",
         [9,24,25,27,41,46,59,71,93,128,172,173,177,180,269]),
         ("bag",[8,37]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,60,63,64,93,96,101,104,105,106,
          124,129,147]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%41%111%34%104%58%134%158$2@$0@$1@@%128%144$2$0@@%129@@%136$1@%93%195%132$0@$1@@%127$3$1@@%230%192%250@@@@$3$0@@|@@@|@|@|@"])
  fun op BAG_UNION_DIFF_eliminate x = x
    val op BAG_UNION_DIFF_eliminate =
    DT(((("bag",48),
        [("arithmetic",[25,128]),("bag",[6,7]),
         ("bool",[25,36,56,60])]),["DISK_THM"]),
       [read"%128%136%159%187%34@%56@@%56@@%34@@%136%159%187%56@%34@@%56@@%34@@"])
  fun op BAG_INSERT_EQUAL x = x
    val op BAG_INSERT_EQUAL =
    DT(((("bag",49),
        [("arithmetic",
         [22,24,25,27,46,62,71,91,93,128,143,172,173,177,180,269]),
         ("bag",[0,2,5,6,7,8,15,20,25,34,36,48]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,60,63,64,93,96,99,101,104,
          105,106,124,129,143]),("combin",[12]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%134%136%180%26@%7@@%180%33@%9@@@%251%128%136%7@%9@@%132%26@%33@@@%148%75%128%136%7@%180%33@$0@@@%136%9@%180%26@$0@@@|@@@"])
  fun op BAG_DELETE_TWICE x = x
    val op BAG_DELETE_TWICE =
    DT(((("bag",50),
        [("arithmetic",
         [22,24,25,27,46,62,71,91,93,128,143,172,173,177,180,269]),
         ("bag",[0,2,5,6,7,8,15,20,25,28,29,32,34,36,37,48]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,60,63,64,93,96,99,101,104,
          105,106,124,129,140,143]),("combin",[12]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%41%104%63%104%64%111%42%111%47%143%128%158$4@$3@$1@@%128%158$4@$2@$0@@%262%136$1@$0@@@@@%148%34%128%158$2@$3@$0@@%158$1@$4@$0@@|@@|@|@|@|@|@"])
  fun op SING_BAG_THM x = x
    val op SING_BAG_THM =
    DT(((("bag",52),
        [("bag",[51]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,94,
          146]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%104%58%234%180$0@%202@@|@"])
  fun op EL_BAG_11 x = x
    val op EL_BAG_11 =
    DT(((("bag",54),
        [("bag",[29,53]),("bool",[25,53,56,58,105,124])]),["DISK_THM"]),
       [read"%104%93%104%99%143%136%199$1@@%199$0@@@%132$1@$0@@|@|@"])
  fun op EL_BAG_INSERT_squeeze x = x
    val op EL_BAG_INSERT_squeeze =
    DT(((("bag",55),
        [("bag",[27,49,53]),
         ("bool",[25,26,27,36,37,51,52,53,56,58,105,124])]),["DISK_THM"]),
       [read"%104%93%111%34%104%99%143%136%199$2@@%180$0@$1@@@%128%132$2@$0@@%136$1@%202@@@|@|@|@"])
  fun op SING_EL_BAG x = x
    val op SING_EL_BAG =
    DT(((("bag",56),[("bag",[52,53]),("bool",[25,36,63])]),["DISK_THM"]),
       [read"%104%58%234%199$0@@|@"])
  fun op BAG_INSERT_UNION x = x
    val op BAG_INSERT_UNION =
    DT(((("bag",57),
        [("bag",[25,29,36,53]),("bool",[25,56])]),["DISK_THM"]),
       [read"%111%34%104%58%136%180$0@$1@@%187%199$0@@$1@@|@|@"])
  fun op BAG_INSERT_EQ_UNION x = x
    val op BAG_INSERT_EQ_UNION =
    DT(((("bag",58),
        [("bag",[15,20]),
         ("bool",[25,52,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%104%58%111%42%111%47%111%34%143%136%180$3@$0@@%187$2@$1@@@%251%176$3@$2@@%176$3@$1@@@|@|@|@|@"])
  fun op BAG_DELETE_SING x = x
    val op BAG_DELETE_SING =
    DT(((("bag",59),
        [("bag",[37,51]),
         ("bool",[25,26,47,48,53,54,58,63,71,72,74,78,81,84,94,146]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%34%104%58%143%158$1@$0@%202@@%234$1@@|@|@"])
  fun op NOT_IN_EMPTY_BAG x = x
    val op NOT_IN_EMPTY_BAG =
    DT(((("bag",60),
        [("bag",[0,2,5]),("bool",[25,36,54]),("combin",[12]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%104%93%262%176$0@%202@@|@"])
  fun op BAG_INN_EMPTY_BAG x = x
    val op BAG_INN_EMPTY_BAG =
    DT(((("bag",61),
        [("arithmetic",[46,71,93,143,173,176,177,180]),("bag",[0,2]),
         ("bool",[25,36,51,52,53,54,58,63,96,101,104,105,106,124]),
         ("combin",[12]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%104%58%122%79%134%179$1@$0@%202@@%142$0@%129@@|@|@"])
  fun op MEMBER_NOT_EMPTY x = x
    val op MEMBER_NOT_EMPTY =
    DT(((("bag",62),
        [("bag",[9,15,60]),("bool",[2,15,25,26,53,54,55,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%134%146%93%176$0@$1@|@@%262%136$0@%202@@@|@"])
  fun op SUB_BAG_LEQ x = x
    val op SUB_BAG_LEQ =
    DT(((("bag",63),
        [("arithmetic",[24,25,46,71,93,143,173,176,180]),("bag",[2,3]),
         ("bool",[25,36,52,54,58,63,96,101,104,105,106,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%236%42@%47@@%104%93%131%42$0@@%47$0@@|@@"])
  fun op SUB_BAG_EMPTY x = x
    val op SUB_BAG_EMPTY =
    DT(((("bag",64),
        [("arithmetic",[46,71,93,147,173,176,180]),("bag",[0,63]),
         ("bool",[25,36,54,56,60,63,104]),("combin",[12]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%128%111%34%236%202@$0@|@@%111%34%134%236$0@%202@@%136$0@%202@@|@@"])
  fun op SUB_BAG_REFL x = x
    val op SUB_BAG_REFL =
    DT(((("bag",65),[("bag",[3]),("bool",[25,36,53])]),["DISK_THM"]),
       [read"%111%34%236$0@$0@|@"])
  fun op PSUB_BAG_IRREFL x = x
    val op PSUB_BAG_IRREFL =
    DT(((("bag",66),[("bag",[4]),("bool",[25,36,51,54,56])]),["DISK_THM"]),
       [read"%111%34%262%231$0@$0@@|@"])
  fun op SUB_BAG_ANTISYM x = x
    val op SUB_BAG_ANTISYM =
    DT(((("bag",67),
        [("arithmetic",[24,25,46,71,93,172,173,176,177,180]),("bag",[63]),
         ("bool",[25,36,51,52,53,54,58,60,63,93,96,104,105,107,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%143%128%236$1@$0@@%236$0@$1@@@%136$1@$0@@|@|@"])
  fun op PSUB_BAG_ANTISYM x = x
    val op PSUB_BAG_ANTISYM =
    DT(((("bag",68),
        [("bag",[4,67]),("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%42%111%47%262%128%231$1@$0@@%231$0@$1@@@|@|@"])
  fun op SUB_BAG_TRANS x = x
    val op SUB_BAG_TRANS =
    DT(((("bag",69),
        [("bag",[2,3]),
         ("bool",
         [25,26,36,43,47,48,53,54,56,58,63,71,75,78,80,84,93,94,96,146]),
         ("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%143%128%236$2@$1@@%236$1@$0@@@%236$2@$0@@|@|@|@"])
  fun op PSUB_BAG_TRANS x = x
    val op PSUB_BAG_TRANS =
    DT(((("bag",70),
        [("bag",[4,67,69]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%143%128%231$2@$1@@%231$1@$0@@@%231$2@$0@@|@|@|@"])
  fun op PSUB_BAG_SUB_BAG x = x
    val op PSUB_BAG_SUB_BAG =
    DT(((("bag",71),
        [("bag",[4]),("bool",[25,36,53,58,63,105,124])]),["DISK_THM"]),
       [read"%111%42%111%47%143%231$1@$0@@%236$1@$0@@|@|@"])
  fun op PSUB_BAG_NOT_EQ x = x
    val op PSUB_BAG_NOT_EQ =
    DT(((("bag",72),
        [("bag",[4]),
         ("bool",[25,26,36,51,54,56,63,95,101,145])]),["DISK_THM"]),
       [read"%111%42%111%47%143%231$1@$0@@%262%136$1@$0@@@|@|@"])
  fun op BAG_DIFF_EMPTY x = x
    val op BAG_DIFF_EMPTY =
    DT(((("bag",73),
        [("arithmetic",[62,63,130]),("bag",[0,7,63]),
         ("bool",[25,36,53,56,58,60,63,105,124]),
         ("combin",[12])]),["DISK_THM"]),
       [read"%128%111%34%136%159$0@$0@@%202@|@@%128%114%36%137%160$0@%203@@$0@|@@%128%116%37%138%161%204@$0@@%204@|@@%117%45%117%50%143%237$1@$0@@%139%162$1@$0@@%205@@|@|@@@@"])
  fun op BAG_DIFF_EMPTY_simple x = x
    val op BAG_DIFF_EMPTY_simple =
    DT(((("bag",74),[("bag",[73])]),["DISK_THM"]),
       [read"%128%111%34%136%159$0@$0@@%202@|@@%128%114%36%137%160$0@%203@@$0@|@@%116%37%138%161%204@$0@@%204@|@@@"])
  fun op BAG_DIFF_EQ_EMPTY x = x
    val op BAG_DIFF_EQ_EMPTY =
    DT(((("bag",75),
        [("arithmetic",[63]),("bag",[0,7,63]),("bool",[25,56,60]),
         ("combin",[12])]),["DISK_THM"]),
       [read"%134%136%159%34@%56@@%202@@%236%34@%56@@"])
  fun op BAG_DIFF_INSERT_same x = x
    val op BAG_DIFF_INSERT_same =
    DT(((("bag",76),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,269]),
         ("bag",[7,8]),
         ("bool",
         [25,26,27,36,43,51,52,53,54,56,58,60,63,93,96,101,104,105,108,109,
          111,129,145,147]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%104%93%111%42%111%47%136%159%180$2@$1@@%180$2@$0@@@%159$1@$0@@|@|@|@"])
  fun op BAG_DIFF_INSERT x = x
    val op BAG_DIFF_INSERT =
    DT(((("bag",77),
        [("arithmetic",[24,25,27,46,71,93,143,172,173,176,177,180,269]),
         ("bag",[2,5,7,8]),
         ("bool",
         [25,26,27,36,43,51,52,53,54,56,58,60,63,93,96,101,104,105,108,109,
          111,124,127,129]),("marker",[9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%104%93%111%42%111%47%143%262%176$2@$1@@@%136%159%180$2@$0@@$1@@%180$2@%159$0@$1@@@@|@|@|@"])
  fun op NOT_IN_BAG_DIFF x = x
    val op NOT_IN_BAG_DIFF =
    DT(((("bag",78),
        [("arithmetic",[24,25,27,46,71,93,143,172,173,176,177,180,269]),
         ("bag",[2,5,7,8]),
         ("bool",
         [25,36,43,51,52,53,54,56,58,60,63,93,96,101,104,105,108,109,111,
          124,129,145]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%104%93%111%42%111%47%143%262%176$2@$1@@@%136%159$1@%180$2@$0@@@%159$1@$0@@@|@|@|@"])
  fun op BAG_IN_DIFF_I x = x
    val op BAG_IN_DIFF_I =
    DT(((("bag",79),
        [("arithmetic",[25,46,71,93,143,173,176,180,202]),("bag",[2,5,7]),
         ("bool",[25,36,52,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,6,8])]),["DISK_THM"]),
       [read"%143%128%176%58@%42@@%262%176%58@%47@@@@%176%58@%159%42@%47@@@"])
  fun op BAG_IN_DIFF_E x = x
    val op BAG_IN_DIFF_E =
    DT(((("bag",80),
        [("arithmetic",[25,46,71,93,143,173,176,180,202]),("bag",[2,5,7]),
         ("bool",[25,36,52,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,6,8])]),["DISK_THM"]),
       [read"%143%176%58@%159%42@%47@@@%176%58@%42@@"])
  fun op BAG_UNION_DIFF x = x
    val op BAG_UNION_DIFF =
    DT(((("bag",81),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,269]),
         ("bag",[6,7,63]),
         ("bool",[25,36,43,52,54,56,58,60,63,93,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%21%111%23%111%25%143%236$0@$1@@%128%136%187$2@%159$1@$0@@@%159%187$2@$1@@$0@@@%136%187%159$1@$0@@$2@@%159%187$2@$1@@$0@@@@|@|@|@"])
  fun op BAG_DIFF_2L x = x
    val op BAG_DIFF_2L =
    DT(((("bag",82),
        [("arithmetic",[195,269]),("bag",[6,7]),
         ("bool",[25,36,51,53,56])]),["DISK_THM"]),
       [read"%111%21%111%23%111%25%136%159%159$2@$1@@$0@@%159$2@%187$1@$0@@@|@|@|@"])
  fun op BAG_DIFF_2R x = x
    val op BAG_DIFF_2R =
    DT(((("bag",83),
        [("arithmetic",[24,25,27,46,62,71,93,172,173,177,180,269]),
         ("bag",[6,7,63]),
         ("bool",[25,36,43,51,52,53,54,56,58,60,63,93,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%0%111%1%111%4%143%236$0@$1@@%136%159$2@%159$1@$0@@@%159%187$2@$0@@$1@@@|@|@|@"])
  fun op SUB_BAG_BAG_DIFF x = x
    val op SUB_BAG_BAG_DIFF =
    DT(((("bag",84),
        [("arithmetic",[24,25,27,46,71,93,172,173,176,180,198,269]),
         ("bag",[6,7,63]),
         ("bool",[25,36,43,52,54,58,63,93,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%21%111%23%111%24%111%25%111%19%143%236%159$4@$3@@%159$1@$0@@@%236%159$4@%187$3@$2@@@%159$1@%187$0@$2@@@@|@|@|@|@|@"])
  fun op BAG_DIFF_UNION_eliminate x = x
    val op BAG_DIFF_UNION_eliminate =
    DT(((("bag",85),
        [("arithmetic",[24,25,26,27,46,71,93,172,173,177,180,269]),
         ("bag",[6,7]),
         ("bool",[25,36,43,51,52,53,54,56,58,60,63,93,96,101,104,105]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%128%136%159%187$2@$1@@%187$2@$0@@@%159$1@$0@@@%128%136%159%187$2@$1@@%187$0@$2@@@%159$1@$0@@@%128%136%159%187$1@$2@@%187$2@$0@@@%159$1@$0@@@%136%159%187$1@$2@@%187$0@$2@@@%159$1@$0@@@@@|@|@|@"])
  fun op SUB_BAG_UNION_eliminate x = x
    val op SUB_BAG_UNION_eliminate =
    DT(((("bag",86),
        [("arithmetic",[26,173]),("bag",[6,63]),
         ("bool",[25,36,51,56])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%128%134%236%187$2@$1@@%187$2@$0@@@%236$1@$0@@@%128%134%236%187$2@$1@@%187$0@$2@@@%236$1@$0@@@%128%134%236%187$1@$2@@%187$2@$0@@@%236$1@$0@@@%134%236%187$1@$2@@%187$0@$2@@@%236$1@$0@@@@@|@|@|@"])
  fun op move_BAG_UNION_over_eq x = x
    val op move_BAG_UNION_over_eq =
    DT(((("bag",87),
        [("arithmetic",[128]),("bag",[6,7]),
         ("bool",[14,25,36,56,58,63,101,145])]),["DISK_THM"]),
       [read"%111%21%111%23%111%25%143%136%187$2@$1@@$0@@%136$2@%159$0@$1@@@|@|@|@"])
  fun op SUB_BAG_UNION x = x
    val op SUB_BAG_UNION =
    DT(((("bag",88),
        [("arithmetic",[24,25,26,27,46,71,93,173,176,180]),
         ("bag",[6,33,63]),("bool",[25,36,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%128%111%42%111%47%143%236$1@$0@@%111%34%236$2@%187$1@$0@@|@@|@|@@%128%111%42%111%47%143%236$1@$0@@%111%34%236$2@%187$0@$1@@|@@|@|@@%128%111%42%111%47%111%52%143%236$2@%187$1@$0@@@%111%34%236$3@%187%187$2@$0@@$1@@|@@|@|@|@@%128%111%42%111%47%111%52%143%236$2@%187$1@$0@@@%111%34%236$3@%187%187$0@$2@@$1@@|@@|@|@|@@%128%111%42%111%47%111%52%143%236$2@%187$0@$1@@@%111%34%236$3@%187$1@%187$2@$0@@@|@@|@|@|@@%128%111%42%111%47%111%52%143%236$2@%187$0@$1@@@%111%34%236$3@%187$1@%187$0@$2@@@|@@|@|@|@@%128%111%42%111%47%111%52%111%53%143%236$3@$1@@%143%236$2@$0@@%236%187$3@$2@@%187$1@$0@@@@|@|@|@|@@%128%111%42%111%47%111%52%111%53%143%236$3@$0@@%143%236$2@$1@@%236%187$3@$2@@%187$1@$0@@@@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$4@%187$2@$0@@@%143%236$3@$1@@%236%187$4@$3@@%187%187$2@$1@@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$4@%187$1@$0@@@%143%236$3@$2@@%236%187$4@$3@@%187%187$2@$1@@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$3@%187$2@$0@@@%143%236$4@$1@@%236%187$4@$3@@%187%187$2@$1@@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$3@%187$1@$0@@@%143%236$4@$2@@%236%187$4@$3@@%187%187$2@$1@@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$4@%187$0@$2@@@%143%236$3@$1@@%236%187$3@$4@@%187$0@%187$2@$1@@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$4@%187$0@$1@@@%143%236$3@$2@@%236%187$3@$4@@%187$0@%187$2@$1@@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$3@%187$0@$2@@@%143%236$4@$1@@%236%187$3@$4@@%187$0@%187$2@$1@@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236$3@%187$0@$1@@@%143%236$4@$2@@%236%187$3@$4@@%187$0@%187$2@$1@@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$4@$3@@$1@@%143%236$2@$0@@%236%187%187$4@$2@@$3@@%187$1@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$4@$3@@$0@@%143%236$2@$1@@%236%187%187$4@$2@@$3@@%187$1@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$2@$3@@$1@@%143%236$4@$0@@%236%187%187$4@$2@@$3@@%187$1@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$2@$3@@$0@@%143%236$4@$1@@%236%187%187$4@$2@@$3@@%187$1@$0@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$3@$4@@$1@@%143%236$2@$0@@%236%187$3@%187$4@$2@@@%187$0@$1@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$3@$4@@$0@@%143%236$2@$1@@%236%187$3@%187$4@$2@@@%187$0@$1@@@@|@|@|@|@|@@%128%111%42%111%47%111%52%111%53%111%54%143%236%187$3@$2@@$1@@%143%236$4@$0@@%236%187$3@%187$4@$2@@@%187$0@$1@@@@|@|@|@|@|@@%111%42%111%47%111%52%111%53%111%54%143%236%187$3@$2@@$0@@%143%236$4@$1@@%236%187$3@%187$4@$2@@@%187$0@$1@@@@|@|@|@|@|@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op SUB_BAG_EL_BAG x = x
    val op SUB_BAG_EL_BAG =
    DT(((("bag",89),
        [("arithmetic",[22,25,46,71,93,143,173,176,179,180]),
         ("bag",[0,2,5,8,53,63]),
         ("bool",
         [25,36,51,52,54,58,63,93,96,101,104,105,107,108,109,111,129,145]),
         ("combin",[12]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%104%58%111%34%134%236%199$1@@$0@@%176$1@$0@@|@|@"])
  fun op SUB_BAG_INSERT x = x
    val op SUB_BAG_INSERT =
    DT(((("bag",90),
        [("arithmetic",[25,173]),("bag",[8,63]),
         ("bool",
         [25,26,27,30,53,58,63,64,105,106,124,147])]),["DISK_THM"]),
       [read"%104%58%111%42%111%47%134%236%180$2@$1@@%180$2@$0@@@%236$1@$0@@|@|@|@"])
  fun op SUB_BAG_INSERT_I x = x
    val op SUB_BAG_INSERT_I =
    DT(((("bag",91),
        [("arithmetic",[24,25,27,46,71,93,173,176,180]),("bag",[8,63]),
         ("bool",[25,26,27,30,36,53,54,58,63,64,96,101,104,105,124]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%111%34%111%56%104%58%143%236$2@$1@@%236$2@%180$0@$1@@@|@|@|@"])
  fun op NOT_IN_SUB_BAG_INSERT x = x
    val op NOT_IN_SUB_BAG_INSERT =
    DT(((("bag",92),
        [("arithmetic",[46,59,62,71,93,173,177,180]),("bag",[3,5,14,16]),
         ("bool",[25,26,27,36,47,48,52,53,54,58,63,93,94,96,104,105,124]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%42%111%47%104%58%143%262%176$0@$2@@@%134%236$2@%180$0@$1@@@%236$2@$1@@@|@|@|@"])
  fun op SUB_BAG_BAG_IN x = x
    val op SUB_BAG_BAG_IN =
    DT(((("bag",93),
        [("arithmetic",[25,46,71,93,143,173,176,180]),("bag",[2,5,8,63]),
         ("bool",[25,36,54,56,58,63,64,96,101,104,105,124,129]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%104%93%111%42%111%47%143%236%180$2@$1@@$0@@%176$2@$0@@|@|@|@"])
  fun op SUB_BAG_EXISTS x = x
    val op SUB_BAG_EXISTS =
    DT(((("bag",94),
        [("arithmetic",[24,25,26,27,46,71,93,172,173,176,177,180,269]),
         ("bag",[6,63]),
         ("bool",
         [25,36,43,52,54,56,58,60,63,93,96,101,104,105,106,107,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%134%236$1@$0@@%148%34%136$1@%187$2@$0@@|@@|@|@"])
  fun op SUB_BAG_UNION_DIFF x = x
    val op SUB_BAG_UNION_DIFF =
    DT(((("bag",95),
        [("arithmetic",
         [24,25,27,46,71,93,147,172,173,176,177,180,197,269]),
         ("bag",[6,7,63]),
         ("bool",[25,26,36,43,52,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%143%236$2@$0@@%134%236$1@%159$0@$2@@@%236%187$2@$1@@$0@@@|@|@|@"])
  fun op SUB_BAG_UNION_down x = x
    val op SUB_BAG_UNION_down =
    DT(((("bag",96),
        [("arithmetic",[24,25,46,71,93,173,176,180]),("bag",[6,63]),
         ("bool",[25,36,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%111%42%111%47%111%52%143%236%187$2@$1@@$0@@%128%236$2@$0@@%236$1@$0@@@|@|@|@"])
  fun op SUB_BAG_DIFF x = x
    val op SUB_BAG_DIFF =
    DT(((("bag",97),
        [("arithmetic",[24,25,26,27,46,71,93,172,173,176,180,198,269]),
         ("bag",[6,7,63]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105,106,124]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%128%111%42%111%47%143%236$1@$0@@%111%52%236%159$2@$0@@$1@|@@|@|@@%111%42%111%47%111%52%111%53%143%236$2@$3@@%143%236$0@$1@@%134%236%159$3@$2@@%159$1@$0@@@%236%187$3@$0@@%187$2@$1@@@@@|@|@|@|@@"])
  fun op SUB_BAG_PSUB_BAG x = x
    val op SUB_BAG_PSUB_BAG =
    DT(((("bag",98),
        [("bag",[4,65]),("bool",[25,26,53,54,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%134%236$1@$0@@%251%231$1@$0@@%136$1@$0@@@|@|@"])
  fun op BAG_DELETE_PSUB_BAG x = x
    val op BAG_DELETE_PSUB_BAG =
    DT(((("bag",99),
        [("bag",[3,4,16,26,37]),
         ("bool",[25,26,27,36,51,52,53,54,58,63,105,124])]),["DISK_THM"]),
       [read"%111%41%104%58%111%34%143%158$2@$1@$0@@%231$0@$2@@|@|@|@"])
  fun op SET_OF_EMPTY x = x
    val op SET_OF_EMPTY =
    DT(((("bag",102),
        [("bag",[0,101]),("bool",[25,26,27,36,56,58,60,105,129,147]),
         ("combin",[12]),("pred_set",[10])]),["DISK_THM"]),
       [read"%136%185%200@@%202@"])
  fun op BAG_IN_BAG_OF_SET x = x
    val op BAG_IN_BAG_OF_SET =
    DT(((("bag",103),
        [("arithmetic",[24,25,71,143,173,176,180]),("bag",[2,5,101]),
         ("bool",
         [5,25,26,27,30,36,52,53,54,56,58,63,64,104,105,108,109,129]),
         ("numeral",[3,6,8])]),["DISK_THM"]),
       [read"%107%10%104%80%134%176$0@%185$1@@@%217$0@$1@@|@|@"])
  fun op BAG_OF_EMPTY x = x
    val op BAG_OF_EMPTY =
    DT(((("bag",104),
        [("bag",[60,100]),("bool",[25,26,27,36,54,60,63]),
         ("pred_set",[9])]),["DISK_THM"]), [read"%135%232%202@@%200@"])
  fun op SET_BAG_I x = x
    val op SET_BAG_I =
    DT(((("bag",105),
        [("bag",[100,103]),("bool",[18,25,36,56,60])]),["DISK_THM"]),
       [read"%107%84%135%232%185$0@@@$0@|@"])
  fun op SUB_BAG_SET x = x
    val op SUB_BAG_SET =
    DT(((("bag",106),
        [("bag",[3,5,100]),("bool",[25,36,53,58,63,105,124]),
         ("pred_set",[0,18])]),["DISK_THM"]),
       [read"%111%42%111%47%143%236$1@$0@@%235%232$1@@%232$0@@@|@|@"])
  fun op SET_OF_BAG_UNION x = x
    val op SET_OF_BAG_UNION =
    DT(((("bag",107),
        [("bag",[20,100]),("bool",[25,36,56]),
         ("pred_set",[1,3,33])]),["DISK_THM"]),
       [read"%111%42%111%47%135%232%187$1@$0@@@%243%232$1@@%232$0@@@|@|@"])
  fun op SET_OF_BAG_MERGE x = x
    val op SET_OF_BAG_MERGE =
    DT(((("bag",108),
        [("bag",[23,100]),("bool",[25,36,56]),
         ("pred_set",[1,3,33])]),["DISK_THM"]),
       [read"%111%42%111%47%135%232%184$1@$0@@@%243%232$1@@%232$0@@@|@|@"])
  fun op SET_OF_BAG_INSERT x = x
    val op SET_OF_BAG_INSERT =
    DT(((("bag",109),
        [("arithmetic",[25,27,46,71,93,143,173,176,180]),
         ("bag",[2,5,8,100]),
         ("bool",[25,26,27,30,36,52,54,56,58,63,64,104,143]),
         ("numeral",[3,5,8]),("pair",[4]),
         ("pred_set",[0,3,6,79])]),["DISK_THM"]),
       [read"%104%58%111%34%135%232%180$1@$0@@@%220$1@%232$0@@@|@|@"])
  fun op SET_OF_EL_BAG x = x
    val op SET_OF_EL_BAG =
    DT(((("bag",110),
        [("bag",[53,104,109]),("bool",[25,36,56])]),["DISK_THM"]),
       [read"%104%58%135%232%199$0@@@%220$0@%200@@|@"])
  fun op SET_OF_BAG_DIFF_SUBSET_down x = x
    val op SET_OF_BAG_DIFF_SUBSET_down =
    DT(((("bag",111),
        [("arithmetic",[25,46,71,93,143,173,176,180,202]),
         ("bag",[2,5,7,100]),
         ("bool",[25,36,52,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,6,8]),("pred_set",[0,18,67])]),["DISK_THM"]),
       [read"%111%42%111%47%235%197%232$1@@%232$0@@@%232%159$1@$0@@@|@|@"])
  fun op SET_OF_BAG_DIFF_SUBSET_up x = x
    val op SET_OF_BAG_DIFF_SUBSET_up =
    DT(((("bag",112),
        [("arithmetic",[25,46,71,93,143,173,176,180,202]),
         ("bag",[2,5,7,100]),
         ("bool",[25,36,52,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,6,8]),("pred_set",[0,18])]),["DISK_THM"]),
       [read"%111%42%111%47%235%232%159$1@$0@@@%232$1@@|@|@"])
  fun op IN_SET_OF_BAG x = x
    val op IN_SET_OF_BAG =
    DT(((("bag",113),
        [("bag",[100]),("bool",[25,36,56]),
         ("pred_set",[0])]),["DISK_THM"]),
       [read"%104%93%111%34%134%217$1@%232$0@@@%176$1@$0@@|@|@"])
  fun op SET_OF_BAG_EQ_EMPTY x = x
    val op SET_OF_BAG_EQ_EMPTY =
    DT(((("bag",114),
        [("bag",[9,27,104,109]),("bool",[25,26,27,54,56,58,63]),
         ("pred_set",[90])]),["DISK_THM"]),
       [read"%111%34%128%134%135%200@%232$0@@@%136$0@%202@@@%134%135%232$0@@%200@@%136$0@%202@@@|@"])
  fun op BAG_DISJOINT_EMPTY x = x
    val op BAG_DISJOINT_EMPTY =
    DT(((("bag",116),
        [("bag",[104,115]),("bool",[25,36,51,63]),
         ("pred_set",[60])]),["DISK_THM"]),
       [read"%111%34%128%163$0@%202@@%163%202@$0@@|@"])
  fun op BAG_DISJOINT_DIFF x = x
    val op BAG_DISJOINT_DIFF =
    DT(((("bag",117),
        [("arithmetic",[24,25,27,46,71,93,143,173,202]),
         ("bag",[2,5,7,100,115]),
         ("bool",[25,26,27,36,52,54,58,63,96,104,105,143]),
         ("numeral",[3,5,6,8]),("pair",[4]),
         ("pred_set",[0,3,6,10,44,57])]),["DISK_THM"]),
       [read"%111%2%111%3%163%159$1@$0@@%159$0@$1@@|@|@"])
  fun op BAG_DISJOINT_BAG_IN x = x
    val op BAG_DISJOINT_BAG_IN =
    DT(((("bag",118),
        [("bag",[113,115]),("bool",[25,26,27,36,56,58,63,96]),
         ("pred_set",[3,10,45,57])]),["DISK_THM"]),
       [read"%111%42%111%47%134%163$1@$0@@%104%58%251%262%176$0@$2@@@%262%176$0@$1@@@|@@|@|@"])
  fun op BAG_DISJOINT_BAG_INSERT x = x
    val op BAG_DISJOINT_BAG_INSERT =
    DT(((("bag",119),
        [("bag",[15,118]),("bool",[25,26,53,54,55,63,96,99,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%111%42%111%47%104%63%134%163%180$0@$2@@$1@@%128%262%176$0@$1@@@%163$2@$1@@@|@|@|@@%114%43%114%48%105%65%134%164$2@%181$0@$1@@@%128%262%177$0@$2@@@%164$2@$1@@@|@|@|@@"])
  fun op BAG_DISJOINT_BAG_UNION x = x
    val op BAG_DISJOINT_BAG_UNION =
    DT(((("bag",120),
        [("bag",[107,115]),("bool",[25,26,51,53,54,56,63]),
         ("pred_set",[59,64]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%128%134%163%42@%187%47@%52@@@%128%163%42@%47@@%163%42@%52@@@@%134%163%187%42@%47@@%52@@%128%163%42@%52@@%163%47@%52@@@@"])
  fun op FINITE_EMPTY_BAG x = x
    val op FINITE_EMPTY_BAG =
    DT(((("bag",122),
        [("bag",[121]),("bool",[25,36,53,58,63,105,124])]),["DISK_THM"]),
       [read"%209%202@"])
  fun op FINITE_BAG_INSERT x = x
    val op FINITE_BAG_INSERT =
    DT(((("bag",123),
        [("bag",[121]),
         ("bool",
         [25,26,36,47,48,53,54,56,58,63,71,77,78,80,81,84,93,94,96,146]),
         ("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%104%58%209%180$0@$1@@|@@|@"])
  fun op FINITE_BAG_INDUCT x = x
    val op FINITE_BAG_INDUCT =
    DT(((("bag",124),
        [("bag",[121]),
         ("bool",[25,36,51,53,58,63,105,124])]),["DISK_THM"]),
       [read"%118%12%143%128$0%202@@%111%34%143$1$0@@%104%58$2%180$0@$1@@|@@|@@@%111%34%143%209$0@@$1$0@@|@@|@"])
  fun op STRONG_FINITE_BAG_INDUCT x = x
    val op STRONG_FINITE_BAG_INDUCT =
    DT(((("bag",125),
        [("bag",[122,123,124]),
         ("bool",[25,51,58,63,105,124])]),["DISK_THM"]),
       [read"%118%12%143%128$0%202@@%111%34%143%128%209$0@@$1$0@@@%104%58$2%180$0@$1@@|@@|@@@%111%34%143%209$0@@$1$0@@|@@|@"])
  fun op FINITE_BAG_THM x = x
    val op FINITE_BAG_THM =
    DT(((("bag",126),
        [("bag",[15,27,28,30,37,42,49,122,123,125]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,84,93,94,96,105,
          124]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%128%209%202@@%104%58%111%34%134%209%180$1@$0@@@%209$0@@|@|@@"])
  fun op FINITE_BAG_DIFF x = x
    val op FINITE_BAG_DIFF =
    DT(((("bag",127),
        [("bag",[37,42,73,76,77,125,126]),
         ("bool",[25,26,27,30,36,51,54,63])]),["DISK_THM"]),
       [read"%111%42%143%209$0@@%111%47%209%159$1@$0@@|@@|@"])
  fun op FINITE_BAG_DIFF_dual x = x
    val op FINITE_BAG_DIFF_dual =
    DT(((("bag",128),
        [("bag",[37,42,73,76,78,125,126]),
         ("bool",[25,26,30,36,47,48,51,53,54,63,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%143%209$0@@%111%47%143%209%159$0@$1@@@%209$0@@|@@|@"])
  fun op FINITE_BAG_UNION x = x
    val op FINITE_BAG_UNION =
    DT(((("bag",129),
        [("bag",[25,28,36,37,42,58,125,126]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,84,93,94,96,100,
          105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%134%209%187$1@$0@@@%128%209$1@@%209$0@@@|@|@"])
  fun op FINITE_SUB_BAG x = x
    val op FINITE_SUB_BAG =
    DT(((("bag",130),
        [("bag",[37,42,64,90,92,125,126]),
         ("bool",[25,26,30,36,47,48,51,53,54,58,63,93,94,96,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%42%143%209$0@@%111%47%143%236$0@$1@@%209$0@@|@@|@"])
  fun op BAG_CARD_EMPTY x = x
    val op BAG_CARD_EMPTY =
    DT(((("bag",133),
        [("arithmetic",[64,79,91]),("bag",[27,122,131,132]),
         ("bool",
         [2,13,15,25,26,27,30,36,37,47,48,51,52,53,54,55,56,58,63,71,72,75,
          77,78,80,81,83,84,93,94,96,99,100,105,124,143,146]),
         ("combin",[19]),("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%142%154%202@@%129@"])
  fun op BCARD_0 x = x
    val op BCARD_0 =
    DT(((("bag",134),
        [("arithmetic",[64,79,91]),("bag",[27,122,126,131,132]),
         ("bool",
         [2,13,15,25,26,27,30,36,37,47,48,51,52,53,54,55,56,58,63,71,72,75,
          77,78,80,81,83,84,93,94,96,99,100,105,124,143,146,169]),
         ("combin",[19]),("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%134%142%154$0@@%129@@%136$0@%202@@@|@"])
  fun op BAG_CARD_THM x = x
    val op BAG_CARD_THM =
    DT(((("bag",135),
        [("arithmetic",
         [24,25,27,46,64,71,79,91,93,128,172,173,177,180,269]),
         ("bag",[15,27,28,30,37,42,49,122,123,125,131,132]),
         ("bool",
         [2,13,15,25,26,27,30,36,37,43,47,48,51,52,53,54,55,56,58,63,71,72,
          75,77,78,80,81,83,84,87,93,94,95,96,99,100,101,104,105,106,124,
          143,145,146]),("combin",[19]),("numeral",[0,3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%142%154%202@@%129@@%111%34%143%209$0@@%104%58%142%154%180$0@$1@@@%124%154$1@@%230%192%250@@@@|@@|@@"])
  fun op BAG_CARD_UNION x = x
    val op BAG_CARD_UNION =
    DT(((("bag",136),
        [("arithmetic",[22,25,26,27,91]),("bag",[25,36,125,129,135]),
         ("bool",[25,36,51,53,56,58,63,87,105,124])]),["DISK_THM"]),
       [read"%111%42%111%47%143%128%209$1@@%209$0@@@%142%154%187$1@$0@@@%124%154$1@@%154$0@@@@|@|@"])
  fun op BCARD_SUC x = x
    val op BCARD_SUC =
    DT(((("bag",137),
        [("arithmetic",[64,79,91]),("bag",[9,27,126,135]),
         ("bool",
         [13,25,26,27,30,36,37,47,48,51,52,53,54,56,58,63,72,80,83,93,94,
          96,105,124]),("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%122%79%134%142%154$1@@%238$0@@@%148%41%146%58%128%136$3@%180$0@$1@@@%142%154$1@@$2@@|@|@@|@@|@"])
  fun op BAG_CARD_BAG_INN x = x
    val op BAG_CARD_BAG_INN =
    DT(((("bag",138),
        [("arithmetic",[24,25,27,46,71,93,173,176,180,198]),
         ("bag",[16,61,125,135]),
         ("bool",[25,36,51,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%122%79%104%58%143%179$0@$1@$2@@%131$1@%154$2@@@|@|@@|@"])
  fun op SUB_BAG_DIFF_EQ x = x
    val op SUB_BAG_DIFF_EQ =
    DT(((("bag",139),
        [("arithmetic",[24,25,27,46,71,93,143,172,173,176,177,180,269]),
         ("bag",[2,3,6,7]),
         ("bool",[25,36,43,52,53,54,58,60,63,93,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%143%236$1@$0@@%136$0@%187$1@%159$0@$1@@@@|@|@"])
  fun op SUB_BAG_CARD x = x
    val op SUB_BAG_CARD =
    DT(((("bag",140),
        [("arithmetic",[24,25,27,46,71,93,95,173,176,180]),
         ("bag",[25,36,125,129,135,139]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,84,93,94,96,101,
          104,105,124]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%143%128%209$0@@%236$1@$0@@@%131%154$1@@%154$0@@@|@|@"])
  fun op BAG_CARD_DIFF x = x
    val op BAG_CARD_DIFF =
    DT(((("bag",141),
        [("arithmetic",[24,25,27,46,62,71,93,147,172,173,176,177,180,269]),
         ("bag",[0,15,31,63,74,76,77,90,92,125,126,127,130,135,140]),
         ("bool",
         [2,15,25,26,27,30,36,43,51,52,53,54,56,58,60,63,75,83,93,96,101,
          104,105,124]),("combin",[12]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%111%56%143%236$0@$1@@%142%154%159$1@$0@@@%127%154$1@@%154$0@@@@|@@|@"])
  fun op BAG_FILTER_EMPTY x = x
    val op BAG_FILTER_EMPTY =
    DT(((("bag",143),
        [("bag",[0,142]),("bool",[25,56,58,60,65,105,129]),
         ("combin",[12])]),["DISK_THM"]), [read"%136%167%10@%202@@%202@"])
  fun op BAG_FILTER_BAG_INSERT x = x
    val op BAG_FILTER_BAG_INSERT =
    DT(((("bag",144),
        [("arithmetic",[79,81,91]),("bag",[8,142]),
         ("bool",[25,26,27,30,51,56,58,60,63,64,105,129,147]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%136%167%10@%180%58@%34@@@%194%10%58@@%180%58@%167%10@%34@@@%167%10@%34@@@"])
  fun op FINITE_BAG_FILTER x = x
    val op FINITE_BAG_FILTER =
    DT(((("bag",145),
        [("bag",[124,126,143,144]),
         ("bool",[25,26,27,30,58,63,64,105,124])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%209%167%10@$0@@@|@"])
  fun op BAG_INN_BAG_FILTER x = x
    val op BAG_INN_BAG_FILTER =
    DT(((("bag",146),
        [("arithmetic",[24,25,46,71,93,143,172,173,177,179,180]),
         ("bag",[2,142]),
         ("bool",[25,26,27,30,36,43,51,52,54,63,64,93,96,104,105,107]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%179%58@%79@%167%10@%34@@@%251%142%79@%129@@%128%10%58@@%179%58@%79@%34@@@@"])
  fun op BAG_IN_BAG_FILTER x = x
    val op BAG_IN_BAG_FILTER =
    DT(((("bag",147),
        [("bag",[5,146]),("bool",[25,52,56]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%134%176%58@%167%10@%34@@@%128%10%58@@%176%58@%34@@@"])
  fun op BAG_FILTER_FILTER x = x
    val op BAG_FILTER_FILTER =
    DT(((("bag",148),
        [("bag",[142]),
         ("bool",
         [25,26,27,30,51,52,54,56,58,60,63,64,96,105,129])]),["DISK_THM"]),
       [read"%136%167%10@%167%15@%34@@@%167%26%128%10$0@@%15$0@@|@%34@@"])
  fun op BAG_FILTER_SUB_BAG x = x
    val op BAG_FILTER_SUB_BAG =
    DT(((("bag",149),
        [("bag",[3,13,146]),
         ("bool",[25,36,51,53,58,63,102,105,124])]),["DISK_THM"]),
       [read"%107%10%111%34%236%167$1@$0@@$0@|@|@"])
  fun op SET_OF_BAG_EQ_INSERT x = x
    val op SET_OF_BAG_EQ_INSERT =
    DT(((("bag",150),
        [("arithmetic",[22,24,25,26,27,46,71,93,172,173,177,180]),
         ("bag",[0,6,13,20,21,24,60,113,146,147]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,55,56,58,60,63,71,76,93,94,
          96,97,98,99,104,105,107,124,125,143]),("combin",[8,12]),
         ("numeral",[3,8]),("pred_set",[3,80,85]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%34%104%58%107%84%134%135%220$1@$0@@%232$2@@@%148%41%148%66%128%136$4@%187$0@$1@@@%128%135$2@%232$1@@@%128%104%61%143%176$0@$1@@%132$0@$4@@|@@%143%262%217$3@$2@@@%176$3@$0@@@@@|@|@@|@|@|@"])
  fun op FINITE_SET_OF_BAG x = x
    val op FINITE_SET_OF_BAG =
    DT(((("bag",151),
        [("arithmetic",[24,25,27,46,71,93,143,172,173,176,177,180]),
         ("bag",[2,5,8,15,24,37,42,61,104,109,114,125,126,129,150]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,43,47,48,51,52,53,54,55,56,58,63,71,72,
          77,78,83,92,93,94,96,99,101,102,104,105,124,129,146,147]),
         ("combin",[19]),("num",[9]),("numeral",[3,5,6,8]),
         ("pred_set",[185,186,187]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%34%134%207%232$0@@@%209$0@@|@"])
  fun op BAG_IMAGE_EMPTY x = x
    val op BAG_IMAGE_EMPTY =
    DT(((("bag",153),
        [("bag",[1,126,133,143,145,152]),
         ("bool",[25,32,56,58,63,105,129,147])]),["DISK_THM"]),
       [read"%106%69%137%172$0@%202@@%203@|@"])
  fun op BAG_IMAGE_FINITE_INSERT x = x
    val op BAG_IMAGE_FINITE_INSERT =
    DT(((("bag",154),
        [("arithmetic",[91]),("bag",[8,126,135,144,145,152]),
         ("bool",
         [25,26,27,30,32,54,56,58,60,63,105,124,129,147])]),["DISK_THM"]),
       [read"%111%34%106%69%104%58%143%209$2@@%137%172$1@%180$0@$2@@@%181$1$0@@%172$1@$2@@@@|@|@|@"])
  fun op BAG_IMAGE_FINITE_UNION x = x
    val op BAG_IMAGE_FINITE_UNION =
    DT(((("bag",155),
        [("bag",[25,36,125,129,153,154]),
         ("bool",[25,36,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%111%42%111%47%106%69%143%128%209$2@@%209$1@@@%137%172$0@%187$2@$1@@@%188%172$0@$2@@%172$0@$1@@@@|@|@|@"])
  fun op BAG_IMAGE_FINITE x = x
    val op BAG_IMAGE_FINITE =
    DT(((("bag",156),
        [("bag",[125,126,153,154]),
         ("bool",[25,36,53,58,63,105,124])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%210%172%69@$0@@@|@"])
  fun op BAG_IMAGE_COMPOSE x = x
    val op BAG_IMAGE_COMPOSE =
    DT(((("bag",157),
        [("bag",[125,153,154,156]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("combin",[8])]),["DISK_THM"]),
       [read"%106%69%115%72%116%37%143%211$0@@%137%175%258$2@$1@@$0@@%172$2@%174$1@$0@@@@|@|@|@"])
  fun op BAG_IMAGE_FINITE_I x = x
    val op BAG_IMAGE_FINITE_I =
    DT(((("bag",158),
        [("bag",[29,125,153,154]),("bool",[25,36,53,56,58,63,105,124]),
         ("combin",[19])]),["DISK_THM"]),
       [read"%111%34%143%209$0@@%136%171%214@$0@@$0@@|@"])
  fun op BAG_IN_FINITE_BAG_IMAGE x = x
    val op BAG_IN_FINITE_BAG_IMAGE =
    DT(((("bag",159),
        [("arithmetic",[25,27,28,29,46,59,71,93,143,173,176,180]),
         ("bag",[2,5,15,37,42,126,135,137,144,145,147,152]),
         ("bool",
         [13,25,26,27,30,32,36,47,48,51,52,53,54,56,58,63,72,74,78,80,81,
          83,84,93,94,96,101,104,105,124,129,146,147]),("combin",[19]),
         ("marker",[6]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%209%34@@%134%177%94@%172%69@%34@@@%146%99%128%133%69$0@@%94@@%176$0@%34@@|@@@"])
  fun op BAG_IMAGE_EQ_EMPTY x = x
    val op BAG_IMAGE_EQ_EMPTY =
    DT(((("bag",160),
        [("bag",[27,125,153,154]),
         ("bool",[25,26,27,36,51,53,54,56,58,63,105,124])]),["DISK_THM"]),
       [read"%143%209%34@@%134%137%172%69@%34@@%203@@%136%34@%202@@@"])
  fun op BAG_INSERT_CHOICE_REST x = x
    val op BAG_INSERT_CHOICE_REST =
    DT(((("bag",163),
        [("arithmetic",[22,24,25,27,46,62,71,93,143,172,173,177,180,269]),
         ("bag",[0,2,5,7,8,53,161,162]),
         ("bool",
         [25,26,27,30,36,43,52,54,56,58,60,63,64,93,96,101,104,105,124,129,
          147]),("combin",[0]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%34%143%262%136$0@%202@@@%136$0@%180%157$0@@%186$0@@@@|@"])
  fun op BAG_CHOICE_SING x = x
    val op BAG_CHOICE_SING =
    DT(((("bag",164),
        [("bag",[15,27,60,161]),
         ("bool",[25,26,27,52,53,54,56,58,105,124])]),["DISK_THM"]),
       [read"%132%157%180%93@%202@@@%93@"])
  fun op BAG_REST_SING x = x
    val op BAG_REST_SING =
    DT(((("bag",165),
        [("bag",[53,74,76,162,164]),("bool",[25,56])]),["DISK_THM"]),
       [read"%136%186%180%93@%202@@@%202@"])
  fun op SUB_BAG_REST x = x
    val op SUB_BAG_REST =
    DT(((("bag",166),
        [("arithmetic",[24,25,27,46,71,93,143,172,173,176,180,269]),
         ("bag",[2,3,7,8,53,162]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,56,58,63,64,96,101,104,105,124]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%111%34%236%186$0@@$0@|@"])
  fun op PSUB_BAG_REST x = x
    val op PSUB_BAG_REST =
    DT(((("bag",167),
        [("arithmetic",
         [22,24,25,26,27,46,71,93,143,172,173,176,180,202,269]),
         ("bag",[0,2,3,4,5,7,8,53,161,162]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,56,58,60,63,64,71,96,101,104,105,124,
          129,147]),("combin",[0]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%111%34%143%262%136$0@%202@@@%231%186$0@@$0@@|@"])
  fun op SUB_BAG_UNION_MONO x = x
    val op SUB_BAG_UNION_MONO =
    DT(((("bag",168),
        [("arithmetic",[24,25,27,46,71,93,143,173,176,180]),
         ("bag",[2,3,6,33]),
         ("bool",[25,36,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%128%111%96%111%102%236$1@%187$1@$0@@|@|@@%111%96%111%102%236$1@%187$0@$1@@|@|@@"])
  fun op PSUB_BAG_CARD x = x
    val op PSUB_BAG_CARD =
    DT(((("bag",169),
        [("arithmetic",[22,24,25,41,46,59,71,93,172,173,176,177,180]),
         ("bag",[1,4,6,9,25,126,129,135,139,140,168]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,60,63,72,73,84,93,
          94,96,101,104,105,107,124]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%42%111%47%143%128%209$0@@%231$1@$0@@@%130%154$1@@%154$0@@@|@|@"])
  fun op EL_BAG_BAG_INSERT x = x
    val op EL_BAG_BAG_INSERT =
    DT(((("bag",170),
        [("arithmetic",[22,24,25,27,46,71,93,143,173,176,177,180]),
         ("bag",[0,2,8,24,29,61]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,62,63,92,96,101,104,105,106,124,
          129,147]),("combin",[12]),("numeral",[3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%136%180%93@%202@@%180%99@%34@@@%128%132%93@%99@@%136%34@%202@@@"])
  fun op EL_BAG_SUB_BAG x = x
    val op EL_BAG_SUB_BAG =
    DT(((("bag",171),
        [("arithmetic",[22,25,46,71,93,95,143,147,173,176,180]),
         ("bag",[0,2,3,5,8]),
         ("bool",
         [25,26,27,36,51,53,54,56,58,63,73,87,93,95,96,97,98,101,102,104,
          105,106,109,111,124,129,145]),("combin",[12]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%134%236%180%93@%202@@%34@@%176%93@%34@@"])
  fun op ITBAG_IND x = x
    val op ITBAG_IND =
    DT(((("bag",174),
        [("bag",[167,169,172,173]),
         ("bool",
         [15,25,26,27,36,47,48,53,54,58,63,71,93,94,96,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%119%13%143%111%34%105%31%143%143%128%209$1@@%262%136$1@%202@@@@$2%186$1@@%70%157$1@@$0@@@@$2$1@$0@@|@|@@%111%91%105%92$2$1@$0@|@|@@|@"])
  fun op ITBAG_THM x = x
    val op ITBAG_THM =
    DT(((("bag",175),
        [("bag",[167,169,172,173]),
         ("bool",
         [15,25,26,27,36,47,48,53,54,58,63,64,71,93,94,96,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%34%109%70%105%31%143%209$2@@%133%223$1@$2@$0@@%193%136$2@%202@@$0@%223$1@%186$2@@$1%157$2@@$0@@@@@|@|@|@"])
  fun op ITBAG_EMPTY x = x
    val op ITBAG_EMPTY =
    DT(((("bag",176),
        [("bag",[122,167,169,172,173]),
         ("bool",
         [15,25,26,27,36,47,48,53,54,56,58,63,64,71,93,94,96,105,124,129]),
         ("combin",[5,19]),("pair",[5,8,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%70%105%31%133%223$1@%202@$0@@$0@|@|@"])
  fun op ITBAG_INSERT x = x
    val op ITBAG_INSERT =
    DT(((("bag",177),
        [("bag",[27,126,167,169,172,173]),
         ("bool",
         [15,25,26,27,36,47,48,53,54,58,63,64,71,93,94,96,105,124,129,
          147]),("combin",[5,19]),("pair",[5,8,16,49]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%70%105%31%143%209%34@@%133%223$1@%180%93@%34@@$0@@%223$1@%186%180%93@%34@@@$1%157%180%93@%34@@@$0@@@@|@|@"])
  fun op COMMUTING_ITBAG_INSERT x = x
    val op COMMUTING_ITBAG_INSERT =
    DT(((("bag",178),
        [("arithmetic",[24,25,41,46,59,71,93,110,173,180]),
         ("bag",[15,27,29,30,37,42,53,74,76,126,135,161,162,177]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,78,87,93,
          94,95,96,101,104,105,107,124,145,146]),("combin",[19]),
         ("marker",[6]),("numeral",[3,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%109%70%111%34%143%128%104%93%104%99%105%103%133$4$2@$4$1@$0@@@$4$1@$4$2@$0@@@|@|@|@@%209$0@@@%104%93%105%27%133%223$3@%180$1@$2@@$0@@%223$3@$2@$3$1@$0@@@|@|@@|@|@"])
  fun op COMMUTING_ITBAG_RECURSES x = x
    val op COMMUTING_ITBAG_RECURSES =
    DT(((("bag",179),
        [("bag",[125,176,178]),
         ("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,77,80,81,84,93,94,96,105,124,
          146]),("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%70%104%58%111%34%105%27%143%128%104%93%104%99%105%103%133$6$2@$6$1@$0@@@$6$1@$6$2@$0@@@|@|@|@@%209$1@@@%133%223$3@%180$2@$1@@$0@@$3$2@%223$3@$1@$0@@@@|@|@|@|@"])
  fun op BAG_GEN_SUM_EMPTY x = x
    val op BAG_GEN_SUM_EMPTY =
    DT(((("bag",182),[("bag",[176,180]),("bool",[25,56])]),["DISK_THM"]),
       [read"%122%79%142%170%206@$0@@$0@|@"])
  fun op BAG_GEN_PROD_EMPTY x = x
    val op BAG_GEN_PROD_EMPTY =
    DT(((("bag",183),[("bag",[176,181]),("bool",[25,56])]),["DISK_THM"]),
       [read"%122%79%142%169%206@$0@@$0@|@"])
  fun op BAG_GEN_SUM_TAILREC x = x
    val op BAG_GEN_SUM_TAILREC =
    DT(((("bag",184),
        [("arithmetic",[26,27,91]),("bag",[178,180]),
         ("bool",[25,56,63])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%122%97%122%29%142%170%182$1@$2@@$0@@%170$2@%124$1@$0@@@|@|@@|@"])
  fun op BAG_GEN_SUM_REC x = x
    val op BAG_GEN_SUM_REC =
    DT(((("bag",185),
        [("arithmetic",[26,27,91]),("bag",[179,180]),
         ("bool",[25,56,63])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%122%97%122%29%142%170%182$1@$2@@$0@@%124$1@%170$2@$0@@@|@|@@|@"])
  fun op BAG_GEN_PROD_TAILREC x = x
    val op BAG_GEN_PROD_TAILREC =
    DT(((("bag",186),
        [("arithmetic",[73,76]),("bag",[178,181]),
         ("bool",[25,56,63])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%122%97%122%29%142%169%182$1@$2@@$0@@%169$2@%123$1@$0@@@|@|@@|@"])
  fun op BAG_GEN_PROD_REC x = x
    val op BAG_GEN_PROD_REC =
    DT(((("bag",187),
        [("arithmetic",[73,76]),("bag",[179,181]),
         ("bool",[25,56,63])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%122%97%122%29%142%169%182$1@$2@@$0@@%123$1@%169$2@$0@@@|@|@@|@"])
  fun op BAG_GEN_PROD_EQ_1 x = x
    val op BAG_GEN_PROD_EQ_1 =
    DT(((("bag",188),
        [("arithmetic",[69,149]),("bag",[125,183,186]),
         ("bool",[25,53,54,55,58,63,105,124,169]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%122%60%143%142%169$1@$0@@%230%192%250@@@@%142$0@%230%192%250@@@@|@@|@"])
  fun op BAG_GEN_PROD_ALL_ONES x = x
    val op BAG_GEN_PROD_ALL_ONES =
    DT(((("bag",189),
        [("arithmetic",[70]),("bag",[15,60,125,186,188]),
         ("bool",[25,53,54,55,58,63,83,99,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%143%142%169$0@%230%192%250@@@@%230%192%250@@@@%122%97%143%178$0@$1@@%142$0@%230%192%250@@@@|@@@|@"])
  fun op BAG_GEN_PROD_POSITIVE x = x
    val op BAG_GEN_PROD_POSITIVE =
    DT(((("bag",190),
        [("arithmetic",[59,151]),("bag",[15,125,183,187]),
         ("bool",[2,25,26,53,54,55,63,99,104]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%38%143%212$0@@%143%122%97%143%178$0@$1@@%130%129@$0@@|@@%130%129@%169$0@%230%192%250@@@@@@|@"])
  fun op BAG_EVERY_THM x = x
    val op BAG_EVERY_THM =
    DT(((("bag",192),
        [("bag",[15,60,191]),
         ("bool",[25,26,27,36,51,53,54,55,58,63,99,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%107%10%165$0@%202@|@@%113%11%105%59%114%36%134%166$2@%181$1@$0@@@%128$2$1@@%166$2@$0@@@|@|@|@@"])
  fun op BAG_EVERY_UNION x = x
    val op BAG_EVERY_UNION =
    DT(((("bag",193),
        [("bag",[20,191]),("bool",[25,26,53,54,58,63,99,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%134%165%10@%187%42@%47@@@%128%165%10@%42@@%165%10@%47@@@"])
  fun op BAG_EVERY_MERGE x = x
    val op BAG_EVERY_MERGE =
    DT(((("bag",194),
        [("bag",[23,191]),
         ("bool",[25,56,58,73,102,105,124])]),["DISK_THM"]),
       [read"%134%165%10@%184%42@%47@@@%128%165%10@%42@@%165%10@%47@@@"])
  fun op BAG_EVERY_SET x = x
    val op BAG_EVERY_SET =
    DT(((("bag",195),
        [("bag",[113,191]),("bool",[25,26,56,58,63,105,124]),("pair",[3]),
         ("pred_set",[6,18])]),["DISK_THM"]),
       [read"%134%165%10@%34@@%235%232%34@@%213%93%125$0@%10$0@@|@@@"])
  fun op BAG_FILTER_EQ_EMPTY x = x
    val op BAG_FILTER_EQ_EMPTY =
    DT(((("bag",196),
        [("arithmetic",[41,46,59,71,93,173,177,180]),
         ("bag",[5,13,14,24,61,146,191]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,96,101,104,105,106,124]),
         ("combin",[8]),("numeral",[3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%136%167%10@%34@@%202@@%165%259%262@%10@@%34@@"])
  fun op SET_OF_BAG_IMAGE x = x
    val op SET_OF_BAG_IMAGE =
    DT(((("bag",197),
        [("arithmetic",[24,25,27,46,71,93,143,173,176,180]),
         ("bag",
         [2,5,9,15,27,28,30,37,42,49,113,123,125,126,133,135,152,191,196]),
         ("bool",
         [13,25,26,27,30,32,36,47,48,51,52,53,54,56,58,63,64,71,72,84,92,
          93,94,96,104,105,124]),("combin",[8,19]),("marker",[6]),
         ("numeral",[3,5,6,8]),("pred_set",[3,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%135%232%173%71@%36@@@%216%71@%233%36@@@"])
  fun op BAG_IMAGE_FINITE_RESTRICTED_I x = x
    val op BAG_IMAGE_FINITE_RESTRICTED_I =
    DT(((("bag",198),
        [("bag",[29,125,126,154,160,192]),
         ("bool",[25,36,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%111%34%143%128%209$0@@%165%58%132%68$0@@$0@|@$0@@@%136%171%68@$0@@$0@@|@"])
  fun op BAG_ALL_DISTINCT_THM x = x
    val op BAG_ALL_DISTINCT_THM =
    DT(((("bag",200),
        [("arithmetic",[22,25,46,71,93,95,143,172,173,176,177,179,180]),
         ("bag",[0,2,5,8,199]),
         ("bool",
         [25,26,36,51,52,53,54,55,58,63,87,93,96,97,98,99,100,103,104,105,
          106,107,108,109,111,124,129]),("combin",[12]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%128%152%202@@%105%59%114%36%134%153%181$1@$0@@@%128%262%177$1@$0@@@%153$0@@@|@|@@"])
  fun op BAG_ALL_DISTINCT_BAG_MERGE x = x
    val op BAG_ALL_DISTINCT_BAG_MERGE =
    DT(((("bag",201),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180]),
         ("bag",[11,199]),
         ("bool",
         [25,36,43,52,54,56,58,63,73,93,96,101,104,105,107,108,109,112]),
         ("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%134%152%184$1@$0@@@%128%152$1@@%152$0@@@|@|@"])
  fun op BAG_ALL_DISTINCT_BAG_UNION x = x
    val op BAG_ALL_DISTINCT_BAG_UNION =
    DT(((("bag",202),
        [("arithmetic",[24,25,27,46,71,93,143,173,176,179,180]),
         ("bag",[2,5,6,113,115,199]),
         ("bool",[25,26,27,36,43,52,54,56,58,63,73,93,96,104,105,107]),
         ("numeral",[3,5,8]),("pred_set",[3,10,45,57]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%111%42%111%47%134%152%187$1@$0@@@%128%152$1@@%128%152$0@@%163$1@$0@@@@|@|@"])
  fun op BAG_ALL_DISTINCT_DIFF x = x
    val op BAG_ALL_DISTINCT_DIFF =
    DT(((("bag",203),
        [("arithmetic",[25,27,46,71,93,173,176,180,198]),("bag",[7,199]),
         ("bool",[25,26,36,47,48,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%111%42%111%47%143%152$1@@%152%159$1@$0@@@|@|@"])
  fun op BAG_ALL_DISTINCT_DELETE x = x
    val op BAG_ALL_DISTINCT_DELETE =
    DT(((("bag",204),
        [("arithmetic",[22,25,46,71,93,143,173,176,180,202]),
         ("bag",[0,2,5,7,8,199]),
         ("bool",[25,36,52,54,56,58,63,96,101,104,105,106,124,129,147]),
         ("combin",[12]),("numeral",[3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%152%34@@%104%58%143%176$0@%34@@%262%176$0@%159%34@%180$0@%202@@@@@|@@"])
  fun op BAG_ALL_DISTINCT_SET x = x
    val op BAG_ALL_DISTINCT_SET =
    DT(((("bag",205),
        [("arithmetic",[46,71,93,143,172,173,176,177,180]),
         ("bag",[2,5,101,113,199]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,60,63,64,93,96,101,104,105,
          108,109,129]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%152%34@@%136%185%232%34@@@%34@@"])
  fun op BAG_ALL_DISTINCT_BAG_OF_SET x = x
    val op BAG_ALL_DISTINCT_BAG_OF_SET =
    DT(((("bag",206),[("bag",[105,205]),("bool",[25,56])]),["DISK_THM"]),
       [read"%152%185%84@@"])
  fun op BAG_IN_BAG_DIFF_ALL_DISTINCT x = x
    val op BAG_IN_BAG_DIFF_ALL_DISTINCT =
    DT(((("bag",207),
        [("arithmetic",[24,25,46,71,93,143,173,179,180,202]),
         ("bag",[2,5,7,199]),
         ("bool",
         [25,26,36,47,48,52,53,54,58,63,93,96,101,104,105,107,124]),
         ("numeral",[3,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%42%111%47%104%58%143%152$2@@%134%176$0@%159$2@$1@@@%128%176$0@$2@@%262%176$0@$1@@@@@|@|@|@"])
  fun op SUB_BAG_ALL_DISTINCT x = x
    val op SUB_BAG_ALL_DISTINCT =
    DT(((("bag",208),
        [("arithmetic",[46,71,93,143,173,176,177,180]),("bag",[2,3,5,199]),
         ("bool",
         [25,26,30,36,47,48,52,53,54,58,63,71,93,94,96,101,104,105,124]),
         ("numeral",[0,3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%42%111%47%143%152$1@@%134%236$1@$0@@%104%93%143%176$0@$2@@%176$0@$1@@|@@@|@|@"])
  fun op BAG_ALL_DISTINCT_BAG_INN x = x
    val op BAG_ALL_DISTINCT_BAG_INN =
    DT(((("bag",209),
        [("arithmetic",[24,25,46,71,93,143,172,173,176,177,179,180]),
         ("bag",[2,5,199]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,96,101,104,105,
          107,124]),("numeral",[0,3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%34%122%79%104%58%143%152$2@@%134%179$0@$1@$2@@%251%142$1@%129@@%128%142$1@%230%192%250@@@@%176$0@$2@@@@@|@|@|@"])
  fun op BAG_ALL_DISTINCT_EXTENSION x = x
    val op BAG_ALL_DISTINCT_EXTENSION =
    DT(((("bag",210),
        [("bag",[24,209]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,93,95,101,105,124,145]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%111%42%111%47%143%128%152$1@@%152$0@@@%134%136$1@$0@@%104%93%134%176$0@$2@@%176$0@$1@@|@@@|@|@"])
  fun op NOT_BAG_IN x = x
    val op NOT_BAG_IN =
    DT(((("bag",211),
        [("arithmetic",[46,71,79,93,143,173,176,177,180]),
         ("bag",[2,5,8,31]),
         ("bool",
         [2,15,25,26,27,36,51,52,53,54,56,58,63,64,96,101,104,105,106,
          129]),("numeral",[3,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%34%104%93%134%142$1$0@@%129@@%262%176$0@$1@@@|@|@"])
  fun op BAG_UNION_EQ_LEFT x = x
    val op BAG_UNION_EQ_LEFT =
    DT(((("bag",212),
        [("arithmetic",[25,91]),("bag",[6]),
         ("bool",[25,36,53,56,58,60,105,124])]),["DISK_THM"]),
       [read"%111%34%111%56%111%57%143%136%187$2@$1@@%187$2@$0@@@%136$1@$0@@|@|@|@"])
  fun op BAG_IN_DIVIDES x = x
    val op BAG_IN_DIVIDES =
    DT(((("bag",213),
        [("arithmetic",[72]),("bag",[15,60,125,187]),
         ("bool",[25,26,27,53,54,58,63,83,105,124]),("divides",[3,14]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%38%122%97%122%29%143%128%212$2@@%178$1@$2@@@%253$1@%169$2@$0@@@|@|@|@"])
  fun op BAG_GEN_PROD_UNION_LEM x = x
    val op BAG_GEN_PROD_UNION_LEM =
    DT(((("bag",214),
        [("arithmetic",[73,76]),("bag",[25,36,125,129,183,187]),
         ("bool",[25,53,54,56,58,63,99,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%121%46%143%212$0@@%121%51%122%29%122%39%143%212$2@@%142%169%190$3@$2@@%123$1@$0@@@%123%169$3@$1@@%169$2@$0@@@@|@|@|@@|@"])
  fun op BAG_GEN_PROD_UNION x = x
    val op BAG_GEN_PROD_UNION =
    DT(((("bag",215),
        [("arithmetic",[173,177,180]),("bag",[214]),
         ("bool",[25,52,53,54,58,63,83,104]),("numeral",[3,5,8,17,40,41]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%46%121%51%143%128%212$1@@%212$0@@@%142%169%190$1@$0@@%230%192%250@@@@%123%169$1@%230%192%250@@@@%169$0@%230%192%250@@@@@@|@|@"])
  fun op BIG_BAG_UNION_EMPTY x = x
    val op BIG_BAG_UNION_EMPTY =
    DT(((("bag",217),
        [("bag",[0,216]),("bool",[25,36,56,60]),("combin",[12]),
         ("pred_set",[314])]),["DISK_THM"]), [read"%136%191%201@@%202@"])
  fun op BIG_BAG_UNION_INSERT x = x
    val op BIG_BAG_UNION_INSERT =
    DT(((("bag",218),
        [("arithmetic",[91]),("bag",[6,216]),
         ("bool",[25,36,53,56,58,60,63,105,124]),
         ("pred_set",[314])]),["DISK_THM"]),
       [read"%143%208%90@@%136%191%221%34@%90@@@%187%34@%191%196%90@%34@@@@@"])
  fun op BIG_BAG_UNION_DELETE x = x
    val op BIG_BAG_UNION_DELETE =
    DT(((("bag",219),
        [("bag",[7,216]),
         ("bool",[25,26,27,30,36,53,56,58,60,63,64,105,124,129,147]),
         ("pred_set",[318])]),["DISK_THM"]),
       [read"%143%208%90@@%136%191%196%90@%34@@@%194%219%34@%90@@%159%191%90@@%34@@%191%90@@@@"])
  fun op BIG_BAG_UNION_ITSET_BAG_UNION x = x
    val op BIG_BAG_UNION_ITSET_BAG_UNION =
    DT(((("bag",220),
        [("bag",[33,35,217,218]),("bool",[25,51,53,54,56,58,63,105,124]),
         ("pred_set",[104,186,309,312]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%118%90%143%208$0@@%136%191$0@@%227%187@$0@%202@@@|@"])
  fun op FINITE_BIG_BAG_UNION x = x
    val op FINITE_BIG_BAG_UNION =
    DT(((("bag",221),
        [("bag",[126,129,217,218]),
         ("bool",[25,26,27,36,51,53,56,58,63,105,124]),
         ("pred_set",[10,80,104,186])]),["DISK_THM"]),
       [read"%118%90%143%128%208$0@@%111%34%143%219$0@$1@@%209$0@@|@@@%209%191$0@@@|@"])
  fun op BAG_IN_BIG_BAG_UNION x = x
    val op BAG_IN_BIG_BAG_UNION =
    DT(((("bag",222),
        [("arithmetic",[22,46,67,71,93,143,147,172,173,176,177,180]),
         ("bag",[2,5,216]),
         ("bool",
         [25,26,27,36,51,52,53,54,58,63,71,72,92,96,101,104,105,106,124]),
         ("numeral",[3,8]),("pred_set",[22,97,107,185,314,316,321]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%143%208%12@@%134%176%58@%191%12@@@%148%34%128%176%58@$0@@%219$0@%12@@|@@@"])
  fun op BIG_BAG_UNION_EQ_EMPTY_BAG x = x
    val op BIG_BAG_UNION_EQ_EMPTY_BAG =
    DT(((("bag",223),
        [("bag",[36,217,218]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,76,78,80,81,93,
          94,96,105,124]),("pred_set",[10,80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%118%90%143%208$0@@%134%136%191$0@@%202@@%111%34%143%219$0@$1@@%136$0@%202@@|@@@|@"])
  fun op BIG_BAG_UNION_UNION x = x
    val op BIG_BAG_UNION_UNION =
    DT(((("bag",224),
        [("bag",[6,7,216]),("bool",[25,36,51,53,56,58,60,63,105,124]),
         ("pred_set",[319])]),["DISK_THM"]),
       [read"%143%128%208%86@@%208%88@@@%136%191%244%86@%88@@@%159%187%191%86@@%191%88@@@%191%222%86@%88@@@@@"])
  fun op BIG_BAG_UNION_EQ_ELEMENT x = x
    val op BIG_BAG_UNION_EQ_ELEMENT =
    DT(((("bag",225),
        [("arithmetic",[67,79,81,147]),("bag",[0,216]),
         ("bool",
         [13,25,26,27,30,36,47,48,50,51,52,53,54,56,58,60,63,71,93,94,96,
          98,102,105,106,124,129,147]),("combin",[12,19]),("marker",[6]),
         ("pred_set",[80,102,108,116,117,187,188,314,321]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%143%128%208%90@@%219%34@%90@@@%134%136%191%90@@%34@@%111%40%143%219$0@%90@@%251%136$0@%34@@%136$0@%202@@@|@@@"])
  fun op BAG_NOT_LESS_EMPTY x = x
    val op BAG_NOT_LESS_EMPTY =
    DT(((("bag",227),
        [("bag",[27,36,126,226]),
         ("bool",[25,26,27,37,51,54,58,63])]),["DISK_THM"]),
       [read"%262%256%81@%34@%202@@"])
  fun op NOT_mlt_EMPTY x = x
    val op NOT_mlt_EMPTY =
    DT(((("bag",228),
        [("bag",[227]),("bool",[25,26,27,37,51,52,54,169]),
         ("relation",[80])]),["DISK_THM"]),
       [read"%262%241%256%16@@%34@%202@@"])
  fun op BAG_LESS_ADD x = x
    val op BAG_LESS_ADD =
    DT(((("bag",229),
        [("arithmetic",
         [22,24,25,27,46,62,71,91,93,128,143,172,173,177,180,269]),
         ("bag",[0,2,5,6,7,8,15,20,33,34,35,48,126,129,226]),
         ("bool",
         [2,15,25,26,27,30,36,43,51,52,53,54,55,56,58,60,63,64,73,74,75,76,
          80,81,93,96,97,98,99,100,101,104,105,106,124,129,143,169]),
         ("combin",[12]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%256%81@%9@%187%8@%180%26@%202@@@@%251%148%7%128%256%81@$0@%8@@%136%9@%187$0@%180%26@%202@@@@|@@%148%6%128%104%33%143%176$0@$1@@%81$0@%26@@|@@%136%9@%187%8@$0@@@|@@@"])
  fun op mlt1_all_accessible x = x
    val op mlt1_all_accessible =
    DT(((("bag",230),
        [("arithmetic",[22,25,26,27,91]),
         ("bag",[0,6,8,15,36,60,124,126,129,226,227,229]),
         ("bool",
         [2,25,26,27,30,36,51,53,54,56,58,60,63,64,83,99,105,124,129,147]),
         ("combin",[12]),("relation",[101,129,132]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%245%16@@%111%7%248%256%16@@$0@|@@"])
  fun op WF_mlt1 x = x
    val op WF_mlt1 =
    DT(((("bag",231),
        [("bag",[230]),("bool",[2,15,25,26,53,54,58,63,75,83,84]),
         ("relation",[133]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%143%245%16@@%246%256%16@@@"])
  fun op TC_mlt1_FINITE_BAG x = x
    val op TC_mlt1_FINITE_BAG =
    DT(((("bag",232),
        [("bag",[226]),("bool",[25,51,53,58,63,105,124]),
         ("relation",[42])]),["DISK_THM"]),
       [read"%111%42%111%47%143%241%256%16@@$1@$0@@%128%209$1@@%209$0@@@|@|@"])
  fun op TC_mlt1_UNION2_I x = x
    val op TC_mlt1_UNION2_I =
    DT(((("bag",233),
        [("arithmetic",[24,25,26,27,46,71,93,172,173,177,180]),
         ("bag",[0,6,27,33,35,36,53,57,60,125,126,129,226]),
         ("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,60,63,74,75,83,93,96,99,
          104,105,107,124]),("combin",[12]),("numeral",[3,8]),
         ("relation",[16,38]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%47%111%42%143%128%209$1@@%128%209$0@@%262%136$1@%202@@@@@%241%256%16@@$0@%187$0@$1@@@|@|@"])
  fun op TC_mlt1_UNION1_I x = x
    val op TC_mlt1_UNION1_I =
    DT(((("bag",234),
        [("bag",[33,233]),("bool",[25,53,54,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%47%111%42%143%128%209$1@@%128%209$0@@%262%136$0@%202@@@@@%241%256%16@@$1@%187$0@$1@@@|@|@"])
  fun op mlt_NOT_REFL x = x
    val op mlt_NOT_REFL =
    DT(((("bag",235),
        [("bag",[231]),("bool",[25,53,54,55,63]),("relation",[104,110]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%143%245%16@@%262%241%256%16@@%28@%28@@@"])
  fun op mlt_INSERT_CANCEL_I x = x
    val op mlt_INSERT_CANCEL_I =
    DT(((("bag",236),
        [("bag",[25,29,36,126,226]),
         ("bool",[25,36,51,53,56,58,63,105,124]),
         ("relation",[48])]),["DISK_THM"]),
       [read"%111%28%111%34%143%241%256%16@@$1@$0@@%241%256%16@@%180%58@$1@@%180%58@$0@@@|@|@"])
  fun op mlt1_INSERT_CANCEL x = x
    val op mlt1_INSERT_CANCEL =
    DT(((("bag",237),
        [("bag",[15,20,25,28,29,30,31,36,60,126,129,226]),
         ("bool",
         [2,15,25,26,30,36,51,52,53,54,55,56,58,63,99,105,106,124,169]),
         ("relation",[104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%245%16@@%134%256%16@%180%58@%28@@%180%58@%34@@@%256%16@%28@%34@@@"])
  fun op dominates_EMPTY x = x
    val op dominates_EMPTY =
    DT(((("bag",239),
        [("bag",[238]),("bool",[25,26,27,36,53,58,105,124]),
         ("pred_set",[10])]),["DISK_THM"]), [read"%255%17@%200@%35@"])
  fun op dominates_SUBSET x = x
    val op dominates_SUBSET =
    DT(((("bag",240),
        [("arithmetic",[15,24,25,28,46,59,71,93,110,173,180,334,335]),
         ("bag",[238]),
         ("bool",
         [2,6,14,15,25,26,27,30,36,51,52,53,54,55,56,58,63,72,75,83,84,86,
          87,93,95,96,99,100,101,104,105,124,129,145,147]),("marker",[6]),
         ("num",[9]),("numeral",[3,8]),("pair",[3]),
         ("pred_set",[3,6,10,18,23,80,83,90,187,192,208,214]),
         ("prim_rec",[6,7]),("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%128%261%16@@%128%207%22@@%128%254%16@%22@%20@@%128%235%20@%22@@%262%135%20@%200@@@@@@@%146%93%128%217$0@%20@@%16$0@$0@@|@@"])
  fun op mlt_dominates_thm1 x = x
    val op mlt_dominates_thm1 =
    DT(((("bag",241),
        [("arithmetic",
         [22,24,25,26,27,46,62,71,91,93,95,143,147,172,173,176,177,180,195,
          197,269]),
         ("bag",
         [0,2,3,5,6,7,8,15,20,27,33,34,48,60,63,80,93,113,125,126,127,129,
          130,139,142,145,147,226,238]),
         ("bool",
         [2,15,25,26,27,30,36,43,51,52,53,54,55,56,58,60,63,64,73,75,83,84,
          87,93,95,96,97,98,99,100,101,102,104,105,106,108,109,111,124,129,
          143,145,147,152]),("combin",[12]),("numeral",[3,5,8]),
         ("relation",[0,16,38,46]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%261%16@@%111%42%111%47%134%241%256%16@@$1@$0@@%128%209$1@@%128%209$0@@%148%96%148%102%128%262%136$1@%202@@@%128%236$1@$2@@%128%136$3@%187%159$2@$1@@$0@@@%254%16@%232$0@@%232$1@@@@@|@|@@@@|@|@@"])
  fun op dominates_DIFF x = x
    val op dominates_DIFF =
    DT(((("bag",242),
        [("bag",[238]),
         ("bool",
         [2,15,25,26,27,30,51,53,54,55,58,63,75,84,96,99,100,105,124]),
         ("pred_set",[22,67,69,80,97,186]),("relation",[0,104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%128%245%16@@%128%261%16@@%128%254%16@%95@%101@@%128%207%73@@%128%235%73@%95@@%235%73@%101@@@@@@@%254%16@%197%95@%73@@%197%101@%73@@@"])
  fun op BAG_INSERT_SUB_BAG_E x = x
    val op BAG_INSERT_SUB_BAG_E =
    DT(((("bag",243),
        [("arithmetic",[24,25,27,46,71,93,143,173,176,180]),
         ("bag",[2,5,8,63]),
         ("bool",
         [25,26,27,30,36,53,54,56,58,63,64,96,101,104,105,124,129,147]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%143%236%180%58@%34@@%56@@%128%176%58@%56@@%236%34@%56@@@"])
  fun op bdominates_BAG_DIFF x = x
    val op bdominates_BAG_DIFF =
    DT(((("bag",244),
        [("arithmetic",
         [22,24,25,27,46,71,93,143,147,173,176,180,195,202,269]),
         ("bag",[0,2,5,7,8,15,60,63,74,79,113,125,238,243]),
         ("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,60,63,64,74,75,84,96,99,
          100,101,104,105,108,109,124,129,147]),("combin",[12]),
         ("numeral",[3,5,6,8]),("relation",[0,104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%128%245%16@@%128%261%16@@%128%254%16@%232%96@@%232%102@@@%128%209%74@@%128%236%74@%96@@%236%74@%102@@@@@@@%254%16@%232%159%96@%74@@@%232%159%102@%74@@@@"])
  fun op BAG_INTER_SUB_BAG x = x
    val op BAG_INTER_SUB_BAG =
    DT(((("bag",245),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180]),
         ("bag",[10,63]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,63,64,96,101,104,105,108,109]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%128%236%183%42@%47@@%42@@%236%183%42@%47@@%47@@"])
  fun op BAG_INTER_FINITE x = x
    val op BAG_INTER_FINITE =
    DT(((("bag",246),
        [("bag",[130,245]),("bool",[25,53,54,58,63,83]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%143%251%209%42@@%209%47@@@%209%183%42@%47@@@"])
  fun op mlt_dominates_thm2 x = x
    val op mlt_dominates_thm2 =
    DT(((("bag",247),
        [("arithmetic",
         [24,25,27,41,46,59,62,63,71,93,130,143,147,172,173,176,177,180,
          202,269]),
         ("bag",
         [0,2,3,5,6,7,10,63,67,74,97,106,113,114,115,129,130,151,240,241,
          244,246]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,60,63,64,72,83,92,93,96,
          99,101,104,105,108,109,124,129,147]),("combin",[12]),
         ("marker",[6]),("numeral",[3,5,6,8]),("pred_set",[3,10,45,57]),
         ("relation",[104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%128%245%16@@%261%16@@@%111%42%111%47%134%241%256%16@@$1@$0@@%128%209$1@@%128%209$0@@%148%96%148%102%128%262%136$1@%202@@@%128%236$1@$2@@%128%163$1@$0@@%128%136$3@%187%159$2@$1@@$0@@@%254%16@%232$0@@%232$1@@@@@@|@|@@@@|@|@@"])
  fun op BAG_DIFF_INSERT_SUB_BAG x = x
    val op BAG_DIFF_INSERT_SUB_BAG =
    DT(((("bag",248),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,269]),
         ("bag",[7,8,63]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,56,58,60,63,64,93,96,101,104,105,124,
          129,147]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%143%236%56@%34@@%136%159%180%58@%34@@%56@@%180%58@%159%34@%56@@@@"])
  fun op mlt_INSERT_CANCEL x = x
    val op mlt_INSERT_CANCEL =
    DT(((("bag",249),
        [("arithmetic",[24,25,27,46,71,93,130,143,173,176,177,180]),
         ("bag",[2,5,7,8,15,20,25,28,29,63,91,118,126,247,248]),
         ("bool",
         [2,15,25,26,27,30,36,48,51,52,53,54,55,56,58,63,64,75,84,96,99,
          101,104,105,124,129,147]),("numeral",[3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%128%261%16@@%245%16@@@%134%241%256%16@@%180%58@%28@@%180%58@%34@@@%241%256%16@@%28@%34@@@"])
  fun op mlt_UNION_RCANCEL_I x = x
    val op mlt_UNION_RCANCEL_I =
    DT(((("bag",250),
        [("bag",[25,36,125,236]),
         ("bool",[25,36,51,53,54,58,63,83,105,124]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%143%128%241%256%16@@%28@%34@@%209%56@@@%241%256%16@@%187%28@%56@@%187%34@%56@@@"])
  fun op mlt_UNION_RCANCEL x = x
    val op mlt_UNION_RCANCEL =
    DT(((("bag",251),
        [("bag",[25,36,125,129,232,249]),
         ("bool",
         [25,26,27,30,36,51,53,54,56,58,63,105,124])]),["DISK_THM"]),
       [read"%143%128%245%16@@%261%16@@@%134%241%256%16@@%187%28@%56@@%187%34@%56@@@%128%241%256%16@@%28@%34@@%209%56@@@@"])
  fun op mlt_UNION_LCANCEL_I x = x
    val op mlt_UNION_LCANCEL_I =
    DT(((("bag",252),[("bag",[33,250])]),["DISK_THM"]),
       [read"%143%128%241%256%16@@%28@%34@@%209%56@@@%241%256%16@@%187%56@%28@@%187%56@%34@@@"])
  fun op mlt_UNION_LCANCEL x = x
    val op mlt_UNION_LCANCEL =
    DT(((("bag",253),[("bag",[33,251])]),["DISK_THM"]),
       [read"%143%128%245%16@@%261%16@@@%134%241%256%16@@%187%56@%28@@%187%56@%34@@@%128%241%256%16@@%28@%34@@%209%56@@@@"])
  fun op mlt_UNION_CANCEL_EQN x = x
    val op mlt_UNION_CANCEL_EQN =
    DT(((("bag",254),
        [("bag",[33,36,126,129,231,232,233]),
         ("bool",[25,26,27,51,53,54,55,58,63,99,100,105,124]),
         ("relation",[104,110]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%143%245%16@@%128%134%241%256%16@@%42@%187%42@%47@@@%128%209%42@@%128%209%47@@%262%136%47@%202@@@@@@%134%241%256%16@@%42@%187%47@%42@@@%128%209%42@@%128%209%47@@%262%136%47@%202@@@@@@@"])
  fun op mlt_UNION_EMPTY_EQN x = x
    val op mlt_UNION_EMPTY_EQN =
    DT(((("bag",255),
        [("bag",[33,36,126,129,231,232,233,254]),
         ("bool",[25,26,27,51,53,54,55,56,58,63,99,100,105,124]),
         ("relation",[104,110]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%240"])
  fun op SUB_BAG_SING x = x
    val op SUB_BAG_SING =
    DT(((("bag",256),
        [("arithmetic",[22,25,46,71,93,95,147,173,176,177,180]),
         ("bag",[0,8,63]),
         ("bool",
         [25,26,27,30,36,52,53,54,56,58,60,63,64,93,96,101,104,105,106,124,
          129,147]),("combin",[12]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%134%236%34@%180%58@%202@@@%251%136%34@%202@@%136%34@%180%58@%202@@@@"])
  fun op SUB_BAG_DIFF_simple x = x
    val op SUB_BAG_DIFF_simple =
    DT(((("bag",257),
        [("bag",[3,97]),("bool",[25,36,53,63])]),["DISK_THM"]),
       [read"%236%159%34@%56@@%34@"])
  fun op mltLT_SING0 x = x
    val op mltLT_SING0 =
    DT(((("bag",258),
        [("arithmetic",
         [22,24,25,26,27,33,41,46,59,62,63,71,93,95,143,147,172,173,176,
          177,180,206,269]),
         ("bag",
         [0,2,3,5,6,7,8,9,15,27,36,60,63,74,76,97,104,113,118,126,238,241,
          247]),
         ("bool",
         [2,15,25,26,27,30,36,43,51,52,53,54,55,56,58,60,63,64,75,84,93,96,
          99,101,104,105,106,107,124,129,145,147]),("combin",[12]),
         ("numeral",[0,3,5,8]),("pred_set",[10]),("prim_rec",[42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%134%242%257%130@@%182%129@%206@@%38@@%128%212%38@@%128%262%140%38@%182%129@%206@@@@%262%140%38@%206@@@@@"])
  fun op BAG_SIZE_EMPTY x = x
    val op BAG_SIZE_EMPTY =
    DT(((("bag",260),
        [("bag",[122,167,169,172,173,259]),
         ("bool",
         [14,15,25,26,27,36,47,48,53,54,55,56,58,63,64,71,93,94,96,100,105,
          109,124,129]),("combin",[3,5,19]),("pair",[5,8,16,49]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%142%252%67@%202@@%129@"])
  fun op BAG_SIZE_INSERT x = x
    val op BAG_SIZE_INSERT =
    DT(((("bag",261),
        [("arithmetic",[26,27,91]),("bag",[179,259]),
         ("bool",[25,36,51,56,58,105,124]),
         ("numeral",[3,5])]),["DISK_THM"]),
       [read"%143%209%34@@%142%252%67@%180%58@%34@@@%124%124%230%192%250@@@%67%58@@@%252%67@%34@@@@"])
  end
  val _ = DB.bindl "bag"
  [("EMPTY_BAG",EMPTY_BAG,DB.Def), ("BAG_INN",BAG_INN,DB.Def),
   ("SUB_BAG",SUB_BAG,DB.Def), ("PSUB_BAG",PSUB_BAG,DB.Def),
   ("BAG_IN",BAG_IN,DB.Def), ("BAG_UNION",BAG_UNION,DB.Def),
   ("BAG_DIFF",BAG_DIFF,DB.Def), ("BAG_INSERT",BAG_INSERT,DB.Def),
   ("BAG_INTER",BAG_INTER,DB.Def), ("BAG_MERGE",BAG_MERGE,DB.Def),
   ("BAG_DELETE",BAG_DELETE,DB.Def), ("SING_BAG",SING_BAG,DB.Def),
   ("EL_BAG",EL_BAG,DB.Def), ("SET_OF_BAG",SET_OF_BAG,DB.Def),
   ("BAG_OF_SET",BAG_OF_SET,DB.Def), ("BAG_DISJOINT",BAG_DISJOINT,DB.Def),
   ("FINITE_BAG",FINITE_BAG,DB.Def),
   ("BAG_CARD_RELn",BAG_CARD_RELn,DB.Def), ("BAG_CARD",BAG_CARD,DB.Def),
   ("BAG_FILTER_DEF",BAG_FILTER_DEF,DB.Def),
   ("BAG_IMAGE_DEF",BAG_IMAGE_DEF,DB.Def),
   ("BAG_CHOICE_DEF",BAG_CHOICE_DEF,DB.Def),
   ("BAG_REST_DEF",BAG_REST_DEF,DB.Def),
   ("ITBAG_tupled_primitive_def",ITBAG_tupled_primitive_def,DB.Def),
   ("ITBAG_curried_def",ITBAG_curried_def,DB.Def),
   ("BAG_GEN_SUM_def",BAG_GEN_SUM_def,DB.Def),
   ("BAG_GEN_PROD_def",BAG_GEN_PROD_def,DB.Def),
   ("BAG_EVERY",BAG_EVERY,DB.Def),
   ("BAG_ALL_DISTINCT",BAG_ALL_DISTINCT,DB.Def),
   ("BIG_BAG_UNION_def",BIG_BAG_UNION_def,DB.Def),
   ("mlt1_def",mlt1_def,DB.Def), ("dominates_def",dominates_def,DB.Def),
   ("bag_size_def",bag_size_def,DB.Def),
   ("EMPTY_BAG_alt",EMPTY_BAG_alt,DB.Thm), ("BAG_cases",BAG_cases,DB.Thm),
   ("BAG_MERGE_IDEM",BAG_MERGE_IDEM,DB.Thm),
   ("BAG_INN_0",BAG_INN_0,DB.Thm), ("BAG_INN_LESS",BAG_INN_LESS,DB.Thm),
   ("BAG_IN_BAG_INSERT",BAG_IN_BAG_INSERT,DB.Thm),
   ("BAG_INN_BAG_INSERT",BAG_INN_BAG_INSERT,DB.Thm),
   ("BAG_INN_BAG_INSERT_STRONG",BAG_INN_BAG_INSERT_STRONG,DB.Thm),
   ("BAG_UNION_EQ_LCANCEL1",BAG_UNION_EQ_LCANCEL1,DB.Thm),
   ("BAG_UNION_EQ_RCANCEL1",BAG_UNION_EQ_RCANCEL1,DB.Thm),
   ("BAG_IN_BAG_UNION",BAG_IN_BAG_UNION,DB.Thm),
   ("BAG_INN_BAG_UNION",BAG_INN_BAG_UNION,DB.Thm),
   ("BAG_INN_BAG_MERGE",BAG_INN_BAG_MERGE,DB.Thm),
   ("BAG_IN_BAG_MERGE",BAG_IN_BAG_MERGE,DB.Thm),
   ("BAG_EXTENSION",BAG_EXTENSION,DB.Thm),
   ("BAG_UNION_INSERT",BAG_UNION_INSERT,DB.Thm),
   ("BAG_INSERT_DIFF",BAG_INSERT_DIFF,DB.Thm),
   ("BAG_INSERT_NOT_EMPTY",BAG_INSERT_NOT_EMPTY,DB.Thm),
   ("BAG_INSERT_ONE_ONE",BAG_INSERT_ONE_ONE,DB.Thm),
   ("C_BAG_INSERT_ONE_ONE",C_BAG_INSERT_ONE_ONE,DB.Thm),
   ("BAG_INSERT_commutes",BAG_INSERT_commutes,DB.Thm),
   ("BAG_DECOMPOSE",BAG_DECOMPOSE,DB.Thm),
   ("BAG_UNION_LEFT_CANCEL",BAG_UNION_LEFT_CANCEL,DB.Thm),
   ("COMM_BAG_UNION",COMM_BAG_UNION,DB.Thm),
   ("BAG_UNION_RIGHT_CANCEL",BAG_UNION_RIGHT_CANCEL,DB.Thm),
   ("ASSOC_BAG_UNION",ASSOC_BAG_UNION,DB.Thm),
   ("BAG_UNION_EMPTY",BAG_UNION_EMPTY,DB.Thm),
   ("BAG_DELETE_EMPTY",BAG_DELETE_EMPTY,DB.Thm),
   ("BAG_DELETE_commutes",BAG_DELETE_commutes,DB.Thm),
   ("BAG_DELETE_11",BAG_DELETE_11,DB.Thm),
   ("BAG_INN_BAG_DELETE",BAG_INN_BAG_DELETE,DB.Thm),
   ("BAG_IN_BAG_DELETE",BAG_IN_BAG_DELETE,DB.Thm),
   ("BAG_DELETE_INSERT",BAG_DELETE_INSERT,DB.Thm),
   ("BAG_DELETE_BAG_IN_up",BAG_DELETE_BAG_IN_up,DB.Thm),
   ("BAG_DELETE_BAG_IN_down",BAG_DELETE_BAG_IN_down,DB.Thm),
   ("BAG_DELETE_BAG_IN",BAG_DELETE_BAG_IN,DB.Thm),
   ("BAG_DELETE_concrete",BAG_DELETE_concrete,DB.Thm),
   ("BAG_UNION_DIFF_eliminate",BAG_UNION_DIFF_eliminate,DB.Thm),
   ("BAG_INSERT_EQUAL",BAG_INSERT_EQUAL,DB.Thm),
   ("BAG_DELETE_TWICE",BAG_DELETE_TWICE,DB.Thm),
   ("SING_BAG_THM",SING_BAG_THM,DB.Thm), ("EL_BAG_11",EL_BAG_11,DB.Thm),
   ("EL_BAG_INSERT_squeeze",EL_BAG_INSERT_squeeze,DB.Thm),
   ("SING_EL_BAG",SING_EL_BAG,DB.Thm),
   ("BAG_INSERT_UNION",BAG_INSERT_UNION,DB.Thm),
   ("BAG_INSERT_EQ_UNION",BAG_INSERT_EQ_UNION,DB.Thm),
   ("BAG_DELETE_SING",BAG_DELETE_SING,DB.Thm),
   ("NOT_IN_EMPTY_BAG",NOT_IN_EMPTY_BAG,DB.Thm),
   ("BAG_INN_EMPTY_BAG",BAG_INN_EMPTY_BAG,DB.Thm),
   ("MEMBER_NOT_EMPTY",MEMBER_NOT_EMPTY,DB.Thm),
   ("SUB_BAG_LEQ",SUB_BAG_LEQ,DB.Thm),
   ("SUB_BAG_EMPTY",SUB_BAG_EMPTY,DB.Thm),
   ("SUB_BAG_REFL",SUB_BAG_REFL,DB.Thm),
   ("PSUB_BAG_IRREFL",PSUB_BAG_IRREFL,DB.Thm),
   ("SUB_BAG_ANTISYM",SUB_BAG_ANTISYM,DB.Thm),
   ("PSUB_BAG_ANTISYM",PSUB_BAG_ANTISYM,DB.Thm),
   ("SUB_BAG_TRANS",SUB_BAG_TRANS,DB.Thm),
   ("PSUB_BAG_TRANS",PSUB_BAG_TRANS,DB.Thm),
   ("PSUB_BAG_SUB_BAG",PSUB_BAG_SUB_BAG,DB.Thm),
   ("PSUB_BAG_NOT_EQ",PSUB_BAG_NOT_EQ,DB.Thm),
   ("BAG_DIFF_EMPTY",BAG_DIFF_EMPTY,DB.Thm),
   ("BAG_DIFF_EMPTY_simple",BAG_DIFF_EMPTY_simple,DB.Thm),
   ("BAG_DIFF_EQ_EMPTY",BAG_DIFF_EQ_EMPTY,DB.Thm),
   ("BAG_DIFF_INSERT_same",BAG_DIFF_INSERT_same,DB.Thm),
   ("BAG_DIFF_INSERT",BAG_DIFF_INSERT,DB.Thm),
   ("NOT_IN_BAG_DIFF",NOT_IN_BAG_DIFF,DB.Thm),
   ("BAG_IN_DIFF_I",BAG_IN_DIFF_I,DB.Thm),
   ("BAG_IN_DIFF_E",BAG_IN_DIFF_E,DB.Thm),
   ("BAG_UNION_DIFF",BAG_UNION_DIFF,DB.Thm),
   ("BAG_DIFF_2L",BAG_DIFF_2L,DB.Thm), ("BAG_DIFF_2R",BAG_DIFF_2R,DB.Thm),
   ("SUB_BAG_BAG_DIFF",SUB_BAG_BAG_DIFF,DB.Thm),
   ("BAG_DIFF_UNION_eliminate",BAG_DIFF_UNION_eliminate,DB.Thm),
   ("SUB_BAG_UNION_eliminate",SUB_BAG_UNION_eliminate,DB.Thm),
   ("move_BAG_UNION_over_eq",move_BAG_UNION_over_eq,DB.Thm),
   ("SUB_BAG_UNION",SUB_BAG_UNION,DB.Thm),
   ("SUB_BAG_EL_BAG",SUB_BAG_EL_BAG,DB.Thm),
   ("SUB_BAG_INSERT",SUB_BAG_INSERT,DB.Thm),
   ("SUB_BAG_INSERT_I",SUB_BAG_INSERT_I,DB.Thm),
   ("NOT_IN_SUB_BAG_INSERT",NOT_IN_SUB_BAG_INSERT,DB.Thm),
   ("SUB_BAG_BAG_IN",SUB_BAG_BAG_IN,DB.Thm),
   ("SUB_BAG_EXISTS",SUB_BAG_EXISTS,DB.Thm),
   ("SUB_BAG_UNION_DIFF",SUB_BAG_UNION_DIFF,DB.Thm),
   ("SUB_BAG_UNION_down",SUB_BAG_UNION_down,DB.Thm),
   ("SUB_BAG_DIFF",SUB_BAG_DIFF,DB.Thm),
   ("SUB_BAG_PSUB_BAG",SUB_BAG_PSUB_BAG,DB.Thm),
   ("BAG_DELETE_PSUB_BAG",BAG_DELETE_PSUB_BAG,DB.Thm),
   ("SET_OF_EMPTY",SET_OF_EMPTY,DB.Thm),
   ("BAG_IN_BAG_OF_SET",BAG_IN_BAG_OF_SET,DB.Thm),
   ("BAG_OF_EMPTY",BAG_OF_EMPTY,DB.Thm), ("SET_BAG_I",SET_BAG_I,DB.Thm),
   ("SUB_BAG_SET",SUB_BAG_SET,DB.Thm),
   ("SET_OF_BAG_UNION",SET_OF_BAG_UNION,DB.Thm),
   ("SET_OF_BAG_MERGE",SET_OF_BAG_MERGE,DB.Thm),
   ("SET_OF_BAG_INSERT",SET_OF_BAG_INSERT,DB.Thm),
   ("SET_OF_EL_BAG",SET_OF_EL_BAG,DB.Thm),
   ("SET_OF_BAG_DIFF_SUBSET_down",SET_OF_BAG_DIFF_SUBSET_down,DB.Thm),
   ("SET_OF_BAG_DIFF_SUBSET_up",SET_OF_BAG_DIFF_SUBSET_up,DB.Thm),
   ("IN_SET_OF_BAG",IN_SET_OF_BAG,DB.Thm),
   ("SET_OF_BAG_EQ_EMPTY",SET_OF_BAG_EQ_EMPTY,DB.Thm),
   ("BAG_DISJOINT_EMPTY",BAG_DISJOINT_EMPTY,DB.Thm),
   ("BAG_DISJOINT_DIFF",BAG_DISJOINT_DIFF,DB.Thm),
   ("BAG_DISJOINT_BAG_IN",BAG_DISJOINT_BAG_IN,DB.Thm),
   ("BAG_DISJOINT_BAG_INSERT",BAG_DISJOINT_BAG_INSERT,DB.Thm),
   ("BAG_DISJOINT_BAG_UNION",BAG_DISJOINT_BAG_UNION,DB.Thm),
   ("FINITE_EMPTY_BAG",FINITE_EMPTY_BAG,DB.Thm),
   ("FINITE_BAG_INSERT",FINITE_BAG_INSERT,DB.Thm),
   ("FINITE_BAG_INDUCT",FINITE_BAG_INDUCT,DB.Thm),
   ("STRONG_FINITE_BAG_INDUCT",STRONG_FINITE_BAG_INDUCT,DB.Thm),
   ("FINITE_BAG_THM",FINITE_BAG_THM,DB.Thm),
   ("FINITE_BAG_DIFF",FINITE_BAG_DIFF,DB.Thm),
   ("FINITE_BAG_DIFF_dual",FINITE_BAG_DIFF_dual,DB.Thm),
   ("FINITE_BAG_UNION",FINITE_BAG_UNION,DB.Thm),
   ("FINITE_SUB_BAG",FINITE_SUB_BAG,DB.Thm),
   ("BAG_CARD_EMPTY",BAG_CARD_EMPTY,DB.Thm), ("BCARD_0",BCARD_0,DB.Thm),
   ("BAG_CARD_THM",BAG_CARD_THM,DB.Thm),
   ("BAG_CARD_UNION",BAG_CARD_UNION,DB.Thm),
   ("BCARD_SUC",BCARD_SUC,DB.Thm),
   ("BAG_CARD_BAG_INN",BAG_CARD_BAG_INN,DB.Thm),
   ("SUB_BAG_DIFF_EQ",SUB_BAG_DIFF_EQ,DB.Thm),
   ("SUB_BAG_CARD",SUB_BAG_CARD,DB.Thm),
   ("BAG_CARD_DIFF",BAG_CARD_DIFF,DB.Thm),
   ("BAG_FILTER_EMPTY",BAG_FILTER_EMPTY,DB.Thm),
   ("BAG_FILTER_BAG_INSERT",BAG_FILTER_BAG_INSERT,DB.Thm),
   ("FINITE_BAG_FILTER",FINITE_BAG_FILTER,DB.Thm),
   ("BAG_INN_BAG_FILTER",BAG_INN_BAG_FILTER,DB.Thm),
   ("BAG_IN_BAG_FILTER",BAG_IN_BAG_FILTER,DB.Thm),
   ("BAG_FILTER_FILTER",BAG_FILTER_FILTER,DB.Thm),
   ("BAG_FILTER_SUB_BAG",BAG_FILTER_SUB_BAG,DB.Thm),
   ("SET_OF_BAG_EQ_INSERT",SET_OF_BAG_EQ_INSERT,DB.Thm),
   ("FINITE_SET_OF_BAG",FINITE_SET_OF_BAG,DB.Thm),
   ("BAG_IMAGE_EMPTY",BAG_IMAGE_EMPTY,DB.Thm),
   ("BAG_IMAGE_FINITE_INSERT",BAG_IMAGE_FINITE_INSERT,DB.Thm),
   ("BAG_IMAGE_FINITE_UNION",BAG_IMAGE_FINITE_UNION,DB.Thm),
   ("BAG_IMAGE_FINITE",BAG_IMAGE_FINITE,DB.Thm),
   ("BAG_IMAGE_COMPOSE",BAG_IMAGE_COMPOSE,DB.Thm),
   ("BAG_IMAGE_FINITE_I",BAG_IMAGE_FINITE_I,DB.Thm),
   ("BAG_IN_FINITE_BAG_IMAGE",BAG_IN_FINITE_BAG_IMAGE,DB.Thm),
   ("BAG_IMAGE_EQ_EMPTY",BAG_IMAGE_EQ_EMPTY,DB.Thm),
   ("BAG_INSERT_CHOICE_REST",BAG_INSERT_CHOICE_REST,DB.Thm),
   ("BAG_CHOICE_SING",BAG_CHOICE_SING,DB.Thm),
   ("BAG_REST_SING",BAG_REST_SING,DB.Thm),
   ("SUB_BAG_REST",SUB_BAG_REST,DB.Thm),
   ("PSUB_BAG_REST",PSUB_BAG_REST,DB.Thm),
   ("SUB_BAG_UNION_MONO",SUB_BAG_UNION_MONO,DB.Thm),
   ("PSUB_BAG_CARD",PSUB_BAG_CARD,DB.Thm),
   ("EL_BAG_BAG_INSERT",EL_BAG_BAG_INSERT,DB.Thm),
   ("EL_BAG_SUB_BAG",EL_BAG_SUB_BAG,DB.Thm),
   ("ITBAG_IND",ITBAG_IND,DB.Thm), ("ITBAG_THM",ITBAG_THM,DB.Thm),
   ("ITBAG_EMPTY",ITBAG_EMPTY,DB.Thm),
   ("ITBAG_INSERT",ITBAG_INSERT,DB.Thm),
   ("COMMUTING_ITBAG_INSERT",COMMUTING_ITBAG_INSERT,DB.Thm),
   ("COMMUTING_ITBAG_RECURSES",COMMUTING_ITBAG_RECURSES,DB.Thm),
   ("BAG_GEN_SUM_EMPTY",BAG_GEN_SUM_EMPTY,DB.Thm),
   ("BAG_GEN_PROD_EMPTY",BAG_GEN_PROD_EMPTY,DB.Thm),
   ("BAG_GEN_SUM_TAILREC",BAG_GEN_SUM_TAILREC,DB.Thm),
   ("BAG_GEN_SUM_REC",BAG_GEN_SUM_REC,DB.Thm),
   ("BAG_GEN_PROD_TAILREC",BAG_GEN_PROD_TAILREC,DB.Thm),
   ("BAG_GEN_PROD_REC",BAG_GEN_PROD_REC,DB.Thm),
   ("BAG_GEN_PROD_EQ_1",BAG_GEN_PROD_EQ_1,DB.Thm),
   ("BAG_GEN_PROD_ALL_ONES",BAG_GEN_PROD_ALL_ONES,DB.Thm),
   ("BAG_GEN_PROD_POSITIVE",BAG_GEN_PROD_POSITIVE,DB.Thm),
   ("BAG_EVERY_THM",BAG_EVERY_THM,DB.Thm),
   ("BAG_EVERY_UNION",BAG_EVERY_UNION,DB.Thm),
   ("BAG_EVERY_MERGE",BAG_EVERY_MERGE,DB.Thm),
   ("BAG_EVERY_SET",BAG_EVERY_SET,DB.Thm),
   ("BAG_FILTER_EQ_EMPTY",BAG_FILTER_EQ_EMPTY,DB.Thm),
   ("SET_OF_BAG_IMAGE",SET_OF_BAG_IMAGE,DB.Thm),
   ("BAG_IMAGE_FINITE_RESTRICTED_I",BAG_IMAGE_FINITE_RESTRICTED_I,DB.Thm),
   ("BAG_ALL_DISTINCT_THM",BAG_ALL_DISTINCT_THM,DB.Thm),
   ("BAG_ALL_DISTINCT_BAG_MERGE",BAG_ALL_DISTINCT_BAG_MERGE,DB.Thm),
   ("BAG_ALL_DISTINCT_BAG_UNION",BAG_ALL_DISTINCT_BAG_UNION,DB.Thm),
   ("BAG_ALL_DISTINCT_DIFF",BAG_ALL_DISTINCT_DIFF,DB.Thm),
   ("BAG_ALL_DISTINCT_DELETE",BAG_ALL_DISTINCT_DELETE,DB.Thm),
   ("BAG_ALL_DISTINCT_SET",BAG_ALL_DISTINCT_SET,DB.Thm),
   ("BAG_ALL_DISTINCT_BAG_OF_SET",BAG_ALL_DISTINCT_BAG_OF_SET,DB.Thm),
   ("BAG_IN_BAG_DIFF_ALL_DISTINCT",BAG_IN_BAG_DIFF_ALL_DISTINCT,DB.Thm),
   ("SUB_BAG_ALL_DISTINCT",SUB_BAG_ALL_DISTINCT,DB.Thm),
   ("BAG_ALL_DISTINCT_BAG_INN",BAG_ALL_DISTINCT_BAG_INN,DB.Thm),
   ("BAG_ALL_DISTINCT_EXTENSION",BAG_ALL_DISTINCT_EXTENSION,DB.Thm),
   ("NOT_BAG_IN",NOT_BAG_IN,DB.Thm),
   ("BAG_UNION_EQ_LEFT",BAG_UNION_EQ_LEFT,DB.Thm),
   ("BAG_IN_DIVIDES",BAG_IN_DIVIDES,DB.Thm),
   ("BAG_GEN_PROD_UNION_LEM",BAG_GEN_PROD_UNION_LEM,DB.Thm),
   ("BAG_GEN_PROD_UNION",BAG_GEN_PROD_UNION,DB.Thm),
   ("BIG_BAG_UNION_EMPTY",BIG_BAG_UNION_EMPTY,DB.Thm),
   ("BIG_BAG_UNION_INSERT",BIG_BAG_UNION_INSERT,DB.Thm),
   ("BIG_BAG_UNION_DELETE",BIG_BAG_UNION_DELETE,DB.Thm),
   ("BIG_BAG_UNION_ITSET_BAG_UNION",BIG_BAG_UNION_ITSET_BAG_UNION,DB.Thm),
   ("FINITE_BIG_BAG_UNION",FINITE_BIG_BAG_UNION,DB.Thm),
   ("BAG_IN_BIG_BAG_UNION",BAG_IN_BIG_BAG_UNION,DB.Thm),
   ("BIG_BAG_UNION_EQ_EMPTY_BAG",BIG_BAG_UNION_EQ_EMPTY_BAG,DB.Thm),
   ("BIG_BAG_UNION_UNION",BIG_BAG_UNION_UNION,DB.Thm),
   ("BIG_BAG_UNION_EQ_ELEMENT",BIG_BAG_UNION_EQ_ELEMENT,DB.Thm),
   ("BAG_NOT_LESS_EMPTY",BAG_NOT_LESS_EMPTY,DB.Thm),
   ("NOT_mlt_EMPTY",NOT_mlt_EMPTY,DB.Thm),
   ("BAG_LESS_ADD",BAG_LESS_ADD,DB.Thm),
   ("mlt1_all_accessible",mlt1_all_accessible,DB.Thm),
   ("WF_mlt1",WF_mlt1,DB.Thm),
   ("TC_mlt1_FINITE_BAG",TC_mlt1_FINITE_BAG,DB.Thm),
   ("TC_mlt1_UNION2_I",TC_mlt1_UNION2_I,DB.Thm),
   ("TC_mlt1_UNION1_I",TC_mlt1_UNION1_I,DB.Thm),
   ("mlt_NOT_REFL",mlt_NOT_REFL,DB.Thm),
   ("mlt_INSERT_CANCEL_I",mlt_INSERT_CANCEL_I,DB.Thm),
   ("mlt1_INSERT_CANCEL",mlt1_INSERT_CANCEL,DB.Thm),
   ("dominates_EMPTY",dominates_EMPTY,DB.Thm),
   ("dominates_SUBSET",dominates_SUBSET,DB.Thm),
   ("mlt_dominates_thm1",mlt_dominates_thm1,DB.Thm),
   ("dominates_DIFF",dominates_DIFF,DB.Thm),
   ("BAG_INSERT_SUB_BAG_E",BAG_INSERT_SUB_BAG_E,DB.Thm),
   ("bdominates_BAG_DIFF",bdominates_BAG_DIFF,DB.Thm),
   ("BAG_INTER_SUB_BAG",BAG_INTER_SUB_BAG,DB.Thm),
   ("BAG_INTER_FINITE",BAG_INTER_FINITE,DB.Thm),
   ("mlt_dominates_thm2",mlt_dominates_thm2,DB.Thm),
   ("BAG_DIFF_INSERT_SUB_BAG",BAG_DIFF_INSERT_SUB_BAG,DB.Thm),
   ("mlt_INSERT_CANCEL",mlt_INSERT_CANCEL,DB.Thm),
   ("mlt_UNION_RCANCEL_I",mlt_UNION_RCANCEL_I,DB.Thm),
   ("mlt_UNION_RCANCEL",mlt_UNION_RCANCEL,DB.Thm),
   ("mlt_UNION_LCANCEL_I",mlt_UNION_LCANCEL_I,DB.Thm),
   ("mlt_UNION_LCANCEL",mlt_UNION_LCANCEL,DB.Thm),
   ("mlt_UNION_CANCEL_EQN",mlt_UNION_CANCEL_EQN,DB.Thm),
   ("mlt_UNION_EMPTY_EQN",mlt_UNION_EMPTY_EQN,DB.Thm),
   ("SUB_BAG_SING",SUB_BAG_SING,DB.Thm),
   ("SUB_BAG_DIFF_simple",SUB_BAG_DIFF_simple,DB.Thm),
   ("mltLT_SING0",mltLT_SING0,DB.Thm),
   ("BAG_SIZE_EMPTY",BAG_SIZE_EMPTY,DB.Thm),
   ("BAG_SIZE_INSERT",BAG_SIZE_INSERT,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars),
                         ("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars),
                         ("dividesTheory.divides_grammars",
                          dividesTheory.divides_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="bag",Name="bag"}, (alpha --> T"num" "num" []))
  val _ = update_grms temp_disable_tyabbrev_printing "bag"
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="bag",Name="multiset"}, (alpha --> T"num" "num" []))
  val _ = update_grms temp_disable_tyabbrev_printing "multiset"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EMPTY_BAG", (Term.prim_mk_const { Name = "EMPTY_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EMPTY_BAG", (Term.prim_mk_const { Name = "EMPTY_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_INN", (Term.prim_mk_const { Name = "BAG_INN", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_INN", (Term.prim_mk_const { Name = "BAG_INN", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUB_BAG", (Term.prim_mk_const { Name = "SUB_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUB_BAG", (Term.prim_mk_const { Name = "SUB_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PSUB_BAG", (Term.prim_mk_const { Name = "PSUB_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PSUB_BAG", (Term.prim_mk_const { Name = "PSUB_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_IN", (Term.prim_mk_const { Name = "BAG_IN", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_IN", (Term.prim_mk_const { Name = "BAG_IN", Thy = "bag"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<:"))
       (Infix(HOLgrammars.NONASSOC, 425))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<:", (Term.prim_mk_const { Name = "BAG_IN", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_UNION", (Term.prim_mk_const { Name = "BAG_UNION", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_UNION", (Term.prim_mk_const { Name = "BAG_UNION", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "BAG_UNION", Thy = "bag"}))
  val _ = update_grms
       (temp_send_to_back_overload "+")
        {Name = "BAG_UNION", Thy = "bag"}
  val _ = update_grms
       (UTOFF (temp_set_fixity "\226\138\142"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\226\138\142", (Term.prim_mk_const { Name = "BAG_UNION", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_DIFF", (Term.prim_mk_const { Name = "BAG_DIFF", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_DIFF", (Term.prim_mk_const { Name = "BAG_DIFF", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "BAG_DIFF", Thy = "bag"}))
  val _ = update_grms
       (temp_send_to_back_overload "-")
        {Name = "BAG_DIFF", Thy = "bag"}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_INSERT", (Term.prim_mk_const { Name = "BAG_INSERT", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_INSERT", (Term.prim_mk_const { Name = "BAG_INSERT", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_add_listform)
       {separator = [TOK ";", BreakSpace(1, 0)]
, leftdelim = [TOK "{|"]
, rightdelim = [TOK "|}"]
, cons = "BAG_INSERT", nilstr = "EMPTY_BAG", block_info = (INCONSISTENT, 0)}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_INTER", (Term.prim_mk_const { Name = "BAG_INTER", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_INTER", (Term.prim_mk_const { Name = "BAG_INTER", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_MERGE", (Term.prim_mk_const { Name = "BAG_MERGE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_MERGE", (Term.prim_mk_const { Name = "BAG_MERGE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_DELETE", (Term.prim_mk_const { Name = "BAG_DELETE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_DELETE", (Term.prim_mk_const { Name = "BAG_DELETE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SING_BAG", (Term.prim_mk_const { Name = "SING_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SING_BAG", (Term.prim_mk_const { Name = "SING_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EL_BAG", (Term.prim_mk_const { Name = "EL_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EL_BAG", (Term.prim_mk_const { Name = "EL_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "SUB_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "PSUB_BAG", Thy = "bag"}))
  val _ = update_grms
       (temp_send_to_back_overload "<=")
        {Name = "SUB_BAG", Thy = "bag"}
  val _ = update_grms
       (temp_send_to_back_overload "<")
        {Name = "PSUB_BAG", Thy = "bag"}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SET_OF_BAG", (Term.prim_mk_const { Name = "SET_OF_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SET_OF_BAG", (Term.prim_mk_const { Name = "SET_OF_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_OF_SET", (Term.prim_mk_const { Name = "BAG_OF_SET", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_OF_SET", (Term.prim_mk_const { Name = "BAG_OF_SET", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_DISJOINT", (Term.prim_mk_const { Name = "BAG_DISJOINT", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_DISJOINT", (Term.prim_mk_const { Name = "BAG_DISJOINT", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINITE_BAG", (Term.prim_mk_const { Name = "FINITE_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINITE_BAG", (Term.prim_mk_const { Name = "FINITE_BAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_CARD_RELn", (Term.prim_mk_const { Name = "BAG_CARD_RELn", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_CARD_RELn", (Term.prim_mk_const { Name = "BAG_CARD_RELn", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_CARD", (Term.prim_mk_const { Name = "BAG_CARD", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_FILTER", (Term.prim_mk_const { Name = "BAG_FILTER", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_FILTER", (Term.prim_mk_const { Name = "BAG_FILTER", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_IMAGE", (Term.prim_mk_const { Name = "BAG_IMAGE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_IMAGE", (Term.prim_mk_const { Name = "BAG_IMAGE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_CHOICE", (Term.prim_mk_const { Name = "BAG_CHOICE", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_REST", (Term.prim_mk_const { Name = "BAG_REST", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_REST", (Term.prim_mk_const { Name = "BAG_REST", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITBAG_tupled", (Term.prim_mk_const { Name = "ITBAG_tupled", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITBAG_tupled", (Term.prim_mk_const { Name = "ITBAG_tupled", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITBAG", (Term.prim_mk_const { Name = "ITBAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITBAG", (Term.prim_mk_const { Name = "ITBAG", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_GEN_SUM", (Term.prim_mk_const { Name = "BAG_GEN_SUM", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_GEN_SUM", (Term.prim_mk_const { Name = "BAG_GEN_SUM", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_GEN_PROD", (Term.prim_mk_const { Name = "BAG_GEN_PROD", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_GEN_PROD", (Term.prim_mk_const { Name = "BAG_GEN_PROD", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_EVERY", (Term.prim_mk_const { Name = "BAG_EVERY", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_EVERY", (Term.prim_mk_const { Name = "BAG_EVERY", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_ALL_DISTINCT", (Term.prim_mk_const { Name = "BAG_ALL_DISTINCT", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_ALL_DISTINCT", (Term.prim_mk_const { Name = "BAG_ALL_DISTINCT", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIG_BAG_UNION", (Term.prim_mk_const { Name = "BIG_BAG_UNION", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIG_BAG_UNION", (Term.prim_mk_const { Name = "BIG_BAG_UNION", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mlt1", (Term.prim_mk_const { Name = "mlt1", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mlt1", (Term.prim_mk_const { Name = "mlt1", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mlt", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(R :'a -> 'a -> bool). relation$TC (bag$mlt1 R)"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dominates", (Term.prim_mk_const { Name = "dominates", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dominates", (Term.prim_mk_const { Name = "dominates", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bdominates", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(R :'a -> 'b -> bool) (b1 :'a -> (num$num)) (b2 :'b -> (num$num)). bag$dominates R (bag$SET_OF_BAG b1) (bag$SET_OF_BAG b2)"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bag_size", (Term.prim_mk_const { Name = "bag_size", Thy = "bag"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bag_size", (Term.prim_mk_const { Name = "bag_size", Thy = "bag"}))
  val bag_grammars = Parse.current_lgrms()
  end


  val _ = 
   TypeBase.write
   [TypeBasePure.mk_nondatatype_info
    (alpha --> numSyntax.num,
      {nchotomy = SOME BAG_cases,
       induction = SOME STRONG_FINITE_BAG_INDUCT,
       size = SOME(Parse.Term`\(obsize:'a->num) (y:'b). bag$bag_size obsize`,CONJ BAG_SIZE_EMPTY BAG_SIZE_INSERT),
       encode=NONE})];

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bag",
    thydataty = "unicodedata",
    data = "U12.\\226\\139\\1782.<:"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bag",
    thydataty = "simp",
    data =
        "bag.BAG_MERGE_IDEM bag.BAG_NOT_LESS_EMPTY bag.SUB_BAG_DIFF_simple bag.SUB_BAG_SING bag.mlt_UNION_CANCEL_EQN bag.mlt_UNION_LCANCEL bag.mlt_UNION_RCANCEL bag.BAG_INTER_SUB_BAG bag.dominates_EMPTY bag.mlt_NOT_REFL bag.NOT_mlt_EMPTY bag.BAG_OF_EMPTY bag.BAG_IN_BIG_BAG_UNION bag.BIG_BAG_UNION_EMPTY bag.BAG_ALL_DISTINCT_BAG_OF_SET bag.BAG_ALL_DISTINCT_THM bag.SET_OF_BAG_IMAGE bag.BAG_EVERY_MERGE bag.BAG_EVERY_UNION bag.BAG_EVERY_THM bag.ITBAG_EMPTY bag.EL_BAG_SUB_BAG bag.EL_BAG_BAG_INSERT bag.SUB_BAG_UNION_MONO bag.BAG_REST_SING bag.BAG_CHOICE_SING bag.BAG_IMAGE_EQ_EMPTY bag.BAG_IN_FINITE_BAG_IMAGE bag.BAG_IMAGE_FINITE_I bag.BAG_IMAGE_FINITE bag.BAG_IMAGE_FINITE_UNION bag.BAG_IMAGE_FINITE_INSERT bag.BAG_IMAGE_EMPTY bag.FINITE_SET_OF_BAG bag.BAG_FILTER_SUB_BAG bag.BAG_IN_BAG_FILTER bag.BAG_INN_BAG_FILTER bag.FINITE_BAG_FILTER bag.BAG_FILTER_BAG_INSERT bag.BAG_FILTER_EMPTY bag.BAG_CARD_UNION bag.BAG_CARD_EMPTY bag.FINITE_BAG_UNION bag.FINITE_BAG_THM bag.BAG_DISJOINT_BAG_UNION bag.BAG_DISJOINT_EMPTY bag.SET_OF_BAG_EQ_EMPTY bag.IN_SET_OF_BAG bag.SET_BAG_I bag.BAG_UNION_DIFF_eliminate bag.BAG_IN_BAG_OF_SET bag.SET_OF_EMPTY bag.SUB_BAG_UNION_eliminate bag.BAG_DIFF_UNION_eliminate bag.BAG_DIFF_INSERT_same bag.BAG_DIFF_EQ_EMPTY bag.BAG_DIFF_EMPTY_simple bag.SUB_BAG_REFL bag.SUB_BAG_EMPTY bag.BAG_INN_EMPTY_BAG bag.NOT_IN_EMPTY_BAG bag.BAG_UNION_EMPTY bag.BAG_UNION_EQ_LCANCEL1 bag.BAG_UNION_RIGHT_CANCEL bag.BAG_UNION_LEFT_CANCEL bag.C_BAG_INSERT_ONE_ONE bag.BAG_INSERT_ONE_ONE bag.BAG_INSERT_NOT_EMPTY bag.BAG_INSERT_DIFF bag.BAG_IN_BAG_MERGE bag.BAG_IN_BAG_UNION bag.BAG_UNION_EQ_RCANCEL1 bag.BAG_INN_0 bag.BAG_IN_BAG_INSERT"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bag",
    thydataty = "rule_induction",
    data = "bag.STRONG_FINITE_BAG_INDUCT"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bag",
    thydataty = "compute",
    data = "bag.BIG_BAG_UNION_def bag.bag_size_def bag.dominates_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bag",
    thydataty = "TexTokenMap",
    data =
        "2.<:15.\\\\HOLTokenIn{}:2.12.\\226\\139\\17815.\\\\HOLTokenIn{}:2.12.\\226\\138\\14221.\\\\ensuremath{\\\\uplus}1.2.{|19.\\\\HOLTokenBagLeft{}1.2.|}20.\\\\HOLTokenBagRight{}1."
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "bag"
end
