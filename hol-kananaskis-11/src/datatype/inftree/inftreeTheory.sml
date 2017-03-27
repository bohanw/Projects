structure inftreeTheory :> inftreeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading inftreeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open listTheory
  in end;
  val _ = Theory.link_parents
          ("inftree",
          Arbnum.fromString "1488589146",
          Arbnum.fromString "634064")
          [("list",
           Arbnum.fromString "1488586477",
           Arbnum.fromString "361466")];
  val _ = Theory.incorporate_types "inftree" [("inftree", 3)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("inftree", "inftree"), ID("sum", "sum"),
   ID("list", "list"), ID("min", "bool"), ID("bool", "!"),
   ID("bool", "/\\"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("min", "@"), ID("bool", "COND"), ID("list", "HD"), ID("sum", "INL"),
   ID("sum", "INR"), ID("list", "NIL"), ID("list", "TL"),
   ID("bool", "TYPE_DEFINITION"), ID("bool", "\\/"),
   ID("inftree", "from_inftree"), ID("inftree", "iLf"),
   ID("inftree", "iNd"), ID("inftree", "inftree_CASE"),
   ID("inftree", "inftree_rec"), ID("inftree", "is_tree"),
   ID("combin", "o"), ID("inftree", "relrec"), ID("inftree", "to_inftree"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'d", TYV "'b", TYV "'a", TYOP [1, 2, 1, 0], TYOP [2, 2, 1],
   TYOP [3, 0], TYOP [0, 5, 4], TYOP [0, 6, 3], TYOP [4], TYOP [0, 1, 8],
   TYV "'c", TYOP [1, 2, 10, 0], TYOP [0, 11, 9], TYOP [0, 0, 1],
   TYOP [0, 13, 1], TYOP [0, 10, 14], TYOP [0, 15, 12], TYOP [0, 2, 1],
   TYOP [0, 17, 16], TYOP [0, 6, 8], TYOP [1, 1, 10, 0], TYOP [0, 20, 2],
   TYOP [0, 0, 2], TYOP [0, 22, 2], TYOP [0, 10, 23], TYOP [0, 24, 21],
   TYOP [0, 1, 2], TYOP [0, 26, 25], TYOP [1, 2, 1, 10], TYOP [0, 10, 28],
   TYOP [0, 29, 0], TYOP [0, 1, 30], TYOP [0, 31, 0], TYOP [0, 2, 0],
   TYOP [0, 33, 32], TYOP [0, 28, 34], TYOP [0, 29, 28], TYOP [0, 1, 36],
   TYOP [0, 2, 28], TYOP [0, 3, 6], TYOP [0, 28, 8], TYOP [0, 0, 11],
   TYOP [1, 10, 2, 1], TYOP [0, 1, 42], TYOP [0, 0, 6], TYOP [0, 28, 0],
   TYOP [0, 10, 0], TYOP [0, 46, 0], TYOP [0, 29, 47], TYOP [0, 1, 48],
   TYOP [3, 1], TYOP [3, 10], TYOP [0, 2, 8], TYOP [0, 52, 8],
   TYOP [0, 9, 8], TYOP [0, 10, 8], TYOP [0, 55, 8], TYOP [0, 0, 8],
   TYOP [0, 57, 8], TYOP [0, 17, 8], TYOP [0, 59, 8], TYOP [0, 33, 8],
   TYOP [0, 61, 8], TYOP [0, 26, 8], TYOP [0, 63, 8], TYOP [0, 31, 8],
   TYOP [0, 65, 8], TYOP [0, 49, 8], TYOP [0, 67, 8], TYOP [0, 43, 8],
   TYOP [0, 69, 8], TYOP [0, 24, 8], TYOP [0, 71, 8], TYOP [0, 15, 8],
   TYOP [0, 73, 8], TYOP [0, 29, 8], TYOP [0, 75, 8], TYOP [0, 13, 8],
   TYOP [0, 77, 8], TYOP [0, 44, 8], TYOP [0, 79, 8], TYOP [0, 41, 8],
   TYOP [0, 81, 8], TYOP [0, 18, 8], TYOP [0, 83, 8], TYOP [0, 19, 8],
   TYOP [0, 85, 8], TYOP [0, 40, 8], TYOP [0, 87, 8], TYOP [0, 3, 8],
   TYOP [0, 89, 8], TYOP [0, 11, 8], TYOP [0, 91, 8], TYOP [0, 20, 8],
   TYOP [0, 93, 8], TYOP [0, 8, 8], TYOP [0, 8, 95], TYOP [0, 2, 52],
   TYOP [0, 1, 9], TYOP [0, 0, 57], TYOP [0, 29, 75], TYOP [0, 18, 83],
   TYOP [0, 19, 85], TYOP [0, 6, 19], TYOP [0, 28, 40], TYOP [0, 3, 89],
   TYOP [0, 11, 91], TYOP [0, 50, 8], TYOP [0, 50, 107], TYOP [0, 51, 8],
   TYOP [0, 51, 109], TYOP [0, 5, 8], TYOP [0, 5, 111], TYOP [0, 45, 8],
   TYOP [0, 113, 8], TYOP [0, 39, 8], TYOP [0, 115, 8], TYOP [0, 52, 2],
   TYOP [0, 4, 4], TYOP [0, 4, 118], TYOP [0, 8, 119], TYOP [2, 10, 2],
   TYOP [0, 121, 121], TYOP [0, 121, 122], TYOP [0, 8, 123],
   TYOP [0, 50, 1], TYOP [0, 51, 10], TYOP [0, 5, 0], TYOP [0, 2, 4],
   TYOP [0, 2, 121], TYOP [0, 1, 4], TYOP [0, 50, 50], TYOP [0, 51, 51],
   TYOP [0, 5, 5], TYOP [0, 19, 115], TYOP [0, 51, 4], TYOP [0, 28, 135],
   TYOP [0, 50, 121], TYOP [0, 42, 137], TYOP [0, 2, 11], TYOP [0, 41, 11],
   TYOP [0, 10, 140], TYOP [0, 137, 8], TYOP [0, 29, 46],
   TYOP [0, 45, 143], TYOP [0, 20, 52], TYOP [0, 24, 145],
   TYOP [0, 26, 146], TYOP [0, 135, 28]]
  end
  val _ = Theory.incorporate_consts "inftree" tyvector
     [("to_inftree", 7), ("relrec", 18), ("is_tree", 19),
      ("inftree_rec", 27), ("inftree_CASE", 35), ("iNd", 37), ("iLf", 38),
      ("from_inftree", 39)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 40), TMV("a", 2), TMV("a", 3), TMV("a0", 17), TMV("a0", 6),
   TMV("a1", 2), TMV("a1", 15), TMV("a2", 2), TMV("a2", 11), TMV("a3", 1),
   TMV("b", 2), TMV("b", 1), TMV("b", 10), TMV("b1", 1), TMV("b2", 1),
   TMV("d", 10), TMV("d", 0), TMV("d", 29), TMV("df", 41), TMV("f", 33),
   TMV("f", 43), TMV("f", 29), TMV("f", 44), TMV("f", 45), TMV("f1", 31),
   TMV("f1", 29), TMV("f2", 29), TMV("g", 13), TMV("is_tree'", 19),
   TMV("lf", 17), TMV("lf", 33), TMV("lf", 26), TMV("nd", 49),
   TMV("nd", 24), TMV("nd", 15), TMV("p", 50), TMV("p", 51), TMV("p", 5),
   TMV("r", 2), TMV("r", 6), TMV("relrec'", 18), TMV("rep", 39),
   TMV("t", 28), TMV("t", 20), TMC(5, 53), TMC(5, 54), TMC(5, 56),
   TMC(5, 58), TMC(5, 60), TMC(5, 62), TMC(5, 64), TMC(5, 66), TMC(5, 68),
   TMC(5, 70), TMC(5, 72), TMC(5, 74), TMC(5, 76), TMC(5, 78), TMC(5, 80),
   TMC(5, 82), TMC(5, 84), TMC(5, 86), TMC(5, 88), TMC(5, 85), TMC(5, 87),
   TMC(5, 90), TMC(5, 92), TMC(5, 94), TMC(6, 96), TMC(7, 97), TMC(7, 98),
   TMC(7, 99), TMC(7, 96), TMC(7, 100), TMC(7, 101), TMC(7, 102),
   TMC(7, 103), TMC(7, 104), TMC(7, 105), TMC(7, 106), TMC(7, 108),
   TMC(7, 110), TMC(7, 112), TMC(8, 96), TMC(9, 53), TMC(9, 54),
   TMC(9, 56), TMC(9, 76), TMC(9, 78), TMC(9, 80), TMC(9, 82), TMC(9, 114),
   TMC(9, 116), TMC(10, 117), TMC(11, 120), TMC(11, 124), TMC(12, 125),
   TMC(12, 126), TMC(12, 127), TMC(13, 128), TMC(14, 129), TMC(14, 130),
   TMC(15, 50), TMC(15, 51), TMC(15, 5), TMC(16, 131), TMC(16, 132),
   TMC(16, 133), TMC(17, 134), TMC(18, 96), TMC(19, 136), TMC(19, 39),
   TMC(19, 138), TMC(20, 38), TMC(20, 139), TMC(21, 37), TMC(21, 141),
   TMC(22, 35), TMC(23, 27), TMC(24, 142), TMC(24, 19), TMC(25, 144),
   TMC(26, 18), TMC(26, 147), TMC(27, 148), TMC(27, 7), TMC(28, 95)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op is_tree_def x = x
    val op is_tree_def =
    DT(((("inftree",0),[]),[]),
       [read"%75%120@%4%61%28%83%63%4%83%109%84%1%76$1@%37%99$1@|@|@@%89%22%85%11%68%76$2@%37%94%82$0@%104@@%101$1@@$2%98$0@@%107$0@@@|@@%47%16$4$2$0@@|@@|@|@@@$1$0@@|@@$0$1@@|@|@"])
  fun op inftree_TY_DEF x = x
    val op inftree_TY_DEF =
    DT(((("inftree",5),
        [("bool",[2,14,15,25,26,36,53,54,56,63,74,75,132,133,137,138]),
         ("combin",[0,1,3,5]),("inftree",[0]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%92%41%108%120@$0@|@"])
  fun op inftree_bijections x = x
    val op inftree_bijections =
    DT(((("inftree",6),[("bool",[117]),("inftree",[5])]),["DISK_THM"]),
       [read"%68%65%2%78%125%111$0@@@$0@|@@%63%39%72%120$0@@%76%111%125$0@@@$0@@|@@"])
  fun op iLf_def x = x
    val op iLf_def =
    DT(((("inftree",7),[]),[]), [read"%44%1%77%113$0@@%124%36%99$1@|@@|@"])
  fun op iNd_def x = x
    val op iNd_def =
    DT(((("inftree",8),[]),[]),
       [read"%45%11%56%21%77%115$1@$0@@%124%36%94%81$0@%103@@%101$2@@%110$1%97$0@@@%106$0@@@|@@|@|@"])
  fun op relrec_def x = x
    val op relrec_def =
    DT(((("inftree",13),[]),[]),
       [read"%74%122@%3%6%8%9%60%40%83%48%3%55%6%66%8%45%9%83%109%84%1%68%79$2@%114$0@@@%70$1@$4$0@@@|@@%86%12%90%18%88%27%68%79$4@%116$2@$1@@@%68%70$3@$5$2@$0@@@%47%16$8$7@$6@$2$0@@$1$0@@|@@@|@|@|@@@$4$3@$2@$1@$0@@|@|@|@|@@$0$4@$3@$2@$1@@|@||||@"])
  fun op inftree_rec_def x = x
    val op inftree_rec_def =
    DT(((("inftree",18),[]),[]),
       [read"%50%31%54%33%67%43%69%118$2@$1@$0@@%93%38%123$3@$2@$1@$0@|@@|@|@|@"])
  fun op inftree_case_def x = x
    val op inftree_case_def =
    DT(((("inftree",20),[("inftree",[19])]),["DISK_THM"]),
       [read"%68%44%1%49%19%51%24%71%117%113$2@@$1@$0@@$1$2@@|@|@|@@%45%11%56%17%49%19%51%24%71%117%115$3@$2@@$1@$0@@$0$3@$2@@|@|@|@|@@"])
  fun op is_tree_rules x = x
    val op is_tree_rules =
    DT(((("inftree",1),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[0])]),["DISK_THM"]),
       [read"%68%44%1%120%37%99$1@|@|@@%58%22%45%11%83%47%16%120$2$0@@|@@%120%37%94%82$0@%104@@%101$1@@$2%98$0@@%107$0@@@|@@|@|@@"])
  fun op is_tree_ind x = x
    val op is_tree_ind =
    DT(((("inftree",2),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[0])]),["DISK_THM"]),
       [read"%61%28%83%68%44%1$1%37%99$1@|@|@@%58%22%45%11%83%47%16$3$2$0@@|@@$2%37%94%82$0@%104@@%101$1@@$2%98$0@@%107$0@@@|@@|@|@@@%63%4%83%120$0@@$1$0@@|@@|@"])
  fun op is_tree_strongind x = x
    val op is_tree_strongind =
    DT(((("inftree",3),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[0])]),["DISK_THM"]),
       [read"%61%28%83%68%44%1$1%37%99$1@|@|@@%58%22%45%11%83%47%16%68%120$2$0@@@$3$2$0@@@|@@$2%37%94%82$0@%104@@%101$1@@$2%98$0@@%107$0@@@|@@|@|@@@%63%4%83%120$0@@$1$0@@|@@|@"])
  fun op is_tree_cases x = x
    val op is_tree_cases =
    DT(((("inftree",4),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[0])]),["DISK_THM"]),
       [read"%63%4%72%120$0@@%109%84%1%76$1@%37%99$1@|@|@@%89%22%85%11%68%76$2@%37%94%82$0@%104@@%101$1@@$2%98$0@@%107$0@@@|@@%47%16%120$2$0@@|@@|@|@@@|@"])
  fun op iNd_is_tree x = x
    val op iNd_is_tree =
    DT(((("inftree",9),
        [("bool",
         [14,25,26,53,54,55,58,63,74,75,105,124,129,132,133,137,138]),
         ("combin",[8]),("inftree",[0,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%44%10%53%20%119%35%95%80$0@%102@@%100$2@@%112$1%96$0@@@%105$0@@@|@|@|@"])
  fun op inftree_11 x = x
    val op inftree_11 =
    DT(((("inftree",10),
        [("bool",
         [14,25,26,27,36,51,53,54,55,56,58,60,63,74,75,105,106,124,129,132,
          133,137,138,147]),("inftree",[0,6,7,8,9]),("list",[17,18,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sum",[7])]),["DISK_THM"]),
       [read"%68%72%77%113%5@@%113%7@@@%69%5@%7@@@%72%77%115%13@%25@@%115%14@%26@@@%68%70%13@%14@@%73%25@%26@@@@"])
  fun op inftree_distinct x = x
    val op inftree_distinct =
    DT(((("inftree",11),
        [("bool",
         [14,25,26,27,53,54,56,58,60,63,71,74,75,105,129,132,133,137,138,
          147]),("inftree",[0,6,7,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("sum",[15])]),["DISK_THM"]),
       [read"%126%77%113%1@@%115%11@%21@@@"])
  fun op inftree_ind x = x
    val op inftree_ind =
    DT(((("inftree",12),
        [("bool",
         [14,25,26,36,51,53,54,55,58,63,74,75,105,124,129,132,133,137,
          138]),("combin",[8]),("inftree",[0,6,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%62%0%83%68%44%1$1%113$0@@|@@%45%11%56%21%83%46%15$3$1$0@@|@@$2%115$1@$0@@@|@|@@@%64%42$1$0@|@@|@"])
  fun op relrec_rules x = x
    val op relrec_rules =
    DT(((("inftree",14),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[13])]),["DISK_THM"]),
       [read"%68%48%29%55%34%44%1%122$2@$1@%114$0@@$2$0@@|@|@|@@%48%29%55%34%46%12%59%18%57%27%83%47%16%122$5@$4@$2$0@@$1$0@@|@@%122$4@$3@%116$2@$1@@$3$2@$0@@@|@|@|@|@|@@"])
  fun op relrec_ind x = x
    val op relrec_ind =
    DT(((("inftree",15),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[13])]),["DISK_THM"]),
       [read"%60%40%83%68%48%29%55%34%44%1$3$2@$1@%114$0@@$2$0@@|@|@|@@%48%29%55%34%46%12%59%18%57%27%83%47%16$6$5@$4@$2$0@@$1$0@@|@@$5$4@$3@%116$2@$1@@$3$2@$0@@@|@|@|@|@|@@@%48%3%55%6%66%8%45%9%83%122$3@$2@$1@$0@@$4$3@$2@$1@$0@@|@|@|@|@@|@"])
  fun op relrec_strongind x = x
    val op relrec_strongind =
    DT(((("inftree",16),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[13])]),["DISK_THM"]),
       [read"%60%40%83%68%48%29%55%34%44%1$3$2@$1@%114$0@@$2$0@@|@|@|@@%48%29%55%34%46%12%59%18%57%27%83%47%16%68%122$5@$4@$2$0@@$1$0@@@$6$5@$4@$2$0@@$1$0@@@|@@$5$4@$3@%116$2@$1@@$3$2@$0@@@|@|@|@|@|@@@%48%3%55%6%66%8%45%9%83%122$3@$2@$1@$0@@$4$3@$2@$1@$0@@|@|@|@|@@|@"])
  fun op relrec_cases x = x
    val op relrec_cases =
    DT(((("inftree",17),
        [("bool",[14,25,26,53,132,133,137,138]),
         ("inftree",[13])]),["DISK_THM"]),
       [read"%48%3%55%6%66%8%45%9%72%122$3@$2@$1@$0@@%109%84%1%68%79$2@%114$0@@@%70$1@$4$0@@@|@@%86%12%90%18%88%27%68%79$4@%116$2@$1@@@%68%70$3@$5$2@$0@@@%47%16%122$7@$6@$2$0@@$1$0@@|@@@|@|@|@@@|@|@|@|@"])
  fun op inftree_Axiom x = x
    val op inftree_Axiom =
    DT(((("inftree",19),
        [("bool",
         [2,14,15,25,26,27,36,37,51,52,53,54,56,58,60,63,67,70,83,105,106,
          124,132,133,137,138,140,143]),("combin",[5,8,9]),
         ("inftree",[10,11,12,13,18]),("pair",[8,9]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%49%30%52%32%91%23%68%44%1%71$1%113$0@@@$3$0@@|@@%45%11%56%17%71$2%115$1@$0@@@$3$1@$0@%121$2@$0@@@|@|@@|@|@|@"])
  fun op inftree_nchotomy x = x
    val op inftree_nchotomy =
    DT(((("inftree",21),
        [("bool",[25,26,27,37,52,53,58,63,105,124,140,143]),
         ("inftree",[10,11,12])]),["DISK_THM"]),
       [read"%64%42%109%84%1%77$1@%113$0@@|@@%85%11%87%17%77$2@%115$1@$0@@|@|@@|@"])
  end
  val _ = DB.bindl "inftree"
  [("is_tree_def",is_tree_def,DB.Def),
   ("inftree_TY_DEF",inftree_TY_DEF,DB.Def),
   ("inftree_bijections",inftree_bijections,DB.Def),
   ("iLf_def",iLf_def,DB.Def), ("iNd_def",iNd_def,DB.Def),
   ("relrec_def",relrec_def,DB.Def),
   ("inftree_rec_def",inftree_rec_def,DB.Def),
   ("inftree_case_def",inftree_case_def,DB.Def),
   ("is_tree_rules",is_tree_rules,DB.Thm),
   ("is_tree_ind",is_tree_ind,DB.Thm),
   ("is_tree_strongind",is_tree_strongind,DB.Thm),
   ("is_tree_cases",is_tree_cases,DB.Thm),
   ("iNd_is_tree",iNd_is_tree,DB.Thm), ("inftree_11",inftree_11,DB.Thm),
   ("inftree_distinct",inftree_distinct,DB.Thm),
   ("inftree_ind",inftree_ind,DB.Thm),
   ("relrec_rules",relrec_rules,DB.Thm), ("relrec_ind",relrec_ind,DB.Thm),
   ("relrec_strongind",relrec_strongind,DB.Thm),
   ("relrec_cases",relrec_cases,DB.Thm),
   ("inftree_Axiom",inftree_Axiom,DB.Thm),
   ("inftree_nchotomy",inftree_nchotomy,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("listTheory.list_grammars",
                          listTheory.list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_tree", (Term.prim_mk_const { Name = "is_tree", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_tree", (Term.prim_mk_const { Name = "is_tree", Thy = "inftree"}))
  val _ = update_grms temp_add_type "inftree"
  val _ = update_grms temp_add_type "inftree"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("from_inftree", (Term.prim_mk_const { Name = "from_inftree", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("to_inftree", (Term.prim_mk_const { Name = "to_inftree", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iLf", (Term.prim_mk_const { Name = "iLf", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iLf", (Term.prim_mk_const { Name = "iLf", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iNd", (Term.prim_mk_const { Name = "iNd", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("iNd", (Term.prim_mk_const { Name = "iNd", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("relrec", (Term.prim_mk_const { Name = "relrec", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("relrec", (Term.prim_mk_const { Name = "relrec", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inftree_rec", (Term.prim_mk_const { Name = "inftree_rec", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inftree_rec", (Term.prim_mk_const { Name = "inftree_rec", Thy = "inftree"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inftree_CASE", (Term.prim_mk_const { Name = "inftree_CASE", Thy = "inftree"}))
  val inftree_grammars = Parse.current_lgrms()
  end


  val _ = let
    open TypeBasePure
    val tyinfo = gen_datatype_info {
      ax = inftree_Axiom, ind = inftree_ind, case_defs = [inftree_case_def]
    }
  in
    TypeBase.write tyinfo
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "inftree",
    thydataty = "simp",
    data =
        "inftree.inftree_11 inftree.inftree_case_def inftree.inftree_distinct"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "inftree",
    thydataty = "rule_induction",
    data = "inftree.is_tree_strongind inftree.relrec_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "inftree",
    thydataty = "compute",
    data = "inftree.iLf_def inftree.iNd_def inftree.inftree_rec_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "inftree"
end
