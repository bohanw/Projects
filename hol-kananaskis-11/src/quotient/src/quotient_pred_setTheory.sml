structure quotient_pred_setTheory :> quotient_pred_setTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quotient_pred_setTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quotient_pairTheory
  in end;
  val _ = Theory.link_parents
          ("quotient_pred_set",
          Arbnum.fromString "1488586910",
          Arbnum.fromString "899279")
          [("quotient_pair",
           Arbnum.fromString "1488586891",
           Arbnum.fromString "242612")];
  val _ = Theory.incorporate_types "quotient_pred_set" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("bool", "!"), ID("pair", "##"), ID("quotient_pair", "###"),
   ID("pair", ","), ID("quotient", "-->"), ID("bool", "/\\"),
   ID("min", "="), ID("quotient", "===>"), ID("min", "==>"),
   ID("pred_set", "DELETE"), ID("quotient_pred_set", "DELETER"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"),
   ID("quotient_pred_set", "DISJOINTR"), ID("pred_set", "EMPTY"),
   ID("pred_set", "FINITE"), ID("quotient_pred_set", "FINITER"),
   ID("pred_set", "GSPEC"), ID("quotient_pred_set", "GSPECR"),
   ID("combin", "I"), ID("pred_set", "IMAGE"),
   ID("quotient_pred_set", "IMAGER"), ID("bool", "IN"),
   ID("pred_set", "INSERT"), ID("quotient_pred_set", "INSERTR"),
   ID("pred_set", "INTER"), ID("pred_set", "PSUBSET"),
   ID("quotient_pred_set", "PSUBSETR"), ID("quotient", "QUOTIENT"),
   ID("bool", "RES_EXISTS"), ID("bool", "RES_FORALL"),
   ID("pred_set", "SUBSET"), ID("quotient_pred_set", "SUBSETR"),
   ID("bool", "T"), ID("pred_set", "UNION"), ID("pred_set", "UNIV"),
   ID("bool", "\\/"), ID("quotient", "respects"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [0, 2, 3],
   TYOP [0, 1, 2], TYOP [0, 5, 4], TYOP [0, 2, 2], TYOP [0, 1, 7],
   TYOP [0, 5, 8], TYV "'b", TYOP [0, 10, 0], TYOP [0, 2, 11],
   TYOP [0, 1, 10], TYOP [0, 13, 12], TYOP [0, 10, 11], TYOP [0, 15, 14],
   TYOP [0, 5, 16], TYOP [2, 10, 0], TYOP [0, 1, 18], TYOP [0, 19, 11],
   TYOP [0, 15, 20], TYOP [0, 5, 21], TYOP [0, 5, 3], TYOP [0, 2, 5],
   TYOP [0, 5, 24], TYV "'c", TYOP [0, 1, 26], TYV "'d", TYOP [0, 10, 28],
   TYOP [2, 1, 0], TYOP [0, 10, 30], TYOP [0, 26, 28], TYOP [2, 28, 0],
   TYOP [0, 26, 33], TYOP [0, 10, 1], TYOP [0, 26, 1], TYOP [0, 28, 10],
   TYOP [0, 26, 0], TYOP [0, 11, 0], TYOP [0, 13, 0], TYOP [0, 40, 0],
   TYOP [0, 27, 0], TYOP [0, 42, 0], TYOP [0, 3, 0], TYOP [0, 5, 0],
   TYOP [0, 45, 0], TYOP [0, 19, 0], TYOP [0, 47, 0], TYOP [0, 35, 0],
   TYOP [0, 49, 0], TYOP [0, 29, 0], TYOP [0, 51, 0], TYOP [0, 39, 0],
   TYOP [0, 15, 0], TYOP [0, 54, 0], TYOP [0, 31, 0], TYOP [0, 56, 0],
   TYOP [0, 36, 0], TYOP [0, 58, 0], TYOP [0, 32, 0], TYOP [0, 60, 0],
   TYOP [0, 38, 0], TYOP [0, 62, 0], TYOP [0, 34, 0], TYOP [0, 64, 0],
   TYOP [0, 37, 0], TYOP [0, 66, 0], TYOP [0, 33, 18], TYOP [0, 0, 0],
   TYOP [0, 69, 68], TYOP [0, 37, 70], TYOP [0, 30, 0], TYOP [0, 30, 72],
   TYOP [0, 0, 69], TYOP [0, 74, 73], TYOP [0, 5, 75], TYOP [0, 18, 0],
   TYOP [0, 18, 77], TYOP [0, 74, 78], TYOP [0, 15, 79], TYOP [0, 0, 30],
   TYOP [0, 1, 81], TYOP [0, 0, 18], TYOP [0, 10, 83], TYOP [0, 11, 2],
   TYOP [0, 69, 85], TYOP [0, 13, 86], TYOP [0, 32, 13], TYOP [0, 37, 88],
   TYOP [0, 27, 89], TYOP [0, 38, 2], TYOP [0, 69, 91], TYOP [0, 27, 92],
   TYOP [0, 34, 19], TYOP [0, 68, 94], TYOP [0, 27, 95], TYOP [0, 69, 12],
   TYOP [0, 35, 97], TYOP [0, 28, 0], TYOP [0, 11, 99], TYOP [0, 69, 100],
   TYOP [0, 37, 101], TYOP [0, 11, 39], TYOP [0, 99, 0], TYOP [0, 99, 104],
   TYOP [0, 13, 40], TYOP [0, 15, 106], TYOP [0, 5, 107], TYOP [0, 74, 4],
   TYOP [0, 5, 109], TYOP [0, 19, 47], TYOP [0, 78, 111], TYOP [0, 5, 112],
   TYOP [0, 74, 103], TYOP [0, 15, 114], TYOP [0, 3, 44],
   TYOP [0, 74, 116], TYOP [0, 4, 117], TYOP [0, 11, 15], TYOP [0, 2, 7],
   TYOP [0, 11, 11], TYOP [0, 11, 121], TYOP [0, 1, 30], TYOP [0, 123, 2],
   TYOP [0, 10, 18], TYOP [0, 125, 11], TYOP [0, 34, 99], TYOP [0, 31, 2],
   TYOP [0, 5, 128], TYOP [0, 15, 129], TYOP [0, 38, 99],
   TYOP [0, 32, 131], TYOP [0, 1, 3], TYOP [0, 10, 39], TYOP [0, 10, 121],
   TYOP [0, 13, 49], TYOP [0, 5, 136], TYOP [0, 27, 58], TYOP [0, 5, 138],
   TYOP [0, 29, 66], TYOP [0, 15, 140], TYOP [0, 44, 0], TYOP [0, 44, 142],
   TYOP [0, 5, 2], TYOP [0, 15, 11], TYOP [0, 4, 3], TYOP [0, 116, 44]]
  end
  val _ = Theory.incorporate_consts "quotient_pred_set" tyvector
     [("SUBSETR", 6), ("PSUBSETR", 6), ("INSERTR", 9), ("IMAGER", 17),
      ("GSPECR", 22), ("FINITER", 23), ("DISJOINTR", 6), ("DELETER", 25)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 3), TMV("R", 5), TMV("R1", 5), TMV("R1", 15), TMV("R2", 5),
   TMV("R2", 15), TMV("abs", 13), TMV("abs1", 27), TMV("abs2", 29),
   TMV("e", 1), TMV("f", 13), TMV("f", 19), TMV("f", 31), TMV("f", 32),
   TMV("f", 34), TMV("f1", 13), TMV("f1", 19), TMV("f2", 13),
   TMV("f2", 19), TMV("rep", 35), TMV("rep1", 36), TMV("rep2", 37),
   TMV("s", 2), TMV("s", 11), TMV("s", 38), TMV("s1", 2), TMV("s2", 2),
   TMV("t", 2), TMV("t", 11), TMV("t1", 2), TMV("t2", 2), TMV("v", 1),
   TMV("v", 10), TMV("x", 1), TMV("x", 10), TMV("x1", 1), TMV("x2", 1),
   TMV("y", 1), TMV("y", 10), TMC(3, 3), TMC(3, 39), TMC(3, 41),
   TMC(3, 43), TMC(3, 44), TMC(3, 46), TMC(3, 48), TMC(3, 50), TMC(3, 52),
   TMC(3, 53), TMC(3, 55), TMC(3, 57), TMC(3, 59), TMC(3, 61), TMC(3, 63),
   TMC(3, 65), TMC(3, 67), TMC(4, 71), TMC(5, 76), TMC(5, 80), TMC(6, 82),
   TMC(6, 84), TMC(7, 87), TMC(7, 90), TMC(7, 93), TMC(7, 96), TMC(7, 98),
   TMC(7, 102), TMC(8, 74), TMC(9, 74), TMC(9, 4), TMC(9, 103),
   TMC(9, 105), TMC(10, 108), TMC(10, 110), TMC(10, 113), TMC(10, 115),
   TMC(10, 118), TMC(11, 74), TMC(12, 119), TMC(13, 25), TMC(14, 120),
   TMC(14, 122), TMC(15, 103), TMC(16, 6), TMC(17, 2), TMC(17, 11),
   TMC(18, 39), TMC(19, 23), TMC(20, 124), TMC(20, 126), TMC(20, 127),
   TMC(21, 22), TMC(21, 130), TMC(22, 69), TMC(23, 132), TMC(24, 17),
   TMC(25, 133), TMC(25, 134), TMC(26, 135), TMC(27, 9), TMC(28, 120),
   TMC(28, 122), TMC(29, 103), TMC(30, 6), TMC(31, 137), TMC(31, 139),
   TMC(31, 141), TMC(32, 4), TMC(32, 103), TMC(33, 4), TMC(33, 116),
   TMC(33, 143), TMC(34, 103), TMC(35, 6), TMC(36, 0), TMC(37, 120),
   TMC(37, 122), TMC(38, 2), TMC(38, 11), TMC(39, 74), TMC(40, 144),
   TMC(40, 145), TMC(40, 146), TMC(40, 147), TMC(41, 69)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op GSPECR_def x = x
    val op GSPECR_def =
    DT(((("quotient_pred_set",5),[]),[]),
       [read"%44%2%49%5%45%11%40%32%68%91$3@$2@$1@$0@@%107%120$3@@%33%58$3@%68@%60$1@%114@@$2$0@@|@@|@|@|@|@"])
  fun op SUBSETR_def x = x
    val op SUBSETR_def =
    DT(((("quotient_pred_set",17),[]),[]),
       [read"%44%1%43%22%43%27%68%113$2@$1@$0@@%109%120$2@@%33%77%96$0@$2@@%96$0@$1@@|@@|@|@|@"])
  fun op PSUBSETR_def x = x
    val op PSUBSETR_def =
    DT(((("quotient_pred_set",20),[]),[]),
       [read"%44%1%43%22%43%27%68%103$2@$1@$0@@%67%113$2@$1@$0@@%124%73$2@%68@$1@$0@@@@|@|@|@"])
  fun op INSERTR_def x = x
    val op INSERTR_def =
    DT(((("quotient_pred_set",23),[]),[]),
       [read"%44%1%39%33%43%22%69%99$2@$1@$0@@%88%37%59$0@%119$3$0@$2@@%96$0@$1@@@|@@|@|@|@"])
  fun op DELETER_def x = x
    val op DELETER_def =
    DT(((("quotient_pred_set",27),[]),[]),
       [read"%44%1%43%22%39%33%69%79$2@$1@$0@@%88%37%59$0@%67%96$0@$2@@%124$3$1@$0@@@@|@@|@|@|@"])
  fun op DISJOINTR_def x = x
    val op DISJOINTR_def =
    DT(((("quotient_pred_set",33),[]),[]),
       [read"%44%1%43%22%43%27%68%83$2@$1@$0@@%124%107%120$2@@%33%67%96$0@$2@@%96$0@$1@@|@@@|@|@|@"])
  fun op FINITER_def x = x
    val op FINITER_def =
    DT(((("quotient_pred_set",36),[]),[]),
       [read"%44%1%43%22%68%87$1@$0@@%111%123%76%73$1@%68@@%68@@@%0%77%67$0%84@@%110%122%73$2@%68@@@%22%77$1$0@@%109%120$3@@%9$2%99$4@$0@$1@@|@@|@@@$0$1@@|@@|@|@"])
  fun op IMAGER_def x = x
    val op IMAGER_def =
    DT(((("quotient_pred_set",44),[]),[]),
       [read"%44%2%49%5%41%10%43%22%70%95$3@$2@$1@$0@@%89%38%60$0@%107%120$4@@%33%67$4$1@$3$0@@@%96$0@$2@@|@@|@@|@|@|@|@"])
  fun op IN_SET_MAP x = x
    val op IN_SET_MAP =
    DT(((("quotient_pred_set",0),
        [("bool",[25,56]),("combin",[19]),("pred_set",[0]),
         ("quotient",[17])]),["DISK_THM"]),
       [read"%41%10%48%23%39%33%68%96$0@%61$2@%93@$1@@@%97$2$0@@$1@@|@|@|@"])
  fun op SET_REL x = x
    val op SET_REL =
    DT(((("quotient_pred_set",1),
        [("bool",[25,56]),("pred_set",[0]),
         ("quotient",[20])]),["DISK_THM"]),
       [read"%44%1%43%22%43%27%68%73$2@%68@$1@$0@@%39%33%39%37%77$4$1@$0@@%68%96$1@$3@@%96$0@$2@@@|@|@@|@|@|@"])
  fun op SET_REL_MP x = x
    val op SET_REL_MP =
    DT(((("quotient_pred_set",2),
        [("bool",[25,51,63]),("pred_set",[0]),
         ("quotient",[12,34])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%22%43%27%39%33%39%37%77%67%73$6@%68@$3@$2@@$6$1@$0@@@%68%96$1@$3@@%96$0@$2@@@|@|@|@|@@|@|@|@"])
  fun op IN_PRS x = x
    val op IN_PRS =
    DT(((("quotient_pred_set",3),
        [("bool",[25,56]),("quotient",[4]),
         ("quotient_pred_set",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%40%34%48%23%68%97$1@$0@@%96$2$1@@%61$3@%93@$0@@@|@|@@|@|@|@"])
  fun op IN_RSP x = x
    val op IN_RSP =
    DT(((("quotient_pred_set",4),
        [("quotient_pred_set",[2])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%39%35%39%36%43%25%43%26%77%67$6$3@$2@@%73$6@%68@$1@$0@@@%68%96$3@$1@@%96$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op IN_GSPECR x = x
    val op IN_GSPECR =
    DT(((("quotient_pred_set",6),
        [("bool",[25,36,56]),("pred_set",[0]),
         ("quotient_pred_set",[5])]),["DISK_THM"]),
       [read"%49%3%44%4%50%12%39%31%68%96$0@%92$3@$2@$1@@@%108%121$3@@%34%57$3@%68@%59$1@%114@@$2$0@@|@@|@|@|@|@"])
  fun op GSPEC_PRS x = x
    val op GSPEC_PRS =
    DT(((("quotient_pred_set",7),
        [("bool",[25,26,51,56,58,63]),("combin",[19]),
         ("pair",[3,7,8,9,37]),("pred_set",[3,6]),
         ("quotient",[4,5,9,17,25]),("quotient_pair",[2]),
         ("quotient_pred_set",[0,6]),("res_quan",[1])]),["DISK_THM"]),
       [read"%44%2%42%7%51%20%77%105$2@$1@$0@@%49%5%47%8%55%21%77%106$2@$1@$0@@%54%14%71%90$0@@%66$1@%93@%91$6@$3@%64$5@%56$1@%93@@$0@@@@|@@|@|@|@@|@|@|@"])
  fun op GSPECR_RSP x = x
    val op GSPECR_RSP =
    DT(((("quotient_pred_set",8),
        [("bool",[25,26,36,47,48,53,54,56,58,63,72,76,80,81,84,93,94,96]),
         ("combin",[19]),("pair",[7,8,9]),("quotient",[14,15,20,25]),
         ("quotient_pair",[2]),("quotient_pred_set",[1,6]),
         ("res_quan",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%2%42%7%51%20%77%105$2@$1@$0@@%49%5%47%8%55%21%77%106$2@$1@$0@@%45%16%45%18%77%74$7@%58$4@%68@@$1@$0@@%75$4@%68@%91$7@$4@$1@@%91$7@$4@$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op EMPTY_PRS x = x
    val op EMPTY_PRS =
    DT(((("quotient_pred_set",9),
        [("bool",[25,26,27,36,54,63]),("pred_set",[3,10]),
         ("quotient_pred_set",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%70%85@%65$0@%93@%84@@@|@|@|@"])
  fun op EMPTY_RSP x = x
    val op EMPTY_RSP =
    DT(((("quotient_pred_set",10),
        [("bool",[25,26,27,36,53,54,63]),("pred_set",[10]),
         ("quotient_pred_set",[1])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%73$2@%68@%84@%84@@|@|@|@"])
  fun op UNIV_PRS x = x
    val op UNIV_PRS =
    DT(((("quotient_pred_set",11),
        [("bool",[25,36,63]),("pred_set",[3,14]),
         ("quotient_pred_set",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%70%118@%65$0@%93@%117@@@|@|@|@"])
  fun op UNIV_RSP x = x
    val op UNIV_RSP =
    DT(((("quotient_pred_set",12),
        [("bool",[25,36,53,63]),("pred_set",[14]),
         ("quotient_pred_set",[1])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%73$2@%68@%117@%117@@|@|@|@"])
  fun op UNION_PRS x = x
    val op UNION_PRS =
    DT(((("quotient_pred_set",13),
        [("bool",[25,56]),("pred_set",[3,33]),("quotient",[4]),
         ("quotient_pred_set",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%48%28%70%116$1@$0@@%65$2@%93@%115%61$3@%93@$1@@%61$3@%93@$0@@@@|@|@@|@|@|@"])
  fun op UNION_RSP x = x
    val op UNION_RSP =
    DT(((("quotient_pred_set",14),
        [("bool",[25,56,58,105]),("pred_set",[33]),
         ("quotient_pred_set",[1,2])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%43%29%43%30%77%67%73$6@%68@$3@$2@@%73$6@%68@$1@$0@@@%73$6@%68@%115$3@$1@@%115$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op INTER_PRS x = x
    val op INTER_PRS =
    DT(((("quotient_pred_set",15),
        [("bool",[25,56]),("pred_set",[3,45]),("quotient",[4]),
         ("quotient_pred_set",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%48%28%70%101$1@$0@@%65$2@%93@%100%61$3@%93@$1@@%61$3@%93@$0@@@@|@|@@|@|@|@"])
  fun op INTER_RSP x = x
    val op INTER_RSP =
    DT(((("quotient_pred_set",16),
        [("bool",[25,56,58,105]),("pred_set",[45]),
         ("quotient_pred_set",[1,2])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%43%29%43%30%77%67%73$6@%68@$3@$2@@%73$6@%68@$1@$0@@@%73$6@%68@%100$3@$1@@%100$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op SUBSET_PRS x = x
    val op SUBSET_PRS =
    DT(((("quotient_pred_set",18),
        [("bool",[25,26,53,63]),("pred_set",[18]),("quotient",[4,5,25]),
         ("quotient_pred_set",[0,17]),("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%48%28%68%112$1@$0@@%113$4@%61$3@%93@$1@@%61$3@%93@$0@@@|@|@@|@|@|@"])
  fun op SUBSETR_RSP x = x
    val op SUBSETR_RSP =
    DT(((("quotient_pred_set",19),
        [("bool",[26]),("quotient",[25]),("quotient_pred_set",[1,17]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%43%29%43%30%77%67%73$6@%68@$3@$2@@%73$6@%68@$1@$0@@@%68%113$6@$3@$1@@%113$6@$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op PSUBSET_PRS x = x
    val op PSUBSET_PRS =
    DT(((("quotient_pred_set",21),
        [("bool",[25,26,53,56]),("pred_set",[3,26]),("quotient",[4,5,7]),
         ("quotient_pred_set",[0,1,18,20])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%48%28%68%102$1@$0@@%103$4@%61$3@%93@$1@@%61$3@%93@$0@@@|@|@@|@|@|@"])
  fun op PSUBSETR_RSP x = x
    val op PSUBSETR_RSP =
    DT(((("quotient_pred_set",22),
        [("bool",[25,51,53,63]),("quotient",[12,22,39]),
         ("quotient_pred_set",[19,20])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%43%29%43%30%77%67%73$6@%68@$3@$2@@%73$6@%68@$1@$0@@@%68%103$6@$3@$1@@%103$6@$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op IN_INSERTR x = x
    val op IN_INSERTR =
    DT(((("quotient_pred_set",24),
        [("bool",[25,26,56,63]),("pair",[3]),("pred_set",[6]),
         ("quotient_pred_set",[23])]),["DISK_THM"]),
       [read"%44%1%39%33%43%22%39%37%68%96$0@%99$3@$2@$1@@@%119$3$0@$2@@%96$0@$1@@@|@|@|@|@"])
  fun op INSERT_PRS x = x
    val op INSERT_PRS =
    DT(((("quotient_pred_set",25),
        [("bool",[25,56]),("pred_set",[3,80]),("quotient",[4,9]),
         ("quotient_pred_set",[0,24])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%40%34%70%98$0@$1@@%65$2@%93@%99$4@$2$0@@%61$3@%93@$1@@@@|@|@@|@|@|@"])
  fun op INSERTR_RSP x = x
    val op INSERTR_RSP =
    DT(((("quotient_pred_set",26),
        [("bool",[25,26,36,47,48,53,54,56,58,63,84,93,94,96]),
         ("combin",[19]),("quotient",[14,15]),("quotient_pred_set",[1,24]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%39%35%39%36%43%25%43%26%77%67$6$3@$2@@%73$6@%68@$1@$0@@@%73$6@%68@%99$6@$3@$1@@%99$6@$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op IN_DELETER x = x
    val op IN_DELETER =
    DT(((("quotient_pred_set",28),
        [("bool",[25,26,56,63]),("pair",[3]),("pred_set",[6]),
         ("quotient_pred_set",[27])]),["DISK_THM"]),
       [read"%44%1%43%22%39%33%39%37%68%96$0@%79$3@$2@$1@@@%67%96$0@$2@@%124$3$1@$0@@@@|@|@|@|@"])
  fun op DELETE_PRS x = x
    val op DELETE_PRS =
    DT(((("quotient_pred_set",29),
        [("bool",[13,25,26,27,30,36,47,48,51,52,53,54,56,63,93,94,96]),
         ("combin",[19]),("pred_set",[3,102]),("quotient",[4,9]),
         ("quotient_pred_set",[0,28]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%40%34%70%78$1@$0@@%65$2@%93@%79$4@%61$3@%93@$1@@$2$0@@@@|@|@@|@|@|@"])
  fun op DELETER_RSP x = x
    val op DELETER_RSP =
    DT(((("quotient_pred_set",30),
        [("bool",[25,26,36,47,48,53,54,56,58,63,84,93,94,96]),
         ("combin",[19]),("quotient",[14,15]),("quotient_pred_set",[1,28]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%39%35%39%36%77%67%73$6@%68@$3@$2@@$6$1@$0@@@%73$6@%68@%79$6@$3@$1@@%79$6@$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op DIFF_PRS x = x
    val op DIFF_PRS =
    DT(((("quotient_pred_set",31),
        [("bool",[25,56]),("pred_set",[3,67]),("quotient",[4]),
         ("quotient_pred_set",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%48%28%70%81$1@$0@@%65$2@%93@%80%61$3@%93@$1@@%61$3@%93@$0@@@@|@|@@|@|@|@"])
  fun op DIFF_RSP x = x
    val op DIFF_RSP =
    DT(((("quotient_pred_set",32),
        [("bool",[25,26,36,47,48,53,54,56,63,93,94,96]),("combin",[19]),
         ("pred_set",[67]),("quotient_pred_set",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%43%29%43%30%77%67%73$6@%68@$3@$2@@%73$6@%68@$1@$0@@@%73$6@%68@%80$3@$1@@%80$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op DISJOINT_PRS x = x
    val op DISJOINT_PRS =
    DT(((("quotient_pred_set",34),
        [("bool",[25,26,27,52,53,54,63,96]),("pred_set",[3,10,45,57]),
         ("quotient",[4,5,25]),("quotient_pred_set",[0,33]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%48%28%68%82$1@$0@@%83$4@%61$3@%93@$1@@%61$3@%93@$0@@@|@|@@|@|@|@"])
  fun op DISJOINTR_RSP x = x
    val op DISJOINTR_RSP =
    DT(((("quotient_pred_set",35),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,76,80,81,93,94,96]),
         ("combin",[19]),("quotient",[25]),("quotient_pred_set",[1,33]),
         ("res_quan",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%43%29%43%30%77%67%73$6@%68@$3@$2@@%73$6@%68@$1@$0@@@%68%83$6@$3@$1@@%83$6@$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op FINITE_PRS x = x
    val op FINITE_PRS =
    DT(((("quotient_pred_set",37),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105]),("combin",[19]),
         ("pred_set",[0,3,10,80,184]),
         ("quotient",[4,5,6,7,12,17,20,22,25]),
         ("quotient_pred_set",[0,1,9,24,36]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%48%23%68%86$0@@%87$3@%61$2@%93@$0@@@|@@|@|@|@"])
  fun op FINITER_EQ x = x
    val op FINITER_EQ =
    DT(((("quotient_pred_set",38),
        [("bool",[25,26,53]),("quotient",[20,25]),
         ("quotient_pred_set",[36]),("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%43%25%43%26%77%73$2@%68@$1@$0@@%68%87$2@$1@@%87$2@$0@@@|@|@|@"])
  fun op FINITER_RSP x = x
    val op FINITER_RSP =
    DT(((("quotient_pred_set",39),
        [("bool",[25,36,53,63]),("quotient_pred_set",[38])]),["DISK_THM"]),
       [read"%44%1%41%6%46%19%77%104$2@$1@$0@@%43%25%43%26%77%73$4@%68@$1@$0@@%68%87$4@$1@@%87$4@$0@@@|@|@@|@|@|@"])
  fun op FINITER_EMPTY x = x
    val op FINITER_EMPTY =
    DT(((("quotient_pred_set",40),
        [("bool",[25,63]),("quotient_pred_set",[36]),
         ("res_quan",[0])]),["DISK_THM"]), [read"%44%1%87$0@%84@|@"])
  fun op FINITER_INSERTR x = x
    val op FINITER_INSERTR =
    DT(((("quotient_pred_set",41),
        [("bool",[25,36,51,58,63,105]),("quotient",[25]),
         ("quotient_pred_set",[36]),("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%110%122%73$0@%68@@@%22%77%87$1@$0@@%109%120$1@@%33%87$2@%99$2@$0@$1@@|@@|@|@"])
  fun op ABSORPTIONR x = x
    val op ABSORPTIONR =
    DT(((("quotient_pred_set",42),
        [("bool",[25,26,52,63]),("quotient",[25]),
         ("quotient_pred_set",[1,24]),("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%109%120$0@@%33%110%122%73$1@%68@@@%22%68%96$1@$0@@%73$2@%68@%99$2@$1@$0@@$0@@|@|@|@"])
  fun op FINITER_INDUCT x = x
    val op FINITER_INDUCT =
    DT(((("quotient_pred_set",43),
        [("bool",[25,26,27,30,36,51,53,56,63,105]),("quotient",[20,25]),
         ("quotient_pred_set",[36,38,40,41,42]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%44%1%111%123%76%73$0@%68@@%68@@@%0%77%67$0%84@@%110%122%73$1@%68@@@%22%77%67%87$2@$0@@$1$0@@@%109%120$2@@%9%77%124%96$0@$1@@@$2%99$3@$0@$1@@@|@@|@@@%110%122%73$1@%68@@@%22%77%87$2@$0@@$1$0@@|@@|@|@"])
  fun op IN_IMAGER x = x
    val op IN_IMAGER =
    DT(((("quotient_pred_set",45),
        [("bool",[25,26,56,63]),("pair",[3]),("pred_set",[6]),
         ("quotient_pred_set",[44])]),["DISK_THM"]),
       [read"%44%2%49%5%40%38%41%10%43%22%68%97$2@%95$4@$3@$1@$0@@@%107%120$4@@%33%67$4$3@$2$0@@@%96$0@$1@@|@@|@|@|@|@|@"])
  fun op IMAGE_PRS x = x
    val op IMAGE_PRS =
    DT(((("quotient_pred_set",46),
        [("bool",[25,26,51,53,63]),("pred_set",[3,144]),
         ("quotient",[4,5,7,17,25]),("quotient_pred_set",[0,45]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%44%2%42%7%51%20%77%105$2@$1@$0@@%49%5%47%8%55%21%77%106$2@$1@$0@@%52%13%53%24%71%94$1@$0@@%66$2@%93@%95$7@$4@%62$6@$2@$1@@%63$6@%93@$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op IMAGER_RSP x = x
    val op IMAGER_RSP =
    DT(((("quotient_pred_set",47),
        [("bool",[26,51,63]),("quotient",[14,15,20,25]),
         ("quotient_pred_set",[1,45]),("res_quan",[1])]),["DISK_THM"]),
       [read"%44%2%42%7%51%20%77%105$2@$1@$0@@%49%5%47%8%55%21%77%106$2@$1@$0@@%41%15%41%17%43%25%43%26%77%67%72$9@$6@$3@$2@@%73$9@%68@$1@$0@@@%75$6@%68@%95$9@$6@$3@$1@@%95$9@$6@$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  end
  val _ = DB.bindl "quotient_pred_set"
  [("GSPECR_def",GSPECR_def,DB.Def), ("SUBSETR_def",SUBSETR_def,DB.Def),
   ("PSUBSETR_def",PSUBSETR_def,DB.Def),
   ("INSERTR_def",INSERTR_def,DB.Def), ("DELETER_def",DELETER_def,DB.Def),
   ("DISJOINTR_def",DISJOINTR_def,DB.Def),
   ("FINITER_def",FINITER_def,DB.Def), ("IMAGER_def",IMAGER_def,DB.Def),
   ("IN_SET_MAP",IN_SET_MAP,DB.Thm), ("SET_REL",SET_REL,DB.Thm),
   ("SET_REL_MP",SET_REL_MP,DB.Thm), ("IN_PRS",IN_PRS,DB.Thm),
   ("IN_RSP",IN_RSP,DB.Thm), ("IN_GSPECR",IN_GSPECR,DB.Thm),
   ("GSPEC_PRS",GSPEC_PRS,DB.Thm), ("GSPECR_RSP",GSPECR_RSP,DB.Thm),
   ("EMPTY_PRS",EMPTY_PRS,DB.Thm), ("EMPTY_RSP",EMPTY_RSP,DB.Thm),
   ("UNIV_PRS",UNIV_PRS,DB.Thm), ("UNIV_RSP",UNIV_RSP,DB.Thm),
   ("UNION_PRS",UNION_PRS,DB.Thm), ("UNION_RSP",UNION_RSP,DB.Thm),
   ("INTER_PRS",INTER_PRS,DB.Thm), ("INTER_RSP",INTER_RSP,DB.Thm),
   ("SUBSET_PRS",SUBSET_PRS,DB.Thm), ("SUBSETR_RSP",SUBSETR_RSP,DB.Thm),
   ("PSUBSET_PRS",PSUBSET_PRS,DB.Thm),
   ("PSUBSETR_RSP",PSUBSETR_RSP,DB.Thm), ("IN_INSERTR",IN_INSERTR,DB.Thm),
   ("INSERT_PRS",INSERT_PRS,DB.Thm), ("INSERTR_RSP",INSERTR_RSP,DB.Thm),
   ("IN_DELETER",IN_DELETER,DB.Thm), ("DELETE_PRS",DELETE_PRS,DB.Thm),
   ("DELETER_RSP",DELETER_RSP,DB.Thm), ("DIFF_PRS",DIFF_PRS,DB.Thm),
   ("DIFF_RSP",DIFF_RSP,DB.Thm), ("DISJOINT_PRS",DISJOINT_PRS,DB.Thm),
   ("DISJOINTR_RSP",DISJOINTR_RSP,DB.Thm),
   ("FINITE_PRS",FINITE_PRS,DB.Thm), ("FINITER_EQ",FINITER_EQ,DB.Thm),
   ("FINITER_RSP",FINITER_RSP,DB.Thm),
   ("FINITER_EMPTY",FINITER_EMPTY,DB.Thm),
   ("FINITER_INSERTR",FINITER_INSERTR,DB.Thm),
   ("ABSORPTIONR",ABSORPTIONR,DB.Thm),
   ("FINITER_INDUCT",FINITER_INDUCT,DB.Thm),
   ("IN_IMAGER",IN_IMAGER,DB.Thm), ("IMAGE_PRS",IMAGE_PRS,DB.Thm),
   ("IMAGER_RSP",IMAGER_RSP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quotient_pairTheory.quotient_pair_grammars",
                          quotient_pairTheory.quotient_pair_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSPECR", (Term.prim_mk_const { Name = "GSPECR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSPECR", (Term.prim_mk_const { Name = "GSPECR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBSETR", (Term.prim_mk_const { Name = "SUBSETR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBSETR", (Term.prim_mk_const { Name = "SUBSETR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PSUBSETR", (Term.prim_mk_const { Name = "PSUBSETR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PSUBSETR", (Term.prim_mk_const { Name = "PSUBSETR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERTR", (Term.prim_mk_const { Name = "INSERTR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INSERTR", (Term.prim_mk_const { Name = "INSERTR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DELETER", (Term.prim_mk_const { Name = "DELETER", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DELETER", (Term.prim_mk_const { Name = "DELETER", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DISJOINTR", (Term.prim_mk_const { Name = "DISJOINTR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DISJOINTR", (Term.prim_mk_const { Name = "DISJOINTR", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINITER", (Term.prim_mk_const { Name = "FINITER", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FINITER", (Term.prim_mk_const { Name = "FINITER", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IMAGER", (Term.prim_mk_const { Name = "IMAGER", Thy = "quotient_pred_set"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IMAGER", (Term.prim_mk_const { Name = "IMAGER", Thy = "quotient_pred_set"}))
  val quotient_pred_set_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "quotient_pred_set",
    thydataty = "compute",
    data =
        "quotient_pred_set.GSPECR_def quotient_pred_set.IMAGER_def quotient_pred_set.INSERTR_def quotient_pred_set.FINITER_def quotient_pred_set.DISJOINTR_def quotient_pred_set.DELETER_def quotient_pred_set.PSUBSETR_def quotient_pred_set.SUBSETR_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quotient_pred_set"
end
