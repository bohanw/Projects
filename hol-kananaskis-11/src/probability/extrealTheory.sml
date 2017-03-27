structure extrealTheory :> extrealTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading extrealTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open util_probTheory
  in end;
  val _ = Theory.link_parents
          ("extreal",
          Arbnum.fromString "1488589771",
          Arbnum.fromString "733391")
          [("util_prob",
           Arbnum.fromString "1488589709",
           Arbnum.fromString "935025")];
  val _ = Theory.incorporate_types "extreal" [("extreal", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("extreal", "extreal"),
   ID("min", "bool"), ID("num", "num"), ID("pair", "prod"),
   ID("ind_type", "recspace"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("seq", "-->"),
   ID("real", "/"), ID("bool", "/\\"), ID("num", "0"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("bool", "ARB"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("pred_set", "CARD"), ID("bool", "COND"),
   ID("ind_type", "CONSTR"), ID("pred_set", "CROSS"),
   ID("bool", "DATATYPE"), ID("pred_set", "DELETE"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"),
   ID("pred_set", "EMPTY"), ID("arithmetic", "EVEN"),
   ID("extreal", "EXTREAL_SUM_IMAGE"), ID("bool", "F"),
   ID("pred_set", "FINITE"), ID("pair", "FST"), ID("pred_set", "GSPEC"),
   ID("combin", "I"), ID("pred_set", "IMAGE"), ID("bool", "IN"),
   ID("pred_set", "INJ"), ID("pred_set", "INSERT"),
   ID("pred_set", "INTER"), ID("pred_set", "ITSET"), ID("while", "LEAST"),
   ID("arithmetic", "NUMERAL"), ID("extreal", "NegInf"),
   ID("extreal", "Normal"), ID("arithmetic", "ODD"),
   ID("extreal", "PosInf"), ID("extreal", "Q_set"),
   ID("real_sigma", "REAL_SUM_IMAGE"), ID("pair", "SND"),
   ID("pred_set", "SUBSET"), ID("num", "SUC"), ID("bool", "T"),
   ID("bool", "TYPE_DEFINITION"), ID("pair", "UNCURRY"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("real", "abs"), ID("extreal", "ceiling"), ID("pred_set", "count"),
   ID("util_prob", "countable"), ID("transc", "exp"),
   ID("extreal", "ext_mono_decreasing"),
   ID("extreal", "ext_mono_increasing"), ID("extreal", "ext_suminf"),
   ID("extreal", "extreal_CASE"), ID("extreal", "extreal_abs"),
   ID("extreal", "extreal_add"), ID("extreal", "extreal_add_tupled"),
   ID("extreal", "extreal_ainv"), ID("extreal", "extreal_div"),
   ID("extreal", "extreal_exp"), ID("extreal", "extreal_inf"),
   ID("extreal", "extreal_inv"), ID("extreal", "extreal_le"),
   ID("extreal", "extreal_le_tupled"), ID("extreal", "extreal_lg"),
   ID("extreal", "extreal_logr"), ID("extreal", "extreal_lt"),
   ID("extreal", "extreal_max"), ID("extreal", "extreal_min"),
   ID("extreal", "extreal_mul"), ID("extreal", "extreal_mul_tupled"),
   ID("extreal", "extreal_of_num"), ID("extreal", "extreal_pow"),
   ID("extreal", "extreal_size"), ID("extreal", "extreal_sqrt"),
   ID("extreal", "extreal_sub"), ID("extreal", "extreal_sub_tupled"),
   ID("extreal", "extreal_sup"), ID("realax", "inv"),
   ID("util_prob", "logr"), ID("extreal", "mono_decreasing"),
   ID("extreal", "mono_increasing"), ID("combin", "o"),
   ID("extreal", "open_interval"), ID("extreal", "open_intervals_set"),
   ID("pair", "pair_CASE"), ID("real", "pow"),
   ID("extreal", "rational_intervals"), ID("extreal", "real"),
   ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("realax", "real_mul"),
   ID("realax", "real_neg"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("transc", "sqrt"), ID("seq", "suminf"),
   ID("real", "sup"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [3], TYOP [0, 1, 3],
   TYOP [0, 4, 3], TYOP [0, 1, 4], TYOP [0, 1, 6], TYOP [4],
   TYOP [0, 8, 0], TYOP [0, 9, 3], TYOP [0, 4, 1], TYOP [5, 1, 1],
   TYOP [0, 12, 1], TYOP [0, 1, 1], TYOP [0, 1, 14], TYOP [0, 1, 8],
   TYOP [0, 8, 1], TYOP [0, 1, 17], TYOP [0, 0, 14], TYOP [0, 12, 3],
   TYV "'a", TYOP [0, 0, 21], TYOP [0, 22, 21], TYOP [0, 21, 23],
   TYOP [0, 21, 24], TYOP [0, 1, 25], TYOP [0, 17, 1], TYOP [0, 17, 3],
   TYOP [0, 0, 1], TYOP [0, 21, 3], TYOP [0, 30, 1], TYOP [0, 21, 1],
   TYOP [0, 32, 31], TYOP [6, 0], TYOP [0, 34, 3], TYOP [0, 12, 20],
   TYOP [0, 29, 3], TYOP [0, 1, 37], TYOP [0, 1, 38], TYV "'b",
   TYOP [0, 40, 1], TYOP [0, 21, 41], TYOP [0, 21, 0], TYOP [0, 1, 21],
   TYOP [0, 8, 17], TYOP [5, 21, 40], TYOP [0, 46, 1], TYOP [0, 21, 40],
   TYOP [0, 1, 34], TYOP [0, 8, 3], TYOP [0, 40, 3], TYOP [0, 30, 3],
   TYOP [0, 48, 3], TYOP [0, 53, 3], TYOP [0, 52, 3], TYOP [0, 32, 3],
   TYOP [0, 56, 3], TYOP [0, 42, 3], TYOP [0, 58, 3], TYOP [0, 43, 3],
   TYOP [0, 60, 3], TYOP [0, 51, 3], TYOP [0, 62, 3], TYOP [0, 41, 3],
   TYOP [0, 64, 3], TYOP [0, 5, 3], TYOP [0, 6, 3], TYOP [0, 67, 3],
   TYOP [0, 50, 3], TYOP [0, 69, 3], TYOP [0, 28, 3], TYOP [0, 45, 3],
   TYOP [0, 72, 3], TYOP [0, 10, 3], TYOP [0, 47, 3], TYOP [0, 75, 3],
   TYOP [0, 22, 3], TYOP [0, 77, 3], TYOP [0, 35, 3], TYOP [0, 79, 3],
   TYOP [0, 0, 3], TYOP [0, 81, 3], TYOP [0, 8, 8], TYOP [0, 8, 83],
   TYOP [0, 40, 46], TYOP [0, 21, 85], TYOP [5, 1, 3], TYOP [0, 3, 87],
   TYOP [0, 1, 88], TYOP [0, 1, 12], TYOP [0, 1, 90], TYOP [5, 4, 3],
   TYOP [0, 3, 92], TYOP [0, 4, 93], TYOP [0, 9, 81], TYOP [0, 0, 0],
   TYOP [0, 0, 96], TYOP [0, 3, 3], TYOP [0, 3, 98], TYOP [0, 8, 50],
   TYOP [0, 21, 30], TYOP [0, 30, 52], TYOP [0, 4, 5], TYOP [0, 14, 3],
   TYOP [0, 14, 104], TYOP [0, 5, 66], TYOP [0, 20, 3], TYOP [0, 20, 107],
   TYOP [0, 13, 3], TYOP [0, 13, 109], TYOP [0, 0, 81], TYOP [0, 34, 35],
   TYOP [0, 44, 3], TYOP [0, 113, 3], TYOP [0, 49, 3], TYOP [0, 115, 3],
   TYOP [0, 67, 6], TYOP [0, 36, 3], TYOP [0, 118, 36], TYOP [0, 81, 0],
   TYOP [0, 30, 8], TYOP [0, 3, 15], TYOP [0, 3, 97], TYOP [0, 8, 34],
   TYOP [0, 124, 34], TYOP [0, 0, 125], TYOP [0, 8, 126], TYOP [0, 46, 3],
   TYOP [0, 51, 128], TYOP [0, 30, 129], TYOP [5, 40, 21],
   TYOP [0, 131, 3], TYOP [0, 30, 132], TYOP [0, 51, 133], TYOP [5, 8, 8],
   TYOP [0, 135, 3], TYOP [0, 50, 136], TYOP [0, 50, 137],
   TYOP [0, 30, 101], TYOP [0, 30, 30], TYOP [0, 30, 140], TYOP [0, 51, 1],
   TYOP [0, 41, 142], TYOP [0, 50, 1], TYOP [0, 17, 144], TYOP [0, 128, 1],
   TYOP [0, 47, 146], TYOP [0, 132, 1], TYOP [0, 131, 1],
   TYOP [0, 149, 148], TYOP [0, 46, 21], TYOP [0, 1, 87], TYOP [0, 152, 4],
   TYOP [0, 12, 92], TYOP [0, 154, 5], TYOP [0, 30, 51], TYOP [0, 48, 156],
   TYOP [0, 30, 4], TYOP [0, 32, 158], TYOP [0, 4, 30], TYOP [0, 44, 160],
   TYOP [0, 4, 4], TYOP [0, 14, 162], TYOP [0, 50, 4], TYOP [0, 17, 164],
   TYOP [0, 50, 81], TYOP [0, 9, 166], TYOP [0, 21, 52], TYOP [0, 1, 5],
   TYOP [0, 8, 69], TYOP [0, 30, 62], TYOP [0, 48, 171], TYOP [0, 21, 140],
   TYOP [0, 30, 14], TYOP [0, 21, 14], TYOP [0, 175, 174], TYOP [0, 50, 8],
   TYOP [0, 30, 0], TYOP [0, 43, 178], TYOP [0, 46, 40], TYOP [0, 35, 115],
   TYOP [0, 42, 47], TYOP [0, 40, 32], TYOP [0, 183, 149], TYOP [0, 1, 92],
   TYOP [0, 1, 185], TYOP [0, 186, 154], TYOP [0, 4, 162],
   TYOP [0, 14, 14], TYOP [0, 189, 14], TYOP [0, 6, 190], TYOP [0, 20, 20],
   TYOP [0, 192, 20], TYOP [0, 36, 193], TYOP [0, 13, 13],
   TYOP [0, 195, 13], TYOP [0, 36, 196], TYOP [0, 128, 3],
   TYOP [0, 136, 3], TYOP [0, 3, 82], TYOP [0, 3, 200], TYOP [0, 1, 201],
   TYOP [0, 29, 1], TYOP [0, 1, 203], TYOP [0, 1, 204], TYOP [0, 1, 205],
   TYOP [0, 48, 32], TYOP [0, 41, 207], TYOP [0, 12, 67], TYOP [0, 15, 1],
   TYOP [0, 12, 210], TYOP [0, 0, 9], TYOP [0, 9, 0]]
  end
  val _ = Theory.incorporate_consts "extreal" tyvector
     [("real", 2), ("rational_intervals", 5), ("open_intervals_set", 5),
      ("open_interval", 7), ("mono_increasing", 10),
      ("mono_decreasing", 10), ("extreal_sup", 11),
      ("extreal_sub_tupled", 13), ("extreal_sub", 15),
      ("extreal_sqrt", 14), ("extreal_size", 16), ("extreal_pow", 18),
      ("extreal_of_num", 17), ("extreal_mul_tupled", 13),
      ("extreal_mul", 15), ("extreal_min", 15), ("extreal_max", 15),
      ("extreal_lt", 6), ("extreal_logr", 19), ("extreal_lg", 14),
      ("extreal_le_tupled", 20), ("extreal_le", 6), ("extreal_inv", 14),
      ("extreal_inf", 11), ("extreal_exp", 14), ("extreal_div", 15),
      ("extreal_ainv", 14), ("extreal_add_tupled", 13),
      ("extreal_add", 15), ("extreal_abs", 14), ("extreal_CASE", 26),
      ("ext_suminf", 27), ("ext_mono_increasing", 28),
      ("ext_mono_decreasing", 28), ("ceiling", 16), ("Q_set", 4),
      ("PosInf", 1), ("Normal", 29), ("NegInf", 1),
      ("EXTREAL_SUM_IMAGE", 33)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'extreal'", 35), TMV("M", 1), TMV("M'", 1), TMV("P", 30),
   TMV("P", 4), TMV("P", 6), TMV("R", 6), TMV("R", 36), TMV("a", 1),
   TMV("a", 8), TMV("a", 12), TMV("a", 0), TMV("a'", 12), TMV("a'", 0),
   TMV("a0", 34), TMV("acc", 1), TMV("b", 1), TMV("b", 8), TMV("b", 0),
   TMV("c", 1), TMV("c", 30), TMV("c", 0), TMV("d", 1), TMV("e", 21),
   TMV("e", 1), TMV("ee", 1), TMV("extreal", 39), TMV("extreal_abs", 14),
   TMV("extreal_add_tupled", 13), TMV("extreal_le_tupled", 20),
   TMV("extreal_mul_tupled", 13), TMV("extreal_sub_tupled", 13),
   TMV("f", 32), TMV("f", 42), TMV("f", 43), TMV("f", 41), TMV("f", 44),
   TMV("f", 17), TMV("f", 45), TMV("f", 9), TMV("f", 47), TMV("f", 22),
   TMV("f'", 48), TMV("f'", 32), TMV("f'", 22), TMV("f0", 21),
   TMV("f1", 21), TMV("f2", 22), TMV("fn", 44), TMV("g", 17), TMV("i", 8),
   TMV("k", 1), TMV("l", 0), TMV("m", 8), TMV("n", 21), TMV("n", 8),
   TMV("p", 21), TMV("p", 4), TMV("p", 17), TMV("q", 21), TMV("q", 4),
   TMV("q", 17), TMV("r", 1), TMV("r", 9), TMV("r", 0), TMV("rep", 49),
   TMV("s", 30), TMV("s", 50), TMV("s'", 30), TMV("s'", 51), TMV("s1", 30),
   TMV("s2", 51), TMV("t", 30), TMV("t", 51), TMV("v", 21), TMV("v", 1),
   TMV("v'", 21), TMV("v1", 21), TMV("v1", 1), TMV("v1'", 21),
   TMV("v2", 0), TMV("v3", 0), TMV("v5", 0), TMV("v6", 0), TMV("w", 1),
   TMV("x", 21), TMV("x", 1), TMV("x", 46), TMV("x", 0), TMV("x1", 1),
   TMV("x2", 1), TMV("y", 21), TMV("y", 40), TMV("y", 1), TMV("y", 0),
   TMV("y'", 0), TMV("y''", 0), TMV("y1", 1), TMV("y2", 1), TMV("z", 1),
   TMV("z", 8), TMV("z", 0), TMC(7, 52), TMC(7, 5), TMC(7, 54), TMC(7, 55),
   TMC(7, 57), TMC(7, 59), TMC(7, 61), TMC(7, 63), TMC(7, 65), TMC(7, 66),
   TMC(7, 68), TMC(7, 70), TMC(7, 71), TMC(7, 73), TMC(7, 74), TMC(7, 76),
   TMC(7, 78), TMC(7, 80), TMC(7, 69), TMC(7, 82), TMC(7, 79), TMC(8, 84),
   TMC(9, 84), TMC(10, 86), TMC(10, 89), TMC(10, 91), TMC(10, 94),
   TMC(11, 95), TMC(12, 97), TMC(13, 99), TMC(14, 8), TMC(15, 100),
   TMC(16, 101), TMC(16, 99), TMC(16, 6), TMC(16, 102), TMC(16, 103),
   TMC(16, 105), TMC(16, 106), TMC(16, 108), TMC(16, 110), TMC(16, 100),
   TMC(16, 111), TMC(16, 112), TMC(17, 99), TMC(18, 5), TMC(18, 114),
   TMC(18, 116), TMC(18, 69), TMC(18, 82), TMC(19, 117), TMC(19, 119),
   TMC(19, 120), TMC(20, 0), TMC(21, 83), TMC(22, 83), TMC(23, 34),
   TMC(24, 121), TMC(25, 122), TMC(25, 123), TMC(26, 127), TMC(27, 130),
   TMC(27, 134), TMC(27, 138), TMC(28, 98), TMC(29, 139), TMC(30, 141),
   TMC(31, 102), TMC(32, 30), TMC(33, 50), TMC(34, 33), TMC(34, 143),
   TMC(34, 145), TMC(34, 147), TMC(34, 150), TMC(35, 3), TMC(36, 52),
   TMC(36, 62), TMC(36, 5), TMC(36, 69), TMC(37, 151), TMC(38, 153),
   TMC(38, 155), TMC(39, 98), TMC(39, 14), TMC(40, 157), TMC(40, 159),
   TMC(40, 161), TMC(40, 163), TMC(40, 165), TMC(40, 167), TMC(41, 168),
   TMC(41, 169), TMC(41, 170), TMC(42, 172), TMC(43, 173), TMC(44, 141),
   TMC(45, 176), TMC(46, 177), TMC(47, 83), TMC(48, 1), TMC(49, 29),
   TMC(50, 50), TMC(51, 1), TMC(52, 4), TMC(53, 179), TMC(54, 180),
   TMC(55, 102), TMC(56, 83), TMC(57, 3), TMC(58, 181), TMC(59, 182),
   TMC(59, 184), TMC(59, 187), TMC(60, 141), TMC(60, 188), TMC(61, 30),
   TMC(61, 4), TMC(61, 50), TMC(62, 67), TMC(62, 118), TMC(63, 191),
   TMC(63, 194), TMC(63, 197), TMC(64, 8), TMC(65, 99), TMC(66, 96),
   TMC(67, 16), TMC(68, 100), TMC(69, 52), TMC(69, 62), TMC(69, 5),
   TMC(69, 66), TMC(69, 198), TMC(69, 199), TMC(70, 96), TMC(71, 28),
   TMC(72, 28), TMC(73, 27), TMC(74, 26), TMC(74, 202), TMC(74, 206),
   TMC(75, 14), TMC(76, 15), TMC(77, 13), TMC(78, 14), TMC(79, 15),
   TMC(80, 14), TMC(81, 11), TMC(82, 14), TMC(83, 6), TMC(84, 20),
   TMC(85, 14), TMC(86, 19), TMC(87, 6), TMC(88, 15), TMC(89, 15),
   TMC(90, 15), TMC(91, 13), TMC(92, 17), TMC(93, 18), TMC(94, 16),
   TMC(95, 14), TMC(96, 15), TMC(97, 13), TMC(98, 11), TMC(99, 96),
   TMC(100, 97), TMC(101, 10), TMC(102, 10), TMC(103, 208), TMC(104, 7),
   TMC(105, 5), TMC(106, 209), TMC(106, 211), TMC(107, 212), TMC(108, 5),
   TMC(109, 2), TMC(110, 97), TMC(111, 111), TMC(112, 111), TMC(113, 97),
   TMC(114, 96), TMC(115, 9), TMC(116, 97), TMC(117, 96), TMC(118, 213),
   TMC(119, 120), TMC(120, 98)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op mono_decreasing_def x = x
    val op mono_decreasing_def =
    DT(((("extreal",63),[]),[]),
       [read"%116%39%135%270$0@@%120%53%120%55%146%133$1@$0@@%282$2$0@@$2$1@@@|@|@@|@"])
  fun op mono_increasing_def x = x
    val op mono_increasing_def =
    DT(((("extreal",61),[]),[]),
       [read"%116%39%135%271$0@@%120%53%120%55%146%133$1@$0@@%282$2$1@@$2$0@@@|@|@@|@"])
  fun op extreal_sqrt_def x = x
    val op extreal_sqrt_def =
    DT(((("extreal",48),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%121%88%136%264%203$0@@@%203%287$0@@@|@@%136%264%205@@%205@@"])
  fun op extreal_pow_def x = x
    val op extreal_pow_def =
    DT(((("extreal",47),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%121%11%120%55%136%262%203$1@@$0@@%203%277$1@$0@@@|@|@@%131%120%55%136%262%205@$0@@%160%143$0@%132@@%203%285%201%156%226@@@@@%205@@|@@%120%55%136%262%202@$0@@%160%143$0@%132@@%203%285%201%156%226@@@@@%160%171$0@@%205@%202@@@|@@@"])
  fun op extreal_exp_def x = x
    val op extreal_exp_def =
    DT(((("extreal",46),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%121%88%136%249%203$0@@@%203%237$0@@@|@@%131%136%249%205@@%205@@%136%249%202@@%203%285%132@@@@@"])
  fun op extreal_lg_def x = x
    val op extreal_lg_def =
    DT(((("extreal",45),[]),[]),
       [read"%103%86%136%254$0@@%255%285%201%157%226@@@@$0@@|@"])
  fun op extreal_logr_def x = x
    val op extreal_logr_def =
    DT(((("extreal",44),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%121%18%121%88%136%255$1@%203$0@@@%203%269$1@$0@@@|@|@@%131%121%18%136%255$0@%205@@%205@|@@%121%18%136%255$0@%202@@%202@|@@@"])
  fun op extreal_abs_primitive_def x = x
    val op extreal_abs_primitive_def =
    DT(((("extreal",41),[]),[]),
       [read"%139%244@%223%152%6%221$0@|@@%27%8%243$0@%186%205@@%186%205@@%88%186%203%228$0@@@|@||@@"])
  fun op extreal_div_def x = x
    val op extreal_div_def =
    DT(((("extreal",40),[]),[]),
       [read"%103%86%103%93%136%248$1@$0@@%259$1@%251$0@@@|@|@"])
  fun op extreal_ainv_def x = x
    val op extreal_ainv_def =
    DT(((("extreal",39),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%136%247%202@@%205@@%131%136%247%205@@%202@@%121%88%136%247%203$0@@@%203%284$0@@@|@@@"])
  fun op extreal_inv_def x = x
    val op extreal_inv_def =
    DT(((("extreal",38),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%136%251%202@@%203%285%132@@@@%131%136%251%205@@%203%285%132@@@@%121%88%136%251%203$0@@@%203%268$0@@@|@@@"])
  fun op extreal_mul_curried_def x = x
    val op extreal_mul_curried_def =
    DT(((("extreal",35),[]),[]),
       [read"%103%86%103%89%136%259$1@$0@@%260%127$1@$0@@@|@|@"])
  fun op extreal_mul_tupled_primitive_def x = x
    val op extreal_mul_tupled_primitive_def =
    DT(((("extreal",34),[]),[]),
       [read"%142%260@%225%153%7%222$0@|@@%30%10%276$0@%75%78%243$1@%243$0@%186%205@@%186%202@@%94%186%160%144$0@%285%132@@@%203%285%132@@@%160%281%285%132@@$0@@%202@%205@@@|@@%243$0@%186%202@@%186%205@@%95%186%160%144$0@%285%132@@@%203%285%132@@@%160%281%285%132@@$0@@%205@%202@@@|@@%88%243$1@%186%160%144$0@%285%132@@@%203%285%132@@@%160%281%285%132@@$0@@%202@%205@@@@%186%160%144$0@%285%132@@@%203%285%132@@@%160%281%285%132@@$0@@%205@%202@@@@%96%186%203%283$1@$0@@@|@|@||@||@@"])
  fun op extreal_lt_def x = x
    val op extreal_lt_def =
    DT(((("extreal",33),[]),[]),
       [read"%103%86%103%93%135%256$1@$0@@%290%252$0@$1@@@|@|@"])
  fun op extreal_le_curried_def x = x
    val op extreal_le_curried_def =
    DT(((("extreal",30),[]),[]),
       [read"%103%86%103%89%135%252$1@$0@@%253%127$1@$0@@@|@|@"])
  fun op extreal_le_tupled_primitive_def x = x
    val op extreal_le_tupled_primitive_def =
    DT(((("extreal",29),[]),[]),
       [read"%141%253@%224%153%7%222$0@|@@%29%12%275$0@%75%8%242$1@%185%211@@%242$0@%185%177@@%185%211@@%83%185%177@|@@%88%242$1@%185%177@@%185%211@@%94%185%282$1@$0@@|@|@||@||@@"])
  fun op extreal_sub_curried_def x = x
    val op extreal_sub_curried_def =
    DT(((("extreal",26),[]),[]),
       [read"%103%86%103%89%136%265$1@$0@@%266%127$1@$0@@@|@|@"])
  fun op extreal_sub_tupled_primitive_def x = x
    val op extreal_sub_tupled_primitive_def =
    DT(((("extreal",25),[]),[]),
       [read"%142%266@%225%153%7%222$0@|@@%31%12%276$0@%75%8%243$1@%243$0@%186%205@@%186%202@@%83%186%202@|@@%186%205@@%88%243$1@%186%205@@%186%202@@%94%186%203%286$1@$0@@@|@|@||@||@@"])
  fun op extreal_add_curried_def x = x
    val op extreal_add_curried_def =
    DT(((("extreal",22),[]),[]),
       [read"%103%86%103%89%136%245$1@$0@@%246%127$1@$0@@@|@|@"])
  fun op extreal_add_tupled_primitive_def x = x
    val op extreal_add_tupled_primitive_def =
    DT(((("extreal",21),[]),[]),
       [read"%142%246@%225%153%7%222$0@|@@%28%12%276$0@%75%8%243$1@%243$0@%186%202@@%186%205@@%83%186%202@|@@%186%205@@%88%243$1@%186%202@@%186%205@@%94%186%203%280$1@$0@@@|@|@||@||@@"])
  fun op real_def x = x
    val op real_def =
    DT(((("extreal",18),[]),[]),
       [read"%103%86%144%279$0@@%161%227%136$0@%202@@%136$0@%205@@@%285%132@@%154%64%136$1@%203$0@@|@@@|@"])
  fun op extreal_of_num_def x = x
    val op extreal_of_num_def =
    DT(((("extreal",17),[]),[]),
       [read"%120%55%136%261$0@@%203%285$0@@@|@"])
  fun op extreal_TY_DEF x = x
    val op extreal_TY_DEF =
    DT(((("extreal",0),[("bool",[26])]),["DISK_THM"]),
       [read"%149%65%212%14%119%0%146%122%14%146%227%145$0@%162%132@%155@%55%158|@@@%227%145$0@%162%210%132@@%155@%55%158|@@@%151%11%145$1@%11%162%210%210%132@@@$0@%55%158|@|$0@@|@@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op extreal_case_def x = x
    val op extreal_case_def =
    DT(((("extreal",8),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%102%74%102%77%118%41%134%241%202@$2@$1@$0@@$2@|@|@|@@%131%102%74%102%77%118%41%134%241%205@$2@$1@$0@@$1@|@|@|@@%121%11%102%74%102%77%118%41%134%241%203$3@@$2@$1@$0@@$0$3@@|@|@|@|@@@"])
  fun op extreal_size_def x = x
    val op extreal_size_def =
    DT(((("extreal",9),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%143%263%202@@%132@@%131%143%263%205@@%132@@%121%11%143%263%203$0@@@%201%156%226@@@|@@@"])
  fun op ext_mono_increasing_def x = x
    val op ext_mono_increasing_def =
    DT(((("extreal",252),[]),[]),
       [read"%114%37%135%239$0@@%120%53%120%55%146%133$1@$0@@%252$2$1@@$2$0@@@|@|@@|@"])
  fun op ext_mono_decreasing_def x = x
    val op ext_mono_decreasing_def =
    DT(((("extreal",254),[]),[]),
       [read"%114%37%135%238$0@@%120%53%120%55%146%133$1@$0@@%252$2$0@@$2$1@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_DEF x = x
    val op EXTREAL_SUM_IMAGE_DEF =
    DT(((("extreal",266),[]),[]),
       [read"%106%32%105%66%136%172$1@$0@@%199%23%15%245$3$1@@$0@||@$0@%261%132@@@|@|@"])
  fun op extreal_sup_def x = x
    val op extreal_sup_def =
    DT(((("extreal",300),[]),[]),
       [read"%111%57%136%267$0@@%160%103%86%146%103%93%146$2$0@@%252$0@$1@@|@@%136$0@%205@@|@@%205@%160%103%86%146$1$0@@%136$0@%202@@|@@%202@%203%289%64$1%203$0@@|@@@@@|@"])
  fun op extreal_inf_def x = x
    val op extreal_inf_def =
    DT(((("extreal",301),[]),[]),
       [read"%111%57%136%250$0@@%247%267%190%247@$0@@@@|@"])
  fun op ext_suminf_def x = x
    val op ext_suminf_def =
    DT(((("extreal",334),[]),[]),
       [read"%114%37%136%240$0@@%267%191%55%174$1@%230$0@@|@%220@@@|@"])
  fun op extreal_min_def x = x
    val op extreal_min_def =
    DT(((("extreal",343),[]),[]),
       [read"%103%86%103%93%136%258$1@$0@@%160%252$1@$0@@$1@$0@@|@|@"])
  fun op extreal_max_def x = x
    val op extreal_max_def =
    DT(((("extreal",344),[]),[]),
       [read"%103%86%103%93%136%257$1@$0@@%160%252$1@$0@@$0@$1@@|@|@"])
  fun op Q_set_def x = x
    val op Q_set_def =
    DT(((("extreal",361),[]),[]),
       [read"%138%206@%217%183%86%126$0@%150%9%150%17%131%136$2@%248%261$1@@%261$0@@@@%256%261%132@@%261$0@@@|@|@@|@@%183%86%126$0@%150%9%150%17%131%136$2@%247%248%261$1@@%261$0@@@@@%256%261%132@@%261$0@@@|@|@@|@@@"])
  fun op ceiling_def x = x
    val op ceiling_def =
    DT(((("extreal",374),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%121%88%143%229%203$0@@@%200%55%282$1@%285$0@@|@@|@"])
  fun op open_interval_def x = x
    val op open_interval_def =
    DT(((("extreal",384),[]),[]),
       [read"%103%8%103%16%138%273$1@$0@@%183%86%126$0@%131%256$2@$0@@%256$0@$1@@@|@@|@|@"])
  fun op open_intervals_set_def x = x
    val op open_intervals_set_def =
    DT(((("extreal",385),[]),[]),
       [read"%140%274@%184%215%8%16%128%273$1@$0@@%131%194$1@%219@@%194$0@%219@@@||@@@"])
  fun op rational_intervals_def x = x
    val op rational_intervals_def =
    DT(((("extreal",386),[]),[]),
       [read"%140%278@%184%215%8%16%128%273$1@$0@@%131%194$1@%206@@%194$0@%206@@@||@@@"])
  fun op num_not_infty x = x
    val op num_not_infty =
    DT(((("extreal",69),
        [("bool",[25,26,27,36,47,51,54,56,58,63,181]),
         ("extreal",[1,2,3,4,5,6,7,17]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%120%55%131%290%136%261$0@@%202@@@%290%136%261$0@@%205@@@|@"])
  fun op extreal_not_infty x = x
    val op extreal_not_infty =
    DT(((("extreal",68),
        [("bool",[25,26,27,36,47,51,54,56,58,63,181]),
         ("extreal",[1,2,3,4,5,6,7]),("ind_type",[33,34])]),["DISK_THM"]),
       [read"%121%88%131%290%136%203$0@@%202@@@%290%136%203$0@@%205@@@|@"])
  fun op extreal_eq_zero x = x
    val op extreal_eq_zero =
    DT(((("extreal",67),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7,17]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%121%88%135%136%203$0@@%261%132@@@%144$0@%285%132@@@|@"])
  fun op extreal_cases x = x
    val op extreal_cases =
    DT(((("extreal",66),
        [("bool",[25,26,27,36,37,47,51,52,54,56,58,63,140,181]),
         ("extreal",[1,2,3,4,5,6,7]),("ind_type",[33,34])]),["DISK_THM"]),
       [read"%103%86%227%136$0@%202@@%227%136$0@%205@@%151%64%136$1@%203$0@@|@@@|@"])
  fun op mono_increasing_converges_to_sup x = x
    val op mono_increasing_converges_to_sup =
    DT(((("extreal",65),
        [("arithmetic",[24,25,27,71,143,173,176,180]),
         ("bool",
         [2,15,18,25,26,36,37,51,53,54,55,56,58,63,74,84,99,104,105,124,
          143]),("extreal",[61]),("numeral",[3,5,8]),("pred_set",[14,144]),
         ("real",[13,55,60,78,124,144,145,154,220,274,388]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("seq",[1,9,73])]),["DISK_THM"]),
       [read"%116%39%121%64%146%131%271$1@@%129$1@$0@@@%144$0@%289%192$1@%220@@@@|@|@"])
  fun op mono_decreasing_suc x = x
    val op mono_decreasing_suc =
    DT(((("extreal",64),
        [("arithmetic",[22,24,25,27,53,71,146,173,176,180]),
         ("bool",
         [14,25,26,36,47,48,53,54,58,63,72,74,78,81,84,94,104,105,124,
          146]),("extreal",[63]),("num",[9]),("numeral",[3,5,8]),
         ("real",[55,61]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%39%135%270$0@@%120%55%282$1%210$0@@@$1$0@@|@@|@"])
  fun op mono_increasing_suc x = x
    val op mono_increasing_suc =
    DT(((("extreal",62),
        [("arithmetic",[22,24,25,27,53,71,146,173,176,180]),
         ("bool",
         [14,25,26,36,47,48,53,54,58,63,72,74,78,81,84,94,104,105,124,
          146]),("extreal",[61]),("num",[9]),("numeral",[3,5,8]),
         ("real",[55,61]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%116%39%135%271$0@@%120%55%282$1$0@@$1%210$0@@@|@@|@"])
  fun op LOGR_MONO_LE_IMP x = x
    val op LOGR_MONO_LE_IMP =
    DT(((("extreal",60),
        [("bool",[25,53,54,58,63,100,105,124]),("real",[26,59,74,120,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("transc",[38,42]),("util_prob",[25])]),["DISK_THM"]),
       [read"%121%88%121%94%121%18%146%131%281%285%132@@$2@@%131%282$2@$1@@%282%285%201%156%226@@@@$0@@@@%282%269$0@$2@@%269$0@$1@@@|@|@|@"])
  fun op LOGR_MONO_LE x = x
    val op LOGR_MONO_LE =
    DT(((("extreal",59),
        [("bool",[25,26,53,54,58,63,100,105,124]),
         ("real",[12,26,74,119,177]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("transc",[38,41,42]),("util_prob",[25])]),["DISK_THM"]),
       [read"%121%88%121%94%121%18%146%131%281%285%132@@$2@@%131%281%285%132@@$1@@%281%285%201%156%226@@@@$0@@@@%135%282%269$0@$2@@%269$0@$1@@@%282$2@$1@@@|@|@|@"])
  fun op POW_NEG_ODD x = x
    val op POW_NEG_ODD =
    DT(((("extreal",58),
        [("arithmetic",[13]),
         ("bool",[14,25,26,27,53,54,55,58,63,99,100,105,124]),
         ("extreal",[54]),("num",[9]),("numeral",[3]),
         ("real",[20,23,49,57,66,73,105,233,235,308,309]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%146%281$0@%285%132@@@%135%281%277$0@%55@@%285%132@@@%204%55@@@|@"])
  fun op POW_POS_EVEN x = x
    val op POW_POS_EVEN =
    DT(((("extreal",57),
        [("arithmetic",[12]),
         ("bool",[14,25,26,53,54,55,58,63,99,100,105,124]),
         ("extreal",[50]),("num",[9]),
         ("real",[16,20,44,49,57,66,74,105,233,235,309]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%146%281$0@%285%132@@@%135%281%285%132@@%277$0@%55@@@%171%55@@@|@"])
  fun op REAL_LE_RDIV_EQ_NEG x = x
    val op REAL_LE_RDIV_EQ_NEG =
    DT(((("extreal",56),
        [("bool",[25,26,53,54,55,58,63,100]),
         ("real",[26,44,66,105,117,148,159,177,307,312,319]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%121%101%146%281$0@%285%132@@@%135%282%130$1@$0@@$2@@%282%283$2@$0@@$1@@@|@|@|@"])
  fun op REAL_LT_RDIV_EQ_NEG x = x
    val op REAL_LT_RDIV_EQ_NEG =
    DT(((("extreal",55),
        [("bool",[25,26,53,54,55,58,63,100]),
         ("real",[26,44,66,105,110,117,148,158,307,321]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%121%101%146%281$0@%285%132@@@%135%281%130$1@$0@@$2@@%281%283$2@$0@@$1@@@|@|@|@"])
  fun op REAL_LT_RMUL_NEG_0_NEG x = x
    val op REAL_LT_RMUL_NEG_0_NEG =
    DT(((("extreal",54),
        [("bool",[25,53,54,63,100]),("real",[42,66,108]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%131%281%283$1@$0@@%285%132@@@%281$0@%285%132@@@@%281%285%132@@$1@@|@|@"])
  fun op REAL_LT_LMUL_NEG_0_NEG x = x
    val op REAL_LT_LMUL_NEG_0_NEG =
    DT(((("extreal",53),
        [("bool",[25,53,54,63,100]),("real",[41,66,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%131%281%283$1@$0@@%285%132@@@%281$1@%285%132@@@@%281%285%132@@$0@@|@|@"])
  fun op REAL_LT_RMUL_NEG_0 x = x
    val op REAL_LT_RMUL_NEG_0 =
    DT(((("extreal",52),
        [("bool",[25,53,54,63,100]),("real",[41,66,108]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%131%281%283$1@$0@@%285%132@@@%281%285%132@@$0@@@%281$1@%285%132@@@|@|@"])
  fun op REAL_LT_LMUL_NEG_0 x = x
    val op REAL_LT_LMUL_NEG_0 =
    DT(((("extreal",51),
        [("bool",[25,53,54,63,100]),("real",[42,66,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%131%281%283$1@$0@@%285%132@@@%281%285%132@@$1@@@%281$0@%285%132@@@|@|@"])
  fun op REAL_LT_RMUL_0_NEG x = x
    val op REAL_LT_RMUL_0_NEG =
    DT(((("extreal",50),
        [("bool",[25,53,54,58,63]),("real",[48,58,66,68,71,307]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%131%281%285%132@@%283$1@$0@@@%281$0@%285%132@@@@%281$1@%285%132@@@|@|@"])
  fun op REAL_LT_LMUL_0_NEG x = x
    val op REAL_LT_LMUL_0_NEG =
    DT(((("extreal",49),
        [("bool",[25,53,54,58,63]),("real",[48,58,66,68,71,308]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%131%281%285%132@@%283$1@$0@@@%281$1@%285%132@@@@%281$0@%285%132@@@|@|@"])
  fun op extreal_abs_def x = x
    val op extreal_abs_def =
    DT(((("extreal",43),
        [("bool",[15]),("combin",[19]),("extreal",[8,41]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%131%136%244%203%88@@@%203%228%88@@@@%131%136%244%202@@%205@@%136%244%205@@%205@@@"])
  fun op extreal_abs_ind x = x
    val op extreal_abs_ind =
    DT(((("extreal",42),
        [("bool",[25,26,47,48,53,54,58,63,72,78,80,181]),
         ("extreal",[1,2,3,4,5,6,7]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%111%4%146%131%121%88$1%203$0@@|@@%131$0%202@@$0%205@@@@%103%75$1$0@|@@|@"])
  fun op extreal_mul_def x = x
    val op extreal_mul_def =
    DT(((("extreal",37),
        [("bool",[15,58]),("combin",[19]),("extreal",[8,34,35]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%131%136%259%202@%202@@%205@@%131%136%259%202@%205@@%202@@%131%136%259%205@%202@@%202@@%131%136%259%205@%205@@%205@@%131%136%259%203%88@@%202@@%160%144%88@%285%132@@@%203%285%132@@@%160%281%285%132@@%88@@%202@%205@@@@%131%136%259%202@%203%94@@@%160%144%94@%285%132@@@%203%285%132@@@%160%281%285%132@@%94@@%202@%205@@@@%131%136%259%203%88@@%205@@%160%144%88@%285%132@@@%203%285%132@@@%160%281%285%132@@%88@@%205@%202@@@@%131%136%259%205@%203%94@@@%160%144%94@%285%132@@@%203%285%132@@@%160%281%285%132@@%94@@%205@%202@@@@%136%259%203%88@@%203%94@@@%203%283%88@%94@@@@@@@@@@@"])
  fun op extreal_mul_ind x = x
    val op extreal_mul_ind =
    DT(((("extreal",36),
        [("bool",[25,26,47,48,53,54,58,63,72,76,78,80,181]),
         ("extreal",[1,2,3,4,5,6,7]),("pair",[5,16]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%112%5%146%131$0%202@%202@@%131$0%202@%205@@%131$0%205@%202@@%131$0%205@%205@@%131%121%88$1%203$0@@%202@|@@%131%121%94$1%202@%203$0@@|@@%131%121%88$1%203$0@@%205@|@@%131%121%94$1%205@%203$0@@|@@%121%88%121%94$2%203$1@@%203$0@@|@|@@@@@@@@@@%103%75%103%78$2$1@$0@|@|@@|@"])
  fun op extreal_le_def x = x
    val op extreal_le_def =
    DT(((("extreal",32),
        [("bool",[15,58]),("combin",[19]),("extreal",[8,29,30]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%131%135%252%203%88@@%203%94@@@%282%88@%94@@@%131%135%252%202@%8@@%211@@%131%135%252%205@%205@@%211@@%131%135%252%203%80@@%205@@%211@@%131%135%252%205@%202@@%177@@%131%135%252%203%81@@%202@@%177@@%135%252%205@%203%82@@@%177@@@@@@@"])
  fun op extreal_le_ind x = x
    val op extreal_le_ind =
    DT(((("extreal",31),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80,181]),
         ("extreal",[1,2,3,4,5,6,7]),("pair",[5,16]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%112%5%146%131%121%88%121%94$2%203$1@@%203$0@@|@|@@%131%103%8$1%202@$0@|@@%131$0%205@%205@@%131%121%80$1%203$0@@%205@|@@%131$0%205@%202@@%131%121%81$1%203$0@@%202@|@@%121%82$1%205@%203$0@@|@@@@@@@@%103%75%103%78$2$1@$0@|@|@@|@"])
  fun op extreal_sub_def x = x
    val op extreal_sub_def =
    DT(((("extreal",28),
        [("bool",[15,58]),("combin",[19]),("extreal",[8,25,26]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%131%136%265%203%88@@%203%94@@@%203%286%88@%94@@@@%131%136%265%205@%8@@%205@@%131%136%265%202@%205@@%202@@%131%136%265%203%80@@%205@@%202@@%131%136%265%202@%202@@%205@@%131%136%265%202@%203%82@@@%202@@%136%265%203%81@@%202@@%205@@@@@@@"])
  fun op extreal_sub_ind x = x
    val op extreal_sub_ind =
    DT(((("extreal",27),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80,181]),
         ("extreal",[1,2,3,4,5,6,7]),("pair",[5,16]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%112%5%146%131%121%88%121%94$2%203$1@@%203$0@@|@|@@%131%103%8$1%205@$0@|@@%131$0%202@%205@@%131%121%80$1%203$0@@%205@|@@%131$0%202@%202@@%131%121%82$1%202@%203$0@@|@@%121%81$1%203$0@@%202@|@@@@@@@@%103%75%103%78$2$1@$0@|@|@@|@"])
  fun op extreal_add_def x = x
    val op extreal_add_def =
    DT(((("extreal",24),
        [("bool",[15,58]),("combin",[19]),("extreal",[8,21,22]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%131%136%245%203%88@@%203%94@@@%203%280%88@%94@@@@%131%136%245%205@%8@@%205@@%131%136%245%202@%205@@%205@@%131%136%245%203%80@@%205@@%205@@%131%136%245%202@%202@@%202@@%131%136%245%202@%203%82@@@%202@@%136%245%203%81@@%202@@%202@@@@@@@"])
  fun op extreal_add_ind x = x
    val op extreal_add_ind =
    DT(((("extreal",23),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80,181]),
         ("extreal",[1,2,3,4,5,6,7]),("pair",[5,16]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%112%5%146%131%121%88%121%94$2%203$1@@%203$0@@|@|@@%131%103%8$1%205@$0@|@@%131$0%202@%205@@%131%121%80$1%203$0@@%205@|@@%131$0%202@%202@@%131%121%82$1%202@%203$0@@|@@%121%81$1%203$0@@%202@|@@@@@@@@%103%75%103%78$2$1@$0@|@|@@|@"])
  fun op normal_real x = x
    val op normal_real =
    DT(((("extreal",20),
        [("bool",[25,26,27,52,53,54,55,56,58,63,70,105,124,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,18]),("ind_type",[33,34]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%103%86%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%136%203%279$0@@@$0@@|@"])
  fun op real_normal x = x
    val op real_normal =
    DT(((("extreal",19),
        [("bool",[25,26,27,36,47,51,52,54,56,58,63,68,105,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,18]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%121%88%144%279%203$0@@@$0@|@"])
  fun op extreal_induction x = x
    val op extreal_induction =
    DT(((("extreal",16),
        [("bool",[26]),("extreal",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%111%4%146%131$0%202@@%131$0%205@@%121%64$1%203$0@@|@@@@%103%24$1$0@|@@|@"])
  fun op extreal_Axiom x = x
    val op extreal_Axiom =
    DT(((("extreal",15),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%102%45%102%46%118%47%148%48%131%134$0%202@@$3@@%131%134$0%205@@$2@@%121%11%134$1%203$0@@@$2$0@@|@@@|@|@|@|@"])
  fun op extreal_nchotomy x = x
    val op extreal_nchotomy =
    DT(((("extreal",14),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%103%25%227%136$0@%202@@%227%136$0@%205@@%151%64%136$1@%203$0@@|@@@|@"])
  fun op extreal_case_cong x = x
    val op extreal_case_cong =
    DT(((("extreal",13),
        [("bool",[26,181]),("extreal",[1,2,3,4,5,6,7,8])]),["DISK_THM"]),
       [read"%103%1%103%2%102%74%102%77%118%41%146%131%136$4@$3@@%131%146%136$3@%202@@%134$2@%76@@@%131%146%136$3@%205@@%134$1@%79@@@%121%11%146%136$4@%203$0@@@%134$1$0@@%44$0@@@|@@@@@%134%241$4@$2@$1@$0@@%241$3@%76@%79@%44@@@|@|@|@|@|@"])
  fun op extreal_distinct x = x
    val op extreal_distinct =
    DT(((("extreal",12),
        [("bool",[25,26,36,47,51,54,56,63,181]),
         ("extreal",[1,2,3,4,5,6,7]),("ind_type",[33,34])]),["DISK_THM"]),
       [read"%131%290%136%202@%205@@@%131%121%11%290%136%202@%203$0@@@|@@%121%11%290%136%205@%203$0@@@|@@@"])
  fun op datatype_extreal x = x
    val op datatype_extreal =
    DT(((("extreal",10),[("bool",[25,171])]),["DISK_THM"]),
       [read"%166%26%202@%205@%203@@"])
  fun op extreal_11 x = x
    val op extreal_11 =
    DT(((("extreal",70),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%121%11%121%13%135%136%203$1@@%203$0@@@%144$1@$0@@|@|@"])
  fun op mul_rzero x = x
    val op mul_rzero =
    DT(((("extreal",71),
        [("bool",[15,25,26,27,56,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35]),("ind_type",[33,34]),
         ("pair",[49]),("prim_rec",[6]),("real",[40,425,436]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%259$0@%261%132@@@%261%132@@|@"])
  fun op mul_lzero x = x
    val op mul_lzero =
    DT(((("extreal",72),
        [("bool",[15,25,26,27,56,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35]),("ind_type",[33,34]),
         ("pair",[49]),("prim_rec",[6]),("real",[39,425,436]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%259%261%132@@$0@@%261%132@@|@"])
  fun op mul_rone x = x
    val op mul_rone =
    DT(((("extreal",73),
        [("bool",[15,25,26,56,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[49]),("real",[29,74,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%259$0@%261%201%156%226@@@@@$0@|@"])
  fun op mul_lone x = x
    val op mul_lone =
    DT(((("extreal",74),
        [("bool",[15,25,26,56,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[49]),("real",[18,74,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%259%261%201%156%226@@@@$0@@$0@|@"])
  fun op entire x = x
    val op entire =
    DT(((("extreal",75),
        [("bool",[15,25,26,27,30,36,47,51,52,54,56,58,63,64,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,69]),
         ("ind_type",[33,34]),("pair",[49]),("real",[45]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%136%259$1@$0@@%261%132@@@%227%136$1@%261%132@@@%136$0@%261%132@@@@|@|@"])
  fun op extreal_lt_eq x = x
    val op extreal_lt_eq =
    DT(((("extreal",76),
        [("bool",[15,25,26,53,54,58,63]),("combin",[19]),
         ("extreal",[8,29,30,33]),("pair",[49]),("real",[309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%121%88%121%94%135%256%203$1@@%203$0@@@%281$1@$0@@|@|@"])
  fun op le_refl x = x
    val op le_refl =
    DT(((("extreal",77),
        [("bool",[15,25,26,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30]),("pair",[49]),("real",[55]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%252$0@$0@|@"])
  fun op lt_refl x = x
    val op lt_refl =
    DT(((("extreal",78),
        [("bool",[25,54,63]),("extreal",[33,77])]),["DISK_THM"]),
       [read"%103%86%290%256$0@$0@@|@"])
  fun op le_infty x = x
    val op le_infty =
    DT(((("extreal",79),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30]),("ind_type",[33,34]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%131%103%86%131%252%202@$0@@%252$0@%205@@|@@%131%103%86%135%252$0@%202@@%136$0@%202@@|@@%103%86%135%252%205@$0@@%136$0@%205@@|@@@"])
  fun op lt_infty x = x
    val op lt_infty =
    DT(((("extreal",80),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,33]),("ind_type",[33,34]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%121%94%131%256%202@%203$0@@@%131%256%203$0@@%205@@%131%256%202@%205@@%131%290%256$1@%202@@@%131%290%256%205@$1@@@%131%135%290%136$1@%205@@@%256$1@%205@@@%135%290%136$1@%202@@@%256%202@$1@@@@@@@@|@|@"])
  fun op lt_imp_le x = x
    val op lt_imp_le =
    DT(((("extreal",81),
        [("bool",[15,25,26,27,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,33,78]),("pair",[49]),
         ("real",[58,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%146%256$1@$0@@%252$1@$0@@|@|@"])
  fun op lt_imp_ne x = x
    val op lt_imp_ne =
    DT(((("extreal",82),
        [("bool",[15,25,26,27,36,47,51,53,54,55,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,29,30,33,78]),
         ("ind_type",[33,34]),("pair",[49]),("real",[105,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%256$1@$0@@%290%136$1@$0@@@|@|@"])
  fun op le_trans x = x
    val op le_trans =
    DT(((("extreal",83),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30]),("pair",[49]),("real",[61]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%252$2@$1@@%252$1@$0@@@%252$2@$0@@|@|@|@"])
  fun op lt_trans x = x
    val op lt_trans =
    DT(((("extreal",84),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,33]),("pair",[49]),
         ("real",[12,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%256$2@$1@@%256$1@$0@@@%256$2@$0@@|@|@|@"])
  fun op let_trans x = x
    val op let_trans =
    DT(((("extreal",85),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,33,78]),("pair",[49]),
         ("real",[60,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%252$2@$1@@%256$1@$0@@@%256$2@$0@@|@|@|@"])
  fun op le_antisym x = x
    val op le_antisym =
    DT(((("extreal",86),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30]),("ind_type",[33,34]),
         ("pair",[49]),("real",[62]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%131%252$1@$0@@%252$0@$1@@@%136$1@$0@@|@|@"])
  fun op lt_antisym x = x
    val op lt_antisym =
    DT(((("extreal",87),
        [("bool",[25,26,27,52,53,54,63,96,181]),
         ("extreal",[1,2,3,4,5,6,7,76,80]),("real",[49]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%290%131%256$1@$0@@%256$0@$1@@@|@|@"])
  fun op lte_trans x = x
    val op lte_trans =
    DT(((("extreal",88),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,33,78]),("pair",[49]),
         ("real",[59,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%256$2@$1@@%252$1@$0@@@%256$2@$0@@|@|@|@"])
  fun op le_total x = x
    val op le_total =
    DT(((("extreal",89),
        [("bool",[15,25,26,52,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30]),("pair",[49]),("real",[52]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%227%252$1@$0@@%252$0@$1@@|@|@"])
  fun op lt_total x = x
    val op lt_total =
    DT(((("extreal",90),
        [("bool",[15,25,26,27,36,47,51,52,54,56,58,63,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[10,309]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%227%136$1@$0@@%227%256$1@$0@@%256$0@$1@@@|@|@"])
  fun op le_01 x = x
    val op le_01 =
    DT(((("extreal",91),
        [("bool",[15,25,58,63]),("combin",[19]),("extreal",[8,17,29,30]),
         ("pair",[49]),("real",[73]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%252%261%132@@%261%201%156%226@@@@"])
  fun op lt_01 x = x
    val op lt_01 =
    DT(((("extreal",92),
        [("bool",[15,25,53,54,58,63]),("combin",[19]),
         ("extreal",[8,17,29,30,33]),("pair",[49]),("real",[74,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%256%261%132@@%261%201%156%226@@@@"])
  fun op ne_01 x = x
    val op ne_01 =
    DT(((("extreal",93),
        [("bool",[25,26,27,54,56,58,63,181]),
         ("extreal",[1,2,3,4,5,6,7,17]),("ind_type",[33,34]),
         ("real",[3])]),["DISK_THM"]),
       [read"%290%136%261%132@@%261%201%156%226@@@@@"])
  fun op le_02 x = x
    val op le_02 =
    DT(((("extreal",94),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[15,25,36,54,58,63,104]),("combin",[19]),
         ("extreal",[8,17,29,30]),("numeral",[3,8]),("pair",[49]),
         ("real",[432]),("relation",[107,126])]),["DISK_THM"]),
       [read"%252%261%132@@%261%201%157%226@@@@"])
  fun op lt_02 x = x
    val op lt_02 =
    DT(((("extreal",95),
        [("arithmetic",[147]),("bool",[15,25,54,58]),("combin",[19]),
         ("extreal",[8,17,29,30,33]),("numeral",[3,6]),("pair",[49]),
         ("real",[432]),("relation",[107,126])]),["DISK_THM"]),
       [read"%256%261%132@@%261%201%157%226@@@@"])
  fun op ne_02 x = x
    val op ne_02 =
    DT(((("extreal",96),
        [("bool",[25,26,54,56,63,181]),("extreal",[1,2,3,4,5,6,7,17]),
         ("ind_type",[33,34]),("numeral",[3,6]),
         ("real",[425])]),["DISK_THM"]),
       [read"%290%136%261%132@@%261%201%157%226@@@@@"])
  fun op le_num x = x
    val op le_num =
    DT(((("extreal",97),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[15,25,36,54,58,63,104]),("combin",[19]),
         ("extreal",[8,17,29,30]),("numeral",[3,8]),("pair",[49]),
         ("real",[432]),("relation",[107,126])]),["DISK_THM"]),
       [read"%120%55%252%261%132@@%261$0@@|@"])
  fun op lt_le x = x
    val op lt_le =
    DT(((("extreal",98),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,76,80]),("ind_type",[33,34]),
         ("pair",[49]),("real",[57]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%256$1@$0@@%131%252$1@$0@@%290%136$1@$0@@@@|@|@"])
  fun op le_lt x = x
    val op le_lt =
    DT(((("extreal",99),
        [("bool",[15,25,26,27,36,47,51,52,54,56,58,63,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,29,30,76,80]),
         ("ind_type",[33,34]),("pair",[49]),("real",[56]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%252$1@$0@@%227%256$1@$0@@%136$1@$0@@@|@|@"])
  fun op le_neg x = x
    val op le_neg =
    DT(((("extreal",100),
        [("bool",[15,25,26,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,39]),("pair",[49]),
         ("real",[159]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%252%247$1@@%247$0@@@%252$0@$1@@|@|@"])
  fun op lt_neg x = x
    val op lt_neg =
    DT(((("extreal",101),
        [("bool",[25,26,27,54,56,63,181]),
         ("extreal",[1,2,3,4,5,6,7,39,76,80]),
         ("real",[158])]),["DISK_THM"]),
       [read"%103%86%103%93%135%256%247$1@@%247$0@@@%256$0@$1@@|@|@"])
  fun op le_add x = x
    val op le_add =
    DT(((("extreal",102),
        [("bool",[15,25,26,27,51,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30]),("pair",[49]),
         ("real",[79]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%252%261%132@@$0@@@%252%261%132@@%245$1@$0@@@|@|@"])
  fun op lt_add x = x
    val op lt_add =
    DT(((("extreal",103),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,33]),("pair",[49]),
         ("real",[80,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256%261%132@@$1@@%256%261%132@@$0@@@%256%261%132@@%245$1@$0@@@|@|@"])
  fun op let_add x = x
    val op let_add =
    DT(((("extreal",104),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,33]),("pair",[49]),
         ("real",[165,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%256%261%132@@$0@@@%256%261%132@@%245$1@$0@@@|@|@"])
  fun op lte_add x = x
    val op lte_add =
    DT(((("extreal",105),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,33]),("pair",[49]),
         ("real",[166,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256%261%132@@$1@@%252%261%132@@$0@@@%256%261%132@@%245$1@$0@@@|@|@"])
  fun op le_add2 x = x
    val op le_add2 =
    DT(((("extreal",106),
        [("bool",[15,25,26,27,51,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,77]),("pair",[49]),
         ("real",[78]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%84%103%86%103%93%103%99%146%131%252$3@$2@@%252$1@$0@@@%252%245$3@$1@@%245$2@$0@@@|@|@|@|@"])
  fun op lt_add2 x = x
    val op lt_add2 =
    DT(((("extreal",107),
        [("bool",[15,25,26,27,51,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,76,80]),("pair",[49]),
         ("real",[77]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%84%103%86%103%93%103%99%146%131%256$3@$2@@%256$1@$0@@@%256%245$3@$1@@%245$2@$0@@@|@|@|@|@"])
  fun op let_add2 x = x
    val op let_add2 =
    DT(((("extreal",108),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[163,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%84%103%86%103%93%103%99%146%131%290%136$3@%202@@@%131%290%136$3@%205@@@%131%252$3@$2@@%256$1@$0@@@@@%256%245$3@$1@@%245$2@$0@@@|@|@|@|@"])
  fun op let_add2_alt x = x
    val op let_add2_alt =
    DT(((("extreal",109),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[163,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%84%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%131%252$3@$2@@%256$1@$0@@@@@%256%245$3@$1@@%245$2@$0@@@|@|@|@|@"])
  fun op le_addr x = x
    val op le_addr =
    DT(((("extreal",110),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[122]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$1@%202@@@%290%136$1@%205@@@@%135%252$1@%245$1@$0@@@%252%261%132@@$0@@@|@|@"])
  fun op le_addr_imp x = x
    val op le_addr_imp =
    DT(((("extreal",111),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[122]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%252%261%132@@$0@@%252$1@%245$1@$0@@@|@|@"])
  fun op le_ladd x = x
    val op le_ladd =
    DT(((("extreal",112),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,29,30]),
         ("ind_type",[33,34]),("pair",[49]),("real",[75]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%252%245$2@$1@@%245$2@$0@@@%252$1@$0@@@|@|@|@"])
  fun op le_radd x = x
    val op le_radd =
    DT(((("extreal",113),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,29,30]),
         ("ind_type",[33,34]),("pair",[49]),("real",[76]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%252%245$1@$2@@%245$0@$2@@@%252$1@$0@@@|@|@|@"])
  fun op le_radd_imp x = x
    val op le_radd_imp =
    DT(((("extreal",114),
        [("bool",[15,25,26,27,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,77]),("pair",[49]),
         ("real",[76]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%252$1@$0@@%252%245$1@$2@@%245$0@$2@@@|@|@|@"])
  fun op le_ladd_imp x = x
    val op le_ladd_imp =
    DT(((("extreal",115),
        [("bool",[15,25,26,27,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,77]),("pair",[49]),
         ("real",[75]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%252$1@$0@@%252%245$2@$1@@%245$2@$0@@@|@|@|@"])
  fun op lt_ladd x = x
    val op lt_ladd =
    DT(((("extreal",116),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[75]),
         ("relation",[107,126]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%256%245$2@$1@@%245$2@$0@@@%256$1@$0@@@|@|@|@"])
  fun op lt_radd x = x
    val op lt_radd =
    DT(((("extreal",117),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[76]),
         ("relation",[107,126]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%256%245$1@$2@@%245$0@$2@@@%256$1@$0@@@|@|@|@"])
  fun op lt_addl x = x
    val op lt_addl =
    DT(((("extreal",118),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,33,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[5,22,68,123,156]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%135%256$0@%245$1@$0@@@%256%261%132@@$1@@@|@|@"])
  fun op le_lneg x = x
    val op le_lneg =
    DT(((("extreal",119),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,39,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[311]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%252%247$1@@$0@@%252%261%132@@%245$1@$0@@@|@|@"])
  fun op le_mul x = x
    val op le_mul =
    DT(((("extreal",120),
        [("bool",[15,25,26,27,30,51,53,54,58,63,64,99,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35]),
         ("pair",[49]),("real",[23,57,71,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%252%261%132@@$0@@@%252%261%132@@%259$1@$0@@@|@|@"])
  fun op let_mul x = x
    val op let_mul =
    DT(((("extreal",121),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,99,104,105,124,129,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,76,79,80]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("prim_rec",[6]),("real",[57,71,432,436]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%256%261%132@@$0@@@%252%261%132@@%259$1@$0@@@|@|@"])
  fun op lte_mul x = x
    val op lte_mul =
    DT(((("extreal",122),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,99,104,105,124,129,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,76,79,80]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("prim_rec",[6]),("real",[57,71,432,436]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256%261%132@@$1@@%252%261%132@@$0@@@%252%261%132@@%259$1@$0@@@|@|@"])
  fun op le_mul_neg x = x
    val op le_mul_neg =
    DT(((("extreal",123),
        [("bool",[15,25,26,27,30,51,53,54,58,63,64,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35]),
         ("pair",[49]),("real",[44,71,92,159,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252$1@%261%132@@@%252$0@%261%132@@@@%252%261%132@@%259$1@$0@@@|@|@"])
  fun op mul_le x = x
    val op mul_le =
    DT(((("extreal",124),
        [("bool",[15,25,26,27,30,51,53,54,58,63,64,99,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35]),
         ("pair",[49]),("real",[57,71,92,159,307,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%252$0@%261%132@@@@%252%259$1@$0@@%261%132@@@|@|@"])
  fun op lt_mul x = x
    val op lt_mul =
    DT(((("extreal",125),
        [("bool",[15,25,26,27,30,51,53,58,63,64,105,124,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,76,80]),
         ("pair",[49]),("real",[20]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256%261%132@@$1@@%256%261%132@@$0@@@%256%261%132@@%259$1@$0@@@|@|@"])
  fun op lt_mul_neg x = x
    val op lt_mul_neg =
    DT(((("extreal",126),
        [("bool",[15,25,26,27,30,51,53,54,58,63,64,99,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,76,80]),
         ("pair",[49]),("prim_rec",[6]),("real",[20,44,57,92,158,309,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256$1@%261%132@@@%256$0@%261%132@@@@%256%261%132@@%259$1@$0@@@|@|@"])
  fun op mul_lt x = x
    val op mul_lt =
    DT(((("extreal",127),
        [("bool",
         [15,25,26,27,30,51,53,54,58,63,64,99,105,124,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,76,80]),
         ("pair",[49]),("real",[20,57,92,158,307,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256%261%132@@$1@@%256$0@%261%132@@@@%256%259$1@$0@@%261%132@@@|@|@"])
  fun op mul_let x = x
    val op mul_let =
    DT(((("extreal",128),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,99,104,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,76,79,80]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("prim_rec",[6]),("real",[57,58,71,92,158,159,307,309,432,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%256$0@%261%132@@@@%252%259$1@$0@@%261%132@@@|@|@"])
  fun op mul_lte x = x
    val op mul_lte =
    DT(((("extreal",129),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,104,105,124,129,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,76,79,80]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("prim_rec",[6]),("real",[58,71,92,159,307,309,432,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%256%261%132@@$1@@%252$0@%261%132@@@@%252%259$1@$0@@%261%132@@@|@|@"])
  fun op le_rmul_imp x = x
    val op le_rmul_imp =
    DT(((("extreal",130),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,48,51,53,54,56,58,63,64,99,100,104,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,71,76,77,79,80]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("real",[40,57,59,177,309,432]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%256%261%132@@$0@@%252$2@$1@@@%252%259$2@$0@@%259$1@$0@@@|@|@|@"])
  fun op le_lmul_imp x = x
    val op le_lmul_imp =
    DT(((("extreal",131),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,99,100,104,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,72,76,79,80,98]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("real",[39,57,59,176,309,432]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%252%261%132@@$0@@%252$2@$1@@@%252%259$0@$2@@%259$0@$1@@@|@|@|@"])
  fun op lt_rmul x = x
    val op lt_rmul =
    DT(((("extreal",132),
        [("bool",
         [15,25,26,27,30,51,53,54,56,58,63,64,105,124,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,76,80]),
         ("pair",[49]),("prim_rec",[6]),("real",[110,436]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%256%261%132@@$0@@%290%136$0@%205@@@@%135%256%259$2@$0@@%259$1@$0@@@%256$2@$1@@@|@|@|@"])
  fun op lt_lmul x = x
    val op lt_lmul =
    DT(((("extreal",133),
        [("bool",
         [15,25,26,27,30,51,53,54,56,58,63,64,105,124,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,76,80]),
         ("pair",[49]),("prim_rec",[6]),("real",[109,436]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%256%261%132@@$2@@%290%136$2@%205@@@@%135%256%259$2@$1@@%259$2@$0@@@%256$1@$0@@@|@|@|@"])
  fun op lt_mul2 x = x
    val op lt_mul2 =
    DT(((("extreal",134),
        [("bool",[15,25,26,27,51,53,54,58,63,64,105,109,129,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,34,35,68,76,79,80,85]),
         ("pair",[49]),("real",[23,167]),("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%89%103%90%103%97%103%98%146%131%252%261%132@@$3@@%131%252%261%132@@$1@@%131%290%136$3@%205@@@%131%290%136$1@%205@@@%131%256$3@$2@@%256$1@$0@@@@@@@%256%259$3@$1@@%259$2@$0@@@|@|@|@|@"])
  fun op abs_pos x = x
    val op abs_pos =
    DT(((("extreal",135),
        [("bool",[15,25,26,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,41]),("pair",[49]),
         ("real",[210]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%252%261%132@@%244$0@@|@"])
  fun op abs_refl x = x
    val op abs_refl =
    DT(((("extreal",136),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,41,79]),("ind_type",[33,34]),
         ("pair",[49]),("real",[218]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%135%136%244$0@@$0@@%252%261%132@@$0@@|@"])
  fun op abs_bounds x = x
    val op abs_bounds =
    DT(((("extreal",137),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,39,41,79]),("ind_type",[33,34]),
         ("pair",[49]),("real",[232]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%51%135%252%244$1@@$0@@%131%252%247$0@@$1@@%252$1@$0@@@|@|@"])
  fun op abs_bounds_lt x = x
    val op abs_bounds_lt =
    DT(((("extreal",138),
        [("arithmetic",[46,60,79,207]),
         ("bool",[15,25,26,27,30,51,52,53,54,56,58,63,64,93,96,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,39,41,76,80]),
         ("numeral",[3]),
         ("real",
         [4,6,7,8,12,18,27,28,39,46,52,59,60,61,62,131,204,308,309,310,311,
          312,313,314,326,328]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%51%135%256%244$1@@$0@@%131%256%247$0@@$1@@%256$1@$0@@@|@|@"])
  fun op add_comm x = x
    val op add_comm =
    DT(((("extreal",139),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22]),("ind_type",[33,34]),
         ("pair",[49]),("real",[5]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%136%245$1@$0@@%245$0@$1@@|@|@"])
  fun op add_assoc x = x
    val op add_assoc =
    DT(((("extreal",140),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22]),("ind_type",[33,34]),
         ("pair",[49]),("real",[6]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%136%245$2@%245$1@$0@@@%245%245$2@$1@@$0@@|@|@|@"])
  fun op add_not_infty x = x
    val op add_not_infty =
    DT(((("extreal",141),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22]),
         ("ind_type",[33,34]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%131%146%131%290%136$1@%202@@@%290%136$0@%202@@@@%290%136%245$1@$0@@%202@@@@%146%131%290%136$1@%205@@@%290%136$0@%205@@@@%290%136%245$1@$0@@%205@@@@|@|@"])
  fun op add_rzero x = x
    val op add_rzero =
    DT(((("extreal",142),
        [("bool",[15,25,26,53,54,55,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22]),("pair",[49]),
         ("real",[27]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%136%245$0@%261%132@@@$0@|@"])
  fun op add_lzero x = x
    val op add_lzero =
    DT(((("extreal",143),
        [("bool",[15,25,26,53,54,55,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22]),("pair",[49]),("real",[7]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%136%245%261%132@@$0@@$0@|@"])
  fun op add_infty x = x
    val op add_infty =
    DT(((("extreal",144),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22]),("ind_type",[33,34]),
         ("pair",[49]),("relation",[107,126])]),["DISK_THM"]),
       [read"%131%103%86%131%136%245$0@%205@@%205@@%136%245%205@$0@@%205@@|@@%103%86%146%290%136$0@%205@@@%131%136%245$0@%202@@%202@@%136%245%202@$0@@%202@@@|@@"])
  fun op EXTREAL_EQ_LADD x = x
    val op EXTREAL_EQ_LADD =
    DT(((("extreal",145),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22]),
         ("ind_type",[33,34]),("pair",[49]),("real",[32]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%136%245$2@$1@@%245$2@$0@@@%136$1@$0@@@|@|@|@"])
  fun op sub_rzero x = x
    val op sub_rzero =
    DT(((("extreal",146),
        [("bool",[15,25,26,53,54,55,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,25,26]),("pair",[49]),
         ("real",[162]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%136%265$0@%261%132@@@$0@|@"])
  fun op sub_lzero x = x
    val op sub_lzero =
    DT(((("extreal",147),
        [("bool",[14,15,25,26,36,53,54,55,56,58,63,75,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,25,26,39]),
         ("pair",[49]),("real",[161]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%136%265%261%132@@$0@@%247$0@@|@"])
  fun op sub_le_imp x = x
    val op sub_le_imp =
    DT(((("extreal",148),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30]),
         ("ind_type",[33,34]),("pair",[49]),("real",[157]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%252$1@%245$0@$2@@@@@%252%265$1@$2@@$0@@|@|@|@"])
  fun op sub_le_imp2 x = x
    val op sub_le_imp2 =
    DT(((("extreal",149),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30]),
         ("ind_type",[33,34]),("pair",[49]),("real",[157]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$1@%202@@@%131%290%136$1@%205@@@%252$1@%245$0@$2@@@@@%252%265$1@$2@@$0@@|@|@|@"])
  fun op le_sub_imp x = x
    val op le_sub_imp =
    DT(((("extreal",150),
        [("bool",[15,25,26,27,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30]),("pair",[49]),
         ("real",[156]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%252%245$1@$2@@$0@@%252$1@%265$0@$2@@@|@|@|@"])
  fun op lt_sub_imp x = x
    val op lt_sub_imp =
    DT(((("extreal",151),
        [("bool",[15,25,26,27,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30,33]),("pair",[49]),
         ("real",[153,309]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%256%245$1@$2@@$0@@%256$1@%265$0@$2@@@|@|@|@"])
  fun op sub_lt_imp x = x
    val op sub_lt_imp =
    DT(((("extreal",152),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[154,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%256$1@%245$0@$2@@@@@%256%265$1@$2@@$0@@|@|@|@"])
  fun op sub_lt_imp2 x = x
    val op sub_lt_imp2 =
    DT(((("extreal",153),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30,33]),
         ("ind_type",[33,34]),("pair",[49]),("real",[154,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$0@%202@@@%131%290%136$0@%205@@@%256$1@%245$0@$2@@@@@%256%265$1@$2@@$0@@|@|@|@"])
  fun op sub_zero_lt x = x
    val op sub_zero_lt =
    DT(((("extreal",154),
        [("bool",[15,25,26,27,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,25,26,76,80]),("pair",[49]),
         ("real",[94]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%256$1@$0@@%256%261%132@@%265$0@$1@@@|@|@"])
  fun op sub_zero_lt2 x = x
    val op sub_zero_lt2 =
    DT(((("extreal",155),
        [("bool",[15,25,26,27,51,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,25,26,76,80]),("pair",[49]),
         ("real",[94]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$1@%202@@@%131%290%136$1@%205@@@%256%261%132@@%265$0@$1@@@@@%256$1@$0@@|@|@"])
  fun op sub_lt_zero x = x
    val op sub_lt_zero =
    DT(((("extreal",156),
        [("bool",[15,25,26,27,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,25,26,76,80]),("pair",[49]),
         ("real",[7,154]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%256$1@$0@@%256%265$1@$0@@%261%132@@@|@|@"])
  fun op sub_lt_zero2 x = x
    val op sub_lt_zero2 =
    DT(((("extreal",157),
        [("bool",[15,25,26,27,51,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,25,26,76,80]),("pair",[49]),
         ("real",[7,154]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$0@%202@@@%131%290%136$0@%205@@@%256%265$1@$0@@%261%132@@@@@%256$1@$0@@|@|@"])
  fun op sub_zero_le x = x
    val op sub_zero_le =
    DT(((("extreal",158),
        [("bool",[15,25,26,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,25,26,29,30]),("pair",[49]),
         ("real",[95]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%135%252$1@$0@@%252%261%132@@%265$0@$1@@@|@|@"])
  fun op sub_le_zero x = x
    val op sub_le_zero =
    DT(((("extreal",159),
        [("bool",[15,25,26,27,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,25,26,29,30,80]),
         ("pair",[49]),("real",[7,157]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%135%252$1@$0@@%252%265$1@$0@@%261%132@@@@|@|@"])
  fun op le_sub_eq x = x
    val op le_sub_eq =
    DT(((("extreal",160),
        [("bool",[25,26,53,54,63]),("extreal",[33,150,152]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%252$1@%265$0@$2@@@%252%245$1@$2@@$0@@@|@|@|@"])
  fun op le_sub_eq2 x = x
    val op le_sub_eq2 =
    DT(((("extreal",161),
        [("bool",[15,25,26,27,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30,80]),("pair",[49]),
         ("real",[156]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$0@%202@@@%131%290%136$0@%205@@@%131%290%136$2@%202@@@%290%136$1@%202@@@@@@%135%252$1@%265$0@$2@@@%252%245$1@$2@@$0@@@|@|@|@"])
  fun op sub_le_eq x = x
    val op sub_le_eq =
    DT(((("extreal",162),
        [("bool",[25,26,53,54,63]),("extreal",[33,148,151]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%290%136$2@%205@@@@%135%252%265$1@$2@@$0@@%252$1@%245$0@$2@@@@|@|@|@"])
  fun op sub_le_eq2 x = x
    val op sub_le_eq2 =
    DT(((("extreal",163),
        [("bool",[15,25,26,27,51,53,56,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30,80]),("pair",[49]),
         ("real",[157]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$1@%202@@@%131%290%136$1@%205@@@%131%290%136$2@%202@@@%290%136$0@%202@@@@@@%135%252%265$1@$2@@$0@@%252$1@%245$0@$2@@@@|@|@|@"])
  fun op sub_le_switch x = x
    val op sub_le_switch =
    DT(((("extreal",164),
        [("arithmetic",[46,60,79,207]),
         ("bool",[15,25,26,27,51,53,54,56,58,63,96,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26,29,30,80]),
         ("numeral",[3]),("pair",[49]),
         ("real",
         [4,6,7,8,12,18,22,27,28,38,39,46,59,60,61,62,131,308,309,310,311,
          312,313,314,326,328]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%131%290%136$0@%202@@@%290%136$0@%205@@@@@@%135%252%265$1@$2@@$0@@%252%265$1@$0@@$2@@@|@|@|@"])
  fun op sub_le_switch2 x = x
    val op sub_le_switch2 =
    DT(((("extreal",165),
        [("arithmetic",[46,60,79,207]),
         ("bool",[15,25,26,27,36,47,51,53,54,56,58,63,96,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26,29,30,79,80]),
         ("ind_type",[33,34]),("numeral",[3]),("pair",[49]),
         ("real",
         [4,6,7,8,12,18,22,27,28,38,39,46,59,60,61,62,131,308,309,310,311,
          312,313,314,326,328]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%131%290%136$1@%202@@@%290%136$1@%205@@@@@@%135%252%265$1@$2@@$0@@%252%265$1@$0@@$2@@@|@|@|@"])
  fun op lt_sub x = x
    val op lt_sub =
    DT(((("extreal",166),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,29,30,33,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[157]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%135%256%245$1@$2@@$0@@%256$1@%265$0@$2@@@@|@|@|@"])
  fun op sub_add2 x = x
    val op sub_add2 =
    DT(((("extreal",167),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[85]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$1@%202@@@%290%136$1@%205@@@@%136%245$1@%265$0@$1@@@$0@@|@|@"])
  fun op add_sub x = x
    val op add_sub =
    DT(((("extreal",168),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[410]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%136%265%245$1@$0@@$0@@$1@@|@|@"])
  fun op add_sub2 x = x
    val op add_sub2 =
    DT(((("extreal",169),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[96]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%136%265%245$0@$1@@$0@@$1@@|@|@"])
  fun op sub_add x = x
    val op sub_add =
    DT(((("extreal",170),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[84]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%136%245%265$1@$0@@$0@@$1@@|@|@"])
  fun op extreal_sub_add x = x
    val op extreal_sub_add =
    DT(((("extreal",171),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,39]),("ind_type",[33,34]),
         ("pair",[49]),("real",[22]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%136%265$1@$0@@%245$1@%247$0@@@|@|@"])
  fun op sub_0 x = x
    val op sub_0 =
    DT(((("extreal",172),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[87]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%136%265$1@$0@@%261%132@@@%136$1@$0@@|@|@"])
  fun op neg_neg x = x
    val op neg_neg =
    DT(((("extreal",173),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7,39]),
         ("ind_type",[33,34]),("real",[313])]),["DISK_THM"]),
       [read"%103%86%136%247%247$0@@@$0@|@"])
  fun op neg_0 x = x
    val op neg_0 =
    DT(((("extreal",174),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7,17,39]),
         ("ind_type",[33,34]),("real",[92,425])]),["DISK_THM"]),
       [read"%136%247%261%132@@@%261%132@@"])
  fun op neg_eq0 x = x
    val op neg_eq0 =
    DT(((("extreal",175),
        [("bool",[25,26,27,36,47,51,54,56,63,181]),
         ("extreal",[1,2,3,4,5,6,7,17,39]),("ind_type",[33,34]),
         ("real",[91])]),["DISK_THM"]),
       [read"%103%86%135%136%247$0@@%261%132@@@%136$0@%261%132@@@|@"])
  fun op eq_neg x = x
    val op eq_neg =
    DT(((("extreal",176),
        [("bool",[25,26,27,36,47,51,54,56,58,63,181]),
         ("extreal",[1,2,3,4,5,6,7,39]),("ind_type",[33,34]),
         ("real",[200])]),["DISK_THM"]),
       [read"%103%86%103%93%135%136%247$1@@%247$0@@@%136$1@$0@@|@|@"])
  fun op neg_minus1 x = x
    val op neg_minus1 =
    DT(((("extreal",177),
        [("bool",[15,25,26,51,56,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,39]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[49]),("real",[18,308,425,436]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%247$0@@%259%247%261%201%156%226@@@@@$0@@|@"])
  fun op sub_rneg x = x
    val op sub_rneg =
    DT(((("extreal",178),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,39]),("ind_type",[33,34]),
         ("pair",[49]),("real",[170]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%136%265$1@%247$0@@@%245$1@$0@@|@|@"])
  fun op sub_lneg x = x
    val op sub_lneg =
    DT(((("extreal",179),
        [("bool",[15,25,26,27,36,47,51,52,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26,39]),
         ("ind_type",[33,34]),("pair",[49]),("real",[169]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%227%131%290%136$1@%202@@@%290%136$0@%202@@@@%131%290%136$1@%205@@@%290%136$0@%205@@@@@%136%265%247$1@@$0@@%247%245$1@$0@@@@|@|@"])
  fun op neg_sub x = x
    val op neg_sub =
    DT(((("extreal",180),
        [("bool",[15,25,26,27,36,47,51,52,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26,39]),
         ("ind_type",[33,34]),("pair",[49]),("real",[93]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%227%131%290%136$1@%202@@@%290%136$1@%205@@@@%131%290%136$0@%202@@@%290%136$0@%205@@@@@%136%247%265$1@$0@@@%265$0@$1@@@|@|@"])
  fun op sub_not_infty x = x
    val op sub_not_infty =
    DT(((("extreal",181),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26]),
         ("ind_type",[33,34]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%131%146%131%290%136$1@%202@@@%290%136$0@%205@@@@%290%136%265$1@$0@@%202@@@@%146%131%290%136$1@%205@@@%290%136$0@%202@@@@%290%136%265$1@$0@@%205@@@@|@|@"])
  fun op le_lsub_imp x = x
    val op le_lsub_imp =
    DT(((("extreal",182),
        [("bool",[15,25,26,27,53,54,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,25,26,29,30,77]),("pair",[49]),
         ("real",[22,55,78,159]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%252$1@$0@@%252%265$2@$0@@%265$2@$1@@@|@|@|@"])
  fun op eq_sub_ladd_normal x = x
    val op eq_sub_ladd_normal =
    DT(((("extreal",183),
        [("bool",[15,25,26,27,36,47,51,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),("ind_type",[33,34]),
         ("pair",[49]),("real",[173]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%121%101%135%136$2@%265$1@%203$0@@@@%136%245$2@%203$0@@@$1@@|@|@|@"])
  fun op eq_sub_radd x = x
    val op eq_sub_radd =
    DT(((("extreal",184),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[174]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$1@%202@@@%290%136$1@%205@@@@%135%136%265$2@$1@@$0@@%136$2@%245$0@$1@@@@|@|@|@"])
  fun op eq_sub_ladd x = x
    val op eq_sub_ladd =
    DT(((("extreal",185),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[173]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%135%136$2@%265$1@$0@@@%136%245$2@$0@@$1@@@|@|@|@"])
  fun op eq_sub_switch x = x
    val op eq_sub_switch =
    DT(((("extreal",186),
        [("arithmetic",[46,60,79,207]),
         ("bool",[15,25,26,27,36,47,51,53,54,56,58,63,93,96,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26]),
         ("ind_type",[33,34]),("numeral",[3,5,17,18]),("pair",[49]),
         ("real",
         [4,6,7,8,12,17,18,20,22,27,28,38,39,40,46,59,60,61,62,71,131,307,
          308,309,310,311,312,313,314,325,326,328,329]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%103%86%103%93%121%101%135%136$2@%265%203$0@@$1@@@%136$1@%265%203$0@@$2@@@|@|@|@"])
  fun op eq_add_sub_switch x = x
    val op eq_add_sub_switch =
    DT(((("extreal",187),
        [("arithmetic",[46,60,79,207]),
         ("bool",[15,25,26,27,36,47,51,53,54,56,58,63,93,96,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("numeral",[3,5,17,18]),("pair",[49]),
         ("real",
         [4,6,7,8,12,17,18,20,22,27,28,38,39,40,46,59,60,61,62,71,131,307,
          308,309,310,311,312,313,314,325,326,328,329]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%103%8%103%16%103%19%103%22%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%131%290%136$1@%202@@@%290%136$1@%205@@@@@@%135%136%245$3@$2@@%245$1@$0@@@%136%265$3@$1@@%265$0@$2@@@@|@|@|@|@"])
  fun op sub_refl x = x
    val op sub_refl =
    DT(((("extreal",188),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,25,26]),
         ("ind_type",[33,34]),("pair",[49]),("real",[86,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%136%265$0@$0@@%261%132@@@|@"])
  fun op mul_comm x = x
    val op mul_comm =
    DT(((("extreal",189),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35]),("ind_type",[33,34]),
         ("pair",[49]),("real",[16]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%136%259$1@$0@@%259$0@$1@@|@|@"])
  fun op mul_assoc x = x
    val op mul_assoc =
    DT(((("extreal",190),
        [("bool",
         [15,25,26,27,30,36,47,48,51,52,53,54,55,56,58,63,64,96,99,100,105,
          108,109,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,49,50,53,54]),
         ("ind_type",[33,34]),("pair",[49]),("prim_rec",[6]),
         ("real",[17,39,40,45,48,50,57,107,108,425,436]),
         ("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%136%259$2@%259$1@$0@@@%259%259$2@$1@@$0@@|@|@|@"])
  fun op mul_not_infty x = x
    val op mul_not_infty =
    DT(((("extreal",191),
        [("bool",[15,25,26,27,30,36,47,51,53,54,56,58,63,64,100,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,34,35]),
         ("ind_type",[33,34]),("pair",[49]),("real",[23,62]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%131%121%21%103%93%146%131%282%285%132@@$1@@%290%136$0@%202@@@@%290%136%259%203$1@@$0@@%202@@@|@|@@%131%121%21%103%93%146%131%282%285%132@@$1@@%290%136$0@%205@@@@%290%136%259%203$1@@$0@@%205@@@|@|@@%131%121%21%103%93%146%131%282$1@%285%132@@@%290%136$0@%202@@@@%290%136%259%203$1@@$0@@%205@@@|@|@@%121%21%103%93%146%131%282$1@%285%132@@@%290%136$0@%205@@@@%290%136%259%203$1@@$0@@%202@@@|@|@@@@"])
  fun op mul_not_infty2 x = x
    val op mul_not_infty2 =
    DT(((("extreal",192),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,34,35]),
         ("ind_type",[33,34]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%290%136$1@%202@@@%131%290%136$1@%205@@@%131%290%136$0@%202@@@%290%136$0@%205@@@@@@%131%290%136%259$1@$0@@%202@@@%290%136%259$1@$0@@%205@@@@|@|@"])
  fun op add_ldistrib_pos x = x
    val op add_ldistrib_pos =
    DT(((("extreal",193),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,48,51,53,54,55,56,58,63,64,96,99,100,104,
          105,124,129,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,34,35]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("prim_rec",[6]),
         ("real",[7,27,39,57,58,62,80,105,309,325,425,432,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%252%261%132@@$1@@%252%261%132@@$0@@@%136%259$2@%245$1@$0@@@%245%259$2@$1@@%259$2@$0@@@@|@|@|@"])
  fun op add_ldistrib_neg x = x
    val op add_ldistrib_neg =
    DT(((("extreal",194),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,52,53,54,55,56,58,63,64,96,99,104,105,
          124,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,34,35]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("prim_rec",[6]),
         ("real",[7,23,27,39,49,57,77,105,309,325,425,432,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%252$1@%261%132@@@%252$0@%261%132@@@@%136%259$2@%245$1@$0@@@%245%259$2@$1@@%259$2@$0@@@@|@|@|@"])
  fun op add_ldistrib_normal x = x
    val op add_ldistrib_normal =
    DT(((("extreal",195),
        [("bool",[15,25,26,27,30,53,54,55,56,58,63,64,105,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,34,35,72,143]),
         ("ind_type",[33,34]),("pair",[49]),("real",[325]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%103%93%103%99%146%227%131%290%136$1@%205@@@%290%136$0@%205@@@@%131%290%136$1@%202@@@%290%136$0@%202@@@@@%136%259%203$2@@%245$1@$0@@@%245%259%203$2@@$1@@%259%203$2@@$0@@@@|@|@|@"])
  fun op add_ldistrib_normal2 x = x
    val op add_ldistrib_normal2 =
    DT(((("extreal",196),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,99,104,105,124,147,
          181]),("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,34,35]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("real",[7,27,39,56,325,425,432]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%103%93%103%99%146%282%285%132@@$2@@%136%259%203$2@@%245$1@$0@@@%245%259%203$2@@$1@@%259%203$2@@$0@@@@|@|@|@"])
  fun op add_rdistrib_normal x = x
    val op add_rdistrib_normal =
    DT(((("extreal",197),
        [("bool",[15,25,26,27,30,53,54,55,56,58,63,64,105,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,34,35,71,142]),
         ("ind_type",[33,34]),("pair",[49]),("real",[326]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%103%93%103%99%146%227%131%290%136$1@%205@@@%290%136$0@%205@@@@%131%290%136$1@%202@@@%290%136$0@%202@@@@@%136%259%245$1@$0@@%203$2@@@%245%259$1@%203$2@@@%259$0@%203$2@@@@@|@|@|@"])
  fun op add_rdistrib_normal2 x = x
    val op add_rdistrib_normal2 =
    DT(((("extreal",198),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,99,104,105,124,147,
          181]),("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,34,35]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("real",[7,27,40,56,326,425,432]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%103%93%103%99%146%282%285%132@@$2@@%136%259%245$1@$0@@%203$2@@@%245%259$1@%203$2@@@%259$0@%203$2@@@@@|@|@|@"])
  fun op add_ldistrib x = x
    val op add_ldistrib =
    DT(((("extreal",199),
        [("bool",[25,53,54,63]),("extreal",[193,194]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%227%131%252%261%132@@$1@@%252%261%132@@$0@@@%131%252$1@%261%132@@@%252$0@%261%132@@@@@%136%259$2@%245$1@$0@@@%245%259$2@$1@@%259$2@$0@@@@|@|@|@"])
  fun op add_rdistrib x = x
    val op add_rdistrib =
    DT(((("extreal",200),
        [("bool",[25,53,54,63,99]),("extreal",[189,199]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%227%131%252%261%132@@$1@@%252%261%132@@$0@@@%131%252$1@%261%132@@@%252$0@%261%132@@@@@%136%259%245$1@$0@@$2@@%245%259$1@$2@@%259$0@$2@@@@|@|@|@"])
  fun op mul_lneg x = x
    val op mul_lneg =
    DT(((("extreal",201),
        [("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,100,105,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,34,35,39]),
         ("ind_type",[33,34]),("pair",[49]),
         ("real",[11,12,23,62,66,91,92,308,425]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%136%259%247$1@@$0@@%247%259$1@$0@@@|@|@"])
  fun op mul_rneg x = x
    val op mul_rneg =
    DT(((("extreal",202),
        [("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,100,105,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,34,35,39]),
         ("ind_type",[33,34]),("pair",[49]),
         ("real",[11,12,23,62,66,91,92,307,425]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%136%259$1@%247$0@@@%247%259$1@$0@@@|@|@"])
  fun op neg_mul2 x = x
    val op neg_mul2 =
    DT(((("extreal",203),
        [("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,100,105,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,34,35,39]),
         ("ind_type",[33,34]),("pair",[49]),
         ("real",[43,49,62,91,92,158,307,308,309,425]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%136%259%247$1@@%247$0@@@%259$1@$0@@|@|@"])
  fun op add2_sub2 x = x
    val op add2_sub2 =
    DT(((("extreal",204),
        [("bool",[15,25,26,27,36,47,51,52,53,54,56,58,63,96,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,21,22,25,26]),
         ("ind_type",[33,34]),("pair",[49]),
         ("real",
         [4,6,8,18,22,27,28,38,39,55,62,308,309,311,312,313,314,326]),
         ("relation",[107,126]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%103%8%103%16%103%19%103%22%146%227%131%290%136$2@%205@@@%290%136$0@%205@@@@%131%290%136$2@%202@@@%290%136$0@%202@@@@@%136%245%265$3@$2@@%265$1@$0@@@%265%245$3@$1@@%245$2@$0@@@@|@|@|@|@"])
  fun op sub_ldistrib x = x
    val op sub_ldistrib =
    DT(((("extreal",205),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26,34,35]),
         ("ind_type",[33,34]),("pair",[49]),("real",[99]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%131%290%136$1@%202@@@%131%290%136$1@%205@@@%131%290%136$0@%202@@@%290%136$0@%205@@@@@@@@%136%259$2@%265$1@$0@@@%265%259$2@$1@@%259$2@$0@@@@|@|@|@"])
  fun op sub_rdistrib x = x
    val op sub_rdistrib =
    DT(((("extreal",206),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,25,26,34,35]),
         ("ind_type",[33,34]),("pair",[49]),("real",[100]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$2@%205@@@%131%290%136$1@%202@@@%131%290%136$1@%205@@@%131%290%136$0@%202@@@%290%136$0@%205@@@@@@@@%136%259%265$2@$1@@$0@@%265%259$2@$0@@%259$1@$0@@@@|@|@|@"])
  fun op extreal_div_eq x = x
    val op extreal_div_eq =
    DT(((("extreal",207),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,38,40]),("ind_type",[33,34]),
         ("pair",[49]),("real",[26]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%121%88%121%94%136%248%203$1@@%203$0@@@%203%130$1@$0@@@|@|@"])
  fun op inv_one x = x
    val op inv_one =
    DT(((("extreal",208),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7,17,38]),
         ("ind_type",[33,34]),("real",[133])]),["DISK_THM"]),
       [read"%136%251%261%201%156%226@@@@@%261%201%156%226@@@@"])
  fun op inv_1over x = x
    val op inv_1over =
    DT(((("extreal",209),
        [("bool",[15,25,26,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,38,40]),("ind_type",[33,34]),
         ("pair",[49]),("real",[18,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%251$0@@%248%261%201%156%226@@@@$0@@|@"])
  fun op div_one x = x
    val op div_one =
    DT(((("extreal",210),
        [("bool",[25,56]),("extreal",[40,73,208])]),["DISK_THM"]),
       [read"%103%86%136%248$0@%261%201%156%226@@@@@$0@|@"])
  fun op inv_pos x = x
    val op inv_pos =
    DT(((("extreal",211),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,33,34,35,38,40,79,80]),
         ("ind_type",[33,34]),("pair",[49]),("real",[18,23,119]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%146%131%256%261%132@@$0@@%290%136$0@%205@@@@%256%261%132@@%248%261%201%156%226@@@@$0@@@|@"])
  fun op rinv_uniq x = x
    val op rinv_uniq =
    DT(((("extreal",212),
        [("bool",[15,25,26,27,30,36,47,51,53,54,56,58,63,64,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,34,35,38]),
         ("ind_type",[33,34]),("numeral",[3,6]),("pair",[49]),
         ("real",[114,425]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%146%136%259$1@$0@@%261%201%156%226@@@@@%136$0@%251$1@@@|@|@"])
  fun op linv_uniq x = x
    val op linv_uniq =
    DT(((("extreal",213),
        [("bool",[25,53,56,58,63,105,124]),
         ("extreal",[189,212])]),["DISK_THM"]),
       [read"%103%86%103%93%146%136%259$1@$0@@%261%201%156%226@@@@@%136$1@%251$0@@@|@|@"])
  fun op le_rdiv x = x
    val op le_rdiv =
    DT(((("extreal",214),
        [("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,100,105,124,129,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,34,35,38,40,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[11,26,106,116,318]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%103%93%103%99%146%281%285%132@@$2@@%135%252%259$1@%203$2@@@$0@@%252$1@%248$0@%203$2@@@@@|@|@|@"])
  fun op le_ldiv x = x
    val op le_ldiv =
    DT(((("extreal",215),
        [("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,100,105,124,129,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,34,35,38,40,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[11,26,106,116,319]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%103%93%103%99%146%281%285%132@@$2@@%135%252$1@%259$0@%203$2@@@@%252%248$1@%203$2@@@$0@@@|@|@|@"])
  fun op lt_rdiv x = x
    val op lt_rdiv =
    DT(((("extreal",216),
        [("bool",[15,25,26,27,30,53,54,56,58,63,64,105,124,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,38,40,76,80,207]),("pair",[49]),
         ("real",[11,106,116,320]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%121%101%146%281%285%132@@$0@@%135%256$2@%248$1@%203$0@@@@%256%259$2@%203$0@@@$1@@@|@|@|@"])
  fun op lt_ldiv x = x
    val op lt_ldiv =
    DT(((("extreal",217),
        [("bool",[15,25,26,27,30,53,54,56,58,63,64,105,124,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,38,40,76,80,207]),("pair",[49]),
         ("real",[11,106,116,321]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%121%101%146%281%285%132@@$0@@%135%256%248$2@%203$0@@@$1@@%256$2@%259$1@%203$0@@@@@|@|@|@"])
  fun op lt_rdiv_neg x = x
    val op lt_rdiv_neg =
    DT(((("extreal",218),
        [("bool",[15,25,26,27,30,53,54,56,58,62,63,64,105,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,38,40,55,76,80,207]),
         ("pair",[49]),("real",[11,23,49,56,58,116,119]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%103%86%103%93%121%101%146%281$0@%285%132@@@%135%256%248$1@%203$0@@@$2@@%256%259$2@%203$0@@@$1@@@|@|@|@"])
  fun op div_add x = x
    val op div_add =
    DT(((("extreal",219),
        [("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,105,124,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,34,35,38,40]),
         ("ind_type",[33,34]),("pair",[49]),("prim_rec",[6]),
         ("real",[7,27,31,40,119,425,436]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%103%93%103%99%146%131%290%136$2@%202@@@%131%290%136$1@%202@@@%290%136$0@%261%132@@@@@@%136%245%248$2@$0@@%248$1@$0@@@%248%245$2@$1@@$0@@@|@|@|@"])
  fun op le_inv x = x
    val op le_inv =
    DT(((("extreal",220),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[15,25,26,27,36,47,51,53,54,56,58,63,104,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,38,79]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("real",[121,432]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%146%252%261%132@@$0@@%252%261%132@@%251$0@@@|@"])
  fun op pow_0 x = x
    val op pow_0 =
    DT(((("extreal",221),
        [("bool",[25,26,27,54,56,58,63,105,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,17,47]),("ind_type",[33,34]),
         ("numeral",[3]),("real",[233])]),["DISK_THM"]),
       [read"%103%86%136%262$0@%132@@%261%201%156%226@@@@|@"])
  fun op pow_1 x = x
    val op pow_1 =
    DT(((("extreal",222),
        [("bool",[25,26,27,56,58,63,105,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,47]),("ind_type",[33,34]),
         ("numeral",[3,6,21]),("real",[240])]),["DISK_THM"]),
       [read"%103%86%136%262$0@%201%156%226@@@@$0@|@"])
  fun op pow_2 x = x
    val op pow_2 =
    DT(((("extreal",223),
        [("bool",[15,25,26,56,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,47]),("ind_type",[33,34]),
         ("numeral",[3,6,21]),("pair",[49]),("real",[241]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%136%262$0@%201%157%226@@@@%259$0@$0@@|@"])
  fun op pow_zero x = x
    val op pow_zero =
    DT(((("extreal",224),
        [("bool",[25,26,27,30,36,47,51,54,56,58,63,64,105,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,17,47]),("ind_type",[33,34]),
         ("num",[7]),("real",[260])]),["DISK_THM"]),
       [read"%120%55%103%86%135%136%262$0@%210$1@@@%261%132@@@%136$0@%261%132@@@|@|@"])
  fun op pow_zero_imp x = x
    val op pow_zero_imp =
    DT(((("extreal",225),
        [("bool",[25,26,27,30,36,47,51,53,54,55,56,58,63,64,105,124,181]),
         ("extreal",[1,2,3,4,5,6,7,17,47]),("ind_type",[33,34]),
         ("real",[74,105,259]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%120%55%103%86%146%136%262$0@$1@@%261%132@@@%136$0@%261%132@@@|@|@"])
  fun op le_pow2 x = x
    val op le_pow2 =
    DT(((("extreal",226),
        [("bool",[15,25,26,58,63,105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,47]),("numeral",[3,6,21]),
         ("pair",[49]),("real",[247]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%252%261%132@@%262$0@%201%157%226@@@@|@"])
  fun op pow_pos_le x = x
    val op pow_pos_le =
    DT(((("extreal",227),
        [("bool",[15,25,26,27,30,36,53,54,55,58,63,73,105,109,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,79,91]),
         ("pair",[49]),("real",[243]),("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%146%252%261%132@@$0@@%120%55%252%261%132@@%262$1@$0@@|@@|@"])
  fun op pow_pos_lt x = x
    val op pow_pos_lt =
    DT(((("extreal",228),
        [("arithmetic",[28]),
         ("bool",[25,26,27,53,54,56,58,63,73,75,105,124,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,17,47,76,80]),("num",[7]),
         ("real",[74,233,252]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%120%55%146%256%261%132@@$1@@%256%261%132@@%262$1@$0@@@|@|@"])
  fun op pow_le x = x
    val op pow_le =
    DT(((("extreal",229),
        [("bool",[15,25,26,27,30,36,47,51,53,54,56,58,63,64,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,79]),
         ("ind_type",[33,34]),("pair",[49]),("real",[55,233,244]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%120%55%103%86%103%93%146%131%252%261%132@@$1@@%252$1@$0@@@%252%262$1@$2@@%262$0@$2@@@|@|@|@"])
  fun op pow_lt x = x
    val op pow_lt =
    DT(((("extreal",230),
        [("bool",
         [15,25,26,27,36,47,51,53,54,56,58,63,105,124,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,76,79,80]),
         ("ind_type",[33,34]),("num",[7]),("pair",[49]),("real",[261]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%120%55%103%86%103%93%146%131%252%261%132@@$1@@%256$1@$0@@@%256%262$1@%210$2@@@%262$0@%210$2@@@@|@|@|@"])
  fun op pow_lt2 x = x
    val op pow_lt2 =
    DT(((("extreal",231),
        [("bool",
         [15,25,26,27,36,47,51,53,54,56,58,63,105,124,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,76,79,80]),
         ("ind_type",[33,34]),("pair",[49]),("real",[261]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%120%55%103%86%103%93%146%131%290%143$2@%132@@@%131%252%261%132@@$1@@%256$1@$0@@@@%256%262$1@$2@@%262$0@$2@@@|@|@|@"])
  fun op pow_le_mono x = x
    val op pow_le_mono =
    DT(((("extreal",232),
        [("arithmetic",
         [10,22,23,24,25,26,27,32,41,46,59,71,93,147,173,176,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,47,51,52,53,54,56,58,63,64,83,93,96,99,
          104,105,107,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,79]),("ind_type",[33,34]),
         ("num",[9]),("numeral",[3,8]),("pair",[49]),
         ("real",[18,55,61,73,183,233,243]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%120%55%120%53%146%131%252%261%201%156%226@@@@$2@@%133$1@$0@@@%252%262$2@$1@@%262$2@$0@@@|@|@|@"])
  fun op pow_pos_even x = x
    val op pow_pos_even =
    DT(((("extreal",233),
        [("bool",[25,26,27,30,53,54,56,58,63,64,105,124,181]),
         ("extreal",[1,2,3,4,5,6,7,17,47,57,76,80]),("numeral",[3]),
         ("real",[74])]),["DISK_THM"]),
       [read"%103%86%146%256$0@%261%132@@@%135%256%261%132@@%262$0@%55@@@%171%55@@@|@"])
  fun op pow_neg_odd x = x
    val op pow_neg_odd =
    DT(((("extreal",234),
        [("arithmetic",[158]),
         ("bool",
         [15,25,26,27,30,36,47,51,53,54,56,58,63,64,105,124,129,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,33,47,58,79,80]),
         ("ind_type",[33,34]),("numeral",[3]),("pair",[49]),
         ("real",[73,309]),("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%146%256$0@%261%132@@@%135%256%262$0@%55@@%261%132@@@%204%55@@@|@"])
  fun op add_pow2 x = x
    val op add_pow2 =
    DT(((("extreal",235),
        [("bool",[15,25,26,53,54,55,56,58,63,105,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,34,35,47,223]),
         ("ind_type",[33,34]),("numeral",[3,6,7,21]),("pair",[49]),
         ("real",[5,6,16,146,241,325,326,425,436]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%136%262%245$1@$0@@%201%157%226@@@@%245%245%262$1@%201%157%226@@@@%262$0@%201%157%226@@@@@%259%259%261%201%157%226@@@@$1@@$0@@@|@|@"])
  fun op pow_add x = x
    val op pow_add =
    DT(((("extreal",236),
        [("arithmetic",[24,26,46,71,79,93,162,172,173,177,180]),
         ("bool",
         [15,25,26,27,30,36,43,47,51,52,53,54,56,58,63,64,93,96,99,101,104,
          105,129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,47]),("ind_type",[33,34]),
         ("numeral",[3,6,8]),("pair",[49]),("real",[18,74,239,425]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%120%55%120%53%136%262$2@%124$1@$0@@@%259%262$2@$1@@%262$2@$0@@@|@|@|@"])
  fun op pow_mul x = x
    val op pow_mul =
    DT(((("extreal",237),
        [("arithmetic",[28]),
         ("bool",
         [15,25,26,27,30,36,47,51,52,53,54,56,58,63,64,99,100,105,108,109,
          129,147,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,34,35,47,57,74,221]),
         ("ind_type",[33,34]),("num",[7]),("pair",[49]),
         ("real",[23,57,246,252,260,309,425]),("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%120%55%103%86%103%93%136%262%259$1@$0@@$2@@%259%262$1@$2@@%262$0@$2@@@|@|@|@"])
  fun op pow_minus1 x = x
    val op pow_minus1 =
    DT(((("extreal",238),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7,17,39,47]),
         ("ind_type",[33,34]),("real",[255])]),["DISK_THM"]),
       [read"%120%55%136%262%247%261%201%156%226@@@@@%123%201%157%226@@@$0@@@%261%201%156%226@@@@|@"])
  fun op pow_not_infty x = x
    val op pow_not_infty =
    DT(((("extreal",239),
        [("arithmetic",[28]),
         ("bool",[2,15,25,26,53,54,55,58,63,73,74,99,109]),
         ("extreal",[47,66,68]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%120%55%103%86%146%131%290%136$0@%202@@@%290%136$0@%205@@@@%131%290%136%262$0@$1@@%202@@@%290%136%262$0@$1@@%205@@@@|@|@"])
  fun op sqrt_pos_le x = x
    val op sqrt_pos_le =
    DT(((("extreal",240),
        [("bool",[15,25,26,27,53,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,48]),("pair",[49]),
         ("relation",[107,126]),("transc",[66])]),["DISK_THM"]),
       [read"%103%86%146%252%261%132@@$0@@%252%261%132@@%264$0@@@|@"])
  fun op sqrt_pos_lt x = x
    val op sqrt_pos_lt =
    DT(((("extreal",241),
        [("bool",[25,26,27,53,58,63,105,124,181]),
         ("extreal",[1,2,3,4,5,6,7,17,48,76,80]),
         ("transc",[65])]),["DISK_THM"]),
       [read"%103%86%146%256%261%132@@$0@@%256%261%132@@%264$0@@@|@"])
  fun op pow2_sqrt x = x
    val op pow2_sqrt =
    DT(((("extreal",242),
        [("bool",[15,25,26,27,53,56,58,63,105,124,129,147,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,48]),
         ("ind_type",[33,34]),("numeral",[3,6]),("pair",[49]),
         ("relation",[107,126]),("transc",[69])]),["DISK_THM"]),
       [read"%103%86%146%252%261%132@@$0@@%136%264%262$0@%201%157%226@@@@@$0@@|@"])
  fun op sqrt_pow2 x = x
    val op sqrt_pow2 =
    DT(((("extreal",243),
        [("bool",[15,25,26,53,54,56,58,63,105,129,147,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,29,30,47,48,80,88,226]),
         ("ind_type",[33,34]),("numeral",[3,6]),("pair",[49]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("transc",[67])]),["DISK_THM"]),
       [read"%103%86%135%136%262%264$0@@%201%157%226@@@@$0@@%252%261%132@@$0@@|@"])
  fun op sqrt_mono_le x = x
    val op sqrt_mono_le =
    DT(((("extreal",244),
        [("bool",[15,25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,48,79]),
         ("ind_type",[33,34]),("pair",[49]),("relation",[107,126]),
         ("transc",[74])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%252$1@$0@@@%252%264$1@@%264$0@@@|@|@"])
  fun op logr_not_infty x = x
    val op logr_not_infty =
    DT(((("extreal",245),
        [("bool",[25,26,27,36,47,51,53,54,56,58,63,105,124,181]),
         ("extreal",[1,2,3,4,5,6,7,44]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%103%86%121%18%146%131%290%136$1@%202@@@%290%136$1@%205@@@@%131%290%136%255$0@$1@@%202@@@%290%136%255$0@$1@@%205@@@@|@|@"])
  fun op half_between x = x
    val op half_between =
    DT(((("extreal",246),
        [("arithmetic",[70,147]),
         ("bool",[15,25,26,27,47,48,51,53,54,58,63,64,94]),("combin",[19]),
         ("extreal",[8,17,29,30,33,38,40,74,81]),("numeral",[3,6,8]),
         ("pair",[49]),("real",[40,118,128,419,430,431,432]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%131%131%256%261%132@@%248%261%201%156%226@@@@%261%201%157%226@@@@@@%256%248%261%201%156%226@@@@%261%201%157%226@@@@@%261%201%156%226@@@@@@%131%252%261%132@@%248%261%201%156%226@@@@%261%201%157%226@@@@@@%252%248%261%201%156%226@@@@%261%201%157%226@@@@@%261%201%156%226@@@@@@"])
  fun op thirds_between x = x
    val op thirds_between =
    DT(((("extreal",247),
        [("arithmetic",[70,147]),
         ("bool",[15,25,26,27,47,48,51,53,54,58,63,64,94]),("combin",[19]),
         ("extreal",[8,17,29,30,33,34,35,38,40,74,81]),("numeral",[3,6,8]),
         ("pair",[49]),("real",[40,118,128,130,418,419,430,431,432]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%131%131%131%256%261%132@@%248%261%201%156%226@@@@%261%201%156%156%226@@@@@@@%256%248%261%201%156%226@@@@%261%201%156%156%226@@@@@@%261%201%156%226@@@@@@%131%256%261%132@@%248%261%201%157%226@@@@%261%201%156%156%226@@@@@@@%256%248%261%201%157%226@@@@%261%201%156%156%226@@@@@@%261%201%156%226@@@@@@@%131%131%252%261%132@@%248%261%201%156%226@@@@%261%201%156%156%226@@@@@@@%252%248%261%201%156%226@@@@%261%201%156%156%226@@@@@@%261%201%156%226@@@@@@%131%252%261%132@@%248%261%201%157%226@@@@%261%201%156%156%226@@@@@@@%252%248%261%201%157%226@@@@%261%201%156%156%226@@@@@@%261%201%156%226@@@@@@@"])
  fun op half_cancel x = x
    val op half_cancel =
    DT(((("extreal",248),
        [("bool",[15,25,26,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,207]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[49]),("real",[18,26,30,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%136%259%261%201%157%226@@@@%248%261%201%156%226@@@@%261%201%157%226@@@@@@%261%201%156%226@@@@"])
  fun op third_cancel x = x
    val op third_cancel =
    DT(((("extreal",249),
        [("bool",[15,25,26,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,207]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[49]),("real",[18,26,30,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%136%259%261%201%156%156%226@@@@@%248%261%201%156%226@@@@%261%201%156%156%226@@@@@@@%261%201%156%226@@@@"])
  fun op fourth_cancel x = x
    val op fourth_cancel =
    DT(((("extreal",250),
        [("bool",[15,25,26,54,56,58,63,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,207]),("ind_type",[33,34]),
         ("numeral",[3,6]),("pair",[49]),("real",[18,26,30,425]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%136%259%261%201%157%156%226@@@@@%248%261%201%156%226@@@@%261%201%157%156%226@@@@@@@%261%201%156%226@@@@"])
  fun op quotient_normal x = x
    val op quotient_normal =
    DT(((("extreal",251),
        [("bool",[25,26,56,63,181]),("extreal",[1,2,3,4,5,6,7,17,207]),
         ("ind_type",[33,34])]),["DISK_THM"]),
       [read"%120%55%120%53%136%248%261$1@@%261$0@@@%203%130%285$1@@%285$0@@@@|@|@"])
  fun op ext_mono_increasing_suc x = x
    val op ext_mono_increasing_suc =
    DT(((("extreal",253),
        [("arithmetic",[22,24,25,27,53,71,146,173,176,180]),
         ("bool",
         [14,25,26,36,47,48,53,54,58,63,72,74,78,81,84,94,104,105,124,
          146]),("extreal",[77,83,252]),("num",[9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%135%239$0@@%120%55%252$1$0@@$1%210$0@@@|@@|@"])
  fun op ext_mono_decreasing_suc x = x
    val op ext_mono_decreasing_suc =
    DT(((("extreal",255),
        [("arithmetic",[22,24,25,27,53,71,146,173,176,180]),
         ("bool",
         [14,25,26,36,47,48,53,54,58,63,72,74,78,81,84,94,104,105,124,
          146]),("extreal",[77,83,254]),("num",[9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%135%238$0@@%120%55%252$1%210$0@@@$1$0@@|@@|@"])
  fun op EXTREAL_ARCH x = x
    val op EXTREAL_ARCH =
    DT(((("extreal",256),
        [("bool",[2,15,25,26,27,30,53,54,55,58,63,83,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,66,74,76,80]),("pair",[49]),
         ("real",[275]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%146%256%261%132@@$0@@%103%93%146%290%136$0@%205@@@%150%55%256$1@%259%261$0@@$2@@|@@|@@|@"])
  fun op SIMP_REAL_ARCH x = x
    val op SIMP_REAL_ARCH =
    DT(((("extreal",257),
        [("bool",[25,53,58,63,76,105,124]),
         ("real",[29,56,74,275])]),["DISK_THM"]),
       [read"%121%88%150%55%282$1@%285$0@@|@|@"])
  fun op SIMP_REAL_ARCH_NEG x = x
    val op SIMP_REAL_ARCH_NEG =
    DT(((("extreal",258),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,72,93,94,96,146]),
         ("extreal",[257]),("real",[159,313]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%150%55%282%284%285$0@@@$1@|@|@"])
  fun op SIMP_EXTREAL_ARCH x = x
    val op SIMP_EXTREAL_ARCH =
    DT(((("extreal",259),
        [("bool",[15,25,26,27,36,37,47,51,53,54,56,58,63,105,124,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,79,257]),
         ("ind_type",[33,34]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%103%86%146%290%136$0@%205@@@%150%55%252$1@%261$0@@|@@|@"])
  fun op REAL_ARCH_POW x = x
    val op REAL_ARCH_POW =
    DT(((("extreal",260),
        [("bool",[2,15,25,26,53,54,63]),("extreal",[257]),
         ("real",[60,254]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%121%88%150%55%281$1@%277%285%201%157%226@@@@$0@@|@|@"])
  fun op EXTREAL_ARCH_POW x = x
    val op EXTREAL_ARCH_POW =
    DT(((("extreal",261),
        [("bool",[25,26,27,37,53,58,63,105,124,181]),
         ("extreal",[1,2,3,4,5,6,7,17,47,76,80,260])]),["DISK_THM"]),
       [read"%103%86%146%290%136$0@%205@@@%150%55%256$1@%262%261%201%157%226@@@@$0@@|@@|@"])
  fun op EXTREAL_ARCH_POW_INV x = x
    val op EXTREAL_ARCH_POW_INV =
    DT(((("extreal",262),
        [("arithmetic",[95,143]),
         ("bool",[25,26,27,47,48,53,54,58,63,72,94,105,124,129,147,181]),
         ("extreal",[1,2,3,4,5,6,7,17,76,80]),
         ("real",[58,162,204,257,407]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("seq",[1,37])]),["DISK_THM"]),
       [read"%103%24%146%256%261%132@@$0@@%150%55%256%203%277%130%285%201%156%226@@@@%285%201%157%226@@@@@$0@@@$1@|@@|@"])
  fun op REAL_LE_MUL_EPSILON x = x
    val op REAL_LE_MUL_EPSILON =
    DT(((("extreal",263),
        [("bool",[25,26,27,30,51,53,54,58,63,64,100,105,124,169]),
         ("numeral",[3,6]),
         ("real",
         [7,10,18,40,48,55,58,61,66,71,100,124,130,136,148,154,155,157,159,
          177,186,188,307,312,337,407,417]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%121%88%121%94%146%121%101%146%131%281%285%132@@$0@@%281$0@%285%201%156%226@@@@@@%282%283$0@$2@@$1@@|@@%282$1@$0@@|@|@"])
  fun op le_epsilon x = x
    val op le_epsilon =
    DT(((("extreal",264),
        [("bool",
         [2,15,25,26,27,36,47,51,53,54,55,56,58,63,71,92,99,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,29,30,68,76,79,92]),
         ("ind_type",[33,34]),("pair",[49]),("real",[337]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%103%24%146%131%256%261%132@@$0@@%290%136$0@%205@@@@%252$2@%245$1@$0@@@|@@%252$1@$0@@|@|@"])
  fun op le_mul_epsilon x = x
    val op le_mul_epsilon =
    DT(((("extreal",265),
        [("bool",
         [2,15,25,26,27,36,47,51,53,54,55,56,58,63,64,71,73,74,84,92,99,
          100,105,109,124,129,147,181]),("combin",[19]),
         ("extreal",
         [1,2,3,4,5,6,7,8,17,29,30,34,35,68,76,79,80,82,207,246,263]),
         ("ind_type",[33,34]),("numeral",[3,6]),("pair",[49]),
         ("real",[40,57,130,407,423]),("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%103%99%146%131%252%261%132@@$0@@%256$0@%261%201%156%226@@@@@@%252%259$0@$2@@$1@@|@@%252$1@$0@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_THM x = x
    val op EXTREAL_SUM_IMAGE_THM =
    DT(((("extreal",267),
        [("bool",[25,53,54,55,56,58,63,105,124,129,147]),
         ("extreal",[139,140,266]),("marker",[6]),
         ("pred_set",[185,308,312]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%131%136%172$0@%170@@%261%132@@@%102%23%105%66%146%178$0@@%136%172$2@%197$1@$0@@@%245$2$1@@%172$2@%167$0@$1@@@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_NOT_NEG_INF x = x
    val op EXTREAL_SUM_IMAGE_NOT_NEG_INF =
    DT(((("extreal",268),
        [("bool",[2,15,25,26,27,36,51,53,54,55,58,63,99,105,124]),
         ("extreal",[69,141,267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%146%131%178$0@@%102%85%146%193$0@$1@@%290%136$2$0@@%202@@@|@@@%290%136%172$1@$0@@%202@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_NOT_POS_INF x = x
    val op EXTREAL_SUM_IMAGE_NOT_POS_INF =
    DT(((("extreal",269),
        [("bool",[2,15,25,26,27,36,51,53,54,55,58,63,99,105,124]),
         ("extreal",[69,141,267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%146%131%178$0@@%102%85%146%193$0@$1@@%290%136$2$0@@%205@@@|@@@%290%136%172$1@$0@@%205@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_NOT_INFTY x = x
    val op EXTREAL_SUM_IMAGE_NOT_INFTY =
    DT(((("extreal",270),
        [("bool",[25,26,27,36,51,53,54,58,63,105,124]),
         ("extreal",[268,269])]),["DISK_THM"]),
       [read"%106%32%105%66%131%146%131%178$0@@%102%85%146%193$0@$1@@%290%136$2$0@@%202@@@|@@@%290%136%172$1@$0@@%202@@@@%146%131%178$0@@%102%85%146%193$0@$1@@%290%136$2$0@@%205@@@|@@@%290%136%172$1@$0@@%205@@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_SING x = x
    val op EXTREAL_SUM_IMAGE_SING =
    DT(((("extreal",271),
        [("bool",[25,56,63]),("extreal",[142,267]),
         ("pred_set",[107,185])]),["DISK_THM"]),
       [read"%106%32%102%23%136%172$1@%197$0@%170@@@$1$0@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_POS x = x
    val op EXTREAL_SUM_IMAGE_POS =
    DT(((("extreal",272),
        [("bool",[2,15,25,26,36,51,53,54,55,58,63,99,105,124]),
         ("extreal",[77,102,267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%146%131%178$0@@%102%85%146%193$0@$1@@%252%261%132@@$2$0@@@|@@@%252%261%132@@%172$1@$0@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_SPOS x = x
    val op EXTREAL_SUM_IMAGE_SPOS =
    DT(((("extreal",273),
        [("bool",[2,15,25,26,27,30,36,51,53,54,55,56,58,63,75,99,105,124]),
         ("extreal",[103,142,267]),("pred_set",[80,104,131,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%146%131%178$0@@%131%290%137$0@%170@@@%102%85%146%193$0@$1@@%256%261%132@@$2$0@@@|@@@@%256%261%132@@%172$1@$0@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_IF_ELIM x = x
    val op EXTREAL_SUM_IMAGE_IF_ELIM =
    DT(((("extreal",274),
        [("bool",
         [2,14,15,25,26,36,53,54,56,58,63,83,99,100,105,124,129,147]),
         ("combin",[1,3,5]),("extreal",[267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%105%66%105%3%106%32%146%131%178$2@@%102%85%146%193$0@$3@@$2$0@@|@@@%136%172%85%160$2$0@@$1$0@@%261%132@@|@$2@@%172$0@$2@@@|@|@|@"])
  fun op EXTREAL_SUM_IMAGE_FINITE_SAME x = x
    val op EXTREAL_SUM_IMAGE_FINITE_SAME =
    DT(((("extreal",275),
        [("arithmetic",[64]),
         ("bool",
         [2,15,25,26,27,36,51,53,54,55,56,58,63,83,99,100,105,124,129,
          147]),("combin",[19]),
         ("extreal",[8,17,21,22,72,74,97,139,200,267]),("pair",[49]),
         ("pred_set",[80,83,104,186,207,208]),("real",[131]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%102%56%146%131%193$0@$2@@%102%59%146%193$0@$3@@%136$2$1@@$2$0@@@|@@@%136%172$1@$2@@%259%261%159$2@@@$1$0@@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_FINITE_CONST x = x
    val op EXTREAL_SUM_IMAGE_FINITE_CONST =
    DT(((("extreal",276),
        [("bool",[25,36,51,52,53,56,58,63,105,124]),
         ("extreal",[72,267,275]),("pred_set",[80,83,207])]),["DISK_THM"]),
       [read"%105%3%146%178$0@@%106%32%103%86%146%102%91%136$2$0@@$1@|@@%136%172$1@$2@@%259%261%159$2@@@$0@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_ZERO x = x
    val op EXTREAL_SUM_IMAGE_ZERO =
    DT(((("extreal",277),
        [("bool",[14,25,26,36,53,54,55,56,63]),("combin",[0]),
         ("extreal",[71,276]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%136%172%85%261%132@|@$0@@%261%132@@@|@"])
  fun op EXTREAL_SUM_IMAGE_0 x = x
    val op EXTREAL_SUM_IMAGE_0 =
    DT(((("extreal",278),
        [("bool",[2,15,25,26,36,53,54,55,56,58,63,83,99,100,105,124]),
         ("extreal",[143,267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%146%131%178$0@@%102%85%146%193$0@$1@@%136$2$0@@%261%132@@@|@@@%136%172$1@$0@@%261%132@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_IN_IF x = x
    val op EXTREAL_SUM_IMAGE_IN_IF =
    DT(((("extreal",279),
        [("bool",[14,25,26,27,36,52,53,54,55,56,58,63,83,105,124,129,147]),
         ("combin",[1,3,5]),("extreal",[267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%136%172$0@$1@@%172%85%160%193$0@$2@@$1$0@@%261%132@@|@$1@@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_CMUL x = x
    val op EXTREAL_SUM_IMAGE_CMUL =
    DT(((("extreal",280),
        [("bool",[2,14,15,25,26,36,53,54,55,56,58,63,83,99,100,105,124]),
         ("combin",[5]),("extreal",[71,196,199,267,272]),
         ("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%121%21%146%227%282%285%132@@$0@@%102%85%146%193$0@$3@@%252%261%132@@$2$0@@@|@@@%136%172%85%259%203$1@@$2$0@@|@$2@@%259%203$0@@%172$1@$2@@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_CMUL2 x = x
    val op EXTREAL_SUM_IMAGE_CMUL2 =
    DT(((("extreal",281),
        [("bool",
         [2,14,15,25,26,30,36,51,53,54,55,56,58,63,83,99,100,105,124]),
         ("combin",[5]),("extreal",[17,71,72,143,195,196,267,270,278]),
         ("pred_set",[80,104,186]),("real",[10,58]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%106%32%121%21%146%131%178$2@@%102%85%146%193$0@$3@@%290%136$2$0@@%202@@@|@@@%136%172%85%259%203$1@@$2$0@@|@$2@@%259%203$0@@%172$1@$2@@@@|@|@|@"])
  fun op EXTREAL_SUM_IMAGE_IMAGE x = x
    val op EXTREAL_SUM_IMAGE_IMAGE =
    DT(((("extreal",282),
        [("bool",
         [2,15,25,26,27,30,36,51,52,53,54,55,56,58,63,72,74,83,84,96,99,
          105,124]),("combin",[8]),("extreal",[267]),
         ("pred_set",[80,104,144,147,150,158,186,199]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%104%42%146%196$0@$1@%187$0@$1@@@%110%35%136%173$0@%187$1@$2@@@%172%272$0@$1@@$2@@|@@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_DISJOINT_UNION x = x
    val op EXTREAL_SUM_IMAGE_DISJOINT_UNION =
    DT(((("extreal",283),
        [("bool",[25,26,27,36,51,53,54,56,58,63,83,99,105,124,129,147]),
         ("extreal",[140,143,267]),
         ("pred_set",[33,37,41,60,92,95,104,186,190]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%105%66%105%68%146%131%178$1@@%131%178$0@@%169$1@$0@@@@%106%32%136%172$0@%216$2@$1@@@%245%172$0@$2@@%172$0@$1@@@|@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_EQ_CARD x = x
    val op EXTREAL_SUM_IMAGE_EQ_CARD =
    DT(((("extreal",284),
        [("arithmetic",[64]),
         ("bool",
         [14,15,25,26,27,30,36,51,52,53,54,55,56,58,60,63,99,100,105,108,
          109,124,129,147]),("combin",[1,3,5,19]),
         ("extreal",[8,17,21,22,139,267,274,279]),("pair",[49]),
         ("pred_set",[0,80,104,186,207,208]),("real",[131]),
         ("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%136%172%85%160%193$0@$1@@%261%201%156%226@@@@%261%132@@|@$0@@%261%159$0@@@@|@"])
  fun op EXTREAL_SUM_IMAGE_INV_CARD_EQ_1 x = x
    val op EXTREAL_SUM_IMAGE_INV_CARD_EQ_1 =
    DT(((("extreal",285),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",
         [15,25,26,27,30,36,51,53,54,55,56,58,60,63,64,100,104,105,147,
          181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,38,71,73,280,284]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("pred_set",[209]),("real",[19,121,425,432]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%131%290%137$0@%170@@@%178$0@@@%136%172%85%160%193$0@$1@@%251%261%159$1@@@@%261%132@@|@$0@@%261%201%156%226@@@@@|@"])
  fun op EXTREAL_SUM_IMAGE_INTER_NONZERO x = x
    val op EXTREAL_SUM_IMAGE_INTER_NONZERO =
    DT(((("extreal",286),
        [("bool",[14,25,26,27,30,36,51,53,54,56,58,63,83,105,124,129,147]),
         ("combin",[3,5]),("extreal",[143,267]),
         ("pred_set",[1,45,53,94,104,186,191]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%136%172$0@%198$1@%56%290%136$1$0@@%261%132@@@|@@@%172$0@$1@@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_INTER_ELIM x = x
    val op EXTREAL_SUM_IMAGE_INTER_ELIM =
    DT(((("extreal",287),
        [("bool",[25,26,27,30,36,51,53,54,55,56,58,63,64,99,105,124,129]),
         ("extreal",[143,267]),("pred_set",[45,53,94,104,186,191]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%105%68%146%102%85%146%290%193$0@$1@@@%136$2$0@@%261%132@@@|@@%136%172$1@%198$2@$0@@@%172$1@$2@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_ZERO_DIFF x = x
    val op EXTREAL_SUM_IMAGE_ZERO_DIFF =
    DT(((("extreal",288),
        [("bool",[2,15,25,26,27,53,54,55,58,63,83,96,99]),
         ("extreal",[142,278,283]),("pred_set",[3,10,33,45,57,67,191,195]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%105%72%146%102%85%146%193$0@$1@@%136$2$0@@%261%132@@@|@@%136%172$1@$2@@%172$1@%168$2@$0@@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_MONO x = x
    val op EXTREAL_SUM_IMAGE_MONO =
    DT(((("extreal",289),
        [("bool",[2,15,25,26,36,53,54,55,58,63,83,99,100,105,124]),
         ("extreal",[77,106,267]),("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%106%43%146%102%85%146%193$0@$3@@%252$2$0@@$1$0@@@|@@%252%172$1@$2@@%172$0@$2@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_MONO_SET x = x
    val op EXTREAL_SUM_IMAGE_MONO_SET =
    DT(((("extreal",290),
        [("bool",[2,15,25,26,27,53,54,56,58,63,83,96,99]),
         ("extreal",[77,106,142,272,283]),
         ("pred_set",[3,10,45,57,67,75,195]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%105%72%146%131%178$1@@%131%178$0@@%131%209$1@$0@@%102%85%146%193$0@$1@@%252%261%132@@$3$0@@@|@@@@@%252%172$2@$1@@%172$2@$0@@@|@|@|@"])
  fun op EXTREAL_SUM_IMAGE_EQ x = x
    val op EXTREAL_SUM_IMAGE_EQ =
    DT(((("extreal",291),
        [("bool",
         [2,15,25,26,36,47,48,53,54,55,56,58,63,71,77,78,80,81,84,93,94,96,
          99,105,124,146]),("combin",[19]),("extreal",[267]),
         ("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%106%43%146%102%85%146%193$0@$3@@%136$2$0@@$1$0@@@|@@%136%172$1@$2@@%172$0@$2@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_POS_MEM_LE x = x
    val op EXTREAL_SUM_IMAGE_POS_MEM_LE =
    DT(((("extreal",292),
        [("bool",[2,15,25,26,27,36,51,53,54,55,58,63,83,99,105,124]),
         ("extreal",[77,106,142,143,267,272]),("pred_set",[10,80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%105%66%146%131%178$0@@%102%85%146%193$0@$1@@%252%261%132@@$2$0@@@|@@@%102%85%146%193$0@$1@@%252$2$0@@%172$2@$1@@@|@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_ADD x = x
    val op EXTREAL_SUM_IMAGE_ADD =
    DT(((("extreal",293),
        [("bool",[25,36,53,54,55,56,58,63,105,124]),
         ("extreal",[139,140,143,267]),("pred_set",[104,186]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%106%43%136%172%85%245$2$0@@$1$0@@|@$2@@%245%172$1@$2@@%172$0@$2@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_SUB x = x
    val op EXTREAL_SUM_IMAGE_SUB =
    DT(((("extreal",294),
        [("bool",[2,14,15,25,26,36,53,54,55,56,58,63,99,105,124]),
         ("combin",[1,5]),("extreal",[146,204,267,270]),
         ("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%146%178$0@@%106%32%106%43%146%227%102%85%146%193$0@$3@@%290%136$1$0@@%202@@@|@@%102%85%146%193$0@$3@@%290%136$1$0@@%205@@@|@@@%136%172%85%265$2$0@@$1$0@@|@$2@@%265%172$1@$2@@%172$0@$2@@@@|@|@@|@"])
  fun op EXTREAL_SUM_IMAGE_EXTREAL_SUM_IMAGE x = x
    val op EXTREAL_SUM_IMAGE_EXTREAL_SUM_IMAGE =
    DT(((("extreal",295),
        [("bool",
         [14,25,26,27,36,48,51,53,54,55,56,58,63,72,93,95,96,101,105,124,
          143,145,169]),("combin",[1,5,19,20]),("extreal",[267,282,283]),
         ("pair",[4,5,8,9]),
         ("pred_set",[3,10,33,45,57,80,104,144,158,186,199,268,270,274]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%109%69%107%33%146%131%178$2@@%179$1@@@%136%172%85%173$1$0@@$2@|@$2@@%175%87$1%182$0@@%208$0@@|@%163$2@$1@@@@|@|@|@"])
  fun op EXTREAL_SUM_IMAGE_NORMAL x = x
    val op EXTREAL_SUM_IMAGE_NORMAL =
    DT(((("extreal",296),
        [("bool",[15,25,26,36,53,56,58,63,105,124,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,267]),("ind_type",[33,34]),
         ("pair",[49]),("pred_set",[104,186]),("real_sigma",[1]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%108%34%105%66%146%178$0@@%136%172%85%203$2$0@@|@$0@@%203%207$1@$0@@@@|@|@"])
  fun op EXTREAL_SUM_IMAGE_IN_IF_ALT x = x
    val op EXTREAL_SUM_IMAGE_IN_IF_ALT =
    DT(((("extreal",297),
        [("bool",
         [14,25,26,27,30,36,52,53,54,55,56,58,63,64,83,105,124,129,147]),
         ("combin",[1,3,5]),("extreal",[267,291]),
         ("pred_set",[80,104,186]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%105%66%106%32%103%99%146%178$2@@%136%172$1@$2@@%172%85%160%193$0@$3@@$2$0@@$1@|@$2@@@|@|@|@"])
  fun op EXTREAL_SUM_IMAGE_CROSS_SYM x = x
    val op EXTREAL_SUM_IMAGE_CROSS_SYM =
    DT(((("extreal",298),
        [("bool",[25,26,51,53,54,55,56,58,60,63,105,124]),("combin",[5]),
         ("extreal",[282]),("pair",[4,5,7,8,9,16]),
         ("pred_set",[3,144,158,268,274]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%40%105%70%109%71%146%131%178$1@@%179$0@@@%136%175%213%85%92$4%125$1@$0@@||@@%163$1@$0@@@%176%214%92%85$4%125$0@$1@@||@@%164$0@$1@@@@|@|@|@"])
  fun op EXTREAL_SUM_IMAGE_COUNT x = x
    val op EXTREAL_SUM_IMAGE_COUNT =
    DT(((("extreal",299),
        [("arithmetic",[41,46,59,71,93,172,173,177,180]),
         ("bool",[25,26,27,36,43,52,54,56,63,93,96,104,105,107]),
         ("extreal",[140,267,271]),("numeral",[0,3,5,8]),
         ("pred_set",[3,10,80,102,131,187,197,296]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%114%37%131%136%174$0@%230%201%157%226@@@@@%245$0%132@@$0%201%156%226@@@@@@%131%136%174$0@%230%201%156%156%226@@@@@@%245%245$0%132@@$0%201%156%226@@@@@$0%201%157%226@@@@@@%131%136%174$0@%230%201%157%156%226@@@@@@%245%245%245$0%132@@$0%201%156%226@@@@@$0%201%157%226@@@@@$0%201%156%156%226@@@@@@@%136%174$0@%230%201%156%157%226@@@@@@%245%245%245%245$0%132@@$0%201%156%226@@@@@$0%201%157%226@@@@@$0%201%156%156%226@@@@@@$0%201%157%156%226@@@@@@@@@|@"])
  fun op le_sup_imp x = x
    val op le_sup_imp =
    DT(((("extreal",302),
        [("bool",[15,25,26,27,30,53,54,56,58,63,64,71,73,92,105,124,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,78,79,80,85,300]),("pair",[49]),
         ("real",[55,382]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%57%103%86%146$1$0@@%252$0@%267$1@@@|@|@"])
  fun op sup_le x = x
    val op sup_le =
    DT(((("extreal",303),
        [("bool",
         [2,14,15,25,26,27,30,36,53,54,56,58,63,64,71,73,92,99,105,124,
          181]),("combin",[5,19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,68,79,300]),("pair",[49]),
         ("real",[55,61,381,382]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%57%103%86%135%252%267$1@@$0@@%103%93%146$2$0@@%252$0@$1@@|@@|@|@"])
  fun op le_sup x = x
    val op le_sup =
    DT(((("extreal",304),
        [("bool",
         [2,14,15,25,26,27,30,36,47,48,53,54,56,58,63,64,71,73,92,99,105,
          124,181]),("combin",[5,19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,66,68,79,300]),("pair",[49]),
         ("real",[61,381,389]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%57%103%86%135%252$0@%267$1@@@%103%93%146%103%99%146$3$0@@%252$0@$1@@|@@%252$1@$0@@|@@|@|@"])
  fun op sup_eq x = x
    val op sup_eq =
    DT(((("extreal",305),
        [("bool",[2,15,25,26,53,54,55,58,63,73,75,84,99,100]),
         ("extreal",[86,303,304]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%57%103%86%135%136%267$1@@$0@@%131%103%93%146$2$0@@%252$0@$1@@|@@%103%93%146%103%99%146$3$0@@%252$0@$1@@|@@%252$1@$0@@|@@@|@|@"])
  fun op sup_const x = x
    val op sup_const =
    DT(((("extreal",306),
        [("bool",[25,36,51,53,58,63,101,105,124,145]),
         ("extreal",[77,305])]),["DISK_THM"]),
       [read"%103%86%136%267%93%136$0@$1@|@@$0@|@"])
  fun op sup_const_alt x = x
    val op sup_const_alt =
    DT(((("extreal",307),
        [("bool",[25,36,51,53,58,63,86,105,124]),
         ("extreal",[77,305])]),["DISK_THM"]),
       [read"%111%57%103%99%146%131%147%86$2$0@|@@%103%86%146$2$0@@%136$0@$1@@|@@@%136%267$1@@$0@@|@|@"])
  fun op sup_const_over_set x = x
    val op sup_const_over_set =
    DT(((("extreal",308),
        [("bool",[25,26,51,53,54,56,58,63,105,124]),("extreal",[77,305]),
         ("pred_set",[0,120,144]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%105%66%103%51%146%290%137$1@%170@@@%136%267%188%85$1|@$1@@@$0@@|@|@"])
  fun op sup_num x = x
    val op sup_num =
    DT(((("extreal",309),
        [("bool",
         [15,25,26,27,36,47,51,53,54,55,56,58,63,92,105,124,140,181]),
         ("combin",[19]),("extreal",[1,2,3,4,5,6,7,8,17,29,30,77,79,304]),
         ("ind_type",[33,34]),("pair",[49]),("real",[309,338,425]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%136%267%86%150%55%136$1@%261$0@@|@|@@%205@"])
  fun op sup_le_sup_imp x = x
    val op sup_le_sup_imp =
    DT(((("extreal",310),
        [("bool",[2,15,25,26,53,54,58,63,100,105,124]),
         ("extreal",[83,302,303]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%57%111%60%146%103%86%146$2$0@@%147%93%131$2$0@@%252$1@$0@@|@@|@@%252%267$1@@%267$0@@@|@|@"])
  fun op sup_mono x = x
    val op sup_mono =
    DT(((("extreal",311),
        [("bool",[25,26,51,53,54,55,58,63,105,124]),
         ("extreal",[83,303,304]),("pred_set",[0,14,144]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%114%58%114%61%146%120%55%252$2$0@@$1$0@@|@@%252%267%191$1@%220@@@%267%191$0@%220@@@@|@|@"])
  fun op sup_suc x = x
    val op sup_suc =
    DT(((("extreal",312),
        [("arithmetic",[27,28,46,71,93,172,173,176,177,180]),
         ("bool",[25,26,36,51,52,53,54,55,56,58,63,93,96,104,105,107,124]),
         ("extreal",[83,303,304,305]),("numeral",[3,5,8]),
         ("pred_set",[0,14,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%146%120%53%120%55%146%133$1@$0@@%252$2$1@@$2$0@@@|@|@@%136%267%191%55$1%210$0@@|@%220@@@%267%191$0@%220@@@@|@"])
  fun op sup_seq x = x
    val op sup_seq =
    DT(((("extreal",313),
        [("arithmetic",[64,143]),
         ("bool",
         [2,15,18,25,26,27,30,36,37,47,51,53,54,55,56,58,63,64,71,73,74,75,
          84,86,92,99,100,105,124,143,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,29,30,61,62,66,68,79,80,88,300,305]),
         ("ind_type",[33,34]),("pair",[49]),("pred_set",[0,1,3,14,144]),
         ("real",[55,60,76,124,144,145,154,163,220,274,388]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[1,72,73])]),["DISK_THM"]),
       [read"%116%39%121%52%146%271$1@@%135%129$1@$0@@%136%267%191%55%203$2$0@@|@%220@@@%203$0@@@@|@|@"])
  fun op sup_lt_infty x = x
    val op sup_lt_infty =
    DT(((("extreal",314),
        [("bool",[25,53,54,63]),("extreal",[85,302]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%57%146%256%267$0@@%205@@%103%86%146$1$0@@%256$0@%205@@|@@|@"])
  fun op sup_max x = x
    val op sup_max =
    DT(((("extreal",315),
        [("bool",[25,36,51,53,58,63,105,124]),
         ("extreal",[305])]),["DISK_THM"]),
       [read"%111%57%103%99%146%131$1$0@@%103%86%146$2$0@@%252$0@$1@@|@@@%136%267$1@@$0@@|@|@"])
  fun op sup_add_mono x = x
    val op sup_add_mono =
    DT(((("extreal",316),
        [("arithmetic",[176]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,51,53,54,55,56,58,63,71,73,74,75,84,92,
          96,99,100,105,124]),("combin",[3,5,19,20]),
         ("extreal",
         [8,17,21,22,68,77,79,80,83,85,86,106,112,113,139,142,143,150,160,
          252,253,303,304,305]),("pair",[49]),("pred_set",[0,14,144]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%114%49%146%131%120%55%252%261%132@@$2$0@@|@@%131%120%55%252$2$0@@$2%210$0@@@|@@%131%120%55%252%261%132@@$1$0@@|@@%120%55%252$1$0@@$1%210$0@@@|@@@@@%136%267%191%55%245$2$0@@$1$0@@|@%220@@@%245%267%191$1@%220@@@%267%191$0@%220@@@@@|@|@"])
  fun op sup_sum_mono x = x
    val op sup_sum_mono =
    DT(((("extreal",317),
        [("bool",
         [2,14,15,25,26,27,36,51,52,53,54,55,56,58,63,83,99,100,105,124]),
         ("combin",[1,3,5,19,20]),("extreal",[267,272,289,308,316]),
         ("pred_set",[15,80,104,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%115%38%113%67%146%131%181$0@@%131%120%50%146%195$0@$1@@%120%55%252%261%132@@$3$1@$0@@|@@|@@%120%50%146%195$0@$1@@%120%55%252$3$1@$0@@$3$1@%210$0@@@|@@|@@@@%136%267%191%55%174%50$3$0@$1@|@$1@|@%220@@@%174%50%267%191$2$0@@%220@@|@$0@@@|@|@"])
  fun op sup_le_mono x = x
    val op sup_le_mono =
    DT(((("extreal",318),
        [("bool",[2,15,25,26,53,54,58,63,72,74,75,84,99]),
         ("extreal",[33,81,303]),("pred_set",[0,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%103%99%146%131%120%55%252$2$0@@$2%210$0@@@|@@%256$0@%267%191$1@%220@@@@@%150%55%252$1@$2$0@@|@@|@|@"])
  fun op sup_cmul x = x
    val op sup_cmul =
    DT(((("extreal",319),
        [("bool",
         [2,15,25,26,27,30,51,53,54,55,56,58,63,99,100,105,124,129,147]),
         ("combin",[19]),
         ("extreal",
         [8,17,29,30,34,35,66,72,79,80,85,88,189,214,302,303,305,308]),
         ("pair",[49]),("pred_set",[0,14,15,144]),("real",[57,176]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%121%21%146%282%285%132@@$0@@%136%267%188%54%259%203$1@@$2$0@@|@%218@@@%259%203$0@@%267%188$1@%218@@@@@|@|@"])
  fun op sup_lt x = x
    val op sup_lt =
    DT(((("extreal",320),
        [("bool",[2,15,25,26,53,54,58,63,72,75,84,96,99,101]),
         ("extreal",[33,88,302,303]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%4%103%93%135%147%86%131$2$0@@%256$1@$0@@|@@%256$0@%267$1@@@|@|@"])
  fun op sup_lt_epsilon x = x
    val op sup_lt_epsilon =
    DT(((("extreal",321),
        [("bool",[2,15,25,26,27,30,53,54,55,56,58,63,75,83,100,181]),
         ("combin",[19]),
         ("extreal",
         [1,2,3,4,5,6,7,8,17,21,22,25,26,29,30,33,66,80,85,88,152,302,
          320]),("pair",[49]),("real",[124,154,309]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%4%103%24%146%131%256%261%132@@$0@@%131%147%86%131$2$0@@%290%136$0@%202@@@|@@%290%136%267$1@@%205@@@@@%147%86%131$2$0@@%256%267$2@@%245$0@$1@@@|@@|@|@"])
  fun op inf_le_imp x = x
    val op inf_le_imp =
    DT(((("extreal",322),
        [("bool",[25,26,53,54,55,58,63,105,124,169]),
         ("extreal",[100,173,301,304]),("pred_set",[0,144]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%111%57%103%86%146$1$0@@%252%250$1@@$0@@|@|@"])
  fun op le_inf x = x
    val op le_inf =
    DT(((("extreal",323),
        [("bool",[25,26,53,54,55,58,63,105,124,169]),
         ("extreal",[100,173,301,303]),("pred_set",[0,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%57%103%86%135%252$0@%250$1@@@%103%93%146$2$0@@%252$1@$0@@|@@|@|@"])
  fun op inf_le x = x
    val op inf_le =
    DT(((("extreal",324),
        [("bool",[2,15,25,26,53,54,55,58,63,99,105,124,169]),
         ("extreal",[100,173,301,304]),("pred_set",[0,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%57%103%86%135%252%250$1@@$0@@%103%93%146%103%99%146$3$0@@%252$1@$0@@|@@%252$0@$1@@|@@|@|@"])
  fun op inf_eq x = x
    val op inf_eq =
    DT(((("extreal",325),
        [("bool",[2,15,25,26,53,54,55,58,63,73,75,84,99,100]),
         ("extreal",[86,323,324]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%57%103%86%135%136%250$1@@$0@@%131%103%93%146$2$0@@%252$1@$0@@|@@%103%93%146%103%99%146$3$0@@%252$1@$0@@|@@%252$0@$1@@|@@@|@|@"])
  fun op inf_const x = x
    val op inf_const =
    DT(((("extreal",326),
        [("bool",[25,36,51,53,58,63,101,105,124,145]),
         ("extreal",[77,325])]),["DISK_THM"]),
       [read"%103%86%136%250%93%136$0@$1@|@@$0@|@"])
  fun op inf_const_alt x = x
    val op inf_const_alt =
    DT(((("extreal",327),
        [("bool",[25,36,51,53,58,63,86,105,124]),
         ("extreal",[77,325])]),["DISK_THM"]),
       [read"%111%57%103%99%146%131%147%86$2$0@|@@%103%86%146$2$0@@%136$0@$1@@|@@@%136%250$1@@$0@@|@|@"])
  fun op inf_const_over_set x = x
    val op inf_const_over_set =
    DT(((("extreal",328),
        [("bool",[25,26,51,53,54,56,58,63,105,124]),("extreal",[77,325]),
         ("pred_set",[0,120,144]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%105%66%103%51%146%290%137$1@%170@@@%136%250%188%85$1|@$1@@@$0@@|@|@"])
  fun op inf_suc x = x
    val op inf_suc =
    DT(((("extreal",329),
        [("arithmetic",[24,25,27,71,173,176,180]),
         ("bool",[25,26,36,51,53,54,55,58,63,104,105,124]),
         ("extreal",[83,323,324,325]),("numeral",[3,5,8]),
         ("pred_set",[0,14,144]),("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%114%37%146%120%53%120%55%146%133$1@$0@@%252$2$0@@$2$1@@@|@|@@%136%250%191%55$1%210$0@@|@%220@@@%250%191$0@%220@@@@|@"])
  fun op inf_seq x = x
    val op inf_seq =
    DT(((("extreal",330),
        [("arithmetic",[46,64,71,93,143,173,176,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,47,51,53,54,55,56,58,63,64,71,73,75,84,92,
          104,105,124,181]),("combin",[5,19]),
         ("extreal",
         [1,2,3,4,5,6,7,8,29,30,39,61,63,64,65,66,68,70,79,80,88,300,301,
          325]),("ind_type",[33,34]),("numeral",[3,8]),("pair",[49]),
         ("pred_set",[0,1,3,14,144]),("real",[25,159,313]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[5,10,20,22,71,74])]),["DISK_THM"]),
       [read"%116%39%121%52%146%270$1@@%135%129$1@$0@@%136%250%191%55%203$2$0@@|@%220@@@%203$0@@@@|@|@"])
  fun op inf_lt_infty x = x
    val op inf_lt_infty =
    DT(((("extreal",331),
        [("bool",[25,53,54,63]),("extreal",[88,322]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%111%57%146%256%202@%250$0@@@%103%86%146$1$0@@%256%202@$0@@|@@|@"])
  fun op inf_min x = x
    val op inf_min =
    DT(((("extreal",332),
        [("bool",[25,36,51,53,58,63,105,124]),
         ("extreal",[325])]),["DISK_THM"]),
       [read"%111%57%103%99%146%131$1$0@@%103%86%146$2$0@@%252$1@$0@@|@@@%136%250$1@@$0@@|@|@"])
  fun op inf_cminus x = x
    val op inf_cminus =
    DT(((("extreal",333),
        [("bool",[25,26,27,30,36,47,51,53,54,55,56,58,63,100,105,124,181]),
         ("extreal",
         [1,2,3,4,5,6,7,68,79,139,160,171,178,182,301,303,305,322]),
         ("ind_type",[33,34]),("pred_set",[0,14,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%106%32%121%21%136%265%203$0@@%250%188$1@%218@@@@%267%188%54%265%203$1@@$2$0@@|@%218@@@|@|@"])
  fun op ext_suminf_add x = x
    val op ext_suminf_add =
    DT(((("extreal",335),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,63,83,96,99,100,101,104,
          105,124]),("combin",[1,5]),
         ("extreal",
         [69,79,80,83,88,106,114,115,139,141,161,270,290,293,303,304,305,
          320,334]),("numeral",[3,5,8]),("pred_set",[0,14,18,144,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%114%49%146%120%55%131%252%261%132@@$2$0@@@%252%261%132@@$1$0@@@|@@%136%240%55%245$2$0@@$1$0@@|@@%245%240$1@@%240$0@@@@|@|@"])
  fun op ext_suminf_cmul x = x
    val op ext_suminf_cmul =
    DT(((("extreal",336),
        [("bool",
         [2,14,15,25,26,27,30,36,37,47,51,52,53,54,55,56,58,63,64,71,73,83,
          99,100,105,108,109,124,129,147,181]),("combin",[5,19]),
         ("extreal",
         [1,2,3,4,5,6,7,8,17,29,30,34,35,69,76,79,80,88,98,120,278,280,292,
          302,307,319,320,334]),("ind_type",[33,34]),("pair",[49]),
         ("pred_set",[0,14,80,144,299,300]),("prim_rec",[6]),
         ("real",[436]),("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%114%37%103%19%146%131%252%261%132@@$0@@%120%55%252%261%132@@$2$0@@|@@@%136%240%55%259$1@$2$0@@|@@%259$0@%240$1@@@@|@|@"])
  fun op ext_suminf_cmul_alt x = x
    val op ext_suminf_cmul_alt =
    DT(((("extreal",337),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,83,99,100,105,124]),
         ("combin",[5]),("extreal",[280,319,334]),("pred_set",[300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%114%37%121%21%146%131%282%285%132@@$0@@%227%120%55%290%136$2$0@@%202@@|@@%120%55%290%136$2$0@@%205@@|@@@@%136%240%55%259%203$1@@$2$0@@|@@%259%203$0@@%240$1@@@@|@|@"])
  fun op ext_suminf_lt_infty x = x
    val op ext_suminf_lt_infty =
    DT(((("extreal",338),
        [("arithmetic",[24,25,59,71,173,180]),
         ("bool",
         [2,14,15,25,26,36,51,53,54,55,56,58,63,83,99,104,105,124]),
         ("combin",[5]),("extreal",[80,85,292,314,334]),("numeral",[3,8]),
         ("pred_set",[0,14,144,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%114%37%146%131%120%55%252%261%132@@$1$0@@|@@%290%136%240$0@@%205@@@@%120%55%256$1$0@@%205@|@@|@"])
  fun op ext_suminf_suminf x = x
    val op ext_suminf_suminf =
    DT(((("extreal",339),
        [("arithmetic",[24,25,41,46,59,71,93,143,173,180]),
         ("bool",
         [2,14,15,25,26,36,51,53,54,55,56,58,63,70,71,92,96,99,101,104,105,
          124]),("combin",[5,19]),
         ("extreal",
         [8,17,29,30,61,66,69,79,80,88,272,290,296,305,313,334]),
         ("numeral",[3,8]),("pair",[49]),
         ("pred_set",[0,14,18,144,296,300]),("real",[25]),
         ("real_sigma",[3,27]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[10,20,22,41,43])]),["DISK_THM"]),
       [read"%116%63%146%131%120%55%282%285%132@@$1$0@@|@@%290%136%240%55%203$1$0@@|@@%205@@@@%136%240%55%203$1$0@@|@@%203%288$0@@@@|@"])
  fun op ext_suminf_mono x = x
    val op ext_suminf_mono =
    DT(((("extreal",340),
        [("bool",[25,26,51,53,54,55,58,63,105,124]),
         ("extreal",[83,289,303,304,334]),("pred_set",[0,14,144,300]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%114%37%114%49%146%120%55%131%290%136$1$0@@%202@@@%252$1$0@@$2$0@@@|@@%252%240$0@@%240$1@@@|@|@"])
  fun op ext_suminf_sub x = x
    val op ext_suminf_sub =
    DT(((("extreal",341),
        [("arithmetic",[24,25,41,46,59,71,93,143,173,180]),
         ("bool",
         [2,14,15,25,26,27,36,47,51,53,54,55,56,58,60,63,70,71,83,92,96,99,
          101,104,105,124,181]),("combin",[1,3,5,19,20]),
         ("extreal",
         [1,2,3,4,5,6,7,8,17,25,26,29,30,66,68,69,79,80,83,85,88,289,290,
          296,303,304,305,334,338,339,340]),("ind_type",[33,34]),
         ("numeral",[3,8]),("pair",[49]),
         ("pred_set",[0,14,18,144,296,300]),
         ("real",[22,25,61,95,102,122,157]),("real_sigma",[3,10,22,27]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("seq",[7,9,10,20,22,41,43])]),["DISK_THM"]),
       [read"%114%37%114%49%146%131%120%55%131%252%261%132@@$1$0@@@%252$1$0@@$2$0@@@|@@%290%136%240$1@@%205@@@@%136%240%50%265$2$0@@$1$0@@|@@%265%240$1@@%240$0@@@@|@|@"])
  fun op ext_suminf_sum x = x
    val op ext_suminf_sum =
    DT(((("extreal",342),
        [("arithmetic",[24,25,34,41,46,59,60,71,93,173,180]),
         ("bool",
         [2,15,25,26,30,36,51,53,54,55,58,63,75,83,84,96,99,100,101,104,
          105,124]),("extreal",[17,77,80,88,142,278,283,290,305,334]),
         ("numeral",[3,8]),("pred_set",[0,14,18,67,75,144,195,296,300]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[136])]),["DISK_THM"]),
       [read"%114%37%120%55%146%131%120%55%252%261%132@@$2$0@@|@@%120%53%146%133$1@$0@@%136$2$0@@%261%132@@@|@@@%136%240$1@@%174$1@%230$0@@@@|@|@"])
  fun op min_le x = x
    val op min_le =
    DT(((("extreal",345),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("extreal",[83,89,343]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%99%103%86%103%93%135%252%258$1@$0@@$2@@%227%252$1@$2@@%252$0@$2@@@|@|@|@"])
  fun op min_le1 x = x
    val op min_le1 =
    DT(((("extreal",346),
        [("bool",[25,26,43,47,48,53,54,58,63,71]),("extreal",[77,345]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%93%252%258$1@$0@@$1@|@|@"])
  fun op min_le2 x = x
    val op min_le2 =
    DT(((("extreal",347),
        [("bool",[25,26,43,47,48,53,54,58,63,71]),("extreal",[77,345]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%93%252%258$1@$0@@$0@|@|@"])
  fun op le_min x = x
    val op le_min =
    DT(((("extreal",348),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("extreal",[83,89,343]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%99%103%86%103%93%135%252$2@%258$1@$0@@@%131%252$2@$1@@%252$2@$0@@@|@|@|@"])
  fun op min_le2_imp x = x
    val op min_le2_imp =
    DT(((("extreal",349),
        [("bool",[25,52,58,63,105,124]),
         ("extreal",[345,348])]),["DISK_THM"]),
       [read"%103%89%103%90%103%97%103%98%146%131%252$3@$1@@%252$2@$0@@@%252%258$3@$2@@%258$1@$0@@@|@|@|@|@"])
  fun op min_refl x = x
    val op min_refl =
    DT(((("extreal",350),
        [("bool",[25,56,65]),("extreal",[343])]),["DISK_THM"]),
       [read"%103%86%136%258$0@$0@@$0@|@"])
  fun op min_comm x = x
    val op min_comm =
    DT(((("extreal",351),
        [("bool",[25,26,27,30,43,47,48,53,54,56,58,63,64,93,94,96]),
         ("extreal",[86,89,343]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%93%136%258$1@$0@@%258$0@$1@@|@|@"])
  fun op min_infty x = x
    val op min_infty =
    DT(((("extreal",352),
        [("bool",[25,26,27,30,56,58,63,64,65,105,129,147]),
         ("extreal",[79,343])]),["DISK_THM"]),
       [read"%103%86%131%136%258$0@%205@@$0@@%131%136%258%205@$0@@$0@@%131%136%258%202@$0@@%202@@%136%258$0@%202@@%202@@@@|@"])
  fun op le_max x = x
    val op le_max =
    DT(((("extreal",353),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("extreal",[83,89,344]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%99%103%86%103%93%135%252$2@%257$1@$0@@@%227%252$2@$1@@%252$2@$0@@@|@|@|@"])
  fun op le_max1 x = x
    val op le_max1 =
    DT(((("extreal",354),
        [("bool",[25,26,43,47,48,53,54,58,63,71]),("extreal",[77,353]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%93%252$1@%257$1@$0@@|@|@"])
  fun op le_max2 x = x
    val op le_max2 =
    DT(((("extreal",355),
        [("bool",[25,26,43,47,48,53,54,58,63,71]),("extreal",[77,353]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%93%252$0@%257$1@$0@@|@|@"])
  fun op max_le x = x
    val op max_le =
    DT(((("extreal",356),
        [("bool",[25,26,27,30,47,48,53,54,58,63,64,93,94,96]),
         ("extreal",[83,89,344]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%99%103%86%103%93%135%252%257$1@$0@@$2@@%131%252$1@$2@@%252$0@$2@@@|@|@|@"])
  fun op max_le2_imp x = x
    val op max_le2_imp =
    DT(((("extreal",357),
        [("bool",[25,52,58,63,105,124]),
         ("extreal",[353,356])]),["DISK_THM"]),
       [read"%103%89%103%90%103%97%103%98%146%131%252$3@$1@@%252$2@$0@@@%252%257$3@$2@@%257$1@$0@@@|@|@|@|@"])
  fun op max_refl x = x
    val op max_refl =
    DT(((("extreal",358),
        [("bool",[25,56,65]),("extreal",[344])]),["DISK_THM"]),
       [read"%103%86%136%257$0@$0@@$0@|@"])
  fun op max_comm x = x
    val op max_comm =
    DT(((("extreal",359),
        [("bool",[25,26,27,30,43,47,48,53,54,56,58,63,64,93,94,96]),
         ("extreal",[86,89,344]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%103%86%103%93%136%257$1@$0@@%257$0@$1@@|@|@"])
  fun op max_infty x = x
    val op max_infty =
    DT(((("extreal",360),
        [("bool",[25,26,27,30,56,58,63,64,65,105,129,147]),
         ("extreal",[79,344])]),["DISK_THM"]),
       [read"%103%86%131%136%257$0@%205@@%205@@%131%136%257%205@$0@@%205@@%131%136%257%202@$0@@$0@@%136%257$0@%202@@$0@@@@|@"])
  fun op Q_not_infty x = x
    val op Q_not_infty =
    DT(((("extreal",362),
        [("bool",[25,26,53,54,55,56,58,63,105,124,140,143,181]),
         ("extreal",[1,2,3,4,5,6,7,17,39,76,207,361]),("ind_type",[33,34]),
         ("pair",[4]),("pred_set",[6,33]),("real",[105]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%146%194$0@%206@@%151%94%136$1@%203$0@@|@@|@"])
  fun op Q_COUNTABLE x = x
    val op Q_COUNTABLE =
    DT(((("extreal",363),
        [("bool",[2,25,26,27,36,51,53,54,55,56,58,63,105,124,143]),
         ("combin",[8]),("extreal",[82,361]),("pair",[4,9,16]),
         ("pred_set",[6,14,66,131,158,166,173,268]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23]),
         ("util_prob",[39,58,69])]),["DISK_THM"]), [read"%233%206@"])
  fun op NUM_IN_Q x = x
    val op NUM_IN_Q =
    DT(((("extreal",364),
        [("bool",[25,26,56,58,63,143]),("extreal",[92,210,361]),
         ("pair",[4]),("pred_set",[6,33])]),["DISK_THM"]),
       [read"%120%55%131%194%261$0@@%206@@%194%247%261$0@@@%206@@|@"])
  fun op Q_INFINITE x = x
    val op Q_INFINITE =
    DT(((("extreal",365),
        [("bool",[14,25,26,27,36,53,54,55,56,58,63,83,105,124,143]),
         ("combin",[1,3,5]),("extreal",[17,70,364]),("pair",[4]),
         ("pred_set",[6,18,158,232,235]),("real",[425]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("util_prob",[71])]),["DISK_THM"]), [read"%290%180%206@@"])
  fun op OPP_IN_Q x = x
    val op OPP_IN_Q =
    DT(((("extreal",366),
        [("bool",[25,26,56,58,63,105,124,143]),("extreal",[173,361]),
         ("pair",[4]),("pred_set",[6,33])]),["DISK_THM"]),
       [read"%103%86%146%194$0@%206@@%194%247$0@@%206@@|@"])
  fun op INV_IN_Q x = x
    val op INV_IN_Q =
    DT(((("extreal",367),
        [("arithmetic",[46,59,71,93,173,177,180]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,55,56,58,63,96,99,101,104,105,124,129,
          143,147]),("extreal",[17,39,70,76,207,361]),("numeral",[3,6,8]),
         ("pair",[4]),("pred_set",[6,33]),
         ("real",
         [16,18,26,45,91,105,115,116,117,130,135,137,175,200,425,428,436]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%146%131%194$0@%206@@%290%136$0@%261%132@@@@@%194%248%261%201%156%226@@@@$0@@%206@@|@"])
  fun op CMUL_IN_Q x = x
    val op CMUL_IN_Q =
    DT(((("extreal",368),
        [("arithmetic",[73]),
         ("bool",[15,25,26,53,54,55,56,58,63,105,124,143,181]),
         ("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,39,76,207,361]),
         ("ind_type",[33,34]),("pair",[4,49]),("pred_set",[6,33]),
         ("real",[17,26,43,105,307,308,419]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%120%100%103%86%146%194$0@%206@@%131%194%259%261$1@@$0@@%206@@%194%259%247%261$1@@@$0@@%206@@@|@|@"])
  fun op ADD_IN_Q x = x
    val op ADD_IN_Q =
    DT(((("extreal",369),
        [("arithmetic",
         [24,25,27,41,46,59,63,71,73,93,148,172,173,176,177,180,199]),
         ("bool",
         [15,25,26,27,30,36,51,52,53,54,56,58,63,64,96,101,104,105,124,129,
          143,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,21,22,39,76,207,361]),
         ("ind_type",[33,34]),("numeral",[3,5,8]),("pair",[4,49]),
         ("pred_set",[6,33]),("prim_rec",[6]),
         ("real",
         [5,7,16,20,22,23,38,56,74,91,94,105,131,136,154,169,200,313,344,
          345,346,415,419,421,425,436]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%194$1@%206@@%194$0@%206@@@%194%245$1@$0@@%206@@|@|@"])
  fun op SUB_IN_Q x = x
    val op SUB_IN_Q =
    DT(((("extreal",370),
        [("bool",[2,15,25,26,53,54,58,63,75]),("combin",[19]),
         ("extreal",[8,21,22,25,26,39,362,366,369]),("pair",[49]),
         ("real",[22]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%194$1@%206@@%194$0@%206@@@%194%265$1@$0@@%206@@|@|@"])
  fun op MUL_IN_Q x = x
    val op MUL_IN_Q =
    DT(((("extreal",371),
        [("arithmetic",[41,46,59,71,93,148,152,172,173,177,180]),
         ("bool",
         [15,25,26,27,36,51,52,53,54,56,58,63,64,96,101,104,105,124,129,
          143,181]),("combin",[19]),
         ("extreal",[1,2,3,4,5,6,7,8,17,34,35,39,76,207,361]),
         ("ind_type",[33,34]),("numeral",[3,8]),("pair",[4,49]),
         ("pred_set",[6,33]),("real",[20,43,105,307,308,416,419,425,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%194$1@%206@@%194$0@%206@@@%194%259$1@$0@@%206@@|@|@"])
  fun op DIV_IN_Q x = x
    val op DIV_IN_Q =
    DT(((("extreal",372),
        [("bool",[2,14,15,25,26,36,53,54,56,58,63,75,99,109]),
         ("combin",[19]),("extreal",[8,17,34,35,38,40,207,362,367,371]),
         ("pair",[49]),("real",[118]),("relation",[107,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%194$1@%206@@%131%194$0@%206@@%290%136$0@%261%132@@@@@@%194%248$1@$0@@%206@@|@|@"])
  fun op rat_not_infty x = x
    val op rat_not_infty =
    DT(((("extreal",373),
        [("bool",[25,26,27,36,47,51,53,54,55,56,58,63,105,124,143,181]),
         ("extreal",[1,2,3,4,5,6,7,17,39,76,207,361]),("ind_type",[33,34]),
         ("pair",[4]),("pred_set",[6,33]),("real",[105]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%62%146%194$0@%206@@%131%290%136$0@%202@@@%290%136$0@%205@@@@|@"])
  fun op CEILING_LBOUND x = x
    val op CEILING_LBOUND =
    DT(((("extreal",375),
        [("bool",[15,25,51,53,54,58,63]),("combin",[19]),
         ("extreal",[8,17,29,30,257,374]),("pair",[49]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9])]),["DISK_THM"]),
       [read"%121%88%252%203$0@@%261%229%203$0@@@@|@"])
  fun op CEILING_UBOUND x = x
    val op CEILING_UBOUND =
    DT(((("extreal",376),
        [("arithmetic",
         [24,25,41,46,59,63,71,93,172,173,176,177,180,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,58,63,93,96,101,104,105,107,124,
          129,147]),("combin",[19]),("extreal",[8,17,21,22,76,257,374]),
         ("numeral",[3,5,7,8]),("pair",[49]),
         ("real",[5,27,55,60,74,154,163,164,309,346,432]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9])]),["DISK_THM"]),
       [read"%121%88%146%282%285%132@@$0@@%256%261%229%203$0@@@@%245%203$0@@%261%201%156%226@@@@@@|@"])
  fun op Q_DENSE_IN_R_LEMMA x = x
    val op Q_DENSE_IN_R_LEMMA =
    DT(((("extreal",377),
        [("arithmetic",[46,59,71,93,173,176,177,180]),
         ("bool",
         [2,15,25,26,27,30,36,47,51,52,53,54,56,58,63,96,101,104,105,124,
          181]),("combin",[19]),
         ("extreal",
         [1,2,3,4,5,6,7,8,17,21,22,25,26,29,30,34,35,76,79,80,82,85,207,
          362,364,369,370,372,375,376]),("ind_type",[33,34]),
         ("numeral",[3,8]),("pair",[49]),("prim_rec",[6]),
         ("real",
         [5,16,39,58,59,60,71,74,94,99,124,154,155,275,320,321,432,436]),
         ("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%131%252%261%132@@$1@@%256$1@$0@@@%147%62%131%194$0@%206@@%131%256$2@$0@@%256$0@$1@@@|@@|@|@"])
  fun op Q_DENSE_IN_R x = x
    val op Q_DENSE_IN_R =
    DT(((("extreal",378),
        [("bool",
         [2,15,25,26,27,30,48,51,53,54,55,56,58,63,75,100,105,124,181]),
         ("combin",[19]),
         ("extreal",
         [1,2,3,4,5,6,7,8,17,21,22,25,26,29,30,33,39,66,68,76,80,117,119,
          362,364,370,375,376,377]),("pair",[49]),
         ("real",[60,74,124,153,154,159,313]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%103%86%103%93%146%256$1@$0@@%147%62%131%194$0@%206@@%131%256$2@$0@@%256$0@$1@@@|@@|@|@"])
  fun op COUNTABLE_ENUM_Q x = x
    val op COUNTABLE_ENUM_Q =
    DT(((("extreal",379),
        [("bool",
         [2,14,15,25,26,27,36,51,52,53,54,55,56,58,63,71,73,74,75,84,92,96,
          99,100,101,105,109,124,129,143,145,147]),("combin",[1,3,5,8,12]),
         ("extreal",[363,364,365]),("pair",[4]),
         ("pred_set",
         [3,6,18,32,37,40,66,67,131,137,143,144,153,158,173,186]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("util_prob",[54,66,67,71,77])]),["DISK_THM"]),
       [read"%105%20%135%231$0@@%227%137$0@%170@@%148%36%137$1@%189$0@%206@@|@@@|@"])
  fun op CROSS_COUNTABLE_UNIV x = x
    val op CROSS_COUNTABLE_UNIV =
    DT(((("extreal",380),
        [("bool",[2,25,26,51,53,54,58,63,105,124]),
         ("pred_set",[14,158,166,173,267]),("sat",[1,3,7,17,18]),
         ("util_prob",[39,56])]),["DISK_THM"]),
       [read"%236%165%220@%220@@"])
  fun op CROSS_COUNTABLE_LEMMA1 x = x
    val op CROSS_COUNTABLE_LEMMA1 =
    DT(((("extreal",381),
        [("bool",[25,53,54,63]),("pred_set",[186,270,393]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("util_prob",[66,67,69])]),["DISK_THM"]),
       [read"%105%66%146%131%231$0@@%131%178$0@@%232%73@@@@%235%163$0@%73@@@|@"])
  fun op CROSS_COUNTABLE_LEMMA2 x = x
    val op CROSS_COUNTABLE_LEMMA2 =
    DT(((("extreal",382),
        [("bool",[14,25,26,36,53,54,56,58,63,143]),("combin",[1,5]),
         ("extreal",[381]),("pair",[4,7,8,9]),("pred_set",[3,6,143,267]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[67])]),["DISK_THM"]),
       [read"%105%66%146%131%231$0@@%131%232%73@@%179%73@@@@%235%163$0@%73@@@|@"])
  fun op CROSS_COUNTABLE x = x
    val op CROSS_COUNTABLE =
    DT(((("extreal",383),
        [("bool",
         [2,14,15,25,26,30,36,51,53,54,56,58,63,99,105,124,140,143]),
         ("combin",[3,5]),("extreal",[380,381,382]),("marker",[6]),
         ("pair",[4,5,7,8,9,16]),("pred_set",[3,6,14,143,158,166,173,267]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[67,77])]),["DISK_THM"]),
       [read"%105%66%146%131%231$0@@%232%73@@@%235%163$0@%73@@@|@"])
  fun op COUNTABLE_RATIONAL_INTERVALS x = x
    val op COUNTABLE_RATIONAL_INTERVALS =
    DT(((("extreal",387),
        [("bool",[14,25,26,36,51,53,54,56,63]),("combin",[3,5,19]),
         ("extreal",[363,383,386]),("pair",[3,4,5,8,9,16]),
         ("pred_set",[3,6,143,268]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("util_prob",[67])]),["DISK_THM"]), [read"%234%278@"])
  end
  val _ = DB.bindl "extreal"
  [("mono_decreasing_def",mono_decreasing_def,DB.Def),
   ("mono_increasing_def",mono_increasing_def,DB.Def),
   ("extreal_sqrt_def",extreal_sqrt_def,DB.Def),
   ("extreal_pow_def",extreal_pow_def,DB.Def),
   ("extreal_exp_def",extreal_exp_def,DB.Def),
   ("extreal_lg_def",extreal_lg_def,DB.Def),
   ("extreal_logr_def",extreal_logr_def,DB.Def),
   ("extreal_abs_primitive_def",extreal_abs_primitive_def,DB.Def),
   ("extreal_div_def",extreal_div_def,DB.Def),
   ("extreal_ainv_def",extreal_ainv_def,DB.Def),
   ("extreal_inv_def",extreal_inv_def,DB.Def),
   ("extreal_mul_curried_def",extreal_mul_curried_def,DB.Def),
   ("extreal_mul_tupled_primitive_def",
    extreal_mul_tupled_primitive_def,
    DB.Def), ("extreal_lt_def",extreal_lt_def,DB.Def),
   ("extreal_le_curried_def",extreal_le_curried_def,DB.Def),
   ("extreal_le_tupled_primitive_def",
    extreal_le_tupled_primitive_def,
    DB.Def), ("extreal_sub_curried_def",extreal_sub_curried_def,DB.Def),
   ("extreal_sub_tupled_primitive_def",
    extreal_sub_tupled_primitive_def,
    DB.Def), ("extreal_add_curried_def",extreal_add_curried_def,DB.Def),
   ("extreal_add_tupled_primitive_def",
    extreal_add_tupled_primitive_def,
    DB.Def), ("real_def",real_def,DB.Def),
   ("extreal_of_num_def",extreal_of_num_def,DB.Def),
   ("extreal_TY_DEF",extreal_TY_DEF,DB.Def),
   ("extreal_case_def",extreal_case_def,DB.Def),
   ("extreal_size_def",extreal_size_def,DB.Def),
   ("ext_mono_increasing_def",ext_mono_increasing_def,DB.Def),
   ("ext_mono_decreasing_def",ext_mono_decreasing_def,DB.Def),
   ("EXTREAL_SUM_IMAGE_DEF",EXTREAL_SUM_IMAGE_DEF,DB.Def),
   ("extreal_sup_def",extreal_sup_def,DB.Def),
   ("extreal_inf_def",extreal_inf_def,DB.Def),
   ("ext_suminf_def",ext_suminf_def,DB.Def),
   ("extreal_min_def",extreal_min_def,DB.Def),
   ("extreal_max_def",extreal_max_def,DB.Def),
   ("Q_set_def",Q_set_def,DB.Def), ("ceiling_def",ceiling_def,DB.Def),
   ("open_interval_def",open_interval_def,DB.Def),
   ("open_intervals_set_def",open_intervals_set_def,DB.Def),
   ("rational_intervals_def",rational_intervals_def,DB.Def),
   ("num_not_infty",num_not_infty,DB.Thm),
   ("extreal_not_infty",extreal_not_infty,DB.Thm),
   ("extreal_eq_zero",extreal_eq_zero,DB.Thm),
   ("extreal_cases",extreal_cases,DB.Thm),
   ("mono_increasing_converges_to_sup",
    mono_increasing_converges_to_sup,
    DB.Thm), ("mono_decreasing_suc",mono_decreasing_suc,DB.Thm),
   ("mono_increasing_suc",mono_increasing_suc,DB.Thm),
   ("LOGR_MONO_LE_IMP",LOGR_MONO_LE_IMP,DB.Thm),
   ("LOGR_MONO_LE",LOGR_MONO_LE,DB.Thm),
   ("POW_NEG_ODD",POW_NEG_ODD,DB.Thm),
   ("POW_POS_EVEN",POW_POS_EVEN,DB.Thm),
   ("REAL_LE_RDIV_EQ_NEG",REAL_LE_RDIV_EQ_NEG,DB.Thm),
   ("REAL_LT_RDIV_EQ_NEG",REAL_LT_RDIV_EQ_NEG,DB.Thm),
   ("REAL_LT_RMUL_NEG_0_NEG",REAL_LT_RMUL_NEG_0_NEG,DB.Thm),
   ("REAL_LT_LMUL_NEG_0_NEG",REAL_LT_LMUL_NEG_0_NEG,DB.Thm),
   ("REAL_LT_RMUL_NEG_0",REAL_LT_RMUL_NEG_0,DB.Thm),
   ("REAL_LT_LMUL_NEG_0",REAL_LT_LMUL_NEG_0,DB.Thm),
   ("REAL_LT_RMUL_0_NEG",REAL_LT_RMUL_0_NEG,DB.Thm),
   ("REAL_LT_LMUL_0_NEG",REAL_LT_LMUL_0_NEG,DB.Thm),
   ("extreal_abs_def",extreal_abs_def,DB.Thm),
   ("extreal_abs_ind",extreal_abs_ind,DB.Thm),
   ("extreal_mul_def",extreal_mul_def,DB.Thm),
   ("extreal_mul_ind",extreal_mul_ind,DB.Thm),
   ("extreal_le_def",extreal_le_def,DB.Thm),
   ("extreal_le_ind",extreal_le_ind,DB.Thm),
   ("extreal_sub_def",extreal_sub_def,DB.Thm),
   ("extreal_sub_ind",extreal_sub_ind,DB.Thm),
   ("extreal_add_def",extreal_add_def,DB.Thm),
   ("extreal_add_ind",extreal_add_ind,DB.Thm),
   ("normal_real",normal_real,DB.Thm), ("real_normal",real_normal,DB.Thm),
   ("extreal_induction",extreal_induction,DB.Thm),
   ("extreal_Axiom",extreal_Axiom,DB.Thm),
   ("extreal_nchotomy",extreal_nchotomy,DB.Thm),
   ("extreal_case_cong",extreal_case_cong,DB.Thm),
   ("extreal_distinct",extreal_distinct,DB.Thm),
   ("datatype_extreal",datatype_extreal,DB.Thm),
   ("extreal_11",extreal_11,DB.Thm), ("mul_rzero",mul_rzero,DB.Thm),
   ("mul_lzero",mul_lzero,DB.Thm), ("mul_rone",mul_rone,DB.Thm),
   ("mul_lone",mul_lone,DB.Thm), ("entire",entire,DB.Thm),
   ("extreal_lt_eq",extreal_lt_eq,DB.Thm), ("le_refl",le_refl,DB.Thm),
   ("lt_refl",lt_refl,DB.Thm), ("le_infty",le_infty,DB.Thm),
   ("lt_infty",lt_infty,DB.Thm), ("lt_imp_le",lt_imp_le,DB.Thm),
   ("lt_imp_ne",lt_imp_ne,DB.Thm), ("le_trans",le_trans,DB.Thm),
   ("lt_trans",lt_trans,DB.Thm), ("let_trans",let_trans,DB.Thm),
   ("le_antisym",le_antisym,DB.Thm), ("lt_antisym",lt_antisym,DB.Thm),
   ("lte_trans",lte_trans,DB.Thm), ("le_total",le_total,DB.Thm),
   ("lt_total",lt_total,DB.Thm), ("le_01",le_01,DB.Thm),
   ("lt_01",lt_01,DB.Thm), ("ne_01",ne_01,DB.Thm), ("le_02",le_02,DB.Thm),
   ("lt_02",lt_02,DB.Thm), ("ne_02",ne_02,DB.Thm),
   ("le_num",le_num,DB.Thm), ("lt_le",lt_le,DB.Thm),
   ("le_lt",le_lt,DB.Thm), ("le_neg",le_neg,DB.Thm),
   ("lt_neg",lt_neg,DB.Thm), ("le_add",le_add,DB.Thm),
   ("lt_add",lt_add,DB.Thm), ("let_add",let_add,DB.Thm),
   ("lte_add",lte_add,DB.Thm), ("le_add2",le_add2,DB.Thm),
   ("lt_add2",lt_add2,DB.Thm), ("let_add2",let_add2,DB.Thm),
   ("let_add2_alt",let_add2_alt,DB.Thm), ("le_addr",le_addr,DB.Thm),
   ("le_addr_imp",le_addr_imp,DB.Thm), ("le_ladd",le_ladd,DB.Thm),
   ("le_radd",le_radd,DB.Thm), ("le_radd_imp",le_radd_imp,DB.Thm),
   ("le_ladd_imp",le_ladd_imp,DB.Thm), ("lt_ladd",lt_ladd,DB.Thm),
   ("lt_radd",lt_radd,DB.Thm), ("lt_addl",lt_addl,DB.Thm),
   ("le_lneg",le_lneg,DB.Thm), ("le_mul",le_mul,DB.Thm),
   ("let_mul",let_mul,DB.Thm), ("lte_mul",lte_mul,DB.Thm),
   ("le_mul_neg",le_mul_neg,DB.Thm), ("mul_le",mul_le,DB.Thm),
   ("lt_mul",lt_mul,DB.Thm), ("lt_mul_neg",lt_mul_neg,DB.Thm),
   ("mul_lt",mul_lt,DB.Thm), ("mul_let",mul_let,DB.Thm),
   ("mul_lte",mul_lte,DB.Thm), ("le_rmul_imp",le_rmul_imp,DB.Thm),
   ("le_lmul_imp",le_lmul_imp,DB.Thm), ("lt_rmul",lt_rmul,DB.Thm),
   ("lt_lmul",lt_lmul,DB.Thm), ("lt_mul2",lt_mul2,DB.Thm),
   ("abs_pos",abs_pos,DB.Thm), ("abs_refl",abs_refl,DB.Thm),
   ("abs_bounds",abs_bounds,DB.Thm),
   ("abs_bounds_lt",abs_bounds_lt,DB.Thm), ("add_comm",add_comm,DB.Thm),
   ("add_assoc",add_assoc,DB.Thm), ("add_not_infty",add_not_infty,DB.Thm),
   ("add_rzero",add_rzero,DB.Thm), ("add_lzero",add_lzero,DB.Thm),
   ("add_infty",add_infty,DB.Thm),
   ("EXTREAL_EQ_LADD",EXTREAL_EQ_LADD,DB.Thm),
   ("sub_rzero",sub_rzero,DB.Thm), ("sub_lzero",sub_lzero,DB.Thm),
   ("sub_le_imp",sub_le_imp,DB.Thm), ("sub_le_imp2",sub_le_imp2,DB.Thm),
   ("le_sub_imp",le_sub_imp,DB.Thm), ("lt_sub_imp",lt_sub_imp,DB.Thm),
   ("sub_lt_imp",sub_lt_imp,DB.Thm), ("sub_lt_imp2",sub_lt_imp2,DB.Thm),
   ("sub_zero_lt",sub_zero_lt,DB.Thm),
   ("sub_zero_lt2",sub_zero_lt2,DB.Thm),
   ("sub_lt_zero",sub_lt_zero,DB.Thm),
   ("sub_lt_zero2",sub_lt_zero2,DB.Thm),
   ("sub_zero_le",sub_zero_le,DB.Thm), ("sub_le_zero",sub_le_zero,DB.Thm),
   ("le_sub_eq",le_sub_eq,DB.Thm), ("le_sub_eq2",le_sub_eq2,DB.Thm),
   ("sub_le_eq",sub_le_eq,DB.Thm), ("sub_le_eq2",sub_le_eq2,DB.Thm),
   ("sub_le_switch",sub_le_switch,DB.Thm),
   ("sub_le_switch2",sub_le_switch2,DB.Thm), ("lt_sub",lt_sub,DB.Thm),
   ("sub_add2",sub_add2,DB.Thm), ("add_sub",add_sub,DB.Thm),
   ("add_sub2",add_sub2,DB.Thm), ("sub_add",sub_add,DB.Thm),
   ("extreal_sub_add",extreal_sub_add,DB.Thm), ("sub_0",sub_0,DB.Thm),
   ("neg_neg",neg_neg,DB.Thm), ("neg_0",neg_0,DB.Thm),
   ("neg_eq0",neg_eq0,DB.Thm), ("eq_neg",eq_neg,DB.Thm),
   ("neg_minus1",neg_minus1,DB.Thm), ("sub_rneg",sub_rneg,DB.Thm),
   ("sub_lneg",sub_lneg,DB.Thm), ("neg_sub",neg_sub,DB.Thm),
   ("sub_not_infty",sub_not_infty,DB.Thm),
   ("le_lsub_imp",le_lsub_imp,DB.Thm),
   ("eq_sub_ladd_normal",eq_sub_ladd_normal,DB.Thm),
   ("eq_sub_radd",eq_sub_radd,DB.Thm), ("eq_sub_ladd",eq_sub_ladd,DB.Thm),
   ("eq_sub_switch",eq_sub_switch,DB.Thm),
   ("eq_add_sub_switch",eq_add_sub_switch,DB.Thm),
   ("sub_refl",sub_refl,DB.Thm), ("mul_comm",mul_comm,DB.Thm),
   ("mul_assoc",mul_assoc,DB.Thm), ("mul_not_infty",mul_not_infty,DB.Thm),
   ("mul_not_infty2",mul_not_infty2,DB.Thm),
   ("add_ldistrib_pos",add_ldistrib_pos,DB.Thm),
   ("add_ldistrib_neg",add_ldistrib_neg,DB.Thm),
   ("add_ldistrib_normal",add_ldistrib_normal,DB.Thm),
   ("add_ldistrib_normal2",add_ldistrib_normal2,DB.Thm),
   ("add_rdistrib_normal",add_rdistrib_normal,DB.Thm),
   ("add_rdistrib_normal2",add_rdistrib_normal2,DB.Thm),
   ("add_ldistrib",add_ldistrib,DB.Thm),
   ("add_rdistrib",add_rdistrib,DB.Thm), ("mul_lneg",mul_lneg,DB.Thm),
   ("mul_rneg",mul_rneg,DB.Thm), ("neg_mul2",neg_mul2,DB.Thm),
   ("add2_sub2",add2_sub2,DB.Thm), ("sub_ldistrib",sub_ldistrib,DB.Thm),
   ("sub_rdistrib",sub_rdistrib,DB.Thm),
   ("extreal_div_eq",extreal_div_eq,DB.Thm), ("inv_one",inv_one,DB.Thm),
   ("inv_1over",inv_1over,DB.Thm), ("div_one",div_one,DB.Thm),
   ("inv_pos",inv_pos,DB.Thm), ("rinv_uniq",rinv_uniq,DB.Thm),
   ("linv_uniq",linv_uniq,DB.Thm), ("le_rdiv",le_rdiv,DB.Thm),
   ("le_ldiv",le_ldiv,DB.Thm), ("lt_rdiv",lt_rdiv,DB.Thm),
   ("lt_ldiv",lt_ldiv,DB.Thm), ("lt_rdiv_neg",lt_rdiv_neg,DB.Thm),
   ("div_add",div_add,DB.Thm), ("le_inv",le_inv,DB.Thm),
   ("pow_0",pow_0,DB.Thm), ("pow_1",pow_1,DB.Thm), ("pow_2",pow_2,DB.Thm),
   ("pow_zero",pow_zero,DB.Thm), ("pow_zero_imp",pow_zero_imp,DB.Thm),
   ("le_pow2",le_pow2,DB.Thm), ("pow_pos_le",pow_pos_le,DB.Thm),
   ("pow_pos_lt",pow_pos_lt,DB.Thm), ("pow_le",pow_le,DB.Thm),
   ("pow_lt",pow_lt,DB.Thm), ("pow_lt2",pow_lt2,DB.Thm),
   ("pow_le_mono",pow_le_mono,DB.Thm),
   ("pow_pos_even",pow_pos_even,DB.Thm),
   ("pow_neg_odd",pow_neg_odd,DB.Thm), ("add_pow2",add_pow2,DB.Thm),
   ("pow_add",pow_add,DB.Thm), ("pow_mul",pow_mul,DB.Thm),
   ("pow_minus1",pow_minus1,DB.Thm),
   ("pow_not_infty",pow_not_infty,DB.Thm),
   ("sqrt_pos_le",sqrt_pos_le,DB.Thm), ("sqrt_pos_lt",sqrt_pos_lt,DB.Thm),
   ("pow2_sqrt",pow2_sqrt,DB.Thm), ("sqrt_pow2",sqrt_pow2,DB.Thm),
   ("sqrt_mono_le",sqrt_mono_le,DB.Thm),
   ("logr_not_infty",logr_not_infty,DB.Thm),
   ("half_between",half_between,DB.Thm),
   ("thirds_between",thirds_between,DB.Thm),
   ("half_cancel",half_cancel,DB.Thm),
   ("third_cancel",third_cancel,DB.Thm),
   ("fourth_cancel",fourth_cancel,DB.Thm),
   ("quotient_normal",quotient_normal,DB.Thm),
   ("ext_mono_increasing_suc",ext_mono_increasing_suc,DB.Thm),
   ("ext_mono_decreasing_suc",ext_mono_decreasing_suc,DB.Thm),
   ("EXTREAL_ARCH",EXTREAL_ARCH,DB.Thm),
   ("SIMP_REAL_ARCH",SIMP_REAL_ARCH,DB.Thm),
   ("SIMP_REAL_ARCH_NEG",SIMP_REAL_ARCH_NEG,DB.Thm),
   ("SIMP_EXTREAL_ARCH",SIMP_EXTREAL_ARCH,DB.Thm),
   ("REAL_ARCH_POW",REAL_ARCH_POW,DB.Thm),
   ("EXTREAL_ARCH_POW",EXTREAL_ARCH_POW,DB.Thm),
   ("EXTREAL_ARCH_POW_INV",EXTREAL_ARCH_POW_INV,DB.Thm),
   ("REAL_LE_MUL_EPSILON",REAL_LE_MUL_EPSILON,DB.Thm),
   ("le_epsilon",le_epsilon,DB.Thm),
   ("le_mul_epsilon",le_mul_epsilon,DB.Thm),
   ("EXTREAL_SUM_IMAGE_THM",EXTREAL_SUM_IMAGE_THM,DB.Thm),
   ("EXTREAL_SUM_IMAGE_NOT_NEG_INF",EXTREAL_SUM_IMAGE_NOT_NEG_INF,DB.Thm),
   ("EXTREAL_SUM_IMAGE_NOT_POS_INF",EXTREAL_SUM_IMAGE_NOT_POS_INF,DB.Thm),
   ("EXTREAL_SUM_IMAGE_NOT_INFTY",EXTREAL_SUM_IMAGE_NOT_INFTY,DB.Thm),
   ("EXTREAL_SUM_IMAGE_SING",EXTREAL_SUM_IMAGE_SING,DB.Thm),
   ("EXTREAL_SUM_IMAGE_POS",EXTREAL_SUM_IMAGE_POS,DB.Thm),
   ("EXTREAL_SUM_IMAGE_SPOS",EXTREAL_SUM_IMAGE_SPOS,DB.Thm),
   ("EXTREAL_SUM_IMAGE_IF_ELIM",EXTREAL_SUM_IMAGE_IF_ELIM,DB.Thm),
   ("EXTREAL_SUM_IMAGE_FINITE_SAME",EXTREAL_SUM_IMAGE_FINITE_SAME,DB.Thm),
   ("EXTREAL_SUM_IMAGE_FINITE_CONST",
    EXTREAL_SUM_IMAGE_FINITE_CONST,
    DB.Thm), ("EXTREAL_SUM_IMAGE_ZERO",EXTREAL_SUM_IMAGE_ZERO,DB.Thm),
   ("EXTREAL_SUM_IMAGE_0",EXTREAL_SUM_IMAGE_0,DB.Thm),
   ("EXTREAL_SUM_IMAGE_IN_IF",EXTREAL_SUM_IMAGE_IN_IF,DB.Thm),
   ("EXTREAL_SUM_IMAGE_CMUL",EXTREAL_SUM_IMAGE_CMUL,DB.Thm),
   ("EXTREAL_SUM_IMAGE_CMUL2",EXTREAL_SUM_IMAGE_CMUL2,DB.Thm),
   ("EXTREAL_SUM_IMAGE_IMAGE",EXTREAL_SUM_IMAGE_IMAGE,DB.Thm),
   ("EXTREAL_SUM_IMAGE_DISJOINT_UNION",
    EXTREAL_SUM_IMAGE_DISJOINT_UNION,
    DB.Thm),
   ("EXTREAL_SUM_IMAGE_EQ_CARD",EXTREAL_SUM_IMAGE_EQ_CARD,DB.Thm),
   ("EXTREAL_SUM_IMAGE_INV_CARD_EQ_1",
    EXTREAL_SUM_IMAGE_INV_CARD_EQ_1,
    DB.Thm),
   ("EXTREAL_SUM_IMAGE_INTER_NONZERO",
    EXTREAL_SUM_IMAGE_INTER_NONZERO,
    DB.Thm),
   ("EXTREAL_SUM_IMAGE_INTER_ELIM",EXTREAL_SUM_IMAGE_INTER_ELIM,DB.Thm),
   ("EXTREAL_SUM_IMAGE_ZERO_DIFF",EXTREAL_SUM_IMAGE_ZERO_DIFF,DB.Thm),
   ("EXTREAL_SUM_IMAGE_MONO",EXTREAL_SUM_IMAGE_MONO,DB.Thm),
   ("EXTREAL_SUM_IMAGE_MONO_SET",EXTREAL_SUM_IMAGE_MONO_SET,DB.Thm),
   ("EXTREAL_SUM_IMAGE_EQ",EXTREAL_SUM_IMAGE_EQ,DB.Thm),
   ("EXTREAL_SUM_IMAGE_POS_MEM_LE",EXTREAL_SUM_IMAGE_POS_MEM_LE,DB.Thm),
   ("EXTREAL_SUM_IMAGE_ADD",EXTREAL_SUM_IMAGE_ADD,DB.Thm),
   ("EXTREAL_SUM_IMAGE_SUB",EXTREAL_SUM_IMAGE_SUB,DB.Thm),
   ("EXTREAL_SUM_IMAGE_EXTREAL_SUM_IMAGE",
    EXTREAL_SUM_IMAGE_EXTREAL_SUM_IMAGE,
    DB.Thm), ("EXTREAL_SUM_IMAGE_NORMAL",EXTREAL_SUM_IMAGE_NORMAL,DB.Thm),
   ("EXTREAL_SUM_IMAGE_IN_IF_ALT",EXTREAL_SUM_IMAGE_IN_IF_ALT,DB.Thm),
   ("EXTREAL_SUM_IMAGE_CROSS_SYM",EXTREAL_SUM_IMAGE_CROSS_SYM,DB.Thm),
   ("EXTREAL_SUM_IMAGE_COUNT",EXTREAL_SUM_IMAGE_COUNT,DB.Thm),
   ("le_sup_imp",le_sup_imp,DB.Thm), ("sup_le",sup_le,DB.Thm),
   ("le_sup",le_sup,DB.Thm), ("sup_eq",sup_eq,DB.Thm),
   ("sup_const",sup_const,DB.Thm), ("sup_const_alt",sup_const_alt,DB.Thm),
   ("sup_const_over_set",sup_const_over_set,DB.Thm),
   ("sup_num",sup_num,DB.Thm), ("sup_le_sup_imp",sup_le_sup_imp,DB.Thm),
   ("sup_mono",sup_mono,DB.Thm), ("sup_suc",sup_suc,DB.Thm),
   ("sup_seq",sup_seq,DB.Thm), ("sup_lt_infty",sup_lt_infty,DB.Thm),
   ("sup_max",sup_max,DB.Thm), ("sup_add_mono",sup_add_mono,DB.Thm),
   ("sup_sum_mono",sup_sum_mono,DB.Thm),
   ("sup_le_mono",sup_le_mono,DB.Thm), ("sup_cmul",sup_cmul,DB.Thm),
   ("sup_lt",sup_lt,DB.Thm), ("sup_lt_epsilon",sup_lt_epsilon,DB.Thm),
   ("inf_le_imp",inf_le_imp,DB.Thm), ("le_inf",le_inf,DB.Thm),
   ("inf_le",inf_le,DB.Thm), ("inf_eq",inf_eq,DB.Thm),
   ("inf_const",inf_const,DB.Thm), ("inf_const_alt",inf_const_alt,DB.Thm),
   ("inf_const_over_set",inf_const_over_set,DB.Thm),
   ("inf_suc",inf_suc,DB.Thm), ("inf_seq",inf_seq,DB.Thm),
   ("inf_lt_infty",inf_lt_infty,DB.Thm), ("inf_min",inf_min,DB.Thm),
   ("inf_cminus",inf_cminus,DB.Thm),
   ("ext_suminf_add",ext_suminf_add,DB.Thm),
   ("ext_suminf_cmul",ext_suminf_cmul,DB.Thm),
   ("ext_suminf_cmul_alt",ext_suminf_cmul_alt,DB.Thm),
   ("ext_suminf_lt_infty",ext_suminf_lt_infty,DB.Thm),
   ("ext_suminf_suminf",ext_suminf_suminf,DB.Thm),
   ("ext_suminf_mono",ext_suminf_mono,DB.Thm),
   ("ext_suminf_sub",ext_suminf_sub,DB.Thm),
   ("ext_suminf_sum",ext_suminf_sum,DB.Thm), ("min_le",min_le,DB.Thm),
   ("min_le1",min_le1,DB.Thm), ("min_le2",min_le2,DB.Thm),
   ("le_min",le_min,DB.Thm), ("min_le2_imp",min_le2_imp,DB.Thm),
   ("min_refl",min_refl,DB.Thm), ("min_comm",min_comm,DB.Thm),
   ("min_infty",min_infty,DB.Thm), ("le_max",le_max,DB.Thm),
   ("le_max1",le_max1,DB.Thm), ("le_max2",le_max2,DB.Thm),
   ("max_le",max_le,DB.Thm), ("max_le2_imp",max_le2_imp,DB.Thm),
   ("max_refl",max_refl,DB.Thm), ("max_comm",max_comm,DB.Thm),
   ("max_infty",max_infty,DB.Thm), ("Q_not_infty",Q_not_infty,DB.Thm),
   ("Q_COUNTABLE",Q_COUNTABLE,DB.Thm), ("NUM_IN_Q",NUM_IN_Q,DB.Thm),
   ("Q_INFINITE",Q_INFINITE,DB.Thm), ("OPP_IN_Q",OPP_IN_Q,DB.Thm),
   ("INV_IN_Q",INV_IN_Q,DB.Thm), ("CMUL_IN_Q",CMUL_IN_Q,DB.Thm),
   ("ADD_IN_Q",ADD_IN_Q,DB.Thm), ("SUB_IN_Q",SUB_IN_Q,DB.Thm),
   ("MUL_IN_Q",MUL_IN_Q,DB.Thm), ("DIV_IN_Q",DIV_IN_Q,DB.Thm),
   ("rat_not_infty",rat_not_infty,DB.Thm),
   ("CEILING_LBOUND",CEILING_LBOUND,DB.Thm),
   ("CEILING_UBOUND",CEILING_UBOUND,DB.Thm),
   ("Q_DENSE_IN_R_LEMMA",Q_DENSE_IN_R_LEMMA,DB.Thm),
   ("Q_DENSE_IN_R",Q_DENSE_IN_R,DB.Thm),
   ("COUNTABLE_ENUM_Q",COUNTABLE_ENUM_Q,DB.Thm),
   ("CROSS_COUNTABLE_UNIV",CROSS_COUNTABLE_UNIV,DB.Thm),
   ("CROSS_COUNTABLE_LEMMA1",CROSS_COUNTABLE_LEMMA1,DB.Thm),
   ("CROSS_COUNTABLE_LEMMA2",CROSS_COUNTABLE_LEMMA2,DB.Thm),
   ("CROSS_COUNTABLE",CROSS_COUNTABLE,DB.Thm),
   ("COUNTABLE_RATIONAL_INTERVALS",COUNTABLE_RATIONAL_INTERVALS,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("util_probTheory.util_prob_grammars",
                          util_probTheory.util_prob_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "extreal"
  val _ = update_grms temp_add_type "extreal"








  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NegInf", (Term.prim_mk_const { Name = "NegInf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NegInf", (Term.prim_mk_const { Name = "NegInf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PosInf", (Term.prim_mk_const { Name = "PosInf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PosInf", (Term.prim_mk_const { Name = "PosInf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Normal", (Term.prim_mk_const { Name = "Normal", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Normal", (Term.prim_mk_const { Name = "Normal", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_CASE", (Term.prim_mk_const { Name = "extreal_CASE", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_size", (Term.prim_mk_const { Name = "extreal_size", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_of_num", (Term.prim_mk_const { Name = "extreal_of_num", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_of_num", (Term.prim_mk_const { Name = "extreal_of_num", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real", (Term.prim_mk_const { Name = "real", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real", (Term.prim_mk_const { Name = "real", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_add_tupled", (Term.prim_mk_const { Name = "extreal_add_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_add_tupled", (Term.prim_mk_const { Name = "extreal_add_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_add", (Term.prim_mk_const { Name = "extreal_add", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_add", (Term.prim_mk_const { Name = "extreal_add", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sub_tupled", (Term.prim_mk_const { Name = "extreal_sub_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sub_tupled", (Term.prim_mk_const { Name = "extreal_sub_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sub", (Term.prim_mk_const { Name = "extreal_sub", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sub", (Term.prim_mk_const { Name = "extreal_sub", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_le_tupled", (Term.prim_mk_const { Name = "extreal_le_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_le_tupled", (Term.prim_mk_const { Name = "extreal_le_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_le", (Term.prim_mk_const { Name = "extreal_le", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_le", (Term.prim_mk_const { Name = "extreal_le", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_lt", (Term.prim_mk_const { Name = "extreal_lt", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_lt", (Term.prim_mk_const { Name = "extreal_lt", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_mul_tupled", (Term.prim_mk_const { Name = "extreal_mul_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_mul_tupled", (Term.prim_mk_const { Name = "extreal_mul_tupled", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_mul", (Term.prim_mk_const { Name = "extreal_mul", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_mul", (Term.prim_mk_const { Name = "extreal_mul", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_inv", (Term.prim_mk_const { Name = "extreal_inv", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_ainv", (Term.prim_mk_const { Name = "extreal_ainv", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_div", (Term.prim_mk_const { Name = "extreal_div", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_div", (Term.prim_mk_const { Name = "extreal_div", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_abs", (Term.prim_mk_const { Name = "extreal_abs", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_abs", (Term.prim_mk_const { Name = "extreal_abs", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_logr", (Term.prim_mk_const { Name = "extreal_logr", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_lg", (Term.prim_mk_const { Name = "extreal_lg", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_lg", (Term.prim_mk_const { Name = "extreal_lg", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_exp", (Term.prim_mk_const { Name = "extreal_exp", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_pow", (Term.prim_mk_const { Name = "extreal_pow", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sqrt", (Term.prim_mk_const { Name = "extreal_sqrt", Thy = "extreal"}))
  val _ = update_grms temp_add_numeral_form (#"x", SOME "extreal_of_num")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "extreal_add", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "extreal_sub", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "extreal_mul", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "extreal_div", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "extreal_le", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "extreal_lt", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "extreal_ainv", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numeric_negate", (Term.prim_mk_const { Name = "extreal_ainv", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inv", (Term.prim_mk_const { Name = "extreal_inv", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("abs", (Term.prim_mk_const { Name = "extreal_abs", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("logr", (Term.prim_mk_const { Name = "extreal_logr", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lg", (Term.prim_mk_const { Name = "extreal_lg", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("exp", (Term.prim_mk_const { Name = "extreal_exp", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pow", (Term.prim_mk_const { Name = "extreal_pow", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sqrt", (Term.prim_mk_const { Name = "extreal_sqrt", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono_increasing", (Term.prim_mk_const { Name = "mono_increasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono_increasing", (Term.prim_mk_const { Name = "mono_increasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono_decreasing", (Term.prim_mk_const { Name = "mono_decreasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono_decreasing", (Term.prim_mk_const { Name = "mono_decreasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ext_mono_increasing", (Term.prim_mk_const { Name = "ext_mono_increasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ext_mono_increasing", (Term.prim_mk_const { Name = "ext_mono_increasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ext_mono_decreasing", (Term.prim_mk_const { Name = "ext_mono_decreasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ext_mono_decreasing", (Term.prim_mk_const { Name = "ext_mono_decreasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono_increasing", (Term.prim_mk_const { Name = "ext_mono_increasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mono_decreasing", (Term.prim_mk_const { Name = "ext_mono_decreasing", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXTREAL_SUM_IMAGE", (Term.prim_mk_const { Name = "EXTREAL_SUM_IMAGE", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXTREAL_SUM_IMAGE", (Term.prim_mk_const { Name = "EXTREAL_SUM_IMAGE", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SIGMA", (Term.prim_mk_const { Name = "EXTREAL_SUM_IMAGE", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sup", (Term.prim_mk_const { Name = "extreal_sup", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_sup", (Term.prim_mk_const { Name = "extreal_sup", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_inf", (Term.prim_mk_const { Name = "extreal_inf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_inf", (Term.prim_mk_const { Name = "extreal_inf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sup", (Term.prim_mk_const { Name = "extreal_sup", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inf", (Term.prim_mk_const { Name = "extreal_inf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ext_suminf", (Term.prim_mk_const { Name = "ext_suminf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ext_suminf", (Term.prim_mk_const { Name = "ext_suminf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("suminf", (Term.prim_mk_const { Name = "ext_suminf", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_min", (Term.prim_mk_const { Name = "extreal_min", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_min", (Term.prim_mk_const { Name = "extreal_min", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_max", (Term.prim_mk_const { Name = "extreal_max", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extreal_max", (Term.prim_mk_const { Name = "extreal_max", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("min", (Term.prim_mk_const { Name = "extreal_min", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("max", (Term.prim_mk_const { Name = "extreal_max", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Q_set", (Term.prim_mk_const { Name = "Q_set", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Q_set", (Term.prim_mk_const { Name = "Q_set", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ceiling", (Term.prim_mk_const { Name = "ceiling", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("open_interval", (Term.prim_mk_const { Name = "open_interval", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("open_interval", (Term.prim_mk_const { Name = "open_interval", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("open_intervals_set", (Term.prim_mk_const { Name = "open_intervals_set", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("open_intervals_set", (Term.prim_mk_const { Name = "open_intervals_set", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rational_intervals", (Term.prim_mk_const { Name = "rational_intervals", Thy = "extreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rational_intervals", (Term.prim_mk_const { Name = "rational_intervals", Thy = "extreal"}))
  val extreal_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG extreal_Axiom,
           case_def=extreal_case_def,
           case_cong=extreal_case_cong,
           induction=ORIG extreal_induction,
           nchotomy=extreal_nchotomy,
           size=SOME(Parse.Term`(extreal$extreal_size) :(extreal$extreal) -> (num$num)`,
                     ORIG extreal_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME extreal_11,
           distinct=SOME extreal_distinct,
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
    thy = "extreal",
    thydataty = "compute",
    data =
        "extreal.extreal_of_num_def extreal.extreal_pow_def extreal.rational_intervals_def extreal.open_intervals_set_def extreal.open_interval_def extreal.ceiling_def extreal.Q_set_def extreal.extreal_max_def extreal.extreal_min_def extreal.ext_suminf_def extreal.extreal_inf_def extreal.extreal_sup_def extreal.ext_mono_decreasing_def extreal.ext_mono_increasing_def extreal.mono_decreasing_def extreal.mono_increasing_def extreal.extreal_sqrt_def extreal.extreal_sub_def extreal.extreal_exp_def extreal.extreal_lg_def extreal.extreal_logr_def extreal.extreal_abs_def extreal.extreal_div_def extreal.extreal_ainv_def extreal.extreal_inv_def extreal.extreal_mul_def extreal.extreal_lt_def extreal.extreal_le_def extreal.real_def extreal.extreal_add_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "extreal"
end
