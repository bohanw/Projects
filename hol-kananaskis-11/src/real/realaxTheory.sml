structure realaxTheory :> realaxTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading realaxTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open hrealTheory
  in end;
  val _ = Theory.link_parents
          ("realax",
          Arbnum.fromString "1488589187",
          Arbnum.fromString "922331")
          [("hreal",
           Arbnum.fromString "1488589171",
           Arbnum.fromString "776121")];
  val _ = Theory.incorporate_types "realax" [("real", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("hreal", "hreal"),
   ID("min", "bool"), ID("realax", "real"), ID("bool", "!"),
   ID("pair", ","), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("bool", "COND"),
   ID("quotient", "QUOTIENT"), ID("bool", "TYPE_DEFINITION"),
   ID("bool", "\\/"), ID("hreal", "hreal_1"), ID("hreal", "hreal_add"),
   ID("hreal", "hreal_inv"), ID("hreal", "hreal_lt"),
   ID("hreal", "hreal_mul"), ID("realax", "hreal_of_real"),
   ID("realax", "hreal_of_treal"), ID("hreal", "hreal_sub"),
   ID("realax", "inv"), ID("realax", "real_0"), ID("realax", "real_1"),
   ID("realax", "real_ABS"), ID("realax", "real_ABS_CLASS"),
   ID("realax", "real_REP"), ID("realax", "real_REP_CLASS"),
   ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("realax", "real_mul"), ID("realax", "real_neg"),
   ID("realax", "real_of_hreal"), ID("realax", "treal_0"),
   ID("realax", "treal_1"), ID("realax", "treal_add"),
   ID("realax", "treal_eq"), ID("realax", "treal_inv"),
   ID("realax", "treal_lt"), ID("realax", "treal_mul"),
   ID("realax", "treal_neg"), ID("realax", "treal_of_hreal"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0, 0], TYOP [0, 0, 1], TYOP [0, 1, 1],
   TYOP [0, 1, 3], TYOP [3], TYOP [0, 1, 5], TYOP [0, 1, 6], TYOP [4],
   TYOP [0, 0, 8], TYOP [0, 8, 8], TYOP [0, 8, 10], TYOP [0, 8, 5],
   TYOP [0, 8, 12], TYOP [0, 8, 6], TYOP [0, 8, 1], TYOP [0, 6, 8],
   TYOP [0, 1, 8], TYOP [0, 1, 0], TYOP [0, 8, 0], TYOP [0, 6, 5],
   TYOP [0, 20, 5], TYOP [0, 12, 5], TYOP [0, 22, 5], TYOP [0, 0, 5],
   TYOP [0, 24, 5], TYOP [0, 0, 2], TYOP [0, 5, 5], TYOP [0, 5, 27],
   TYOP [0, 6, 20], TYOP [0, 0, 24], TYOP [0, 14, 5], TYOP [0, 31, 5],
   TYOP [0, 24, 0], TYOP [0, 6, 1], TYOP [0, 5, 4], TYOP [0, 15, 5],
   TYOP [0, 17, 36], TYOP [0, 7, 37], TYOP [0, 20, 31], TYOP [0, 0, 0],
   TYOP [0, 0, 40]]
  end
  val _ = Theory.incorporate_consts "realax" tyvector
     [("treal_of_hreal", 2), ("treal_neg", 3), ("treal_mul", 4),
      ("treal_lt", 7), ("treal_inv", 3), ("treal_eq", 7), ("treal_add", 4),
      ("treal_1", 1), ("treal_0", 1), ("real_of_hreal", 9),
      ("real_neg", 10), ("real_mul", 11), ("real_lt", 13),
      ("real_add", 11), ("real_REP_CLASS", 14), ("real_REP", 15),
      ("real_ABS_CLASS", 16), ("real_ABS", 17), ("real_1", 8),
      ("real_0", 8), ("inv", 10), ("hreal_of_treal", 18),
      ("hreal_of_real", 19)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 12), TMV("T1", 0), TMV("T1", 8), TMV("T2", 8), TMV("X", 0),
   TMV("Y", 0), TMV("a", 8), TMV("c", 6), TMV("d", 0), TMV("h", 0),
   TMV("h", 1), TMV("i", 0), TMV("i", 1), TMV("p", 1), TMV("q", 1),
   TMV("r", 6), TMV("r", 1), TMV("rep", 14), TMV("s", 8), TMV("x", 0),
   TMV("x", 1), TMV("x", 8), TMV("x1", 0), TMV("x1", 1), TMV("x2", 0),
   TMV("x2", 1), TMV("y", 0), TMV("y", 1), TMV("y", 8), TMV("y1", 0),
   TMV("y1", 1), TMV("y2", 0), TMV("y2", 1), TMV("z", 0), TMV("z", 1),
   TMV("z", 8), TMC(5, 21), TMC(5, 23), TMC(5, 25), TMC(5, 20), TMC(5, 22),
   TMC(6, 26), TMC(7, 28), TMC(8, 28), TMC(8, 29), TMC(8, 30), TMC(8, 7),
   TMC(8, 13), TMC(9, 28), TMC(10, 32), TMC(10, 25), TMC(10, 20),
   TMC(10, 22), TMC(11, 33), TMC(11, 34), TMC(12, 35), TMC(13, 38),
   TMC(14, 39), TMC(15, 28), TMC(16, 0), TMC(17, 41), TMC(18, 40),
   TMC(19, 30), TMC(20, 41), TMC(21, 19), TMC(22, 18), TMC(23, 41),
   TMC(24, 10), TMC(25, 8), TMC(26, 8), TMC(27, 17), TMC(28, 16),
   TMC(29, 15), TMC(30, 14), TMC(31, 11), TMC(32, 13), TMC(33, 11),
   TMC(34, 10), TMC(35, 9), TMC(36, 1), TMC(37, 1), TMC(38, 4), TMC(39, 7),
   TMC(40, 3), TMC(41, 7), TMC(42, 4), TMC(43, 3), TMC(44, 2), TMC(45, 27)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op treal_0 x = x
    val op treal_0 =
    DT(((("realax",11),[]),[]), [read"%46%79@%41%59@%59@@"])
  fun op treal_1 x = x
    val op treal_1 =
    DT(((("realax",12),[]),[]), [read"%46%80@%41%60%59@%59@@%59@@"])
  fun op treal_neg x = x
    val op treal_neg =
    DT(((("realax",13),[("pair",[16])]),["DISK_THM"]),
       [read"%38%19%38%26%46%86%41$1@$0@@@%41$0@$1@@|@|@"])
  fun op treal_add x = x
    val op treal_add =
    DT(((("realax",14),[("pair",[16])]),["DISK_THM"]),
       [read"%38%22%38%29%38%24%38%31%46%81%41$3@$2@@%41$1@$0@@@%41%60$3@$1@@%60$2@$0@@@|@|@|@|@"])
  fun op treal_mul x = x
    val op treal_mul =
    DT(((("realax",15),[("pair",[16])]),["DISK_THM"]),
       [read"%38%22%38%29%38%24%38%31%46%85%41$3@$2@@%41$1@$0@@@%41%60%63$3@$1@@%63$2@$0@@@%60%63$3@$0@@%63$2@$1@@@@|@|@|@|@"])
  fun op treal_lt x = x
    val op treal_lt =
    DT(((("realax",16),[("pair",[16])]),["DISK_THM"]),
       [read"%38%22%38%29%38%24%38%31%43%84%41$3@$2@@%41$1@$0@@@%62%60$3@$0@@%60$1@$2@@@|@|@|@|@"])
  fun op treal_inv x = x
    val op treal_inv =
    DT(((("realax",17),[("pair",[16])]),["DISK_THM"]),
       [read"%38%19%38%26%46%83%41$1@$0@@@%55%45$1@$0@@%79@%55%62$0@$1@@%41%60%61%66$1@$0@@@%59@@%59@@%41%59@%60%61%66$0@$1@@@%59@@@@@|@|@"])
  fun op treal_eq x = x
    val op treal_eq =
    DT(((("realax",18),[("pair",[16])]),["DISK_THM"]),
       [read"%38%22%38%29%38%24%38%31%43%82%41$3@$2@@%41$1@$0@@@%45%60$3@$0@@%60$1@$2@@@|@|@|@|@"])
  fun op treal_of_hreal x = x
    val op treal_of_hreal =
    DT(((("realax",40),[]),[]),
       [read"%38%19%46%87$0@@%41%60$0@%59@@%59@@|@"])
  fun op hreal_of_treal x = x
    val op hreal_of_treal =
    DT(((("realax",41),[("pair",[16])]),["DISK_THM"]),
       [read"%38%19%38%26%45%65%41$1@$0@@@%53%8%45$2@%60$1@$0@@|@@|@|@"])
  fun op real_TY_DEF x = x
    val op real_TY_DEF =
    DT(((("realax",54),
        [("bool",[58]),("quotient",[0,1,2]),
         ("realax",[22])]),["DISK_THM"]),
       [read"%49%17%57%7%51%16%42%82$0@$0@@%44$1@%82$0@@@|@|@$0@|@"])
  fun op real_bijections x = x
    val op real_bijections =
    DT(((("realax",55),[("bool",[117]),("realax",[54])]),["DISK_THM"]),
       [read"%42%40%6%47%71%73$0@@@$0@|@@%36%15%43%7%51%16%42%82$0@$0@@%44$1@%82$0@@@|@|$0@@%44%73%71$0@@@$0@@|@@"])
  fun op real_REP_def x = x
    val op real_REP_def =
    DT(((("realax",57),[]),[]), [read"%40%6%46%72$0@@%54%73$0@@@|@"])
  fun op real_ABS_def x = x
    val op real_ABS_def =
    DT(((("realax",58),[]),[]), [read"%39%16%47%70$0@@%71%82$0@@@|@"])
  fun op real_0 x = x
    val op real_0 = DT(((("realax",60),[]),[]), [read"%47%68@%70%79@@"])
  fun op real_1 x = x
    val op real_1 = DT(((("realax",61),[]),[]), [read"%47%69@%70%80@@"])
  fun op real_neg x = x
    val op real_neg =
    DT(((("realax",62),[]),[]), [read"%40%2%47%77$0@@%70%86%72$0@@@@|@"])
  fun op real_inv x = x
    val op real_inv =
    DT(((("realax",63),[]),[]), [read"%40%2%47%67$0@@%70%83%72$0@@@@|@"])
  fun op real_add x = x
    val op real_add =
    DT(((("realax",64),[]),[]),
       [read"%40%2%40%3%47%74$1@$0@@%70%81%72$1@@%72$0@@@@|@|@"])
  fun op real_mul x = x
    val op real_mul =
    DT(((("realax",65),[]),[]),
       [read"%40%2%40%3%47%76$1@$0@@%70%85%72$1@@%72$0@@@@|@|@"])
  fun op real_lt x = x
    val op real_lt =
    DT(((("realax",66),[]),[]),
       [read"%40%2%40%3%43%75$1@$0@@%84%72$1@@%72$0@@@|@|@"])
  fun op real_of_hreal x = x
    val op real_of_hreal =
    DT(((("realax",67),[]),[]), [read"%38%1%47%78$0@@%70%87$0@@@|@"])
  fun op hreal_of_real x = x
    val op hreal_of_real =
    DT(((("realax",68),[]),[]), [read"%40%2%45%64$0@@%65%72$0@@@|@"])
  fun op HREAL_RDISTRIB x = x
    val op HREAL_RDISTRIB =
    DT(((("realax",0),[("hreal",[56,59])]),["DISK_THM"]),
       [read"%38%19%38%26%38%33%45%63%60$2@$1@@$0@@%60%63$2@$0@@%63$1@$0@@@|@|@|@"])
  fun op HREAL_EQ_ADDR x = x
    val op HREAL_EQ_ADDR =
    DT(((("realax",1),[("hreal",[62])]),["DISK_THM"]),
       [read"%38%19%38%26%88%45%60$1@$0@@$1@@|@|@"])
  fun op HREAL_EQ_ADDL x = x
    val op HREAL_EQ_ADDL =
    DT(((("realax",2),[("bool",[58]),("realax",[1])]),["DISK_THM"]),
       [read"%38%19%38%26%88%45$1@%60$1@$0@@@|@|@"])
  fun op HREAL_EQ_LADD x = x
    val op HREAL_EQ_LADD =
    DT(((("realax",3),
        [("bool",[25,26,27,53]),("hreal",[57,69]),
         ("realax",[1,2])]),["DISK_THM"]),
       [read"%38%19%38%26%38%33%43%45%60$2@$1@@%60$2@$0@@@%45$1@$0@@|@|@|@"])
  fun op HREAL_LT_REFL x = x
    val op HREAL_LT_REFL =
    DT(((("realax",4),
        [("bool",[25,26,27,37,54]),("hreal",[68]),
         ("realax",[2])]),["DISK_THM"]), [read"%38%19%88%62$0@$0@@|@"])
  fun op HREAL_LT_ADDL x = x
    val op HREAL_LT_ADDL =
    DT(((("realax",5),[("hreal",[68])]),["DISK_THM"]),
       [read"%38%19%38%26%62$1@%60$1@$0@@|@|@"])
  fun op HREAL_LT_NE x = x
    val op HREAL_LT_NE =
    DT(((("realax",6),[("hreal",[68]),("realax",[2])]),["DISK_THM"]),
       [read"%38%19%38%26%48%62$1@$0@@%88%45$1@$0@@@|@|@"])
  fun op HREAL_LT_ADDR x = x
    val op HREAL_LT_ADDR =
    DT(((("realax",7),
        [("bool",[25,26,27,37,54,58]),("hreal",[57,68]),
         ("realax",[2])]),["DISK_THM"]),
       [read"%38%19%38%26%88%62%60$1@$0@@$1@@|@|@"])
  fun op HREAL_LT_GT x = x
    val op HREAL_LT_GT =
    DT(((("realax",8),
        [("bool",[25,26,27,37,54,58]),("hreal",[57,68]),
         ("realax",[2])]),["DISK_THM"]),
       [read"%38%19%38%26%48%62$1@$0@@%88%62$0@$1@@@|@|@"])
  fun op HREAL_LT_ADD2 x = x
    val op HREAL_LT_ADD2 =
    DT(((("realax",9),
        [("bool",[25,63]),("hreal",[55,57,68])]),["DISK_THM"]),
       [read"%38%22%38%24%38%29%38%31%48%42%62$3@$1@@%62$2@$0@@@%62%60$3@$2@@%60$1@$0@@@|@|@|@|@"])
  fun op HREAL_LT_LADD x = x
    val op HREAL_LT_LADD =
    DT(((("realax",10),
        [("bool",[25,26,53,58]),("hreal",[57,68]),
         ("realax",[3])]),["DISK_THM"]),
       [read"%38%19%38%26%38%33%43%62%60$2@$1@@%60$2@$0@@@%62$1@$0@@|@|@|@"])
  fun op TREAL_EQ_REFL x = x
    val op TREAL_EQ_REFL =
    DT(((("realax",19),[("pair",[7]),("realax",[18])]),["DISK_THM"]),
       [read"%39%20%82$0@$0@|@"])
  fun op TREAL_EQ_SYM x = x
    val op TREAL_EQ_SYM =
    DT(((("realax",20),
        [("bool",[58]),("pair",[7]),("realax",[18])]),["DISK_THM"]),
       [read"%39%20%39%27%43%82$1@$0@@%82$0@$1@@|@|@"])
  fun op TREAL_EQ_TRANS x = x
    val op TREAL_EQ_TRANS =
    DT(((("realax",21),
        [("bool",[25,56,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[3,18])]),["DISK_THM"]),
       [read"%39%20%39%27%39%34%48%42%82$2@$1@@%82$1@$0@@@%82$2@$0@@|@|@|@"])
  fun op TREAL_EQ_EQUIV x = x
    val op TREAL_EQ_EQUIV =
    DT(((("realax",22),
        [("bool",[14,25,26,53,58,63]),
         ("realax",[19,20,21])]),["DISK_THM"]),
       [read"%39%13%39%14%43%82$1@$0@@%44%82$1@@%82$0@@@|@|@"])
  fun op TREAL_EQ_AP x = x
    val op TREAL_EQ_AP =
    DT(((("realax",23),[("realax",[19])]),["DISK_THM"]),
       [read"%39%13%39%14%48%46$1@$0@@%82$1@$0@@|@|@"])
  fun op TREAL_10 x = x
    val op TREAL_10 =
    DT(((("realax",24),
        [("bool",[25,26,27,54]),("hreal",[62]),
         ("realax",[11,12,18])]),["DISK_THM"]), [read"%88%82%80@%79@@"])
  fun op TREAL_ADD_SYM x = x
    val op TREAL_ADD_SYM =
    DT(((("realax",25),
        [("hreal",[55]),("pair",[7]),("realax",[14])]),["DISK_THM"]),
       [read"%39%20%39%27%46%81$1@$0@@%81$0@$1@@|@|@"])
  fun op TREAL_MUL_SYM x = x
    val op TREAL_MUL_SYM =
    DT(((("realax",26),
        [("bool",[51,56]),("hreal",[55,56]),("pair",[3,7]),
         ("realax",[15])]),["DISK_THM"]),
       [read"%39%20%39%27%46%85$1@$0@@%85$0@$1@@|@|@"])
  fun op TREAL_ADD_ASSOC x = x
    val op TREAL_ADD_ASSOC =
    DT(((("realax",27),
        [("bool",[25,56]),("hreal",[57]),("pair",[7]),
         ("realax",[14])]),["DISK_THM"]),
       [read"%39%20%39%27%39%34%46%81$2@%81$1@$0@@@%81%81$2@$1@@$0@@|@|@|@"])
  fun op TREAL_MUL_ASSOC x = x
    val op TREAL_MUL_ASSOC =
    DT(((("realax",28),
        [("bool",[25,56,58,63]),("hreal",[55,57,58,59]),("pair",[3,7]),
         ("realax",[0,3,15])]),["DISK_THM"]),
       [read"%39%20%39%27%39%34%46%85$2@%85$1@$0@@@%85%85$2@$1@@$0@@|@|@|@"])
  fun op TREAL_LDISTRIB x = x
    val op TREAL_LDISTRIB =
    DT(((("realax",29),
        [("bool",[25,56,63]),("hreal",[55,57,59]),("pair",[3,7]),
         ("realax",[3,14,15])]),["DISK_THM"]),
       [read"%39%20%39%27%39%34%46%85$2@%81$1@$0@@@%81%85$2@$1@@%85$2@$0@@@|@|@|@"])
  fun op TREAL_ADD_LID x = x
    val op TREAL_ADD_LID =
    DT(((("realax",30),
        [("bool",[25,56,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[3,11,14,18])]),["DISK_THM"]),
       [read"%39%20%82%81%79@$0@@$0@|@"])
  fun op TREAL_MUL_LID x = x
    val op TREAL_MUL_LID =
    DT(((("realax",31),
        [("bool",[25,56,63]),("hreal",[55,57,60]),("pair",[7]),
         ("realax",[0,3,12,15,18])]),["DISK_THM"]),
       [read"%39%20%82%85%80@$0@@$0@|@"])
  fun op TREAL_ADD_LINV x = x
    val op TREAL_ADD_LINV =
    DT(((("realax",32),
        [("bool",[25,56,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[3,11,13,14,18])]),["DISK_THM"]),
       [read"%39%20%82%81%86$0@@$0@@%79@|@"])
  fun op TREAL_INV_0 x = x
    val op TREAL_INV_0 =
    DT(((("realax",33),
        [("bool",[25,56,64]),("realax",[11,17,18])]),["DISK_THM"]),
       [read"%82%83%79@@%79@"])
  fun op TREAL_MUL_LINV x = x
    val op TREAL_MUL_LINV =
    DT(((("realax",34),
        [("bool",[25,26,27,53,58,63,64]),("hreal",[55,57,59,60,61,66,67]),
         ("pair",[7]),("realax",[0,3,8,11,12,15,17,18])]),["DISK_THM"]),
       [read"%39%20%48%88%82$0@%79@@@%82%85%83$0@@$0@@%80@@|@"])
  fun op TREAL_LT_TOTAL x = x
    val op TREAL_LT_TOTAL =
    DT(((("realax",35),
        [("hreal",[67]),("pair",[7]),("realax",[16,18])]),["DISK_THM"]),
       [read"%39%20%39%27%58%82$1@$0@@%58%84$1@$0@@%84$0@$1@@@|@|@"])
  fun op TREAL_LT_REFL x = x
    val op TREAL_LT_REFL =
    DT(((("realax",36),[("pair",[7]),("realax",[4,16])]),["DISK_THM"]),
       [read"%39%20%88%84$0@$0@@|@"])
  fun op TREAL_LT_TRANS x = x
    val op TREAL_LT_TRANS =
    DT(((("realax",37),
        [("bool",[25,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[9,10,16])]),["DISK_THM"]),
       [read"%39%20%39%27%39%34%48%42%84$2@$1@@%84$1@$0@@@%84$2@$0@@|@|@|@"])
  fun op TREAL_LT_ADD x = x
    val op TREAL_LT_ADD =
    DT(((("realax",38),
        [("bool",[25,53,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[10,14,16])]),["DISK_THM"]),
       [read"%39%20%39%27%39%34%48%84$1@$0@@%84%81$2@$1@@%81$2@$0@@@|@|@|@"])
  fun op TREAL_LT_MUL x = x
    val op TREAL_LT_MUL =
    DT(((("realax",39),
        [("bool",[25,63]),("hreal",[55,57,59,68]),("pair",[7]),
         ("realax",[0,5,10,11,15,16])]),["DISK_THM"]),
       [read"%39%20%39%27%48%42%84%79@$1@@%84%79@$0@@@%84%79@%85$1@$0@@@|@|@"])
  fun op TREAL_BIJ x = x
    val op TREAL_BIJ =
    DT(((("realax",42),
        [("bool",[14,15,25,26,58,63]),("hreal",[55,57,66]),("pair",[7]),
         ("realax",[3,5,10,11,16,18,40,41])]),["DISK_THM"]),
       [read"%42%38%9%45%65%87$0@@@$0@|@@%39%16%43%84%79@$0@@%82%87%65$0@@@$0@@|@@"])
  fun op TREAL_ISO x = x
    val op TREAL_ISO =
    DT(((("realax",43),
        [("bool",[25,53,63]),("hreal",[55,57]),
         ("realax",[10,16,40])]),["DISK_THM"]),
       [read"%38%9%38%11%48%62$1@$0@@%84%87$1@@%87$0@@@|@|@"])
  fun op TREAL_BIJ_WELLDEF x = x
    val op TREAL_BIJ_WELLDEF =
    DT(((("realax",44),
        [("bool",[14,25,26,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[3,18,41])]),["DISK_THM"]),
       [read"%39%10%39%12%48%82$1@$0@@%45%65$1@@%65$0@@@|@|@"])
  fun op TREAL_NEG_WELLDEF x = x
    val op TREAL_NEG_WELLDEF =
    DT(((("realax",45),
        [("hreal",[55]),("pair",[7]),("realax",[13,18])]),["DISK_THM"]),
       [read"%39%23%39%25%48%82$1@$0@@%82%86$1@@%86$0@@@|@|@"])
  fun op TREAL_ADD_WELLDEFR x = x
    val op TREAL_ADD_WELLDEFR =
    DT(((("realax",46),
        [("bool",[25,53,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[3,14,18])]),["DISK_THM"]),
       [read"%39%23%39%25%39%27%48%82$2@$1@@%82%81$2@$0@@%81$1@$0@@@|@|@|@"])
  fun op TREAL_ADD_WELLDEF x = x
    val op TREAL_ADD_WELLDEF =
    DT(((("realax",47),
        [("bool",[25,63]),("realax",[21,25,46])]),["DISK_THM"]),
       [read"%39%23%39%25%39%30%39%32%48%42%82$3@$2@@%82$1@$0@@@%82%81$3@$1@@%81$2@$0@@@|@|@|@|@"])
  fun op TREAL_MUL_WELLDEFR x = x
    val op TREAL_MUL_WELLDEFR =
    DT(((("realax",48),
        [("bool",[25,58,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[0,15,18])]),["DISK_THM"]),
       [read"%39%23%39%25%39%27%48%82$2@$1@@%82%85$2@$0@@%85$1@$0@@@|@|@|@"])
  fun op TREAL_MUL_WELLDEF x = x
    val op TREAL_MUL_WELLDEF =
    DT(((("realax",49),
        [("bool",[25,63]),("realax",[21,26,48])]),["DISK_THM"]),
       [read"%39%23%39%25%39%30%39%32%48%42%82$3@$2@@%82$1@$0@@@%82%85$3@$1@@%85$2@$0@@@|@|@|@|@"])
  fun op TREAL_LT_WELLDEFR x = x
    val op TREAL_LT_WELLDEFR =
    DT(((("realax",50),
        [("bool",[25,56,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[10,16,18])]),["DISK_THM"]),
       [read"%39%23%39%25%39%27%48%82$2@$1@@%43%84$2@$0@@%84$1@$0@@@|@|@|@"])
  fun op TREAL_LT_WELLDEFL x = x
    val op TREAL_LT_WELLDEFL =
    DT(((("realax",51),
        [("bool",[25,56,63]),("hreal",[55,57]),("pair",[7]),
         ("realax",[3,10,16,18])]),["DISK_THM"]),
       [read"%39%20%39%30%39%32%48%82$1@$0@@%43%84$2@$1@@%84$2@$0@@@|@|@|@"])
  fun op TREAL_LT_WELLDEF x = x
    val op TREAL_LT_WELLDEF =
    DT(((("realax",52),
        [("bool",[25,61,63]),("realax",[50,51])]),["DISK_THM"]),
       [read"%39%23%39%25%39%30%39%32%48%42%82$3@$2@@%82$1@$0@@@%43%84$3@$1@@%84$2@$0@@@|@|@|@|@"])
  fun op TREAL_INV_WELLDEF x = x
    val op TREAL_INV_WELLDEF =
    DT(((("realax",53),
        [("bool",[25,26,27,30,52,53,58,63,64]),("hreal",[55,57,66,67,68]),
         ("pair",[7]),("realax",[3,5,17,18,19])]),["DISK_THM"]),
       [read"%39%23%39%25%48%82$1@$0@@%82%83$1@@%83$0@@@|@|@"])
  fun op real_ABS_REP_CLASS x = x
    val op real_ABS_REP_CLASS =
    DT(((("realax",56),[("realax",[55])]),["DISK_THM"]),
       [read"%42%40%6%47%71%73$0@@@$0@|@@%36%7%43%51%16%42%82$0@$0@@%44$1@%82$0@@@|@@%44%73%71$0@@@$0@@|@@"])
  fun op real_QUOTIENT x = x
    val op real_QUOTIENT =
    DT(((("realax",59),
        [("bool",[15,25,26,51,53,56,58,63,105]),("quotient",[0,1,2,3]),
         ("realax",[22,56,57,58])]),["DISK_THM"]), [read"%56%82@%70@%72@"])
  fun op REAL_ISO_EQ x = x
    val op REAL_ISO_EQ =
    DT(((("realax",69),
        [("bool",[14,25,26,27,53,58,63,105]),("combin",[19]),
         ("hreal",[67]),("quotient",[0,12,13,20,22,40,47,48,49,63,85]),
         ("realax",[22,36,37,43,52,59,66,67])]),["DISK_THM"]),
       [read"%38%9%38%11%43%62$1@$0@@%75%78$1@@%78$0@@@|@|@"])
  fun op REAL_POS x = x
    val op REAL_POS =
    DT(((("realax",70),
        [("bool",[14,25,26,53,56,58,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,42,44,52,59,60,66,67,68])]),["DISK_THM"]),
       [read"%38%4%75%68@%78$0@@|@"])
  fun op SUP_ALLPOS_LEMMA1 x = x
    val op SUP_ALLPOS_LEMMA1 =
    DT(((("realax",71),
        [("bool",[14,25,26,51,53,58,63,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,42,44,52,59,60,66,67,68])]),["DISK_THM"]),
       [read"%37%0%40%28%48%40%21%48$2$0@@%75%68@$0@@|@@%43%52%21%42$2$0@@%75$1@$0@@|@@%50%4%42$2%78$0@@@%75$1@%78$0@@@|@@@|@|@"])
  fun op SUP_ALLPOS_LEMMA2 x = x
    val op SUP_ALLPOS_LEMMA2 =
    DT(((("realax",72),[]),[]),
       [read"%37%0%38%4%43$1%78$0@@@%9$2%78$0@@|$0@@|@|@"])
  fun op SUP_ALLPOS_LEMMA3 x = x
    val op SUP_ALLPOS_LEMMA3 =
    DT(((("realax",73),
        [("bool",[14,25,26,51,53,58,63,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,37,42,44,52,59,60,66,67,68,69])]),["DISK_THM"]),
       [read"%37%0%48%42%40%21%48$1$0@@%75%68@$0@@|@@%42%52%21$1$0@|@@%52%35%40%21%48$2$0@@%75$0@$1@@|@|@@@@%42%50%4%9$2%78$0@@|$0@|@@%50%5%38%4%48%9$3%78$0@@|$0@@%62$0@$1@@|@|@@@|@"])
  fun op SUP_ALLPOS_LEMMA4 x = x
    val op SUP_ALLPOS_LEMMA4 =
    DT(((("realax",74),
        [("bool",[25,53,54,58,63,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,35,37,52,59,66,70])]),["DISK_THM"]),
       [read"%40%28%48%88%75%68@$0@@@%38%19%75$1@%78$0@@|@@|@"])
  fun op REAL_SUP_ALLPOS x = x
    val op REAL_SUP_ALLPOS =
    DT(((("realax",75),
        [("bool",[14,25,26,30,51,53,56,58,63,105]),("combin",[19]),
         ("hreal",[71]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,42,44,52,59,60,66,67,68,69,71,72,73,74]),
         ("sat",[1,3,5,6,7,11,15,17,18])]),["DISK_THM"]),
       [read"%37%0%48%42%40%21%48$1$0@@%75%68@$0@@|@@%42%52%21$1$0@|@@%52%35%40%21%48$2$0@@%75$0@$1@@|@|@@@@%52%18%40%28%43%52%21%42$3$0@@%75$1@$0@@|@@%75$0@$1@@|@|@@|@"])
  fun op REAL_10 x = x
    val op REAL_10 =
    DT(((("realax",76),
        [("bool",[58]),("quotient",[0,13,38,39,47]),
         ("realax",[22,24,59,60,61])]),["DISK_THM"]),
       [read"%88%47%69@%68@@"])
  fun op REAL_ADD_SYM x = x
    val op REAL_ADD_SYM =
    DT(((("realax",77),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,23,25,47,59,64])]),["DISK_THM"]),
       [read"%40%21%40%28%47%74$1@$0@@%74$0@$1@@|@|@"])
  fun op REAL_MUL_SYM x = x
    val op REAL_MUL_SYM =
    DT(((("realax",78),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,23,26,49,59,65])]),["DISK_THM"]),
       [read"%40%21%40%28%47%76$1@$0@@%76$0@$1@@|@|@"])
  fun op REAL_ADD_ASSOC x = x
    val op REAL_ADD_ASSOC =
    DT(((("realax",79),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,23,27,47,59,64])]),["DISK_THM"]),
       [read"%40%21%40%28%40%35%47%74$2@%74$1@$0@@@%74%74$2@$1@@$0@@|@|@|@"])
  fun op REAL_MUL_ASSOC x = x
    val op REAL_MUL_ASSOC =
    DT(((("realax",80),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,23,28,49,59,65])]),["DISK_THM"]),
       [read"%40%21%40%28%40%35%47%76$2@%76$1@$0@@@%76%76$2@$1@@$0@@|@|@|@"])
  fun op REAL_LDISTRIB x = x
    val op REAL_LDISTRIB =
    DT(((("realax",81),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,23,29,47,49,59,64,65])]),["DISK_THM"]),
       [read"%40%21%40%28%40%35%47%76$2@%74$1@$0@@@%74%76$2@$1@@%76$2@$0@@@|@|@|@"])
  fun op REAL_ADD_LID x = x
    val op REAL_ADD_LID =
    DT(((("realax",82),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,30,47,59,60,64])]),["DISK_THM"]),
       [read"%40%21%47%74%68@$0@@$0@|@"])
  fun op REAL_MUL_LID x = x
    val op REAL_MUL_LID =
    DT(((("realax",83),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,31,49,59,61,65])]),["DISK_THM"]),
       [read"%40%21%47%76%69@$0@@$0@|@"])
  fun op REAL_ADD_LINV x = x
    val op REAL_ADD_LINV =
    DT(((("realax",84),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,32,45,47,59,60,62,64])]),["DISK_THM"]),
       [read"%40%21%47%74%77$0@@$0@@%68@|@"])
  fun op REAL_MUL_LINV x = x
    val op REAL_MUL_LINV =
    DT(((("realax",85),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,34,49,53,59,60,61,63,65])]),["DISK_THM"]),
       [read"%40%21%48%88%47$0@%68@@@%47%76%67$0@@$0@@%69@@|@"])
  fun op REAL_LT_TOTAL x = x
    val op REAL_LT_TOTAL =
    DT(((("realax",86),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,38,39,40,47,48,49,63,85]),
         ("realax",[22,35,52,59,66])]),["DISK_THM"]),
       [read"%40%21%40%28%58%47$1@$0@@%58%75$1@$0@@%75$0@$1@@@|@|@"])
  fun op REAL_LT_REFL x = x
    val op REAL_LT_REFL =
    DT(((("realax",87),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("realax",[22,36,52,59,66])]),["DISK_THM"]),
       [read"%40%21%88%75$0@$0@@|@"])
  fun op REAL_LT_TRANS x = x
    val op REAL_LT_TRANS =
    DT(((("realax",88),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("realax",[22,37,52,59,66])]),["DISK_THM"]),
       [read"%40%21%40%28%40%35%48%42%75$2@$1@@%75$1@$0@@@%75$2@$0@@|@|@|@"])
  fun op REAL_LT_IADD x = x
    val op REAL_LT_IADD =
    DT(((("realax",89),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,20,22,40,47,48,49,63,85]),
         ("realax",[22,38,47,52,59,64,66])]),["DISK_THM"]),
       [read"%40%21%40%28%40%35%48%75$1@$0@@%75%74$2@$1@@%74$2@$0@@@|@|@|@"])
  fun op REAL_LT_MUL x = x
    val op REAL_LT_MUL =
    DT(((("realax",90),
        [("bool",[25,53,58,105]),("combin",[19]),
         ("quotient",[0,12,13,20,22,40,47,48,49,63,85]),
         ("realax",[22,39,49,52,59,60,65,66])]),["DISK_THM"]),
       [read"%40%21%40%28%48%42%75%68@$1@@%75%68@$0@@@%75%68@%76$1@$0@@@|@|@"])
  fun op REAL_INV_0 x = x
    val op REAL_INV_0 =
    DT(((("realax",91),
        [("bool",[58]),("quotient",[0,13,20,38,39,47,63]),
         ("realax",[22,33,53,59,60,63])]),["DISK_THM"]),
       [read"%47%67%68@@%68@"])
  end
  val _ = DB.bindl "realax"
  [("treal_0",treal_0,DB.Def), ("treal_1",treal_1,DB.Def),
   ("treal_neg",treal_neg,DB.Def), ("treal_add",treal_add,DB.Def),
   ("treal_mul",treal_mul,DB.Def), ("treal_lt",treal_lt,DB.Def),
   ("treal_inv",treal_inv,DB.Def), ("treal_eq",treal_eq,DB.Def),
   ("treal_of_hreal",treal_of_hreal,DB.Def),
   ("hreal_of_treal",hreal_of_treal,DB.Def),
   ("real_TY_DEF",real_TY_DEF,DB.Def),
   ("real_bijections",real_bijections,DB.Def),
   ("real_REP_def",real_REP_def,DB.Def),
   ("real_ABS_def",real_ABS_def,DB.Def), ("real_0",real_0,DB.Def),
   ("real_1",real_1,DB.Def), ("real_neg",real_neg,DB.Def),
   ("real_inv",real_inv,DB.Def), ("real_add",real_add,DB.Def),
   ("real_mul",real_mul,DB.Def), ("real_lt",real_lt,DB.Def),
   ("real_of_hreal",real_of_hreal,DB.Def),
   ("hreal_of_real",hreal_of_real,DB.Def),
   ("HREAL_RDISTRIB",HREAL_RDISTRIB,DB.Thm),
   ("HREAL_EQ_ADDR",HREAL_EQ_ADDR,DB.Thm),
   ("HREAL_EQ_ADDL",HREAL_EQ_ADDL,DB.Thm),
   ("HREAL_EQ_LADD",HREAL_EQ_LADD,DB.Thm),
   ("HREAL_LT_REFL",HREAL_LT_REFL,DB.Thm),
   ("HREAL_LT_ADDL",HREAL_LT_ADDL,DB.Thm),
   ("HREAL_LT_NE",HREAL_LT_NE,DB.Thm),
   ("HREAL_LT_ADDR",HREAL_LT_ADDR,DB.Thm),
   ("HREAL_LT_GT",HREAL_LT_GT,DB.Thm),
   ("HREAL_LT_ADD2",HREAL_LT_ADD2,DB.Thm),
   ("HREAL_LT_LADD",HREAL_LT_LADD,DB.Thm),
   ("TREAL_EQ_REFL",TREAL_EQ_REFL,DB.Thm),
   ("TREAL_EQ_SYM",TREAL_EQ_SYM,DB.Thm),
   ("TREAL_EQ_TRANS",TREAL_EQ_TRANS,DB.Thm),
   ("TREAL_EQ_EQUIV",TREAL_EQ_EQUIV,DB.Thm),
   ("TREAL_EQ_AP",TREAL_EQ_AP,DB.Thm), ("TREAL_10",TREAL_10,DB.Thm),
   ("TREAL_ADD_SYM",TREAL_ADD_SYM,DB.Thm),
   ("TREAL_MUL_SYM",TREAL_MUL_SYM,DB.Thm),
   ("TREAL_ADD_ASSOC",TREAL_ADD_ASSOC,DB.Thm),
   ("TREAL_MUL_ASSOC",TREAL_MUL_ASSOC,DB.Thm),
   ("TREAL_LDISTRIB",TREAL_LDISTRIB,DB.Thm),
   ("TREAL_ADD_LID",TREAL_ADD_LID,DB.Thm),
   ("TREAL_MUL_LID",TREAL_MUL_LID,DB.Thm),
   ("TREAL_ADD_LINV",TREAL_ADD_LINV,DB.Thm),
   ("TREAL_INV_0",TREAL_INV_0,DB.Thm),
   ("TREAL_MUL_LINV",TREAL_MUL_LINV,DB.Thm),
   ("TREAL_LT_TOTAL",TREAL_LT_TOTAL,DB.Thm),
   ("TREAL_LT_REFL",TREAL_LT_REFL,DB.Thm),
   ("TREAL_LT_TRANS",TREAL_LT_TRANS,DB.Thm),
   ("TREAL_LT_ADD",TREAL_LT_ADD,DB.Thm),
   ("TREAL_LT_MUL",TREAL_LT_MUL,DB.Thm), ("TREAL_BIJ",TREAL_BIJ,DB.Thm),
   ("TREAL_ISO",TREAL_ISO,DB.Thm),
   ("TREAL_BIJ_WELLDEF",TREAL_BIJ_WELLDEF,DB.Thm),
   ("TREAL_NEG_WELLDEF",TREAL_NEG_WELLDEF,DB.Thm),
   ("TREAL_ADD_WELLDEFR",TREAL_ADD_WELLDEFR,DB.Thm),
   ("TREAL_ADD_WELLDEF",TREAL_ADD_WELLDEF,DB.Thm),
   ("TREAL_MUL_WELLDEFR",TREAL_MUL_WELLDEFR,DB.Thm),
   ("TREAL_MUL_WELLDEF",TREAL_MUL_WELLDEF,DB.Thm),
   ("TREAL_LT_WELLDEFR",TREAL_LT_WELLDEFR,DB.Thm),
   ("TREAL_LT_WELLDEFL",TREAL_LT_WELLDEFL,DB.Thm),
   ("TREAL_LT_WELLDEF",TREAL_LT_WELLDEF,DB.Thm),
   ("TREAL_INV_WELLDEF",TREAL_INV_WELLDEF,DB.Thm),
   ("real_ABS_REP_CLASS",real_ABS_REP_CLASS,DB.Thm),
   ("real_QUOTIENT",real_QUOTIENT,DB.Thm),
   ("REAL_ISO_EQ",REAL_ISO_EQ,DB.Thm), ("REAL_POS",REAL_POS,DB.Thm),
   ("SUP_ALLPOS_LEMMA1",SUP_ALLPOS_LEMMA1,DB.Thm),
   ("SUP_ALLPOS_LEMMA2",SUP_ALLPOS_LEMMA2,DB.Thm),
   ("SUP_ALLPOS_LEMMA3",SUP_ALLPOS_LEMMA3,DB.Thm),
   ("SUP_ALLPOS_LEMMA4",SUP_ALLPOS_LEMMA4,DB.Thm),
   ("REAL_SUP_ALLPOS",REAL_SUP_ALLPOS,DB.Thm), ("REAL_10",REAL_10,DB.Thm),
   ("REAL_ADD_SYM",REAL_ADD_SYM,DB.Thm),
   ("REAL_MUL_SYM",REAL_MUL_SYM,DB.Thm),
   ("REAL_ADD_ASSOC",REAL_ADD_ASSOC,DB.Thm),
   ("REAL_MUL_ASSOC",REAL_MUL_ASSOC,DB.Thm),
   ("REAL_LDISTRIB",REAL_LDISTRIB,DB.Thm),
   ("REAL_ADD_LID",REAL_ADD_LID,DB.Thm),
   ("REAL_MUL_LID",REAL_MUL_LID,DB.Thm),
   ("REAL_ADD_LINV",REAL_ADD_LINV,DB.Thm),
   ("REAL_MUL_LINV",REAL_MUL_LINV,DB.Thm),
   ("REAL_LT_TOTAL",REAL_LT_TOTAL,DB.Thm),
   ("REAL_LT_REFL",REAL_LT_REFL,DB.Thm),
   ("REAL_LT_TRANS",REAL_LT_TRANS,DB.Thm),
   ("REAL_LT_IADD",REAL_LT_IADD,DB.Thm),
   ("REAL_LT_MUL",REAL_LT_MUL,DB.Thm), ("REAL_INV_0",REAL_INV_0,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("hrealTheory.hreal_grammars",
                          hrealTheory.hreal_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_0", (Term.prim_mk_const { Name = "treal_0", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_0", (Term.prim_mk_const { Name = "treal_0", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_1", (Term.prim_mk_const { Name = "treal_1", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_1", (Term.prim_mk_const { Name = "treal_1", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_neg", (Term.prim_mk_const { Name = "treal_neg", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_neg", (Term.prim_mk_const { Name = "treal_neg", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_add", (Term.prim_mk_const { Name = "treal_add", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_add", (Term.prim_mk_const { Name = "treal_add", Thy = "realax"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "treal_add"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_mul", (Term.prim_mk_const { Name = "treal_mul", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_mul", (Term.prim_mk_const { Name = "treal_mul", Thy = "realax"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "treal_mul"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_lt", (Term.prim_mk_const { Name = "treal_lt", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_lt", (Term.prim_mk_const { Name = "treal_lt", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_inv", (Term.prim_mk_const { Name = "treal_inv", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_inv", (Term.prim_mk_const { Name = "treal_inv", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_eq", (Term.prim_mk_const { Name = "treal_eq", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_eq", (Term.prim_mk_const { Name = "treal_eq", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_of_hreal", (Term.prim_mk_const { Name = "treal_of_hreal", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("treal_of_hreal", (Term.prim_mk_const { Name = "treal_of_hreal", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_of_treal", (Term.prim_mk_const { Name = "hreal_of_treal", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_of_treal", (Term.prim_mk_const { Name = "hreal_of_treal", Thy = "realax"}))
  val _ = update_grms temp_add_type "real"
  val _ = update_grms temp_add_type "real"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_REP_CLASS", (Term.prim_mk_const { Name = "real_REP_CLASS", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_ABS_CLASS", (Term.prim_mk_const { Name = "real_ABS_CLASS", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_REP", (Term.prim_mk_const { Name = "real_REP", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_REP", (Term.prim_mk_const { Name = "real_REP", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_ABS", (Term.prim_mk_const { Name = "real_ABS", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_ABS", (Term.prim_mk_const { Name = "real_ABS", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_0", (Term.prim_mk_const { Name = "real_0", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_0", (Term.prim_mk_const { Name = "real_0", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_1", (Term.prim_mk_const { Name = "real_1", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_1", (Term.prim_mk_const { Name = "real_1", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_neg", (Term.prim_mk_const { Name = "real_neg", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_neg", (Term.prim_mk_const { Name = "real_neg", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inv", (Term.prim_mk_const { Name = "inv", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inv", (Term.prim_mk_const { Name = "inv", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_add", (Term.prim_mk_const { Name = "real_add", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_add", (Term.prim_mk_const { Name = "real_add", Thy = "realax"}))
  val _ = update_grms temp_add_infix ("real_add", 500, HOLgrammars.LEFT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_mul", (Term.prim_mk_const { Name = "real_mul", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_mul", (Term.prim_mk_const { Name = "real_mul", Thy = "realax"}))
  val _ = update_grms temp_add_infix ("real_mul", 600, HOLgrammars.LEFT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_lt", (Term.prim_mk_const { Name = "real_lt", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_lt", (Term.prim_mk_const { Name = "real_lt", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_of_hreal", (Term.prim_mk_const { Name = "real_of_hreal", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_of_hreal", (Term.prim_mk_const { Name = "real_of_hreal", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_of_real", (Term.prim_mk_const { Name = "hreal_of_real", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_of_real", (Term.prim_mk_const { Name = "hreal_of_real", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "~", Thy = "bool"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "+", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "*", Thy = "arithmetic"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "<", Thy = "prim_rec"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "real_neg", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numeric_negate", (Term.prim_mk_const { Name = "real_neg", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "real_add", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "real_mul", Thy = "realax"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "real_lt", Thy = "realax"}))
  val realax_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "realax"
end
