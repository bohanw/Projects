structure intExtensionTheory :> intExtensionTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading intExtensionTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open OmegaTheory int_arithTheory integerRingTheory numRingTheory
  in end;
  val _ = Theory.link_parents
          ("intExtension",
          Arbnum.fromString "1488589035",
          Arbnum.fromString "643789")
          [("numRing",
           Arbnum.fromString "1488587625",
           Arbnum.fromString "425661"),
           ("integerRing",
           Arbnum.fromString "1488587789",
           Arbnum.fromString "669667"),
           ("Omega",
           Arbnum.fromString "1488587731",
           Arbnum.fromString "896421"),
           ("int_arith",
           Arbnum.fromString "1488587685",
           Arbnum.fromString "137740")];
  val _ = Theory.incorporate_types "intExtension" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("integer", "int"), ID("min", "bool"),
   ID("bool", "!"), ID("bool", "/\\"), ID("num", "0"), ID("num", "num"),
   ID("min", "="), ID("min", "==>"), ID("integer", "ABS"),
   ID("arithmetic", "BIT1"), ID("bool", "COND"),
   ID("arithmetic", "NUMERAL"), ID("intExtension", "SGN"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("integer", "int_add"),
   ID("integer", "int_gt"), ID("integer", "int_lt"),
   ID("integer", "int_mul"), ID("integer", "int_neg"),
   ID("integer", "int_of_num"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [2], TYOP [0, 2, 2], TYOP [0, 3, 2],
   TYOP [0, 0, 2], TYOP [0, 5, 2], TYOP [0, 2, 3], TYOP [6],
   TYOP [0, 0, 5], TYOP [0, 8, 8], TYOP [0, 0, 1], TYOP [0, 2, 11],
   TYOP [0, 8, 0]]
  end
  val _ = Theory.incorporate_consts "intExtension" tyvector [("SGN", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 2), TMV("a", 0), TMV("b", 0), TMV("n", 0), TMV("x", 0),
   TMV("x1", 0), TMV("x2", 0), TMV("y", 0), TMV("y1", 0), TMV("y2", 0),
   TMC(3, 4), TMC(3, 6), TMC(4, 7), TMC(5, 8), TMC(7, 7), TMC(7, 9),
   TMC(8, 7), TMC(9, 1), TMC(10, 10), TMC(11, 12), TMC(12, 10), TMC(13, 1),
   TMC(14, 8), TMC(15, 7), TMC(16, 11), TMC(17, 9), TMC(18, 9),
   TMC(19, 11), TMC(20, 1), TMC(21, 13), TMC(22, 3)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op SGN_def x = x
    val op SGN_def =
    DT(((("intExtension",0),[]),[]),
       [read"%11%4%15%21$0@@%19%15$0@%29%13@@@%29%13@@%19%26$0@%29%13@@@%28%29%20%18%22@@@@@%29%20%18%22@@@@@@|@"])
  fun op INT_SGN_TOTAL x = x
    val op INT_SGN_TOTAL =
    DT(((("intExtension",23),
        [("bool",[25,26,27,30,51,52,56,58,63,64]),("intExtension",[0]),
         ("integer",[166,342]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%11%1%23%15%21$0@@%28%29%20%18%22@@@@@@%23%15%21$0@@%29%13@@@%15%21$0@@%29%20%18%22@@@@@@|@"])
  fun op INT_SGN_MUL2 x = x
    val op INT_SGN_MUL2 =
    DT(((("intExtension",22),
        [("bool",
         [25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,73,93,94,96,105,124,
          129]),("intExtension",[0,4]),
         ("integer",[65,83,84,93,94,98,102,159,166,214,304,342]),
         ("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%4%11%7%15%21%27$1@$0@@@%27%21$1@@%21$0@@@|@|@"])
  fun op INT_SGN_MUL x = x
    val op INT_SGN_MUL =
    DT(((("intExtension",21),
        [("bool",
         [25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,73,93,94,96,105,124,
          129]),("intExtension",[0,4]),
         ("integer",[65,83,84,98,102,159,166,214,256,304,342]),
         ("numeral",[3,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%5%11%6%11%8%11%9%16%15%21$3@@$1@@%16%15%21$2@@$0@@%15%21%27$3@$2@@@%27$1@$0@@@@|@|@|@|@"])
  fun op INT_SGN_CLAUSES x = x
    val op INT_SGN_CLAUSES =
    DT(((("intExtension",20),
        [("bool",[25,26,27,30,47,48,51,53,54,56,58,63,64,93,94,96]),
         ("intExtension",[0]),("integer",[65,75,103,166,206,339,342]),
         ("numeral",[3,6]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%11%4%12%14%15%21$0@@%28%29%20%18%22@@@@@@%26$0@%29%13@@@@%12%14%15%21$0@@%29%13@@@%15$0@%29%13@@@@%14%15%21$0@@%29%20%18%22@@@@@%25$0@%29%13@@@@@|@"])
  fun op INT_NOT0_SGNNOT0 x = x
    val op INT_NOT0_SGNNOT0 =
    DT(((("intExtension",19),
        [("bool",[25,27,48,51,54,56,58]),("intExtension",[11]),
         ("integer",[166,342]),("numeral",[3,6])]),["DISK_THM"]),
       [read"%11%4%16%30%15$0@%29%13@@@@%30%15%21$0@@%29%13@@@@|@"])
  fun op INT_ABS_CALCULATE_POS x = x
    val op INT_ABS_CALCULATE_POS =
    DT(((("intExtension",18),
        [("bool",[25,26,27,56,58,63,105,129,147]),
         ("integer",[103,253])]),["DISK_THM"]),
       [read"%11%1%16%26%29%13@@$0@@%15%17$0@@$0@@|@"])
  fun op INT_ABS_CALCULATE_0 x = x
    val op INT_ABS_CALCULATE_0 =
    DT(((("intExtension",17),
        [("bool",[25,56]),("integer",[166,255])]),["DISK_THM"]),
       [read"%15%17%29%13@@@%29%13@@"])
  fun op INT_ABS_CALCULATE_NEG x = x
    val op INT_ABS_CALCULATE_NEG =
    DT(((("intExtension",16),
        [("bool",[25,56,58,63,105,129,147]),
         ("integer",[253,342])]),["DISK_THM"]),
       [read"%11%1%16%26$0@%29%13@@@%15%17$0@@%28$0@@@|@"])
  fun op INT_GT_RMUL_EXP x = x
    val op INT_GT_RMUL_EXP =
    DT(((("intExtension",15),
        [("bool",[25,56,58]),("integer",[60,75,316])]),["DISK_THM"]),
       [read"%11%1%11%2%11%3%16%26%29%13@@$0@@%14%25$2@$1@@%25%27$2@$0@@%27$1@$0@@@@|@|@|@"])
  fun op INT_LT_RMUL_EXP x = x
    val op INT_LT_RMUL_EXP =
    DT(((("intExtension",14),
        [("bool",[25,56,58]),("integer",[60,316])]),["DISK_THM"]),
       [read"%11%1%11%2%11%3%16%26%29%13@@$0@@%14%26$2@$1@@%26%27$2@$0@@%27$1@$0@@@@|@|@|@"])
  fun op INT_EQ_RMUL_EXP x = x
    val op INT_EQ_RMUL_EXP =
    DT(((("intExtension",13),
        [("bool",[25,26,27,30,51,52,53,54,56,58,63,105,124]),
         ("integer",[160,200,206]),("prim_rec",[6])]),["DISK_THM"]),
       [read"%11%1%11%2%11%3%16%26%29%13@@$0@@%14%15$2@$1@@%15%27$2@$0@@%27$1@$0@@@@|@|@|@"])
  fun op LESS_IMP_NOT_0 x = x
    val op LESS_IMP_NOT_0 =
    DT(((("intExtension",12),
        [("bool",[25,26,27,30,53,54,58,105,124]),("integer",[206]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%11%3%16%26%29%13@@$0@@%30%15$0@%29%13@@@@|@"])
  fun op INT_MUL_POS_SIGN x = x
    val op INT_MUL_POS_SIGN =
    DT(((("intExtension",1),
        [("bool",[25,51,53,58,63,105,124]),
         ("integer",[304])]),["DISK_THM"]),
       [read"%11%1%11%2%16%26%29%13@@$1@@%16%26%29%13@@$0@@%26%29%13@@%27$1@$0@@@@|@|@"])
  fun op INT_NE_IMP_LTGT x = x
    val op INT_NE_IMP_LTGT =
    DT(((("intExtension",2),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96,101]),
         ("integer",[65,154]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%4%14%30%15$0@%29%13@@@@%23%26%29%13@@$0@@%26$0@%29%13@@@@|@"])
  fun op INT_NOTGT_IMP_EQLT x = x
    val op INT_NOTGT_IMP_EQLT =
    DT(((("intExtension",3),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("integer",[65,103,154]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%11%3%14%30%26$0@%29%13@@@@%23%15%29%13@@$0@@%26%29%13@@$0@@@|@"])
  fun op INT_NO_ZERODIV x = x
    val op INT_NO_ZERODIV =
    DT(((("intExtension",4),
        [("bool",[25,26,27,30,52,54,56,63]),
         ("integer",[159,166])]),["DISK_THM"]),
       [read"%11%4%11%7%14%23%15$1@%29%13@@@%15$0@%29%13@@@@%15%27$1@$0@@%29%13@@@|@|@"])
  fun op INT_NOTPOS0_NEG x = x
    val op INT_NOTPOS0_NEG =
    DT(((("intExtension",5),
        [("bool",[25,26,47,48,53,54,58,63,96]),("integer",[65,145,178]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%11%1%16%30%26%29%13@@$0@@@%16%30%15$0@%29%13@@@@%26%29%13@@%28$0@@@@|@"])
  fun op INT_NOT0_MUL x = x
    val op INT_NOT0_MUL =
    DT(((("intExtension",6),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("intExtension",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%1%11%2%16%30%15$1@%29%13@@@@%16%30%15$0@%29%13@@@@%30%15%27$1@$0@@%29%13@@@@@|@|@"])
  fun op INT_GT0_IMP_NOT0 x = x
    val op INT_GT0_IMP_NOT0 =
    DT(((("intExtension",7),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("integer",[65,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%11%1%16%26%29%13@@$0@@%30%15$0@%29%13@@@@|@"])
  fun op INT_NOTLTEQ_GT x = x
    val op INT_NOTLTEQ_GT =
    DT(((("intExtension",8),
        [("bool",[25,26,47,48,53,54,63,96]),("integer",[65]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%11%1%16%30%26$0@%29%13@@@@%16%30%15$0@%29%13@@@@%26%29%13@@$0@@@|@"])
  fun op INT_ABS_NOT0POS x = x
    val op INT_ABS_NOT0POS =
    DT(((("intExtension",9),
        [("bool",[25,26,27,30,47,48,53,54,58,63,93,94,96,101,105,129,147]),
         ("integer",[65,119,253]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%4%16%30%15$0@%29%13@@@@%26%29%13@@%17$0@@@|@"])
  fun op INT_SGN_NOTPOSNEG x = x
    val op INT_SGN_NOTPOSNEG =
    DT(((("intExtension",10),
        [("bool",[25,26,27,30,51,53,54,56,58,63,64,105,124]),
         ("intExtension",[0]),("integer",[166,342]),
         ("numeral",[3,6])]),["DISK_THM"]),
       [read"%11%4%16%30%15%21$0@@%28%29%20%18%22@@@@@@@%16%30%15%21$0@@%29%20%18%22@@@@@@%15%21$0@@%29%13@@@@|@"])
  fun op INT_SGN_CASES x = x
    val op INT_SGN_CASES =
    DT(((("intExtension",24),
        [("bool",[25,26,30,47,48,53,54,63,96]),("intExtension",[23]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%1%10%0%16%12%16%15%21$1@@%28%29%20%18%22@@@@@@$0@@%12%16%15%21$1@@%29%13@@@$0@@%16%15%21$1@@%29%20%18%22@@@@@$0@@@@$0@|@|@"])
  fun op INT_LT_ADD_NEG x = x
    val op INT_LT_ADD_NEG =
    DT(((("intExtension",25),
        [("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("integer",[92,119,133]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%11%4%11%7%16%12%26$1@%29%13@@@%26$0@%29%13@@@@%26%24$1@$0@@%29%13@@@|@|@"])
  end
  val _ = DB.bindl "intExtension"
  [("SGN_def",SGN_def,DB.Def), ("INT_SGN_TOTAL",INT_SGN_TOTAL,DB.Thm),
   ("INT_SGN_MUL2",INT_SGN_MUL2,DB.Thm),
   ("INT_SGN_MUL",INT_SGN_MUL,DB.Thm),
   ("INT_SGN_CLAUSES",INT_SGN_CLAUSES,DB.Thm),
   ("INT_NOT0_SGNNOT0",INT_NOT0_SGNNOT0,DB.Thm),
   ("INT_ABS_CALCULATE_POS",INT_ABS_CALCULATE_POS,DB.Thm),
   ("INT_ABS_CALCULATE_0",INT_ABS_CALCULATE_0,DB.Thm),
   ("INT_ABS_CALCULATE_NEG",INT_ABS_CALCULATE_NEG,DB.Thm),
   ("INT_GT_RMUL_EXP",INT_GT_RMUL_EXP,DB.Thm),
   ("INT_LT_RMUL_EXP",INT_LT_RMUL_EXP,DB.Thm),
   ("INT_EQ_RMUL_EXP",INT_EQ_RMUL_EXP,DB.Thm),
   ("LESS_IMP_NOT_0",LESS_IMP_NOT_0,DB.Thm),
   ("INT_MUL_POS_SIGN",INT_MUL_POS_SIGN,DB.Thm),
   ("INT_NE_IMP_LTGT",INT_NE_IMP_LTGT,DB.Thm),
   ("INT_NOTGT_IMP_EQLT",INT_NOTGT_IMP_EQLT,DB.Thm),
   ("INT_NO_ZERODIV",INT_NO_ZERODIV,DB.Thm),
   ("INT_NOTPOS0_NEG",INT_NOTPOS0_NEG,DB.Thm),
   ("INT_NOT0_MUL",INT_NOT0_MUL,DB.Thm),
   ("INT_GT0_IMP_NOT0",INT_GT0_IMP_NOT0,DB.Thm),
   ("INT_NOTLTEQ_GT",INT_NOTLTEQ_GT,DB.Thm),
   ("INT_ABS_NOT0POS",INT_ABS_NOT0POS,DB.Thm),
   ("INT_SGN_NOTPOSNEG",INT_SGN_NOTPOSNEG,DB.Thm),
   ("INT_SGN_CASES",INT_SGN_CASES,DB.Thm),
   ("INT_LT_ADD_NEG",INT_LT_ADD_NEG,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("numRingTheory.numRing_grammars",
                          numRingTheory.numRing_grammars),
                         ("integerRingTheory.integerRing_grammars",
                          integerRingTheory.integerRing_grammars),
                         ("OmegaTheory.Omega_grammars",
                          OmegaTheory.Omega_grammars),
                         ("int_arithTheory.int_arith_grammars",
                          int_arithTheory.int_arith_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SGN", (Term.prim_mk_const { Name = "SGN", Thy = "intExtension"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SGN", (Term.prim_mk_const { Name = "SGN", Thy = "intExtension"}))
  val intExtension_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "intExtension",
    thydataty = "compute",
    data = "intExtension.SGN_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "intExtension"
end
