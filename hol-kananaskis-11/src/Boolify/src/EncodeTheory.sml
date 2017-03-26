structure EncodeTheory :> EncodeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading EncodeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quantHeuristicsTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("Encode",
          Arbnum.fromString "1488589539",
          Arbnum.fromString "580781")
          [("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227"),
           ("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749")];
  val _ = Theory.incorporate_types "Encode" [("tree", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"),
   ID("list", "list"), ID("Encode", "tree"), ID("pair", "prod"),
   ID("sum", "sum"), ID("option", "option"), ID("one", "one"),
   ID("ind_type", "recspace"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("list", "APPEND"),
   ID("bool", "ARB"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("bool", "COND"), ID("list", "CONS"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("arithmetic", "DIV"), ID("arithmetic", "EVEN"), ID("list", "EVERY"),
   ID("arithmetic", "EXP"), ID("bool", "F"), ID("ind_type", "FCONS"),
   ID("pair", "FST"), ID("list", "HD"), ID("combin", "I"),
   ID("bool", "IN"), ID("sum", "INL"), ID("sum", "INR"), ID("combin", "K"),
   ID("list", "LENGTH"), ID("list", "LIST_TO_SET"),
   ID("arithmetic", "MOD"), ID("list", "NIL"), ID("option", "NONE"),
   ID("arithmetic", "NUMERAL"), ID("Encode", "Node"), ID("pair", "SND"),
   ID("option", "SOME"), ID("num", "SUC"), ID("bool", "T"),
   ID("list", "TL"), ID("bool", "TYPE_DEFINITION"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("Encode", "biprefix"), ID("Encode", "collision_free"),
   ID("Encode", "encode_blist"), ID("Encode", "encode_bnum"),
   ID("Encode", "encode_bool"), ID("Encode", "encode_list"),
   ID("Encode", "encode_num"), ID("Encode", "encode_option"),
   ID("Encode", "encode_prod"), ID("Encode", "encode_sum"),
   ID("Encode", "encode_tree"), ID("Encode", "encode_tree_tupled"),
   ID("Encode", "encode_unit"), ID("list", "isPREFIX"),
   ID("Encode", "lift_blist"), ID("Encode", "lift_option"),
   ID("Encode", "lift_prod"), ID("Encode", "lift_sum"),
   ID("Encode", "lift_tree"), ID("Encode", "lift_tree_tupled"),
   ID("option", "option_CASE"), ID("pair", "pair_CASE"),
   ID("sum", "sum_CASE"), ID("Encode", "tree1_size"),
   ID("Encode", "tree_CASE"), ID("Encode", "tree_size"),
   ID("Encode", "wf_encoder"), ID("Encode", "wf_pred"),
   ID("Encode", "wf_pred_bnum"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [0, 1, 3],
   TYV "'a", TYOP [0, 5, 0], TYOP [0, 6, 0], TYOP [3, 0], TYOP [0, 5, 8],
   TYOP [0, 9, 0], TYOP [0, 6, 10], TYOP [4, 5], TYOP [0, 12, 1],
   TYOP [0, 5, 1], TYOP [0, 14, 13], TYV "'b", TYOP [3, 12],
   TYOP [0, 17, 16], TYOP [0, 5, 18], TYOP [0, 19, 16], TYOP [0, 12, 20],
   TYOP [0, 17, 1], TYOP [0, 14, 22], TYOP [5, 6, 12], TYOP [0, 24, 0],
   TYOP [0, 12, 0], TYOP [0, 6, 26], TYOP [6, 5, 16], TYOP [0, 28, 0],
   TYOP [0, 16, 0], TYOP [0, 30, 29], TYOP [0, 6, 31], TYOP [5, 5, 16],
   TYOP [0, 33, 0], TYOP [0, 30, 34], TYOP [0, 6, 35], TYOP [7, 5],
   TYOP [0, 37, 0], TYOP [0, 6, 38], TYOP [3, 5], TYOP [0, 40, 0],
   TYOP [0, 6, 41], TYOP [0, 1, 42], TYOP [8], TYOP [0, 44, 8],
   TYOP [5, 9, 12], TYOP [0, 46, 8], TYOP [0, 12, 8], TYOP [0, 9, 48],
   TYOP [0, 28, 8], TYOP [0, 16, 8], TYOP [0, 51, 50], TYOP [0, 9, 52],
   TYOP [0, 33, 8], TYOP [0, 51, 54], TYOP [0, 9, 55], TYOP [0, 37, 8],
   TYOP [0, 9, 57], TYOP [0, 1, 8], TYOP [0, 40, 8], TYOP [0, 9, 60],
   TYOP [0, 0, 8], TYOP [0, 1, 59], TYOP [3, 16], TYOP [0, 64, 40],
   TYOP [0, 16, 40], TYOP [0, 66, 65], TYOP [0, 1, 67], TYOP [0, 40, 41],
   TYOP [0, 17, 12], TYOP [0, 5, 70], TYOP [9, 5], TYOP [0, 72, 0],
   TYOP [0, 17, 0], TYOP [0, 1, 2], TYOP [0, 24, 25], TYOP [0, 46, 0],
   TYOP [0, 46, 77], TYV "'c", TYOP [0, 79, 16], TYOP [0, 17, 80],
   TYOP [0, 5, 81], TYOP [0, 79, 79], TYOP [0, 16, 83], TYOP [0, 17, 84],
   TYOP [0, 12, 85], TYOP [0, 12, 16], TYOP [0, 17, 79], TYOP [0, 0, 0],
   TYOP [0, 44, 0], TYOP [0, 12, 72], TYOP [0, 71, 0], TYOP [0, 30, 0],
   TYOP [0, 79, 0], TYOP [0, 94, 0], TYOP [0, 89, 0], TYOP [0, 7, 0],
   TYOP [0, 19, 0], TYOP [0, 98, 0], TYOP [0, 82, 0], TYOP [0, 100, 0],
   TYOP [0, 10, 0], TYOP [0, 14, 0], TYOP [0, 103, 0], TYOP [0, 93, 0],
   TYOP [0, 66, 0], TYOP [0, 106, 0], TYOP [0, 51, 0], TYOP [0, 108, 0],
   TYOP [0, 96, 0], TYOP [0, 74, 0], TYOP [0, 111, 0], TYOP [0, 3, 0],
   TYOP [0, 90, 0], TYOP [0, 114, 0], TYOP [0, 73, 0], TYOP [0, 116, 0],
   TYOP [0, 26, 0], TYOP [0, 118, 0], TYOP [0, 86, 0], TYOP [0, 120, 0],
   TYOP [0, 41, 0], TYOP [0, 64, 0], TYOP [0, 123, 0], TYOP [0, 38, 0],
   TYOP [0, 34, 0], TYOP [0, 29, 0], TYOP [0, 1, 1], TYOP [0, 1, 128],
   TYOP [0, 16, 33], TYOP [0, 5, 130], TYOP [0, 12, 24], TYOP [0, 6, 132],
   TYOP [0, 12, 46], TYOP [0, 9, 134], TYOP [0, 0, 89], TYOP [0, 5, 6],
   TYOP [0, 16, 30], TYOP [0, 79, 94], TYOP [0, 59, 0], TYOP [0, 59, 140],
   TYOP [0, 25, 0], TYOP [0, 25, 142], TYOP [0, 47, 0], TYOP [0, 47, 144],
   TYOP [0, 8, 0], TYOP [0, 8, 146], TYOP [0, 17, 74], TYOP [0, 72, 73],
   TYOP [0, 12, 26], TYOP [0, 88, 0], TYOP [0, 151, 0], TYOP [0, 87, 0],
   TYOP [0, 153, 0], TYOP [0, 91, 0], TYOP [0, 155, 0], TYOP [0, 75, 0],
   TYOP [0, 157, 75], TYOP [0, 76, 0], TYOP [0, 159, 76], TYOP [0, 78, 0],
   TYOP [0, 161, 78], TYOP [0, 40, 40], TYOP [0, 40, 163], TYOP [0, 8, 8],
   TYOP [0, 8, 165], TYOP [0, 0, 166], TYOP [0, 5, 163], TYOP [0, 0, 165],
   TYOP [0, 17, 17], TYOP [0, 12, 170], TYOP [0, 1, 72], TYOP [0, 172, 72],
   TYOP [0, 5, 173], TYOP [0, 1, 174], TYOP [0, 26, 74],
   TYOP [0, 172, 172], TYOP [0, 72, 177], TYOP [0, 33, 5],
   TYOP [0, 64, 16], TYOP [0, 5, 7], TYOP [0, 12, 118], TYOP [0, 5, 28],
   TYOP [0, 16, 28], TYOP [0, 0, 6], TYOP [0, 40, 1], TYOP [0, 8, 1],
   TYOP [0, 40, 6], TYOP [0, 17, 26], TYOP [0, 33, 16], TYOP [0, 5, 37],
   TYOP [0, 64, 64], TYOP [0, 73, 155], TYOP [0, 59, 59],
   TYOP [0, 194, 59], TYOP [0, 75, 195], TYOP [0, 25, 25],
   TYOP [0, 197, 25], TYOP [0, 76, 198], TYOP [0, 47, 47],
   TYOP [0, 200, 47], TYOP [0, 78, 201], TYOP [0, 1, 61], TYOP [0, 17, 8],
   TYOP [0, 48, 204], TYOP [0, 0, 7], TYOP [0, 37, 206], TYOP [0, 27, 0],
   TYOP [0, 24, 208], TYOP [0, 49, 8], TYOP [0, 46, 210], TYOP [0, 6, 93],
   TYOP [0, 28, 212], TYOP [0, 5, 74], TYOP [0, 214, 0], TYOP [0, 12, 215],
   TYOP [0, 5, 204], TYOP [0, 217, 8], TYOP [0, 12, 218],
   TYOP [0, 30, 108], TYOP [0, 62, 0], TYOP [0, 89, 221], TYOP [0, 60, 0],
   TYOP [0, 41, 223], TYOP [0, 2, 140], TYOP [0, 45, 0], TYOP [0, 90, 226],
   TYOP [0, 57, 0], TYOP [0, 38, 228], TYOP [0, 54, 0], TYOP [0, 34, 230],
   TYOP [0, 50, 0], TYOP [0, 29, 232], TYOP [0, 48, 0], TYOP [0, 26, 234]]
  end
  val _ = Theory.incorporate_consts "Encode" tyvector
     [("wf_pred_bnum", 4), ("wf_pred", 7), ("wf_encoder", 11),
      ("tree_size", 15), ("tree_CASE", 21), ("tree1_size", 23),
      ("lift_tree_tupled", 25), ("lift_tree", 27), ("lift_sum", 32),
      ("lift_prod", 36), ("lift_option", 39), ("lift_blist", 43),
      ("encode_unit", 45), ("encode_tree_tupled", 47), ("encode_tree", 49),
      ("encode_sum", 53), ("encode_prod", 56), ("encode_option", 58),
      ("encode_num", 59), ("encode_list", 61), ("encode_bool", 62),
      ("encode_bnum", 63), ("encode_blist", 68), ("collision_free", 4),
      ("biprefix", 69), ("Node", 71)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'@temp @ind_typeEncode0list'", 73), TMV("'tree'", 73),
   TMV("M", 12), TMV("M'", 12), TMV("P", 2), TMV("P0", 26), TMV("P1", 74),
   TMV("R", 75), TMV("R", 76), TMV("R", 78), TMV("a", 5), TMV("a", 40),
   TMV("a", 12), TMV("a'", 24), TMV("a'", 46), TMV("a'", 12), TMV("a0", 5),
   TMV("a0", 72), TMV("a0", 12), TMV("a0'", 5), TMV("a0'", 72),
   TMV("a1", 17), TMV("a1", 72), TMV("a1'", 17), TMV("a1'", 72),
   TMV("b", 40), TMV("c", 5), TMV("c", 40), TMV("d", 40), TMV("e", 9),
   TMV("e", 66), TMV("e1", 9), TMV("e2", 51), TMV("encode_num", 59),
   TMV("encode_tree_tupled", 47), TMV("f", 19), TMV("f", 9), TMV("f", 14),
   TMV("f'", 19), TMV("f0", 82), TMV("f1", 79), TMV("f1", 9), TMV("f2", 9),
   TMV("f2", 86), TMV("fn0", 87), TMV("fn1", 88), TMV("h", 5),
   TMV("l", 64), TMV("l", 17), TMV("l1", 40), TMV("l2", 40),
   TMV("lift_tree_tupled", 25), TMV("m", 1), TMV("n", 1), TMV("p", 6),
   TMV("p", 89), TMV("p", 2), TMV("p", 90), TMV("p", 26), TMV("p", 33),
   TMV("p1", 6), TMV("p2", 30), TMV("rep", 91), TMV("t", 40), TMV("t", 12),
   TMV("tree", 92), TMV("ts", 17), TMV("tt", 12), TMV("v", 1),
   TMV("v0", 44), TMV("v1", 12), TMV("x", 5), TMV("x", 0), TMV("x", 6),
   TMV("x", 9), TMV("x", 40), TMV("x", 1), TMV("x", 37), TMV("x", 33),
   TMV("x", 28), TMV("x1", 5), TMV("x1", 12), TMV("x2", 16), TMV("xb", 9),
   TMV("xs", 40), TMV("y", 5), TMV("y", 16), TMV("y", 40), TMV("y", 1),
   TMV("yb", 51), TMC(10, 7), TMC(10, 93), TMC(10, 95), TMC(10, 96),
   TMC(10, 97), TMC(10, 99), TMC(10, 101), TMC(10, 102), TMC(10, 104),
   TMC(10, 105), TMC(10, 107), TMC(10, 109), TMC(10, 110), TMC(10, 112),
   TMC(10, 113), TMC(10, 115), TMC(10, 117), TMC(10, 119), TMC(10, 121),
   TMC(10, 122), TMC(10, 124), TMC(10, 111), TMC(10, 3), TMC(10, 114),
   TMC(10, 125), TMC(10, 126), TMC(10, 116), TMC(10, 127), TMC(10, 118),
   TMC(11, 129), TMC(12, 131), TMC(12, 133), TMC(12, 135), TMC(13, 129),
   TMC(14, 136), TMC(15, 1), TMC(16, 75), TMC(17, 137), TMC(17, 138),
   TMC(17, 139), TMC(17, 136), TMC(17, 141), TMC(17, 143), TMC(17, 145),
   TMC(17, 69), TMC(17, 147), TMC(17, 148), TMC(17, 75), TMC(17, 149),
   TMC(17, 150), TMC(18, 136), TMC(19, 7), TMC(19, 152), TMC(19, 154),
   TMC(19, 156), TMC(19, 111), TMC(19, 116), TMC(20, 158), TMC(20, 160),
   TMC(20, 162), TMC(21, 164), TMC(21, 166), TMC(22, 5), TMC(23, 128),
   TMC(24, 128), TMC(25, 72), TMC(26, 167), TMC(27, 168), TMC(27, 169),
   TMC(27, 171), TMC(28, 175), TMC(29, 89), TMC(30, 129), TMC(31, 2),
   TMC(32, 42), TMC(32, 176), TMC(33, 129), TMC(34, 0), TMC(35, 178),
   TMC(36, 179), TMC(37, 180), TMC(38, 89), TMC(38, 165), TMC(39, 181),
   TMC(39, 182), TMC(40, 183), TMC(41, 184), TMC(42, 185), TMC(43, 186),
   TMC(43, 187), TMC(44, 188), TMC(44, 189), TMC(45, 129), TMC(46, 40),
   TMC(46, 8), TMC(46, 17), TMC(47, 37), TMC(48, 128), TMC(49, 71),
   TMC(50, 190), TMC(51, 191), TMC(52, 128), TMC(53, 0), TMC(54, 192),
   TMC(55, 193), TMC(56, 157), TMC(56, 159), TMC(56, 161), TMC(57, 196),
   TMC(57, 199), TMC(57, 202), TMC(58, 1), TMC(59, 136), TMC(60, 69),
   TMC(60, 147), TMC(61, 4), TMC(62, 203), TMC(62, 68), TMC(63, 63),
   TMC(64, 62), TMC(65, 61), TMC(65, 205), TMC(66, 59), TMC(67, 58),
   TMC(68, 56), TMC(69, 53), TMC(70, 49), TMC(71, 47), TMC(72, 45),
   TMC(73, 69), TMC(73, 147), TMC(74, 43), TMC(75, 39), TMC(76, 36),
   TMC(77, 32), TMC(78, 27), TMC(79, 25), TMC(80, 207), TMC(81, 209),
   TMC(81, 211), TMC(82, 213), TMC(83, 23), TMC(84, 21), TMC(84, 216),
   TMC(84, 219), TMC(85, 15), TMC(86, 11), TMC(86, 220), TMC(86, 222),
   TMC(86, 224), TMC(86, 225), TMC(86, 227), TMC(86, 229), TMC(86, 231),
   TMC(86, 233), TMC(86, 235), TMC(87, 7), TMC(87, 3), TMC(88, 4),
   TMC(89, 89)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op biprefix_def x = x
    val op biprefix_def =
    DT(((("Encode",0),[]),[]),
       [read"%109%11%109%25%130%203$1@$0@@%202%219$0@$1@@%219$1@$0@@@|@|@"])
  fun op wf_pred_def x = x
    val op wf_pred_def =
    DT(((("Encode",6),[]),[]), [read"%94%54%130%246$0@@%141%71$1$0@|@@|@"])
  fun op wf_encoder_def x = x
    val op wf_encoder_def =
    DT(((("Encode",7),[]),[]),
       [read"%94%54%97%29%130%236$1@$0@@%90%71%90%85%140%124$3$1@@%124$3$0@@%220$2$0@@$2$1@@@@@%127$1@$0@@|@|@@|@|@"])
  fun op encode_unit_def x = x
    val op encode_unit_def =
    DT(((("Encode",11),[]),[]), [read"%113%69%135%218$0@@%184@|@"])
  fun op encode_bool_def x = x
    val op encode_bool_def =
    DT(((("Encode",13),[]),[]), [read"%93%72%135%209$0@@%158$0@%184@@|@"])
  fun op encode_prod_def x = x
    val op encode_prod_def =
    DT(((("Encode",15),[("pair",[16])]),["DISK_THM"]),
       [read"%97%83%101%89%90%71%91%86%135%214$3@$2@%120$1@$0@@@%151$3$1@@$2$0@@@|@|@|@|@"])
  fun op lift_prod_def x = x
    val op lift_prod_def =
    DT(((("Encode",16),[]),[]),
       [read"%94%60%99%61%115%78%130%223$2@$1@$0@@%124$2%169$0@@@$1%189$0@@@@|@|@|@"])
  fun op encode_sum_def x = x
    val op encode_sum_def =
    DT(((("Encode",19),[("sum",[13])]),["DISK_THM"]),
       [read"%124%97%83%101%89%90%71%135%215$2@$1@%175$0@@@%158%192@$2$0@@@|@|@|@@%97%83%101%89%91%86%135%215$2@$1@%176$0@@@%158%167@$1$0@@@|@|@|@@"])
  fun op lift_sum_def x = x
    val op lift_sum_def =
    DT(((("Encode",20),[]),[]),
       [read"%94%60%99%61%117%79%130%224$2@$1@$0@@%230$0@%80$3$0@|@%82$2$0@|@@|@|@|@"])
  fun op encode_option_def x = x
    val op encode_option_def =
    DT(((("Encode",22),[("option",[4])]),["DISK_THM"]),
       [read"%124%97%83%135%213$0@%186@@%158%167@%184@@|@@%97%83%90%71%135%213$1@%190$0@@@%158%192@$1$0@@@|@|@@"])
  fun op lift_option_def x = x
    val op lift_option_def =
    DT(((("Encode",23),[]),[]),
       [read"%94%54%114%77%130%222$1@$0@@%227$0@%192@%85$2$0@|@@|@|@"])
  fun op encode_list_def x = x
    val op encode_list_def =
    DT(((("Encode",25),[("list",[13])]),["DISK_THM"]),
       [read"%124%97%83%135%210$0@%183@@%158%167@%184@@|@@%97%83%90%71%109%84%135%210$2@%157$1@$0@@@%158%192@%151$2$1@@%210$2@$0@@@@|@|@|@@"])
  fun op encode_blist_def x = x
    val op encode_blist_def =
    DT(((("Encode",28),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%124%100%30%110%47%134%207%125@$1@$0@@%183@|@|@@%112%52%100%30%110%47%134%207%191$2@@$1@$0@@%150$1%170$0@@@%207$2@$1@%193$0@@@@|@|@|@@"])
  fun op lift_blist_def x = x
    val op lift_blist_def =
    DT(((("Encode",30),[]),[]),
       [read"%112%52%94%54%109%75%130%221$2@$1@$0@@%124%164$1@$0@@%137%178$0@@$2@@@|@|@|@"])
  fun op encode_num_primitive_def x = x
    val op encode_num_primitive_def =
    DT(((("Encode",33),[]),[]),
       [read"%131%212@%198%147%7%124%195$0@@%124%112%53%140%124%249%137$0@%125@@@%163$0@@@$1%162%123$0@%187%154%201@@@@%187%154%201@@@@$0@@|@@%112%53%140%124%249%137$0@%125@@@%249%163$0@@@@$1%162%123$0@%187%153%201@@@@%187%154%201@@@@$0@@|@@@|@@%33%53%172%156%137$0@%125@@%158%192@%158%192@%184@@@%156%163$0@@%158%167@$1%162%123$0@%187%154%201@@@@%187%154%201@@@@@@%158%192@%158%167@$1%162%123$0@%187%153%201@@@@%187%154%201@@@@@@@@@||@@"])
  fun op encode_bnum_def x = x
    val op encode_bnum_def =
    DT(((("Encode",37),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%124%112%53%135%208%125@$0@@%184@|@@%112%52%112%53%135%208%191$1@@$0@@%158%249%163$0@@@%208$1@%162$0@%187%154%201@@@@@@|@|@@"])
  fun op collision_free_def x = x
    val op collision_free_def =
    DT(((("Encode",39),[]),[]),
       [read"%112%52%104%56%130%205$1@$0@@%112%76%112%88%140%124$2$1@@%124$2$0@@%137%182$1@%166%187%154%201@@@$3@@@%182$0@%166%187%154%201@@@$3@@@@@@%137$1@$0@@|@|@@|@|@"])
  fun op wf_pred_bnum_def x = x
    val op wf_pred_bnum_def =
    DT(((("Encode",40),[]),[]),
       [read"%112%52%104%56%130%248$1@$0@@%124%247$0@@%112%76%140$1$0@@%126$0@%166%187%154%201@@@$2@@@|@@@|@|@"])
  fun op tree_TY_DEF x = x
    val op tree_TY_DEF =
    DT(((("Encode",47),[("bool",[14,25,26,53,132,133,138])]),["DISK_THM"]),
       [read"%144%62%194%20%106%1%106%0%140%124%116%20%140%141%16%146%22%124%138$2@%16%22%160%125@$1@%168$0@%53%155|@@||$1@$0@@@$3$0@@|@|@@$2$0@@|@@%116%24%140%202%138$0@%160%191%125@@%152@%53%155|@@@%146%17%146%22%124%138$2@%17%22%160%191%191%125@@@%152@%168$1@%168$0@%53%155|@@@||$1@$0@@@%124$4$1@@$3$0@@@|@|@@@$1$0@@|@@@$1$2@@|@|@|@$0@|@"])
  fun op tree_case_def x = x
    val op tree_case_def =
    DT(((("Encode",56),
        [("Encode",[48,50,51,52,53,54,55]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%90%16%111%21%95%35%128%232%188$2@$1@@$0@@$0$2@$1@@|@|@|@"])
  fun op tree_size_def x = x
    val op tree_size_def =
    DT(((("Encode",57),
        [("Encode",[48,50,51,52,53,54,55]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%124%98%37%90%16%111%21%137%235$2@%188$1@$0@@@%119%187%153%201@@@%119$2$1@@%231$2@$0@@@@|@|@|@@%124%98%37%137%231$0@%185@@%125@|@@%98%37%118%18%111%21%137%231$2@%159$1@$0@@@%119%187%153%201@@@%119%235$2@$1@@%231$2@$0@@@@|@|@|@@@"])
  fun op encode_tree_tupled_primitive_def x = x
    val op encode_tree_tupled_primitive_def =
    DT(((("Encode",65),[]),[]),
       [read"%133%217@%200%149%9%124%197$0@@%90%10%97%29%111%66%118%15%140%174$0@%181$1@@@$4%122$2@$0@@%122$2@%188$3@$1@@@@|@|@|@|@@|@@%34%14%229$0@%29%70%234$0@%10%66%172%151$3$1@@%211%12$6%122$4@$0@@|@$0@@@||@||@||@@"])
  fun op encode_tree_curried_def x = x
    val op encode_tree_curried_def =
    DT(((("Encode",66),[]),[]),
       [read"%97%74%118%81%135%216$1@$0@@%217%122$1@$0@@@|@|@"])
  fun op lift_tree_tupled_primitive_def x = x
    val op lift_tree_tupled_primitive_def =
    DT(((("Encode",68),[]),[]),
       [read"%132%226@%199%148%8%124%196$0@@%90%10%94%54%111%66%118%15%140%174$0@%181$1@@@$4%121$2@$0@@%121$2@%188$3@$1@@@@|@|@|@|@@|@@%51%13%228$0@%54%70%233$0@%10%66%171%124$3$1@@%165%12$6%121$4@$0@@|@$0@@@||@||@||@@"])
  fun op lift_tree_curried_def x = x
    val op lift_tree_curried_def =
    DT(((("Encode",69),[]),[]),
       [read"%94%73%118%81%130%225$1@$0@@%226%121$1@$0@@@|@|@"])
  fun op biprefix_refl x = x
    val op biprefix_refl =
    DT(((("Encode",1),
        [("Encode",[0]),("bool",[25,52,63]),
         ("rich_list",[267])]),["DISK_THM"]), [read"%109%75%203$0@$0@|@"])
  fun op biprefix_sym x = x
    val op biprefix_sym =
    DT(((("Encode",2),
        [("Encode",[0]),("bool",[25,26,43,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%75%109%87%140%203$1@$0@@%203$0@$1@@|@|@"])
  fun op biprefix_append x = x
    val op biprefix_append =
    DT(((("Encode",3),
        [("Encode",[0]),
         ("bool",[25,26,47,48,53,54,58,63,93,94,96,105,124]),
         ("rich_list",[274,275]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%11%109%25%109%27%109%28%140%203%150$3@$2@@%150$1@$0@@@%203$3@$1@@|@|@|@|@"])
  fun op biprefix_cons x = x
    val op biprefix_cons =
    DT(((("Encode",4),
        [("Encode",[0]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("rich_list",[70]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%90%10%109%25%90%26%109%28%130%203%157$3@$2@@%157$1@$0@@@%124%127$3@$1@@%203$2@$0@@@|@|@|@|@"])
  fun op biprefix_appends x = x
    val op biprefix_appends =
    DT(((("Encode",5),
        [("Encode",[0]),("bool",[25,56]),
         ("rich_list",[276])]),["DISK_THM"]),
       [read"%109%11%109%25%109%27%130%203%150$2@$1@@%150$2@$0@@@%203$1@$0@@|@|@|@"])
  fun op wf_encoder_alt x = x
    val op wf_encoder_alt =
    DT(((("Encode",8),
        [("Encode",[0,7]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,77,78,80,
          81,84,93,94,96,146]),("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%130%236%54@%29@@%90%71%90%85%140%124%54$1@@%124%54$0@@%204%29$1@@%29$0@@@@@%127$1@$0@@|@|@@"])
  fun op wf_encoder_eq x = x
    val op wf_encoder_eq =
    DT(((("Encode",9),
        [("Encode",[7]),
         ("bool",[25,36,51,53,58,63,105,124])]),["DISK_THM"]),
       [read"%94%54%97%29%97%36%140%124%236$2@$1@@%90%71%140$3$0@@%135$2$0@@$1$0@@@|@@@%236$2@$0@@|@|@|@"])
  fun op wf_encoder_total x = x
    val op wf_encoder_total =
    DT(((("Encode",10),
        [("Encode",[7]),("bool",[25,36,51,53,58,63,105,124]),
         ("combin",[12])]),["DISK_THM"]),
       [read"%94%54%97%29%140%236%177%192@@$0@@%236$1@$0@@|@|@"])
  fun op wf_encode_unit x = x
    val op wf_encode_unit =
    DT(((("Encode",12),
        [("Encode",[7,11]),("bool",[25,36,51,53,56,58,105,124]),
         ("one",[3]),("rich_list",[70])]),["DISK_THM"]),
       [read"%105%57%241$0@%218@|@"])
  fun op wf_encode_bool x = x
    val op wf_encode_bool =
    DT(((("Encode",14),
        [("Encode",[7,13]),("bool",[25,36,51,53,56,58,105,124]),
         ("rich_list",[70])]),["DISK_THM"]), [read"%102%55%238$0@%209@|@"])
  fun op encode_prod_alt x = x
    val op encode_prod_alt =
    DT(((("Encode",17),
        [("Encode",[15]),("bool",[25,56]),("pair",[5,8,9])]),["DISK_THM"]),
       [read"%97%83%101%89%115%59%135%214$2@$1@$0@@%151$2%169$0@@@$1%189$0@@@@|@|@|@"])
  fun op wf_encode_prod x = x
    val op wf_encode_prod =
    DT(((("Encode",18),
        [("Encode",[7,16,17]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("pair",[4,5,8,9]),("rich_list",[274,275,276]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%60%99%61%97%31%101%32%140%124%236$3@$1@@%237$2@$0@@@%243%223$3@$2@@%214$1@$0@@@|@|@|@|@"])
  fun op wf_encode_sum x = x
    val op wf_encode_sum =
    DT(((("Encode",21),
        [("Encode",[7,19,20]),("bool",[25,27,51,54,58,63,105,124]),
         ("rich_list",[70]),("sum",[7,14,24])]),["DISK_THM"]),
       [read"%94%60%99%61%97%31%101%32%140%124%236$3@$1@@%237$2@$0@@@%244%224$3@$2@@%215$1@$0@@@|@|@|@|@"])
  fun op wf_encode_option x = x
    val op wf_encode_option =
    DT(((("Encode",24),
        [("Encode",[7,22,23]),("bool",[25,27,51,54,56,58,63,105,124]),
         ("option",[6,7,10]),("rich_list",[70])]),["DISK_THM"]),
       [read"%94%54%97%29%140%236$1@$0@@%242%222$1@@%213$0@@@|@|@"])
  fun op wf_encode_list x = x
    val op wf_encode_list =
    DT(((("Encode",26),
        [("Encode",[7,25]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,62,63,93,94,96,105,
          124]),("combin",[19]),("list",[10,30,43,46]),
         ("rich_list",[70,274,275,276]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%54%97%29%140%236$1@$0@@%239%164$1@@%210$0@@@|@|@"])
  fun op encode_list_cong x = x
    val op encode_list_cong =
    DT(((("Encode",27),
        [("Encode",[25]),
         ("bool",[14,25,26,27,36,51,53,54,56,58,63,101,105,124,145]),
         ("list",[43,48,104,120])]),["DISK_THM"]),
       [read"%109%49%109%50%97%41%97%42%140%124%134$3@$2@@%90%71%140%173$0@%180$3@@@%135$2$0@@$1$0@@@|@@@%135%210$1@$3@@%210$0@$2@@@|@|@|@|@"])
  fun op encode_blist_def_compute x = x
    val op encode_blist_def_compute =
    DT(((("Encode",29),
        [("Encode",[28]),("arithmetic",[268]),
         ("bool",[26])]),["DISK_THM"]),
       [read"%124%100%30%110%47%134%207%125@$1@$0@@%183@|@|@@%124%112%52%100%30%110%47%134%207%187%153$2@@@$1@$0@@%150$1%170$0@@@%207%123%187%153$2@@@%187%153%201@@@@$1@%193$0@@@@|@|@|@@%112%52%100%30%110%47%134%207%187%154$2@@@$1@$0@@%150$1%170$0@@@%207%187%153$2@@@$1@%193$0@@@@|@|@|@@@"])
  fun op lift_blist_suc x = x
    val op lift_blist_suc =
    DT(((("Encode",31),
        [("Encode",[30]),("bool",[25,43,56]),("list",[22,30]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%112%53%94%54%90%46%109%63%130%221%191$3@@$2@%157$1@$0@@@%124$2$1@@%221$3@$2@$0@@@|@|@|@|@"])
  fun op wf_encode_blist x = x
    val op wf_encode_blist =
    DT(((("Encode",32),
        [("Encode",[2,3,5,8,28,30]),("arithmetic",[21]),
         ("bool",[14,25,26,27,36,47,48,51,53,54,56,58,63,72,94,105,124]),
         ("combin",[19]),("list",[9,17,18,22,30,43,46]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%112%52%94%54%97%29%140%236$1@$0@@%239%221$2@$1@@%206$2@$0@@@|@|@|@"])
  fun op encode_num_def x = x
    val op encode_num_def =
    DT(((("Encode",34),
        [("Encode",[33]),
         ("arithmetic",
         [24,25,26,27,28,41,46,59,65,71,73,74,93,99,169,172,173,176,177,
          180,200,213,227,269]),
         ("bool",
         [8,14,15,25,26,27,36,43,47,48,51,52,53,54,56,58,63,64,72,78,93,96,
          101,104,105,107,129,146]),("combin",[19]),
         ("numeral",[0,3,5,7,8,17,21,34,35,40,41]),("prim_rec",[42]),
         ("relation",[101,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%135%212%53@@%156%137%53@%125@@%158%192@%158%192@%184@@@%156%163%53@@%158%167@%212%162%123%53@%187%154%201@@@@%187%154%201@@@@@@%158%192@%158%167@%212%162%123%53@%187%153%201@@@@%187%154%201@@@@@@@@@"])
  fun op encode_num_ind x = x
    val op encode_num_ind =
    DT(((("Encode",35),
        [("Encode",[33]),
         ("arithmetic",
         [24,25,26,27,28,41,46,59,65,71,73,74,93,99,169,172,173,176,177,
          180,200,213,227,269]),
         ("bool",
         [8,14,15,25,26,27,36,43,47,48,51,52,53,54,56,58,63,64,72,78,93,96,
          101,104,105,107,129,146]),("combin",[19]),
         ("numeral",[0,3,5,7,8,17,21,34,35,40,41]),("prim_rec",[42]),
         ("relation",[101,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%104%4%140%112%53%140%124%140%124%249%137$0@%125@@@%163$0@@@$1%162%123$0@%187%154%201@@@@%187%154%201@@@@@@%140%124%249%137$0@%125@@@%249%163$0@@@@$1%162%123$0@%187%153%201@@@@%187%154%201@@@@@@@$1$0@@|@@%112%68$1$0@|@@|@"])
  fun op wf_encode_num x = x
    val op wf_encode_num =
    DT(((("Encode",36),
        [("Encode",[7,10,33]),
         ("arithmetic",
         [12,18,24,25,26,27,28,41,46,59,65,71,73,74,93,99,169,172,173,176,
          177,180,200,213,227,269]),
         ("bool",
         [8,14,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,62,63,64,72,78,
          93,96,101,104,105,107,124,129,146,147]),("combin",[12,19]),
         ("num",[7]),("numeral",[0,3,5,7,8,17,21,34,35,40,41]),
         ("prim_rec",[1,42]),("relation",[101,121,126]),("rich_list",[70]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%104%56%240$0@%212@|@"])
  fun op encode_bnum_def_compute x = x
    val op encode_bnum_def_compute =
    DT(((("Encode",38),
        [("Encode",[37]),("arithmetic",[268]),
         ("bool",[26])]),["DISK_THM"]),
       [read"%124%112%53%135%208%125@$0@@%184@|@@%124%112%52%112%53%135%208%187%153$1@@@$0@@%158%249%163$0@@@%208%123%187%153$1@@@%187%153%201@@@@%162$0@%187%154%201@@@@@@|@|@@%112%52%112%53%135%208%187%154$1@@@$0@@%158%249%163$0@@@%208%187%153$1@@@%162$0@%187%154%201@@@@@@|@|@@@"])
  fun op wf_pred_bnum_total x = x
    val op wf_pred_bnum_total =
    DT(((("Encode",41),
        [("Encode",[6,40]),("arithmetic",[18,139]),
         ("bool",[25,36,51,53,63])]),["DISK_THM"]),
       [read"%112%52%248$0@%76%126$0@%166%187%154%201@@@$1@@|@|@"])
  fun op wf_pred_bnum x = x
    val op wf_pred_bnum =
    DT(((("Encode",42),
        [("Encode",[39,40]),("arithmetic",[217]),
         ("bool",[25,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%112%52%104%56%140%248$1@$0@@%205$1@$0@@|@|@"])
  fun op encode_bnum_length x = x
    val op encode_bnum_length =
    DT(((("Encode",43),
        [("Encode",[37]),("bool",[14,25,56]),("list",[22]),("num",[9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%112%52%112%53%137%179%208$1@$0@@@$1@|@|@"])
  fun op encode_bnum_inj x = x
    val op encode_bnum_inj =
    DT(((("Encode",44),
        [("Encode",[37]),
         ("arithmetic",[41,46,59,71,91,93,172,173,177,180,209,349,355]),
         ("bool",
         [14,25,36,51,52,53,54,56,58,63,93,96,104,105,107,124,129]),
         ("list",[9]),("num",[9]),("numeral",[3,8,33]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%112%52%112%76%112%88%140%124%126$1@%166%187%154%201@@@$2@@@%124%126$0@%166%187%154%201@@@$2@@@%135%208$2@$1@@%208$2@$0@@@@@%137$1@$0@@|@|@|@"])
  fun op wf_encode_bnum_collision_free x = x
    val op wf_encode_bnum_collision_free =
    DT(((("Encode",45),
        [("Encode",[7,37,39,43]),
         ("arithmetic",
         [8,18,22,24,25,41,46,59,64,71,73,75,76,93,139,172,173,177,180,183,
          209,212,217,218,224,225,230,237,246,350,351]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,55,56,58,63,71,72,76,
          80,81,84,93,94,96,101,104,105,107,124]),("list",[9]),("num",[9]),
         ("numeral",[0,3,5,7,8]),("prim_rec",[7]),("rich_list",[272]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%112%52%104%56%130%240$0@%208$1@@@%205$1@$0@@|@|@"])
  fun op wf_encode_bnum x = x
    val op wf_encode_bnum =
    DT(((("Encode",46),
        [("Encode",[42,45]),("bool",[25,26,47,48,53,54,63,71,94]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%112%52%104%56%140%248$1@$0@@%240$0@%208$1@@@|@|@"])
  fun op datatype_tree x = x
    val op datatype_tree =
    DT(((("Encode",58),[("bool",[25,171])]),["DISK_THM"]),
       [read"%161%65%188@@"])
  fun op tree_11 x = x
    val op tree_11 =
    DT(((("Encode",59),
        [("Encode",[48,50,51,52,53,54,55]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%90%16%111%21%90%19%111%23%130%139%188$3@$2@@%188$1@$0@@@%124%127$3@$1@@%136$2@$0@@@|@|@|@|@"])
  fun op tree_case_cong x = x
    val op tree_case_cong =
    DT(((("Encode",60),
        [("Encode",[48,50,51,52,53,54,55,56]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%118%2%118%3%95%35%140%124%139$2@$1@@%90%16%111%21%140%139$3@%188$1@$0@@@%128$2$1@$0@@%38$1@$0@@@|@|@@@%128%232$2@$0@@%232$1@%38@@@|@|@|@"])
  fun op tree_nchotomy x = x
    val op tree_nchotomy =
    DT(((("Encode",61),
        [("Encode",[48,50,51,52,53,54,55]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%118%67%141%10%145%48%139$2@%188$1@$0@@|@|@|@"])
  fun op tree_Axiom x = x
    val op tree_Axiom =
    DT(((("Encode",62),
        [("Encode",[48,50,51,52,53,54,55]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%96%39%92%40%108%43%143%44%142%45%124%90%16%111%21%128$3%188$1@$0@@@$6$1@$0@$2$0@@@|@|@@%124%129$0%185@@$3@@%118%18%111%21%129$2%159$1@$0@@@$4$1@$0@$3$1@@$2$0@@@|@|@@@|@|@|@|@|@"])
  fun op tree_induction x = x
    val op tree_induction =
    DT(((("Encode",63),
        [("Encode",[48,50,51,52,53,54,55]),
         ("bool",
         [14,15,25,26,31,36,51,53,56,58,60,63,105,124,132,133,138,181]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%107%5%103%6%140%124%111%48%140$1$0@@%90%10$3%188$0@$1@@|@@|@@%124$0%185@@%118%64%111%48%140%124$3$1@@$2$0@@@$2%159$1@$0@@@|@|@@@@%124%118%64$2$0@|@@%111%48$1$0@|@@@|@|@"])
  fun op tree_ind x = x
    val op tree_ind =
    DT(((("Encode",64),
        [("Encode",[63]),
         ("bool",
         [14,25,26,27,36,47,48,51,53,54,56,58,63,71,77,81,83,105,124,146]),
         ("combin",[19]),("list",[30,43,120]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%107%58%140%90%10%111%66%140%118%64%140%174$0@%181$1@@@$3$0@@|@@$2%188$1@$0@@@|@|@@%118%64$1$0@|@@|@"])
  fun op encode_tree_def x = x
    val op encode_tree_def =
    DT(((("Encode",67),
        [("Encode",[27,48,50,51,52,53,54,55,56,57,65,66]),
         ("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,31,36,51,53,54,56,58,60,63,96,101,104,105,124,132,
          133,138,181]),("combin",[5,12,19]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43,120]),
         ("numeral",[3,5,8]),("pair",[5,9,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("sat",[1,3,5,6,7,11,15]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%135%216%29@%188%10@%66@@@%151%29%10@@%211%216%29@@%66@@@"])
  fun op lift_tree_def x = x
    val op lift_tree_def =
    DT(((("Encode",70),
        [("Encode",[48,50,51,52,53,54,55,56,57,68,69]),
         ("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,31,36,51,53,54,56,58,60,63,96,101,104,105,124,132,
          133,138,181]),("combin",[5,12,19]),
         ("ind_type",[33,34,37,38,39,40]),("list",[13,43,120,154]),
         ("numeral",[3,5,8]),("pair",[5,9,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("sat",[1,3,5,6,7,11,15]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%130%225%54@%188%10@%66@@@%124%54%10@@%165%225%54@@%66@@@"])
  fun op wf_encode_tree x = x
    val op wf_encode_tree =
    DT(((("Encode",71),
        [("Encode",[0,3,4,5,8,25,48,50,51,52,53,54,55,64,67,70]),
         ("bool",
         [14,15,25,26,27,31,36,43,47,48,51,52,53,54,56,57,58,60,62,63,71,
          75,77,78,80,81,84,93,94,96,105,124,132,133,138,146,181]),
         ("combin",[19]),("ind_type",[33,34,37,38,39,40]),
         ("list",[9,10,13,30,43,46,120]),("rich_list",[70]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[19,20])]),["DISK_THM"]),
       [read"%94%54%97%29%140%236$1@$0@@%245%225$1@@%216$0@@@|@|@"])
  end
  val _ = DB.bindl "Encode"
  [("biprefix_def",biprefix_def,DB.Def),
   ("wf_pred_def",wf_pred_def,DB.Def),
   ("wf_encoder_def",wf_encoder_def,DB.Def),
   ("encode_unit_def",encode_unit_def,DB.Def),
   ("encode_bool_def",encode_bool_def,DB.Def),
   ("encode_prod_def",encode_prod_def,DB.Def),
   ("lift_prod_def",lift_prod_def,DB.Def),
   ("encode_sum_def",encode_sum_def,DB.Def),
   ("lift_sum_def",lift_sum_def,DB.Def),
   ("encode_option_def",encode_option_def,DB.Def),
   ("lift_option_def",lift_option_def,DB.Def),
   ("encode_list_def",encode_list_def,DB.Def),
   ("encode_blist_def",encode_blist_def,DB.Def),
   ("lift_blist_def",lift_blist_def,DB.Def),
   ("encode_num_primitive_def",encode_num_primitive_def,DB.Def),
   ("encode_bnum_def",encode_bnum_def,DB.Def),
   ("collision_free_def",collision_free_def,DB.Def),
   ("wf_pred_bnum_def",wf_pred_bnum_def,DB.Def),
   ("tree_TY_DEF",tree_TY_DEF,DB.Def),
   ("tree_case_def",tree_case_def,DB.Def),
   ("tree_size_def",tree_size_def,DB.Def),
   ("encode_tree_tupled_primitive_def",
    encode_tree_tupled_primitive_def,
    DB.Def), ("encode_tree_curried_def",encode_tree_curried_def,DB.Def),
   ("lift_tree_tupled_primitive_def",
    lift_tree_tupled_primitive_def,
    DB.Def), ("lift_tree_curried_def",lift_tree_curried_def,DB.Def),
   ("biprefix_refl",biprefix_refl,DB.Thm),
   ("biprefix_sym",biprefix_sym,DB.Thm),
   ("biprefix_append",biprefix_append,DB.Thm),
   ("biprefix_cons",biprefix_cons,DB.Thm),
   ("biprefix_appends",biprefix_appends,DB.Thm),
   ("wf_encoder_alt",wf_encoder_alt,DB.Thm),
   ("wf_encoder_eq",wf_encoder_eq,DB.Thm),
   ("wf_encoder_total",wf_encoder_total,DB.Thm),
   ("wf_encode_unit",wf_encode_unit,DB.Thm),
   ("wf_encode_bool",wf_encode_bool,DB.Thm),
   ("encode_prod_alt",encode_prod_alt,DB.Thm),
   ("wf_encode_prod",wf_encode_prod,DB.Thm),
   ("wf_encode_sum",wf_encode_sum,DB.Thm),
   ("wf_encode_option",wf_encode_option,DB.Thm),
   ("wf_encode_list",wf_encode_list,DB.Thm),
   ("encode_list_cong",encode_list_cong,DB.Thm),
   ("encode_blist_def_compute",encode_blist_def_compute,DB.Thm),
   ("lift_blist_suc",lift_blist_suc,DB.Thm),
   ("wf_encode_blist",wf_encode_blist,DB.Thm),
   ("encode_num_def",encode_num_def,DB.Thm),
   ("encode_num_ind",encode_num_ind,DB.Thm),
   ("wf_encode_num",wf_encode_num,DB.Thm),
   ("encode_bnum_def_compute",encode_bnum_def_compute,DB.Thm),
   ("wf_pred_bnum_total",wf_pred_bnum_total,DB.Thm),
   ("wf_pred_bnum",wf_pred_bnum,DB.Thm),
   ("encode_bnum_length",encode_bnum_length,DB.Thm),
   ("encode_bnum_inj",encode_bnum_inj,DB.Thm),
   ("wf_encode_bnum_collision_free",wf_encode_bnum_collision_free,DB.Thm),
   ("wf_encode_bnum",wf_encode_bnum,DB.Thm),
   ("datatype_tree",datatype_tree,DB.Thm), ("tree_11",tree_11,DB.Thm),
   ("tree_case_cong",tree_case_cong,DB.Thm),
   ("tree_nchotomy",tree_nchotomy,DB.Thm),
   ("tree_Axiom",tree_Axiom,DB.Thm),
   ("tree_induction",tree_induction,DB.Thm), ("tree_ind",tree_ind,DB.Thm),
   ("encode_tree_def",encode_tree_def,DB.Thm),
   ("lift_tree_def",lift_tree_def,DB.Thm),
   ("wf_encode_tree",wf_encode_tree,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars),
                         ("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("biprefix", (Term.prim_mk_const { Name = "biprefix", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("biprefix", (Term.prim_mk_const { Name = "biprefix", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_pred", (Term.prim_mk_const { Name = "wf_pred", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_pred", (Term.prim_mk_const { Name = "wf_pred", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_encoder", (Term.prim_mk_const { Name = "wf_encoder", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_encoder", (Term.prim_mk_const { Name = "wf_encoder", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_unit", (Term.prim_mk_const { Name = "encode_unit", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_unit", (Term.prim_mk_const { Name = "encode_unit", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_bool", (Term.prim_mk_const { Name = "encode_bool", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_bool", (Term.prim_mk_const { Name = "encode_bool", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_prod", (Term.prim_mk_const { Name = "encode_prod", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_prod", (Term.prim_mk_const { Name = "encode_prod", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_prod", (Term.prim_mk_const { Name = "lift_prod", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_prod", (Term.prim_mk_const { Name = "lift_prod", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_sum", (Term.prim_mk_const { Name = "encode_sum", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_sum", (Term.prim_mk_const { Name = "lift_sum", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_sum", (Term.prim_mk_const { Name = "lift_sum", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_option", (Term.prim_mk_const { Name = "encode_option", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_option", (Term.prim_mk_const { Name = "lift_option", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_option", (Term.prim_mk_const { Name = "lift_option", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_list", (Term.prim_mk_const { Name = "encode_list", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_blist", (Term.prim_mk_const { Name = "encode_blist", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_blist", (Term.prim_mk_const { Name = "lift_blist", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_blist", (Term.prim_mk_const { Name = "lift_blist", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_num", (Term.prim_mk_const { Name = "encode_num", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_num", (Term.prim_mk_const { Name = "encode_num", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_bnum", (Term.prim_mk_const { Name = "encode_bnum", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("collision_free", (Term.prim_mk_const { Name = "collision_free", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("collision_free", (Term.prim_mk_const { Name = "collision_free", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_pred_bnum", (Term.prim_mk_const { Name = "wf_pred_bnum", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_pred_bnum", (Term.prim_mk_const { Name = "wf_pred_bnum", Thy = "Encode"}))
  val _ = update_grms temp_add_type "tree"
  val _ = update_grms temp_add_type "tree"


  val _ = update_grms temp_add_type "@temp @ind_typeEncode0list"
  val _ = update_grms temp_add_type "@temp @ind_typeEncode0list"










  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Node", (Term.prim_mk_const { Name = "Node", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Node", (Term.prim_mk_const { Name = "Node", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tree_CASE", (Term.prim_mk_const { Name = "tree_CASE", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tree_size", (Term.prim_mk_const { Name = "tree_size", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tree1_size", (Term.prim_mk_const { Name = "tree1_size", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_tree_tupled", (Term.prim_mk_const { Name = "encode_tree_tupled", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_tree_tupled", (Term.prim_mk_const { Name = "encode_tree_tupled", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_tree", (Term.prim_mk_const { Name = "encode_tree", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encode_tree", (Term.prim_mk_const { Name = "encode_tree", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_tree_tupled", (Term.prim_mk_const { Name = "lift_tree_tupled", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_tree_tupled", (Term.prim_mk_const { Name = "lift_tree_tupled", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_tree", (Term.prim_mk_const { Name = "lift_tree", Thy = "Encode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift_tree", (Term.prim_mk_const { Name = "lift_tree", Thy = "Encode"}))
  val Encode_grammars = Parse.current_lgrms()
  end


  val _ = DefnBase.write_congs (encode_list_cong::DefnBase.read_congs());


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG tree_Axiom,
           case_def=tree_case_def,
           case_cong=tree_case_cong,
           induction=ORIG tree_induction,
           nchotomy=tree_nchotomy,
           size=SOME(Parse.Term`(Encode$tree_size) :('a -> (num$num)) -> ('a Encode$tree) -> (num$num)`,
                     ORIG tree_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME tree_11,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "Encode",
    thydataty = "compute",
    data =
        "Encode.biprefix_def Encode.collision_free_def Encode.wf_pred_bnum_def Encode.encode_blist_def Encode.encode_bnum_def_compute Encode.encode_bnum_def Encode.lift_blist_def Encode.encode_blist_def_compute Encode.encode_bool_def Encode.encode_list_def Encode.lift_option_def Encode.encode_option_def Encode.lift_sum_def Encode.encode_sum_def Encode.lift_prod_def Encode.encode_prod_def Encode.encode_unit_def Encode.wf_encoder_def Encode.wf_pred_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "Encode"
end
