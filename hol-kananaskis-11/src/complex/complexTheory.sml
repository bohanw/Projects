structure complexTheory :> complexTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading complexTheory ... " else ()
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
          ("complex",
          Arbnum.fromString "1488589458",
          Arbnum.fromString "386004")
          [("transc",
           Arbnum.fromString "1488589315",
           Arbnum.fromString "197602")];
  val _ = Theory.incorporate_types "complex" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("pair", "prod"),
   ID("num", "num"), ID("bool", "!"), ID("min", "bool"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("arithmetic", "-"), ID("real", "/"), ID("bool", "/\\"),
   ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bool", "COND"),
   ID("pair", "FST"), ID("complex", "IM"), ID("arithmetic", "NUMERAL"),
   ID("complex", "RE"), ID("pair", "SND"), ID("num", "SUC"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("real", "abs"),
   ID("transc", "acs"), ID("complex", "arg"), ID("transc", "asn"),
   ID("complex", "complex_add"), ID("complex", "complex_div"),
   ID("complex", "complex_exp"), ID("complex", "complex_inv"),
   ID("complex", "complex_mul"), ID("complex", "complex_neg"),
   ID("complex", "complex_of_num"), ID("complex", "complex_of_real"),
   ID("complex", "complex_pow"), ID("complex", "complex_scalar_lmul"),
   ID("complex", "complex_scalar_rmul"), ID("complex", "complex_sub"),
   ID("complex", "conj"), ID("transc", "cos"), ID("transc", "exp"),
   ID("complex", "i"), ID("realax", "inv"), ID("complex", "modu"),
   ID("transc", "pi"), ID("real", "pow"), ID("realax", "real_add"),
   ID("realax", "real_lt"), ID("real", "real_lte"),
   ID("realax", "real_mul"), ID("realax", "real_neg"),
   ID("real", "real_of_num"), ID("real", "real_sub"), ID("transc", "sin"),
   ID("transc", "sqrt"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2, 0, 0], TYOP [0, 1, 0], TYOP [0, 1, 1],
   TYOP [0, 1, 3], TYOP [0, 0, 1], TYOP [0, 1, 5], TYOP [0, 0, 3],
   TYOP [3], TYOP [0, 8, 1], TYOP [0, 1, 9], TYV "'a", TYOP [5],
   TYOP [0, 11, 12], TYOP [0, 13, 12], TYOP [0, 8, 12], TYOP [0, 15, 12],
   TYOP [0, 1, 12], TYOP [0, 17, 12], TYOP [0, 0, 12], TYOP [0, 19, 12],
   TYOP [0, 8, 8], TYOP [0, 8, 21], TYOP [0, 0, 5], TYOP [0, 0, 0],
   TYOP [0, 0, 24], TYOP [0, 12, 12], TYOP [0, 12, 26], TYOP [0, 8, 15],
   TYOP [0, 1, 17], TYOP [0, 0, 19], TYOP [0, 12, 25], TYOP [0, 8, 0],
   TYOP [0, 0, 32]]
  end
  val _ = Theory.incorporate_consts "complex" tyvector
     [("modu", 2), ("i", 1), ("conj", 3), ("complex_sub", 4),
      ("complex_scalar_rmul", 6), ("complex_scalar_lmul", 7),
      ("complex_pow", 10), ("complex_of_real", 5), ("complex_of_num", 9),
      ("complex_neg", 3), ("complex_mul", 4), ("complex_inv", 3),
      ("complex_exp", 3), ("complex_div", 4), ("complex_add", 4),
      ("arg", 2), ("RE", 2), ("IM", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 0), TMV("b", 0), TMV("c", 0), TMV("d", 0), TMV("k", 0),
   TMV("l", 0), TMV("m", 8), TMV("n", 8), TMV("u", 1), TMV("v", 1),
   TMV("w", 1), TMV("x", 0), TMV("y", 11), TMV("y", 0), TMV("z", 1),
   TMC(4, 14), TMC(4, 16), TMC(4, 18), TMC(4, 20), TMC(6, 22), TMC(7, 22),
   TMC(8, 23), TMC(9, 22), TMC(10, 25), TMC(11, 27), TMC(12, 8),
   TMC(13, 27), TMC(13, 28), TMC(13, 29), TMC(13, 30), TMC(14, 27),
   TMC(15, 21), TMC(16, 21), TMC(17, 31), TMC(18, 2), TMC(19, 2),
   TMC(20, 21), TMC(21, 2), TMC(22, 2), TMC(23, 21), TMC(24, 8),
   TMC(25, 27), TMC(26, 24), TMC(27, 24), TMC(28, 2), TMC(29, 24),
   TMC(30, 4), TMC(31, 4), TMC(32, 3), TMC(33, 3), TMC(34, 4), TMC(35, 3),
   TMC(36, 9), TMC(37, 5), TMC(38, 10), TMC(39, 7), TMC(40, 6), TMC(41, 4),
   TMC(42, 3), TMC(43, 24), TMC(44, 24), TMC(45, 1), TMC(46, 24),
   TMC(47, 2), TMC(48, 0), TMC(49, 33), TMC(50, 25), TMC(51, 30),
   TMC(52, 30), TMC(53, 25), TMC(54, 24), TMC(55, 32), TMC(56, 25),
   TMC(57, 24), TMC(58, 24), TMC(59, 26)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op RE x = x
    val op RE =
    DT(((("complex",2),[]),[]), [read"%17%14%29%37$0@@%34$0@@|@"])
  fun op IM x = x
    val op IM =
    DT(((("complex",3),[]),[]), [read"%17%14%29%35$0@@%38$0@@|@"])
  fun op complex_of_real x = x
    val op complex_of_real =
    DT(((("complex",6),[]),[]), [read"%18%11%28%53$0@@%21$0@%71%25@@@|@"])
  fun op complex_of_num x = x
    val op complex_of_num =
    DT(((("complex",9),[]),[]), [read"%16%7%28%52$0@@%53%71$0@@@|@"])
  fun op i x = x
    val op i =
    DT(((("complex",14),[]),[]),
       [read"%28%61@%21%71%25@@%71%36%31%40@@@@@"])
  fun op complex_add x = x
    val op complex_add =
    DT(((("complex",15),[]),[]),
       [read"%17%14%17%10%28%46$1@$0@@%21%66%37$1@@%37$0@@@%66%35$1@@%35$0@@@@|@|@"])
  fun op complex_neg x = x
    val op complex_neg =
    DT(((("complex",16),[]),[]),
       [read"%17%14%28%51$0@@%21%70%37$0@@@%70%35$0@@@@|@"])
  fun op complex_mul x = x
    val op complex_mul =
    DT(((("complex",17),[]),[]),
       [read"%17%14%17%10%28%50$1@$0@@%21%72%69%37$1@@%37$0@@@%69%35$1@@%35$0@@@@%66%69%37$1@@%35$0@@@%69%35$1@@%37$0@@@@@|@|@"])
  fun op complex_inv x = x
    val op complex_inv =
    DT(((("complex",18),[]),[]),
       [read"%17%14%28%49$0@@%21%23%37$0@@%66%65%37$0@@%36%32%40@@@@%65%35$0@@%36%32%40@@@@@@%23%70%35$0@@@%66%65%37$0@@%36%32%40@@@@%65%35$0@@%36%32%40@@@@@@@|@"])
  fun op complex_sub x = x
    val op complex_sub =
    DT(((("complex",19),[]),[]),
       [read"%17%14%17%10%28%57$1@$0@@%46$1@%51$0@@@|@|@"])
  fun op complex_div x = x
    val op complex_div =
    DT(((("complex",20),[]),[]),
       [read"%17%14%17%10%28%47$1@$0@@%50$1@%49$0@@@|@|@"])
  fun op complex_scalar_lmul x = x
    val op complex_scalar_lmul =
    DT(((("complex",123),[]),[]),
       [read"%18%4%17%14%28%55$1@$0@@%21%69$1@%37$0@@@%69$1@%35$0@@@@|@|@"])
  fun op complex_scalar_rmul x = x
    val op complex_scalar_rmul =
    DT(((("complex",124),[]),[]),
       [read"%17%14%18%4%28%56$1@$0@@%21%69%37$1@@$0@@%69%35$1@@$0@@@|@|@"])
  fun op conj x = x
    val op conj =
    DT(((("complex",158),[]),[]),
       [read"%17%14%28%58$0@@%21%37$0@@%70%35$0@@@@|@"])
  fun op modu x = x
    val op modu =
    DT(((("complex",174),[]),[]),
       [read"%17%14%29%63$0@@%74%66%65%37$0@@%36%32%40@@@@%65%35$0@@%36%32%40@@@@@@|@"])
  fun op arg x = x
    val op arg =
    DT(((("complex",175),[]),[]),
       [read"%17%14%29%44$0@@%33%68%71%25@@%35$0@@@%43%23%37$0@@%63$0@@@@%66%70%43%23%37$0@@%63$0@@@@@%69%71%36%32%40@@@@%64@@@@|@"])
  fun op complex_pow_def x = x
    val op complex_pow_def =
    DT(((("complex",211),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%24%17%14%28%54$0@%25@@%52%36%31%40@@@@|@@%17%14%16%7%28%54$1@%39$0@@@%50$1@%54$1@$0@@@|@|@@"])
  fun op complex_exp x = x
    val op complex_exp =
    DT(((("complex",230),[]),[]),
       [read"%17%14%28%48$0@@%55%60%37$0@@@%21%59%35$0@@@%73%35$0@@@@@|@"])
  fun op COMPLEX_LEMMA1 x = x
    val op COMPLEX_LEMMA1 =
    DT(((("complex",0),
        [("bool",[25,51,53,54,56,58,63,96]),("numeral",[3,5]),
         ("real",
         [4,6,7,8,15,17,18,22,27,28,38,39,55,62,131,241,307,308,309,311,
          312,313,314,325,326]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%18%0%18%1%18%2%18%3%29%66%65%72%69$3@$1@@%69$2@$0@@@%36%32%40@@@@%65%66%69$3@$0@@%69$2@$1@@@%36%32%40@@@@@%69%66%65$3@%36%32%40@@@@%65$2@%36%32%40@@@@@%66%65$1@%36%32%40@@@@%65$0@%36%32%40@@@@@@|@|@|@|@"])
  fun op COMPLEX_LEMMA2 x = x
    val op COMPLEX_LEMMA2 =
    DT(((("complex",1),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("real",[122,210,247,249]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("transc",[69,74])]),["DISK_THM"]),
       [read"%18%11%18%13%68%42$1@@%74%66%65$1@%36%32%40@@@@%65$0@%36%32%40@@@@@@|@|@"])
  fun op COMPLEX x = x
    val op COMPLEX =
    DT(((("complex",4),
        [("bool",[25,36,56]),("complex",[2,3]),
         ("pair",[7])]),["DISK_THM"]),
       [read"%17%14%28%21%37$0@@%35$0@@@$0@|@"])
  fun op COMPLEX_RE_IM_EQ x = x
    val op COMPLEX_RE_IM_EQ =
    DT(((("complex",5),
        [("bool",[25,36,56]),("complex",[2,3]),
         ("pair",[10])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28$1@$0@@%24%29%37$1@@%37$0@@@%29%35$1@@%35$0@@@@|@|@"])
  fun op RE_COMPLEX_OF_REAL x = x
    val op RE_COMPLEX_OF_REAL =
    DT(((("complex",7),
        [("bool",[25,36,56]),("complex",[2,6]),
         ("pair",[8])]),["DISK_THM"]), [read"%18%11%29%37%53$0@@@$0@|@"])
  fun op IM_COMPLEX_OF_REAL x = x
    val op IM_COMPLEX_OF_REAL =
    DT(((("complex",8),
        [("bool",[25,36,56]),("complex",[3,6]),
         ("pair",[9])]),["DISK_THM"]),
       [read"%18%11%29%35%53$0@@@%71%25@@|@"])
  fun op COMPLEX_0 x = x
    val op COMPLEX_0 =
    DT(((("complex",10),[("bool",[25,56]),("complex",[9])]),["DISK_THM"]),
       [read"%28%52%25@@%53%71%25@@@"])
  fun op COMPLEX_1 x = x
    val op COMPLEX_1 =
    DT(((("complex",11),[("bool",[25,56]),("complex",[9])]),["DISK_THM"]),
       [read"%28%52%36%31%40@@@@%53%71%36%31%40@@@@@"])
  fun op COMPLEX_10 x = x
    val op COMPLEX_10 =
    DT(((("complex",12),
        [("bool",[25,26,27,51,54,56]),("complex",[2,3,5,6,9]),
         ("pair",[8,9]),("real",[3])]),["DISK_THM"]),
       [read"%75%28%52%36%31%40@@@@%52%25@@@"])
  fun op COMPLEX_0_THM x = x
    val op COMPLEX_0_THM =
    DT(((("complex",13),
        [("bool",[25,36,56]),("complex",[2,3,6,9]),("pair",[8,9,10]),
         ("real",[199,241])]),["DISK_THM"]),
       [read"%17%14%26%28$0@%52%25@@@%29%66%65%37$0@@%36%32%40@@@@%65%35$0@@%36%32%40@@@@@%71%25@@@|@"])
  fun op COMPLEX_ADD_COMM x = x
    val op COMPLEX_ADD_COMM =
    DT(((("complex",21),
        [("bool",[25,26,47,48,53,54,63,71,93,94,96]),("complex",[2,3,15]),
         ("real",[5]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%28%46$1@$0@@%46$0@$1@@|@|@"])
  fun op COMPLEX_ADD_ASSOC x = x
    val op COMPLEX_ADD_ASSOC =
    DT(((("complex",22),
        [("bool",[25,26,47,48,53,54,63,71,93,94,96]),("complex",[2,3,15]),
         ("pair",[8,9]),("real",[6]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%46$2@%46$1@$0@@@%46%46$2@$1@@$0@@|@|@|@"])
  fun op COMPLEX_ADD_RID x = x
    val op COMPLEX_ADD_RID =
    DT(((("complex",23),
        [("bool",[25,36,56]),("complex",[2,3,6,9,15]),("pair",[7,8,9]),
         ("real",[27])]),["DISK_THM"]),
       [read"%17%14%28%46$0@%52%25@@@$0@|@"])
  fun op COMPLEX_ADD_LID x = x
    val op COMPLEX_ADD_LID =
    DT(((("complex",24),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[21,23]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%28%46%52%25@@$0@@$0@|@"])
  fun op COMPLEX_ADD_RINV x = x
    val op COMPLEX_ADD_RINV =
    DT(((("complex",25),
        [("bool",[25,36,56]),("complex",[2,3,6,9,15,16]),("pair",[8,9]),
         ("real",[28])]),["DISK_THM"]),
       [read"%17%14%28%46$0@%51$0@@@%52%25@@|@"])
  fun op COMPLEX_ADD_LINV x = x
    val op COMPLEX_ADD_LINV =
    DT(((("complex",26),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[21,25]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%28%46%51$0@@$0@@%52%25@@|@"])
  fun op COMPLEX_MUL_COMM x = x
    val op COMPLEX_MUL_COMM =
    DT(((("complex",27),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("complex",[2,3,17]),("real",[5,16]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%28%50$1@$0@@%50$0@$1@@|@|@"])
  fun op COMPLEX_MUL_ASSOC x = x
    val op COMPLEX_MUL_ASSOC =
    DT(((("complex",28),
        [("bool",[25,63]),("complex",[2,3,17]),("pair",[4,8,9]),
         ("real",[4,6,17,22,38,99,100,325,326])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%50$2@%50$1@$0@@@%50%50$2@$1@@$0@@|@|@|@"])
  fun op COMPLEX_MUL_RID x = x
    val op COMPLEX_MUL_RID =
    DT(((("complex",29),
        [("bool",[25,56]),("complex",[2,3,6,9,17]),("pair",[7,8,9]),
         ("real",[7,29,40,162])]),["DISK_THM"]),
       [read"%17%14%28%50$0@%52%36%31%40@@@@@$0@|@"])
  fun op COMPLEX_MUL_LID x = x
    val op COMPLEX_MUL_LID =
    DT(((("complex",30),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,29]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%28%50%52%36%31%40@@@@$0@@$0@|@"])
  fun op COMPLEX_MUL_RINV x = x
    val op COMPLEX_MUL_RINV =
    DT(((("complex",31),
        [("bool",[25,26,27,51,53,54,56,58,63,96,105,124]),
         ("complex",[2,3,6,9,13,17,18]),("pair",[4,8,9]),
         ("real",
         [4,6,7,8,15,17,18,22,26,27,28,38,39,55,62,135,241,307,308,309,311,
          312,313,314,326,425]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%28%50$0@%49$0@@@%52%36%31%40@@@@@|@"])
  fun op COMPLEX_MUL_LINV x = x
    val op COMPLEX_MUL_LINV =
    DT(((("complex",32),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,31]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%28%50%49$0@@$0@@%52%36%31%40@@@@@|@"])
  fun op COMPLEX_ADD_LDISTRIB x = x
    val op COMPLEX_ADD_LDISTRIB =
    DT(((("complex",33),
        [("bool",[25,63]),("complex",[2,3,15,17]),("pair",[4,8,9]),
         ("real",[4,6,22,38,325])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%50$2@%46$1@$0@@@%46%50$2@$1@@%50$2@$0@@@|@|@|@"])
  fun op COMPLEX_ADD_RDISTRIB x = x
    val op COMPLEX_ADD_RDISTRIB =
    DT(((("complex",34),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,33]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%50%46$2@$1@@$0@@%46%50$2@$0@@%50$1@$0@@@|@|@|@"])
  fun op COMPLEX_EQ_LADD x = x
    val op COMPLEX_EQ_LADD =
    DT(((("complex",35),
        [("bool",[25,36,56,58]),("complex",[5,15]),("pair",[3]),
         ("real",[32])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%26%28%46$2@$1@@%46$2@$0@@@%28$1@$0@@|@|@|@"])
  fun op COMPLEX_EQ_RADD x = x
    val op COMPLEX_EQ_RADD =
    DT(((("complex",36),
        [("bool",[25,36,56]),("complex",[21,35])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%26%28%46$2@$0@@%46$1@$0@@@%28$2@$1@@|@|@|@"])
  fun op COMPLEX_ADD_RID_UNIQ x = x
    val op COMPLEX_ADD_RID_UNIQ =
    DT(((("complex",37),
        [("bool",[25,36,56]),("complex",[2,3,5,6,9,15]),("pair",[8,9]),
         ("real",[35])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%46$1@$0@@$1@@%28$0@%52%25@@@|@|@"])
  fun op COMPLEX_ADD_LID_UNIQ x = x
    val op COMPLEX_ADD_LID_UNIQ =
    DT(((("complex",38),
        [("bool",[25,36,56]),("complex",[21,37])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%46$1@$0@@$0@@%28$1@%52%25@@@|@|@"])
  fun op COMPLEX_NEGNEG x = x
    val op COMPLEX_NEGNEG =
    DT(((("complex",39),
        [("bool",[25,36,56]),("complex",[2,3,16]),("pair",[7,8,9]),
         ("real",[43])]),["DISK_THM"]), [read"%17%14%28%51%51$0@@@$0@|@"])
  fun op COMPLEX_NEG_EQ x = x
    val op COMPLEX_NEG_EQ =
    DT(((("complex",40),
        [("bool",[25,36,56]),("complex",[2,3,5,16]),("pair",[8,9]),
         ("real",[101])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%51$1@@$0@@%28$1@%51$0@@@|@|@"])
  fun op COMPLEX_EQ_NEG x = x
    val op COMPLEX_EQ_NEG =
    DT(((("complex",41),
        [("bool",[25,36,56]),("complex",[39,40])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%51$1@@%51$0@@@%28$1@$0@@|@|@"])
  fun op COMPLEX_RNEG_UNIQ x = x
    val op COMPLEX_RNEG_UNIQ =
    DT(((("complex",42),
        [("bool",[25,26,47,48,53,54,58,63,71,94]),("complex",[21,25,35]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%46$1@$0@@%52%25@@@%28$0@%51$1@@@|@|@"])
  fun op COMPLEX_LNEG_UNIQ x = x
    val op COMPLEX_LNEG_UNIQ =
    DT(((("complex",43),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[40,42]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%46$1@$0@@%52%25@@@%28$1@%51$0@@@|@|@"])
  fun op COMPLEX_NEG_ADD x = x
    val op COMPLEX_NEG_ADD =
    DT(((("complex",44),
        [("bool",[25,36,56]),("complex",[2,3,15,16]),("pair",[8,9]),
         ("real",[38])]),["DISK_THM"]),
       [read"%17%14%17%10%28%51%46$1@$0@@@%46%51$1@@%51$0@@@|@|@"])
  fun op COMPLEX_MUL_RZERO x = x
    val op COMPLEX_MUL_RZERO =
    DT(((("complex",45),
        [("bool",[25,36,56]),("complex",[2,3,6,9,17]),("pair",[8,9]),
         ("real",[27,40,162])]),["DISK_THM"]),
       [read"%17%14%28%50$0@%52%25@@@%52%25@@|@"])
  fun op COMPLEX_MUL_LZERO x = x
    val op COMPLEX_MUL_LZERO =
    DT(((("complex",46),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,45]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%28%50%52%25@@$0@@%52%25@@|@"])
  fun op COMPLEX_NEG_LMUL x = x
    val op COMPLEX_NEG_LMUL =
    DT(((("complex",47),
        [("bool",[25,36,56]),("complex",[2,3,16,17]),("pair",[8,9]),
         ("real",[22,38,41])]),["DISK_THM"]),
       [read"%17%14%17%10%28%51%50$1@$0@@@%50%51$1@@$0@@|@|@"])
  fun op COMPLEX_NEG_RMUL x = x
    val op COMPLEX_NEG_RMUL =
    DT(((("complex",48),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,47]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%28%51%50$1@$0@@@%50$1@%51$0@@@|@|@"])
  fun op COMPLEX_NEG_MUL2 x = x
    val op COMPLEX_NEG_MUL2 =
    DT(((("complex",49),
        [("bool",[25,36,56,58]),("complex",[39,47,48])]),["DISK_THM"]),
       [read"%17%14%17%10%28%50%51$1@@%51$0@@@%50$1@$0@@|@|@"])
  fun op COMPLEX_ENTIRE x = x
    val op COMPLEX_ENTIRE =
    DT(((("complex",50),
        [("bool",[25,36,56]),("complex",[0,2,3,13,17]),("pair",[8,9]),
         ("real",[45])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%50$1@$0@@%52%25@@@%41%28$1@%52%25@@@%28$0@%52%25@@@@|@|@"])
  fun op COMPLEX_NEG_0 x = x
    val op COMPLEX_NEG_0 =
    DT(((("complex",51),
        [("bool",[25,56]),("complex",[2,3,6,9,16]),("pair",[8,9]),
         ("real",[92])]),["DISK_THM"]), [read"%28%51%52%25@@@%52%25@@"])
  fun op COMPLEX_NEG_EQ0 x = x
    val op COMPLEX_NEG_EQ0 =
    DT(((("complex",52),
        [("bool",[25,36,56]),("complex",[40,51])]),["DISK_THM"]),
       [read"%17%14%26%28%51$0@@%52%25@@@%28$0@%52%25@@@|@"])
  fun op COMPLEX_SUB_REFL x = x
    val op COMPLEX_SUB_REFL =
    DT(((("complex",53),
        [("bool",[25,56]),("complex",[19,25])]),["DISK_THM"]),
       [read"%17%14%28%57$0@$0@@%52%25@@|@"])
  fun op COMPLEX_SUB_RZERO x = x
    val op COMPLEX_SUB_RZERO =
    DT(((("complex",54),
        [("bool",[25,36,56]),("complex",[19,23,51])]),["DISK_THM"]),
       [read"%17%14%28%57$0@%52%25@@@$0@|@"])
  fun op COMPLEX_SUB_LZERO x = x
    val op COMPLEX_SUB_LZERO =
    DT(((("complex",55),
        [("bool",[25,36,56]),("complex",[19,24])]),["DISK_THM"]),
       [read"%17%14%28%57%52%25@@$0@@%51$0@@|@"])
  fun op COMPLEX_SUB_LNEG x = x
    val op COMPLEX_SUB_LNEG =
    DT(((("complex",56),
        [("bool",[25,56]),("complex",[19,44])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57%51$1@@$0@@%51%46$1@$0@@@|@|@"])
  fun op COMPLEX_SUB_NEG2 x = x
    val op COMPLEX_SUB_NEG2 =
    DT(((("complex",57),
        [("bool",[25,26,47,48,53,54,63,71]),("complex",[19,21,39]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57%51$1@@%51$0@@@%57$0@$1@@|@|@"])
  fun op COMPLEX_NEG_SUB x = x
    val op COMPLEX_NEG_SUB =
    DT(((("complex",58),
        [("bool",[25,26,47,48,53,54,63,71]),("complex",[19,21,39,44]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%28%51%57$1@$0@@@%57$0@$1@@|@|@"])
  fun op COMPLEX_SUB_RNEG x = x
    val op COMPLEX_SUB_RNEG =
    DT(((("complex",59),
        [("bool",[25,56]),("complex",[19,39])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57$1@%51$0@@@%46$1@$0@@|@|@"])
  fun op COMPLEX_SUB_ADD x = x
    val op COMPLEX_SUB_ADD =
    DT(((("complex",60),
        [("bool",[25,36,56,58]),("complex",[19,22,23,26])]),["DISK_THM"]),
       [read"%17%14%17%10%28%46%57$1@$0@@$0@@$1@|@|@"])
  fun op COMPLEX_SUB_ADD2 x = x
    val op COMPLEX_SUB_ADD2 =
    DT(((("complex",61),[("complex",[21,60])]),["DISK_THM"]),
       [read"%17%14%17%10%28%46$0@%57$1@$0@@@$1@|@|@"])
  fun op COMPLEX_ADD_SUB x = x
    val op COMPLEX_ADD_SUB =
    DT(((("complex",62),
        [("bool",[25,56,58]),("complex",[19,21,22,23,25])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57%46$1@$0@@$1@@$0@|@|@"])
  fun op COMPLEX_SUB_SUB x = x
    val op COMPLEX_SUB_SUB =
    DT(((("complex",63),
        [("bool",[25,56,58]),("complex",[19,21,22,23,26])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57%57$1@$0@@$1@@%51$0@@|@|@"])
  fun op COMPLEX_SUB_SUB2 x = x
    val op COMPLEX_SUB_SUB2 =
    DT(((("complex",64),
        [("bool",[25,56,58]),("complex",[39,58,63])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57$1@%57$1@$0@@@$0@|@|@"])
  fun op COMPLEX_ADD_SUB2 x = x
    val op COMPLEX_ADD_SUB2 =
    DT(((("complex",65),
        [("bool",[25,56,58]),("complex",[58,62])]),["DISK_THM"]),
       [read"%17%14%17%10%28%57$1@%46$1@$0@@@%51$0@@|@|@"])
  fun op COMPLEX_ADD2_SUB2 x = x
    val op COMPLEX_ADD2_SUB2 =
    DT(((("complex",66),
        [("bool",[25,63]),("complex",[19,21,22,44])]),["DISK_THM"]),
       [read"%17%14%17%10%17%8%17%9%28%57%46$3@$2@@%46$1@$0@@@%46%57$3@$1@@%57$2@$0@@@|@|@|@|@"])
  fun op COMPLEX_SUB_TRIANGLE x = x
    val op COMPLEX_SUB_TRIANGLE =
    DT(((("complex",67),
        [("bool",[25,56,63]),("complex",[19,21,22,24,26])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%46%57$2@$1@@%57$1@$0@@@%57$2@$0@@|@|@|@"])
  fun op COMPLEX_SUB_0 x = x
    val op COMPLEX_SUB_0 =
    DT(((("complex",68),
        [("bool",[25,36,56]),("complex",[19,39,43])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%57$1@$0@@%52%25@@@%28$1@$0@@|@|@"])
  fun op COMPLEX_EQ_SUB_LADD x = x
    val op COMPLEX_EQ_SUB_LADD =
    DT(((("complex",69),
        [("bool",[25,56]),("complex",[36,60])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%26%28$2@%57$1@$0@@@%28%46$2@$0@@$1@@|@|@|@"])
  fun op COMPLEX_EQ_SUB_RADD x = x
    val op COMPLEX_EQ_SUB_RADD =
    DT(((("complex",70),[("bool",[58]),("complex",[69])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%26%28%57$2@$1@@$0@@%28$2@%46$0@$1@@@|@|@|@"])
  fun op COMPLEX_MUL_RNEG x = x
    val op COMPLEX_MUL_RNEG =
    DT(((("complex",71),
        [("bool",[25,36,56]),("complex",[48])]),["DISK_THM"]),
       [read"%17%14%17%10%28%50$1@%51$0@@@%51%50$1@$0@@@|@|@"])
  fun op COMPLEX_MUL_LNEG x = x
    val op COMPLEX_MUL_LNEG =
    DT(((("complex",72),
        [("bool",[25,36,56]),("complex",[47])]),["DISK_THM"]),
       [read"%17%14%17%10%28%50%51$1@@$0@@%51%50$1@$0@@@|@|@"])
  fun op COMPLEX_SUB_LDISTRIB x = x
    val op COMPLEX_SUB_LDISTRIB =
    DT(((("complex",73),
        [("bool",[25,36,56,58]),("complex",[19,33,48])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%50$2@%57$1@$0@@@%57%50$2@$1@@%50$2@$0@@@|@|@|@"])
  fun op COMPLEX_SUB_RDISTRIB x = x
    val op COMPLEX_SUB_RDISTRIB =
    DT(((("complex",74),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,73]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%50%57$2@$1@@$0@@%57%50$2@$0@@%50$1@$0@@@|@|@|@"])
  fun op COMPLEX_DIFFSQ x = x
    val op COMPLEX_DIFFSQ =
    DT(((("complex",75),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("complex",[19,21,22,25,27,34,35,38,73]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%28%50%46$1@$0@@%57$1@$0@@@%57%50$1@$1@@%50$0@$0@@@|@|@"])
  fun op COMPLEX_EQ_LMUL x = x
    val op COMPLEX_EQ_LMUL =
    DT(((("complex",76),
        [("bool",[25,36,56,58]),("complex",[50,54,68,73])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%26%28%50$2@$1@@%50$2@$0@@@%41%28$2@%52%25@@@%28$1@$0@@@|@|@|@"])
  fun op COMPLEX_EQ_RMUL x = x
    val op COMPLEX_EQ_RMUL =
    DT(((("complex",77),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("complex",[27,76]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%26%28%50$2@$0@@%50$1@$0@@@%41%28$0@%52%25@@@%28$2@$1@@@|@|@|@"])
  fun op COMPLEX_EQ_LMUL2 x = x
    val op COMPLEX_EQ_LMUL2 =
    DT(((("complex",78),
        [("bool",[26,27,52]),("complex",[76])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%75%28$2@%52%25@@@@%26%28$1@$0@@%28%50$2@$1@@%50$2@$0@@@@|@|@|@"])
  fun op COMPLEX_EQ_RMUL_IMP x = x
    val op COMPLEX_EQ_RMUL_IMP =
    DT(((("complex",79),
        [("bool",[25,26,27,52,53]),("complex",[77])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%24%75%28$2@%52%25@@@@%28%50$1@$2@@%50$0@$2@@@@%28$1@$0@@|@|@|@"])
  fun op COMPLEX_EQ_LMUL_IMP x = x
    val op COMPLEX_EQ_LMUL_IMP =
    DT(((("complex",80),[("complex",[27,79])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%24%75%28$2@%52%25@@@@%28%50$2@$1@@%50$2@$0@@@@%28$1@$0@@|@|@|@"])
  fun op COMPLEX_NEG_INV x = x
    val op COMPLEX_NEG_INV =
    DT(((("complex",81),
        [("bool",[25,51,53,56,58,105,124]),("complex",[2,3,13,16,18]),
         ("pair",[4,8,9]),("real",[26,43,241,307,308])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%28%49%51$0@@@%51%49$0@@@@|@"])
  fun op COMPLEX_INV_MUL x = x
    val op COMPLEX_INV_MUL =
    DT(((("complex",82),
        [("bool",[25,26,27,51,53,54,56,58,63,96,105,124]),
         ("complex",[0,2,3,13,17,18]),("pair",[4,8,9]),
         ("real",
         [4,6,8,15,17,18,22,26,27,28,38,39,43,55,62,175,307,308,309,311,
          312,313,314,326]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%17%14%17%10%30%24%75%28$1@%52%25@@@@%75%28$0@%52%25@@@@@%28%49%50$1@$0@@@%50%49$1@@%49$0@@@@|@|@"])
  fun op COMPLEX_INVINV x = x
    val op COMPLEX_INVINV =
    DT(((("complex",83),
        [("bool",[25,26,27,30,52,53,58]),
         ("complex",[12,31,32,45,77])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%28%49%49$0@@@$0@@|@"])
  fun op COMPLEX_LINV_UNIQ x = x
    val op COMPLEX_LINV_UNIQ =
    DT(((("complex",84),
        [("bool",[25,26,27,30,53,58]),
         ("complex",[12,28,29,30,32,46,83])]),["DISK_THM"]),
       [read"%17%14%17%10%30%28%50$1@$0@@%52%36%31%40@@@@@%28$1@%49$0@@@|@|@"])
  fun op COMPLEX_RINV_UNIQ x = x
    val op COMPLEX_RINV_UNIQ =
    DT(((("complex",85),[("complex",[27,84])]),["DISK_THM"]),
       [read"%17%14%17%10%30%28%50$1@$0@@%52%36%31%40@@@@@%28$0@%49$1@@@|@|@"])
  fun op COMPLEX_INV_0 x = x
    val op COMPLEX_INV_0 =
    DT(((("complex",86),
        [("bool",[25,51,56]),("complex",[2,3,6,9,18]),("pair",[4,8,9]),
         ("real",[7,21,26,39,92,241,308,425])]),["DISK_THM"]),
       [read"%28%49%52%25@@@%52%25@@"])
  fun op COMPLEX_INV1 x = x
    val op COMPLEX_INV1 =
    DT(((("complex",87),
        [("bool",[25,51,56]),("complex",[2,3,6,9,18]),("pair",[4,8,9]),
         ("real",[18,26,27,39,92,133,241,308,425])]),["DISK_THM"]),
       [read"%28%49%52%36%31%40@@@@@%52%36%31%40@@@@"])
  fun op COMPLEX_INV_INV x = x
    val op COMPLEX_INV_INV =
    DT(((("complex",88),
        [("bool",[25,26,27,30,54,56]),("complex",[83,86])]),["DISK_THM"]),
       [read"%17%14%28%49%49$0@@@$0@|@"])
  fun op COMPLEX_INV_NEG x = x
    val op COMPLEX_INV_NEG =
    DT(((("complex",89),
        [("bool",[25,26,27,30,54,56]),
         ("complex",[51,81,86])]),["DISK_THM"]),
       [read"%17%14%28%49%51$0@@@%51%49$0@@@|@"])
  fun op COMPLEX_INV_EQ_0 x = x
    val op COMPLEX_INV_EQ_0 =
    DT(((("complex",90),
        [("bool",[25,26,56,58]),("complex",[86,88])]),["DISK_THM"]),
       [read"%17%14%26%28%49$0@@%52%25@@@%28$0@%52%25@@@|@"])
  fun op COMPLEX_INV_NZ x = x
    val op COMPLEX_INV_NZ =
    DT(((("complex",91),
        [("bool",[25,36,53]),("complex",[90])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%75%28%49$0@@%52%25@@@@|@"])
  fun op COMPLEX_INV_INJ x = x
    val op COMPLEX_INV_INJ =
    DT(((("complex",92),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[88]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%49$1@@%49$0@@@%28$1@$0@@|@|@"])
  fun op COMPLEX_NEG_LDIV x = x
    val op COMPLEX_NEG_LDIV =
    DT(((("complex",93),
        [("bool",[25,36,56]),("complex",[20,47])]),["DISK_THM"]),
       [read"%17%14%17%10%28%51%47$1@$0@@@%47%51$1@@$0@@|@|@"])
  fun op COMPLEX_NEG_RDIV x = x
    val op COMPLEX_NEG_RDIV =
    DT(((("complex",94),
        [("bool",[25,36,56]),("complex",[20,48,89])]),["DISK_THM"]),
       [read"%17%14%17%10%28%51%47$1@$0@@@%47$1@%51$0@@@|@|@"])
  fun op COMPLEX_NEG_DIV2 x = x
    val op COMPLEX_NEG_DIV2 =
    DT(((("complex",95),
        [("bool",[25,36,56]),("complex",[20,49,89])]),["DISK_THM"]),
       [read"%17%14%17%10%28%47%51$1@@%51$0@@@%47$1@$0@@|@|@"])
  fun op COMPLEX_INV_1OVER x = x
    val op COMPLEX_INV_1OVER =
    DT(((("complex",96),
        [("bool",[25,36,56]),("complex",[20,30])]),["DISK_THM"]),
       [read"%17%14%28%49$0@@%47%52%36%31%40@@@@$0@@|@"])
  fun op COMPLEX_DIV1 x = x
    val op COMPLEX_DIV1 =
    DT(((("complex",97),
        [("bool",[25,36,56]),("complex",[20,29,87])]),["DISK_THM"]),
       [read"%17%14%28%47$0@%52%36%31%40@@@@@$0@|@"])
  fun op COMPLEX_DIV_ADD x = x
    val op COMPLEX_DIV_ADD =
    DT(((("complex",98),
        [("bool",[25,36,56,58]),("complex",[20,34])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%46%47$2@$0@@%47$1@$0@@@%47%46$2@$1@@$0@@|@|@|@"])
  fun op COMPLEX_DIV_SUB x = x
    val op COMPLEX_DIV_SUB =
    DT(((("complex",99),
        [("bool",[25,36,56,58]),("complex",[20,74])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%28%57%47$2@$0@@%47$1@$0@@@%47%57$2@$1@@$0@@|@|@|@"])
  fun op COMPLEX_DIV_RMUL_CANCEL x = x
    val op COMPLEX_DIV_RMUL_CANCEL =
    DT(((("complex",100),
        [("bool",[25,26,27,30,51,54,56,58,105,124]),
         ("complex",[20,27,28,29,32,45,46,76,82,86])]),["DISK_THM"]),
       [read"%17%9%17%14%17%10%30%75%28$2@%52%25@@@@%28%47%50$1@$2@@%50$0@$2@@@%47$1@$0@@@|@|@|@"])
  fun op COMPLEX_DIV_LMUL_CANCEL x = x
    val op COMPLEX_DIV_LMUL_CANCEL =
    DT(((("complex",101),
        [("bool",[25,53,54,55,63]),("complex",[27,100]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%17%9%17%14%17%10%30%75%28$2@%52%25@@@@%28%47%50$2@$1@@%50$2@$0@@@%47$1@$0@@@|@|@|@"])
  fun op COMPLEX_DIV_DENOM_CANCEL x = x
    val op COMPLEX_DIV_DENOM_CANCEL =
    DT(((("complex",102),
        [("bool",[25,26,27,30,51,52,54,56,58,105,124]),
         ("complex",[20,27,28,29,31,45,46,76,82,83,86,90])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%75%28$2@%52%25@@@@%28%47%47$1@$2@@%47$0@$2@@@%47$1@$0@@@|@|@|@"])
  fun op COMPLEX_DIV_INNER_CANCEL x = x
    val op COMPLEX_DIV_INNER_CANCEL =
    DT(((("complex",103),
        [("bool",[25,26,27,30,52,54,56,58,105,124]),
         ("complex",[20,28,30,32,46,76])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%75%28$2@%52%25@@@@%28%50%47$1@$2@@%47$2@$0@@@%47$1@$0@@@|@|@|@"])
  fun op COMPLEX_DIV_OUTER_CANCEL x = x
    val op COMPLEX_DIV_OUTER_CANCEL =
    DT(((("complex",104),
        [("bool",[25,36,63]),("complex",[27,103])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%75%28$2@%52%25@@@@%28%50%47$2@$1@@%47$0@$2@@@%47$0@$1@@@|@|@|@"])
  fun op COMPLEX_DIV_MUL2 x = x
    val op COMPLEX_DIV_MUL2 =
    DT(((("complex",105),
        [("bool",[25,26,27,54,56]),("complex",[101])]),["DISK_THM"]),
       [read"%17%14%17%10%30%24%75%28$1@%52%25@@@@%75%28$0@%52%25@@@@@%17%9%28%47$0@$1@@%47%50$2@$0@@%50$2@$1@@@|@@|@|@"])
  fun op COMPLEX_ADD_RAT x = x
    val op COMPLEX_ADD_RAT =
    DT(((("complex",106),
        [("bool",[25,26,27,53,54,56,58,105,124]),
         ("complex",[98,100,101])]),["DISK_THM"]),
       [read"%17%14%17%10%17%8%17%9%30%24%75%28$2@%52%25@@@@%75%28$0@%52%25@@@@@%28%46%47$3@$2@@%47$1@$0@@@%47%46%50$3@$0@@%50$2@$1@@@%50$2@$0@@@@|@|@|@|@"])
  fun op COMPLEX_SUB_RAT x = x
    val op COMPLEX_SUB_RAT =
    DT(((("complex",107),
        [("bool",[25,53,54,55,58,63,105,124]),("complex",[19,48,93,106]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%17%14%17%10%17%8%17%9%30%24%75%28$2@%52%25@@@@%75%28$0@%52%25@@@@@%28%57%47$3@$2@@%47$1@$0@@@%47%57%50$3@$0@@%50$2@$1@@@%50$2@$0@@@@|@|@|@|@"])
  fun op COMPLEX_DIV_LZERO x = x
    val op COMPLEX_DIV_LZERO =
    DT(((("complex",108),
        [("bool",[25,36,56]),("complex",[20,46])]),["DISK_THM"]),
       [read"%17%14%28%47%52%25@@$0@@%52%25@@|@"])
  fun op COMPLEX_DIV_REFL x = x
    val op COMPLEX_DIV_REFL =
    DT(((("complex",109),
        [("bool",[25,36,63]),("complex",[20,31])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%28%47$0@$0@@%52%36%31%40@@@@@|@"])
  fun op COMPLEX_SUB_INV2 x = x
    val op COMPLEX_SUB_INV2 =
    DT(((("complex",110),
        [("bool",[25,56,58]),
         ("complex",[20,27,28,29,30,31,32,74,82])]),["DISK_THM"]),
       [read"%17%14%17%10%30%24%75%28$1@%52%25@@@@%75%28$0@%52%25@@@@@%28%57%49$1@@%49$0@@@%47%57$0@$1@@%50$1@$0@@@@|@|@"])
  fun op COMPLEX_EQ_RDIV_EQ x = x
    val op COMPLEX_EQ_RDIV_EQ =
    DT(((("complex",111),
        [("bool",[25,26,27,53,54,56,58,105,124]),
         ("complex",[20,27,28,29,31,32])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%75%28$0@%52%25@@@@%26%28$2@%47$1@$0@@@%28%50$2@$0@@$1@@@|@|@|@"])
  fun op COMPLEX_EQ_LDIV_EQ x = x
    val op COMPLEX_EQ_LDIV_EQ =
    DT(((("complex",112),
        [("bool",[25,26,27,53,54,56,58,105,124]),
         ("complex",[20,27,28,29,31,32])]),["DISK_THM"]),
       [read"%17%14%17%10%17%9%30%75%28$0@%52%25@@@@%26%28%47$2@$0@@$1@@%28$2@%50$1@$0@@@@|@|@|@"])
  fun op COMPLEX_OF_REAL_EQ x = x
    val op COMPLEX_OF_REAL_EQ =
    DT(((("complex",113),
        [("bool",[25,36,51,56]),("complex",[2,3,5,6]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%18%11%18%13%26%28%53$1@@%53$0@@@%29$1@$0@@|@|@"])
  fun op COMPLEX_OF_REAL_ADD x = x
    val op COMPLEX_OF_REAL_ADD =
    DT(((("complex",114),
        [("bool",[25,36,56]),("complex",[2,3,6,15]),("pair",[8,9]),
         ("real",[27])]),["DISK_THM"]),
       [read"%18%11%18%13%28%46%53$1@@%53$0@@@%53%66$1@$0@@@|@|@"])
  fun op COMPLEX_OF_REAL_NEG x = x
    val op COMPLEX_OF_REAL_NEG =
    DT(((("complex",115),
        [("bool",[25,36,56]),("complex",[2,3,6,16]),("pair",[8,9]),
         ("real",[92])]),["DISK_THM"]),
       [read"%18%11%28%51%53$0@@@%53%70$0@@@|@"])
  fun op COMPLEX_OF_REAL_MUL x = x
    val op COMPLEX_OF_REAL_MUL =
    DT(((("complex",116),
        [("bool",[25,36,56]),("complex",[2,3,6,17]),("pair",[8,9]),
         ("real",[27,39,40,162])]),["DISK_THM"]),
       [read"%18%11%18%13%28%50%53$1@@%53$0@@@%53%69$1@$0@@@|@|@"])
  fun op COMPLEX_OF_REAL_INV x = x
    val op COMPLEX_OF_REAL_INV =
    DT(((("complex",117),
        [("bool",[25,26,27,30,51,54,56,105]),("complex",[2,3,6,18]),
         ("pair",[4,8,9]),
         ("real",
         [7,17,18,21,26,27,30,39,92,175,241,308,425])]),["DISK_THM"]),
       [read"%18%11%28%49%53$0@@@%53%62$0@@@|@"])
  fun op COMPLEX_OF_REAL_SUB x = x
    val op COMPLEX_OF_REAL_SUB =
    DT(((("complex",118),
        [("bool",[25,36,56]),("complex",[19,114,115]),
         ("real",[22])]),["DISK_THM"]),
       [read"%18%11%18%13%28%57%53$1@@%53$0@@@%53%72$1@$0@@@|@|@"])
  fun op COMPLEX_OF_REAL_DIV x = x
    val op COMPLEX_OF_REAL_DIV =
    DT(((("complex",119),
        [("bool",[25,36,56]),("complex",[20,116,117]),
         ("real",[26])]),["DISK_THM"]),
       [read"%18%11%18%13%28%47%53$1@@%53$0@@@%53%23$1@$0@@@|@|@"])
  fun op COMPLEX_OF_NUM_EQ x = x
    val op COMPLEX_OF_NUM_EQ =
    DT(((("complex",120),
        [("bool",[25,36,56]),("complex",[9,113]),
         ("real",[331])]),["DISK_THM"]),
       [read"%16%6%16%7%26%28%52$1@@%52$0@@@%27$1@$0@@|@|@"])
  fun op COMPLEX_OF_NUM_ADD x = x
    val op COMPLEX_OF_NUM_ADD =
    DT(((("complex",121),
        [("bool",[25,36,56]),("complex",[9,114]),
         ("real",[327])]),["DISK_THM"]),
       [read"%16%6%16%7%28%46%52$1@@%52$0@@@%52%20$1@$0@@@|@|@"])
  fun op COMPLEX_OF_NUM_MUL x = x
    val op COMPLEX_OF_NUM_MUL =
    DT(((("complex",122),
        [("bool",[25,36,56]),("complex",[9,116]),
         ("real",[329])]),["DISK_THM"]),
       [read"%16%6%16%7%28%50%52$1@@%52$0@@@%52%19$1@$0@@@|@|@"])
  fun op COMPLEX_SCALAR_LMUL x = x
    val op COMPLEX_SCALAR_LMUL =
    DT(((("complex",125),
        [("bool",[25,36,56]),("complex",[2,3,123]),("pair",[8,9]),
         ("real",[17])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%28%55$2@%55$1@$0@@@%55%69$2@$1@@$0@@|@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_NEG x = x
    val op COMPLEX_SCALAR_LMUL_NEG =
    DT(((("complex",126),
        [("bool",[25,36,56]),("complex",[2,3,16,123]),("pair",[8,9]),
         ("real",[41])]),["DISK_THM"]),
       [read"%18%4%17%14%28%51%55$1@$0@@@%55%70$1@@$0@@|@|@"])
  fun op COMPLEX_NEG_SCALAR_LMUL x = x
    val op COMPLEX_NEG_SCALAR_LMUL =
    DT(((("complex",127),
        [("bool",[25,36,56]),("complex",[2,3,16,123]),("pair",[8,9]),
         ("real",[307,308])]),["DISK_THM"]),
       [read"%18%4%17%14%28%55$1@%51$0@@@%55%70$1@@$0@@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_ADD x = x
    val op COMPLEX_SCALAR_LMUL_ADD =
    DT(((("complex",128),
        [("bool",[25,36,56,58]),("complex",[2,3,15,123]),("pair",[8,9]),
         ("real",[326])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%28%55%66$2@$1@@$0@@%46%55$2@$0@@%55$1@$0@@@|@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_SUB x = x
    val op COMPLEX_SCALAR_LMUL_SUB =
    DT(((("complex",129),
        [("bool",[25,36,56,58]),("complex",[19,126,128]),
         ("real",[22])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%28%55%72$2@$1@@$0@@%57%55$2@$0@@%55$1@$0@@@|@|@|@"])
  fun op COMPLEX_ADD_SCALAR_LMUL x = x
    val op COMPLEX_ADD_SCALAR_LMUL =
    DT(((("complex",130),
        [("bool",[25,36,56,58]),("complex",[2,3,15,123]),("pair",[8,9]),
         ("real",[325])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%28%55$2@%46$1@$0@@@%46%55$2@$1@@%55$2@$0@@@|@|@|@"])
  fun op COMPLEX_SUB_SCALAR_LMUL x = x
    val op COMPLEX_SUB_SCALAR_LMUL =
    DT(((("complex",131),
        [("bool",[25,36,56]),("complex",[19,126,127,130])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%28%55$2@%57$1@$0@@@%57%55$2@$1@@%55$2@$0@@@|@|@|@"])
  fun op COMPLEX_MUL_SCALAR_LMUL2 x = x
    val op COMPLEX_MUL_SCALAR_LMUL2 =
    DT(((("complex",132),
        [("bool",[25,51,53,54,56,58,63,93,96]),("complex",[2,3,17,123]),
         ("pair",[3,8,9]),
         ("real",
         [4,6,8,15,17,18,22,27,28,38,39,55,62,307,308,309,311,312,313,314,
          325,326]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%17%10%28%50%55$3@$1@@%55$2@$0@@@%55%69$3@$2@@%50$1@$0@@@|@|@|@|@"])
  fun op COMPLEX_LMUL_SCALAR_LMUL x = x
    val op COMPLEX_LMUL_SCALAR_LMUL =
    DT(((("complex",133),
        [("bool",[25,51,53,54,56,58,63,93,96]),("complex",[2,3,17,123]),
         ("pair",[3,8,9]),
         ("real",
         [4,6,8,15,17,18,22,27,28,38,39,55,62,307,308,309,311,312,313,314,
          325,326]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%28%50%55$2@$1@@$0@@%55$2@%50$1@$0@@@|@|@|@"])
  fun op COMPLEX_RMUL_SCALAR_LMUL x = x
    val op COMPLEX_RMUL_SCALAR_LMUL =
    DT(((("complex",134),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,133]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%28%50$1@%55$2@$0@@@%55$2@%50$1@$0@@@|@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_ZERO x = x
    val op COMPLEX_SCALAR_LMUL_ZERO =
    DT(((("complex",135),
        [("bool",[25,36,56]),("complex",[6,9,123]),
         ("real",[39])]),["DISK_THM"]),
       [read"%17%14%28%55%71%25@@$0@@%52%25@@|@"])
  fun op COMPLEX_ZERO_SCALAR_LMUL x = x
    val op COMPLEX_ZERO_SCALAR_LMUL =
    DT(((("complex",136),
        [("bool",[25,36,56]),("complex",[2,3,6,9,123]),("pair",[8,9]),
         ("real",[40])]),["DISK_THM"]),
       [read"%18%4%28%55$0@%52%25@@@%52%25@@|@"])
  fun op COMPLEX_SCALAR_LMUL_ONE x = x
    val op COMPLEX_SCALAR_LMUL_ONE =
    DT(((("complex",137),
        [("bool",[25,36,56]),("complex",[2,3,123]),("pair",[7]),
         ("real",[18])]),["DISK_THM"]),
       [read"%17%14%28%55%71%36%31%40@@@@$0@@$0@|@"])
  fun op COMPLEX_SCALAR_LMUL_NEG1 x = x
    val op COMPLEX_SCALAR_LMUL_NEG1 =
    DT(((("complex",138),
        [("bool",[25,56,58]),("complex",[126,137])]),["DISK_THM"]),
       [read"%17%14%28%55%70%71%36%31%40@@@@@$0@@%51$0@@|@"])
  fun op COMPLEX_DOUBLE x = x
    val op COMPLEX_DOUBLE =
    DT(((("complex",139),
        [("arithmetic",[18]),("bool",[25,56]),("complex",[128,137]),
         ("real",[126])]),["DISK_THM"]),
       [read"%17%14%28%46$0@$0@@%55%71%36%32%40@@@@$0@@|@"])
  fun op COMPLEX_SCALAR_LMUL_ENTIRE x = x
    val op COMPLEX_SCALAR_LMUL_ENTIRE =
    DT(((("complex",140),
        [("bool",[25,36,56,58,99]),("complex",[2,3,13,123]),("pair",[8,9]),
         ("real",[45,199,241])]),["DISK_THM"]),
       [read"%18%4%17%14%26%28%55$1@$0@@%52%25@@@%41%29$1@%71%25@@@%28$0@%52%25@@@@|@|@"])
  fun op COMPLEX_EQ_SCALAR_LMUL x = x
    val op COMPLEX_EQ_SCALAR_LMUL =
    DT(((("complex",141),
        [("bool",[25,36,56,58]),("complex",[68,131,140])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%26%28%55$2@$1@@%55$2@$0@@@%41%29$2@%71%25@@@%28$1@$0@@@|@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_EQ x = x
    val op COMPLEX_SCALAR_LMUL_EQ =
    DT(((("complex",142),
        [("bool",[25,36,56,58]),("complex",[54,68,129,140]),
         ("real",[87])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%26%28%55$2@$0@@%55$1@$0@@@%41%29$2@$1@@%28$0@%52%25@@@@|@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_EQ1 x = x
    val op COMPLEX_SCALAR_LMUL_EQ1 =
    DT(((("complex",143),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("complex",[137,142]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%18%4%17%14%26%28%55$1@$0@@$0@@%41%29$1@%71%36%31%40@@@@@%28$0@%52%25@@@@|@|@"])
  fun op COMPLEX_INV_SCALAR_LMUL x = x
    val op COMPLEX_INV_SCALAR_LMUL =
    DT(((("complex",144),
        [("bool",[25,26,27,51,52,53,54,56,58,63,96,105]),
         ("complex",[2,3,13,18,123]),("pair",[4,8,9]),
         ("real",
         [8,15,16,17,18,19,26,28,29,39,45,55,62,175,241,246,307,308,309,
          311,312,313,314,325,326]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%18%4%17%14%30%24%75%29$1@%71%25@@@@%75%28$0@%52%25@@@@@%28%49%55$1@$0@@@%55%62$1@@%49$0@@@@|@|@"])
  fun op COMPLEX_SCALAR_LMUL_DIV2 x = x
    val op COMPLEX_SCALAR_LMUL_DIV2 =
    DT(((("complex",145),
        [("bool",[25,56]),("complex",[20,132,144]),
         ("real",[26])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%17%10%30%24%75%29$2@%71%25@@@@%75%28$0@%52%25@@@@@%28%47%55$3@$1@@%55$2@$0@@@%55%23$3@$2@@%47$1@$0@@@@|@|@|@|@"])
  fun op COMPLEX_SCALAR_MUL_COMM x = x
    val op COMPLEX_SCALAR_MUL_COMM =
    DT(((("complex",146),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[123,124]),("real",[16]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%18%4%17%14%28%55$1@$0@@%56$0@$1@@|@|@"])
  fun op COMPLEX_SCALAR_RMUL x = x
    val op COMPLEX_SCALAR_RMUL =
    DT(((("complex",147),
        [("bool",[25,56,58]),("complex",[125,146]),
         ("real",[16])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%28%56%56$0@$2@@$1@@%56$0@%69$2@$1@@@|@|@|@"])
  fun op COMPLEX_SCALAR_RMUL_NEG x = x
    val op COMPLEX_SCALAR_RMUL_NEG =
    DT(((("complex",148),
        [("bool",[25,36,56,58]),("complex",[126,146])]),["DISK_THM"]),
       [read"%18%4%17%14%28%51%56$0@$1@@@%56$0@%70$1@@@|@|@"])
  fun op COMPLEX_NEG_SCALAR_RMUL x = x
    val op COMPLEX_NEG_SCALAR_RMUL =
    DT(((("complex",149),
        [("bool",[25,36,56,58]),("complex",[127,146])]),["DISK_THM"]),
       [read"%18%4%17%14%28%56%51$0@@$1@@%56$0@%70$1@@@|@|@"])
  fun op COMPLEX_SCALAR_RMUL_ADD x = x
    val op COMPLEX_SCALAR_RMUL_ADD =
    DT(((("complex",150),
        [("bool",[25,36,56,58]),("complex",[128,146])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%28%56$0@%66$2@$1@@@%46%56$0@$2@@%56$0@$1@@@|@|@|@"])
  fun op COMPLEX_RSCALAR_RMUL_SUB x = x
    val op COMPLEX_RSCALAR_RMUL_SUB =
    DT(((("complex",151),
        [("bool",[25,36,56,58]),("complex",[129,146])]),["DISK_THM"]),
       [read"%18%4%18%5%17%14%28%56$0@%72$2@$1@@@%57%56$0@$2@@%56$0@$1@@@|@|@|@"])
  fun op COMPLEX_ADD_RSCALAR_RMUL x = x
    val op COMPLEX_ADD_RSCALAR_RMUL =
    DT(((("complex",152),
        [("bool",[25,36,56,58]),("complex",[130,146])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%28%56%46$1@$0@@$2@@%46%56$1@$2@@%56$0@$2@@@|@|@|@"])
  fun op COMPLEX_SUB_SCALAR_RMUL x = x
    val op COMPLEX_SUB_SCALAR_RMUL =
    DT(((("complex",153),
        [("bool",[25,36,56,58]),("complex",[131,146])]),["DISK_THM"]),
       [read"%18%4%17%14%17%10%28%56%57$1@$0@@$2@@%57%56$1@$2@@%56$0@$2@@@|@|@|@"])
  fun op COMPLEX_SCALAR_RMUL_ZERO x = x
    val op COMPLEX_SCALAR_RMUL_ZERO =
    DT(((("complex",154),
        [("bool",[25,36,56]),("complex",[6,9,124]),
         ("real",[40])]),["DISK_THM"]),
       [read"%17%14%28%56$0@%71%25@@@%52%25@@|@"])
  fun op COMPLEX_ZERO_SCALAR_RMUL x = x
    val op COMPLEX_ZERO_SCALAR_RMUL =
    DT(((("complex",155),
        [("bool",[25,36,56,58]),("complex",[136,146])]),["DISK_THM"]),
       [read"%18%4%28%56%52%25@@$0@@%52%25@@|@"])
  fun op COMPLEX_SCALAR_RMUL_ONE x = x
    val op COMPLEX_SCALAR_RMUL_ONE =
    DT(((("complex",156),
        [("bool",[25,36,56,58]),("complex",[137,146])]),["DISK_THM"]),
       [read"%17%14%28%56$0@%71%36%31%40@@@@@$0@|@"])
  fun op COMPLEX_SCALAR_RMUL_NEG1 x = x
    val op COMPLEX_SCALAR_RMUL_NEG1 =
    DT(((("complex",157),
        [("bool",[25,36,56,58]),("complex",[138,146])]),["DISK_THM"]),
       [read"%17%14%28%56$0@%70%71%36%31%40@@@@@@%51$0@@|@"])
  fun op CONJ_REAL_REFL x = x
    val op CONJ_REAL_REFL =
    DT(((("complex",159),
        [("bool",[25,36,56]),("complex",[2,3,6,158]),("pair",[8,9]),
         ("real",[92])]),["DISK_THM"]),
       [read"%18%11%28%58%53$0@@@%53$0@@|@"])
  fun op CONJ_NUM_REFL x = x
    val op CONJ_NUM_REFL =
    DT(((("complex",160),
        [("bool",[25,36,56]),("complex",[9,159])]),["DISK_THM"]),
       [read"%16%7%28%58%52$0@@@%52$0@@|@"])
  fun op CONJ_ADD x = x
    val op CONJ_ADD =
    DT(((("complex",161),
        [("bool",[25,36,56]),("complex",[2,3,15,158]),("pair",[8,9]),
         ("real",[38])]),["DISK_THM"]),
       [read"%17%14%17%10%28%58%46$1@$0@@@%46%58$1@@%58$0@@@|@|@"])
  fun op CONJ_NEG x = x
    val op CONJ_NEG =
    DT(((("complex",162),
        [("bool",[25,36,56]),("complex",[2,3,16,158]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%17%14%28%58%51$0@@@%51%58$0@@@|@"])
  fun op CONJ_SUB x = x
    val op CONJ_SUB =
    DT(((("complex",163),
        [("bool",[25,36,56]),("complex",[19,161,162])]),["DISK_THM"]),
       [read"%17%14%17%10%28%58%57$1@$0@@@%57%58$1@@%58$0@@@|@|@"])
  fun op CONJ_MUL x = x
    val op CONJ_MUL =
    DT(((("complex",164),
        [("bool",[25,36,56,58]),("complex",[2,3,17,158]),("pair",[8,9]),
         ("real",[38,41,42,44])]),["DISK_THM"]),
       [read"%17%14%17%10%28%58%50$1@$0@@@%50%58$1@@%58$0@@@|@|@"])
  fun op CONJ_INV x = x
    val op CONJ_INV =
    DT(((("complex",165),
        [("bool",[25,51,56]),("complex",[2,3,18,158]),("pair",[4,8,9]),
         ("real",[26,43,241,307,308])]),["DISK_THM"]),
       [read"%17%14%28%58%49$0@@@%49%58$0@@@|@"])
  fun op CONJ_DIV x = x
    val op CONJ_DIV =
    DT(((("complex",166),
        [("bool",[25,36,56]),("complex",[20,164,165])]),["DISK_THM"]),
       [read"%17%14%17%10%28%58%47$1@$0@@@%47%58$1@@%58$0@@@|@|@"])
  fun op CONJ_SCALAR_LMUL x = x
    val op CONJ_SCALAR_LMUL =
    DT(((("complex",167),
        [("bool",[25,36,56]),("complex",[2,3,123,158]),("pair",[8,9]),
         ("real",[307])]),["DISK_THM"]),
       [read"%18%4%17%14%28%58%55$1@$0@@@%55$1@%58$0@@@|@|@"])
  fun op CONJ_CONJ x = x
    val op CONJ_CONJ =
    DT(((("complex",168),
        [("bool",[25,36,56]),("complex",[2,3,158]),("pair",[7,8,9]),
         ("real",[43])]),["DISK_THM"]), [read"%17%14%28%58%58$0@@@$0@|@"])
  fun op CONJ_EQ x = x
    val op CONJ_EQ =
    DT(((("complex",169),
        [("bool",[25,36,56]),("complex",[2,3,5,158]),("pair",[8,9]),
         ("real",[101])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%58$1@@$0@@%28$1@%58$0@@@|@|@"])
  fun op CONJ_EQ2 x = x
    val op CONJ_EQ2 =
    DT(((("complex",170),
        [("bool",[25,36,56]),("complex",[168,169])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28%58$1@@%58$0@@@%28$1@$0@@|@|@"])
  fun op COMPLEX_MUL_RCONJ x = x
    val op COMPLEX_MUL_RCONJ =
    DT(((("complex",172),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[27,171]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%28%50%58$0@@$0@@%53%66%65%37$0@@%36%32%40@@@@%65%35$0@@%36%32%40@@@@@@|@"])
  fun op CONJ_ZERO x = x
    val op CONJ_ZERO =
    DT(((("complex",173),
        [("bool",[25,56]),("complex",[160])]),["DISK_THM"]),
       [read"%28%58%52%25@@@%52%25@@"])
  fun op MODU_POW2 x = x
    val op MODU_POW2 =
    DT(((("complex",176),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),("complex",[174]),
         ("real",[79,247]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("transc",[68])]),["DISK_THM"]),
       [read"%17%14%29%65%63$0@@%36%32%40@@@@%66%65%37$0@@%36%32%40@@@@%65%35$0@@%36%32%40@@@@@|@"])
  fun op RE_IM_LE_MODU x = x
    val op RE_IM_LE_MODU =
    DT(((("complex",177),
        [("bool",[25,63]),("complex",[1,174]),("real",[5])]),["DISK_THM"]),
       [read"%17%14%24%68%42%37$0@@@%63$0@@@%68%42%35$0@@@%63$0@@@|@"])
  fun op MODU_POS x = x
    val op MODU_POS =
    DT(((("complex",178),
        [("bool",[25,51,63]),("complex",[174]),("real",[79,247]),
         ("transc",[66])]),["DISK_THM"]),
       [read"%17%14%68%71%25@@%63$0@@|@"])
  fun op COMPLEX_MUL_RCONJ1 x = x
    val op COMPLEX_MUL_RCONJ1 =
    DT(((("complex",179),
        [("bool",[25,36,56]),("complex",[171,176])]),["DISK_THM"]),
       [read"%17%14%28%50$0@%58$0@@@%53%65%63$0@@%36%32%40@@@@@|@"])
  fun op COMPLEX_MUL_LCONJ1 x = x
    val op COMPLEX_MUL_LCONJ1 =
    DT(((("complex",180),
        [("bool",[25,36,56]),("complex",[172,176])]),["DISK_THM"]),
       [read"%17%14%28%50%58$0@@$0@@%53%65%63$0@@%36%32%40@@@@@|@"])
  fun op MODU_NEG x = x
    val op MODU_NEG =
    DT(((("complex",181),
        [("bool",[25,36,56]),("complex",[2,3,16,174]),("pair",[8,9]),
         ("real",[44,241])]),["DISK_THM"]),
       [read"%17%14%29%63%51$0@@@%63$0@@|@"])
  fun op MODU_SUB x = x
    val op MODU_SUB =
    DT(((("complex",182),
        [("bool",[25,56]),("complex",[58,181])]),["DISK_THM"]),
       [read"%17%14%17%10%29%63%57$1@$0@@@%63%57$0@$1@@@|@|@"])
  fun op MODU_CONJ x = x
    val op MODU_CONJ =
    DT(((("complex",183),
        [("bool",[25,36,56]),("complex",[2,3,158,174]),("pair",[8,9]),
         ("real",[44,241])]),["DISK_THM"]),
       [read"%17%14%29%63%58$0@@@%63$0@@|@"])
  fun op MODU_MUL x = x
    val op MODU_MUL =
    DT(((("complex",184),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("complex",[0,2,3,17,174]),("pair",[8,9]),("real",[79,247]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("transc",[71])]),["DISK_THM"]),
       [read"%17%14%17%10%29%63%50$1@$0@@@%69%63$1@@%63$0@@@|@|@"])
  fun op MODU_0 x = x
    val op MODU_0 =
    DT(((("complex",185),
        [("bool",[25,56]),("complex",[2,3,6,9,174]),("pair",[8,9]),
         ("real",[27,40,241]),("transc",[63])]),["DISK_THM"]),
       [read"%29%63%52%25@@@%71%25@@"])
  fun op MODU_1 x = x
    val op MODU_1 =
    DT(((("complex",186),
        [("bool",[25,56]),("complex",[2,3,6,9,174]),("pair",[8,9]),
         ("real",[27,29,40,241]),("transc",[64])]),["DISK_THM"]),
       [read"%29%63%52%36%31%40@@@@@%71%36%31%40@@@@"])
  fun op MODU_COMPLEX_INV x = x
    val op MODU_COMPLEX_INV =
    DT(((("complex",187),
        [("bool",[25,56,58]),("complex",[32,184,186]),
         ("real",[113])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%29%63%49$0@@@%62%63$0@@@@|@"])
  fun op MODU_DIV x = x
    val op MODU_DIV =
    DT(((("complex",188),
        [("bool",[25,56]),("complex",[20,184,187]),
         ("real",[26])]),["DISK_THM"]),
       [read"%17%14%17%10%30%75%28$0@%52%25@@@@%29%63%47$1@$0@@@%23%63$1@@%63$0@@@@|@|@"])
  fun op MODU_SCALAR_LMUL x = x
    val op MODU_SCALAR_LMUL =
    DT(((("complex",189),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("complex",[2,3,123,174]),("pair",[8,9]),
         ("real",[79,246,247,249,325,336]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("transc",[69,71])]),["DISK_THM"]),
       [read"%18%4%17%14%29%63%55$1@$0@@@%69%42$1@@%63$0@@@|@|@"])
  fun op MODU_REAL x = x
    val op MODU_REAL =
    DT(((("complex",190),
        [("bool",[25,26,47,48,53,54,56,58,63]),("complex",[2,3,6,174]),
         ("pair",[8,9]),("real",[27,40,241,249,336]),
         ("sat",[1,3,5,6,7,11,14,15]),("transc",[69])]),["DISK_THM"]),
       [read"%18%11%29%63%53$0@@@%42$0@@|@"])
  fun op MODU_NUM x = x
    val op MODU_NUM =
    DT(((("complex",191),
        [("bool",[25,36,56]),("complex",[9,190]),
         ("real",[219])]),["DISK_THM"]),
       [read"%16%7%29%63%52$0@@@%71$0@@|@"])
  fun op MODU_ZERO x = x
    val op MODU_ZERO =
    DT(((("complex",192),
        [("arithmetic",[18]),("bool",[25,26,56,58]),
         ("complex",[13,176,185]),("real",[234])]),["DISK_THM"]),
       [read"%17%14%26%28$0@%52%25@@@%29%63$0@@%71%25@@@|@"])
  fun op MODU_NZ x = x
    val op MODU_NZ =
    DT(((("complex",193),
        [("bool",[13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("complex",[178,185,192]),("real",[11,56]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%26%75%28$0@%52%25@@@@%67%71%25@@%63$0@@@|@"])
  fun op MODU_CASES x = x
    val op MODU_CASES =
    DT(((("complex",194),
        [("bool",[25,26,27,30,52,54,56,58]),
         ("complex",[193])]),["DISK_THM"]),
       [read"%17%14%41%28$0@%52%25@@@%67%71%25@@%63$0@@@|@"])
  fun op RE_DIV_MODU_BOUNDS x = x
    val op RE_DIV_MODU_BOUNDS =
    DT(((("complex",195),
        [("bool",[25,26,47,48,53,54,63,73,94]),("complex",[177,193]),
         ("real",[18,184,185,232,308]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%24%68%70%71%36%31%40@@@@@%23%37$0@@%63$0@@@@%68%23%37$0@@%63$0@@@%71%36%31%40@@@@@@|@"])
  fun op IM_DIV_MODU_BOUNDS x = x
    val op IM_DIV_MODU_BOUNDS =
    DT(((("complex",196),
        [("bool",[25,26,47,48,53,54,63,73,94]),("complex",[177,193]),
         ("real",[18,184,185,232,308]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%24%68%70%71%36%31%40@@@@@%23%35$0@@%63$0@@@@%68%23%35$0@@%63$0@@@%71%36%31%40@@@@@@|@"])
  fun op RE_DIV_MODU_ACS_BOUNDS x = x
    val op RE_DIV_MODU_ACS_BOUNDS =
    DT(((("complex",197),
        [("complex",[195]),("transc",[151])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%24%68%71%25@@%43%23%37$0@@%63$0@@@@@%68%43%23%37$0@@%63$0@@@@%64@@@|@"])
  fun op IM_DIV_MODU_ASN_BOUNDS x = x
    val op IM_DIV_MODU_ASN_BOUNDS =
    DT(((("complex",198),
        [("complex",[196]),("transc",[146])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%24%68%70%23%64@%71%36%32%40@@@@@@%45%23%35$0@@%63$0@@@@@%68%45%23%35$0@@%63$0@@@@%23%64@%71%36%32%40@@@@@@@|@"])
  fun op RE_DIV_MODU_ACS_COS x = x
    val op RE_DIV_MODU_ACS_COS =
    DT(((("complex",199),
        [("complex",[195]),("transc",[150])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%29%59%43%23%37$0@@%63$0@@@@@%23%37$0@@%63$0@@@@|@"])
  fun op IM_DIV_MODU_ASN_SIN x = x
    val op IM_DIV_MODU_ASN_SIN =
    DT(((("complex",200),
        [("complex",[196]),("transc",[145])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%29%73%45%23%35$0@@%63$0@@@@@%23%35$0@@%63$0@@@@|@"])
  fun op ARG_COS x = x
    val op ARG_COS =
    DT(((("complex",201),
        [("bool",[25,26,27,30,54,63,64]),("complex",[175,199]),
         ("transc",[90,111])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%29%59%44$0@@@%23%37$0@@%63$0@@@@|@"])
  fun op ARG_SIN x = x
    val op ARG_SIN =
    DT(((("complex",202),
        [("bool",[25,26,27,30,47,48,51,53,54,58,63,64,94]),
         ("complex",[13,175,176,178,197,199]),
         ("real",[5,26,41,51,58,66,101,135,174,187,208,249,316,343]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("transc",[69,89,110,159])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%29%73%44$0@@@%23%35$0@@%63$0@@@@|@"])
  fun op RE_MODU_ARG x = x
    val op RE_MODU_ARG =
    DT(((("complex",203),
        [("bool",[25,26,27,30,54,56,58]),("complex",[2,6,9,185,192,201]),
         ("pair",[8]),("real",[39,147])]),["DISK_THM"]),
       [read"%17%14%29%37$0@@%69%63$0@@%59%44$0@@@@|@"])
  fun op IM_MODU_ARG x = x
    val op IM_MODU_ARG =
    DT(((("complex",204),
        [("bool",[25,26,27,30,54,56,58]),("complex",[3,6,9,185,192,202]),
         ("pair",[9]),("real",[39,147])]),["DISK_THM"]),
       [read"%17%14%29%35$0@@%69%63$0@@%73%44$0@@@@|@"])
  fun op COMPLEX_TRIANGLE x = x
    val op COMPLEX_TRIANGLE =
    DT(((("complex",205),
        [("bool",[25,36,56,58]),("complex",[2,3,123,203,204]),
         ("pair",[7,8,9])]),["DISK_THM"]),
       [read"%17%14%28%55%63$0@@%21%59%44$0@@@%73%44$0@@@@@$0@|@"])
  fun op COMPLEX_MODU_ARG_EQ x = x
    val op COMPLEX_MODU_ARG_EQ =
    DT(((("complex",206),
        [("bool",[25,26,51,56]),("complex",[5,203,204])]),["DISK_THM"]),
       [read"%17%14%17%10%26%28$1@$0@@%24%29%63$1@@%63$0@@@%29%44$1@@%44$0@@@@|@|@"])
  fun op MODU_UNIT x = x
    val op MODU_UNIT =
    DT(((("complex",207),
        [("bool",[25,36,56]),("complex",[2,3,174]),("pair",[8,9]),
         ("real",[5]),("transc",[64,80])]),["DISK_THM"]),
       [read"%18%11%15%12%29%63%21%59$1@@%73$1@@@@%71%36%31%40@@@@|@|@"])
  fun op COMPLEX_MUL_ARG x = x
    val op COMPLEX_MUL_ARG =
    DT(((("complex",208),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("complex",[2,3,17]),("pair",[8,9]),("real",[5]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("transc",[87,88])]),["DISK_THM"]),
       [read"%18%11%18%13%28%50%21%59$1@@%73$1@@@%21%59$0@@%73$0@@@@%21%59%66$1@$0@@@%73%66$1@$0@@@@|@|@"])
  fun op COMPLEX_INV_ARG x = x
    val op COMPLEX_INV_ARG =
    DT(((("complex",209),
        [("bool",[25,36,56]),("complex",[2,3,18]),("pair",[8,9]),
         ("real",[5,26,29,133]),("transc",[80,89,90])]),["DISK_THM"]),
       [read"%18%11%28%49%21%59$0@@%73$0@@@@%21%59%70$0@@@%73%70$0@@@@|@"])
  fun op COMPLEX_DIV_ARG x = x
    val op COMPLEX_DIV_ARG =
    DT(((("complex",210),
        [("bool",[25,36,56]),("complex",[20,208,209]),
         ("real",[22])]),["DISK_THM"]),
       [read"%18%11%18%13%28%47%21%59$1@@%73$1@@@%21%59$0@@%73$0@@@@%21%59%72$1@$0@@@%73%72$1@$0@@@@|@|@"])
  fun op complex_pow_def_compute x = x
    val op complex_pow_def_compute =
    DT(((("complex",212),
        [("arithmetic",[268]),("bool",[26]),
         ("complex",[211])]),["DISK_THM"]),
       [read"%24%17%14%28%54$0@%25@@%52%36%31%40@@@@|@@%24%17%14%16%7%28%54$1@%36%31$0@@@@%50$1@%54$1@%22%36%31$0@@@%36%31%40@@@@@@|@|@@%17%14%16%7%28%54$1@%36%32$0@@@@%50$1@%54$1@%36%31$0@@@@@|@|@@@"])
  fun op COMPLEX_POW_0 x = x
    val op COMPLEX_POW_0 =
    DT(((("complex",213),
        [("bool",[14,25,56]),("complex",[46,211]),
         ("num",[9])]),["DISK_THM"]),
       [read"%16%7%28%54%52%25@@%39$0@@@%52%25@@|@"])
  fun op COMPLEX_POW_NZ x = x
    val op COMPLEX_POW_NZ =
    DT(((("complex",214),
        [("bool",[14,25,26,27,52,54]),("complex",[12,50,211]),
         ("num",[9])]),["DISK_THM"]),
       [read"%17%14%16%7%30%75%28$1@%52%25@@@@%75%28%54$1@$0@@%52%25@@@@|@|@"])
  fun op COMPLEX_POWINV x = x
    val op COMPLEX_POWINV =
    DT(((("complex",215),
        [("bool",[14,25,26,27,51,53,54,56]),("complex",[82,87,211,214]),
         ("num",[9])]),["DISK_THM"]),
       [read"%17%14%30%75%28$0@%52%25@@@@%16%7%28%49%54$1@$0@@@%54%49$1@@$0@@|@@|@"])
  fun op MODU_COMPLEX_POW x = x
    val op MODU_COMPLEX_POW =
    DT(((("complex",216),
        [("bool",[14,25,56]),("complex",[184,186,211]),("num",[9]),
         ("real",[233])]),["DISK_THM"]),
       [read"%17%14%16%7%29%63%54$1@$0@@@%65%63$1@@$0@@|@|@"])
  fun op COMPLEX_POW_ADD x = x
    val op COMPLEX_POW_ADD =
    DT(((("complex",217),
        [("arithmetic",[24]),("bool",[14,25,56,63]),
         ("complex",[27,28,29,211]),("num",[9])]),["DISK_THM"]),
       [read"%17%14%16%6%16%7%28%54$2@%20$1@$0@@@%50%54$2@$1@@%54$2@$0@@@|@|@|@"])
  fun op COMPLEX_POW_1 x = x
    val op COMPLEX_POW_1 =
    DT(((("complex",218),
        [("arithmetic",[17]),("bool",[25,56]),
         ("complex",[29,211])]),["DISK_THM"]),
       [read"%17%14%28%54$0@%36%31%40@@@@$0@|@"])
  fun op COMPLEX_POW_2 x = x
    val op COMPLEX_POW_2 =
    DT(((("complex",219),
        [("arithmetic",[18]),("bool",[25,56]),
         ("complex",[211,218])]),["DISK_THM"]),
       [read"%17%14%28%54$0@%36%32%40@@@@%50$0@$0@@|@"])
  fun op COMPLEX_POW_ONE x = x
    val op COMPLEX_POW_ONE =
    DT(((("complex",220),
        [("bool",[14,25,56]),("complex",[30,211]),
         ("num",[9])]),["DISK_THM"]),
       [read"%16%7%28%54%52%36%31%40@@@@$0@@%52%36%31%40@@@@|@"])
  fun op COMPLEX_POW_MUL x = x
    val op COMPLEX_POW_MUL =
    DT(((("complex",221),
        [("bool",[14,25,36,56,63]),("complex",[27,28,30,211]),
         ("num",[9])]),["DISK_THM"]),
       [read"%16%7%17%14%17%10%28%54%50$1@$0@@$2@@%50%54$1@$2@@%54$0@$2@@@|@|@|@"])
  fun op COMPLEX_POW_INV x = x
    val op COMPLEX_POW_INV =
    DT(((("complex",222),
        [("bool",[14,25,26,30,36,47,48,53,54,56,63]),
         ("complex",[46,82,86,87,211,214]),("num",[9]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%17%14%16%7%28%54%49$1@@$0@@%49%54$1@$0@@@|@|@"])
  fun op COMPLEX_POW_DIV x = x
    val op COMPLEX_POW_DIV =
    DT(((("complex",223),
        [("bool",[25,36,56]),("complex",[20,221,222])]),["DISK_THM"]),
       [read"%17%14%17%10%16%7%28%54%47$2@$1@@$0@@%47%54$2@$0@@%54$1@$0@@@|@|@|@"])
  fun op COMPLEX_POW_L x = x
    val op COMPLEX_POW_L =
    DT(((("complex",224),
        [("bool",[14,25,36,56]),("complex",[132,137,211]),("num",[9]),
         ("real",[233])]),["DISK_THM"]),
       [read"%16%7%18%4%17%14%28%54%55$1@$0@@$2@@%55%65$1@$2@@%54$0@$2@@@|@|@|@"])
  fun op COMPLEX_POW_ZERO x = x
    val op COMPLEX_POW_ZERO =
    DT(((("complex",225),
        [("bool",[14,25,26,27,53]),("complex",[12,50,211]),
         ("num",[9])]),["DISK_THM"]),
       [read"%16%7%17%14%30%28%54$0@$1@@%52%25@@@%28$0@%52%25@@@|@|@"])
  fun op COMPLEX_POW_ZERO_EQ x = x
    val op COMPLEX_POW_ZERO_EQ =
    DT(((("complex",226),
        [("bool",[25,26,56,63]),("complex",[213,225])]),["DISK_THM"]),
       [read"%16%7%17%14%26%28%54$0@%39$1@@@%52%25@@@%28$0@%52%25@@@|@|@"])
  fun op COMPLEX_POW_POW x = x
    val op COMPLEX_POW_POW =
    DT(((("complex",227),
        [("arithmetic",[71]),("bool",[14,25,56]),("complex",[211,217]),
         ("num",[9])]),["DISK_THM"]),
       [read"%17%14%16%6%16%7%28%54%54$2@$1@@$0@@%54$2@%19$1@$0@@@|@|@|@"])
  fun op DE_MOIVRE_LEMMA x = x
    val op DE_MOIVRE_LEMMA =
    DT(((("complex",228),
        [("bool",[14,25,56]),("complex",[6,9,208,211]),("num",[9]),
         ("real",[5,18,39,126,326]),("transc",[78,79])]),["DISK_THM"]),
       [read"%18%11%16%7%28%54%21%59$1@@%73$1@@@$0@@%21%59%69%71$0@@$1@@@%73%69%71$0@@$1@@@@|@|@"])
  fun op DE_MOIVRE_THM x = x
    val op DE_MOIVRE_THM =
    DT(((("complex",229),
        [("bool",[25,36,56]),("complex",[224,228])]),["DISK_THM"]),
       [read"%17%14%16%7%28%54%55%63$1@@%21%59%44$1@@@%73%44$1@@@@@$0@@%55%65%63$1@@$0@@%21%59%69%71$0@@%44$1@@@@%73%69%71$0@@%44$1@@@@@@|@|@"])
  fun op EXP_IMAGINARY x = x
    val op EXP_IMAGINARY =
    DT(((("complex",231),
        [("bool",[25,36,56]),("complex",[2,3,14,124,137,230]),
         ("pair",[8,9]),("real",[18,39]),("transc",[14])]),["DISK_THM"]),
       [read"%18%11%28%48%56%61@$0@@@%21%59$0@@%73$0@@@|@"])
  fun op EULER_FORMULE x = x
    val op EULER_FORMULE =
    DT(((("complex",232),
        [("bool",[25,36,56]),("complex",[2,3,14,124,137,205,230]),
         ("pair",[8,9]),("real",[18,39]),("transc",[14])]),["DISK_THM"]),
       [read"%17%14%28%55%63$0@@%48%56%61@%44$0@@@@@$0@|@"])
  fun op COMPLEX_EXP_ADD x = x
    val op COMPLEX_EXP_ADD =
    DT(((("complex",233),
        [("bool",[25,36,56,58]),("complex",[2,3,15,132,208,230]),
         ("pair",[8,9]),("transc",[21])]),["DISK_THM"]),
       [read"%17%14%17%10%28%48%46$1@$0@@@%50%48$1@@%48$0@@@|@|@"])
  fun op COMPLEX_EXP_NEG x = x
    val op COMPLEX_EXP_NEG =
    DT(((("complex",234),
        [("bool",[25,26,27,51,54,58,63]),
         ("complex",[2,3,16,144,193,207,209,230]),("pair",[8,9]),
         ("real",[74]),("transc",[20,23])]),["DISK_THM"]),
       [read"%17%14%28%48%51$0@@@%49%48$0@@@|@"])
  fun op COMPLEX_EXP_SUB x = x
    val op COMPLEX_EXP_SUB =
    DT(((("complex",235),
        [("bool",[25,36,56]),("complex",[19,20,233,234])]),["DISK_THM"]),
       [read"%17%14%17%10%28%48%57$1@$0@@@%47%48$1@@%48$0@@@|@|@"])
  fun op COMPLEX_EXP_N x = x
    val op COMPLEX_EXP_N =
    DT(((("complex",236),
        [("bool",[25,36,56,58]),("complex",[2,3,123,224,228,230]),
         ("pair",[8,9]),("transc",[25])]),["DISK_THM"]),
       [read"%17%14%16%7%28%48%55%71$0@@$1@@@%54%48$1@@$0@@|@|@"])
  fun op COMPLEX_EXP_N2 x = x
    val op COMPLEX_EXP_N2 =
    DT(((("complex",237),
        [("bool",[25,36,56,58]),("complex",[7,8,9,17,123,236]),
         ("real",[27,39,162])]),["DISK_THM"]),
       [read"%17%14%16%7%28%48%50%52$0@@$1@@@%54%48$1@@$0@@|@|@"])
  fun op COMPLEX_EXP_0 x = x
    val op COMPLEX_EXP_0 =
    DT(((("complex",238),
        [("bool",[25,56]),("complex",[2,3,6,9,137,230]),("pair",[8,9]),
         ("transc",[14,78,79])]),["DISK_THM"]),
       [read"%28%48%52%25@@@%52%36%31%40@@@@"])
  fun op COMPLEX_EXP_NZ x = x
    val op COMPLEX_EXP_NZ =
    DT(((("complex",239),
        [("bool",[25,26,27,36,52,63]),("complex",[140,193,207,230]),
         ("real",[74]),("transc",[23])]),["DISK_THM"]),
       [read"%17%14%75%28%48$0@@%52%25@@@|@"])
  fun op COMPLEX_EXP_ADD_MUL x = x
    val op COMPLEX_EXP_ADD_MUL =
    DT(((("complex",240),
        [("bool",[25,36,56,58]),("complex",[19,62,233])]),["DISK_THM"]),
       [read"%17%14%17%10%28%50%48%46$1@$0@@@%48%51$1@@@@%48$0@@|@|@"])
  fun op COMPLEX_EXP_NEG_MUL x = x
    val op COMPLEX_EXP_NEG_MUL =
    DT(((("complex",241),
        [("bool",[25,36,56,58]),("complex",[25,233,238])]),["DISK_THM"]),
       [read"%17%14%28%50%48$0@@%48%51$0@@@@%52%36%31%40@@@@|@"])
  fun op COMPLEX_EXP_NEG_MUL2 x = x
    val op COMPLEX_EXP_NEG_MUL2 =
    DT(((("complex",242),[("complex",[27,241])]),["DISK_THM"]),
       [read"%17%14%28%50%48%51$0@@@%48$0@@@%52%36%31%40@@@@|@"])
  end
  val _ = DB.bindl "complex"
  [("RE",RE,DB.Def), ("IM",IM,DB.Def),
   ("complex_of_real",complex_of_real,DB.Def),
   ("complex_of_num",complex_of_num,DB.Def), ("i",i,DB.Def),
   ("complex_add",complex_add,DB.Def), ("complex_neg",complex_neg,DB.Def),
   ("complex_mul",complex_mul,DB.Def), ("complex_inv",complex_inv,DB.Def),
   ("complex_sub",complex_sub,DB.Def), ("complex_div",complex_div,DB.Def),
   ("complex_scalar_lmul",complex_scalar_lmul,DB.Def),
   ("complex_scalar_rmul",complex_scalar_rmul,DB.Def),
   ("conj",conj,DB.Def), ("modu",modu,DB.Def), ("arg",arg,DB.Def),
   ("complex_pow_def",complex_pow_def,DB.Def),
   ("complex_exp",complex_exp,DB.Def),
   ("COMPLEX_LEMMA1",COMPLEX_LEMMA1,DB.Thm),
   ("COMPLEX_LEMMA2",COMPLEX_LEMMA2,DB.Thm), ("COMPLEX",COMPLEX,DB.Thm),
   ("COMPLEX_RE_IM_EQ",COMPLEX_RE_IM_EQ,DB.Thm),
   ("RE_COMPLEX_OF_REAL",RE_COMPLEX_OF_REAL,DB.Thm),
   ("IM_COMPLEX_OF_REAL",IM_COMPLEX_OF_REAL,DB.Thm),
   ("COMPLEX_0",COMPLEX_0,DB.Thm), ("COMPLEX_1",COMPLEX_1,DB.Thm),
   ("COMPLEX_10",COMPLEX_10,DB.Thm),
   ("COMPLEX_0_THM",COMPLEX_0_THM,DB.Thm),
   ("COMPLEX_ADD_COMM",COMPLEX_ADD_COMM,DB.Thm),
   ("COMPLEX_ADD_ASSOC",COMPLEX_ADD_ASSOC,DB.Thm),
   ("COMPLEX_ADD_RID",COMPLEX_ADD_RID,DB.Thm),
   ("COMPLEX_ADD_LID",COMPLEX_ADD_LID,DB.Thm),
   ("COMPLEX_ADD_RINV",COMPLEX_ADD_RINV,DB.Thm),
   ("COMPLEX_ADD_LINV",COMPLEX_ADD_LINV,DB.Thm),
   ("COMPLEX_MUL_COMM",COMPLEX_MUL_COMM,DB.Thm),
   ("COMPLEX_MUL_ASSOC",COMPLEX_MUL_ASSOC,DB.Thm),
   ("COMPLEX_MUL_RID",COMPLEX_MUL_RID,DB.Thm),
   ("COMPLEX_MUL_LID",COMPLEX_MUL_LID,DB.Thm),
   ("COMPLEX_MUL_RINV",COMPLEX_MUL_RINV,DB.Thm),
   ("COMPLEX_MUL_LINV",COMPLEX_MUL_LINV,DB.Thm),
   ("COMPLEX_ADD_LDISTRIB",COMPLEX_ADD_LDISTRIB,DB.Thm),
   ("COMPLEX_ADD_RDISTRIB",COMPLEX_ADD_RDISTRIB,DB.Thm),
   ("COMPLEX_EQ_LADD",COMPLEX_EQ_LADD,DB.Thm),
   ("COMPLEX_EQ_RADD",COMPLEX_EQ_RADD,DB.Thm),
   ("COMPLEX_ADD_RID_UNIQ",COMPLEX_ADD_RID_UNIQ,DB.Thm),
   ("COMPLEX_ADD_LID_UNIQ",COMPLEX_ADD_LID_UNIQ,DB.Thm),
   ("COMPLEX_NEGNEG",COMPLEX_NEGNEG,DB.Thm),
   ("COMPLEX_NEG_EQ",COMPLEX_NEG_EQ,DB.Thm),
   ("COMPLEX_EQ_NEG",COMPLEX_EQ_NEG,DB.Thm),
   ("COMPLEX_RNEG_UNIQ",COMPLEX_RNEG_UNIQ,DB.Thm),
   ("COMPLEX_LNEG_UNIQ",COMPLEX_LNEG_UNIQ,DB.Thm),
   ("COMPLEX_NEG_ADD",COMPLEX_NEG_ADD,DB.Thm),
   ("COMPLEX_MUL_RZERO",COMPLEX_MUL_RZERO,DB.Thm),
   ("COMPLEX_MUL_LZERO",COMPLEX_MUL_LZERO,DB.Thm),
   ("COMPLEX_NEG_LMUL",COMPLEX_NEG_LMUL,DB.Thm),
   ("COMPLEX_NEG_RMUL",COMPLEX_NEG_RMUL,DB.Thm),
   ("COMPLEX_NEG_MUL2",COMPLEX_NEG_MUL2,DB.Thm),
   ("COMPLEX_ENTIRE",COMPLEX_ENTIRE,DB.Thm),
   ("COMPLEX_NEG_0",COMPLEX_NEG_0,DB.Thm),
   ("COMPLEX_NEG_EQ0",COMPLEX_NEG_EQ0,DB.Thm),
   ("COMPLEX_SUB_REFL",COMPLEX_SUB_REFL,DB.Thm),
   ("COMPLEX_SUB_RZERO",COMPLEX_SUB_RZERO,DB.Thm),
   ("COMPLEX_SUB_LZERO",COMPLEX_SUB_LZERO,DB.Thm),
   ("COMPLEX_SUB_LNEG",COMPLEX_SUB_LNEG,DB.Thm),
   ("COMPLEX_SUB_NEG2",COMPLEX_SUB_NEG2,DB.Thm),
   ("COMPLEX_NEG_SUB",COMPLEX_NEG_SUB,DB.Thm),
   ("COMPLEX_SUB_RNEG",COMPLEX_SUB_RNEG,DB.Thm),
   ("COMPLEX_SUB_ADD",COMPLEX_SUB_ADD,DB.Thm),
   ("COMPLEX_SUB_ADD2",COMPLEX_SUB_ADD2,DB.Thm),
   ("COMPLEX_ADD_SUB",COMPLEX_ADD_SUB,DB.Thm),
   ("COMPLEX_SUB_SUB",COMPLEX_SUB_SUB,DB.Thm),
   ("COMPLEX_SUB_SUB2",COMPLEX_SUB_SUB2,DB.Thm),
   ("COMPLEX_ADD_SUB2",COMPLEX_ADD_SUB2,DB.Thm),
   ("COMPLEX_ADD2_SUB2",COMPLEX_ADD2_SUB2,DB.Thm),
   ("COMPLEX_SUB_TRIANGLE",COMPLEX_SUB_TRIANGLE,DB.Thm),
   ("COMPLEX_SUB_0",COMPLEX_SUB_0,DB.Thm),
   ("COMPLEX_EQ_SUB_LADD",COMPLEX_EQ_SUB_LADD,DB.Thm),
   ("COMPLEX_EQ_SUB_RADD",COMPLEX_EQ_SUB_RADD,DB.Thm),
   ("COMPLEX_MUL_RNEG",COMPLEX_MUL_RNEG,DB.Thm),
   ("COMPLEX_MUL_LNEG",COMPLEX_MUL_LNEG,DB.Thm),
   ("COMPLEX_SUB_LDISTRIB",COMPLEX_SUB_LDISTRIB,DB.Thm),
   ("COMPLEX_SUB_RDISTRIB",COMPLEX_SUB_RDISTRIB,DB.Thm),
   ("COMPLEX_DIFFSQ",COMPLEX_DIFFSQ,DB.Thm),
   ("COMPLEX_EQ_LMUL",COMPLEX_EQ_LMUL,DB.Thm),
   ("COMPLEX_EQ_RMUL",COMPLEX_EQ_RMUL,DB.Thm),
   ("COMPLEX_EQ_LMUL2",COMPLEX_EQ_LMUL2,DB.Thm),
   ("COMPLEX_EQ_RMUL_IMP",COMPLEX_EQ_RMUL_IMP,DB.Thm),
   ("COMPLEX_EQ_LMUL_IMP",COMPLEX_EQ_LMUL_IMP,DB.Thm),
   ("COMPLEX_NEG_INV",COMPLEX_NEG_INV,DB.Thm),
   ("COMPLEX_INV_MUL",COMPLEX_INV_MUL,DB.Thm),
   ("COMPLEX_INVINV",COMPLEX_INVINV,DB.Thm),
   ("COMPLEX_LINV_UNIQ",COMPLEX_LINV_UNIQ,DB.Thm),
   ("COMPLEX_RINV_UNIQ",COMPLEX_RINV_UNIQ,DB.Thm),
   ("COMPLEX_INV_0",COMPLEX_INV_0,DB.Thm),
   ("COMPLEX_INV1",COMPLEX_INV1,DB.Thm),
   ("COMPLEX_INV_INV",COMPLEX_INV_INV,DB.Thm),
   ("COMPLEX_INV_NEG",COMPLEX_INV_NEG,DB.Thm),
   ("COMPLEX_INV_EQ_0",COMPLEX_INV_EQ_0,DB.Thm),
   ("COMPLEX_INV_NZ",COMPLEX_INV_NZ,DB.Thm),
   ("COMPLEX_INV_INJ",COMPLEX_INV_INJ,DB.Thm),
   ("COMPLEX_NEG_LDIV",COMPLEX_NEG_LDIV,DB.Thm),
   ("COMPLEX_NEG_RDIV",COMPLEX_NEG_RDIV,DB.Thm),
   ("COMPLEX_NEG_DIV2",COMPLEX_NEG_DIV2,DB.Thm),
   ("COMPLEX_INV_1OVER",COMPLEX_INV_1OVER,DB.Thm),
   ("COMPLEX_DIV1",COMPLEX_DIV1,DB.Thm),
   ("COMPLEX_DIV_ADD",COMPLEX_DIV_ADD,DB.Thm),
   ("COMPLEX_DIV_SUB",COMPLEX_DIV_SUB,DB.Thm),
   ("COMPLEX_DIV_RMUL_CANCEL",COMPLEX_DIV_RMUL_CANCEL,DB.Thm),
   ("COMPLEX_DIV_LMUL_CANCEL",COMPLEX_DIV_LMUL_CANCEL,DB.Thm),
   ("COMPLEX_DIV_DENOM_CANCEL",COMPLEX_DIV_DENOM_CANCEL,DB.Thm),
   ("COMPLEX_DIV_INNER_CANCEL",COMPLEX_DIV_INNER_CANCEL,DB.Thm),
   ("COMPLEX_DIV_OUTER_CANCEL",COMPLEX_DIV_OUTER_CANCEL,DB.Thm),
   ("COMPLEX_DIV_MUL2",COMPLEX_DIV_MUL2,DB.Thm),
   ("COMPLEX_ADD_RAT",COMPLEX_ADD_RAT,DB.Thm),
   ("COMPLEX_SUB_RAT",COMPLEX_SUB_RAT,DB.Thm),
   ("COMPLEX_DIV_LZERO",COMPLEX_DIV_LZERO,DB.Thm),
   ("COMPLEX_DIV_REFL",COMPLEX_DIV_REFL,DB.Thm),
   ("COMPLEX_SUB_INV2",COMPLEX_SUB_INV2,DB.Thm),
   ("COMPLEX_EQ_RDIV_EQ",COMPLEX_EQ_RDIV_EQ,DB.Thm),
   ("COMPLEX_EQ_LDIV_EQ",COMPLEX_EQ_LDIV_EQ,DB.Thm),
   ("COMPLEX_OF_REAL_EQ",COMPLEX_OF_REAL_EQ,DB.Thm),
   ("COMPLEX_OF_REAL_ADD",COMPLEX_OF_REAL_ADD,DB.Thm),
   ("COMPLEX_OF_REAL_NEG",COMPLEX_OF_REAL_NEG,DB.Thm),
   ("COMPLEX_OF_REAL_MUL",COMPLEX_OF_REAL_MUL,DB.Thm),
   ("COMPLEX_OF_REAL_INV",COMPLEX_OF_REAL_INV,DB.Thm),
   ("COMPLEX_OF_REAL_SUB",COMPLEX_OF_REAL_SUB,DB.Thm),
   ("COMPLEX_OF_REAL_DIV",COMPLEX_OF_REAL_DIV,DB.Thm),
   ("COMPLEX_OF_NUM_EQ",COMPLEX_OF_NUM_EQ,DB.Thm),
   ("COMPLEX_OF_NUM_ADD",COMPLEX_OF_NUM_ADD,DB.Thm),
   ("COMPLEX_OF_NUM_MUL",COMPLEX_OF_NUM_MUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL",COMPLEX_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_NEG",COMPLEX_SCALAR_LMUL_NEG,DB.Thm),
   ("COMPLEX_NEG_SCALAR_LMUL",COMPLEX_NEG_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_ADD",COMPLEX_SCALAR_LMUL_ADD,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_SUB",COMPLEX_SCALAR_LMUL_SUB,DB.Thm),
   ("COMPLEX_ADD_SCALAR_LMUL",COMPLEX_ADD_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SUB_SCALAR_LMUL",COMPLEX_SUB_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_MUL_SCALAR_LMUL2",COMPLEX_MUL_SCALAR_LMUL2,DB.Thm),
   ("COMPLEX_LMUL_SCALAR_LMUL",COMPLEX_LMUL_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_RMUL_SCALAR_LMUL",COMPLEX_RMUL_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_ZERO",COMPLEX_SCALAR_LMUL_ZERO,DB.Thm),
   ("COMPLEX_ZERO_SCALAR_LMUL",COMPLEX_ZERO_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_ONE",COMPLEX_SCALAR_LMUL_ONE,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_NEG1",COMPLEX_SCALAR_LMUL_NEG1,DB.Thm),
   ("COMPLEX_DOUBLE",COMPLEX_DOUBLE,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_ENTIRE",COMPLEX_SCALAR_LMUL_ENTIRE,DB.Thm),
   ("COMPLEX_EQ_SCALAR_LMUL",COMPLEX_EQ_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_EQ",COMPLEX_SCALAR_LMUL_EQ,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_EQ1",COMPLEX_SCALAR_LMUL_EQ1,DB.Thm),
   ("COMPLEX_INV_SCALAR_LMUL",COMPLEX_INV_SCALAR_LMUL,DB.Thm),
   ("COMPLEX_SCALAR_LMUL_DIV2",COMPLEX_SCALAR_LMUL_DIV2,DB.Thm),
   ("COMPLEX_SCALAR_MUL_COMM",COMPLEX_SCALAR_MUL_COMM,DB.Thm),
   ("COMPLEX_SCALAR_RMUL",COMPLEX_SCALAR_RMUL,DB.Thm),
   ("COMPLEX_SCALAR_RMUL_NEG",COMPLEX_SCALAR_RMUL_NEG,DB.Thm),
   ("COMPLEX_NEG_SCALAR_RMUL",COMPLEX_NEG_SCALAR_RMUL,DB.Thm),
   ("COMPLEX_SCALAR_RMUL_ADD",COMPLEX_SCALAR_RMUL_ADD,DB.Thm),
   ("COMPLEX_RSCALAR_RMUL_SUB",COMPLEX_RSCALAR_RMUL_SUB,DB.Thm),
   ("COMPLEX_ADD_RSCALAR_RMUL",COMPLEX_ADD_RSCALAR_RMUL,DB.Thm),
   ("COMPLEX_SUB_SCALAR_RMUL",COMPLEX_SUB_SCALAR_RMUL,DB.Thm),
   ("COMPLEX_SCALAR_RMUL_ZERO",COMPLEX_SCALAR_RMUL_ZERO,DB.Thm),
   ("COMPLEX_ZERO_SCALAR_RMUL",COMPLEX_ZERO_SCALAR_RMUL,DB.Thm),
   ("COMPLEX_SCALAR_RMUL_ONE",COMPLEX_SCALAR_RMUL_ONE,DB.Thm),
   ("COMPLEX_SCALAR_RMUL_NEG1",COMPLEX_SCALAR_RMUL_NEG1,DB.Thm),
   ("CONJ_REAL_REFL",CONJ_REAL_REFL,DB.Thm),
   ("CONJ_NUM_REFL",CONJ_NUM_REFL,DB.Thm), ("CONJ_ADD",CONJ_ADD,DB.Thm),
   ("CONJ_NEG",CONJ_NEG,DB.Thm), ("CONJ_SUB",CONJ_SUB,DB.Thm),
   ("CONJ_MUL",CONJ_MUL,DB.Thm), ("CONJ_INV",CONJ_INV,DB.Thm),
   ("CONJ_DIV",CONJ_DIV,DB.Thm),
   ("CONJ_SCALAR_LMUL",CONJ_SCALAR_LMUL,DB.Thm),
   ("CONJ_CONJ",CONJ_CONJ,DB.Thm), ("CONJ_EQ",CONJ_EQ,DB.Thm),
   ("CONJ_EQ2",CONJ_EQ2,DB.Thm),
   ("COMPLEX_MUL_RCONJ",COMPLEX_MUL_RCONJ,DB.Thm),
   ("CONJ_ZERO",CONJ_ZERO,DB.Thm), ("MODU_POW2",MODU_POW2,DB.Thm),
   ("RE_IM_LE_MODU",RE_IM_LE_MODU,DB.Thm), ("MODU_POS",MODU_POS,DB.Thm),
   ("COMPLEX_MUL_RCONJ1",COMPLEX_MUL_RCONJ1,DB.Thm),
   ("COMPLEX_MUL_LCONJ1",COMPLEX_MUL_LCONJ1,DB.Thm),
   ("MODU_NEG",MODU_NEG,DB.Thm), ("MODU_SUB",MODU_SUB,DB.Thm),
   ("MODU_CONJ",MODU_CONJ,DB.Thm), ("MODU_MUL",MODU_MUL,DB.Thm),
   ("MODU_0",MODU_0,DB.Thm), ("MODU_1",MODU_1,DB.Thm),
   ("MODU_COMPLEX_INV",MODU_COMPLEX_INV,DB.Thm),
   ("MODU_DIV",MODU_DIV,DB.Thm),
   ("MODU_SCALAR_LMUL",MODU_SCALAR_LMUL,DB.Thm),
   ("MODU_REAL",MODU_REAL,DB.Thm), ("MODU_NUM",MODU_NUM,DB.Thm),
   ("MODU_ZERO",MODU_ZERO,DB.Thm), ("MODU_NZ",MODU_NZ,DB.Thm),
   ("MODU_CASES",MODU_CASES,DB.Thm),
   ("RE_DIV_MODU_BOUNDS",RE_DIV_MODU_BOUNDS,DB.Thm),
   ("IM_DIV_MODU_BOUNDS",IM_DIV_MODU_BOUNDS,DB.Thm),
   ("RE_DIV_MODU_ACS_BOUNDS",RE_DIV_MODU_ACS_BOUNDS,DB.Thm),
   ("IM_DIV_MODU_ASN_BOUNDS",IM_DIV_MODU_ASN_BOUNDS,DB.Thm),
   ("RE_DIV_MODU_ACS_COS",RE_DIV_MODU_ACS_COS,DB.Thm),
   ("IM_DIV_MODU_ASN_SIN",IM_DIV_MODU_ASN_SIN,DB.Thm),
   ("ARG_COS",ARG_COS,DB.Thm), ("ARG_SIN",ARG_SIN,DB.Thm),
   ("RE_MODU_ARG",RE_MODU_ARG,DB.Thm), ("IM_MODU_ARG",IM_MODU_ARG,DB.Thm),
   ("COMPLEX_TRIANGLE",COMPLEX_TRIANGLE,DB.Thm),
   ("COMPLEX_MODU_ARG_EQ",COMPLEX_MODU_ARG_EQ,DB.Thm),
   ("MODU_UNIT",MODU_UNIT,DB.Thm),
   ("COMPLEX_MUL_ARG",COMPLEX_MUL_ARG,DB.Thm),
   ("COMPLEX_INV_ARG",COMPLEX_INV_ARG,DB.Thm),
   ("COMPLEX_DIV_ARG",COMPLEX_DIV_ARG,DB.Thm),
   ("complex_pow_def_compute",complex_pow_def_compute,DB.Thm),
   ("COMPLEX_POW_0",COMPLEX_POW_0,DB.Thm),
   ("COMPLEX_POW_NZ",COMPLEX_POW_NZ,DB.Thm),
   ("COMPLEX_POWINV",COMPLEX_POWINV,DB.Thm),
   ("MODU_COMPLEX_POW",MODU_COMPLEX_POW,DB.Thm),
   ("COMPLEX_POW_ADD",COMPLEX_POW_ADD,DB.Thm),
   ("COMPLEX_POW_1",COMPLEX_POW_1,DB.Thm),
   ("COMPLEX_POW_2",COMPLEX_POW_2,DB.Thm),
   ("COMPLEX_POW_ONE",COMPLEX_POW_ONE,DB.Thm),
   ("COMPLEX_POW_MUL",COMPLEX_POW_MUL,DB.Thm),
   ("COMPLEX_POW_INV",COMPLEX_POW_INV,DB.Thm),
   ("COMPLEX_POW_DIV",COMPLEX_POW_DIV,DB.Thm),
   ("COMPLEX_POW_L",COMPLEX_POW_L,DB.Thm),
   ("COMPLEX_POW_ZERO",COMPLEX_POW_ZERO,DB.Thm),
   ("COMPLEX_POW_ZERO_EQ",COMPLEX_POW_ZERO_EQ,DB.Thm),
   ("COMPLEX_POW_POW",COMPLEX_POW_POW,DB.Thm),
   ("DE_MOIVRE_LEMMA",DE_MOIVRE_LEMMA,DB.Thm),
   ("DE_MOIVRE_THM",DE_MOIVRE_THM,DB.Thm),
   ("EXP_IMAGINARY",EXP_IMAGINARY,DB.Thm),
   ("EULER_FORMULE",EULER_FORMULE,DB.Thm),
   ("COMPLEX_EXP_ADD",COMPLEX_EXP_ADD,DB.Thm),
   ("COMPLEX_EXP_NEG",COMPLEX_EXP_NEG,DB.Thm),
   ("COMPLEX_EXP_SUB",COMPLEX_EXP_SUB,DB.Thm),
   ("COMPLEX_EXP_N",COMPLEX_EXP_N,DB.Thm),
   ("COMPLEX_EXP_N2",COMPLEX_EXP_N2,DB.Thm),
   ("COMPLEX_EXP_0",COMPLEX_EXP_0,DB.Thm),
   ("COMPLEX_EXP_NZ",COMPLEX_EXP_NZ,DB.Thm),
   ("COMPLEX_EXP_ADD_MUL",COMPLEX_EXP_ADD_MUL,DB.Thm),
   ("COMPLEX_EXP_NEG_MUL",COMPLEX_EXP_NEG_MUL,DB.Thm),
   ("COMPLEX_EXP_NEG_MUL2",COMPLEX_EXP_NEG_MUL2,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("transcTheory.transc_grammars",
                          transcTheory.transc_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="complex",Name="complex"}, T"prod" "pair" [T"real" "realax" [], T"real" "realax" []])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RE", (Term.prim_mk_const { Name = "RE", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RE", (Term.prim_mk_const { Name = "RE", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IM", (Term.prim_mk_const { Name = "IM", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IM", (Term.prim_mk_const { Name = "IM", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_of_real", (Term.prim_mk_const { Name = "complex_of_real", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_of_real", (Term.prim_mk_const { Name = "complex_of_real", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_of_num", (Term.prim_mk_const { Name = "complex_of_num", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_of_num", (Term.prim_mk_const { Name = "complex_of_num", Thy = "complex"}))
  val _ = update_grms temp_add_numeral_form (#"c", SOME "complex_of_num")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("i", (Term.prim_mk_const { Name = "i", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("i", (Term.prim_mk_const { Name = "i", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_add", (Term.prim_mk_const { Name = "complex_add", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_add", (Term.prim_mk_const { Name = "complex_add", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_neg", (Term.prim_mk_const { Name = "complex_neg", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_neg", (Term.prim_mk_const { Name = "complex_neg", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_mul", (Term.prim_mk_const { Name = "complex_mul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_mul", (Term.prim_mk_const { Name = "complex_mul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_inv", (Term.prim_mk_const { Name = "complex_inv", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_inv", (Term.prim_mk_const { Name = "complex_inv", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "complex_add", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "complex_neg", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "complex_mul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inv", (Term.prim_mk_const { Name = "complex_inv", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numeric_negate", (Term.prim_mk_const { Name = "complex_neg", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_sub", (Term.prim_mk_const { Name = "complex_sub", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_sub", (Term.prim_mk_const { Name = "complex_sub", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_div", (Term.prim_mk_const { Name = "complex_div", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_div", (Term.prim_mk_const { Name = "complex_div", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "complex_sub", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/decfrac/", (Term.prim_mk_const { Name = "complex_div", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "complex_div", Thy = "complex"}))
  val _ = update_grms
       temp_add_user_printer
       ("(DecimalFractionPP.fraction{Thy=\"complex\",Division=\"complex_div\",fromNum=\"complex_of_num\"})", (#2 (parse_from_grammars min_grammars)[QUOTE "complex$complex_div (complex$complex_of_num (arithmetic$NUMERAL (x :(num$num)))) (complex$complex_of_num (arithmetic$NUMERAL (y :(num$num))))"]), (DecimalFractionPP.fraction{Thy="complex",Division="complex_div",fromNum="complex_of_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_scalar_lmul", (Term.prim_mk_const { Name = "complex_scalar_lmul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_scalar_lmul", (Term.prim_mk_const { Name = "complex_scalar_lmul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_scalar_rmul", (Term.prim_mk_const { Name = "complex_scalar_rmul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_scalar_rmul", (Term.prim_mk_const { Name = "complex_scalar_rmul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "complex_scalar_lmul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "complex_scalar_rmul", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conj", (Term.prim_mk_const { Name = "conj", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("conj", (Term.prim_mk_const { Name = "conj", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("modu", (Term.prim_mk_const { Name = "modu", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("modu", (Term.prim_mk_const { Name = "modu", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("arg", (Term.prim_mk_const { Name = "arg", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("arg", (Term.prim_mk_const { Name = "arg", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_pow", (Term.prim_mk_const { Name = "complex_pow", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pow", (Term.prim_mk_const { Name = "complex_pow", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_exp", (Term.prim_mk_const { Name = "complex_exp", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complex_exp", (Term.prim_mk_const { Name = "complex_exp", Thy = "complex"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("exp", (Term.prim_mk_const { Name = "complex_exp", Thy = "complex"}))
  val complex_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "complex",
    thydataty = "compute",
    data = "complex.complex_pow_def complex.complex_pow_def_compute"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "complex"
end
