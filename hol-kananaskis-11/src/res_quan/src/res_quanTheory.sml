structure res_quanTheory :> res_quanTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading res_quanTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open pred_setTheory
  in end;
  val _ = Theory.link_parents
          ("res_quan",
          Arbnum.fromString "1488586843",
          Arbnum.fromString "965166")
          [("pred_set",
           Arbnum.fromString "1488586210",
           Arbnum.fromString "643996")];
  val _ = Theory.incorporate_types "res_quan" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"),
   ID("min", "@"), ID("pred_set", "EMPTY"), ID("bool", "F"),
   ID("bool", "IN"), ID("pred_set", "INSERT"), ID("bool", "RES_ABSTRACT"),
   ID("bool", "RES_EXISTS"), ID("bool", "RES_EXISTS_UNIQUE"),
   ID("bool", "RES_FORALL"), ID("bool", "RES_SELECT"),
   ID("pred_set", "UNIV"), ID("bool", "\\/"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYV "'b", TYOP [0, 3, 0],
   TYOP [0, 1, 4], TYOP [0, 1, 3], TYOP [0, 2, 0], TYOP [0, 4, 0],
   TYOP [0, 0, 0], TYOP [0, 9, 0], TYOP [0, 6, 0], TYOP [0, 11, 0],
   TYOP [0, 7, 0], TYOP [0, 5, 0], TYOP [0, 14, 0], TYOP [0, 8, 0],
   TYOP [0, 0, 9], TYOP [0, 1, 2], TYOP [0, 3, 4], TYOP [0, 6, 11],
   TYOP [0, 2, 7], TYOP [0, 2, 1], TYOP [0, 1, 7], TYOP [0, 2, 2],
   TYOP [0, 1, 24], TYOP [0, 6, 6], TYOP [0, 2, 26], TYOP [0, 4, 8],
   TYOP [0, 2, 22]]
  end
  val _ = Theory.incorporate_consts "res_quan" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 2), TMV("Q", 2), TMV("Q", 4), TMV("R", 2), TMV("R", 5),
   TMV("f", 2), TMV("i", 1), TMV("j", 1), TMV("j", 3), TMV("m", 0),
   TMV("m", 6), TMV("m", 2), TMV("m1", 6), TMV("m2", 6), TMV("p", 2),
   TMV("x", 1), TMV("x", 3), TMV("y", 1), TMC(2, 7), TMC(2, 8), TMC(2, 10),
   TMC(2, 12), TMC(2, 13), TMC(2, 15), TMC(2, 16), TMC(3, 17), TMC(4, 18),
   TMC(4, 19), TMC(4, 17), TMC(4, 20), TMC(4, 21), TMC(5, 17), TMC(6, 7),
   TMC(7, 7), TMC(8, 22), TMC(9, 2), TMC(10, 0), TMC(11, 23), TMC(12, 25),
   TMC(13, 27), TMC(14, 21), TMC(14, 28), TMC(15, 21), TMC(16, 21),
   TMC(16, 28), TMC(17, 29), TMC(18, 2), TMC(19, 17), TMC(20, 9)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op RES_SELECT_UNIV x = x
    val op RES_SELECT_UNIV =
    DT(((("res_quan",26),
        [("bool",[14,25,51,56,63]),("pred_set",[14]),
         ("res_quan",[3])]),["DISK_THM"]),
       [read"%22%14%26%45%46@$0@@%34$0@@|@"])
  fun op RES_SELECT_EMPTY x = x
    val op RES_SELECT_EMPTY =
    DT(((("res_quan",25),
        [("bool",[25,26,27,51,56]),("pred_set",[10]),
         ("res_quan",[3])]),["DISK_THM"]),
       [read"%22%14%26%45%35@$0@@%34%15%36|@@|@"])
  fun op RES_EXISTS_UNIQUE_ALT x = x
    val op RES_EXISTS_UNIQUE_ALT =
    DT(((("res_quan",24),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,72,76,77,78,80,81,
          84,93,94,96,105,124,146]),("pred_set",[0]),("res_quan",[0,1,2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%14%22%11%28%42$1@$0@@%40$1@%15%25$1$0@@%43$2@%17%31$2$0@@%26$0@$1@@|@@|@@|@|@"])
  fun op RES_EXISTS_UNIQUE_NULL x = x
    val op RES_EXISTS_UNIQUE_NULL =
    DT(((("res_quan",23),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,76,77,78,80,
          81,84,93,94,96,105,124,130,146]),("pred_set",[3,10,131]),
         ("res_quan",[0,2,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%14%20%9%28%42$1@%15$1|@@%25%32%15%30$2@%38$0@%35@@|@@$0@@|@|@"])
  fun op RES_EXISTS_UNIQUE_UNIV x = x
    val op RES_EXISTS_UNIQUE_UNIV =
    DT(((("res_quan",22),
        [("bool",
         [7,14,25,26,47,48,53,54,56,58,63,71,72,76,78,80,81,93,94,96]),
         ("res_quan",[2,11,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%14%28%42%46@$0@@%33$0@@|@"])
  fun op RES_EXISTS_UNIQUE_EMPTY x = x
    val op RES_EXISTS_UNIQUE_EMPTY =
    DT(((("res_quan",21),
        [("bool",[25,26,27,51,54,130]),("pred_set",[10]),
         ("res_quan",[2,17])]),["DISK_THM"]),
       [read"%22%14%48%42%35@$0@@|@"])
  fun op RES_EXISTS_ALT x = x
    val op RES_EXISTS_ALT =
    DT(((("res_quan",20),
        [("bool",[2,25,56]),("pred_set",[0]),
         ("res_quan",[1,3])]),["DISK_THM"]),
       [read"%22%14%22%11%28%40$1@$0@@%25%37%45$1@$0@@$1@@$0%45$1@$0@@@@|@|@"])
  fun op RES_EXISTS_NULL x = x
    val op RES_EXISTS_NULL =
    DT(((("res_quan",19),
        [("bool",[13,25,26,27,37,47,48,51,53,54,58,63,71,72,76,80,81]),
         ("pred_set",[3,10]),("res_quan",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%14%20%9%28%40$1@%15$1|@@%25%48%30$1@%35@@@$0@@|@|@"])
  fun op RES_EXISTS_UNIV x = x
    val op RES_EXISTS_UNIV =
    DT(((("res_quan",18),
        [("bool",[14,25,51,56,63]),("pred_set",[14]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%22%14%28%40%46@$0@@%32$0@@|@"])
  fun op RES_EXISTS_EMPTY x = x
    val op RES_EXISTS_EMPTY =
    DT(((("res_quan",17),
        [("bool",[25,26,27,37,51,54]),("pred_set",[10]),
         ("res_quan",[1])]),["DISK_THM"]), [read"%22%14%48%40%35@$0@@|@"])
  fun op RES_EXISTS_REORDER x = x
    val op RES_EXISTS_REORDER =
    DT(((("res_quan",16),
        [("bool",[26]),("pred_set",[0]),("res_quan",[1])]),["DISK_THM"]),
       [read"%22%0%24%2%23%4%28%40$2@%6%41$2@%8$2$1@$0@|@|@@%41$1@%8%40$3@%6$2$0@$1@|@|@@|@|@|@"])
  fun op RES_EXISTS_EQUAL x = x
    val op RES_EXISTS_EQUAL =
    DT(((("res_quan",15),
        [("bool",[25,26,51,56,63]),("pred_set",[0]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%22%0%18%7%28%40%26$0@@%6$2$0@|@@$1$0@@|@|@"])
  fun op RES_DISJ_EXISTS_DIST x = x
    val op RES_DISJ_EXISTS_DIST =
    DT(((("res_quan",14),
        [("bool",[76,98]),("pred_set",[0]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%22%0%22%1%22%3%28%40%6%47$3$0@@$2$0@@|@%6$1$0@|@@%47%40$2@%6$1$0@|@@%40$1@%6$1$0@|@@@|@|@|@"])
  fun op RES_EXISTS_DISJ_DIST x = x
    val op RES_EXISTS_DISJ_DIST =
    DT(((("res_quan",13),
        [("bool",[41,76,98]),("pred_set",[0]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%22%0%22%1%22%3%28%40$2@%6%47$2$0@@$1$0@@|@@%47%40$2@%6$2$0@|@@%40$2@%6$1$0@|@@@|@|@|@"])
  fun op RES_FORALL_NULL x = x
    val op RES_FORALL_NULL =
    DT(((("res_quan",12),
        [("bool",[13,25,26,27,36,47,48,52,53,54,58,63,71,76,80,81]),
         ("pred_set",[3,10]),("res_quan",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%14%20%9%28%43$1@%15$1|@@%47%30$1@%35@@$0@@|@|@"])
  fun op RES_FORALL_UNIV x = x
    val op RES_FORALL_UNIV =
    DT(((("res_quan",11),
        [("bool",[14,25,53,56,58,63,105,124]),("pred_set",[14]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%22%14%28%43%46@$0@@%18$0@@|@"])
  fun op RES_FORALL_EMPTY x = x
    val op RES_FORALL_EMPTY =
    DT(((("res_quan",10),
        [("bool",[25,26,27,36,53,58,105,124]),("pred_set",[10]),
         ("res_quan",[0])]),["DISK_THM"]), [read"%22%14%43%35@$0@|@"])
  fun op RES_FORALL_REORDER x = x
    val op RES_FORALL_REORDER =
    DT(((("res_quan",9),
        [("bool",[26]),("pred_set",[0]),("res_quan",[0])]),["DISK_THM"]),
       [read"%22%0%24%2%23%4%28%43$2@%6%44$2@%8$2$1@$0@|@|@@%44$1@%8%43$3@%6$2$0@$1@|@|@@|@|@|@"])
  fun op RES_FORALL_FORALL x = x
    val op RES_FORALL_FORALL =
    DT(((("res_quan",8),
        [("bool",[26]),("pred_set",[0]),("res_quan",[0])]),["DISK_THM"]),
       [read"%22%0%23%4%19%16%28%19%16%43$3@%6$3$0@$1@|@|@@%43$2@%6%19%16$3$1@$0@|@|@@|@|@|@"])
  fun op RES_FORALL_UNIQUE x = x
    val op RES_FORALL_UNIQUE =
    DT(((("res_quan",7),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,77,81,93,94,96]),
         ("pred_set",[0]),("res_quan",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%0%18%7%28%43%26$0@@%6$2$0@|@@$1$0@@|@|@"])
  fun op RES_FORALL_DISJ_DIST x = x
    val op RES_FORALL_DISJ_DIST =
    DT(((("res_quan",6),
        [("bool",[26]),("pred_set",[0]),("res_quan",[0])]),["DISK_THM"]),
       [read"%22%0%22%1%22%3%28%43%7%47$3$0@@$2$0@@|@%6$1$0@|@@%25%43$2@%6$1$0@|@@%43$1@%6$1$0@|@@@|@|@|@"])
  fun op RES_FORALL_CONJ_DIST x = x
    val op RES_FORALL_CONJ_DIST =
    DT(((("res_quan",5),[("bool",[26]),("res_quan",[0])]),["DISK_THM"]),
       [read"%22%0%22%1%22%3%28%43$2@%6%25$2$0@@$1$0@@|@@%25%43$2@%6$2$0@|@@%43$2@%6$1$0@|@@@|@|@|@"])
  fun op RES_FORALL x = x
    val op RES_FORALL =
    DT(((("res_quan",0),[("bool",[156])]),["DISK_THM"]),
       [read"%22%0%22%5%28%43$1@$0@@%18%15%31%37$0@$2@@$1$0@@|@@|@|@"])
  fun op RES_EXISTS x = x
    val op RES_EXISTS =
    DT(((("res_quan",1),[("bool",[157])]),["DISK_THM"]),
       [read"%22%0%22%5%28%40$1@$0@@%32%15%25%37$0@$2@@$1$0@@|@@|@|@"])
  fun op RES_EXISTS_UNIQUE x = x
    val op RES_EXISTS_UNIQUE =
    DT(((("res_quan",2),[("bool",[158])]),["DISK_THM"]),
       [read"%22%0%22%5%28%42$1@$0@@%25%40$1@%15$1$0@|@@%43$1@%15%43$2@%17%31%25$2$1@@$2$0@@@%26$1@$0@@|@|@@@|@|@"])
  fun op RES_SELECT x = x
    val op RES_SELECT =
    DT(((("res_quan",3),[("bool",[159])]),["DISK_THM"]),
       [read"%22%0%22%5%26%45$1@$0@@%34%15%25%37$0@$2@@$1$0@@|@@|@|@"])
  fun op RES_ABSTRACT x = x
    val op RES_ABSTRACT =
    DT(((("res_quan",27),[("bool",[155])]),["DISK_THM"]),
       [read"%22%14%21%10%18%15%31%37$0@$2@@%27%39$2@$1@$0@@$1$0@@@|@|@|@"])
  fun op RES_ABSTRACT_EQUAL x = x
    val op RES_ABSTRACT_EQUAL =
    DT(((("res_quan",28),[("bool",[155])]),["DISK_THM"]),
       [read"%22%14%21%12%21%13%31%18%15%31%37$0@$3@@%27$2$0@@$1$0@@@|@@%29%39$2@$1@@%39$2@$0@@@|@|@|@"])
  fun op RES_ABSTRACT_IDEMPOT x = x
    val op RES_ABSTRACT_IDEMPOT =
    DT(((("res_quan",29),
        [("bool",[25,53,56,58,63,105,124]),
         ("res_quan",[27,28])]),["DISK_THM"]),
       [read"%22%14%21%10%29%39$1@%39$1@$0@@@%39$1@$0@@|@|@"])
  fun op RES_ABSTRACT_EQUAL_EQ x = x
    val op RES_ABSTRACT_EQUAL_EQ =
    DT(((("res_quan",30),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,77,81,93,94,96,
          146]),("combin",[19]),("res_quan",[27,28]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%14%21%12%21%13%28%29%39$2@$1@@%39$2@$0@@@%18%15%31%37$0@$3@@%27$2$0@@$1$0@@@|@@|@|@|@"])
  end
  val _ = DB.bindl "res_quan"
  [("RES_SELECT_UNIV",RES_SELECT_UNIV,DB.Thm),
   ("RES_SELECT_EMPTY",RES_SELECT_EMPTY,DB.Thm),
   ("RES_EXISTS_UNIQUE_ALT",RES_EXISTS_UNIQUE_ALT,DB.Thm),
   ("RES_EXISTS_UNIQUE_NULL",RES_EXISTS_UNIQUE_NULL,DB.Thm),
   ("RES_EXISTS_UNIQUE_UNIV",RES_EXISTS_UNIQUE_UNIV,DB.Thm),
   ("RES_EXISTS_UNIQUE_EMPTY",RES_EXISTS_UNIQUE_EMPTY,DB.Thm),
   ("RES_EXISTS_ALT",RES_EXISTS_ALT,DB.Thm),
   ("RES_EXISTS_NULL",RES_EXISTS_NULL,DB.Thm),
   ("RES_EXISTS_UNIV",RES_EXISTS_UNIV,DB.Thm),
   ("RES_EXISTS_EMPTY",RES_EXISTS_EMPTY,DB.Thm),
   ("RES_EXISTS_REORDER",RES_EXISTS_REORDER,DB.Thm),
   ("RES_EXISTS_EQUAL",RES_EXISTS_EQUAL,DB.Thm),
   ("RES_DISJ_EXISTS_DIST",RES_DISJ_EXISTS_DIST,DB.Thm),
   ("RES_EXISTS_DISJ_DIST",RES_EXISTS_DISJ_DIST,DB.Thm),
   ("RES_FORALL_NULL",RES_FORALL_NULL,DB.Thm),
   ("RES_FORALL_UNIV",RES_FORALL_UNIV,DB.Thm),
   ("RES_FORALL_EMPTY",RES_FORALL_EMPTY,DB.Thm),
   ("RES_FORALL_REORDER",RES_FORALL_REORDER,DB.Thm),
   ("RES_FORALL_FORALL",RES_FORALL_FORALL,DB.Thm),
   ("RES_FORALL_UNIQUE",RES_FORALL_UNIQUE,DB.Thm),
   ("RES_FORALL_DISJ_DIST",RES_FORALL_DISJ_DIST,DB.Thm),
   ("RES_FORALL_CONJ_DIST",RES_FORALL_CONJ_DIST,DB.Thm),
   ("RES_FORALL",RES_FORALL,DB.Thm), ("RES_EXISTS",RES_EXISTS,DB.Thm),
   ("RES_EXISTS_UNIQUE",RES_EXISTS_UNIQUE,DB.Thm),
   ("RES_SELECT",RES_SELECT,DB.Thm), ("RES_ABSTRACT",RES_ABSTRACT,DB.Thm),
   ("RES_ABSTRACT_EQUAL",RES_ABSTRACT_EQUAL,DB.Thm),
   ("RES_ABSTRACT_IDEMPOT",RES_ABSTRACT_IDEMPOT,DB.Thm),
   ("RES_ABSTRACT_EQUAL_EQ",RES_ABSTRACT_EQUAL_EQ,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("pred_setTheory.pred_set_grammars",
                          pred_setTheory.pred_set_grammars)]
  val _ = List.app (update_grms reveal) []

  val res_quan_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "res_quan"
end
