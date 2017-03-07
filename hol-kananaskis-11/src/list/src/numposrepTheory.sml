structure numposrepTheory :> numposrepTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading numposrepTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open bitTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("numposrep",
          Arbnum.fromString "1488586585",
          Arbnum.fromString "135075")
          [("bit",
           Arbnum.fromString "1488586140",
           Arbnum.fromString "581172"),
           ("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749")];
  val _ = Theory.incorporate_types "numposrep" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("num", "num"),
   ID("pair", "prod"), ID("min", "bool"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("min", "@"), ID("bit", "BIT"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bit", "BITV"),
   ID("numposrep", "BOOLIFY"), ID("combin", "C"), ID("bool", "COND"),
   ID("list", "CONS"), ID("arithmetic", "DIV"), ID("arithmetic", "DIV2"),
   ID("bit", "DIVMOD_2EXP"), ID("list", "EL"), ID("list", "EVERY"),
   ID("list", "EXISTS"), ID("arithmetic", "EXP"), ID("combin", "I"),
   ID("list", "LAST"), ID("list", "LENGTH"), ID("bool", "LET"),
   ID("logroot", "LOG"), ID("arithmetic", "MOD"), ID("bit", "MOD_2EXP"),
   ID("list", "NIL"), ID("arithmetic", "NUMERAL"), ID("arithmetic", "ODD"),
   ID("prim_rec", "PRE"), ID("list", "REVERSE"), ID("list", "SNOC"),
   ID("num", "SUC"), ID("list", "TAKE"), ID("bit", "TIMES_2EXP"),
   ID("pair", "UNCURRY"), ID("relation", "WF"), ID("relation", "WFREC"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("list", "dropWhile"),
   ID("numeral", "iDUB"), ID("numposrep", "l2n"), ID("numposrep", "l2n2"),
   ID("numposrep", "n2l"), ID("numposrep", "n2l_tupled"),
   ID("numposrep", "num_from_bin_list"),
   ID("numposrep", "num_from_dec_list"),
   ID("numposrep", "num_from_hex_list"),
   ID("numposrep", "num_from_oct_list"),
   ID("numposrep", "num_to_bin_list"), ID("numposrep", "num_to_dec_list"),
   ID("numposrep", "num_to_hex_list"), ID("numposrep", "num_to_oct_list"),
   ID("combin", "o"), ID("pair", "pair_CASE"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0], TYOP [0, 0, 1], TYOP [0, 1, 0], TYOP [3, 0, 0],
   TYOP [0, 4, 1], TYOP [0, 0, 2], TYOP [0, 0, 3], TYOP [4], TYOP [1, 8],
   TYOP [0, 9, 9], TYOP [0, 0, 10], TYOP [0, 0, 11], TYOP [0, 0, 8],
   TYOP [0, 0, 13], TYOP [0, 4, 8], TYOP [0, 4, 15], TYOP [0, 14, 8],
   TYOP [0, 17, 8], TYOP [0, 9, 8], TYOP [0, 19, 8], TYOP [0, 1, 8],
   TYOP [0, 21, 8], TYOP [0, 13, 8], TYOP [0, 0, 0], TYOP [0, 0, 24],
   TYOP [0, 0, 4], TYOP [0, 0, 26], TYOP [0, 8, 8], TYOP [0, 8, 28],
   TYOP [0, 3, 8], TYOP [0, 3, 30], TYOP [0, 2, 8], TYOP [0, 2, 32],
   TYOP [0, 24, 8], TYOP [0, 24, 34], TYOP [0, 5, 8], TYOP [0, 5, 36],
   TYOP [0, 9, 19], TYOP [0, 1, 21], TYOP [0, 16, 8], TYOP [0, 40, 16],
   TYOP [0, 25, 25], TYOP [0, 1, 1], TYOP [0, 1, 43], TYOP [0, 8, 44],
   TYOP [0, 8, 25], TYOP [0, 8, 10], TYOP [0, 0, 43], TYOP [0, 13, 21],
   TYOP [0, 5, 5], TYOP [0, 6, 5], TYOP [0, 50, 5], TYOP [0, 16, 52],
   TYOP [0, 13, 43], TYOP [0, 2, 24], TYOP [0, 3, 55], TYOP [0, 24, 13],
   TYOP [0, 13, 57], TYOP [0, 6, 1], TYOP [0, 4, 59]]
  end
  val _ = Theory.incorporate_consts "numposrep" tyvector
     [("num_to_oct_list", 2), ("num_to_hex_list", 2),
      ("num_to_dec_list", 2), ("num_to_bin_list", 2),
      ("num_from_oct_list", 3), ("num_from_hex_list", 3),
      ("num_from_dec_list", 3), ("num_from_bin_list", 3),
      ("n2l_tupled", 5), ("n2l", 6), ("l2n2", 3), ("l2n", 7),
      ("BOOLIFY", 12)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 14), TMV("R", 16), TMV("a", 9), TMV("a", 4), TMV("b", 0),
   TMV("h", 0), TMV("l", 1), TMV("ls", 1), TMV("m", 0), TMV("n", 0),
   TMV("n2l_tupled", 5), TMV("p", 0), TMV("q", 0), TMV("r", 0),
   TMV("t", 1), TMV("v", 0), TMV("v1", 0), TMV("x", 0), TMV("x1", 0),
   TMV("y", 0), TMC(5, 18), TMC(5, 20), TMC(5, 22), TMC(5, 23), TMC(6, 25),
   TMC(7, 25), TMC(8, 27), TMC(9, 29), TMC(10, 0), TMC(11, 14),
   TMC(12, 14), TMC(13, 29), TMC(13, 31), TMC(13, 33), TMC(13, 35),
   TMC(13, 37), TMC(13, 38), TMC(13, 39), TMC(13, 14), TMC(14, 29),
   TMC(15, 14), TMC(16, 41), TMC(17, 14), TMC(18, 24), TMC(19, 24),
   TMC(20, 25), TMC(21, 12), TMC(22, 42), TMC(23, 45), TMC(23, 46),
   TMC(24, 47), TMC(24, 48), TMC(25, 25), TMC(26, 24), TMC(27, 27),
   TMC(28, 7), TMC(29, 49), TMC(30, 49), TMC(31, 25), TMC(32, 43),
   TMC(32, 24), TMC(33, 3), TMC(34, 3), TMC(35, 50), TMC(36, 25),
   TMC(37, 25), TMC(38, 25), TMC(39, 1), TMC(40, 24), TMC(41, 13),
   TMC(42, 24), TMC(43, 43), TMC(44, 48), TMC(45, 24), TMC(46, 48),
   TMC(47, 25), TMC(48, 51), TMC(49, 40), TMC(50, 53), TMC(51, 0),
   TMC(52, 29), TMC(53, 54), TMC(54, 24), TMC(55, 7), TMC(56, 3),
   TMC(57, 6), TMC(58, 5), TMC(59, 3), TMC(60, 3), TMC(61, 3), TMC(62, 3),
   TMC(63, 2), TMC(64, 2), TMC(65, 2), TMC(66, 2), TMC(67, 56),
   TMC(67, 58), TMC(68, 60), TMC(69, 28)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op l2n_def x = x
    val op l2n_def =
    DT(((("numposrep",0),[("list",[13])]),["DISK_THM"]),
       [read"%27%23%4%38%83$0@%67@@%28@|@@%23%4%23%5%22%14%38%83$2@%51$1@$0@@@%25%65$1@$2@@%24$2@%83$2@$0@@@@|@|@|@@"])
  fun op n2l_tupled_primitive_def x = x
    val op n2l_tupled_primitive_def =
    DT(((("numposrep",1),[]),[]),
       [read"%35%86@%78%41%1%27%77$0@@%23%4%23%9%39%98%80%29$0@$1@@%29$1@%68%44%79@@@@@@$2%26$1@%52$0@$1@@@%26$1@$0@@@|@|@@|@@%10%3%97$0@%4%9%59%48%80%29$0@$1@@%29$1@%68%44%79@@@@@%51%65$0@$1@@%67@@%51%65$0@$1@@$3%26$1@%52$0@$1@@@@@@||@||@@"])
  fun op n2l_curried_def x = x
    val op n2l_curried_def =
    DT(((("numposrep",2),[]),[]),
       [read"%23%17%23%18%37%85$1@$0@@%86%26$1@$0@@@|@|@"])
  fun op num_from_bin_list_def x = x
    val op num_from_bin_list_def =
    DT(((("numposrep",5),[]),[]), [read"%32%87@%83%68%44%79@@@@"])
  fun op num_from_oct_list_def x = x
    val op num_from_oct_list_def =
    DT(((("numposrep",6),[]),[]), [read"%32%90@%83%68%44%43%43%79@@@@@@"])
  fun op num_from_dec_list_def x = x
    val op num_from_dec_list_def =
    DT(((("numposrep",7),[]),[]), [read"%32%88@%83%68%44%44%43%79@@@@@@"])
  fun op num_from_hex_list_def x = x
    val op num_from_hex_list_def =
    DT(((("numposrep",8),[]),[]),
       [read"%32%89@%83%68%44%43%43%43%79@@@@@@@"])
  fun op num_to_bin_list_def x = x
    val op num_to_bin_list_def =
    DT(((("numposrep",9),[]),[]), [read"%33%91@%85%68%44%79@@@@"])
  fun op num_to_oct_list_def x = x
    val op num_to_oct_list_def =
    DT(((("numposrep",10),[]),[]), [read"%33%94@%85%68%44%43%43%79@@@@@@"])
  fun op num_to_dec_list_def x = x
    val op num_to_dec_list_def =
    DT(((("numposrep",11),[]),[]), [read"%33%92@%85%68%44%44%43%79@@@@@@"])
  fun op num_to_hex_list_def x = x
    val op num_to_hex_list_def =
    DT(((("numposrep",12),[]),[]),
       [read"%33%93@%85%68%44%43%43%43%79@@@@@@@"])
  fun op BOOLIFY_def x = x
    val op BOOLIFY_def =
    DT(((("numposrep",13),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%27%23%8%21%2%36%46%28@$1@$0@@$0@|@|@@%23%9%23%8%21%2%36%46%73$2@@$1@$0@@%46$2@%53$1@@%50%69$1@@$0@@@|@|@|@@"])
  fun op l2n2 x = x
    val op l2n2 =
    DT(((("numposrep",30),[]),[]), [read"%32%84@%83%68%44%79@@@@"])
  fun op n2l_ind x = x
    val op n2l_ind =
    DT(((("numposrep",3),
        [("arithmetic",[25,46,59,71,88,93,173,236]),
         ("bool",[25,27,36,51,53,54,58,63,96,101,104,105,124]),
         ("combin",[19]),("numeral",[3,5,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%20%0%39%23%4%23%9%39%39%98%80%29$0@$1@@%29$1@%68%44%79@@@@@@$2$1@%52$0@$1@@@@$2$1@$0@@|@|@@%23%15%23%16$2$1@$0@|@|@@|@"])
  fun op n2l_def x = x
    val op n2l_def =
    DT(((("numposrep",4),
        [("arithmetic",[25,46,59,71,88,93,173,236]),
         ("bool",[15,25,36,51,53,54,58,63,96,101,104,105,124,129]),
         ("combin",[19]),("numeral",[3,5,8]),("numposrep",[1,2]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%23%9%23%4%37%85$0@$1@@%48%80%29$1@$0@@%29$0@%68%44%79@@@@@%51%65$1@$0@@%67@@%51%65$1@$0@@%85$0@%52$1@$0@@@@@|@|@"])
  fun op LENGTH_n2l x = x
    val op LENGTH_n2l =
    DT(((("numposrep",14),
        [("arithmetic",
         [22,24,25,27,41,46,59,70,71,73,88,93,110,172,173,176,177,180,217,
          236,251]),
         ("bool",
         [14,15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,86,93,96,101,104,
          105,107,124,129,143,147,169]),("combin",[19]),("list",[22]),
         ("logroot",[17]),("numeral",[3,5,8]),("numposrep",[1,2]),
         ("pair",[7,8,9,16,49]),("prim_rec",[1,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%23%4%23%9%39%29%68%43%79@@@$1@@%38%62%85$1@$0@@@%49%38$0@%28@@%68%43%79@@@%73%64$1@$0@@@@@|@|@"])
  fun op l2n_n2l x = x
    val op l2n_n2l =
    DT(((("numposrep",15),
        [("arithmetic",
         [22,24,25,26,41,46,59,67,71,73,88,93,110,172,173,176,180,209,217,
          225,236]),
         ("bool",
         [14,15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,86,96,101,104,
          105,124,129,143,169]),("combin",[19]),("logroot",[14]),
         ("numeral",[3,5,8]),("numposrep",[0,1,2]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%23%4%23%9%39%29%68%43%79@@@$1@@%38%83$1@%85$1@$0@@@$0@@|@|@"])
  fun op l2n_lt x = x
    val op l2n_lt =
    DT(((("numposrep",16),
        [("arithmetic",
         [8,24,25,26,27,41,46,59,70,71,75,93,101,173,180,237]),
         ("bool",[14,25,36,52,53,54,58,63,93,96,101,104,105,107,124]),
         ("list",[22,43]),("numeral",[3,7,8]),("numposrep",[0]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%22%6%23%4%39%29%28@$0@@%29%83$0@$1@@%58$0@%62$1@@@@|@|@"])
  fun op LENGTH_l2n x = x
    val op LENGTH_l2n =
    DT(((("numposrep",17),
        [("arithmetic",
         [9,22,24,25,26,27,38,41,46,59,67,71,73,75,76,79,93,148,151,172,
          173,176,177,180,217,219,226,228]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129]),("list",[22,30,43,46]),("logroot",[14,17]),
         ("numeral",[0,3,5,8]),("numposrep",[0]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%23%4%22%6%39%27%29%68%43%79@@@$1@@%27%56%40$1@@$0@@%98%38%83$1@$0@@%28@@@@@%30%73%64$1@%83$1@$0@@@@%62$0@@@|@|@"])
  fun op l2n_DIGIT x = x
    val op l2n_DIGIT =
    DT(((("numposrep",18),
        [("arithmetic",
         [8,9,22,24,25,26,27,28,41,46,59,71,73,93,173,180,217,222,226,228,
          232,234,274]),
         ("bool",[14,25,26,27,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("list",[17,22,30,43,128]),("numeral",[3,5,8]),("numposrep",[0]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%23%4%22%6%23%17%39%27%29%68%43%79@@@$2@@%27%56%40$2@@$1@@%29$0@%62$1@@@@@%38%65%52%83$2@$1@@%58$2@$0@@@$2@@%55$0@$1@@@|@|@|@"])
  fun op DIV_0_IMP_LT x = x
    val op DIV_0_IMP_LT =
    DT(((("numposrep",19),
        [("arithmetic",[25,26,41,46,59,69,71,79,93,145,172,180,228]),
         ("bool",[25,27,36,43,51,54,63,96,101,104,105]),
         ("numeral",[3,5,6,8])]),["DISK_THM"]),
       [read"%23%4%23%9%39%27%29%68%43%79@@@$1@@%38%52$0@$1@@%28@@@%29$0@$1@@|@|@"])
  fun op EL_n2l x = x
    val op EL_n2l =
    DT(((("numposrep",20),
        [("arithmetic",
         [8,17,19,24,25,26,27,41,46,59,60,66,71,88,93,110,115,155,172,173,
          176,177,180,217,226,232,234,236,269,274]),
         ("bool",
         [14,15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,83,93,96,100,101,
          104,105,124,129,147]),("combin",[19]),("list",[17,128]),
         ("logroot",[14,17]),("numeral",[3,5,8,9]),
         ("numposrep",[1,2,14,19]),("pair",[7,8,9,16,49]),
         ("prim_rec",[3,42]),("relation",[113,115,121,126]),
         ("rich_list",[240]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%23%4%23%17%23%9%39%27%29%68%43%79@@@$2@@%29$1@%62%85$2@$0@@@@@%38%55$1@%85$2@$0@@@%65%52$0@%58$2@$1@@@$2@@@|@|@|@"])
  fun op n2l_l2n x = x
    val op n2l_l2n =
    DT(((("numposrep",21),
        [("arithmetic",[24,25,37,41,46,59,71,88,93,173,180,219,236]),
         ("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,55,56,58,63,64,75,96,99,101,
          104,105,124,129,147,169]),("combin",[19]),
         ("list",[17,18,22,32,43,48,49,196]),("num",[7]),
         ("numeral",[3,5,8]),("numposrep",[1,2,14,17,18,20]),
         ("pair",[7,8,9,16,49]),("prim_rec",[1,6,7,42]),
         ("relation",[113,115,121,126]),("rich_list",[290]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%23%4%22%6%39%27%29%68%43%79@@@$1@@%56%40$1@@$0@@@%37%85$1@%83$1@$0@@@%48%38%83$1@$0@@%28@@%51%28@%67@@%74%73%64$1@%83$1@$0@@@@$0@@@@|@|@"])
  fun op l2n_eq_0 x = x
    val op l2n_eq_0 =
    DT(((("numposrep",22),
        [("arithmetic",[26,41,46,71,79,93,148,172,180]),
         ("bool",[14,25,26,27,30,36,51,52,54,56,58,63,96,101,104,105]),
         ("combin",[8,16]),("list",[30,43]),("numeral",[3,8]),
         ("numposrep",[0])]),["DISK_THM"]),
       [read"%23%4%39%29%28@$0@@%22%6%31%38%83$1@$0@@%28@@%56%96%38%28@@%47%65@$1@@@$0@@|@@|@"])
  fun op l2n_SNOC_0 x = x
    val op l2n_SNOC_0 =
    DT(((("numposrep",23),
        [("arithmetic",[22,25,26,67,91,219]),
         ("bool",[14,25,36,53,56,58,63,105,124]),("list",[43,256]),
         ("numposrep",[0])]),["DISK_THM"]),
       [read"%23%4%22%7%39%29%28@$1@@%38%83$1@%72%28@$0@@@%83$1@$0@@@|@|@"])
  fun op LOG_l2n x = x
    val op LOG_l2n =
    DT(((("numposrep",24),
        [("arithmetic",
         [9,22,26,28,41,46,59,67,71,91,93,148,173,177,180,189,217,258]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,55,56,58,63,96,101,104,105,124,129,
          147]),("combin",[8,16]),("list",[22,30,43,46,49,71,120,182]),
         ("logroot",[18,20]),("marker",[6]),("num",[7]),
         ("numeral",[3,5,8]),("numposrep",[0,22]),("prim_rec",[1,3,6]),
         ("rich_list",[299]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%23%4%39%29%68%43%79@@@$0@@%22%6%39%27%98%37$0@%67@@@%27%29%28@%61$0@@@%56%40$1@@$0@@@@%38%64$1@%83$1@$0@@@%70%62$0@@@@|@@|@"])
  fun op l2n_dropWhile_0 x = x
    val op l2n_dropWhile_0 =
    DT(((("numposrep",25),
        [("bool",[25,26,27,30,51,53,56,58,63,64,105,124,129]),
         ("list",[173,175,260,271,273,420]),
         ("numposrep",[23])]),["DISK_THM"]),
       [read"%23%4%22%7%39%29%28@$1@@%38%83$1@%71%81%38%28@@%71$0@@@@@%83$1@$0@@@|@|@"])
  fun op LOG_l2n_dropWhile x = x
    val op LOG_l2n_dropWhile =
    DT(((("numposrep",26),
        [("arithmetic",[41,46,59,71,93,173,177,180]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,96,101,104,105,124,169]),
         ("combin",[5,8]),("list",[71,75,87,177,178,179,419,422,423,424]),
         ("marker",[6]),("numeral",[3,5,8]),("numposrep",[24,25]),
         ("rich_list",[211]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%23%4%22%6%39%27%29%68%43%79@@@$1@@%27%57%19%98%38%28@$0@@|@$0@@%56%40$1@@$0@@@@%38%64$1@%83$1@$0@@@%70%62%81%38%28@@%71$0@@@@@@|@|@"])
  fun op n2l_BOUND x = x
    val op n2l_BOUND =
    DT(((("numposrep",27),
        [("arithmetic",
         [9,24,25,41,46,59,71,88,93,110,172,173,176,180,236,237]),
         ("bool",
         [14,15,25,26,27,30,36,43,51,53,54,58,63,64,86,96,101,104,105,124,
          129,143,169]),("combin",[19]),("list",[30]),("logroot",[14]),
         ("numeral",[3,5,8]),("numposrep",[1,2]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%23%4%23%9%39%29%28@$1@@%56%40$1@@%85$1@$0@@@|@|@"])
  fun op l2n_pow2_compute x = x
    val op l2n_pow2_compute =
    DT(((("numposrep",28),
        [("arithmetic",[26,73,91]),("bit",[0,2]),("bool",[25,56]),
         ("numposrep",[0])]),["DISK_THM"]),
       [read"%27%23%11%38%83%58%68%44%79@@@$0@@%67@@%28@|@@%23%11%23%5%22%14%38%83%58%68%44%79@@@$2@@%51$1@$0@@@%25%66$2@$1@@%75$2@%83%58%68%44%79@@@$2@@$0@@@@|@|@|@@"])
  fun op n2l_pow2_compute x = x
    val op n2l_pow2_compute =
    DT(((("numposrep",29),
        [("arithmetic",
         [8,25,41,46,59,71,88,93,172,173,177,180,212,217,226,232,236,273,
          276,278]),("bit",[3]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129,147,169]),("combin",[8,11,15,16,19,33,35]),
         ("list",[48]),("marker",[6,9]),("numeral",[3,5,6,8,33]),
         ("numposrep",[1,2,19]),("pair",[4,7,8,9,16,43,45,46,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%23%11%23%9%39%29%28@$1@@%37%85%58%68%44%79@@@$1@@$0@@%63%76%12%13%48%38$1@%28@@%51$0@%67@@%51$0@%85%58%68%44%79@@@$3@@$1@@@||@@%54$1@$0@@@@|@|@"])
  fun op l2n_2_thms x = x
    val op l2n_2_thms =
    DT(((("numposrep",31),
        [("arithmetic",
         [1,2,3,17,22,25,26,27,73,122,173,177,180,217,219,275]),
         ("bit",[0,2]),("bool",[25,36,51,52,53,54,55,56,58,63,104]),
         ("numeral",[3,5,7,8,12]),("numposrep",[0,28,30]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%27%22%14%38%83%68%44%79@@@%51%28@$0@@@%68%84%51%28@$0@@@@|@@%27%22%14%38%83%68%44%79@@@%51%68%43%79@@@$0@@@%68%84%51%68%43%79@@@$0@@@@|@@%27%38%84%67@@%79@@%27%22%14%38%84%51%28@$0@@@%82%84$0@@@|@@%22%14%38%84%51%68%43%79@@@$0@@@%43%84$0@@@|@@@@@"])
  fun op BIT_num_from_bin_list x = x
    val op BIT_num_from_bin_list =
    DT(((("numposrep",32),
        [("arithmetic",[275]),("bit",[7,21,33]),
         ("bool",[25,51,53,54,56,58,63,105,124]),("numeral",[3,7]),
         ("numposrep",[5,18])]),["DISK_THM"]),
       [read"%23%17%22%6%39%27%56%40%68%44%79@@@@$0@@%29$1@%62$0@@@@%31%42$1@%87$0@@@%38%55$1@$0@@%68%43%79@@@@@|@|@"])
  fun op EL_num_to_bin_list x = x
    val op EL_num_to_bin_list =
    DT(((("numposrep",33),
        [("arithmetic",[275]),("bit",[6,21,33]),
         ("bool",[25,51,53,54,56,58,63,105,124]),("numeral",[3,7]),
         ("numposrep",[9,20])]),["DISK_THM"]),
       [read"%23%17%23%9%39%29$1@%62%91$0@@@@%38%55$1@%91$0@@@%45$0@$1@@@|@|@"])
  fun op num_bin_list x = x
    val op num_bin_list =
    DT(((("numposrep",34),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("numposrep",[5,9,15])]),["DISK_THM"]),
       [read"%34%95%87@%91@@%60@"])
  fun op num_oct_list x = x
    val op num_oct_list =
    DT(((("numposrep",35),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("numposrep",[6,10,15])]),["DISK_THM"]),
       [read"%34%95%90@%94@@%60@"])
  fun op num_dec_list x = x
    val op num_dec_list =
    DT(((("numposrep",36),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("numposrep",[7,11,15])]),["DISK_THM"]),
       [read"%34%95%88@%92@@%60@"])
  fun op num_hex_list x = x
    val op num_hex_list =
    DT(((("numposrep",37),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("numposrep",[8,12,15])]),["DISK_THM"]),
       [read"%34%95%89@%93@@%60@"])
  end
  val _ = DB.bindl "numposrep"
  [("l2n_def",l2n_def,DB.Def),
   ("n2l_tupled_primitive_def",n2l_tupled_primitive_def,DB.Def),
   ("n2l_curried_def",n2l_curried_def,DB.Def),
   ("num_from_bin_list_def",num_from_bin_list_def,DB.Def),
   ("num_from_oct_list_def",num_from_oct_list_def,DB.Def),
   ("num_from_dec_list_def",num_from_dec_list_def,DB.Def),
   ("num_from_hex_list_def",num_from_hex_list_def,DB.Def),
   ("num_to_bin_list_def",num_to_bin_list_def,DB.Def),
   ("num_to_oct_list_def",num_to_oct_list_def,DB.Def),
   ("num_to_dec_list_def",num_to_dec_list_def,DB.Def),
   ("num_to_hex_list_def",num_to_hex_list_def,DB.Def),
   ("BOOLIFY_def",BOOLIFY_def,DB.Def), ("l2n2",l2n2,DB.Def),
   ("n2l_ind",n2l_ind,DB.Thm), ("n2l_def",n2l_def,DB.Thm),
   ("LENGTH_n2l",LENGTH_n2l,DB.Thm), ("l2n_n2l",l2n_n2l,DB.Thm),
   ("l2n_lt",l2n_lt,DB.Thm), ("LENGTH_l2n",LENGTH_l2n,DB.Thm),
   ("l2n_DIGIT",l2n_DIGIT,DB.Thm), ("DIV_0_IMP_LT",DIV_0_IMP_LT,DB.Thm),
   ("EL_n2l",EL_n2l,DB.Thm), ("n2l_l2n",n2l_l2n,DB.Thm),
   ("l2n_eq_0",l2n_eq_0,DB.Thm), ("l2n_SNOC_0",l2n_SNOC_0,DB.Thm),
   ("LOG_l2n",LOG_l2n,DB.Thm), ("l2n_dropWhile_0",l2n_dropWhile_0,DB.Thm),
   ("LOG_l2n_dropWhile",LOG_l2n_dropWhile,DB.Thm),
   ("n2l_BOUND",n2l_BOUND,DB.Thm),
   ("l2n_pow2_compute",l2n_pow2_compute,DB.Thm),
   ("n2l_pow2_compute",n2l_pow2_compute,DB.Thm),
   ("l2n_2_thms",l2n_2_thms,DB.Thm),
   ("BIT_num_from_bin_list",BIT_num_from_bin_list,DB.Thm),
   ("EL_num_to_bin_list",EL_num_to_bin_list,DB.Thm),
   ("num_bin_list",num_bin_list,DB.Thm),
   ("num_oct_list",num_oct_list,DB.Thm),
   ("num_dec_list",num_dec_list,DB.Thm),
   ("num_hex_list",num_hex_list,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("bitTheory.bit_grammars",bitTheory.bit_grammars),
                         ("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("l2n", (Term.prim_mk_const { Name = "l2n", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2l_tupled", (Term.prim_mk_const { Name = "n2l_tupled", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2l_tupled", (Term.prim_mk_const { Name = "n2l_tupled", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2l", (Term.prim_mk_const { Name = "n2l", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2l", (Term.prim_mk_const { Name = "n2l", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_bin_list", (Term.prim_mk_const { Name = "num_from_bin_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_bin_list", (Term.prim_mk_const { Name = "num_from_bin_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_oct_list", (Term.prim_mk_const { Name = "num_from_oct_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_oct_list", (Term.prim_mk_const { Name = "num_from_oct_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_dec_list", (Term.prim_mk_const { Name = "num_from_dec_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_dec_list", (Term.prim_mk_const { Name = "num_from_dec_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_hex_list", (Term.prim_mk_const { Name = "num_from_hex_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_hex_list", (Term.prim_mk_const { Name = "num_from_hex_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_bin_list", (Term.prim_mk_const { Name = "num_to_bin_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_bin_list", (Term.prim_mk_const { Name = "num_to_bin_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_oct_list", (Term.prim_mk_const { Name = "num_to_oct_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_oct_list", (Term.prim_mk_const { Name = "num_to_oct_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_dec_list", (Term.prim_mk_const { Name = "num_to_dec_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_dec_list", (Term.prim_mk_const { Name = "num_to_dec_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_hex_list", (Term.prim_mk_const { Name = "num_to_hex_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_hex_list", (Term.prim_mk_const { Name = "num_to_hex_list", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BOOLIFY", (Term.prim_mk_const { Name = "BOOLIFY", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("l2n2", (Term.prim_mk_const { Name = "l2n2", Thy = "numposrep"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("l2n2", (Term.prim_mk_const { Name = "l2n2", Thy = "numposrep"}))
  val _ = update_grms
       (temp_remove_ovl_mapping "l2n2")
        {Name = "l2n2", Thy = "numposrep"}
  val numposrep_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "numposrep"
end
