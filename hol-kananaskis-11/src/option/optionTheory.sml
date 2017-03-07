structure optionTheory :> optionTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading optionTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open normalFormsTheory oneTheory sumTheory
  in end;
  val _ = Theory.link_parents
          ("option",
          Arbnum.fromString "1488586022",
          Arbnum.fromString "931085")
          [("one",
           Arbnum.fromString "1488585999",
           Arbnum.fromString "26773"),
           ("sum",
           Arbnum.fromString "1488586017",
           Arbnum.fromString "12712"),
           ("normalForms",
           Arbnum.fromString "1488585933",
           Arbnum.fromString "503437")];
  val _ = Theory.incorporate_types "option" [("option", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("option", "option"), ID("min", "bool"),
   ID("sum", "sum"), ID("one", "one"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("bool", "COND"), ID("bool", "DATATYPE"), ID("bool", "F"),
   ID("sum", "INL"), ID("sum", "INR"), ID("option", "IS_NONE"),
   ID("option", "IS_SOME"), ID("combin", "K"), ID("option", "NONE"),
   ID("option", "OPTION_ALL"), ID("option", "OPTION_APPLY"),
   ID("option", "OPTION_BIND"), ID("option", "OPTION_CHOICE"),
   ID("option", "OPTION_GUARD"), ID("option", "OPTION_IGNORE_BIND"),
   ID("option", "OPTION_JOIN"), ID("option", "OPTION_MAP"),
   ID("option", "OPTION_MAP2"), ID("option", "OPTREL"),
   ID("option", "SOME"), ID("bool", "T"), ID("option", "THE"),
   ID("bool", "TYPE_DEFINITION"), ID("bool", "\\/"), ID("combin", "o"),
   ID("option", "option_ABS"), ID("option", "option_CASE"),
   ID("option", "option_REP"), ID("option", "some"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [2], TYOP [0, 0, 2], TYOP [0, 3, 1],
   TYOP [4], TYOP [3, 0, 5], TYOP [0, 1, 6], TYV "'b", TYOP [0, 0, 8],
   TYOP [0, 9, 8], TYOP [0, 8, 10], TYOP [0, 1, 11], TYOP [0, 6, 1],
   TYOP [0, 1, 0], TYOP [0, 0, 1], TYOP [1, 8], TYOP [0, 16, 2],
   TYOP [0, 1, 17], TYOP [0, 8, 2], TYOP [0, 0, 19], TYOP [0, 20, 18],
   TYV "'c", TYOP [1, 22], TYOP [0, 23, 1], TYOP [0, 16, 24],
   TYOP [0, 22, 0], TYOP [0, 8, 26], TYOP [0, 27, 25], TYOP [0, 1, 16],
   TYOP [0, 9, 29], TYOP [1, 1], TYOP [0, 31, 1], TYOP [0, 1, 1],
   TYOP [0, 16, 33], TYOP [1, 5], TYOP [0, 2, 35], TYOP [0, 1, 33],
   TYOP [0, 8, 1], TYOP [0, 38, 1], TYOP [0, 16, 39], TYOP [0, 16, 1],
   TYOP [0, 8, 0], TYOP [1, 42], TYOP [0, 43, 41], TYOP [0, 1, 2],
   TYOP [0, 3, 45], TYOP [0, 0, 3], TYOP [0, 8, 22], TYOP [0, 0, 48],
   TYOP [0, 0, 16], TYOP [0, 22, 8], TYOP [1, 9], TYOP [1, 48],
   TYOP [0, 1, 8], TYOP [0, 0, 22], TYOP [0, 15, 8], TYOP [0, 1, 56],
   TYOP [0, 3, 2], TYOP [0, 19, 2], TYOP [0, 9, 2], TYOP [0, 60, 2],
   TYOP [0, 58, 2], TYOP [0, 49, 2], TYOP [0, 63, 2], TYOP [0, 20, 2],
   TYOP [0, 65, 2], TYOP [0, 50, 2], TYOP [0, 67, 2], TYOP [0, 42, 2],
   TYOP [0, 69, 2], TYOP [0, 27, 2], TYOP [0, 71, 2], TYOP [0, 38, 2],
   TYOP [0, 73, 2], TYOP [0, 45, 2], TYOP [0, 75, 2], TYOP [0, 17, 2],
   TYOP [0, 23, 2], TYOP [0, 78, 2], TYOP [0, 31, 2], TYOP [0, 80, 2],
   TYOP [0, 6, 2], TYOP [0, 82, 2], TYOP [0, 2, 2], TYOP [0, 2, 84],
   TYOP [0, 8, 19], TYOP [0, 22, 2], TYOP [0, 22, 87], TYOP [0, 1, 45],
   TYOP [0, 16, 17], TYOP [0, 23, 78], TYOP [0, 35, 2], TYOP [0, 35, 92],
   TYOP [0, 31, 80], TYOP [0, 6, 82], TYOP [0, 54, 2], TYOP [0, 96, 2],
   TYOP [0, 7, 2], TYOP [0, 98, 2], TYOP [0, 3, 0], TYOP [0, 8, 8],
   TYOP [0, 8, 101], TYOP [0, 2, 102], TYOP [0, 2, 37], TYOP [0, 35, 35],
   TYOP [0, 35, 105], TYOP [0, 2, 106], TYOP [0, 0, 6], TYOP [0, 5, 6],
   TYOP [0, 1, 38], TYOP [0, 52, 29], TYOP [0, 1, 23], TYOP [1, 55],
   TYOP [0, 113, 112], TYOP [0, 16, 23], TYOP [0, 53, 115],
   TYOP [0, 52, 16], TYOP [1, 10], TYOP [0, 118, 117], TYOP [0, 52, 113],
   TYOP [0, 9, 55], TYOP [1, 121], TYOP [0, 122, 120], TYOP [0, 53, 122],
   TYOP [0, 48, 121], TYOP [1, 125], TYOP [0, 126, 124], TYOP [0, 50, 16],
   TYOP [0, 1, 128], TYOP [0, 23, 33], TYOP [0, 55, 112], TYOP [0, 1, 53],
   TYOP [0, 49, 132], TYOP [0, 42, 41], TYOP [0, 23, 16],
   TYOP [0, 51, 135], TYOP [0, 1, 115], TYOP [0, 49, 137],
   TYOP [0, 47, 89], TYOP [0, 8, 16], TYOP [0, 22, 23], TYOP [0, 42, 43],
   TYOP [0, 10, 118], TYOP [0, 125, 126], TYOP [0, 5, 35], TYOP [0, 1, 31],
   TYOP [0, 16, 8], TYOP [0, 23, 22], TYOP [0, 82, 98], TYOP [0, 55, 9],
   TYOP [0, 51, 150], TYOP [0, 15, 1], TYOP [0, 1, 152], TYOP [0, 1, 153]]
  end
  val _ = Theory.incorporate_consts "option" tyvector
     [("some", 4), ("option_REP", 7), ("option_CASE", 12),
      ("option_ABS", 13), ("THE", 14), ("SOME", 15), ("OPTREL", 21),
      ("OPTION_MAP2", 28), ("OPTION_MAP", 30), ("OPTION_JOIN", 32),
      ("OPTION_IGNORE_BIND", 34), ("OPTION_GUARD", 36),
      ("OPTION_CHOICE", 37), ("OPTION_BIND", 40), ("OPTION_APPLY", 44),
      ("OPTION_ALL", 46), ("NONE", 1), ("IS_SOME", 45), ("IS_NONE", 45)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 1), TMV("M'", 1), TMV("P", 2), TMV("P", 3), TMV("P", 20),
   TMV("P", 45), TMV("P'", 3), TMV("Q", 20), TMV("Q", 45), TMV("R", 47),
   TMV("R", 20), TMV("X", 1), TMV("a", 0), TMV("a", 1), TMV("b", 2),
   TMV("e", 8), TMV("e", 1), TMV("f", 9), TMV("f", 49), TMV("f", 50),
   TMV("f", 42), TMV("f", 27), TMV("f", 38), TMV("f", 51), TMV("f", 52),
   TMV("f", 53), TMV("f'", 9), TMV("f1", 9), TMV("f1", 49), TMV("f1", 50),
   TMV("f2", 9), TMV("f2", 49), TMV("f2", 50), TMV("fn", 54), TMV("g", 55),
   TMV("g", 52), TMV("m", 1), TMV("m1", 1), TMV("m1", 16), TMV("m2", 1),
   TMV("o1", 1), TMV("o2", 1), TMV("o2", 16), TMV("opt", 1),
   TMV("opt'", 1), TMV("opt1", 1), TMV("opt2", 1), TMV("option", 57),
   TMV("p", 1), TMV("r", 6), TMV("rep", 7), TMV("v", 8), TMV("v", 22),
   TMV("v'", 8), TMV("x", 0), TMV("x", 8), TMV("x", 1), TMV("x", 16),
   TMV("x", 31), TMV("x", 6), TMV("x0", 0), TMV("x1", 0), TMV("x1", 1),
   TMV("x2", 8), TMV("x2", 1), TMV("y", 0), TMV("y", 8), TMV("y", 22),
   TMV("y", 16), TMV("y", 23), TMV("y0", 8), TMV("y1", 16), TMV("y2", 16),
   TMV("z", 0), TMC(5, 58), TMC(5, 59), TMC(5, 61), TMC(5, 62), TMC(5, 64),
   TMC(5, 66), TMC(5, 68), TMC(5, 70), TMC(5, 72), TMC(5, 74), TMC(5, 76),
   TMC(5, 75), TMC(5, 77), TMC(5, 79), TMC(5, 81), TMC(5, 83), TMC(6, 85),
   TMC(7, 47), TMC(7, 86), TMC(7, 88), TMC(7, 85), TMC(7, 89), TMC(7, 90),
   TMC(7, 91), TMC(7, 93), TMC(7, 94), TMC(7, 95), TMC(8, 85), TMC(9, 58),
   TMC(9, 59), TMC(9, 97), TMC(9, 99), TMC(9, 75), TMC(10, 100),
   TMC(11, 103), TMC(11, 104), TMC(11, 107), TMC(12, 19), TMC(13, 2),
   TMC(14, 108), TMC(15, 109), TMC(16, 45), TMC(17, 45), TMC(17, 17),
   TMC(17, 78), TMC(18, 110), TMC(19, 1), TMC(19, 16), TMC(19, 23),
   TMC(19, 43), TMC(19, 35), TMC(19, 31), TMC(20, 46), TMC(21, 111),
   TMC(21, 114), TMC(21, 44), TMC(21, 116), TMC(21, 119), TMC(21, 123),
   TMC(21, 127), TMC(22, 129), TMC(22, 40), TMC(23, 37), TMC(24, 36),
   TMC(25, 34), TMC(25, 130), TMC(26, 32), TMC(27, 30), TMC(27, 131),
   TMC(27, 133), TMC(27, 134), TMC(27, 136), TMC(28, 138), TMC(28, 28),
   TMC(29, 139), TMC(29, 21), TMC(30, 15), TMC(30, 140), TMC(30, 141),
   TMC(30, 142), TMC(30, 143), TMC(30, 144), TMC(30, 145), TMC(30, 146),
   TMC(31, 2), TMC(32, 14), TMC(32, 147), TMC(32, 148), TMC(33, 149),
   TMC(34, 85), TMC(35, 125), TMC(35, 151), TMC(4, 5), TMC(36, 13),
   TMC(37, 12), TMC(37, 154), TMC(38, 7), TMC(39, 4), TMC(40, 84)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op option_TY_DEF x = x
    val op option_TY_DEF =
    DT(((("option",0),[("bool",[25])]),["DISK_THM"]),
       [read"%105%50%162%59%158|@$0@|@"])
  fun op option_REP_ABS_DEF x = x
    val op option_REP_ABS_DEF =
    DT(((("option",1),[("bool",[117]),("option",[0])]),["DISK_THM"]),
       [read"%90%85%13%95%167%170$0@@@$0@|@@%89%49%94%59%158|$0@@%100%170%167$0@@@$0@@|@@"])
  fun op SOME_DEF x = x
    val op SOME_DEF =
    DT(((("option",2),[]),[]), [read"%74%54%95%150$0@@%167%113$0@@@|@"])
  fun op NONE_DEF x = x
    val op NONE_DEF =
    DT(((("option",3),[]),[]), [read"%95%120@%167%114%166@@@"])
  fun op option_case_def x = x
    val op option_case_def =
    DT(((("option",7),[("option",[4])]),["DISK_THM"]),
       [read"%90%75%51%76%17%92%168%120@$1@$0@@$1@|@|@@%74%54%75%51%76%17%92%168%150$2@@$1@$0@@$0$2@@|@|@|@@"])
  fun op OPTION_MAP_DEF x = x
    val op OPTION_MAP_DEF =
    DT(((("option",13),[("option",[4])]),["DISK_THM"]),
       [read"%90%76%17%74%54%96%141$1@%150$0@@@%151$1$0@@@|@|@@%76%17%96%141$0@%120@@%121@|@@"])
  fun op IS_SOME_DEF x = x
    val op IS_SOME_DEF =
    DT(((("option",14),[("option",[4])]),["DISK_THM"]),
       [read"%90%74%54%94%116%150$0@@@%158@|@@%94%116%120@@%112@@"])
  fun op IS_NONE_DEF x = x
    val op IS_NONE_DEF =
    DT(((("option",15),[("option",[4])]),["DISK_THM"]),
       [read"%90%74%54%94%115%150$0@@@%112@|@@%94%115%120@@%158@@"])
  fun op THE_DEF x = x
    val op THE_DEF =
    DT(((("option",16),[("option",[4])]),["DISK_THM"]),
       [read"%74%54%91%159%150$0@@@$0@|@"])
  fun op OPTION_MAP2_DEF x = x
    val op OPTION_MAP2_DEF =
    DT(((("option",17),[]),[]),
       [read"%82%21%86%57%87%69%95%147$2@$1@$0@@%109%90%117$1@@%118$0@@@%150$2%160$1@@%161$0@@@@%120@@|@|@|@"])
  fun op OPTION_JOIN_DEF x = x
    val op OPTION_JOIN_DEF =
    DT(((("option",18),[("option",[4])]),["DISK_THM"]),
       [read"%90%95%140%125@@%120@@%85%56%95%140%157$0@@@$0@|@@"])
  fun op OPTION_BIND_def x = x
    val op OPTION_BIND_def =
    DT(((("option",38),[("option",[4])]),["DISK_THM"]),
       [read"%90%83%22%95%135%121@$0@@%120@|@@%75%55%83%22%95%135%151$1@@$0@@$0$1@@|@|@@"])
  fun op OPTION_IGNORE_BIND_def x = x
    val op OPTION_IGNORE_BIND_def =
    DT(((("option",41),[]),[]),
       [read"%86%38%85%39%95%138$1@$0@@%135$1@%119$0@@@|@|@"])
  fun op OPTION_GUARD_def x = x
    val op OPTION_GUARD_def =
    DT(((("option",43),[("bool",[149])]),["DISK_THM"]),
       [read"%90%98%137%158@@%156%166@@@%98%137%112@@%124@@"])
  fun op OPTION_CHOICE_def x = x
    val op OPTION_CHOICE_def =
    DT(((("option",46),[("option",[4])]),["DISK_THM"]),
       [read"%90%85%39%95%136%120@$0@@$0@|@@%74%54%85%39%95%136%150$1@@$0@@%150$1@@|@|@@"])
  fun op OPTION_APPLY_def x = x
    val op OPTION_APPLY_def =
    DT(((("option",48),[("option",[4])]),["DISK_THM"]),
       [read"%90%86%57%95%129%123@$0@@%120@|@@%81%20%86%57%95%129%153$1@@$0@@%144$1@$0@@|@|@@"])
  fun op OPTREL_def x = x
    val op OPTREL_def =
    DT(((("option",53),[]),[]),
       [read"%79%10%85%56%86%68%94%149$2@$1@$0@@%163%90%95$1@%120@@%96$0@%121@@@%102%60%103%70%90%95$3@%150$1@@@%90%96$2@%151$0@@@$4$1@$0@@@|@|@@@|@|@|@"])
  fun op some_def x = x
    val op some_def =
    DT(((("option",56),[]),[]),
       [read"%77%3%95%171$0@@%109%102%54$1$0@|@@%150%107%54$1$0@|@@@%120@@|@"])
  fun op OPTION_ALL_def x = x
    val op OPTION_ALL_def =
    DT(((("option",62),[("option",[4])]),["DISK_THM"]),
       [read"%90%77%3%94%126$0@%120@@%158@|@@%77%3%74%54%94%126$1@%150$0@@@$1$0@@|@|@@"])
  fun op option_Axiom x = x
    val op option_Axiom =
    DT(((("option",4),
        [("bool",[25,36,51,56,63]),("option",[1,2,3]),
         ("sum",[13])]),["DISK_THM"]),
       [read"%75%15%76%17%104%33%90%92$0%120@@$2@@%74%54%92$1%150$0@@@$2$0@@|@@|@|@|@"])
  fun op option_induction x = x
    val op option_induction =
    DT(((("option",5),
        [("bool",[25,36,51,58,63]),("one",[3]),("option",[1,2,3]),
         ("sum",[10])]),["DISK_THM"]),
       [read"%84%5%101%90$0%120@@%74%12$1%150$0@@|@@@%85%56$1$0@|@@|@"])
  fun op option_nchotomy x = x
    val op option_nchotomy =
    DT(((("option",6),[("bool",[181]),("option",[5])]),["DISK_THM"]),
       [read"%85%43%163%95$0@%120@@%102%54%95$1@%150$0@@|@@|@"])
  fun op FORALL_OPTION x = x
    val op FORALL_OPTION =
    DT(((("option",8),
        [("bool",[2,15,25,26,53,54,58,63,83]),("option",[5]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%94%85%43%5$0@|@@%90%5%120@@%74%54%5%150$0@@|@@@"])
  fun op EXISTS_OPTION x = x
    val op EXISTS_OPTION =
    DT(((("option",9),
        [("bool",[2,15,25,26,53,54,63,75]),("option",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%94%106%43%5$0@|@@%163%5%120@@%102%54%5%150$0@@|@@@"])
  fun op SOME_11 x = x
    val op SOME_11 =
    DT(((("option",10),
        [("bool",[25,26,36,53,56]),("option",[1,2]),
         ("sum",[7])]),["DISK_THM"]),
       [read"%74%54%74%65%94%95%150$1@@%150$0@@@%91$1@$0@@|@|@"])
  fun op NOT_NONE_SOME x = x
    val op NOT_NONE_SOME =
    DT(((("option",11),
        [("bool",[25,26,27,36,53,54]),("option",[1,2,3]),
         ("sum",[8])]),["DISK_THM"]),
       [read"%74%54%172%95%120@%150$0@@@|@"])
  fun op NOT_SOME_NONE x = x
    val op NOT_SOME_NONE =
    DT(((("option",12),
        [("bool",[25,26,27,36,53,54,58]),("option",[1,2,3]),
         ("sum",[8])]),["DISK_THM"]),
       [read"%74%54%172%95%150$0@@%120@@|@"])
  fun op OPTION_MAP2_THM x = x
    val op OPTION_MAP2_THM =
    DT(((("option",19),
        [("bool",[25,51,56,64]),("option",[10,14,16,17])]),["DISK_THM"]),
       [read"%90%95%147%21@%151%55@@%152%67@@@%150%21%55@%67@@@@%90%95%147%21@%151%55@@%122@@%120@@%90%95%147%21@%121@%152%67@@@%120@@%95%147%21@%121@%122@@%120@@@@"])
  fun op IS_SOME_EXISTS x = x
    val op IS_SOME_EXISTS =
    DT(((("option",20),
        [("bool",[25,26,27,37,54,58,63,140]),
         ("option",[6,10,11,14])]),["DISK_THM"]),
       [read"%85%43%94%116$0@@%102%54%95$1@%150$0@@|@@|@"])
  fun op IS_NONE_EQ_NONE x = x
    val op IS_NONE_EQ_NONE =
    DT(((("option",21),
        [("bool",[25,26,27,54,56,63]),("option",[6,12,15])]),["DISK_THM"]),
       [read"%85%56%94%115$0@@%95$0@%120@@|@"])
  fun op NOT_IS_SOME_EQ_NONE x = x
    val op NOT_IS_SOME_EQ_NONE =
    DT(((("option",22),
        [("bool",[25,26,27,54,56,63]),("option",[6,12,14])]),["DISK_THM"]),
       [read"%85%56%94%172%116$0@@@%95$0@%120@@|@"])
  fun op option_case_ID x = x
    val op option_case_ID =
    DT(((("option",23),
        [("bool",[25,56]),("option",[6,7,10])]),["DISK_THM"]),
       [read"%85%56%95%169$0@%120@%150@@$0@|@"])
  fun op option_case_SOME_ID x = x
    val op option_case_SOME_ID =
    DT(((("option",24),
        [("bool",[25,56]),("option",[6,7,10])]),["DISK_THM"]),
       [read"%85%56%95%169$0@$0@%150@@$0@|@"])
  fun op option_CLAUSES x = x
    val op option_CLAUSES =
    DT(((("option",25),
        [("bool",[25,26,27,53,56]),
         ("option",
         [6,7,10,11,12,13,14,15,16,18,21,22,23,24])]),["DISK_THM"]),
       [read"%90%74%54%74%65%94%95%150$1@@%150$0@@@%91$1@$0@@|@|@@%90%74%54%91%159%150$0@@@$0@|@@%90%74%54%172%95%120@%150$0@@@|@@%90%74%54%172%95%150$0@@%120@@|@@%90%74%54%94%116%150$0@@@%158@|@@%90%94%116%120@@%112@@%90%85%56%94%115$0@@%95$0@%120@@|@@%90%85%56%94%172%116$0@@@%95$0@%120@@|@@%90%85%56%101%116$0@@%95%150%159$0@@@$0@@|@@%90%85%56%95%169$0@%120@%150@@$0@|@@%90%85%56%95%169$0@$0@%150@@$0@|@@%90%85%56%101%115$0@@%92%168$0@%15@%17@@%15@@|@@%90%85%56%101%116$0@@%92%168$0@%15@%17@@%17%159$0@@@@|@@%90%85%56%101%116$0@@%95%169$0@%16@%150@@$0@@|@@%90%75%51%76%17%92%168%120@$1@$0@@$1@|@|@@%90%74%54%75%51%76%17%92%168%150$2@@$1@$0@@$0$2@@|@|@|@@%90%76%17%74%54%96%141$1@%150$0@@@%151$1$0@@@|@|@@%90%76%17%96%141$0@%120@@%121@|@@%90%95%140%125@@%120@@%85%56%95%140%157$0@@@$0@|@@@@@@@@@@@@@@@@@@@@"])
  fun op option_case_compute x = x
    val op option_case_compute =
    DT(((("option",26),
        [("bool",[25,56,64]),("option",[6,7,14,16])]),["DISK_THM"]),
       [read"%92%168%56@%15@%17@@%108%116%56@@%17%159%56@@@%15@@"])
  fun op IF_EQUALS_OPTION x = x
    val op IF_EQUALS_OPTION =
    DT(((("option",27),
        [("bool",[25,26,27,30,51,54,56,58,63,64]),
         ("option",[10,11])]),["DISK_THM"]),
       [read"%90%94%95%109%2@%150%54@@%120@@%120@@%172%2@@@%90%94%95%109%2@%120@%150%54@@@%120@@%2@@%90%94%95%109%2@%150%54@@%120@@%150%65@@@%90%2@%91%54@%65@@@@%94%95%109%2@%120@%150%54@@@%150%65@@@%90%172%2@@%91%54@%65@@@@@@"])
  fun op IF_NONE_EQUALS_OPTION x = x
    val op IF_NONE_EQUALS_OPTION =
    DT(((("option",28),
        [("bool",[25,26,27,51,53,54,56,58,63,65,105,124]),
         ("option",[6,10,11,14,15,27]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%90%94%95%109%2@%11@%120@@%120@@%101%2@%115%11@@@@%90%94%95%109%2@%120@%11@@%120@@%101%116%11@@%2@@@%90%94%95%109%2@%11@%120@@%150%54@@@%90%2@%95%11@%150%54@@@@@%94%95%109%2@%120@%11@@%150%54@@@%90%172%2@@%95%11@%150%54@@@@@@@"])
  fun op OPTION_MAP_EQ_SOME x = x
    val op OPTION_MAP_EQ_SOME =
    DT(((("option",29),
        [("bool",
         [13,25,26,27,30,37,47,48,51,52,53,54,56,58,63,93,94,96,143]),
         ("option",[6,10,11,13]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%76%17%85%56%75%66%94%96%141$2@$1@@%151$0@@@%102%73%90%95$2@%150$0@@@%92$1@$3$0@@@|@@|@|@|@"])
  fun op OPTION_MAP_EQ_NONE x = x
    val op OPTION_MAP_EQ_NONE =
    DT(((("option",30),
        [("bool",[25,26,27,54,56,63]),("option",[6,25])]),["DISK_THM"]),
       [read"%76%17%85%56%94%96%141$1@$0@@%121@@%95$0@%120@@|@|@"])
  fun op OPTION_MAP_EQ_NONE_both_ways x = x
    val op OPTION_MAP_EQ_NONE_both_ways =
    DT(((("option",31),
        [("bool",[25,51,56,58]),("option",[30])]),["DISK_THM"]),
       [read"%90%94%95%144%20@%57@@%120@@%96%57@%121@@@%94%95%120@%144%20@%57@@@%96%57@%121@@@"])
  fun op OPTION_MAP_COMPOSE x = x
    val op OPTION_MAP_COMPOSE =
    DT(((("option",32),
        [("bool",[25,56]),("combin",[8]),
         ("option",[6,10,13])]),["DISK_THM"]),
       [read"%96%145%23@%142%34@%56@@@%141%165%23@%34@@%56@@"])
  fun op OPTION_MAP_CONG x = x
    val op OPTION_MAP_CONG =
    DT(((("option",33),
        [("bool",[25,56]),("option",[6,10,13])]),["DISK_THM"]),
       [read"%85%45%85%46%76%27%76%30%101%90%95$3@$2@@%74%54%101%95$3@%150$0@@@%92$2$0@@$1$0@@@|@@@%96%141$1@$3@@%141$0@$2@@@|@|@|@|@"])
  fun op OPTION_JOIN_EQ_SOME x = x
    val op OPTION_JOIN_EQ_SOME =
    DT(((("option",34),
        [("bool",[25,26,27,36,54,56,63]),
         ("option",[6,10,11,18])]),["DISK_THM"]),
       [read"%88%58%74%65%94%95%140$1@@%150$0@@@%99$1@%157%150$0@@@@|@|@"])
  fun op OPTION_MAP2_SOME x = x
    val op OPTION_MAP2_SOME =
    DT(((("option",35),
        [("bool",[25,26,27,37,51,53,56,58,105,106,124,143]),
         ("option",[6,10,11,19])]),["DISK_THM"]),
       [read"%94%97%146%18@%40@%42@@%152%52@@@%102%61%103%63%90%95%40@%150$1@@@%90%96%42@%151$0@@@%93%52@%18$1@$0@@@@|@|@@"])
  fun op OPTION_MAP2_NONE x = x
    val op OPTION_MAP2_NONE =
    DT(((("option",36),
        [("bool",[25,26,27,52,54,56,58,63]),
         ("option",[6,11,19])]),["DISK_THM"]),
       [read"%94%97%146%18@%40@%42@@%122@@%163%95%40@%120@@%96%42@%121@@@"])
  fun op OPTION_MAP2_cong x = x
    val op OPTION_MAP2_cong =
    DT(((("option",37),
        [("bool",[25,51,56,58,105,124]),
         ("option",[6,10,19])]),["DISK_THM"]),
       [read"%85%62%85%64%86%71%86%72%78%28%78%31%101%90%95$5@$4@@%90%96$3@$2@@%74%54%75%66%101%90%95$6@%150$1@@@%96$4@%151$0@@@@%93$3$1@$0@@$2$1@$0@@@|@|@@@@%97%146$1@$5@$3@@%146$0@$4@$2@@@|@|@|@|@|@|@"])
  fun op OPTION_BIND_cong x = x
    val op OPTION_BIND_cong =
    DT(((("option",39),
        [("bool",[25,26,27,36,51,53,56,58,63,101,105,124,145]),
         ("option",[8,10,11,38])]),["DISK_THM"]),
       [read"%85%40%85%41%80%29%80%32%101%90%95$3@$2@@%74%54%101%95$3@%150$0@@@%96$2$0@@$1$0@@@|@@@%96%134$3@$1@@%134$2@$0@@@|@|@|@|@"])
  fun op OPTION_BIND_EQUALS_OPTION x = x
    val op OPTION_BIND_EQUALS_OPTION =
    DT(((("option",40),
        [("bool",[25,26,27,37,51,52,54,56,58,63,143]),
         ("option",[6,10,11,38])]),["DISK_THM"]),
       [read"%90%94%96%134%48@%19@@%121@@%163%95%48@%120@@%102%54%90%95%48@%150$0@@@%96%19$0@@%121@@|@@@@%94%96%134%48@%19@@%151%66@@@%102%54%90%95%48@%150$0@@@%96%19$0@@%151%66@@@|@@@"])
  fun op OPTION_IGNORE_BIND_thm x = x
    val op OPTION_IGNORE_BIND_thm =
    DT(((("option",42),
        [("bool",[25,56]),("combin",[12]),
         ("option",[38,41])]),["DISK_THM"]),
       [read"%90%95%138%121@%36@@%120@@%95%139%152%52@@%36@@%36@@"])
  fun op OPTION_GUARD_COND x = x
    val op OPTION_GUARD_COND =
    DT(((("option",44),
        [("bool",[25,26,27,30,56,63,64]),("option",[43])]),["DISK_THM"]),
       [read"%98%137%14@@%110%14@%156%166@@%124@@"])
  fun op OPTION_GUARD_EQ_THM x = x
    val op OPTION_GUARD_EQ_THM =
    DT(((("option",45),
        [("bool",[13,25,26,27,54,56,58,63]),
         ("option",[10,11,43])]),["DISK_THM"]),
       [read"%90%94%98%137%14@@%156%166@@@%14@@%94%98%137%14@@%124@@%172%14@@@"])
  fun op OPTION_CHOICE_EQ_NONE x = x
    val op OPTION_CHOICE_EQ_NONE =
    DT(((("option",47),
        [("bool",[25,26,27,51,54,56,58,63]),
         ("option",[6,11,46])]),["DISK_THM"]),
       [read"%94%95%136%37@%39@@%120@@%90%95%37@%120@@%95%39@%120@@@"])
  fun op OPTION_APPLY_MAP2 x = x
    val op OPTION_APPLY_MAP2 =
    DT(((("option",49),
        [("bool",[25,52,56,58]),
         ("option",[6,10,13,19,36,48])]),["DISK_THM"]),
       [read"%97%130%143%18@%56@@%68@@%146%18@%56@%68@@"])
  fun op SOME_SOME_APPLY x = x
    val op SOME_SOME_APPLY =
    DT(((("option",50),
        [("bool",[25,56]),("option",[10,13,48])]),["DISK_THM"]),
       [read"%95%129%153%20@@%151%55@@@%150%20%55@@@"])
  fun op SOME_APPLY_PERMUTE x = x
    val op SOME_APPLY_PERMUTE =
    DT(((("option",51),
        [("bool",[25,56]),("option",[6,10,13,48])]),["DISK_THM"]),
       [read"%96%127%24@%150%54@@@%131%154%17$0%54@|@@%24@@"])
  fun op OPTION_APPLY_o x = x
    val op OPTION_APPLY_o =
    DT(((("option",52),
        [("bool",[25,56]),("combin",[8]),
         ("option",[6,10,13,48])]),["DISK_THM"]),
       [read"%97%128%132%133%155%164@@%25@@%35@@%56@@%130%25@%127%35@%56@@@"])
  fun op OPTREL_MONO x = x
    val op OPTREL_MONO =
    DT(((("option",54),
        [("bool",[25,26,27,37,51,52,56,58,63,105,124,143]),
         ("option",[10,11,53])]),["DISK_THM"]),
       [read"%101%74%54%75%66%101%4$1@$0@@%7$1@$0@@|@|@@%101%149%4@%56@%68@@%149%7@%56@%68@@@"])
  fun op OPTREL_refl x = x
    val op OPTREL_refl =
    DT(((("option",55),
        [("bool",
         [13,25,26,27,30,37,47,48,51,52,53,54,56,58,63,72,81,84,94,96]),
         ("option",[6,10,11,12,53]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%101%74%54%9$0@$0@|@@%85%56%148%9@$0@$0@|@@"])
  fun op some_intro x = x
    val op some_intro =
    DT(((("option",57),
        [("bool",[2,25,26,27,30,53,54,58,63,64,84,105,124]),
         ("option",[56]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%101%90%74%54%101%3$0@@%8%150$0@@@|@@%101%74%54%172%3$0@@|@@%8%120@@@@%8%171%3@@@"])
  fun op some_elim x = x
    val op some_elim =
    DT(((("option",58),
        [("bool",[2,25,26,27,30,51,53,54,58,63,64,74,84,105,124]),
         ("option",[56]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%101%8%171%3@@@%163%102%54%90%3$0@@%8%150$0@@@|@@%90%74%54%172%3$0@@|@@%8%120@@@@"])
  fun op some_F x = x
    val op some_F =
    DT(((("option",59),
        [("bool",[25,36,53,54,56,58,105,124]),
         ("option",[57])]),["DISK_THM"]), [read"%95%171%54%112|@@%120@"])
  fun op some_EQ x = x
    val op some_EQ =
    DT(((("option",60),
        [("bool",[6,25,26,27,53,56,58,63,105,124,145]),
         ("option",[10,11,57])]),["DISK_THM"]),
       [read"%90%95%171%54%91$0@%65@|@@%150%65@@@%95%171%54%91%65@$0@|@@%150%65@@@"])
  fun op option_case_cong x = x
    val op option_case_cong =
    DT(((("option",61),[("option",[6,7])]),["DISK_THM"]),
       [read"%85%0%85%1%75%51%76%17%101%90%95$3@$2@@%90%101%95$2@%120@@%92$1@%53@@@%74%54%101%95$3@%150$0@@@%92$1$0@@%26$0@@@|@@@@%92%168$3@$1@$0@@%168$2@%53@%26@@@|@|@|@|@"])
  fun op OPTION_ALL_MONO x = x
    val op OPTION_ALL_MONO =
    DT(((("option",63),[("bool",[25,53]),("option",[6,62])]),["DISK_THM"]),
       [read"%101%74%54%101%3$0@@%6$0@@|@@%101%126%3@%43@@%126%6@%43@@@"])
  fun op OPTION_ALL_CONG x = x
    val op OPTION_ALL_CONG =
    DT(((("option",64),
        [("bool",[25,26,27,36,51,53,56,58,63,101,105,124,145]),
         ("option",[8,10,11,62])]),["DISK_THM"]),
       [read"%85%43%85%44%77%3%77%6%101%90%95$3@$2@@%74%54%101%95$3@%150$0@@@%94$2$0@@$1$0@@@|@@@%94%126$1@$3@@%126$0@$2@@@|@|@|@|@"])
  fun op datatype_option x = x
    val op datatype_option =
    DT(((("option",65),[("bool",[25,171])]),["DISK_THM"]),
       [read"%111%47%120@%150@@"])
  end
  val _ = DB.bindl "option"
  [("option_TY_DEF",option_TY_DEF,DB.Def),
   ("option_REP_ABS_DEF",option_REP_ABS_DEF,DB.Def),
   ("SOME_DEF",SOME_DEF,DB.Def), ("NONE_DEF",NONE_DEF,DB.Def),
   ("option_case_def",option_case_def,DB.Def),
   ("OPTION_MAP_DEF",OPTION_MAP_DEF,DB.Def),
   ("IS_SOME_DEF",IS_SOME_DEF,DB.Def), ("IS_NONE_DEF",IS_NONE_DEF,DB.Def),
   ("THE_DEF",THE_DEF,DB.Def), ("OPTION_MAP2_DEF",OPTION_MAP2_DEF,DB.Def),
   ("OPTION_JOIN_DEF",OPTION_JOIN_DEF,DB.Def),
   ("OPTION_BIND_def",OPTION_BIND_def,DB.Def),
   ("OPTION_IGNORE_BIND_def",OPTION_IGNORE_BIND_def,DB.Def),
   ("OPTION_GUARD_def",OPTION_GUARD_def,DB.Def),
   ("OPTION_CHOICE_def",OPTION_CHOICE_def,DB.Def),
   ("OPTION_APPLY_def",OPTION_APPLY_def,DB.Def),
   ("OPTREL_def",OPTREL_def,DB.Def), ("some_def",some_def,DB.Def),
   ("OPTION_ALL_def",OPTION_ALL_def,DB.Def),
   ("option_Axiom",option_Axiom,DB.Thm),
   ("option_induction",option_induction,DB.Thm),
   ("option_nchotomy",option_nchotomy,DB.Thm),
   ("FORALL_OPTION",FORALL_OPTION,DB.Thm),
   ("EXISTS_OPTION",EXISTS_OPTION,DB.Thm), ("SOME_11",SOME_11,DB.Thm),
   ("NOT_NONE_SOME",NOT_NONE_SOME,DB.Thm),
   ("NOT_SOME_NONE",NOT_SOME_NONE,DB.Thm),
   ("OPTION_MAP2_THM",OPTION_MAP2_THM,DB.Thm),
   ("IS_SOME_EXISTS",IS_SOME_EXISTS,DB.Thm),
   ("IS_NONE_EQ_NONE",IS_NONE_EQ_NONE,DB.Thm),
   ("NOT_IS_SOME_EQ_NONE",NOT_IS_SOME_EQ_NONE,DB.Thm),
   ("option_case_ID",option_case_ID,DB.Thm),
   ("option_case_SOME_ID",option_case_SOME_ID,DB.Thm),
   ("option_CLAUSES",option_CLAUSES,DB.Thm),
   ("option_case_compute",option_case_compute,DB.Thm),
   ("IF_EQUALS_OPTION",IF_EQUALS_OPTION,DB.Thm),
   ("IF_NONE_EQUALS_OPTION",IF_NONE_EQUALS_OPTION,DB.Thm),
   ("OPTION_MAP_EQ_SOME",OPTION_MAP_EQ_SOME,DB.Thm),
   ("OPTION_MAP_EQ_NONE",OPTION_MAP_EQ_NONE,DB.Thm),
   ("OPTION_MAP_EQ_NONE_both_ways",OPTION_MAP_EQ_NONE_both_ways,DB.Thm),
   ("OPTION_MAP_COMPOSE",OPTION_MAP_COMPOSE,DB.Thm),
   ("OPTION_MAP_CONG",OPTION_MAP_CONG,DB.Thm),
   ("OPTION_JOIN_EQ_SOME",OPTION_JOIN_EQ_SOME,DB.Thm),
   ("OPTION_MAP2_SOME",OPTION_MAP2_SOME,DB.Thm),
   ("OPTION_MAP2_NONE",OPTION_MAP2_NONE,DB.Thm),
   ("OPTION_MAP2_cong",OPTION_MAP2_cong,DB.Thm),
   ("OPTION_BIND_cong",OPTION_BIND_cong,DB.Thm),
   ("OPTION_BIND_EQUALS_OPTION",OPTION_BIND_EQUALS_OPTION,DB.Thm),
   ("OPTION_IGNORE_BIND_thm",OPTION_IGNORE_BIND_thm,DB.Thm),
   ("OPTION_GUARD_COND",OPTION_GUARD_COND,DB.Thm),
   ("OPTION_GUARD_EQ_THM",OPTION_GUARD_EQ_THM,DB.Thm),
   ("OPTION_CHOICE_EQ_NONE",OPTION_CHOICE_EQ_NONE,DB.Thm),
   ("OPTION_APPLY_MAP2",OPTION_APPLY_MAP2,DB.Thm),
   ("SOME_SOME_APPLY",SOME_SOME_APPLY,DB.Thm),
   ("SOME_APPLY_PERMUTE",SOME_APPLY_PERMUTE,DB.Thm),
   ("OPTION_APPLY_o",OPTION_APPLY_o,DB.Thm),
   ("OPTREL_MONO",OPTREL_MONO,DB.Thm), ("OPTREL_refl",OPTREL_refl,DB.Thm),
   ("some_intro",some_intro,DB.Thm), ("some_elim",some_elim,DB.Thm),
   ("some_F",some_F,DB.Thm), ("some_EQ",some_EQ,DB.Thm),
   ("option_case_cong",option_case_cong,DB.Thm),
   ("OPTION_ALL_MONO",OPTION_ALL_MONO,DB.Thm),
   ("OPTION_ALL_CONG",OPTION_ALL_CONG,DB.Thm),
   ("datatype_option",datatype_option,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("oneTheory.one_grammars",oneTheory.one_grammars),
                         ("sumTheory.sum_grammars",sumTheory.sum_grammars),
                         ("normalFormsTheory.normalForms_grammars",
                          normalFormsTheory.normalForms_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "option"
  val _ = update_grms temp_add_type "option"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_REP", (Term.prim_mk_const { Name = "option_REP", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_ABS", (Term.prim_mk_const { Name = "option_ABS", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SOME", (Term.prim_mk_const { Name = "SOME", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NONE", (Term.prim_mk_const { Name = "NONE", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_CASE", (Term.prim_mk_const { Name = "option_CASE", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_MAP", (Term.prim_mk_const { Name = "OPTION_MAP", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_SOME", (Term.prim_mk_const { Name = "IS_SOME", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_NONE", (Term.prim_mk_const { Name = "IS_NONE", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("THE", (Term.prim_mk_const { Name = "THE", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_MAP2", (Term.prim_mk_const { Name = "OPTION_MAP2", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_JOIN", (Term.prim_mk_const { Name = "OPTION_JOIN", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lift2", (#2 (parse_from_grammars min_grammars)[QUOTE "(option$OPTION_MAP2 :('a -> 'b -> 'c) -> ('a option$option) -> ('b option$option) -> ('c option$option))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_MAP2", (#2 (parse_from_grammars min_grammars)[QUOTE "(option$OPTION_MAP2 :('a -> 'b -> 'c) -> ('a option$option) -> ('b option$option) -> ('c option$option))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_BIND", (Term.prim_mk_const { Name = "OPTION_BIND", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_IGNORE_BIND", (Term.prim_mk_const { Name = "OPTION_IGNORE_BIND", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_GUARD", (Term.prim_mk_const { Name = "OPTION_GUARD", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_CHOICE", (Term.prim_mk_const { Name = "OPTION_CHOICE", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_APPLY", (Term.prim_mk_const { Name = "OPTION_APPLY", Thy = "option"}))
  val _ = update_grms
       (fn () => (temp_set_mapped_fixity {term_name = "APPLICATIVE_FAPPLY", tok = "<*>", fixity = Infix(HOLgrammars.LEFT, 500)}))
       ()
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("APPLICATIVE_FAPPLY", (#2 (parse_from_grammars min_grammars)[QUOTE "(option$OPTION_APPLY :(('a -> 'b) option$option) -> ('a option$option) -> ('b option$option))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTREL", (Term.prim_mk_const { Name = "OPTREL", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("some", (Term.prim_mk_const { Name = "some", Thy = "option"}))
  val _ = update_grms (UTOFF (temp_set_fixity "some")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_ALL", (Term.prim_mk_const { Name = "OPTION_ALL", Thy = "option"}))
  val option_grammars = Parse.current_lgrms()
  end


  val _ = TypeBase.write
    [TypeBasePure.mk_datatype_info
       {ax=TypeBasePure.ORIG option_Axiom,
        case_def=option_case_def,
        case_cong=option_case_cong,
        induction=TypeBasePure.ORIG option_induction,
        nchotomy=option_nchotomy,
        size=NONE,
        encode=NONE,
        fields=[],
        accessors=[],
        updates=[],
        destructors=[THE_DEF],
        recognizers=[IS_NONE_DEF,IS_SOME_DEF],
        lift=SOME(mk_var("optionSyntax.lift_option",Parse.Type`:'type -> ('a -> 'term) -> 'a option -> 'term`)),
        one_one=SOME SOME_11,
        distinct=SOME NOT_NONE_SOME}];

  val option_Induct = Rewrite.ONCE_REWRITE_RULE 
                        [boolTheory.CONJ_SYM] option_induction
  val option_CASES = Rewrite.ONCE_REWRITE_RULE 
                        [boolTheory.DISJ_SYM] option_nchotomy

  val _ = let open computeLib
          in add_funs (map lazyfy_thm
                 [NOT_NONE_SOME,NOT_SOME_NONE,SOME_11,
                  option_case_def, OPTION_MAP_DEF,
                  IS_SOME_DEF,IS_NONE_DEF,THE_DEF,
                  OPTION_JOIN_DEF])
          end;val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "option",
    thydataty = "simp",
    data =
        "option.SOME_11 option.THE_DEF option.OPTION_JOIN_DEF option.option_case_def option.option_case_SOME_ID option.option_case_ID option.NOT_IS_SOME_EQ_NONE option.IS_NONE_EQ_NONE option.IS_SOME_DEF option.some_EQ option.OPTION_ALL_def option.some_F option.OPTREL_refl option.IF_EQUALS_OPTION option.OPTION_APPLY_def option.OPTION_CHOICE_def option.OPTION_GUARD_EQ_THM option.OPTION_GUARD_def option.OPTION_IGNORE_BIND_thm option.OPTION_BIND_EQUALS_OPTION option.OPTION_BIND_def option.OPTION_MAP2_NONE option.OPTION_MAP2_SOME option.OPTION_MAP_EQ_NONE_both_ways option.OPTION_MAP_EQ_SOME option.IF_NONE_EQUALS_OPTION option.NOT_NONE_SOME option.OPTION_MAP2_THM option.OPTION_MAP_DEF"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "option",
    thydataty = "mono",
    data = "option.OPTREL_MONO option.OPTION_ALL_MONO"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "option",
    thydataty = "defncong",
    data =
        "option.OPTION_MAP_CONG option.OPTION_ALL_CONG option.OPTION_BIND_cong option.OPTION_MAP2_cong"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "option", thydataty = "compute", data = "option.OPTION_ALL_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "option",
    thydataty = "OpenTheoryMap",
    data =
        "18.Data.Option.option6.option6.option 16.Data.Option.SOME6.option4.SOME16.Data.Option.NONE6.option4.NONE16.Data.Option.case6.option11.option_case15.Data.Option.map6.option10.OPTION_MAP15.Data.Option.the6.option3.THE16.Data.Option.join6.option11.OPTION_JOIN"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "option"
end
