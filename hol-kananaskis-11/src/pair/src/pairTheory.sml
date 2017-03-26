structure pairTheory :> pairTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading pairTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open relationTheory
  in end;
  val _ = Theory.link_parents
          ("pair",
          Arbnum.fromString "1488586001",
          Arbnum.fromString "943113")
          [("relation",
           Arbnum.fromString "1488585979",
           Arbnum.fromString "52748")];
  val _ = Theory.incorporate_types "pair" [("prod", 2)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("min", "bool"),
   ID("bool", "!"), ID("pair", "##"), ID("pair", ","), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"),
   ID("pair", "ABS_prod"), ID("combin", "C"), ID("pair", "CURRY"),
   ID("bool", "DATATYPE"), ID("pair", "FST"), ID("bool", "LET"),
   ID("pair", "LEX"), ID("pair", "PROD_ALL"), ID("pair", "REP_prod"),
   ID("pair", "RPROD"), ID("combin", "S"), ID("pair", "SND"),
   ID("pair", "SWAP"), ID("bool", "TYPE_DEFINITION"),
   ID("pair", "UNCURRY"), ID("relation", "WF"), ID("bool", "\\/"),
   ID("combin", "o"), ID("pair", "pair_CASE"), ID("relation", "reflexive"),
   ID("relation", "symmetric"), ID("relation", "total"),
   ID("relation", "transitive")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYV "'c", TYOP [0, 1, 0], TYV "'b", TYOP [0, 3, 2],
   TYOP [0, 4, 0], TYOP [1, 3, 1], TYOP [0, 6, 5], TYOP [1, 0, 3],
   TYOP [0, 8, 1], TYOP [0, 3, 1], TYOP [0, 0, 10], TYOP [0, 11, 9],
   TYOP [1, 3, 0], TYOP [0, 13, 8], TYOP [0, 8, 3], TYOP [2],
   TYOP [0, 8, 16], TYOP [0, 8, 17], TYOP [0, 3, 16], TYOP [0, 3, 19],
   TYOP [0, 20, 18], TYOP [0, 0, 16], TYOP [0, 0, 22], TYOP [0, 23, 21],
   TYOP [0, 0, 19], TYOP [0, 8, 25], TYOP [0, 19, 17], TYOP [0, 22, 27],
   TYOP [0, 8, 0], TYOP [0, 9, 11], TYOP [0, 25, 8], TYOP [0, 3, 8],
   TYOP [0, 0, 32], TYV "'d", TYOP [1, 1, 34], TYOP [0, 8, 35],
   TYOP [0, 3, 34], TYOP [0, 37, 36], TYOP [0, 0, 1], TYOP [0, 39, 38],
   TYV "'a2", TYV "'a1", TYOP [1, 42, 41], TYOP [0, 41, 10],
   TYOP [0, 42, 44], TYOP [0, 1, 34], TYOP [0, 0, 6], TYOP [0, 47, 16],
   TYOP [0, 0, 3], TYOP [0, 34, 1], TYOP [0, 3, 50], TYOP [0, 0, 51],
   TYOP [0, 8, 50], TYOP [0, 0, 37], TYOP [1, 49, 39], TYOP [0, 33, 1],
   TYOP [0, 22, 16], TYOP [0, 19, 16], TYOP [0, 1, 16], TYOP [0, 59, 16],
   TYOP [0, 49, 16], TYOP [0, 61, 16], TYOP [0, 39, 16], TYOP [0, 63, 16],
   TYOP [0, 57, 16], TYOP [0, 23, 16], TYOP [0, 66, 16], TYOP [0, 11, 16],
   TYOP [0, 68, 16], TYOP [0, 25, 16], TYOP [0, 70, 16], TYOP [0, 45, 16],
   TYOP [0, 72, 16], TYOP [0, 37, 16], TYOP [0, 74, 16], TYOP [0, 58, 16],
   TYOP [0, 20, 16], TYOP [0, 77, 16], TYOP [0, 4, 16], TYOP [0, 79, 16],
   TYOP [0, 46, 16], TYOP [0, 81, 16], TYOP [0, 48, 16], TYOP [0, 83, 16],
   TYOP [0, 9, 16], TYOP [0, 85, 16], TYOP [0, 17, 16], TYOP [0, 43, 16],
   TYOP [0, 88, 16], TYOP [0, 13, 16], TYOP [0, 90, 16], TYOP [0, 6, 16],
   TYOP [0, 92, 16], TYOP [1, 3, 34], TYOP [1, 0, 1], TYOP [0, 95, 94],
   TYOP [0, 46, 96], TYOP [0, 49, 97], TYOP [0, 1, 95], TYOP [0, 0, 99],
   TYOP [0, 1, 6], TYOP [0, 3, 101], TYOP [0, 34, 94], TYOP [0, 3, 103],
   TYOP [0, 34, 35], TYOP [0, 1, 105], TYOP [0, 16, 16], TYOP [0, 16, 107],
   TYOP [0, 1, 59], TYOP [0, 34, 16], TYOP [0, 34, 110], TYOP [0, 11, 68],
   TYOP [0, 25, 70], TYOP [0, 9, 85], TYOP [0, 18, 16], TYOP [0, 18, 115],
   TYOP [0, 6, 92], TYOP [0, 94, 16], TYOP [0, 94, 118], TYOP [0, 35, 16],
   TYOP [0, 35, 120], TYOP [0, 26, 16], TYOP [0, 122, 16],
   TYOP [0, 55, 16], TYOP [0, 124, 16], TYOP [0, 34, 11], TYOP [0, 34, 10],
   TYOP [0, 0, 127], TYOP [0, 128, 126], TYOP [0, 51, 127],
   TYOP [0, 34, 9], TYOP [0, 53, 131], TYOP [0, 13, 3], TYOP [0, 6, 3],
   TYOP [0, 35, 1], TYOP [0, 55, 49], TYOP [0, 9, 9], TYOP [0, 8, 34],
   TYOP [0, 138, 138], TYOP [0, 43, 1], TYOP [0, 140, 140],
   TYOP [0, 43, 10], TYOP [0, 142, 142], TYOP [0, 54, 11],
   TYOP [0, 37, 10], TYOP [0, 0, 145], TYOP [0, 146, 144],
   TYOP [0, 51, 145], TYOP [0, 138, 9], TYOP [0, 53, 149], TYOP [0, 13, 0],
   TYOP [0, 6, 1], TYOP [0, 35, 34], TYOP [0, 55, 39], TYOP [0, 70, 122],
   TYOP [0, 54, 138], TYOP [0, 25, 17], TYOP [0, 52, 53], TYOP [0, 3, 17],
   TYOP [0, 0, 159], TYOP [0, 160, 18], TYOP [0, 41, 1], TYOP [0, 42, 162],
   TYOP [0, 163, 140], TYOP [0, 45, 142], TYOP [0, 50, 145],
   TYOP [0, 50, 149], TYOP [0, 145, 144], TYOP [0, 25, 22],
   TYOP [0, 58, 169], TYOP [0, 52, 128], TYOP [0, 130, 171],
   TYOP [0, 52, 146], TYOP [0, 148, 173], TYOP [0, 33, 52],
   TYOP [0, 32, 51], TYOP [0, 176, 175], TYOP [0, 53, 176]]
  end
  val _ = Theory.incorporate_consts "pair" tyvector
     [("pair_CASE", 7), ("UNCURRY", 12), ("SWAP", 14), ("SND", 15),
      ("RPROD", 24), ("REP_prod", 26), ("PROD_ALL", 28), ("LEX", 24),
      ("FST", 29), ("CURRY", 30), ("ABS_prod", 31), (",", 33), ("##", 40)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 8), TMV("M", 43), TMV("M", 6), TMV("M'", 8), TMV("M'", 6),
   TMV("N", 11), TMV("N", 45), TMV("P", 22), TMV("P", 25), TMV("P", 46),
   TMV("P", 48), TMV("P", 9), TMV("P", 17), TMV("P'", 22), TMV("Q", 19),
   TMV("Q", 20), TMV("Q'", 19), TMV("R", 23), TMV("R1", 23),
   TMV("R1'", 23), TMV("R2", 23), TMV("R2", 20), TMV("R2'", 20),
   TMV("R3", 20), TMV("R4", 20), TMV("a", 0), TMV("a", 8), TMV("a", 13),
   TMV("b", 3), TMV("c", 0), TMV("d", 3), TMV("f", 49), TMV("f", 39),
   TMV("f", 11), TMV("f", 25), TMV("f", 52), TMV("f", 47), TMV("f", 4),
   TMV("f", 50), TMV("f", 9), TMV("f", 53), TMV("f'", 11), TMV("f'", 4),
   TMV("fn", 9), TMV("g", 11), TMV("g", 54), TMV("g", 37), TMV("g", 46),
   TMV("g", 9), TMV("p", 25), TMV("p", 8), TMV("p", 6), TMV("p", 55),
   TMV("p'", 8), TMV("p1", 0), TMV("p2", 3), TMV("p_1", 0), TMV("p_2", 3),
   TMV("pair", 56), TMV("q", 0), TMV("q", 8), TMV("r", 3), TMV("r", 25),
   TMV("rep", 26), TMV("s", 0), TMV("t", 3), TMV("u", 0), TMV("v", 3),
   TMV("v", 8), TMV("v1", 8), TMV("v1'", 8), TMV("v2", 8), TMV("v2'", 8),
   TMV("x", 0), TMV("x", 42), TMV("x", 3), TMV("x", 34), TMV("x", 8),
   TMV("y", 0), TMV("y", 41), TMV("y", 3), TMV("y", 1), TMV("y", 8),
   TMC(3, 57), TMC(3, 58), TMC(3, 60), TMC(3, 62), TMC(3, 64), TMC(3, 65),
   TMC(3, 67), TMC(3, 69), TMC(3, 71), TMC(3, 73), TMC(3, 75), TMC(3, 76),
   TMC(3, 78), TMC(3, 80), TMC(3, 82), TMC(3, 84), TMC(3, 86), TMC(3, 87),
   TMC(3, 89), TMC(3, 91), TMC(3, 93), TMC(4, 98), TMC(4, 40), TMC(5, 33),
   TMC(5, 100), TMC(5, 102), TMC(5, 104), TMC(5, 106), TMC(6, 108),
   TMC(7, 23), TMC(7, 20), TMC(7, 109), TMC(7, 111), TMC(7, 108),
   TMC(7, 112), TMC(7, 113), TMC(7, 114), TMC(7, 116), TMC(7, 18),
   TMC(7, 117), TMC(7, 119), TMC(7, 121), TMC(8, 108), TMC(9, 57),
   TMC(9, 58), TMC(9, 86), TMC(9, 123), TMC(9, 87), TMC(10, 83),
   TMC(10, 125), TMC(11, 31), TMC(12, 129), TMC(12, 130), TMC(12, 132),
   TMC(13, 30), TMC(14, 59), TMC(15, 29), TMC(15, 133), TMC(15, 134),
   TMC(15, 135), TMC(15, 136), TMC(16, 137), TMC(16, 139), TMC(16, 141),
   TMC(16, 143), TMC(17, 24), TMC(18, 28), TMC(19, 26), TMC(20, 24),
   TMC(21, 147), TMC(21, 148), TMC(21, 150), TMC(22, 15), TMC(22, 151),
   TMC(22, 152), TMC(22, 153), TMC(22, 154), TMC(23, 14), TMC(24, 155),
   TMC(25, 12), TMC(25, 156), TMC(25, 157), TMC(25, 158), TMC(25, 161),
   TMC(25, 164), TMC(25, 165), TMC(26, 66), TMC(26, 77), TMC(26, 115),
   TMC(27, 108), TMC(28, 166), TMC(28, 167), TMC(28, 168), TMC(28, 170),
   TMC(28, 172), TMC(28, 174), TMC(28, 177), TMC(28, 178), TMC(29, 7),
   TMC(30, 66), TMC(30, 77), TMC(30, 115), TMC(31, 66), TMC(31, 77),
   TMC(31, 115), TMC(32, 66), TMC(32, 77), TMC(32, 115), TMC(33, 66),
   TMC(33, 77), TMC(33, 115)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op prod_TY_DEF x = x
    val op prod_TY_DEF =
    DT(((("pair",0),[("bool",[121])]),["DISK_THM"]),
       [read"%129%63%161%49%126%73%127%80%118$2@%25%28%111%112$1@$3@@%113$0@$2@@||@|@|@|@$0@|@"])
  fun op ABS_REP_prod x = x
    val op ABS_REP_prod =
    DT(((("pair",1),[("bool",[117]),("pair",[0])]),["DISK_THM"]),
       [read"%111%100%26%121%133%150$0@@@$0@|@@%91%62%116%49%126%73%127%80%118$2@%25%28%111%112$1@$3@@%113$0@$2@@||@|@|@|$0@@%118%150%133$0@@@$0@@|@@"])
  fun op COMMA_DEF x = x
    val op COMMA_DEF =
    DT(((("pair",2),[]),[]),
       [read"%83%73%84%80%121%106$1@$0@@%133%25%28%111%112$1@$3@@%113$0@$2@@||@@|@|@"])
  fun op PAIR x = x
    val op PAIR =
    DT(((("pair",7),[("bool",[58,146]),("pair",[5])]),["DISK_THM"]),
       [read"%100%77%121%106%139$0@@%155$0@@@$0@|@"])
  fun op SWAP_def x = x
    val op SWAP_def =
    DT(((("pair",11),[]),[]),
       [read"%102%27%121%160$0@@%106%156$0@@%140$0@@@|@"])
  fun op CURRY_DEF x = x
    val op CURRY_DEF =
    DT(((("pair",12),[]),[]),
       [read"%99%39%83%73%84%80%114%137$2@$1@$0@@$2%106$1@$0@@@|@|@|@"])
  fun op UNCURRY x = x
    val op UNCURRY =
    DT(((("pair",13),[]),[]),
       [read"%90%33%100%68%114%162$1@$0@@$1%139$0@@%155$0@@@|@|@"])
  fun op PROD_ALL_def x = x
    val op PROD_ALL_def =
    DT(((("pair",27),[]),[]),
       [read"%88%7%94%14%100%50%116%149$2@$1@$0@@%111$2%139$0@@@$1%155$0@@@@|@|@|@"])
  fun op PAIR_MAP x = x
    val op PAIR_MAP =
    DT(((("pair",37),[]),[]),
       [read"%87%32%93%46%100%50%124%105$2@$1@$0@@%110$2%139$0@@@$1%155$0@@@@|@|@|@"])
  fun op pair_CASE_def x = x
    val op pair_CASE_def =
    DT(((("pair",48),[]),[]),
       [read"%103%51%96%37%112%181$1@$0@@$0%141$1@@%157$1@@@|@|@"])
  fun op LEX_DEF x = x
    val op LEX_DEF =
    DT(((("pair",53),[]),[]),
       [read"%89%18%95%21%120%148$1@$0@@%166%64%65%164%66%67%172$5$3@$1@@%111%112$3@$1@@$4$2@$0@@@||@||@@|@|@"])
  fun op RPROD_DEF x = x
    val op RPROD_DEF =
    DT(((("pair",57),[]),[]),
       [read"%89%18%95%21%120%151$1@$0@@%166%64%65%164%66%67%111$5$3@$1@@$4$2@$0@@||@||@@|@|@"])
  fun op PAIR_EQ x = x
    val op PAIR_EQ =
    DT(((("pair",3),
        [("bool",[25,26,51,53,56,60,63]),("pair",[1,2])]),["DISK_THM"]),
       [read"%116%121%106%73@%80@@%106%25@%28@@@%111%112%73@%25@@%113%80@%28@@@"])
  fun op CLOSED_PAIR_EQ x = x
    val op CLOSED_PAIR_EQ =
    DT(((("pair",4),[("pair",[3])]),["DISK_THM"]),
       [read"%83%73%84%80%83%25%84%28%116%121%106$3@$2@@%106$1@$0@@@%111%112$3@$1@@%113$2@$0@@@|@|@|@|@"])
  fun op ABS_PAIR_THM x = x
    val op ABS_PAIR_THM =
    DT(((("pair",5),[("bool",[56,63]),("pair",[1,2])]),["DISK_THM"]),
       [read"%100%77%126%59%127%61%121$2@%106$1@$0@@|@|@|@"])
  fun op pair_CASES x = x
    val op pair_CASES =
    DT(((("pair",6),[("pair",[5])]),["DISK_THM"]),
       [read"%100%77%126%59%127%61%121$2@%106$1@$0@@|@|@|@"])
  fun op FST x = x
    val op FST =
    DT(((("pair",8),[("pair",[3,7])]),["DISK_THM"]),
       [read"%83%73%84%80%112%139%106$1@$0@@@$1@|@|@"])
  fun op SND x = x
    val op SND =
    DT(((("pair",9),[("pair",[3,7])]),["DISK_THM"]),
       [read"%83%73%84%80%113%155%106$1@$0@@@$0@|@|@"])
  fun op PAIR_FST_SND_EQ x = x
    val op PAIR_FST_SND_EQ =
    DT(((("pair",10),[("bool",[25,56]),("pair",[3,5,8,9])]),["DISK_THM"]),
       [read"%100%50%100%60%116%121$1@$0@@%111%112%139$1@@%139$0@@@%113%155$1@@%155$0@@@@|@|@"])
  fun op UNCURRY_VAR x = x
    val op UNCURRY_VAR =
    DT(((("pair",14),[("pair",[13])]),[]),
       [read"%90%33%100%68%114%162$1@$0@@$1%139$0@@%155$0@@@|@|@"])
  fun op ELIM_UNCURRY x = x
    val op ELIM_UNCURRY =
    DT(((("pair",15),[("bool",[14,26]),("pair",[13])]),["DISK_THM"]),
       [read"%90%33%119%162$0@@%77$1%139$0@@%155$0@@|@|@"])
  fun op UNCURRY_DEF x = x
    val op UNCURRY_DEF =
    DT(((("pair",16),
        [("bool",[25,36,56]),("pair",[8,9,13])]),["DISK_THM"]),
       [read"%90%33%83%73%84%80%114%162$2@%106$1@$0@@@$2$1@$0@@|@|@|@"])
  fun op CURRY_UNCURRY_THM x = x
    val op CURRY_UNCURRY_THM =
    DT(((("pair",17),[("bool",[14,25,56]),("pair",[12,16])]),["DISK_THM"]),
       [read"%90%33%117%137%162$0@@@$0@|@"])
  fun op UNCURRY_CURRY_THM x = x
    val op UNCURRY_CURRY_THM =
    DT(((("pair",18),
        [("bool",[14,25,56]),("pair",[7,12,16])]),["DISK_THM"]),
       [read"%99%39%119%162%137$0@@@$0@|@"])
  fun op CURRY_ONE_ONE_THM x = x
    val op CURRY_ONE_ONE_THM =
    DT(((("pair",19),
        [("bool",[14,25,26,56]),("pair",[7,12,16])]),["DISK_THM"]),
       [read"%116%117%137%39@@%137%48@@@%119%39@%48@@"])
  fun op UNCURRY_ONE_ONE_THM x = x
    val op UNCURRY_ONE_ONE_THM =
    DT(((("pair",20),
        [("bool",[14,25,26,56]),("pair",[12,16])]),["DISK_THM"]),
       [read"%116%119%162%33@@%162%44@@@%117%33@%44@@"])
  fun op pair_Axiom x = x
    val op pair_Axiom =
    DT(((("pair",21),[("bool",[25,36,56]),("pair",[16])]),["DISK_THM"]),
       [read"%90%33%128%43%83%73%84%80%114$2%106$1@$0@@@$3$1@$0@@|@|@|@|@"])
  fun op UNCURRY_CONG x = x
    val op UNCURRY_CONG =
    DT(((("pair",22),
        [("bool",[25,56,58,63,93,95,101,105,124,145]),
         ("pair",[3,6,16])]),["DISK_THM"]),
       [read"%90%41%90%33%100%3%100%0%125%111%121$0@$1@@%83%73%84%80%125%121$3@%106$1@$0@@@%114$4$1@$0@@$5$1@$0@@@|@|@@@%114%162$2@$0@@%162$3@$1@@@|@|@|@|@"])
  fun op LAMBDA_PROD x = x
    val op LAMBDA_PROD =
    DT(((("pair",23),[("bool",[14,26]),("pair",[5,8,9,13])]),["DISK_THM"]),
       [read"%99%11%119%50$1$0@|@%162%54%55$2%106$1@$0@@||@@|@"])
  fun op EXISTS_PROD x = x
    val op EXISTS_PROD =
    DT(((("pair",24),[("bool",[25,26,63]),("pair",[7])]),["DISK_THM"]),
       [read"%116%130%50%12$0@|@@%126%56%127%57%12%106$1@$0@@|@|@@"])
  fun op FORALL_PROD x = x
    val op FORALL_PROD =
    DT(((("pair",25),[("bool",[25,26,63]),("pair",[5])]),["DISK_THM"]),
       [read"%116%100%50%12$0@|@@%83%56%84%57%12%106$1@$0@@|@|@@"])
  fun op pair_induction x = x
    val op pair_induction =
    DT(((("pair",26),[("pair",[25])]),["DISK_THM"]),
       [read"%125%83%56%84%57%12%106$1@$0@@|@|@@%100%50%12$0@|@@"])
  fun op PROD_ALL_THM x = x
    val op PROD_ALL_THM =
    DT(((("pair",28),[("bool",[25,56]),("pair",[8,9,27])]),["DISK_THM"]),
       [read"%116%149%7@%14@%106%73@%80@@@%111%7%73@@%14%80@@@"])
  fun op PROD_ALL_MONO x = x
    val op PROD_ALL_MONO =
    DT(((("pair",29),[("pair",[5,28])]),["DISK_THM"]),
       [read"%125%111%83%73%125%7$0@@%13$0@@|@@%84%80%125%14$0@@%16$0@@|@@@%125%149%7@%14@%50@@%149%13@%16@%50@@@"])
  fun op PROD_ALL_CONG x = x
    val op PROD_ALL_CONG =
    DT(((("pair",30),
        [("bool",[25,36,53,56,58,63,93,95,101,105,124,145]),
         ("pair",[3,25,28])]),["DISK_THM"]),
       [read"%100%50%100%53%88%7%88%13%94%14%94%16%125%111%121$5@$4@@%111%83%73%84%80%125%121$6@%106$1@$0@@@%116$5$1@@$4$1@@@|@|@@%83%73%84%80%125%121$6@%106$1@$0@@@%116$3$0@@$2$0@@@|@|@@@@%116%149$3@$1@$5@@%149$2@$0@$4@@@|@|@|@|@|@|@"])
  fun op ELIM_PEXISTS x = x
    val op ELIM_PEXISTS =
    DT(((("pair",31),[("bool",[25,26,63]),("pair",[8,9])]),["DISK_THM"]),
       [read"%116%130%50%8%139$0@@%155$0@@|@@%126%54%127%55%8$1@$0@|@|@@"])
  fun op ELIM_PFORALL x = x
    val op ELIM_PFORALL =
    DT(((("pair",32),
        [("bool",[25,26,53,63]),("pair",[8,9])]),["DISK_THM"]),
       [read"%116%100%50%8%139$0@@%155$0@@|@@%83%54%84%55%8$1@$0@|@|@@"])
  fun op PFORALL_THM x = x
    val op PFORALL_THM =
    DT(((("pair",33),[("bool",[58]),("pair",[15,32])]),["DISK_THM"]),
       [read"%91%8%116%83%73%84%80$2$1@$0@|@|@@%100%164%73%80$2$1@$0@||@@@|@"])
  fun op PEXISTS_THM x = x
    val op PEXISTS_THM =
    DT(((("pair",34),[("bool",[58]),("pair",[15,31])]),["DISK_THM"]),
       [read"%91%8%116%126%73%127%80$2$1@$0@|@|@@%130%164%73%80$2$1@$0@||@@@|@"])
  fun op ELIM_PEXISTS_EVAL x = x
    val op ELIM_PEXISTS_EVAL =
    DT(((("pair",35),[("bool",[25,28,36,56]),("pair",[34])]),["DISK_THM"]),
       [read"%116%130%164%73%8$0@|@@@%126%73%127%8$0@@|@@"])
  fun op ELIM_PFORALL_EVAL x = x
    val op ELIM_PFORALL_EVAL =
    DT(((("pair",36),[("bool",[25,28,36,56]),("pair",[33])]),["DISK_THM"]),
       [read"%116%100%164%73%8$0@|@@@%83%73%84%8$0@@|@@"])
  fun op PAIR_MAP_THM x = x
    val op PAIR_MAP_THM =
    DT(((("pair",38),
        [("bool",[25,36,56]),("pair",[8,9,37])]),["DISK_THM"]),
       [read"%86%31%97%47%83%73%85%81%123%104$3@$2@%107$1@$0@@@%109$3$1@@$2$0@@@|@|@|@|@"])
  fun op FST_PAIR_MAP x = x
    val op FST_PAIR_MAP =
    DT(((("pair",39),[("bool",[25,36,56]),("pair",[8,37])]),["DISK_THM"]),
       [read"%100%50%87%32%93%46%114%142%105$1@$0@$2@@@$1%139$2@@@|@|@|@"])
  fun op SND_PAIR_MAP x = x
    val op SND_PAIR_MAP =
    DT(((("pair",40),[("bool",[25,36,56]),("pair",[9,37])]),["DISK_THM"]),
       [read"%100%50%87%32%93%46%115%158%105$1@$0@$2@@@$0%155$2@@@|@|@|@"])
  fun op LET2_RAND x = x
    val op LET2_RAND =
    DT(((("pair",41),[("bool",[8]),("pair",[5,16])]),["DISK_THM"]),
       [read"%97%9%100%0%90%5%115$2%144%162%73%80$2$1@$0@||@@$1@@@%145%163%73%80$4$2$1@$0@@||@@$1@@|@|@|@"])
  fun op LET2_RATOR x = x
    val op LET2_RATOR =
    DT(((("pair",42),[("bool",[8,25,36,56]),("pair",[14])]),["DISK_THM"]),
       [read"%101%1%92%6%84%28%114%147%168%74%79$3$1@$0@||@@$2@$0@@%146%167%74%79$3$1@$0@$2@||@@$2@@|@|@|@"])
  fun op o_UNCURRY_R x = x
    val op o_UNCURRY_R =
    DT(((("pair",43),
        [("bool",[25,36,56,60]),("combin",[8]),
         ("pair",[13])]),["DISK_THM"]),
       [read"%119%174%38@%163%45@@@%162%175%173%38@@%45@@@"])
  fun op C_UNCURRY_L x = x
    val op C_UNCURRY_L =
    DT(((("pair",44),
        [("bool",[25,36,56,60]),("combin",[8,16]),
         ("pair",[13])]),["DISK_THM"]),
       [read"%119%136%165%35@@%76@@%162%134%177%135@%35@@%76@@@"])
  fun op S_UNCURRY_R x = x
    val op S_UNCURRY_R =
    DT(((("pair",45),
        [("bool",[25,36,56,60]),("combin",[8,13]),
         ("pair",[7,13])]),["DISK_THM"]),
       [read"%119%154%40@%163%45@@@%162%152%178%153@%179%180%40@@%106@@@%45@@@"])
  fun op FORALL_UNCURRY x = x
    val op FORALL_UNCURRY =
    DT(((("pair",46),
        [("bool",[25,36,56,60]),("combin",[5]),
         ("pair",[8,9,13,25])]),["DISK_THM"]),
       [read"%116%100%164%34@@@%83%176%84@%34@@@"])
  fun op PAIR_FUN_THM x = x
    val op PAIR_FUN_THM =
    DT(((("pair",47),
        [("bool",
         [13,25,26,27,28,30,36,47,48,51,52,53,54,56,58,60,63,72,93,94,96,
          105,122,124]),("combin",[8,19]),("pair",[3,5,7,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%98%10%116%131%36$1$0@|@@%132%52$1%25%108%143$1@$0@@%159$1@$0@@|@|@@|@"])
  fun op pair_case_thm x = x
    val op pair_case_thm =
    DT(((("pair",49),[("pair",[8,9,48])]),["DISK_THM"]),
       [read"%112%181%108%75@%81@@%37@@%37%75@%81@@"])
  fun op pair_case_def x = x
    val op pair_case_def =
    DT(((("pair",50),[("pair",[49])]),["DISK_THM"]),
       [read"%112%181%108%75@%81@@%37@@%37%75@%81@@"])
  fun op pair_case_cong x = x
    val op pair_case_cong =
    DT(((("pair",51),[("pair",[6,49])]),["DISK_THM"]),
       [read"%103%2%103%4%96%37%125%111%122$2@$1@@%84%75%85%81%125%122$3@%108$1@$0@@@%112$2$1@$0@@%42$1@$0@@@|@|@@@%112%181$2@$0@@%181$1@%42@@@|@|@|@"])
  fun op datatype_pair x = x
    val op datatype_pair =
    DT(((("pair",52),[("bool",[25,171])]),["DISK_THM"]),
       [read"%138%58%106@@"])
  fun op LEX_DEF_THM x = x
    val op LEX_DEF_THM =
    DT(((("pair",54),[("pair",[16,53])]),["DISK_THM"]),
       [read"%116%148%18@%21@%106%25@%28@@%106%29@%30@@@%172%18%25@%29@@%111%112%25@%29@@%21%28@%30@@@@"])
  fun op LEX_MONO x = x
    val op LEX_MONO =
    DT(((("pair",55),
        [("bool",[25,26,47,48,51,52,53,54,56,58,63,94,105,124]),
         ("pair",[6,54]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%125%111%83%73%83%78%125%18$1@$0@@%20$1@$0@@|@|@@%84%75%84%80%125%23$1@$0@@%24$1@$0@@|@|@@@%125%148%18@%23@%77@%82@@%148%20@%24@%77@%82@@@"])
  fun op WF_LEX x = x
    val op WF_LEX =
    DT(((("pair",56),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,75,78,81,83,
          84,93,94,96,146]),("combin",[19]),("pair",[7,8,9,16,53]),
         ("relation",[100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%89%17%95%15%125%111%169$1@@%170$0@@@%171%148$1@$0@@@|@|@"])
  fun op WF_RPROD x = x
    val op WF_RPROD =
    DT(((("pair",58),
        [("bool",[25,51,52,58,63]),("pair",[7,16,53,56,57]),
         ("relation",[108])]),["DISK_THM"]),
       [read"%89%17%95%15%125%111%169$1@@%170$0@@@%171%151$1@$0@@@|@|@"])
  fun op total_LEX x = x
    val op total_LEX =
    DT(((("pair",59),
        [("bool",[25,53,54,58,63,105,124]),("pair",[16,25,53]),
         ("relation",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%125%111%188%18@@%189%21@@@%190%148%18@%21@@@"])
  fun op transitive_LEX x = x
    val op transitive_LEX =
    DT(((("pair",60),
        [("bool",[25,53,54,55,58,63,105,124]),("pair",[16,25,53]),
         ("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%125%111%191%18@@%192%21@@@%193%148%18@%21@@@"])
  fun op reflexive_LEX x = x
    val op reflexive_LEX =
    DT(((("pair",61),
        [("bool",[2,25,26,51,53,54,56,63]),("pair",[16,25,53]),
         ("relation",[1]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%116%184%148%18@%21@@@%172%182%18@@%183%21@@@"])
  fun op symmetric_LEX x = x
    val op symmetric_LEX =
    DT(((("pair",62),
        [("bool",[25,26,53,54,55,58,63,105,124]),("pair",[16,25,53]),
         ("relation",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%125%111%185%18@@%186%21@@@%187%148%18@%21@@@"])
  fun op LEX_CONG x = x
    val op LEX_CONG =
    DT(((("pair",63),
        [("bool",[25,26,53,54,55,63,100]),("pair",[3,8,9,14,25,53]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%89%18%95%21%100%69%100%71%89%19%95%22%100%70%100%72%125%111%121$5@$1@@%111%121$4@$0@@%111%83%25%84%28%83%29%84%30%125%111%121$5@%106$3@$2@@@%121$4@%106$1@$0@@@@%116$11$3@$1@@$7$3@$1@@@|@|@|@|@@%83%25%84%28%83%29%84%30%125%111%121$5@%106$3@$2@@@%111%121$4@%106$1@$0@@@%112$3@$1@@@@%116$10$2@$0@@$6$2@$0@@@|@|@|@|@@@@@%116%148$7@$6@$5@$4@@%148$3@$2@$1@$0@@@|@|@|@|@|@|@|@|@"])
  end
  val _ = DB.bindl "pair"
  [("prod_TY_DEF",prod_TY_DEF,DB.Def),
   ("ABS_REP_prod",ABS_REP_prod,DB.Def), ("COMMA_DEF",COMMA_DEF,DB.Def),
   ("PAIR",PAIR,DB.Def), ("SWAP_def",SWAP_def,DB.Def),
   ("CURRY_DEF",CURRY_DEF,DB.Def), ("UNCURRY",UNCURRY,DB.Def),
   ("PROD_ALL_def",PROD_ALL_def,DB.Def), ("PAIR_MAP",PAIR_MAP,DB.Def),
   ("pair_CASE_def",pair_CASE_def,DB.Def), ("LEX_DEF",LEX_DEF,DB.Def),
   ("RPROD_DEF",RPROD_DEF,DB.Def), ("PAIR_EQ",PAIR_EQ,DB.Thm),
   ("CLOSED_PAIR_EQ",CLOSED_PAIR_EQ,DB.Thm),
   ("ABS_PAIR_THM",ABS_PAIR_THM,DB.Thm), ("pair_CASES",pair_CASES,DB.Thm),
   ("FST",FST,DB.Thm), ("SND",SND,DB.Thm),
   ("PAIR_FST_SND_EQ",PAIR_FST_SND_EQ,DB.Thm),
   ("UNCURRY_VAR",UNCURRY_VAR,DB.Thm),
   ("ELIM_UNCURRY",ELIM_UNCURRY,DB.Thm),
   ("UNCURRY_DEF",UNCURRY_DEF,DB.Thm),
   ("CURRY_UNCURRY_THM",CURRY_UNCURRY_THM,DB.Thm),
   ("UNCURRY_CURRY_THM",UNCURRY_CURRY_THM,DB.Thm),
   ("CURRY_ONE_ONE_THM",CURRY_ONE_ONE_THM,DB.Thm),
   ("UNCURRY_ONE_ONE_THM",UNCURRY_ONE_ONE_THM,DB.Thm),
   ("pair_Axiom",pair_Axiom,DB.Thm), ("UNCURRY_CONG",UNCURRY_CONG,DB.Thm),
   ("LAMBDA_PROD",LAMBDA_PROD,DB.Thm), ("EXISTS_PROD",EXISTS_PROD,DB.Thm),
   ("FORALL_PROD",FORALL_PROD,DB.Thm),
   ("pair_induction",pair_induction,DB.Thm),
   ("PROD_ALL_THM",PROD_ALL_THM,DB.Thm),
   ("PROD_ALL_MONO",PROD_ALL_MONO,DB.Thm),
   ("PROD_ALL_CONG",PROD_ALL_CONG,DB.Thm),
   ("ELIM_PEXISTS",ELIM_PEXISTS,DB.Thm),
   ("ELIM_PFORALL",ELIM_PFORALL,DB.Thm),
   ("PFORALL_THM",PFORALL_THM,DB.Thm), ("PEXISTS_THM",PEXISTS_THM,DB.Thm),
   ("ELIM_PEXISTS_EVAL",ELIM_PEXISTS_EVAL,DB.Thm),
   ("ELIM_PFORALL_EVAL",ELIM_PFORALL_EVAL,DB.Thm),
   ("PAIR_MAP_THM",PAIR_MAP_THM,DB.Thm),
   ("FST_PAIR_MAP",FST_PAIR_MAP,DB.Thm),
   ("SND_PAIR_MAP",SND_PAIR_MAP,DB.Thm), ("LET2_RAND",LET2_RAND,DB.Thm),
   ("LET2_RATOR",LET2_RATOR,DB.Thm), ("o_UNCURRY_R",o_UNCURRY_R,DB.Thm),
   ("C_UNCURRY_L",C_UNCURRY_L,DB.Thm), ("S_UNCURRY_R",S_UNCURRY_R,DB.Thm),
   ("FORALL_UNCURRY",FORALL_UNCURRY,DB.Thm),
   ("PAIR_FUN_THM",PAIR_FUN_THM,DB.Thm),
   ("pair_case_thm",pair_case_thm,DB.Thm),
   ("pair_case_def",pair_case_def,DB.Thm),
   ("pair_case_cong",pair_case_cong,DB.Thm),
   ("datatype_pair",datatype_pair,DB.Thm),
   ("LEX_DEF_THM",LEX_DEF_THM,DB.Thm), ("LEX_MONO",LEX_MONO,DB.Thm),
   ("WF_LEX",WF_LEX,DB.Thm), ("WF_RPROD",WF_RPROD,DB.Thm),
   ("total_LEX",total_LEX,DB.Thm),
   ("transitive_LEX",transitive_LEX,DB.Thm),
   ("reflexive_LEX",reflexive_LEX,DB.Thm),
   ("symmetric_LEX",symmetric_LEX,DB.Thm), ("LEX_CONG",LEX_CONG,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("relationTheory.relation_grammars",
                          relationTheory.relation_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "prod"
  val _ = update_grms temp_add_type "prod"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REP_prod", (Term.prim_mk_const { Name = "REP_prod", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS_prod", (Term.prim_mk_const { Name = "ABS_prod", Thy = "pair"}))
  val _ = update_grms
       temp_add_infix_type
       {Name = "prod", ParseName = SOME "#", Assoc = HOLgrammars.RIGHT, Prec = 70}
  val _ = update_grms
       (UTOFF temp_overload_on)
       (",", (Term.prim_mk_const { Name = ",", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = ",", fixity = Infix(HOLgrammars.RIGHT, 50),
pp_elements = [TOK ",", BreakSpace(0, 0)],
paren_style = ParoundName,
block_style = (AroundSameName, (INCONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FST", (Term.prim_mk_const { Name = "FST", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SND", (Term.prim_mk_const { Name = "SND", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SWAP", (Term.prim_mk_const { Name = "SWAP", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CURRY", (Term.prim_mk_const { Name = "CURRY", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNCURRY", (Term.prim_mk_const { Name = "UNCURRY", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PROD_ALL", (Term.prim_mk_const { Name = "PROD_ALL", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("##", (Term.prim_mk_const { Name = "##", Thy = "pair"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "##"))
       (Infix(HOLgrammars.RIGHT, 490))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_CASE", (Term.prim_mk_const { Name = "pair_CASE", Thy = "pair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEX", (Term.prim_mk_const { Name = "LEX", Thy = "pair"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "LEX"))
       (Infix(HOLgrammars.RIGHT, 490))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RPROD", (Term.prim_mk_const { Name = "RPROD", Thy = "pair"}))
  val pair_grammars = Parse.current_lgrms()
  end


  val pair_rws = [PAIR, FST, SND];
  val _ = TypeBase.write
    [TypeBasePure.mk_datatype_info
       {ax=TypeBasePure.ORIG pair_Axiom,
        case_def=pair_case_thm,
        case_cong=pair_case_cong,
        induction=TypeBasePure.ORIG pair_induction,
        nchotomy=ABS_PAIR_THM,
        size=NONE,
        encode=NONE,
        fields=[],
        accessors=[],
        updates=[],
        destructors=[FST,SND],
        recognizers=[],
        lift=SOME(mk_var("pairSyntax.lift_prod",Parse.Type`:'type -> ('a -> 'term) -> ('b -> 'term) -> 'a # 'b -> 'term`)),
        one_one=SOME CLOSED_PAIR_EQ,
        distinct=NONE}];

  val _ = let open computeLib
          in add_funs (map lazyfy_thm
                [CLOSED_PAIR_EQ,FST,SND,pair_case_thm,SWAP_def,
                 CURRY_DEF,UNCURRY_DEF,PAIR_MAP_THM])
          end;


  (*---------------------------------------------------------------
         Support for definitions using varstructs
  ----------------------------------------------------------------*)

  open HolKernel boolLib;
  infix |-> ORELSEC THENC;

  val ERR1 = mk_HOL_ERR "pairSyntax"
  val ERR2 = mk_HOL_ERR "PairedLambda"
  val ERR3 = mk_HOL_ERR "pairTheory.dest";

  val comma_tm = prim_mk_const {Name=",", Thy="pair"};
  val uncurry_tm = prim_mk_const {Name="UNCURRY", Thy="pair"};

  val dest_pair = dest_binop comma_tm (ERR1 "dest_pair" "not a pair")
  val strip_pair = strip_binop (total dest_pair);
  val spine_pair = spine_binop (total dest_pair);

  local fun check [] = true
          | check (h::t) = is_var h andalso not(mem h t) andalso check t
  in
  fun is_vstruct M = check (strip_pair M)end;

  fun mk_uncurry_tm(xt,yt,zt) = 
    inst [alpha |-> xt, beta |-> yt, gamma |-> zt] uncurry_tm;


  fun mk_pabs(vstruct,body) =
    if is_var vstruct then Term.mk_abs(vstruct, body)
    else let val (fst,snd) = dest_pair vstruct
         in mk_comb(mk_uncurry_tm(type_of fst, type_of snd, type_of body),
                    mk_pabs(fst,mk_pabs(snd,body)))
         end handle HOL_ERR _ => raise ERR1 "mk_pabs" "";


  local val vs = map genvar [alpha --> beta --> gamma, alpha, beta]
        val DEF = SPECL vs UNCURRY_DEF
        val RBCONV = RATOR_CONV BETA_CONV THENC BETA_CONV
        fun conv tm = 
         let val (Rator,Rand) = dest_comb tm
             val (fst,snd) = dest_pair Rand
             val (Rator,f) = dest_comb Rator
             val _ = assert (same_const uncurry_tm) Rator
             val (t1,ty') = dom_rng (type_of f)
             val (t2,t3) = dom_rng ty'
             val iDEF = INST_TYPE [alpha |-> t1, beta |-> t2, gamma |-> t3] DEF
             val (fv,xyv) = strip_comb(rand(concl iDEF))
             val xv = hd xyv and yv = hd (tl xyv)
             val def = INST [yv |-> snd, xv |-> fst, fv |-> f] iDEF
         in
           TRANS def 
            (if Term.is_abs f 
             then if Term.is_abs (body f) 
                  then RBCONV (rhs(concl def))
                  else CONV_RULE (RAND_CONV conv)
                        (AP_THM(BETA_CONV(mk_comb(f, fst))) snd)
             else let val recc = conv (rator(rand(concl def)))
                  in if Term.is_abs (rhs(concl recc))
                     then RIGHT_BETA (AP_THM recc snd)
                     else TRANS (AP_THM recc snd) 
                             (conv(mk_comb(rhs(concl recc), snd)))
                  end)
         end
  in
  fun PAIRED_BETA_CONV tm 
      = conv tm handle HOL_ERR _ => raise ERR2 "PAIRED_BETA_CONV" ""
  end;


  (*---------------------------------------------------------------------------
       Lifting primitive definition principle to understand varstruct
       arguments in definitions.
   ---------------------------------------------------------------------------*)

  fun inter s1 [] = []
    | inter s1 (h::t) = case intersect s1 h of [] => inter s1 t | X => X

  fun joint_vars []  = []
    | joint_vars [_] = []
    | joint_vars (h::t) = case inter h t of [] => joint_vars t | X => X;

  fun dest t = 
    let val (lhs,rhs) = dest_eq (snd(strip_forall t))
        val (f,args) = strip_comb lhs
        val f = mk_var(dest_const f) handle HOL_ERR _ => f
    in 
    case filter (not o is_vstruct) args 
     of [] => (case joint_vars (map free_vars args)
                of [] => (args, mk_eq(f,itlist (curry mk_pabs) args rhs))
                 | V  => raise ERR3 "new_definition" (String.concat
                         ("shared variables between arguments: " ::
                          commafy (map Parse.term_to_string V))))
      | tml => raise ERR3 "new_definition" (String.concat
               ("The following arguments are not varstructs: "::
                commafy (map Parse.term_to_string tml)))
    end;

  fun RHS_CONV conv th = TRANS th (conv(rhs(concl th)));

  fun add_varstruct v th = 
    RHS_CONV(BETA_CONV ORELSEC PAIRED_BETA_CONV) (AP_THM th v)

  fun post (V,th) =
    let val cname = fst(dest_const(lhs(concl th)))
        val vars = List.concat (map free_vars_lr V)
    in Parse.add_const cname
     ; itlist GEN vars (rev_itlist add_varstruct V th)
    end;

  val _ = Definition.new_definition_hook := (dest, post)


  val _ = BasicProvers.new_let_thms[o_UNCURRY_R, C_UNCURRY_L, S_UNCURRY_R, FORALL_UNCURRY]
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pair",
    thydataty = "simp",
    data =
        "pair.PROD_ALL_THM pair.SND pair.SND_PAIR_MAP pair.FST_PAIR_MAP pair.PAIR_MAP_THM pair.CURRY_DEF pair.UNCURRY_DEF pair.UNCURRY_ONE_ONE_THM pair.CURRY_ONE_ONE_THM pair.UNCURRY_CURRY_THM pair.CURRY_UNCURRY_THM pair.CLOSED_PAIR_EQ pair.reflexive_LEX pair.FST pair.PAIR pair.symmetric_LEX pair.total_LEX pair.transitive_LEX"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pair",
    thydataty = "mono",
    data = "pair.PROD_ALL_MONO pair.LEX_MONO"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pair",
    thydataty = "defncong",
    data = "pair.PROD_ALL_CONG pair.LEX_CONG"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pair", thydataty = "compute", data = "pair.PROD_ALL_THM"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pair",
    thydataty = "TexTokenMap",
    data = "1.#16.\\\\HOLTokenProd{}1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "pair",
    thydataty = "OpenTheoryMap",
    data =
        "11.Data.Pair.*4.pair4.prod 11.Data.Pair.,4.pair1.,13.Data.Pair.fst4.pair3.FST13.Data.Pair.snd4.pair3.SND17.Data.Pair.uncurry4.pair7.UNCURRY14.Data.Pair.case4.pair9.pair_case"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "pair"
end
