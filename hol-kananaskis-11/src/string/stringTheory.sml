structure stringTheory :> stringTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading stringTheory ... " else ()
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
          ("string",
          Arbnum.fromString "1488586780",
          Arbnum.fromString "545382")
          [("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227"),
           ("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749")];
  val _ = Theory.incorporate_types "string" [("char", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("string", "char"), ID("min", "bool"),
   ID("pair", "prod"), ID("list", "list"), ID("num", "num"),
   ID("option", "option"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("arithmetic", ">"),
   ID("arithmetic", ">="), ID("bool", "?"), ID("min", "@"),
   ID("list", "APPEND"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("string", "CHR"), ID("bool", "COND"),
   ID("list", "CONS"), ID("string", "DEST_STRING"), ID("list", "EL"),
   ID("string", "EXPLODE"), ID("string", "EXTRACT"), ID("bool", "F"),
   ID("combin", "FAIL"), ID("string", "FIELDS"),
   ID("string", "FIELDS_tupled"), ID("list", "FLAT"), ID("list", "FOLDR"),
   ID("combin", "I"), ID("string", "IMPLODE"), ID("list", "LENGTH"),
   ID("bool", "LET"), ID("list", "MAP"), ID("list", "NIL"),
   ID("option", "NONE"), ID("list", "NULL"), ID("arithmetic", "NUMERAL"),
   ID("string", "ORD"), ID("rich_list", "SEG"), ID("option", "SOME"),
   ID("rich_list", "SPLITP"), ID("string", "STR"), ID("string", "SUB"),
   ID("string", "SUBSTRING"), ID("num", "SUC"), ID("bool", "T"),
   ID("list", "TL"), ID("string", "TOCHAR"), ID("string", "TOKENS"),
   ID("string", "TOKENS_tupled"), ID("string", "TRANSLATE"),
   ID("bool", "TYPE_DEFINITION"), ID("pair", "UNCURRY"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("string", "char_ge"), ID("string", "char_gt"),
   ID("string", "char_le"), ID("string", "char_lt"),
   ID("string", "char_size"), ID("string", "isAlpha"),
   ID("string", "isAlphaNum"), ID("string", "isAscii"),
   ID("string", "isCntrl"), ID("string", "isDigit"),
   ID("string", "isGraph"), ID("string", "isHexDigit"),
   ID("string", "isLower"), ID("list", "isPREFIX"),
   ID("string", "isPrint"), ID("string", "isPunct"),
   ID("string", "isSpace"), ID("string", "isUpper"),
   ID("list", "list_CASE"), ID("option", "option_CASE"),
   ID("pair", "pair_CASE"), ID("string", "string_ge"),
   ID("string", "string_gt"), ID("string", "string_le"),
   ID("string", "string_lt"), ID("string", "string_lt_tupled"),
   ID("string", "toLower"), ID("string", "toUpper"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [2], TYOP [4, 0], TYOP [3, 3, 3],
   TYOP [0, 4, 2], TYOP [0, 3, 2], TYOP [0, 3, 6], TYOP [0, 0, 2],
   TYOP [5], TYOP [0, 0, 9], TYOP [0, 0, 8], TYOP [0, 3, 3],
   TYOP [0, 0, 3], TYOP [0, 13, 12], TYOP [4, 3], TYOP [3, 8, 3],
   TYOP [0, 16, 15], TYOP [0, 3, 15], TYOP [0, 8, 18], TYOP [0, 3, 0],
   TYOP [3, 9, 9], TYOP [3, 3, 21], TYOP [0, 22, 3], TYOP [3, 3, 9],
   TYOP [0, 24, 0], TYOP [6, 9], TYOP [3, 9, 26], TYOP [3, 3, 27],
   TYOP [0, 28, 3], TYOP [3, 0, 3], TYOP [6, 30], TYOP [0, 3, 31],
   TYOP [0, 9, 0], TYOP [0, 28, 2], TYOP [0, 8, 6], TYOP [0, 16, 2],
   TYOP [0, 16, 36], TYOP [0, 4, 5], TYOP [0, 28, 34], TYOP [0, 8, 2],
   TYOP [0, 40, 2], TYOP [0, 13, 2], TYOP [0, 42, 2], TYOP [0, 35, 2],
   TYOP [0, 44, 2], TYOP [0, 6, 2], TYOP [0, 46, 2], TYOP [0, 7, 2],
   TYOP [0, 48, 2], TYOP [0, 34, 2], TYOP [0, 50, 2], TYOP [0, 9, 2],
   TYOP [0, 52, 2], TYOP [0, 26, 2], TYOP [0, 54, 2], TYOP [0, 9, 9],
   TYOP [0, 9, 56], TYOP [0, 3, 30], TYOP [0, 0, 58], TYOP [0, 3, 16],
   TYOP [0, 8, 60], TYOP [0, 3, 4], TYOP [0, 3, 62], TYOP [0, 9, 24],
   TYOP [0, 3, 64], TYOP [0, 21, 22], TYOP [0, 3, 66], TYOP [0, 27, 28],
   TYOP [0, 3, 68], TYOP [0, 9, 21], TYOP [0, 9, 70], TYOP [0, 26, 27],
   TYOP [0, 9, 72], TYOP [3, 31, 31], TYOP [0, 31, 74], TYOP [0, 31, 75],
   TYOP [0, 2, 2], TYOP [0, 2, 77], TYOP [0, 9, 52], TYOP [0, 20, 2],
   TYOP [0, 20, 80], TYOP [0, 17, 2], TYOP [0, 17, 82], TYOP [0, 5, 2],
   TYOP [0, 5, 84], TYOP [0, 29, 2], TYOP [0, 29, 86], TYOP [0, 15, 2],
   TYOP [0, 15, 88], TYOP [0, 31, 2], TYOP [0, 31, 90], TYOP [0, 10, 2],
   TYOP [0, 92, 2], TYOP [0, 48, 7], TYOP [0, 37, 2], TYOP [0, 95, 37],
   TYOP [0, 38, 2], TYOP [0, 97, 38], TYOP [0, 39, 2], TYOP [0, 99, 39],
   TYOP [0, 3, 12], TYOP [0, 0, 1], TYOP [0, 2, 102], TYOP [0, 15, 15],
   TYOP [0, 15, 104], TYOP [0, 2, 105], TYOP [0, 2, 57], TYOP [0, 0, 12],
   TYOP [0, 3, 104], TYOP [0, 9, 20], TYOP [0, 2, 10], TYOP [0, 10, 111],
   TYOP [0, 15, 3], TYOP [0, 108, 101], TYOP [0, 3, 9], TYOP [0, 4, 15],
   TYOP [0, 116, 116], TYOP [0, 13, 18], TYOP [0, 9, 12], TYOP [0, 9, 119],
   TYOP [0, 9, 26], TYOP [0, 30, 31], TYOP [0, 8, 62], TYOP [0, 52, 92],
   TYOP [0, 3, 18], TYOP [0, 125, 116], TYOP [0, 20, 20],
   TYOP [0, 127, 20], TYOP [0, 7, 128], TYOP [0, 17, 17],
   TYOP [0, 130, 17], TYOP [0, 37, 131], TYOP [0, 5, 5], TYOP [0, 133, 5],
   TYOP [0, 38, 134], TYOP [0, 29, 29], TYOP [0, 136, 29],
   TYOP [0, 39, 137], TYOP [0, 0, 6], TYOP [0, 139, 2], TYOP [0, 2, 140],
   TYOP [0, 3, 141], TYOP [0, 0, 20], TYOP [0, 143, 0], TYOP [0, 0, 144],
   TYOP [0, 3, 145], TYOP [0, 0, 18], TYOP [0, 147, 15], TYOP [0, 15, 148],
   TYOP [0, 3, 149], TYOP [0, 9, 3], TYOP [0, 151, 3], TYOP [0, 3, 152],
   TYOP [0, 26, 153], TYOP [0, 30, 2], TYOP [0, 155, 2], TYOP [0, 2, 156],
   TYOP [0, 31, 157], TYOP [0, 30, 3], TYOP [0, 159, 3], TYOP [0, 3, 160],
   TYOP [0, 31, 161], TYOP [0, 30, 140], TYOP [0, 108, 3],
   TYOP [0, 30, 164], TYOP [0, 19, 15], TYOP [0, 16, 166], TYOP [0, 4, 48],
   TYOP [0, 27, 3], TYOP [0, 3, 169], TYOP [0, 170, 3], TYOP [0, 28, 171],
   TYOP [0, 26, 3], TYOP [0, 9, 173], TYOP [0, 174, 3], TYOP [0, 27, 175],
   TYOP [0, 91, 2], TYOP [0, 74, 177]]
  end
  val _ = Theory.incorporate_consts "string" tyvector
     [("toUpper", 1), ("toLower", 1), ("string_lt_tupled", 5),
      ("string_lt", 7), ("string_le", 7), ("string_gt", 7),
      ("string_ge", 7), ("isUpper", 8), ("isSpace", 8), ("isPunct", 8),
      ("isPrint", 8), ("isLower", 8), ("isHexDigit", 8), ("isGraph", 8),
      ("isDigit", 8), ("isCntrl", 8), ("isAscii", 8), ("isAlphaNum", 8),
      ("isAlpha", 8), ("char_size", 10), ("char_lt", 11), ("char_le", 11),
      ("char_gt", 11), ("char_ge", 11), ("TRANSLATE", 14),
      ("TOKENS_tupled", 17), ("TOKENS", 19), ("TOCHAR", 20),
      ("SUBSTRING", 23), ("SUB", 25), ("STR", 13), ("ORD", 10),
      ("IMPLODE", 12), ("FIELDS_tupled", 17), ("FIELDS", 19),
      ("EXTRACT", 29), ("EXPLODE", 12), ("DEST_STRING", 32), ("CHR", 33)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("> 255", 2), TMV("EXTRACT", 29), TMV("FIELDS_tupled", 17),
   TMV("P", 8), TMV("P", 6), TMV("P", 7), TMV("P", 34), TMV("P'", 35),
   TMV("R", 7), TMV("R", 37), TMV("R", 38), TMV("R", 39),
   TMV("TOCHAR", 20), TMV("TOKENS_tupled", 17), TMV("a", 0), TMV("a", 3),
   TMV("a", 16), TMV("a", 4), TMV("a", 28), TMV("a'", 0), TMV("b", 0),
   TMV("c", 0), TMV("c1", 0), TMV("c2", 0), TMV("clist", 3), TMV("cs", 3),
   TMV("cs1", 3), TMV("cs2", 3), TMV("f", 13), TMV("h", 0), TMV("i", 9),
   TMV("l", 3), TMV("l1", 3), TMV("l2", 3), TMV("l3", 3), TMV("n", 9),
   TMV("r", 3), TMV("r", 9), TMV("r'", 9), TMV("rep", 10), TMV("rst", 3),
   TMV("s", 3), TMV("s'", 3), TMV("s1", 3), TMV("s2", 3), TMV("s3", 3),
   TMV("string_lt_tupled", 5), TMV("t", 3), TMV("t1", 3), TMV("t2", 3),
   TMV("v", 8), TMV("v", 3), TMV("v", 31), TMV("v", 30), TMV("v1", 3),
   TMV("v1", 9), TMV("v1", 31), TMV("v1", 27), TMV("v2", 0), TMV("v2", 26),
   TMV("v2", 30), TMV("v3", 3), TMV("v3", 26), TMV("v3", 30), TMV("v4", 0),
   TMV("v5", 3), TMV("v6", 0), TMV("x", 8), TMV("x", 3), TMV("x1", 3),
   TMC(7, 40), TMC(7, 41), TMC(7, 43), TMC(7, 45), TMC(7, 47), TMC(7, 49),
   TMC(7, 51), TMC(7, 46), TMC(7, 53), TMC(7, 55), TMC(8, 57), TMC(9, 59),
   TMC(9, 61), TMC(9, 63), TMC(9, 65), TMC(9, 67), TMC(9, 69), TMC(9, 71),
   TMC(9, 73), TMC(9, 76), TMC(10, 57), TMC(11, 78), TMC(12, 9),
   TMC(13, 79), TMC(14, 79), TMC(15, 78), TMC(15, 11), TMC(15, 81),
   TMC(15, 83), TMC(15, 85), TMC(15, 87), TMC(15, 7), TMC(15, 89),
   TMC(15, 79), TMC(15, 91), TMC(15, 38), TMC(16, 78), TMC(17, 79),
   TMC(18, 79), TMC(19, 40), TMC(19, 93), TMC(19, 46), TMC(19, 53),
   TMC(20, 94), TMC(20, 96), TMC(20, 98), TMC(20, 100), TMC(21, 101),
   TMC(22, 0), TMC(23, 56), TMC(24, 56), TMC(25, 33), TMC(26, 103),
   TMC(26, 106), TMC(26, 107), TMC(27, 108), TMC(27, 109), TMC(28, 32),
   TMC(29, 110), TMC(30, 12), TMC(31, 29), TMC(32, 2), TMC(33, 112),
   TMC(34, 19), TMC(35, 17), TMC(36, 113), TMC(37, 114), TMC(38, 77),
   TMC(38, 1), TMC(38, 12), TMC(38, 104), TMC(39, 12), TMC(40, 115),
   TMC(41, 117), TMC(42, 118), TMC(43, 3), TMC(43, 15), TMC(44, 26),
   TMC(44, 31), TMC(45, 6), TMC(46, 56), TMC(47, 10), TMC(48, 120),
   TMC(49, 121), TMC(49, 122), TMC(50, 123), TMC(51, 13), TMC(52, 25),
   TMC(53, 23), TMC(54, 56), TMC(55, 2), TMC(56, 12), TMC(57, 20),
   TMC(58, 19), TMC(59, 17), TMC(60, 14), TMC(61, 124), TMC(62, 126),
   TMC(63, 48), TMC(63, 95), TMC(63, 97), TMC(63, 99), TMC(64, 129),
   TMC(64, 132), TMC(64, 135), TMC(64, 138), TMC(65, 9), TMC(66, 78),
   TMC(67, 11), TMC(68, 11), TMC(69, 11), TMC(70, 11), TMC(71, 10),
   TMC(72, 8), TMC(73, 8), TMC(74, 8), TMC(75, 8), TMC(76, 8), TMC(77, 8),
   TMC(78, 8), TMC(79, 8), TMC(80, 7), TMC(81, 8), TMC(82, 8), TMC(83, 8),
   TMC(84, 8), TMC(85, 142), TMC(85, 146), TMC(85, 150), TMC(86, 154),
   TMC(86, 158), TMC(86, 162), TMC(87, 163), TMC(87, 165), TMC(87, 167),
   TMC(87, 168), TMC(87, 172), TMC(87, 176), TMC(87, 178), TMC(88, 7),
   TMC(89, 7), TMC(90, 7), TMC(91, 7), TMC(92, 5), TMC(93, 1), TMC(94, 1),
   TMC(95, 77)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op DEST_STRING_def x = x
    val op DEST_STRING_def =
    DT(((("string",64),[("list",[13])]),["DISK_THM"]),
       [read"%91%104%127%145@@%148@@%70%21%77%40%104%127%125$1@$0@@@%154%81$1@$0@@@|@|@@"])
  fun op char_TY_DEF x = x
    val op char_TY_DEF =
    DT(((("string",0),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
       [read"%110%39%166%35%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@|@$0@|@"])
  fun op char_BIJ x = x
    val op char_BIJ =
    DT(((("string",1),[("bool",[117]),("string",[0])]),["DISK_THM"]),
       [read"%91%70%14%96%121%151$0@@@$0@|@@%78%37%95%35%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@|$0@@%103%151%121$0@@@$0@@|@@"])
  fun op isLower_def x = x
    val op isLower_def =
    DT(((("string",13),[]),[]),
       [read"%70%21%95%190$0@@%91%94%150%119%120%119%119%119%120%176@@@@@@@@%151$0@@@%94%151$0@@%150%120%120%119%120%120%120%176@@@@@@@@@@|@"])
  fun op isUpper_def x = x
    val op isUpper_def =
    DT(((("string",14),[]),[]),
       [read"%70%21%95%195$0@@%91%94%150%119%120%119%119%119%119%176@@@@@@@@%151$0@@@%94%151$0@@%150%120%120%119%120%120%119%176@@@@@@@@@@|@"])
  fun op isDigit_def x = x
    val op isDigit_def =
    DT(((("string",15),[]),[]),
       [read"%70%21%95%187$0@@%91%94%150%120%119%119%119%120%176@@@@@@@%151$0@@@%94%151$0@@%150%119%120%119%120%120%176@@@@@@@@@|@"])
  fun op isAlpha_def x = x
    val op isAlpha_def =
    DT(((("string",16),[]),[]),
       [read"%70%21%95%183$0@@%177%190$0@@%195$0@@@|@"])
  fun op isHexDigit_def x = x
    val op isHexDigit_def =
    DT(((("string",17),[]),[]),
       [read"%70%21%95%189$0@@%177%91%94%150%120%119%119%119%120%176@@@@@@@%151$0@@@%94%151$0@@%150%119%120%119%120%120%176@@@@@@@@@%177%91%94%150%119%120%119%119%119%120%176@@@@@@@@%151$0@@@%94%151$0@@%150%120%120%120%119%119%120%176@@@@@@@@@@%91%94%150%119%120%119%119%119%119%176@@@@@@@@%151$0@@@%94%151$0@@%150%120%120%120%119%119%119%176@@@@@@@@@@@@|@"])
  fun op isAlphaNum_def x = x
    val op isAlphaNum_def =
    DT(((("string",18),[]),[]),
       [read"%70%21%95%184$0@@%177%183$0@@%187$0@@@|@"])
  fun op isPrint_def x = x
    val op isPrint_def =
    DT(((("string",19),[]),[]),
       [read"%70%21%95%192$0@@%91%94%150%120%119%119%119%119%176@@@@@@@%151$0@@@%93%151$0@@%150%119%119%119%119%119%119%119%176@@@@@@@@@@@|@"])
  fun op isSpace_def x = x
    val op isSpace_def =
    DT(((("string",20),[]),[]),
       [read"%70%21%95%194$0@@%177%103%151$0@@%150%120%119%119%119%119%176@@@@@@@@%91%94%150%119%120%119%176@@@@@%151$0@@@%94%151$0@@%150%119%120%120%176@@@@@@@@|@"])
  fun op isGraph_def x = x
    val op isGraph_def =
    DT(((("string",21),[]),[]),
       [read"%70%21%95%188$0@@%91%192$0@@%216%194$0@@@@|@"])
  fun op isPunct_def x = x
    val op isPunct_def =
    DT(((("string",22),[]),[]),
       [read"%70%21%95%193$0@@%91%188$0@@%216%184$0@@@@|@"])
  fun op isAscii_def x = x
    val op isAscii_def =
    DT(((("string",23),[]),[]),
       [read"%70%21%95%185$0@@%94%151$0@@%150%119%119%119%119%119%119%119%176@@@@@@@@@@|@"])
  fun op isCntrl_def x = x
    val op isCntrl_def =
    DT(((("string",24),[]),[]),
       [read"%70%21%95%186$0@@%177%93%151$0@@%150%120%119%119%119%119%176@@@@@@@@%94%150%119%119%119%119%119%119%119%176@@@@@@@@@%151$0@@@@|@"])
  fun op toLower_def x = x
    val op toLower_def =
    DT(((("string",25),[]),[]),
       [read"%70%21%96%214$0@@%122%195$0@@%121%80%151$0@@%150%120%119%119%119%119%176@@@@@@@@@$0@@|@"])
  fun op toUpper_def x = x
    val op toUpper_def =
    DT(((("string",26),[]),[]),
       [read"%70%21%96%215$0@@%122%190$0@@%121%90%151$0@@%150%120%119%119%119%119%176@@@@@@@@@$0@@|@"])
  fun op char_lt_def x = x
    val op char_lt_def =
    DT(((("string",27),[]),[]),
       [read"%70%14%70%20%95%181$1@$0@@%93%151$1@@%151$0@@@|@|@"])
  fun op char_le_def x = x
    val op char_le_def =
    DT(((("string",28),[]),[]),
       [read"%70%14%70%20%95%180$1@$0@@%94%151$1@@%151$0@@@|@|@"])
  fun op char_gt_def x = x
    val op char_gt_def =
    DT(((("string",29),[]),[]),
       [read"%70%14%70%20%95%179$1@$0@@%107%151$1@@%151$0@@@|@|@"])
  fun op char_ge_def x = x
    val op char_ge_def =
    DT(((("string",30),[]),[]),
       [read"%70%14%70%20%95%178$1@$0@@%108%151$1@@%151$0@@@|@|@"])
  fun op char_size_def x = x
    val op char_size_def =
    DT(((("string",33),[]),[]), [read"%70%21%103%182$0@@%92@|@"])
  fun op SUB_def x = x
    val op SUB_def =
    DT(((("string",34),[("pair",[16])]),["DISK_THM"]),
       [read"%77%41%78%35%96%157%84$1@$0@@@%128$0@$1@@|@|@"])
  fun op STR_def x = x
    val op STR_def =
    DT(((("string",35),[]),[]), [read"%70%21%101%156$0@@%125$0@%145@@|@"])
  fun op TOCHAR_primitive_def x = x
    val op TOCHAR_primitive_def =
    DT(((("string",36),[]),[]),
       [read"%97%162@%172%113%8%168$0@|@@%12%15%197$0@%118@%21%54%197$0@%138$1@@%58%61%118||@||@||@@"])
  fun op SUBSTRING_def x = x
    val op SUBSTRING_def =
    DT(((("string",39),[("pair",[16])]),["DISK_THM"]),
       [read"%77%41%78%30%78%35%101%158%85$2@%87$1@$0@@@@%152$0@$1@$2@@|@|@|@"])
  fun op TRANSLATE_def x = x
    val op TRANSLATE_def =
    DT(((("string",40),[]),[]),
       [read"%72%28%77%41%101%165$1@$0@@%135%144$1@$0@@@|@|@"])
  fun op TOKENS_tupled_primitive_def x = x
    val op TOKENS_tupled_primitive_def =
    DT(((("string",41),[]),[]),
       [read"%98%164@%173%114%9%91%169$0@@%91%77%47%70%29%71%3%77%31%77%36%106%91%105%83$1@$0@@%155$2@%125$3@$4@@@@%149$1@@@$5%82$2@%161$0@@@%82$2@%125$3@$4@@@@|@|@|@|@|@@%77%47%70%29%71%3%77%31%77%36%106%91%105%83$1@$0@@%155$2@%125$3@$4@@@@%216%149$1@@@@$5%82$2@$0@@%82$2@%125$3@$4@@@@|@|@|@|@|@@@|@@%13%16%204$0@%3%54%198$0@%140%146@@%29%47%140%143%167%31%36%123%149$1@@$7%82$5@%161$0@@@@%126$1@$7%82$5@$0@@@@||@@%155$3@%125$1@$0@@@@||@||@||@@"])
  fun op TOKENS_curried_def x = x
    val op TOKENS_curried_def =
    DT(((("string",42),[]),[]),
       [read"%71%67%77%69%102%163$1@$0@@%164%82$1@$0@@@|@|@"])
  fun op FIELDS_tupled_primitive_def x = x
    val op FIELDS_tupled_primitive_def =
    DT(((("string",45),[]),[]),
       [read"%98%134@%173%114%9%91%169$0@@%91%77%47%70%29%71%3%77%31%77%36%106%91%105%83$1@$0@@%155$2@%125$3@$4@@@@%149$1@@@$5%82$2@%161$0@@@%82$2@%125$3@$4@@@@|@|@|@|@|@@%77%47%70%29%71%3%77%31%77%36%106%91%105%83$1@$0@@%155$2@%125$3@$4@@@@%91%216%149$1@@@%216%149$0@@@@@$5%82$2@%161$0@@@%82$2@%125$3@$4@@@@|@|@|@|@|@@@|@@%2%16%204$0@%3%54%198$0@%140%126%145@%146@@@%29%47%140%143%167%31%36%123%149$1@@%126%145@$7%82$5@%161$0@@@@@%123%149$0@@%126$1@%146@@%126$1@$7%82$5@%161$0@@@@@@||@@%155$3@%125$1@$0@@@@||@||@||@@"])
  fun op FIELDS_curried_def x = x
    val op FIELDS_curried_def =
    DT(((("string",46),[]),[]),
       [read"%71%67%77%69%102%133$1@$0@@%134%82$1@$0@@@|@|@"])
  fun op IMPLODE_def x = x
    val op IMPLODE_def =
    DT(((("string",49),[("list",[13])]),["DISK_THM"]),
       [read"%91%101%141%145@@%145@@%70%21%77%25%101%141%125$1@$0@@@%125$1@%141$0@@@|@|@@"])
  fun op EXPLODE_def x = x
    val op EXPLODE_def =
    DT(((("string",50),[("list",[13])]),["DISK_THM"]),
       [read"%91%101%129%145@@%145@@%70%21%77%41%101%129%125$1@$0@@@%125$1@%129$0@@@|@|@@"])
  fun op EXTRACT_primitive_def x = x
    val op EXTRACT_primitive_def =
    DT(((("string",59),[]),[]),
       [read"%100%130@%175%116%11%171$0@|@@%1%18%206$0@%41%57%207$0@%30%62%199$0@%139%158%85$3@%87$1@%90%142$3@@$1@@@@@@%35%139%158%85$4@%87$2@$0@@@@|@||@||@||@@"])
  fun op string_lt_tupled_primitive_def x = x
    val op string_lt_tupled_primitive_def =
    DT(((("string",89),[]),[]),
       [read"%99%213@%174%115%10%91%170$0@@%70%23%70%22%77%44%77%43$4%83$0@$1@@%83%125$2@$0@@%125$3@$1@@@|@|@|@|@@|@@%46%17%205$0@%41%54%196$0@%137%131@@%21%42%196$3@%137%160@@%22%43%137%177%181$1@$3@@%91%96$1@$3@@$7%83$0@$2@@@@@||@||@||@||@@"])
  fun op string_lt_curried_def x = x
    val op string_lt_curried_def =
    DT(((("string",90),[]),[]),
       [read"%77%68%77%69%95%212$1@$0@@%213%83$1@$0@@@|@|@"])
  fun op string_le_def x = x
    val op string_le_def =
    DT(((("string",93),[]),[]),
       [read"%77%43%77%44%95%211$1@$0@@%177%101$1@$0@@%212$1@$0@@@|@|@"])
  fun op string_gt_def x = x
    val op string_gt_def =
    DT(((("string",94),[]),[]),
       [read"%77%43%77%44%95%210$1@$0@@%212$0@$1@@|@|@"])
  fun op string_ge_def x = x
    val op string_ge_def =
    DT(((("string",95),[]),[]),
       [read"%77%43%77%44%95%209$1@$0@@%211$0@$1@@|@|@"])
  fun op IMPLODE_STRING x = x
    val op IMPLODE_STRING =
    DT(((("string",73),
        [("bool",[14,25,51,56,63]),("list",[28,43,48]),
         ("string",[49])]),["DISK_THM"]),
       [read"%77%24%101%141$0@@%136%125@%145@$0@@|@"])
  fun op EXPLODE_DEST_STRING x = x
    val op EXPLODE_DEST_STRING =
    DT(((("string",72),
        [("bool",[25,51,56,63]),("list",[46,48]),("option",[7]),
         ("pair",[49]),("string",[50,56,64])]),["DISK_THM"]),
       [read"%77%41%101%129$0@@%201%127$0@@%145@%53%203$0@%21%47%125$1@%129$0@@||@|@@|@"])
  fun op IMPLODE_EQ_THM x = x
    val op IMPLODE_EQ_THM =
    DT(((("string",71),
        [("bool",[25,26,27,51,53,56,58,63,105,106,124]),
         ("list",[46,48,49]),("string",[49,52,53])]),["DISK_THM"]),
       [read"%70%21%77%41%77%31%91%95%101%125$2@$1@@%141$0@@@%101$0@%125$2@%129$1@@@@@%95%101%141$0@@%125$2@$1@@@%101$0@%125$2@%129$1@@@@@|@|@|@"])
  fun op EXPLODE_EQ_THM x = x
    val op EXPLODE_EQ_THM =
    DT(((("string",70),
        [("bool",[25,26,27,51,53,56,58,63,105,106,124]),
         ("list",[46,48,49]),("string",[50,52,53])]),["DISK_THM"]),
       [read"%77%41%70%29%77%47%91%95%101%125$1@$0@@%129$2@@@%101$2@%125$1@%141$0@@@@@%95%101%129$2@@%125$1@$0@@@%101$2@%125$1@%141$0@@@@@|@|@|@"])
  fun op EXPLODE_EQ_NIL x = x
    val op EXPLODE_EQ_NIL =
    DT(((("string",69),
        [("bool",[25,26,27,54,58,63]),("list",[46,49]),
         ("string",[50])]),["DISK_THM"]),
       [read"%91%95%101%129%41@@%145@@%101%41@%145@@@%95%101%145@%129%41@@@%101%41@%145@@@"])
  fun op IMPLODE_EQ_EMPTYSTRING x = x
    val op IMPLODE_EQ_EMPTYSTRING =
    DT(((("string",68),
        [("bool",[25,26,27,54,58,63]),("list",[46,49]),
         ("string",[49])]),["DISK_THM"]),
       [read"%91%95%101%141%31@@%145@@%101%31@%145@@@%95%101%145@%141%31@@@%101%31@%145@@@"])
  fun op IMPLODE_EQNS x = x
    val op IMPLODE_EQNS =
    DT(((("string",67),[("string",[49])]),["DISK_THM"]),
       [read"%91%101%141%145@@%145@@%70%21%77%25%101%141%125$1@$0@@@%125$1@%141$0@@@|@|@@"])
  fun op EXPLODE_EQNS x = x
    val op EXPLODE_EQNS =
    DT(((("string",66),[("string",[50])]),["DISK_THM"]),
       [read"%91%101%129%145@@%145@@%70%21%77%41%101%129%125$1@$0@@@%125$1@%129$0@@@|@|@@"])
  fun op DEST_STRING_LEMS x = x
    val op DEST_STRING_LEMS =
    DT(((("string",65),
        [("bool",[25,26,27,54,56,58,63]),("list",[46,48,49]),
         ("option",[10,11]),("pair",[4]),("string",[64])]),["DISK_THM"]),
       [read"%77%41%91%95%104%127$0@@%148@@%101$0@%145@@@%95%104%127$0@@%154%81%21@%47@@@@%101$0@%125%21@%47@@@@|@"])
  fun op STRLEN_EXPLODE_THM x = x
    val op STRLEN_EXPLODE_THM =
    DT(((("string",63),[("bool",[25,56]),("string",[51])]),["DISK_THM"]),
       [read"%103%142%41@@%142%129%41@@@"])
  fun op ORD_11 x = x
    val op ORD_11 =
    DT(((("string",2),[("bool",[26]),("string",[1])]),["DISK_THM"]),
       [read"%70%14%70%19%95%103%151$1@@%151$0@@@%96$1@$0@@|@|@"])
  fun op CHR_11 x = x
    val op CHR_11 =
    DT(((("string",3),[("bool",[26]),("string",[1])]),["DISK_THM"]),
       [read"%78%37%78%38%106%93$1@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@%106%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@%95%96%121$1@@%121$0@@@%103$1@$0@@@@|@|@"])
  fun op ORD_ONTO x = x
    val op ORD_ONTO =
    DT(((("string",4),[("bool",[26]),("string",[1])]),["DISK_THM"]),
       [read"%78%37%95%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@%109%14%103$1@%151$0@@|@@|@"])
  fun op CHR_ONTO x = x
    val op CHR_ONTO =
    DT(((("string",5),[("bool",[25,63]),("string",[1])]),["DISK_THM"]),
       [read"%70%14%112%37%91%96$1@%121$0@@@%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@|@|@"])
  fun op CHR_ORD x = x
    val op CHR_ORD =
    DT(((("string",6),[("string",[1])]),["DISK_THM"]),
       [read"%70%14%96%121%151$0@@@$0@|@"])
  fun op ORD_CHR x = x
    val op ORD_CHR =
    DT(((("string",7),[("string",[1])]),["DISK_THM"]),
       [read"%78%37%95%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@%103%151%121$0@@@$0@@|@"])
  fun op ORD_CHR_RWT x = x
    val op ORD_CHR_RWT =
    DT(((("string",8),
        [("bool",[25,26,47,48,53,54,63,71,94]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),("string",[7])]),["DISK_THM"]),
       [read"%78%37%106%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@%103%151%121$0@@@$0@@|@"])
  fun op ORD_CHR_COMPUTE x = x
    val op ORD_CHR_COMPUTE =
    DT(((("string",9),
        [("bool",[25,26,27,30,56,58,63,64,105,129]),("combin",[40]),
         ("string",[8])]),["DISK_THM"]),
       [read"%78%35%103%151%121$0@@@%124%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@$0@%132%151@%0@%121$0@@@@|@"])
  fun op ORD_BOUND x = x
    val op ORD_BOUND =
    DT(((("string",10),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,74,78,81,84,94,
          146]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("string",[4])]),["DISK_THM"]),
       [read"%70%21%93%151$0@@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@|@"])
  fun op char_nchotomy x = x
    val op char_nchotomy =
    DT(((("string",11),[("bool",[25,56]),("string",[6])]),["DISK_THM"]),
       [read"%70%21%112%35%96$1@%121$0@@|@|@"])
  fun op ranged_char_nchotomy x = x
    val op ranged_char_nchotomy =
    DT(((("string",12),
        [("bool",[25,51,56,63]),("string",[6,10])]),["DISK_THM"]),
       [read"%70%21%112%35%91%96$1@%121$0@@@%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@|@|@"])
  fun op CHAR_EQ_THM x = x
    val op CHAR_EQ_THM =
    DT(((("string",31),
        [("bool",[25,26,53,56,58,105,124]),("string",[2])]),["DISK_THM"]),
       [read"%70%22%70%23%95%96$1@$0@@%103%151$1@@%151$0@@@|@|@"])
  fun op CHAR_INDUCT_THM x = x
    val op CHAR_INDUCT_THM =
    DT(((("string",32),[("bool",[25,63]),("string",[5])]),["DISK_THM"]),
       [read"%71%3%106%78%35%106%93$0@%150%120%119%119%119%119%119%119%119%176@@@@@@@@@@@$1%121$0@@@|@@%70%21$1$0@|@@|@"])
  fun op TOCHAR_ind x = x
    val op TOCHAR_ind =
    DT(((("string",37),
        [("bool",[25,26,47,48,53,54,58,63,72,76,78,80]),("list",[46]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%74%4%106%91%70%21$1%125$0@%145@@|@@%91$0%145@@%70%66%70%64%77%65$3%125$2@%125$1@$0@@@|@|@|@@@@%77%51$1$0@|@@|@"])
  fun op TOCHAR_def x = x
    val op TOCHAR_def =
    DT(((("string",38),
        [("bool",[15]),("combin",[19]),("list",[6]),("relation",[107,126]),
         ("string",[36])]),["DISK_THM"]),
       [read"%96%162%125%21@%145@@@%21@"])
  fun op TOKENS_ind x = x
    val op TOKENS_ind =
    DT(((("string",43),
        [("arithmetic",[24,25,27,37,38,46,59,71,93,95,173,176,180]),
         ("bool",
         [14,15,25,26,27,30,36,53,54,55,58,63,64,96,101,104,105,123,124,
          129]),("combin",[5,19]),("list",[6,18,22,43,46,49,92]),
         ("numeral",[3,5,8]),("pair",[4,5,7,9,16,49]),
         ("prim_rec",[4,43,44]),("relation",[101,113,121,126]),
         ("rich_list",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("string",[41,42])]),["DISK_THM"]),
       [read"%73%7%106%91%71%3$1$0@%145@|@@%71%3%70%29%77%47%106%91%77%31%77%36%106%91%105%83$1@$0@@%155$4@%125$3@$2@@@@%149$1@@@$5$4@%161$0@@@|@|@@%77%31%77%36%106%91%105%83$1@$0@@%155$4@%125$3@$2@@@@%216%149$1@@@@$5$4@$0@@|@|@@@$3$2@%125$1@$0@@@|@|@|@@@%71%50%77%54$2$1@$0@|@|@@|@"])
  fun op TOKENS_def x = x
    val op TOKENS_def =
    DT(((("string",44),
        [("arithmetic",[24,25,27,37,38,46,59,71,93,95,173,176,180]),
         ("bool",
         [14,15,25,26,27,30,36,53,54,55,58,63,64,96,101,104,105,123,124,
          129]),("combin",[5,19]),("list",[6,18,22,43,46,49,92]),
         ("numeral",[3,5,8]),("pair",[4,5,7,9,16,49]),
         ("prim_rec",[4,43,44]),("relation",[101,113,121,126]),
         ("rich_list",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("string",[41,42])]),["DISK_THM"]),
       [read"%91%71%3%102%163$0@%145@@%146@|@@%77%47%70%29%71%3%102%163$0@%125$1@$2@@@%143%167%31%36%123%149$1@@%163$2@%161$0@@@%126$1@%163$2@$0@@@||@@%155$0@%125$1@$2@@@@|@|@|@@"])
  fun op FIELDS_ind x = x
    val op FIELDS_ind =
    DT(((("string",47),
        [("arithmetic",[24,25,27,34,38,46,59,71,93,95,173,176,180]),
         ("bool",
         [14,15,25,26,27,30,36,53,54,58,63,64,96,101,104,105,123,124,129]),
         ("combin",[5,19]),("list",[6,18,22,43,46,49,92]),
         ("numeral",[3,5,8]),("pair",[4,5,7,9,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("rich_list",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("string",[45,46])]),["DISK_THM"]),
       [read"%73%7%106%91%71%3$1$0@%145@|@@%71%3%70%29%77%47%106%91%77%31%77%36%106%91%105%83$1@$0@@%155$4@%125$3@$2@@@@%149$1@@@$5$4@%161$0@@@|@|@@%77%31%77%36%106%91%105%83$1@$0@@%155$4@%125$3@$2@@@@%91%216%149$1@@@%216%149$0@@@@@$5$4@%161$0@@@|@|@@@$3$2@%125$1@$0@@@|@|@|@@@%71%50%77%54$2$1@$0@|@|@@|@"])
  fun op FIELDS_def x = x
    val op FIELDS_def =
    DT(((("string",48),
        [("arithmetic",[24,25,27,34,38,46,59,71,93,95,173,176,180]),
         ("bool",
         [14,15,25,26,27,30,36,53,54,58,63,64,96,101,104,105,123,124,129]),
         ("combin",[5,19]),("list",[6,18,22,43,46,49,92]),
         ("numeral",[3,5,8]),("pair",[4,5,7,9,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("rich_list",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("string",[45,46])]),["DISK_THM"]),
       [read"%91%71%3%102%133$0@%145@@%126%145@%146@@|@@%77%47%70%29%71%3%102%133$0@%125$1@$2@@@%143%167%31%36%123%149$1@@%126%145@%133$2@%161$0@@@@%123%149$0@@%126$1@%146@@%126$1@%133$2@%161$0@@@@@||@@%155$0@%125$1@$2@@@@|@|@|@@"])
  fun op IMPLODE_EXPLODE_I x = x
    val op IMPLODE_EXPLODE_I =
    DT(((("string",51),
        [("bool",[14,25,51,56,63]),("list",[43,48]),
         ("string",[49,50])]),["DISK_THM"]),
       [read"%91%101%129%41@@%41@@%101%141%41@@%41@@"])
  fun op IMPLODE_EXPLODE x = x
    val op IMPLODE_EXPLODE =
    DT(((("string",52),
        [("bool",[14,25,51,56,63]),("list",[43,48]),
         ("string",[49,50])]),["DISK_THM"]),
       [read"%101%141%129%41@@@%41@"])
  fun op EXPLODE_IMPLODE x = x
    val op EXPLODE_IMPLODE =
    DT(((("string",53),
        [("bool",[14,25,51,56,63]),("list",[43,48]),
         ("string",[49,50])]),["DISK_THM"]),
       [read"%101%129%141%25@@@%25@"])
  fun op EXPLODE_ONTO x = x
    val op EXPLODE_ONTO =
    DT(((("string",54),
        [("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string",[53])]),["DISK_THM"]),
       [read"%77%25%111%41%101$1@%129$0@@|@|@"])
  fun op IMPLODE_ONTO x = x
    val op IMPLODE_ONTO =
    DT(((("string",55),
        [("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string",[52])]),["DISK_THM"]),
       [read"%77%41%111%25%101$1@%141$0@@|@|@"])
  fun op EXPLODE_11 x = x
    val op EXPLODE_11 =
    DT(((("string",56),
        [("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string",[52])]),["DISK_THM"]),
       [read"%95%101%129%43@@%129%44@@@%101%43@%44@@"])
  fun op IMPLODE_11 x = x
    val op IMPLODE_11 =
    DT(((("string",57),
        [("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string",[53])]),["DISK_THM"]),
       [read"%95%101%141%26@@%141%27@@@%101%26@%27@@"])
  fun op STRING_ACYCLIC x = x
    val op STRING_ACYCLIC =
    DT(((("string",58),
        [("bool",[14,25,26,27,51,54,58]),
         ("list",[43,48,49])]),["DISK_THM"]),
       [read"%77%41%70%21%91%216%101%125$0@$1@@$1@@@%216%101$1@%125$0@$1@@@@|@|@"])
  fun op EXTRACT_ind x = x
    val op EXTRACT_ind =
    DT(((("string",60),
        [("bool",[25,27,53,54,63]),("option",[6]),("pair",[5]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%76%6%106%91%77%41%78%30$2%86$1@%88$0@%147@@@|@|@@%77%41%78%30%78%35$3%86$2@%88$1@%153$0@@@@|@|@|@@@%77%51%78%55%79%59$3%86$2@%88$1@$0@@@|@|@|@@|@"])
  fun op EXTRACT_def x = x
    val op EXTRACT_def =
    DT(((("string",61),
        [("bool",[15]),("combin",[19]),("option",[7]),("pair",[49]),
         ("relation",[107,126]),("string",[59])]),["DISK_THM"]),
       [read"%91%101%130%86%41@%88%30@%147@@@@%158%85%41@%87%30@%90%142%41@@%30@@@@@@%101%130%86%41@%88%30@%153%35@@@@@%158%85%41@%87%30@%35@@@@@"])
  fun op STRLEN_EQ_0 x = x
    val op STRLEN_EQ_0 =
    DT(((("string",74),[("list",[90])]),["DISK_THM"]),
       [read"%77%31%95%103%142$0@@%92@@%101$0@%145@@|@"])
  fun op STRLEN_THM x = x
    val op STRLEN_THM =
    DT(((("string",75),[("list",[22])]),["DISK_THM"]),
       [read"%91%103%142%145@@%92@@%70%29%77%47%103%142%125$1@$0@@@%159%142$0@@@|@|@@"])
  fun op STRLEN_DEF x = x
    val op STRLEN_DEF =
    DT(((("string",76),[("string",[75])]),["DISK_THM"]),
       [read"%91%103%142%145@@%92@@%70%29%77%47%103%142%125$1@$0@@@%159%142$0@@@|@|@@"])
  fun op STRCAT_def x = x
    val op STRCAT_def =
    DT(((("string",77),[("list",[20])]),["DISK_THM"]),
       [read"%91%77%31%101%117%145@$0@@$0@|@@%77%32%77%33%70%29%101%117%125$0@$2@@$1@@%125$0@%117$2@$1@@@|@|@|@@"])
  fun op STRCAT x = x
    val op STRCAT =
    DT(((("string",78),[("bool",[25,63]),("list",[104])]),["DISK_THM"]),
       [read"%101%117%43@%44@@%117%43@%44@@"])
  fun op STRCAT_EQNS x = x
    val op STRCAT_EQNS =
    DT(((("string",79),
        [("bool",[25,56,58,63]),("list",[20,55,56,104])]),["DISK_THM"]),
       [read"%91%101%117%145@%41@@%41@@%91%101%117%41@%145@@%41@@%101%117%125%21@%43@@%44@@%125%21@%117%43@%44@@@@@"])
  fun op STRCAT_ASSOC x = x
    val op STRCAT_ASSOC =
    DT(((("string",80),[("list",[56])]),["DISK_THM"]),
       [read"%77%32%77%33%77%34%101%117$2@%117$1@$0@@@%117%117$2@$1@@$0@@|@|@|@"])
  fun op STRCAT_11 x = x
    val op STRCAT_11 =
    DT(((("string",81),[("list",[104])]),["DISK_THM"]),
       [read"%91%77%32%77%33%77%34%95%101%117$2@$1@@%117$2@$0@@@%101$1@$0@@|@|@|@@%77%32%77%33%77%34%95%101%117$1@$2@@%117$0@$2@@@%101$1@$0@@|@|@|@@"])
  fun op STRCAT_ACYCLIC x = x
    val op STRCAT_ACYCLIC =
    DT(((("string",82),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,73,76,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("string",[79,81])]),["DISK_THM"]),
       [read"%77%41%77%43%91%95%101$1@%117$1@$0@@@%101$0@%145@@@%95%101$1@%117$0@$1@@@%101$0@%145@@@|@|@"])
  fun op STRCAT_EXPLODE x = x
    val op STRCAT_EXPLODE =
    DT(((("string",83),
        [("bool",[14,25,51,56,58,63]),("list",[20,28,43,48,56]),
         ("string",[50])]),["DISK_THM"]),
       [read"%77%43%77%44%101%117$1@$0@@%136%125@$0@%129$1@@@|@|@"])
  fun op STRCAT_EQ_EMPTY x = x
    val op STRCAT_EQ_EMPTY =
    DT(((("string",84),[("list",[101])]),["DISK_THM"]),
       [read"%77%32%77%33%95%101%117$1@$0@@%145@@%91%101$1@%145@@%101$0@%145@@@|@|@"])
  fun op STRLEN_CAT x = x
    val op STRLEN_CAT =
    DT(((("string",85),[("list",[57])]),["DISK_THM"]),
       [read"%77%32%77%33%103%142%117$1@$0@@@%80%142$1@@%142$0@@@|@|@"])
  fun op isPREFIX_DEF x = x
    val op isPREFIX_DEF =
    DT(((("string",86),
        [("bool",[25,54,56,63]),("list",[46,255]),("option",[7]),
         ("pair",[49]),("string",[64])]),["DISK_THM"]),
       [read"%77%43%77%44%95%191$1@$0@@%208%89%127$1@@%127$0@@@%52%56%200$1@%160@%60%200$1@%131@%63%202$0@%23%49%202$3@%22%48%91%96$1@$3@@%191$0@$2@@||@||@|@|@||@@|@|@"])
  fun op isPREFIX_IND x = x
    val op isPREFIX_IND =
    DT(((("string",87),
        [("bool",[14,25,26,27,36,51,53,58,63,93,95,101,105,124,145]),
         ("list",[43]),("option",[10,11]),("pair",[4]),
         ("string",[64])]),["DISK_THM"]),
       [read"%75%5%106%77%43%77%44%106%70%21%77%48%77%49%106%91%104%127$4@@%154%81$2@$1@@@@%104%127$3@@%154%81$2@$0@@@@@$5$1@$0@@|@|@|@@$2$1@$0@@|@|@@%77%51%77%54$2$1@$0@|@|@@|@"])
  fun op isPREFIX_STRCAT x = x
    val op isPREFIX_STRCAT =
    DT(((("string",88),
        [("bool",
         [13,14,25,26,27,30,37,47,48,51,52,53,54,56,58,63,72,74,76,78,80,
          81,84,93,94,96,140,146]),("list",[6,20,43,46,48,49,56,254,255]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%43%77%44%95%191$1@$0@@%111%45%101$1@%117$2@$0@@|@@|@|@"])
  fun op string_lt_ind x = x
    val op string_lt_ind =
    DT(((("string",91),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [25,26,36,47,48,52,53,54,58,63,72,76,77,78,80,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%75%5%106%91%77%41$1$0@%145@|@@%91%70%21%77%41$2%145@%125$1@$0@@|@|@@%70%22%77%43%70%23%77%44%106$4$2@$0@@$4%125$3@$2@@%125$1@$0@@@|@|@|@|@@@@%77%51%77%54$2$1@$0@|@|@@|@"])
  fun op string_lt_def x = x
    val op string_lt_def =
    DT(((("string",92),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("list",[6,7]),("numeral",[3,7,8]),("pair",[7,8,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("string",[89,90])]),["DISK_THM"]),
       [read"%91%77%41%95%212$0@%145@@%131@|@@%91%77%41%70%21%95%212%145@%125$0@$1@@@%160@|@|@@%77%44%77%43%70%23%70%22%95%212%125$0@$2@@%125$1@$3@@@%177%181$0@$1@@%91%96$0@$1@@%212$2@$3@@@@|@|@|@|@@@"])
  fun op string_lt_nonrefl x = x
    val op string_lt_nonrefl =
    DT(((("string",96),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[14,15,25,26,27,36,51,52,54,56,58,63,93,96,104,105,107]),
         ("combin",[19]),("list",[6,7,43]),("numeral",[3,7,8]),
         ("pair",[7,8,16,49]),("prim_rec",[4,42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("string",[27,89,90])]),["DISK_THM"]),
       [read"%77%41%216%212$0@$0@@|@"])
  fun op string_lt_antisym x = x
    val op string_lt_antisym =
    DT(((("string",97),
        [("arithmetic",[22,24,25,27,41,46,59,71,93,173,177,180]),
         ("bool",
         [14,15,25,26,27,30,36,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("combin",[19]),("list",[6,7,43,46]),("numeral",[3,5,7,8]),
         ("pair",[7,8,16,49]),("prim_rec",[4,42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("string",[2,27,89,90])]),["DISK_THM"]),
       [read"%77%41%77%47%216%91%212$1@$0@@%212$0@$1@@@|@|@"])
  fun op string_lt_cases x = x
    val op string_lt_cases =
    DT(((("string",98),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,177,180]),
         ("bool",
         [14,15,25,26,27,30,36,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("combin",[19]),("list",[6,7,43,46,48]),("numeral",[3,7,8]),
         ("pair",[7,8,16,49]),("prim_rec",[4,42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("string",[2,27,89,90])]),["DISK_THM"]),
       [read"%77%41%77%47%177%101$1@$0@@%177%212$1@$0@@%212$0@$1@@@|@|@"])
  fun op string_lt_trans x = x
    val op string_lt_trans =
    DT(((("string",99),
        [("arithmetic",[22,24,25,27,34,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [14,15,25,26,27,30,36,43,48,51,52,53,54,58,63,93,96,101,103,104,
          105,107,124]),("combin",[19]),("list",[6,7,43,46]),
         ("numeral",[0,3,5,7,8]),("pair",[7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("string",[2,27,89,90])]),["DISK_THM"]),
       [read"%77%43%77%44%77%45%106%91%212$2@$1@@%212$1@$0@@@%212$2@$0@@|@|@|@"])
  end
  val _ = DB.bindl "string"
  [("DEST_STRING_def",DEST_STRING_def,DB.Def),
   ("char_TY_DEF",char_TY_DEF,DB.Def), ("char_BIJ",char_BIJ,DB.Def),
   ("isLower_def",isLower_def,DB.Def), ("isUpper_def",isUpper_def,DB.Def),
   ("isDigit_def",isDigit_def,DB.Def), ("isAlpha_def",isAlpha_def,DB.Def),
   ("isHexDigit_def",isHexDigit_def,DB.Def),
   ("isAlphaNum_def",isAlphaNum_def,DB.Def),
   ("isPrint_def",isPrint_def,DB.Def), ("isSpace_def",isSpace_def,DB.Def),
   ("isGraph_def",isGraph_def,DB.Def), ("isPunct_def",isPunct_def,DB.Def),
   ("isAscii_def",isAscii_def,DB.Def), ("isCntrl_def",isCntrl_def,DB.Def),
   ("toLower_def",toLower_def,DB.Def), ("toUpper_def",toUpper_def,DB.Def),
   ("char_lt_def",char_lt_def,DB.Def), ("char_le_def",char_le_def,DB.Def),
   ("char_gt_def",char_gt_def,DB.Def), ("char_ge_def",char_ge_def,DB.Def),
   ("char_size_def",char_size_def,DB.Def), ("SUB_def",SUB_def,DB.Def),
   ("STR_def",STR_def,DB.Def),
   ("TOCHAR_primitive_def",TOCHAR_primitive_def,DB.Def),
   ("SUBSTRING_def",SUBSTRING_def,DB.Def),
   ("TRANSLATE_def",TRANSLATE_def,DB.Def),
   ("TOKENS_tupled_primitive_def",TOKENS_tupled_primitive_def,DB.Def),
   ("TOKENS_curried_def",TOKENS_curried_def,DB.Def),
   ("FIELDS_tupled_primitive_def",FIELDS_tupled_primitive_def,DB.Def),
   ("FIELDS_curried_def",FIELDS_curried_def,DB.Def),
   ("IMPLODE_def",IMPLODE_def,DB.Def), ("EXPLODE_def",EXPLODE_def,DB.Def),
   ("EXTRACT_primitive_def",EXTRACT_primitive_def,DB.Def),
   ("string_lt_tupled_primitive_def",
    string_lt_tupled_primitive_def,
    DB.Def), ("string_lt_curried_def",string_lt_curried_def,DB.Def),
   ("string_le_def",string_le_def,DB.Def),
   ("string_gt_def",string_gt_def,DB.Def),
   ("string_ge_def",string_ge_def,DB.Def),
   ("IMPLODE_STRING",IMPLODE_STRING,DB.Thm),
   ("EXPLODE_DEST_STRING",EXPLODE_DEST_STRING,DB.Thm),
   ("IMPLODE_EQ_THM",IMPLODE_EQ_THM,DB.Thm),
   ("EXPLODE_EQ_THM",EXPLODE_EQ_THM,DB.Thm),
   ("EXPLODE_EQ_NIL",EXPLODE_EQ_NIL,DB.Thm),
   ("IMPLODE_EQ_EMPTYSTRING",IMPLODE_EQ_EMPTYSTRING,DB.Thm),
   ("IMPLODE_EQNS",IMPLODE_EQNS,DB.Thm),
   ("EXPLODE_EQNS",EXPLODE_EQNS,DB.Thm),
   ("DEST_STRING_LEMS",DEST_STRING_LEMS,DB.Thm),
   ("STRLEN_EXPLODE_THM",STRLEN_EXPLODE_THM,DB.Thm),
   ("ORD_11",ORD_11,DB.Thm), ("CHR_11",CHR_11,DB.Thm),
   ("ORD_ONTO",ORD_ONTO,DB.Thm), ("CHR_ONTO",CHR_ONTO,DB.Thm),
   ("CHR_ORD",CHR_ORD,DB.Thm), ("ORD_CHR",ORD_CHR,DB.Thm),
   ("ORD_CHR_RWT",ORD_CHR_RWT,DB.Thm),
   ("ORD_CHR_COMPUTE",ORD_CHR_COMPUTE,DB.Thm),
   ("ORD_BOUND",ORD_BOUND,DB.Thm), ("char_nchotomy",char_nchotomy,DB.Thm),
   ("ranged_char_nchotomy",ranged_char_nchotomy,DB.Thm),
   ("CHAR_EQ_THM",CHAR_EQ_THM,DB.Thm),
   ("CHAR_INDUCT_THM",CHAR_INDUCT_THM,DB.Thm),
   ("TOCHAR_ind",TOCHAR_ind,DB.Thm), ("TOCHAR_def",TOCHAR_def,DB.Thm),
   ("TOKENS_ind",TOKENS_ind,DB.Thm), ("TOKENS_def",TOKENS_def,DB.Thm),
   ("FIELDS_ind",FIELDS_ind,DB.Thm), ("FIELDS_def",FIELDS_def,DB.Thm),
   ("IMPLODE_EXPLODE_I",IMPLODE_EXPLODE_I,DB.Thm),
   ("IMPLODE_EXPLODE",IMPLODE_EXPLODE,DB.Thm),
   ("EXPLODE_IMPLODE",EXPLODE_IMPLODE,DB.Thm),
   ("EXPLODE_ONTO",EXPLODE_ONTO,DB.Thm),
   ("IMPLODE_ONTO",IMPLODE_ONTO,DB.Thm), ("EXPLODE_11",EXPLODE_11,DB.Thm),
   ("IMPLODE_11",IMPLODE_11,DB.Thm),
   ("STRING_ACYCLIC",STRING_ACYCLIC,DB.Thm),
   ("EXTRACT_ind",EXTRACT_ind,DB.Thm), ("EXTRACT_def",EXTRACT_def,DB.Thm),
   ("STRLEN_EQ_0",STRLEN_EQ_0,DB.Thm), ("STRLEN_THM",STRLEN_THM,DB.Thm),
   ("STRLEN_DEF",STRLEN_DEF,DB.Thm), ("STRCAT_def",STRCAT_def,DB.Thm),
   ("STRCAT",STRCAT,DB.Thm), ("STRCAT_EQNS",STRCAT_EQNS,DB.Thm),
   ("STRCAT_ASSOC",STRCAT_ASSOC,DB.Thm), ("STRCAT_11",STRCAT_11,DB.Thm),
   ("STRCAT_ACYCLIC",STRCAT_ACYCLIC,DB.Thm),
   ("STRCAT_EXPLODE",STRCAT_EXPLODE,DB.Thm),
   ("STRCAT_EQ_EMPTY",STRCAT_EQ_EMPTY,DB.Thm),
   ("STRLEN_CAT",STRLEN_CAT,DB.Thm), ("isPREFIX_DEF",isPREFIX_DEF,DB.Thm),
   ("isPREFIX_IND",isPREFIX_IND,DB.Thm),
   ("isPREFIX_STRCAT",isPREFIX_STRCAT,DB.Thm),
   ("string_lt_ind",string_lt_ind,DB.Thm),
   ("string_lt_def",string_lt_def,DB.Thm),
   ("string_lt_nonrefl",string_lt_nonrefl,DB.Thm),
   ("string_lt_antisym",string_lt_antisym,DB.Thm),
   ("string_lt_cases",string_lt_cases,DB.Thm),
   ("string_lt_trans",string_lt_trans,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars),
                         ("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "char"
  val _ = update_grms temp_add_type "char"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORD", (Term.prim_mk_const { Name = "ORD", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CHR", (Term.prim_mk_const { Name = "CHR", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isLower", (Term.prim_mk_const { Name = "isLower", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isLower", (Term.prim_mk_const { Name = "isLower", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isUpper", (Term.prim_mk_const { Name = "isUpper", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isUpper", (Term.prim_mk_const { Name = "isUpper", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isDigit", (Term.prim_mk_const { Name = "isDigit", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isDigit", (Term.prim_mk_const { Name = "isDigit", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isAlpha", (Term.prim_mk_const { Name = "isAlpha", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isAlpha", (Term.prim_mk_const { Name = "isAlpha", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isHexDigit", (Term.prim_mk_const { Name = "isHexDigit", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isHexDigit", (Term.prim_mk_const { Name = "isHexDigit", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isAlphaNum", (Term.prim_mk_const { Name = "isAlphaNum", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isAlphaNum", (Term.prim_mk_const { Name = "isAlphaNum", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isPrint", (Term.prim_mk_const { Name = "isPrint", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isPrint", (Term.prim_mk_const { Name = "isPrint", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isSpace", (Term.prim_mk_const { Name = "isSpace", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isSpace", (Term.prim_mk_const { Name = "isSpace", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isGraph", (Term.prim_mk_const { Name = "isGraph", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isGraph", (Term.prim_mk_const { Name = "isGraph", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isPunct", (Term.prim_mk_const { Name = "isPunct", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isPunct", (Term.prim_mk_const { Name = "isPunct", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isAscii", (Term.prim_mk_const { Name = "isAscii", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isAscii", (Term.prim_mk_const { Name = "isAscii", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isCntrl", (Term.prim_mk_const { Name = "isCntrl", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isCntrl", (Term.prim_mk_const { Name = "isCntrl", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toLower", (Term.prim_mk_const { Name = "toLower", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toLower", (Term.prim_mk_const { Name = "toLower", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toUpper", (Term.prim_mk_const { Name = "toUpper", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toUpper", (Term.prim_mk_const { Name = "toUpper", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_lt", (Term.prim_mk_const { Name = "char_lt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_lt", (Term.prim_mk_const { Name = "char_lt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_le", (Term.prim_mk_const { Name = "char_le", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_le", (Term.prim_mk_const { Name = "char_le", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_gt", (Term.prim_mk_const { Name = "char_gt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_gt", (Term.prim_mk_const { Name = "char_gt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_ge", (Term.prim_mk_const { Name = "char_ge", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_ge", (Term.prim_mk_const { Name = "char_ge", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "char_lt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "char_gt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "char_le", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "char_ge", Thy = "string"}))
  val _ = update_grms
       (temp_send_to_back_overload "<")
        {Name = "char_lt", Thy = "string"}
  val _ = update_grms
       (temp_send_to_back_overload ">")
        {Name = "char_gt", Thy = "string"}
  val _ = update_grms
       (temp_send_to_back_overload "<=")
        {Name = "char_le", Thy = "string"}
  val _ = update_grms
       (temp_send_to_back_overload ">=")
        {Name = "char_ge", Thy = "string"}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_size", (Term.prim_mk_const { Name = "char_size", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("char_size", (Term.prim_mk_const { Name = "char_size", Thy = "string"}))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="string",Name="string"}, T"list" "list" [T"char" "string" []])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STRING", (#2 (parse_from_grammars min_grammars)[QUOTE "(list$CONS :(string$char) -> ((string$char) list$list) -> ((string$char) list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EMPTYSTRING", (#2 (parse_from_grammars min_grammars)[QUOTE "(list$NIL :((string$char) list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CONCAT", (#2 (parse_from_grammars min_grammars)[QUOTE "(list$FLAT :(((string$char) list$list) list$list) -> ((string$char) list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUB", (Term.prim_mk_const { Name = "SUB", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUB", (Term.prim_mk_const { Name = "SUB", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STR", (Term.prim_mk_const { Name = "STR", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STR", (Term.prim_mk_const { Name = "STR", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TOCHAR", (Term.prim_mk_const { Name = "TOCHAR", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TOCHAR", (Term.prim_mk_const { Name = "TOCHAR", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBSTRING", (Term.prim_mk_const { Name = "SUBSTRING", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBSTRING", (Term.prim_mk_const { Name = "SUBSTRING", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRANSLATE", (Term.prim_mk_const { Name = "TRANSLATE", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TRANSLATE", (Term.prim_mk_const { Name = "TRANSLATE", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TOKENS_tupled", (Term.prim_mk_const { Name = "TOKENS_tupled", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TOKENS_tupled", (Term.prim_mk_const { Name = "TOKENS_tupled", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TOKENS", (Term.prim_mk_const { Name = "TOKENS", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TOKENS", (Term.prim_mk_const { Name = "TOKENS", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIELDS_tupled", (Term.prim_mk_const { Name = "FIELDS_tupled", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIELDS_tupled", (Term.prim_mk_const { Name = "FIELDS_tupled", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIELDS", (Term.prim_mk_const { Name = "FIELDS", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIELDS", (Term.prim_mk_const { Name = "FIELDS", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IMPLODE", (Term.prim_mk_const { Name = "IMPLODE", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXPLODE", (Term.prim_mk_const { Name = "EXPLODE", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STRLEN", (#2 (parse_from_grammars min_grammars)[QUOTE "(list$LENGTH :((string$char) list$list) -> (num$num))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXTRACT", (Term.prim_mk_const { Name = "EXTRACT", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXTRACT", (Term.prim_mk_const { Name = "EXTRACT", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DEST_STRING", (Term.prim_mk_const { Name = "DEST_STRING", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("STRCAT", (#2 (parse_from_grammars min_grammars)[QUOTE "(list$APPEND :((string$char) list$list) -> ((string$char) list$list) -> ((string$char) list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_lt_tupled", (Term.prim_mk_const { Name = "string_lt_tupled", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_lt_tupled", (Term.prim_mk_const { Name = "string_lt_tupled", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_lt", (Term.prim_mk_const { Name = "string_lt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_lt", (Term.prim_mk_const { Name = "string_lt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_le", (Term.prim_mk_const { Name = "string_le", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_le", (Term.prim_mk_const { Name = "string_le", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_gt", (Term.prim_mk_const { Name = "string_gt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_gt", (Term.prim_mk_const { Name = "string_gt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_ge", (Term.prim_mk_const { Name = "string_ge", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("string_ge", (Term.prim_mk_const { Name = "string_ge", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "string_lt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "string_gt", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "string_le", Thy = "string"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "string_ge", Thy = "string"}))
  val _ = update_grms
       (temp_send_to_back_overload "<")
        {Name = "string_lt", Thy = "string"}
  val _ = update_grms
       (temp_send_to_back_overload ">")
        {Name = "string_gt", Thy = "string"}
  val _ = update_grms
       (temp_send_to_back_overload "<=")
        {Name = "string_le", Thy = "string"}
  val _ = update_grms
       (temp_send_to_back_overload ">=")
        {Name = "string_ge", Thy = "string"}
  val string_grammars = Parse.current_lgrms()
  end


  val _ =
  let open Lib boolSyntax
      val (v,M) = dest_forall(concl char_size_def)
      val char_size_tm = fst(strip_comb(lhs M))
  in
   TypeBase.write
   [TypeBasePure.mk_nondatatype_info
    (type_of v, 
      {nchotomy = SOME ranged_char_nchotomy,
       induction = NONE,
       size = SOME(char_size_tm,char_size_def),
       encode = NONE})]
  end;
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "string",
    thydataty = "simp",
    data =
        "string.CHR_11 string.DEST_STRING_def string.EXPLODE_EQ_NIL string.IMPLODE_EQ_EMPTYSTRING string.EXPLODE_11 string.EXPLODE_IMPLODE string.IMPLODE_EXPLODE string.IMPLODE_11 string.EXPLODE_def string.IMPLODE_def string.ORD_CHR_RWT"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "string",
    thydataty = "compute",
    data =
        "string.isLower_def string.isPrint_def string.CHAR_EQ_THM string.ORD_CHR_COMPUTE string.IMPLODE_EXPLODE_I string.string_ge_def string.string_gt_def string.string_le_def string.string_lt_def string.DEST_STRING_def string.EXTRACT_def string.EXPLODE_def string.IMPLODE_def string.FIELDS_def string.TOKENS_def string.TRANSLATE_def string.SUBSTRING_def string.TOCHAR_def string.STR_def string.SUB_def string.char_size_def string.char_ge_def string.char_gt_def string.char_le_def string.char_lt_def string.toUpper_def string.toLower_def string.isCntrl_def string.isAscii_def string.isPunct_def string.isGraph_def string.isSpace_def string.isUpper_def string.isAlphaNum_def string.isHexDigit_def string.isAlpha_def string.isDigit_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "string"
end
