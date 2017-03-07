structure prelimTheory :> prelimTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading prelimTheory ... " else ()
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
          ("prelim",
          Arbnum.fromString "1488587545",
          Arbnum.fromString "752318")
          [("list",
           Arbnum.fromString "1488586477",
           Arbnum.fromString "361466")];
  val _ = Theory.incorporate_types "prelim" [("ordering", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("prelim", "ordering"),
   ID("list", "list"), ID("pair", "prod"), ID("min", "bool"),
   ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("min", "@"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("bool", "COND"), ID("list", "CONS"), ID("bool", "DATATYPE"),
   ID("prelim", "EQUAL"), ID("bool", "F"), ID("prelim", "GREATER"),
   ID("combin", "I"), ID("prelim", "LESS"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("bool", "T"),
   ID("bool", "TYPE_DEFINITION"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("prelim", "compare"), ID("list", "list_CASE"),
   ID("prelim", "list_compare"), ID("prelim", "list_compare_tupled"),
   ID("prelim", "list_merge"), ID("prelim", "list_merge_tupled"),
   ID("prelim", "num2ordering"), ID("prelim", "ordering2num"),
   ID("prelim", "ordering_CASE"), ID("prelim", "ordering_size"),
   ID("pair", "pair_CASE"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 1, 6], TYOP [0, 0, 1],
   TYOP [3, 3], TYOP [4, 9, 9], TYOP [5], TYOP [0, 3, 11], TYOP [0, 3, 12],
   TYOP [4, 13, 10], TYOP [0, 14, 9], TYOP [0, 9, 9], TYOP [0, 9, 16],
   TYOP [0, 13, 17], TYV "'b", TYOP [3, 19], TYOP [4, 9, 20],
   TYOP [0, 19, 1], TYOP [0, 3, 22], TYOP [4, 23, 21], TYOP [0, 24, 1],
   TYOP [0, 20, 1], TYOP [0, 9, 26], TYOP [0, 23, 27], TYOP [0, 9, 11],
   TYOP [0, 9, 29], TYOP [0, 13, 30], TYOP [0, 20, 11], TYOP [0, 9, 32],
   TYOP [0, 23, 33], TYOP [0, 1, 11], TYOP [0, 14, 11], TYOP [0, 14, 36],
   TYOP [0, 24, 11], TYOP [0, 24, 38], TYOP [0, 3, 1], TYOP [0, 3, 40],
   TYOP [0, 1, 3], TYOP [0, 1, 35], TYOP [0, 1, 43], TYOP [0, 12, 11],
   TYOP [0, 19, 11], TYOP [0, 46, 11], TYOP [0, 13, 11], TYOP [0, 48, 11],
   TYOP [0, 23, 11], TYOP [0, 50, 11], TYOP [0, 31, 11], TYOP [0, 52, 11],
   TYOP [0, 34, 11], TYOP [0, 54, 11], TYOP [0, 35, 11], TYOP [0, 56, 11],
   TYOP [0, 29, 11], TYOP [0, 32, 11], TYOP [0, 0, 11], TYOP [0, 60, 11],
   TYOP [0, 10, 14], TYOP [0, 13, 62], TYOP [0, 21, 24], TYOP [0, 23, 64],
   TYOP [0, 9, 10], TYOP [0, 9, 66], TYOP [0, 20, 21], TYOP [0, 9, 68],
   TYOP [0, 11, 11], TYOP [0, 11, 70], TYOP [0, 0, 60], TYOP [0, 15, 11],
   TYOP [0, 15, 73], TYOP [0, 25, 11], TYOP [0, 25, 75], TYOP [0, 42, 11],
   TYOP [0, 77, 11], TYOP [0, 2, 11], TYOP [0, 79, 11], TYOP [0, 37, 11],
   TYOP [0, 81, 37], TYOP [0, 39, 11], TYOP [0, 83, 39], TYOP [0, 0, 0],
   TYOP [0, 11, 5], TYOP [0, 11, 17], TYOP [0, 3, 16], TYOP [0, 20, 20],
   TYOP [0, 19, 89], TYOP [0, 1, 1], TYOP [0, 60, 79], TYOP [0, 15, 15],
   TYOP [0, 93, 15], TYOP [0, 37, 94], TYOP [0, 25, 25], TYOP [0, 96, 25],
   TYOP [0, 39, 97], TYOP [0, 1, 91], TYOP [0, 1, 99], TYOP [0, 1, 100],
   TYOP [0, 88, 9], TYOP [0, 9, 102], TYOP [0, 9, 103], TYOP [0, 9, 1],
   TYOP [0, 3, 105], TYOP [0, 106, 1], TYOP [0, 1, 107], TYOP [0, 9, 108],
   TYOP [0, 19, 26], TYOP [0, 110, 1], TYOP [0, 1, 111], TYOP [0, 20, 112],
   TYOP [0, 9, 105], TYOP [0, 41, 114], TYOP [0, 10, 9], TYOP [0, 13, 116],
   TYOP [0, 117, 9], TYOP [0, 14, 118], TYOP [0, 21, 1], TYOP [0, 23, 120],
   TYOP [0, 121, 1], TYOP [0, 24, 122], TYOP [0, 17, 9], TYOP [0, 10, 124],
   TYOP [0, 27, 1], TYOP [0, 21, 126]]
  end
  val _ = Theory.incorporate_consts "prelim" tyvector
     [("ordering_size", 2), ("ordering_CASE", 7), ("ordering2num", 2),
      ("num2ordering", 8), ("list_merge_tupled", 15), ("list_merge", 18),
      ("list_compare_tupled", 25), ("list_compare", 28), ("compare", 7),
      ("LESS", 1), ("GREATER", 1), ("EQUAL", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 1), TMV("M'", 1), TMV("P", 31), TMV("P", 34), TMV("P", 35),
   TMV("R", 37), TMV("R", 39), TMV("a", 1), TMV("a", 14), TMV("a", 24),
   TMV("a'", 1), TMV("a_lt", 13), TMV("cmp", 41), TMV("cmp", 23),
   TMV("eq", 3), TMV("f", 42), TMV("gt", 3), TMV("l1", 9), TMV("l1'", 9),
   TMV("l2", 9), TMV("l2", 20), TMV("list_compare_tupled", 25),
   TMV("list_merge_tupled", 15), TMV("lt", 3), TMV("m", 0), TMV("n", 0),
   TMV("ordering", 44), TMV("r", 0), TMV("r'", 0), TMV("rep", 2),
   TMV("v", 13), TMV("v", 23), TMV("v0", 3), TMV("v0'", 3), TMV("v1", 3),
   TMV("v1", 9), TMV("v1", 10), TMV("v1", 21), TMV("v1'", 3),
   TMV("v10", 19), TMV("v11", 20), TMV("v2", 3), TMV("v2", 9),
   TMV("v2", 20), TMV("v2'", 3), TMV("v3", 9), TMV("v3", 20), TMV("v4", 3),
   TMV("v5", 9), TMV("v8", 19), TMV("v9", 20), TMV("x", 3), TMV("x", 13),
   TMV("x", 23), TMV("x", 1), TMV("x0", 3), TMV("x1", 3), TMV("x1", 9),
   TMV("x2", 3), TMV("x2", 9), TMV("x2", 20), TMV("y", 3), TMV("y", 19),
   TMC(6, 45), TMC(6, 47), TMC(6, 49), TMC(6, 51), TMC(6, 53), TMC(6, 55),
   TMC(6, 57), TMC(6, 58), TMC(6, 59), TMC(6, 61), TMC(6, 56), TMC(7, 63),
   TMC(7, 65), TMC(7, 67), TMC(7, 69), TMC(8, 71), TMC(9, 0), TMC(10, 72),
   TMC(11, 13), TMC(11, 71), TMC(11, 74), TMC(11, 76), TMC(11, 30),
   TMC(11, 72), TMC(11, 43), TMC(12, 71), TMC(13, 78), TMC(13, 80),
   TMC(13, 61), TMC(13, 56), TMC(14, 82), TMC(14, 84), TMC(15, 85),
   TMC(16, 85), TMC(17, 86), TMC(17, 87), TMC(18, 88), TMC(18, 90),
   TMC(19, 70), TMC(20, 1), TMC(21, 11), TMC(22, 1), TMC(23, 16),
   TMC(23, 91), TMC(24, 1), TMC(25, 9), TMC(25, 20), TMC(26, 85),
   TMC(27, 11), TMC(28, 92), TMC(29, 81), TMC(29, 83), TMC(30, 95),
   TMC(30, 98), TMC(31, 0), TMC(32, 71), TMC(33, 7), TMC(33, 101),
   TMC(34, 104), TMC(34, 109), TMC(34, 113), TMC(35, 115), TMC(35, 28),
   TMC(36, 25), TMC(37, 18), TMC(38, 15), TMC(39, 8), TMC(40, 2),
   TMC(41, 7), TMC(42, 2), TMC(43, 119), TMC(43, 123), TMC(43, 125),
   TMC(43, 127), TMC(44, 70)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ordering_TY_DEF x = x
    val op ordering_TY_DEF =
    DT(((("prelim",0),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
       [read"%90%29%112%25%80$0@%110%95%95%117@@@@|@$0@|@"])
  fun op ordering_BIJ x = x
    val op ordering_BIJ =
    DT(((("prelim",1),[("bool",[117]),("prelim",[0])]),["DISK_THM"]),
       [read"%78%73%7%87%129%130$0@@@$0@|@@%72%27%82%25%80$0@%110%95%95%117@@@@|$0@@%86%130%129$0@@@$0@@|@@"])



  fun op ordering_size_def x = x
    val op ordering_size_def =
    DT(((("prelim",14),[]),[]), [read"%73%54%86%132$0@@%79@|@"])
  fun op ordering_CASE x = x
    val op ordering_CASE =
    DT(((("prelim",15),[]),[]),
       [read"%73%54%63%32%63%34%63%41%81%131$3@$2@$1@$0@@%24%97%80$0@%110%95%117@@@@$3@%97%86$0@%110%95%117@@@@$2@$1@@|%130$3@@@|@|@|@|@"])
  fun op compare_def x = x
    val op compare_def =
    DT(((("prelim",23),
        [("bool",[8,14,25,54,56,64]),("numeral",[3,8]),
         ("prelim",[12])]),["DISK_THM"]),
       [read"%78%63%23%63%14%63%16%81%119%107@$2@$1@$0@@$2@|@|@|@@%78%63%23%63%14%63%16%81%119%102@$2@$1@$0@@$1@|@|@|@@%63%23%63%14%63%16%81%119%104@$2@$1@$0@@$0@|@|@|@@@"])
  fun op list_compare_tupled_primitive_def x = x
    val op list_compare_tupled_primitive_def =
    DT(((("prelim",25),[]),[]),
       [read"%84%126@%116%94%6%78%114$0@@%64%62%63%51%71%20%70%17%66%13$5%75$0@%77$1@$2@@@%75$0@%77%99$3@$1@@%100$4@$2@@@@|@|@|@|@|@@|@@%21%9%134$0@%13%37%136$0@%42%46%122$1@%123$0@%106%102@@%39%40%106%107@||@@%51%17%123$2@%106%104@@%62%20%106%120$7$3@$1@@%107@$9%75$7@%77$2@$0@@@@%104@@||@||@||@||@||@@"])
  fun op list_compare_curried_def x = x
    val op list_compare_curried_def =
    DT(((("prelim",26),[]),[]),
       [read"%66%53%70%57%71%60%87%125$2@$1@$0@@%126%75$2@%77$1@$0@@@@|@|@|@"])
  fun op list_merge_tupled_primitive_def x = x
    val op list_merge_tupled_primitive_def =
    DT(((("prelim",30),[]),[]),
       [read"%83%128@%115%93%5%78%113$0@@%78%70%19%70%17%63%61%63%51%65%11%88%137$0$1@$2@@@$5%74$0@%76%99$1@$3@@$4@@@%74$0@%76%99$1@$3@@%99$2@$4@@@@@|@|@|@|@|@@%70%19%70%17%63%61%63%51%65%11%88$0$1@$2@@$5%74$0@%76$3@%99$2@$4@@@@%74$0@%76%99$1@$3@@%99$2@$4@@@@@|@|@|@|@|@@@|@@%22%8%133$0@%11%36%135$0@%17%45%121$0@%105$1@@%61%19%121$3@%105%99$1@$0@@@%51%18%105%98$7$1@$3@@%99$1@$9%74$7@%76$0@%99$3@$2@@@@@@%99$3@$9%74$7@%76%99$1@$0@@$2@@@@@@||@||@||@||@||@@"])
  fun op list_merge_curried_def x = x
    val op list_merge_curried_def =
    DT(((("prelim",31),[]),[]),
       [read"%65%52%70%57%70%59%85%127$2@$1@$0@@%128%74$2@%76$1@$0@@@@|@|@|@"])
  fun op num2ordering_ordering2num x = x
    val op num2ordering_ordering2num =
    DT(((("prelim",2),[("prelim",[1])]),["DISK_THM"]),
       [read"%73%7%87%129%130$0@@@$0@|@"])
  fun op ordering2num_num2ordering x = x
    val op ordering2num_num2ordering =
    DT(((("prelim",3),[("prelim",[1])]),["DISK_THM"]),
       [read"%72%27%82%80$0@%110%95%95%117@@@@@%86%130%129$0@@@$0@@|@"])
  fun op num2ordering_11 x = x
    val op num2ordering_11 =
    DT(((("prelim",4),[("bool",[26]),("prelim",[1])]),["DISK_THM"]),
       [read"%72%27%72%28%88%80$1@%110%95%95%117@@@@@%88%80$0@%110%95%95%117@@@@@%82%87%129$1@@%129$0@@@%86$1@$0@@@@|@|@"])
  fun op ordering2num_11 x = x
    val op ordering2num_11 =
    DT(((("prelim",5),[("bool",[26]),("prelim",[1])]),["DISK_THM"]),
       [read"%73%7%73%10%82%86%130$1@@%130$0@@@%87$1@$0@@|@|@"])
  fun op num2ordering_ONTO x = x
    val op num2ordering_ONTO =
    DT(((("prelim",6),[("bool",[25,63]),("prelim",[1])]),["DISK_THM"]),
       [read"%73%7%91%27%78%87$1@%129$0@@@%80$0@%110%95%95%117@@@@@|@|@"])
  fun op ordering2num_ONTO x = x
    val op ordering2num_ONTO =
    DT(((("prelim",7),[("bool",[26]),("prelim",[1])]),["DISK_THM"]),
       [read"%72%27%82%80$0@%110%95%95%117@@@@@%92%7%86$1@%130$0@@|@@|@"])
  fun op num2ordering_thm x = x
    val op num2ordering_thm =
    DT(((("prelim",11),[("prelim",[8,9,10])]),[]),
       [read"%78%87%129%79@@%107@@%78%87%129%110%95%117@@@@%102@@%87%129%110%96%117@@@@%104@@@"])
  fun op ordering2num_thm x = x
    val op ordering2num_thm =
    DT(((("prelim",12),
        [("bool",[25]),("numeral",[3,7]),
         ("prelim",[3,8,9,10])]),["DISK_THM"]),
       [read"%78%86%130%107@@%79@@%78%86%130%102@@%110%95%117@@@@%86%130%104@@%110%96%117@@@@@"])
  fun op ordering_EQ_ordering x = x
    val op ordering_EQ_ordering =
    DT(((("prelim",13),[("bool",[58]),("prelim",[5])]),["DISK_THM"]),
       [read"%73%7%73%10%82%87$1@$0@@%86%130$1@@%130$0@@@|@|@"])
  fun op ordering_case_def x = x
    val op ordering_case_def =
    DT(((("prelim",16),
        [("bool",[56,64]),("numeral",[3,6,7]),
         ("prelim",[12,15])]),["DISK_THM"]),
       [read"%78%63%32%63%34%63%41%81%131%107@$2@$1@$0@@$2@|@|@|@@%78%63%32%63%34%63%41%81%131%102@$2@$1@$0@@$1@|@|@|@@%63%32%63%34%63%41%81%131%104@$2@$1@$0@@$0@|@|@|@@@"])
  fun op datatype_ordering x = x
    val op datatype_ordering =
    DT(((("prelim",17),[("bool",[25,171])]),["DISK_THM"]),
       [read"%101%26%107@%102@%104@@"])
  fun op ordering_distinct x = x
    val op ordering_distinct =
    DT(((("prelim",18),
        [("numeral",[3,6]),("prelim",[12,13])]),["DISK_THM"]),
       [read"%78%137%87%107@%102@@@%78%137%87%107@%104@@@%137%87%102@%104@@@@"])
  fun op ordering_case_cong x = x
    val op ordering_case_cong =
    DT(((("prelim",19),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("prelim",[6,8,9,10,16]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%0%73%1%63%32%63%34%63%41%88%78%87$4@$3@@%78%88%87$3@%107@@%81$2@%33@@@%78%88%87$3@%102@@%81$1@%38@@@%88%87$3@%104@@%81$0@%44@@@@@@%81%131$4@$2@$1@$0@@%131$3@%33@%38@%44@@@|@|@|@|@|@"])
  fun op ordering_nchotomy x = x
    val op ordering_nchotomy =
    DT(((("prelim",20),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("prelim",[6,8,9,10]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%7%118%87$0@%107@@%118%87$0@%102@@%87$0@%104@@@|@"])
  fun op ordering_Axiom x = x
    val op ordering_Axiom =
    DT(((("prelim",21),
        [("bool",[8,14,25,54,56,64]),("numeral",[3,8]),
         ("prelim",[12])]),["DISK_THM"]),
       [read"%63%55%63%56%63%58%89%15%78%81$0%107@@$3@@%78%81$0%102@@$2@@%81$0%104@@$1@@@|@|@|@|@"])
  fun op ordering_induction x = x
    val op ordering_induction =
    DT(((("prelim",22),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,25,32,36,43,51,52,54,58,63,64,93,96,101,104,105,107]),
         ("numeral",[3,5,6,7,8,15,16,17]),("prelim",[6,8,9,10]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%69%4%88%78$0%102@@%78$0%104@@$0%107@@@@%73%7$1$0@|@@|@"])
  fun op ordering_eq_dec x = x
    val op ordering_eq_dec =
    DT(((("prelim",24),
        [("bool",[56,58,63]),("numeral",[3,6]),
         ("prelim",[12,13])]),["DISK_THM"]),
       [read"%78%73%54%82%87$0@$0@@%111@|@@%78%82%87%107@%102@@%103@@%78%82%87%107@%104@@%103@@%78%82%87%102@%104@@%103@@%78%82%87%102@%107@@%103@@%78%82%87%104@%107@@%103@@%82%87%104@%102@@%103@@@@@@@"])
  fun op list_compare_ind x = x
    val op list_compare_ind =
    DT(((("prelim",27),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [25,26,36,47,48,52,53,54,58,63,72,76,77,78,80,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%68%3%88%78%66%13$1$0@%108@%109@|@@%78%66%13%64%49%71%50$3$2@%108@%100$1@$0@@|@|@|@@%78%66%13%63%47%70%48$3$2@%99$1@$0@@%109@|@|@|@@%66%13%63%51%70%17%64%62%71%20%88$5$4@$2@$0@@$5$4@%99$3@$2@@%100$1@$0@@@|@|@|@|@|@@@@@%66%31%70%35%71%43$3$2@$1@$0@|@|@|@@|@"])
  fun op list_compare_def x = x
    val op list_compare_def =
    DT(((("prelim",28),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("list",[6,7]),("numeral",[3,7,8]),("pair",[7,8,9,16,49]),
         ("prelim",[25,26]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%78%66%13%87%125$0@%108@%109@@%102@|@@%78%71%50%64%49%66%13%87%125$0@%108@%100$1@$2@@@%107@|@|@|@@%78%70%48%63%47%66%13%87%125$0@%99$1@$2@@%109@@%104@|@|@|@@%64%62%63%51%71%20%70%17%66%13%87%125$0@%99$3@$1@@%100$4@$2@@@%120$0$3@$4@@%107@%125$0@$1@$2@@%104@@|@|@|@|@|@@@@"])
  fun op compare_equal x = x
    val op compare_equal =
    DT(((("prelim",29),
        [("arithmetic",[22,24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [8,14,15,25,26,27,32,36,43,51,52,54,56,58,63,64,93,96,101,104,105,
          107]),("combin",[19]),("list",[6,7,9,10,43]),
         ("numeral",[3,5,6,7,8,15,16,17]),("pair",[7,8,9,16,49]),
         ("prelim",[6,8,9,10,12,13,23,25,26]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%88%63%51%63%61%82%87%12$1@$0@@%102@@%81$1@$0@@|@|@@%70%17%70%19%82%87%124%12@$1@$0@@%102@@%85$1@$0@@|@|@@"])
  fun op list_merge_ind x = x
    val op list_merge_ind =
    DT(((("prelim",32),
        [("arithmetic",[22,24,25,41,46,59,71,88,93,173,180]),
         ("bool",
         [25,26,36,47,48,51,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,124]),("list",[7,46]),("numeral",[3,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%67%2%88%78%65%11%70%17$2$1@$0@%108@|@|@@%78%65%11%63%47%70%48$3$2@%108@%99$1@$0@@|@|@|@@%65%11%63%51%70%17%63%61%70%19%88%78%88%137$4$3@$1@@@$5$4@%99$3@$2@@$0@@@%88$4$3@$1@@$5$4@$2@%99$1@$0@@@@@$5$4@%99$3@$2@@%99$1@$0@@@|@|@|@|@|@@@@%65%30%70%35%70%42$3$2@$1@$0@|@|@|@@|@"])
  fun op list_merge_def x = x
    val op list_merge_def =
    DT(((("prelim",33),
        [("arithmetic",[22,24,25,41,46,59,71,88,93,173,180]),
         ("bool",[15,25,36,51,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("list",[6,7]),("numeral",[3,7,8]),
         ("pair",[7,8,9,16,49]),("prelim",[30,31]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%78%70%17%65%11%85%127$0@$1@%108@@$1@|@|@@%78%70%48%63%47%65%11%85%127$0@%108@%99$1@$2@@@%99$1@$2@@|@|@|@@%63%61%63%51%70%19%70%17%65%11%85%127$0@%99$3@$1@@%99$4@$2@@@%98$0$3@$4@@%99$3@%127$0@$1@%99$4@$2@@@@%99$4@%127$0@%99$3@$1@@$2@@@@|@|@|@|@|@@@"])
  end
  val _ = DB.bindl "prelim"
  [("ordering_TY_DEF",ordering_TY_DEF,DB.Def),
   ("ordering_BIJ",ordering_BIJ,DB.Def),
   ("ordering_size_def",ordering_size_def,DB.Def),
   ("ordering_CASE",ordering_CASE,DB.Def),
   ("compare_def",compare_def,DB.Def),
   ("list_compare_tupled_primitive_def",
    list_compare_tupled_primitive_def,
    DB.Def), ("list_compare_curried_def",list_compare_curried_def,DB.Def),
   ("list_merge_tupled_primitive_def",
    list_merge_tupled_primitive_def,
    DB.Def), ("list_merge_curried_def",list_merge_curried_def,DB.Def),
   ("num2ordering_ordering2num",num2ordering_ordering2num,DB.Thm),
   ("ordering2num_num2ordering",ordering2num_num2ordering,DB.Thm),
   ("num2ordering_11",num2ordering_11,DB.Thm),
   ("ordering2num_11",ordering2num_11,DB.Thm),
   ("num2ordering_ONTO",num2ordering_ONTO,DB.Thm),
   ("ordering2num_ONTO",ordering2num_ONTO,DB.Thm),
   ("num2ordering_thm",num2ordering_thm,DB.Thm),
   ("ordering2num_thm",ordering2num_thm,DB.Thm),
   ("ordering_EQ_ordering",ordering_EQ_ordering,DB.Thm),
   ("ordering_case_def",ordering_case_def,DB.Thm),
   ("datatype_ordering",datatype_ordering,DB.Thm),
   ("ordering_distinct",ordering_distinct,DB.Thm),
   ("ordering_case_cong",ordering_case_cong,DB.Thm),
   ("ordering_nchotomy",ordering_nchotomy,DB.Thm),
   ("ordering_Axiom",ordering_Axiom,DB.Thm),
   ("ordering_induction",ordering_induction,DB.Thm),
   ("ordering_eq_dec",ordering_eq_dec,DB.Thm),
   ("list_compare_ind",list_compare_ind,DB.Thm),
   ("list_compare_def",list_compare_def,DB.Thm),
   ("compare_equal",compare_equal,DB.Thm),
   ("list_merge_ind",list_merge_ind,DB.Thm),
   ("list_merge_def",list_merge_def,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("listTheory.list_grammars",
                          listTheory.list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "ordering"
  val _ = update_grms temp_add_type "ordering"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ordering2num", (Term.prim_mk_const { Name = "ordering2num", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num2ordering", (Term.prim_mk_const { Name = "num2ordering", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LESS", (Term.prim_mk_const { Name = "LESS", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LESS", (Term.prim_mk_const { Name = "LESS", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQUAL", (Term.prim_mk_const { Name = "EQUAL", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQUAL", (Term.prim_mk_const { Name = "EQUAL", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GREATER", (Term.prim_mk_const { Name = "GREATER", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GREATER", (Term.prim_mk_const { Name = "GREATER", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ordering_size", (Term.prim_mk_const { Name = "ordering_size", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ordering_size", (Term.prim_mk_const { Name = "ordering_size", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ordering_CASE", (Term.prim_mk_const { Name = "ordering_CASE", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ordering_CASE", (Term.prim_mk_const { Name = "ordering_CASE", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("compare", (Term.prim_mk_const { Name = "compare", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_compare_tupled", (Term.prim_mk_const { Name = "list_compare_tupled", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_compare_tupled", (Term.prim_mk_const { Name = "list_compare_tupled", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_compare", (Term.prim_mk_const { Name = "list_compare", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_compare", (Term.prim_mk_const { Name = "list_compare", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_merge_tupled", (Term.prim_mk_const { Name = "list_merge_tupled", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_merge_tupled", (Term.prim_mk_const { Name = "list_merge_tupled", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_merge", (Term.prim_mk_const { Name = "list_merge", Thy = "prelim"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_merge", (Term.prim_mk_const { Name = "list_merge", Thy = "prelim"}))
  val prelim_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG ordering_Axiom,
           case_def=ordering_case_def,
           case_cong=ordering_case_cong,
           induction=ORIG ordering_induction,
           nchotomy=ordering_nchotomy,
           size=SOME(Parse.Term`(prelim$ordering_size) :(prelim$ordering) -> (num$num)`,
                     ORIG ordering_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME ordering_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "prelim",
    thydataty = "compute",
    data =
        "prelim.compare_def prelim.list_compare_def prelim.list_merge_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "prelim"
end
