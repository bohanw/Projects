structure int_arithTheory :> int_arithTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading int_arithTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open gcdTheory integerTheory
  in end;
  val _ = Theory.link_parents
          ("int_arith",
          Arbnum.fromString "1488587685",
          Arbnum.fromString "137740")
          [("gcd",
           Arbnum.fromString "1488586186",
           Arbnum.fromString "995298"),
           ("integer",
           Arbnum.fromString "1488587637",
           Arbnum.fromString "492174")];
  val _ = Theory.incorporate_types "int_arith" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("integer", "int"),
   ID("num", "num"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "-"), ID("bool", "/\\"), ID("num", "0"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("bool", "?!"),
   ID("integer", "ABS"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("arithmetic", "EVEN"),
   ID("bool", "F"), ID("arithmetic", "NUMERAL"), ID("arithmetic", "ODD"),
   ID("bool", "T"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("int_arith", "bmarker"), ID("divides", "divides"), ID("gcd", "gcd"),
   ID("integer", "int_add"), ID("integer", "int_div"),
   ID("integer", "int_divides"), ID("integer", "int_le"),
   ID("integer", "int_lt"), ID("integer", "int_mul"),
   ID("integer", "int_neg"), ID("integer", "int_of_num"),
   ID("integer", "int_sub"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYV "'a", TYOP [0, 2, 0], TYOP [2],
   TYOP [0, 4, 0], TYOP [3], TYOP [0, 3, 0], TYOP [0, 1, 0],
   TYOP [0, 7, 0], TYOP [0, 5, 0], TYOP [0, 10, 0], TYOP [0, 6, 0],
   TYOP [0, 12, 0], TYOP [0, 6, 6], TYOP [0, 6, 14], TYOP [0, 0, 1],
   TYOP [0, 2, 3], TYOP [0, 4, 5], TYOP [0, 6, 12], TYOP [0, 4, 4],
   TYOP [0, 4, 20], TYOP [0, 0, 21], TYOP [0, 0, 15], TYOP [0, 6, 4]]
  end
  val _ = Theory.incorporate_consts "int_arith" tyvector [("bmarker", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 3), TMV("P", 5), TMV("a", 4), TMV("a", 6), TMV("b", 0),
   TMV("b", 4), TMV("b", 6), TMV("c", 4), TMV("d", 4), TMV("d", 6),
   TMV("e", 2), TMV("high", 4), TMV("i", 4), TMV("j", 4), TMV("k", 4),
   TMV("low", 4), TMV("m", 4), TMV("m", 6), TMV("n", 4), TMV("n", 6),
   TMV("p", 0), TMV("p", 4), TMV("p", 6), TMV("q", 0), TMV("q", 4),
   TMV("q", 6), TMV("r", 0), TMV("r", 4), TMV("t", 4), TMV("u", 6),
   TMV("v", 2), TMV("v", 4), TMV("x", 4), TMV("x0", 4), TMV("y", 4),
   TMV("y", 6), TMV("z", 4), TMC(4, 7), TMC(4, 8), TMC(4, 9), TMC(4, 11),
   TMC(4, 10), TMC(4, 13), TMC(5, 15), TMC(6, 15), TMC(7, 16), TMC(8, 6),
   TMC(9, 17), TMC(9, 16), TMC(9, 18), TMC(9, 19), TMC(10, 16),
   TMC(11, 10), TMC(11, 13), TMC(12, 10), TMC(12, 13), TMC(13, 20),
   TMC(14, 14), TMC(15, 14), TMC(16, 22), TMC(16, 23), TMC(17, 12),
   TMC(18, 0), TMC(19, 14), TMC(20, 12), TMC(21, 0), TMC(22, 6),
   TMC(23, 16), TMC(24, 1), TMC(25, 19), TMC(26, 15), TMC(27, 21),
   TMC(28, 21), TMC(29, 18), TMC(30, 18), TMC(31, 18), TMC(32, 21),
   TMC(33, 20), TMC(34, 24), TMC(35, 21), TMC(36, 1)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op bmarker_def x = x
    val op bmarker_def =
    DT(((("int_arith",57),[]),[]), [read"%38%4%48%68$0@@$0@|@"])
  fun op not_less x = x
    val op not_less =
    DT(((("int_arith",0),
        [("bool",[25,26,27,30,52,53,56]),
         ("integer",[65,101,109,136,211])]),["DISK_THM"]),
       [read"%48%80%75%32@%34@@@%75%34@%71%32@%78%63%57%66@@@@@@"])
  fun op elim_eq x = x
    val op elim_eq =
    DT(((("int_arith",1),
        [("bool",[25,26,27,51,52,53,54,58]),("int_arith",[0]),
         ("integer",[65,66])]),["DISK_THM"]),
       [read"%48%49%32@%34@@%45%75%32@%71%34@%78%63%57%66@@@@@@%75%34@%71%32@%78%63%57%66@@@@@@@"])
  fun op less_to_leq_samel x = x
    val op less_to_leq_samel =
    DT(((("int_arith",2),
        [("bool",[25,36,56,58]),("int_arith",[0]),
         ("integer",[62,74,80,81])]),["DISK_THM"]),
       [read"%41%32%41%34%48%75$1@$0@@%74$1@%71$0@%77%78%63%57%66@@@@@@@|@|@"])
  fun op less_to_leq_samer x = x
    val op less_to_leq_samer =
    DT(((("int_arith",3),
        [("bool",[25,36,56]),("int_arith",[0]),
         ("integer",[74,100])]),["DISK_THM"]),
       [read"%41%32%41%34%48%75$1@$0@@%74%71$1@%78%63%57%66@@@@@$0@@|@|@"])
  fun op lt_move_all_right x = x
    val op lt_move_all_right =
    DT(((("int_arith",4),
        [("bool",[25,36,56]),("integer",[79,134])]),["DISK_THM"]),
       [read"%41%32%41%34%48%75$1@$0@@%75%78%46@@%71$0@%77$1@@@@|@|@"])
  fun op lt_move_all_left x = x
    val op lt_move_all_left =
    DT(((("int_arith",5),
        [("bool",[25,36,56]),("integer",[79,135])]),["DISK_THM"]),
       [read"%41%32%41%34%48%75$1@$0@@%75%71$1@%77$0@@@%78%46@@@|@|@"])
  fun op lt_move_left_left x = x
    val op lt_move_left_left =
    DT(((("int_arith",6),[("integer",[59,135])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%48%75$2@%71$1@$0@@@%75%71$2@%77$1@@@$0@@|@|@|@"])
  fun op lt_move_left_right x = x
    val op lt_move_left_right =
    DT(((("int_arith",7),[("integer",[59,134])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%48%75%71$2@$1@@$0@@%75$1@%71$0@%77$2@@@@|@|@|@"])
  fun op le_move_right_left x = x
    val op le_move_right_left =
    DT(((("int_arith",8),
        [("bool",[25,36,56,58]),("integer",[73,177])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%48%74$2@%71$1@$0@@@%74%71$2@%77$0@@@$1@@|@|@|@"])
  fun op le_move_all_right x = x
    val op le_move_all_right =
    DT(((("int_arith",9),
        [("bool",[25,36,56,58]),("integer",[73,79,176])]),["DISK_THM"]),
       [read"%41%32%41%34%48%74$1@$0@@%74%78%46@@%71$0@%77$1@@@@|@|@"])
  fun op eq_move_all_right x = x
    val op eq_move_all_right =
    DT(((("int_arith",10),
        [("bool",[25,26,53,56,58,105,124]),
         ("integer",[73,79,82,192])]),["DISK_THM"]),
       [read"%41%32%41%34%48%49$1@$0@@%49%78%46@@%71$0@%77$1@@@@|@|@"])
  fun op eq_move_all_left x = x
    val op eq_move_all_left =
    DT(((("int_arith",11),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("int_arith",[10]),("integer",[59]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%32%41%34%48%49$1@$0@@%49%71$1@%77$0@@@%78%46@@@|@|@"])
  fun op eq_move_left_left x = x
    val op eq_move_left_left =
    DT(((("int_arith",12),
        [("bool",[25,26,56,58]),
         ("integer",[59,62,79,80,81])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%48%49$2@%71$1@$0@@@%49%71$2@%77$1@@@$0@@|@|@|@"])
  fun op eq_move_left_right x = x
    val op eq_move_left_right =
    DT(((("int_arith",13),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("int_arith",[12]),("integer",[59]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%48%49%71$2@$1@@$0@@%49$1@%71$0@%77$2@@@@|@|@|@"])
  fun op eq_move_right_left x = x
    val op eq_move_right_left =
    DT(((("int_arith",14),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("int_arith",[12]),("integer",[59]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%48%49$2@%71$1@$0@@@%49%71$2@%77$0@@@$1@@|@|@|@"])
  fun op lcm_eliminate x = x
    val op lcm_eliminate =
    DT(((("int_arith",15),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,76,78,80,81,84,93,
          94,96]),("integer",[60,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%40%1%41%7%48%52%32$2%76$1@$0@@|@@%52%32%45$2$0@@%73$1@$0@@|@@|@|@"])
  fun op lt_justify_multiplication x = x
    val op lt_justify_multiplication =
    DT(((("int_arith",16),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("integer",[66,67,79,150,173,304]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%18%41%32%41%34%51%75%78%46@@$2@@%48%75$1@$0@@%75%76$2@$1@@%76$2@$0@@@@|@|@|@"])
  fun op eq_justify_multiplication x = x
    val op eq_justify_multiplication =
    DT(((("int_arith",17),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("integer",[61,66,161]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%18%41%32%41%34%51%75%78%46@@$2@@%48%49$1@$0@@%49%76$2@$1@@%76$2@$0@@@@|@|@|@"])
  fun op justify_divides x = x
    val op justify_divides =
    DT(((("int_arith",18),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("integer",[66,295]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%18%41%32%41%34%51%75%78%46@@$2@@%48%73$1@$0@@%73%76$2@$1@@%76$2@$0@@@@|@|@|@"])
  fun op justify_divides2 x = x
    val op justify_divides2 =
    DT(((("int_arith",19),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96]),
         ("int_arith",[12]),("integer",[61,63,64,96,286]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%41%18%41%7%41%32%41%34%48%73%76$3@$1@@%71%76$3@$0@@$2@@@%45%73%76$3@$1@@%71%76$3@$0@@$2@@@%73$3@$2@@@|@|@|@|@"])
  fun op justify_divides3 x = x
    val op justify_divides3 =
    DT(((("int_arith",20),[("integer",[290,293,296])]),["DISK_THM"]),
       [read"%41%18%41%32%41%7%48%73$2@%71%76$2@$1@@$0@@@%73$2@$0@@|@|@|@"])
  fun op INT_SUB_SUB3 x = x
    val op INT_SUB_SUB3 =
    DT(((("int_arith",21),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("integer",[59,62,73,92,97]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%41%32%41%34%41%36%49%79$2@%79$1@$0@@@%79%71$2@$0@@$1@@|@|@|@"])
  fun op move_sub x = x
    val op move_sub =
    DT(((("int_arith",22),[("integer",[80,180,182])]),["DISK_THM"]),
       [read"%41%7%41%5%41%2%49%71%79$0@$2@@$1@@%79%71$0@$1@@$2@@|@|@|@"])
  fun op can_get_small x = x
    val op can_get_small =
    DT(((("int_arith",23),
        [("arithmetic",[18,41,46,59,71,76,93,173,180,183]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,72,78,93,94,
          96,101,104,105,146]),("int_arith",[16,21,22]),
         ("integer",
         [60,63,65,67,83,84,96,109,146,147,150,151,157,165,168,173,174,178,
          206,208,304]),("numeral",[3,5,7,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%32%41%34%41%8%51%75%78%46@@$0@@%52%7%45%75%78%46@@$0@@%75%79$2@%76$0@$1@@@$3@@|@@|@|@|@"])
  fun op can_get_big x = x
    val op can_get_big =
    DT(((("int_arith",24),
        [("bool",[25,26,47,48,53,54,58,63,72,78,94,96,146]),
         ("int_arith",[23]),("integer",[174]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%32%41%34%41%8%51%75%78%46@@$0@@%52%7%45%75%78%46@@$0@@%75$3@%71$2@%76$0@$1@@@@|@@|@|@|@"])
  fun op positive_product_implication x = x
    val op positive_product_implication =
    DT(((("int_arith",25),
        [("bool",[25,51,52,53,58,63,105,124]),
         ("integer",[304])]),["DISK_THM"]),
       [read"%41%7%41%8%51%45%75%78%46@@$1@@%75%78%46@@$0@@@%75%78%46@@%76$1@$0@@@|@|@"])
  fun op restricted_quantification_simp x = x
    val op restricted_quantification_simp =
    DT(((("int_arith",26),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("integer",[65,66,67,108,109,112,157,174,206,211]),
         ("numeral",[3,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%15%41%11%41%32%48%45%75$2@$0@@%74$0@$1@@@%45%75$2@$1@@%67%49$0@$1@@%45%75$2@$0@@%74$0@%79$1@%78%63%57%66@@@@@@@@@|@|@|@"])
  fun op top_and_lessers x = x
    val op top_and_lessers =
    DT(((("int_arith",27),
        [("arithmetic",[28]),
         ("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("integer",[62,66,79,83,85,92,93,119,162,165,166,210,321]),
         ("marker",[6]),("num",[7,9]),("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%40%1%41%8%41%33%51%45%41%32%51$3$0@@$3%79$0@$2@@@|@@$2$0@@@%41%7%51%75%78%46@@$0@@$3%79$1@%76$0@$2@@@@|@@|@|@|@"])
  fun op bot_and_greaters x = x
    val op bot_and_greaters =
    DT(((("int_arith",28),
        [("bool",[25,36,51,53,58,63,105,124]),("int_arith",[27]),
         ("integer",[73,96,97])]),["DISK_THM"]),
       [read"%40%1%41%8%41%33%51%45%41%32%51$3$0@@$3%71$0@$2@@@|@@$2$0@@@%41%7%51%75%78%46@@$0@@$3%71$1@%76$0@$2@@@@|@@|@|@|@"])
  fun op in_additive_range x = x
    val op in_additive_range =
    DT(((("int_arith",29),
        [("bool",[25,26,51,56,63]),
         ("integer",[59,79,128,138,157,175,177])]),["DISK_THM"]),
       [read"%41%15%41%8%41%32%48%45%75$2@$0@@%74$0@%71$2@$1@@@@%52%13%45%49$1@%71$3@$0@@@%45%75%78%46@@$0@@%74$0@$2@@@|@@|@|@|@"])
  fun op in_subtractive_range x = x
    val op in_subtractive_range =
    DT(((("int_arith",30),
        [("bool",[25,26,51,56,63]),
         ("integer",
         [59,73,79,128,157,174,175,177,179,195])]),["DISK_THM"]),
       [read"%41%11%41%8%41%32%48%45%74%79$2@$1@@$0@@%75$0@$2@@@%52%13%45%49$1@%79$3@$0@@@%45%75%78%46@@$0@@%74$0@$2@@@|@@|@|@|@"])
  fun op subtract_to_small x = x
    val op subtract_to_small =
    DT(((("int_arith",31),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,73,84,93,94,96,109,
          111]),
         ("integer",
         [59,66,79,80,83,99,101,109,138,149,151,157,174,175,195,227]),
         ("marker",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%32%41%8%51%75%78%46@@$0@@%52%14%45%75%78%46@@%79$2@%76$0@$1@@@@%74%79$2@%76$0@$1@@@$1@@|@@|@|@"])
  fun op add_to_great x = x
    val op add_to_great =
    DT(((("int_arith",32),
        [("bool",[25,51,53,58,63]),("int_arith",[31]),
         ("integer",[73,95])]),["DISK_THM"]),
       [read"%41%32%41%8%51%75%78%46@@$0@@%52%14%45%75%78%46@@%71$2@%76$0@$1@@@@%74%71$2@%76$0@$1@@@$1@@|@@|@|@"])
  fun op INT_LT_ADD_NUMERAL x = x
    val op INT_LT_ADD_NUMERAL =
    DT(((("int_arith",33),
        [("arithmetic",[1,3,4,24]),("bool",[25,26,27,36,51,54,63]),
         ("integer",[119,157,165]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%41%32%42%35%45%75$1@%71$1@%78%63%57$0@@@@@@%45%75$1@%71$1@%78%63%58$0@@@@@@%80%75$1@%71$1@%77%78%63$0@@@@@@@@|@|@"])
  fun op INT_NUM_FORALL x = x
    val op INT_NUM_FORALL =
    DT(((("int_arith",34),
        [("arithmetic",[46]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,78,93,94,96,146]),
         ("integer",[164,208]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%48%42%19%1%78$0@@|@@%41%32%51%74%78%46@@$0@@%1$0@@|@@"])
  fun op INT_NUM_EXISTS x = x
    val op INT_NUM_EXISTS =
    DT(((("int_arith",35),
        [("arithmetic",[46]),
         ("bool",[25,26,47,48,53,54,63,72,78,93,94,96,146]),
         ("integer",[164,208]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%48%53%19%1%78$0@@|@@%52%32%45%74%78%46@@$0@@%1$0@@|@@"])
  fun op INT_NUM_UEXISTS x = x
    val op INT_NUM_UEXISTS =
    DT(((("int_arith",36),
        [("arithmetic",[46]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,78,93,94,96,105,122,
          124,146]),("integer",[164,166,208]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%48%55%19%1%78$0@@|@@%54%32%45%74%78%46@@$0@@%1$0@@|@@"])
  fun op INT_NUM_SUB x = x
    val op INT_NUM_SUB =
    DT(((("int_arith",37),
        [("arithmetic",[10,59,63]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,94,96,109,111]),
         ("integer",[165,166,194]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%19%42%17%49%78%44$1@$0@@@%59%75%78$1@@%78$0@@@%78%46@@%79%78$1@@%78$0@@@@|@|@"])
  fun op INT_NUM_COND x = x
    val op INT_NUM_COND =
    DT(((("int_arith",38),
        [("bool",[25,26,47,48,51,52,53,54,56,58,63,71,73,76,108,109,111]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%38%4%42%19%42%17%49%78%60$2@$1@$0@@@%59$2@%78$1@@%78$0@@@|@|@|@"])
  fun op INT_NUM_ODD x = x
    val op INT_NUM_ODD =
    DT(((("int_arith",39),
        [("arithmetic",[159,169]),
         ("bool",
         [6,13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,73,78,93,94,96,
          145,146]),
         ("integer",[61,102,109,159,163,166,168,206,208,286,304]),
         ("numeral",[3,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%19%48%64$0@@%80%73%78%63%58%66@@@@%78$0@@@@|@"])
  fun op INT_NUM_EVEN x = x
    val op INT_NUM_EVEN =
    DT(((("int_arith",40),
        [("arithmetic",[158]),("bool",[25,36,54,56]),
         ("int_arith",[39])]),["DISK_THM"]),
       [read"%42%19%48%61$0@@%73%78%63%58%66@@@@%78$0@@@|@"])
  fun op HO_SUB_ELIM x = x
    val op HO_SUB_ELIM =
    DT(((("int_arith",41),
        [("bool",
         [25,26,43,47,48,51,52,53,54,58,63,64,93,94,96,97,98,105,109,111,
          129]),("int_arith",[37]),("integer",[65,66,73,101,109,113]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%40%1%42%3%42%6%48$2%78%44$1@$0@@@@%67%45%74%78$0@@%78$1@@@$2%71%78$1@@%77%78$0@@@@@@%45%75%78$1@@%78$0@@@$2%78%46@@@@@|@|@|@"])
  fun op CONJ_EQ_ELIM x = x
    val op CONJ_EQ_ELIM =
    DT(((("int_arith",42),[("bool",[25,26,51,56,63])]),["DISK_THM"]),
       [read"%39%0%37%30%37%10%48%45%47$1@$0@@$2$1@@@%45%47$1@$0@@$2$0@@@|@|@|@"])
  fun op elim_neg_ones x = x
    val op elim_neg_ones =
    DT(((("int_arith",43),
        [("bool",[25,36,56,58]),("integer",[62,80,81])]),["DISK_THM"]),
       [read"%41%32%49%71%71$0@%77%78%63%57%66@@@@@@%78%63%57%66@@@@@$0@|@"])
  fun op elim_minus_ones x = x
    val op elim_minus_ones =
    DT(((("int_arith",44),
        [("bool",[25,36,56,58]),("integer",[62,73,80,82])]),["DISK_THM"]),
       [read"%41%32%49%79%71$0@%78%63%57%66@@@@@%78%63%57%66@@@@@$0@|@"])
  fun op INT_NUM_DIVIDES x = x
    val op INT_NUM_DIVIDES =
    DT(((("int_arith",45),
        [("arithmetic",[71]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,73,86,93,94,96,101,
          105,106,124,145]),("divides",[0]),
         ("integer",[166,168,210,286,323,342]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%19%42%17%48%73%78$1@@%78$0@@@%69$1@$0@@|@|@"])
  fun op INT_LINEAR_GCD x = x
    val op INT_LINEAR_GCD =
    DT(((("int_arith",46),
        [("bool",[25,26,30,37,47,48,53,54,56,58,63,72,78,146]),
         ("gcd",[15,16,17,29]),("int_arith",[12]),
         ("integer",[79,80,83,94,167,323]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%19%42%17%52%21%52%24%49%71%76$1@%78$3@@@%76$0@%78$2@@@@%78%70$3@$2@@@|@|@|@|@"])
  fun op INT_DIVIDES_LRMUL x = x
    val op INT_DIVIDES_LRMUL =
    DT(((("int_arith",47),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,93,94,96,105,
          124]),("integer",[63,161,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%21%41%24%41%27%51%80%49$1@%78%46@@@@%48%73%76$2@$1@@%76$0@$1@@@%73$2@$0@@@|@|@|@"])
  fun op INT_DIVIDES_RELPRIME_MUL x = x
    val op INT_DIVIDES_RELPRIME_MUL =
    DT(((("int_arith",48),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("gcd",[15,25]),("int_arith",[45]),("integer",[210,294,298,323]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%22%42%25%41%27%51%50%70$2@$1@@%63%57%66@@@@%48%73%78$2@@%76%78$1@@$0@@@%73%78$2@@$0@@@|@|@|@"])
  fun op gcdthm2 x = x
    val op gcdthm2 =
    DT(((("int_arith",49),
        [("arithmetic",[148]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,72,74,75,78,80,
          81,84,93,94,96,105,124,146]),("gcd",[0,13,15,27]),
         ("int_arith",[12,45,47,48]),
         ("integer",
         [59,61,62,63,64,83,84,85,95,161,166,168,222,224,234,239,286,287,
          290,291,293,294,296,323]),("marker",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%17%42%3%41%32%41%5%42%9%41%21%41%24%51%45%50$2@%70$5@$6@@@%45%49%78$2@@%71%76$1@%78$5@@@%76$0@%78$6@@@@@%45%80%50$2@%46@@@%45%80%50$6@%46@@@%80%50$5@%46@@@@@@@%48%73%78$6@@%71%76%78$5@@$4@@$3@@@%45%73%78$2@@$3@@%52%28%49$5@%71%76%77$2@@%72$4@%78$3@@@@%76$0@%72%78$7@@%78$3@@@@@|@@@@|@|@|@|@|@|@|@"])
  fun op gcd1thm x = x
    val op gcd1thm =
    DT(((("int_arith",50),
        [("arithmetic",[73]),
         ("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,93,
          94,96,146]),("divides",[1,4,14]),("gcd",[0,13]),
         ("int_arith",[45]),("integer",[93,210,289,296,298,323,342]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%17%42%19%41%21%41%24%51%49%71%76$1@%78$3@@@%76$0@%78$2@@@@%78%63%57%66@@@@@%50%70$3@$2@@%63%57%66@@@@|@|@|@|@"])
  fun op gcd21_thm x = x
    val op gcd21_thm =
    DT(((("int_arith",51),
        [("arithmetic",[46,71,93,172]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,94,96,101,104,
          105,124]),("int_arith",[49,50]),("integer",[222,289]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%42%17%42%3%41%32%41%5%41%21%41%24%51%45%49%71%76$1@%78$4@@@%76$0@%78$5@@@@%78%63%57%66@@@@@%45%80%50$5@%46@@@%80%50$4@%46@@@@@%48%73%78$5@@%71%76%78$4@@$3@@$2@@@%52%28%49$4@%71%76%77$2@@$3@@%76$0@%78$6@@@@|@@@|@|@|@|@|@|@"])
  fun op elim_lt_coeffs1 x = x
    val op elim_lt_coeffs1 =
    DT(((("int_arith",52),
        [("arithmetic",
         [17,24,25,26,27,41,46,59,66,71,73,75,93,172,173,176,177,180,183,
          209,269]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,94,96,101,104,
          105,124]),("int_arith",[16]),
         ("integer",[61,101,112,160,165,166,168,206,210,220,336]),
         ("marker",[6]),("numeral",[0,3,5,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%19%42%17%41%32%51%80%50$1@%46@@@%48%75%78$2@@%76%78$1@@$0@@@%75%72%78$2@@%78$1@@@$0@@@|@|@|@"])
  fun op elim_lt_coeffs2 x = x
    val op elim_lt_coeffs2 =
    DT(((("int_arith",53),
        [("arithmetic",
         [22,24,25,26,41,46,59,71,73,93,172,173,177,180,209]),
         ("bool",
         [25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,93,94,96,101,104,
          105,107,129]),("int_arith",[0,16]),
         ("integer",
         [64,67,80,84,99,101,113,160,165,166,167,168,220,228,287,336]),
         ("marker",[6]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%42%19%42%17%41%32%51%80%50$1@%46@@@%48%75%76%78$1@@$0@@%78$2@@@%75$0@%59%73%78$1@@%78$2@@@%72%78$2@@%78$1@@@%71%72%78$2@@%78$1@@@%78%63%57%66@@@@@@@@|@|@|@"])
  fun op elim_le_coeffs x = x
    val op elim_le_coeffs =
    DT(((("int_arith",54),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,124,
          129]),("int_arith",[2,44]),
         ("integer",[61,62,64,66,73,84,94,99,102,113,114,155,227,316,317]),
         ("marker",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%16%41%18%41%32%51%75%78%46@@$2@@%48%74%78%46@@%71%76$2@$0@@$1@@@%74%78%46@@%71$0@%72$1@$2@@@@@|@|@|@"])
  fun op elim_eq_coeffs x = x
    val op elim_eq_coeffs =
    DT(((("int_arith",55),
        [("bool",[25,26,27,47,48,51,53,54,56,63,72,105]),
         ("integer",[61,84,166,224,234,239,286]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%42%17%41%32%41%34%51%80%50$2@%46@@@%48%49%76%78$2@@$1@@$0@@%45%73%78$2@@$0@@%49$1@%72$0@%78$2@@@@@@|@|@|@"])
  fun op cooper_lemma_1 x = x
    val op cooper_lemma_1 =
    DT(((("int_arith",56),
        [("arithmetic",[148]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,73,74,75,
          78,80,81,84,93,94,96,105,124,146,170]),("gcd",[0,13,22]),
         ("int_arith",[21,45,47]),
         ("integer",
         [59,61,62,63,64,79,85,94,137,139,146,150,151,159,166,168,180,192,
          193,286,291,292,293,296,298,299,321]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%42%17%42%19%42%3%41%5%42%29%41%31%41%21%41%24%41%32%42%9%51%45%50$0@%70%43$5@$9@@%43$7@$8@@@@%45%49%78$0@@%71%76%76$3@%78$5@@@%78$9@@@%76%76$2@%78$7@@@%78$8@@@@@%45%80%50$9@%46@@@%45%80%50$8@%46@@@%45%80%50$7@%46@@@%80%50$5@%46@@@@@@@@%48%45%73%78$9@@%71%76%78$7@@$1@@$6@@@%73%78$8@@%71%76%78$5@@$1@@$4@@@@%45%73%76%78$9@@%78$8@@@%71%71%76%78$0@@$1@@%76%76$4@%78$9@@@$3@@@%76%76$6@%78$8@@@$2@@@@%73%78$0@@%79%76%78$7@@$4@@%76%78$5@@$6@@@@@@|@|@|@|@|@|@|@|@|@|@"])
  fun op bmarker_rewrites x = x
    val op bmarker_rewrites =
    DT(((("int_arith",58),
        [("bool",[25,63]),("int_arith",[57]),
         ("sat",[1,3,5,6,7,11,12,15])]),["DISK_THM"]),
       [read"%38%20%38%23%38%26%45%48%45$1@%68$2@@@%45%68$2@@$1@@@%45%48%45$1@%45%68$2@@$0@@@%45%68$2@@%45$1@$0@@@@%48%45%45%68$2@@$1@@$0@@%45%68$2@@%45$1@$0@@@@@|@|@|@"])
  fun op NOT_INT_DIVIDES x = x
    val op NOT_INT_DIVIDES =
    DT(((("int_arith",59),
        [("arithmetic",[46,71,93,147,173,176,180]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,72,93,94,96,104,
          105,124,129,147]),("int_arith",[2,3,22]),
         ("integer",
         [59,62,73,79,80,83,85,103,109,111,114,126,128,138,144,164,165,166,
          176,177,206,210,227,233,235,255,257,287,298]),("marker",[6]),
         ("numeral",[3,6,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%41%7%41%8%51%80%49$1@%78%46@@@@%48%80%73$1@$0@@@%52%12%45%74%78%63%57%66@@@@$0@@%45%74$0@%79%56$2@@%78%63%57%66@@@@@@%73$2@%71$1@$0@@@@|@@@|@|@"])
  fun op NOT_INT_DIVIDES_POS x = x
    val op NOT_INT_DIVIDES_POS =
    DT(((("int_arith",60),
        [("bool",[25,26,27,43,54,56]),("int_arith",[59]),
         ("integer",[166,255])]),["DISK_THM"]),
       [read"%42%19%41%8%51%80%50$1@%46@@@%48%80%73%78$1@@$0@@@%52%12%45%45%74%78%63%57%66@@@@$0@@%74$0@%79%78$2@@%78%63%57%66@@@@@@@%73%78$2@@%71$1@$0@@@|@@@|@|@"])
  fun op le_context_rwt1 x = x
    val op le_context_rwt1 =
    DT(((("int_arith",61),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("integer",[59,62,79,128,131]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%74%78%46@@%71%7@%32@@@%51%74%32@%34@@%48%74%78%46@@%71%7@%34@@@%65@@@"])
  fun op le_context_rwt2 x = x
    val op le_context_rwt2 =
    DT(((("int_arith",62),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("int_arith",[9]),("integer",[59,97,104,114]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%74%78%46@@%71%7@%32@@@%51%75%34@%77%32@@@%48%74%78%46@@%71%77%7@@%34@@@%62@@@"])
  fun op le_context_rwt3 x = x
    val op le_context_rwt3 =
    DT(((("int_arith",63),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("integer",[66,113,128]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%51%74%78%46@@%71%7@%32@@@%51%75%32@%34@@%48%49%78%46@@%71%7@%34@@@%62@@@"])
  fun op le_context_rwt4 x = x
    val op le_context_rwt4 =
    DT(((("int_arith",64),
        [("bool",[25,26,47,48,53,54,58,63,93,94,96]),
         ("integer",[66,92,97,113,128,145]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%51%74%78%46@@%71%7@%32@@@%51%75%32@%77%34@@@%48%49%78%46@@%71%77%7@@%34@@@%62@@@"])
  fun op le_context_rwt5 x = x
    val op le_context_rwt5 =
    DT(((("int_arith",65),
        [("bool",[25,26,58,63]),
         ("integer",[92,97,108,115,145,179])]),["DISK_THM"]),
       [read"%51%74%78%46@@%71%7@%32@@@%48%74%78%46@@%71%77%7@@%77%32@@@@%49%78%46@@%71%7@%32@@@@"])
  fun op eq_context_rwt1 x = x
    val op eq_context_rwt1 =
    DT(((("int_arith",66),
        [("bool",[25,56]),("integer",[128])]),["DISK_THM"]),
       [read"%51%49%78%46@@%71%7@%32@@@%48%74%78%46@@%71%7@%34@@@%74%32@%34@@@"])
  fun op eq_context_rwt2 x = x
    val op eq_context_rwt2 =
    DT(((("int_arith",67),
        [("bool",[25,56]),("integer",[92,128,145])]),["DISK_THM"]),
       [read"%51%49%78%46@@%71%7@%32@@@%48%74%78%46@@%71%77%7@@%34@@@%74%77%32@@%34@@@"])
  end
  val _ = DB.bindl "int_arith"
  [("bmarker_def",bmarker_def,DB.Def), ("not_less",not_less,DB.Thm),
   ("elim_eq",elim_eq,DB.Thm),
   ("less_to_leq_samel",less_to_leq_samel,DB.Thm),
   ("less_to_leq_samer",less_to_leq_samer,DB.Thm),
   ("lt_move_all_right",lt_move_all_right,DB.Thm),
   ("lt_move_all_left",lt_move_all_left,DB.Thm),
   ("lt_move_left_left",lt_move_left_left,DB.Thm),
   ("lt_move_left_right",lt_move_left_right,DB.Thm),
   ("le_move_right_left",le_move_right_left,DB.Thm),
   ("le_move_all_right",le_move_all_right,DB.Thm),
   ("eq_move_all_right",eq_move_all_right,DB.Thm),
   ("eq_move_all_left",eq_move_all_left,DB.Thm),
   ("eq_move_left_left",eq_move_left_left,DB.Thm),
   ("eq_move_left_right",eq_move_left_right,DB.Thm),
   ("eq_move_right_left",eq_move_right_left,DB.Thm),
   ("lcm_eliminate",lcm_eliminate,DB.Thm),
   ("lt_justify_multiplication",lt_justify_multiplication,DB.Thm),
   ("eq_justify_multiplication",eq_justify_multiplication,DB.Thm),
   ("justify_divides",justify_divides,DB.Thm),
   ("justify_divides2",justify_divides2,DB.Thm),
   ("justify_divides3",justify_divides3,DB.Thm),
   ("INT_SUB_SUB3",INT_SUB_SUB3,DB.Thm), ("move_sub",move_sub,DB.Thm),
   ("can_get_small",can_get_small,DB.Thm),
   ("can_get_big",can_get_big,DB.Thm),
   ("positive_product_implication",positive_product_implication,DB.Thm),
   ("restricted_quantification_simp",
    restricted_quantification_simp,
    DB.Thm), ("top_and_lessers",top_and_lessers,DB.Thm),
   ("bot_and_greaters",bot_and_greaters,DB.Thm),
   ("in_additive_range",in_additive_range,DB.Thm),
   ("in_subtractive_range",in_subtractive_range,DB.Thm),
   ("subtract_to_small",subtract_to_small,DB.Thm),
   ("add_to_great",add_to_great,DB.Thm),
   ("INT_LT_ADD_NUMERAL",INT_LT_ADD_NUMERAL,DB.Thm),
   ("INT_NUM_FORALL",INT_NUM_FORALL,DB.Thm),
   ("INT_NUM_EXISTS",INT_NUM_EXISTS,DB.Thm),
   ("INT_NUM_UEXISTS",INT_NUM_UEXISTS,DB.Thm),
   ("INT_NUM_SUB",INT_NUM_SUB,DB.Thm),
   ("INT_NUM_COND",INT_NUM_COND,DB.Thm),
   ("INT_NUM_ODD",INT_NUM_ODD,DB.Thm),
   ("INT_NUM_EVEN",INT_NUM_EVEN,DB.Thm),
   ("HO_SUB_ELIM",HO_SUB_ELIM,DB.Thm),
   ("CONJ_EQ_ELIM",CONJ_EQ_ELIM,DB.Thm),
   ("elim_neg_ones",elim_neg_ones,DB.Thm),
   ("elim_minus_ones",elim_minus_ones,DB.Thm),
   ("INT_NUM_DIVIDES",INT_NUM_DIVIDES,DB.Thm),
   ("INT_LINEAR_GCD",INT_LINEAR_GCD,DB.Thm),
   ("INT_DIVIDES_LRMUL",INT_DIVIDES_LRMUL,DB.Thm),
   ("INT_DIVIDES_RELPRIME_MUL",INT_DIVIDES_RELPRIME_MUL,DB.Thm),
   ("gcdthm2",gcdthm2,DB.Thm), ("gcd1thm",gcd1thm,DB.Thm),
   ("gcd21_thm",gcd21_thm,DB.Thm),
   ("elim_lt_coeffs1",elim_lt_coeffs1,DB.Thm),
   ("elim_lt_coeffs2",elim_lt_coeffs2,DB.Thm),
   ("elim_le_coeffs",elim_le_coeffs,DB.Thm),
   ("elim_eq_coeffs",elim_eq_coeffs,DB.Thm),
   ("cooper_lemma_1",cooper_lemma_1,DB.Thm),
   ("bmarker_rewrites",bmarker_rewrites,DB.Thm),
   ("NOT_INT_DIVIDES",NOT_INT_DIVIDES,DB.Thm),
   ("NOT_INT_DIVIDES_POS",NOT_INT_DIVIDES_POS,DB.Thm),
   ("le_context_rwt1",le_context_rwt1,DB.Thm),
   ("le_context_rwt2",le_context_rwt2,DB.Thm),
   ("le_context_rwt3",le_context_rwt3,DB.Thm),
   ("le_context_rwt4",le_context_rwt4,DB.Thm),
   ("le_context_rwt5",le_context_rwt5,DB.Thm),
   ("eq_context_rwt1",eq_context_rwt1,DB.Thm),
   ("eq_context_rwt2",eq_context_rwt2,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("gcdTheory.gcd_grammars",gcdTheory.gcd_grammars),
                         ("integerTheory.integer_grammars",
                          integerTheory.integer_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bmarker", (Term.prim_mk_const { Name = "bmarker", Thy = "int_arith"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bmarker", (Term.prim_mk_const { Name = "bmarker", Thy = "int_arith"}))
  val int_arith_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "int_arith"
end
