structure powserTheory :> powserTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading powserTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open limTheory
  in end;
  val _ = Theory.link_parents
          ("powser",
          Arbnum.fromString "1488589297",
          Arbnum.fromString "728384")
          [("lim",
           Arbnum.fromString "1488589284",
           Arbnum.fromString "159894")];
  val _ = Theory.incorporate_types "powser" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("num", "num"),
   ID("bool", "!"), ID("min", "bool"), ID("pair", ","), ID("pair", "prod"),
   ID("arithmetic", "-"), ID("real", "/"), ID("bool", "/\\"),
   ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("arithmetic", "NUMERAL"), ID("num", "SUC"), ID("arithmetic", "ZERO"),
   ID("real", "abs"), ID("lim", "diffl"), ID("powser", "diffs"),
   ID("real", "pow"), ID("realax", "real_add"), ID("realax", "real_lt"),
   ID("real", "real_lte"), ID("realax", "real_mul"),
   ID("realax", "real_neg"), ID("real", "real_of_num"),
   ID("real", "real_sub"), ID("real", "sum"), ID("seq", "suminf"),
   ID("seq", "summable"), ID("seq", "sums"), ID("lim", "tends_real_real"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [0, 2, 2], TYOP [0, 0, 0],
   TYOP [0, 0, 2], TYOP [4], TYOP [0, 2, 6], TYOP [0, 7, 6],
   TYOP [0, 5, 6], TYOP [0, 9, 6], TYOP [0, 4, 6], TYOP [0, 11, 6],
   TYOP [0, 1, 6], TYOP [0, 13, 6], TYOP [0, 0, 6], TYOP [0, 15, 6],
   TYOP [6, 1, 1], TYOP [0, 1, 17], TYOP [0, 1, 18], TYOP [0, 1, 1],
   TYOP [0, 1, 20], TYOP [0, 0, 4], TYOP [0, 6, 6], TYOP [0, 6, 23],
   TYOP [0, 2, 7], TYOP [0, 0, 15], TYOP [0, 4, 26], TYOP [0, 2, 0],
   TYOP [0, 17, 28], TYOP [0, 2, 15]]
  end
  val _ = Theory.incorporate_consts "powser" tyvector [("diffs", 3)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("c", 2), TMV("f", 2), TMV("f", 4), TMV("g", 5), TMV("h", 0),
   TMV("k", 0), TMV("k'", 0), TMV("m", 1), TMV("n", 1), TMV("p", 1),
   TMV("q", 1), TMV("x", 0), TMV("y", 0), TMV("z", 0), TMC(3, 8),
   TMC(3, 10), TMC(3, 12), TMC(3, 14), TMC(3, 16), TMC(5, 19), TMC(7, 21),
   TMC(8, 22), TMC(9, 24), TMC(10, 1), TMC(11, 25), TMC(11, 26),
   TMC(12, 24), TMC(13, 20), TMC(14, 20), TMC(15, 20), TMC(16, 20),
   TMC(17, 1), TMC(18, 4), TMC(19, 27), TMC(20, 3), TMC(21, 5),
   TMC(22, 22), TMC(23, 26), TMC(24, 26), TMC(25, 22), TMC(26, 4),
   TMC(27, 2), TMC(28, 22), TMC(29, 29), TMC(30, 28), TMC(31, 7),
   TMC(32, 30), TMC(33, 27), TMC(34, 23)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op diffs x = x
    val op diffs =
    DT(((("powser",5),[]),[]),
       [read"%14%0%24%34$0@@%8%39%41%30$0@@@$1%30$0@@@|@|@"])
  fun op POWDIFF_LEMMA x = x
    val op POWDIFF_LEMMA =
    DT(((("powser",0),
        [("arithmetic",[6,24,59,95,96]),("bool",[25,26,27,58,63,64]),
         ("prim_rec",[19]),("real",[15,17,233,293,296])]),["DISK_THM"]),
       [read"%17%8%18%11%18%12%25%43%19%23@%30$2@@@%9%39%35$2@$0@@%35$1@%20%30$3@@$0@@@|@@%39$0@%43%19%23@%30$2@@@%9%39%35$2@$0@@%35$1@%20$3@$0@@@|@@@|@|@|@"])
  fun op POWDIFF x = x
    val op POWDIFF =
    DT(((("powser",1),
        [("arithmetic",[24,62,130]),("bool",[14,25,56,58,63]),("num",[9]),
         ("powser",[0]),
         ("real",[4,6,7,8,9,15,17,22,29,34,99,233,280])]),["DISK_THM"]),
       [read"%17%8%18%11%18%12%25%42%35$1@%30$2@@@%35$0@%30$2@@@@%39%42$1@$0@@%43%19%23@%30$2@@@%9%39%35$2@$0@@%35$1@%20$3@$0@@@|@@@|@|@|@"])
  fun op POWREV x = x
    val op POWREV =
    DT(((("powser",2),
        [("arithmetic",[25]),("bool",[25,26,30,56,58]),("powser",[1]),
         ("real",[15,41,43,87,93,182,239,296])]),["DISK_THM"]),
       [read"%17%8%18%11%18%12%25%43%19%23@%30$2@@@%9%39%35$2@$0@@%35$1@%20$3@$0@@@|@@%43%19%23@%30$2@@@%9%39%35$2@%20$3@$0@@@%35$1@$0@@|@@|@|@|@"])
  fun op POWSER_INSIDEA x = x
    val op POWSER_INSIDEA =
    DT(((("powser",3),
        [("bool",[25,26,35,51,53,58,63]),
         ("real",
         [15,17,26,40,48,55,58,60,105,177,185,188,206,210,211,214,215,216,
          223,235,236,237,246]),
         ("seq",[10,19,21,30,42,55,60,61,68])]),["DISK_THM"]),
       [read"%14%1%18%11%18%13%26%22%45%8%39$3$0@@%35$2@$0@@|@@%37%32$0@@%32$1@@@@%45%8%39%32$3$0@@@%35$1@$0@@|@@|@|@|@"])
  fun op POWSER_INSIDE x = x
    val op POWSER_INSIDE =
    DT(((("powser",4),
        [("bool",[58]),("powser",[3]),("real",[211,216,237]),
         ("seq",[65])]),["DISK_THM"]),
       [read"%14%1%18%11%18%13%26%22%45%8%39$3$0@@%35$2@$0@@|@@%37%32$0@@%32$1@@@@%45%8%39$3$0@@%35$1@$0@@|@@|@|@|@"])
  fun op DIFFS_NEG x = x
    val op DIFFS_NEG =
    DT(((("powser",6),
        [("bool",[25,56]),("powser",[5]),("real",[42])]),["DISK_THM"]),
       [read"%14%0%24%34%8%40$1$0@@|@@%8%40%34$1@$0@@|@|@"])
  fun op DIFFS_LEMMA x = x
    val op DIFFS_LEMMA =
    DT(((("powser",7),
        [("arithmetic",[24,65]),("bool",[14,25,36,56,58]),("num",[9]),
         ("powser",[5]),("real",[6,7,17,39,280])]),["DISK_THM"]),
       [read"%17%8%14%0%18%11%25%43%19%23@$2@@%8%39%34$2@$0@@%35$1@$0@@|@@%36%43%19%23@$2@@%8%39%41$0@@%39$2$0@@%35$1@%20$0@%29%27%31@@@@@@|@@%39%41$2@@%39$1$2@@%35$0@%20$2@%29%27%31@@@@@@@@|@|@|@"])
  fun op DIFFS_LEMMA2 x = x
    val op DIFFS_LEMMA2 =
    DT(((("powser",8),
        [("bool",[25,56]),("powser",[7]),("real",[173])]),["DISK_THM"]),
       [read"%17%8%14%0%18%11%25%43%19%23@$2@@%8%39%41$0@@%39$2$0@@%35$1@%20$0@%29%27%31@@@@@@|@@%42%43%19%23@$2@@%8%39%34$2@$0@@%35$1@$0@@|@@%39%41$2@@%39$1$2@@%35$0@%20$2@%29%27%31@@@@@@@@|@|@|@"])
  fun op DIFFS_EQUIV x = x
    val op DIFFS_EQUIV =
    DT(((("powser",9),
        [("arithmetic",[65]),("bool",[25,53,58,63]),("powser",[5,8]),
         ("real",[17,162]),("seq",[7,32,41,45,60])]),["DISK_THM"]),
       [read"%14%0%18%11%26%45%8%39%34$2@$0@@%35$1@$0@@|@@%46%8%39%41$0@@%39$2$0@@%35$1@%20$0@%29%27%31@@@@@@|@%44%8%39%34$2@$0@@%35$1@$0@@|@@@|@|@"])
  fun op TERMDIFF_LEMMA1 x = x
    val op TERMDIFF_LEMMA1 =
    DT(((("powser",10),
        [("arithmetic",[24,25,77,96]),("bool",[25,53,58]),
         ("real",[15,99,239,296])]),["DISK_THM"]),
       [read"%17%7%18%13%18%4%25%43%19%23@$2@@%9%42%39%35%36$2@$1@@%20$3@$0@@@%35$2@$0@@@%35$2@$3@@|@@%43%19%23@$2@@%9%39%35$2@$0@@%42%35%36$2@$1@@%20$3@$0@@@%35$2@%20$3@$0@@@@|@@|@|@|@"])
  fun op TERMDIFF_LEMMA2 x = x
    val op TERMDIFF_LEMMA2 =
    DT(((("powser",11),
        [("arithmetic",[17,18,24,25,28,62,64,65,101,112,128,130]),
         ("bool",[25,26,27,52,56,58]),("powser",[1,2,10]),
         ("real",
         [15,17,18,27,31,39,40,86,96,97,99,126,147,160,182,233,280,293,296,
          297])]),["DISK_THM"]),
       [read"%18%13%18%4%17%8%26%48%25$1@%41%23@@@@%25%42%21%42%35%36$2@$1@@$0@@%35$2@$0@@@$1@@%39%41$0@@%35$2@%20$0@%29%27%31@@@@@@@%39$1@%43%19%23@%20$0@%29%27%31@@@@@%9%39%35$3@$0@@%43%19%23@%20%20$1@%29%27%31@@@@$0@@@%10%39%35%36$4@$3@@$0@@%35$4@%20%20%20$2@%29%28%31@@@@$1@@$0@@@|@@|@@@@|@|@|@"])
  fun op TERMDIFF_LEMMA3 x = x
    val op TERMDIFF_LEMMA3 =
    DT(((("powser",12),
        [("arithmetic",[18,24,25,28,38,53,62,64,65,93,96,101,112,128]),
         ("bool",[25,51,58,63]),("powser",[11]),("prim_rec",[1,15]),
         ("real",
         [15,17,40,55,56,61,128,176,177,183,206,210,211,214,237,239,243,
          244,280,284,298])]),["DISK_THM"]),
       [read"%18%13%18%4%17%8%18%6%26%22%48%25$2@%41%23@@@@%22%38%32$3@@$0@@%38%32%36$3@$2@@@$0@@@@%38%32%42%21%42%35%36$3@$2@@$1@@%35$3@$1@@@$2@@%39%41$1@@%35$3@%20$1@%29%27%31@@@@@@@@%39%41$1@@%39%41%20$1@%29%27%31@@@@@%39%35$0@%20$1@%29%28%31@@@@@%32$2@@@@@@|@|@|@|@"])
  fun op TERMDIFF_LEMMA4 x = x
    val op TERMDIFF_LEMMA4 =
    DT(((("powser",13),
        [("arithmetic",[18]),("bool",[25,51,53,58,63,64]),("lim",[1]),
         ("prim_rec",[7]),
         ("real",
         [12,15,17,18,19,20,26,39,56,58,60,61,62,105,106,109,129,140,144,
          145,151,162,177,204,210])]),["DISK_THM"]),
       [read"%16%2%18%6%18%5%26%22%37%41%23@@$0@@%18%4%26%22%37%41%23@@%32$0@@@%37%32$0@@$1@@@%38%32$3$0@@@%39$2@%32$0@@@@|@@@%47$2@%41%23@@%41%23@@@|@|@|@"])
  fun op TERMDIFF_LEMMA5 x = x
    val op TERMDIFF_LEMMA5 =
    DT(((("powser",14),
        [("bool",[25,36,51,63]),("powser",[13]),("real",[15,61,216]),
         ("seq",[44,45,46,55,61,63,66])]),["DISK_THM"]),
       [read"%14%1%15%3%18%5%26%22%37%41%23@@$0@@%22%45$2@@%18%4%26%22%37%41%23@@%32$0@@@%37%32$0@@$1@@@%17%8%38%32$3$1@$0@@@%39$4$0@@%32$1@@@|@@|@@@@%47%4%44$2$0@@|@%41%23@@%41%23@@@|@|@|@"])
  fun op TERMDIFF x = x
    val op TERMDIFF =
    DT(((("powser",15),
        [("arithmetic",[18,28,64,65,112]),
         ("bool",[14,25,26,41,51,53,56,58,63]),("lim",[1,9,13,14]),
         ("powser",[3,4,5,9,12,14]),
         ("real",
         [4,15,17,19,26,29,30,39,40,58,59,60,61,87,94,99,100,105,155,162,
          181,189,205,209,210,211,214,217,218,219,228,239,240]),
         ("sat",[1,3,5,6,7,11,17,18]),
         ("seq",[44,45,46,57,58])]),["DISK_THM"]),
       [read"%14%0%18%6%18%11%26%22%45%8%39$3$0@@%35$2@$0@@|@@%22%45%8%39%34$3@$0@@%35$2@$0@@|@@%22%45%8%39%34%34$3@@$0@@%35$2@$0@@|@@%37%32$0@@%32$1@@@@@@%33%11%44%8%39$4$0@@%35$1@$0@@|@|@%44%8%39%34$3@$0@@%35$1@$0@@|@@$0@@|@|@|@"])
  end
  val _ = DB.bindl "powser"
  [("diffs",diffs,DB.Def), ("POWDIFF_LEMMA",POWDIFF_LEMMA,DB.Thm),
   ("POWDIFF",POWDIFF,DB.Thm), ("POWREV",POWREV,DB.Thm),
   ("POWSER_INSIDEA",POWSER_INSIDEA,DB.Thm),
   ("POWSER_INSIDE",POWSER_INSIDE,DB.Thm), ("DIFFS_NEG",DIFFS_NEG,DB.Thm),
   ("DIFFS_LEMMA",DIFFS_LEMMA,DB.Thm),
   ("DIFFS_LEMMA2",DIFFS_LEMMA2,DB.Thm),
   ("DIFFS_EQUIV",DIFFS_EQUIV,DB.Thm),
   ("TERMDIFF_LEMMA1",TERMDIFF_LEMMA1,DB.Thm),
   ("TERMDIFF_LEMMA2",TERMDIFF_LEMMA2,DB.Thm),
   ("TERMDIFF_LEMMA3",TERMDIFF_LEMMA3,DB.Thm),
   ("TERMDIFF_LEMMA4",TERMDIFF_LEMMA4,DB.Thm),
   ("TERMDIFF_LEMMA5",TERMDIFF_LEMMA5,DB.Thm),
   ("TERMDIFF",TERMDIFF,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("limTheory.lim_grammars",limTheory.lim_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diffs", (Term.prim_mk_const { Name = "diffs", Thy = "powser"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diffs", (Term.prim_mk_const { Name = "diffs", Thy = "powser"}))
  val powser_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "powser"
end
