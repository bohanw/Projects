structure quoteTheory :> quoteTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quoteTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open prelimTheory
  in end;
  val _ = Theory.link_parents
          ("quote",
          Arbnum.fromString "1488587554",
          Arbnum.fromString "569012")
          [("prelim",
           Arbnum.fromString "1488587545",
           Arbnum.fromString "752318")];
  val _ = Theory.incorporate_types "quote" [("varmap", 1), ("index", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("quote", "varmap"),
   ID("pair", "prod"), ID("quote", "index"), ID("min", "bool"),
   ID("prelim", "ordering"), ID("ind_type", "recspace"),
   ID("list", "list"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("min", "@"), ID("bool", "ARB"),
   ID("arithmetic", "BIT1"), ID("ind_type", "BOTTOM"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"), ID("prelim", "EQUAL"),
   ID("quote", "Empty_vm"), ID("quote", "End_idx"),
   ID("ind_type", "FCONS"), ID("prelim", "GREATER"), ID("combin", "I"),
   ID("prelim", "LESS"), ID("quote", "Left_idx"),
   ID("arithmetic", "NUMERAL"), ID("quote", "Node_vm"),
   ID("quote", "Right_idx"), ID("num", "SUC"), ID("bool", "T"),
   ID("bool", "TYPE_DEFINITION"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("quote", "index_CASE"), ID("quote", "index_compare"),
   ID("quote", "index_compare_tupled"), ID("quote", "index_lt"),
   ID("quote", "index_size"), ID("prelim", "list_compare"),
   ID("pair", "pair_CASE"), ID("quote", "varmap_CASE"),
   ID("quote", "varmap_find"), ID("quote", "varmap_find_tupled"),
   ID("quote", "varmap_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 1, 0],
   TYOP [0, 4, 3], TYOP [4], TYOP [3, 6, 2], TYOP [0, 7, 1],
   TYOP [0, 2, 1], TYOP [0, 6, 9], TYV "'b", TYOP [0, 2, 11],
   TYOP [0, 2, 12], TYOP [0, 1, 13], TYOP [0, 14, 11], TYOP [0, 11, 15],
   TYOP [0, 2, 16], TYOP [0, 6, 0], TYOP [5], TYOP [0, 6, 19],
   TYOP [0, 6, 20], TYOP [6], TYOP [3, 6, 6], TYOP [0, 23, 22],
   TYOP [0, 6, 22], TYOP [0, 6, 25], TYOP [0, 1, 1], TYOP [0, 6, 1],
   TYOP [0, 28, 27], TYOP [0, 28, 29], TYOP [0, 6, 30], TYOP [0, 6, 6],
   TYOP [0, 2, 2], TYOP [0, 2, 33], TYOP [0, 1, 34], TYOP [7, 19],
   TYOP [0, 36, 19], TYOP [7, 1], TYOP [0, 38, 19], TYOP [0, 2, 19],
   TYOP [0, 6, 40], TYOP [0, 23, 19], TYOP [0, 23, 42], TYOP [0, 7, 19],
   TYOP [0, 7, 44], TYOP [0, 6, 27], TYOP [0, 11, 11], TYOP [0, 11, 47],
   TYOP [0, 2, 48], TYOP [0, 2, 49], TYOP [0, 1, 50], TYOP [0, 32, 20],
   TYOP [0, 32, 52], TYOP [8, 6], TYOP [0, 6, 36], TYOP [0, 2, 38],
   TYOP [0, 35, 19], TYOP [0, 2, 57], TYOP [0, 1, 19], TYOP [0, 59, 19],
   TYOP [0, 11, 19], TYOP [0, 61, 19], TYOP [0, 14, 19], TYOP [0, 63, 19],
   TYOP [0, 51, 19], TYOP [0, 65, 19], TYOP [0, 4, 19], TYOP [0, 67, 19],
   TYOP [0, 28, 19], TYOP [0, 69, 19], TYOP [0, 20, 19], TYOP [0, 71, 19],
   TYOP [0, 46, 19], TYOP [0, 73, 19], TYOP [0, 21, 19], TYOP [0, 75, 19],
   TYOP [0, 41, 19], TYOP [0, 77, 19], TYOP [0, 39, 19], TYOP [0, 79, 19],
   TYOP [0, 37, 19], TYOP [0, 81, 19], TYOP [0, 40, 19], TYOP [0, 83, 19],
   TYOP [0, 54, 19], TYOP [0, 85, 19], TYOP [0, 0, 0], TYOP [0, 0, 87],
   TYOP [0, 6, 23], TYOP [0, 6, 89], TYOP [0, 2, 7], TYOP [0, 6, 91],
   TYOP [0, 19, 19], TYOP [0, 19, 93], TYOP [0, 1, 59], TYOP [0, 11, 61],
   TYOP [0, 24, 19], TYOP [0, 24, 97], TYOP [0, 8, 19], TYOP [0, 8, 99],
   TYOP [0, 54, 85], TYOP [0, 0, 19], TYOP [0, 0, 102], TYOP [0, 22, 19],
   TYOP [0, 22, 104], TYOP [0, 38, 39], TYOP [0, 36, 37], TYOP [0, 2, 40],
   TYOP [0, 55, 19], TYOP [0, 109, 19], TYOP [0, 12, 19],
   TYOP [0, 111, 19], TYOP [0, 56, 19], TYOP [0, 113, 19], TYOP [0, 59, 1],
   TYOP [0, 43, 19], TYOP [0, 116, 43], TYOP [0, 45, 19],
   TYOP [0, 118, 45], TYOP [0, 0, 38], TYOP [0, 120, 38], TYOP [0, 1, 121],
   TYOP [0, 0, 122], TYOP [0, 0, 36], TYOP [0, 124, 36], TYOP [0, 19, 125],
   TYOP [0, 0, 126], TYOP [0, 120, 120], TYOP [0, 38, 128],
   TYOP [0, 124, 124], TYOP [0, 36, 130], TYOP [0, 22, 22],
   TYOP [0, 39, 113], TYOP [0, 37, 109], TYOP [0, 24, 24],
   TYOP [0, 135, 24], TYOP [0, 43, 136], TYOP [0, 8, 8], TYOP [0, 138, 8],
   TYOP [0, 45, 139], TYOP [0, 25, 132], TYOP [0, 25, 141],
   TYOP [0, 6, 142], TYOP [0, 54, 22], TYOP [0, 54, 144],
   TYOP [0, 26, 145], TYOP [0, 26, 22], TYOP [0, 23, 147], TYOP [0, 10, 1],
   TYOP [0, 7, 149], TYOP [0, 2, 9], TYOP [0, 1, 151], TYOP [0, 152, 1],
   TYOP [0, 1, 153], TYOP [0, 2, 154]]
  end
  val _ = Theory.incorporate_consts "quote" tyvector
     [("varmap_size", 5), ("varmap_find_tupled", 8), ("varmap_find", 10),
      ("varmap_CASE", 17), ("index_size", 18), ("index_lt", 21),
      ("index_compare_tupled", 24), ("index_compare", 26),
      ("index_CASE", 31), ("Right_idx", 32), ("Node_vm", 35),
      ("Left_idx", 32), ("End_idx", 6), ("Empty_vm", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'index'", 37), TMV("'varmap'", 39), TMV("M", 6), TMV("M", 2),
   TMV("M'", 6), TMV("M'", 2), TMV("P", 20), TMV("P", 21), TMV("P", 41),
   TMV("P", 40), TMV("R", 43), TMV("R", 45), TMV("a", 1), TMV("a", 6),
   TMV("a", 23), TMV("a", 7), TMV("a", 36), TMV("a'", 6), TMV("a0", 1),
   TMV("a0", 36), TMV("a0'", 1), TMV("a0'", 38), TMV("a1", 38),
   TMV("a1", 2), TMV("a1'", 2), TMV("a2", 38), TMV("a2", 2), TMV("a2'", 2),
   TMV("f", 14), TMV("f", 4), TMV("f", 28), TMV("f'", 14), TMV("f'", 28),
   TMV("f0", 11), TMV("f0", 46), TMV("f1", 51), TMV("f1", 28),
   TMV("f1", 46), TMV("f1'", 28), TMV("f2", 1), TMV("fn", 28),
   TMV("fn", 12), TMV("i", 6), TMV("i1", 6), TMV("i1'", 6), TMV("i2", 6),
   TMV("ii", 6), TMV("index", 53), TMV("index_compare_tupled", 24),
   TMV("l1", 54), TMV("l2", 54), TMV("m'", 6), TMV("m''", 6),
   TMV("m'''", 6), TMV("m''''", 6), TMV("n", 0), TMV("n'", 6),
   TMV("n''", 6), TMV("rep", 55), TMV("rep", 56), TMV("v", 1),
   TMV("v", 11), TMV("v", 6), TMV("v", 2), TMV("v'", 1), TMV("v'", 11),
   TMV("v0", 2), TMV("v1", 6), TMV("v1", 2), TMV("v10", 6), TMV("v11", 6),
   TMV("v12", 6), TMV("v13", 6), TMV("v2", 6), TMV("v2", 2), TMV("v3", 6),
   TMV("v4", 2), TMV("varmap", 58), TMV("varmap_find_tupled", 8),
   TMV("vv", 2), TMV("x", 1), TMV("x", 6), TMV("x1", 6), TMV("x1", 2),
   TMC(9, 60), TMC(9, 62), TMC(9, 64), TMC(9, 66), TMC(9, 68), TMC(9, 70),
   TMC(9, 72), TMC(9, 74), TMC(9, 76), TMC(9, 78), TMC(9, 80), TMC(9, 82),
   TMC(9, 84), TMC(9, 71), TMC(9, 86), TMC(9, 79), TMC(9, 81), TMC(9, 83),
   TMC(10, 88), TMC(11, 90), TMC(11, 92), TMC(12, 94), TMC(13, 0),
   TMC(14, 95), TMC(14, 96), TMC(14, 94), TMC(14, 98), TMC(14, 100),
   TMC(14, 21), TMC(14, 101), TMC(14, 103), TMC(14, 105), TMC(14, 106),
   TMC(14, 107), TMC(14, 108), TMC(15, 94), TMC(16, 60), TMC(16, 70),
   TMC(16, 110), TMC(16, 112), TMC(16, 114), TMC(16, 71), TMC(16, 79),
   TMC(16, 81), TMC(16, 83), TMC(17, 115), TMC(17, 117), TMC(17, 119),
   TMC(18, 1), TMC(18, 19), TMC(19, 87), TMC(20, 38), TMC(20, 36),
   TMC(21, 123), TMC(21, 127), TMC(22, 93), TMC(23, 22), TMC(24, 2),
   TMC(25, 6), TMC(26, 129), TMC(26, 131), TMC(27, 22), TMC(28, 27),
   TMC(28, 132), TMC(29, 22), TMC(30, 32), TMC(31, 87), TMC(32, 35),
   TMC(33, 32), TMC(34, 87), TMC(35, 19), TMC(36, 133), TMC(36, 134),
   TMC(37, 116), TMC(37, 118), TMC(38, 137), TMC(38, 140), TMC(39, 0),
   TMC(40, 94), TMC(41, 31), TMC(41, 143), TMC(42, 26), TMC(43, 24),
   TMC(44, 21), TMC(45, 18), TMC(46, 146), TMC(47, 148), TMC(47, 150),
   TMC(48, 155), TMC(48, 17), TMC(49, 10), TMC(50, 8), TMC(51, 5),
   TMC(52, 93)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op index_TY_DEF x = x
    val op index_TY_DEF =
    DT(((("quote",0),[("bool",[14,25,26,53,132,133,138])]),["DISK_THM"]),
       [read"%122%58%156%19%95%0%119%100%19%119%162%127%16%105%117$1@%16%138%106@%133@%144$0@%55%136|@@|$0@@@$2$0@@|@@%162%127%16%105%117$1@%16%138%153%106@@%133@%144$0@%55%136|@@|$0@@@$2$0@@|@@%117$0@%138%153%153%106@@@%133@%55%136|@@@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op index_case_def x = x
    val op index_case_def =
    DT(((("quote",8),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%105%97%13%89%30%89%36%84%60%107%163%149$3@@$2@$1@$0@@$2$3@@|@|@|@|@@%105%97%13%89%30%89%36%84%60%107%163%152$3@@$2@$1@$0@@$1$3@@|@|@|@|@@%89%30%89%36%84%60%107%163%142@$2@$1@$0@@$0@|@|@|@@@"])
  fun op index_size_def x = x
    val op index_size_def =
    DT(((("quote",9),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%105%97%13%114%168%149$0@@@%102%150%134%161@@@%168$0@@@|@@%105%97%13%114%168%152$0@@@%102%150%134%161@@@%168$0@@@|@@%114%168%142@@%106@@@"])
  fun op index_compare_tupled_primitive_def x = x
    val op index_compare_tupled_primitive_def =
    DT(((("quote",17),[]),[]),
       [read"%110%166@%159%130%10%105%157$0@@%105%97%51%97%56$2%103$0@$1@@%103%149$0@@%149$1@@@|@|@@%97%51%97%56$2%103$0@$1@@%103%152$0@@%152$1@@@|@|@@@|@@%48%14%170$0@%62%67%164$1@%56%164$1@%51%147$5%103$1@$0@@@|@%52%147%148@|@%147%145@@|@%57%164$1@%54%147%145@|@%53%147$5%103$1@$0@@@|@%147%145@@|@%164$0@%71%147%148@|@%72%147%148@|@%147%140@@@||@||@@"])
  fun op index_compare_curried_def x = x
    val op index_compare_curried_def =
    DT(((("quote",18),[]),[]),
       [read"%97%81%97%82%115%165$1@$0@@%166%103$1@$0@@@|@|@"])
  fun op index_lt_def x = x
    val op index_lt_def =
    DT(((("quote",23),[]),[]),
       [read"%97%43%97%45%109%167$1@$0@@%115%165$1@$0@@%148@@|@|@"])
  fun op varmap_TY_DEF x = x
    val op varmap_TY_DEF =
    DT(((("quote",24),[("bool",[14,25,26,53,132,133,138])]),["DISK_THM"]),
       [read"%124%59%155%21%94%1%119%99%21%119%162%116$0@%137%106@%132@%55%135|@@@%120%18%126%22%126%25%105%116$3@%18%22%25%137%153%106@@$2@%143$1@%143$0@%55%135|@@@|||$2@$1@$0@@@%105$4$1@@$4$0@@@|@|@|@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op varmap_case_def x = x
    val op varmap_case_def =
    DT(((("quote",30),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%105%85%61%86%28%108%173%141@$1@$0@@$1@|@|@@%84%18%101%23%101%26%85%61%86%28%108%173%151$4@$3@$2@@$1@$0@@$0$4@$3@$2@@|@|@|@|@|@@"])
  fun op varmap_size_def x = x
    val op varmap_size_def =
    DT(((("quote",31),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%105%88%29%114%176$0@%141@@%106@|@@%88%29%84%18%101%23%101%26%114%176$3@%151$2@$1@$0@@@%102%150%134%161@@@%102$3$2@@%102%176$3@$1@@%176$3@$0@@@@@|@|@|@|@@"])
  fun op varmap_find_tupled_primitive_def x = x
    val op varmap_find_tupled_primitive_def =
    DT(((("quote",39),[]),[]),
       [read"%111%175@%160%131%11%105%158$0@@%105%101%68%84%80%101%74%97%43$4%104$0@$1@@%104%152$0@@%151$2@$3@$1@@@|@|@|@|@@%101%74%84%80%101%68%97%43$4%104$0@$1@@%104%149$0@@%151$2@$1@$3@@@|@|@|@|@@@|@@%78%15%171$0@%75%76%172$0@%146%129%80%154|@@@%80%68%74%163$4@%44%146$7%104$0@$2@@@|@%43%146$7%104$0@$1@@@|@%146$2@@|||@||@||@@"])
  fun op varmap_find_curried_def x = x
    val op varmap_find_curried_def =
    DT(((("quote",40),[]),[]),
       [read"%97%81%101%83%107%174$1@$0@@%175%104$1@$0@@@|@|@"])
  fun op datatype_index x = x
    val op datatype_index =
    DT(((("quote",10),[("bool",[25,171])]),["DISK_THM"]),
       [read"%139%47%149@%152@%142@@"])
  fun op index_11 x = x
    val op index_11 =
    DT(((("quote",11),
        [("bool",[14,25,26,31,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%105%97%13%97%17%109%112%149$1@@%149$0@@@%112$1@$0@@|@|@@%97%13%97%17%109%112%152$1@@%152$0@@@%112$1@$0@@|@|@@"])
  fun op index_distinct x = x
    val op index_distinct =
    DT(((("quote",12),
        [("bool",[14,25,26,31,36,47,51,53,54,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%105%97%17%97%13%177%112%149$0@@%152$1@@@|@|@@%105%97%13%177%112%149$0@@%142@@|@@%97%13%177%112%152$0@@%142@@|@@@"])
  fun op index_case_cong x = x
    val op index_case_cong =
    DT(((("quote",13),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("quote",[1,2,3,4,5,6,7,8])]),["DISK_THM"]),
       [read"%97%2%97%4%89%30%89%36%84%60%119%105%112$4@$3@@%105%97%13%119%112$4@%149$0@@@%107$3$0@@%32$0@@@|@@%105%97%13%119%112$4@%152$0@@@%107$2$0@@%38$0@@@|@@%119%112$3@%142@@%107$0@%64@@@@@@%107%163$4@$2@$1@$0@@%163$3@%32@%38@%64@@@|@|@|@|@|@"])
  fun op index_nchotomy x = x
    val op index_nchotomy =
    DT(((("quote",14),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%97%46%162%125%42%112$1@%149$0@@|@@%162%125%42%112$1@%152$0@@|@@%112$0@%142@@@|@"])
  fun op index_Axiom x = x
    val op index_Axiom =
    DT(((("quote",15),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%91%34%91%37%84%39%121%40%105%97%13%107$1%149$0@@@$4$0@$1$0@@@|@@%105%97%13%107$1%152$0@@@$3$0@$1$0@@@|@@%107$0%142@@$1@@@|@|@|@|@"])
  fun op index_induction x = x
    val op index_induction =
    DT(((("quote",16),
        [("bool",[14,25,26,53,132,133,138]),
         ("quote",[1,2,3,4,5,6,7])]),["DISK_THM"]),
       [read"%90%6%119%105%97%42%119$1$0@@$1%149$0@@@|@@%105%97%42%119$1$0@@$1%152$0@@@|@@$0%142@@@@%97%42$1$0@|@@|@"])
  fun op index_compare_ind x = x
    val op index_compare_ind =
    DT(((("quote",19),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,25,26,36,47,48,51,52,53,54,58,63,72,76,77,80,93,96,104,105,
          107,132,133,138,181]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("quote",[1,2,3,4,5,6,7,9]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%92%7%119%105$0%142@%142@@%105%97%69$1%142@%149$0@@|@@%105%97%70$1%142@%152$0@@|@@%105%97%73$1%149$0@@%142@|@@%105%97%75$1%152$0@@%142@|@@%105%97%56%97%51%119$2$1@$0@@$2%149$1@@%149$0@@@|@|@@%105%97%56%97%51$2%149$1@@%152$0@@|@|@@%105%97%56%97%51%119$2$1@$0@@$2%152$1@@%152$0@@@|@|@@%97%56%97%51$2%152$1@@%149$0@@|@|@@@@@@@@@@%97%62%97%67$2$1@$0@|@|@@|@"])
  fun op index_compare_def x = x
    val op index_compare_def =
    DT(((("quote",20),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("numeral",[3,7,8]),("pair",[7,8,16,49]),
         ("prim_rec",[42]),("quote",[8,9,17,18]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%105%115%165%142@%142@@%140@@%105%97%69%115%165%142@%149$0@@@%148@|@@%105%97%70%115%165%142@%152$0@@@%148@|@@%105%97%73%115%165%149$0@@%142@@%145@|@@%105%97%75%115%165%152$0@@%142@@%145@|@@%105%97%56%97%51%115%165%149$1@@%149$0@@@%165$1@$0@@|@|@@%105%97%56%97%51%115%165%149$1@@%152$0@@@%148@|@|@@%105%97%56%97%51%115%165%152$1@@%152$0@@@%165$1@$0@@|@|@@%97%56%97%51%115%165%152$1@@%149$0@@@%145@|@|@@@@@@@@@"])
  fun op compare_index_equal x = x
    val op compare_index_equal =
    DT(((("quote",21),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,31,36,47,51,52,53,54,56,58,63,93,96,104,105,107,
          132,133,138,181]),("combin",[19]),("ind_type",[33,34]),
         ("numeral",[3,7,8]),("pair",[7,8,16,49]),("prelim",[18]),
         ("prim_rec",[42]),("quote",[1,2,3,4,5,6,7,8,9,17,18]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%97%43%97%45%109%115%165$1@$0@@%140@@%112$1@$0@@|@|@"])
  fun op compare_list_index x = x
    val op compare_list_index =
    DT(((("quote",22),[("prelim",[29]),("quote",[21])]),["DISK_THM"]),
       [read"%98%49%98%50%109%115%169%165@$1@$0@@%140@@%113$1@$0@@|@|@"])
  fun op datatype_varmap x = x
    val op datatype_varmap =
    DT(((("quote",32),[("bool",[25,171])]),["DISK_THM"]),
       [read"%139%77%141@%151@@"])
  fun op varmap_11 x = x
    val op varmap_11 =
    DT(((("quote",33),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%84%18%101%23%101%26%84%20%101%24%101%27%109%118%151$5@$4@$3@@%151$2@$1@$0@@@%105%107$5@$2@@%105%118$4@$1@@%118$3@$0@@@@|@|@|@|@|@|@"])
  fun op varmap_distinct x = x
    val op varmap_distinct =
    DT(((("quote",34),
        [("bool",[14,25,26,31,47,53,54,63,132,133,138,181]),
         ("ind_type",[33,34]),("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%101%26%101%23%84%18%177%118%141@%151$0@$1@$2@@@|@|@|@"])
  fun op varmap_case_cong x = x
    val op varmap_case_cong =
    DT(((("quote",35),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("quote",[25,26,27,28,29,30])]),["DISK_THM"]),
       [read"%101%3%101%5%85%61%86%28%119%105%118$3@$2@@%105%119%118$2@%141@@%108$1@%65@@@%84%18%101%23%101%26%119%118$5@%151$2@$1@$0@@@%108$3$2@$1@$0@@%31$2@$1@$0@@@|@|@|@@@@%108%173$3@$1@$0@@%173$2@%65@%31@@@|@|@|@|@"])
  fun op varmap_nchotomy x = x
    val op varmap_nchotomy =
    DT(((("quote",36),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%101%79%162%118$0@%141@@%120%12%128%63%128%66%118$3@%151$2@$1@$0@@|@|@|@@|@"])
  fun op varmap_Axiom x = x
    val op varmap_Axiom =
    DT(((("quote",37),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%85%33%87%35%123%41%105%108$0%141@@$2@@%84%18%101%23%101%26%108$3%151$2@$1@$0@@@$4$2@$1@$0@$3$1@@$3$0@@@|@|@|@@|@|@|@"])
  fun op varmap_induction x = x
    val op varmap_induction =
    DT(((("quote",38),
        [("bool",[14,25,26,53,132,133,138]),
         ("quote",[25,26,27,28,29])]),["DISK_THM"]),
       [read"%96%9%119%105$0%141@@%101%63%101%66%119%105$2$1@@$2$0@@@%84%12$3%151$0@$2@$1@@|@@|@|@@@%101%63$1$0@|@@|@"])
  fun op varmap_find_ind x = x
    val op varmap_find_ind =
    DT(((("quote",41),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,25,26,36,47,48,51,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,132,133,138,181]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("quote",[1,2,3,4,5,6,7,9,25,26,27,28,29]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%93%8%119%105%84%80%101%68%101%74$3%142@%151$2@$1@$0@@|@|@|@@%105%97%43%84%80%101%68%101%74%119$4$3@$0@@$4%152$3@@%151$2@$1@$0@@@|@|@|@|@@%105%97%43%84%80%101%68%101%74%119$4$3@$1@@$4%149$3@@%151$2@$1@$0@@@|@|@|@|@@%97%42$1$0@%141@|@@@@@%97%62%101%68$2$1@$0@|@|@@|@"])
  fun op varmap_find_def x = x
    val op varmap_find_def =
    DT(((("quote",42),
        [("arithmetic",[24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("numeral",[3,7,8]),("pair",[7,8,16,49]),
         ("prim_rec",[42]),("quote",[8,9,30,39,40]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%105%84%80%101%74%101%68%107%174%142@%151$2@$0@$1@@@$2@|@|@|@@%105%84%80%101%74%101%68%97%43%107%174%152$0@@%151$3@$1@$2@@@%174$0@$2@@|@|@|@|@@%105%84%80%101%74%101%68%97%43%107%174%149$0@@%151$3@$1@$2@@@%174$0@$1@@|@|@|@|@@%97%42%107%174$0@%141@@%129%80%154|@@|@@@@"])
  end
  val _ = DB.bindl "quote"
  [("index_TY_DEF",index_TY_DEF,DB.Def),
   ("index_case_def",index_case_def,DB.Def),
   ("index_size_def",index_size_def,DB.Def),
   ("index_compare_tupled_primitive_def",
    index_compare_tupled_primitive_def,
    DB.Def),
   ("index_compare_curried_def",index_compare_curried_def,DB.Def),
   ("index_lt_def",index_lt_def,DB.Def),
   ("varmap_TY_DEF",varmap_TY_DEF,DB.Def),
   ("varmap_case_def",varmap_case_def,DB.Def),
   ("varmap_size_def",varmap_size_def,DB.Def),
   ("varmap_find_tupled_primitive_def",
    varmap_find_tupled_primitive_def,
    DB.Def), ("varmap_find_curried_def",varmap_find_curried_def,DB.Def),
   ("datatype_index",datatype_index,DB.Thm), ("index_11",index_11,DB.Thm),
   ("index_distinct",index_distinct,DB.Thm),
   ("index_case_cong",index_case_cong,DB.Thm),
   ("index_nchotomy",index_nchotomy,DB.Thm),
   ("index_Axiom",index_Axiom,DB.Thm),
   ("index_induction",index_induction,DB.Thm),
   ("index_compare_ind",index_compare_ind,DB.Thm),
   ("index_compare_def",index_compare_def,DB.Thm),
   ("compare_index_equal",compare_index_equal,DB.Thm),
   ("compare_list_index",compare_list_index,DB.Thm),
   ("datatype_varmap",datatype_varmap,DB.Thm),
   ("varmap_11",varmap_11,DB.Thm),
   ("varmap_distinct",varmap_distinct,DB.Thm),
   ("varmap_case_cong",varmap_case_cong,DB.Thm),
   ("varmap_nchotomy",varmap_nchotomy,DB.Thm),
   ("varmap_Axiom",varmap_Axiom,DB.Thm),
   ("varmap_induction",varmap_induction,DB.Thm),
   ("varmap_find_ind",varmap_find_ind,DB.Thm),
   ("varmap_find_def",varmap_find_def,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("prelimTheory.prelim_grammars",
                          prelimTheory.prelim_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "index"
  val _ = update_grms temp_add_type "index"








  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Left_idx", (Term.prim_mk_const { Name = "Left_idx", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Left_idx", (Term.prim_mk_const { Name = "Left_idx", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Right_idx", (Term.prim_mk_const { Name = "Right_idx", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Right_idx", (Term.prim_mk_const { Name = "Right_idx", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("End_idx", (Term.prim_mk_const { Name = "End_idx", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("End_idx", (Term.prim_mk_const { Name = "End_idx", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_CASE", (Term.prim_mk_const { Name = "index_CASE", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_size", (Term.prim_mk_const { Name = "index_size", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_compare_tupled", (Term.prim_mk_const { Name = "index_compare_tupled", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_compare_tupled", (Term.prim_mk_const { Name = "index_compare_tupled", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_compare", (Term.prim_mk_const { Name = "index_compare", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_compare", (Term.prim_mk_const { Name = "index_compare", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_lt", (Term.prim_mk_const { Name = "index_lt", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("index_lt", (Term.prim_mk_const { Name = "index_lt", Thy = "quote"}))
  val _ = update_grms temp_add_type "varmap"
  val _ = update_grms temp_add_type "varmap"






  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Empty_vm", (Term.prim_mk_const { Name = "Empty_vm", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Empty_vm", (Term.prim_mk_const { Name = "Empty_vm", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Node_vm", (Term.prim_mk_const { Name = "Node_vm", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Node_vm", (Term.prim_mk_const { Name = "Node_vm", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("varmap_CASE", (Term.prim_mk_const { Name = "varmap_CASE", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("varmap_size", (Term.prim_mk_const { Name = "varmap_size", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("varmap_find_tupled", (Term.prim_mk_const { Name = "varmap_find_tupled", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("varmap_find_tupled", (Term.prim_mk_const { Name = "varmap_find_tupled", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("varmap_find", (Term.prim_mk_const { Name = "varmap_find", Thy = "quote"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("varmap_find", (Term.prim_mk_const { Name = "varmap_find", Thy = "quote"}))
  val quote_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG index_Axiom,
           case_def=index_case_def,
           case_cong=index_case_cong,
           induction=ORIG index_induction,
           nchotomy=index_nchotomy,
           size=SOME(Parse.Term`(quote$index_size) :(quote$index) -> (num$num)`,
                     ORIG index_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME index_11,
           distinct=SOME index_distinct,
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


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG varmap_Axiom,
           case_def=varmap_case_def,
           case_cong=varmap_case_cong,
           induction=ORIG varmap_induction,
           nchotomy=varmap_nchotomy,
           size=SOME(Parse.Term`(quote$varmap_size) :('a -> (num$num)) -> ('a quote$varmap) -> (num$num)`,
                     ORIG varmap_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME varmap_11,
           distinct=SOME varmap_distinct,
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
    thy = "quote",
    thydataty = "compute",
    data =
        "quote.index_compare_def quote.index_lt_def quote.varmap_find_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quote"
end
