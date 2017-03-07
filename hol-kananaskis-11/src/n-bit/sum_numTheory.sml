structure sum_numTheory :> sum_numTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading sum_numTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quantHeuristicsTheory rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("sum_num",
          Arbnum.fromString "1488587143",
          Arbnum.fromString "803861")
          [("quantHeuristics",
           Arbnum.fromString "1488586638",
           Arbnum.fromString "944227"),
           ("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749")];
  val _ = Theory.incorporate_types "sum_num" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("pair", "prod"),
   ID("min", "bool"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("rich_list", "COUNT_LIST"), ID("list", "list"), ID("list", "FOLDL"),
   ID("sum_num", "GSUM"), ID("sum_num", "GSUM_tupled"), ID("combin", "I"),
   ID("arithmetic", "NUMERAL"), ID("num", "SUC"), ID("sum_num", "SUM"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("arithmetic", "num_CASE"),
   ID("pair", "pair_CASE"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 1, 0], TYOP [0, 0, 2],
   TYOP [2, 0, 0], TYOP [2, 4, 1], TYOP [0, 5, 0], TYOP [0, 4, 2],
   TYOP [3], TYOP [0, 1, 8], TYOP [0, 4, 9], TYOP [0, 5, 8],
   TYOP [0, 5, 11], TYOP [0, 9, 8], TYOP [0, 10, 8], TYOP [0, 14, 8],
   TYOP [0, 0, 8], TYOP [0, 16, 8], TYOP [0, 4, 8], TYOP [0, 18, 8],
   TYOP [0, 0, 1], TYOP [0, 0, 4], TYOP [0, 0, 21], TYOP [0, 1, 5],
   TYOP [0, 4, 23], TYOP [0, 8, 8], TYOP [0, 8, 25], TYOP [0, 0, 16],
   TYOP [0, 6, 8], TYOP [0, 6, 28], TYOP [0, 12, 8], TYOP [0, 30, 12],
   TYOP [19, 0], TYOP [0, 0, 32], TYOP [0, 32, 0], TYOP [0, 0, 34],
   TYOP [0, 20, 35], TYOP [0, 6, 6], TYOP [0, 37, 6], TYOP [0, 12, 38],
   TYOP [0, 0, 3], TYOP [0, 20, 0], TYOP [0, 4, 41], TYOP [0, 7, 0],
   TYOP [0, 5, 43]]
  end
  val _ = Theory.incorporate_consts "sum_num" tyvector
     [("SUM", 3), ("GSUM_tupled", 6), ("GSUM", 7)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("GSUM_tupled", 6), TMV("P", 10), TMV("R", 12), TMV("a", 5),
   TMV("f", 1), TMV("g", 1), TMV("m", 0), TMV("n", 0), TMV("p", 0),
   TMV("q", 0), TMV("v", 0), TMV("v", 4), TMV("v1", 0), TMV("v2", 1),
   TMV("v3", 0), TMV("x", 0), TMV("x", 4), TMV("x1", 1), TMC(4, 13),
   TMC(4, 15), TMC(4, 17), TMC(4, 19), TMC(5, 20), TMC(6, 22), TMC(6, 24),
   TMC(7, 20), TMC(8, 26), TMC(9, 0), TMC(10, 27), TMC(11, 27),
   TMC(12, 26), TMC(12, 29), TMC(12, 27), TMC(13, 26), TMC(14, 17),
   TMC(15, 31), TMC(16, 1), TMC(17, 1), TMC(18, 33), TMC(20, 36),
   TMC(21, 7), TMC(22, 6), TMC(23, 1), TMC(24, 1), TMC(25, 1), TMC(26, 3),
   TMC(27, 30), TMC(28, 39), TMC(29, 0), TMC(30, 26), TMC(31, 40),
   TMC(32, 42), TMC(32, 44), TMC(33, 25)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op GSUM_tupled_primitive_def x = x
    val op GSUM_tupled_primitive_def =
    DT(((("sum_num",0),[]),[]),
       [read"%31%41@%47%35%2%26%46$0@@%18%4%20%6%20%7$3%24%23$0@$1@@$2@@%24%23$0@%44$1@@@$2@@|@|@|@@|@@%0%3%52$0@%11%4%51$1@%7%14%50$0@%42%27@@%6%42%22$6%24%23$2@$0@@$3@@@$3%22$2@$0@@@@|@||@||@||@@"])
  fun op GSUM_curried_def x = x
    val op GSUM_curried_def =
    DT(((("sum_num",1),[]),[]),
       [read"%21%16%18%17%32%40$1@$0@@%41%24$1@$0@@@|@|@"])
  fun op SUM_def x = x
    val op SUM_def =
    DT(((("sum_num",12),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%26%18%4%32%45%27@$0@@%27@|@@%20%6%18%4%32%45%44$1@@$0@@%22%45$1@$0@@$0$1@@@|@|@@"])
  fun op GSUM_ind x = x
    val op GSUM_ind =
    DT(((("sum_num",2),
        [("arithmetic",[24,25,28,59,71,88,173,180]),
         ("bool",[25,27,36,53,54,58,63,104]),("numeral",[3,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%19%1%33%26%20%7%18%4$2%23$1@%27@@$0@|@|@@%20%7%20%6%18%4%33$3%23$2@$1@@$0@@$3%23$2@%44$1@@@$0@@|@|@|@@@%20%10%20%12%18%13$3%23$2@$1@@$0@|@|@|@@|@"])
  fun op GSUM_def x = x
    val op GSUM_def =
    DT(((("sum_num",3),
        [("arithmetic",[14,24,25,59,71,88,173,180]),
         ("bool",[15,25,36,54,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sum_num",[0,1])]),["DISK_THM"]),
       [read"%26%20%7%18%4%32%40%23$1@%27@@$0@@%27@|@|@@%20%7%20%6%18%4%32%40%23$2@%44$1@@@$0@@%22%40%23$2@$1@@$0@@$0%22$2@$1@@@@|@|@|@@"])
  fun op GSUM_def_compute x = x
    val op GSUM_def_compute =
    DT(((("sum_num",4),
        [("arithmetic",[14,24,25,59,71,88,173,180,268]),
         ("bool",[15,25,26,36,54,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sum_num",[0,1])]),["DISK_THM"]),
       [read"%26%20%7%18%4%32%40%23$1@%27@@$0@@%27@|@|@@%26%20%7%20%6%18%4%32%40%23$2@%43%36$1@@@@$0@@%22%40%23$2@%25%43%36$1@@@%43%36%48@@@@@$0@@$0%22$2@%25%43%36$1@@@%43%36%48@@@@@@@|@|@|@@%20%7%20%6%18%4%32%40%23$2@%43%37$1@@@@$0@@%22%40%23$2@%43%36$1@@@@$0@@$0%22$2@%43%36$1@@@@@@|@|@|@@@"])
  fun op GSUM_1 x = x
    val op GSUM_1 =
    DT(((("sum_num",5),
        [("arithmetic",[14,17,24,25,59,71,88,173,180]),
         ("bool",[15,25,36,54,56,58,63,104]),("combin",[19]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sum_num",[0,1])]),["DISK_THM"]),
       [read"%20%6%18%4%32%40%23$1@%43%36%48@@@@$0@@$0$1@@|@|@"])
  fun op GSUM_ADD x = x
    val op GSUM_ADD =
    DT(((("sum_num",6),
        [("arithmetic",[14,23,24,25,26,27,59,71,88,91,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sum_num",[0,1])]),["DISK_THM"]),
       [read"%20%8%20%6%20%7%18%4%32%40%23$3@%22$2@$1@@@$0@@%22%40%23$3@$2@@$0@@%40%23%22$3@$2@@$1@@$0@@@|@|@|@|@"])
  fun op GSUM_ZERO x = x
    val op GSUM_ZERO =
    DT(((("sum_num",7),
        [("arithmetic",
         [14,22,24,25,26,27,41,46,59,71,79,88,93,172,173,176,177,180]),
         ("bool",
         [14,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,96,101,104,
          105,107,124]),("combin",[19]),("num",[9]),("numeral",[3,5,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum_num",[0,1])]),["DISK_THM"]),
       [read"%20%8%20%7%18%4%30%20%6%33%26%29$3@$0@@%28$0@%22$3@$2@@@@%32$1$0@@%27@@|@@%32%40%23$2@$1@@$0@@%27@@|@|@|@"])
  fun op GSUM_MONO x = x
    val op GSUM_MONO =
    DT(((("sum_num",8),
        [("arithmetic",[14,24,25,26,27,46,53,59,71,88,93,145,173,177,180]),
         ("bool",[15,25,36,52,54,58,63,96,101,104,105,124]),
         ("combin",[19]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("sum_num",[0,1,6])]),["DISK_THM"]),
       [read"%20%8%20%6%20%7%18%4%33%26%29$2@$1@@%53%32$0%22$3@$1@@@%27@@@@%28%40%23$3@$2@@$0@@%40%23$3@%44$1@@@$0@@@|@|@|@|@"])
  fun op GSUM_LESS x = x
    val op GSUM_LESS =
    DT(((("sum_num",9),
        [("arithmetic",
         [14,22,24,25,26,27,41,46,59,71,88,93,101,172,173,176,177,180]),
         ("bool",
         [13,14,15,25,26,27,30,36,37,47,48,51,52,53,54,56,58,63,71,72,92,
          93,94,96,101,104,105,107]),("combin",[19]),("num",[9]),
         ("numeral",[3,5,8]),("pair",[7,8,9,16,49]),("prim_rec",[6,42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum_num",[0,1,6,8])]),["DISK_THM"]),
       [read"%20%8%20%6%20%7%18%4%30%34%9%26%29%22$3@$4@@$0@@%26%28$0@%22$2@$4@@@%53%32$1$0@@%27@@@@|@@%28%40%23$3@$2@@$0@@%40%23$3@$1@@$0@@@|@|@|@|@"])
  fun op GSUM_EQUAL x = x
    val op GSUM_EQUAL =
    DT(((("sum_num",10),
        [("arithmetic",
         [14,18,22,24,25,26,27,28,32,41,46,53,59,71,81,88,93,95,172,173,
          176,177,180]),
         ("bool",
         [13,14,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,77,78,
          92,93,94,96,101,104,105,107,124,146]),("combin",[19]),
         ("num",[9]),("numeral",[3,5,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[4,6,7,42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum_num",[0,1,6,9])]),["DISK_THM"]),
       [read"%20%8%20%6%20%7%18%4%30%32%40%23$3@$2@@$0@@%40%23$3@$1@@$0@@@%49%26%29$2@$1@@%20%9%33%26%29%22$4@$3@@$0@@%28$0@%22$4@$2@@@@%32$1$0@@%27@@|@@@%26%28$1@$2@@%20%9%33%26%29%22$4@$2@@$0@@%28$0@%22$4@$3@@@@%32$1$0@@%27@@|@@@@|@|@|@|@"])
  fun op GSUM_FUN_EQUAL x = x
    val op GSUM_FUN_EQUAL =
    DT(((("sum_num",11),
        [("arithmetic",
         [14,22,24,25,26,27,41,46,53,59,71,88,91,93,173,180]),
         ("bool",[14,15,25,26,27,36,51,53,54,56,58,63,96,101,104,105,124]),
         ("combin",[19]),("num",[9]),("numeral",[3,5,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sum_num",[0,1])]),["DISK_THM"]),
       [read"%20%8%20%7%18%4%18%5%33%20%15%33%26%29$4@$0@@%28$0@%22$4@$3@@@@%32$2$0@@$1$0@@@|@@%32%40%23$3@$2@@$1@@%40%23$3@$2@@$0@@@|@|@|@|@"])
  fun op SUM_def_compute x = x
    val op SUM_def_compute =
    DT(((("sum_num",13),
        [("arithmetic",[268]),("bool",[26]),
         ("sum_num",[12])]),["DISK_THM"]),
       [read"%26%18%4%32%45%27@$0@@%27@|@@%26%20%6%18%4%32%45%43%36$1@@@$0@@%22%45%25%43%36$1@@@%43%36%48@@@@$0@@$0%25%43%36$1@@@%43%36%48@@@@@@|@|@@%20%6%18%4%32%45%43%37$1@@@$0@@%22%45%43%36$1@@@$0@@$0%43%36$1@@@@@|@|@@@"])
  fun op SUM x = x
    val op SUM =
    DT(((("sum_num",14),
        [("arithmetic",[14,22,24,25,26,59,71,88,91,173,180]),
         ("bool",[14,15,25,36,54,56,58,63,104]),("combin",[19]),
         ("num",[9]),("numeral",[3,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sum_num",[0,1,12])]),["DISK_THM"]),
       [read"%20%6%18%4%32%45$1@$0@@%40%23%27@$1@@$0@@|@|@"])
  fun op SUM_1 x = x
    val op SUM_1 =
    DT(((("sum_num",15),[("bool",[58]),("sum_num",[5,14])]),["DISK_THM"]),
       [read"%18%4%32%45%43%36%48@@@$0@@$0%27@@|@"])
  fun op SUM_MONO x = x
    val op SUM_MONO =
    DT(((("sum_num",16),
        [("arithmetic",[0]),("bool",[58]),
         ("sum_num",[8,14])]),["DISK_THM"]),
       [read"%20%6%20%7%18%4%33%26%29$2@$1@@%53%32$0$1@@%27@@@@%28%45$2@$0@@%45%44$1@@$0@@@|@|@|@"])
  fun op SUM_LESS x = x
    val op SUM_LESS =
    DT(((("sum_num",17),
        [("arithmetic",[24]),("bool",[58]),
         ("sum_num",[9,14])]),["DISK_THM"]),
       [read"%20%6%20%7%18%4%30%34%9%26%29$3@$0@@%26%28$0@$2@@%53%32$1$0@@%27@@@@|@@%28%45$2@$0@@%45$1@$0@@@|@|@|@"])
  fun op SUM_EQUAL x = x
    val op SUM_EQUAL =
    DT(((("sum_num",18),
        [("arithmetic",[22,25]),("bool",[58,105,124]),
         ("sum_num",[10,14])]),["DISK_THM"]),
       [read"%20%6%20%7%18%4%30%32%45$2@$0@@%45$1@$0@@@%49%26%29$2@$1@@%20%9%33%26%29$3@$0@@%28$0@$2@@@%32$1$0@@%27@@|@@@%26%28$1@$2@@%20%9%33%26%29$2@$0@@%28$0@$3@@@%32$1$0@@%27@@|@@@@|@|@|@"])
  fun op SUM_FUN_EQUAL x = x
    val op SUM_FUN_EQUAL =
    DT(((("sum_num",19),
        [("arithmetic",[22,25,46,71,93,173,176,180]),
         ("bool",[25,36,51,54,58,63,104,105,124]),("numeral",[3,8]),
         ("sum_num",[11,14])]),["DISK_THM"]),
       [read"%18%4%18%5%33%20%15%33%28$0@%7@@%32$2$0@@$1$0@@@|@@%32%45%7@$1@@%45%7@$0@@@|@|@"])
  fun op SUM_ZERO x = x
    val op SUM_ZERO =
    DT(((("sum_num",20),
        [("arithmetic",[22,25,46,71,93,173,176,180]),
         ("bool",[25,36,51,54,58,63,104,105,124]),("numeral",[3,8]),
         ("sum_num",[7,14])]),["DISK_THM"]),
       [read"%20%7%18%4%30%20%6%33%28$0@$2@@%32$1$0@@%27@@|@@%32%45$1@$0@@%27@@|@|@"])
  fun op SUM_FOLDL x = x
    val op SUM_FOLDL =
    DT(((("sum_num",21),
        [("arithmetic",[26,91]),("bool",[14,25,56]),("list",[29,299]),
         ("num",[9]),("rich_list",[283]),("sum_num",[12])]),["DISK_THM"]),
       [read"%20%7%18%4%32%45$1@$0@@%39%15%7%22$2$0@@$1@||@%27@%38$1@@@|@|@"])
  end
  val _ = DB.bindl "sum_num"
  [("GSUM_tupled_primitive_def",GSUM_tupled_primitive_def,DB.Def),
   ("GSUM_curried_def",GSUM_curried_def,DB.Def),
   ("SUM_def",SUM_def,DB.Def), ("GSUM_ind",GSUM_ind,DB.Thm),
   ("GSUM_def",GSUM_def,DB.Thm),
   ("GSUM_def_compute",GSUM_def_compute,DB.Thm), ("GSUM_1",GSUM_1,DB.Thm),
   ("GSUM_ADD",GSUM_ADD,DB.Thm), ("GSUM_ZERO",GSUM_ZERO,DB.Thm),
   ("GSUM_MONO",GSUM_MONO,DB.Thm), ("GSUM_LESS",GSUM_LESS,DB.Thm),
   ("GSUM_EQUAL",GSUM_EQUAL,DB.Thm),
   ("GSUM_FUN_EQUAL",GSUM_FUN_EQUAL,DB.Thm),
   ("SUM_def_compute",SUM_def_compute,DB.Thm), ("SUM",SUM,DB.Thm),
   ("SUM_1",SUM_1,DB.Thm), ("SUM_MONO",SUM_MONO,DB.Thm),
   ("SUM_LESS",SUM_LESS,DB.Thm), ("SUM_EQUAL",SUM_EQUAL,DB.Thm),
   ("SUM_FUN_EQUAL",SUM_FUN_EQUAL,DB.Thm), ("SUM_ZERO",SUM_ZERO,DB.Thm),
   ("SUM_FOLDL",SUM_FOLDL,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quantHeuristicsTheory.quantHeuristics_grammars",
                          quantHeuristicsTheory.quantHeuristics_grammars),
                         ("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSUM_tupled", (Term.prim_mk_const { Name = "GSUM_tupled", Thy = "sum_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSUM_tupled", (Term.prim_mk_const { Name = "GSUM_tupled", Thy = "sum_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSUM", (Term.prim_mk_const { Name = "GSUM", Thy = "sum_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GSUM", (Term.prim_mk_const { Name = "GSUM", Thy = "sum_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM", (Term.prim_mk_const { Name = "SUM", Thy = "sum_num"}))
  val sum_num_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sum_num",
    thydataty = "compute",
    data =
        "sum_num.GSUM_def sum_num.GSUM_def_compute sum_num.SUM_def_compute sum_num.SUM_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "sum_num"
end
