structure defCNFTheory :> defCNFTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading defCNFTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open rich_listTheory
  in end;
  val _ = Theory.link_parents
          ("defCNF",
          Arbnum.fromString "1488586700",
          Arbnum.fromString "741983")
          [("rich_list",
           Arbnum.fromString "1488586542",
           Arbnum.fromString "856749")];
  val _ = Theory.incorporate_types "defCNF" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("sum", "sum"), ID("num", "num"), ID("list", "list"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("min", "@"), ID("list", "CONS"), ID("defCNF", "DEF"),
   ID("combin", "I"), ID("sum", "INL"), ID("sum", "INR"),
   ID("list", "LENGTH"), ID("list", "NIL"), ID("defCNF", "OK"),
   ID("defCNF", "OKDEF"), ID("defCNF", "OK_tupled"), ID("list", "SNOC"),
   ID("num", "SUC"), ID("bool", "T"), ID("defCNF", "UNIQUE"),
   ID("defCNF", "UNIQUE_tupled"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("pair", "pair_CASE"), ID("sum", "sum_CASE")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [4], TYOP [3, 1, 0], TYOP [2, 2, 2], TYOP [0, 0, 0],
   TYOP [0, 0, 4], TYOP [2, 5, 3], TYOP [2, 1, 6], TYOP [0, 1, 0],
   TYOP [2, 8, 7], TYOP [0, 9, 0], TYOP [0, 6, 0], TYOP [0, 1, 11],
   TYOP [0, 8, 12], TYOP [0, 7, 0], TYOP [5, 6], TYOP [0, 15, 0],
   TYOP [0, 1, 16], TYOP [0, 8, 17], TYOP [0, 8, 0], TYOP [0, 9, 10],
   TYOP [0, 7, 14], TYOP [0, 4, 0], TYOP [0, 5, 0], TYOP [0, 23, 0],
   TYOP [0, 19, 0], TYOP [0, 25, 0], TYOP [0, 13, 0], TYOP [0, 27, 0],
   TYOP [0, 12, 0], TYOP [0, 29, 0], TYOP [0, 16, 0], TYOP [0, 11, 0],
   TYOP [0, 2, 0], TYOP [0, 33, 0], TYOP [0, 1, 1], TYOP [0, 1, 35],
   TYOP [0, 3, 6], TYOP [0, 5, 37], TYOP [0, 7, 9], TYOP [0, 8, 39],
   TYOP [0, 6, 7], TYOP [0, 1, 41], TYOP [0, 2, 3], TYOP [0, 2, 43],
   TYOP [0, 1, 8], TYOP [0, 10, 0], TYOP [0, 10, 46], TYOP [0, 14, 0],
   TYOP [0, 14, 48], TYOP [0, 20, 0], TYOP [0, 50, 20], TYOP [0, 21, 0],
   TYOP [0, 52, 21], TYOP [0, 15, 15], TYOP [0, 6, 54], TYOP [0, 1, 2],
   TYOP [0, 0, 2], TYOP [0, 15, 1], TYOP [0, 10, 10], TYOP [0, 59, 10],
   TYOP [0, 20, 60], TYOP [0, 14, 14], TYOP [0, 62, 14], TYOP [0, 21, 63],
   TYOP [0, 3, 0], TYOP [0, 5, 65], TYOP [0, 66, 0], TYOP [0, 6, 67],
   TYOP [0, 8, 14], TYOP [0, 69, 0], TYOP [0, 9, 70], TYOP [0, 7, 29],
   TYOP [0, 2, 33], TYOP [0, 73, 0], TYOP [0, 3, 74], TYOP [0, 8, 22],
   TYOP [0, 2, 76]]
  end
  val _ = Theory.incorporate_consts "defCNF" tyvector
     [("UNIQUE_tupled", 10), ("UNIQUE", 13), ("OK_tupled", 14),
      ("OKDEF", 17), ("OK", 12), ("DEF", 18)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("OK_tupled", 14), TMV("P", 19), TMV("P", 13), TMV("P", 12),
   TMV("Q", 0), TMV("R", 19), TMV("R", 20), TMV("R", 21),
   TMV("UNIQUE_tupled", 10), TMV("a", 0), TMV("a'", 9), TMV("a'", 7),
   TMV("b", 0), TMV("b'", 0), TMV("conn", 5), TMV("i", 1), TMV("j", 1),
   TMV("j'", 1), TMV("l", 15), TMV("n", 1), TMV("v", 8), TMV("v", 1),
   TMV("v1", 5), TMV("v1", 1), TMV("v1", 6), TMV("v2", 5), TMV("v2", 7),
   TMV("v2", 2), TMV("v3", 3), TMV("v3", 2), TMV("v4", 6), TMV("v4", 2),
   TMV("v5", 2), TMV("v6", 3), TMV("v7", 2), TMV("v8", 2), TMV("x", 0),
   TMV("x", 8), TMV("x", 1), TMV("x", 6), TMV("x1", 1), TMV("x1", 6),
   TMV("x2", 6), TMV("xs", 15), TMC(6, 22), TMC(6, 24), TMC(6, 26),
   TMC(6, 28), TMC(6, 25), TMC(6, 30), TMC(6, 31), TMC(6, 19), TMC(6, 32),
   TMC(6, 34), TMC(7, 36), TMC(8, 38), TMC(8, 40), TMC(8, 42), TMC(8, 44),
   TMC(9, 5), TMC(10, 45), TMC(11, 5), TMC(11, 47), TMC(11, 49),
   TMC(12, 5), TMC(13, 25), TMC(14, 51), TMC(14, 53), TMC(15, 55),
   TMC(16, 18), TMC(17, 4), TMC(18, 56), TMC(19, 57), TMC(20, 58),
   TMC(21, 15), TMC(22, 12), TMC(23, 17), TMC(24, 14), TMC(25, 55),
   TMC(26, 35), TMC(27, 0), TMC(28, 13), TMC(29, 10), TMC(30, 50),
   TMC(30, 52), TMC(31, 61), TMC(31, 64), TMC(32, 68), TMC(32, 71),
   TMC(32, 72), TMC(32, 75), TMC(33, 77)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op UNIQUE_tupled_primitive_def x = x
    val op UNIQUE_tupled_primitive_def =
    DT(((("defCNF",0),[]),[]),
       [read"%62%82@%85%66%6%83$0@|@@%8%10%88$0@%20%26%89$0@%19%30%87$0@%14%33%90$0@%34%35%91$1@%15%91$1@%16%70%61$9$7@@$5$9$1@@$9$0@@@@|@%12%70%61$9$7@@$5$9$1@@$0@@@|@|@%9%91$1@%17%70%61$9$7@@$5$1@$9$0@@@@|@%13%70%61$9$7@@$5$1@$0@@@|@|@||@||@||@||@||@@"])
  fun op UNIQUE_curried_def x = x
    val op UNIQUE_curried_def =
    DT(((("defCNF",1),[]),[]),
       [read"%48%37%51%40%52%42%61%81$2@$1@$0@@%82%56$2@%57$1@$0@@@@|@|@|@"])
  fun op DEF_def x = x
    val op DEF_def =
    DT(((("defCNF",4),[("list",[13])]),["DISK_THM"]),
       [read"%59%48%20%51%19%61%69$1@$0@%74@@%80@|@|@@%48%20%51%19%52%39%50%43%61%69$3@$2@%68$1@$0@@@%59%81$3@$2@$1@@%69$3@%79$2@@$0@@@|@|@|@|@@"])
  fun op OK_tupled_primitive_def x = x
    val op OK_tupled_primitive_def =
    DT(((("defCNF",5),[]),[]),
       [read"%63%77@%86%67%7%84$0@|@@%0%11%89$0@%19%24%87$0@%14%28%90$0@%31%32%91$1@%15%91$1@%16%70%59%60$1@$7@@%60$0@$7@@@|@%12%70%60$1@$7@@|@|@%9%91$1@%17%70%60$0@$7@@|@%13%70%80@|@|@||@||@||@||@@"])
  fun op OK_curried_def x = x
    val op OK_curried_def =
    DT(((("defCNF",6),[]),[]),
       [read"%51%38%52%41%61%75$1@$0@@%77%57$1@$0@@@|@|@"])
  fun op OKDEF_def x = x
    val op OKDEF_def =
    DT(((("defCNF",9),[("list",[13])]),["DISK_THM"]),
       [read"%59%51%19%61%76$0@%74@@%80@|@@%51%19%52%39%50%43%61%76$2@%68$1@$0@@@%59%75$2@$1@@%76%79$2@@$0@@@|@|@|@@"])
  fun op UNIQUE_ind x = x
    val op UNIQUE_ind =
    DT(((("defCNF",2),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80]),("pair",[5,16]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[14])]),["DISK_THM"]),
       [read"%47%2%64%59%48%20%51%19%45%14%51%15%51%16$5$4@$3@%55$2@%58%71$1@@%71$0@@@@|@|@|@|@|@@%59%48%20%51%19%45%14%51%15%44%12$5$4@$3@%55$2@%58%71$1@@%72$0@@@@|@|@|@|@|@@%59%48%20%51%19%45%14%44%9%51%16$5$4@$3@%55$2@%58%72$1@@%71$0@@@@|@|@|@|@|@@%48%20%51%19%45%14%44%9%44%12$5$4@$3@%55$2@%58%72$1@@%72$0@@@@|@|@|@|@|@@@@@%48%20%51%23%45%25%53%29%53%31$5$4@$3@%55$2@%58$1@$0@@@|@|@|@|@|@@|@"])
  fun op UNIQUE_def x = x
    val op UNIQUE_def =
    DT(((("defCNF",3),
        [("bool",[15,58]),("combin",[19]),("defCNF",[0,1]),("pair",[49]),
         ("relation",[107,126]),("sum",[24])]),["DISK_THM"]),
       [read"%59%61%81%20@%19@%55%14@%58%71%15@@%71%16@@@@@%61%20%19@@%14%20%15@@%20%16@@@@@%59%61%81%20@%19@%55%14@%58%71%15@@%72%12@@@@@%61%20%19@@%14%20%15@@%12@@@@%59%61%81%20@%19@%55%14@%58%72%9@@%71%16@@@@@%61%20%19@@%14%9@%20%16@@@@@%61%81%20@%19@%55%14@%58%72%9@@%72%12@@@@@%61%20%19@@%14%9@%12@@@@@@"])
  fun op OK_ind x = x
    val op OK_ind =
    DT(((("defCNF",7),
        [("bool",[25,26,47,48,53,54,58,63,72,76,77,78,80]),("pair",[5,16]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[14])]),["DISK_THM"]),
       [read"%49%3%64%59%51%19%45%14%51%15%51%16$4$3@%55$2@%58%71$1@@%71$0@@@@|@|@|@|@@%59%51%19%45%14%51%15%44%12$4$3@%55$2@%58%71$1@@%72$0@@@@|@|@|@|@@%59%51%19%45%14%44%9%51%16$4$3@%55$2@%58%72$1@@%71$0@@@@|@|@|@|@@%51%19%45%14%44%9%44%12$4$3@%55$2@%58%72$1@@%72$0@@@@|@|@|@|@@@@@%51%21%45%22%53%27%53%29$4$3@%55$2@%58$1@$0@@@|@|@|@|@@|@"])
  fun op OK_def x = x
    val op OK_def =
    DT(((("defCNF",8),
        [("bool",[15,58]),("combin",[19]),("defCNF",[5,6]),("pair",[49]),
         ("relation",[107,126]),("sum",[24])]),["DISK_THM"]),
       [read"%59%61%75%19@%55%14@%58%71%15@@%71%16@@@@@%59%60%15@%19@@%60%16@%19@@@@%59%61%75%19@%55%14@%58%71%15@@%72%12@@@@@%60%15@%19@@@%59%61%75%19@%55%14@%58%72%9@@%71%16@@@@@%60%16@%19@@@%61%75%19@%55%14@%58%72%9@@%72%12@@@@@%80@@@@"])
  fun op DEF_SNOC x = x
    val op DEF_SNOC =
    DT(((("defCNF",10),
        [("arithmetic",[22,24]),("bool",[14,25,43,51,56]),("defCNF",[4]),
         ("list",[22,43,256])]),["DISK_THM"]),
       [read"%51%19%52%39%50%18%48%20%61%69$0@$3@%78$2@$1@@@%59%69$0@$3@$1@@%81$0@%54$3@%73$1@@@$2@@@|@|@|@|@"])
  fun op OKDEF_SNOC x = x
    val op OKDEF_SNOC =
    DT(((("defCNF",11),
        [("arithmetic",[22,24]),("bool",[14,25,43,51,56]),("defCNF",[9]),
         ("list",[22,43,256])]),["DISK_THM"]),
       [read"%51%19%52%39%50%18%61%76$2@%78$1@$0@@@%59%76$2@$0@@%75%54$2@%73$0@@@$1@@@|@|@|@"])
  fun op CONSISTENCY x = x
    val op CONSISTENCY =
    DT(((("defCNF",12),
        [("arithmetic",[24,25,27,41,46,59,71,91,93,172,173,180]),
         ("bool",
         [14,15,25,26,27,36,37,47,48,51,53,54,56,58,63,71,72,77,80,81,93,
          94,96,101,104,105,124,129,146,147]),("combin",[19]),
         ("defCNF",[0,1,4,5,6,9,10,11]),("list",[22,43,273]),
         ("numeral",[3,5,8]),("pair",[5,49]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[14,24])]),["DISK_THM"]),
       [read"%51%19%50%18%64%76$1@$0@@%65%20%69$0@$2@$1@|@@|@|@"])
  fun op BIGSTEP x = x
    val op BIGSTEP =
    DT(((("defCNF",13),[("bool",[25,26,51,53,63])]),["DISK_THM"]),
       [read"%46%1%44%4%46%5%64%48%20%64$3$0@@%61$2@$1$0@@@|@@%61%59%65%20$3$0@|@@$1@@%65%20%59$3$0@@$1$0@@|@@@|@|@|@"])
  fun op FINAL_DEF x = x
    val op FINAL_DEF =
    DT(((("defCNF",14),
        [("bool",[25,36,51,56]),("defCNF",[4])]),["DISK_THM"]),
       [read"%48%20%51%19%44%36%61%61$2$1@@$0@@%59%61$2$1@@$0@@%69$2@%79$1@@%74@@@|@|@|@"])
  end
  val _ = DB.bindl "defCNF"
  [("UNIQUE_tupled_primitive_def",UNIQUE_tupled_primitive_def,DB.Def),
   ("UNIQUE_curried_def",UNIQUE_curried_def,DB.Def),
   ("DEF_def",DEF_def,DB.Def),
   ("OK_tupled_primitive_def",OK_tupled_primitive_def,DB.Def),
   ("OK_curried_def",OK_curried_def,DB.Def),
   ("OKDEF_def",OKDEF_def,DB.Def), ("UNIQUE_ind",UNIQUE_ind,DB.Thm),
   ("UNIQUE_def",UNIQUE_def,DB.Thm), ("OK_ind",OK_ind,DB.Thm),
   ("OK_def",OK_def,DB.Thm), ("DEF_SNOC",DEF_SNOC,DB.Thm),
   ("OKDEF_SNOC",OKDEF_SNOC,DB.Thm), ("CONSISTENCY",CONSISTENCY,DB.Thm),
   ("BIGSTEP",BIGSTEP,DB.Thm), ("FINAL_DEF",FINAL_DEF,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("rich_listTheory.rich_list_grammars",
                          rich_listTheory.rich_list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIQUE_tupled", (Term.prim_mk_const { Name = "UNIQUE_tupled", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIQUE_tupled", (Term.prim_mk_const { Name = "UNIQUE_tupled", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIQUE", (Term.prim_mk_const { Name = "UNIQUE", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIQUE", (Term.prim_mk_const { Name = "UNIQUE", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DEF", (Term.prim_mk_const { Name = "DEF", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OK_tupled", (Term.prim_mk_const { Name = "OK_tupled", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OK_tupled", (Term.prim_mk_const { Name = "OK_tupled", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OK", (Term.prim_mk_const { Name = "OK", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OK", (Term.prim_mk_const { Name = "OK", Thy = "defCNF"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OKDEF", (Term.prim_mk_const { Name = "OKDEF", Thy = "defCNF"}))
  val _ = update_grms
       (temp_remove_ovl_mapping "OKDEF")
        {Name = "OKDEF", Thy = "defCNF"}
  val _ = update_grms
       (temp_remove_ovl_mapping "DEF")
        {Name = "DEF", Thy = "defCNF"}
  val _ = update_grms
       (temp_remove_ovl_mapping "UNIQUE")
        {Name = "UNIQUE", Thy = "defCNF"}
  val _ = update_grms
       (temp_remove_ovl_mapping "OK")
        {Name = "OK", Thy = "defCNF"}
  val defCNF_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "defCNF",
    thydataty = "compute",
    data =
        "defCNF.UNIQUE_def defCNF.DEF_def defCNF.OKDEF_def defCNF.OK_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "defCNF"
end
