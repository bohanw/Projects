structure netsTheory :> netsTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading netsTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open topologyTheory
  in end;
  val _ = Theory.link_parents
          ("nets",
          Arbnum.fromString "1488589257",
          Arbnum.fromString "777883")
          [("topology",
           Arbnum.fromString "1488589241",
           Arbnum.fromString "745894")];
  val _ = Theory.incorporate_types "nets" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("topology", "metric"), ID("topology", "topology"), ID("num", "num"),
   ID("realax", "real"), ID("bool", "!"), ID("pair", ","), ID("real", "/"),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">="), ID("bool", "?"), ID("pred_set", "UNIV"),
   ID("real", "abs"), ID("nets", "bounded"), ID("topology", "dist"),
   ID("nets", "dorder"), ID("realax", "inv"), ID("topology", "limpt"),
   ID("topology", "mr1"), ID("topology", "mtop"), ID("topology", "neigh"),
   ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("realax", "real_mul"),
   ID("realax", "real_neg"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("nets", "tends"), ID("nets", "tendsto"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [3, 1],
   TYOP [2, 4, 1], TYOP [0, 5, 3], TYV "'b", TYOP [0, 7, 0],
   TYOP [0, 7, 8], TYOP [4, 1], TYOP [2, 10, 9], TYOP [0, 11, 0],
   TYOP [0, 1, 12], TYOP [0, 7, 1], TYOP [0, 14, 13], TYOP [0, 3, 0],
   TYOP [0, 14, 0], TYOP [2, 4, 9], TYOP [0, 18, 17], TYOP [5], TYOP [6],
   TYOP [0, 1, 7], TYOP [0, 1, 21], TYOP [3, 7], TYOP [0, 20, 1],
   TYOP [0, 2, 0], TYOP [0, 8, 0], TYOP [0, 22, 0], TYOP [0, 28, 0],
   TYOP [0, 26, 0], TYOP [0, 16, 0], TYOP [0, 23, 0], TYOP [0, 32, 0],
   TYOP [0, 17, 0], TYOP [0, 9, 0], TYOP [0, 35, 0], TYOP [0, 25, 0],
   TYOP [0, 37, 0], TYOP [0, 4, 0], TYOP [0, 39, 0], TYOP [0, 24, 0],
   TYOP [0, 41, 0], TYOP [0, 20, 0], TYOP [0, 43, 0], TYOP [0, 21, 0],
   TYOP [0, 45, 0], TYOP [0, 10, 0], TYOP [0, 47, 0], TYOP [2, 1, 1],
   TYOP [0, 1, 49], TYOP [0, 1, 50], TYOP [2, 7, 7], TYOP [0, 7, 52],
   TYOP [0, 7, 53], TYOP [2, 2, 1], TYOP [0, 1, 55], TYOP [0, 2, 56],
   TYOP [0, 1, 5], TYOP [0, 4, 58], TYOP [0, 9, 18], TYOP [0, 4, 60],
   TYOP [3, 21], TYOP [2, 62, 3], TYOP [0, 3, 63], TYOP [0, 62, 64],
   TYOP [0, 9, 11], TYOP [0, 10, 66], TYOP [0, 20, 43], TYOP [2, 10, 68],
   TYOP [0, 68, 69], TYOP [0, 10, 70], TYOP [4, 7], TYOP [2, 72, 3],
   TYOP [0, 3, 73], TYOP [0, 72, 74], TYOP [4, 21], TYOP [2, 76, 3],
   TYOP [0, 3, 77], TYOP [0, 76, 78], TYOP [0, 21, 21], TYOP [0, 21, 80],
   TYOP [0, 0, 0], TYOP [0, 0, 82], TYOP [0, 21, 45], TYOP [0, 63, 32],
   TYOP [0, 49, 21], TYOP [0, 4, 86], TYOP [0, 52, 21], TYOP [0, 24, 88],
   TYOP [0, 68, 0], TYOP [0, 1, 26], TYOP [0, 10, 91], TYOP [0, 4, 10],
   TYOP [0, 24, 72], TYOP [0, 62, 76], TYOP [0, 55, 0], TYOP [0, 10, 96],
   TYOP [0, 20, 21], TYOP [0, 73, 0], TYOP [0, 7, 99], TYOP [0, 22, 100],
   TYOP [0, 77, 0], TYOP [0, 21, 102], TYOP [0, 23, 103], TYOP [0, 69, 0],
   TYOP [0, 1, 105], TYOP [0, 25, 106]]
  end
  val _ = Theory.incorporate_consts "nets" tyvector
     [("tendsto", 6), ("tends", 15), ("dorder", 16), ("bounded", 19)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("N", 1), TMV("N", 7), TMV("N", 2), TMV("N", 20), TMV("P", 2),
   TMV("Q", 2), TMV("d", 4), TMV("d", 21), TMV("e", 21), TMV("f", 22),
   TMV("f", 23), TMV("f", 14), TMV("g", 3), TMV("g", 9), TMV("k", 21),
   TMV("l", 1), TMV("m", 1), TMV("m", 7), TMV("m", 4), TMV("m1", 4),
   TMV("m2", 24), TMV("n", 1), TMV("n", 7), TMV("n", 20), TMV("s", 14),
   TMV("top", 10), TMV("w", 1), TMV("x", 1), TMV("x", 23), TMV("x", 14),
   TMV("x", 25), TMV("x0", 1), TMV("x0", 21), TMV("x1", 1), TMV("y", 1),
   TMV("y", 23), TMV("y0", 7), TMV("y0", 21), TMV("z", 1), TMC(7, 26),
   TMC(7, 27), TMC(7, 29), TMC(7, 30), TMC(7, 31), TMC(7, 33), TMC(7, 34),
   TMC(7, 36), TMC(7, 38), TMC(7, 40), TMC(7, 42), TMC(7, 44), TMC(7, 46),
   TMC(7, 48), TMC(8, 51), TMC(8, 54), TMC(8, 57), TMC(8, 59), TMC(8, 61),
   TMC(8, 65), TMC(8, 67), TMC(8, 71), TMC(8, 75), TMC(8, 79), TMC(9, 81),
   TMC(10, 83), TMC(11, 20), TMC(12, 3), TMC(12, 83), TMC(12, 84),
   TMC(13, 83), TMC(14, 68), TMC(15, 26), TMC(15, 27), TMC(15, 44),
   TMC(15, 46), TMC(16, 2), TMC(17, 80), TMC(18, 19), TMC(18, 85),
   TMC(19, 87), TMC(19, 89), TMC(20, 16), TMC(20, 35), TMC(20, 90),
   TMC(21, 80), TMC(22, 92), TMC(23, 62), TMC(24, 93), TMC(24, 94),
   TMC(24, 95), TMC(25, 97), TMC(26, 81), TMC(27, 84), TMC(28, 84),
   TMC(29, 81), TMC(30, 80), TMC(31, 98), TMC(32, 81), TMC(33, 101),
   TMC(33, 104), TMC(33, 15), TMC(33, 107), TMC(34, 6), TMC(35, 82)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op dorder x = x
    val op dorder =
    DT(((("nets",0),[]),[]),
       [read"%43%12%67%81$0@@%39%27%39%34%69%64$2$1@$1@@$2$0@$0@@@%71%38%64$3$0@$0@@%39%26%69$4$0@$1@@%64$4$0@$3@@$4$0@$2@@@|@@|@@|@|@@|@"])
  fun op tends x = x
    val op tends =
    DT(((("nets",1),[("pair",[16])]),["DISK_THM"]),
       [read"%45%24%39%15%52%25%46%13%67%100$3@$2@%59$1@$0@@@%42%2%69%90$2@%55$0@$3@@@%72%22%64$2$0@$0@@%40%17%69$3$0@$1@@$2$6$0@@@|@@|@@|@@|@|@|@|@"])
  fun op bounded x = x
    val op bounded =
    DT(((("nets",2),[("pair",[16])]),["DISK_THM"]),
       [read"%48%18%46%13%45%11%67%77%57$2@$1@@$0@@%74%14%71%27%72%1%64$4$0@$0@@%40%22%69$5$0@$1@@%92%79$6@%53$4$0@@$2@@@$3@@|@@|@|@|@@|@|@|@"])
  fun op tendsto x = x
    val op tendsto =
    DT(((("nets",3),[("pair",[16])]),["DISK_THM"]),
       [read"%48%18%39%27%39%34%39%38%67%102%56$3@$2@@$1@$0@@%64%92%96%65@@%79$3@%53$2@$1@@@@%93%79$3@%53$2@$1@@@%79$3@%53$2@$0@@@@@|@|@|@|@"])
  fun op DORDER_LEMMA x = x
    val op DORDER_LEMMA =
    DT(((("nets",4),[("bool",[25,51,53,63]),("nets",[0])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%42%4%42%5%69%64%71%21%64$3$0@$0@@%39%16%69$4$0@$1@@$3$0@@|@@|@@%71%21%64$3$0@$0@@%39%16%69$4$0@$1@@$2$0@@|@@|@@@%71%21%64$3$0@$0@@%39%16%69$4$0@$1@@%64$3$0@@$2$0@@@|@@|@@|@|@@|@"])
  fun op DORDER_NGE x = x
    val op DORDER_NGE =
    DT(((("nets",5),
        [("arithmetic",[93,95,143,144]),("bool",[25,51,53,63]),
         ("nets",[0])]),["DISK_THM"]), [read"%83%70@"])
  fun op DORDER_TENDSTO x = x
    val op DORDER_TENDSTO =
    DT(((("nets",6),
        [("bool",[25,51,63]),("nets",[0,3]),
         ("real",[52,55,61])]),["DISK_THM"]),
       [read"%48%18%39%27%81%102%56$1@$0@@@|@|@"])
  fun op MTOP_TENDS x = x
    val op MTOP_TENDS =
    DT(((("nets",7),
        [("bool",[25,26,51,53,63]),("nets",[1]),("pred_set",[0,18]),
         ("topology",[7,22,27,28,30])]),["DISK_THM"]),
       [read"%48%6%46%13%45%29%39%31%67%100$1@$0@%59%87$3@@$2@@@%51%8%69%92%96%65@@$0@@%72%22%64$4$0@$0@@%40%17%69$5$0@$1@@%92%79$6@%53$4$0@@$3@@@$2@@|@@|@@|@@|@|@|@|@"])
  fun op MTOP_TENDS_UNIQ x = x
    val op MTOP_TENDS_UNIQ =
    DT(((("nets",8),
        [("bool",[25,26,53,63]),("nets",[4,7]),("real",[48,77,144,149]),
         ("sat",[1,3,5,6,7,11,12,14,15]),
         ("topology",[22,23,24])]),["DISK_THM"]),
       [read"%46%13%48%6%69%82$1@@%69%64%100%29@%31@%59%87$0@@$1@@@%100%29@%33@%59%87$0@@$1@@@@%66%31@%33@@@|@|@"])
  fun op SEQ_TENDS x = x
    val op SEQ_TENDS =
    DT(((("nets",9),
        [("arithmetic",[95,143]),("bool",[25,51,56,63]),
         ("nets",[7])]),["DISK_THM"]),
       [read"%48%6%47%30%39%31%67%101$1@$0@%60%87$2@@%70@@@%51%8%69%92%96%65@@$0@@%73%3%50%23%69%70$0@$1@@%92%79$5@%53$4$0@@$3@@@$2@@|@|@@|@@|@|@|@"])
  fun op LIM_TENDS x = x
    val op LIM_TENDS =
    DT(((("nets",10),
        [("bool",[25,26,27,30,35,51,53,54,63]),("nets",[3,7]),
         ("pred_set",[13]),("real",[55,58,61]),
         ("topology",[22,24,31])]),["DISK_THM"]),
       [read"%48%19%49%20%41%9%39%31%40%36%69%85%87$4@@$1@%75@@%67%98$2@$0@%61%88$3@@%102%56$4@$1@@@@@%51%8%69%92%96%65@@$0@@%74%7%64%92%96%65@@$0@@%39%27%69%64%92%96%65@@%79$7@%53$0@$4@@@@%93%79$7@%53$0@$4@@@$1@@@%92%80$6@%54$5$0@@$3@@@$2@@|@@|@@|@@@|@|@|@|@|@"])
  fun op LIM_TENDS2 x = x
    val op LIM_TENDS2 =
    DT(((("nets",11),
        [("bool",[25,26,51,63]),("nets",[10]),
         ("real",[58,60,144,145])]),["DISK_THM"]),
       [read"%48%19%49%20%41%9%39%31%40%36%69%85%87$4@@$1@%75@@%67%98$2@$0@%61%88$3@@%102%56$4@$1@@@@@%51%8%69%92%96%65@@$0@@%74%7%64%92%96%65@@$0@@%39%27%69%64%92%96%65@@%79$7@%53$0@$4@@@@%92%79$7@%53$0@$4@@@$1@@@%92%80$6@%54$5$0@@$3@@@$2@@|@@|@@|@@@|@|@|@|@|@"])
  fun op MR1_BOUNDED x = x
    val op MR1_BOUNDED =
    DT(((("nets",12),
        [("bool",[25,26,36,51,63]),("nets",[2]),
         ("real",[4,47,60,84,161,208,209,213]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%44%10%67%78%58%86@$1@@$0@@%74%14%71%0%64$3$0@$0@@%39%21%69$4$0@$1@@%92%76$3$0@@@$2@@|@@|@|@@|@|@"])
  fun op NET_NULL x = x
    val op NET_NULL =
    DT(((("nets",13),
        [("bool",[25,56]),("nets",[7]),("real",[93,161]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%44%28%51%32%67%99$1@$0@%62%89%86@@$2@@@%99%21%97$2$0@@$1@|@%96%65@@%62%89%86@@$2@@@|@|@|@"])
  fun op NET_CONV_BOUNDED x = x
    val op NET_CONV_BOUNDED =
    DT(((("nets",14),
        [("arithmetic",[17]),("bool",[25,36,51,53,58,63]),("nets",[2,7]),
         ("prim_rec",[7]),("real",[129])]),["DISK_THM"]),
       [read"%43%12%44%28%51%32%69%99$1@$0@%62%89%86@@$2@@@%78%58%86@$2@@$1@@|@|@|@"])
  fun op NET_CONV_NZ x = x
    val op NET_CONV_NZ =
    DT(((("nets",15),
        [("bool",[25,26,27,51,53,54,58,63]),("nets",[7]),
         ("real",[11,162,214]),("topology",[34])]),["DISK_THM"]),
       [read"%43%12%44%28%51%32%69%64%99$1@$0@%62%89%86@@$2@@@%103%68$0@%96%65@@@@@%71%0%64$3$0@$0@@%39%21%69$4$0@$1@@%103%68$3$0@@%96%65@@@@|@@|@@|@|@|@"])
  fun op NET_CONV_IBOUNDED x = x
    val op NET_CONV_IBOUNDED =
    DT(((("nets",16),
        [("bool",[25,51,53,54,56,63]),("nets",[7,12]),("numeral",[3,6]),
         ("real",
         [12,15,17,18,19,26,46,47,60,84,114,130,144,149,168,209,214,215,
          216]),("topology",[34])]),["DISK_THM"]),
       [read"%43%12%44%28%51%32%69%64%99$1@$0@%62%89%86@@$2@@@%103%68$0@%96%65@@@@@%78%58%86@$2@@%21%84$2$0@@|@@|@|@|@"])
  fun op NET_NULL_ADD x = x
    val op NET_NULL_ADD =
    DT(((("nets",17),
        [("bool",[25,51,53,58,63]),("nets",[4,7]),
         ("real",[60,77,144,149,161,208,209]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%44%35%69%64%99$1@%96%65@@%62%89%86@@$2@@@%99$0@%96%65@@%62%89%86@@$2@@@@%99%21%91$2$0@@$1$0@@|@%96%65@@%62%89%86@@$2@@@|@|@@|@"])
  fun op NET_NULL_MUL x = x
    val op NET_NULL_MUL =
    DT(((("nets",18),
        [("bool",[25,26,27,51,53,54,58,63]),("nets",[4,7,12]),
         ("real",[11,60,139,147,161,167,208,210,211]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%44%35%69%64%78%58%86@$2@@$1@@%99$0@%96%65@@%62%89%86@@$2@@@@%99%21%94$2$0@@$1$0@@|@%96%65@@%62%89%86@@$2@@@|@|@@|@"])
  fun op NET_NULL_CMUL x = x
    val op NET_NULL_CMUL =
    DT(((("nets",19),
        [("arithmetic",[17]),("bool",[25,26,27,30,36,51,53,54,58,63,64]),
         ("nets",[7]),("prim_rec",[15]),
         ("real",[20,26,39,55,106,109,129,147,161,204,205,208,211,214]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%51%14%44%28%69%99$0@%96%65@@%62%89%86@@$2@@@%99%21%94$2@$1$0@@|@%96%65@@%62%89%86@@$2@@@|@|@|@"])
  fun op NET_ADD x = x
    val op NET_ADD =
    DT(((("nets",20),
        [("bool",[25,63]),("nets",[13,17]),("real",[4,6,22,38]),
         ("sat",[1,3,5,6,7,11,17,18])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%51%32%44%35%51%37%69%64%99$3@$2@%62%89%86@@$4@@@%99$1@$0@%62%89%86@@$4@@@@%99%21%91$4$0@@$2$0@@|@%91$2@$0@@%62%89%86@@$4@@@|@|@|@|@@|@"])
  fun op NET_NEG x = x
    val op NET_NEG =
    DT(((("nets",21),
        [("nets",[7]),("real",[171,213]),("topology",[34])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%51%32%67%99$1@$0@%62%89%86@@$2@@@%99%21%95$2$0@@|@%95$0@@%62%89%86@@$2@@@|@|@@|@"])
  fun op NET_SUB x = x
    val op NET_SUB =
    DT(((("nets",22),
        [("bool",[25,51,58,63]),("nets",[20,21]),
         ("real",[22])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%51%32%44%35%51%37%69%64%99$3@$2@%62%89%86@@$4@@@%99$1@$0@%62%89%86@@$4@@@@%99%21%97$4$0@@$2$0@@|@%97$2@$0@@%62%89%86@@$4@@@|@|@|@|@@|@"])
  fun op NET_MUL x = x
    val op NET_MUL =
    DT(((("nets",23),
        [("bool",[25,51,56,58,63]),("nets",[13,14,17,18,19]),
         ("real",[6,7,8,9,15,22,31,41,42])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%44%35%51%32%51%37%69%64%99$3@$1@%62%89%86@@$4@@@%99$2@$0@%62%89%86@@$4@@@@%99%21%94$4$0@@$3$0@@|@%94$1@$0@@%62%89%86@@$4@@@|@|@|@|@@|@"])
  fun op NET_INV x = x
    val op NET_INV =
    DT(((("nets",24),
        [("arithmetic",[10,17]),
         ("bool",[25,26,27,51,52,53,54,56,58,63,64]),
         ("nets",[4,7,12,13,15,16]),("prim_rec",[15]),
         ("real",
         [15,17,19,20,29,30,60,99,103,105,106,109,128,161,204,208,210,211,
          212,213,214]),("topology",[34])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%51%32%69%64%99$1@$0@%62%89%86@@$2@@@%103%68$0@%96%65@@@@@%99%21%84$2$0@@|@%84$0@@%62%89%86@@$2@@@|@|@@|@"])
  fun op NET_DIV x = x
    val op NET_DIV =
    DT(((("nets",25),
        [("bool",[25,26,27,51,54,63]),("nets",[23,24]),
         ("real",[26])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%51%32%44%35%51%37%69%64%99$3@$2@%62%89%86@@$4@@@%64%99$1@$0@%62%89%86@@$4@@@%103%68$0@%96%65@@@@@@%99%21%63$4$0@@$2$0@@|@%63$2@$0@@%62%89%86@@$4@@@|@|@|@|@@|@"])
  fun op NET_ABS x = x
    val op NET_ABS =
    DT(((("nets",26),
        [("bool",[25,51,63]),("nets",[7]),("real",[60,230]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%44%28%51%32%69%99$1@$0@%62%89%86@@$2@@@%99%21%76$2$0@@|@%76$0@@%62%89%86@@$2@@@|@|@|@"])
  fun op NET_LE x = x
    val op NET_LE =
    DT(((("nets",27),
        [("bool",[25,43,51,53,58,63]),("nets",[4,7]),
         ("real",[51,94,144,213,231]),("sat",[1,3,5,6,7,11,15]),
         ("topology",[34])]),["DISK_THM"]),
       [read"%43%12%69%81$0@@%44%28%51%32%44%35%51%37%69%64%99$3@$2@%62%89%86@@$4@@@%64%99$1@$0@%62%89%86@@$4@@@%71%0%64$5$0@$0@@%39%21%69$6$0@$1@@%93$5$0@@$3$0@@@|@@|@@@@%93$2@$0@@|@|@|@|@@|@"])
  end
  val _ = DB.bindl "nets"
  [("dorder",dorder,DB.Def), ("tends",tends,DB.Def),
   ("bounded",bounded,DB.Def), ("tendsto",tendsto,DB.Def),
   ("DORDER_LEMMA",DORDER_LEMMA,DB.Thm), ("DORDER_NGE",DORDER_NGE,DB.Thm),
   ("DORDER_TENDSTO",DORDER_TENDSTO,DB.Thm),
   ("MTOP_TENDS",MTOP_TENDS,DB.Thm),
   ("MTOP_TENDS_UNIQ",MTOP_TENDS_UNIQ,DB.Thm),
   ("SEQ_TENDS",SEQ_TENDS,DB.Thm), ("LIM_TENDS",LIM_TENDS,DB.Thm),
   ("LIM_TENDS2",LIM_TENDS2,DB.Thm), ("MR1_BOUNDED",MR1_BOUNDED,DB.Thm),
   ("NET_NULL",NET_NULL,DB.Thm),
   ("NET_CONV_BOUNDED",NET_CONV_BOUNDED,DB.Thm),
   ("NET_CONV_NZ",NET_CONV_NZ,DB.Thm),
   ("NET_CONV_IBOUNDED",NET_CONV_IBOUNDED,DB.Thm),
   ("NET_NULL_ADD",NET_NULL_ADD,DB.Thm),
   ("NET_NULL_MUL",NET_NULL_MUL,DB.Thm),
   ("NET_NULL_CMUL",NET_NULL_CMUL,DB.Thm), ("NET_ADD",NET_ADD,DB.Thm),
   ("NET_NEG",NET_NEG,DB.Thm), ("NET_SUB",NET_SUB,DB.Thm),
   ("NET_MUL",NET_MUL,DB.Thm), ("NET_INV",NET_INV,DB.Thm),
   ("NET_DIV",NET_DIV,DB.Thm), ("NET_ABS",NET_ABS,DB.Thm),
   ("NET_LE",NET_LE,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("topologyTheory.topology_grammars",
                          topologyTheory.topology_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dorder", (Term.prim_mk_const { Name = "dorder", Thy = "nets"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dorder", (Term.prim_mk_const { Name = "dorder", Thy = "nets"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tends", (Term.prim_mk_const { Name = "tends", Thy = "nets"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tends", (Term.prim_mk_const { Name = "tends", Thy = "nets"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "tends"))
       (Infix(HOLgrammars.RIGHT, 750))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bounded", (Term.prim_mk_const { Name = "bounded", Thy = "nets"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bounded", (Term.prim_mk_const { Name = "bounded", Thy = "nets"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tendsto", (Term.prim_mk_const { Name = "tendsto", Thy = "nets"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tendsto", (Term.prim_mk_const { Name = "tendsto", Thy = "nets"}))
  val nets_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "nets"
end
