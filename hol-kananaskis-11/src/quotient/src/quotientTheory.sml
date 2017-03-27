structure quotientTheory :> quotientTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quotientTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quantHeuristicsTheory res_quanTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("quotient",
          Arbnum.fromString "1488586854",
          Arbnum.fromString "11971")
          [("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749"),
           ("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227"),
           ("res_quan",
           Arbnum.fromString "1488586843",
           Arbnum.fromString "965166")];
  val _ = Theory.incorporate_types "quotient" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"),
   ID("quotient", "-->"), ID("bool", "/\\"), ID("min", "="),
   ID("quotient", "===>"), ID("min", "==>"), ID("bool", "?"),
   ID("bool", "?!"), ID("quotient", "?!!"), ID("combin", "C"),
   ID("bool", "COND"), ID("quotient", "EQUIV"), ID("combin", "I"),
   ID("bool", "IN"), ID("combin", "K"), ID("bool", "LET"),
   ID("quotient", "PARTIAL_EQUIV"), ID("quotient", "QUOTIENT"),
   ID("bool", "RES_ABSTRACT"), ID("bool", "RES_EXISTS"),
   ID("quotient", "RES_EXISTS_EQUIV"), ID("bool", "RES_EXISTS_UNIQUE"),
   ID("bool", "RES_FORALL"), ID("combin", "W"), ID("bool", "\\/"),
   ID("bool", "literal_case"), ID("combin", "o"),
   ID("quotient", "respects"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYV "'a", TYOP [0, 1, 0], TYOP [0, 1, 2], TYOP [0, 3, 2],
   TYOP [1], TYOP [0, 1, 5], TYOP [0, 6, 5], TYOP [0, 1, 6],
   TYOP [0, 8, 7], TYOP [0, 0, 1], TYOP [0, 10, 5], TYOP [0, 2, 11],
   TYOP [0, 8, 12], TYOP [0, 8, 5], TYOP [0, 2, 5], TYOP [0, 2, 15],
   TYOP [0, 0, 5], TYOP [0, 0, 17], TYOP [0, 18, 16], TYOP [0, 8, 19],
   TYV "'d", TYOP [0, 1, 21], TYV "'c", TYOP [0, 23, 0], TYOP [0, 24, 22],
   TYOP [0, 0, 21], TYOP [0, 26, 25], TYOP [0, 1, 23], TYOP [0, 28, 27],
   TYOP [0, 23, 5], TYOP [0, 23, 30], TYV "'e", TYOP [0, 0, 32], TYV "'f",
   TYOP [0, 23, 34], TYOP [0, 0, 23], TYOP [0, 23, 21], TYOP [0, 23, 37],
   TYOP [0, 32, 34], TYOP [0, 21, 39], TYOP [0, 1, 36], TYOP [0, 21, 32],
   TYOP [0, 5, 5], TYOP [0, 23, 1], TYOP [0, 21, 1], TYOP [0, 21, 0],
   TYOP [0, 32, 0], TYOP [0, 34, 23], TYOP [0, 17, 5], TYOP [0, 30, 5],
   TYOP [0, 21, 5], TYOP [0, 51, 5], TYOP [0, 32, 5], TYOP [0, 53, 5],
   TYOP [0, 43, 5], TYOP [0, 15, 5], TYOP [0, 28, 5], TYOP [0, 57, 5],
   TYOP [0, 22, 5], TYOP [0, 59, 5], TYOP [0, 7, 5], TYOP [0, 3, 5],
   TYOP [0, 62, 5], TYOP [0, 14, 5], TYOP [0, 41, 5], TYOP [0, 65, 5],
   TYOP [0, 11, 5], TYOP [0, 36, 5], TYOP [0, 68, 5], TYOP [0, 26, 5],
   TYOP [0, 70, 5], TYOP [0, 33, 5], TYOP [0, 72, 5], TYOP [0, 49, 5],
   TYOP [0, 18, 5], TYOP [0, 75, 5], TYOP [0, 44, 5], TYOP [0, 77, 5],
   TYOP [0, 24, 5], TYOP [0, 79, 5], TYOP [0, 37, 5], TYOP [0, 81, 5],
   TYOP [0, 35, 5], TYOP [0, 83, 5], TYOP [0, 38, 5], TYOP [0, 85, 5],
   TYOP [0, 31, 5], TYOP [0, 87, 5], TYOP [0, 45, 5], TYOP [0, 89, 5],
   TYOP [0, 46, 5], TYOP [0, 91, 5], TYOP [0, 42, 5], TYOP [0, 93, 5],
   TYOP [0, 40, 5], TYOP [0, 95, 5], TYOP [0, 47, 5], TYOP [0, 97, 5],
   TYOP [0, 39, 5], TYOP [0, 99, 5], TYOP [0, 48, 5], TYOP [0, 101, 5],
   TYOP [0, 55, 5], TYOP [0, 2, 2], TYOP [0, 0, 0], TYOP [0, 105, 104],
   TYOP [0, 1, 1], TYOP [0, 107, 106], TYOP [0, 17, 6], TYOP [0, 43, 109],
   TYOP [0, 2, 110], TYOP [0, 37, 2], TYOP [0, 46, 112], TYOP [0, 28, 113],
   TYOP [0, 38, 3], TYOP [0, 112, 115], TYOP [0, 28, 116], TYOP [0, 42, 2],
   TYOP [0, 47, 118], TYOP [0, 22, 119], TYOP [0, 40, 41],
   TYOP [0, 39, 36], TYOP [0, 122, 121], TYOP [0, 22, 123],
   TYOP [0, 48, 122], TYOP [0, 33, 125], TYOP [0, 2, 37],
   TYOP [0, 26, 127], TYOP [0, 44, 128], TYOP [0, 21, 34],
   TYOP [0, 28, 130], TYOP [0, 35, 131], TYOP [0, 45, 132],
   TYOP [0, 5, 43], TYOP [0, 21, 51], TYOP [0, 34, 5], TYOP [0, 34, 136],
   TYOP [0, 6, 7], TYOP [0, 37, 81], TYOP [0, 130, 5], TYOP [0, 130, 140],
   TYOP [0, 104, 5], TYOP [0, 104, 142], TYOP [0, 16, 5],
   TYOP [0, 16, 144], TYOP [0, 4, 5], TYOP [0, 4, 146], TYOP [0, 9, 5],
   TYOP [0, 9, 148], TYOP [0, 25, 5], TYOP [0, 25, 150], TYOP [0, 28, 57],
   TYOP [0, 31, 152], TYOP [0, 8, 153], TYOP [0, 134, 138],
   TYOP [0, 8, 155], TYOP [0, 3, 62], TYOP [0, 16, 157], TYOP [0, 8, 158],
   TYOP [0, 41, 65], TYOP [0, 36, 68], TYOP [0, 161, 160],
   TYOP [0, 8, 162], TYOP [0, 31, 161], TYOP [0, 18, 164], TYOP [0, 0, 28],
   TYOP [0, 41, 166], TYOP [0, 32, 130], TYOP [0, 40, 168],
   TYOP [0, 1, 107], TYOP [0, 5, 170], TYOP [0, 0, 105], TYOP [0, 5, 172],
   TYOP [0, 1, 7], TYOP [0, 0, 49], TYOP [0, 1, 10], TYOP [0, 21, 23],
   TYOP [0, 23, 177], TYOP [0, 37, 37], TYOP [0, 107, 5],
   TYOP [0, 107, 180], TYOP [0, 8, 181], TYOP [0, 28, 77],
   TYOP [0, 8, 183], TYOP [0, 22, 89], TYOP [0, 8, 185], TYOP [0, 26, 91],
   TYOP [0, 18, 187], TYOP [0, 33, 97], TYOP [0, 18, 189],
   TYOP [0, 35, 101], TYOP [0, 31, 191], TYOP [0, 112, 5],
   TYOP [0, 127, 193], TYOP [0, 16, 194], TYOP [0, 6, 104],
   TYOP [0, 17, 49], TYOP [0, 38, 37], TYOP [0, 2, 28], TYOP [0, 36, 199],
   TYOP [0, 42, 130], TYOP [0, 39, 201], TYOP [0, 8, 6], TYOP [0, 16, 15],
   TYOP [0, 152, 57], TYOP [0, 161, 68]]
  end
  val _ = Theory.incorporate_consts "quotient" tyvector
     [("respects", 4), ("RES_EXISTS_EQUIV", 9), ("QUOTIENT", 13),
      ("PARTIAL_EQUIV", 14), ("EQUIV", 14), ("?!!", 7), ("===>", 20),
      ("-->", 29)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("E", 8), TMV("P", 1), TMV("P", 5), TMV("P", 6), TMV("P", 17),
   TMV("P'", 1), TMV("P'", 5), TMV("Q", 1), TMV("Q", 5), TMV("Q", 6),
   TMV("Q'", 1), TMV("Q'", 5), TMV("R", 6), TMV("R", 8), TMV("R1", 8),
   TMV("R2", 18), TMV("R3", 31), TMV("REL", 8), TMV("REL1", 8),
   TMV("REL2", 18), TMV("a", 0), TMV("a", 5), TMV("a1", 1), TMV("a1", 5),
   TMV("a2", 1), TMV("a2", 5), TMV("abs", 2), TMV("abs1", 28),
   TMV("abs1", 22), TMV("abs2", 26), TMV("abs2", 33), TMV("abs3", 35),
   TMV("b", 0), TMV("b1", 1), TMV("b2", 1), TMV("c", 0), TMV("c1", 1),
   TMV("c2", 1), TMV("e", 0), TMV("e1", 1), TMV("e2", 1), TMV("f", 2),
   TMV("f", 28), TMV("f", 6), TMV("f", 36), TMV("f", 17), TMV("f", 37),
   TMV("f", 38), TMV("f", 40), TMV("f", 39), TMV("f1", 2), TMV("f1", 3),
   TMV("f1", 41), TMV("f1", 36), TMV("f2", 2), TMV("f2", 3), TMV("f2", 41),
   TMV("f2", 36), TMV("g", 2), TMV("g", 6), TMV("g", 26), TMV("g", 42),
   TMV("g", 43), TMV("g1", 2), TMV("g2", 2), TMV("h", 24), TMV("lam", 2),
   TMV("m", 6), TMV("r", 1), TMV("r", 0), TMV("r", 6), TMV("r'", 1),
   TMV("r'", 0), TMV("rep", 10), TMV("rep1", 44), TMV("rep1", 45),
   TMV("rep2", 46), TMV("rep2", 47), TMV("rep3", 48), TMV("s", 1),
   TMV("s", 17), TMV("v", 1), TMV("x", 1), TMV("x", 0), TMV("x", 23),
   TMV("x", 32), TMV("x1", 1), TMV("x1", 0), TMV("x2", 1), TMV("x2", 0),
   TMV("y", 1), TMV("y", 0), TMV("y", 21), TMV("y1", 1), TMV("y1", 0),
   TMV("y2", 1), TMV("y2", 0), TMV("z", 1), TMC(2, 7), TMC(2, 49),
   TMC(2, 50), TMC(2, 52), TMC(2, 54), TMC(2, 55), TMC(2, 56), TMC(2, 58),
   TMC(2, 60), TMC(2, 61), TMC(2, 63), TMC(2, 64), TMC(2, 66), TMC(2, 67),
   TMC(2, 69), TMC(2, 71), TMC(2, 73), TMC(2, 74), TMC(2, 76), TMC(2, 78),
   TMC(2, 80), TMC(2, 82), TMC(2, 84), TMC(2, 86), TMC(2, 88), TMC(2, 90),
   TMC(2, 92), TMC(2, 94), TMC(2, 96), TMC(2, 98), TMC(2, 100),
   TMC(2, 102), TMC(2, 103), TMC(3, 108), TMC(3, 111), TMC(3, 29),
   TMC(3, 114), TMC(3, 117), TMC(3, 120), TMC(3, 124), TMC(3, 126),
   TMC(3, 129), TMC(3, 133), TMC(4, 134), TMC(5, 8), TMC(5, 18),
   TMC(5, 31), TMC(5, 135), TMC(5, 137), TMC(5, 134), TMC(5, 16),
   TMC(5, 138), TMC(5, 139), TMC(5, 141), TMC(5, 143), TMC(5, 145),
   TMC(5, 147), TMC(5, 149), TMC(5, 151), TMC(6, 20), TMC(6, 154),
   TMC(6, 156), TMC(6, 159), TMC(6, 163), TMC(6, 165), TMC(7, 134),
   TMC(8, 7), TMC(8, 49), TMC(9, 7), TMC(9, 49), TMC(10, 7), TMC(11, 167),
   TMC(11, 169), TMC(12, 171), TMC(12, 173), TMC(13, 14), TMC(14, 107),
   TMC(14, 105), TMC(14, 43), TMC(14, 104), TMC(15, 174), TMC(15, 175),
   TMC(16, 176), TMC(16, 178), TMC(17, 104), TMC(17, 179), TMC(18, 14),
   TMC(19, 182), TMC(19, 13), TMC(19, 184), TMC(19, 186), TMC(19, 188),
   TMC(19, 190), TMC(19, 192), TMC(19, 195), TMC(20, 196), TMC(21, 138),
   TMC(21, 197), TMC(22, 9), TMC(23, 138), TMC(24, 138), TMC(24, 197),
   TMC(25, 4), TMC(25, 198), TMC(26, 134), TMC(27, 104), TMC(27, 179),
   TMC(28, 200), TMC(28, 202), TMC(29, 4), TMC(29, 203), TMC(29, 204),
   TMC(29, 205), TMC(29, 206), TMC(30, 43)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op EQUIV_def x = x
    val op EQUIV_def =
    DT(((("quotient",0),[]),[]),
       [read"%109%0%147%173$0@@%98%82%98%90%147$2$1@$0@@%149$2$1@@$2$0@@@|@|@@|@"])
  fun op PARTIAL_EQUIV_def x = x
    val op PARTIAL_EQUIV_def =
    DT(((("quotient",1),[]),[]),
       [read"%109%13%147%184$0@@%141%164%82$1$0@$0@|@@%98%82%98%90%147$2$1@$0@@%141$2$1@$1@@%141$2$0@$0@@%149$2$1@@$2$0@@@@@|@|@@@|@"])
  fun op QUOTIENT_def x = x
    val op QUOTIENT_def =
    DT(((("quotient",3),[]),[]),
       [read"%109%13%104%26%111%73%147%186$2@$1@$0@@%141%99%20%143$2$1$0@@@$0@|@@%141%99%20$3$1$0@@$1$0@@|@@%98%68%98%79%147$4$1@$0@@%141$4$1@$1@@%141$4$0@$0@@%143$3$1@@$3$0@@@@@|@|@@@@|@|@|@"])
  fun op FUN_MAP x = x
    val op FUN_MAP =
    DT(((("quotient",16),[]),[]),
       [read"%105%42%113%60%156%133$1@$0@@%65%82$2$1$3$0@@@||@|@|@"])
  fun op FUN_REL x = x
    val op FUN_REL =
    DT(((("quotient",20),[]),[]),
       [read"%109%14%116%15%104%41%104%58%147%157$3@$2@$1@$0@@%98%82%98%90%163$5$1@$0@@$4$3$1@@$2$0@@@|@|@@|@|@|@|@"])
  fun op respects_def x = x
    val op respects_def =
    DT(((("quotient",23),[]),[]), [read"%154%207@%200@"])
  fun op ?!! x = x
    val op ?!! =
    DT(((("quotient",30),[]),[]), [read"%107%3%147%168$0@@%166$0@@|@"])
  fun op RES_EXISTS_EQUIV_DEF x = x
    val op RES_EXISTS_EQUIV_DEF =
    DT(((("quotient",31),[]),[]),
       [read"%155%196@%13%3%141%194%208$1@@%82$1$0@|@@%198%208$1@@%82%198%208$2@@%90%163%141$2$1@@$2$0@@@$3$1@$0@@|@|@@||@"])
  fun op FUN_REL_EQUALS x = x
    val op FUN_REL_EQUALS =
    DT(((("quotient",36),
        [("bool",[58]),("combin",[18]),
         ("quotient",[8,20,22,23])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%163%141%209%157$7@$4@@$1@@%209%157$7@$4@@$0@@@%147%150%139$5@$3@$1@@%139$5@$3@$0@@@%98%82%98%90%163$9$1@$0@@$6$3$1@@$2$0@@@|@|@@@|@|@@|@|@|@@|@|@|@"])
  fun op EQUIV_IMP_PARTIAL_EQUIV x = x
    val op EQUIV_IMP_PARTIAL_EQUIV =
    DT(((("quotient",2),
        [("bool",[13,25,26,27,30,36,47,48,51,52,53,54,56,63,72,94]),
         ("combin",[19]),("quotient",[0,1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%13%163%173$0@@%184$0@@|@"])
  fun op QUOTIENT_ABS_REP x = x
    val op QUOTIENT_ABS_REP =
    DT(((("quotient",4),[("quotient",[3])]),[]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%99%20%143$2$1$0@@@$0@|@@|@|@|@"])
  fun op QUOTIENT_REP_REFL x = x
    val op QUOTIENT_REP_REFL =
    DT(((("quotient",5),[("quotient",[3])]),[]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%99%20$3$1$0@@$1$0@@|@@|@|@|@"])
  fun op QUOTIENT_REL x = x
    val op QUOTIENT_REL =
    DT(((("quotient",6),[("quotient",[3])]),[]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%68%98%79%147$4$1@$0@@%141$4$1@$1@@%141$4$0@$0@@%143$3$1@@$3$0@@@@@|@|@@|@|@|@"])
  fun op QUOTIENT_REL_ABS x = x
    val op QUOTIENT_REL_ABS =
    DT(((("quotient",7),[("quotient",[3])]),[]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%68%98%79%163$4$1@$0@@%143$3$1@@$3$0@@@|@|@@|@|@|@"])
  fun op QUOTIENT_REL_ABS_EQ x = x
    val op QUOTIENT_REL_ABS_EQ =
    DT(((("quotient",8),
        [("bool",[25,51,56,63]),("quotient",[3])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%68%98%79%163$4$1@$1@@%163$4$0@$0@@%147$4$1@$0@@%143$3$1@@$3$0@@@@@|@|@@|@|@|@"])
  fun op QUOTIENT_REL_REP x = x
    val op QUOTIENT_REL_REP =
    DT(((("quotient",9),
        [("bool",[25,51,56,63]),("quotient",[3])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%99%20%99%32%147$4$2$1@@$2$0@@@%143$1@$0@@|@|@@|@|@|@"])
  fun op QUOTIENT_REP_ABS x = x
    val op QUOTIENT_REP_ABS =
    DT(((("quotient",10),
        [("bool",[25,51,56,63]),("quotient",[4,5,6])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%68%163$3$0@$0@@$3$1$2$0@@@$0@@|@@|@|@|@"])
  fun op IDENTITY_EQUIV x = x
    val op IDENTITY_EQUIV =
    DT(((("quotient",11),
        [("bool",[25,26,56]),("quotient",[0])]),["DISK_THM"]),
       [read"%173%142@"])
  fun op IDENTITY_QUOTIENT x = x
    val op IDENTITY_QUOTIENT =
    DT(((("quotient",12),
        [("bool",[25,36,51,56]),("combin",[19]),
         ("quotient",[3])]),["DISK_THM"]), [read"%185%142@%174@%174@"])
  fun op EQUIV_REFL_SYM_TRANS x = x
    val op EQUIV_REFL_SYM_TRANS =
    DT(((("quotient",13),[("bool",[14,25,26,57,61,63])]),["DISK_THM"]),
       [read"%109%13%147%98%82%98%90%147$2$1@$0@@%149$2$1@@$2$0@@@|@|@@%141%98%82$1$0@$0@|@@%141%98%82%98%90%163$2$1@$0@@$2$0@$1@@|@|@@%98%82%98%90%98%97%163%141$3$2@$1@@$3$1@$0@@@$3$2@$0@@|@|@|@@@@|@"])
  fun op QUOTIENT_SYM x = x
    val op QUOTIENT_SYM =
    DT(((("quotient",14),
        [("bool",[13,25,26,27,30,36,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("combin",[19]),("quotient",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%82%98%90%163$4$1@$0@@$4$0@$1@@|@|@@|@|@|@"])
  fun op QUOTIENT_TRANS x = x
    val op QUOTIENT_TRANS =
    DT(((("quotient",15),
        [("bool",[13,25,26,27,30,36,47,48,51,52,53,54,56,63,93,94,96]),
         ("combin",[19]),("quotient",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%82%98%90%98%97%163%141$5$2@$1@@$5$1@$0@@@$5$2@$0@@|@|@|@@|@|@|@"])
  fun op FUN_MAP_THM x = x
    val op FUN_MAP_THM =
    DT(((("quotient",17),[("quotient",[16])]),[]),
       [read"%105%42%113%60%118%65%98%82%145%133$3@$2@$1@$0@@$2$1$3$0@@@@|@|@|@|@"])
  fun op FUN_MAP_I x = x
    val op FUN_MAP_I =
    DT(((("quotient",18),
        [("bool",[14,25,26,56]),("combin",[19]),
         ("quotient",[16])]),["DISK_THM"]),
       [read"%152%131%174@%175@@%177@"])
  fun op IN_FUN x = x
    val op IN_FUN =
    DT(((("quotient",19),
        [("bool",[18,25,56]),("quotient",[17])]),["DISK_THM"]),
       [read"%104%41%130%62%115%80%98%82%147%178$0@%132$3@$2@$1@@@$2%179$3$0@@$1@@@|@|@|@|@"])
  fun op FUN_REL_EQ x = x
    val op FUN_REL_EQ =
    DT(((("quotient",21),
        [("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,71,76,78,80,81,93,
          94,96]),("quotient",[20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%153%157%142@%143@@%148@"])
  fun op FUN_QUOTIENT x = x
    val op FUN_QUOTIENT =
    DT(((("quotient",22),
        [("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,84,93,94,96]),
         ("combin",[19]),("quotient",[3,4,5,6,7,10,17,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%192%157$5@$2@@%139$3@$1@@%134$4@$0@@@|@|@|@@|@|@|@"])
  fun op RESPECTS x = x
    val op RESPECTS =
    DT(((("quotient",24),
        [("bool",[25,56]),("combin",[18]),
         ("quotient",[23])]),["DISK_THM"]),
       [read"%109%13%98%82%147%208$1@$0@@$1$0@$0@@|@|@"])
  fun op IN_RESPECTS x = x
    val op IN_RESPECTS =
    DT(((("quotient",25),
        [("bool",[25,36,56]),("pred_set",[0]),
         ("quotient",[24])]),["DISK_THM"]),
       [read"%109%13%98%82%147%178$0@%208$1@@@$1$0@$0@@|@|@"])
  fun op RESPECTS_THM x = x
    val op RESPECTS_THM =
    DT(((("quotient",26),
        [("bool",[25,56]),("combin",[18]),
         ("quotient",[20,23])]),["DISK_THM"]),
       [read"%109%14%116%15%104%41%147%209%157$2@$1@@$0@@%98%82%98%90%163$4$1@$0@@$3$2$1@@$2$0@@@|@|@@|@|@|@"])
  fun op RESPECTS_MP x = x
    val op RESPECTS_MP =
    DT(((("quotient",27),[("quotient",[26])]),["DISK_THM"]),
       [read"%109%14%116%15%104%41%98%82%98%90%163%141%209%157$4@$3@@$2@@$4$1@$0@@@$3$2$1@@$2$0@@@|@|@|@|@|@"])
  fun op RESPECTS_REP_ABS x = x
    val op RESPECTS_REP_ABS =
    DT(((("quotient",28),
        [("bool",[25,51,63]),("quotient",[10,27])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%104%41%98%82%163%141%209%157$5@$2@@$1@@$5$0@$0@@@$2$1$3$4$0@@@@$1$0@@@|@|@|@@|@|@|@"])
  fun op RESPECTS_o x = x
    val op RESPECTS_o =
    DT(((("quotient",29),[("combin",[8]),("quotient",[26])]),["DISK_THM"]),
       [read"%109%14%116%15%122%16%112%44%104%58%163%141%211%162$3@$2@@$1@@%209%157$4@$3@@$0@@@%210%158$4@$2@@%205$1@$0@@@|@|@|@|@|@"])
  fun op RES_EXISTS_EQUIV x = x
    val op RES_EXISTS_EQUIV =
    DT(((("quotient",32),[("quotient",[31])]),[]),
       [read"%109%13%107%67%147%196$1@$0@@%141%194%208$1@@%82$1$0@|@@%198%208$1@@%82%198%208$2@@%90%163%141$2$1@@$2$0@@@$3$1@$0@@|@|@@@|@|@"])
  fun op FUN_REL_EQ_REL x = x
    val op FUN_REL_EQ_REL =
    DT(((("quotient",33),
        [("bool",[25,26,51,63,105]),("combin",[18]),
         ("quotient",[6,22,23])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%147%157$7@$4@$1@$0@@%141%209%157$7@$4@@$1@@%141%209%157$7@$4@@$0@@%150%139$5@$3@$1@@%139$5@$3@$0@@@@@|@|@@|@|@|@@|@|@|@"])
  fun op FUN_REL_MP x = x
    val op FUN_REL_MP =
    DT(((("quotient",34),[("quotient",[20])]),[]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%98%82%98%90%163%141%157$9@$6@$3@$2@@$9$1@$0@@@$6$3$1@@$2$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op FUN_REL_IMP x = x
    val op FUN_REL_IMP =
    DT(((("quotient",37),[("quotient",[36])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%163%141%209%157$7@$4@@$1@@%141%209%157$7@$4@@$0@@%150%139$5@$3@$1@@%139$5@$3@$0@@@@@%98%82%98%90%163$9$1@$0@@$6$3$1@@$2$0@@@|@|@@|@|@@|@|@|@@|@|@|@"])
  fun op EQUALS_PRS x = x
    val op EQUALS_PRS =
    DT(((("quotient",38),
        [("bool",[25,56]),("quotient",[9])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%99%83%99%91%147%143$1@$0@@$4$2$1@@$2$0@@@|@|@@|@|@|@"])
  fun op EQUALS_RSP x = x
    val op EQUALS_RSP =
    DT(((("quotient",39),
        [("bool",[26]),("quotient",[14,15])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%86%98%88%98%93%98%95%163%141$6$3@$2@@$6$1@$0@@@%147$6$3@$1@@$6$2@$0@@@|@|@|@|@@|@|@|@"])
  fun op LAMBDA_PRS x = x
    val op LAMBDA_PRS =
    DT(((("quotient",40),
        [("bool",[14,25,26,56]),("quotient",[4,17])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%119%46%150%84$1$0@|@%139$4@$2@%82$2$1$6$0@@@|@@|@@|@|@|@@|@|@|@"])
  fun op LAMBDA_PRS1 x = x
    val op LAMBDA_PRS1 =
    DT(((("quotient",41),
        [("bool",[14,25,26,56]),("quotient",[4,17])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%119%46%150%84$1$0@|@%139$4@$2@%82%134$6@$2@$1@$0@|@@|@@|@|@|@@|@|@|@"])
  fun op LAMBDA_RSP x = x
    val op LAMBDA_RSP =
    DT(((("quotient",42),[("bool",[14,25,36,53])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%50%104%54%163%157$7@$4@$1@$0@@%157$7@$4@%82$2$0@|@%90$1$0@|@@|@|@@|@|@|@@|@|@|@"])
  fun op ABSTRACT_PRS x = x
    val op ABSTRACT_PRS =
    DT(((("quotient",43),
        [("bool",[14,25,26,51,56,63]),("combin",[18]),("pred_set",[0]),
         ("quotient",[4,5,17,23]),("res_quan",[27])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%119%46%150$0@%139$4@$2@%193%208$6@@%134$5@$1@$0@@@@|@@|@|@|@@|@|@|@"])
  fun op RES_ABSTRACT_RSP x = x
    val op RES_ABSTRACT_RSP =
    DT(((("quotient",44),
        [("bool",[25,51,63]),("combin",[18]),("pred_set",[0]),
         ("quotient",[6,20,23]),("res_quan",[27])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%50%104%54%163%157$7@$4@$1@$0@@%157$7@$4@%193%208$7@@$1@@%193%208$7@@$0@@@|@|@@|@|@|@@|@|@|@"])
  fun op LET_RES_ABSTRACT x = x
    val op LET_RES_ABSTRACT =
    DT(((("quotient",45),
        [("bool",[8,25,63]),("res_quan",[27])]),["DISK_THM"]),
       [read"%107%70%104%66%98%81%163%178$0@$2@@%143%182%193$2@$1@@$0@@%182$1@$0@@@|@|@|@"])
  fun op LAMBDA_REP_ABS_RSP x = x
    val op LAMBDA_REP_ABS_RSP =
    DT(((("quotient",46),[("quotient",[16,20])]),[]),
       [read"%109%18%105%27%117%74%116%19%113%29%124%76%104%50%104%54%163%141%141%98%68%98%71%163$9$1@$0@@$9$1@$7$8$0@@@@|@|@@%99%69%99%72%163$6$1@$0@@$6$1@$4$5$0@@@@|@|@@@%157$7@$4@$1@$0@@@%157$7@$4@$1@%134$6@$2@%139$5@$3@$0@@@@|@|@|@|@|@|@|@|@"])
  fun op REP_ABS_RSP x = x
    val op REP_ABS_RSP =
    DT(((("quotient",47),
        [("bool",[25,51,56,63]),("quotient",[4,5,6])]),["DISK_THM"]),
       [read"%109%17%104%26%111%73%163%186$2@$1@$0@@%98%86%98%88%163$4$1@$0@@$4$1@$2$3$0@@@@|@|@@|@|@|@"])
  fun op FORALL_PRS x = x
    val op FORALL_PRS =
    DT(((("quotient",48),
        [("bool",[1,14,25,26,36,53,63]),("combin",[18,19]),
         ("pred_set",[0]),("quotient",[4,5,17,23]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%115%45%147%99$0@@%198%208$3@@%132$2@%176@$0@@@|@@|@|@|@"])
  fun op RES_FORALL_RSP x = x
    val op RES_FORALL_RSP =
    DT(((("quotient",49),
        [("bool",[26]),("combin",[18]),("pred_set",[0]),
         ("quotient",[20,23]),("res_quan",[0])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%107%43%107%59%163%159$4@%147@$1@$0@@%147%198%208$4@@$1@@%198%208$4@@$0@@@|@|@@|@|@|@"])
  fun op RES_FORALL_PRS x = x
    val op RES_FORALL_PRS =
    DT(((("quotient",50),
        [("bool",[25,26,36,53,63]),("combin",[19]),("pred_set",[0]),
         ("quotient",[4,17]),("res_quan",[0])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%115%4%115%45%147%199$1@$0@@%198%132$3@%176@$1@@%132$3@%176@$0@@@|@|@@|@|@|@"])
  fun op EXISTS_PRS x = x
    val op EXISTS_PRS =
    DT(((("quotient",51),
        [("bool",[2,15,26,51,63]),("combin",[18,19]),("pred_set",[0]),
         ("quotient",[4,5,17,23]),("res_quan",[1])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%115%45%147%165$0@@%194%208$3@@%132$2@%176@$0@@@|@@|@|@|@"])
  fun op RES_EXISTS_RSP x = x
    val op RES_EXISTS_RSP =
    DT(((("quotient",52),
        [("bool",[25,26,51,63]),("combin",[18]),("pred_set",[0]),
         ("quotient",[20,23]),("res_quan",[1])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%107%43%107%59%163%159$4@%147@$1@$0@@%147%194%208$4@@$1@@%194%208$4@@$0@@@|@|@@|@|@|@"])
  fun op RES_EXISTS_PRS x = x
    val op RES_EXISTS_PRS =
    DT(((("quotient",53),
        [("bool",[25,26,51,63]),("combin",[19]),("pred_set",[0]),
         ("quotient",[4,17]),("res_quan",[1])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%115%4%115%45%147%195$1@$0@@%194%132$3@%176@$1@@%132$3@%176@$0@@@|@|@@|@|@|@"])
  fun op EXISTS_UNIQUE_PRS x = x
    val op EXISTS_UNIQUE_PRS =
    DT(((("quotient",54),
        [("bool",[7,14,25,26,51,53,58,63]),("combin",[18,19]),
         ("pred_set",[0]),("quotient",[4,5,6,8,17,23,32,51]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%115%45%147%167$0@@%196$3@%132$2@%176@$0@@@|@@|@|@|@"])
  fun op RES_EXISTS_EQUIV_RSP x = x
    val op RES_EXISTS_EQUIV_RSP =
    DT(((("quotient",55),
        [("bool",[14,25,26,36,56,63]),("combin",[18]),("pred_set",[0]),
         ("quotient",[20,23,32,52]),("res_quan",[0])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%107%43%107%59%163%159$4@%147@$1@$0@@%147%196$4@$1@@%196$4@$0@@@|@|@@|@|@|@"])
  fun op COND_PRS x = x
    val op COND_PRS =
    DT(((("quotient",56),
        [("bool",[25,56,58,109]),("quotient",[4])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%103%21%99%32%99%35%143%172$2@$1@$0@@$4%171$2@$3$1@@$3$0@@@@|@|@|@@|@|@|@"])
  fun op COND_RSP x = x
    val op COND_RSP =
    DT(((("quotient",57),[("bool",[25,26,27,30,63,64])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%103%23%103%25%98%33%98%34%98%36%98%37%163%141%147$5@$4@@%141$8$3@$2@@$8$1@$0@@@@$8%171$5@$3@$1@@%171$4@$2@$0@@@|@|@|@|@|@|@@|@|@|@"])
  fun op LET_PRS x = x
    val op LET_PRS =
    DT(((("quotient",58),
        [("bool",[8,25,56]),("quotient",[4,16])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%119%46%100%84%145%183$1@$0@@$3%182%134$6@$2@$1@@$5$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op LET_RSP x = x
    val op LET_RSP =
    DT(((("quotient",59),[("bool",[8]),("quotient",[34])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%98%82%98%90%163%141%157$9@$6@$3@$2@@$9$1@$0@@@$6%182$3@$1@@%182$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op literal_case_PRS x = x
    val op literal_case_PRS =
    DT(((("quotient",60),
        [("bool",[17,25,56]),("quotient",[4,16])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%119%46%100%84%145%204$1@$0@@$3%203%134$6@$2@$1@@$5$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op literal_case_RSP x = x
    val op literal_case_RSP =
    DT(((("quotient",61),[("bool",[17]),("quotient",[34])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%98%82%98%90%163%141%157$9@$6@$3@$2@@$9$1@$0@@@$6%203$3@$1@@%203$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op APPLY_PRS x = x
    val op APPLY_PRS =
    DT(((("quotient",62),
        [("bool",[25,36,56]),("quotient",[4,17])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%119%46%100%84%145$1$0@@$3%134$6@$2@$1@$5$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op APPLY_RSP x = x
    val op APPLY_RSP =
    DT(((("quotient",63),[("quotient",[34])]),[]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%104%41%104%58%98%82%98%90%163%141%157$9@$6@$3@$2@@$9$1@$0@@@$6$3$1@@$2$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op I_PRS x = x
    val op I_PRS =
    DT(((("quotient",64),
        [("bool",[25,56]),("combin",[19]),("quotient",[4])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%99%38%143%175$0@@$2%174$1$0@@@@|@@|@|@|@"])
  fun op I_RSP x = x
    val op I_RSP =
    DT(((("quotient",65),
        [("bool",[25,36,53]),("combin",[19])]),["DISK_THM"]),
       [read"%109%13%104%26%111%73%163%186$2@$1@$0@@%98%39%98%40%163$4$1@$0@@$4%174$1@@%174$0@@@|@|@@|@|@|@"])
  fun op K_PRS x = x
    val op K_PRS =
    DT(((("quotient",66),
        [("bool",[25,56]),("combin",[12]),("quotient",[4])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%100%84%101%92%144%181$1@$0@@$6%180$5$1@@$2$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op K_RSP x = x
    val op K_RSP =
    DT(((("quotient",67),[("bool",[25,63]),("combin",[12])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%98%86%98%88%99%94%99%96%163%141$9$3@$2@@$6$1@$0@@@$9%180$3@$1@@%180$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op o_PRS x = x
    val op o_PRS =
    DT(((("quotient",68),
        [("bool",[14,25,26,56]),("combin",[8]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%109%14%106%28%123%75%163%188$2@$1@$0@@%116%15%114%30%127%77%163%190$2@$1@$0@@%122%16%120%31%129%78%163%191$2@$1@$0@@%128%49%125%61%151%206$1@$0@@%140$8@$3@%205%138$6@$2@$1@@%136$9@$5@$0@@@@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op o_RSP x = x
    val op o_RSP =
    DT(((("quotient",69),[("combin",[8]),("quotient",[20])]),["DISK_THM"]),
       [read"%109%14%106%28%123%75%163%188$2@$1@$0@@%116%15%114%30%127%77%163%190$2@$1@$0@@%122%16%120%31%129%78%163%191$2@$1@$0@@%112%53%112%57%104%63%104%64%163%141%162$9@$6@$3@$2@@%157$12@$9@$1@$0@@@%158$12@$6@%205$3@$1@@%205$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op C_PRS x = x
    val op C_PRS =
    DT(((("quotient",70),
        [("bool",[25,56]),("combin",[16]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%109%14%106%28%123%75%163%188$2@$1@$0@@%116%15%114%30%127%77%163%190$2@$1@$0@@%122%16%120%31%129%78%163%191$2@$1@$0@@%126%48%102%85%101%92%146%170$2@$1@$0@@$4%169%137$10@%138$7@$3@@$2@@$6$1@@$9$0@@@@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op C_RSP x = x
    val op C_RSP =
    DT(((("quotient",71),
        [("combin",[16]),("quotient",[20])]),["DISK_THM"]),
       [read"%109%14%106%28%123%75%163%188$2@$1@$0@@%116%15%114%30%127%77%163%190$2@$1@$0@@%122%16%120%31%129%78%163%191$2@$1@$0@@%110%52%110%56%99%87%99%89%98%93%98%95%163%141%161$14@%162$11@$8@@$5@$4@@%141$11$3@$2@@$14$1@$0@@@@$8%169$5@$3@$1@@%169$4@$2@$0@@@|@|@|@|@|@|@@|@|@|@@|@|@|@@|@|@|@"])
  fun op W_PRS x = x
    val op W_PRS =
    DT(((("quotient",72),
        [("bool",[25,56]),("combin",[18]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%121%47%100%84%145%201$1@$0@@$3%200%135$6@%134$6@$2@@$1@@$5$0@@@@|@|@@|@|@|@@|@|@|@"])
  fun op W_RSP x = x
    val op W_RSP =
    DT(((("quotient",73),
        [("combin",[18]),("quotient",[20])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%113%29%124%76%163%189$2@$1@$0@@%108%51%108%55%98%86%98%88%163%141%160$9@%157$9@$6@@$3@$2@@$9$1@$0@@@$6%200$3@$1@@%200$2@$0@@@|@|@|@|@@|@|@|@@|@|@|@"])
  fun op EQ_IMPLIES x = x
    val op EQ_IMPLIES =
    DT(((("quotient",74),[("bool",[25,53])]),["DISK_THM"]),
       [read"%103%2%103%8%163%147$1@$0@@%163$1@$0@@|@|@"])
  fun op EQUALS_IMPLIES x = x
    val op EQUALS_IMPLIES =
    DT(((("quotient",75),[("bool",[25,53])]),["DISK_THM"]),
       [read"%98%1%98%5%98%7%98%10%163%141%142$3@$1@@%142$2@$0@@@%163%142$3@$2@@%142$1@$0@@@|@|@|@|@"])
  fun op CONJ_IMPLIES x = x
    val op CONJ_IMPLIES =
    DT(((("quotient",76),[]),[]),
       [read"%103%2%103%6%103%8%103%11%163%141%163$3@$1@@%163$2@$0@@@%163%141$3@$2@@%141$1@$0@@@|@|@|@|@"])
  fun op DISJ_IMPLIES x = x
    val op DISJ_IMPLIES =
    DT(((("quotient",77),[]),[]),
       [read"%103%2%103%6%103%8%103%11%163%141%163$3@$1@@%163$2@$0@@@%163%202$3@$2@@%202$1@$0@@@|@|@|@|@"])
  fun op IMP_IMPLIES x = x
    val op IMP_IMPLIES =
    DT(((("quotient",78),[]),[]),
       [read"%103%2%103%6%103%8%103%11%163%141%163$1@$3@@%163$2@$0@@@%163%163$3@$2@@%163$1@$0@@@|@|@|@|@"])
  fun op NOT_IMPLIES x = x
    val op NOT_IMPLIES =
    DT(((("quotient",79),[("bool",[27,48])]),["DISK_THM"]),
       [read"%103%2%103%8%163%163$0@$1@@%163%212$1@@%212$0@@@|@|@"])
  fun op EQUALS_EQUIV_IMPLIES x = x
    val op EQUALS_EQUIV_IMPLIES =
    DT(((("quotient",80),[("quotient",[0,13])]),["DISK_THM"]),
       [read"%109%13%163%173$0@@%163%141$0%22@%24@@$0%33@%34@@@%163%142%22@%33@@$0%24@%34@@@@|@"])
  fun op ABSTRACT_RES_ABSTRACT x = x
    val op ABSTRACT_RES_ABSTRACT =
    DT(((("quotient",81),
        [("bool",[51,63]),("pred_set",[0]),("quotient",[6,20,24]),
         ("res_quan",[27])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%104%41%104%58%163%157$5@$2@$1@$0@@%157$5@$2@$1@%193%208$5@@$0@@@|@|@|@@|@|@|@"])
  fun op RES_ABSTRACT_ABSTRACT x = x
    val op RES_ABSTRACT_ABSTRACT =
    DT(((("quotient",82),
        [("bool",[51,63]),("pred_set",[0]),("quotient",[6,20,24]),
         ("res_quan",[27])]),["DISK_THM"]),
       [read"%109%14%105%27%117%74%163%187$2@$1@$0@@%116%15%104%41%104%58%163%157$5@$2@$1@$0@@%157$5@$2@%193%208$5@@$1@@$0@@|@|@|@@|@|@|@"])
  fun op EQUIV_RES_ABSTRACT_LEFT x = x
    val op EQUIV_RES_ABSTRACT_LEFT =
    DT(((("quotient",83),
        [("bool",[25,51,63]),("pred_set",[0]),("quotient",[24]),
         ("res_quan",[27])]),["DISK_THM"]),
       [read"%109%14%116%15%104%50%104%54%98%86%98%88%163%141$4$3$1@@$2$0@@@$5$1@$1@@@$4%193%208$5@@$3@$1@@$2$0@@@|@|@|@|@|@|@"])
  fun op EQUIV_RES_ABSTRACT_RIGHT x = x
    val op EQUIV_RES_ABSTRACT_RIGHT =
    DT(((("quotient",84),
        [("bool",[25,51,63]),("pred_set",[0]),("quotient",[24]),
         ("res_quan",[27])]),["DISK_THM"]),
       [read"%109%14%116%15%104%50%104%54%98%86%98%88%163%141$4$3$1@@$2$0@@@$5$0@$0@@@$4$3$1@@%193%208$5@@$2@$0@@@|@|@|@|@|@|@"])
  fun op EQUIV_RES_FORALL x = x
    val op EQUIV_RES_FORALL =
    DT(((("quotient",85),
        [("bool",[14,25,53,56,58]),("pred_set",[0]),("quotient",[0,24]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%109%0%107%3%163%173$1@@%147%198%208$1@@$0@@%98$0@@@|@|@"])
  fun op EQUIV_RES_EXISTS x = x
    val op EQUIV_RES_EXISTS =
    DT(((("quotient",86),
        [("bool",[14,25,51,56,58]),("pred_set",[0]),("quotient",[0,24]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%109%0%107%3%163%173$1@@%147%194%208$1@@$0@@%164$0@@@|@|@"])
  fun op EQUIV_RES_EXISTS_UNIQUE x = x
    val op EQUIV_RES_EXISTS_UNIQUE =
    DT(((("quotient",87),
        [("bool",[14,25,51,53,56,58,122]),("pred_set",[0]),
         ("quotient",[0,24]),("res_quan",[0,1,2])]),["DISK_THM"]),
       [read"%109%0%107%3%163%173$1@@%147%197%208$1@@$0@@%166$0@@@|@|@"])
  fun op FORALL_REGULAR x = x
    val op FORALL_REGULAR =
    DT(((("quotient",88),[("bool",[14,58])]),["DISK_THM"]),
       [read"%107%3%107%9%163%98%82%163$2$0@@$1$0@@|@@%163%98$1@@%98$0@@@|@|@"])
  fun op EXISTS_REGULAR x = x
    val op EXISTS_REGULAR =
    DT(((("quotient",89),[("bool",[14,58])]),["DISK_THM"]),
       [read"%107%3%107%9%163%98%82%163$2$0@@$1$0@@|@@%163%164$1@@%164$0@@@|@|@"])
  fun op RES_FORALL_REGULAR x = x
    val op RES_FORALL_REGULAR =
    DT(((("quotient",90),
        [("bool",[14,58]),("pred_set",[0]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%107%3%107%9%107%12%163%98%82%163$1$0@@%163$3$0@@$2$0@@@|@@%163%198$0@$2@@%198$0@$1@@@|@|@|@"])
  fun op RES_EXISTS_REGULAR x = x
    val op RES_EXISTS_REGULAR =
    DT(((("quotient",91),
        [("bool",[14,25,51,58,63]),("pred_set",[0]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%107%3%107%9%107%12%163%98%82%163$1$0@@%163$3$0@@$2$0@@@|@@%163%194$0@$2@@%194$0@$1@@@|@|@|@"])
  fun op LEFT_RES_FORALL_REGULAR x = x
    val op LEFT_RES_FORALL_REGULAR =
    DT(((("quotient",92),
        [("bool",[14,25,26,58,63]),("pred_set",[0]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%107%3%107%12%107%9%163%98%82%141$2$0@@%163$1$0@@$3$0@@@|@@%163%198$1@$0@@%98$2@@@|@|@|@"])
  fun op RIGHT_RES_FORALL_REGULAR x = x
    val op RIGHT_RES_FORALL_REGULAR =
    DT(((("quotient",93),
        [("bool",[14,25,58,63]),("pred_set",[0]),
         ("res_quan",[0])]),["DISK_THM"]),
       [read"%107%3%107%12%107%9%163%98%82%163$2$0@@%163$3$0@@$1$0@@@|@@%163%98$2@@%198$1@$0@@@|@|@|@"])
  fun op LEFT_RES_EXISTS_REGULAR x = x
    val op LEFT_RES_EXISTS_REGULAR =
    DT(((("quotient",94),
        [("bool",[14,58]),("pred_set",[0]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%107%3%107%12%107%9%163%98%82%163$2$0@@%163$1$0@@$3$0@@@|@@%163%194$1@$0@@%164$2@@@|@|@|@"])
  fun op RIGHT_RES_EXISTS_REGULAR x = x
    val op RIGHT_RES_EXISTS_REGULAR =
    DT(((("quotient",95),
        [("bool",[14,25,26,51,58,63]),("pred_set",[0]),
         ("res_quan",[1])]),["DISK_THM"]),
       [read"%107%3%107%12%107%9%163%98%82%141$2$0@@%163$3$0@@$1$0@@@|@@%163%164$2@@%194$1@$0@@@|@|@|@"])
  fun op EXISTS_UNIQUE_REGULAR x = x
    val op EXISTS_UNIQUE_REGULAR =
    DT(((("quotient",96),
        [("bool",
         [7,14,25,26,36,47,48,53,54,56,58,63,71,72,78,80,81,93,94,96]),
         ("combin",[19]),("pred_set",[0]),("quotient",[32]),
         ("res_quan",[0,1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%107%3%109%0%107%9%163%141%98%82%163$3$0@@%141%208$2@$0@@$1$0@@@|@@%98%82%98%90%163%141%208$3@$1@@%141$2$1@@%141%208$3@$0@@$2$0@@@@@$3$1@$0@@|@|@@@%163%166$2@@%196$1@$0@@@|@|@|@"])
  fun op RES_EXISTS_UNIQUE_RESPECTS_REGULAR x = x
    val op RES_EXISTS_UNIQUE_RESPECTS_REGULAR =
    DT(((("quotient",97),
        [("bool",[25,51,53,56,58,63]),("quotient",[25,32]),
         ("res_quan",[0,2])]),["DISK_THM"]),
       [read"%109%13%107%3%163%197%208$1@@$0@@%196$1@$0@@|@|@"])
  fun op RES_EXISTS_UNIQUE_REGULAR x = x
    val op RES_EXISTS_UNIQUE_REGULAR =
    DT(((("quotient",98),
        [("bool",
         [14,25,26,36,47,48,53,54,56,58,63,71,72,78,80,81,84,93,94,96]),
         ("combin",[19]),("pred_set",[0]),("quotient",[32]),
         ("res_quan",[0,1,2]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%107%3%109%13%107%9%163%141%98%82%163$3$0@@$1$0@@|@@%98%82%98%90%163%141%208$3@$1@@%141$2$1@@%141%208$3@$0@@$2$0@@@@@$3$1@$0@@|@|@@@%163%197%208$1@@$2@@%196$1@$0@@@|@|@|@"])
  fun op RES_EXISTS_UNIQUE_REGULAR_SAME x = x
    val op RES_EXISTS_UNIQUE_REGULAR_SAME =
    DT(((("quotient",99),
        [("bool",[25,51,63]),("pred_set",[0]),("quotient",[20,24,32,76]),
         ("res_quan",[0,1,2])]),["DISK_THM"]),
       [read"%109%13%107%3%107%9%163%159$2@%147@$1@$0@@%163%197%208$2@@$1@@%196$2@$0@@@|@|@|@"])
  end
  val _ = DB.bindl "quotient"
  [("EQUIV_def",EQUIV_def,DB.Def),
   ("PARTIAL_EQUIV_def",PARTIAL_EQUIV_def,DB.Def),
   ("QUOTIENT_def",QUOTIENT_def,DB.Def), ("FUN_MAP",FUN_MAP,DB.Def),
   ("FUN_REL",FUN_REL,DB.Def), ("respects_def",respects_def,DB.Def),
   ("?!!",?!!,DB.Def),
   ("RES_EXISTS_EQUIV_DEF",RES_EXISTS_EQUIV_DEF,DB.Def),
   ("FUN_REL_EQUALS",FUN_REL_EQUALS,DB.Thm),
   ("EQUIV_IMP_PARTIAL_EQUIV",EQUIV_IMP_PARTIAL_EQUIV,DB.Thm),
   ("QUOTIENT_ABS_REP",QUOTIENT_ABS_REP,DB.Thm),
   ("QUOTIENT_REP_REFL",QUOTIENT_REP_REFL,DB.Thm),
   ("QUOTIENT_REL",QUOTIENT_REL,DB.Thm),
   ("QUOTIENT_REL_ABS",QUOTIENT_REL_ABS,DB.Thm),
   ("QUOTIENT_REL_ABS_EQ",QUOTIENT_REL_ABS_EQ,DB.Thm),
   ("QUOTIENT_REL_REP",QUOTIENT_REL_REP,DB.Thm),
   ("QUOTIENT_REP_ABS",QUOTIENT_REP_ABS,DB.Thm),
   ("IDENTITY_EQUIV",IDENTITY_EQUIV,DB.Thm),
   ("IDENTITY_QUOTIENT",IDENTITY_QUOTIENT,DB.Thm),
   ("EQUIV_REFL_SYM_TRANS",EQUIV_REFL_SYM_TRANS,DB.Thm),
   ("QUOTIENT_SYM",QUOTIENT_SYM,DB.Thm),
   ("QUOTIENT_TRANS",QUOTIENT_TRANS,DB.Thm),
   ("FUN_MAP_THM",FUN_MAP_THM,DB.Thm), ("FUN_MAP_I",FUN_MAP_I,DB.Thm),
   ("IN_FUN",IN_FUN,DB.Thm), ("FUN_REL_EQ",FUN_REL_EQ,DB.Thm),
   ("FUN_QUOTIENT",FUN_QUOTIENT,DB.Thm), ("RESPECTS",RESPECTS,DB.Thm),
   ("IN_RESPECTS",IN_RESPECTS,DB.Thm),
   ("RESPECTS_THM",RESPECTS_THM,DB.Thm),
   ("RESPECTS_MP",RESPECTS_MP,DB.Thm),
   ("RESPECTS_REP_ABS",RESPECTS_REP_ABS,DB.Thm),
   ("RESPECTS_o",RESPECTS_o,DB.Thm),
   ("RES_EXISTS_EQUIV",RES_EXISTS_EQUIV,DB.Thm),
   ("FUN_REL_EQ_REL",FUN_REL_EQ_REL,DB.Thm),
   ("FUN_REL_MP",FUN_REL_MP,DB.Thm), ("FUN_REL_IMP",FUN_REL_IMP,DB.Thm),
   ("EQUALS_PRS",EQUALS_PRS,DB.Thm), ("EQUALS_RSP",EQUALS_RSP,DB.Thm),
   ("LAMBDA_PRS",LAMBDA_PRS,DB.Thm), ("LAMBDA_PRS1",LAMBDA_PRS1,DB.Thm),
   ("LAMBDA_RSP",LAMBDA_RSP,DB.Thm), ("ABSTRACT_PRS",ABSTRACT_PRS,DB.Thm),
   ("RES_ABSTRACT_RSP",RES_ABSTRACT_RSP,DB.Thm),
   ("LET_RES_ABSTRACT",LET_RES_ABSTRACT,DB.Thm),
   ("LAMBDA_REP_ABS_RSP",LAMBDA_REP_ABS_RSP,DB.Thm),
   ("REP_ABS_RSP",REP_ABS_RSP,DB.Thm), ("FORALL_PRS",FORALL_PRS,DB.Thm),
   ("RES_FORALL_RSP",RES_FORALL_RSP,DB.Thm),
   ("RES_FORALL_PRS",RES_FORALL_PRS,DB.Thm),
   ("EXISTS_PRS",EXISTS_PRS,DB.Thm),
   ("RES_EXISTS_RSP",RES_EXISTS_RSP,DB.Thm),
   ("RES_EXISTS_PRS",RES_EXISTS_PRS,DB.Thm),
   ("EXISTS_UNIQUE_PRS",EXISTS_UNIQUE_PRS,DB.Thm),
   ("RES_EXISTS_EQUIV_RSP",RES_EXISTS_EQUIV_RSP,DB.Thm),
   ("COND_PRS",COND_PRS,DB.Thm), ("COND_RSP",COND_RSP,DB.Thm),
   ("LET_PRS",LET_PRS,DB.Thm), ("LET_RSP",LET_RSP,DB.Thm),
   ("literal_case_PRS",literal_case_PRS,DB.Thm),
   ("literal_case_RSP",literal_case_RSP,DB.Thm),
   ("APPLY_PRS",APPLY_PRS,DB.Thm), ("APPLY_RSP",APPLY_RSP,DB.Thm),
   ("I_PRS",I_PRS,DB.Thm), ("I_RSP",I_RSP,DB.Thm), ("K_PRS",K_PRS,DB.Thm),
   ("K_RSP",K_RSP,DB.Thm), ("o_PRS",o_PRS,DB.Thm), ("o_RSP",o_RSP,DB.Thm),
   ("C_PRS",C_PRS,DB.Thm), ("C_RSP",C_RSP,DB.Thm), ("W_PRS",W_PRS,DB.Thm),
   ("W_RSP",W_RSP,DB.Thm), ("EQ_IMPLIES",EQ_IMPLIES,DB.Thm),
   ("EQUALS_IMPLIES",EQUALS_IMPLIES,DB.Thm),
   ("CONJ_IMPLIES",CONJ_IMPLIES,DB.Thm),
   ("DISJ_IMPLIES",DISJ_IMPLIES,DB.Thm),
   ("IMP_IMPLIES",IMP_IMPLIES,DB.Thm), ("NOT_IMPLIES",NOT_IMPLIES,DB.Thm),
   ("EQUALS_EQUIV_IMPLIES",EQUALS_EQUIV_IMPLIES,DB.Thm),
   ("ABSTRACT_RES_ABSTRACT",ABSTRACT_RES_ABSTRACT,DB.Thm),
   ("RES_ABSTRACT_ABSTRACT",RES_ABSTRACT_ABSTRACT,DB.Thm),
   ("EQUIV_RES_ABSTRACT_LEFT",EQUIV_RES_ABSTRACT_LEFT,DB.Thm),
   ("EQUIV_RES_ABSTRACT_RIGHT",EQUIV_RES_ABSTRACT_RIGHT,DB.Thm),
   ("EQUIV_RES_FORALL",EQUIV_RES_FORALL,DB.Thm),
   ("EQUIV_RES_EXISTS",EQUIV_RES_EXISTS,DB.Thm),
   ("EQUIV_RES_EXISTS_UNIQUE",EQUIV_RES_EXISTS_UNIQUE,DB.Thm),
   ("FORALL_REGULAR",FORALL_REGULAR,DB.Thm),
   ("EXISTS_REGULAR",EXISTS_REGULAR,DB.Thm),
   ("RES_FORALL_REGULAR",RES_FORALL_REGULAR,DB.Thm),
   ("RES_EXISTS_REGULAR",RES_EXISTS_REGULAR,DB.Thm),
   ("LEFT_RES_FORALL_REGULAR",LEFT_RES_FORALL_REGULAR,DB.Thm),
   ("RIGHT_RES_FORALL_REGULAR",RIGHT_RES_FORALL_REGULAR,DB.Thm),
   ("LEFT_RES_EXISTS_REGULAR",LEFT_RES_EXISTS_REGULAR,DB.Thm),
   ("RIGHT_RES_EXISTS_REGULAR",RIGHT_RES_EXISTS_REGULAR,DB.Thm),
   ("EXISTS_UNIQUE_REGULAR",EXISTS_UNIQUE_REGULAR,DB.Thm),
   ("RES_EXISTS_UNIQUE_RESPECTS_REGULAR",
    RES_EXISTS_UNIQUE_RESPECTS_REGULAR,
    DB.Thm),
   ("RES_EXISTS_UNIQUE_REGULAR",RES_EXISTS_UNIQUE_REGULAR,DB.Thm),
   ("RES_EXISTS_UNIQUE_REGULAR_SAME",
    RES_EXISTS_UNIQUE_REGULAR_SAME,
    DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars),
                         ("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars),
                         ("res_quanTheory.res_quan_grammars",
                          res_quanTheory.res_quan_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQUIV", (Term.prim_mk_const { Name = "EQUIV", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EQUIV", (Term.prim_mk_const { Name = "EQUIV", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PARTIAL_EQUIV", (Term.prim_mk_const { Name = "PARTIAL_EQUIV", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PARTIAL_EQUIV", (Term.prim_mk_const { Name = "PARTIAL_EQUIV", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("QUOTIENT", (Term.prim_mk_const { Name = "QUOTIENT", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("QUOTIENT", (Term.prim_mk_const { Name = "QUOTIENT", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "-->"))
       (Infix(HOLgrammars.RIGHT, 750))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-->", (Term.prim_mk_const { Name = "-->", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-->", (Term.prim_mk_const { Name = "-->", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("===>", (Term.prim_mk_const { Name = "===>", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("===>", (Term.prim_mk_const { Name = "===>", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "===>"))
       (Infix(HOLgrammars.RIGHT, 490))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("respects", (Term.prim_mk_const { Name = "respects", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("respects", (Term.prim_mk_const { Name = "respects", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("?!!", (Term.prim_mk_const { Name = "?!!", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("?!!", (Term.prim_mk_const { Name = "?!!", Thy = "quotient"}))
  val _ = update_grms (UTOFF (temp_set_fixity "?!!")) (Binder)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS_EQUIV", (Term.prim_mk_const { Name = "RES_EXISTS_EQUIV", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS_EQUIV", (Term.prim_mk_const { Name = "RES_EXISTS_EQUIV", Thy = "quotient"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RES_EXISTS_EQUIV", (Term.prim_mk_const { Name = "RES_EXISTS_EQUIV", Thy = "quotient"}))
  val _ = update_grms
       temp_associate_restriction
       ("?!!", "RES_EXISTS_EQUIV")
  val quotient_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "quotient",
    thydataty = "compute",
    data =
        "quotient.EQUIV_def quotient.PARTIAL_EQUIV_def quotient.respects_def quotient.QUOTIENT_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "quotient",
    thydataty = "TexTokenMap",
    data = "4.===>17.\\\\HOLTokenLongimp2."
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quotient"
end
