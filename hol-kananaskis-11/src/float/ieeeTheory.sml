structure ieeeTheory :> ieeeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ieeeTheory ... " else ()
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
          ("ieee",
          Arbnum.fromString "1488589615",
          Arbnum.fromString "478858")
          [("transc",
           Arbnum.fromString "1488589315",
           Arbnum.fromString "197602")];
  val _ = Theory.incorporate_types "ieee"
       [("roundmode", 0), ("float", 0), ("ccode", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("num", "num"),
   ID("realax", "real"), ID("ieee", "roundmode"), ID("ieee", "ccode"),
   ID("min", "bool"), ID("ieee", "float"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("arithmetic", "-"), ID("real", "/"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">="), ID("bool", "?"), ID("min", "@"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bool", "COND"),
   ID("bool", "DATATYPE"), ID("arithmetic", "EVEN"),
   ID("arithmetic", "EXP"), ID("ieee", "Eq"), ID("ieee", "Exponent"),
   ID("ieee", "Finite"), ID("ieee", "Float"), ID("ieee", "Fraction"),
   ID("pred_set", "GSPEC"), ID("ieee", "Gt"), ID("combin", "I"),
   ID("bool", "IN"), ID("ieee", "Infinity"), ID("ieee", "Isdenormal"),
   ID("ieee", "Isintegral"), ID("ieee", "Isnan"), ID("ieee", "Isnormal"),
   ID("ieee", "Iszero"), ID("bool", "LET"), ID("ieee", "Lt"),
   ID("ieee", "Minus_infinity"), ID("ieee", "Minus_zero"),
   ID("arithmetic", "NUMERAL"), ID("ieee", "Plus_infinity"),
   ID("ieee", "Plus_zero"), ID("ieee", "ROUNDFLOAT"), ID("num", "SUC"),
   ID("ieee", "Sign"), ID("bool", "T"), ID("bool", "TYPE_DEFINITION"),
   ID("ieee", "To_nearest"), ID("ieee", "To_ninfinity"),
   ID("ieee", "To_pinfinity"), ID("ieee", "Ulp"), ID("ieee", "Un"),
   ID("ieee", "Val"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("real", "abs"), ID("ieee", "bias"), ID("ieee", "bottomfloat"),
   ID("ieee", "ccode2num"), ID("ieee", "ccode_CASE"),
   ID("ieee", "ccode_size"), ID("ieee", "closest"), ID("ieee", "defloat"),
   ID("ieee", "emax"), ID("ieee", "encoding"), ID("ieee", "exponent"),
   ID("ieee", "expwidth"), ID("ieee", "fadd"), ID("ieee", "fcompare"),
   ID("ieee", "fdiv"), ID("ieee", "feq"), ID("ieee", "fge"),
   ID("ieee", "fgt"), ID("ieee", "fintrnd"), ID("ieee", "fle"),
   ID("ieee", "float_To_zero"), ID("ieee", "float_abs"),
   ID("ieee", "float_add"), ID("ieee", "float_div"),
   ID("ieee", "float_eq"), ID("ieee", "float_format"),
   ID("ieee", "float_ge"), ID("ieee", "float_gt"), ID("ieee", "float_le"),
   ID("ieee", "float_lt"), ID("ieee", "float_mul"),
   ID("ieee", "float_neg"), ID("ieee", "float_rem"),
   ID("ieee", "float_sqrt"), ID("ieee", "float_sub"), ID("ieee", "flt"),
   ID("ieee", "fmul"), ID("ieee", "fneg"), ID("ieee", "fraction"),
   ID("ieee", "fracwidth"), ID("ieee", "frem"), ID("ieee", "fsqrt"),
   ID("ieee", "fsub"), ID("ieee", "intround"), ID("realax", "inv"),
   ID("ieee", "is_closest"), ID("ieee", "is_denormal"),
   ID("ieee", "is_double"), ID("ieee", "is_double_extended"),
   ID("ieee", "is_finite"), ID("ieee", "is_infinity"),
   ID("ieee", "is_integral"), ID("ieee", "is_nan"),
   ID("ieee", "is_normal"), ID("ieee", "is_single"),
   ID("ieee", "is_single_extended"), ID("ieee", "is_valid"),
   ID("ieee", "is_zero"), ID("ieee", "largest"), ID("ieee", "minus"),
   ID("ieee", "minus_infinity"), ID("ieee", "minus_zero"),
   ID("ieee", "num2ccode"), ID("ieee", "num2roundmode"),
   ID("ieee", "plus_infinity"), ID("ieee", "plus_zero"), ID("real", "pow"),
   ID("realax", "real_add"), ID("real", "real_ge"), ID("real", "real_gt"),
   ID("realax", "real_lt"), ID("real", "real_lte"),
   ID("realax", "real_mul"), ID("realax", "real_neg"),
   ID("real", "real_of_num"), ID("real", "real_sub"), ID("ieee", "rem"),
   ID("ieee", "round"), ID("ieee", "roundmode2num"),
   ID("ieee", "roundmode_CASE"), ID("ieee", "roundmode_size"),
   ID("ieee", "sign"), ID("ieee", "some_nan"), ID("transc", "sqrt"),
   ID("ieee", "threshold"), ID("ieee", "topfloat"), ID("ieee", "ulp"),
   ID("ieee", "valof"), ID("ieee", "wordlength"), ID("ieee", "zerosign"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0, 0], TYOP [1, 0, 1], TYOP [0, 2, 2],
   TYOP [0, 0, 3], TYOP [0, 1, 4], TYOP [0, 1, 0], TYOP [3],
   TYOP [0, 2, 7], TYOP [0, 1, 8], TYOP [0, 1, 2], TYOP [0, 1, 7],
   TYOP [0, 2, 0], TYOP [4], TYOP [0, 13, 0], TYV "'a", TYOP [0, 15, 15],
   TYOP [0, 15, 16], TYOP [0, 15, 17], TYOP [0, 15, 18], TYOP [0, 13, 19],
   TYOP [0, 7, 2], TYOP [0, 13, 21], TYOP [0, 1, 22], TYOP [0, 7, 7],
   TYOP [0, 7, 24], TYOP [0, 0, 13], TYOP [5], TYOP [0, 0, 27],
   TYOP [0, 1, 3], TYOP [6], TYOP [0, 2, 30], TYOP [0, 1, 31],
   TYOP [0, 1, 30], TYOP [0, 15, 30], TYOP [0, 7, 34], TYOP [0, 34, 35],
   TYOP [0, 15, 7], TYOP [0, 37, 36], TYOP [0, 2, 3], TYOP [0, 13, 39],
   TYOP [0, 1, 40], TYOP [0, 13, 3], TYOP [0, 1, 42], TYOP [0, 2, 31],
   TYOP [0, 1, 44], TYOP [7], TYOP [0, 46, 46], TYOP [0, 46, 47],
   TYOP [0, 46, 30], TYOP [0, 46, 49], TYOP [0, 2, 46], TYOP [0, 2, 27],
   TYOP [0, 2, 52], TYOP [0, 1, 53], TYOP [0, 1, 12], TYOP [0, 46, 2],
   TYOP [0, 7, 15], TYOP [0, 34, 57], TYOP [0, 34, 58], TYOP [0, 37, 59],
   TYOP [0, 27, 0], TYOP [0, 27, 19], TYOP [0, 46, 7], TYOP [0, 46, 0],
   TYOP [0, 7, 46], TYOP [0, 27, 30], TYOP [0, 13, 30], TYOP [0, 27, 66],
   TYOP [0, 27, 68], TYOP [0, 27, 69], TYOP [0, 27, 15], TYOP [0, 13, 15],
   TYOP [0, 13, 67], TYOP [0, 13, 73], TYOP [0, 13, 74], TYOP [0, 34, 30],
   TYOP [0, 66, 30], TYOP [0, 49, 30], TYOP [0, 76, 30], TYOP [0, 37, 30],
   TYOP [0, 80, 30], TYOP [0, 77, 30], TYOP [0, 67, 30], TYOP [0, 83, 30],
   TYOP [0, 0, 30], TYOP [0, 85, 30], TYOP [0, 33, 30], TYOP [0, 31, 30],
   TYOP [0, 7, 30], TYOP [0, 89, 30], TYOP [0, 0, 0], TYOP [0, 0, 91],
   TYOP [0, 0, 1], TYOP [0, 0, 93], TYOP [0, 0, 10], TYOP [1, 2, 30],
   TYOP [0, 30, 96], TYOP [0, 2, 97], TYOP [1, 7, 30], TYOP [0, 30, 99],
   TYOP [0, 7, 100], TYOP [0, 30, 30], TYOP [0, 30, 102], TYOP [0, 0, 85],
   TYOP [0, 15, 34], TYOP [0, 1, 33], TYOP [0, 7, 89], TYOP [0, 71, 30],
   TYOP [0, 108, 30], TYOP [0, 61, 30], TYOP [0, 110, 30],
   TYOP [0, 56, 30], TYOP [0, 112, 30], TYOP [0, 72, 30],
   TYOP [0, 114, 30], TYOP [0, 14, 30], TYOP [0, 116, 30],
   TYOP [0, 34, 15], TYOP [0, 31, 2], TYOP [0, 30, 17], TYOP [0, 27, 27],
   TYOP [0, 27, 121], TYOP [0, 30, 122], TYOP [0, 30, 48],
   TYOP [0, 30, 92], TYOP [0, 30, 39], TYOP [0, 30, 25], TYOP [0, 2, 96],
   TYOP [0, 128, 31], TYOP [0, 7, 99], TYOP [0, 130, 89], TYOP [0, 15, 76],
   TYOP [0, 24, 24], TYOP [0, 85, 110], TYOP [0, 85, 116],
   TYOP [0, 31, 112], TYOP [0, 31, 21], TYOP [0, 31, 137],
   TYOP [0, 8, 138], TYOP [0, 89, 24], TYOP [0, 89, 140],
   TYOP [0, 24, 141], TYOP [0, 0, 7], TYOP [0, 7, 143]]
  end
  val _ = Theory.incorporate_consts "ieee" tyvector
     [("zerosign", 5), ("wordlength", 6), ("valof", 9), ("ulp", 9),
      ("topfloat", 10), ("threshold", 11), ("some_nan", 10), ("sign", 12),
      ("roundmode_size", 14), ("roundmode_CASE", 20),
      ("roundmode2num", 14), ("round", 23), ("rem", 25), ("plus_zero", 10),
      ("plus_infinity", 10), ("num2roundmode", 26), ("num2ccode", 28),
      ("minus_zero", 10), ("minus_infinity", 10), ("minus", 29),
      ("largest", 11), ("is_zero", 32), ("is_valid", 32),
      ("is_single_extended", 33), ("is_single", 33), ("is_normal", 32),
      ("is_nan", 32), ("is_integral", 32), ("is_infinity", 32),
      ("is_finite", 32), ("is_double_extended", 33), ("is_double", 33),
      ("is_denormal", 32), ("is_closest", 38), ("intround", 23),
      ("fsub", 41), ("fsqrt", 43), ("frem", 41), ("fracwidth", 6),
      ("fraction", 12), ("fneg", 43), ("fmul", 41), ("flt", 45),
      ("float_sub", 48), ("float_sqrt", 47), ("float_rem", 48),
      ("float_neg", 47), ("float_mul", 48), ("float_lt", 50),
      ("float_le", 50), ("float_gt", 50), ("float_ge", 50),
      ("float_format", 1), ("float_eq", 50), ("float_div", 48),
      ("float_add", 48), ("float_abs", 47), ("float_To_zero", 13),
      ("float", 51), ("fle", 45), ("fintrnd", 43), ("fgt", 45),
      ("fge", 45), ("feq", 45), ("fdiv", 41), ("fcompare", 54),
      ("fadd", 41), ("expwidth", 6), ("exponent", 12), ("encoding", 55),
      ("emax", 6), ("defloat", 56), ("closest", 60), ("ccode_size", 61),
      ("ccode_CASE", 62), ("ccode2num", 61), ("bottomfloat", 10),
      ("bias", 6), ("Val", 63), ("Un", 27), ("Ulp", 63),
      ("To_pinfinity", 13), ("To_ninfinity", 13), ("To_nearest", 13),
      ("Sign", 64), ("ROUNDFLOAT", 47), ("Plus_zero", 46),
      ("Plus_infinity", 46), ("Minus_zero", 46), ("Minus_infinity", 46),
      ("Lt", 27), ("Iszero", 49), ("Isnormal", 49), ("Isnan", 49),
      ("Isintegral", 49), ("Isdenormal", 49), ("Infinity", 49), ("Gt", 27),
      ("Fraction", 64), ("Float", 65), ("Finite", 49), ("Exponent", 64),
      ("Eq", 27)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 27), TMV("M", 13), TMV("M'", 27), TMV("M'", 13), TMV("P", 66),
   TMV("P", 67), TMV("X", 1), TMV("a", 15), TMV("a", 27), TMV("a", 46),
   TMV("a", 2), TMV("a", 13), TMV("a'", 27), TMV("a'", 13), TMV("b", 15),
   TMV("b", 46), TMV("b", 2), TMV("ccode", 70), TMV("e", 0), TMV("ew", 0),
   TMV("f", 71), TMV("f", 72), TMV("f", 0), TMV("fw", 0), TMV("m", 0),
   TMV("m", 13), TMV("n", 0), TMV("n", 7), TMV("p", 34), TMV("r", 0),
   TMV("r", 2), TMV("r'", 0), TMV("rep", 61), TMV("rep", 56),
   TMV("rep", 14), TMV("roundmode", 75), TMV("s", 34), TMV("s", 0),
   TMV("v", 37), TMV("v0", 15), TMV("v0'", 15), TMV("v1", 15),
   TMV("v1'", 15), TMV("v2", 15), TMV("v2'", 15), TMV("v3", 15),
   TMV("v3'", 15), TMV("x", 27), TMV("x", 2), TMV("x", 7), TMV("x", 13),
   TMV("x0", 15), TMV("x1", 15), TMV("x2", 15), TMV("x3", 15), TMV("y", 7),
   TMC(8, 76), TMC(8, 77), TMC(8, 78), TMC(8, 79), TMC(8, 81), TMC(8, 82),
   TMC(8, 84), TMC(8, 86), TMC(8, 87), TMC(8, 88), TMC(8, 90), TMC(8, 83),
   TMC(9, 92), TMC(10, 92), TMC(11, 94), TMC(11, 95), TMC(11, 98),
   TMC(11, 101), TMC(12, 92), TMC(13, 25), TMC(14, 103), TMC(15, 0),
   TMC(16, 104), TMC(17, 105), TMC(17, 103), TMC(17, 68), TMC(17, 50),
   TMC(17, 104), TMC(17, 106), TMC(17, 44), TMC(17, 107), TMC(17, 73),
   TMC(18, 103), TMC(19, 104), TMC(20, 76), TMC(20, 77), TMC(20, 109),
   TMC(20, 111), TMC(20, 113), TMC(20, 115), TMC(20, 117), TMC(20, 86),
   TMC(20, 83), TMC(21, 118), TMC(21, 119), TMC(22, 91), TMC(23, 91),
   TMC(24, 120), TMC(24, 123), TMC(24, 124), TMC(24, 125), TMC(24, 126),
   TMC(24, 127), TMC(25, 102), TMC(26, 85), TMC(27, 92), TMC(28, 27),
   TMC(29, 64), TMC(30, 49), TMC(31, 65), TMC(32, 64), TMC(33, 129),
   TMC(33, 131), TMC(34, 27), TMC(35, 24), TMC(36, 132), TMC(37, 49),
   TMC(38, 49), TMC(39, 49), TMC(40, 49), TMC(41, 49), TMC(42, 49),
   TMC(43, 133), TMC(44, 27), TMC(45, 46), TMC(46, 46), TMC(47, 91),
   TMC(48, 46), TMC(49, 46), TMC(50, 47), TMC(51, 91), TMC(52, 64),
   TMC(53, 30), TMC(54, 134), TMC(54, 135), TMC(54, 136), TMC(55, 13),
   TMC(56, 13), TMC(57, 13), TMC(58, 63), TMC(59, 27), TMC(60, 63),
   TMC(61, 0), TMC(62, 103), TMC(63, 24), TMC(64, 6), TMC(65, 10),
   TMC(66, 61), TMC(67, 62), TMC(68, 61), TMC(69, 60), TMC(69, 139),
   TMC(69, 142), TMC(70, 56), TMC(71, 6), TMC(72, 55), TMC(73, 12),
   TMC(74, 6), TMC(75, 41), TMC(76, 54), TMC(77, 41), TMC(78, 45),
   TMC(79, 45), TMC(80, 45), TMC(81, 43), TMC(82, 45), TMC(7, 51),
   TMC(83, 13), TMC(84, 47), TMC(85, 48), TMC(86, 48), TMC(87, 50),
   TMC(88, 1), TMC(89, 50), TMC(90, 50), TMC(91, 50), TMC(92, 50),
   TMC(93, 48), TMC(94, 47), TMC(95, 48), TMC(96, 47), TMC(97, 48),
   TMC(98, 45), TMC(99, 41), TMC(100, 43), TMC(101, 12), TMC(102, 6),
   TMC(103, 41), TMC(104, 43), TMC(105, 41), TMC(106, 23), TMC(107, 24),
   TMC(108, 38), TMC(109, 32), TMC(110, 33), TMC(111, 33), TMC(112, 32),
   TMC(113, 32), TMC(114, 32), TMC(115, 32), TMC(116, 32), TMC(117, 33),
   TMC(118, 33), TMC(119, 32), TMC(120, 32), TMC(121, 11), TMC(122, 29),
   TMC(123, 10), TMC(124, 10), TMC(125, 28), TMC(126, 26), TMC(127, 10),
   TMC(128, 10), TMC(129, 144), TMC(130, 25), TMC(131, 107), TMC(132, 107),
   TMC(133, 107), TMC(134, 107), TMC(135, 25), TMC(136, 24), TMC(137, 143),
   TMC(138, 25), TMC(139, 25), TMC(140, 23), TMC(141, 14), TMC(142, 20),
   TMC(143, 14), TMC(144, 12), TMC(145, 10), TMC(146, 24), TMC(147, 11),
   TMC(148, 10), TMC(149, 9), TMC(150, 9), TMC(151, 6), TMC(152, 5),
   TMC(153, 102)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op expwidth x = x
    val op expwidth =
    DT(((("ieee",0),[("pair",[16])]),["DISK_THM"]),
       [read"%63%19%63%23%83%163%70$1@$0@@@$1@|@|@"])
  fun op fracwidth x = x
    val op fracwidth =
    DT(((("ieee",1),[("pair",[16])]),["DISK_THM"]),
       [read"%63%19%63%23%83%192%70$1@$0@@@$0@|@|@"])
  fun op wordlength x = x
    val op wordlength =
    DT(((("ieee",2),[]),[]),
       [read"%64%6%83%241$0@@%69%69%163$0@@%192$0@@@%132%101%148@@@@|@"])
  fun op emax x = x
    val op emax =
    DT(((("ieee",3),[]),[]),
       [read"%64%6%83%160$0@@%74%111%132%102%148@@@%163$0@@@%132%101%148@@@@|@"])
  fun op bias x = x
    val op bias =
    DT(((("ieee",4),[]),[]),
       [read"%64%6%83%151$0@@%74%111%132%102%148@@@%74%163$0@@%132%101%148@@@@@%132%101%148@@@@|@"])
  fun op is_single x = x
    val op is_single =
    DT(((("ieee",5),[]),[]),
       [read"%64%6%80%207$0@@%76%83%163$0@@%132%102%101%101%148@@@@@@%83%241$0@@%132%102%101%101%101%101%148@@@@@@@@@|@"])
  fun op is_double x = x
    val op is_double =
    DT(((("ieee",6),[]),[]),
       [read"%64%6%80%200$0@@%76%83%163$0@@%132%101%101%102%148@@@@@@%83%241$0@@%132%102%101%101%101%101%101%148@@@@@@@@@@|@"])
  fun op is_single_extended x = x
    val op is_single_extended =
    DT(((("ieee",7),[]),[]),
       [read"%64%6%80%208$0@@%76%89%163$0@@%132%101%101%102%148@@@@@@%89%241$0@@%132%101%101%102%102%101%148@@@@@@@@@|@"])
  fun op is_double_extended x = x
    val op is_double_extended =
    DT(((("ieee",8),[]),[]),
       [read"%64%6%80%201$0@@%76%89%163$0@@%132%101%101%101%101%148@@@@@@@%89%241$0@@%132%101%101%101%101%102%101%148@@@@@@@@@@|@"])
  fun op sign x = x
    val op sign =
    DT(((("ieee",9),[("pair",[16])]),["DISK_THM"]),
       [read"%63%37%63%18%63%22%83%234%71$2@%70$1@$0@@@@$2@|@|@|@"])
  fun op exponent x = x
    val op exponent =
    DT(((("ieee",10),[("pair",[16])]),["DISK_THM"]),
       [read"%63%37%63%18%63%22%83%162%71$2@%70$1@$0@@@@$1@|@|@|@"])
  fun op fraction x = x
    val op fraction =
    DT(((("ieee",11),[("pair",[16])]),["DISK_THM"]),
       [read"%63%37%63%18%63%22%83%191%71$2@%70$1@$0@@@@$0@|@|@|@"])
  fun op is_nan x = x
    val op is_nan =
    DT(((("ieee",12),[]),[]),
       [read"%64%6%65%10%80%205$1@$0@@%76%83%162$0@@%160$1@@@%243%83%191$0@@%77@@@@|@|@"])
  fun op is_infinity x = x
    val op is_infinity =
    DT(((("ieee",13),[]),[]),
       [read"%64%6%65%10%80%203$1@$0@@%76%83%162$0@@%160$1@@@%83%191$0@@%77@@@|@|@"])
  fun op is_normal x = x
    val op is_normal =
    DT(((("ieee",14),[]),[]),
       [read"%64%6%65%10%80%206$1@$0@@%76%78%77@%162$0@@@%78%162$0@@%160$1@@@@|@|@"])
  fun op is_denormal x = x
    val op is_denormal =
    DT(((("ieee",15),[]),[]),
       [read"%64%6%65%10%80%199$1@$0@@%76%83%162$0@@%77@@%243%83%191$0@@%77@@@@|@|@"])
  fun op is_zero x = x
    val op is_zero =
    DT(((("ieee",16),[]),[]),
       [read"%64%6%65%10%80%210$1@$0@@%76%83%162$0@@%77@@%83%191$0@@%77@@@|@|@"])
  fun op is_valid x = x
    val op is_valid =
    DT(((("ieee",17),[("pair",[16])]),["DISK_THM"]),
       [read"%64%6%63%37%63%18%63%22%80%209$3@%71$2@%70$1@$0@@@@%76%78$2@%136%136%77@@@@%76%78$1@%111%132%102%148@@@%163$3@@@@%78$0@%111%132%102%148@@@%192$3@@@@@@|@|@|@|@"])
  fun op is_finite x = x
    val op is_finite =
    DT(((("ieee",18),[]),[]),
       [read"%64%6%65%10%80%202$1@$0@@%76%209$1@$0@@%149%206$1@$0@@%149%199$1@$0@@%210$1@$0@@@@@|@|@"])
  fun op plus_infinity x = x
    val op plus_infinity =
    DT(((("ieee",19),[]),[]),
       [read"%64%6%85%217$0@@%71%77@%70%160$0@@%77@@@|@"])
  fun op minus_infinity x = x
    val op minus_infinity =
    DT(((("ieee",20),[]),[]),
       [read"%64%6%85%213$0@@%71%132%101%148@@@%70%160$0@@%77@@@|@"])
  fun op plus_zero x = x
    val op plus_zero =
    DT(((("ieee",21),[]),[]),
       [read"%64%6%85%218$0@@%71%77@%70%77@%77@@@|@"])
  fun op minus_zero x = x
    val op minus_zero =
    DT(((("ieee",22),[]),[]),
       [read"%64%6%85%214$0@@%71%132%101%148@@@%70%77@%77@@@|@"])
  fun op topfloat x = x
    val op topfloat =
    DT(((("ieee",23),[]),[]),
       [read"%64%6%85%238$0@@%71%77@%70%74%160$0@@%132%101%148@@@@%74%111%132%102%148@@@%192$0@@@%132%101%148@@@@@@|@"])
  fun op bottomfloat x = x
    val op bottomfloat =
    DT(((("ieee",24),[]),[]),
       [read"%64%6%85%152$0@@%71%132%101%148@@@%70%74%160$0@@%132%101%148@@@@%74%111%132%102%148@@@%192$0@@@%132%101%148@@@@@@|@"])
  fun op minus x = x
    val op minus =
    DT(((("ieee",25),[]),[]),
       [read"%64%6%65%10%85%212$1@$0@@%71%74%132%101%148@@@%234$0@@@%70%162$0@@%191$0@@@@|@|@"])
  fun op encoding x = x
    val op encoding =
    DT(((("ieee",26),[("pair",[16])]),["DISK_THM"]),
       [read"%64%6%63%37%63%18%63%22%83%161$3@%71$2@%70$1@$0@@@@%69%69%68$2@%111%132%102%148@@@%74%241$3@@%132%101%148@@@@@@%68$1@%111%132%102%148@@@%192$3@@@@@$0@@|@|@|@|@"])
  fun op valof x = x
    val op valof =
    DT(((("ieee",27),[("pair",[16])]),["DISK_THM"]),
       [read"%64%6%63%37%63%18%63%22%86%240$3@%71$2@%70$1@$0@@@@%108%83$1@%77@@%225%225%219%226%227%132%101%148@@@@@$2@@%75%227%132%102%148@@@@%219%227%132%102%148@@@@%151$3@@@@@%75%227$0@@%219%227%132%102%148@@@@%192$3@@@@@%225%225%219%226%227%132%101%148@@@@@$2@@%75%219%227%132%102%148@@@@$1@@%219%227%132%102%148@@@@%151$3@@@@@%220%227%132%101%148@@@@%75%227$0@@%219%227%132%102%148@@@@%192$3@@@@@@@|@|@|@|@"])
  fun op largest x = x
    val op largest =
    DT(((("ieee",28),[]),[]),
       [read"%64%6%86%211$0@@%225%75%219%227%132%102%148@@@@%74%160$0@@%132%101%148@@@@@%219%227%132%102%148@@@@%151$0@@@@%228%227%132%102%148@@@@%197%219%227%132%102%148@@@@%192$0@@@@@@|@"])
  fun op threshold x = x
    val op threshold =
    DT(((("ieee",29),[]),[]),
       [read"%64%6%86%237$0@@%225%75%219%227%132%102%148@@@@%74%160$0@@%132%101%148@@@@@%219%227%132%102%148@@@@%151$0@@@@%228%227%132%102%148@@@@%197%219%227%132%102%148@@@@%136%192$0@@@@@@@|@"])
  fun op ulp x = x
    val op ulp =
    DT(((("ieee",30),[]),[]),
       [read"%64%6%65%10%86%239$1@$0@@%228%240$1@%71%77@%70%162$0@@%132%101%148@@@@@@%240$1@%71%77@%70%162$0@@%77@@@@@|@|@"])
  fun op roundmode_TY_DEF x = x
    val op roundmode_TY_DEF =
    DT(((("ieee",31),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
       [read"%96%34%140%26%78$0@%132%102%101%148@@@@|@$0@|@"])
  fun op roundmode_BIJ x = x
    val op roundmode_BIJ =
    DT(((("ieee",32),[("bool",[117]),("ieee",[31])]),["DISK_THM"]),
       [read"%76%67%11%87%216%231$0@@@$0@|@@%63%29%80%26%78$0@%132%102%101%148@@@@|$0@@%83%231%216$0@@@$0@@|@@"])




  fun op roundmode_size_def x = x
    val op roundmode_size_def =
    DT(((("ieee",46),[]),[]), [read"%67%50%83%233$0@@%77@|@"])
  fun op roundmode_CASE x = x
    val op roundmode_CASE =
    DT(((("ieee",47),[]),[]),
       [read"%67%50%56%39%56%41%56%43%56%45%79%232$4@$3@$2@$1@$0@@%24%103%78$0@%132%101%148@@@@$4@%103%78$0@%132%102%148@@@@$3@%103%83$0@%132%102%148@@@@$2@$1@@@|%231$4@@@|@|@|@|@|@"])
  fun op is_closest x = x
    val op is_closest =
    DT(((("ieee",55),[]),[]),
       [read"%60%38%59%36%66%49%56%7%80%198$3@$2@$1@$0@@%76%121$0@$2@@%56%14%88%121$0@$3@@%224%150%228$4$1@@$2@@@%150%228$4$0@@$2@@@@|@@@|@|@|@|@"])
  fun op closest x = x
    val op closest =
    DT(((("ieee",56),[]),[]),
       [read"%60%38%59%28%59%36%66%49%79%156$3@$2@$1@$0@@%99%7%76%198$4@$2@$1@$0@@%88%90%14%76%198$5@$3@$2@$0@@$4$0@@|@@$3$0@@@|@@|@|@|@|@"])
  fun op round_def x = x
    val op round_def =
    DT(((("ieee",57),
        [("bool",[8,14,25,54,56,64]),("ieee",[44]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%76%64%6%66%49%85%230$1@%142@$0@@%107%224$0@%226%237$1@@@@%213$1@@%107%221$0@%237$1@@@%217$1@@%157%240$1@@%10%110%191$0@@|@%117%10%72$0@%202$2@$0@@|@@$0@@@@|@|@@%76%64%6%66%49%85%230$1@%173@$0@@%107%223$0@%226%211$1@@@@%152$1@@%107%222$0@%211$1@@@%238$1@@%157%240$1@@%48%138|@%117%10%72$0@%76%202$2@$0@@%224%150%240$2@$0@@@%150$1@@@@|@@$0@@@@|@|@@%76%64%6%66%49%85%230$1@%144@$0@@%107%223$0@%226%211$1@@@@%152$1@@%107%222$0@%211$1@@@%217$1@@%157%240$1@@%48%138|@%117%10%72$0@%76%202$2@$0@@%221%240$2@$0@@$1@@@|@@$0@@@@|@|@@%64%6%66%49%85%230$1@%143@$0@@%107%223$0@%226%211$1@@@@%213$1@@%107%222$0@%211$1@@@%238$1@@%157%240$1@@%48%138|@%117%10%72$0@%76%202$2@$0@@%224%240$2@$0@@$1@@@|@@$0@@@@|@|@@@@"])
  fun op is_integral x = x
    val op is_integral =
    DT(((("ieee",58),[]),[]),
       [read"%64%6%65%10%80%204$1@$0@@%76%202$1@$0@@%97%26%86%150%240$2@$1@@@%227$0@@|@@@|@|@"])
  fun op intround_def x = x
    val op intround_def =
    DT(((("ieee",59),
        [("bool",[8,14,25,54,56,64]),("ieee",[44]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%76%64%6%66%49%85%196$1@%142@$0@@%107%224$0@%226%237$1@@@@%213$1@@%107%221$0@%237$1@@@%217$1@@%157%240$1@@%10%97%26%76%110$0@@%86%150%240$3@$1@@@%227$0@@@|@|@%117%10%72$0@%204$2@$0@@|@@$0@@@@|@|@@%76%64%6%66%49%85%196$1@%173@$0@@%107%223$0@%226%211$1@@@@%152$1@@%107%222$0@%211$1@@@%238$1@@%157%240$1@@%48%138|@%117%10%72$0@%76%204$2@$0@@%224%150%240$2@$0@@@%150$1@@@@|@@$0@@@@|@|@@%76%64%6%66%49%85%196$1@%144@$0@@%107%223$0@%226%211$1@@@@%152$1@@%107%222$0@%211$1@@@%217$1@@%157%240$1@@%48%138|@%117%10%72$0@%76%204$2@$0@@%221%240$2@$0@@$1@@@|@@$0@@@@|@|@@%64%6%66%49%85%196$1@%143@$0@@%107%223$0@%226%211$1@@@@%213$1@@%107%222$0@%211$1@@@%238$1@@%157%240$1@@%48%138|@%117%10%72$0@%76%204$2@$0@@%224%240$2@$0@@$1@@@|@@$0@@@@|@|@@@@"])
  fun op some_nan x = x
    val op some_nan =
    DT(((("ieee",60),[]),[]),
       [read"%64%6%85%235$0@@%100%10%205$1@$0@|@@|@"])
  fun op zerosign x = x
    val op zerosign =
    DT(((("ieee",61),[]),[]),
       [read"%64%6%63%37%65%10%85%242$2@$1@$0@@%107%210$2@$0@@%107%83$1@%77@@%218$2@@%214$2@@@$0@@|@|@|@"])
  fun op rem x = x
    val op rem =
    DT(((("ieee",62),[]),[]),
       [read"%66%49%66%55%86%229$1@$0@@%128%27%228$2@%225$0@$1@@|@%158%120@%49%97%26%76%110$0@@%86%150$1@@%227$0@@@|@|@%118%49%73$0@%97%26%86%150$1@@%227$0@@|@@|@@%75$1@$0@@@@|@|@"])
  fun op fintrnd x = x
    val op fintrnd =
    DT(((("ieee",63),[]),[]),
       [read"%64%6%67%25%65%10%85%170$2@$1@$0@@%107%205$2@$0@@%235$2@@%107%203$2@$0@@$0@%242$2@%234$0@@%196$2@$1@%240$2@$0@@@@@@|@|@|@"])
  fun op fadd x = x
    val op fadd =
    DT(((("ieee",64),[]),[]),
       [read"%64%6%67%25%65%10%65%16%85%164$3@$2@$1@$0@@%107%149%205$3@$1@@%149%205$3@$0@@%76%203$3@$1@@%76%203$3@$0@@%243%83%234$1@@%234$0@@@@@@@@%235$3@@%107%203$3@$1@@$1@%107%203$3@$0@@$0@%242$3@%106%76%210$3@$1@@%76%210$3@$0@@%83%234$1@@%234$0@@@@@%234$1@@%106%87$2@%143@@%132%101%148@@@%77@@@%230$3@$2@%220%240$3@$1@@%240$3@$0@@@@@@@@|@|@|@|@"])
  fun op fsub x = x
    val op fsub =
    DT(((("ieee",65),[]),[]),
       [read"%64%6%67%25%65%10%65%16%85%195$3@$2@$1@$0@@%107%149%205$3@$1@@%149%205$3@$0@@%76%203$3@$1@@%76%203$3@$0@@%83%234$1@@%234$0@@@@@@@%235$3@@%107%203$3@$1@@$1@%107%203$3@$0@@%212$3@$0@@%242$3@%106%76%210$3@$1@@%76%210$3@$0@@%243%83%234$1@@%234$0@@@@@@%234$1@@%106%87$2@%143@@%132%101%148@@@%77@@@%230$3@$2@%228%240$3@$1@@%240$3@$0@@@@@@@@|@|@|@|@"])
  fun op fmul x = x
    val op fmul =
    DT(((("ieee",66),[]),[]),
       [read"%64%6%67%25%65%10%65%16%85%189$3@$2@$1@$0@@%107%149%205$3@$1@@%149%205$3@$0@@%149%76%210$3@$1@@%203$3@$0@@@%76%203$3@$1@@%210$3@$0@@@@@@%235$3@@%107%149%203$3@$1@@%203$3@$0@@@%107%83%234$1@@%234$0@@@%217$3@@%213$3@@@%242$3@%106%83%234$1@@%234$0@@@%77@%132%101%148@@@@%230$3@$2@%225%240$3@$1@@%240$3@$0@@@@@@@|@|@|@|@"])
  fun op fdiv x = x
    val op fdiv =
    DT(((("ieee",67),[]),[]),
       [read"%64%6%67%25%65%10%65%16%85%166$3@$2@$1@$0@@%107%149%205$3@$1@@%149%205$3@$0@@%149%76%210$3@$1@@%210$3@$0@@@%76%203$3@$1@@%203$3@$0@@@@@@%235$3@@%107%149%203$3@$1@@%210$3@$0@@@%107%83%234$1@@%234$0@@@%217$3@@%213$3@@@%107%203$3@$0@@%107%83%234$1@@%234$0@@@%218$3@@%214$3@@@%242$3@%106%83%234$1@@%234$0@@@%77@%132%101%148@@@@%230$3@$2@%75%240$3@$1@@%240$3@$0@@@@@@@@|@|@|@|@"])
  fun op fsqrt x = x
    val op fsqrt =
    DT(((("ieee",68),[]),[]),
       [read"%64%6%67%25%65%10%85%194$2@$1@$0@@%107%205$2@$0@@%235$2@@%107%149%210$2@$0@@%76%203$2@$0@@%83%234$0@@%77@@@@$0@%107%83%234$0@@%132%101%148@@@@%235$2@@%242$2@%234$0@@%230$2@$1@%236%240$2@$0@@@@@@@@|@|@|@"])
  fun op frem x = x
    val op frem =
    DT(((("ieee",69),[]),[]),
       [read"%64%6%67%25%65%10%65%16%85%193$3@$2@$1@$0@@%107%149%205$3@$1@@%149%205$3@$0@@%149%203$3@$1@@%210$3@$0@@@@@%235$3@@%107%203$3@$0@@$1@%242$3@%234$1@@%230$3@$2@%229%240$3@$1@@%240$3@$0@@@@@@@|@|@|@|@"])
  fun op fneg x = x
    val op fneg =
    DT(((("ieee",70),[]),[]),
       [read"%64%6%67%25%65%10%85%190$2@$1@$0@@%71%74%132%101%148@@@%234$0@@@%70%162$0@@%191$0@@@@|@|@|@"])
  fun op ccode_TY_DEF x = x
    val op ccode_TY_DEF =
    DT(((("ieee",71),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
       [read"%93%32%139%26%78$0@%132%102%101%148@@@@|@$0@|@"])
  fun op ccode_BIJ x = x
    val op ccode_BIJ =
    DT(((("ieee",72),[("bool",[117]),("ieee",[71])]),["DISK_THM"]),
       [read"%76%57%8%81%215%153$0@@@$0@|@@%63%29%80%26%78$0@%132%102%101%148@@@@|$0@@%83%153%215$0@@@$0@@|@@"])




  fun op ccode_size_def x = x
    val op ccode_size_def =
    DT(((("ieee",86),[]),[]), [read"%57%47%83%155$0@@%77@|@"])
  fun op ccode_CASE x = x
    val op ccode_CASE =
    DT(((("ieee",87),[]),[]),
       [read"%57%47%56%39%56%41%56%43%56%45%79%154$4@$3@$2@$1@$0@@%24%103%78$0@%132%101%148@@@@$4@%103%78$0@%132%102%148@@@@$3@%103%83$0@%132%102%148@@@@$2@$1@@@|%153$4@@@|@|@|@|@|@"])
  fun op fcompare x = x
    val op fcompare =
    DT(((("ieee",95),[]),[]),
       [read"%64%6%65%10%65%16%81%165$2@$1@$0@@%104%149%205$2@$1@@%205$2@$0@@@%146@%104%76%203$2@$1@@%83%234$1@@%132%101%148@@@@@%104%76%203$2@$0@@%83%234$0@@%132%101%148@@@@@%112@%129@@%104%76%203$2@$1@@%83%234$1@@%77@@@%104%76%203$2@$0@@%83%234$0@@%77@@@%112@%119@@%104%76%203$2@$0@@%83%234$0@@%132%101%148@@@@@%119@%104%76%203$2@$0@@%83%234$0@@%77@@@%129@%104%223%240$2@$1@@%240$2@$0@@@%129@%104%86%240$2@$1@@%240$2@$0@@@%112@%119@@@@@@@@|@|@|@"])
  fun op flt x = x
    val op flt =
    DT(((("ieee",96),[]),[]),
       [read"%64%6%65%10%65%16%80%188$2@$1@$0@@%81%165$2@$1@$0@@%129@@|@|@|@"])
  fun op fle x = x
    val op fle =
    DT(((("ieee",97),[]),[]),
       [read"%64%6%65%10%65%16%80%171$2@$1@$0@@%149%81%165$2@$1@$0@@%129@@%81%165$2@$1@$0@@%112@@@|@|@|@"])
  fun op fgt x = x
    val op fgt =
    DT(((("ieee",98),[]),[]),
       [read"%64%6%65%10%65%16%80%169$2@$1@$0@@%81%165$2@$1@$0@@%119@@|@|@|@"])
  fun op fge x = x
    val op fge =
    DT(((("ieee",99),[]),[]),
       [read"%64%6%65%10%65%16%80%168$2@$1@$0@@%149%81%165$2@$1@$0@@%119@@%81%165$2@$1@$0@@%112@@@|@|@|@"])
  fun op feq x = x
    val op feq =
    DT(((("ieee",100),[]),[]),
       [read"%64%6%65%10%65%16%80%167$2@$1@$0@@%81%165$2@$1@$0@@%112@@|@|@|@"])
  fun op float_format x = x
    val op float_format =
    DT(((("ieee",101),[]),[]),
       [read"%84%178@%70%132%102%101%101%148@@@@@%132%101%101%101%102%148@@@@@@@"])
  fun op float_TY_DEF x = x
    val op float_TY_DEF =
    DT(((("ieee",102),
        [("arithmetic",[18,21,60,138,207]),("bool",[25,26,27,51,54,58]),
         ("ieee",[17,101])]),["DISK_THM"]),
       [read"%94%33%141%209%178@@$0@|@"])
  fun op float_tybij x = x
    val op float_tybij =
    DT(((("ieee",103),[("bool",[117]),("ieee",[102])]),["DISK_THM"]),
       [read"%76%58%9%82%172%159$0@@@$0@|@@%65%30%80%209%178@$0@@%85%159%172$0@@@$0@@|@@"])
  fun op Val x = x
    val op Val =
    DT(((("ieee",104),[]),[]),
       [read"%58%9%86%147$0@@%240%178@%159$0@@@|@"])
  fun op Float x = x
    val op Float =
    DT(((("ieee",105),[]),[]),
       [read"%66%49%82%115$0@@%172%230%178@%142@$0@@@|@"])
  fun op Sign x = x
    val op Sign =
    DT(((("ieee",106),[]),[]), [read"%58%9%83%137$0@@%234%159$0@@@|@"])
  fun op Exponent x = x
    val op Exponent =
    DT(((("ieee",107),[]),[]), [read"%58%9%83%113$0@@%162%159$0@@@|@"])
  fun op Fraction x = x
    val op Fraction =
    DT(((("ieee",108),[]),[]), [read"%58%9%83%116$0@@%191%159$0@@@|@"])
  fun op Ulp x = x
    val op Ulp =
    DT(((("ieee",109),[]),[]),
       [read"%58%9%86%145$0@@%239%178@%159$0@@@|@"])
  fun op Isnan x = x
    val op Isnan =
    DT(((("ieee",110),[]),[]),
       [read"%58%9%80%125$0@@%205%178@%159$0@@@|@"])
  fun op Infinity x = x
    val op Infinity =
    DT(((("ieee",111),[]),[]),
       [read"%58%9%80%122$0@@%203%178@%159$0@@@|@"])
  fun op Isnormal x = x
    val op Isnormal =
    DT(((("ieee",112),[]),[]),
       [read"%58%9%80%126$0@@%206%178@%159$0@@@|@"])
  fun op Isdenormal x = x
    val op Isdenormal =
    DT(((("ieee",113),[]),[]),
       [read"%58%9%80%123$0@@%199%178@%159$0@@@|@"])
  fun op Iszero x = x
    val op Iszero =
    DT(((("ieee",114),[]),[]),
       [read"%58%9%80%127$0@@%210%178@%159$0@@@|@"])
  fun op Finite x = x
    val op Finite =
    DT(((("ieee",115),[]),[]),
       [read"%58%9%80%114$0@@%149%126$0@@%149%123$0@@%127$0@@@@|@"])
  fun op Isintegral x = x
    val op Isintegral =
    DT(((("ieee",116),[]),[]),
       [read"%58%9%80%124$0@@%204%178@%159$0@@@|@"])
  fun op Plus_zero x = x
    val op Plus_zero =
    DT(((("ieee",117),[]),[]), [read"%82%134@%172%218%178@@@"])
  fun op Minus_zero x = x
    val op Minus_zero =
    DT(((("ieee",118),[]),[]), [read"%82%131@%172%214%178@@@"])
  fun op Minus_infinity x = x
    val op Minus_infinity =
    DT(((("ieee",119),[]),[]), [read"%82%130@%172%213%178@@@"])
  fun op Plus_infinity x = x
    val op Plus_infinity =
    DT(((("ieee",120),[]),[]), [read"%82%133@%172%217%178@@@"])
  fun op float_add x = x
    val op float_add =
    DT(((("ieee",121),[]),[]),
       [read"%58%9%58%15%82%175$1@$0@@%172%164%178@%142@%159$1@@%159$0@@@@|@|@"])
  fun op float_sub x = x
    val op float_sub =
    DT(((("ieee",122),[]),[]),
       [read"%58%9%58%15%82%187$1@$0@@%172%195%178@%142@%159$1@@%159$0@@@@|@|@"])
  fun op float_mul x = x
    val op float_mul =
    DT(((("ieee",123),[]),[]),
       [read"%58%9%58%15%82%183$1@$0@@%172%189%178@%142@%159$1@@%159$0@@@@|@|@"])
  fun op float_div x = x
    val op float_div =
    DT(((("ieee",124),[]),[]),
       [read"%58%9%58%15%82%176$1@$0@@%172%166%178@%142@%159$1@@%159$0@@@@|@|@"])
  fun op float_rem x = x
    val op float_rem =
    DT(((("ieee",125),[]),[]),
       [read"%58%9%58%15%82%185$1@$0@@%172%193%178@%142@%159$1@@%159$0@@@@|@|@"])
  fun op float_sqrt x = x
    val op float_sqrt =
    DT(((("ieee",126),[]),[]),
       [read"%58%9%82%186$0@@%172%194%178@%142@%159$0@@@@|@"])
  fun op ROUNDFLOAT x = x
    val op ROUNDFLOAT =
    DT(((("ieee",127),[]),[]),
       [read"%58%9%82%135$0@@%172%170%178@%142@%159$0@@@@|@"])
  fun op float_lt x = x
    val op float_lt =
    DT(((("ieee",128),[]),[]),
       [read"%58%9%58%15%80%182$1@$0@@%188%178@%159$1@@%159$0@@@|@|@"])
  fun op float_le x = x
    val op float_le =
    DT(((("ieee",129),[]),[]),
       [read"%58%9%58%15%80%181$1@$0@@%171%178@%159$1@@%159$0@@@|@|@"])
  fun op float_gt x = x
    val op float_gt =
    DT(((("ieee",130),[]),[]),
       [read"%58%9%58%15%80%180$1@$0@@%169%178@%159$1@@%159$0@@@|@|@"])
  fun op float_ge x = x
    val op float_ge =
    DT(((("ieee",131),[]),[]),
       [read"%58%9%58%15%80%179$1@$0@@%168%178@%159$1@@%159$0@@@|@|@"])
  fun op float_eq x = x
    val op float_eq =
    DT(((("ieee",132),[]),[]),
       [read"%58%9%58%15%80%177$1@$0@@%167%178@%159$1@@%159$0@@@|@|@"])
  fun op float_neg x = x
    val op float_neg =
    DT(((("ieee",133),[]),[]),
       [read"%58%9%82%184$0@@%172%190%178@%142@%159$0@@@@|@"])
  fun op float_abs x = x
    val op float_abs =
    DT(((("ieee",134),[]),[]),
       [read"%58%9%82%174$0@@%105%179$0@%134@@$0@%184$0@@@|@"])
  fun op num2roundmode_roundmode2num x = x
    val op num2roundmode_roundmode2num =
    DT(((("ieee",33),[("ieee",[32])]),["DISK_THM"]),
       [read"%67%11%87%216%231$0@@@$0@|@"])
  fun op roundmode2num_num2roundmode x = x
    val op roundmode2num_num2roundmode =
    DT(((("ieee",34),[("ieee",[32])]),["DISK_THM"]),
       [read"%63%29%80%78$0@%132%102%101%148@@@@@%83%231%216$0@@@$0@@|@"])
  fun op num2roundmode_11 x = x
    val op num2roundmode_11 =
    DT(((("ieee",35),[("bool",[26]),("ieee",[32])]),["DISK_THM"]),
       [read"%63%29%63%31%88%78$1@%132%102%101%148@@@@@%88%78$0@%132%102%101%148@@@@@%80%87%216$1@@%216$0@@@%83$1@$0@@@@|@|@"])
  fun op roundmode2num_11 x = x
    val op roundmode2num_11 =
    DT(((("ieee",36),[("bool",[26]),("ieee",[32])]),["DISK_THM"]),
       [read"%67%11%67%13%80%83%231$1@@%231$0@@@%87$1@$0@@|@|@"])
  fun op num2roundmode_ONTO x = x
    val op num2roundmode_ONTO =
    DT(((("ieee",37),[("bool",[25,63]),("ieee",[32])]),["DISK_THM"]),
       [read"%67%11%97%29%76%87$1@%216$0@@@%78$0@%132%102%101%148@@@@@|@|@"])
  fun op roundmode2num_ONTO x = x
    val op roundmode2num_ONTO =
    DT(((("ieee",38),[("bool",[26]),("ieee",[32])]),["DISK_THM"]),
       [read"%63%29%80%78$0@%132%102%101%148@@@@@%98%11%83$1@%231$0@@|@@|@"])
  fun op num2roundmode_thm x = x
    val op num2roundmode_thm =
    DT(((("ieee",43),[("ieee",[39,40,41,42])]),[]),
       [read"%76%87%216%77@@%142@@%76%87%216%132%101%148@@@@%173@@%76%87%216%132%102%148@@@@%144@@%87%216%132%101%101%148@@@@@%143@@@@"])
  fun op roundmode2num_thm x = x
    val op roundmode2num_thm =
    DT(((("ieee",44),
        [("bool",[25,54]),("ieee",[34,39,40,41,42]),
         ("numeral",[3,7])]),["DISK_THM"]),
       [read"%76%83%231%142@@%77@@%76%83%231%173@@%132%101%148@@@@%76%83%231%144@@%132%102%148@@@@%83%231%143@@%132%101%101%148@@@@@@@"])
  fun op roundmode_EQ_roundmode x = x
    val op roundmode_EQ_roundmode =
    DT(((("ieee",45),[("bool",[58]),("ieee",[36])]),["DISK_THM"]),
       [read"%67%11%67%13%80%87$1@$0@@%83%231$1@@%231$0@@@|@|@"])
  fun op roundmode_case_def x = x
    val op roundmode_case_def =
    DT(((("ieee",48),
        [("bool",[54,56,64]),("ieee",[44,47]),
         ("numeral",[3,6,7])]),["DISK_THM"]),
       [read"%76%56%39%56%41%56%43%56%45%79%232%142@$3@$2@$1@$0@@$3@|@|@|@|@@%76%56%39%56%41%56%43%56%45%79%232%173@$3@$2@$1@$0@@$2@|@|@|@|@@%76%56%39%56%41%56%43%56%45%79%232%144@$3@$2@$1@$0@@$1@|@|@|@|@@%56%39%56%41%56%43%56%45%79%232%143@$3@$2@$1@$0@@$0@|@|@|@|@@@@"])
  fun op datatype_roundmode x = x
    val op datatype_roundmode =
    DT(((("ieee",49),[("bool",[25,171])]),["DISK_THM"]),
       [read"%109%35%142@%173@%144@%143@@"])
  fun op roundmode_distinct x = x
    val op roundmode_distinct =
    DT(((("ieee",50),[("ieee",[44,45]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%76%243%87%142@%173@@@%76%243%87%142@%144@@@%76%243%87%142@%143@@@%76%243%87%173@%144@@@%76%243%87%173@%143@@@%243%87%144@%143@@@@@@@"])
  fun op roundmode_case_cong x = x
    val op roundmode_case_cong =
    DT(((("ieee",51),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("ieee",[37,39,40,41,42,48]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%67%1%67%3%56%39%56%41%56%43%56%45%88%76%87$5@$4@@%76%88%87$4@%142@@%79$3@%40@@@%76%88%87$4@%173@@%79$2@%42@@@%76%88%87$4@%144@@%79$1@%44@@@%88%87$4@%143@@%79$0@%46@@@@@@@%79%232$5@$3@$2@$1@$0@@%232$4@%40@%42@%44@%46@@@|@|@|@|@|@|@"])
  fun op roundmode_nchotomy x = x
    val op roundmode_nchotomy =
    DT(((("ieee",52),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("ieee",[37,39,40,41,42]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%67%11%149%87$0@%142@@%149%87$0@%173@@%149%87$0@%144@@%87$0@%143@@@@|@"])
  fun op roundmode_Axiom x = x
    val op roundmode_Axiom =
    DT(((("ieee",53),
        [("bool",[8,14,25,54,56,64]),("ieee",[44]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%56%51%56%52%56%53%56%54%95%21%76%79$0%142@@$4@@%76%79$0%173@@$3@@%76%79$0%144@@$2@@%79$0%143@@$1@@@@|@|@|@|@|@"])
  fun op roundmode_induction x = x
    val op roundmode_induction =
    DT(((("ieee",54),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("ieee",[37,39,40,41,42]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%62%5%88%76$0%142@@%76$0%143@@%76$0%144@@$0%173@@@@@%67%11$1$0@|@@|@"])
  fun op num2ccode_ccode2num x = x
    val op num2ccode_ccode2num =
    DT(((("ieee",73),[("ieee",[72])]),["DISK_THM"]),
       [read"%57%8%81%215%153$0@@@$0@|@"])
  fun op ccode2num_num2ccode x = x
    val op ccode2num_num2ccode =
    DT(((("ieee",74),[("ieee",[72])]),["DISK_THM"]),
       [read"%63%29%80%78$0@%132%102%101%148@@@@@%83%153%215$0@@@$0@@|@"])
  fun op num2ccode_11 x = x
    val op num2ccode_11 =
    DT(((("ieee",75),[("bool",[26]),("ieee",[72])]),["DISK_THM"]),
       [read"%63%29%63%31%88%78$1@%132%102%101%148@@@@@%88%78$0@%132%102%101%148@@@@@%80%81%215$1@@%215$0@@@%83$1@$0@@@@|@|@"])
  fun op ccode2num_11 x = x
    val op ccode2num_11 =
    DT(((("ieee",76),[("bool",[26]),("ieee",[72])]),["DISK_THM"]),
       [read"%57%8%57%12%80%83%153$1@@%153$0@@@%81$1@$0@@|@|@"])
  fun op num2ccode_ONTO x = x
    val op num2ccode_ONTO =
    DT(((("ieee",77),[("bool",[25,63]),("ieee",[72])]),["DISK_THM"]),
       [read"%57%8%97%29%76%81$1@%215$0@@@%78$0@%132%102%101%148@@@@@|@|@"])
  fun op ccode2num_ONTO x = x
    val op ccode2num_ONTO =
    DT(((("ieee",78),[("bool",[26]),("ieee",[72])]),["DISK_THM"]),
       [read"%63%29%80%78$0@%132%102%101%148@@@@@%91%8%83$1@%153$0@@|@@|@"])
  fun op num2ccode_thm x = x
    val op num2ccode_thm =
    DT(((("ieee",83),[("ieee",[79,80,81,82])]),[]),
       [read"%76%81%215%77@@%119@@%76%81%215%132%101%148@@@@%129@@%76%81%215%132%102%148@@@@%112@@%81%215%132%101%101%148@@@@@%146@@@@"])
  fun op ccode2num_thm x = x
    val op ccode2num_thm =
    DT(((("ieee",84),
        [("bool",[25,54]),("ieee",[74,79,80,81,82]),
         ("numeral",[3,7])]),["DISK_THM"]),
       [read"%76%83%153%119@@%77@@%76%83%153%129@@%132%101%148@@@@%76%83%153%112@@%132%102%148@@@@%83%153%146@@%132%101%101%148@@@@@@@"])
  fun op ccode_EQ_ccode x = x
    val op ccode_EQ_ccode =
    DT(((("ieee",85),[("bool",[58]),("ieee",[76])]),["DISK_THM"]),
       [read"%57%8%57%12%80%81$1@$0@@%83%153$1@@%153$0@@@|@|@"])
  fun op ccode_case_def x = x
    val op ccode_case_def =
    DT(((("ieee",88),
        [("bool",[54,56,64]),("ieee",[84,87]),
         ("numeral",[3,6,7])]),["DISK_THM"]),
       [read"%76%56%39%56%41%56%43%56%45%79%154%119@$3@$2@$1@$0@@$3@|@|@|@|@@%76%56%39%56%41%56%43%56%45%79%154%129@$3@$2@$1@$0@@$2@|@|@|@|@@%76%56%39%56%41%56%43%56%45%79%154%112@$3@$2@$1@$0@@$1@|@|@|@|@@%56%39%56%41%56%43%56%45%79%154%146@$3@$2@$1@$0@@$0@|@|@|@|@@@@"])
  fun op datatype_ccode x = x
    val op datatype_ccode =
    DT(((("ieee",89),[("bool",[25,171])]),["DISK_THM"]),
       [read"%109%17%119@%129@%112@%146@@"])
  fun op ccode_distinct x = x
    val op ccode_distinct =
    DT(((("ieee",90),[("ieee",[84,85]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%76%243%81%119@%129@@@%76%243%81%119@%112@@@%76%243%81%119@%146@@@%76%243%81%129@%112@@@%76%243%81%129@%146@@@%243%81%112@%146@@@@@@@"])
  fun op ccode_case_cong x = x
    val op ccode_case_cong =
    DT(((("ieee",91),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("ieee",[77,79,80,81,82,88]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%57%0%57%2%56%39%56%41%56%43%56%45%88%76%81$5@$4@@%76%88%81$4@%119@@%79$3@%40@@@%76%88%81$4@%129@@%79$2@%42@@@%76%88%81$4@%112@@%79$1@%44@@@%88%81$4@%146@@%79$0@%46@@@@@@@%79%154$5@$3@$2@$1@$0@@%154$4@%40@%42@%44@%46@@@|@|@|@|@|@|@"])
  fun op ccode_nchotomy x = x
    val op ccode_nchotomy =
    DT(((("ieee",92),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("ieee",[77,79,80,81,82]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%57%8%149%81$0@%119@@%149%81$0@%129@@%149%81$0@%112@@%81$0@%146@@@@|@"])
  fun op ccode_Axiom x = x
    val op ccode_Axiom =
    DT(((("ieee",93),
        [("bool",[8,14,25,54,56,64]),("ieee",[84]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%56%51%56%52%56%53%56%54%92%20%76%79$0%119@@$4@@%76%79$0%129@@$3@@%76%79$0%112@@$2@@%79$0%146@@$1@@@@|@|@|@|@|@"])
  fun op ccode_induction x = x
    val op ccode_induction =
    DT(((("ieee",94),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("ieee",[77,79,80,81,82]),("numeral",[3,5,6,7,8,15,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%61%4%88%76$0%112@@%76$0%119@@%76$0%129@@$0%146@@@@@%57%8$1$0@|@@|@"])
  end
  val _ = DB.bindl "ieee"
  [("expwidth",expwidth,DB.Def), ("fracwidth",fracwidth,DB.Def),
   ("wordlength",wordlength,DB.Def), ("emax",emax,DB.Def),
   ("bias",bias,DB.Def), ("is_single",is_single,DB.Def),
   ("is_double",is_double,DB.Def),
   ("is_single_extended",is_single_extended,DB.Def),
   ("is_double_extended",is_double_extended,DB.Def), ("sign",sign,DB.Def),
   ("exponent",exponent,DB.Def), ("fraction",fraction,DB.Def),
   ("is_nan",is_nan,DB.Def), ("is_infinity",is_infinity,DB.Def),
   ("is_normal",is_normal,DB.Def), ("is_denormal",is_denormal,DB.Def),
   ("is_zero",is_zero,DB.Def), ("is_valid",is_valid,DB.Def),
   ("is_finite",is_finite,DB.Def), ("plus_infinity",plus_infinity,DB.Def),
   ("minus_infinity",minus_infinity,DB.Def),
   ("plus_zero",plus_zero,DB.Def), ("minus_zero",minus_zero,DB.Def),
   ("topfloat",topfloat,DB.Def), ("bottomfloat",bottomfloat,DB.Def),
   ("minus",minus,DB.Def), ("encoding",encoding,DB.Def),
   ("valof",valof,DB.Def), ("largest",largest,DB.Def),
   ("threshold",threshold,DB.Def), ("ulp",ulp,DB.Def),
   ("roundmode_TY_DEF",roundmode_TY_DEF,DB.Def),
   ("roundmode_BIJ",roundmode_BIJ,DB.Def),
   ("roundmode_size_def",roundmode_size_def,DB.Def),
   ("roundmode_CASE",roundmode_CASE,DB.Def),
   ("is_closest",is_closest,DB.Def), ("closest",closest,DB.Def),
   ("round_def",round_def,DB.Def), ("is_integral",is_integral,DB.Def),
   ("intround_def",intround_def,DB.Def), ("some_nan",some_nan,DB.Def),
   ("zerosign",zerosign,DB.Def), ("rem",rem,DB.Def),
   ("fintrnd",fintrnd,DB.Def), ("fadd",fadd,DB.Def), ("fsub",fsub,DB.Def),
   ("fmul",fmul,DB.Def), ("fdiv",fdiv,DB.Def), ("fsqrt",fsqrt,DB.Def),
   ("frem",frem,DB.Def), ("fneg",fneg,DB.Def),
   ("ccode_TY_DEF",ccode_TY_DEF,DB.Def), ("ccode_BIJ",ccode_BIJ,DB.Def),
   ("ccode_size_def",ccode_size_def,DB.Def),
   ("ccode_CASE",ccode_CASE,DB.Def), ("fcompare",fcompare,DB.Def),
   ("flt",flt,DB.Def), ("fle",fle,DB.Def), ("fgt",fgt,DB.Def),
   ("fge",fge,DB.Def), ("feq",feq,DB.Def),
   ("float_format",float_format,DB.Def),
   ("float_TY_DEF",float_TY_DEF,DB.Def),
   ("float_tybij",float_tybij,DB.Def), ("Val",Val,DB.Def),
   ("Float",Float,DB.Def), ("Sign",Sign,DB.Def),
   ("Exponent",Exponent,DB.Def), ("Fraction",Fraction,DB.Def),
   ("Ulp",Ulp,DB.Def), ("Isnan",Isnan,DB.Def),
   ("Infinity",Infinity,DB.Def), ("Isnormal",Isnormal,DB.Def),
   ("Isdenormal",Isdenormal,DB.Def), ("Iszero",Iszero,DB.Def),
   ("Finite",Finite,DB.Def), ("Isintegral",Isintegral,DB.Def),
   ("Plus_zero",Plus_zero,DB.Def), ("Minus_zero",Minus_zero,DB.Def),
   ("Minus_infinity",Minus_infinity,DB.Def),
   ("Plus_infinity",Plus_infinity,DB.Def), ("float_add",float_add,DB.Def),
   ("float_sub",float_sub,DB.Def), ("float_mul",float_mul,DB.Def),
   ("float_div",float_div,DB.Def), ("float_rem",float_rem,DB.Def),
   ("float_sqrt",float_sqrt,DB.Def), ("ROUNDFLOAT",ROUNDFLOAT,DB.Def),
   ("float_lt",float_lt,DB.Def), ("float_le",float_le,DB.Def),
   ("float_gt",float_gt,DB.Def), ("float_ge",float_ge,DB.Def),
   ("float_eq",float_eq,DB.Def), ("float_neg",float_neg,DB.Def),
   ("float_abs",float_abs,DB.Def),
   ("num2roundmode_roundmode2num",num2roundmode_roundmode2num,DB.Thm),
   ("roundmode2num_num2roundmode",roundmode2num_num2roundmode,DB.Thm),
   ("num2roundmode_11",num2roundmode_11,DB.Thm),
   ("roundmode2num_11",roundmode2num_11,DB.Thm),
   ("num2roundmode_ONTO",num2roundmode_ONTO,DB.Thm),
   ("roundmode2num_ONTO",roundmode2num_ONTO,DB.Thm),
   ("num2roundmode_thm",num2roundmode_thm,DB.Thm),
   ("roundmode2num_thm",roundmode2num_thm,DB.Thm),
   ("roundmode_EQ_roundmode",roundmode_EQ_roundmode,DB.Thm),
   ("roundmode_case_def",roundmode_case_def,DB.Thm),
   ("datatype_roundmode",datatype_roundmode,DB.Thm),
   ("roundmode_distinct",roundmode_distinct,DB.Thm),
   ("roundmode_case_cong",roundmode_case_cong,DB.Thm),
   ("roundmode_nchotomy",roundmode_nchotomy,DB.Thm),
   ("roundmode_Axiom",roundmode_Axiom,DB.Thm),
   ("roundmode_induction",roundmode_induction,DB.Thm),
   ("num2ccode_ccode2num",num2ccode_ccode2num,DB.Thm),
   ("ccode2num_num2ccode",ccode2num_num2ccode,DB.Thm),
   ("num2ccode_11",num2ccode_11,DB.Thm),
   ("ccode2num_11",ccode2num_11,DB.Thm),
   ("num2ccode_ONTO",num2ccode_ONTO,DB.Thm),
   ("ccode2num_ONTO",ccode2num_ONTO,DB.Thm),
   ("num2ccode_thm",num2ccode_thm,DB.Thm),
   ("ccode2num_thm",ccode2num_thm,DB.Thm),
   ("ccode_EQ_ccode",ccode_EQ_ccode,DB.Thm),
   ("ccode_case_def",ccode_case_def,DB.Thm),
   ("datatype_ccode",datatype_ccode,DB.Thm),
   ("ccode_distinct",ccode_distinct,DB.Thm),
   ("ccode_case_cong",ccode_case_cong,DB.Thm),
   ("ccode_nchotomy",ccode_nchotomy,DB.Thm),
   ("ccode_Axiom",ccode_Axiom,DB.Thm),
   ("ccode_induction",ccode_induction,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("transcTheory.transc_grammars",
                          transcTheory.transc_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("expwidth", (Term.prim_mk_const { Name = "expwidth", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("expwidth", (Term.prim_mk_const { Name = "expwidth", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fracwidth", (Term.prim_mk_const { Name = "fracwidth", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fracwidth", (Term.prim_mk_const { Name = "fracwidth", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wordlength", (Term.prim_mk_const { Name = "wordlength", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wordlength", (Term.prim_mk_const { Name = "wordlength", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("emax", (Term.prim_mk_const { Name = "emax", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("emax", (Term.prim_mk_const { Name = "emax", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bias", (Term.prim_mk_const { Name = "bias", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bias", (Term.prim_mk_const { Name = "bias", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_single", (Term.prim_mk_const { Name = "is_single", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_single", (Term.prim_mk_const { Name = "is_single", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_double", (Term.prim_mk_const { Name = "is_double", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_double", (Term.prim_mk_const { Name = "is_double", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_single_extended", (Term.prim_mk_const { Name = "is_single_extended", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_single_extended", (Term.prim_mk_const { Name = "is_single_extended", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_double_extended", (Term.prim_mk_const { Name = "is_double_extended", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_double_extended", (Term.prim_mk_const { Name = "is_double_extended", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sign", (Term.prim_mk_const { Name = "sign", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sign", (Term.prim_mk_const { Name = "sign", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("exponent", (Term.prim_mk_const { Name = "exponent", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("exponent", (Term.prim_mk_const { Name = "exponent", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fraction", (Term.prim_mk_const { Name = "fraction", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fraction", (Term.prim_mk_const { Name = "fraction", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_nan", (Term.prim_mk_const { Name = "is_nan", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_nan", (Term.prim_mk_const { Name = "is_nan", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_infinity", (Term.prim_mk_const { Name = "is_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_infinity", (Term.prim_mk_const { Name = "is_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_normal", (Term.prim_mk_const { Name = "is_normal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_normal", (Term.prim_mk_const { Name = "is_normal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_denormal", (Term.prim_mk_const { Name = "is_denormal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_denormal", (Term.prim_mk_const { Name = "is_denormal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_zero", (Term.prim_mk_const { Name = "is_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_zero", (Term.prim_mk_const { Name = "is_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_valid", (Term.prim_mk_const { Name = "is_valid", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_valid", (Term.prim_mk_const { Name = "is_valid", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_finite", (Term.prim_mk_const { Name = "is_finite", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_finite", (Term.prim_mk_const { Name = "is_finite", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("plus_infinity", (Term.prim_mk_const { Name = "plus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("plus_infinity", (Term.prim_mk_const { Name = "plus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minus_infinity", (Term.prim_mk_const { Name = "minus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minus_infinity", (Term.prim_mk_const { Name = "minus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("plus_zero", (Term.prim_mk_const { Name = "plus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("plus_zero", (Term.prim_mk_const { Name = "plus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minus_zero", (Term.prim_mk_const { Name = "minus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minus_zero", (Term.prim_mk_const { Name = "minus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("topfloat", (Term.prim_mk_const { Name = "topfloat", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("topfloat", (Term.prim_mk_const { Name = "topfloat", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bottomfloat", (Term.prim_mk_const { Name = "bottomfloat", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bottomfloat", (Term.prim_mk_const { Name = "bottomfloat", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minus", (Term.prim_mk_const { Name = "minus", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("minus", (Term.prim_mk_const { Name = "minus", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encoding", (Term.prim_mk_const { Name = "encoding", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encoding", (Term.prim_mk_const { Name = "encoding", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("valof", (Term.prim_mk_const { Name = "valof", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("valof", (Term.prim_mk_const { Name = "valof", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("largest", (Term.prim_mk_const { Name = "largest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("largest", (Term.prim_mk_const { Name = "largest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("threshold", (Term.prim_mk_const { Name = "threshold", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("threshold", (Term.prim_mk_const { Name = "threshold", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ulp", (Term.prim_mk_const { Name = "ulp", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ulp", (Term.prim_mk_const { Name = "ulp", Thy = "ieee"}))
  val _ = update_grms temp_add_type "roundmode"
  val _ = update_grms temp_add_type "roundmode"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("roundmode2num", (Term.prim_mk_const { Name = "roundmode2num", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num2roundmode", (Term.prim_mk_const { Name = "num2roundmode", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("To_nearest", (Term.prim_mk_const { Name = "To_nearest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("To_nearest", (Term.prim_mk_const { Name = "To_nearest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_To_zero", (Term.prim_mk_const { Name = "float_To_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_To_zero", (Term.prim_mk_const { Name = "float_To_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("To_pinfinity", (Term.prim_mk_const { Name = "To_pinfinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("To_pinfinity", (Term.prim_mk_const { Name = "To_pinfinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("To_ninfinity", (Term.prim_mk_const { Name = "To_ninfinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("To_ninfinity", (Term.prim_mk_const { Name = "To_ninfinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("roundmode_size", (Term.prim_mk_const { Name = "roundmode_size", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("roundmode_size", (Term.prim_mk_const { Name = "roundmode_size", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("roundmode_CASE", (Term.prim_mk_const { Name = "roundmode_CASE", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("roundmode_CASE", (Term.prim_mk_const { Name = "roundmode_CASE", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_closest", (Term.prim_mk_const { Name = "is_closest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_closest", (Term.prim_mk_const { Name = "is_closest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closest", (Term.prim_mk_const { Name = "closest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closest", (Term.prim_mk_const { Name = "closest", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("round", (Term.prim_mk_const { Name = "round", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_integral", (Term.prim_mk_const { Name = "is_integral", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_integral", (Term.prim_mk_const { Name = "is_integral", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("intround", (Term.prim_mk_const { Name = "intround", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("some_nan", (Term.prim_mk_const { Name = "some_nan", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("some_nan", (Term.prim_mk_const { Name = "some_nan", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("zerosign", (Term.prim_mk_const { Name = "zerosign", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("zerosign", (Term.prim_mk_const { Name = "zerosign", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rem", (Term.prim_mk_const { Name = "rem", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rem", (Term.prim_mk_const { Name = "rem", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "rem"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fintrnd", (Term.prim_mk_const { Name = "fintrnd", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fintrnd", (Term.prim_mk_const { Name = "fintrnd", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fadd", (Term.prim_mk_const { Name = "fadd", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fadd", (Term.prim_mk_const { Name = "fadd", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fsub", (Term.prim_mk_const { Name = "fsub", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fsub", (Term.prim_mk_const { Name = "fsub", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmul", (Term.prim_mk_const { Name = "fmul", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmul", (Term.prim_mk_const { Name = "fmul", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fdiv", (Term.prim_mk_const { Name = "fdiv", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fdiv", (Term.prim_mk_const { Name = "fdiv", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fsqrt", (Term.prim_mk_const { Name = "fsqrt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fsqrt", (Term.prim_mk_const { Name = "fsqrt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frem", (Term.prim_mk_const { Name = "frem", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("frem", (Term.prim_mk_const { Name = "frem", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fneg", (Term.prim_mk_const { Name = "fneg", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fneg", (Term.prim_mk_const { Name = "fneg", Thy = "ieee"}))
  val _ = update_grms temp_add_type "ccode"
  val _ = update_grms temp_add_type "ccode"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ccode2num", (Term.prim_mk_const { Name = "ccode2num", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num2ccode", (Term.prim_mk_const { Name = "num2ccode", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Gt", (Term.prim_mk_const { Name = "Gt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Gt", (Term.prim_mk_const { Name = "Gt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Lt", (Term.prim_mk_const { Name = "Lt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Lt", (Term.prim_mk_const { Name = "Lt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Eq", (Term.prim_mk_const { Name = "Eq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Eq", (Term.prim_mk_const { Name = "Eq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Un", (Term.prim_mk_const { Name = "Un", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Un", (Term.prim_mk_const { Name = "Un", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ccode_size", (Term.prim_mk_const { Name = "ccode_size", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ccode_size", (Term.prim_mk_const { Name = "ccode_size", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ccode_CASE", (Term.prim_mk_const { Name = "ccode_CASE", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ccode_CASE", (Term.prim_mk_const { Name = "ccode_CASE", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fcompare", (Term.prim_mk_const { Name = "fcompare", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fcompare", (Term.prim_mk_const { Name = "fcompare", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("flt", (Term.prim_mk_const { Name = "flt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("flt", (Term.prim_mk_const { Name = "flt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fle", (Term.prim_mk_const { Name = "fle", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fle", (Term.prim_mk_const { Name = "fle", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fgt", (Term.prim_mk_const { Name = "fgt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fgt", (Term.prim_mk_const { Name = "fgt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fge", (Term.prim_mk_const { Name = "fge", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fge", (Term.prim_mk_const { Name = "fge", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("feq", (Term.prim_mk_const { Name = "feq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("feq", (Term.prim_mk_const { Name = "feq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_format", (Term.prim_mk_const { Name = "float_format", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_format", (Term.prim_mk_const { Name = "float_format", Thy = "ieee"}))
  val _ = update_grms temp_add_type "float"
  val _ = update_grms temp_add_type "float"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("defloat", (Term.prim_mk_const { Name = "defloat", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float", (Term.prim_mk_const { Name = "float", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Val", (Term.prim_mk_const { Name = "Val", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Val", (Term.prim_mk_const { Name = "Val", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Float", (Term.prim_mk_const { Name = "Float", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Float", (Term.prim_mk_const { Name = "Float", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Sign", (Term.prim_mk_const { Name = "Sign", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Sign", (Term.prim_mk_const { Name = "Sign", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Exponent", (Term.prim_mk_const { Name = "Exponent", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Exponent", (Term.prim_mk_const { Name = "Exponent", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Fraction", (Term.prim_mk_const { Name = "Fraction", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Fraction", (Term.prim_mk_const { Name = "Fraction", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Ulp", (Term.prim_mk_const { Name = "Ulp", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Ulp", (Term.prim_mk_const { Name = "Ulp", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isnan", (Term.prim_mk_const { Name = "Isnan", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isnan", (Term.prim_mk_const { Name = "Isnan", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Infinity", (Term.prim_mk_const { Name = "Infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Infinity", (Term.prim_mk_const { Name = "Infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isnormal", (Term.prim_mk_const { Name = "Isnormal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isnormal", (Term.prim_mk_const { Name = "Isnormal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isdenormal", (Term.prim_mk_const { Name = "Isdenormal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isdenormal", (Term.prim_mk_const { Name = "Isdenormal", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Iszero", (Term.prim_mk_const { Name = "Iszero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Iszero", (Term.prim_mk_const { Name = "Iszero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Finite", (Term.prim_mk_const { Name = "Finite", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Finite", (Term.prim_mk_const { Name = "Finite", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isintegral", (Term.prim_mk_const { Name = "Isintegral", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Isintegral", (Term.prim_mk_const { Name = "Isintegral", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Plus_zero", (Term.prim_mk_const { Name = "Plus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Plus_zero", (Term.prim_mk_const { Name = "Plus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Minus_zero", (Term.prim_mk_const { Name = "Minus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Minus_zero", (Term.prim_mk_const { Name = "Minus_zero", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Minus_infinity", (Term.prim_mk_const { Name = "Minus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Minus_infinity", (Term.prim_mk_const { Name = "Minus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Plus_infinity", (Term.prim_mk_const { Name = "Plus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Plus_infinity", (Term.prim_mk_const { Name = "Plus_infinity", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_add", (Term.prim_mk_const { Name = "float_add", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_add", (Term.prim_mk_const { Name = "float_add", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "float_add"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "float_add", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_sub", (Term.prim_mk_const { Name = "float_sub", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_sub", (Term.prim_mk_const { Name = "float_sub", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "float_sub"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "float_sub", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_mul", (Term.prim_mk_const { Name = "float_mul", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_mul", (Term.prim_mk_const { Name = "float_mul", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "float_mul"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "float_mul", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_div", (Term.prim_mk_const { Name = "float_div", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_div", (Term.prim_mk_const { Name = "float_div", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "float_div"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "float_div", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_rem", (Term.prim_mk_const { Name = "float_rem", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_rem", (Term.prim_mk_const { Name = "float_rem", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "float_rem"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_sqrt", (Term.prim_mk_const { Name = "float_sqrt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_sqrt", (Term.prim_mk_const { Name = "float_sqrt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ROUNDFLOAT", (Term.prim_mk_const { Name = "ROUNDFLOAT", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ROUNDFLOAT", (Term.prim_mk_const { Name = "ROUNDFLOAT", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_lt", (Term.prim_mk_const { Name = "float_lt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_lt", (Term.prim_mk_const { Name = "float_lt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "float_lt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_le", (Term.prim_mk_const { Name = "float_le", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_le", (Term.prim_mk_const { Name = "float_le", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "float_le", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_gt", (Term.prim_mk_const { Name = "float_gt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_gt", (Term.prim_mk_const { Name = "float_gt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "float_gt", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_ge", (Term.prim_mk_const { Name = "float_ge", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_ge", (Term.prim_mk_const { Name = "float_ge", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "float_ge", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_eq", (Term.prim_mk_const { Name = "float_eq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_eq", (Term.prim_mk_const { Name = "float_eq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("==", (Term.prim_mk_const { Name = "float_eq", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "=="))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_neg", (Term.prim_mk_const { Name = "float_neg", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_neg", (Term.prim_mk_const { Name = "float_neg", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "float_neg", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_abs", (Term.prim_mk_const { Name = "float_abs", Thy = "ieee"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("float_abs", (Term.prim_mk_const { Name = "float_abs", Thy = "ieee"}))
  val ieee_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG roundmode_Axiom,
           case_def=roundmode_case_def,
           case_cong=roundmode_case_cong,
           induction=ORIG roundmode_induction,
           nchotomy=roundmode_nchotomy,
           size=SOME(Parse.Term`(ieee$roundmode_size) :(ieee$roundmode) -> (num$num)`,
                     ORIG roundmode_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME roundmode_distinct,
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


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG ccode_Axiom,
           case_def=ccode_case_def,
           case_cong=ccode_case_cong,
           induction=ORIG ccode_induction,
           nchotomy=ccode_nchotomy,
           size=SOME(Parse.Term`(ieee$ccode_size) :(ieee$ccode) -> (num$num)`,
                     ORIG ccode_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME ccode_distinct,
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
    thy = "ieee",
    thydataty = "compute",
    data = "ieee.round_def ieee.intround_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ieee"
end
