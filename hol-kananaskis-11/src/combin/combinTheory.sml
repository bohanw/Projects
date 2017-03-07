structure combinTheory :> combinTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading combinTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open markerTheory
  in end;
  val _ = Theory.link_parents
          ("combin",
          Arbnum.fromString "1488585922",
          Arbnum.fromString "652622")
          [("marker",
           Arbnum.fromString "1488585918",
           Arbnum.fromString "889499")];
  val _ = Theory.incorporate_types "combin" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"),
   ID("combin", ":>"), ID("min", "="), ID("min", "==>"),
   ID("marker", "Abbrev"), ID("combin", "C"), ID("bool", "COND"),
   ID("combin", "FAIL"), ID("combin", "I"), ID("combin", "K"),
   ID("bool", "LET"), ID("combin", "S"), ID("combin", "UPDATE"),
   ID("combin", "W"), ID("bool", "\\/"), ID("bool", "literal_case"),
   ID("combin", "o"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYV "'a", TYOP [0, 1, 0], TYV "'c", TYOP [0, 1, 3],
   TYOP [0, 4, 2], TYOP [0, 3, 0], TYOP [0, 6, 5], TYOP [0, 1, 2],
   TYOP [0, 8, 2], TYOP [0, 2, 2], TYOP [0, 0, 10], TYOP [0, 1, 11],
   TYOP [0, 2, 4], TYOP [0, 0, 3], TYOP [0, 1, 14], TYOP [0, 15, 13],
   TYOP [0, 0, 1], TYOP [0, 1, 17], TYOP [0, 1, 1], TYOP [0, 0, 4],
   TYOP [0, 15, 20], TYOP [0, 17, 1], TYOP [0, 0, 22], TYV "'d", TYOP [1],
   TYOP [0, 1, 25], TYOP [0, 1, 6], TYOP [0, 3, 1], TYOP [0, 0, 28],
   TYOP [0, 3, 24], TYV "'e", TYOP [0, 24, 31], TYOP [0, 24, 3],
   TYOP [0, 26, 25], TYOP [0, 0, 25], TYOP [0, 35, 25], TYOP [0, 3, 25],
   TYOP [0, 37, 25], TYOP [0, 24, 25], TYOP [0, 39, 25], TYOP [0, 2, 25],
   TYOP [0, 41, 25], TYOP [0, 4, 25], TYOP [0, 43, 25], TYOP [0, 8, 25],
   TYOP [0, 45, 25], TYOP [0, 15, 25], TYOP [0, 47, 25], TYOP [0, 17, 25],
   TYOP [0, 49, 25], TYOP [0, 28, 25], TYOP [0, 51, 25], TYOP [0, 6, 25],
   TYOP [0, 53, 25], TYOP [0, 30, 25], TYOP [0, 55, 25], TYOP [0, 33, 25],
   TYOP [0, 57, 25], TYOP [0, 32, 25], TYOP [0, 59, 25], TYOP [0, 25, 25],
   TYOP [0, 25, 61], TYOP [0, 1, 26], TYOP [0, 0, 35], TYOP [0, 3, 37],
   TYOP [0, 24, 39], TYOP [0, 19, 25], TYOP [0, 19, 67], TYOP [0, 2, 41],
   TYOP [0, 4, 43], TYOP [0, 18, 25], TYOP [0, 18, 71], TYOP [0, 14, 25],
   TYOP [0, 14, 73], TYOP [0, 30, 55], TYOP [0, 24, 0], TYOP [0, 76, 25],
   TYOP [0, 76, 77], TYV "'f", TYOP [0, 79, 31], TYOP [0, 80, 25],
   TYOP [0, 80, 81], TYOP [0, 10, 25], TYOP [0, 10, 83], TYOP [0, 9, 25],
   TYOP [0, 9, 85], TYOP [0, 21, 25], TYOP [0, 21, 87], TYOP [0, 16, 25],
   TYOP [0, 16, 89], TYOP [0, 63, 63], TYOP [0, 3, 2], TYOP [0, 27, 92],
   TYOP [0, 3, 17], TYOP [0, 29, 94], TYOP [0, 0, 0], TYOP [0, 0, 96],
   TYOP [0, 25, 97], TYOP [0, 1, 19], TYOP [0, 19, 1], TYOP [0, 1, 100],
   TYOP [0, 3, 4], TYOP [0, 3, 14], TYOP [0, 79, 24], TYOP [0, 24, 104],
   TYOP [0, 31, 80], TYOP [0, 26, 26], TYOP [0, 17, 17], TYOP [0, 29, 29],
   TYOP [0, 28, 28], TYOP [0, 6, 6], TYOP [0, 27, 5], TYOP [0, 1, 61],
   TYOP [0, 113, 107], TYOP [0, 99, 19], TYOP [0, 101, 115],
   TYOP [0, 30, 30], TYOP [0, 24, 117], TYOP [0, 3, 118], TYOP [0, 19, 2],
   TYOP [0, 2, 120], TYOP [0, 28, 6], TYOP [0, 2, 122], TYOP [0, 24, 1],
   TYOP [0, 124, 76], TYOP [0, 2, 125], TYOP [0, 17, 14], TYOP [0, 4, 127],
   TYOP [0, 6, 28], TYOP [0, 17, 129], TYOP [0, 96, 10], TYOP [0, 14, 13],
   TYOP [0, 33, 124], TYOP [0, 28, 133], TYOP [0, 33, 76],
   TYOP [0, 6, 135], TYOP [0, 104, 80], TYOP [0, 32, 137],
   TYOP [0, 61, 107], TYOP [0, 26, 113], TYOP [0, 62, 140]]
  end
  val _ = Theory.incorporate_consts "combin" tyvector
     [("o", 7), ("W", 9), ("UPDATE", 12), ("S", 16), ("K", 18), ("I", 19),
      ("FAIL", 18), ("C", 21), (":>", 23)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 17), TMV("a", 1), TMV("a", 3), TMV("b", 1), TMV("b", 0),
   TMV("b", 3), TMV("b", 24), TMV("c", 1), TMV("c", 0), TMV("c", 24),
   TMV("d", 0), TMV("f", 2), TMV("f", 4), TMV("f", 26), TMV("f", 8),
   TMV("f", 15), TMV("f", 27), TMV("f", 17), TMV("f", 29), TMV("f", 6),
   TMV("f", 30), TMV("f", 32), TMV("f1", 1), TMV("f1", 2), TMV("f2", 0),
   TMV("f2", 2), TMV("g", 2), TMV("g", 4), TMV("g", 17), TMV("g", 28),
   TMV("h", 33), TMV("v", 1), TMV("v", 0), TMV("v", 3), TMV("v", 24),
   TMV("x", 1), TMV("x", 0), TMV("x", 3), TMV("x", 24), TMV("y", 1),
   TMV("y", 0), TMV("y", 3), TMC(2, 34), TMC(2, 36), TMC(2, 38),
   TMC(2, 40), TMC(2, 42), TMC(2, 44), TMC(2, 46), TMC(2, 48), TMC(2, 50),
   TMC(2, 52), TMC(2, 54), TMC(2, 56), TMC(2, 58), TMC(2, 60), TMC(3, 62),
   TMC(4, 23), TMC(5, 63), TMC(5, 64), TMC(5, 65), TMC(5, 66), TMC(5, 62),
   TMC(5, 68), TMC(5, 69), TMC(5, 70), TMC(5, 72), TMC(5, 74), TMC(5, 75),
   TMC(5, 78), TMC(5, 82), TMC(5, 84), TMC(5, 86), TMC(5, 88), TMC(5, 90),
   TMC(6, 62), TMC(7, 61), TMC(8, 91), TMC(8, 21), TMC(8, 93), TMC(8, 95),
   TMC(9, 98), TMC(10, 18), TMC(11, 19), TMC(11, 96), TMC(12, 99),
   TMC(12, 18), TMC(12, 101), TMC(12, 102), TMC(12, 103), TMC(12, 105),
   TMC(12, 106), TMC(13, 107), TMC(13, 108), TMC(13, 109), TMC(13, 110),
   TMC(13, 111), TMC(14, 16), TMC(14, 112), TMC(14, 114), TMC(14, 116),
   TMC(15, 12), TMC(15, 119), TMC(16, 9), TMC(17, 62), TMC(18, 107),
   TMC(18, 108), TMC(18, 109), TMC(18, 110), TMC(18, 111), TMC(19, 121),
   TMC(19, 123), TMC(19, 126), TMC(19, 128), TMC(19, 130), TMC(19, 131),
   TMC(19, 132), TMC(19, 134), TMC(19, 7), TMC(19, 136), TMC(19, 138),
   TMC(19, 139), TMC(19, 141), TMC(20, 61)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op K_DEF x = x
    val op K_DEF = DT(((("combin",0),[]),[]), [read"%66%86@%35%40$1||@"])
  fun op S_DEF x = x
    val op S_DEF =
    DT(((("combin",1),[]),[]), [read"%74%97@%15%26%35$2$0@$1$0@@|||@"])
  fun op I_DEF x = x
    val op I_DEF = DT(((("combin",2),[]),[]), [read"%63%83@%100%87@%85@@"])
  fun op C_DEF x = x
    val op C_DEF =
    DT(((("combin",3),[]),[]), [read"%73%78@%15%36%39$2$0@$1@|||@"])
  fun op W_DEF x = x
    val op W_DEF =
    DT(((("combin",4),[]),[]), [read"%72%103@%14%35$1$0@$0@||@"])
  fun op o_DEF x = x
    val op o_DEF =
    DT(((("combin",5),[]),[]),
       [read"%52%19%47%27%64%118$1@$0@@%35$2$1$0@@|@|@|@"])
  fun op APP_DEF x = x
    val op APP_DEF =
    DT(((("combin",6),[]),[]), [read"%43%36%50%17%58%57$1@$0@@$0$1@@|@|@"])
  fun op UPDATE_def x = x
    val op UPDATE_def =
    DT(((("combin",7),[]),[]),
       [read"%42%1%43%4%71%101$1@$0@@%11%7%81%58$3@$0@@$2@$1$0@@||@|@|@"])
  fun op FAIL_DEF x = x
    val op FAIL_DEF =
    DT(((("combin",39),[]),[]), [read"%66%82@%35%40$1||@"])
  fun op o_THM x = x
    val op o_THM =
    DT(((("combin",8),[("combin",[5])]),[]),
       [read"%46%11%51%29%44%37%59%111$2@$1@$0@@$2$1$0@@@|@|@|@"])
  fun op o_ASSOC x = x
    val op o_ASSOC =
    DT(((("combin",9),[("combin",[5])]),[]),
       [read"%46%11%51%29%54%30%69%112$2@%117$1@$0@@@%119%111$2@$1@@$0@@|@|@|@"])
  fun op o_ABS_L x = x
    val op o_ABS_L =
    DT(((("combin",10),
        [("bool",[25,36,56,60]),("combin",[8])]),["DISK_THM"]),
       [read"%67%113%35%12$0@|@%28@@%36%12%28$0@@|@"])
  fun op o_ABS_R x = x
    val op o_ABS_R =
    DT(((("combin",11),
        [("bool",[25,36,56,60]),("combin",[8])]),["DISK_THM"]),
       [read"%64%118%19@%35%27$0@|@@%35%19%27$0@@|@"])
  fun op K_THM x = x
    val op K_THM =
    DT(((("combin",12),[("combin",[0])]),[]),
       [read"%42%35%43%40%58%86$1@$0@@$1@|@|@"])
  fun op S_THM x = x
    val op S_THM =
    DT(((("combin",13),[("combin",[1])]),[]),
       [read"%49%15%46%26%42%35%60%97$2@$1@$0@@$2$0@$1$0@@@|@|@|@"])
  fun op S_ABS_L x = x
    val op S_ABS_L =
    DT(((("combin",14),
        [("bool",[25,36,56,60]),("combin",[13])]),["DISK_THM"]),
       [read"%64%98%35%16$0@|@%27@@%35%16$0@%27$0@@|@"])
  fun op S_ABS_R x = x
    val op S_ABS_R =
    DT(((("combin",15),
        [("bool",[25,36,56,60]),("combin",[13])]),["DISK_THM"]),
       [read"%64%98%16@%35%27$0@|@@%35%16$0@%27$0@@|@"])
  fun op C_THM x = x
    val op C_THM =
    DT(((("combin",16),[("combin",[3])]),[]),
       [read"%49%15%43%36%42%39%60%78$2@$1@$0@@$2$0@$1@@|@|@|@"])
  fun op C_ABS_L x = x
    val op C_ABS_L =
    DT(((("combin",17),
        [("bool",[25,36,56,60]),("combin",[16])]),["DISK_THM"]),
       [read"%64%79%35%16$0@|@%41@@%35%16$0@%41@|@"])
  fun op W_THM x = x
    val op W_THM =
    DT(((("combin",18),[("combin",[4])]),[]),
       [read"%48%14%42%35%59%103$1@$0@@$1$0@$0@@|@|@"])
  fun op I_THM x = x
    val op I_THM =
    DT(((("combin",19),[("combin",[2,12,13])]),[]),
       [read"%42%35%58%83$0@@$0@|@"])
  fun op I_o_ID x = x
    val op I_o_ID =
    DT(((("combin",20),
        [("bool",[25,36,51,56,60]),("combin",[8,19])]),["DISK_THM"]),
       [read"%46%11%56%64%115%84@$0@@$0@@%64%110$0@%83@@$0@@|@"])
  fun op K_o_THM x = x
    val op K_o_THM =
    DT(((("combin",21),
        [("bool",[25,36,51,56,60]),("combin",[8,12])]),["DISK_THM"]),
       [read"%56%46%11%44%33%65%116%89$0@@$1@@%88$0@@|@|@@%55%21%45%34%70%120$1@%90$0@@@%91$1$0@@@|@|@@"])
  fun op UPDATE_APPLY x = x
    val op UPDATE_APPLY =
    DT(((("combin",22),
        [("bool",[25,26,27,36,51,56,64]),("combin",[7])]),["DISK_THM"]),
       [read"%56%42%1%43%36%46%11%59%101$2@$1@$0@$2@@$1@|@|@|@@%44%2%44%5%45%38%53%20%75%123%60$3@$2@@@%61%102$3@$1@$0@$2@@$0$2@@@|@|@|@|@@"])
  fun op APPLY_UPDATE_THM x = x
    val op APPLY_UPDATE_THM =
    DT(((("combin",23),[("bool",[25,36,56]),("combin",[7])]),["DISK_THM"]),
       [read"%46%11%42%1%43%4%42%7%59%101$2@$1@$3@$0@@%81%58$2@$0@@$1@$3$0@@@|@|@|@|@"])
  fun op UPDATE_COMMUTES x = x
    val op UPDATE_COMMUTES =
    DT(((("combin",24),
        [("bool",[25,26,27,30,53,54,56,60,63,64]),
         ("combin",[7])]),["DISK_THM"]),
       [read"%46%11%42%1%42%3%43%8%43%10%75%123%58$3@$2@@@%64%101$3@$1@%101$2@$0@$4@@@%101$2@$0@%101$3@$1@$4@@@@|@|@|@|@|@"])
  fun op UPDATE_EQ x = x
    val op UPDATE_EQ =
    DT(((("combin",25),
        [("bool",[25,26,27,30,56,60,63,64]),("combin",[7])]),["DISK_THM"]),
       [read"%46%11%42%1%43%4%43%8%64%101$2@$0@%101$2@$1@$3@@@%101$2@$0@$3@@|@|@|@|@"])
  fun op UPDATE_APPLY_ID x = x
    val op UPDATE_APPLY_ID =
    DT(((("combin",26),
        [("bool",[25,26,27,30,56,60,63,64]),("combin",[7])]),["DISK_THM"]),
       [read"%46%11%42%1%43%4%62%59$2$1@@$0@@%64%101$1@$0@$2@@$2@@|@|@|@"])
  fun op UPDATE_APPLY_IMP_ID x = x
    val op UPDATE_APPLY_IMP_ID =
    DT(((("combin",27),[("combin",[26])]),["DISK_THM"]),
       [read"%46%11%43%4%42%1%75%59$2$0@@$1@@%64%101$0@$1@$2@@$2@@|@|@|@"])
  fun op APPLY_UPDATE_ID x = x
    val op APPLY_UPDATE_ID =
    DT(((("combin",28),
        [("bool",[25,36,56,58]),("combin",[26])]),["DISK_THM"]),
       [read"%46%11%42%1%64%101$0@$1$0@@$1@@$1@|@|@"])
  fun op UPD11_SAME_BASE x = x
    val op UPD11_SAME_BASE =
    DT(((("combin",29),
        [("bool",[25,26,27,30,36,51,52,54,56,60,63,64]),
         ("combin",[7])]),["DISK_THM"]),
       [read"%46%11%42%1%42%3%43%8%43%10%62%64%101$3@$1@$4@@%101$2@$0@$4@@@%104%56%58$3@$2@@%59$1@$0@@@%56%123%58$3@$2@@@%56%64%101$3@$1@$4@@$4@@%64%101$2@$0@$4@@$4@@@@@|@|@|@|@|@"])
  fun op SAME_KEY_UPDATE_DIFFER x = x
    val op SAME_KEY_UPDATE_DIFFER =
    DT(((("combin",30),
        [("bool",[27,54,56,60,64]),("combin",[7])]),["DISK_THM"]),
       [read"%42%22%43%24%44%2%45%6%45%9%75%123%61$1@$0@@@%123%68%102$2@$1@%20@@%102$2@$0@%20@@@@|@|@|@|@|@"])
  fun op UPD11_SAME_KEY_AND_BASE x = x
    val op UPD11_SAME_KEY_AND_BASE =
    DT(((("combin",31),
        [("bool",[25,26,36,56,60,64]),("combin",[7])]),["DISK_THM"]),
       [read"%46%11%42%1%43%4%43%8%62%64%101$2@$1@$3@@%101$2@$0@$3@@@%59$1@$0@@|@|@|@|@"])
  fun op UPD_SAME_KEY_UNWIND x = x
    val op UPD_SAME_KEY_UNWIND =
    DT(((("combin",32),
        [("bool",[25,26,27,30,56,60,63,64]),("combin",[7])]),["DISK_THM"]),
       [read"%46%23%46%25%42%1%43%4%43%8%75%64%101$2@$1@$4@@%101$2@$0@$3@@@%56%59$1@$0@@%43%32%64%101$3@$0@$5@@%101$3@$0@$4@@|@@@|@|@|@|@|@"])
  fun op GEN_LET_RAND x = x
    val op GEN_LET_RAND =
    DT(((("combin",33),[("bool",[25,32,56]),("combin",[8])]),["DISK_THM"]),
       [read"%58%0%96%19@%33@@@%95%114%0@%19@@%33@@"])
  fun op GEN_LET_RATOR x = x
    val op GEN_LET_RATOR =
    DT(((("combin",34),
        [("bool",[25,32,56]),("combin",[16])]),["DISK_THM"]),
       [read"%58%94%18@%32@%37@@%93%80%18@%37@@%32@@"])
  fun op LET_FORALL_ELIM x = x
    val op LET_FORALL_ELIM =
    DT(((("combin",35),
        [("bool",[25,26,32,63]),("combin",[1,3,8]),
         ("marker",[6])]),["DISK_THM"]),
       [read"%62%92%13@%31@@%42%99%122%75@%121%76@%77%58@%31@@@@%13@@@"])
  fun op GEN_literal_case_RAND x = x
    val op GEN_literal_case_RAND =
    DT(((("combin",36),
        [("bool",[25,56,164]),("combin",[8])]),["DISK_THM"]),
       [read"%58%0%109%19@%33@@@%108%114%0@%19@@%33@@"])
  fun op GEN_literal_case_RATOR x = x
    val op GEN_literal_case_RATOR =
    DT(((("combin",37),
        [("bool",[25,56,164]),("combin",[16])]),["DISK_THM"]),
       [read"%58%107%18@%32@%37@@%106%80%18@%37@@%32@@"])
  fun op literal_case_FORALL_ELIM x = x
    val op literal_case_FORALL_ELIM =
    DT(((("combin",38),
        [("bool",[25,26,63,164]),("combin",[1,3,8]),
         ("marker",[6])]),["DISK_THM"]),
       [read"%62%105%13@%31@@%42%99%122%75@%121%76@%77%58@%31@@@@%13@@@"])
  fun op FAIL_THM x = x
    val op FAIL_THM =
    DT(((("combin",40),[("combin",[39])]),[]), [read"%58%82%35@%40@@%35@"])
  end
  val _ = DB.bindl "combin"
  [("K_DEF",K_DEF,DB.Def), ("S_DEF",S_DEF,DB.Def), ("I_DEF",I_DEF,DB.Def),
   ("C_DEF",C_DEF,DB.Def), ("W_DEF",W_DEF,DB.Def), ("o_DEF",o_DEF,DB.Def),
   ("APP_DEF",APP_DEF,DB.Def), ("UPDATE_def",UPDATE_def,DB.Def),
   ("FAIL_DEF",FAIL_DEF,DB.Def), ("o_THM",o_THM,DB.Thm),
   ("o_ASSOC",o_ASSOC,DB.Thm), ("o_ABS_L",o_ABS_L,DB.Thm),
   ("o_ABS_R",o_ABS_R,DB.Thm), ("K_THM",K_THM,DB.Thm),
   ("S_THM",S_THM,DB.Thm), ("S_ABS_L",S_ABS_L,DB.Thm),
   ("S_ABS_R",S_ABS_R,DB.Thm), ("C_THM",C_THM,DB.Thm),
   ("C_ABS_L",C_ABS_L,DB.Thm), ("W_THM",W_THM,DB.Thm),
   ("I_THM",I_THM,DB.Thm), ("I_o_ID",I_o_ID,DB.Thm),
   ("K_o_THM",K_o_THM,DB.Thm), ("UPDATE_APPLY",UPDATE_APPLY,DB.Thm),
   ("APPLY_UPDATE_THM",APPLY_UPDATE_THM,DB.Thm),
   ("UPDATE_COMMUTES",UPDATE_COMMUTES,DB.Thm),
   ("UPDATE_EQ",UPDATE_EQ,DB.Thm),
   ("UPDATE_APPLY_ID",UPDATE_APPLY_ID,DB.Thm),
   ("UPDATE_APPLY_IMP_ID",UPDATE_APPLY_IMP_ID,DB.Thm),
   ("APPLY_UPDATE_ID",APPLY_UPDATE_ID,DB.Thm),
   ("UPD11_SAME_BASE",UPD11_SAME_BASE,DB.Thm),
   ("SAME_KEY_UPDATE_DIFFER",SAME_KEY_UPDATE_DIFFER,DB.Thm),
   ("UPD11_SAME_KEY_AND_BASE",UPD11_SAME_KEY_AND_BASE,DB.Thm),
   ("UPD_SAME_KEY_UNWIND",UPD_SAME_KEY_UNWIND,DB.Thm),
   ("GEN_LET_RAND",GEN_LET_RAND,DB.Thm),
   ("GEN_LET_RATOR",GEN_LET_RATOR,DB.Thm),
   ("LET_FORALL_ELIM",LET_FORALL_ELIM,DB.Thm),
   ("GEN_literal_case_RAND",GEN_literal_case_RAND,DB.Thm),
   ("GEN_literal_case_RATOR",GEN_literal_case_RATOR,DB.Thm),
   ("literal_case_FORALL_ELIM",literal_case_FORALL_ELIM,DB.Thm),
   ("FAIL_THM",FAIL_THM,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("markerTheory.marker_grammars",
                          markerTheory.marker_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("K", (Term.prim_mk_const { Name = "K", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("S", (Term.prim_mk_const { Name = "S", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("I", (Term.prim_mk_const { Name = "I", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("C", (Term.prim_mk_const { Name = "C", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("W", (Term.prim_mk_const { Name = "W", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("o", (Term.prim_mk_const { Name = "o", Thy = "combin"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "o"))
       (Infix(HOLgrammars.RIGHT, 800))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (":>", (Term.prim_mk_const { Name = ":>", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UPDATE", (Term.prim_mk_const { Name = "UPDATE", Thy = "combin"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity ":>"))
       (Infix(HOLgrammars.LEFT, 310))
  val _ = update_grms
       (UTOFF (temp_set_fixity "=+"))
       (Infix(HOLgrammars.NONASSOC, 320))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("=+", (Term.prim_mk_const { Name = "UPDATE", Thy = "combin"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FAIL", (Term.prim_mk_const { Name = "FAIL", Thy = "combin"}))
  val combin_grammars = Parse.current_lgrms()
  end


  val _ = Parse.hide "C";
  val _ =
     let open computeLib
         val K_tm = Term.prim_mk_const{Name="K",Thy="combin"}
     in add_funs
         [K_THM,S_DEF,I_THM,C_DEF,W_DEF,o_THM,K_o_THM,
          APP_DEF,APPLY_UPDATE_THM];
        set_skip the_compset K_tm (SOME 1)
     end;
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "combin",
    thydataty = "TexTokenMap",
    data = "1.o17.\\\\HOLTokenCompose1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "combin",
    thydataty = "OpenTheoryMap",
    data =
        " 11.Function.id6.combin1.I10.Function.o6.combin1.o10.Function.C6.combin1.C10.Function.S6.combin1.S10.Function.K6.combin1.K"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "combin"
end
