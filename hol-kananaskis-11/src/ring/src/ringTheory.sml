structure ringTheory :> ringTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ringTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open semi_ringTheory
  in end;
  val _ = Theory.link_parents
          ("ring",
          Arbnum.fromString "1488587592",
          Arbnum.fromString "818317")
          [("semi_ring",
           Arbnum.fromString "1488587562",
           Arbnum.fromString "534379")];
  val _ = Theory.incorporate_types "ring" [("ring", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("semi_ring", "semi_ring"), ID("ring", "ring"),
   ID("num", "num"), ID("min", "bool"), ID("ind_type", "recspace"),
   ID("pair", "prod"), ID("min", "ind"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("num", "0"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("bool", "ARB"), ID("arithmetic", "BIT1"), ID("ind_type", "BOTTOM"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"), ID("combin", "K"),
   ID("arithmetic", "NUMERAL"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("ring", "is_ring"),
   ID("semi_ring", "is_semi_ring"), ID("combin", "o"),
   ID("ring", "recordtype.ring"), ID("semi_ring", "recordtype.semi_ring"),
   ID("ring", "ring_CASE"), ID("ring", "ring_R0"),
   ID("ring", "ring_R0_fupd"), ID("ring", "ring_R1"),
   ID("ring", "ring_R1_fupd"), ID("ring", "ring_RM"),
   ID("ring", "ring_RM_fupd"), ID("ring", "ring_RN"),
   ID("ring", "ring_RN_fupd"), ID("ring", "ring_RP"),
   ID("ring", "ring_RP_fupd"), ID("ring", "ring_size"),
   ID("ring", "semi_ring_of")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYOP [2, 0], TYOP [0, 2, 1], TYOP [3],
   TYOP [0, 2, 4], TYOP [0, 0, 4], TYOP [0, 6, 5], TYOP [0, 2, 2],
   TYOP [0, 0, 0], TYOP [0, 0, 9], TYOP [0, 10, 10], TYOP [0, 11, 8],
   TYOP [0, 2, 10], TYOP [0, 9, 9], TYOP [0, 14, 8], TYOP [0, 2, 9],
   TYOP [0, 9, 8], TYOP [0, 2, 0], TYV "'b", TYOP [0, 9, 19],
   TYOP [0, 10, 20], TYOP [0, 10, 21], TYOP [0, 0, 22], TYOP [0, 0, 23],
   TYOP [0, 24, 19], TYOP [0, 2, 25], TYOP [0, 9, 2], TYOP [0, 10, 27],
   TYOP [0, 10, 28], TYOP [0, 0, 29], TYOP [0, 0, 30], TYOP [4],
   TYOP [0, 2, 32], TYOP [6, 10, 9], TYOP [6, 10, 34], TYOP [6, 0, 35],
   TYOP [6, 0, 36], TYOP [5, 37], TYOP [0, 38, 32], TYOP [0, 2, 19],
   TYOP [0, 19, 2], TYOP [0, 9, 32], TYOP [0, 10, 42], TYOP [0, 10, 43],
   TYOP [0, 0, 44], TYOP [0, 0, 45], TYOP [7], TYOP [0, 47, 46],
   TYOP [0, 2, 38], TYOP [0, 0, 32], TYOP [0, 50, 32], TYOP [0, 42, 32],
   TYOP [0, 10, 32], TYOP [0, 53, 32], TYOP [0, 24, 32], TYOP [0, 55, 32],
   TYOP [0, 6, 32], TYOP [0, 57, 32], TYOP [0, 41, 32], TYOP [0, 59, 32],
   TYOP [0, 14, 32], TYOP [0, 61, 32], TYOP [0, 11, 32], TYOP [0, 63, 32],
   TYOP [0, 39, 32], TYOP [0, 65, 32], TYOP [0, 33, 32], TYOP [0, 67, 32],
   TYOP [0, 4, 4], TYOP [0, 4, 69], TYOP [0, 36, 37], TYOP [0, 0, 71],
   TYOP [0, 35, 36], TYOP [0, 0, 73], TYOP [0, 9, 34], TYOP [0, 10, 75],
   TYOP [0, 34, 35], TYOP [0, 10, 77], TYOP [0, 32, 32], TYOP [0, 32, 79],
   TYOP [0, 0, 50], TYOP [0, 19, 32], TYOP [0, 19, 82], TYOP [0, 9, 42],
   TYOP [0, 10, 53], TYOP [0, 41, 59], TYOP [0, 8, 32], TYOP [0, 8, 87],
   TYOP [0, 4, 32], TYOP [0, 4, 89], TYOP [0, 38, 39], TYOP [0, 2, 33],
   TYOP [0, 1, 32], TYOP [0, 1, 93], TYOP [0, 40, 32], TYOP [0, 95, 32],
   TYOP [0, 49, 32], TYOP [0, 97, 32], TYOP [0, 4, 38], TYOP [0, 99, 38],
   TYOP [0, 37, 100], TYOP [0, 4, 101], TYOP [0, 9, 14], TYOP [0, 10, 11],
   TYOP [0, 39, 97], TYOP [0, 14, 14], TYOP [0, 14, 106], TYOP [0, 11, 11],
   TYOP [0, 11, 108], TYOP [0, 41, 41], TYOP [0, 8, 110], TYOP [0, 8, 8],
   TYOP [0, 8, 112], TYOP [0, 10, 1], TYOP [0, 10, 114], TYOP [0, 0, 115],
   TYOP [0, 0, 116]]
  end
  val _ = Theory.incorporate_consts "ring" tyvector
     [("semi_ring_of", 3), ("ring_size", 7), ("ring_RP_fupd", 12),
      ("ring_RP", 13), ("ring_RN_fupd", 15), ("ring_RN", 16),
      ("ring_RM_fupd", 12), ("ring_RM", 13), ("ring_R1_fupd", 17),
      ("ring_R1", 18), ("ring_R0_fupd", 17), ("ring_R0", 18),
      ("ring_CASE", 26), ("recordtype.ring", 31), ("is_ring", 33)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'ring'", 39), TMV("M", 2), TMV("M'", 2), TMV("P", 33),
   TMV("R0", 0), TMV("R1", 0), TMV("RM", 10), TMV("RN", 9), TMV("RP", 10),
   TMV("a", 0), TMV("a0", 0), TMV("a0'", 0), TMV("a0'", 38), TMV("a01", 0),
   TMV("a02", 0), TMV("a1", 0), TMV("a1'", 0), TMV("a2", 0), TMV("a2", 10),
   TMV("a2'", 10), TMV("a3", 10), TMV("a3'", 10), TMV("a4", 9),
   TMV("a4'", 9), TMV("b", 0), TMV("f", 9), TMV("f", 10), TMV("f", 24),
   TMV("f", 6), TMV("f", 14), TMV("f", 11), TMV("f'", 24), TMV("f0", 10),
   TMV("f01", 10), TMV("f02", 10), TMV("f1", 9), TMV("f1", 10),
   TMV("f11", 10), TMV("f12", 10), TMV("f2", 9), TMV("f2", 14),
   TMV("f2", 11), TMV("fn", 40), TMV("g", 9), TMV("g", 14), TMV("g", 11),
   TMV("h", 41), TMV("m", 0), TMV("n", 0), TMV("n", 4), TMV("p", 0),
   TMV("r", 2), TMV("r1", 2), TMV("r2", 2), TMV("record", 48),
   TMV("rep", 49), TMV("ring", 47), TMV("rr", 2), TMC(8, 51), TMC(8, 52),
   TMC(8, 54), TMC(8, 56), TMC(8, 58), TMC(8, 60), TMC(8, 62), TMC(8, 64),
   TMC(8, 66), TMC(8, 68), TMC(8, 65), TMC(8, 67), TMC(9, 70), TMC(10, 72),
   TMC(10, 74), TMC(10, 76), TMC(10, 78), TMC(11, 80), TMC(12, 4),
   TMC(13, 81), TMC(13, 83), TMC(13, 80), TMC(13, 84), TMC(13, 85),
   TMC(13, 86), TMC(13, 88), TMC(13, 90), TMC(13, 91), TMC(13, 92),
   TMC(13, 94), TMC(14, 80), TMC(15, 51), TMC(15, 52), TMC(15, 54),
   TMC(15, 96), TMC(15, 98), TMC(15, 67), TMC(16, 2), TMC(17, 69),
   TMC(18, 38), TMC(19, 102), TMC(20, 79), TMC(21, 10), TMC(21, 103),
   TMC(21, 104), TMC(22, 69), TMC(23, 105), TMC(24, 4), TMC(25, 33),
   TMC(26, 93), TMC(27, 103), TMC(27, 107), TMC(27, 109), TMC(27, 111),
   TMC(27, 113), TMC(28, 31), TMC(29, 117), TMC(30, 26), TMC(31, 18),
   TMC(32, 17), TMC(33, 18), TMC(34, 17), TMC(35, 13), TMC(36, 12),
   TMC(37, 16), TMC(38, 15), TMC(39, 13), TMC(40, 12), TMC(41, 7),
   TMC(42, 3)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ring_TY_DEF x = x
    val op ring_TY_DEF =
    DT(((("ring",0),[("bool",[26])]),["DISK_THM"]),
       [read"%93%55%104%12%66%0%88%68%12%88%89%10%89%15%91%18%91%20%90%22%85$5@%10%15%18%20%22%98%76@%71$4@%72$3@%74$2@%73$1@$0@@@@@%49%97|@|||||$4@$3@$2@$1@$0@@|@|@|@|@|@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op ring_case_def x = x
    val op ring_case_def =
    DT(((("ring",4),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%10%58%15%60%18%60%20%59%22%61%27%78%115%113$5@$4@$3@$2@$1@@$0@@$0$5@$4@$3@$2@$1@@|@|@|@|@|@|@"])
  fun op ring_size_def x = x
    val op ring_size_def =
    DT(((("ring",5),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%62%28%58%10%58%15%60%18%60%20%59%22%84%126$5@%113$4@$3@$2@$1@$0@@@%70%103%96%105@@@%70$5$4@@$5$3@@@@|@|@|@|@|@|@"])
  fun op ring_R0 x = x
    val op ring_R0 =
    DT(((("ring",6),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%9%58%10%60%26%60%32%59%35%77%116%113$4@$3@$2@$1@$0@@@$4@|@|@|@|@|@"])
  fun op ring_R1 x = x
    val op ring_R1 =
    DT(((("ring",7),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%9%58%10%60%26%60%32%59%35%77%118%113$4@$3@$2@$1@$0@@@$3@|@|@|@|@|@"])
  fun op ring_RP x = x
    val op ring_RP =
    DT(((("ring",8),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%9%58%10%60%26%60%32%59%35%81%124%113$4@$3@$2@$1@$0@@@$2@|@|@|@|@|@"])
  fun op ring_RM x = x
    val op ring_RM =
    DT(((("ring",9),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%9%58%10%60%26%60%32%59%35%81%120%113$4@$3@$2@$1@$0@@@$1@|@|@|@|@|@"])
  fun op ring_RN x = x
    val op ring_RN =
    DT(((("ring",10),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%9%58%10%60%26%60%32%59%35%80%122%113$4@$3@$2@$1@$0@@@$0@|@|@|@|@|@"])
  fun op ring_R0_fupd x = x
    val op ring_R0_fupd =
    DT(((("ring",12),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%59%39%58%9%58%10%60%26%60%32%59%35%86%117$5@%113$4@$3@$2@$1@$0@@@%113$5$4@@$3@$2@$1@$0@@|@|@|@|@|@|@"])
  fun op ring_R1_fupd x = x
    val op ring_R1_fupd =
    DT(((("ring",13),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%59%39%58%9%58%10%60%26%60%32%59%35%86%119$5@%113$4@$3@$2@$1@$0@@@%113$4@$5$3@@$2@$1@$0@@|@|@|@|@|@|@"])
  fun op ring_RP_fupd x = x
    val op ring_RP_fupd =
    DT(((("ring",14),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%65%41%58%9%58%10%60%26%60%32%59%35%86%125$5@%113$4@$3@$2@$1@$0@@@%113$4@$3@$5$2@@$1@$0@@|@|@|@|@|@|@"])
  fun op ring_RM_fupd x = x
    val op ring_RM_fupd =
    DT(((("ring",15),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%65%41%58%9%58%10%60%26%60%32%59%35%86%121$5@%113$4@$3@$2@$1@$0@@@%113$4@$3@$2@$5$1@@$0@@|@|@|@|@|@|@"])
  fun op ring_RN_fupd x = x
    val op ring_RN_fupd =
    DT(((("ring",16),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%64%40%58%9%58%10%60%26%60%32%59%35%86%123$5@%113$4@$3@$2@$1@$0@@@%113$4@$3@$2@$1@$5$0@@@|@|@|@|@|@|@"])
  fun op is_ring_def x = x
    val op is_ring_def =
    DT(((("ring",35),[]),[]),
       [read"%69%51%79%106$0@@%75%58%48%58%47%77%124$2@$1@$0@@%124$2@$0@$1@@|@|@@%75%58%48%58%47%58%50%77%124$3@$2@%124$3@$1@$0@@@%124$3@%124$3@$2@$1@@$0@@|@|@|@@%75%58%48%58%47%77%120$2@$1@$0@@%120$2@$0@$1@@|@|@@%75%58%48%58%47%58%50%77%120$3@$2@%120$3@$1@$0@@@%120$3@%120$3@$2@$1@@$0@@|@|@|@@%75%58%48%77%124$1@%116$1@@$0@@$0@|@@%75%58%48%77%120$1@%118$1@@$0@@$0@|@@%75%58%48%77%124$1@$0@%122$1@$0@@@%116$1@@|@@%58%48%58%47%58%50%77%120$3@%124$3@$2@$1@@$0@@%124$3@%120$3@$2@$0@@%120$3@$1@$0@@@|@|@|@@@@@@@@@|@"])
  fun op semi_ring_of_def x = x
    val op semi_ring_of_def =
    DT(((("ring",47),[]),[]),
       [read"%69%51%87%127$0@@%114%116$0@@%118$0@@%124$0@@%120$0@@@|@"])
  fun op ring_accessors x = x
    val op ring_accessors =
    DT(((("ring",11),[("ring",[6,7,8,9,10])]),["DISK_THM"]),
       [read"%75%58%9%58%10%60%26%60%32%59%35%77%116%113$4@$3@$2@$1@$0@@@$4@|@|@|@|@|@@%75%58%9%58%10%60%26%60%32%59%35%77%118%113$4@$3@$2@$1@$0@@@$3@|@|@|@|@|@@%75%58%9%58%10%60%26%60%32%59%35%81%124%113$4@$3@$2@$1@$0@@@$2@|@|@|@|@|@@%75%58%9%58%10%60%26%60%32%59%35%81%120%113$4@$3@$2@$1@$0@@@$1@|@|@|@|@|@@%58%9%58%10%60%26%60%32%59%35%80%122%113$4@$3@$2@$1@$0@@@$0@|@|@|@|@|@@@@@"])
  fun op ring_fn_updates x = x
    val op ring_fn_updates =
    DT(((("ring",17),[("ring",[12,13,14,15,16])]),["DISK_THM"]),
       [read"%75%59%39%58%9%58%10%60%26%60%32%59%35%86%117$5@%113$4@$3@$2@$1@$0@@@%113$5$4@@$3@$2@$1@$0@@|@|@|@|@|@|@@%75%59%39%58%9%58%10%60%26%60%32%59%35%86%119$5@%113$4@$3@$2@$1@$0@@@%113$4@$5$3@@$2@$1@$0@@|@|@|@|@|@|@@%75%65%41%58%9%58%10%60%26%60%32%59%35%86%125$5@%113$4@$3@$2@$1@$0@@@%113$4@$3@$5$2@@$1@$0@@|@|@|@|@|@|@@%75%65%41%58%9%58%10%60%26%60%32%59%35%86%121$5@%113$4@$3@$2@$1@$0@@@%113$4@$3@$2@$5$1@@$0@@|@|@|@|@|@|@@%64%40%58%9%58%10%60%26%60%32%59%35%86%123$5@%113$4@$3@$2@$1@$0@@@%113$4@$3@$2@$1@$5$0@@@|@|@|@|@|@|@@@@@"])
  fun op ring_accfupds x = x
    val op ring_accfupds =
    DT(((("ring",18),
        [("bool",[25,26,56,181]),("ring",[1,2,3,11,17])]),["DISK_THM"]),
       [read"%75%69%51%59%25%77%116%119$0@$1@@@%116$1@@|@|@@%75%69%51%65%30%77%116%125$0@$1@@@%116$1@@|@|@@%75%69%51%65%30%77%116%121$0@$1@@@%116$1@@|@|@@%75%69%51%64%29%77%116%123$0@$1@@@%116$1@@|@|@@%75%69%51%59%25%77%118%117$0@$1@@@%118$1@@|@|@@%75%69%51%65%30%77%118%125$0@$1@@@%118$1@@|@|@@%75%69%51%65%30%77%118%121$0@$1@@@%118$1@@|@|@@%75%69%51%64%29%77%118%123$0@$1@@@%118$1@@|@|@@%75%69%51%59%25%81%124%117$0@$1@@@%124$1@@|@|@@%75%69%51%59%25%81%124%119$0@$1@@@%124$1@@|@|@@%75%69%51%65%30%81%124%121$0@$1@@@%124$1@@|@|@@%75%69%51%64%29%81%124%123$0@$1@@@%124$1@@|@|@@%75%69%51%59%25%81%120%117$0@$1@@@%120$1@@|@|@@%75%69%51%59%25%81%120%119$0@$1@@@%120$1@@|@|@@%75%69%51%65%30%81%120%125$0@$1@@@%120$1@@|@|@@%75%69%51%64%29%81%120%123$0@$1@@@%120$1@@|@|@@%75%69%51%59%25%80%122%117$0@$1@@@%122$1@@|@|@@%75%69%51%59%25%80%122%119$0@$1@@@%122$1@@|@|@@%75%69%51%65%30%80%122%125$0@$1@@@%122$1@@|@|@@%75%69%51%65%30%80%122%121$0@$1@@@%122$1@@|@|@@%75%69%51%59%25%77%116%117$0@$1@@@$0%116$1@@@|@|@@%75%69%51%59%25%77%118%119$0@$1@@@$0%118$1@@@|@|@@%75%69%51%65%30%81%124%125$0@$1@@@$0%124$1@@@|@|@@%75%69%51%65%30%81%120%121$0@$1@@@$0%120$1@@@|@|@@%69%51%64%29%80%122%123$0@$1@@@$0%122$1@@@|@|@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op ring_fupdfupds x = x
    val op ring_fupdfupds =
    DT(((("ring",19),
        [("bool",[25,26,56,181]),("combin",[8]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%75%69%51%59%43%59%25%86%117$0@%117$1@$2@@@%117%108$0@$1@@$2@@|@|@|@@%75%69%51%59%43%59%25%86%119$0@%119$1@$2@@@%119%108$0@$1@@$2@@|@|@|@@%75%69%51%65%45%65%30%86%125$0@%125$1@$2@@@%125%110$0@$1@@$2@@|@|@|@@%75%69%51%65%45%65%30%86%121$0@%121$1@$2@@@%121%110$0@$1@@$2@@|@|@|@@%69%51%64%44%64%29%86%123$0@%123$1@$2@@@%123%109$0@$1@@$2@@|@|@|@@@@@"])
  fun op ring_fupdfupds_comp x = x
    val op ring_fupdfupds_comp =
    DT(((("ring",20),
        [("bool",[14,25,26,56,58,181]),("combin",[8,9]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%75%75%59%43%59%25%83%112%117$0@@%117$1@@@%117%108$0@$1@@@|@|@@%63%46%59%43%59%25%82%111%117$0@@%111%117$1@@$2@@@%111%117%108$0@$1@@@$2@@|@|@|@@@%75%75%59%43%59%25%83%112%119$0@@%119$1@@@%119%108$0@$1@@@|@|@@%63%46%59%43%59%25%82%111%119$0@@%111%119$1@@$2@@@%111%119%108$0@$1@@@$2@@|@|@|@@@%75%75%65%45%65%30%83%112%125$0@@%125$1@@@%125%110$0@$1@@@|@|@@%63%46%65%45%65%30%82%111%125$0@@%111%125$1@@$2@@@%111%125%110$0@$1@@@$2@@|@|@|@@@%75%75%65%45%65%30%83%112%121$0@@%121$1@@@%121%110$0@$1@@@|@|@@%63%46%65%45%65%30%82%111%121$0@@%111%121$1@@$2@@@%111%121%110$0@$1@@@$2@@|@|@|@@@%75%64%44%64%29%83%112%123$0@@%123$1@@@%123%109$0@$1@@@|@|@@%63%46%64%44%64%29%82%111%123$0@@%111%123$1@@$2@@@%111%123%109$0@$1@@@$2@@|@|@|@@@@@@"])
  fun op ring_fupdcanon x = x
    val op ring_fupdcanon =
    DT(((("ring",21),
        [("bool",[25,26,56,181]),("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%75%69%51%59%43%59%25%86%119$0@%117$1@$2@@@%117$1@%119$0@$2@@@|@|@|@@%75%69%51%59%43%65%30%86%125$0@%117$1@$2@@@%117$1@%125$0@$2@@@|@|@|@@%75%69%51%59%43%65%30%86%125$0@%119$1@$2@@@%119$1@%125$0@$2@@@|@|@|@@%75%69%51%59%43%65%30%86%121$0@%117$1@$2@@@%117$1@%121$0@$2@@@|@|@|@@%75%69%51%59%43%65%30%86%121$0@%119$1@$2@@@%119$1@%121$0@$2@@@|@|@|@@%75%69%51%65%45%65%30%86%121$0@%125$1@$2@@@%125$1@%121$0@$2@@@|@|@|@@%75%69%51%59%43%64%29%86%123$0@%117$1@$2@@@%117$1@%123$0@$2@@@|@|@|@@%75%69%51%59%43%64%29%86%123$0@%119$1@$2@@@%119$1@%123$0@$2@@@|@|@|@@%75%69%51%65%45%64%29%86%123$0@%125$1@$2@@@%125$1@%123$0@$2@@@|@|@|@@%69%51%65%45%64%29%86%123$0@%121$1@$2@@@%121$1@%123$0@$2@@@|@|@|@@@@@@@@@@"])
  fun op ring_fupdcanon_comp x = x
    val op ring_fupdcanon_comp =
    DT(((("ring",22),
        [("bool",[14,25,26,56,58,181]),("combin",[8,9]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%75%75%59%43%59%25%83%112%119$0@@%117$1@@@%112%117$1@@%119$0@@@|@|@@%63%46%59%43%59%25%82%111%119$0@@%111%117$1@@$2@@@%111%117$1@@%111%119$0@@$2@@@|@|@|@@@%75%75%59%43%65%30%83%112%125$0@@%117$1@@@%112%117$1@@%125$0@@@|@|@@%63%46%59%43%65%30%82%111%125$0@@%111%117$1@@$2@@@%111%117$1@@%111%125$0@@$2@@@|@|@|@@@%75%75%59%43%65%30%83%112%125$0@@%119$1@@@%112%119$1@@%125$0@@@|@|@@%63%46%59%43%65%30%82%111%125$0@@%111%119$1@@$2@@@%111%119$1@@%111%125$0@@$2@@@|@|@|@@@%75%75%59%43%65%30%83%112%121$0@@%117$1@@@%112%117$1@@%121$0@@@|@|@@%63%46%59%43%65%30%82%111%121$0@@%111%117$1@@$2@@@%111%117$1@@%111%121$0@@$2@@@|@|@|@@@%75%75%59%43%65%30%83%112%121$0@@%119$1@@@%112%119$1@@%121$0@@@|@|@@%63%46%59%43%65%30%82%111%121$0@@%111%119$1@@$2@@@%111%119$1@@%111%121$0@@$2@@@|@|@|@@@%75%75%65%45%65%30%83%112%121$0@@%125$1@@@%112%125$1@@%121$0@@@|@|@@%63%46%65%45%65%30%82%111%121$0@@%111%125$1@@$2@@@%111%125$1@@%111%121$0@@$2@@@|@|@|@@@%75%75%59%43%64%29%83%112%123$0@@%117$1@@@%112%117$1@@%123$0@@@|@|@@%63%46%59%43%64%29%82%111%123$0@@%111%117$1@@$2@@@%111%117$1@@%111%123$0@@$2@@@|@|@|@@@%75%75%59%43%64%29%83%112%123$0@@%119$1@@@%112%119$1@@%123$0@@@|@|@@%63%46%59%43%64%29%82%111%123$0@@%111%119$1@@$2@@@%111%119$1@@%111%123$0@@$2@@@|@|@|@@@%75%75%65%45%64%29%83%112%123$0@@%125$1@@@%112%125$1@@%123$0@@@|@|@@%63%46%65%45%64%29%82%111%123$0@@%111%125$1@@$2@@@%111%125$1@@%111%123$0@@$2@@@|@|@|@@@%75%65%45%64%29%83%112%123$0@@%121$1@@@%112%121$1@@%123$0@@@|@|@@%63%46%65%45%64%29%82%111%123$0@@%111%121$1@@$2@@@%111%121$1@@%111%123$0@@$2@@@|@|@|@@@@@@@@@@@"])
  fun op ring_component_equality x = x
    val op ring_component_equality =
    DT(((("ring",23),
        [("bool",[25,26,51,56,63,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3,11])]),["DISK_THM"]),
       [read"%69%52%69%53%79%86$1@$0@@%75%77%116$1@@%116$0@@@%75%77%118$1@@%118$0@@@%75%81%124$1@@%124$0@@@%75%81%120$1@@%120$0@@@%80%122$1@@%122$0@@@@@@@|@|@"])
  fun op ring_updates_eq_literal x = x
    val op ring_updates_eq_literal =
    DT(((("ring",24),
        [("bool",[25,26,56,181]),("combin",[12]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%69%51%58%10%58%9%60%36%60%32%59%25%86%117%100$4@@%119%100$3@@%125%102$2@@%121%102$1@@%123%101$0@@$5@@@@@@%117%100$4@@%119%100$3@@%125%102$2@@%121%102$1@@%123%101$0@@%95@@@@@@|@|@|@|@|@|@"])
  fun op ring_literal_nchotomy x = x
    val op ring_literal_nchotomy =
    DT(((("ring",25),
        [("bool",[25,26,51,56,58,63,143,181]),("combin",[12]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%69%51%89%10%89%9%91%36%91%32%90%25%86$5@%117%100$4@@%119%100$3@@%125%102$2@@%121%102$1@@%123%101$0@@%95@@@@@@|@|@|@|@|@|@"])
  fun op FORALL_ring x = x
    val op FORALL_ring =
    DT(((("ring",26),
        [("bool",[25,26,36,51,56,58,63,143,181]),("combin",[12]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%67%3%79%69%51$1$0@|@@%58%10%58%9%60%36%60%32%59%25$5%117%100$4@@%119%100$3@@%125%102$2@@%121%102$1@@%123%101$0@@%95@@@@@@|@|@|@|@|@@|@"])
  fun op EXISTS_ring x = x
    val op EXISTS_ring =
    DT(((("ring",27),
        [("bool",[25,26,51,56,58,63,143,181]),("combin",[12]),
         ("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3,17])]),["DISK_THM"]),
       [read"%67%3%79%94%51$1$0@|@@%89%10%89%9%91%36%91%32%90%25$5%117%100$4@@%119%100$3@@%125%102$2@@%121%102$1@@%123%101$0@@%95@@@@@@|@|@|@|@|@@|@"])
  fun op ring_literal_11 x = x
    val op ring_literal_11 =
    DT(((("ring",28),[("combin",[12]),("ring",[18,23])]),["DISK_THM"]),
       [read"%58%13%58%15%60%37%60%33%59%35%58%14%58%17%60%38%60%34%59%39%79%86%117%100$9@@%119%100$8@@%125%102$7@@%121%102$6@@%123%101$5@@%95@@@@@@%117%100$4@@%119%100$3@@%125%102$2@@%121%102$1@@%123%101$0@@%95@@@@@@@%75%77$9@$4@@%75%77$8@$3@@%75%81$7@$2@@%75%81$6@$1@@%80$5@$0@@@@@@|@|@|@|@|@|@|@|@|@|@"])
  fun op datatype_ring x = x
    val op datatype_ring =
    DT(((("ring",29),[("bool",[25,171])]),["DISK_THM"]),
       [read"%99%54%56@%4@%5@%8@%6@%7@@"])
  fun op ring_11 x = x
    val op ring_11 =
    DT(((("ring",30),
        [("bool",[26,51,56,63,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%58%10%58%15%60%18%60%20%59%22%58%11%58%16%60%19%60%21%59%23%79%86%113$9@$8@$7@$6@$5@@%113$4@$3@$2@$1@$0@@@%75%77$9@$4@@%75%77$8@$3@@%75%81$7@$2@@%75%81$6@$1@@%80$5@$0@@@@@@|@|@|@|@|@|@|@|@|@|@"])
  fun op ring_case_cong x = x
    val op ring_case_cong =
    DT(((("ring",31),[("bool",[26,181]),("ring",[1,2,3,4])]),["DISK_THM"]),
       [read"%69%1%69%2%61%27%88%75%86$2@$1@@%58%10%58%15%60%18%60%20%59%22%88%86$6@%113$4@$3@$2@$1@$0@@@%78$5$4@$3@$2@$1@$0@@%31$4@$3@$2@$1@$0@@@|@|@|@|@|@@@%78%115$2@$0@@%115$1@%31@@@|@|@|@"])
  fun op ring_nchotomy x = x
    val op ring_nchotomy =
    DT(((("ring",32),[("bool",[26,181]),("ring",[1,2,3])]),["DISK_THM"]),
       [read"%69%57%89%9%89%10%91%26%91%32%90%35%86$5@%113$4@$3@$2@$1@$0@@|@|@|@|@|@|@"])
  fun op ring_Axiom x = x
    val op ring_Axiom =
    DT(((("ring",33),
        [("bool",[26,181]),("ind_type",[33,34]),("pair",[8,9]),
         ("ring",[1,2,3])]),["DISK_THM"]),
       [read"%61%27%92%42%58%10%58%15%60%18%60%20%59%22%78$5%113$4@$3@$2@$1@$0@@@$6$4@$3@$2@$1@$0@@|@|@|@|@|@|@|@"])
  fun op ring_induction x = x
    val op ring_induction =
    DT(((("ring",34),[("bool",[26]),("ring",[1,2,3])]),["DISK_THM"]),
       [read"%67%3%88%58%9%58%10%60%26%60%32%59%35$5%113$4@$3@$2@$1@$0@@|@|@|@|@|@@%69%51$1$0@|@@|@"])
  fun op plus_sym x = x
    val op plus_sym =
    DT(((("ring",36),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%58%47%77%124$2@$1@$0@@%124$2@$0@$1@@|@|@@|@"])
  fun op plus_assoc x = x
    val op plus_assoc =
    DT(((("ring",37),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%58%47%58%50%77%124$3@$2@%124$3@$1@$0@@@%124$3@%124$3@$2@$1@@$0@@|@|@|@@|@"])
  fun op mult_sym x = x
    val op mult_sym =
    DT(((("ring",38),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%58%47%77%120$2@$1@$0@@%120$2@$0@$1@@|@|@@|@"])
  fun op mult_assoc x = x
    val op mult_assoc =
    DT(((("ring",39),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%58%47%58%50%77%120$3@$2@%120$3@$1@$0@@@%120$3@%120$3@$2@$1@@$0@@|@|@|@@|@"])
  fun op plus_zero_left x = x
    val op plus_zero_left =
    DT(((("ring",40),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%77%124$1@%116$1@@$0@@$0@|@@|@"])
  fun op mult_one_left x = x
    val op mult_one_left =
    DT(((("ring",41),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%77%120$1@%118$1@@$0@@$0@|@@|@"])
  fun op opp_def x = x
    val op opp_def =
    DT(((("ring",42),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%77%124$1@$0@%122$1@$0@@@%116$1@@|@@|@"])
  fun op distr_left x = x
    val op distr_left =
    DT(((("ring",43),[("ring",[35])]),[]),
       [read"%69%51%88%106$0@@%58%48%58%47%58%50%77%120$3@%124$3@$2@$1@@$0@@%124$3@%120$3@$2@$0@@%120$3@$1@$0@@@|@|@|@@|@"])
  fun op plus_zero_right x = x
    val op plus_zero_right =
    DT(((("ring",44),[("bool",[25,56]),("ring",[35])]),["DISK_THM"]),
       [read"%69%51%88%106$0@@%58%48%77%124$1@$0@%116$1@@@$0@|@@|@"])
  fun op mult_zero_left x = x
    val op mult_zero_left =
    DT(((("ring",45),[("bool",[25,56,58,61]),("ring",[35])]),["DISK_THM"]),
       [read"%69%51%88%106$0@@%58%48%77%120$1@%116$1@@$0@@%116$1@@|@@|@"])
  fun op mult_zero_right x = x
    val op mult_zero_right =
    DT(((("ring",46),[("bool",[25,56,58,61]),("ring",[35])]),["DISK_THM"]),
       [read"%69%51%88%106$0@@%58%48%77%120$1@$0@%116$1@@@%116$1@@|@@|@"])
  fun op ring_is_semi_ring x = x
    val op ring_is_semi_ring =
    DT(((("ring",48),
        [("bool",[25,56,58,61]),("ring",[35,47]),
         ("semi_ring",[10,33])]),["DISK_THM"]),
       [read"%69%51%88%106$0@@%107%127$0@@@|@"])
  fun op mult_one_right x = x
    val op mult_one_right =
    DT(((("ring",49),
        [("bool",[25,56,58,61]),("ring",[35,47]),
         ("semi_ring",[10,33,43])]),["DISK_THM"]),
       [read"%69%51%88%106$0@@%58%48%77%120$1@$0@%118$1@@@$0@|@@|@"])
  fun op neg_mult x = x
    val op neg_mult =
    DT(((("ring",50),
        [("bool",[25,56,58,61]),("ring",[35,47]),
         ("semi_ring",[10,33,47])]),["DISK_THM"]),
       [read"%69%51%88%106$0@@%58%9%58%24%77%120$2@%122$2@$1@@$0@@%122$2@%120$2@$1@$0@@@|@|@@|@"])
  end
  val _ = DB.bindl "ring"
  [("ring_TY_DEF",ring_TY_DEF,DB.Def),
   ("ring_case_def",ring_case_def,DB.Def),
   ("ring_size_def",ring_size_def,DB.Def), ("ring_R0",ring_R0,DB.Def),
   ("ring_R1",ring_R1,DB.Def), ("ring_RP",ring_RP,DB.Def),
   ("ring_RM",ring_RM,DB.Def), ("ring_RN",ring_RN,DB.Def),
   ("ring_R0_fupd",ring_R0_fupd,DB.Def),
   ("ring_R1_fupd",ring_R1_fupd,DB.Def),
   ("ring_RP_fupd",ring_RP_fupd,DB.Def),
   ("ring_RM_fupd",ring_RM_fupd,DB.Def),
   ("ring_RN_fupd",ring_RN_fupd,DB.Def),
   ("is_ring_def",is_ring_def,DB.Def),
   ("semi_ring_of_def",semi_ring_of_def,DB.Def),
   ("ring_accessors",ring_accessors,DB.Thm),
   ("ring_fn_updates",ring_fn_updates,DB.Thm),
   ("ring_accfupds",ring_accfupds,DB.Thm),
   ("ring_fupdfupds",ring_fupdfupds,DB.Thm),
   ("ring_fupdfupds_comp",ring_fupdfupds_comp,DB.Thm),
   ("ring_fupdcanon",ring_fupdcanon,DB.Thm),
   ("ring_fupdcanon_comp",ring_fupdcanon_comp,DB.Thm),
   ("ring_component_equality",ring_component_equality,DB.Thm),
   ("ring_updates_eq_literal",ring_updates_eq_literal,DB.Thm),
   ("ring_literal_nchotomy",ring_literal_nchotomy,DB.Thm),
   ("FORALL_ring",FORALL_ring,DB.Thm), ("EXISTS_ring",EXISTS_ring,DB.Thm),
   ("ring_literal_11",ring_literal_11,DB.Thm),
   ("datatype_ring",datatype_ring,DB.Thm), ("ring_11",ring_11,DB.Thm),
   ("ring_case_cong",ring_case_cong,DB.Thm),
   ("ring_nchotomy",ring_nchotomy,DB.Thm),
   ("ring_Axiom",ring_Axiom,DB.Thm),
   ("ring_induction",ring_induction,DB.Thm), ("plus_sym",plus_sym,DB.Thm),
   ("plus_assoc",plus_assoc,DB.Thm), ("mult_sym",mult_sym,DB.Thm),
   ("mult_assoc",mult_assoc,DB.Thm),
   ("plus_zero_left",plus_zero_left,DB.Thm),
   ("mult_one_left",mult_one_left,DB.Thm), ("opp_def",opp_def,DB.Thm),
   ("distr_left",distr_left,DB.Thm),
   ("plus_zero_right",plus_zero_right,DB.Thm),
   ("mult_zero_left",mult_zero_left,DB.Thm),
   ("mult_zero_right",mult_zero_right,DB.Thm),
   ("ring_is_semi_ring",ring_is_semi_ring,DB.Thm),
   ("mult_one_right",mult_one_right,DB.Thm), ("neg_mult",neg_mult,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("semi_ringTheory.semi_ring_grammars",
                          semi_ringTheory.semi_ring_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "ring"
  val _ = update_grms temp_add_type "ring"




  val _ = update_grms
       (UTOFF temp_overload_on)
       ("recordtype.ring", (Term.prim_mk_const { Name = "recordtype.ring", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("recordtype.ring", (Term.prim_mk_const { Name = "recordtype.ring", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_CASE", (Term.prim_mk_const { Name = "ring_CASE", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_size", (Term.prim_mk_const { Name = "ring_size", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_R0", (Term.prim_mk_const { Name = "ring_R0", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_R1", (Term.prim_mk_const { Name = "ring_R1", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_RP", (Term.prim_mk_const { Name = "ring_RP", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_RM", (Term.prim_mk_const { Name = "ring_RM", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_RN", (Term.prim_mk_const { Name = "ring_RN", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_R0_fupd", (Term.prim_mk_const { Name = "ring_R0_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_R1_fupd", (Term.prim_mk_const { Name = "ring_R1_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_RP_fupd", (Term.prim_mk_const { Name = "ring_RP_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_RM_fupd", (Term.prim_mk_const { Name = "ring_RM_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring_RN_fupd", (Term.prim_mk_const { Name = "ring_RN_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectR0", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a ring$ring)). ring$ring_R0 rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectR1", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a ring$ring)). ring$ring_R1 rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectRP", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a ring$ring)). ring$ring_RP rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectRM", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a ring$ring)). ring$ring_RM rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record selectRN", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(rcd :('a ring$ring)). ring$ring_RN rcd"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("R0_fupd", (Term.prim_mk_const { Name = "ring_R0_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("R1_fupd", (Term.prim_mk_const { Name = "ring_R1_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RP_fupd", (Term.prim_mk_const { Name = "ring_RP_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RM_fupd", (Term.prim_mk_const { Name = "ring_RM_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RN_fupd", (Term.prim_mk_const { Name = "ring_RN_fupd", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateR0", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :'a -> 'a) (x :('a ring$ring)). ring$ring_R0_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateR1", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :'a -> 'a) (x :('a ring$ring)). ring$ring_R1_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateRP", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :('a -> 'a -> 'a) -> 'a -> 'a -> 'a) (x :('a ring$ring)). ring$ring_RP_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateRM", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :('a -> 'a -> 'a) -> 'a -> 'a -> 'a) (x :('a ring$ring)). ring$ring_RM_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (" _ record fupdateRN", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(f :('a -> 'a) -> 'a -> 'a) (x :('a ring$ring)). ring$ring_RN_fupd f x"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ring", (Term.prim_mk_const { Name = "recordtype.ring", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("R0", (Term.prim_mk_const { Name = "ring_R0", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("R1", (Term.prim_mk_const { Name = "ring_R1", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RP", (Term.prim_mk_const { Name = "ring_RP", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RM", (Term.prim_mk_const { Name = "ring_RM", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RN", (Term.prim_mk_const { Name = "ring_RN", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_ring", (Term.prim_mk_const { Name = "is_ring", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_ring", (Term.prim_mk_const { Name = "is_ring", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_of", (Term.prim_mk_const { Name = "semi_ring_of", Thy = "ring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("semi_ring_of", (Term.prim_mk_const { Name = "semi_ring_of", Thy = "ring"}))
  val ring_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG ring_Axiom,
           case_def=ring_case_def,
           case_cong=ring_case_cong,
           induction=ORIG ring_induction,
           nchotomy=ring_nchotomy,
           size=SOME(Parse.Term`(ring$ring_size) :('a -> (num$num)) -> ('a ring$ring) -> (num$num)`,
                     ORIG ring_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME ring_11,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[("R0",alpha), ("R1",alpha),
 ("RP",(alpha --> (alpha --> alpha))),
 ("RM",(alpha --> (alpha --> alpha))),
 ("RN",(alpha --> alpha))] end,
           accessors=Drule.CONJUNCTS ring_accessors,
           updates=Drule.CONJUNCTS ring_fn_updates,
           recognizers=[],
           destructors=[]}
        val tyinfo0 = RecordType.update_tyinfo NONE [ring_accessors, ring_updates_eq_literal, ring_accfupds, ring_fupdfupds, ring_literal_11, ring_fupdfupds_comp, ring_fupdcanon, ring_fupdcanon_comp] tyinfo0
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
          [ Term`semi_ring_of ^r` ]
        val inst_fun = inst_thm_fun (compute_inst_infos ctab P) in
    { semi_ring_of_def = inst_fun semi_ring_of_def,
      is_ring_def = inst_fun is_ring_def,
      ring_RN_fupd = inst_fun ring_RN_fupd,
      ring_RM_fupd = inst_fun ring_RM_fupd,
      ring_RP_fupd = inst_fun ring_RP_fupd,
      ring_R1_fupd = inst_fun ring_R1_fupd,
      ring_R0_fupd = inst_fun ring_R0_fupd,
      ring_RN = inst_fun ring_RN,
      ring_RM = inst_fun ring_RM,
      ring_RP = inst_fun ring_RP,
      ring_R1 = inst_fun ring_R1,
      ring_R0 = inst_fun ring_R0,
      ring_size_def = inst_fun ring_size_def,
      ring_case_def = inst_fun ring_case_def,
      ring_TY_DEF = inst_fun ring_TY_DEF,
      neg_mult = inst_fun neg_mult,
      mult_one_right = inst_fun mult_one_right,
      ring_is_semi_ring = inst_fun ring_is_semi_ring,
      mult_zero_right = inst_fun mult_zero_right,
      mult_zero_left = inst_fun mult_zero_left,
      plus_zero_right = inst_fun plus_zero_right,
      distr_left = inst_fun distr_left,
      opp_def = inst_fun opp_def,
      mult_one_left = inst_fun mult_one_left,
      plus_zero_left = inst_fun plus_zero_left,
      mult_assoc = inst_fun mult_assoc,
      mult_sym = inst_fun mult_sym,
      plus_assoc = inst_fun plus_assoc,
      plus_sym = inst_fun plus_sym,
      ring_induction = inst_fun ring_induction,
      ring_Axiom = inst_fun ring_Axiom,
      ring_nchotomy = inst_fun ring_nchotomy,
      ring_case_cong = inst_fun ring_case_cong,
      ring_11 = inst_fun ring_11,
      datatype_ring = inst_fun datatype_ring,
      ring_literal_11 = inst_fun ring_literal_11,
      EXISTS_ring = inst_fun EXISTS_ring,
      FORALL_ring = inst_fun FORALL_ring,
      ring_literal_nchotomy = inst_fun ring_literal_nchotomy,
      ring_updates_eq_literal = inst_fun ring_updates_eq_literal,
      ring_component_equality = inst_fun ring_component_equality,
      ring_fupdcanon_comp = inst_fun ring_fupdcanon_comp,
      ring_fupdcanon = inst_fun ring_fupdcanon,
      ring_fupdfupds_comp = inst_fun ring_fupdfupds_comp,
      ring_fupdfupds = inst_fun ring_fupdfupds,
      ring_accfupds = inst_fun ring_accfupds,
      ring_fn_updates = inst_fun ring_fn_updates,
      ring_accessors = inst_fun ring_accessors }
    end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ring",
    thydataty = "compute",
    data = "ring.is_ring_def ring.semi_ring_of_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ring"
end
