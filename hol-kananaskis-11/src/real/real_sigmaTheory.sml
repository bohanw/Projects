structure real_sigmaTheory :> real_sigmaTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading real_sigmaTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open transcTheory
  in end;
  val _ = Theory.link_parents
          ("real_sigma",
          Arbnum.fromString "1488589435",
          Arbnum.fromString "936668")
          [("transc",
           Arbnum.fromString "1488589315",
           Arbnum.fromString "197602")];
  val _ = Theory.incorporate_types "real_sigma" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("min", "bool"),
   ID("num", "num"), ID("pair", "prod"), ID("bool", "!"), ID("pair", ","),
   ID("seq", "-->"), ID("bool", "/\\"), ID("num", "0"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("pred_set", "CARD"), ID("bool", "COND"),
   ID("pred_set", "CROSS"), ID("pred_set", "DELETE"),
   ID("pred_set", "DISJOINT"), ID("pred_set", "EMPTY"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("pred_set", "IMAGE"),
   ID("bool", "IN"), ID("pred_set", "INJ"), ID("pred_set", "INSERT"),
   ID("pred_set", "INTER"), ID("pred_set", "ITSET"),
   ID("arithmetic", "NUMERAL"), ID("real_sigma", "REAL_SUM_IMAGE"),
   ID("pair", "SND"), ID("pred_set", "SUBSET"), ID("pair", "UNCURRY"),
   ID("pred_set", "UNION"), ID("arithmetic", "ZERO"),
   ID("pred_set", "count"), ID("realax", "inv"), ID("combin", "o"),
   ID("real", "pow"), ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("realax", "real_mul"),
   ID("realax", "real_neg"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("real", "sum"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYV "'a", TYOP [0, 2, 1], TYOP [0, 3, 0],
   TYOP [0, 2, 0], TYOP [0, 5, 4], TYV "'b", TYOP [0, 7, 0],
   TYOP [0, 2, 8], TYOP [3], TYOP [0, 10, 5], TYOP [0, 10, 0],
   TYOP [4, 2, 7], TYOP [0, 13, 0], TYOP [0, 2, 7], TYOP [0, 7, 1],
   TYOP [0, 3, 1], TYOP [0, 15, 1], TYOP [0, 18, 1], TYOP [0, 17, 1],
   TYOP [0, 9, 1], TYOP [0, 21, 1], TYOP [0, 5, 1], TYOP [0, 23, 1],
   TYOP [0, 16, 1], TYOP [0, 25, 1], TYOP [0, 8, 1], TYOP [0, 27, 1],
   TYOP [0, 11, 1], TYOP [0, 29, 1], TYOP [0, 12, 1], TYOP [0, 31, 1],
   TYOP [0, 14, 1], TYOP [0, 33, 1], TYOP [0, 10, 1], TYOP [0, 35, 1],
   TYOP [0, 0, 1], TYOP [0, 37, 1], TYOP [0, 7, 13], TYOP [0, 2, 39],
   TYOP [4, 10, 10], TYOP [0, 10, 41], TYOP [0, 10, 42], TYOP [0, 12, 37],
   TYOP [0, 1, 1], TYOP [0, 1, 45], TYOP [0, 3, 17], TYOP [0, 0, 37],
   TYOP [0, 10, 10], TYOP [0, 3, 10], TYOP [0, 0, 0], TYOP [0, 0, 51],
   TYOP [0, 1, 52], TYOP [4, 2, 2], TYOP [0, 54, 1], TYOP [0, 3, 55],
   TYOP [0, 3, 56], TYOP [0, 13, 1], TYOP [0, 16, 58], TYOP [0, 3, 59],
   TYOP [4, 7, 2], TYOP [0, 61, 1], TYOP [0, 3, 62], TYOP [0, 16, 63],
   TYOP [0, 2, 3], TYOP [0, 3, 65], TYOP [0, 13, 2], TYOP [0, 3, 16],
   TYOP [0, 15, 68], TYOP [0, 2, 17], TYOP [0, 3, 25], TYOP [0, 15, 71],
   TYOP [0, 3, 3], TYOP [0, 2, 73], TYOP [0, 3, 73], TYOP [0, 3, 51],
   TYOP [0, 2, 51], TYOP [0, 77, 76], TYOP [0, 16, 0], TYOP [0, 8, 79],
   TYOP [0, 35, 0], TYOP [0, 12, 81], TYOP [0, 55, 0], TYOP [0, 54, 0],
   TYOP [0, 84, 83], TYOP [0, 58, 0], TYOP [0, 14, 86], TYOP [0, 62, 0],
   TYOP [0, 61, 0], TYOP [0, 89, 88], TYOP [0, 13, 7], TYOP [0, 2, 5],
   TYOP [0, 92, 84], TYOP [0, 9, 14], TYOP [0, 7, 5], TYOP [0, 95, 89],
   TYOP [0, 10, 35], TYOP [0, 15, 5], TYOP [0, 8, 98], TYOP [0, 0, 12],
   TYOP [0, 12, 0], TYOP [0, 41, 101]]
  end
  val _ = Theory.incorporate_consts "real_sigma" tyvector
     [("REAL_SUM_IMAGE", 6)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 3), TMV("P'", 3), TMV("a", 5), TMV("acc", 0), TMV("c", 0),
   TMV("e", 2), TMV("f", 9), TMV("f", 5), TMV("f", 8), TMV("f", 11),
   TMV("f", 12), TMV("f", 14), TMV("f'", 15), TMV("f'", 5), TMV("i", 2),
   TMV("j", 2), TMV("n", 10), TMV("p", 2), TMV("q", 2), TMV("r", 12),
   TMV("s", 2), TMV("s", 3), TMV("s'", 16), TMV("s1", 3), TMV("s2", 16),
   TMV("t", 3), TMV("x", 2), TMV("x", 7), TMV("x", 13), TMV("x", 0),
   TMV("y", 2), TMV("y", 7), TMV("z", 0), TMC(5, 17), TMC(5, 19),
   TMC(5, 20), TMC(5, 22), TMC(5, 24), TMC(5, 26), TMC(5, 28), TMC(5, 30),
   TMC(5, 32), TMC(5, 34), TMC(5, 36), TMC(5, 38), TMC(6, 40), TMC(6, 43),
   TMC(7, 44), TMC(8, 46), TMC(9, 10), TMC(10, 46), TMC(10, 47),
   TMC(10, 48), TMC(11, 46), TMC(12, 17), TMC(13, 49), TMC(14, 49),
   TMC(15, 50), TMC(16, 53), TMC(17, 57), TMC(17, 60), TMC(17, 64),
   TMC(18, 66), TMC(19, 47), TMC(20, 3), TMC(21, 17), TMC(21, 25),
   TMC(22, 67), TMC(23, 69), TMC(24, 70), TMC(25, 72), TMC(26, 74),
   TMC(27, 75), TMC(28, 78), TMC(29, 49), TMC(30, 6), TMC(30, 80),
   TMC(30, 82), TMC(30, 85), TMC(30, 87), TMC(30, 90), TMC(31, 91),
   TMC(32, 47), TMC(33, 93), TMC(33, 94), TMC(33, 96), TMC(34, 75),
   TMC(35, 10), TMC(36, 97), TMC(37, 51), TMC(38, 99), TMC(39, 100),
   TMC(40, 52), TMC(41, 48), TMC(42, 48), TMC(43, 52), TMC(44, 51),
   TMC(45, 12), TMC(46, 52), TMC(47, 102), TMC(48, 45)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op REAL_SUM_IMAGE_DEF x = x
    val op REAL_SUM_IMAGE_DEF =
    DT(((("real_sigma",0),[]),[]),
       [read"%37%7%35%21%52%75$1@$0@@%73%5%3%92$3$1@@$0@||@$0@%97%49@@@|@|@"])
  fun op REAL_SUM_IMAGE_THM x = x
    val op REAL_SUM_IMAGE_THM =
    DT(((("real_sigma",1),
        [("bool",[25,51,53,54,56,58,63,96,105,124,129,147]),("marker",[6]),
         ("pred_set",[185,308,312]),
         ("real",
         [4,6,8,18,27,28,33,38,39,55,62,308,309,311,312,313,314,326,425]),
         ("real_sigma",[0]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%37%7%48%52%75$0@%64@@%97%49@@@%33%5%35%21%53%65$0@@%52%75$2@%71$1@$0@@@%92$2$1@@%75$2@%62$0@$1@@@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_SING x = x
    val op REAL_SUM_IMAGE_SING =
    DT(((("real_sigma",2),
        [("bool",[25,56,63]),("pred_set",[107,185]),("real",[27]),
         ("real_sigma",[1])]),["DISK_THM"]),
       [read"%37%7%33%5%52%75$1@%71$0@%64@@@$1$0@@|@|@"])
  fun op REAL_SUM_IMAGE_POS x = x
    val op REAL_SUM_IMAGE_POS =
    DT(((("real_sigma",3),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[25,36,51,52,53,54,56,58,63,104,105,124]),("marker",[6]),
         ("numeral",[3,8]),("pred_set",[80,104,186]),("real",[79,432]),
         ("real_sigma",[1])]),["DISK_THM"]),
       [read"%37%7%35%21%53%48%65$0@@%33%26%53%69$0@$1@@%94%97%49@@$2$0@@@|@@@%94%97%49@@%75$1@$0@@@|@|@"])
  fun op REAL_SUM_IMAGE_SPOS x = x
    val op REAL_SUM_IMAGE_SPOS =
    DT(((("real_sigma",4),
        [("bool",
         [25,26,27,30,36,51,53,54,56,58,63,73,101,102,105,124,145]),
         ("pred_set",[80,104,186]),("real",[27,80]),
         ("real_sigma",[1])]),["DISK_THM"]),
       [read"%35%21%53%48%65$0@@%100%51$0@%64@@@@%37%7%53%33%26%53%69$0@$2@@%93%97%49@@$1$0@@@|@@%93%97%49@@%75$0@$1@@@|@@|@"])
  fun op REAL_SUM_IMAGE_NONZERO x = x
    val op REAL_SUM_IMAGE_NONZERO =
    DT(((("real_sigma",5),
        [("arithmetic",[46,60,79,207]),
         ("bool",
         [2,15,25,26,27,30,36,48,51,52,53,54,55,56,58,63,83,84,96,99,100,
          105,124]),("numeral",[3]),("pred_set",[10,80,90,104,186]),
         ("real",
         [7,8,12,18,27,28,39,46,55,59,60,61,62,78,79,131,308,309,310,311,
          312,313,314,326,328]),("real_sigma",[1,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%53%48%33%26%53%69$0@$2@@%94%97%49@@$1$0@@@|@@%54%26%48%69$0@$2@@%100%52$1$0@@%97%49@@@@|@@@%50%100%52%75$0@$1@@%97%49@@@@%100%51$1@%64@@@@|@@|@"])
  fun op REAL_SUM_IMAGE_IF_ELIM x = x
    val op REAL_SUM_IMAGE_IF_ELIM =
    DT(((("real_sigma",6),
        [("bool",
         [2,14,15,25,26,36,53,54,56,58,63,83,99,100,105,124,129,147]),
         ("combin",[1,3,5]),("pred_set",[80,104,186]),("real",[425]),
         ("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%35%21%35%0%37%7%53%48%65$2@@%33%26%53%69$0@$3@@$2$0@@|@@@%52%75%26%58$2$0@@$1$0@@%97%49@@|@$2@@%75$0@$2@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_FINITE_SAME x = x
    val op REAL_SUM_IMAGE_FINITE_SAME =
    DT(((("real_sigma",7),
        [("arithmetic",[64]),
         ("bool",[25,26,27,36,51,53,54,55,56,58,63,96,99,105,124,129,147]),
         ("pred_set",[80,83,104,186,207,208]),
         ("real",[5,18,39,131,326,425]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%33%17%53%48%69$0@$2@@%33%18%53%69$0@$3@@%52$2$1@@$2$0@@@|@@@%52%75$1@$2@@%95%97%57$2@@@$1$0@@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_FINITE_CONST x = x
    val op REAL_SUM_IMAGE_FINITE_CONST =
    DT(((("real_sigma",8),
        [("bool",[25,36,51,52,53,56,58,63,105,124]),
         ("pred_set",[80,83,207]),("real",[39,425]),
         ("real_sigma",[1,7])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%44%29%53%33%30%52$2$0@@$1@|@@%52%75$1@$2@@%95%97%57$2@@@$0@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_IN_IF x = x
    val op REAL_SUM_IMAGE_IN_IF =
    DT(((("real_sigma",9),
        [("bool",[14,25,26,36,52,53,54,56,58,63,64,83,105,124,129,147]),
         ("combin",[1,3,5]),("pred_set",[80,104,186]),("real",[425]),
         ("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%52%75$0@$1@@%75%26%58%69$0@$2@@$1$0@@%97%49@@|@$1@@|@@|@"])
  fun op REAL_SUM_IMAGE_CMUL x = x
    val op REAL_SUM_IMAGE_CMUL =
    DT(((("real_sigma",10),
        [("bool",[14,25,26,36,53,54,56,58,63,105,124]),("combin",[5]),
         ("pred_set",[104,186]),("real",[40,325,425]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%44%4%52%75%26%95$1@$2$0@@|@$2@@%95$0@%75$1@$2@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_NEG x = x
    val op REAL_SUM_IMAGE_NEG =
    DT(((("real_sigma",11),
        [("real",[18,308]),("real_sigma",[10])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%52%75%26%96$1$0@@|@$1@@%96%75$0@$1@@@|@@|@"])
  fun op REAL_SUM_IMAGE_IMAGE x = x
    val op REAL_SUM_IMAGE_IMAGE =
    DT(((("real_sigma",12),
        [("bool",[25,26,36,51,53,54,55,56,58,63,99,100,105,124]),
         ("combin",[8]),
         ("pred_set",[3,80,102,104,144,146,147,150,158,162,186,199]),
         ("real",[32,425]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%34%12%53%70$0@$1@%68$0@$1@@@%39%8%52%76$0@%68$1@$2@@@%75%90$0@$1@@$2@@|@@|@@|@"])
  fun op REAL_SUM_IMAGE_DISJOINT_UNION x = x
    val op REAL_SUM_IMAGE_DISJOINT_UNION =
    DT(((("real_sigma",13),
        [("bool",[25,26,27,36,51,52,53,54,56,58,63,83,96,105,124,129,147]),
         ("marker",[6]),
         ("pred_set",[33,37,41,59,60,80,88,92,95,104,186,187,190]),
         ("real",
         [4,6,7,8,18,27,28,38,39,55,62,308,309,311,312,313,314,326]),
         ("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%35%0%35%1%53%48%65$1@@%48%65$0@@%63$1@$0@@@@%37%7%52%75$0@%86$2@$1@@@%92%75$0@$2@@%75$0@$1@@@|@@|@|@"])
  fun op REAL_SUM_IMAGE_EQ_CARD x = x
    val op REAL_SUM_IMAGE_EQ_CARD =
    DT(((("real_sigma",14),
        [("arithmetic",[26,64,91]),
         ("bool",[14,25,26,27,36,52,53,54,56,58,63,83,105,124,129,147]),
         ("combin",[1,3,5]),("pred_set",[80,104,186,207,208]),
         ("real",[131,425]),("real_sigma",[1,9]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%52%75%26%58%69$0@$1@@%97%74%55%87@@@@%97%49@@|@$0@@%97%57$0@@@@|@"])
  fun op REAL_SUM_IMAGE_INV_CARD_EQ_1 x = x
    val op REAL_SUM_IMAGE_INV_CARD_EQ_1 =
    DT(((("real_sigma",15),
        [("bool",[25,26,27,30,53,54,55,56,60,63,64,100,147]),
         ("pred_set",[209]),("real",[19,29,40,425]),("real_sigma",[10,14]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%0%53%48%100%51$0@%64@@@%65$0@@@%52%75%20%58%69$0@$1@@%89%97%57$1@@@@%97%49@@|@$0@@%97%74%55%87@@@@@|@"])
  fun op REAL_SUM_IMAGE_INTER_NONZERO x = x
    val op REAL_SUM_IMAGE_INTER_NONZERO =
    DT(((("real_sigma",16),
        [("bool",
         [14,18,25,26,27,30,36,51,53,54,56,58,63,64,83,105,124,129]),
         ("combin",[3,5]),("pred_set",[45,53,94,104,186,191]),("real",[7]),
         ("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%52%75$0@%72$1@%17%100%52$1$0@@%97%49@@@|@@@%75$0@$1@@|@@|@"])
  fun op REAL_SUM_IMAGE_INTER_ELIM x = x
    val op REAL_SUM_IMAGE_INTER_ELIM =
    DT(((("real_sigma",17),
        [("bool",
         [2,15,25,26,27,30,36,51,53,54,55,56,58,63,64,83,99,100,105,124,
          129]),("pred_set",[45,53,94,104,186,191]),("real",[7,425]),
         ("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%35%1%53%33%26%53%100%69$0@$1@@@%52$2$0@@%97%49@@@|@@%52%75$1@%72$2@$0@@@%75$1@$2@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_COUNT x = x
    val op REAL_SUM_IMAGE_COUNT =
    DT(((("real_sigma",18),
        [("arithmetic",[22,24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [14,25,26,27,36,43,52,54,56,58,63,93,96,104,105,107,143,169]),
         ("num",[9]),("numeral",[3,5,8]),("pair",[4]),
         ("pred_set",[3,6,66,80,101,131,295,296,300,367]),("prim_rec",[6]),
         ("real",[4,280]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%41%10%43%16%52%77$1@%88$0@@@%99%46%49@$0@@$1@@|@|@"])
  fun op REAL_SUM_IMAGE_MONO x = x
    val op REAL_SUM_IMAGE_MONO =
    DT(((("real_sigma",19),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [25,26,36,47,48,51,53,54,56,58,63,71,73,77,78,80,81,84,93,94,96,
          101,102,104,105,124,145,146]),("combin",[19]),("numeral",[3,8]),
         ("pred_set",[80,104,186]),("real",[78,432]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%37%13%53%33%26%53%69$0@$3@@%94$2$0@@$1$0@@@|@@%94%75$1@$2@@%75$0@$2@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_POS_MEM_LE x = x
    val op REAL_SUM_IMAGE_POS_MEM_LE =
    DT(((("real_sigma",20),
        [("bool",
         [25,26,27,36,47,48,51,53,54,56,58,63,71,73,77,78,80,81,84,93,94,
          96,101,102,105,124,145,146]),("combin",[19]),
         ("pred_set",[10,80,104,186]),("real",[7,27,78,310]),
         ("real_sigma",[1,3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%53%33%26%53%69$0@$2@@%94%97%49@@$1$0@@@|@@%33%26%53%69$0@$2@@%94$1$0@@%75$1@$2@@@|@@|@@|@"])
  fun op REAL_SUM_IMAGE_CONST_EQ_1_EQ_INV_CARD x = x
    val op REAL_SUM_IMAGE_CONST_EQ_1_EQ_INV_CARD =
    DT(((("real_sigma",21),
        [("arithmetic",[21,64]),
         ("bool",
         [2,14,25,26,27,30,36,51,52,53,54,55,56,58,63,64,96,99,100,105,108,
          109,124,129,147,169]),("numeral",[3,6]),
         ("pred_set",[80,104,186,208]),
         ("real",
         [4,6,8,15,18,27,28,29,38,39,55,62,118,138,308,309,311,312,313,314,
          322,325,326,327,425]),("real_sigma",[1,8,9]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%0%53%65$0@@%37%7%53%48%52%75$0@$1@@%97%74%55%87@@@@@%33%26%33%30%53%48%69$1@$3@@%69$0@$3@@@%52$2$1@@$2$0@@@|@|@@@%33%26%53%69$0@$2@@%52$1$0@@%89%97%57$2@@@@@|@@|@@|@"])
  fun op REAL_SUM_IMAGE_ADD x = x
    val op REAL_SUM_IMAGE_ADD =
    DT(((("real_sigma",22),
        [("bool",[25,36,51,53,54,56,58,63,96,105,124]),
         ("pred_set",[104,186]),
         ("real",
         [4,6,7,8,18,27,28,38,39,55,62,308,309,311,312,313,314,326,425]),
         ("real_sigma",[1]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%35%21%53%65$0@@%37%7%37%13%52%75%26%92$2$0@@$1$0@@|@$2@@%92%75$1@$2@@%75$0@$2@@@|@|@@|@"])
  fun op REAL_SUM_IMAGE_REAL_SUM_IMAGE x = x
    val op REAL_SUM_IMAGE_REAL_SUM_IMAGE =
    DT(((("real_sigma",23),
        [("bool",
         [14,25,26,27,36,48,51,53,54,55,56,58,63,72,93,95,96,101,105,124,
          143,145,169]),("combin",[1,5,19,20]),("pair",[4,6,8,9]),
         ("pred_set",[3,10,33,45,57,80,104,144,158,186,199,268,270,274]),
         ("real_sigma",[1,12,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%35%21%38%22%36%6%53%48%65$2@@%66$1@@@%52%75%26%76$1$0@@$2@|@$2@@%79%28$1%67$0@@%81$0@@|@%60$2@$1@@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_0 x = x
    val op REAL_SUM_IMAGE_0 =
    DT(((("real_sigma",24),
        [("arithmetic",[67]),("bool",[25,36,53,56,58,105,124]),
         ("real",[419,425]),("real_sigma",[8])]),["DISK_THM"]),
       [read"%35%21%53%65$0@@%52%75%26%97%49@|@$0@@%97%49@@@|@"])
  fun op SEQ_REAL_SUM_IMAGE x = x
    val op SEQ_REAL_SUM_IMAGE =
    DT(((("real_sigma",25),
        [("bool",[2,14,15,25,26,36,51,53,54,55,56,58,63,99,105,124]),
         ("combin",[3,5]),("pred_set",[80,104,186]),("real_sigma",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("seq",[2,3])]),["DISK_THM"]),
       [read"%35%21%53%65$0@@%40%9%37%13%53%33%26%53%69$0@$3@@%47%16$3$0@$1@|@$1$0@@@|@@%47%16%75$2$0@@$3@|@%75$0@$2@@@|@|@@|@"])
  fun op NESTED_REAL_SUM_IMAGE_REVERSE x = x
    val op NESTED_REAL_SUM_IMAGE_REVERSE =
    DT(((("real_sigma",26),
        [("bool",[14,25,26,36,51,53,54,55,56,58,63,83,105,124]),
         ("combin",[1,5]),("pair",[4,7,8,9]),
         ("pred_set",[3,144,158,268,274]),("real_sigma",[12,23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%36%6%35%21%38%22%53%48%65$1@@%66$0@@@%52%75%26%76$3$0@@$1@|@$1@@%76%27%75%30$4$0@$1@|@$2@|@$0@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_EQ_sum x = x
    val op REAL_SUM_IMAGE_EQ_sum =
    DT(((("real_sigma",27),
        [("arithmetic",[22,25]),
         ("bool",[14,25,26,27,53,54,56,58,63,105,124]),("num",[9]),
         ("pred_set",[104,296,298,299,300]),("prim_rec",[4]),
         ("real",[5,280]),("real_sigma",[1])]),["DISK_THM"]),
       [read"%43%16%41%19%52%99%46%49@$1@@$0@@%77$0@%88$1@@@|@|@"])
  fun op REAL_SUM_IMAGE_POW x = x
    val op REAL_SUM_IMAGE_POW =
    DT(((("real_sigma",28),
        [("bool",[25,51,53,56,58,60,63,105,124,169]),("pair",[5,8,9,16]),
         ("real",[16,241]),("real_sigma",[10,23])]),["DISK_THM"]),
       [read"%37%2%35%21%53%65$0@@%52%91%75$1@$0@@%74%56%87@@@@%78%83%14%15%95$3$1@@$3$0@@||@@%59$0@$0@@@@|@|@"])
  fun op REAL_SUM_IMAGE_EQ x = x
    val op REAL_SUM_IMAGE_EQ =
    DT(((("real_sigma",29),
        [("bool",[25,56,58,63,105,129]),("real_sigma",[9])]),["DISK_THM"]),
       [read"%35%21%37%7%37%13%53%48%65$2@@%33%26%53%69$0@$3@@%52$2$0@@$1$0@@@|@@@%52%75$1@$2@@%75$0@$2@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_IN_IF_ALT x = x
    val op REAL_SUM_IMAGE_IN_IF_ALT =
    DT(((("real_sigma",30),
        [("bool",[25,53,56,58,63,105,124,129,147]),
         ("real_sigma",[29])]),["DISK_THM"]),
       [read"%35%21%37%7%44%32%53%65$2@@%52%75$1@$2@@%75%26%58%69$0@$3@@$2$0@@$1@|@$2@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_SUB x = x
    val op REAL_SUM_IMAGE_SUB =
    DT(((("real_sigma",31),
        [("bool",[25,56,58,63,105,124,169]),("real",[22,102]),
         ("real_sigma",[10,22])]),["DISK_THM"]),
       [read"%35%21%37%7%37%13%53%65$2@@%52%75%26%98$2$0@@$1$0@@|@$2@@%98%75$1@$2@@%75$0@$2@@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_MONO_SET x = x
    val op REAL_SUM_IMAGE_MONO_SET =
    DT(((("real_sigma",32),
        [("arithmetic",[46,60,79,207]),
         ("bool",[2,15,25,26,27,51,53,54,56,58,63,83,96,99]),
         ("numeral",[3]),("pred_set",[3,10,45,57,67,75,195]),
         ("real",
         [4,6,7,8,12,18,27,28,38,39,46,59,60,61,62,131,308,309,310,311,312,
          313,314,326,328]),("real_sigma",[3,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%37%7%35%21%35%25%53%48%65$1@@%48%65$0@@%48%82$1@$0@@%33%26%53%69$0@$1@@%94%97%49@@$3$0@@@|@@@@@%94%75$2@$1@@%75$2@$0@@@|@|@|@"])
  fun op REAL_SUM_IMAGE_CROSS_SYM x = x
    val op REAL_SUM_IMAGE_CROSS_SYM =
    DT(((("real_sigma",33),
        [("bool",[25,26,51,53,54,55,56,58,60,63,105,124]),("combin",[5]),
         ("pair",[4,5,7,8,9,16]),("pred_set",[3,144,158,268,274]),
         ("real_sigma",[12]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%11%35%23%38%24%53%48%65$1@@%66$0@@@%52%79%84%26%31$4%45$1@$0@@||@@%60$1@$0@@@%80%85%31%26$4%45$0@$1@@||@@%61$0@$1@@@@|@|@|@"])
  end
  val _ = DB.bindl "real_sigma"
  [("REAL_SUM_IMAGE_DEF",REAL_SUM_IMAGE_DEF,DB.Def),
   ("REAL_SUM_IMAGE_THM",REAL_SUM_IMAGE_THM,DB.Thm),
   ("REAL_SUM_IMAGE_SING",REAL_SUM_IMAGE_SING,DB.Thm),
   ("REAL_SUM_IMAGE_POS",REAL_SUM_IMAGE_POS,DB.Thm),
   ("REAL_SUM_IMAGE_SPOS",REAL_SUM_IMAGE_SPOS,DB.Thm),
   ("REAL_SUM_IMAGE_NONZERO",REAL_SUM_IMAGE_NONZERO,DB.Thm),
   ("REAL_SUM_IMAGE_IF_ELIM",REAL_SUM_IMAGE_IF_ELIM,DB.Thm),
   ("REAL_SUM_IMAGE_FINITE_SAME",REAL_SUM_IMAGE_FINITE_SAME,DB.Thm),
   ("REAL_SUM_IMAGE_FINITE_CONST",REAL_SUM_IMAGE_FINITE_CONST,DB.Thm),
   ("REAL_SUM_IMAGE_IN_IF",REAL_SUM_IMAGE_IN_IF,DB.Thm),
   ("REAL_SUM_IMAGE_CMUL",REAL_SUM_IMAGE_CMUL,DB.Thm),
   ("REAL_SUM_IMAGE_NEG",REAL_SUM_IMAGE_NEG,DB.Thm),
   ("REAL_SUM_IMAGE_IMAGE",REAL_SUM_IMAGE_IMAGE,DB.Thm),
   ("REAL_SUM_IMAGE_DISJOINT_UNION",REAL_SUM_IMAGE_DISJOINT_UNION,DB.Thm),
   ("REAL_SUM_IMAGE_EQ_CARD",REAL_SUM_IMAGE_EQ_CARD,DB.Thm),
   ("REAL_SUM_IMAGE_INV_CARD_EQ_1",REAL_SUM_IMAGE_INV_CARD_EQ_1,DB.Thm),
   ("REAL_SUM_IMAGE_INTER_NONZERO",REAL_SUM_IMAGE_INTER_NONZERO,DB.Thm),
   ("REAL_SUM_IMAGE_INTER_ELIM",REAL_SUM_IMAGE_INTER_ELIM,DB.Thm),
   ("REAL_SUM_IMAGE_COUNT",REAL_SUM_IMAGE_COUNT,DB.Thm),
   ("REAL_SUM_IMAGE_MONO",REAL_SUM_IMAGE_MONO,DB.Thm),
   ("REAL_SUM_IMAGE_POS_MEM_LE",REAL_SUM_IMAGE_POS_MEM_LE,DB.Thm),
   ("REAL_SUM_IMAGE_CONST_EQ_1_EQ_INV_CARD",
    REAL_SUM_IMAGE_CONST_EQ_1_EQ_INV_CARD,
    DB.Thm), ("REAL_SUM_IMAGE_ADD",REAL_SUM_IMAGE_ADD,DB.Thm),
   ("REAL_SUM_IMAGE_REAL_SUM_IMAGE",REAL_SUM_IMAGE_REAL_SUM_IMAGE,DB.Thm),
   ("REAL_SUM_IMAGE_0",REAL_SUM_IMAGE_0,DB.Thm),
   ("SEQ_REAL_SUM_IMAGE",SEQ_REAL_SUM_IMAGE,DB.Thm),
   ("NESTED_REAL_SUM_IMAGE_REVERSE",NESTED_REAL_SUM_IMAGE_REVERSE,DB.Thm),
   ("REAL_SUM_IMAGE_EQ_sum",REAL_SUM_IMAGE_EQ_sum,DB.Thm),
   ("REAL_SUM_IMAGE_POW",REAL_SUM_IMAGE_POW,DB.Thm),
   ("REAL_SUM_IMAGE_EQ",REAL_SUM_IMAGE_EQ,DB.Thm),
   ("REAL_SUM_IMAGE_IN_IF_ALT",REAL_SUM_IMAGE_IN_IF_ALT,DB.Thm),
   ("REAL_SUM_IMAGE_SUB",REAL_SUM_IMAGE_SUB,DB.Thm),
   ("REAL_SUM_IMAGE_MONO_SET",REAL_SUM_IMAGE_MONO_SET,DB.Thm),
   ("REAL_SUM_IMAGE_CROSS_SYM",REAL_SUM_IMAGE_CROSS_SYM,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("transcTheory.transc_grammars",
                          transcTheory.transc_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REAL_SUM_IMAGE", (Term.prim_mk_const { Name = "REAL_SUM_IMAGE", Thy = "real_sigma"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REAL_SUM_IMAGE", (Term.prim_mk_const { Name = "REAL_SUM_IMAGE", Thy = "real_sigma"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIGMA", (Term.prim_mk_const { Name = "REAL_SUM_IMAGE", Thy = "real_sigma"}))
  val real_sigma_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "real_sigma"
end
