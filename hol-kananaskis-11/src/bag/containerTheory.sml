structure containerTheory :> containerTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading containerTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open bagTheory finite_mapTheory
  in end;
  val _ = Theory.link_parents
          ("container",
          Arbnum.fromString "1488587105",
          Arbnum.fromString "775414")
          [("bag",
           Arbnum.fromString "1488587017",
           Arbnum.fromString "666432"),
           ("finite_map",
           Arbnum.fromString "1488586927",
           Arbnum.fromString "430131")];
  val _ = Theory.incorporate_types "container" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("list", "list"),
   ID("num", "num"), ID("finite_map", "fmap"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("list", "ALL_DISTINCT"), ID("list", "APPEND"), ID("bool", "ARB"),
   ID("bag", "BAG_ALL_DISTINCT"), ID("bag", "BAG_CARD"),
   ID("bag", "BAG_CHOICE"), ID("bag", "BAG_EVERY"),
   ID("bag", "BAG_FILTER"), ID("bag", "BAG_IMAGE"), ID("bag", "BAG_IN"),
   ID("bag", "BAG_INSERT"), ID("container", "BAG_OF_FMAP"),
   ID("bag", "BAG_REST"), ID("container", "BAG_TO_LIST"),
   ID("bag", "BAG_UNION"), ID("pred_set", "CARD"),
   ID("pred_set", "CHOICE"), ID("bool", "COND"), ID("list", "CONS"),
   ID("pred_set", "EMPTY"), ID("bag", "EMPTY_BAG"), ID("list", "EVERY"),
   ID("finite_map", "FAPPLY"), ID("finite_map", "FDOM"),
   ID("finite_map", "FEMPTY"), ID("list", "FILTER"),
   ID("pred_set", "FINITE"), ID("bag", "FINITE_BAG"),
   ID("finite_map", "FUPDATE"), ID("combin", "I"), ID("bool", "IN"),
   ID("pred_set", "INSERT"), ID("list", "LENGTH"),
   ID("rich_list", "LIST_ELEM_COUNT"), ID("container", "LIST_TO_BAG"),
   ID("list", "LIST_TO_SET"), ID("list", "MAP"), ID("list", "NIL"),
   ID("sorting", "PERM"), ID("pred_set", "REST"),
   ID("list", "SET_TO_LIST"), ID("pred_set", "UNION"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("finite_map", "fdomsub"), ID("container", "mlt_list"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 2, 3],
   TYOP [0, 1, 0], TYOP [0, 1, 5], TYOP [0, 6, 4], TYOP [3],
   TYOP [0, 1, 8], TYOP [0, 2, 9], TYOP [0, 9, 2], TYV "'c", TYV "'b",
   TYOP [4, 13, 12], TYOP [0, 14, 9], TYOP [0, 12, 1], TYOP [0, 13, 16],
   TYOP [0, 17, 15], TYOP [0, 5, 0], TYOP [0, 9, 0], TYOP [0, 9, 20],
   TYOP [4, 1, 13], TYV "'e", TYV "'d", TYOP [4, 24, 23], TYOP [2, 13],
   TYOP [0, 13, 12], TYOP [0, 1, 27], TYOP [0, 13, 1], TYV "'f",
   TYOP [0, 23, 30], TYOP [0, 24, 31], TYOP [0, 24, 0], TYOP [0, 33, 0],
   TYOP [0, 23, 0], TYOP [0, 35, 0], TYOP [0, 22, 0], TYOP [0, 37, 0],
   TYOP [0, 14, 0], TYOP [0, 39, 0], TYOP [0, 25, 0], TYOP [0, 41, 0],
   TYOP [0, 19, 0], TYOP [0, 6, 0], TYOP [0, 44, 0], TYOP [0, 28, 0],
   TYOP [0, 46, 0], TYOP [0, 20, 0], TYOP [0, 17, 0], TYOP [0, 49, 0],
   TYOP [0, 32, 0], TYOP [0, 51, 0], TYOP [0, 43, 0], TYOP [0, 48, 0],
   TYOP [0, 3, 0], TYOP [7, 24, 23], TYOP [0, 23, 56], TYOP [0, 24, 57],
   TYOP [0, 0, 0], TYOP [0, 0, 59], TYOP [0, 5, 19], TYOP [0, 13, 0],
   TYOP [0, 62, 0], TYOP [0, 62, 63], TYOP [0, 12, 8], TYOP [0, 65, 0],
   TYOP [0, 65, 66], TYOP [0, 30, 8], TYOP [0, 68, 0], TYOP [0, 68, 69],
   TYOP [0, 11, 0], TYOP [0, 11, 71], TYOP [0, 4, 0], TYOP [0, 4, 73],
   TYOP [0, 8, 0], TYOP [0, 8, 75], TYOP [0, 21, 0], TYOP [0, 77, 21],
   TYOP [0, 2, 2], TYOP [0, 2, 79], TYOP [0, 9, 8], TYOP [0, 9, 1],
   TYOP [0, 5, 20], TYOP [0, 9, 9], TYOP [0, 5, 84], TYOP [0, 13, 8],
   TYOP [0, 86, 9], TYOP [0, 29, 87], TYOP [0, 1, 20], TYOP [0, 1, 84],
   TYOP [0, 68, 68], TYOP [0, 30, 91], TYOP [0, 22, 65], TYOP [0, 28, 93],
   TYOP [0, 25, 68], TYOP [0, 32, 95], TYOP [0, 9, 84], TYOP [0, 5, 8],
   TYOP [0, 62, 8], TYOP [0, 5, 1], TYOP [0, 0, 80], TYOP [0, 1, 79],
   TYOP [0, 26, 26], TYOP [0, 13, 103], TYOP [0, 5, 3], TYOP [0, 14, 27],
   TYOP [0, 14, 62], TYOP [0, 5, 79], TYOP [0, 56, 25], TYOP [0, 25, 109],
   TYOP [0, 1, 19], TYOP [0, 13, 63], TYOP [0, 5, 5], TYOP [0, 1, 113],
   TYOP [0, 62, 62], TYOP [0, 13, 115], TYOP [0, 2, 8], TYOP [0, 1, 117],
   TYOP [0, 26, 86], TYOP [0, 2, 5], TYOP [0, 26, 62], TYOP [0, 26, 2],
   TYOP [0, 29, 122], TYOP [0, 5, 2], TYOP [0, 5, 113], TYOP [0, 11, 11],
   TYOP [0, 126, 11], TYOP [0, 21, 127], TYOP [0, 24, 25],
   TYOP [0, 25, 129]]
  end
  val _ = Theory.incorporate_consts "container" tyvector
     [("mlt_list", 7), ("LIST_TO_BAG", 10), ("BAG_TO_LIST", 11),
      ("BAG_OF_FMAP", 18)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("BAG_TO_LIST", 11), TMV("P", 5), TMV("P", 19), TMV("P", 20),
   TMV("R", 6), TMV("R", 21), TMV("b", 22), TMV("b", 14), TMV("b", 25),
   TMV("b", 9), TMV("b", 2), TMV("b", 26), TMV("bag", 9), TMV("e", 1),
   TMV("f", 5), TMV("f", 28), TMV("f", 29), TMV("f", 17), TMV("f", 32),
   TMV("h", 1), TMV("h", 13), TMV("k", 13), TMV("k", 24), TMV("l", 2),
   TMV("l1", 2), TMV("l2", 2), TMV("list", 2), TMV("ls", 2), TMV("s", 5),
   TMV("t", 2), TMV("t", 26), TMV("v", 23), TMV("v", 5), TMV("v", 9),
   TMV("x", 1), TMC(5, 19), TMC(5, 34), TMC(5, 36), TMC(5, 38), TMC(5, 40),
   TMC(5, 42), TMC(5, 43), TMC(5, 45), TMC(5, 47), TMC(5, 48), TMC(5, 50),
   TMC(5, 52), TMC(5, 53), TMC(5, 54), TMC(5, 55), TMC(6, 58), TMC(8, 60),
   TMC(9, 6), TMC(9, 60), TMC(9, 61), TMC(9, 21), TMC(9, 64), TMC(9, 67),
   TMC(9, 70), TMC(9, 72), TMC(9, 74), TMC(9, 4), TMC(9, 76), TMC(10, 60),
   TMC(11, 19), TMC(11, 63), TMC(11, 55), TMC(12, 78), TMC(13, 3),
   TMC(14, 80), TMC(15, 2), TMC(16, 20), TMC(17, 81), TMC(18, 82),
   TMC(19, 83), TMC(20, 85), TMC(21, 88), TMC(22, 89), TMC(23, 90),
   TMC(23, 92), TMC(24, 94), TMC(24, 18), TMC(24, 96), TMC(25, 84),
   TMC(26, 11), TMC(27, 97), TMC(28, 98), TMC(28, 99), TMC(29, 100),
   TMC(30, 101), TMC(31, 102), TMC(31, 104), TMC(32, 5), TMC(33, 9),
   TMC(33, 65), TMC(34, 105), TMC(35, 106), TMC(36, 107), TMC(37, 22),
   TMC(38, 108), TMC(39, 19), TMC(40, 20), TMC(40, 66), TMC(41, 110),
   TMC(42, 79), TMC(43, 111), TMC(43, 112), TMC(44, 114), TMC(44, 116),
   TMC(45, 117), TMC(46, 118), TMC(47, 10), TMC(47, 119), TMC(48, 120),
   TMC(48, 121), TMC(49, 123), TMC(50, 2), TMC(51, 4), TMC(52, 113),
   TMC(53, 124), TMC(54, 125), TMC(55, 44), TMC(55, 77), TMC(55, 73),
   TMC(56, 128), TMC(57, 130), TMC(58, 7), TMC(59, 59)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op LIST_TO_BAG_def x = x
    val op LIST_TO_BAG_def =
    DT(((("container",11),[("list",[13])]),["DISK_THM"]),
       [read"%51%55%111%116@@%93@@%35%19%49%29%55%111%90$1@$0@@@%78$1@%111$0@@@|@|@@"])
  fun op BAG_TO_LIST_primitive_def x = x
    val op BAG_TO_LIST_primitive_def =
    DT(((("container",13),[]),[]),
       [read"%59%84@%124%67%5%51%122$0@@%44%12%63%51%101$0@@%127%55$0@%93@@@@$1%83$0@@$0@@|@@|@@%0%12%104%89%101$0@@%89%55$0@%93@@%116@%90%73$0@@$1%83$0@@@@@%70@@||@@"])
  fun op mlt_list_def x = x
    val op mlt_list_def =
    DT(((("container",33),[]),[]),
       [read"%42%4%60%126$0@@%24%25%64%19%66%29%66%26%51%61$4@%69$0@$1@@@%51%61$3@%90$2@$1@@@%35%13%63%105$0@%113$1@@@$6$0@$3@@|@@@|@|@|@||@|@"])
  fun op BAG_OF_FMAP_def x = x
    val op BAG_OF_FMAP_def =
    DT(((("container",35),[]),[]),
       [read"%45%17%39%7%55%81$1@$0@@%34%87%21%51%106$0@%97$2@@@%52$1@$3$0@%96$2@$0@@@@|@|@|@|@"])
  fun op SET_TO_LIST_THM x = x
    val op SET_TO_LIST_THM =
    DT(((("container",0),[("list",[244])]),["DISK_THM"]),
       [read"%63%100%28@@%61%119%28@@%89%54%28@%92@@%116@%90%88%28@@%119%118%28@@@@@@"])
  fun op SET_TO_LIST_IND x = x
    val op SET_TO_LIST_IND =
    DT(((("container",1),[("list",[245])]),["DISK_THM"]),
       [read"%47%2%63%41%28%63%63%51%100$0@@%127%54$0@%92@@@@$1%118$0@@@@$1$0@@|@@%41%32$1$0@|@@|@"])
  fun op LIST_TO_SET_THM x = x
    val op LIST_TO_SET_THM =
    DT(((("container",2),[("list",[240])]),["DISK_THM"]),
       [read"%51%54%113%116@@%92@@%56%114%91%20@%30@@@%108%20@%114%30@@@@"])
  fun op SET_TO_LIST_INV x = x
    val op SET_TO_LIST_INV =
    DT(((("container",3),[("list",[247])]),["DISK_THM"]),
       [read"%41%28%63%100$0@@%54%113%119$0@@@$0@@|@"])
  fun op SET_TO_LIST_CARD x = x
    val op SET_TO_LIST_CARD =
    DT(((("container",4),[("list",[248])]),["DISK_THM"]),
       [read"%41%28%63%100$0@@%62%109%119$0@@@%86$0@@@|@"])
  fun op SET_TO_LIST_IN_MEM x = x
    val op SET_TO_LIST_IN_MEM =
    DT(((("container",5),[("list",[249])]),["DISK_THM"]),
       [read"%41%28%63%100$0@@%35%34%53%105$0@$1@@%105$0@%113%119$1@@@@|@@|@"])
  fun op MEM_SET_TO_LIST x = x
    val op MEM_SET_TO_LIST =
    DT(((("container",6),[("list",[250])]),["DISK_THM"]),
       [read"%41%28%63%100$0@@%35%34%53%105$0@%113%119$1@@@@%105$0@$1@@|@@|@"])
  fun op SET_TO_LIST_SING x = x
    val op SET_TO_LIST_SING =
    DT(((("container",7),[("list",[251])]),["DISK_THM"]),
       [read"%61%119%107%34@%92@@@%90%34@%116@@"])
  fun op UNION_APPEND x = x
    val op UNION_APPEND =
    DT(((("container",8),[("list",[231])]),["DISK_THM"]),
       [read"%49%24%49%25%54%120%113$1@@%113$0@@@%113%69$1@$0@@@|@|@"])
  fun op LIST_TO_SET_APPEND x = x
    val op LIST_TO_SET_APPEND =
    DT(((("container",9),[("list",[230])]),["DISK_THM"]),
       [read"%49%24%49%25%54%113%69$1@$0@@@%120%113$1@@%113$0@@@|@|@"])
  fun op FINITE_LIST_TO_SET x = x
    val op FINITE_LIST_TO_SET =
    DT(((("container",10),[("list",[233])]),["DISK_THM"]),
       [read"%49%23%100%113$0@@|@"])
  fun op LIST_TO_BAG_alt x = x
    val op LIST_TO_BAG_alt =
    DT(((("container",12),
        [("arithmetic",[25,27,71,172,173,177,180]),("bag",[1,8]),
         ("bool",
         [14,25,26,27,30,36,43,52,54,56,58,63,64,96,101,104,105,129]),
         ("container",[11]),("list",[22,27,43]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%49%23%35%34%62%111$1@$0@@%109%99%52$0@@$1@@@|@|@"])
  fun op BAG_TO_LIST_THM x = x
    val op BAG_TO_LIST_THM =
    DT(((("container",14),
        [("bag",[167,169]),
         ("bool",
         [15,25,26,27,47,48,53,54,58,63,64,71,93,94,96,105,124,129]),
         ("combin",[19]),("container",[13]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%63%101%12@@%61%84%12@@%89%55%12@%93@@%116@%90%73%12@@%84%83%12@@@@@@"])
  fun op BAG_TO_LIST_IND x = x
    val op BAG_TO_LIST_IND =
    DT(((("container",15),
        [("bag",[167,169]),
         ("bool",[15,25,26,27,47,48,53,54,58,63,71,93,94,96,105,124,129]),
         ("combin",[19]),("container",[13]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%48%3%63%44%12%63%63%51%101$0@@%127%55$0@%93@@@@$1%83$0@@@@$1$0@@|@@%44%33$1$0@|@@|@"])
  fun op BAG_TO_LIST_INV x = x
    val op BAG_TO_LIST_INV =
    DT(((("container",16),
        [("bag",[130,163,166]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,84,93,94,96]),
         ("container",[11,14,15]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%9%63%101$0@@%55%111%84$0@@@$0@@|@"])
  fun op BAG_IN_MEM x = x
    val op BAG_IN_MEM =
    DT(((("container",17),
        [("bag",[15,60,130,163,166]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,84,93,94,96]),
         ("container",[14,15]),("list",[120]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%44%9%63%101$0@@%35%34%53%77$0@$1@@%105$0@%113%84$1@@@@|@@|@"])
  fun op MEM_BAG_TO_LIST x = x
    val op MEM_BAG_TO_LIST =
    DT(((("container",18),
        [("bool",[25,26,47,48,53,54,58,63,71,81,84,93,94,96]),
         ("container",[17]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%9%63%101$0@@%35%34%53%105$0@%113%84$1@@@@%77$0@$1@@|@@|@"])
  fun op FINITE_LIST_TO_BAG x = x
    val op FINITE_LIST_TO_BAG =
    DT(((("container",19),
        [("bag",[126]),("bool",[14,25,63]),("container",[11]),
         ("list",[43])]),["DISK_THM"]), [read"%101%111%27@@"])
  fun op EVERY_LIST_TO_BAG x = x
    val op EVERY_LIST_TO_BAG =
    DT(((("container",20),
        [("bag",[192]),("bool",[14,25,56,63]),("container",[11]),
         ("list",[30,43])]),["DISK_THM"]),
       [read"%53%74%1@%111%27@@@%95%1@%27@@"])
  fun op LIST_TO_BAG_APPEND x = x
    val op LIST_TO_BAG_APPEND =
    DT(((("container",21),
        [("bag",[25,36]),("bool",[14,25,36,56]),("container",[11]),
         ("list",[20,43])]),["DISK_THM"]),
       [read"%49%24%49%25%55%111%69$1@$0@@@%85%111$1@@%111$0@@@|@|@"])
  fun op LIST_TO_BAG_MAP x = x
    val op LIST_TO_BAG_MAP =
    DT(((("container",22),
        [("bag",[153,154]),("bool",[14,25,56,58]),("container",[11,19]),
         ("list",[23,43])]),["DISK_THM"]),
       [read"%55%111%115%16@%11@@@%76%16@%112%11@@@"])
  fun op LIST_TO_BAG_FILTER x = x
    val op LIST_TO_BAG_FILTER =
    DT(((("container",23),
        [("bag",[143,144]),("bool",[14,25,26,27,30,56,58,63,64,105,129]),
         ("container",[11]),("list",[27,43])]),["DISK_THM"]),
       [read"%55%111%99%14@%10@@@%75%14@%111%10@@@"])
  fun op IN_LIST_TO_BAG x = x
    val op IN_LIST_TO_BAG =
    DT(((("container",25),
        [("bag",[15,60]),("bool",[14,25,26,27,36,54,56,63]),
         ("container",[11]),("list",[43,120])]),["DISK_THM"]),
       [read"%35%19%49%23%53%77$1@%111$0@@@%105$1@%113$0@@@|@|@"])
  fun op LIST_TO_BAG_DISTINCT x = x
    val op LIST_TO_BAG_DISTINCT =
    DT(((("container",26),
        [("bag",[200]),("bool",[14,25,36,56,63]),("container",[11,25]),
         ("list",[43,215])]),["DISK_THM"]),
       [read"%53%71%111%10@@@%68%10@@"])
  fun op LIST_TO_BAG_EQ_EMPTY x = x
    val op LIST_TO_BAG_EQ_EMPTY =
    DT(((("container",27),
        [("bag",[27]),("bool",[25,26,27,54,56,58,63]),("container",[11]),
         ("list",[46,49])]),["DISK_THM"]),
       [read"%49%23%53%55%111$0@@%93@@%61$0@%116@@|@"])
  fun op PERM_LIST_TO_BAG x = x
    val op PERM_LIST_TO_BAG =
    DT(((("container",28),
        [("bool",[25,26,36,56,59]),("container",[12]),
         ("sorting",[0,16])]),["DISK_THM"]),
       [read"%49%24%49%25%53%55%111$1@@%111$0@@@%117$1@$0@@|@|@"])
  fun op CARD_LIST_TO_BAG x = x
    val op CARD_LIST_TO_BAG =
    DT(((("container",29),
        [("arithmetic",[64,91]),("bag",[135]),("bool",[14,25,56,63]),
         ("container",[11,19]),("list",[22,43])]),["DISK_THM"]),
       [read"%62%72%111%27@@@%109%27@@"])
  fun op BAG_TO_LIST_CARD x = x
    val op BAG_TO_LIST_CARD =
    DT(((("container",30),
        [("bool",[25,56,58,61,63,105]),
         ("container",[16,29])]),["DISK_THM"]),
       [read"%44%9%63%101$0@@%62%109%84$0@@@%72$0@@@|@"])
  fun op BAG_TO_LIST_EQ_NIL x = x
    val op BAG_TO_LIST_EQ_NIL =
    DT(((("container",31),
        [("bag",[9,27,126]),
         ("bool",[25,26,27,51,53,54,56,58,63,105,124,129,147]),
         ("container",[14]),("list",[49])]),["DISK_THM"]),
       [read"%63%101%9@@%51%53%61%116@%84%9@@@%55%9@%93@@@%53%61%84%9@@%116@@%55%9@%93@@@@"])
  fun op LIST_ELEM_COUNT_LIST_TO_BAG x = x
    val op LIST_ELEM_COUNT_LIST_TO_BAG =
    DT(((("container",32),
        [("arithmetic",[64,91]),("bag",[0,8]),
         ("bool",[14,25,26,27,30,54,56,58,105,129,147]),("combin",[12]),
         ("container",[11]),("list",[43]),
         ("rich_list",[302])]),["DISK_THM"]),
       [read"%62%110%13@%27@@%111%27@%13@@"])
  fun op WF_mlt_list x = x
    val op WF_mlt_list =
    DT(((("container",34),
        [("bag",[33,36,57,226,231]),
         ("bool",[25,53,54,55,56,58,63,74,75,99,105,124]),
         ("container",[11,19,21,25,33]),("relation",[108,114,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%4%63%121$0@@%123%126$0@@@|@"])
  fun op BAG_OF_FMAP_THM x = x
    val op BAG_OF_FMAP_THM =
    DT(((("container",36),
        [("arithmetic",[25,27,71,173,177,180]),("bag",[0,8]),
         ("bool",
         [25,26,27,30,36,47,48,51,52,53,54,56,58,60,63,64,71,104,105,125,
          129]),("combin",[0]),("container",[35]),
         ("finite_map",[15,16,17,24,126,129]),("marker",[6]),
         ("numeral",[3,5,8]),("pred_set",[1,3,9,10,45,80,102,207,208,434]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%43%15%57%80$0@%98@@%94@|@@%46%18%40%8%36%22%37%31%58%82$3@%103$2@%50$1@$0@@@@%79$3$1@$0@@%82$3@%125$2@$1@@@@|@|@|@|@@"])
  fun op BAG_IN_BAG_OF_FMAP x = x
    val op BAG_IN_BAG_OF_FMAP =
    DT(((("container",37),
        [("arithmetic",[46,71,93,143,172,173,177,179,180]),("bag",[2,5]),
         ("bool",[25,26,27,36,43,48,52,54,56,58,63,71,93,96,104,105,107]),
         ("container",[35]),("finite_map",[24]),("numeral",[3,8]),
         ("pred_set",[1,3,10,45,209,434]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%35%34%45%17%39%7%53%77$2@%81$1@$0@@@%65%21%51%106$0@%97$1@@@%52$3@$2$0@%96$1@$0@@@@|@@|@|@|@"])
  fun op FINITE_BAG_OF_FMAP x = x
    val op FINITE_BAG_OF_FMAP =
    DT(((("container",38),
        [("bag",[122,123]),("bool",[25,26,27,36,51,53,54,58,63,105,124]),
         ("container",[36]),("finite_map",[30,138])]),["DISK_THM"]),
       [read"%43%15%38%6%102%80$1@$0@@|@|@"])
  end
  val _ = DB.bindl "container"
  [("LIST_TO_BAG_def",LIST_TO_BAG_def,DB.Def),
   ("BAG_TO_LIST_primitive_def",BAG_TO_LIST_primitive_def,DB.Def),
   ("mlt_list_def",mlt_list_def,DB.Def),
   ("BAG_OF_FMAP_def",BAG_OF_FMAP_def,DB.Def),
   ("SET_TO_LIST_THM",SET_TO_LIST_THM,DB.Thm),
   ("SET_TO_LIST_IND",SET_TO_LIST_IND,DB.Thm),
   ("LIST_TO_SET_THM",LIST_TO_SET_THM,DB.Thm),
   ("SET_TO_LIST_INV",SET_TO_LIST_INV,DB.Thm),
   ("SET_TO_LIST_CARD",SET_TO_LIST_CARD,DB.Thm),
   ("SET_TO_LIST_IN_MEM",SET_TO_LIST_IN_MEM,DB.Thm),
   ("MEM_SET_TO_LIST",MEM_SET_TO_LIST,DB.Thm),
   ("SET_TO_LIST_SING",SET_TO_LIST_SING,DB.Thm),
   ("UNION_APPEND",UNION_APPEND,DB.Thm),
   ("LIST_TO_SET_APPEND",LIST_TO_SET_APPEND,DB.Thm),
   ("FINITE_LIST_TO_SET",FINITE_LIST_TO_SET,DB.Thm),
   ("LIST_TO_BAG_alt",LIST_TO_BAG_alt,DB.Thm),
   ("BAG_TO_LIST_THM",BAG_TO_LIST_THM,DB.Thm),
   ("BAG_TO_LIST_IND",BAG_TO_LIST_IND,DB.Thm),
   ("BAG_TO_LIST_INV",BAG_TO_LIST_INV,DB.Thm),
   ("BAG_IN_MEM",BAG_IN_MEM,DB.Thm),
   ("MEM_BAG_TO_LIST",MEM_BAG_TO_LIST,DB.Thm),
   ("FINITE_LIST_TO_BAG",FINITE_LIST_TO_BAG,DB.Thm),
   ("EVERY_LIST_TO_BAG",EVERY_LIST_TO_BAG,DB.Thm),
   ("LIST_TO_BAG_APPEND",LIST_TO_BAG_APPEND,DB.Thm),
   ("LIST_TO_BAG_MAP",LIST_TO_BAG_MAP,DB.Thm),
   ("LIST_TO_BAG_FILTER",LIST_TO_BAG_FILTER,DB.Thm),
   ("IN_LIST_TO_BAG",IN_LIST_TO_BAG,DB.Thm),
   ("LIST_TO_BAG_DISTINCT",LIST_TO_BAG_DISTINCT,DB.Thm),
   ("LIST_TO_BAG_EQ_EMPTY",LIST_TO_BAG_EQ_EMPTY,DB.Thm),
   ("PERM_LIST_TO_BAG",PERM_LIST_TO_BAG,DB.Thm),
   ("CARD_LIST_TO_BAG",CARD_LIST_TO_BAG,DB.Thm),
   ("BAG_TO_LIST_CARD",BAG_TO_LIST_CARD,DB.Thm),
   ("BAG_TO_LIST_EQ_NIL",BAG_TO_LIST_EQ_NIL,DB.Thm),
   ("LIST_ELEM_COUNT_LIST_TO_BAG",LIST_ELEM_COUNT_LIST_TO_BAG,DB.Thm),
   ("WF_mlt_list",WF_mlt_list,DB.Thm),
   ("BAG_OF_FMAP_THM",BAG_OF_FMAP_THM,DB.Thm),
   ("BAG_IN_BAG_OF_FMAP",BAG_IN_BAG_OF_FMAP,DB.Thm),
   ("FINITE_BAG_OF_FMAP",FINITE_BAG_OF_FMAP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("bagTheory.bag_grammars",bagTheory.bag_grammars),
                         ("finite_mapTheory.finite_map_grammars",
                          finite_mapTheory.finite_map_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_TO_BAG", (Term.prim_mk_const { Name = "LIST_TO_BAG", Thy = "container"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_TO_LIST", (Term.prim_mk_const { Name = "BAG_TO_LIST", Thy = "container"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_TO_LIST", (Term.prim_mk_const { Name = "BAG_TO_LIST", Thy = "container"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mlt_list", (Term.prim_mk_const { Name = "mlt_list", Thy = "container"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mlt_list", (Term.prim_mk_const { Name = "mlt_list", Thy = "container"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_OF_FMAP", (Term.prim_mk_const { Name = "BAG_OF_FMAP", Thy = "container"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BAG_OF_FMAP", (Term.prim_mk_const { Name = "BAG_OF_FMAP", Thy = "container"}))
  val container_grammars = Parse.current_lgrms()
  end


  val _ = TotalDefn.WF_thms := (!TotalDefn.WF_thms @ [WF_mlt_list]);
  val _ = TotalDefn.termination_simps := (!TotalDefn.termination_simps @ [mlt_list_def]);
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "container",
    thydataty = "simp",
    data =
        "container.LIST_TO_BAG_def container.MEM_BAG_TO_LIST container.BAG_TO_LIST_EQ_NIL container.CARD_LIST_TO_BAG container.FINITE_LIST_TO_BAG"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "container",
    thydataty = "compute",
    data =
        "container.LIST_TO_BAG_def container.mlt_list_def container.BAG_OF_FMAP_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "container"
end
