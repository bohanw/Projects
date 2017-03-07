structure hrealTheory :> hrealTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading hrealTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open hratTheory
  in end;
  val _ = Theory.link_parents
          ("hreal",
          Arbnum.fromString "1488589171",
          Arbnum.fromString "776121")
          [("hrat",
           Arbnum.fromString "1488589161",
           Arbnum.fromString "197410")];
  val _ = Theory.incorporate_types "hreal" [("hreal", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("hrat", "hrat"),
   ID("hreal", "hreal"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("bool", "TYPE_DEFINITION"), ID("bool", "\\/"), ID("hreal", "cut"),
   ID("hreal", "cut_of_hrat"), ID("hrat", "hrat_1"),
   ID("hrat", "hrat_add"), ID("hrat", "hrat_inv"), ID("hreal", "hrat_lt"),
   ID("hrat", "hrat_mul"), ID("hreal", "hreal_1"),
   ID("hreal", "hreal_add"), ID("hreal", "hreal_inv"),
   ID("hreal", "hreal_lt"), ID("hreal", "hreal_mul"),
   ID("hreal", "hreal_sub"), ID("hreal", "hreal_sup"),
   ID("hreal", "isacut"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [0, 2, 0], TYOP [3],
   TYOP [0, 4, 0], TYOP [0, 5, 4], TYOP [0, 4, 4], TYOP [0, 4, 7],
   TYOP [0, 4, 5], TYOP [0, 2, 4], TYOP [0, 1, 2], TYOP [0, 4, 2],
   TYOP [0, 3, 0], TYOP [0, 5, 0], TYOP [0, 14, 0], TYOP [0, 0, 0],
   TYOP [0, 0, 16], TYOP [0, 2, 3], TYOP [0, 12, 0], TYOP [0, 19, 0],
   TYOP [0, 3, 19], TYOP [0, 1, 1], TYOP [0, 1, 22]]
  end
  val _ = Theory.incorporate_consts "hreal" tyvector
     [("isacut", 3), ("hreal_sup", 6), ("hreal_sub", 8), ("hreal_mul", 8),
      ("hreal_lt", 9), ("hreal_inv", 7), ("hreal_add", 8), ("hreal_1", 4),
      ("hreal", 10), ("hrat_lt", 11), ("cut_of_hrat", 11), ("cut", 12)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("C", 2), TMV("D", 4), TMV("P", 5), TMV("X", 4), TMV("Y", 4),
   TMV("Z", 4), TMV("a", 4), TMV("d", 1), TMV("e", 1), TMV("h", 1),
   TMV("r", 2), TMV("rep", 12), TMV("u", 1), TMV("v", 1), TMV("w", 1),
   TMV("x", 1), TMV("y", 1), TMV("z", 1), TMC(4, 13), TMC(4, 15),
   TMC(4, 3), TMC(4, 14), TMC(5, 17), TMC(6, 17), TMC(6, 18), TMC(6, 11),
   TMC(6, 9), TMC(7, 17), TMC(8, 20), TMC(8, 3), TMC(8, 14), TMC(9, 21),
   TMC(10, 17), TMC(11, 12), TMC(12, 11), TMC(13, 1), TMC(14, 23),
   TMC(15, 22), TMC(16, 11), TMC(17, 23), TMC(3, 10), TMC(18, 4),
   TMC(19, 8), TMC(20, 7), TMC(21, 9), TMC(22, 8), TMC(23, 8), TMC(24, 6),
   TMC(25, 3), TMC(26, 16)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op hrat_lt x = x
    val op hrat_lt =
    DT(((("hreal",0),[]),[]),
       [read"%20%15%20%16%23%38$1@$0@@%29%7%25$1@%36$2@$0@@|@@|@|@"])
  fun op isacut x = x
    val op isacut =
    DT(((("hreal",31),[]),[]),
       [read"%18%0%23%48$0@@%22%29%15$1$0@|@@%22%29%15%49$1$0@@|@@%22%20%15%20%16%27%22$2$1@@%38$0@$1@@@$2$0@@|@|@@%20%15%27$1$0@@%29%16%22$2$0@@%38$1@$0@@|@@|@@@@@|@"])
  fun op cut_of_hrat x = x
    val op cut_of_hrat =
    DT(((("hreal",32),[]),[]), [read"%20%15%24%34$0@@%16%38$0@$1@|@|@"])
  fun op hreal_TY_DEF x = x
    val op hreal_TY_DEF =
    DT(((("hreal",34),[("hreal",[33])]),["DISK_THM"]),
       [read"%28%11%31%48@$0@|@"])
  fun op hreal_tybij x = x
    val op hreal_tybij =
    DT(((("hreal",35),[("bool",[117]),("hreal",[34])]),["DISK_THM"]),
       [read"%22%21%6%26%40%33$0@@@$0@|@@%18%10%23%48$0@@%24%33%40$0@@@$0@@|@@"])
  fun op hreal_1 x = x
    val op hreal_1 =
    DT(((("hreal",46),[]),[]), [read"%26%41@%40%34%35@@@"])
  fun op hreal_add x = x
    val op hreal_add =
    DT(((("hreal",47),[]),[]),
       [read"%21%3%21%4%26%42$1@$0@@%40%14%29%15%29%16%22%25$2@%36$1@$0@@@%22%33$4@$1@@%33$3@$0@@@|@|@|@@|@|@"])
  fun op hreal_mul x = x
    val op hreal_mul =
    DT(((("hreal",48),[]),[]),
       [read"%21%3%21%4%26%45$1@$0@@%40%14%29%15%29%16%22%25$2@%39$1@$0@@@%22%33$4@$1@@%33$3@$0@@@|@|@|@@|@|@"])
  fun op hreal_inv x = x
    val op hreal_inv =
    DT(((("hreal",49),[]),[]),
       [read"%21%3%26%43$0@@%40%14%29%7%22%38$0@%35@@%20%15%27%33$3@$0@@%38%39$2@$0@@$1@@|@@|@|@@|@"])
  fun op hreal_sup x = x
    val op hreal_sup =
    DT(((("hreal",50),[]),[]),
       [read"%19%2%26%47$0@@%40%14%30%3%22$2$0@@%33$0@$1@@|@|@@|@"])
  fun op hreal_lt x = x
    val op hreal_lt =
    DT(((("hreal",51),[]),[]),
       [read"%21%3%21%4%23%44$1@$0@@%22%49%26$1@$0@@@%20%15%27%33$2@$0@@%33$1@$0@@|@@@|@|@"])
  fun op hreal_sub x = x
    val op hreal_sub =
    DT(((("hreal",63),[]),[]),
       [read"%21%4%21%3%26%46$1@$0@@%40%14%29%15%22%49%33$2@$0@@@%33$3@%36$0@$1@@@|@|@@|@|@"])
  fun op HRAT_LT_REFL x = x
    val op HRAT_LT_REFL =
    DT(((("hreal",1),
        [("bool",[25,26,27,37,54,58]),("hrat",[48]),
         ("hreal",[0])]),["DISK_THM"]), [read"%20%15%49%38$0@$0@@|@"])
  fun op HRAT_LT_TRANS x = x
    val op HRAT_LT_TRANS =
    DT(((("hreal",2),
        [("bool",[58]),("hrat",[42]),("hreal",[0])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%27%22%38$2@$1@@%38$1@$0@@@%38$2@$0@@|@|@|@"])
  fun op HRAT_LT_ANTISYM x = x
    val op HRAT_LT_ANTISYM =
    DT(((("hreal",3),
        [("bool",[25,26,27,53,54]),("hreal",[1,2])]),["DISK_THM"]),
       [read"%20%15%20%16%49%22%38$1@$0@@%38$0@$1@@@|@|@"])
  fun op HRAT_LT_TOTAL x = x
    val op HRAT_LT_TOTAL =
    DT(((("hreal",4),
        [("bool",[25,52,63]),("hrat",[49]),("hreal",[0])]),["DISK_THM"]),
       [read"%20%15%20%16%32%25$1@$0@@%32%38$1@$0@@%38$0@$1@@@|@|@"])
  fun op HRAT_MUL_RID x = x
    val op HRAT_MUL_RID =
    DT(((("hreal",5),[("hrat",[43,46])]),["DISK_THM"]),
       [read"%20%15%25%39$0@%35@@$0@|@"])
  fun op HRAT_MUL_RINV x = x
    val op HRAT_MUL_RINV =
    DT(((("hreal",6),[("hrat",[43,47])]),["DISK_THM"]),
       [read"%20%15%25%39$0@%37$0@@@%35@|@"])
  fun op HRAT_RDISTRIB x = x
    val op HRAT_RDISTRIB =
    DT(((("hreal",7),[("hrat",[43,45])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%25%39%36$2@$1@@$0@@%36%39$2@$0@@%39$1@$0@@@|@|@|@"])
  fun op HRAT_LT_ADDL x = x
    val op HRAT_LT_ADDL =
    DT(((("hreal",8),[("hreal",[0])]),[]),
       [read"%20%15%20%16%38$1@%36$1@$0@@|@|@"])
  fun op HRAT_LT_ADDR x = x
    val op HRAT_LT_ADDR =
    DT(((("hreal",9),[("hrat",[41]),("hreal",[8])]),["DISK_THM"]),
       [read"%20%15%20%16%38$0@%36$1@$0@@|@|@"])
  fun op HRAT_LT_GT x = x
    val op HRAT_LT_GT =
    DT(((("hreal",10),
        [("bool",[25,26,27,37,54,58]),("hrat",[42,48]),
         ("hreal",[0])]),["DISK_THM"]),
       [read"%20%15%20%16%27%38$1@$0@@%49%38$0@$1@@@|@|@"])
  fun op HRAT_LT_NE x = x
    val op HRAT_LT_NE =
    DT(((("hreal",11),[("bool",[26,54]),("hreal",[1])]),["DISK_THM"]),
       [read"%20%15%20%16%27%38$1@$0@@%49%25$1@$0@@@|@|@"])
  fun op HRAT_EQ_LADD x = x
    val op HRAT_EQ_LADD =
    DT(((("hreal",12),
        [("bool",[25,26,27,53,56,58]),("hrat",[42,48,49])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%23%25%36$2@$1@@%36$2@$0@@@%25$1@$0@@|@|@|@"])
  fun op HRAT_EQ_LMUL x = x
    val op HRAT_EQ_LMUL =
    DT(((("hreal",13),
        [("bool",[25,26,53]),("hrat",[44,46,47])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%23%25%39$2@$1@@%39$2@$0@@@%25$1@$0@@|@|@|@"])
  fun op HRAT_LT_ADD2 x = x
    val op HRAT_LT_ADD2 =
    DT(((("hreal",14),
        [("bool",[25,63]),("hrat",[41,42]),("hreal",[0])]),["DISK_THM"]),
       [read"%20%12%20%13%20%15%20%16%27%22%38$3@$1@@%38$2@$0@@@%38%36$3@$2@@%36$1@$0@@@|@|@|@|@"])
  fun op HRAT_LT_LADD x = x
    val op HRAT_LT_LADD =
    DT(((("hreal",15),
        [("bool",[25,26,53,58]),("hrat",[42]),
         ("hreal",[0,12])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%23%38%36$0@$2@@%36$0@$1@@@%38$2@$1@@|@|@|@"])
  fun op HRAT_LT_RADD x = x
    val op HRAT_LT_RADD =
    DT(((("hreal",16),[("hrat",[41]),("hreal",[15])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%23%38%36$2@$0@@%36$1@$0@@@%38$2@$1@@|@|@|@"])
  fun op HRAT_LT_MUL2 x = x
    val op HRAT_LT_MUL2 =
    DT(((("hreal",17),
        [("bool",[58]),("hrat",[42,45]),("hreal",[0,7,12])]),["DISK_THM"]),
       [read"%20%12%20%13%20%15%20%16%27%22%38$3@$1@@%38$2@$0@@@%38%39$3@$2@@%39$1@$0@@@|@|@|@|@"])
  fun op HRAT_LT_LMUL x = x
    val op HRAT_LT_LMUL =
    DT(((("hreal",18),
        [("bool",[25,26,53,58]),("hrat",[44,45,46,47]),
         ("hreal",[0,13])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%23%38%39$0@$2@@%39$0@$1@@@%38$2@$1@@|@|@|@"])
  fun op HRAT_LT_RMUL x = x
    val op HRAT_LT_RMUL =
    DT(((("hreal",19),[("hrat",[43]),("hreal",[18])]),["DISK_THM"]),
       [read"%20%15%20%16%20%17%23%38%39$2@$0@@%39$1@$0@@@%38$2@$1@@|@|@|@"])
  fun op HRAT_LT_LMUL1 x = x
    val op HRAT_LT_LMUL1 =
    DT(((("hreal",20),
        [("bool",[58]),("hrat",[46]),("hreal",[19])]),["DISK_THM"]),
       [read"%20%15%20%16%23%38%39$1@$0@@$0@@%38$1@%35@@|@|@"])
  fun op HRAT_LT_RMUL1 x = x
    val op HRAT_LT_RMUL1 =
    DT(((("hreal",21),[("hrat",[43]),("hreal",[20])]),["DISK_THM"]),
       [read"%20%15%20%16%23%38%39$1@$0@@$1@@%38$0@%35@@|@|@"])
  fun op HRAT_GT_LMUL1 x = x
    val op HRAT_GT_LMUL1 =
    DT(((("hreal",22),
        [("bool",[58]),("hrat",[46]),("hreal",[19])]),["DISK_THM"]),
       [read"%20%15%20%16%23%38$0@%39$1@$0@@@%38%35@$1@@|@|@"])
  fun op HRAT_LT_L1 x = x
    val op HRAT_LT_L1 =
    DT(((("hreal",23),[("hrat",[47]),("hreal",[18])]),["DISK_THM"]),
       [read"%20%15%20%16%23%38%39%37$1@@$0@@%35@@%38$0@$1@@|@|@"])
  fun op HRAT_LT_R1 x = x
    val op HRAT_LT_R1 =
    DT(((("hreal",24),[("hreal",[6,19])]),["DISK_THM"]),
       [read"%20%15%20%16%23%38%39$1@%37$0@@@%35@@%38$1@$0@@|@|@"])
  fun op HRAT_GT_L1 x = x
    val op HRAT_GT_L1 =
    DT(((("hreal",25),[("hrat",[47]),("hreal",[18])]),["DISK_THM"]),
       [read"%20%15%20%16%23%38%35@%39%37$1@@$0@@@%38$1@$0@@|@|@"])
  fun op HRAT_INV_MUL x = x
    val op HRAT_INV_MUL =
    DT(((("hreal",26),
        [("bool",[25,56,63]),("hrat",[43,44,46]),
         ("hreal",[6,13])]),["DISK_THM"]),
       [read"%20%15%20%16%25%37%39$1@$0@@@%39%37$1@@%37$0@@@|@|@"])
  fun op HRAT_UP x = x
    val op HRAT_UP =
    DT(((("hreal",27),[("hreal",[0])]),[]),
       [read"%20%15%29%16%38$1@$0@|@|@"])
  fun op HRAT_DOWN x = x
    val op HRAT_DOWN =
    DT(((("hreal",28),
        [("bool",[58]),("hrat",[46]),("hreal",[0,21,24])]),["DISK_THM"]),
       [read"%20%15%29%16%38$0@$1@|@|@"])
  fun op HRAT_DOWN2 x = x
    val op HRAT_DOWN2 =
    DT(((("hreal",29),
        [("bool",[25,51,58,63]),("hrat",[42,49]),
         ("hreal",[0,8,28])]),["DISK_THM"]),
       [read"%20%15%20%16%29%17%22%38$0@$2@@%38$0@$1@@|@|@|@"])
  fun op HRAT_MEAN x = x
    val op HRAT_MEAN =
    DT(((("hreal",30),
        [("bool",[25,51,58,63]),("hrat",[44,45,47]),
         ("hreal",[5,15,16,19])]),["DISK_THM"]),
       [read"%20%15%20%16%27%38$1@$0@@%29%17%22%38$2@$0@@%38$0@$1@@|@@|@|@"])
  fun op ISACUT_HRAT x = x
    val op ISACUT_HRAT =
    DT(((("hreal",33),
        [("bool",[25,36,41,63]),("hreal",[2,3,27,28,30,31,32]),
         ("sat",[1,3,5,6,7,12,15,17,18,23])]),["DISK_THM"]),
       [read"%20%9%48%34$0@@|@"])
  fun op EQUAL_CUTS x = x
    val op EQUAL_CUTS =
    DT(((("hreal",36),[("bool",[25,53]),("hreal",[35])]),["DISK_THM"]),
       [read"%21%3%21%4%27%24%33$1@@%33$0@@@%26$1@$0@@|@|@"])
  fun op CUT_ISACUT x = x
    val op CUT_ISACUT =
    DT(((("hreal",37),[("bool",[25,36,56]),("hreal",[35])]),["DISK_THM"]),
       [read"%21%3%48%33$0@@|@"])
  fun op CUT_NONEMPTY x = x
    val op CUT_NONEMPTY =
    DT(((("hreal",38),
        [("bool",[25,36,63]),("hreal",[31,37])]),["DISK_THM"]),
       [read"%21%3%29%15%33$1@$0@|@|@"])
  fun op CUT_BOUNDED x = x
    val op CUT_BOUNDED =
    DT(((("hreal",39),
        [("bool",[25,36,63]),("hreal",[31,37])]),["DISK_THM"]),
       [read"%21%3%29%15%49%33$1@$0@@|@|@"])
  fun op CUT_DOWN x = x
    val op CUT_DOWN =
    DT(((("hreal",40),
        [("bool",[25,36,63]),("hreal",[31,37])]),["DISK_THM"]),
       [read"%21%3%20%15%20%16%27%22%33$2@$1@@%38$0@$1@@@%33$2@$0@@|@|@|@"])
  fun op CUT_UP x = x
    val op CUT_UP =
    DT(((("hreal",41),
        [("bool",[25,36,63]),("hreal",[31,37])]),["DISK_THM"]),
       [read"%21%3%20%15%27%33$1@$0@@%29%16%22%33$2@$0@@%38$1@$0@@|@@|@|@"])
  fun op CUT_UBOUND x = x
    val op CUT_UBOUND =
    DT(((("hreal",42),
        [("bool",[25,36,63]),("hreal",[40]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%21%3%20%15%20%16%27%22%49%33$2@$1@@@%38$1@$0@@@%49%33$2@$0@@@|@|@|@"])
  fun op CUT_STRADDLE x = x
    val op CUT_STRADDLE =
    DT(((("hreal",43),
        [("bool",[25,26,27,51,53,54,63]),("hreal",[4,40]),
         ("sat",[1,3,7])]),["DISK_THM"]),
       [read"%21%3%20%15%20%16%27%22%33$2@$1@@%49%33$2@$0@@@@%38$1@$0@@|@|@|@"])
  fun op CUT_NEARTOP_ADD x = x
    val op CUT_NEARTOP_ADD =
    DT(((("hreal",44),
        [("arithmetic",[28,109]),("bool",[14,25,26,27,36,51,53,54,58,63]),
         ("hrat",[44,45,46,50,51]),("hreal",[0,5,6,9,38,39,42]),
         ("prim_rec",[6,15])]),["DISK_THM"]),
       [read"%21%3%20%8%29%15%22%33$2@$0@@%49%33$2@%36$0@$1@@@@|@|@|@"])
  fun op CUT_NEARTOP_MUL x = x
    val op CUT_NEARTOP_MUL =
    DT(((("hreal",45),
        [("bool",[25,26,27,30,51,53,54,63]),("hrat",[46]),
         ("hreal",[0,7,15,16,18,38,42,43,44])]),["DISK_THM"]),
       [read"%21%3%20%12%27%38%35@$0@@%29%15%22%33$2@$0@@%49%33$2@%39$1@$0@@@@|@@|@|@"])
  fun op HREAL_INV_ISACUT x = x
    val op HREAL_INV_ISACUT =
    DT(((("hreal",52),
        [("bool",[25,26,51,53,58,63]),("hrat",[43,44,47]),
         ("hreal",[2,10,19,21,22,23,25,28,30,31,38,39,43])]),["DISK_THM"]),
       [read"%21%3%48%14%29%7%22%38$0@%35@@%20%15%27%33$3@$0@@%38%39$2@$0@@$1@@|@@|@|@|@"])
  fun op HREAL_ADD_ISACUT x = x
    val op HREAL_ADD_ISACUT =
    DT(((("hreal",53),
        [("bool",[25,26,27,51,53,54,56,58,63]),("hrat",[44,45,47]),
         ("hreal",[5,11,14,16,20,24,31,38,39,40,41,43])]),["DISK_THM"]),
       [read"%21%3%21%4%48%14%29%15%29%16%22%25$2@%36$1@$0@@@%22%33$4@$1@@%33$3@$0@@@|@|@|@|@|@"])
  fun op HREAL_MUL_ISACUT x = x
    val op HREAL_MUL_ISACUT =
    DT(((("hreal",54),
        [("bool",[25,26,27,51,53,54,56,58,63]),("hrat",[43,44,46,47]),
         ("hreal",[11,17,19,20,24,31,38,39,40,41,43])]),["DISK_THM"]),
       [read"%21%3%21%4%48%14%29%15%29%16%22%25$2@%39$1@$0@@@%22%33$4@$1@@%33$3@$0@@@|@|@|@|@|@"])
  fun op HREAL_ADD_SYM x = x
    val op HREAL_ADD_SYM =
    DT(((("hreal",55),
        [("bool",[14,25,26,51,56,63]),("hrat",[41]),
         ("hreal",[47])]),["DISK_THM"]),
       [read"%21%3%21%4%26%42$1@$0@@%42$0@$1@@|@|@"])
  fun op HREAL_MUL_SYM x = x
    val op HREAL_MUL_SYM =
    DT(((("hreal",56),
        [("bool",[14,25,26,51,56,63]),("hrat",[43]),
         ("hreal",[48])]),["DISK_THM"]),
       [read"%21%3%21%4%26%45$1@$0@@%45$0@$1@@|@|@"])
  fun op HREAL_ADD_ASSOC x = x
    val op HREAL_ADD_ASSOC =
    DT(((("hreal",57),
        [("bool",[14,25,26,51,56,63]),("hrat",[42]),
         ("hreal",[35,47,53])]),["DISK_THM"]),
       [read"%21%3%21%4%21%5%26%42$2@%42$1@$0@@@%42%42$2@$1@@$0@@|@|@|@"])
  fun op HREAL_MUL_ASSOC x = x
    val op HREAL_MUL_ASSOC =
    DT(((("hreal",58),
        [("bool",[14,25,26,51,56,63]),("hrat",[44]),
         ("hreal",[35,48,54])]),["DISK_THM"]),
       [read"%21%3%21%4%21%5%26%45$2@%45$1@$0@@@%45%45$2@$1@@$0@@|@|@|@"])
  fun op HREAL_LDISTRIB x = x
    val op HREAL_LDISTRIB =
    DT(((("hreal",59),
        [("bool",[14,25,26,51,56,63]),("hrat",[44,45,46]),
         ("hreal",[4,6,20,23,35,40,47,48,53,54])]),["DISK_THM"]),
       [read"%21%3%21%4%21%5%26%45$2@%42$1@$0@@@%42%45$2@$1@@%45$2@$0@@@|@|@|@"])
  fun op HREAL_MUL_LID x = x
    val op HREAL_MUL_LID =
    DT(((("hreal",60),
        [("bool",[14,25,26,51,56,58,63]),("hrat",[43,44,47]),
         ("hreal",[5,20,23,32,33,35,36,40,41,46,48,54])]),["DISK_THM"]),
       [read"%21%3%26%45%41@$0@@$0@|@"])
  fun op HREAL_MUL_LINV x = x
    val op HREAL_MUL_LINV =
    DT(((("hreal",61),
        [("bool",[14,25,26,51,53,56,58,63]),("hrat",[43,44,46,47]),
         ("hreal",[2,5,18,25,30,32,35,43,45,46,48,49,52])]),["DISK_THM"]),
       [read"%21%3%26%45%43$0@@$0@@%41@|@"])
  fun op HREAL_NOZERO x = x
    val op HREAL_NOZERO =
    DT(((("hreal",62),
        [("bool",[14,25,26,27,51,53,54,56,63]),
         ("hreal",[35,38,44,47,53])]),["DISK_THM"]),
       [read"%21%3%21%4%49%26%42$1@$0@@$1@@|@|@"])
  fun op HREAL_LT_LEMMA x = x
    val op HREAL_LT_LEMMA =
    DT(((("hreal",64),
        [("bool",[14,25,26,53,63]),("hreal",[35,51]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%21%3%21%4%27%44$1@$0@@%29%15%22%49%33$2@$0@@@%33$1@$0@@|@@|@|@"])
  fun op HREAL_SUB_ISACUT x = x
    val op HREAL_SUB_ISACUT =
    DT(((("hreal",65),
        [("bool",[25,26,27,51,54,63,96]),("hrat",[42]),
         ("hreal",[0,8,9,15,31,39,40,41,42,64])]),["DISK_THM"]),
       [read"%21%3%21%4%27%44$1@$0@@%48%14%29%15%22%49%33$3@$0@@@%33$2@%36$0@$1@@@|@|@@|@|@"])
  fun op HREAL_SUB_ADD x = x
    val op HREAL_SUB_ADD =
    DT(((("hreal",66),
        [("bool",[14,25,26,27,30,51,54,56,63]),("hrat",[41,42]),
         ("hreal",
         [0,9,15,16,29,35,36,40,41,42,43,44,47,53,63,64,
          65])]),["DISK_THM"]),
       [read"%21%3%21%4%27%44$1@$0@@%26%42%46$0@$1@@$1@@$0@@|@|@"])
  fun op HREAL_LT_TOTAL x = x
    val op HREAL_LT_TOTAL =
    DT(((("hreal",67),
        [("bool",[14,25,26,27,30,51,53,54,58,63,96]),
         ("hreal",[36,40,43,51]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%21%3%21%4%32%26$1@$0@@%32%44$1@$0@@%44$0@$1@@@|@|@"])
  fun op HREAL_LT x = x
    val op HREAL_LT =
    DT(((("hreal",68),
        [("bool",[25,26,27,47,51,54,63]),("hrat",[41]),
         ("hreal",[0,9,29,35,38,40,47,51,53,55,62,66])]),["DISK_THM"]),
       [read"%21%3%21%4%23%44$1@$0@@%30%1%26$1@%42$2@$0@@|@@|@|@"])
  fun op HREAL_ADD_TOTAL x = x
    val op HREAL_ADD_TOTAL =
    DT(((("hreal",69),[("hreal",[67,68])]),["DISK_THM"]),
       [read"%21%3%21%4%32%26$1@$0@@%32%30%1%26$1@%42$2@$0@@|@@%30%1%26$2@%42$1@$0@@|@@@|@|@"])
  fun op HREAL_SUP_ISACUT x = x
    val op HREAL_SUP_ISACUT =
    DT(((("hreal",70),
        [("bool",[25,26,27,51,53,63]),("hreal",[31,38,39,40,41,51]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%19%2%27%22%30%3$1$0@|@@%30%4%21%3%27$2$0@@%44$0@$1@@|@|@@@%48%14%30%3%22$2$0@@%33$0@$1@@|@|@@|@"])
  fun op HREAL_SUP x = x
    val op HREAL_SUP =
    DT(((("hreal",71),
        [("bool",[14,25,26,27,51,53,54,58,63]),
         ("hreal",[35,50,51,64,67,70])]),["DISK_THM"]),
       [read"%19%2%27%22%30%3$1$0@|@@%30%4%21%3%27$2$0@@%44$0@$1@@|@|@@@%21%4%23%30%3%22$2$0@@%44$1@$0@@|@@%44$0@%47$1@@@|@@|@"])
  end
  val _ = DB.bindl "hreal"
  [("hrat_lt",hrat_lt,DB.Def), ("isacut",isacut,DB.Def),
   ("cut_of_hrat",cut_of_hrat,DB.Def),
   ("hreal_TY_DEF",hreal_TY_DEF,DB.Def),
   ("hreal_tybij",hreal_tybij,DB.Def), ("hreal_1",hreal_1,DB.Def),
   ("hreal_add",hreal_add,DB.Def), ("hreal_mul",hreal_mul,DB.Def),
   ("hreal_inv",hreal_inv,DB.Def), ("hreal_sup",hreal_sup,DB.Def),
   ("hreal_lt",hreal_lt,DB.Def), ("hreal_sub",hreal_sub,DB.Def),
   ("HRAT_LT_REFL",HRAT_LT_REFL,DB.Thm),
   ("HRAT_LT_TRANS",HRAT_LT_TRANS,DB.Thm),
   ("HRAT_LT_ANTISYM",HRAT_LT_ANTISYM,DB.Thm),
   ("HRAT_LT_TOTAL",HRAT_LT_TOTAL,DB.Thm),
   ("HRAT_MUL_RID",HRAT_MUL_RID,DB.Thm),
   ("HRAT_MUL_RINV",HRAT_MUL_RINV,DB.Thm),
   ("HRAT_RDISTRIB",HRAT_RDISTRIB,DB.Thm),
   ("HRAT_LT_ADDL",HRAT_LT_ADDL,DB.Thm),
   ("HRAT_LT_ADDR",HRAT_LT_ADDR,DB.Thm), ("HRAT_LT_GT",HRAT_LT_GT,DB.Thm),
   ("HRAT_LT_NE",HRAT_LT_NE,DB.Thm), ("HRAT_EQ_LADD",HRAT_EQ_LADD,DB.Thm),
   ("HRAT_EQ_LMUL",HRAT_EQ_LMUL,DB.Thm),
   ("HRAT_LT_ADD2",HRAT_LT_ADD2,DB.Thm),
   ("HRAT_LT_LADD",HRAT_LT_LADD,DB.Thm),
   ("HRAT_LT_RADD",HRAT_LT_RADD,DB.Thm),
   ("HRAT_LT_MUL2",HRAT_LT_MUL2,DB.Thm),
   ("HRAT_LT_LMUL",HRAT_LT_LMUL,DB.Thm),
   ("HRAT_LT_RMUL",HRAT_LT_RMUL,DB.Thm),
   ("HRAT_LT_LMUL1",HRAT_LT_LMUL1,DB.Thm),
   ("HRAT_LT_RMUL1",HRAT_LT_RMUL1,DB.Thm),
   ("HRAT_GT_LMUL1",HRAT_GT_LMUL1,DB.Thm),
   ("HRAT_LT_L1",HRAT_LT_L1,DB.Thm), ("HRAT_LT_R1",HRAT_LT_R1,DB.Thm),
   ("HRAT_GT_L1",HRAT_GT_L1,DB.Thm), ("HRAT_INV_MUL",HRAT_INV_MUL,DB.Thm),
   ("HRAT_UP",HRAT_UP,DB.Thm), ("HRAT_DOWN",HRAT_DOWN,DB.Thm),
   ("HRAT_DOWN2",HRAT_DOWN2,DB.Thm), ("HRAT_MEAN",HRAT_MEAN,DB.Thm),
   ("ISACUT_HRAT",ISACUT_HRAT,DB.Thm), ("EQUAL_CUTS",EQUAL_CUTS,DB.Thm),
   ("CUT_ISACUT",CUT_ISACUT,DB.Thm), ("CUT_NONEMPTY",CUT_NONEMPTY,DB.Thm),
   ("CUT_BOUNDED",CUT_BOUNDED,DB.Thm), ("CUT_DOWN",CUT_DOWN,DB.Thm),
   ("CUT_UP",CUT_UP,DB.Thm), ("CUT_UBOUND",CUT_UBOUND,DB.Thm),
   ("CUT_STRADDLE",CUT_STRADDLE,DB.Thm),
   ("CUT_NEARTOP_ADD",CUT_NEARTOP_ADD,DB.Thm),
   ("CUT_NEARTOP_MUL",CUT_NEARTOP_MUL,DB.Thm),
   ("HREAL_INV_ISACUT",HREAL_INV_ISACUT,DB.Thm),
   ("HREAL_ADD_ISACUT",HREAL_ADD_ISACUT,DB.Thm),
   ("HREAL_MUL_ISACUT",HREAL_MUL_ISACUT,DB.Thm),
   ("HREAL_ADD_SYM",HREAL_ADD_SYM,DB.Thm),
   ("HREAL_MUL_SYM",HREAL_MUL_SYM,DB.Thm),
   ("HREAL_ADD_ASSOC",HREAL_ADD_ASSOC,DB.Thm),
   ("HREAL_MUL_ASSOC",HREAL_MUL_ASSOC,DB.Thm),
   ("HREAL_LDISTRIB",HREAL_LDISTRIB,DB.Thm),
   ("HREAL_MUL_LID",HREAL_MUL_LID,DB.Thm),
   ("HREAL_MUL_LINV",HREAL_MUL_LINV,DB.Thm),
   ("HREAL_NOZERO",HREAL_NOZERO,DB.Thm),
   ("HREAL_LT_LEMMA",HREAL_LT_LEMMA,DB.Thm),
   ("HREAL_SUB_ISACUT",HREAL_SUB_ISACUT,DB.Thm),
   ("HREAL_SUB_ADD",HREAL_SUB_ADD,DB.Thm),
   ("HREAL_LT_TOTAL",HREAL_LT_TOTAL,DB.Thm), ("HREAL_LT",HREAL_LT,DB.Thm),
   ("HREAL_ADD_TOTAL",HREAL_ADD_TOTAL,DB.Thm),
   ("HREAL_SUP_ISACUT",HREAL_SUP_ISACUT,DB.Thm),
   ("HREAL_SUP",HREAL_SUP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("hratTheory.hrat_grammars",
                          hratTheory.hrat_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_lt", (Term.prim_mk_const { Name = "hrat_lt", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hrat_lt", (Term.prim_mk_const { Name = "hrat_lt", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isacut", (Term.prim_mk_const { Name = "isacut", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isacut", (Term.prim_mk_const { Name = "isacut", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cut_of_hrat", (Term.prim_mk_const { Name = "cut_of_hrat", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cut_of_hrat", (Term.prim_mk_const { Name = "cut_of_hrat", Thy = "hreal"}))
  val _ = update_grms temp_add_type "hreal"
  val _ = update_grms temp_add_type "hreal"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("cut", (Term.prim_mk_const { Name = "cut", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal", (Term.prim_mk_const { Name = "hreal", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_1", (Term.prim_mk_const { Name = "hreal_1", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_1", (Term.prim_mk_const { Name = "hreal_1", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_add", (Term.prim_mk_const { Name = "hreal_add", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_add", (Term.prim_mk_const { Name = "hreal_add", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "hreal_add"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_mul", (Term.prim_mk_const { Name = "hreal_mul", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_mul", (Term.prim_mk_const { Name = "hreal_mul", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "hreal_mul"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_inv", (Term.prim_mk_const { Name = "hreal_inv", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_inv", (Term.prim_mk_const { Name = "hreal_inv", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_sup", (Term.prim_mk_const { Name = "hreal_sup", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_sup", (Term.prim_mk_const { Name = "hreal_sup", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_lt", (Term.prim_mk_const { Name = "hreal_lt", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_lt", (Term.prim_mk_const { Name = "hreal_lt", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "hreal_lt"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_sub", (Term.prim_mk_const { Name = "hreal_sub", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("hreal_sub", (Term.prim_mk_const { Name = "hreal_sub", Thy = "hreal"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "hreal_sub"))
       (Infix(HOLgrammars.LEFT, 500))
  val hreal_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "hreal"
end
