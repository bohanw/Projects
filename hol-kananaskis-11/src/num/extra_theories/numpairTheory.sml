structure numpairTheory :> numpairTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading numpairTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open basicSizeTheory whileTheory
  in end;
  val _ = Theory.link_parents
          ("numpair",
          Arbnum.fromString "1488586197",
          Arbnum.fromString "668292")
          [("basicSize",
           Arbnum.fromString "1488586093",
           Arbnum.fromString "153614"),
           ("while",
           Arbnum.fromString "1488586097",
           Arbnum.fromString "778651")];
  val _ = Theory.incorporate_types "numpair" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("pair", "prod"),
   ID("min", "bool"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("arithmetic", "DIV"),
   ID("pair", "FST"), ID("combin", "I"), ID("arithmetic", "NUMERAL"),
   ID("pair", "SND"), ID("num", "SUC"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("numpair", "invtri"), ID("numpair", "invtri0"),
   ID("numpair", "invtri0_tupled"), ID("numpair", "napp"),
   ID("numpair", "ncons"), ID("numpair", "nfoldl"), ID("numpair", "nfst"),
   ID("numpair", "nlen"), ID("numpair", "nlistrec"),
   ID("numpair", "nlistrec_tupled"), ID("numpair", "nmap"),
   ID("numpair", "npair"), ID("numpair", "nsnd"), ID("pair", "pair_CASE"),
   ID("numpair", "tri"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYOP [0, 1, 1], TYV "'a",
   TYOP [0, 4, 4], TYOP [0, 0, 5], TYOP [0, 0, 6], TYOP [2, 7, 0],
   TYOP [2, 4, 8], TYOP [0, 9, 4], TYOP [0, 0, 4], TYOP [0, 7, 11],
   TYOP [0, 4, 12], TYOP [0, 4, 11], TYOP [0, 6, 14], TYOP [2, 0, 0],
   TYOP [0, 16, 16], TYOP [0, 0, 16], TYOP [0, 0, 18], TYOP [3],
   TYOP [0, 0, 20], TYOP [0, 0, 21], TYOP [0, 9, 20], TYOP [0, 9, 23],
   TYOP [0, 16, 20], TYOP [0, 16, 25], TYOP [0, 4, 20], TYOP [0, 27, 20],
   TYOP [0, 21, 20], TYOP [0, 29, 20], TYOP [0, 6, 20], TYOP [0, 31, 20],
   TYOP [0, 22, 20], TYOP [0, 33, 20], TYOP [0, 7, 20], TYOP [0, 35, 20],
   TYOP [0, 1, 20], TYOP [0, 37, 20], TYOP [0, 8, 9], TYOP [0, 4, 39],
   TYOP [0, 0, 8], TYOP [0, 7, 41], TYOP [0, 20, 20], TYOP [0, 20, 43],
   TYOP [0, 4, 27], TYOP [0, 1, 37], TYOP [0, 10, 20], TYOP [0, 10, 47],
   TYOP [0, 17, 20], TYOP [0, 17, 49], TYOP [0, 24, 20], TYOP [0, 51, 24],
   TYOP [0, 26, 20], TYOP [0, 53, 26], TYOP [0, 4, 5], TYOP [0, 20, 55],
   TYOP [0, 16, 17], TYOP [0, 20, 57], TYOP [0, 16, 0], TYOP [0, 10, 10],
   TYOP [0, 60, 10], TYOP [0, 24, 61], TYOP [0, 17, 17], TYOP [0, 63, 17],
   TYOP [0, 26, 64], TYOP [0, 5, 5], TYOP [0, 0, 66], TYOP [0, 0, 67],
   TYOP [0, 68, 6], TYOP [0, 5, 69], TYOP [0, 0, 2], TYOP [0, 71, 1],
   TYOP [0, 0, 72], TYOP [0, 8, 4], TYOP [0, 4, 74], TYOP [0, 75, 4],
   TYOP [0, 9, 76], TYOP [0, 12, 4], TYOP [0, 8, 78], TYOP [0, 19, 16],
   TYOP [0, 16, 80]]
  end
  val _ = Theory.incorporate_consts "numpair" tyvector
     [("tri", 1), ("nsnd", 1), ("npair", 2), ("nmap", 3),
      ("nlistrec_tupled", 10), ("nlistrec", 13), ("nlen", 1), ("nfst", 1),
      ("nfoldl", 15), ("ncons", 2), ("napp", 2), ("invtri0_tupled", 17),
      ("invtri0", 19), ("invtri", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 21), TMV("P", 22), TMV("R", 24), TMV("R", 26), TMV("a", 4),
   TMV("a", 0), TMV("a", 9), TMV("a'", 16), TMV("f", 6), TMV("f", 7),
   TMV("f", 1), TMV("h", 0), TMV("invtri0_tupled", 17), TMV("l", 0),
   TMV("l1", 0), TMV("l2", 0), TMV("m", 0), TMV("n", 4), TMV("n", 0),
   TMV("nlist", 0), TMV("nlistrec_tupled", 10), TMV("r", 5), TMV("r", 0),
   TMV("t", 0), TMV("v", 0), TMV("v1", 0), TMV("v1", 8), TMV("x", 4),
   TMV("x", 0), TMV("x1", 7), TMV("x1", 0), TMV("x2", 0), TMV("y", 0),
   TMV("y1", 0), TMV("y2", 0), TMC(4, 28), TMC(4, 30), TMC(4, 32),
   TMC(4, 34), TMC(4, 36), TMC(4, 38), TMC(4, 29), TMC(5, 2), TMC(6, 2),
   TMC(7, 40), TMC(7, 42), TMC(7, 19), TMC(8, 2), TMC(9, 44), TMC(10, 0),
   TMC(11, 22), TMC(12, 22), TMC(13, 45), TMC(13, 44), TMC(13, 46),
   TMC(13, 48), TMC(13, 50), TMC(13, 22), TMC(13, 26), TMC(14, 44),
   TMC(15, 29), TMC(16, 52), TMC(16, 54), TMC(17, 1), TMC(18, 1),
   TMC(19, 56), TMC(19, 58), TMC(20, 2), TMC(21, 59), TMC(22, 5),
   TMC(22, 17), TMC(23, 1), TMC(24, 59), TMC(25, 1), TMC(26, 51),
   TMC(26, 53), TMC(27, 62), TMC(27, 65), TMC(28, 0), TMC(29, 44),
   TMC(30, 1), TMC(31, 19), TMC(32, 17), TMC(33, 2), TMC(34, 2),
   TMC(35, 15), TMC(36, 1), TMC(37, 1), TMC(38, 13), TMC(38, 70),
   TMC(38, 73), TMC(39, 10), TMC(40, 3), TMC(41, 2), TMC(42, 1),
   TMC(43, 77), TMC(43, 79), TMC(43, 81), TMC(44, 1), TMC(45, 43)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op tri_def x = x
    val op tri_def =
    DT(((("numpair",0),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%48%57%98%49@@%49@@%41%18%57%98%73$0@@@%43%73$0@@%98$0@@@|@@"])
  fun op invtri0_tupled_primitive_def x = x
    val op invtri0_tupled_primitive_def =
    DT(((("numpair",9),[]),[]),
       [read"%56%82@%77%62%3%48%75$0@@%41%5%41%18%59%99%50$0@%43$1@%71%63%78@@@@@@$2%46%47$0@%43$1@%71%63%78@@@@@%43$1@%71%63%78@@@@@%46$0@$1@@@|@|@@|@@%12%7%97$0@%18%5%70%66%50$1@%43$0@%71%63%78@@@@@%46$1@$0@@$3%46%47$1@%43$0@%71%63%78@@@@@%43$0@%71%63%78@@@@@@@||@||@@"])
  fun op invtri0_curried_def x = x
    val op invtri0_curried_def =
    DT(((("numpair",10),[]),[]),
       [read"%41%28%41%30%58%81$1@$0@@%82%46$1@$0@@@|@|@"])
  fun op invtri_def x = x
    val op invtri_def =
    DT(((("numpair",13),[]),[]), [read"%41%18%57%80$0@@%72%81$0@%49@@@|@"])
  fun op npair_def x = x
    val op npair_def =
    DT(((("numpair",23),[]),[]),
       [read"%41%16%41%18%57%93$1@$0@@%43%98%43$1@$0@@@$0@@|@|@"])
  fun op nfst_def x = x
    val op nfst_def =
    DT(((("numpair",24),[]),[]),
       [read"%41%18%57%86$0@@%47%43%98%80$0@@@%80$0@@@$0@@|@"])
  fun op nsnd_def x = x
    val op nsnd_def =
    DT(((("numpair",25),[]),[]),
       [read"%41%18%57%94$0@@%47$0@%98%80$0@@@@|@"])
  fun op ncons_def x = x
    val op ncons_def =
    DT(((("numpair",33),[]),[]),
       [read"%41%11%41%23%57%84$1@$0@@%43%93$1@$0@@%71%63%78@@@@|@|@"])
  fun op nlistrec_tupled_primitive_def x = x
    val op nlistrec_tupled_primitive_def =
    DT(((("numpair",36),[]),[]),
       [read"%55%91@%76%61%2%48%74$0@@%39%9%35%17%41%13%59%99%57$0@%49@@@$3%44$1@%45$2@%94%47$0@%71%63%78@@@@@@@%44$1@%45$2@$0@@@@|@|@|@@|@@%20%6%95$0@%17%26%96$0@%9%13%69%65%57$0@%49@@$3@$1%86%47$0@%71%63%78@@@@@%94%47$0@%71%63%78@@@@@$5%44$3@%45$1@%94%47$0@%71%63%78@@@@@@@@@@||@||@||@@"])
  fun op nlistrec_curried_def x = x
    val op nlistrec_curried_def =
    DT(((("numpair",37),[]),[]),
       [read"%35%27%39%29%41%31%52%88$2@$1@$0@@%91%44$2@%45$1@$0@@@@|@|@|@"])
  fun op nlen_def x = x
    val op nlen_def =
    DT(((("numpair",40),[]),[]),
       [read"%54%87@%90%49@%18%23%22%43$0@%71%63%78@@@|||@@"])
  fun op nmap_def x = x
    val op nmap_def =
    DT(((("numpair",42),[]),[]),
       [read"%40%10%54%92$0@@%90%49@%18%23%22%84$3$2@@$0@|||@@|@"])
  fun op nfoldl_def x = x
    val op nfoldl_def =
    DT(((("numpair",44),[]),[]),
       [read"%37%8%35%4%41%13%52%85$2@$1@$0@@%89%4$0|@%18%23%21%4$1$6$3@$0@@||||@$0@$1@@|@|@|@"])
  fun op napp_def x = x
    val op napp_def =
    DT(((("numpair",46),[]),[]),
       [read"%41%14%41%15%57%83$1@$0@@%90$0@%18%23%22%84$2@$0@|||@$1@@|@|@"])
  fun op tri_def_compute x = x
    val op tri_def_compute =
    DT(((("numpair",1),
        [("arithmetic",[268]),("numpair",[0])]),["DISK_THM"]),
       [read"%48%57%98%49@@%49@@%48%41%18%57%98%71%63$0@@@@%43%71%63$0@@@%98%47%71%63$0@@@%71%63%78@@@@@@|@@%41%18%57%98%71%64$0@@@@%43%71%64$0@@@%98%71%63$0@@@@@|@@@"])
  fun op twotri_formula x = x
    val op twotri_formula =
    DT(((("numpair",2),
        [("arithmetic",[25,26,27,69,71,74,75,102,173,177,180,275]),
         ("bool",[14,25,36,52,54,56,58,63,104]),("num",[9]),
         ("numeral",[0,3,5,8]),("numpair",[0])]),["DISK_THM"]),
       [read"%57%42%71%64%78@@@%98%18@@@%42%18@%43%18@%71%63%78@@@@@"])
  fun op tri_formula x = x
    val op tri_formula =
    DT(((("numpair",3),
        [("arithmetic",[22,73,214]),("bool",[25,56,58]),("numeral",[3,7]),
         ("numpair",[2])]),["DISK_THM"]),
       [read"%57%98%18@@%67%42%18@%43%18@%71%63%78@@@@@%71%64%78@@@@"])
  fun op tri_eq_0 x = x
    val op tri_eq_0 =
    DT(((("numpair",4),
        [("arithmetic",[28,79]),("bool",[25,26,27,51,54,56,58,63]),
         ("num",[7]),("numpair",[0])]),["DISK_THM"]),
       [read"%48%53%57%98%18@@%49@@%57%18@%49@@@%53%57%49@%98%18@@@%57%18@%49@@@"])
  fun op tri_LT_I x = x
    val op tri_LT_I =
    DT(((("numpair",5),
        [("arithmetic",[24,25,27,28,37,41,46,59,71,93,173,180]),
         ("bool",[14,25,26,27,36,53,54,58,63,96,101,104,105,124]),
         ("num",[9]),("numeral",[3,5,8]),("numpair",[0]),
         ("prim_rec",[4,6,7])]),["DISK_THM"]),
       [read"%41%18%41%16%59%50$1@$0@@%50%98$1@@%98$0@@@|@|@"])
  fun op tri_LT x = x
    val op tri_LT =
    DT(((("numpair",6),
        [("arithmetic",[24,25,34,46,59,71,93,173,177,180]),
         ("bool",[25,26,27,36,51,52,53,54,58,63,96,101,104,105,106,124]),
         ("numeral",[3,8]),("numpair",[5]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%41%18%41%16%53%50%98$1@@%98$0@@@%50$1@$0@@|@|@"])
  fun op tri_11 x = x
    val op tri_11 =
    DT(((("numpair",7),
        [("arithmetic",[24,25,46,59,71,93,173,177,180]),
         ("bool",[25,36,51,52,53,54,56,58,63,96,104,105,106,124]),
         ("numeral",[3,8]),("numpair",[5]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%41%16%41%18%53%57%98$1@@%98$0@@@%57$1@$0@@|@|@"])
  fun op tri_LE x = x
    val op tri_LE =
    DT(((("numpair",8),
        [("arithmetic",[10]),("bool",[25,56]),
         ("numpair",[6,7])]),["DISK_THM"]),
       [read"%41%16%41%18%53%51%98$1@@%98$0@@@%51$1@$0@@|@|@"])
  fun op invtri0_ind x = x
    val op invtri0_ind =
    DT(((("numpair",11),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200]),
         ("bool",[25,27,36,51,52,53,54,58,63,93,96,101,104,105,107,124]),
         ("numeral",[3,8]),("pair",[5,7,8,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%38%1%59%41%18%41%5%59%59%99%50$1@%43$0@%71%63%78@@@@@@$2%47$1@%43$0@%71%63%78@@@@@%43$0@%71%63%78@@@@@@$2$1@$0@@|@|@@%41%24%41%25$2$1@$0@|@|@@|@"])
  fun op invtri0_def x = x
    val op invtri0_def =
    DT(((("numpair",12),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200]),
         ("bool",
         [15,25,36,51,52,53,54,58,63,93,96,101,104,105,107,124,129]),
         ("combin",[19]),("numeral",[3,8]),("numpair",[9,10]),
         ("pair",[7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%41%18%41%5%58%81$1@$0@@%66%50$1@%43$0@%71%63%78@@@@@%46$1@$0@@%81%47$1@%43$0@%71%63%78@@@@@%43$0@%71%63%78@@@@@@|@|@"])
  fun op invtri0_thm x = x
    val op invtri0_thm =
    DT(((("numpair",14),
        [("arithmetic",
         [24,25,26,27,41,46,59,64,71,91,93,172,173,177,180,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124,129,147]),("combin",[19]),("numeral",[3,5,8]),
         ("numpair",[0,9,10,11]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%41%18%41%5%57%43%98%72%81$1@$0@@@@%68%81$1@$0@@@@%43$1@%98$0@@@|@|@"])
  fun op SND_invtri0 x = x
    val op SND_invtri0 =
    DT(((("numpair",15),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,180,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,58,63,93,96,101,104,105,107,124,
          129,147]),("combin",[19]),("numeral",[3,8]),
         ("numpair",[9,10,11]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%41%18%41%5%50%68%81$1@$0@@@%73%72%81$1@$0@@@@|@|@"])
  fun op invtri_lower x = x
    val op invtri_lower =
    DT(((("numpair",16),
        [("arithmetic",[22,24,25,26,46,71,93,172,173,176,180]),
         ("bool",[25,36,43,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("numpair",[0,13,14])]),["DISK_THM"]),
       [read"%51%98%80%18@@@%18@"])
  fun op invtri_upper x = x
    val op invtri_upper =
    DT(((("numpair",17),
        [("arithmetic",[22,24,25,26,27,41,46,59,64,71,93,172,173,180]),
         ("bool",[25,36,43,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("numpair",[0,13,14,15])]),["DISK_THM"]),
       [read"%50%18@%98%43%80%18@@%71%63%78@@@@@"])
  fun op invtri_linverse x = x
    val op invtri_linverse =
    DT(((("numpair",18),
        [("arithmetic",[24,25,41,46,71,93,173,177,180]),
         ("bool",[25,36,52,53,54,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("numpair",[6,8,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%57%80%98%18@@@%18@"])
  fun op invtri_unique x = x
    val op invtri_unique =
    DT(((("numpair",19),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,176,177,180]),
         ("bool",[25,26,27,36,52,53,54,63,96,101,104,105]),
         ("numeral",[3,8]),("numpair",[8,16,17]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%59%48%51%98%32@@%18@@%50%18@%98%43%32@%71%63%78@@@@@@@%57%80%18@@%32@@"])
  fun op invtri_linverse_r x = x
    val op invtri_linverse_r =
    DT(((("numpair",20),
        [("arithmetic",[24,25,26,46,53,59,64,71,88,93,173,180]),
         ("bool",[25,36,54,58,63,96,101,104,105]),("numeral",[3,8]),
         ("numpair",[0,19])]),["DISK_THM"]),
       [read"%59%51%32@%28@@%57%80%43%98%28@@%32@@@%28@@"])
  fun op tri_le x = x
    val op tri_le =
    DT(((("numpair",21),
        [("arithmetic",[46,53,71,93,173,176,180]),
         ("bool",[14,25,36,54,63,104]),("num",[9]),("numeral",[3,8]),
         ("numpair",[0])]),["DISK_THM"]), [read"%51%18@%98%18@@"])
  fun op invtri_le x = x
    val op invtri_le =
    DT(((("numpair",22),
        [("arithmetic",[93]),("bool",[25,53,54,58,63,105,124]),
         ("numpair",[8,16,21]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%51%80%18@@%18@"])
  fun op nfst_npair x = x
    val op nfst_npair =
    DT(((("numpair",26),
        [("arithmetic",[24,25,26,27,46,71,93,128,173,176,180]),
         ("bool",[25,36,52,54,56,58,63,93,96,104,105,107]),
         ("numeral",[3,8]),("numpair",[20,23,24]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%57%86%93%28@%32@@@%28@"])
  fun op nsnd_npair x = x
    val op nsnd_npair =
    DT(((("numpair",27),
        [("arithmetic",[24,25,26,27,46,71,93,128,173,176,180]),
         ("bool",[25,36,52,54,56,58,63,93,96,104,105,107]),
         ("numeral",[3,8]),("numpair",[20,23,25]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%57%94%93%28@%32@@@%32@"])
  fun op npair_cases x = x
    val op npair_cases =
    DT(((("numpair",28),
        [("arithmetic",
         [24,25,26,27,41,46,64,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,52,54,56,58,63,93,96,101,104,105]),
         ("numeral",[3,8]),("numpair",[0,16,17,23,24,25]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%41%18%60%28%60%32%57$2@%93$1@$0@@|@|@|@"])
  fun op npair x = x
    val op npair =
    DT(((("numpair",29),
        [("bool",[25,56]),("numpair",[26,27,28])]),["DISK_THM"]),
       [read"%41%18%57%93%86$0@@%94$0@@@$0@|@"])
  fun op npair_11 x = x
    val op npair_11 =
    DT(((("numpair",30),
        [("bool",[25,51,53,56,58,105,106,124]),
         ("numpair",[26,27])]),["DISK_THM"]),
       [read"%53%57%93%30@%33@@%93%31@%34@@@%48%57%30@%31@@%57%33@%34@@@"])
  fun op nfst_le x = x
    val op nfst_le =
    DT(((("numpair",31),
        [("arithmetic",[24,25,26,27,46,69,71,74,93,173,176,180,198]),
         ("bool",[25,36,54,58,63,96,101,104,105]),("numeral",[3,5,8]),
         ("numpair",[16,22,24])]),["DISK_THM"]), [read"%51%86%18@@%18@"])
  fun op nsnd_le x = x
    val op nsnd_le =
    DT(((("numpair",32),
        [("arithmetic",[117]),("bool",[25,63]),
         ("numpair",[25])]),["DISK_THM"]), [read"%51%94%18@@%18@"])
  fun op ncons_11 x = x
    val op ncons_11 =
    DT(((("numpair",34),
        [("arithmetic",[91]),("bool",[25,56]),
         ("numpair",[30,33])]),["DISK_THM"]),
       [read"%53%57%84%28@%32@@%84%11@%23@@@%48%57%28@%11@@%57%32@%23@@@"])
  fun op ncons_not_nnil x = x
    val op ncons_not_nnil =
    DT(((("numpair",35),
        [("arithmetic",[79]),("bool",[25,51,54]),("numeral",[3,6]),
         ("numpair",[33])]),["DISK_THM"]), [read"%99%57%84%28@%32@@%49@@"])
  fun op nlistrec_thm x = x
    val op nlistrec_thm =
    DT(((("numpair",38),
        [("arithmetic",[24,25,46,59,62,71,93,128,172,173,177,180,269]),
         ("bool",
         [15,25,26,27,36,43,52,53,54,56,58,63,93,96,101,104,105,124,129,
          147,169]),("combin",[5,19]),("numeral",[3,8]),
         ("numpair",[26,27,32,33,35,36,37]),("pair",[5,9,16,49]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%48%52%88%17@%9@%49@@%17@@%52%88%17@%9@%84%11@%23@@@%9%11@%23@%88%17@%9@%23@@@@"])
  fun op nlist_ind x = x
    val op nlist_ind =
    DT(((("numpair",39),
        [("arithmetic",
         [24,25,28,46,59,64,65,71,91,93,172,173,177,180,269]),
         ("bool",
         [15,25,26,27,36,43,52,53,54,56,58,63,93,96,101,104,105,124,129]),
         ("combin",[5,19]),("num",[7]),("numeral",[3,8]),
         ("numpair",[29,32,33,36,37]),("pair",[5,9,16,49]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%36%0%59%48$0%49@@%41%11%41%23%59$2$0@@$2%84$1@$0@@@|@|@@@%41%18$1$0@|@@|@"])
  fun op nlen_thm x = x
    val op nlen_thm =
    DT(((("numpair",41),
        [("arithmetic",[91]),("bool",[25,56]),
         ("numpair",[38,40])]),["DISK_THM"]),
       [read"%48%57%87%49@@%49@@%57%87%84%11@%23@@@%43%87%23@@%71%63%78@@@@@"])
  fun op nmap_thm x = x
    val op nmap_thm =
    DT(((("numpair",43),
        [("bool",[25,51,56]),("numpair",[34,38,42])]),["DISK_THM"]),
       [read"%48%57%92%10@%49@@%49@@%57%92%10@%84%11@%23@@@%84%10%11@@%92%10@%23@@@@"])
  fun op nfoldl_thm x = x
    val op nfoldl_thm =
    DT(((("numpair",45),
        [("bool",[25,56]),("numpair",[38,44])]),["DISK_THM"]),
       [read"%48%52%85%8@%4@%49@@%4@@%52%85%8@%4@%84%11@%23@@@%85%8@%8%11@%4@@%23@@@"])
  fun op napp_thm x = x
    val op napp_thm =
    DT(((("numpair",47),
        [("bool",[25,51,56]),("numpair",[34,38,46])]),["DISK_THM"]),
       [read"%48%57%83%49@%19@@%19@@%57%83%84%11@%23@@%19@@%84%11@%83%23@%19@@@@"])
  fun op nlist_cases x = x
    val op nlist_cases =
    DT(((("numpair",48),
        [("arithmetic",[28,64]),("bool",[25,26,27,37,52,56,58]),
         ("marker",[6]),("num",[7]),("numpair",[29,33,35]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%41%18%79%57$0@%49@@%60%11%60%23%57$2@%84$1@$0@@|@|@@|@"])
  end
  val _ = DB.bindl "numpair"
  [("tri_def",tri_def,DB.Def),
   ("invtri0_tupled_primitive_def",invtri0_tupled_primitive_def,DB.Def),
   ("invtri0_curried_def",invtri0_curried_def,DB.Def),
   ("invtri_def",invtri_def,DB.Def), ("npair_def",npair_def,DB.Def),
   ("nfst_def",nfst_def,DB.Def), ("nsnd_def",nsnd_def,DB.Def),
   ("ncons_def",ncons_def,DB.Def),
   ("nlistrec_tupled_primitive_def",nlistrec_tupled_primitive_def,DB.Def),
   ("nlistrec_curried_def",nlistrec_curried_def,DB.Def),
   ("nlen_def",nlen_def,DB.Def), ("nmap_def",nmap_def,DB.Def),
   ("nfoldl_def",nfoldl_def,DB.Def), ("napp_def",napp_def,DB.Def),
   ("tri_def_compute",tri_def_compute,DB.Thm),
   ("twotri_formula",twotri_formula,DB.Thm),
   ("tri_formula",tri_formula,DB.Thm), ("tri_eq_0",tri_eq_0,DB.Thm),
   ("tri_LT_I",tri_LT_I,DB.Thm), ("tri_LT",tri_LT,DB.Thm),
   ("tri_11",tri_11,DB.Thm), ("tri_LE",tri_LE,DB.Thm),
   ("invtri0_ind",invtri0_ind,DB.Thm), ("invtri0_def",invtri0_def,DB.Thm),
   ("invtri0_thm",invtri0_thm,DB.Thm), ("SND_invtri0",SND_invtri0,DB.Thm),
   ("invtri_lower",invtri_lower,DB.Thm),
   ("invtri_upper",invtri_upper,DB.Thm),
   ("invtri_linverse",invtri_linverse,DB.Thm),
   ("invtri_unique",invtri_unique,DB.Thm),
   ("invtri_linverse_r",invtri_linverse_r,DB.Thm),
   ("tri_le",tri_le,DB.Thm), ("invtri_le",invtri_le,DB.Thm),
   ("nfst_npair",nfst_npair,DB.Thm), ("nsnd_npair",nsnd_npair,DB.Thm),
   ("npair_cases",npair_cases,DB.Thm), ("npair",npair,DB.Thm),
   ("npair_11",npair_11,DB.Thm), ("nfst_le",nfst_le,DB.Thm),
   ("nsnd_le",nsnd_le,DB.Thm), ("ncons_11",ncons_11,DB.Thm),
   ("ncons_not_nnil",ncons_not_nnil,DB.Thm),
   ("nlistrec_thm",nlistrec_thm,DB.Thm), ("nlist_ind",nlist_ind,DB.Thm),
   ("nlen_thm",nlen_thm,DB.Thm), ("nmap_thm",nmap_thm,DB.Thm),
   ("nfoldl_thm",nfoldl_thm,DB.Thm), ("napp_thm",napp_thm,DB.Thm),
   ("nlist_cases",nlist_cases,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("basicSizeTheory.basicSize_grammars",
                          basicSizeTheory.basicSize_grammars),
                         ("whileTheory.while_grammars",
                          whileTheory.while_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tri", (Term.prim_mk_const { Name = "tri", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invtri0_tupled", (Term.prim_mk_const { Name = "invtri0_tupled", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invtri0_tupled", (Term.prim_mk_const { Name = "invtri0_tupled", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invtri0", (Term.prim_mk_const { Name = "invtri0", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invtri0", (Term.prim_mk_const { Name = "invtri0", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invtri", (Term.prim_mk_const { Name = "invtri", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("invtri", (Term.prim_mk_const { Name = "invtri", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("npair", (Term.prim_mk_const { Name = "npair", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("npair", (Term.prim_mk_const { Name = "npair", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "*,"))
       (Infix(HOLgrammars.RIGHT, 601))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*,", (Term.prim_mk_const { Name = "npair", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nfst", (Term.prim_mk_const { Name = "nfst", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nfst", (Term.prim_mk_const { Name = "nfst", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nsnd", (Term.prim_mk_const { Name = "nsnd", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nsnd", (Term.prim_mk_const { Name = "nsnd", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nnil", (Term.prim_mk_const { Name = "0", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("0", (Term.prim_mk_const { Name = "0", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ncons", (Term.prim_mk_const { Name = "ncons", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ncons", (Term.prim_mk_const { Name = "ncons", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nlistrec_tupled", (Term.prim_mk_const { Name = "nlistrec_tupled", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nlistrec_tupled", (Term.prim_mk_const { Name = "nlistrec_tupled", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nlistrec", (Term.prim_mk_const { Name = "nlistrec", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nlistrec", (Term.prim_mk_const { Name = "nlistrec", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nlen", (Term.prim_mk_const { Name = "nlen", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nlen", (Term.prim_mk_const { Name = "nlen", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nmap", (Term.prim_mk_const { Name = "nmap", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nmap", (Term.prim_mk_const { Name = "nmap", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nfoldl", (Term.prim_mk_const { Name = "nfoldl", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nfoldl", (Term.prim_mk_const { Name = "nfoldl", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("napp", (Term.prim_mk_const { Name = "napp", Thy = "numpair"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("napp", (Term.prim_mk_const { Name = "napp", Thy = "numpair"}))
  val numpair_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "numpair",
    thydataty = "unicodedata",
    data =
        "U23.tri\\226\\129\\187\\194\\1856.invtriU12.\\226\\138\\1512.*,"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "numpair",
    thydataty = "simp",
    data =
        "numpair.tri_eq_0 numpair.napp_thm numpair.ncons_11 numpair.nfoldl_thm numpair.nmap_thm numpair.nlen_thm numpair.nlistrec_thm numpair.ncons_not_nnil numpair.npair_11 numpair.invtri_linverse numpair.npair numpair.nsnd_npair numpair.nfst_npair numpair.tri_11 numpair.tri_LE numpair.tri_LT"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "numpair",
    thydataty = "compute",
    data =
        "numpair.tri_def numpair.tri_def_compute numpair.napp_def numpair.nfoldl_def numpair.nmap_def numpair.nlen_def numpair.ncons_def numpair.nsnd_def numpair.nfst_def numpair.npair_def numpair.invtri_def numpair.invtri0_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "numpair",
    thydataty = "TexTokenMap",
    data =
        "2.*,22.\\\\ensuremath{\\\\otimes}1.12.\\226\\138\\15122.\\\\ensuremath{\\\\otimes}1."
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "numpair"
end
