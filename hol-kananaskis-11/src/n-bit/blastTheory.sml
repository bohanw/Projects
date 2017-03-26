structure blastTheory :> blastTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading blastTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open wordsTheory
  in end;
  val _ = Theory.link_parents
          ("blast",
          Arbnum.fromString "1488587508",
          Arbnum.fromString "125422")
          [("words",
           Arbnum.fromString "1488587186",
           Arbnum.fromString "513354")];
  val _ = Theory.incorporate_types "blast" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"),
   ID("fcp", "cart"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("arithmetic", "-"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "==>"), ID("blast", "BCARRY"), ID("bit", "BIT"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bit", "BITS"),
   ID("blast", "BSUM"), ID("bool", "COND"), ID("rich_list", "COUNT_LIST"),
   ID("list", "list"), ID("bool", "F"), ID("fcp", "FCP"),
   ID("list", "FOLDL"), ID("combin", "K"), ID("bit", "LOG2"),
   ID("arithmetic", "MOD"), ID("arithmetic", "NUMERAL"), ID("num", "SUC"),
   ID("bool", "T"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("blast", "bcarry"), ID("blast", "bsum"), ID("fcp", "dimindex"),
   ID("bool", "itself"), ID("fcp", "fcp_index"), ID("words", "n2w"),
   ID("combin", "o"), ID("bool", "the_value"), ID("words", "word_add"),
   ID("words", "word_asr"), ID("words", "word_asr_bv"),
   ID("words", "word_bits"), ID("words", "word_lo"),
   ID("words", "word_lsl_bv"), ID("words", "word_lsr_bv"),
   ID("words", "word_mod"), ID("words", "word_mul"),
   ID("words", "word_rol_bv"), ID("words", "word_ror_bv"),
   ID("words", "word_sub"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYOP [0, 0, 2], TYOP [2],
   TYOP [0, 4, 0], TYOP [0, 5, 1], TYOP [0, 5, 6], TYOP [0, 4, 7],
   TYV "'a", TYOP [3, 0, 9], TYOP [0, 1, 0], TYOP [0, 10, 0],
   TYOP [0, 12, 0], TYOP [0, 5, 0], TYOP [0, 14, 0], TYOP [0, 4, 4],
   TYOP [0, 4, 16], TYOP [0, 4, 5], TYOP [0, 10, 12], TYOP [0, 4, 17],
   TYOP [0, 10, 10], TYOP [0, 10, 21], TYOP [0, 0, 22], TYOP [0, 0, 17],
   TYOP [21, 4], TYOP [0, 4, 25], TYOP [0, 5, 10], TYOP [0, 25, 0],
   TYOP [0, 0, 28], TYOP [0, 0, 5], TYOP [0, 30, 29], TYOP [0, 25, 10],
   TYOP [0, 10, 32], TYOP [0, 4, 10], TYOP [0, 10, 34], TYOP [0, 35, 33],
   TYOP [36, 9], TYOP [0, 37, 4], TYOP [0, 10, 5], TYOP [0, 5, 5],
   TYOP [0, 1, 40], TYOP [0, 4, 21], TYOP [0, 4, 42]]
  end
  val _ = Theory.incorporate_consts "blast" tyvector
     [("bsum", 3), ("bcarry", 3), ("BSUM", 8), ("BCARRY", 8)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("a", 10), TMV("c", 0), TMV("i", 4), TMV("j", 4),
   TMV("k", 4), TMV("m", 10), TMV("n", 4), TMV("w", 10), TMV("x", 0),
   TMV("x", 10), TMV("x", 5), TMV("x", 4), TMV("x1", 5), TMV("x2", 5),
   TMV("y", 0), TMV("y", 10), TMV("y", 5), TMV("y", 4), TMV("y1", 5),
   TMV("y2", 5), TMC(4, 11), TMC(4, 13), TMC(4, 15), TMC(4, 14),
   TMC(5, 17), TMC(6, 17), TMC(7, 2), TMC(8, 4), TMC(9, 18), TMC(10, 18),
   TMC(11, 2), TMC(11, 19), TMC(11, 18), TMC(12, 2), TMC(13, 8),
   TMC(14, 18), TMC(15, 16), TMC(16, 16), TMC(17, 20), TMC(18, 8),
   TMC(19, 23), TMC(19, 24), TMC(20, 26), TMC(22, 0), TMC(23, 27),
   TMC(24, 31), TMC(24, 36), TMC(25, 30), TMC(26, 16), TMC(27, 17),
   TMC(28, 16), TMC(29, 16), TMC(30, 0), TMC(31, 4), TMC(32, 2),
   TMC(33, 3), TMC(34, 3), TMC(35, 38), TMC(37, 39), TMC(38, 34),
   TMC(39, 41), TMC(40, 37), TMC(41, 22), TMC(42, 35), TMC(43, 22),
   TMC(44, 43), TMC(45, 19), TMC(46, 22), TMC(47, 22), TMC(48, 22),
   TMC(49, 22), TMC(50, 22), TMC(51, 22), TMC(52, 22), TMC(53, 1)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op bcarry_def x = x
    val op bcarry_def =
    DT(((("blast",0),[]),[]),
       [read"%21%9%21%15%21%2%31%56$2@$1@$0@@%55%27$2@$1@@%27%55$2@$1@@$0@@@|@|@|@"])
  fun op BCARRY_def x = x
    val op BCARRY_def =
    DT(((("blast",1),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%27%23%11%23%17%21%2%31%35%28@$2@$1@$0@@$0@|@|@|@@%24%3%23%11%23%17%21%2%31%35%52$3@@$2@$1@$0@@%56$2$3@@$1$3@@%35$3@$2@$1@$0@@@|@|@|@|@@"])
  fun op bsum_def x = x
    val op bsum_def =
    DT(((("blast",3),[]),[]),
       [read"%21%9%21%15%21%2%31%57$2@$1@$0@@%31%31$2@%75$1@@@%75$0@@@|@|@|@"])
  fun op BSUM_def x = x
    val op BSUM_def =
    DT(((("blast",4),[]),[]),
       [read"%24%3%23%11%23%17%21%2%31%40$3@$2@$1@$0@@%57$2$3@@$1$3@@%35$3@$2@$1@$0@@@|@|@|@|@"])
  fun op BCARRY_def_compute x = x
    val op BCARRY_def_compute =
    DT(((("blast",2),
        [("arithmetic",[268]),("blast",[1]),("bool",[26])]),["DISK_THM"]),
       [read"%27%23%11%23%17%21%2%31%35%28@$2@$1@$0@@$0@|@|@|@@%27%24%3%23%11%23%17%21%2%31%35%51%37$3@@@$2@$1@$0@@%56$2%26%51%37$3@@@%51%37%54@@@@@$1%26%51%37$3@@@%51%37%54@@@@@%35%26%51%37$3@@@%51%37%54@@@@$2@$1@$0@@@|@|@|@|@@%24%3%23%11%23%17%21%2%31%35%51%38$3@@@$2@$1@$0@@%56$2%51%37$3@@@@$1%51%37$3@@@@%35%51%37$3@@@$2@$1@$0@@@|@|@|@|@@@"])
  fun op BCARRY_LEM x = x
    val op BCARRY_LEM =
    DT(((("blast",5),
        [("arithmetic",
         [8,22,24,25,26,27,28,37,41,46,59,62,65,69,71,74,79,88,93,122,145,
          172,173,176,177,180,214,217,233,274,275,278]),
         ("bit",[4,7,18,29,33,34,49,68,76,84,98,129]),("blast",[0,1]),
         ("bool",
         [8,14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,95,96,101,104,
          105,107,124,129]),("num",[9]),
         ("numeral",[0,3,5,6,7,8,17,21,34,35,40,41]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%24%3%24%12%24%18%21%2%34%29%28@$3@@%31%35$3@%3%36$0@$3@|@%3%36$0@$2@|@$0@@%36$3@%25%25%39%26$3@%51%37%54@@@@%28@$2@@%39%26$3@%51%37%54@@@@%28@$1@@@%42$0@%51%37%54@@@%28@@@@@|@|@|@|@"])
  fun op BCARRY_EQ x = x
    val op BCARRY_EQ =
    DT(((("blast",6),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),("blast",[1]),
         ("bool",[14,25,26,27,36,51,53,54,56,58,63,96,101,104,105,124]),
         ("num",[9]),("numeral",[3,5,8]),("prim_rec",[6])]),["DISK_THM"]),
       [read"%24%7%21%2%23%13%23%14%23%19%23%20%34%24%3%34%29$0@$6@@%27%31$4$0@@$3$0@@@%31$2$0@@$1$0@@@@|@@%31%35$5@$3@$1@$4@@%35$5@$2@$0@$4@@@|@|@|@|@|@|@"])
  fun op BSUM_EQ x = x
    val op BSUM_EQ =
    DT(((("blast",7),
        [("arithmetic",[24,25,27,41,46,71,93,95,173,176,180]),
         ("blast",[4,6]),
         ("bool",[25,36,51,53,54,56,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%24%7%21%2%23%13%23%14%23%19%23%20%34%24%3%34%30$0@$6@@%27%31$4$0@@$3$0@@@%31$2$0@@$1$0@@@@|@@%31%40$5@$3@$1@$4@@%40$5@$2@$0@$4@@@|@|@|@|@|@|@"])
  fun op BSUM_LEM x = x
    val op BSUM_LEM =
    DT(((("blast",8),
        [("arithmetic",
         [22,24,25,26,27,46,62,65,71,74,93,112,172,173,177,180,209,215,217,
          219,224,225,228,232,233,237,238,247,275]),
         ("bit",[7,21,24,33,36,43,53,76,90,92]),("blast",[1,3,4,5]),
         ("bool",
         [8,14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,99,100,104,
          105,107,124,129,169]),("num",[9]),
         ("numeral",[0,3,5,6,7,8,9,17,21,32,33,34,35,40,41]),
         ("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,15,16,17,18])]),["DISK_THM"]),
       [read"%24%3%24%12%24%18%21%2%31%40$3@%3%36$0@$3@|@%3%36$0@$2@|@$0@@%36$3@%25%25$2@$1@@%42$0@%51%37%54@@@%28@@@@|@|@|@|@"])
  fun op BITWISE_ADD x = x
    val op BITWISE_ADD =
    DT(((("blast",9),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),("blast",[7,8]),
         ("bool",[25,36,51,53,54,56,58,63,96,101,104,105,124,147]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[145,156,242])]),["DISK_THM"]),
       [read"%22%10%22%16%32%63$1@$0@@%45%3%40$0@%59$2@@%59$1@@%44@|@@|@|@"])
  fun op BITWISE_SUB x = x
    val op BITWISE_SUB =
    DT(((("blast",10),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,177,180,195,217,269]),
         ("blast",[7,8]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[31,69,145,156,159,242,341])]),["DISK_THM"]),
       [read"%22%10%22%16%32%74$1@$0@@%45%3%40$0@%59$2@@%61%75@%59$1@@@%53@|@@|@|@"])
  fun op BITWISE_LO x = x
    val op BITWISE_LO =
    DT(((("blast",11),
        [("arithmetic",
         [17,18,22,24,25,26,27,41,46,59,62,69,71,74,76,93,95,172,173,177,
          180,183,195,200,217,219,233,269,274]),("bit",[7,43,49,68]),
         ("blast",[5,6]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124,147,169]),("combin",[8,19]),("fcp",[13,15]),
         ("numeral",[0,3,5,7,8]),("pair",[16]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",
         [0,31,76,83,110,113,140,144,145,159,160,242])]),["DISK_THM"]),
       [read"%22%10%22%16%31%67$1@$0@@%75%35%58%62@@%59$1@@%61%75@%59$0@@@%53@@@|@|@"])
  fun op BITWISE_MUL x = x
    val op BITWISE_MUL =
    DT(((("blast",12),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,65,67,70,71,93,95,147,172,173,176,177,
          180,197,199,200,232,268,269,273,275,289,295,306,308]),
         ("bit",[33,48,53,54,67,80,81,88]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129,147]),("fcp",[13,15]),("list",[29,150,299]),("num",[9]),
         ("numeral",[3,5,6,7,8,16,33]),("prim_rec",[4,6,7]),
         ("rich_list",[17,282,283]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",
         [32,33,48,49,69,90,113,144,145,157,185,205,206,225,230,236,237,
          242,256,262,321,322,324,325,326,327,328,339,352,377,384,408,
          409])]),["DISK_THM"]),
       [read"%22%8%22%6%32%71$1@$0@@%47%1%4%63$1@%45%3%27%59$4@$1@@%27%30$1@$0@@%59$3@%26$0@$1@@@@|@@||@%60%28@@%43%58%62@@@@|@|@"])
  fun op word_lsl_bv_expand x = x
    val op word_lsl_bv_expand =
    DT(((("blast",13),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,64,71,91,93,95,130,147,154,172,173,
          176,177,180,197,198,199,200,217,237,247,268,269,306,310]),
         ("bit",[9,47]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,60,63,64,71,
          92,93,96,99,100,101,102,104,105,124,145]),
         ("combin",[1,3,5,8,12,19,20]),("fcp",[13,15]),
         ("list",[23,29,43,150,299]),("logroot",[8]),("marker",[6]),
         ("num",[9]),("numeral",[3,5,7,8]),("prim_rec",[4,6,19]),
         ("rich_list",[17,282,283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [49,51,90,96,110,113,126,140,144,145,185,228,230,237,256,262,269,
          280,287,321,324,407])]),["DISK_THM"]),
       [read"%22%8%22%6%32%68$1@$0@@%41%33%58%62@@%51%37%54@@@@%45%48%27%75%59$0@%28@@@%59$1@%28@@@@@%45%5%27%46%0%4%55$1@%27%32%66%49%26%58%62@@%51%37%54@@@@@%28@$3@@%60$0@@@%27%30$0@$2@@%59$4@%26$2@$0@@@@@||@%44@%43%58%62@@@@%32%66%26%58%62@@%51%37%54@@@@%25%49%26%58%62@@%51%37%54@@@@@%51%37%54@@@@$1@@%60%28@@@|@@@|@|@"])
  fun op word_lsr_bv_expand x = x
    val op word_lsr_bv_expand =
    DT(((("blast",14),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,64,71,91,93,95,130,147,154,172,173,
          176,177,180,197,198,199,200,217,237,247,268,269,306,310]),
         ("bit",[9,47]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,60,63,64,71,
          92,93,96,99,100,101,102,104,105,124,145]),
         ("combin",[1,3,5,8,12,19,20]),("fcp",[13,15]),
         ("list",[23,29,43,150,299]),("logroot",[8]),("marker",[6]),
         ("num",[9]),("numeral",[3,5,7,8]),("prim_rec",[4,6,19]),
         ("rich_list",[17,282,283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [49,51,91,97,110,113,126,140,144,145,185,228,230,237,256,262,269,
          280,287,321,324,407])]),["DISK_THM"]),
       [read"%22%8%22%6%32%69$1@$0@@%41%33%58%62@@%51%37%54@@@@%45%48%27%75%59$0@%28@@@%59$1@%28@@@@@%45%5%27%46%0%4%55$1@%27%32%66%49%26%58%62@@%51%37%54@@@@@%28@$3@@%60$0@@@%27%29%25$2@$0@@%58%62@@@%59$4@%25$2@$0@@@@@||@%44@%43%58%62@@@@%32%66%26%58%62@@%51%37%54@@@@%25%49%26%58%62@@%51%37%54@@@@@%51%37%54@@@@$1@@%60%28@@@|@@@|@|@"])
  fun op word_asr_bv_expand x = x
    val op word_asr_bv_expand =
    DT(((("blast",15),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,64,71,91,93,95,130,147,154,172,173,
          176,177,180,197,198,199,200,217,219,237,247,268,269,275,306,
          310]),("bit",[9,47]),
         ("bool",
         [2,13,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,60,63,64,71,
          92,93,96,99,100,101,102,104,105,124,129,147]),
         ("combin",[1,3,5,8,12,19,20]),("fcp",[13,15]),
         ("list",[23,29,43,150,299]),("logroot",[8]),("marker",[6]),
         ("num",[9]),("numeral",[0,3,5,6,7,8]),("prim_rec",[4,6,19]),
         ("rich_list",[17,282,283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,33,47,49,51,92,98,110,113,126,140,144,145,185,187,192,228,230,
          237,256,262,269,280,287,321,324,395,407,539])]),["DISK_THM"]),
       [read"%22%8%22%6%32%65$1@$0@@%41%33%58%62@@%51%37%54@@@@%45%48%59$1@%28@@@@%45%5%55%27%46%0%4%55$1@%27%32%66%49%26%58%62@@%51%37%54@@@@@%28@$3@@%60$0@@@%59%64$4@$0@@$2@@@||@%44@%43%58%62@@@@%32%66%26%58%62@@%51%37%54@@@@%25%49%26%58%62@@%51%37%54@@@@@%51%37%54@@@@$1@@%60%28@@@@%27%67%60%26%58%62@@%51%37%54@@@@@$1@@%59$2@%26%58%62@@%51%37%54@@@@@@|@@@|@|@"])
  fun op word_ror_bv_expand x = x
    val op word_ror_bv_expand =
    DT(((("blast",16),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,172,173,177,180,217,237,247]),
         ("bit",[117]),
         ("bool",
         [2,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,63,96,99,100,
          101,104,105,124]),("combin",[1,3,5]),("fcp",[13,15]),
         ("list",[29,299]),("marker",[6,8]),("num",[9]),
         ("numeral",[3,5,8]),("prim_rec",[4,6]),("rich_list",[283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[72,93,99,110,113,126,140,144,145,147])]),["DISK_THM"]),
       [read"%22%8%22%6%32%73$1@$0@@%45%5%46%0%4%55$1@%27%32%70$3@%60%58%62@@@@%60$0@@@%59$4@%50%25$0@$2@@%58%62@@@@@||@%44@%43%58%62@@@|@@|@|@"])
  fun op word_rol_bv_expand x = x
    val op word_rol_bv_expand =
    DT(((("blast",17),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,177,180,217,237,247]),
         ("bit",[117]),
         ("bool",
         [2,14,15,25,26,27,30,36,43,48,51,52,53,54,55,56,58,63,96,99,100,
          101,104,105,124]),("combin",[1,3,5]),("fcp",[13,15]),
         ("list",[29,299]),("marker",[6]),("num",[9]),("numeral",[3,5,8]),
         ("prim_rec",[4,6]),("rich_list",[283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [72,93,94,100,110,113,126,140,144,145,147])]),["DISK_THM"]),
       [read"%22%8%22%6%32%72$1@$0@@%45%5%46%0%4%55$1@%27%32%70$3@%60%58%62@@@@%60$0@@@%59$4@%50%25$2@%50%26%58%62@@$0@@%58%62@@@@%58%62@@@@@||@%44@%43%58%62@@@|@@|@|@"])
  end
  val _ = DB.bindl "blast"
  [("bcarry_def",bcarry_def,DB.Def), ("BCARRY_def",BCARRY_def,DB.Def),
   ("bsum_def",bsum_def,DB.Def), ("BSUM_def",BSUM_def,DB.Def),
   ("BCARRY_def_compute",BCARRY_def_compute,DB.Thm),
   ("BCARRY_LEM",BCARRY_LEM,DB.Thm), ("BCARRY_EQ",BCARRY_EQ,DB.Thm),
   ("BSUM_EQ",BSUM_EQ,DB.Thm), ("BSUM_LEM",BSUM_LEM,DB.Thm),
   ("BITWISE_ADD",BITWISE_ADD,DB.Thm), ("BITWISE_SUB",BITWISE_SUB,DB.Thm),
   ("BITWISE_LO",BITWISE_LO,DB.Thm), ("BITWISE_MUL",BITWISE_MUL,DB.Thm),
   ("word_lsl_bv_expand",word_lsl_bv_expand,DB.Thm),
   ("word_lsr_bv_expand",word_lsr_bv_expand,DB.Thm),
   ("word_asr_bv_expand",word_asr_bv_expand,DB.Thm),
   ("word_ror_bv_expand",word_ror_bv_expand,DB.Thm),
   ("word_rol_bv_expand",word_rol_bv_expand,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("wordsTheory.words_grammars",
                          wordsTheory.words_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bcarry", (Term.prim_mk_const { Name = "bcarry", Thy = "blast"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bcarry", (Term.prim_mk_const { Name = "bcarry", Thy = "blast"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BCARRY", (Term.prim_mk_const { Name = "BCARRY", Thy = "blast"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bsum", (Term.prim_mk_const { Name = "bsum", Thy = "blast"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bsum", (Term.prim_mk_const { Name = "bsum", Thy = "blast"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BSUM", (Term.prim_mk_const { Name = "BSUM", Thy = "blast"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BSUM", (Term.prim_mk_const { Name = "BSUM", Thy = "blast"}))
  val blast_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "blast",
    thydataty = "compute",
    data = "blast.BCARRY_def blast.BCARRY_def_compute"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "blast"
end
