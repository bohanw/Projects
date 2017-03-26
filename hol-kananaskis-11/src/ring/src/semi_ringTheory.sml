structure semi_ringTheory :> semi_ringTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading semi_ringTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open basicSizeTheory ind_typeTheory
  in end;
  val _ = Theory.link_parents
          ("semi_ring",
          Arbnum.fromString "1488587562",
          Arbnum.fromString "534379")
          [("ind_type",
           Arbnum.fromString "1488586463",
           Arbnum.fromString "553745"),
           ("basicSize",
           Arbnum.fromString "1488586093",
           Arbnum.fromString "153614")];
  val _ = Theory.incorporate_types "semi_ring" [("semi_ring", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("semi_ring", "semi_ring"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("min", "ind"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "ARB"),
   ID("arithmetic", "BIT1"), ID("ind_type", "BOTTOM"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"), ID("combin", "K"),
   ID("arithmetic", "NUMERAL"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("semi_ring", "is_semi_ring"),
   ID("combin", "o"), ID("semi_ring", "recordtype.semi_ring"),
   ID("semi_ring", "semi_ring_CASE"), ID("semi_ring", "semi_ring_SR0"),
   ID("semi_ring", "semi_ring_SR0_fupd"), ID("semi_ring", "semi_ring_SR1"),
   ID("semi_ring", "semi_ring_SR1_fupd"), ID("semi_ring", "semi_ring_SRM"),
   ID("semi_ring", "semi_ring_SRM_fupd"), ID("semi_ring", "semi_ring_SRP"),
   ID("semi_ring", "semi_ring_SRP_fupd"),
   ID("semi_ring", "semi_ring_size")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 1, 0],
   TYOP [0, 4, 3], TYOP [0, 2, 2], TYOP [0, 1, 1], TYOP [0, 1, 7],
   TYOP [0, 8, 8], TYOP [0, 9, 6], TYOP [0, 2, 8], TYOP [0, 7, 6],
   TYOP [0, 2, 1], TYV "'b", TYOP [0, 8, 14], TYOP [0, 8, 15],
   TYOP [0, 1, 16], TYOP [0, 1, 17], TYOP [0, 18, 14], TYOP [0, 2, 19],
   TYOP [0, 8, 2], TYOP [0, 8, 21], TYOP [0, 1, 22], TYOP [0, 1, 23],
   TYOP [3], TYOP [0, 2, 25], TYOP [5, 8, 8], TYOP [5, 1, 27],
   TYOP [5, 1, 28], TYOP [4, 29], TYOP [0, 30, 25], TYOP [0, 2, 14],
   TYOP [0, 14, 2], TYOP [0, 8, 25], TYOP [0, 8, 34], TYOP [0, 1, 35],
   TYOP [0, 1, 36], TYOP [6], TYOP [0, 38, 37], TYOP [0, 2, 30],
   TYOP [0, 1, 25], TYOP [0, 41, 25], TYOP [0, 7, 25], TYOP [0, 43, 25],
   TYOP [0, 34, 25], TYOP [0, 18, 25], TYOP [0, 46, 25], TYOP [0, 4, 25],
   TYOP [0, 48, 25], TYOP [0, 33, 25], TYOP [0, 50, 25], TYOP [0, 9, 25],
   TYOP [0, 52, 25], TYOP [0, 31, 25], TYOP [0, 54, 25], TYOP [0, 26, 25],
   TYOP [0, 56, 25], TYOP [0, 0, 0], TYOP [0, 0, 58], TYOP [0, 28, 29],
   TYOP [0, 1, 60], TYOP [0, 27, 28], TYOP [0, 1, 62], TYOP [0, 8, 27],
   TYOP [0, 8, 64], TYOP [0, 25, 25], TYOP [0, 25, 66], TYOP [0, 1, 41],
   TYOP [0, 14, 25], TYOP [0, 14, 69], TYOP [0, 33, 50], TYOP [0, 6, 25],
   TYOP [0, 6, 72], TYOP [0, 0, 25], TYOP [0, 0, 74], TYOP [0, 30, 31],
   TYOP [0, 2, 26], TYOP [0, 32, 25], TYOP [0, 78, 25], TYOP [0, 40, 25],
   TYOP [0, 80, 25], TYOP [0, 0, 30], TYOP [0, 82, 30], TYOP [0, 29, 83],
   TYOP [0, 0, 84], TYOP [0, 8, 9], TYOP [0, 31, 80], TYOP [0, 7, 7],
   TYOP [0, 7, 88], TYOP [0, 9, 9], TYOP [0, 9, 90], TYOP [0, 33, 33],
   TYOP [0, 6, 92], TYOP [0, 6, 6], TYOP [0, 6, 94]]
  end
  val _ = Theory.incorporate_consts "semi_ring" tyvector
     [("semi_ring_size", 5), ("semi_ring_SRP_fupd", 10),
      ("semi_ring_SRP", 11), ("semi_ring_SRM_fupd", 10),
      ("semi_ring_SRM", 11), ("semi_ring_SR1_fupd", 12),
      ("semi_ring_SR1", 13), ("semi_ring_SR0_fupd", 12),
      ("semi_ring_SR0", 13), ("semi_ring_CASE", 20),
      ("recordtype.semi_ring", 24), ("is_semi_ring", 26)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'semi_ring'", 31), TMV("M", 2), TMV("M'", 2), TMV("P", 26),
   TMV("SR0", 1), TMV("SR1", 1), TMV("SRM", 8), TMV("SRP", 8), TMV("a", 1),
   TMV("a0", 1), TMV("a0'", 1), TMV("a0'", 30), TMV("a01", 1),
   TMV("a02", 1), TMV("a1", 1), TMV("a1'", 1), TMV("a2", 1), TMV("a2", 8),
   TMV("a2'", 8), TMV("a3", 8), TMV("a3'", 8), TMV("f", 7), TMV("f", 8),
   TMV("f", 18), TMV("f", 4), TMV("f", 9), TMV("f'", 18), TMV("f0", 8),
   TMV("f01", 8), TMV("f02", 8), TMV("f1", 7), TMV("f1", 8), TMV("f1", 9),
   TMV("f2", 8), TMV("fn", 32), TMV("g", 7), TMV("g", 9), TMV("h", 33),
   TMV("m", 1), TMV("n", 1), TMV("n", 0), TMV("p", 1), TMV("r", 2),
   TMV("record", 39), TMV("rep", 40), TMV("s", 2), TMV("s1", 2),
   TMV("s2", 2), TMV("semi_ring", 38), TMV("ss", 2), TMC(7, 42),
   TMC(7, 44), TMC(7, 45), TMC(7, 47), TMC(7, 49), TMC(7, 51), TMC(7, 53),
   TMC(7, 55), TMC(7, 57), TMC(7, 54), TMC(7, 56), TMC(8, 59), TMC(9, 61),
   TMC(9, 63), TMC(9, 65), TMC(10, 67), TMC(11, 0), TMC(12, 68),
   TMC(12, 70), TMC(12, 67), TMC(12, 35), TMC(12, 71), TMC(12, 73),
   TMC(12, 75), TMC(12, 76), TMC(12, 77), TMC(13, 67), TMC(14, 42),
   TMC(14, 45), TMC(14, 79), TMC(14, 81), TMC(14, 56), TMC(15, 2),
   TMC(16, 58), TMC(17, 30), TMC(18, 85), TMC(19, 66), TMC(20, 8),
   TMC(20, 86), TMC(21, 58), TMC(22, 87), TMC(23, 0), TMC(24, 26),
   TMC(25, 89), TMC(25, 91), TMC(25, 93), TMC(25, 95), TMC(26, 24),
   TMC(27, 20), TMC(28, 13), TMC(29, 12), TMC(30, 13), TMC(31, 12),
   TMC(32, 11), TMC(33, 10), TMC(34, 11), TMC(35, 10), TMC(36, 5)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op semi_ring_TY_DEF x = x
    val op semi_ring_TY_DEF =
    DT(((("semi_ring",0),[("bool",[26])]),["DISK_THM"]),
       [read"%80%44%90%11%57%0%76%59%11%76%77%9%77%14%78%17%78%19%74$4@%9%14%17%19%85%66@%62$3@%63$2@%64$1@$0@@@@%40%84|@||||$3@$2@$1@$0@@|@|@|@|@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op semi_ring_case_def x = x
    val op semi_ring_case_def =
    DT(((("semi_ring",4),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%50%9%50%14%52%17%52%19%53%23%68%98%97$4@$3@$2@$1@@$0@@$0$4@$3@$2@$1@@|@|@|@|@|@"])
  fun op semi_ring_size_def x = x
    val op semi_ring_size_def =
    DT(((("semi_ring",5),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%54%24%50%9%50%14%52%17%52%19%73%107$4@%97$3@$2@$1@$0@@@%61%89%83%91@@@%61$4$3@@$4$2@@@@|@|@|@|@|@"])
  fun op semi_ring_SR0 x = x
    val op semi_ring_SR0 =
    DT(((("semi_ring",6),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%50%8%50%9%52%22%52%27%67%99%97$3@$2@$1@$0@@@$3@|@|@|@|@"])
  fun op semi_ring_SR1 x = x
    val op semi_ring_SR1 =
    DT(((("semi_ring",7),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%50%8%50%9%52%22%52%27%67%101%97$3@$2@$1@$0@@@$2@|@|@|@|@"])
  fun op semi_ring_SRP x = x
    val op semi_ring_SRP =
    DT(((("semi_ring",8),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%50%8%50%9%52%22%52%27%70%105%97$3@$2@$1@$0@@@$1@|@|@|@|@"])
  fun op semi_ring_SRM x = x
    val op semi_ring_SRM =
    DT(((("semi_ring",9),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%50%8%50%9%52%22%52%27%70%103%97$3@$2@$1@$0@@@$0@|@|@|@|@"])
  fun op semi_ring_SR0_fupd x = x
    val op semi_ring_SR0_fupd =
    DT(((("semi_ring",11),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%51%30%50%8%50%9%52%22%52%27%75%100$4@%97$3@$2@$1@$0@@@%97$4$3@@$2@$1@$0@@|@|@|@|@|@"])
  fun op semi_ring_SR1_fupd x = x
    val op semi_ring_SR1_fupd =
    DT(((("semi_ring",12),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%51%30%50%8%50%9%52%22%52%27%75%102$4@%97$3@$2@$1@$0@@@%97$3@$4$2@@$1@$0@@|@|@|@|@|@"])
  fun op semi_ring_SRP_fupd x = x
    val op semi_ring_SRP_fupd =
    DT(((("semi_ring",13),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%56%32%50%8%50%9%52%22%52%27%75%106$4@%97$3@$2@$1@$0@@@%97$3@$2@$4$1@@$0@@|@|@|@|@|@"])
  fun op semi_ring_SRM_fupd x = x
    val op semi_ring_SRM_fupd =
    DT(((("semi_ring",14),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%56%32%50%8%50%9%52%22%52%27%75%104$4@%97$3@$2@$1@$0@@@%97$3@$2@$1@$4$0@@@|@|@|@|@|@"])
  fun op is_semi_ring_def x = x
    val op is_semi_ring_def =
    DT(((("semi_ring",33),[]),[]),
       [read"%60%42%69%92$0@@%65%50%39%50%38%67%105$2@$1@$0@@%105$2@$0@$1@@|@|@@%65%50%39%50%38%50%41%67%105$3@$2@%105$3@$1@$0@@@%105$3@%105$3@$2@$1@@$0@@|@|@|@@%65%50%39%50%38%67%103$2@$1@$0@@%103$2@$0@$1@@|@|@@%65%50%39%50%38%50%41%67%103$3@$2@%103$3@$1@$0@@@%103$3@%103$3@$2@$1@@$0@@|@|@|@@%65%50%39%67%105$1@%99$1@@$0@@$0@|@@%65%50%39%67%103$1@%101$1@@$0@@$0@|@@%65%50%39%67%103$1@%99$1@@$0@@%99$1@@|@@%50%39%50%38%50%41%67%103$3@%105$3@$2@$1@@$0@@%105$3@%103$3@$2@$0@@%103$3@$1@$0@@@|@|@|@@@@@@@@@|@"])
  fun op semi_ring_accessors x = x
    val op semi_ring_accessors =
    DT(((("semi_ring",10),[("semi_ring",[6,7,8,9])]),["DISK_THM"]),
       [read"%65%50%8%50%9%52%22%52%27%67%99%97$3@$2@$1@$0@@@$3@|@|@|@|@@%65%50%8%50%9%52%22%52%27%67%101%97$3@$2@$1@$0@@@$2@|@|@|@|@@%65%50%8%50%9%52%22%52%27%70%105%97$3@$2@$1@$0@@@$1@|@|@|@|@@%50%8%50%9%52%22%52%27%70%103%97$3@$2@$1@$0@@@$0@|@|@|@|@@@@"])
  fun op semi_ring_fn_updates x = x
    val op semi_ring_fn_updates =
    DT(((("semi_ring",15),[("semi_ring",[11,12,13,14])]),["DISK_THM"]),
       [read"%65%51%30%50%8%50%9%52%22%52%27%75%100$4@%97$3@$2@$1@$0@@@%97$4$3@@$2@$1@$0@@|@|@|@|@|@@%65%51%30%50%8%50%9%52%22%52%27%75%102$4@%97$3@$2@$1@$0@@@%97$3@$4$2@@$1@$0@@|@|@|@|@|@@%65%56%32%50%8%50%9%52%22%52%27%75%106$4@%97$3@$2@$1@$0@@@%97$3@$2@$4$1@@$0@@|@|@|@|@|@@%56%32%50%8%50%9%52%22%52%27%75%104$4@%97$3@$2@$1@$0@@@%97$3@$2@$1@$4$0@@@|@|@|@|@|@@@@"])
  fun op semi_ring_accfupds x = x
    val op semi_ring_accfupds =
    DT(((("semi_ring",16),
        [("bool",[25,26,56,181]),
         ("semi_ring",[1,2,3,10,15])]),["DISK_THM"]),
       [read"%65%60%45%51%21%67%99%102$0@$1@@@%99$1@@|@|@@%65%60%45%56%25%67%99%106$0@$1@@@%99$1@@|@|@@%65%60%45%56%25%67%99%104$0@$1@@@%99$1@@|@|@@%65%60%45%51%21%67%101%100$0@$1@@@%101$1@@|@|@@%65%60%45%56%25%67%101%106$0@$1@@@%101$1@@|@|@@%65%60%45%56%25%67%101%104$0@$1@@@%101$1@@|@|@@%65%60%45%51%21%70%105%100$0@$1@@@%105$1@@|@|@@%65%60%45%51%21%70%105%102$0@$1@@@%105$1@@|@|@@%65%60%45%56%25%70%105%104$0@$1@@@%105$1@@|@|@@%65%60%45%51%21%70%103%100$0@$1@@@%103$1@@|@|@@%65%60%45%51%21%70%103%102$0@$1@@@%103$1@@|@|@@%65%60%45%56%25%70%103%106$0@$1@@@%103$1@@|@|@@%65%60%45%51%21%67%99%100$0@$1@@@$0%99$1@@@|@|@@%65%60%45%51%21%67%101%102$0@$1@@@$0%101$1@@@|@|@@%65%60%45%56%25%70%105%106$0@$1@@@$0%105$1@@@|@|@@%60%45%56%25%70%103%104$0@$1@@@$0%103$1@@@|@|@@@@@@@@@@@@@@@@"])
  fun op semi_ring_fupdfupds x = x
    val op semi_ring_fupdfupds =
    DT(((("semi_ring",17),
        [("bool",[25,26,56,181]),("combin",[8]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%65%60%45%51%35%51%21%75%100$0@%100$1@$2@@@%100%93$0@$1@@$2@@|@|@|@@%65%60%45%51%35%51%21%75%102$0@%102$1@$2@@@%102%93$0@$1@@$2@@|@|@|@@%65%60%45%56%36%56%25%75%106$0@%106$1@$2@@@%106%94$0@$1@@$2@@|@|@|@@%60%45%56%36%56%25%75%104$0@%104$1@$2@@@%104%94$0@$1@@$2@@|@|@|@@@@"])
  fun op semi_ring_fupdfupds_comp x = x
    val op semi_ring_fupdfupds_comp =
    DT(((("semi_ring",18),
        [("bool",[14,25,26,56,58,181]),("combin",[8,9]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%65%65%51%35%51%21%72%96%100$0@@%100$1@@@%100%93$0@$1@@@|@|@@%55%37%51%35%51%21%71%95%100$0@@%95%100$1@@$2@@@%95%100%93$0@$1@@@$2@@|@|@|@@@%65%65%51%35%51%21%72%96%102$0@@%102$1@@@%102%93$0@$1@@@|@|@@%55%37%51%35%51%21%71%95%102$0@@%95%102$1@@$2@@@%95%102%93$0@$1@@@$2@@|@|@|@@@%65%65%56%36%56%25%72%96%106$0@@%106$1@@@%106%94$0@$1@@@|@|@@%55%37%56%36%56%25%71%95%106$0@@%95%106$1@@$2@@@%95%106%94$0@$1@@@$2@@|@|@|@@@%65%56%36%56%25%72%96%104$0@@%104$1@@@%104%94$0@$1@@@|@|@@%55%37%56%36%56%25%71%95%104$0@@%95%104$1@@$2@@@%95%104%94$0@$1@@@$2@@|@|@|@@@@@"])
  fun op semi_ring_fupdcanon x = x
    val op semi_ring_fupdcanon =
    DT(((("semi_ring",19),
        [("bool",[25,26,56,181]),("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%65%60%45%51%35%51%21%75%102$0@%100$1@$2@@@%100$1@%102$0@$2@@@|@|@|@@%65%60%45%51%35%56%25%75%106$0@%100$1@$2@@@%100$1@%106$0@$2@@@|@|@|@@%65%60%45%51%35%56%25%75%106$0@%102$1@$2@@@%102$1@%106$0@$2@@@|@|@|@@%65%60%45%51%35%56%25%75%104$0@%100$1@$2@@@%100$1@%104$0@$2@@@|@|@|@@%65%60%45%51%35%56%25%75%104$0@%102$1@$2@@@%102$1@%104$0@$2@@@|@|@|@@%60%45%56%36%56%25%75%104$0@%106$1@$2@@@%106$1@%104$0@$2@@@|@|@|@@@@@@"])
  fun op semi_ring_fupdcanon_comp x = x
    val op semi_ring_fupdcanon_comp =
    DT(((("semi_ring",20),
        [("bool",[14,25,26,56,58,181]),("combin",[8,9]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%65%65%51%35%51%21%72%96%102$0@@%100$1@@@%96%100$1@@%102$0@@@|@|@@%55%37%51%35%51%21%71%95%102$0@@%95%100$1@@$2@@@%95%100$1@@%95%102$0@@$2@@@|@|@|@@@%65%65%51%35%56%25%72%96%106$0@@%100$1@@@%96%100$1@@%106$0@@@|@|@@%55%37%51%35%56%25%71%95%106$0@@%95%100$1@@$2@@@%95%100$1@@%95%106$0@@$2@@@|@|@|@@@%65%65%51%35%56%25%72%96%106$0@@%102$1@@@%96%102$1@@%106$0@@@|@|@@%55%37%51%35%56%25%71%95%106$0@@%95%102$1@@$2@@@%95%102$1@@%95%106$0@@$2@@@|@|@|@@@%65%65%51%35%56%25%72%96%104$0@@%100$1@@@%96%100$1@@%104$0@@@|@|@@%55%37%51%35%56%25%71%95%104$0@@%95%100$1@@$2@@@%95%100$1@@%95%104$0@@$2@@@|@|@|@@@%65%65%51%35%56%25%72%96%104$0@@%102$1@@@%96%102$1@@%104$0@@@|@|@@%55%37%51%35%56%25%71%95%104$0@@%95%102$1@@$2@@@%95%102$1@@%95%104$0@@$2@@@|@|@|@@@%65%56%36%56%25%72%96%104$0@@%106$1@@@%96%106$1@@%104$0@@@|@|@@%55%37%56%36%56%25%71%95%104$0@@%95%106$1@@$2@@@%95%106$1@@%95%104$0@@$2@@@|@|@|@@@@@@@"])
  fun op semi_ring_component_equality x = x
    val op semi_ring_component_equality =
    DT(((("semi_ring",21),
        [("bool",[25,26,51,56,63,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3,10])]),["DISK_THM"]),
       [read"%60%46%60%47%69%75$1@$0@@%65%67%99$1@@%99$0@@@%65%67%101$1@@%101$0@@@%65%70%105$1@@%105$0@@@%70%103$1@@%103$0@@@@@@|@|@"])
  fun op semi_ring_updates_eq_literal x = x
    val op semi_ring_updates_eq_literal =
    DT(((("semi_ring",22),
        [("bool",[25,26,56,181]),("combin",[12]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%60%45%50%9%50%8%52%27%52%22%75%100%87$3@@%102%87$2@@%106%88$1@@%104%88$0@@$4@@@@@%100%87$3@@%102%87$2@@%106%88$1@@%104%88$0@@%82@@@@@|@|@|@|@|@"])
  fun op semi_ring_literal_nchotomy x = x
    val op semi_ring_literal_nchotomy =
    DT(((("semi_ring",23),
        [("bool",[25,26,51,56,58,63,143,181]),("combin",[12]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%60%45%77%9%77%8%78%27%78%22%75$4@%100%87$3@@%102%87$2@@%106%88$1@@%104%88$0@@%82@@@@@|@|@|@|@|@"])
  fun op FORALL_semi_ring x = x
    val op FORALL_semi_ring =
    DT(((("semi_ring",24),
        [("bool",[25,26,36,51,56,58,63,143,181]),("combin",[12]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%58%3%69%60%45$1$0@|@@%50%9%50%8%52%27%52%22$4%100%87$3@@%102%87$2@@%106%88$1@@%104%88$0@@%82@@@@@|@|@|@|@@|@"])
  fun op EXISTS_semi_ring x = x
    val op EXISTS_semi_ring =
    DT(((("semi_ring",25),
        [("bool",[25,26,51,56,58,63,143,181]),("combin",[12]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3,15])]),["DISK_THM"]),
       [read"%58%3%69%81%45$1$0@|@@%77%9%77%8%78%27%78%22$4%100%87$3@@%102%87$2@@%106%88$1@@%104%88$0@@%82@@@@@|@|@|@|@@|@"])
  fun op semi_ring_literal_11 x = x
    val op semi_ring_literal_11 =
    DT(((("semi_ring",26),
        [("combin",[12]),("semi_ring",[16,21])]),["DISK_THM"]),
       [read"%50%12%50%14%52%28%52%31%50%13%50%16%52%29%52%33%69%75%100%87$7@@%102%87$6@@%106%88$5@@%104%88$4@@%82@@@@@%100%87$3@@%102%87$2@@%106%88$1@@%104%88$0@@%82@@@@@@%65%67$7@$3@@%65%67$6@$2@@%65%70$5@$1@@%70$4@$0@@@@@|@|@|@|@|@|@|@|@"])
  fun op datatype_semi_ring x = x
    val op datatype_semi_ring =
    DT(((("semi_ring",27),[("bool",[25,171])]),["DISK_THM"]),
       [read"%86%43%48@%4@%5@%7@%6@@"])
  fun op semi_ring_11 x = x
    val op semi_ring_11 =
    DT(((("semi_ring",28),
        [("bool",[26,51,56,63,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%50%9%50%14%52%17%52%19%50%10%50%15%52%18%52%20%69%75%97$7@$6@$5@$4@@%97$3@$2@$1@$0@@@%65%67$7@$3@@%65%67$6@$2@@%65%70$5@$1@@%70$4@$0@@@@@|@|@|@|@|@|@|@|@"])
  fun op semi_ring_case_cong x = x
    val op semi_ring_case_cong =
    DT(((("semi_ring",29),
        [("bool",[26,181]),("semi_ring",[1,2,3,4])]),["DISK_THM"]),
       [read"%60%1%60%2%53%23%76%65%75$2@$1@@%50%9%50%14%52%17%52%19%76%75$5@%97$3@$2@$1@$0@@@%68$4$3@$2@$1@$0@@%26$3@$2@$1@$0@@@|@|@|@|@@@%68%98$2@$0@@%98$1@%26@@@|@|@|@"])
  fun op semi_ring_nchotomy x = x
    val op semi_ring_nchotomy =
    DT(((("semi_ring",30),
        [("bool",[26,181]),("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%60%49%77%8%77%9%78%22%78%27%75$4@%97$3@$2@$1@$0@@|@|@|@|@|@"])
  fun op semi_ring_Axiom x = x
    val op semi_ring_Axiom =
    DT(((("semi_ring",31),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%53%23%79%34%50%9%50%14%52%17%52%19%68$4%97$3@$2@$1@$0@@@$5$3@$2@$1@$0@@|@|@|@|@|@|@"])
  fun op semi_ring_induction x = x
    val op semi_ring_induction =
    DT(((("semi_ring",32),
        [("bool",[26]),("semi_ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%3%76%50%8%50%9%52%22%52%27$4%97$3@$2@$1@$0@@|@|@|@|@@%60%45$1$0@|@@|@"])
  fun op plus_sym x = x
    val op plus_sym =
    DT(((("semi_ring",34),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%50%38%67%105$2@$1@$0@@%105$2@$0@$1@@|@|@@|@"])
  fun op plus_assoc x = x
    val op plus_assoc =
    DT(((("semi_ring",35),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%50%38%50%41%67%105$3@$2@%105$3@$1@$0@@@%105$3@%105$3@$2@$1@@$0@@|@|@|@@|@"])
  fun op mult_sym x = x
    val op mult_sym =
    DT(((("semi_ring",36),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%50%38%67%103$2@$1@$0@@%103$2@$0@$1@@|@|@@|@"])
  fun op mult_assoc x = x
    val op mult_assoc =
    DT(((("semi_ring",37),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%50%38%50%41%67%103$3@$2@%103$3@$1@$0@@@%103$3@%103$3@$2@$1@@$0@@|@|@|@@|@"])
  fun op plus_zero_left x = x
    val op plus_zero_left =
    DT(((("semi_ring",38),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%67%105$1@%99$1@@$0@@$0@|@@|@"])
  fun op mult_one_left x = x
    val op mult_one_left =
    DT(((("semi_ring",39),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%67%103$1@%101$1@@$0@@$0@|@@|@"])
  fun op mult_zero_left x = x
    val op mult_zero_left =
    DT(((("semi_ring",40),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%67%103$1@%99$1@@$0@@%99$1@@|@@|@"])
  fun op distr_left x = x
    val op distr_left =
    DT(((("semi_ring",41),[("semi_ring",[33])]),[]),
       [read"%60%42%76%92$0@@%50%39%50%38%50%41%67%103$3@%105$3@$2@$1@@$0@@%105$3@%103$3@$2@$0@@%103$3@$1@$0@@@|@|@|@@|@"])
  fun op plus_zero_right x = x
    val op plus_zero_right =
    DT(((("semi_ring",42),
        [("bool",[25,56]),("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%39%67%105$1@$0@%99$1@@@$0@|@@|@"])
  fun op mult_one_right x = x
    val op mult_one_right =
    DT(((("semi_ring",43),
        [("bool",[25,56]),("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%39%67%103$1@$0@%101$1@@@$0@|@@|@"])
  fun op mult_zero_right x = x
    val op mult_zero_right =
    DT(((("semi_ring",44),
        [("bool",[25,56]),("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%39%67%103$1@$0@%99$1@@@%99$1@@|@@|@"])
  fun op distr_right x = x
    val op distr_right =
    DT(((("semi_ring",45),
        [("bool",[25,56]),("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%38%50%39%50%41%67%103$3@$2@%105$3@$1@$0@@@%105$3@%103$3@$2@$1@@%103$3@$2@$0@@@|@|@|@@|@"])
  fun op plus_rotate x = x
    val op plus_rotate =
    DT(((("semi_ring",46),
        [("bool",[25,56]),("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%38%50%39%50%41%67%105$3@%105$3@$2@$1@@$0@@%105$3@%105$3@$1@$0@@$2@@|@|@|@@|@"])
  fun op plus_permute x = x
    val op plus_permute =
    DT(((("semi_ring",47),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%38%50%39%50%41%67%105$3@%105$3@$2@$1@@$0@@%105$3@%105$3@$2@$0@@$1@@|@|@|@@|@"])
  fun op mult_rotate x = x
    val op mult_rotate =
    DT(((("semi_ring",48),
        [("bool",[25,56]),("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%38%50%39%50%41%67%103$3@%103$3@$2@$1@@$0@@%103$3@%103$3@$1@$0@@$2@@|@|@|@@|@"])
  fun op mult_permute x = x
    val op mult_permute =
    DT(((("semi_ring",49),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,13,14,15]),
         ("semi_ring",[33])]),["DISK_THM"]),
       [read"%60%42%76%92$0@@%50%38%50%39%50%41%67%103$3@%103$3@$2@$1@@$0@@%103$3@%103$3@$2@$0@@$1@@|@|@|@@|@"])
  end
  val _ = DB.bindl "semi_ring"
  [("semi_ring_TY_DEF",semi_ring_TY_DEF,DB.Def),
   ("semi_ring_case_def",semi_ring_case_def,DB.Def),
   ("semi_ring_size_def",semi_ring_size_def,DB.Def),
   ("semi_ring_SR0",semi_ring_SR0,DB.Def),
   ("semi_ring_SR1",semi_ring_SR1,DB.Def),
   ("semi_ring_SRP",semi_ring_SRP,DB.Def),
   ("semi_ring_SRM",semi_ring_SRM,DB.Def),
   ("semi_ring_SR0_fupd",semi_ring_SR0_fupd,DB.Def),
   ("semi_ring_SR1_fupd",semi_ring_SR1_fupd,DB.Def),
   ("semi_ring_SRP_fupd",semi_ring_SRP_fupd,DB.Def),
   ("semi_ring_SRM_fupd",semi_ring_SRM_fupd,DB.Def),
   ("is_semi_ring_def",is_semi_ring_def,DB.Def),
   ("semi_ring_accessors",semi_ring_accessors,DB.Thm),
   ("semi_ring_fn_updates",semi_ring_fn_updates,DB.Thm),
   ("semi_ring_accfupds",semi_ring_accfupds,DB.Thm),
   ("semi_ring_fupdfupds",semi_ring_fupdfupds,DB.Thm),
   ("semi_ring_fupdfupds_comp",semi_ring_fupdfupds_comp,DB.Thm),
   ("semi_ring_fupdcanon",semi_ring_fupdcanon,DB.Thm),
   ("semi_ring_fupdcanon_comp",semi_ring_fupdcanon_comp,DB.Thm),
   ("semi_ring_component_equality",semi_ring_component_equality,DB.Thm),
   ("semi_ring_updates_eq_literal",semi_ring_updates_eq_literal,DB.Thm),
   ("semi_ring_literal_nchotomy",semi_ring_literal_nchotomy,DB.Thm),
   ("FORALL_semi_ring",FORALL_semi_ring,DB.Thm),
   ("EXISTS_semi_ring",EXISTS_semi_ring,DB.Thm),
   ("semi_ring_literal_11",semi_ring_literal_11,DB.Thm),
   ("datatype_semi_ring",datatype_semi_ring,DB.Thm),
   ("semi_ring_11",semi_ring_11,DB.Thm),
   ("semi_ring_case_cong",semi_ring_case_cong,DB.Thm),
   ("semi_ring_nchotomy",semi_ring_nchotomy,DB.Thm),
   ("semi_ring_Axiom",semi_ring_Axiom,DB.Thm),
   ("semi_ring_induction",semi_ring_induction,DB.Thm),
   ("plus_sym",plus_sym,DB.Thm), ("plus_assoc",plus_assoc,DB.Thm),
   ("mult_sym",mult_sym,DB.Thm), ("mult_assoc",mult_assoc,DB.Thm),
   ("plus_zero_left",plus_zero_left,DB.Thm),
   ("mult_one_left",mult_one_left,DB.Thm),
   ("mult_zero_left",mult_zero_left,DB.Thm),
   ("distr_left",distr_left,DB.Thm),
   ("plus_zero_right",plus_zero_right,DB.Thm),
   ("mult_one_right",mult_one_right,DB.Thm),
   ("mult_zero_right",mult_zero_right,DB.Thm),
   ("distr_right",distr_right,DB.Thm), ("plus_rotate",plus_rotate,DB.Thm),
   ("plus_permute",plus_permute,DB.Thm),
   ("mult_rotate",mult_rotate,DB.Thm),
   ("mult_permute",mult_permute,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("ind_typeTheory.ind_type_grammars",
                          ind_typeTheory.ind_type_grammars),
                         ("basicSizeTheory.basicSize_grammars",
                          basicSizeTheory.basicSize_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "semi_ring"
  val _ = update_grms temp_add_type "semi_ring"




  val _ = update_grms
       (UTOFF temp_overload_on)
       ("recordtype.semi_ring", (Term.prim_mk_const { Name = "recordtype.semi_ring", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("recordtype.semi_ring", (Term.prim_mk_const { Name = "recordtype.semi_ring", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_CASE", (Term.prim_mk_const { Name = "semi_ring_CASE", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_size", (Term.prim_mk_const { Name = "semi_ring_size", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SR0", (Term.prim_mk_const { Name = "semi_ring_SR0", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SR1", (Term.prim_mk_const { Name = "semi_ring_SR1", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SRP", (Term.prim_mk_const { Name = "semi_ring_SRP", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SRM", (Term.prim_mk_const { Name = "semi_ring_SRM", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SR0_fupd", (Term.prim_mk_const { Name = "semi_ring_SR0_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SR1_fupd", (Term.prim_mk_const { Name = "semi_ring_SR1_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SRP_fupd", (Term.prim_mk_const { Name = "semi_ring_SRP_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_SRM_fupd", (Term.prim_mk_const { Name = "semi_ring_SRM_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectSR0", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a semi_ring$semi_ring)). semi_ring$semi_ring_SR0 rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectSR1", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a semi_ring$semi_ring)). semi_ring$semi_ring_SR1 rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectSRP", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a semi_ring$semi_ring)). semi_ring$semi_ring_SRP rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectSRM", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a semi_ring$semi_ring)). semi_ring$semi_ring_SRM rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SR0_fupd", (Term.prim_mk_const { Name = "semi_ring_SR0_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SR1_fupd", (Term.prim_mk_const { Name = "semi_ring_SR1_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SRP_fupd", (Term.prim_mk_const { Name = "semi_ring_SRP_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SRM_fupd", (Term.prim_mk_const { Name = "semi_ring_SRM_fupd", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateSR0", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :'a -> 'a) (x :('a semi_ring$semi_ring)). semi_ring$semi_ring_SR0_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateSR1", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :'a -> 'a) (x :('a semi_ring$semi_ring)). semi_ring$semi_ring_SR1_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateSRP", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :('a -> 'a -> 'a) -> 'a -> 'a -> 'a) (x :('a semi_ring$semi_ring)). semi_ring$semi_ring_SRP_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateSRM", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :('a -> 'a -> 'a) -> 'a -> 'a -> 'a) (x :('a semi_ring$semi_ring)). semi_ring$semi_ring_SRM_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring", (Term.prim_mk_const { Name = "recordtype.semi_ring", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SR0", (Term.prim_mk_const { Name = "semi_ring_SR0", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SR1", (Term.prim_mk_const { Name = "semi_ring_SR1", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SRP", (Term.prim_mk_const { Name = "semi_ring_SRP", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SRM", (Term.prim_mk_const { Name = "semi_ring_SRM", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_semi_ring", (Term.prim_mk_const { Name = "is_semi_ring", Thy = "semi_ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_semi_ring", (Term.prim_mk_const { Name = "is_semi_ring", Thy = "semi_ring"}))
  val semi_ring_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG semi_ring_Axiom,
           case_def=semi_ring_case_def,
           case_cong=semi_ring_case_cong,
           induction=ORIG semi_ring_induction,
           nchotomy=semi_ring_nchotomy,
           size=SOME(Parse.Term`(semi_ring$semi_ring_size) :('a -> (num$num)) -> ('a semi_ring$semi_ring) -> (num$num)`,
                     ORIG semi_ring_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME semi_ring_11,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[("SR0",alpha), ("SR1",alpha),
 ("SRP",(alpha --> (alpha --> alpha))),
 ("SRM",(alpha --> (alpha --> alpha)))] end,
           accessors=Drule.CONJUNCTS semi_ring_accessors,
           updates=Drule.CONJUNCTS semi_ring_fn_updates,
           recognizers=[],
           destructors=[]}
        val tyinfo0 = RecordType.update_tyinfo NONE [semi_ring_accessors, semi_ring_updates_eq_literal, semi_ring_accfupds, semi_ring_fupdfupds, semi_ring_literal_11, semi_ring_fupdfupds_comp, semi_ring_fupdcanon, semi_ring_fupdcanon_comp] tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  fun IMPORT P =
    let open Parse abstraction
        fun sing [x] = x | sing _ = raise Match
        val r = sing (#Vals P)
        val ctab =
          [ Term`is_semi_ring ^r` ]
        val inst_fun = inst_thm_fun (compute_inst_infos ctab P) in
    { is_semi_ring_def = inst_fun is_semi_ring_def,
      semi_ring_SRM_fupd = inst_fun semi_ring_SRM_fupd,
      semi_ring_SRP_fupd = inst_fun semi_ring_SRP_fupd,
      semi_ring_SR1_fupd = inst_fun semi_ring_SR1_fupd,
      semi_ring_SR0_fupd = inst_fun semi_ring_SR0_fupd,
      semi_ring_SRM = inst_fun semi_ring_SRM,
      semi_ring_SRP = inst_fun semi_ring_SRP,
      semi_ring_SR1 = inst_fun semi_ring_SR1,
      semi_ring_SR0 = inst_fun semi_ring_SR0,
      semi_ring_size_def = inst_fun semi_ring_size_def,
      semi_ring_case_def = inst_fun semi_ring_case_def,
      semi_ring_TY_DEF = inst_fun semi_ring_TY_DEF,
      mult_permute = inst_fun mult_permute,
      mult_rotate = inst_fun mult_rotate,
      plus_permute = inst_fun plus_permute,
      plus_rotate = inst_fun plus_rotate,
      distr_right = inst_fun distr_right,
      mult_zero_right = inst_fun mult_zero_right,
      mult_one_right = inst_fun mult_one_right,
      plus_zero_right = inst_fun plus_zero_right,
      distr_left = inst_fun distr_left,
      mult_zero_left = inst_fun mult_zero_left,
      mult_one_left = inst_fun mult_one_left,
      plus_zero_left = inst_fun plus_zero_left,
      mult_assoc = inst_fun mult_assoc,
      mult_sym = inst_fun mult_sym,
      plus_assoc = inst_fun plus_assoc,
      plus_sym = inst_fun plus_sym,
      semi_ring_induction = inst_fun semi_ring_induction,
      semi_ring_Axiom = inst_fun semi_ring_Axiom,
      semi_ring_nchotomy = inst_fun semi_ring_nchotomy,
      semi_ring_case_cong = inst_fun semi_ring_case_cong,
      semi_ring_11 = inst_fun semi_ring_11,
      datatype_semi_ring = inst_fun datatype_semi_ring,
      semi_ring_literal_11 = inst_fun semi_ring_literal_11,
      EXISTS_semi_ring = inst_fun EXISTS_semi_ring,
      FORALL_semi_ring = inst_fun FORALL_semi_ring,
      semi_ring_literal_nchotomy = inst_fun semi_ring_literal_nchotomy,
      semi_ring_updates_eq_literal = inst_fun semi_ring_updates_eq_literal,
      semi_ring_component_equality = inst_fun semi_ring_component_equality,
      semi_ring_fupdcanon_comp = inst_fun semi_ring_fupdcanon_comp,
      semi_ring_fupdcanon = inst_fun semi_ring_fupdcanon,
      semi_ring_fupdfupds_comp = inst_fun semi_ring_fupdfupds_comp,
      semi_ring_fupdfupds = inst_fun semi_ring_fupdfupds,
      semi_ring_accfupds = inst_fun semi_ring_accfupds,
      semi_ring_fn_updates = inst_fun semi_ring_fn_updates,
      semi_ring_accessors = inst_fun semi_ring_accessors }
    end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "semi_ring",
    thydataty = "compute",
    data = "semi_ring.is_semi_ring_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "semi_ring"
end
