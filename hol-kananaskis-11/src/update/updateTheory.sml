structure updateTheory :> updateTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading updateTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open sortingTheory
  in end;
  val _ = Theory.link_parents
          ("update",
          Arbnum.fromString "1488588628",
          Arbnum.fromString "144435")
          [("sorting",
           Arbnum.fromString "1488586715",
           Arbnum.fromString "45408")];
  val _ = Theory.incorporate_types "update" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("pair", "prod"),
   ID("option", "option"), ID("min", "bool"), ID("bool", "!"),
   ID("pair", ","), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("min", "@"), ID("list", "ALL_DISTINCT"), ID("list", "APPEND"),
   ID("bool", "COND"), ID("list", "CONS"), ID("list", "FILTER"),
   ID("update", "FIND"), ID("pair", "FST"), ID("combin", "I"),
   ID("update", "LIST_UPDATE"), ID("list", "MAP"), ID("list", "NIL"),
   ID("option", "NONE"), ID("update", "OVERRIDE"), ID("sorting", "PERM"),
   ID("sorting", "QSORT"), ID("pair", "SND"), ID("list", "SNOC"),
   ID("option", "SOME"), ID("combin", "UPDATE"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("list", "list_CASE"), ID("combin", "o"),
   ID("option", "option_CASE"), ID("pair", "pair_CASE"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYV "'a", TYOP [2, 1, 0], TYOP [1, 2], TYOP [0, 3, 3],
   TYOP [0, 1, 0], TYOP [0, 5, 5], TYOP [0, 3, 6], TYOP [3, 1],
   TYOP [1, 1], TYOP [0, 9, 8], TYOP [4], TYOP [0, 1, 11],
   TYOP [0, 12, 10], TYOP [0, 3, 11], TYOP [0, 3, 14], TYOP [0, 2, 11],
   TYOP [0, 2, 16], TYV "'c", TYV "'d", TYOP [0, 18, 19], TYV "'f",
   TYV "'e", TYOP [0, 22, 21], TYV "'h", TYV "'g", TYOP [0, 25, 24],
   TYOP [2, 18, 19], TYOP [1, 27], TYOP [2, 22, 21], TYOP [1, 29],
   TYOP [2, 25, 24], TYOP [1, 31], TYOP [0, 12, 11], TYOP [0, 0, 11],
   TYOP [0, 34, 11], TYOP [0, 18, 11], TYOP [0, 36, 11], TYOP [0, 19, 11],
   TYOP [0, 38, 11], TYOP [0, 22, 11], TYOP [0, 40, 11], TYOP [0, 21, 11],
   TYOP [0, 42, 11], TYOP [0, 25, 11], TYOP [0, 44, 11], TYOP [0, 24, 11],
   TYOP [0, 46, 11], TYOP [0, 5, 11], TYOP [0, 48, 11], TYOP [0, 33, 11],
   TYOP [0, 23, 11], TYOP [0, 51, 11], TYOP [0, 26, 11], TYOP [0, 53, 11],
   TYOP [0, 14, 11], TYOP [0, 55, 11], TYOP [0, 17, 11], TYOP [0, 57, 11],
   TYOP [0, 9, 11], TYOP [0, 59, 11], TYOP [0, 28, 11], TYOP [0, 61, 11],
   TYOP [0, 30, 11], TYOP [0, 63, 11], TYOP [0, 32, 11], TYOP [0, 65, 11],
   TYOP [0, 16, 11], TYOP [0, 0, 2], TYOP [0, 1, 68], TYOP [0, 19, 27],
   TYOP [0, 18, 70], TYOP [0, 21, 29], TYOP [0, 22, 72], TYOP [0, 24, 31],
   TYOP [0, 25, 74], TYOP [0, 11, 11], TYOP [0, 11, 76], TYOP [0, 1, 12],
   TYOP [0, 0, 34], TYOP [0, 19, 38], TYOP [0, 5, 48], TYOP [0, 20, 11],
   TYOP [0, 20, 82], TYOP [0, 23, 51], TYOP [0, 26, 53], TYOP [0, 6, 11],
   TYOP [0, 6, 86], TYOP [0, 20, 20], TYOP [0, 88, 11], TYOP [0, 88, 89],
   TYOP [0, 4, 11], TYOP [0, 4, 91], TYOP [0, 8, 11], TYOP [0, 8, 93],
   TYOP [0, 15, 11], TYOP [0, 95, 15], TYOP [0, 3, 4], TYOP [0, 30, 30],
   TYOP [0, 30, 98], TYOP [0, 0, 0], TYOP [0, 0, 100], TYOP [0, 11, 101],
   TYOP [0, 8, 8], TYOP [0, 8, 103], TYOP [0, 11, 104], TYOP [0, 9, 9],
   TYOP [0, 1, 106], TYOP [0, 2, 4], TYOP [0, 28, 28], TYOP [0, 27, 109],
   TYOP [0, 29, 98], TYOP [0, 32, 32], TYOP [0, 31, 112], TYOP [0, 16, 4],
   TYOP [3, 2], TYOP [0, 3, 115], TYOP [0, 16, 116], TYOP [0, 2, 1],
   TYOP [0, 28, 88], TYOP [0, 23, 23], TYOP [0, 30, 120], TYOP [0, 26, 26],
   TYOP [0, 32, 122], TYOP [0, 3, 9], TYOP [0, 118, 124], TYOP [0, 17, 4],
   TYOP [0, 2, 0], TYOP [0, 1, 8], TYOP [0, 0, 6], TYOP [0, 1, 129],
   TYOP [0, 19, 88], TYOP [0, 18, 131], TYOP [0, 21, 120],
   TYOP [0, 22, 133], TYOP [0, 24, 122], TYOP [0, 25, 135], TYOP [0, 4, 4],
   TYOP [0, 137, 4], TYOP [0, 15, 138], TYOP [0, 108, 3], TYOP [0, 3, 140],
   TYOP [0, 3, 141], TYOP [0, 6, 6], TYOP [0, 6, 143], TYOP [0, 88, 88],
   TYOP [0, 88, 145], TYOP [0, 127, 0], TYOP [0, 0, 147],
   TYOP [0, 115, 148], TYOP [0, 1, 100], TYOP [0, 150, 0],
   TYOP [0, 2, 151]]
  end
  val _ = Theory.incorporate_consts "update" tyvector
     [("OVERRIDE", 4), ("LIST_UPDATE", 7), ("FIND", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("OVERRIDE", 4), TMV("P", 12), TMV("P", 14), TMV("R", 15),
   TMV("R", 17), TMV("a", 1), TMV("a", 18), TMV("a", 3), TMV("b", 1),
   TMV("b", 0), TMV("b", 19), TMV("c", 1), TMV("c", 0), TMV("c", 19),
   TMV("d", 0), TMV("e", 0), TMV("f", 5), TMV("f", 20), TMV("f", 23),
   TMV("f", 26), TMV("f1", 1), TMV("f2", 0), TMV("h", 1), TMV("h", 2),
   TMV("i", 1), TMV("l", 18), TMV("l", 25), TMV("l", 3), TMV("l1", 1),
   TMV("l1", 22), TMV("l1", 3), TMV("l1", 28), TMV("l1", 30),
   TMV("l1", 32), TMV("l2", 1), TMV("l2", 18), TMV("l2", 22),
   TMV("l2", 25), TMV("l2", 3), TMV("l2", 30), TMV("r", 19), TMV("r", 24),
   TMV("r1", 0), TMV("r1", 21), TMV("r2", 0), TMV("r2", 21), TMV("t", 9),
   TMV("t", 3), TMV("t", 28), TMV("t", 32), TMV("v", 3), TMV("v", 2),
   TMV("v1", 1), TMV("x", 2), TMV("y", 2), TMC(5, 33), TMC(5, 35),
   TMC(5, 37), TMC(5, 39), TMC(5, 41), TMC(5, 43), TMC(5, 45), TMC(5, 47),
   TMC(5, 49), TMC(5, 50), TMC(5, 52), TMC(5, 54), TMC(5, 56), TMC(5, 58),
   TMC(5, 60), TMC(5, 55), TMC(5, 62), TMC(5, 64), TMC(5, 66), TMC(5, 67),
   TMC(6, 69), TMC(6, 71), TMC(6, 73), TMC(6, 75), TMC(7, 77), TMC(8, 78),
   TMC(8, 79), TMC(8, 80), TMC(8, 77), TMC(8, 81), TMC(8, 83), TMC(8, 84),
   TMC(8, 85), TMC(8, 87), TMC(8, 90), TMC(8, 92), TMC(8, 15), TMC(8, 94),
   TMC(9, 77), TMC(10, 96), TMC(11, 59), TMC(12, 97), TMC(12, 99),
   TMC(13, 102), TMC(13, 105), TMC(14, 107), TMC(14, 108), TMC(14, 110),
   TMC(14, 111), TMC(14, 113), TMC(15, 114), TMC(16, 13), TMC(16, 117),
   TMC(17, 118), TMC(18, 6), TMC(18, 4), TMC(19, 7), TMC(19, 119),
   TMC(19, 121), TMC(19, 123), TMC(20, 125), TMC(21, 9), TMC(21, 3),
   TMC(21, 30), TMC(22, 8), TMC(23, 4), TMC(24, 15), TMC(25, 126),
   TMC(26, 127), TMC(27, 110), TMC(27, 113), TMC(28, 128), TMC(29, 130),
   TMC(29, 132), TMC(29, 134), TMC(29, 136), TMC(30, 95), TMC(31, 139),
   TMC(32, 142), TMC(33, 144), TMC(33, 146), TMC(34, 149), TMC(35, 152),
   TMC(36, 76)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op FIND_def x = x
    val op FIND_def =
    DT(((("update",0),[("list",[13])]),["DISK_THM"]),
       [read"%79%64%1%92%106$0@%116@@%119@|@@%64%1%55%22%69%46%92%106$2@%100$1@$0@@@%99$2$1@@%126$1@@%106$2@$0@@@|@|@|@@"])
  fun op OVERRIDE_primitive_def x = x
    val op OVERRIDE_primitive_def =
    DT(((("update",1),[]),[]),
       [read"%90%120@%132%94%3%79%131$0@@%70%47%74%53$2%105%54%138%80%108$1@@%108$0@@@|@$1@@%101$0@$1@@|@|@@|@@%0%7%133$0@%110%117@@%53%47%110%101$1@$3%105%54%138%80%108$2@@%108$0@@@|@$0@@@@||@||@@"])
  fun op LIST_UPDATE_def x = x
    val op LIST_UPDATE_def =
    DT(((("update",4),[("list",[13])]),["DISK_THM"]),
       [read"%79%88%111%117@@%109@@%74%23%70%47%88%111%101$1@$0@@@%134%127%108$1@@%123$1@@@%111$0@@@|@|@@"])
  fun op OVERRIDE_ind x = x
    val op OVERRIDE_ind =
    DT(((("update",2),
        [("arithmetic",[24,25,46,59,71,93,173,180]),
         ("bool",[15,25,27,36,53,54,63,96,101,104,105]),("combin",[19]),
         ("list",[6,22,46]),("numeral",[3,8]),("pair",[8,25]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("rich_list",[49]),("sat",[1,3,5,6,7,11,15]),
         ("update",[1])]),["DISK_THM"]),
       [read"%67%2%93%79$0%117@@%74%53%70%47%93$2%105%54%138%80%108$2@@%108$0@@@|@$0@@@$2%101$1@$0@@@|@|@@@%70%50$1$0@|@@|@"])
  fun op OVERRIDE_def x = x
    val op OVERRIDE_def =
    DT(((("update",3),
        [("arithmetic",[24,25,46,59,71,93,173,180]),
         ("bool",[15,25,27,36,53,54,63,96,101,104,105]),("combin",[19]),
         ("list",[6,22,46]),("numeral",[3,8]),("pair",[8,25]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("rich_list",[49]),("sat",[1,3,5,6,7,11,15]),
         ("update",[1])]),["DISK_THM"]),
       [read"%79%91%120%117@@%117@@%74%53%70%47%91%120%101$1@$0@@@%101$1@%120%105%54%138%80%108$2@@%108$0@@@|@$0@@@@|@|@@"])
  fun op LIST_UPDATE_LOOKUP x = x
    val op LIST_UPDATE_LOOKUP =
    DT(((("update",5),
        [("bool",[14,25,26,27,30,56,58,63,64,105,129,147]),
         ("combin",[7,8,19]),("list",[43]),("option",[7]),
         ("pair",[5,9,49]),("update",[0,4])]),["DISK_THM"]),
       [read"%70%27%63%16%55%24%81%111$2@$1@$0@@%136%107%53%80%108$0@@$1@|@$2@@$1$0@@%51%137$0@%52%15$0||@|@@|@|@|@"])
  fun op LIST_UPDATE_OVERRIDE x = x
    val op LIST_UPDATE_OVERRIDE =
    DT(((("update",6),
        [("arithmetic",[24,25,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,30,36,48,51,53,54,56,58,60,63,64,96,101,104,105,
          124,129,147]),("combin",[7,8,19]),("list",[6,20,22,27,43,46,48]),
         ("numeral",[3,8]),("option",[10]),("pair",[8,25]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("rich_list",[49,50,179]),
         ("sat",[1,3,5,6,7,11,14,15,17,18,19,20,23]),
         ("update",[0,1,4,5])]),["DISK_THM"]),
       [read"%70%27%88%111$0@@%111%120$0@@@|@"])
  fun op LIST_UPDATE_ALL_DISTINCT x = x
    val op LIST_UPDATE_ALL_DISTINCT =
    DT(((("update",7),
        [("bool",
         [14,25,26,27,30,36,51,53,54,55,56,58,60,63,64,96,99,105,124,129,
          147]),("combin",[0,3,5,19]),("list",[20,23,25,43,58,81,215]),
         ("option",[10]),("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sorting",[5,9,11,24,67]),("update",[0,5])]),["DISK_THM"]),
       [read"%70%30%70%38%93%79%95%115%108@$0@@@%121$1@$0@@@%88%111$1@@%111$0@@@|@|@"])
  fun op LIST_UPDATE_SORT_OVERRIDE x = x
    val op LIST_UPDATE_SORT_OVERRIDE =
    DT(((("update",8),
        [("arithmetic",[24,25,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,30,36,48,51,53,54,56,58,60,63,64,96,100,101,104,
          105,124,129]),("combin",[8,19]),
         ("list",[6,20,22,23,27,43,46,48,82,215,217]),("numeral",[3,8]),
         ("pair",[8,25]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("rich_list",[48,49,50,179]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sorting",[44,64,67]),("update",[1,6,7])]),["DISK_THM"]),
       [read"%68%4%70%27%88%111$0@@%111%122$1@%120$0@@@@|@|@"])
  fun op LIST_UPDATE_THMS x = x
    val op LIST_UPDATE_THMS =
    DT(((("update",9),
        [("bool",[14,25,56,58]),("combin",[8,9,19,20]),
         ("list",[20,43,256]),("pair",[8,9]),
         ("update",[4])]),["DISK_THM"]),
       [read"%79%79%55%28%55%34%56%42%56%44%88%134%127$3@$1@@%127$2@$0@@@%111%101%75$3@$1@@%101%75$2@$0@@%117@@@@|@|@|@|@@%79%57%25%58%40%71%48%89%135%128$2@$1@@%112$0@@@%112%102%76$2@$1@@$0@@@|@|@|@@%79%59%29%59%36%60%43%60%45%65%18%86%129$4@$2@%129$3@$1@$0@@@%113%103%77$4@$2@@%103%77$3@$1@@%118@@@$0@@|@|@|@|@|@@%61%26%62%41%73%49%66%19%87%130$3@$2@%114$1@$0@@@%114%104%78$3@$2@@$1@@$0@@|@|@|@|@@@@@%79%70%30%70%38%88%134%111$1@@%111$0@@@%111%96$1@$0@@@|@|@@%79%71%31%57%35%58%40%89%135%112$2@@%128$1@$0@@@%112%124%76$1@$0@@$2@@@|@|@|@@%79%72%32%72%39%65%18%86%113$2@%113$1@$0@@@%113%97$2@$1@@$0@@|@|@|@@%73%33%61%37%62%41%66%19%87%114$3@%130$2@$1@$0@@@%114%125%78$2@$1@@$3@@$0@@|@|@|@|@@@@@"])
  fun op APPLY_UPDATE_ID x = x
    val op APPLY_UPDATE_ID =
    DT(((("update",10),[("combin",[28])]),["DISK_THM"]),
       [read"%63%16%55%5%84%127$0@$1$0@@$1@@$1@|@|@"])
  fun op APPLY_UPDATE_THM x = x
    val op APPLY_UPDATE_THM =
    DT(((("update",11),[("combin",[23])]),["DISK_THM"]),
       [read"%63%16%55%5%56%9%55%11%81%127$2@$1@$3@$0@@%98%80$2@$0@@$1@$3$0@@@|@|@|@|@"])
  fun op SAME_KEY_UPDATE_DIFFER x = x
    val op SAME_KEY_UPDATE_DIFFER =
    DT(((("update",12),[("combin",[30])]),["DISK_THM"]),
       [read"%55%20%56%21%57%6%58%10%58%13%93%138%82$1@$0@@@%138%85%128$2@$1@%17@@%128$2@$0@%17@@@@|@|@|@|@|@"])
  fun op UPDATE_APPLY_ID x = x
    val op UPDATE_APPLY_ID =
    DT(((("update",13),[("combin",[26])]),["DISK_THM"]),
       [read"%63%16%55%5%56%9%83%81$2$1@@$0@@%84%127$1@$0@$2@@$2@@|@|@|@"])
  fun op UPDATE_APPLY_IMP_ID x = x
    val op UPDATE_APPLY_IMP_ID =
    DT(((("update",14),[("combin",[27])]),["DISK_THM"]),
       [read"%63%16%56%9%55%5%93%81$2$0@@$1@@%84%127$0@$1@$2@@$2@@|@|@|@"])
  fun op UPDATE_COMMUTES x = x
    val op UPDATE_COMMUTES =
    DT(((("update",15),[("combin",[24])]),["DISK_THM"]),
       [read"%63%16%55%5%55%8%56%12%56%14%93%138%80$3@$2@@@%84%127$3@$1@%127$2@$0@$4@@@%127$2@$0@%127$3@$1@$4@@@@|@|@|@|@|@"])
  fun op UPDATE_EQ x = x
    val op UPDATE_EQ =
    DT(((("update",16),[("combin",[25])]),["DISK_THM"]),
       [read"%63%16%55%5%56%9%56%12%84%127$2@$0@%127$2@$1@$3@@@%127$2@$0@$3@@|@|@|@|@"])
  fun op UPDATE_def x = x
    val op UPDATE_def =
    DT(((("update",17),[("combin",[7])]),["DISK_THM"]),
       [read"%55%5%56%9%88%127$1@$0@@%16%11%98%80$3@$0@@$2@$1$0@@||@|@|@"])
  end
  val _ = DB.bindl "update"
  [("FIND_def",FIND_def,DB.Def),
   ("OVERRIDE_primitive_def",OVERRIDE_primitive_def,DB.Def),
   ("LIST_UPDATE_def",LIST_UPDATE_def,DB.Def),
   ("OVERRIDE_ind",OVERRIDE_ind,DB.Thm),
   ("OVERRIDE_def",OVERRIDE_def,DB.Thm),
   ("LIST_UPDATE_LOOKUP",LIST_UPDATE_LOOKUP,DB.Thm),
   ("LIST_UPDATE_OVERRIDE",LIST_UPDATE_OVERRIDE,DB.Thm),
   ("LIST_UPDATE_ALL_DISTINCT",LIST_UPDATE_ALL_DISTINCT,DB.Thm),
   ("LIST_UPDATE_SORT_OVERRIDE",LIST_UPDATE_SORT_OVERRIDE,DB.Thm),
   ("LIST_UPDATE_THMS",LIST_UPDATE_THMS,DB.Thm),
   ("APPLY_UPDATE_ID",APPLY_UPDATE_ID,DB.Thm),
   ("APPLY_UPDATE_THM",APPLY_UPDATE_THM,DB.Thm),
   ("SAME_KEY_UPDATE_DIFFER",SAME_KEY_UPDATE_DIFFER,DB.Thm),
   ("UPDATE_APPLY_ID",UPDATE_APPLY_ID,DB.Thm),
   ("UPDATE_APPLY_IMP_ID",UPDATE_APPLY_IMP_ID,DB.Thm),
   ("UPDATE_COMMUTES",UPDATE_COMMUTES,DB.Thm),
   ("UPDATE_EQ",UPDATE_EQ,DB.Thm), ("UPDATE_def",UPDATE_def,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("sortingTheory.sorting_grammars",
                          sortingTheory.sorting_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIND", (Term.prim_mk_const { Name = "FIND", Thy = "update"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OVERRIDE", (Term.prim_mk_const { Name = "OVERRIDE", Thy = "update"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OVERRIDE", (Term.prim_mk_const { Name = "OVERRIDE", Thy = "update"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_UPDATE", (Term.prim_mk_const { Name = "LIST_UPDATE", Thy = "update"}))
  val update_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "update",
    thydataty = "compute",
    data = "update.FIND_def update.LIST_UPDATE_def update.OVERRIDE_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "update"
end
