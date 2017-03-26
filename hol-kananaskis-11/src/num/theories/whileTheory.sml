structure whileTheory :> whileTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading whileTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open arithmeticTheory optionTheory
  in end;
  val _ = Theory.link_parents
          ("while",
          Arbnum.fromString "1488586097",
          Arbnum.fromString "778651")
          [("option",
           Arbnum.fromString "1488586022",
           Arbnum.fromString "931085"),
           ("arithmetic",
           Arbnum.fromString "1488586036",
           Arbnum.fromString "382035")];
  val _ = Theory.incorporate_types "while" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("option", "option"),
   ID("num", "num"), ID("bool", "!"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "COND"), ID("bool", "F"),
   ID("arithmetic", "FUNPOW"), ID("while", "HOARE_SPEC"),
   ID("while", "LEAST"), ID("option", "NONE"), ID("while", "OLEAST"),
   ID("while", "OWHILE"), ID("option", "SOME"), ID("num", "SUC"),
   ID("bool", "T"), ID("relation", "WF"), ID("while", "WHILE"),
   ID("combin", "o"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [0, 0, 0], TYOP [0, 1, 1], TYOP [1], TYOP [0, 0, 3],
   TYOP [0, 4, 2], TYOP [2, 0], TYOP [0, 0, 6], TYOP [0, 1, 7],
   TYOP [0, 4, 8], TYOP [3], TYOP [2, 10], TYOP [0, 10, 3],
   TYOP [0, 12, 11], TYOP [0, 12, 10], TYV "'b", TYOP [0, 15, 3],
   TYOP [0, 16, 3], TYOP [0, 0, 15], TYOP [0, 18, 17], TYOP [0, 4, 19],
   TYOP [0, 0, 4], TYOP [0, 11, 3], TYOP [0, 4, 3], TYOP [0, 1, 3],
   TYOP [0, 24, 3], TYOP [0, 18, 3], TYOP [0, 26, 3], TYOP [0, 23, 3],
   TYOP [0, 21, 3], TYOP [0, 29, 3], TYOP [0, 17, 3], TYOP [0, 12, 3],
   TYOP [0, 32, 3], TYOP [0, 3, 3], TYOP [0, 3, 34], TYOP [0, 10, 12],
   TYOP [0, 6, 3], TYOP [0, 6, 37], TYOP [0, 11, 22], TYOP [0, 0, 1],
   TYOP [0, 3, 40], TYOP [0, 6, 6], TYOP [0, 6, 42], TYOP [0, 3, 43],
   TYOP [0, 11, 11], TYOP [0, 11, 45], TYOP [0, 3, 46], TYOP [0, 10, 1],
   TYOP [0, 1, 48], TYOP [0, 1, 23], TYOP [0, 4, 50], TYOP [0, 10, 11],
   TYOP [0, 10, 10], TYOP [0, 53, 53], TYOP [0, 12, 54], TYOP [0, 12, 12],
   TYOP [0, 34, 56]]
  end
  val _ = Theory.incorporate_consts "while" tyvector
     [("WHILE", 5), ("OWHILE", 9), ("OLEAST", 13), ("LEAST", 14),
      ("HOARE_SPEC", 20)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("B", 4), TMV("C", 1), TMV("C", 18), TMV("G", 4), TMV("P", 4),
   TMV("P", 21), TMV("P", 12), TMV("Q", 16), TMV("Q", 12), TMV("Q", 22),
   TMV("R", 21), TMV("f", 1), TMV("g", 1), TMV("m", 10), TMV("n", 10),
   TMV("p", 12), TMV("s", 0), TMV("s'", 0), TMV("s1", 0), TMV("s2", 0),
   TMV("v", 0), TMV("x", 0), TMV("x", 10), TMC(4, 23), TMC(4, 25),
   TMC(4, 27), TMC(4, 28), TMC(4, 30), TMC(4, 31), TMC(4, 33), TMC(4, 32),
   TMC(5, 35), TMC(6, 10), TMC(7, 36), TMC(8, 36), TMC(9, 21), TMC(9, 35),
   TMC(9, 36), TMC(9, 38), TMC(9, 39), TMC(10, 35), TMC(11, 25),
   TMC(11, 32), TMC(12, 41), TMC(12, 44), TMC(12, 47), TMC(13, 3),
   TMC(14, 49), TMC(15, 51), TMC(15, 20), TMC(16, 14), TMC(17, 6),
   TMC(17, 11), TMC(18, 13), TMC(19, 9), TMC(20, 7), TMC(20, 52),
   TMC(21, 53), TMC(22, 3), TMC(23, 29), TMC(24, 5), TMC(24, 55),
   TMC(25, 57), TMC(26, 34)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op WHILE x = x
    val op WHILE =
    DT(((("while",1),
        [("bool",[15,25,26,27,30,54,56,63,64]),("combin",[8]),
         ("while",[0])]),["DISK_THM"]),
       [read"%26%4%24%12%23%21%35%60$2@$1@$0@@%43$2$0@@%60$2@$1@$1$0@@@$0@@|@|@|@"])
  fun op HOARE_SPEC_DEF x = x
    val op HOARE_SPEC_DEF =
    DT(((("while",3),[]),[]),
       [read"%26%4%25%2%28%7%36%49$2@$1@$0@@%23%16%40$3$0@@$1$2$0@@@|@@|@|@|@"])
  fun op LEAST_DEF x = x
    val op LEAST_DEF =
    DT(((("while",5),[]),[]),
       [read"%29%6%37%50$0@@%61%62%63@$0@@%57@%32@@|@"])
  fun op OLEAST_def x = x
    val op OLEAST_def =
    DT(((("while",14),[]),[]),
       [read"%29%6%39%53$0@@%45%42%14$1$0@|@@%56%50%14$1$0@|@@@%52@@|@"])
  fun op OWHILE_def x = x
    val op OWHILE_def =
    DT(((("while",17),[]),[]),
       [read"%26%3%24%11%23%16%38%54$2@$1@$0@@%44%42%14%63$3%47$2@$0@$1@@@|@@%55%47$1@%50%14%63$3%47$2@$0@$1@@@|@@$0@@@%51@@|@|@|@"])
  fun op ITERATION x = x
    val op ITERATION =
    DT(((("while",0),
        [("arithmetic",[15,28,37,109,142]),
         ("bool",
         [2,15,25,26,27,30,36,37,51,52,53,54,55,56,58,63,64,70,72,73,74,75,
          99,105,109,124]),("prim_rec",[6,7]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%26%4%24%12%41%11%23%21%35$1$0@@%43$3$0@@$0@$1$2$0@@@@|@|@|@|@"])
  fun op WHILE_INDUCTION x = x
    val op WHILE_INDUCTION =
    DT(((("while",2),
        [("bool",[2,15,25,26,53,54,58,63,74,83,84,99,100]),
         ("relation",[101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%26%0%24%1%27%10%40%31%59$0@@%23%16%40$3$0@@$1$2$0@@$0@@|@@@%26%4%40%23%16%40%40$4$0@@$1$3$0@@@@$1$0@@|@@%23%20$1$0@|@@|@@|@|@|@"])
  fun op WHILE_RULE x = x
    val op WHILE_RULE =
    DT(((("while",4),
        [("bool",[25,36,51,53,54,63,100,109]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("while",[1,2,3])]),["DISK_THM"]),
       [read"%27%10%26%0%24%1%40%31%59$2@@%23%16%40$2$0@@$3$1$0@@$0@@|@@@%40%48%16%31%4$0@@$2$0@@|@$0@%4@@%48%4@%60$1@$0@@%16%31%4$0@@%63$2$0@@@|@@@|@|@|@"])
  fun op LEAST_INTRO x = x
    val op LEAST_INTRO =
    DT(((("while",6),
        [("arithmetic",[24]),
         ("bool",[14,25,26,27,30,36,53,54,58,63,64,105,124,129]),
         ("combin",[8]),("num",[9]),("while",[1,5])]),["DISK_THM"]),
       [read"%29%6%30%22%40$1$0@@$1%50$1@@@|@|@"])
  fun op LESS_LEAST x = x
    val op LESS_LEAST =
    DT(((("while",7),
        [("arithmetic",[24,34,107]),
         ("bool",[14,25,26,27,30,53,54,56,58,63,64,105,124,129,147]),
         ("combin",[8]),("num",[9]),("prim_rec",[1,4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[1,5])]),["DISK_THM"]),
       [read"%29%6%30%13%40%33$0@%50$1@@@%63$1$0@@@|@|@"])
  fun op FULL_LEAST_INTRO x = x
    val op FULL_LEAST_INTRO =
    DT(((("while",8),
        [("arithmetic",[59]),("bool",[25,53,54,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[6,7])]),["DISK_THM"]),
       [read"%30%22%40%6$0@@%31%6%50%6@@@%34%50%6@@$0@@@|@"])
  fun op LEAST_ELIM x = x
    val op LEAST_ELIM =
    DT(((("while",9),
        [("bool",[2,15,25,26,53,54,63,99,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[6,7])]),["DISK_THM"]),
       [read"%29%8%29%6%40%31%42%14$1$0@|@@%30%14%40%31%30%13%40%33$0@$1@@%63$2$0@@@|@@$1$0@@@$2$0@@|@@@$1%50$0@@@|@|@"])
  fun op LEAST_EXISTS x = x
    val op LEAST_EXISTS =
    DT(((("while",10),
        [("arithmetic",[110]),("bool",[2,15,25,26,53,54,61,63,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[6,7])]),["DISK_THM"]),
       [read"%29%15%36%42%14$1$0@|@@%31$0%50$0@@@%30%14%40%33$0@%50$1@@@%63$1$0@@@|@@@|@"])
  fun op LEAST_EXISTS_IMP x = x
    val op LEAST_EXISTS_IMP =
    DT(((("while",11),[("bool",[25,36,53]),("while",[10])]),["DISK_THM"]),
       [read"%29%15%40%42%14$1$0@|@@%31$0%50$0@@@%30%14%40%33$0@%50$1@@@%63$1$0@@@|@@@|@"])
  fun op LEAST_EQ x = x
    val op LEAST_EQ =
    DT(((("while",12),
        [("bool",[25,36,51,53,56,58,63,95,101,105,124,140,145]),
         ("while",[9])]),["DISK_THM"]),
       [read"%31%37%50%14%37$0@%22@|@@%22@@%37%50%14%37%22@$0@|@@%22@@"])
  fun op LEAST_T x = x
    val op LEAST_T =
    DT(((("while",13),
        [("arithmetic",[29]),("bool",[25,37,51,53,54,58,63,105,124]),
         ("sat",[1,3,7,17,18]),("while",[9])]),["DISK_THM"]),
       [read"%37%50%22%58|@@%32@"])
  fun op OLEAST_INTRO x = x
    val op OLEAST_INTRO =
    DT(((("while",15),
        [("bool",[2,15,25,26,27,30,36,53,54,58,63,64,72,99,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9,14])]),["DISK_THM"]),
       [read"%40%31%40%30%14%63%6$0@@|@@%9%52@@@%30%14%40%31%6$0@@%30%13%40%33$0@$1@@%63%6$0@@@|@@@%9%56$0@@@|@@@%9%53%6@@@"])
  fun op OLEAST_EQNS x = x
    val op OLEAST_EQNS =
    DT(((("while",16),
        [("arithmetic",[29]),
         ("bool",[6,25,26,27,36,51,53,54,56,58,63,95,101,105,124,145]),
         ("option",[10,11]),("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("while",[15])]),["DISK_THM"]),
       [read"%31%39%53%14%37$0@%22@|@@%56%22@@@%31%39%53%14%37%22@$0@|@@%56%22@@@%31%39%53%14%46|@@%52@@%39%53%14%58|@@%56%32@@@@@"])
  fun op OWHILE_THM x = x
    val op OWHILE_THM =
    DT(((("while",18),
        [("arithmetic",[15,28,30,37,142,335]),
         ("bool",
         [2,15,25,26,27,30,37,51,53,54,55,56,58,63,64,72,75,105,124,129,
          140,147]),("num",[7]),("option",[10,27]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9,17])]),["DISK_THM"]),
       [read"%38%54%3@%11@%16@@%44%3%16@@%54%3@%11@%11%16@@@%55%16@@@"])
  fun op OWHILE_EQ_NONE x = x
    val op OWHILE_EQ_NONE =
    DT(((("while",19),
        [("bool",[25,54,56,72]),("option",[27]),
         ("while",[17])]),["DISK_THM"]),
       [read"%36%38%54%3@%11@%16@@%51@@%30%14%3%47%11@$0@%16@@|@@"])
  fun op OWHILE_ENDCOND x = x
    val op OWHILE_ENDCOND =
    DT(((("while",20),
        [("bool",[25,26,53,54,58,63,105,124]),("option",[27]),
         ("sat",[1,3,7,17,18]),("while",[9,17])]),["DISK_THM"]),
       [read"%40%38%54%3@%11@%16@@%55%17@@@%63%3%17@@@"])
  fun op OWHILE_WHILE x = x
    val op OWHILE_WHILE =
    DT(((("while",21),
        [("arithmetic",[15,37,335]),
         ("bool",[14,25,26,27,53,54,56,58,63,64,105,124,129,147]),
         ("num",[9]),("option",[27]),("prim_rec",[7]),
         ("sat",[1,3,7,17,18]),("while",[1,9,17])]),["DISK_THM"]),
       [read"%40%38%54%3@%11@%16@@%55%17@@@%35%60%3@%11@%16@@%17@@"])
  fun op OWHILE_INV_IND x = x
    val op OWHILE_INV_IND =
    DT(((("while",22),
        [("arithmetic",[15,37,335]),
         ("bool",[14,25,26,27,36,51,53,54,58,63,93,95,101,105,124,145]),
         ("num",[9]),("option",[27]),("prim_rec",[7]),
         ("sat",[1,3,7,17,18]),("while",[9,17])]),["DISK_THM"]),
       [read"%26%3%24%11%23%16%40%31%4$0@@%23%21%40%31%4$0@@$3$0@@@%4$2$0@@@|@@@%23%17%40%38%54$3@$2@$1@@%55$0@@@%4$0@@|@@|@|@|@"])
  fun op OWHILE_IND x = x
    val op OWHILE_IND =
    DT(((("while",23),
        [("arithmetic",[15]),
         ("bool",
         [13,14,25,26,27,36,51,53,54,56,58,63,64,93,95,101,105,124,145,
          178]),("num",[9]),("option",[10,11]),("prim_rec",[7,9]),
         ("while",[11,17])]),["DISK_THM"]),
       [read"%27%5%26%3%24%11%40%31%23%16%40%63$2$0@@@$3$0@$0@@|@@%23%18%23%19%40%31$3$1@@$4$2$1@@$0@@@$4$1@$0@@|@|@@@%23%18%23%19%40%38%54$3@$2@$1@@%55$0@@@$4$1@$0@@|@|@@|@|@|@"])
  end
  val _ = DB.bindl "while"
  [("WHILE",WHILE,DB.Def), ("HOARE_SPEC_DEF",HOARE_SPEC_DEF,DB.Def),
   ("LEAST_DEF",LEAST_DEF,DB.Def), ("OLEAST_def",OLEAST_def,DB.Def),
   ("OWHILE_def",OWHILE_def,DB.Def), ("ITERATION",ITERATION,DB.Thm),
   ("WHILE_INDUCTION",WHILE_INDUCTION,DB.Thm),
   ("WHILE_RULE",WHILE_RULE,DB.Thm), ("LEAST_INTRO",LEAST_INTRO,DB.Thm),
   ("LESS_LEAST",LESS_LEAST,DB.Thm),
   ("FULL_LEAST_INTRO",FULL_LEAST_INTRO,DB.Thm),
   ("LEAST_ELIM",LEAST_ELIM,DB.Thm), ("LEAST_EXISTS",LEAST_EXISTS,DB.Thm),
   ("LEAST_EXISTS_IMP",LEAST_EXISTS_IMP,DB.Thm),
   ("LEAST_EQ",LEAST_EQ,DB.Thm), ("LEAST_T",LEAST_T,DB.Thm),
   ("OLEAST_INTRO",OLEAST_INTRO,DB.Thm),
   ("OLEAST_EQNS",OLEAST_EQNS,DB.Thm), ("OWHILE_THM",OWHILE_THM,DB.Thm),
   ("OWHILE_EQ_NONE",OWHILE_EQ_NONE,DB.Thm),
   ("OWHILE_ENDCOND",OWHILE_ENDCOND,DB.Thm),
   ("OWHILE_WHILE",OWHILE_WHILE,DB.Thm),
   ("OWHILE_INV_IND",OWHILE_INV_IND,DB.Thm),
   ("OWHILE_IND",OWHILE_IND,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("optionTheory.option_grammars",
                          optionTheory.option_grammars),
                         ("arithmeticTheory.arithmetic_grammars",
                          arithmeticTheory.arithmetic_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WHILE", (Term.prim_mk_const { Name = "WHILE", Thy = "while"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HOARE_SPEC", (Term.prim_mk_const { Name = "HOARE_SPEC", Thy = "while"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HOARE_SPEC", (Term.prim_mk_const { Name = "HOARE_SPEC", Thy = "while"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEAST", (Term.prim_mk_const { Name = "LEAST", Thy = "while"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEAST", (Term.prim_mk_const { Name = "LEAST", Thy = "while"}))
  val _ = update_grms (UTOFF (temp_set_fixity "LEAST")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OLEAST", (Term.prim_mk_const { Name = "OLEAST", Thy = "while"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OLEAST", (Term.prim_mk_const { Name = "OLEAST", Thy = "while"}))
  val _ = update_grms (UTOFF (temp_set_fixity "OLEAST")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OWHILE", (Term.prim_mk_const { Name = "OWHILE", Thy = "while"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OWHILE", (Term.prim_mk_const { Name = "OWHILE", Thy = "while"}))
  val while_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "while",
    thydataty = "simp",
    data = "while.LEAST_EQ while.LEAST_T while.OLEAST_EQNS"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "while",
    thydataty = "compute",
    data = "while.WHILE while.LEAST_DEF"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "while",
    thydataty = "OpenTheoryMap",
    data = " 11.While.while5.while5.WHILE11.While.least5.while5.LEAST"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "while"
end
