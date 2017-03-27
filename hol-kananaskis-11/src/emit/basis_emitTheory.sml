structure basis_emitTheory :> basis_emitTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading basis_emitTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open finite_mapTheory integer_wordTheory
  in end;
  val _ = Theory.link_parents
          ("basis_emit",
          Arbnum.fromString "1488588643",
          Arbnum.fromString "560092")
          [("integer_word",
           Arbnum.fromString "1488587807",
           Arbnum.fromString "916419"),
           ("finite_map",
           Arbnum.fromString "1488586927",
           Arbnum.fromString "430131")];
  val _ = Theory.incorporate_types "basis_emit" [("set", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("num", "num"),
   ID("fcp", "cart"), ID("bool", "itself"), ID("integer", "int"),
   ID("pair", "prod"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("arithmetic", "BIT1"), ID("bool", "COND"), ID("pred_set", "EMPTY"),
   ID("arithmetic", "EXP"), ID("basis_emit", "EXPi"), ID("bool", "F"),
   ID("fcp", "FCP"), ID("basis_emit", "FCPi"), ID("combin", "I"),
   ID("basis_emit", "IS_EMPTY"), ID("basis_emit", "ITSELF"),
   ID("arithmetic", "MOD"), ID("basis_emit", "MULi"),
   ID("arithmetic", "NUMERAL"), ID("basis_emit", "SUMi"), ID("bool", "T"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("fcp", "dimindex"), ID("words", "dimword"), ID("fcp", "fcp_index"),
   ID("basis_emit", "fromNum"), ID("integer_word", "i2w"),
   ID("basis_emit", "i2w_itself"), ID("integer", "int_neg"),
   ID("integer", "int_of_num"), ID("basis_emit", "mk_fcp"),
   ID("words", "n2w_itself"), ID("basis_emit", "neg_int_of_num"),
   ID("pair", "pair_CASE"), ID("words", "sw2sw"),
   ID("basis_emit", "sw2sw_itself"), ID("bool", "the_value"),
   ID("words", "w2w"), ID("basis_emit", "w2w_itself"),
   ID("words", "word_concat"), ID("basis_emit", "word_concat_itself"),
   ID("basis_emit", "word_eq"), ID("words", "word_extract"),
   ID("basis_emit", "word_extract_itself"), ID("basis_emit", "word_index")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [3, 0, 3],
   TYOP [0, 4, 2], TYV "'b", TYOP [3, 0, 6], TYOP [0, 7, 4],
   TYOP [0, 1, 8], TYOP [0, 1, 9], TYOP [4, 3], TYOP [0, 11, 10],
   TYOP [0, 4, 0], TYOP [0, 4, 13], TYV "'c", TYOP [3, 0, 15],
   TYOP [0, 16, 4], TYOP [0, 7, 17], TYOP [0, 11, 18], TYOP [0, 11, 8],
   TYOP [5], TYOP [0, 1, 21], TYOP [3, 3, 6], TYOP [4, 6], TYOP [0, 1, 3],
   TYOP [6, 25, 24], TYOP [0, 26, 23], TYOP [6, 21, 11], TYOP [0, 28, 4],
   TYOP [6, 1, 11], TYOP [0, 30, 4], TYOP [4, 15], TYOP [6, 11, 24],
   TYOP [0, 33, 32], TYOP [0, 1, 11], TYOP [0, 3, 0], TYOP [0, 36, 0],
   TYOP [0, 26, 0], TYOP [0, 28, 0], TYOP [0, 30, 0], TYOP [0, 26, 38],
   TYOP [0, 28, 39], TYOP [0, 30, 40], TYOP [0, 13, 0], TYOP [0, 7, 0],
   TYOP [0, 45, 0], TYOP [0, 16, 0], TYOP [0, 47, 0], TYOP [0, 37, 0],
   TYOP [0, 25, 0], TYOP [0, 50, 0], TYOP [0, 38, 0], TYOP [0, 52, 0],
   TYOP [0, 39, 0], TYOP [0, 54, 0], TYOP [0, 40, 0], TYOP [0, 56, 0],
   TYOP [0, 21, 0], TYOP [0, 58, 0], TYOP [0, 11, 0], TYOP [0, 60, 0],
   TYOP [0, 24, 0], TYOP [0, 62, 0], TYOP [0, 2, 0], TYOP [0, 1, 1],
   TYOP [0, 1, 65], TYOP [0, 24, 26], TYOP [0, 25, 67], TYOP [0, 11, 28],
   TYOP [0, 21, 69], TYOP [6, 24, 32], TYOP [0, 32, 71], TYOP [0, 24, 72],
   TYOP [0, 11, 30], TYOP [0, 1, 74], TYOP [0, 0, 0], TYOP [0, 0, 76],
   TYOP [0, 23, 0], TYOP [0, 23, 78], TYOP [0, 36, 37], TYOP [0, 27, 0],
   TYOP [0, 27, 81], TYOP [0, 29, 0], TYOP [0, 29, 83], TYOP [0, 31, 0],
   TYOP [0, 31, 85], TYOP [0, 21, 58], TYOP [0, 11, 60], TYOP [0, 1, 2],
   TYOP [0, 41, 0], TYOP [0, 90, 41], TYOP [0, 42, 0], TYOP [0, 92, 42],
   TYOP [0, 43, 0], TYOP [0, 94, 43], TYOP [0, 0, 77], TYOP [0, 71, 11],
   TYOP [0, 25, 23], TYOP [0, 23, 23], TYOP [0, 4, 4], TYOP [0, 1, 24],
   TYOP [0, 1, 32], TYOP [0, 27, 27], TYOP [0, 103, 27], TYOP [0, 41, 104],
   TYOP [0, 29, 29], TYOP [0, 106, 29], TYOP [0, 42, 107],
   TYOP [0, 31, 31], TYOP [0, 109, 31], TYOP [0, 43, 110], TYOP [0, 11, 1],
   TYOP [0, 21, 4], TYOP [0, 21, 21], TYOP [0, 24, 23], TYOP [0, 25, 115],
   TYOP [0, 116, 23], TYOP [0, 26, 117], TYOP [0, 11, 4],
   TYOP [0, 21, 119], TYOP [0, 120, 4], TYOP [0, 28, 121],
   TYOP [0, 1, 119], TYOP [0, 123, 4], TYOP [0, 30, 124]]
  end
  val _ = Theory.incorporate_consts "basis_emit" tyvector
     [("word_index", 5), ("word_extract_itself", 12), ("word_eq", 14),
      ("word_concat_itself", 19), ("w2w_itself", 20), ("sw2sw_itself", 20),
      ("neg_int_of_num", 22), ("mk_fcp", 27), ("i2w_itself", 29),
      ("fromNum", 31), ("SUMi", 34), ("MULi", 34), ("ITSELF", 35),
      ("IS_EMPTY", 37), ("FCPi", 27), ("EXPi", 34)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("FCPi", 27), TMV("P", 38), TMV("P", 39), TMV("P", 40), TMV("R", 41),
   TMV("R", 42), TMV("R", 43), TMV("a", 1), TMV("a", 26), TMV("a", 28),
   TMV("a", 30), TMV("b", 1), TMV("f", 25), TMV("fromNum", 31),
   TMV("h", 1), TMV("i", 21), TMV("i2w_itself", 29), TMV("l", 1),
   TMV("n", 1), TMV("s", 36), TMV("v", 4), TMV("v", 7), TMV("v", 25),
   TMV("v", 21), TMV("v", 1), TMV("v1", 11), TMV("v1", 24), TMV("w", 4),
   TMV("w", 7), TMV("w", 16), TMC(7, 44), TMC(7, 46), TMC(7, 48),
   TMC(7, 49), TMC(7, 51), TMC(7, 53), TMC(7, 55), TMC(7, 57), TMC(7, 59),
   TMC(7, 61), TMC(7, 63), TMC(7, 64), TMC(8, 66), TMC(9, 66), TMC(10, 68),
   TMC(10, 70), TMC(10, 73), TMC(10, 75), TMC(11, 77), TMC(12, 77),
   TMC(12, 79), TMC(12, 14), TMC(12, 80), TMC(12, 82), TMC(12, 84),
   TMC(12, 86), TMC(12, 87), TMC(12, 88), TMC(12, 89), TMC(13, 77),
   TMC(14, 91), TMC(14, 93), TMC(14, 95), TMC(15, 65), TMC(16, 96),
   TMC(17, 36), TMC(18, 66), TMC(19, 97), TMC(20, 0), TMC(21, 98),
   TMC(22, 27), TMC(23, 99), TMC(23, 100), TMC(24, 37), TMC(25, 35),
   TMC(25, 101), TMC(25, 102), TMC(26, 66), TMC(27, 97), TMC(28, 65),
   TMC(29, 97), TMC(30, 0), TMC(31, 90), TMC(31, 92), TMC(31, 94),
   TMC(32, 105), TMC(32, 108), TMC(32, 111), TMC(33, 1), TMC(34, 112),
   TMC(35, 112), TMC(36, 5), TMC(37, 31), TMC(38, 113), TMC(39, 29),
   TMC(40, 114), TMC(41, 22), TMC(42, 27), TMC(43, 31), TMC(44, 22),
   TMC(45, 118), TMC(45, 122), TMC(45, 125), TMC(46, 8), TMC(47, 20),
   TMC(48, 11), TMC(48, 24), TMC(49, 8), TMC(50, 20), TMC(51, 18),
   TMC(52, 19), TMC(53, 14), TMC(54, 10), TMC(55, 12), TMC(56, 5)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op SUMi x = x
    val op SUMi =
    DT(((("basis_emit",6),[]),[]),
       [read"%57%80%46%75%7@@%76%11@@@@%74%43%7@%11@@@"])
  fun op MULi x = x
    val op MULi =
    DT(((("basis_emit",7),[]),[]),
       [read"%57%78%46%75%7@@%76%11@@@@%74%42%7@%11@@@"])
  fun op EXPi x = x
    val op EXPi =
    DT(((("basis_emit",8),[]),[]),
       [read"%57%67%46%75%7@@%76%11@@@@%74%66%7@%11@@@"])
  fun op dimindexi x = x
    val op dimindexi =
    DT(((("basis_emit",9),[]),[]), [read"%58%89%74%7@@@%7@"])
  fun op IS_EMPTY_def x = x
    val op IS_EMPTY_def =
    DT(((("basis_emit",0),[]),[]),
       [read"%33%19%49%73$0@@%64%52$0@%65@@%81@%68@@|@"])
  fun op FCPi_primitive_def x = x
    val op FCPi_primitive_def =
    DT(((("basis_emit",2),[]),[]),
       [read"%53%70@%85%60%4%82$0@|@@%0%8%100$0@%12%26%71%69$1@@||@||@@"])
  fun op mk_fcp_def x = x
    val op mk_fcp_def = DT(((("basis_emit",5),[]),[]), [read"%53%97@%70@"])
  fun op word_index_def x = x
    val op word_index_def =
    DT(((("basis_emit",10),[]),[]),
       [read"%30%27%41%18%49%114$1@$0@@%91$1@$0@@|@|@"])
  fun op w2w_itself_def x = x
    val op w2w_itself_def =
    DT(((("basis_emit",11),[("bool",[175])]),["DISK_THM"]),
       [read"%31%28%51%108%105@$0@@%107$0@@|@"])
  fun op sw2sw_itself_def x = x
    val op sw2sw_itself_def =
    DT(((("basis_emit",12),[("bool",[175])]),["DISK_THM"]),
       [read"%31%28%51%104%105@$0@@%103$0@@|@"])
  fun op word_eq_def x = x
    val op word_eq_def =
    DT(((("basis_emit",13),[]),[]),
       [read"%30%20%30%27%49%111$1@$0@@%51$1@$0@@|@|@"])
  fun op word_extract_itself_def x = x
    val op word_extract_itself_def =
    DT(((("basis_emit",14),[("bool",[175])]),["DISK_THM"]),
       [read"%41%14%41%17%31%28%51%113%105@$2@$1@$0@@%112$2@$1@$0@@|@|@|@"])
  fun op word_concat_itself_def x = x
    val op word_concat_itself_def =
    DT(((("basis_emit",15),[("bool",[175])]),["DISK_THM"]),
       [read"%31%21%32%29%51%110%105@$1@$0@@%109$1@$0@@|@|@"])
  fun op fromNum_primitive_def x = x
    val op fromNum_primitive_def =
    DT(((("basis_emit",16),[]),[]),
       [read"%55%92@%87%62%6%84$0@|@@%13%10%102$0@%18%25%72%98%47%77$1@%90%105@@@%105@@@||@||@@"])
  fun op neg_int_of_num_def x = x
    val op neg_int_of_num_def =
    DT(((("basis_emit",19),[]),[]),
       [read"%41%18%56%99$0@@%95%96%43$0@%79%63%88@@@@@@|@"])
  fun op i2w_itself_primitive_def x = x
    val op i2w_itself_primitive_def =
    DT(((("basis_emit",20),[]),[]),
       [read"%54%94@%86%61%5%83$0@|@@%16%9%101$0@%15%25%72%93$1@@||@||@@"])
  fun op IS_EMPTY_REWRITE x = x
    val op IS_EMPTY_REWRITE =
    DT(((("basis_emit",1),
        [("basis_emit",[0]),
         ("bool",
         [5,25,26,27,30,51,52,53,54,56,58,63,64,105,106,
          124])]),["DISK_THM"]),
       [read"%48%49%52%19@%65@@%73%19@@@%49%52%65@%19@@%73%19@@@"])
  fun op FCPi_ind x = x
    val op FCPi_ind =
    DT(((("basis_emit",3),
        [("bool",[25,27,53,54,63,176]),("pair",[5]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%35%1%59%34%12$1%44$0@%106@@|@@%34%22%40%26$2%44$1@$0@@|@|@@|@"])
  fun op FCPi_def x = x
    val op FCPi_def =
    DT(((("basis_emit",4),
        [("basis_emit",[2]),("bool",[15]),("combin",[19]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%50%70%44%12@%106@@@%69%12@@"])
  fun op fromNum_ind x = x
    val op fromNum_ind =
    DT(((("basis_emit",17),
        [("bool",[25,27,53,54,63,176]),("pair",[5]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%37%3%59%41%18$1%47$0@%105@@|@@%41%24%39%25$2%47$1@$0@@|@|@@|@"])
  fun op fromNum_def x = x
    val op fromNum_def =
    DT(((("basis_emit",18),
        [("basis_emit",[16]),("bool",[15]),("combin",[19]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%51%92%47%18@%105@@@%98%47%77%18@%90%105@@@%105@@@"])
  fun op i2w_itself_ind x = x
    val op i2w_itself_ind =
    DT(((("basis_emit",21),
        [("bool",[25,27,53,54,63,176]),("pair",[5]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%36%2%59%38%15$1%45$0@%105@@|@@%38%23%39%25$2%45$1@$0@@|@|@@|@"])
  fun op i2w_itself_def x = x
    val op i2w_itself_def =
    DT(((("basis_emit",22),
        [("basis_emit",[20]),("bool",[15]),("combin",[19]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%51%94%45%15@%105@@@%93%15@@"])
  end
  val _ = DB.bindl "basis_emit"
  [("SUMi",SUMi,DB.Axm), ("MULi",MULi,DB.Axm), ("EXPi",EXPi,DB.Axm),
   ("dimindexi",dimindexi,DB.Axm), ("IS_EMPTY_def",IS_EMPTY_def,DB.Def),
   ("FCPi_primitive_def",FCPi_primitive_def,DB.Def),
   ("mk_fcp_def",mk_fcp_def,DB.Def),
   ("word_index_def",word_index_def,DB.Def),
   ("w2w_itself_def",w2w_itself_def,DB.Def),
   ("sw2sw_itself_def",sw2sw_itself_def,DB.Def),
   ("word_eq_def",word_eq_def,DB.Def),
   ("word_extract_itself_def",word_extract_itself_def,DB.Def),
   ("word_concat_itself_def",word_concat_itself_def,DB.Def),
   ("fromNum_primitive_def",fromNum_primitive_def,DB.Def),
   ("neg_int_of_num_def",neg_int_of_num_def,DB.Def),
   ("i2w_itself_primitive_def",i2w_itself_primitive_def,DB.Def),
   ("IS_EMPTY_REWRITE",IS_EMPTY_REWRITE,DB.Thm),
   ("FCPi_ind",FCPi_ind,DB.Thm), ("FCPi_def",FCPi_def,DB.Thm),
   ("fromNum_ind",fromNum_ind,DB.Thm), ("fromNum_def",fromNum_def,DB.Thm),
   ("i2w_itself_ind",i2w_itself_ind,DB.Thm),
   ("i2w_itself_def",i2w_itself_def,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("integer_wordTheory.integer_word_grammars",
                          integer_wordTheory.integer_word_grammars),
                         ("finite_mapTheory.finite_map_grammars",
                          finite_mapTheory.finite_map_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "set"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_EMPTY", (Term.prim_mk_const { Name = "IS_EMPTY", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_EMPTY", (Term.prim_mk_const { Name = "IS_EMPTY", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCPi", (Term.prim_mk_const { Name = "FCPi", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCPi", (Term.prim_mk_const { Name = "FCPi", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mk_fcp", (Term.prim_mk_const { Name = "mk_fcp", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mk_fcp", (Term.prim_mk_const { Name = "mk_fcp", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ITSELF", (Term.prim_mk_const { Name = "ITSELF", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUMi", (Term.prim_mk_const { Name = "SUMi", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MULi", (Term.prim_mk_const { Name = "MULi", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXPi", (Term.prim_mk_const { Name = "EXPi", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_index", (Term.prim_mk_const { Name = "word_index", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_index", (Term.prim_mk_const { Name = "word_index", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2w_itself", (Term.prim_mk_const { Name = "w2w_itself", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sw2sw_itself", (Term.prim_mk_const { Name = "sw2sw_itself", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_eq", (Term.prim_mk_const { Name = "word_eq", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_eq", (Term.prim_mk_const { Name = "word_eq", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_extract_itself", (Term.prim_mk_const { Name = "word_extract_itself", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_concat_itself", (Term.prim_mk_const { Name = "word_concat_itself", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromNum", (Term.prim_mk_const { Name = "fromNum", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromNum", (Term.prim_mk_const { Name = "fromNum", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("neg_int_of_num", (Term.prim_mk_const { Name = "neg_int_of_num", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("neg_int_of_num", (Term.prim_mk_const { Name = "neg_int_of_num", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("i2w_itself", (Term.prim_mk_const { Name = "i2w_itself", Thy = "basis_emit"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("i2w_itself", (Term.prim_mk_const { Name = "i2w_itself", Thy = "basis_emit"}))
  val basis_emit_grammars = Parse.current_lgrms()
  end


  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"combin",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "S", Thy = "combin",
           Ty = typ "('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c"},
          (false, "S", typ "('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c")),
         ({Name = "K", Thy = "combin", Ty = typ "'a -> 'b -> 'a"},
          (false, "K", typ "'a -> 'b -> 'a")),
         ({Name = "I", Thy = "combin", Ty = typ "'a -> 'a"},
          (false, "I", typ "'a -> 'a")),
         ({Name = "W", Thy = "combin",
           Ty = typ "('a -> 'a -> 'b) -> 'a -> 'b"},
          (false, "W", typ "('a -> 'a -> 'b) -> 'a -> 'b")),
         ({Name = "C", Thy = "combin",
           Ty = typ "('a -> 'b -> 'c) -> 'b -> 'a -> 'c"},
          (false, "C", typ "('a -> 'b -> 'c) -> 'b -> 'a -> 'c")),
         ({Name = "o", Thy = "combin",
           Ty = typ "('a -> 'b) -> ('c -> 'a) -> 'c -> 'b"},
          (false, "o", typ "('a -> 'b) -> ('c -> 'a) -> 'c -> 'b")),
         ({Name = "UPDATE", Thy = "combin",
           Ty = typ "''a -> 'b -> (''a -> 'b) -> ''a -> 'b"},
          (false, "UPDATE", typ "''a -> 'b -> (''a -> 'b) -> ''a -> 'b"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"combin",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "S", Thy = "combin",
           Ty = typ "('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c"},
          (false, "S", typ "('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c")),
         ({Name = "K", Thy = "combin", Ty = typ "'a -> 'b -> 'a"},
          (false, "K", typ "'a -> 'b -> 'a")),
         ({Name = "I", Thy = "combin", Ty = typ "'a -> 'a"},
          (false, "I", typ "'a -> 'a")),
         ({Name = "W", Thy = "combin",
           Ty = typ "('a -> 'a -> 'b) -> 'a -> 'b"},
          (false, "W", typ "('a -> 'a -> 'b) -> 'a -> 'b")),
         ({Name = "C", Thy = "combin",
           Ty = typ "('a -> 'b -> 'c) -> 'b -> 'a -> 'c"},
          (false, "C", typ "('a -> 'b -> 'c) -> 'b -> 'a -> 'c")),
         ({Name = "o", Thy = "combin",
           Ty = typ "('a -> 'b) -> ('c -> 'a) -> 'c -> 'b"},
          (false, "o", typ "('a -> 'b) -> ('c -> 'a) -> 'c -> 'b")),
         ({Name = "UPDATE", Thy = "combin",
           Ty = typ "''a -> 'b -> (''a -> 'b) -> ''a -> 'b"},
          (false, "UPDATE", typ "''a -> 'b -> (''a -> 'b) -> ''a -> 'b"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"pair",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "CURRY", Thy = "pair",
           Ty = typ "((('a, 'b) pair$prod) -> 'c) -> 'a -> 'b -> 'c"},
          (false, "CURRY",
           typ "((('a, 'b) pair$prod) -> 'c) -> 'a -> 'b -> 'c")),
         ({Name = "UNCURRY", Thy = "pair",
           Ty = typ "('a -> 'b -> 'c) -> (('a, 'b) pair$prod) -> 'c"},
          (false, "UNCURRY",
           typ "('a -> 'b -> 'c) -> (('a, 'b) pair$prod) -> 'c")),
         ({Name = "FST", Thy = "pair",
           Ty = typ "(('a, 'b) pair$prod) -> 'a"},
          (false, "FST", typ "(('a, 'b) pair$prod) -> 'a")),
         ({Name = "SND", Thy = "pair",
           Ty = typ "(('a, 'b) pair$prod) -> 'b"},
          (false, "SND", typ "(('a, 'b) pair$prod) -> 'b")),
         ({Name = "##", Thy = "pair",
           Ty =
             typ
             "('a -> 'b) -> ('c -> 'd) -> (('a, 'c) pair$prod) -> (('b, 'd) pair$prod)"},
          (false, "##",
           typ
           "('a -> 'b) -> ('c -> 'd) -> (('a, 'c) pair$prod) -> (('b, 'd) pair$prod)")),
         ({Name = "LEX", Thy = "pair",
           Ty =
             typ
             "(''a -> ''a -> bool) -> ('b -> 'b -> bool) -> ((''a, 'b) pair$prod) -> ((''a, 'b) pair$prod) -> bool"},
          (false, "LEX",
           typ
           "(''a -> ''a -> bool) -> ('b -> 'b -> bool) -> ((''a, 'b) pair$prod) -> ((''a, 'b) pair$prod) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"pair",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "CURRY", Thy = "pair",
           Ty = typ "((('a, 'b) pair$prod) -> 'c) -> 'a -> 'b -> 'c"},
          (false, "CURRY",
           typ "((('a, 'b) pair$prod) -> 'c) -> 'a -> 'b -> 'c")),
         ({Name = "UNCURRY", Thy = "pair",
           Ty = typ "('a -> 'b -> 'c) -> (('a, 'b) pair$prod) -> 'c"},
          (false, "UNCURRY",
           typ "('a -> 'b -> 'c) -> (('a, 'b) pair$prod) -> 'c")),
         ({Name = "FST", Thy = "pair",
           Ty = typ "(('a, 'b) pair$prod) -> 'a"},
          (false, "FST", typ "(('a, 'b) pair$prod) -> 'a")),
         ({Name = "SND", Thy = "pair",
           Ty = typ "(('a, 'b) pair$prod) -> 'b"},
          (false, "SND", typ "(('a, 'b) pair$prod) -> 'b")),
         ({Name = "##", Thy = "pair",
           Ty =
             typ
             "('a -> 'b) -> ('c -> 'd) -> (('a, 'c) pair$prod) -> (('b, 'd) pair$prod)"},
          (false, "##",
           typ
           "('a -> 'b) -> ('c -> 'd) -> (('a, 'c) pair$prod) -> (('b, 'd) pair$prod)")),
         ({Name = "LEX", Thy = "pair",
           Ty =
             typ
             "(''a -> ''a -> bool) -> ('b -> 'b -> bool) -> ((''a, 'b) pair$prod) -> ((''a, 'b) pair$prod) -> bool"},
          (false, "LEX",
           typ
           "(''a -> ''a -> bool) -> ('b -> 'b -> bool) -> ((''a, 'b) pair$prod) -> ((''a, 'b) pair$prod) -> bool"))
       ]
     end



  val _ = ConstMapML.insert pairSyntax.comma_tm;


  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"num",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "ZERO", Thy = "arithmetic", Ty = typ "(num$num)"},
          (true, "ZERO", typ "(num$num)")),
         ({Name = "BIT1", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (true, "BIT1", typ "(num$num) -> (num$num)")),
         ({Name = "BIT2", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (true, "BIT2", typ "(num$num) -> (num$num)")),
         ({Name = "SUC", Thy = "num", Ty = typ "(num$num) -> (num$num)"},
          (false, "SUC", typ "(num$num) -> (num$num)")),
         ({Name = "iZ", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iZ", typ "(num$num) -> (num$num)")),
         ({Name = "iiSUC", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iiSUC", typ "(num$num) -> (num$num)")),
         ({Name = "+", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "+", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "<", Thy = "prim_rec",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "<", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "<=", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "<=", typ "(num$num) -> (num$num) -> bool")),
         ({Name = ">", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, ">", typ "(num$num) -> (num$num) -> bool")),
         ({Name = ">=", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, ">=", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "PRE", Thy = "prim_rec",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "PRE", typ "(num$num) -> (num$num)")),
         ({Name = "iDUB", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iDUB", typ "(num$num) -> (num$num)")),
         ({Name = "iSUB", Thy = "numeral",
           Ty = typ "bool -> (num$num) -> (num$num) -> (num$num)"},
          (false, "iSUB",
           typ "bool -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "-", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "-", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "*", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, " * ", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "iSQR", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iSQR", typ "(num$num) -> (num$num)")),
         ({Name = "EXP", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "EXP", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "EVEN", Thy = "arithmetic",
           Ty = typ "(num$num) -> bool"},
          (false, "EVEN", typ "(num$num) -> bool")),
         ({Name = "ODD", Thy = "arithmetic", Ty = typ "(num$num) -> bool"},
          (false, "ODD", typ "(num$num) -> bool")),
         ({Name = "FACT", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "FACT", typ "(num$num) -> (num$num)")),
         ({Name = "FUNPOW", Thy = "arithmetic",
           Ty = typ "('a -> 'a) -> (num$num) -> 'a -> 'a"},
          (false, "FUNPOW", typ "('a -> 'a) -> (num$num) -> 'a -> 'a")),
         ({Name = "MIN", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MIN", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "MAX", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MAX", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "WHILE", Thy = "while",
           Ty = typ "('a -> bool) -> ('a -> 'a) -> 'a -> 'a"},
          (false, "WHILE", typ "('a -> bool) -> ('a -> 'a) -> 'a -> 'a")),
         ({Name = "LEAST", Thy = "while",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "LEAST", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "findq", Thy = "arithmetic",
           Ty =
             typ
             "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (num$num)"},
          (false, "findq",
           typ
           "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (num$num)")),
         ({Name = "DIVMOD", Thy = "arithmetic",
           Ty =
             typ
             "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (((num$num), (num$num)) pair$prod)"},
          (false, "DIVMOD",
           typ
           "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (((num$num), (num$num)) pair$prod)")),
         ({Name = "DIV", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "DIV", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "MOD", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MOD", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "DIV2", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "DIV2", typ "(num$num) -> (num$num)")),
         ({Name = "MOD_2EXP", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MOD_2EXP", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "DIV_2EXP", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "DIV_2EXP", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "measure", Thy = "prim_rec",
           Ty = typ "('a -> (num$num)) -> 'a -> 'a -> bool"},
          (false, "measure", typ "('a -> (num$num)) -> 'a -> 'a -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"num",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "ZERO", Thy = "arithmetic", Ty = typ "(num$num)"},
          (true, "ZERO", typ "(num$num)")),
         ({Name = "BIT1", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (true, "BIT1", typ "(num$num) -> (num$num)")),
         ({Name = "BIT2", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (true, "BIT2", typ "(num$num) -> (num$num)")),
         ({Name = "SUC", Thy = "num", Ty = typ "(num$num) -> (num$num)"},
          (false, "SUC", typ "(num$num) -> (num$num)")),
         ({Name = "iZ", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iZ", typ "(num$num) -> (num$num)")),
         ({Name = "iiSUC", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iiSUC", typ "(num$num) -> (num$num)")),
         ({Name = "+", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "+", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "<", Thy = "prim_rec",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "<", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "<=", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "<=", typ "(num$num) -> (num$num) -> bool")),
         ({Name = ">", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, ">", typ "(num$num) -> (num$num) -> bool")),
         ({Name = ">=", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, ">=", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "PRE", Thy = "prim_rec",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "PRE", typ "(num$num) -> (num$num)")),
         ({Name = "iDUB", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iDUB", typ "(num$num) -> (num$num)")),
         ({Name = "iSUB", Thy = "numeral",
           Ty = typ "bool -> (num$num) -> (num$num) -> (num$num)"},
          (false, "iSUB",
           typ "bool -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "-", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "-", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "*", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, " * ", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "iSQR", Thy = "numeral",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "iSQR", typ "(num$num) -> (num$num)")),
         ({Name = "EXP", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "EXP", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "EVEN", Thy = "arithmetic",
           Ty = typ "(num$num) -> bool"},
          (false, "EVEN", typ "(num$num) -> bool")),
         ({Name = "ODD", Thy = "arithmetic", Ty = typ "(num$num) -> bool"},
          (false, "ODD", typ "(num$num) -> bool")),
         ({Name = "FACT", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "FACT", typ "(num$num) -> (num$num)")),
         ({Name = "FUNPOW", Thy = "arithmetic",
           Ty = typ "('a -> 'a) -> (num$num) -> 'a -> 'a"},
          (false, "FUNPOW", typ "('a -> 'a) -> (num$num) -> 'a -> 'a")),
         ({Name = "MIN", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MIN", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "MAX", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MAX", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "WHILE", Thy = "while",
           Ty = typ "('a -> bool) -> ('a -> 'a) -> 'a -> 'a"},
          (false, "WHILE", typ "('a -> bool) -> ('a -> 'a) -> 'a -> 'a")),
         ({Name = "LEAST", Thy = "while",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "LEAST", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "findq", Thy = "arithmetic",
           Ty =
             typ
             "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (num$num)"},
          (false, "findq",
           typ
           "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (num$num)")),
         ({Name = "DIVMOD", Thy = "arithmetic",
           Ty =
             typ
             "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (((num$num), (num$num)) pair$prod)"},
          (false, "DIVMOD",
           typ
           "(((num$num), (((num$num), (num$num)) pair$prod)) pair$prod) -> (((num$num), (num$num)) pair$prod)")),
         ({Name = "DIV", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "DIV", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "MOD", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MOD", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "DIV2", Thy = "arithmetic",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "DIV2", typ "(num$num) -> (num$num)")),
         ({Name = "MOD_2EXP", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "MOD_2EXP", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "DIV_2EXP", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "DIV_2EXP", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "measure", Thy = "prim_rec",
           Ty = typ "('a -> (num$num)) -> 'a -> 'a -> bool"},
          (false, "measure", typ "('a -> (num$num)) -> 'a -> 'a -> bool"))
       ]
     end



  val _ = ConstMapML.prim_insert 
           (Term.prim_mk_const{Name="0",Thy="num"},
            (true,"num","ZERO",Type.mk_type("num",[])));


  val _ = EmitML.reshape_thm_hook :=  
      (Rewrite.PURE_REWRITE_RULE [arithmeticTheory.NUMERAL_DEF] o 
       !EmitML.reshape_thm_hook);



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"set",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "EMPTY", Thy = "pred_set", Ty = typ "'a -> bool"},
          (true, "EMPTY", typ "'a -> bool")),
         ({Name = "INSERT", Thy = "pred_set",
           Ty = typ "'a -> ('a -> bool) -> 'a -> bool"},
          (true, "INSERT", typ "'a -> ('a -> bool) -> 'a -> bool")),
         ({Name = "IN", Thy = "bool",
           Ty = typ "''a -> (''a -> bool) -> bool"},
          (false, "IN", typ "''a -> (''a -> bool) -> bool")),
         ({Name = "UNION", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool"},
          (false, "UNION",
           typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool")),
         ({Name = "INTER", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool"},
          (false, "INTER",
           typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool")),
         ({Name = "DELETE", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> ''a -> ''a -> bool"},
          (false, "DELETE", typ "(''a -> bool) -> ''a -> ''a -> bool")),
         ({Name = "DIFF", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool"},
          (false, "DIFF",
           typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool")),
         ({Name = "SUBSET", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "SUBSET", typ "(''a -> bool) -> (''a -> bool) -> bool")),
         ({Name = "PSUBSET", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "PSUBSET",
           typ "(''a -> bool) -> (''a -> bool) -> bool")),
         ({Name = "IMAGE", Thy = "pred_set",
           Ty = typ "('a -> 'b) -> ('a -> bool) -> 'b -> bool"},
          (false, "IMAGE",
           typ "('a -> 'b) -> ('a -> bool) -> 'b -> bool")),
         ({Name = "BIGUNION", Thy = "pred_set",
           Ty = typ "((''a -> bool) -> bool) -> ''a -> bool"},
          (false, "BIGUNION",
           typ "((''a -> bool) -> bool) -> ''a -> bool")),
         ({Name = "BIGINTER", Thy = "pred_set",
           Ty = typ "((''a -> bool) -> bool) -> ''a -> bool"},
          (false, "BIGINTER",
           typ "((''a -> bool) -> bool) -> ''a -> bool")),
         ({Name = "CARD", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (num$num)"},
          (false, "CARD", typ "(''a -> bool) -> (num$num)")),
         ({Name = "DISJOINT", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "DISJOINT",
           typ "(''a -> bool) -> (''a -> bool) -> bool")),
         ({Name = "CROSS", Thy = "pred_set",
           Ty =
             typ
             "(''a -> bool) -> (''b -> bool) -> ((''a, ''b) pair$prod) -> bool"},
          (false, "CROSS",
           typ
           "(''a -> bool) -> (''b -> bool) -> ((''a, ''b) pair$prod) -> bool")),
         ({Name = "LIST_TO_SET", Thy = "list",
           Ty = typ "('b list$list) -> 'b -> bool"},
          (false, "LIST_TO_SET", typ "('b list$list) -> 'b -> bool")),
         ({Name = "IS_EMPTY", Thy = "basis_emit",
           Ty = typ "('b -> bool) -> bool"},
          (false, "IS_EMPTY", typ "('b -> bool) -> bool")),
         ({Name = "SUM_IMAGE", Thy = "pred_set",
           Ty = typ "(''a -> (num$num)) -> (''a -> bool) -> (num$num)"},
          (false, "SUM_IMAGE",
           typ "(''a -> (num$num)) -> (''a -> bool) -> (num$num)")),
         ({Name = "SUM_SET", Thy = "pred_set",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "SUM_SET", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "MAX_SET", Thy = "pred_set",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "MAX_SET", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "MIN_SET", Thy = "pred_set",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "MIN_SET", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "count", Thy = "pred_set",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "count", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "POW", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "POW", typ "(''a -> bool) -> (''a -> bool) -> bool"))
       ]
     end

  val _ = List.app EmitML.new_pseudo_constr
                   [(prim_mk_const{Name="INSERT",Thy="pred_set"},2)]



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"set",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "IN", Thy = "bool",
           Ty = typ "''a -> (''a -> bool) -> bool"},
          (false, "IN", typ "''a -> (''a -> bool) -> bool")),
         ({Name = "UNION", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool"},
          (false, "UNION",
           typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool")),
         ({Name = "INTER", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool"},
          (false, "INTER",
           typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool")),
         ({Name = "DELETE", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> ''a -> ''a -> bool"},
          (false, "DELETE", typ "(''a -> bool) -> ''a -> ''a -> bool")),
         ({Name = "DIFF", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool"},
          (false, "DIFF",
           typ "(''a -> bool) -> (''a -> bool) -> ''a -> bool")),
         ({Name = "SUBSET", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "SUBSET", typ "(''a -> bool) -> (''a -> bool) -> bool")),
         ({Name = "PSUBSET", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "PSUBSET",
           typ "(''a -> bool) -> (''a -> bool) -> bool")),
         ({Name = "IMAGE", Thy = "pred_set",
           Ty = typ "('a -> 'b) -> ('a -> bool) -> 'b -> bool"},
          (false, "IMAGE",
           typ "('a -> 'b) -> ('a -> bool) -> 'b -> bool")),
         ({Name = "BIGUNION", Thy = "pred_set",
           Ty = typ "((''a -> bool) -> bool) -> ''a -> bool"},
          (false, "BIGUNION",
           typ "((''a -> bool) -> bool) -> ''a -> bool")),
         ({Name = "BIGINTER", Thy = "pred_set",
           Ty = typ "((''a -> bool) -> bool) -> ''a -> bool"},
          (false, "BIGINTER",
           typ "((''a -> bool) -> bool) -> ''a -> bool")),
         ({Name = "CARD", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (num$num)"},
          (false, "CARD", typ "(''a -> bool) -> (num$num)")),
         ({Name = "DISJOINT", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "DISJOINT",
           typ "(''a -> bool) -> (''a -> bool) -> bool")),
         ({Name = "CROSS", Thy = "pred_set",
           Ty =
             typ
             "(''a -> bool) -> (''b -> bool) -> ((''a, ''b) pair$prod) -> bool"},
          (false, "CROSS",
           typ
           "(''a -> bool) -> (''b -> bool) -> ((''a, ''b) pair$prod) -> bool")),
         ({Name = "LIST_TO_SET", Thy = "list",
           Ty = typ "('b list$list) -> 'b -> bool"},
          (false, "LIST_TO_SET", typ "('b list$list) -> 'b -> bool")),
         ({Name = "IS_EMPTY", Thy = "basis_emit",
           Ty = typ "('b -> bool) -> bool"},
          (false, "IS_EMPTY", typ "('b -> bool) -> bool")),
         ({Name = "SUM_IMAGE", Thy = "pred_set",
           Ty = typ "(''a -> (num$num)) -> (''a -> bool) -> (num$num)"},
          (false, "SUM_IMAGE",
           typ "(''a -> (num$num)) -> (''a -> bool) -> (num$num)")),
         ({Name = "SUM_SET", Thy = "pred_set",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "SUM_SET", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "MAX_SET", Thy = "pred_set",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "MAX_SET", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "MIN_SET", Thy = "pred_set",
           Ty = typ "((num$num) -> bool) -> (num$num)"},
          (false, "MIN_SET", typ "((num$num) -> bool) -> (num$num)")),
         ({Name = "count", Thy = "pred_set",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "count", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "POW", Thy = "pred_set",
           Ty = typ "(''a -> bool) -> (''a -> bool) -> bool"},
          (false, "POW", typ "(''a -> bool) -> (''a -> bool) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"option",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "OPTION_MAP", Thy = "option",
           Ty =
             typ "('a -> 'b) -> ('a option$option) -> ('b option$option)"},
          (false, "OPTION_MAP",
           typ "('a -> 'b) -> ('a option$option) -> ('b option$option)")),
         ({Name = "IS_SOME", Thy = "option",
           Ty = typ "('a option$option) -> bool"},
          (false, "IS_SOME", typ "('a option$option) -> bool")),
         ({Name = "IS_NONE", Thy = "option",
           Ty = typ "('a option$option) -> bool"},
          (false, "IS_NONE", typ "('a option$option) -> bool")),
         ({Name = "THE", Thy = "option",
           Ty = typ "('a option$option) -> 'a"},
          (false, "THE", typ "('a option$option) -> 'a")),
         ({Name = "OPTION_JOIN", Thy = "option",
           Ty =
             typ
             "(('a option$option) option$option) -> ('a option$option)"},
          (false, "OPTION_JOIN",
           typ "(('a option$option) option$option) -> ('a option$option)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"option",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "OPTION_MAP", Thy = "option",
           Ty =
             typ "('a -> 'b) -> ('a option$option) -> ('b option$option)"},
          (false, "OPTION_MAP",
           typ "('a -> 'b) -> ('a option$option) -> ('b option$option)")),
         ({Name = "IS_SOME", Thy = "option",
           Ty = typ "('a option$option) -> bool"},
          (false, "IS_SOME", typ "('a option$option) -> bool")),
         ({Name = "IS_NONE", Thy = "option",
           Ty = typ "('a option$option) -> bool"},
          (false, "IS_NONE", typ "('a option$option) -> bool")),
         ({Name = "THE", Thy = "option",
           Ty = typ "('a option$option) -> 'a"},
          (false, "THE", typ "('a option$option) -> 'a")),
         ({Name = "OPTION_JOIN", Thy = "option",
           Ty =
             typ
             "(('a option$option) option$option) -> ('a option$option)"},
          (false, "OPTION_JOIN",
           typ "(('a option$option) option$option) -> ('a option$option)"))
       ]
     end



  val _ = ConstMapML.insert_cons(Term.prim_mk_const{Name="SOME",Thy="option"});
  val _ = ConstMapML.insert_cons(Term.prim_mk_const{Name="NONE",Thy="option"});



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"basicSize",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "bool_size", Thy = "basicSize",
           Ty = typ "bool -> (num$num)"},
          (false, "bool_size", typ "bool -> (num$num)")),
         ({Name = "pair_size", Thy = "basicSize",
           Ty =
             typ
             "('a -> (num$num)) -> ('b -> (num$num)) -> (('a, 'b) pair$prod) -> (num$num)"},
          (false, "pair_size",
           typ
           "('a -> (num$num)) -> ('b -> (num$num)) -> (('a, 'b) pair$prod) -> (num$num)")),
         ({Name = "one_size", Thy = "basicSize",
           Ty = typ "(one$one) -> (num$num)"},
          (false, "one_size", typ "(one$one) -> (num$num)")),
         ({Name = "option_size", Thy = "basicSize",
           Ty =
             typ "('a -> (num$num)) -> ('a option$option) -> (num$num)"},
          (false, "option_size",
           typ "('a -> (num$num)) -> ('a option$option) -> (num$num)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"basicSize",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "bool_size", Thy = "basicSize",
           Ty = typ "bool -> (num$num)"},
          (false, "bool_size", typ "bool -> (num$num)")),
         ({Name = "pair_size", Thy = "basicSize",
           Ty =
             typ
             "('a -> (num$num)) -> ('b -> (num$num)) -> (('a, 'b) pair$prod) -> (num$num)"},
          (false, "pair_size",
           typ
           "('a -> (num$num)) -> ('b -> (num$num)) -> (('a, 'b) pair$prod) -> (num$num)")),
         ({Name = "one_size", Thy = "basicSize",
           Ty = typ "(one$one) -> (num$num)"},
          (false, "one_size", typ "(one$one) -> (num$num)")),
         ({Name = "option_size", Thy = "basicSize",
           Ty =
             typ "('a -> (num$num)) -> ('a option$option) -> (num$num)"},
          (false, "option_size",
           typ "('a -> (num$num)) -> ('a option$option) -> (num$num)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"list",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "NULL", Thy = "list", Ty = typ "('a list$list) -> bool"},
          (false, "NULL", typ "('a list$list) -> bool")),
         ({Name = "HD", Thy = "list", Ty = typ "('a list$list) -> 'a"},
          (false, "HD", typ "('a list$list) -> 'a")),
         ({Name = "TL", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list)"},
          (false, "TL", typ "('a list$list) -> ('a list$list)")),
         ({Name = "APPEND", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list) -> ('a list$list)"},
          (false, "APPEND",
           typ "('a list$list) -> ('a list$list) -> ('a list$list)")),
         ({Name = "FLAT", Thy = "list",
           Ty = typ "(('a list$list) list$list) -> ('a list$list)"},
          (false, "FLAT",
           typ "(('a list$list) list$list) -> ('a list$list)")),
         ({Name = "MAP", Thy = "list",
           Ty = typ "('a -> 'b) -> ('a list$list) -> ('b list$list)"},
          (false, "MAP",
           typ "('a -> 'b) -> ('a list$list) -> ('b list$list)")),
         ({Name = "FILTER", Thy = "list",
           Ty = typ "('a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "FILTER",
           typ "('a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "FOLDR", Thy = "list",
           Ty = typ "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> 'b"},
          (false, "FOLDR",
           typ "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> 'b")),
         ({Name = "FOLDL", Thy = "list",
           Ty = typ "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> 'b"},
          (false, "FOLDL",
           typ "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> 'b")),
         ({Name = "SNOC", Thy = "list",
           Ty = typ "'a -> ('a list$list) -> ('a list$list)"},
          (false, "SNOC", typ "'a -> ('a list$list) -> ('a list$list)")),
         ({Name = "GENLIST", Thy = "list",
           Ty = typ "((num$num) -> 'b) -> (num$num) -> ('b list$list)"},
          (false, "GENLIST",
           typ "((num$num) -> 'b) -> (num$num) -> ('b list$list)")),
         ({Name = "EVERY", Thy = "list",
           Ty = typ "('a -> bool) -> ('a list$list) -> bool"},
          (false, "EVERY", typ "('a -> bool) -> ('a list$list) -> bool")),
         ({Name = "EXISTS", Thy = "list",
           Ty = typ "('a -> bool) -> ('a list$list) -> bool"},
          (false, "EXISTS", typ "('a -> bool) -> ('a list$list) -> bool")),
         ({Name = "MAP2", Thy = "list",
           Ty =
             typ
             "('d -> 'e -> 'f) -> ('d list$list) -> ('e list$list) -> ('f list$list)"},
          (false, "MAP2",
           typ
           "('d -> 'e -> 'f) -> ('d list$list) -> ('e list$list) -> ('f list$list)")),
         ({Name = "ZIP", Thy = "list",
           Ty =
             typ
             "((('a list$list), ('b list$list)) pair$prod) -> ((('a, 'b) pair$prod) list$list)"},
          (false, "ZIP",
           typ
           "((('a list$list), ('b list$list)) pair$prod) -> ((('a, 'b) pair$prod) list$list)")),
         ({Name = "UNZIP", Thy = "list",
           Ty =
             typ
             "((('a, 'b) pair$prod) list$list) -> ((('a list$list), ('b list$list)) pair$prod)"},
          (false, "UNZIP",
           typ
           "((('a, 'b) pair$prod) list$list) -> ((('a list$list), ('b list$list)) pair$prod)")),
         ({Name = "REVERSE", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list)"},
          (false, "REVERSE", typ "('a list$list) -> ('a list$list)")),
         ({Name = "LAST", Thy = "list", Ty = typ "('a list$list) -> 'a"},
          (false, "LAST", typ "('a list$list) -> 'a")),
         ({Name = "FRONT", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list)"},
          (false, "FRONT", typ "('a list$list) -> ('a list$list)")),
         ({Name = "EL", Thy = "list",
           Ty = typ "(num$num) -> ('a list$list) -> 'a"},
          (false, "EL", typ "(num$num) -> ('a list$list) -> 'a")),
         ({Name = "LENGTH", Thy = "list",
           Ty = typ "('a list$list) -> (num$num)"},
          (false, "LENGTH", typ "('a list$list) -> (num$num)")),
         ({Name = "LEN", Thy = "list",
           Ty = typ "('a list$list) -> (num$num) -> (num$num)"},
          (false, "LEN", typ "('a list$list) -> (num$num) -> (num$num)")),
         ({Name = "REV", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list) -> ('a list$list)"},
          (false, "REV",
           typ "('a list$list) -> ('a list$list) -> ('a list$list)")),
         ({Name = "SUM", Thy = "list",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "SUM", typ "((num$num) list$list) -> (num$num)")),
         ({Name = "list_size", Thy = "list",
           Ty = typ "('a -> (num$num)) -> ('a list$list) -> (num$num)"},
          (false, "list_size",
           typ "('a -> (num$num)) -> ('a list$list) -> (num$num)")),
         ({Name = "PAD_LEFT", Thy = "list",
           Ty = typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)"},
          (false, "PAD_LEFT",
           typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)")),
         ({Name = "PAD_RIGHT", Thy = "list",
           Ty = typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)"},
          (false, "PAD_RIGHT",
           typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)")),
         ({Name = "ALL_DISTINCT", Thy = "list",
           Ty = typ "(''a list$list) -> bool"},
          (false, "ALL_DISTINCT", typ "(''a list$list) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"list",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "NULL", Thy = "list", Ty = typ "('a list$list) -> bool"},
          (false, "NULL", typ "('a list$list) -> bool")),
         ({Name = "HD", Thy = "list", Ty = typ "('a list$list) -> 'a"},
          (false, "HD", typ "('a list$list) -> 'a")),
         ({Name = "TL", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list)"},
          (false, "TL", typ "('a list$list) -> ('a list$list)")),
         ({Name = "APPEND", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list) -> ('a list$list)"},
          (false, "APPEND",
           typ "('a list$list) -> ('a list$list) -> ('a list$list)")),
         ({Name = "FLAT", Thy = "list",
           Ty = typ "(('a list$list) list$list) -> ('a list$list)"},
          (false, "FLAT",
           typ "(('a list$list) list$list) -> ('a list$list)")),
         ({Name = "MAP", Thy = "list",
           Ty = typ "('a -> 'b) -> ('a list$list) -> ('b list$list)"},
          (false, "MAP",
           typ "('a -> 'b) -> ('a list$list) -> ('b list$list)")),
         ({Name = "FILTER", Thy = "list",
           Ty = typ "('a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "FILTER",
           typ "('a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "FOLDR", Thy = "list",
           Ty = typ "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> 'b"},
          (false, "FOLDR",
           typ "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> 'b")),
         ({Name = "FOLDL", Thy = "list",
           Ty = typ "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> 'b"},
          (false, "FOLDL",
           typ "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> 'b")),
         ({Name = "SNOC", Thy = "list",
           Ty = typ "'a -> ('a list$list) -> ('a list$list)"},
          (false, "SNOC", typ "'a -> ('a list$list) -> ('a list$list)")),
         ({Name = "GENLIST", Thy = "list",
           Ty = typ "((num$num) -> 'b) -> (num$num) -> ('b list$list)"},
          (false, "GENLIST",
           typ "((num$num) -> 'b) -> (num$num) -> ('b list$list)")),
         ({Name = "EVERY", Thy = "list",
           Ty = typ "('a -> bool) -> ('a list$list) -> bool"},
          (false, "EVERY", typ "('a -> bool) -> ('a list$list) -> bool")),
         ({Name = "EXISTS", Thy = "list",
           Ty = typ "('a -> bool) -> ('a list$list) -> bool"},
          (false, "EXISTS", typ "('a -> bool) -> ('a list$list) -> bool")),
         ({Name = "MAP2", Thy = "list",
           Ty =
             typ
             "('d -> 'e -> 'f) -> ('d list$list) -> ('e list$list) -> ('f list$list)"},
          (false, "MAP2",
           typ
           "('d -> 'e -> 'f) -> ('d list$list) -> ('e list$list) -> ('f list$list)")),
         ({Name = "ZIP", Thy = "list",
           Ty =
             typ
             "((('a list$list), ('b list$list)) pair$prod) -> ((('a, 'b) pair$prod) list$list)"},
          (false, "ZIP",
           typ
           "((('a list$list), ('b list$list)) pair$prod) -> ((('a, 'b) pair$prod) list$list)")),
         ({Name = "UNZIP", Thy = "list",
           Ty =
             typ
             "((('a, 'b) pair$prod) list$list) -> ((('a list$list), ('b list$list)) pair$prod)"},
          (false, "UNZIP",
           typ
           "((('a, 'b) pair$prod) list$list) -> ((('a list$list), ('b list$list)) pair$prod)")),
         ({Name = "REVERSE", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list)"},
          (false, "REVERSE", typ "('a list$list) -> ('a list$list)")),
         ({Name = "LAST", Thy = "list", Ty = typ "('a list$list) -> 'a"},
          (false, "LAST", typ "('a list$list) -> 'a")),
         ({Name = "FRONT", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list)"},
          (false, "FRONT", typ "('a list$list) -> ('a list$list)")),
         ({Name = "EL", Thy = "list",
           Ty = typ "(num$num) -> ('a list$list) -> 'a"},
          (false, "EL", typ "(num$num) -> ('a list$list) -> 'a")),
         ({Name = "LENGTH", Thy = "list",
           Ty = typ "('a list$list) -> (num$num)"},
          (false, "LENGTH", typ "('a list$list) -> (num$num)")),
         ({Name = "LEN", Thy = "list",
           Ty = typ "('a list$list) -> (num$num) -> (num$num)"},
          (false, "LEN", typ "('a list$list) -> (num$num) -> (num$num)")),
         ({Name = "REV", Thy = "list",
           Ty = typ "('a list$list) -> ('a list$list) -> ('a list$list)"},
          (false, "REV",
           typ "('a list$list) -> ('a list$list) -> ('a list$list)")),
         ({Name = "SUM", Thy = "list",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "SUM", typ "((num$num) list$list) -> (num$num)")),
         ({Name = "list_size", Thy = "list",
           Ty = typ "('a -> (num$num)) -> ('a list$list) -> (num$num)"},
          (false, "list_size",
           typ "('a -> (num$num)) -> ('a list$list) -> (num$num)")),
         ({Name = "PAD_LEFT", Thy = "list",
           Ty = typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)"},
          (false, "PAD_LEFT",
           typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)")),
         ({Name = "PAD_RIGHT", Thy = "list",
           Ty = typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)"},
          (false, "PAD_RIGHT",
           typ "'a -> (num$num) -> ('a list$list) -> ('a list$list)")),
         ({Name = "ALL_DISTINCT", Thy = "list",
           Ty = typ "(''a list$list) -> bool"},
          (false, "ALL_DISTINCT", typ "(''a list$list) -> bool"))
       ]
     end



  val _ = ConstMapML.insert (Term.prim_mk_const{Name="CONS",Thy="list"});
  val _ = ConstMapML.insert (Term.prim_mk_const{Name="NIL",Thy="list"});



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"rich_list",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "AND_EL", Thy = "rich_list",
           Ty = typ "(bool list$list) -> bool"},
          (false, "AND_EL", typ "(bool list$list) -> bool")),
         ({Name = "DROP", Thy = "list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "DROP",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "ELL", Thy = "rich_list",
           Ty = typ "(num$num) -> ('a list$list) -> 'a"},
          (false, "ELL", typ "(num$num) -> ('a list$list) -> 'a")),
         ({Name = "TAKE", Thy = "list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "TAKE",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "BUTLASTN", Thy = "rich_list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "BUTLASTN",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "LASTN", Thy = "rich_list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "LASTN",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "isPREFIX", Thy = "list",
           Ty = typ "(''a list$list) -> (''a list$list) -> bool"},
          (false, "isPREFIX",
           typ "(''a list$list) -> (''a list$list) -> bool")),
         ({Name = "IS_SUBLIST", Thy = "rich_list",
           Ty = typ "(''a list$list) -> (''a list$list) -> bool"},
          (false, "IS_SUBLIST",
           typ "(''a list$list) -> (''a list$list) -> bool")),
         ({Name = "OR_EL", Thy = "rich_list",
           Ty = typ "(bool list$list) -> bool"},
          (false, "OR_EL", typ "(bool list$list) -> bool")),
         ({Name = "SPLITP_AUX", Thy = "rich_list",
           Ty =
             typ
             "('a list$list) -> ('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "SPLITP_AUX",
           typ
           "('a list$list) -> ('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "LUPDATE", Thy = "list",
           Ty = typ "'b -> (num$num) -> ('b list$list) -> ('b list$list)"},
          (false, "LUPDATE",
           typ "'b -> (num$num) -> ('b list$list) -> ('b list$list)")),
         ({Name = "SPLITP", Thy = "rich_list",
           Ty =
             typ
             "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "SPLITP",
           typ
           "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "PREFIX", Thy = "rich_list",
           Ty = typ "('a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "PREFIX",
           typ "('a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "REPLICATE", Thy = "rich_list",
           Ty = typ "(num$num) -> 'a -> ('a list$list)"},
          (false, "REPLICATE", typ "(num$num) -> 'a -> ('a list$list)")),
         ({Name = "SCANL", Thy = "rich_list",
           Ty =
             typ
             "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> ('b list$list)"},
          (false, "SCANL",
           typ
           "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> ('b list$list)")),
         ({Name = "SCANR", Thy = "rich_list",
           Ty =
             typ
             "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> ('b list$list)"},
          (false, "SCANR",
           typ
           "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> ('b list$list)")),
         ({Name = "SEG", Thy = "rich_list",
           Ty =
             typ
             "(num$num) -> (num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "SEG",
           typ
           "(num$num) -> (num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "SUFFIX", Thy = "rich_list",
           Ty = typ "('a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "SUFFIX",
           typ "('a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "UNZIP_FST", Thy = "rich_list",
           Ty = typ "((('a, 'b) pair$prod) list$list) -> ('a list$list)"},
          (false, "UNZIP_FST",
           typ "((('a, 'b) pair$prod) list$list) -> ('a list$list)")),
         ({Name = "UNZIP_SND", Thy = "rich_list",
           Ty = typ "((('b, 'a) pair$prod) list$list) -> ('a list$list)"},
          (false, "UNZIP_SND",
           typ "((('b, 'a) pair$prod) list$list) -> ('a list$list)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"rich_list",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "AND_EL", Thy = "rich_list",
           Ty = typ "(bool list$list) -> bool"},
          (false, "AND_EL", typ "(bool list$list) -> bool")),
         ({Name = "DROP", Thy = "list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "DROP",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "ELL", Thy = "rich_list",
           Ty = typ "(num$num) -> ('a list$list) -> 'a"},
          (false, "ELL", typ "(num$num) -> ('a list$list) -> 'a")),
         ({Name = "TAKE", Thy = "list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "TAKE",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "BUTLASTN", Thy = "rich_list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "BUTLASTN",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "LASTN", Thy = "rich_list",
           Ty = typ "(num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "LASTN",
           typ "(num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "isPREFIX", Thy = "list",
           Ty = typ "(''a list$list) -> (''a list$list) -> bool"},
          (false, "isPREFIX",
           typ "(''a list$list) -> (''a list$list) -> bool")),
         ({Name = "IS_SUBLIST", Thy = "rich_list",
           Ty = typ "(''a list$list) -> (''a list$list) -> bool"},
          (false, "IS_SUBLIST",
           typ "(''a list$list) -> (''a list$list) -> bool")),
         ({Name = "OR_EL", Thy = "rich_list",
           Ty = typ "(bool list$list) -> bool"},
          (false, "OR_EL", typ "(bool list$list) -> bool")),
         ({Name = "SPLITP_AUX", Thy = "rich_list",
           Ty =
             typ
             "('a list$list) -> ('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "SPLITP_AUX",
           typ
           "('a list$list) -> ('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "LUPDATE", Thy = "list",
           Ty = typ "'b -> (num$num) -> ('b list$list) -> ('b list$list)"},
          (false, "LUPDATE",
           typ "'b -> (num$num) -> ('b list$list) -> ('b list$list)")),
         ({Name = "SPLITP", Thy = "rich_list",
           Ty =
             typ
             "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "SPLITP",
           typ
           "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "PREFIX", Thy = "rich_list",
           Ty = typ "('a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "PREFIX",
           typ "('a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "REPLICATE", Thy = "rich_list",
           Ty = typ "(num$num) -> 'a -> ('a list$list)"},
          (false, "REPLICATE", typ "(num$num) -> 'a -> ('a list$list)")),
         ({Name = "SCANL", Thy = "rich_list",
           Ty =
             typ
             "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> ('b list$list)"},
          (false, "SCANL",
           typ
           "('b -> 'a -> 'b) -> 'b -> ('a list$list) -> ('b list$list)")),
         ({Name = "SCANR", Thy = "rich_list",
           Ty =
             typ
             "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> ('b list$list)"},
          (false, "SCANR",
           typ
           "('a -> 'b -> 'b) -> 'b -> ('a list$list) -> ('b list$list)")),
         ({Name = "SEG", Thy = "rich_list",
           Ty =
             typ
             "(num$num) -> (num$num) -> (''a list$list) -> (''a list$list)"},
          (false, "SEG",
           typ
           "(num$num) -> (num$num) -> (''a list$list) -> (''a list$list)")),
         ({Name = "SUFFIX", Thy = "rich_list",
           Ty = typ "('a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "SUFFIX",
           typ "('a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "UNZIP_FST", Thy = "rich_list",
           Ty = typ "((('a, 'b) pair$prod) list$list) -> ('a list$list)"},
          (false, "UNZIP_FST",
           typ "((('a, 'b) pair$prod) list$list) -> ('a list$list)")),
         ({Name = "UNZIP_SND", Thy = "rich_list",
           Ty = typ "((('b, 'a) pair$prod) list$list) -> ('a list$list)"},
          (false, "UNZIP_SND",
           typ "((('b, 'a) pair$prod) list$list) -> ('a list$list)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"string",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "char_size", Thy = "string",
           Ty = typ "(string$char) -> (num$num)"},
          (false, "char_size", typ "(string$char) -> (num$num)")),
         ({Name = "APPEND", Thy = "list",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> ((string$char) list$list)"},
          (false, "STRCAT",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> ((string$char) list$list)")),
         ({Name = "isPREFIX", Thy = "list",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "isPREFIX",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool")),
         ({Name = "isLower", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isLower", typ "(string$char) -> bool")),
         ({Name = "isUpper", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isUpper", typ "(string$char) -> bool")),
         ({Name = "isDigit", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isDigit", typ "(string$char) -> bool")),
         ({Name = "isAlpha", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isAlpha", typ "(string$char) -> bool")),
         ({Name = "isHexDigit", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isHexDigit", typ "(string$char) -> bool")),
         ({Name = "isAlphaNum", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isAlphaNum", typ "(string$char) -> bool")),
         ({Name = "isPrint", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isPrint", typ "(string$char) -> bool")),
         ({Name = "isSpace", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isSpace", typ "(string$char) -> bool")),
         ({Name = "isGraph", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isGraph", typ "(string$char) -> bool")),
         ({Name = "isPunct", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isPunct", typ "(string$char) -> bool")),
         ({Name = "isAscii", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isAscii", typ "(string$char) -> bool")),
         ({Name = "isCntrl", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isCntrl", typ "(string$char) -> bool")),
         ({Name = "toLower", Thy = "string",
           Ty = typ "(string$char) -> (string$char)"},
          (false, "toLower", typ "(string$char) -> (string$char)")),
         ({Name = "toUpper", Thy = "string",
           Ty = typ "(string$char) -> (string$char)"},
          (false, "toUpper", typ "(string$char) -> (string$char)")),
         ({Name = "PAD_LEFT", Thy = "list",
           Ty =
             typ
             "(string$char) -> (num$num) -> ((string$char) list$list) -> ((string$char) list$list)"},
          (false, "PAD_LEFT",
           typ
           "(string$char) -> (num$num) -> ((string$char) list$list) -> ((string$char) list$list)")),
         ({Name = "PAD_RIGHT", Thy = "list",
           Ty =
             typ
             "(string$char) -> (num$num) -> ((string$char) list$list) -> ((string$char) list$list)"},
          (false, "PAD_RIGHT",
           typ
           "(string$char) -> (num$num) -> ((string$char) list$list) -> ((string$char) list$list)")),
         ({Name = "char_lt", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_lt",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "char_le", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_le",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "char_gt", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_gt",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "char_ge", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_ge",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "string_le", Thy = "string",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "string_le",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool")),
         ({Name = "string_gt", Thy = "string",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "string_gt",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool")),
         ({Name = "string_ge", Thy = "string",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "string_ge",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"string",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "char_size", Thy = "string",
           Ty = typ "(string$char) -> (num$num)"},
          (false, "char_size", typ "(string$char) -> (num$num)")),
         ({Name = "isLower", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isLower", typ "(string$char) -> bool")),
         ({Name = "isUpper", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isUpper", typ "(string$char) -> bool")),
         ({Name = "isDigit", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isDigit", typ "(string$char) -> bool")),
         ({Name = "isAlpha", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isAlpha", typ "(string$char) -> bool")),
         ({Name = "isHexDigit", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isHexDigit", typ "(string$char) -> bool")),
         ({Name = "isAlphaNum", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isAlphaNum", typ "(string$char) -> bool")),
         ({Name = "isPrint", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isPrint", typ "(string$char) -> bool")),
         ({Name = "isSpace", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isSpace", typ "(string$char) -> bool")),
         ({Name = "isGraph", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isGraph", typ "(string$char) -> bool")),
         ({Name = "isPunct", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isPunct", typ "(string$char) -> bool")),
         ({Name = "isAscii", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isAscii", typ "(string$char) -> bool")),
         ({Name = "isCntrl", Thy = "string",
           Ty = typ "(string$char) -> bool"},
          (false, "isCntrl", typ "(string$char) -> bool")),
         ({Name = "toLower", Thy = "string",
           Ty = typ "(string$char) -> (string$char)"},
          (false, "toLower", typ "(string$char) -> (string$char)")),
         ({Name = "toUpper", Thy = "string",
           Ty = typ "(string$char) -> (string$char)"},
          (false, "toUpper", typ "(string$char) -> (string$char)")),
         ({Name = "char_lt", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_lt",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "char_le", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_le",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "char_gt", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_gt",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "char_ge", Thy = "string",
           Ty = typ "(string$char) -> (string$char) -> bool"},
          (false, "char_ge",
           typ "(string$char) -> (string$char) -> bool")),
         ({Name = "string_le", Thy = "string",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "string_le",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool")),
         ({Name = "string_gt", Thy = "string",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "string_gt",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool")),
         ({Name = "string_ge", Thy = "string",
           Ty =
             typ
             "((string$char) list$list) -> ((string$char) list$list) -> bool"},
          (false, "string_ge",
           typ
           "((string$char) list$list) -> ((string$char) list$list) -> bool"))
       ]
     end



  val _ = app (fn n => ConstMapML.insert (prim_mk_const{Name=n,Thy="string"}))
        ["CHR","ORD","DEST_STRING","string_lt",       "IMPLODE","EXPLODE"]


  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"fmap",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "FEMPTY", Thy = "finite_map",
           Ty = typ "(('a, 'b) finite_map$fmap)"},
          (true, "FEMPTY", typ "(('a, 'b) finite_map$fmap)")),
         ({Name = "FUPDATE", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> (('a, 'b) pair$prod) -> (('a, 'b) finite_map$fmap)"},
          (true, "FUPDATE",
           typ
           "(('a, 'b) finite_map$fmap) -> (('a, 'b) pair$prod) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "FDOM", Thy = "finite_map",
           Ty = typ "(('a, 'b) finite_map$fmap) -> 'a -> bool"},
          (false, "FDOM", typ "(('a, 'b) finite_map$fmap) -> 'a -> bool")),
         ({Name = "FAPPLY", Thy = "finite_map",
           Ty = typ "((''a, 'b) finite_map$fmap) -> ''a -> 'b"},
          (false, "FAPPLY",
           typ "((''a, 'b) finite_map$fmap) -> ''a -> 'b")),
         ({Name = "FCARD", Thy = "finite_map",
           Ty = typ "((''a, 'b) finite_map$fmap) -> (num$num)"},
          (false, "FCARD",
           typ "((''a, 'b) finite_map$fmap) -> (num$num)")),
         ({Name = "FLOOKUP", Thy = "finite_map",
           Ty =
             typ
             "((''a, 'b) finite_map$fmap) -> ''a -> ('b option$option)"},
          (false, "FLOOKUP",
           typ
           "((''a, 'b) finite_map$fmap) -> ''a -> ('b option$option)")),
         ({Name = "FUPDATE_LIST", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> ((('a, 'b) pair$prod) list$list) -> (('a, 'b) finite_map$fmap)"},
          (false, "FUPDATE_LIST",
           typ
           "(('a, 'b) finite_map$fmap) -> ((('a, 'b) pair$prod) list$list) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "FUNION", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap)"},
          (false, "FUNION",
           typ
           "(('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "fdomsub", Thy = "finite_map",
           Ty =
             typ
             "((''a, 'b) finite_map$fmap) -> ''a -> ((''a, 'b) finite_map$fmap)"},
          (false, "fdomsub",
           typ
           "((''a, 'b) finite_map$fmap) -> ''a -> ((''a, 'b) finite_map$fmap)")),
         ({Name = "SUBMAP", Thy = "finite_map",
           Ty =
             typ
             "((''a, ''b) finite_map$fmap) -> ((''a, ''b) finite_map$fmap) -> bool"},
          (false, "SUBMAP",
           typ
           "((''a, ''b) finite_map$fmap) -> ((''a, ''b) finite_map$fmap) -> bool")),
         ({Name = "DRESTRICT", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> ('a -> bool) -> (('a, 'b) finite_map$fmap)"},
          (false, "DRESTRICT",
           typ
           "(('a, 'b) finite_map$fmap) -> ('a -> bool) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "RRESTRICT", Thy = "finite_map",
           Ty =
             typ
             "((''a, 'b) finite_map$fmap) -> ('b -> bool) -> ((''a, 'b) finite_map$fmap)"},
          (false, "RRESTRICT",
           typ
           "((''a, 'b) finite_map$fmap) -> ('b -> bool) -> ((''a, 'b) finite_map$fmap)")),
         ({Name = "FRANGE", Thy = "finite_map",
           Ty = typ "((''a, 'b) finite_map$fmap) -> 'b -> bool"},
          (false, "FRANGE",
           typ "((''a, 'b) finite_map$fmap) -> 'b -> bool")),
         ({Name = "o_f", Thy = "finite_map",
           Ty =
             typ
             "('b -> 'c) -> ((''a, 'b) finite_map$fmap) -> ((''a, 'c) finite_map$fmap)"},
          (false, "o_f",
           typ
           "('b -> 'c) -> ((''a, 'b) finite_map$fmap) -> ((''a, 'c) finite_map$fmap)")),
         ({Name = "FEVERY", Thy = "finite_map",
           Ty =
             typ
             "(((''a, 'b) pair$prod) -> bool) -> ((''a, 'b) finite_map$fmap) -> bool"},
          (false, "FEVERY",
           typ
           "(((''a, 'b) pair$prod) -> bool) -> ((''a, 'b) finite_map$fmap) -> bool"))
       ]
     end

  val _ = List.app EmitML.new_pseudo_constr
                   [(prim_mk_const{Name="FUPDATE",Thy="finite_map"},2)]



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"fmap",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "FEMPTY", Thy = "finite_map",
           Ty = typ "(('a, 'b) finite_map$fmap)"},
          (true, "FEMPTY", typ "(('a, 'b) finite_map$fmap)")),
         ({Name = "FUPDATE", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> (('a, 'b) pair$prod) -> (('a, 'b) finite_map$fmap)"},
          (true, "FUPDATE",
           typ
           "(('a, 'b) finite_map$fmap) -> (('a, 'b) pair$prod) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "FDOM", Thy = "finite_map",
           Ty = typ "(('a, 'b) finite_map$fmap) -> 'a -> bool"},
          (false, "FDOM", typ "(('a, 'b) finite_map$fmap) -> 'a -> bool")),
         ({Name = "FAPPLY", Thy = "finite_map",
           Ty = typ "((''a, 'b) finite_map$fmap) -> ''a -> 'b"},
          (false, "FAPPLY",
           typ "((''a, 'b) finite_map$fmap) -> ''a -> 'b")),
         ({Name = "FCARD", Thy = "finite_map",
           Ty = typ "((''a, 'b) finite_map$fmap) -> (num$num)"},
          (false, "FCARD",
           typ "((''a, 'b) finite_map$fmap) -> (num$num)")),
         ({Name = "FLOOKUP", Thy = "finite_map",
           Ty =
             typ
             "((''a, 'b) finite_map$fmap) -> ''a -> ('b option$option)"},
          (false, "FLOOKUP",
           typ
           "((''a, 'b) finite_map$fmap) -> ''a -> ('b option$option)")),
         ({Name = "FUPDATE_LIST", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> ((('a, 'b) pair$prod) list$list) -> (('a, 'b) finite_map$fmap)"},
          (false, "FUPDATE_LIST",
           typ
           "(('a, 'b) finite_map$fmap) -> ((('a, 'b) pair$prod) list$list) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "FUNION", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap)"},
          (false, "FUNION",
           typ
           "(('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "fdomsub", Thy = "finite_map",
           Ty =
             typ
             "((''a, 'b) finite_map$fmap) -> ''a -> ((''a, 'b) finite_map$fmap)"},
          (false, "fdomsub",
           typ
           "((''a, 'b) finite_map$fmap) -> ''a -> ((''a, 'b) finite_map$fmap)")),
         ({Name = "SUBMAP", Thy = "finite_map",
           Ty =
             typ
             "((''a, ''b) finite_map$fmap) -> ((''a, ''b) finite_map$fmap) -> bool"},
          (false, "SUBMAP",
           typ
           "((''a, ''b) finite_map$fmap) -> ((''a, ''b) finite_map$fmap) -> bool")),
         ({Name = "DRESTRICT", Thy = "finite_map",
           Ty =
             typ
             "(('a, 'b) finite_map$fmap) -> ('a -> bool) -> (('a, 'b) finite_map$fmap)"},
          (false, "DRESTRICT",
           typ
           "(('a, 'b) finite_map$fmap) -> ('a -> bool) -> (('a, 'b) finite_map$fmap)")),
         ({Name = "RRESTRICT", Thy = "finite_map",
           Ty =
             typ
             "((''a, 'b) finite_map$fmap) -> ('b -> bool) -> ((''a, 'b) finite_map$fmap)"},
          (false, "RRESTRICT",
           typ
           "((''a, 'b) finite_map$fmap) -> ('b -> bool) -> ((''a, 'b) finite_map$fmap)")),
         ({Name = "FRANGE", Thy = "finite_map",
           Ty = typ "((''a, 'b) finite_map$fmap) -> 'b -> bool"},
          (false, "FRANGE",
           typ "((''a, 'b) finite_map$fmap) -> 'b -> bool")),
         ({Name = "o_f", Thy = "finite_map",
           Ty =
             typ
             "('b -> 'c) -> ((''a, 'b) finite_map$fmap) -> ((''a, 'c) finite_map$fmap)"},
          (false, "o_f",
           typ
           "('b -> 'c) -> ((''a, 'b) finite_map$fmap) -> ((''a, 'c) finite_map$fmap)")),
         ({Name = "FEVERY", Thy = "finite_map",
           Ty =
             typ
             "(((''a, 'b) pair$prod) -> bool) -> ((''a, 'b) finite_map$fmap) -> bool"},
          (false, "FEVERY",
           typ
           "(((''a, 'b) pair$prod) -> bool) -> ((''a, 'b) finite_map$fmap) -> bool"))
       ]
     end

  val _ = List.app EmitML.new_pseudo_constr
                   [(prim_mk_const{Name="FUPDATE",Thy="finite_map"},2)]



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"sum",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "INL", Thy = "sum", Ty = typ "'a -> (('a, 'b) sum$sum)"},
          (true, "INL", typ "'a -> (('a, 'b) sum$sum)")),
         ({Name = "INR", Thy = "sum", Ty = typ "'b -> (('a, 'b) sum$sum)"},
          (true, "INR", typ "'b -> (('a, 'b) sum$sum)")),
         ({Name = "OUTL", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> 'a"},
          (false, "OUTL", typ "(('a, 'b) sum$sum) -> 'a")),
         ({Name = "OUTR", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> 'b"},
          (false, "OUTR", typ "(('a, 'b) sum$sum) -> 'b")),
         ({Name = "ISL", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> bool"},
          (false, "ISL", typ "(('a, 'b) sum$sum) -> bool")),
         ({Name = "ISR", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> bool"},
          (false, "ISR", typ "(('a, 'b) sum$sum) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"sum",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "INL", Thy = "sum", Ty = typ "'a -> (('a, 'b) sum$sum)"},
          (true, "INL", typ "'a -> (('a, 'b) sum$sum)")),
         ({Name = "INR", Thy = "sum", Ty = typ "'b -> (('a, 'b) sum$sum)"},
          (true, "INR", typ "'b -> (('a, 'b) sum$sum)")),
         ({Name = "OUTL", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> 'a"},
          (false, "OUTL", typ "(('a, 'b) sum$sum) -> 'a")),
         ({Name = "OUTR", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> 'b"},
          (false, "OUTR", typ "(('a, 'b) sum$sum) -> 'b")),
         ({Name = "ISL", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> bool"},
          (false, "ISL", typ "(('a, 'b) sum$sum) -> bool")),
         ({Name = "ISR", Thy = "sum",
           Ty = typ "(('a, 'b) sum$sum) -> bool"},
          (false, "ISR", typ "(('a, 'b) sum$sum) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"bit",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "TIMES_2EXP", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "TIMES_2EXP",
           typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "BITWISE", Thy = "bit",
           Ty =
             typ
             "(num$num) -> (bool -> bool -> bool) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BITWISE",
           typ
           "(num$num) -> (bool -> bool -> bool) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "LOG", Thy = "logroot",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "LOG", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "LOWEST_SET_BIT", Thy = "bit",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "LOWEST_SET_BIT", typ "(num$num) -> (num$num)")),
         ({Name = "l2n", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list) -> (num$num)"},
          (false, "l2n",
           typ "(num$num) -> ((num$num) list$list) -> (num$num)")),
         ({Name = "n2l", Thy = "numposrep",
           Ty = typ "(num$num) -> (num$num) -> ((num$num) list$list)"},
          (false, "n2l",
           typ "(num$num) -> (num$num) -> ((num$num) list$list)")),
         ({Name = "s2n", Thy = "ASCIInumbers",
           Ty =
             typ
             "(num$num) -> ((string$char) -> (num$num)) -> ((string$char) list$list) -> (num$num)"},
          (false, "s2n",
           typ
           "(num$num) -> ((string$char) -> (num$num)) -> ((string$char) list$list) -> (num$num)")),
         ({Name = "n2s", Thy = "ASCIInumbers",
           Ty =
             typ
             "(num$num) -> ((num$num) -> (string$char)) -> (num$num) -> ((string$char) list$list)"},
          (false, "n2s",
           typ
           "(num$num) -> ((num$num) -> (string$char)) -> (num$num) -> ((string$char) list$list)")),
         ({Name = "HEX", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> (string$char)"},
          (false, "HEX", typ "(num$num) -> (string$char)")),
         ({Name = "UNHEX", Thy = "ASCIInumbers",
           Ty = typ "(string$char) -> (num$num)"},
          (false, "UNHEX", typ "(string$char) -> (num$num)")),
         ({Name = "num_from_bin_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_bin_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_from_oct_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_oct_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_from_dec_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_dec_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_from_hex_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_hex_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_to_bin_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_bin_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_to_oct_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_oct_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_to_dec_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_dec_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_to_hex_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_hex_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_from_bin_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_bin_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_from_oct_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_oct_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_from_dec_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_dec_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_from_hex_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_hex_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_to_bin_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_bin_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "num_to_oct_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_oct_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "num_to_dec_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_dec_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "num_to_hex_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_hex_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "BIT_MODF", Thy = "numeral_bit",
           Ty =
             typ
             "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BIT_MODF",
           typ
           "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "BIT_MODIFY", Thy = "bit",
           Ty =
             typ
             "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num)"},
          (false, "BIT_MODIFY",
           typ
           "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num)")),
         ({Name = "BIT_REV", Thy = "numeral_bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BIT_REV",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "BIT_REVERSE", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "BIT_REVERSE",
           typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "LOG2", Thy = "bit", Ty = typ "(num$num) -> (num$num)"},
          (false, "LOG2", typ "(num$num) -> (num$num)")),
         ({Name = "DIVMOD_2EXP", Thy = "bit",
           Ty =
             typ
             "(num$num) -> (num$num) -> (((num$num), (num$num)) pair$prod)"},
          (false, "DIVMOD_2EXP",
           typ
           "(num$num) -> (num$num) -> (((num$num), (num$num)) pair$prod)")),
         ({Name = "SBIT", Thy = "bit",
           Ty = typ "bool -> (num$num) -> (num$num)"},
          (false, "SBIT", typ "bool -> (num$num) -> (num$num)")),
         ({Name = "BITS", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BITS",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "MOD_2EXP_EQ", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> bool"},
          (false, "MOD_2EXP_EQ",
           typ "(num$num) -> (num$num) -> (num$num) -> bool")),
         ({Name = "BITV", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "BITV", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "BIT", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "BIT", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "SLICE", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "SLICE",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "SIGN_EXTEND", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "SIGN_EXTEND",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "BOOLIFY", Thy = "numposrep",
           Ty =
             typ
             "(num$num) -> (num$num) -> (bool list$list) -> (bool list$list)"},
          (false, "BOOLIFY",
           typ
           "(num$num) -> (num$num) -> (bool list$list) -> (bool list$list)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"bit",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "TIMES_2EXP", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "TIMES_2EXP",
           typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "BITWISE", Thy = "bit",
           Ty =
             typ
             "(num$num) -> (bool -> bool -> bool) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BITWISE",
           typ
           "(num$num) -> (bool -> bool -> bool) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "LOG", Thy = "logroot",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "LOG", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "LOWEST_SET_BIT", Thy = "bit",
           Ty = typ "(num$num) -> (num$num)"},
          (false, "LOWEST_SET_BIT", typ "(num$num) -> (num$num)")),
         ({Name = "l2n", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list) -> (num$num)"},
          (false, "l2n",
           typ "(num$num) -> ((num$num) list$list) -> (num$num)")),
         ({Name = "n2l", Thy = "numposrep",
           Ty = typ "(num$num) -> (num$num) -> ((num$num) list$list)"},
          (false, "n2l",
           typ "(num$num) -> (num$num) -> ((num$num) list$list)")),
         ({Name = "s2n", Thy = "ASCIInumbers",
           Ty =
             typ
             "(num$num) -> ((string$char) -> (num$num)) -> ((string$char) list$list) -> (num$num)"},
          (false, "s2n",
           typ
           "(num$num) -> ((string$char) -> (num$num)) -> ((string$char) list$list) -> (num$num)")),
         ({Name = "n2s", Thy = "ASCIInumbers",
           Ty =
             typ
             "(num$num) -> ((num$num) -> (string$char)) -> (num$num) -> ((string$char) list$list)"},
          (false, "n2s",
           typ
           "(num$num) -> ((num$num) -> (string$char)) -> (num$num) -> ((string$char) list$list)")),
         ({Name = "HEX", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> (string$char)"},
          (false, "HEX", typ "(num$num) -> (string$char)")),
         ({Name = "UNHEX", Thy = "ASCIInumbers",
           Ty = typ "(string$char) -> (num$num)"},
          (false, "UNHEX", typ "(string$char) -> (num$num)")),
         ({Name = "num_from_bin_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_bin_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_from_oct_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_oct_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_from_dec_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_dec_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_from_hex_list", Thy = "numposrep",
           Ty = typ "((num$num) list$list) -> (num$num)"},
          (false, "num_from_hex_list",
           typ "((num$num) list$list) -> (num$num)")),
         ({Name = "num_to_bin_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_bin_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_to_oct_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_oct_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_to_dec_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_dec_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_to_hex_list", Thy = "numposrep",
           Ty = typ "(num$num) -> ((num$num) list$list)"},
          (false, "num_to_hex_list",
           typ "(num$num) -> ((num$num) list$list)")),
         ({Name = "num_from_bin_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_bin_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_from_oct_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_oct_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_from_dec_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_dec_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_from_hex_string", Thy = "ASCIInumbers",
           Ty = typ "((string$char) list$list) -> (num$num)"},
          (false, "num_from_hex_string",
           typ "((string$char) list$list) -> (num$num)")),
         ({Name = "num_to_bin_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_bin_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "num_to_oct_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_oct_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "num_to_dec_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_dec_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "num_to_hex_string", Thy = "ASCIInumbers",
           Ty = typ "(num$num) -> ((string$char) list$list)"},
          (false, "num_to_hex_string",
           typ "(num$num) -> ((string$char) list$list)")),
         ({Name = "BIT_MODF", Thy = "numeral_bit",
           Ty =
             typ
             "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BIT_MODF",
           typ
           "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "BIT_MODIFY", Thy = "bit",
           Ty =
             typ
             "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num)"},
          (false, "BIT_MODIFY",
           typ
           "(num$num) -> ((num$num) -> bool -> bool) -> (num$num) -> (num$num)")),
         ({Name = "BIT_REV", Thy = "numeral_bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BIT_REV",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "BIT_REVERSE", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "BIT_REVERSE",
           typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "LOG2", Thy = "bit", Ty = typ "(num$num) -> (num$num)"},
          (false, "LOG2", typ "(num$num) -> (num$num)")),
         ({Name = "DIVMOD_2EXP", Thy = "bit",
           Ty =
             typ
             "(num$num) -> (num$num) -> (((num$num), (num$num)) pair$prod)"},
          (false, "DIVMOD_2EXP",
           typ
           "(num$num) -> (num$num) -> (((num$num), (num$num)) pair$prod)")),
         ({Name = "SBIT", Thy = "bit",
           Ty = typ "bool -> (num$num) -> (num$num)"},
          (false, "SBIT", typ "bool -> (num$num) -> (num$num)")),
         ({Name = "BITS", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "BITS",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "MOD_2EXP_EQ", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> bool"},
          (false, "MOD_2EXP_EQ",
           typ "(num$num) -> (num$num) -> (num$num) -> bool")),
         ({Name = "BITV", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num)"},
          (false, "BITV", typ "(num$num) -> (num$num) -> (num$num)")),
         ({Name = "BIT", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> bool"},
          (false, "BIT", typ "(num$num) -> (num$num) -> bool")),
         ({Name = "SLICE", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "SLICE",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "SIGN_EXTEND", Thy = "bit",
           Ty = typ "(num$num) -> (num$num) -> (num$num) -> (num$num)"},
          (false, "SIGN_EXTEND",
           typ "(num$num) -> (num$num) -> (num$num) -> (num$num)")),
         ({Name = "BOOLIFY", Thy = "numposrep",
           Ty =
             typ
             "(num$num) -> (num$num) -> (bool list$list) -> (bool list$list)"},
          (false, "BOOLIFY",
           typ
           "(num$num) -> (num$num) -> (bool list$list) -> (bool list$list)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"fcp",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "ITSELF", Thy = "basis_emit",
           Ty = typ "(num$num) -> ('a bool$itself)"},
          (true, "ITSELF", typ "(num$num) -> ('a bool$itself)")),
         ({Name = "FCPi", Thy = "basis_emit",
           Ty =
             typ
             "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)"},
          (true, "FCPi",
           typ
           "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)")),
         ({Name = "BIT0A", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit0)"},
          (true, "BIT0A", typ "'a -> ('a fcp$bit0)")),
         ({Name = "BIT0B", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit0)"},
          (true, "BIT0B", typ "'a -> ('a fcp$bit0)")),
         ({Name = "BIT1A", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit1)"},
          (true, "BIT1A", typ "'a -> ('a fcp$bit1)")),
         ({Name = "BIT1B", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit1)"},
          (true, "BIT1B", typ "'a -> ('a fcp$bit1)")),
         ({Name = "BIT1C", Thy = "fcp", Ty = typ "('a fcp$bit1)"},
          (true, "BIT1C", typ "('a fcp$bit1)")),
         ({Name = "SUMi", Thy = "basis_emit",
           Ty =
             typ
             "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)"},
          (false, "SUMi",
           typ
           "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)")),
         ({Name = "MULi", Thy = "basis_emit",
           Ty =
             typ
             "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)"},
          (false, "MULi",
           typ
           "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)")),
         ({Name = "EXPi", Thy = "basis_emit",
           Ty =
             typ
             "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)"},
          (false, "EXPi",
           typ
           "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)")),
         ({Name = "dimindex", Thy = "fcp",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "dimindex", typ "('a bool$itself) -> (num$num)")),
         ({Name = "mk_fcp", Thy = "basis_emit",
           Ty =
             typ
             "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)"},
          (false, "mk_fcp",
           typ
           "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)")),
         ({Name = "fcp_index", Thy = "fcp",
           Ty = typ "(('a, 'b) fcp$cart) -> (num$num) -> 'a"},
          (false, "fcp_index",
           typ "(('a, 'b) fcp$cart) -> (num$num) -> 'a")),
         ({Name = ":+", Thy = "fcp",
           Ty =
             typ
             "(num$num) -> 'a -> (('a, 'b) fcp$cart) -> (('a, 'b) fcp$cart)"},
          (false, ":+",
           typ
           "(num$num) -> 'a -> (('a, 'b) fcp$cart) -> (('a, 'b) fcp$cart)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"fcp",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "ITSELF", Thy = "basis_emit",
           Ty = typ "(num$num) -> ('a bool$itself)"},
          (true, "ITSELF", typ "(num$num) -> ('a bool$itself)")),
         ({Name = "FCPi", Thy = "basis_emit",
           Ty =
             typ
             "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)"},
          (true, "FCPi",
           typ
           "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)")),
         ({Name = "BIT0A", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit0)"},
          (true, "BIT0A", typ "'a -> ('a fcp$bit0)")),
         ({Name = "BIT0B", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit0)"},
          (true, "BIT0B", typ "'a -> ('a fcp$bit0)")),
         ({Name = "BIT1A", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit1)"},
          (true, "BIT1A", typ "'a -> ('a fcp$bit1)")),
         ({Name = "BIT1B", Thy = "fcp", Ty = typ "'a -> ('a fcp$bit1)"},
          (true, "BIT1B", typ "'a -> ('a fcp$bit1)")),
         ({Name = "BIT1C", Thy = "fcp", Ty = typ "('a fcp$bit1)"},
          (true, "BIT1C", typ "('a fcp$bit1)")),
         ({Name = "SUMi", Thy = "basis_emit",
           Ty =
             typ
             "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)"},
          (false, "SUMi",
           typ
           "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)")),
         ({Name = "MULi", Thy = "basis_emit",
           Ty =
             typ
             "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)"},
          (false, "MULi",
           typ
           "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)")),
         ({Name = "EXPi", Thy = "basis_emit",
           Ty =
             typ
             "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)"},
          (false, "EXPi",
           typ
           "((('b bool$itself), ('c bool$itself)) pair$prod) -> ('a bool$itself)")),
         ({Name = "dimindex", Thy = "fcp",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "dimindex", typ "('a bool$itself) -> (num$num)")),
         ({Name = "mk_fcp", Thy = "basis_emit",
           Ty =
             typ
             "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)"},
          (false, "mk_fcp",
           typ
           "(((num$num) -> 'a, ('b bool$itself)) pair$prod) -> (('a, 'b) fcp$cart)")),
         ({Name = "fcp_index", Thy = "fcp",
           Ty = typ "(('a, 'b) fcp$cart) -> (num$num) -> 'a"},
          (false, "fcp_index",
           typ "(('a, 'b) fcp$cart) -> (num$num) -> 'a")),
         ({Name = ":+", Thy = "fcp",
           Ty =
             typ
             "(num$num) -> 'a -> (('a, 'b) fcp$cart) -> (('a, 'b) fcp$cart)"},
          (false, ":+",
           typ
           "(num$num) -> 'a -> (('a, 'b) fcp$cart) -> (('a, 'b) fcp$cart)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"words",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "dimword", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "dimword", typ "('a bool$itself) -> (num$num)")),
         ({Name = "fromNum", Thy = "basis_emit",
           Ty =
             typ
             "(((num$num), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)"},
          (false, "fromNum",
           typ
           "(((num$num), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)")),
         ({Name = "INT_MIN", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "INT_MIN", typ "('a bool$itself) -> (num$num)")),
         ({Name = "UINT_MAX", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "UINT_MAX", typ "('a bool$itself) -> (num$num)")),
         ({Name = "INT_MAX", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "INT_MAX", typ "('a bool$itself) -> (num$num)")),
         ({Name = "w2n", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> (num$num)"},
          (false, "w2n", typ "((bool, 'a) fcp$cart) -> (num$num)")),
         ({Name = "word_eq", Thy = "basis_emit",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_eq",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "w2w_itself", Thy = "basis_emit",
           Ty =
             typ
             "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "w2w_itself",
           typ
           "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "word_or", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_or",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_lsl", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_lsl",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_bits", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_bits",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_signed_bits", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_signed_bits",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_bit", Thy = "words",
           Ty = typ "(num$num) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_bit",
           typ "(num$num) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_join", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, (('a, 'b) sum$sum)) fcp$cart)"},
          (false, "word_join",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, (('a, 'b) sum$sum)) fcp$cart)")),
         ({Name = "sw2sw_itself", Thy = "basis_emit",
           Ty =
             typ
             "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "sw2sw_itself",
           typ
           "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "word_extract_itself", Thy = "basis_emit",
           Ty =
             typ
             "('b bool$itself) -> (num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "word_extract_itself",
           typ
           "('b bool$itself) -> (num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "word_slice", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_slice",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_concat_itself", Thy = "basis_emit",
           Ty =
             typ
             "('c bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'c) fcp$cart)"},
          (false, "word_concat_itself",
           typ
           "('c bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'c) fcp$cart)")),
         ({Name = "word_log2", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_log2",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_reverse", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_reverse",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_modify", Thy = "words",
           Ty =
             typ
             "((num$num) -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_modify",
           typ
           "((num$num) -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_lsb", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> bool"},
          (false, "word_lsb", typ "((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_msb", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> bool"},
          (false, "word_msb", typ "((bool, 'a) fcp$cart) -> bool")),
         ({Name = "add_with_carry", Thy = "words",
           Ty =
             typ
             "((((bool, 'a) fcp$cart), ((((bool, 'a) fcp$cart), bool) pair$prod)) pair$prod) -> ((((bool, 'a) fcp$cart), ((bool, bool) pair$prod)) pair$prod)"},
          (false, "add_with_carry",
           typ
           "((((bool, 'a) fcp$cart), ((((bool, 'a) fcp$cart), bool) pair$prod)) pair$prod) -> ((((bool, 'a) fcp$cart), ((bool, bool) pair$prod)) pair$prod)")),
         ({Name = "word_1comp", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_1comp",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_and", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_and",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_xor", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_xor",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_2comp", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_2comp",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_div", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_div",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_sdiv", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_sdiv",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_add", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_add",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_sub", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_sub",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_mul", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_mul",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_lsr", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_lsr",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_asr", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_asr",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_ror", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_ror",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_rol", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_rol",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_rrx", Thy = "words",
           Ty =
             typ
             "((bool, ((bool, 'a) fcp$cart)) pair$prod) -> ((bool, ((bool, 'a) fcp$cart)) pair$prod)"},
          (false, "word_rrx",
           typ
           "((bool, ((bool, 'a) fcp$cart)) pair$prod) -> ((bool, ((bool, 'a) fcp$cart)) pair$prod)")),
         ({Name = "word_index", Thy = "basis_emit",
           Ty = typ "((bool, 'a) fcp$cart) -> (num$num) -> bool"},
          (false, "word_index",
           typ "((bool, 'a) fcp$cart) -> (num$num) -> bool")),
         ({Name = "word_ge", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_ge",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_gt", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_gt",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_hi", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_hi",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_hs", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_hs",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_le", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_le",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_lo", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_lo",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_ls", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_ls",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_lt", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_lt",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_reduce", Thy = "words",
           Ty =
             typ
             "(bool -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "word_reduce",
           typ
           "(bool -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_and", Thy = "words",
           Ty =
             typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_and",
           typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_or", Thy = "words",
           Ty =
             typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_or",
           typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_xor", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_xor",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_xnor", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_xnor",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_nand", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_nand",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_nor", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_nor",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "bit_field_insert", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "bit_field_insert",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "w2l", Thy = "words",
           Ty =
             typ
             "(num$num) -> ((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "w2l",
           typ
           "(num$num) -> ((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "w2s", Thy = "words",
           Ty =
             typ
             "(num$num) -> ((num$num) -> (string$char)) -> ((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "w2s",
           typ
           "(num$num) -> ((num$num) -> (string$char)) -> ((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_sign_extend", Thy = "words",
           Ty =
             typ
             "(num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_sign_extend",
           typ
           "(num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_to_bin_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_bin_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_oct_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_oct_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_dec_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_dec_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_hex_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_hex_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_bin_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_bin_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_to_oct_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_oct_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_to_dec_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_dec_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_to_hex_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_hex_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"words",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "dimword", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "dimword", typ "('a bool$itself) -> (num$num)")),
         ({Name = "fromNum", Thy = "basis_emit",
           Ty =
             typ
             "(((num$num), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)"},
          (false, "fromNum",
           typ
           "(((num$num), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)")),
         ({Name = "INT_MIN", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "INT_MIN", typ "('a bool$itself) -> (num$num)")),
         ({Name = "UINT_MAX", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "UINT_MAX", typ "('a bool$itself) -> (num$num)")),
         ({Name = "INT_MAX", Thy = "words",
           Ty = typ "('a bool$itself) -> (num$num)"},
          (false, "INT_MAX", typ "('a bool$itself) -> (num$num)")),
         ({Name = "w2n", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> (num$num)"},
          (false, "w2n", typ "((bool, 'a) fcp$cart) -> (num$num)")),
         ({Name = "word_eq", Thy = "basis_emit",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_eq",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "w2w_itself", Thy = "basis_emit",
           Ty =
             typ
             "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "w2w_itself",
           typ
           "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "word_or", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_or",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_lsl", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_lsl",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_bits", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_bits",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_signed_bits", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_signed_bits",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_bit", Thy = "words",
           Ty = typ "(num$num) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_bit",
           typ "(num$num) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_join", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, (('a, 'b) sum$sum)) fcp$cart)"},
          (false, "word_join",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, (('a, 'b) sum$sum)) fcp$cart)")),
         ({Name = "sw2sw_itself", Thy = "basis_emit",
           Ty =
             typ
             "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "sw2sw_itself",
           typ
           "('b bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "word_extract_itself", Thy = "basis_emit",
           Ty =
             typ
             "('b bool$itself) -> (num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "word_extract_itself",
           typ
           "('b bool$itself) -> (num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "word_slice", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_slice",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_concat_itself", Thy = "basis_emit",
           Ty =
             typ
             "('c bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'c) fcp$cart)"},
          (false, "word_concat_itself",
           typ
           "('c bool$itself) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'c) fcp$cart)")),
         ({Name = "word_log2", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_log2",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_reverse", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_reverse",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_modify", Thy = "words",
           Ty =
             typ
             "((num$num) -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_modify",
           typ
           "((num$num) -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_lsb", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> bool"},
          (false, "word_lsb", typ "((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_msb", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> bool"},
          (false, "word_msb", typ "((bool, 'a) fcp$cart) -> bool")),
         ({Name = "add_with_carry", Thy = "words",
           Ty =
             typ
             "((((bool, 'a) fcp$cart), ((((bool, 'a) fcp$cart), bool) pair$prod)) pair$prod) -> ((((bool, 'a) fcp$cart), ((bool, bool) pair$prod)) pair$prod)"},
          (false, "add_with_carry",
           typ
           "((((bool, 'a) fcp$cart), ((((bool, 'a) fcp$cart), bool) pair$prod)) pair$prod) -> ((((bool, 'a) fcp$cart), ((bool, bool) pair$prod)) pair$prod)")),
         ({Name = "word_1comp", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_1comp",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_and", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_and",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_xor", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_xor",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_2comp", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_2comp",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_div", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_div",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_sdiv", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_sdiv",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_add", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_add",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_sub", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_sub",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_mul", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_mul",
           typ
           "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_lsr", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_lsr",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_asr", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_asr",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_ror", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_ror",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_rol", Thy = "words",
           Ty =
             typ
             "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)"},
          (false, "word_rol",
           typ
           "((bool, 'a) fcp$cart) -> (num$num) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_rrx", Thy = "words",
           Ty =
             typ
             "((bool, ((bool, 'a) fcp$cart)) pair$prod) -> ((bool, ((bool, 'a) fcp$cart)) pair$prod)"},
          (false, "word_rrx",
           typ
           "((bool, ((bool, 'a) fcp$cart)) pair$prod) -> ((bool, ((bool, 'a) fcp$cart)) pair$prod)")),
         ({Name = "word_index", Thy = "basis_emit",
           Ty = typ "((bool, 'a) fcp$cart) -> (num$num) -> bool"},
          (false, "word_index",
           typ "((bool, 'a) fcp$cart) -> (num$num) -> bool")),
         ({Name = "word_ge", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_ge",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_gt", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_gt",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_hi", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_hi",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_hs", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_hs",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_le", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_le",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_lo", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_lo",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_ls", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_ls",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_lt", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool"},
          (false, "word_lt",
           typ "((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart) -> bool")),
         ({Name = "word_reduce", Thy = "words",
           Ty =
             typ
             "(bool -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "word_reduce",
           typ
           "(bool -> bool -> bool) -> ((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_and", Thy = "words",
           Ty =
             typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_and",
           typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_or", Thy = "words",
           Ty =
             typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_or",
           typ "((bool, ''a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_xor", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_xor",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_xnor", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_xnor",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_nand", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_nand",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "reduce_nor", Thy = "words",
           Ty =
             typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)"},
          (false, "reduce_nor",
           typ "((bool, 'a) fcp$cart) -> ((bool, (one$one)) fcp$cart)")),
         ({Name = "bit_field_insert", Thy = "words",
           Ty =
             typ
             "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'b) fcp$cart)"},
          (false, "bit_field_insert",
           typ
           "(num$num) -> (num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'b) fcp$cart) -> ((bool, 'b) fcp$cart)")),
         ({Name = "w2l", Thy = "words",
           Ty =
             typ
             "(num$num) -> ((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "w2l",
           typ
           "(num$num) -> ((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "w2s", Thy = "words",
           Ty =
             typ
             "(num$num) -> ((num$num) -> (string$char)) -> ((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "w2s",
           typ
           "(num$num) -> ((num$num) -> (string$char)) -> ((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_sign_extend", Thy = "words",
           Ty =
             typ
             "(num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)"},
          (false, "word_sign_extend",
           typ
           "(num$num) -> ((bool, 'a) fcp$cart) -> ((bool, 'a) fcp$cart)")),
         ({Name = "word_to_bin_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_bin_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_oct_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_oct_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_dec_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_dec_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_hex_list", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)"},
          (false, "word_to_hex_list",
           typ "((bool, 'a) fcp$cart) -> ((num$num) list$list)")),
         ({Name = "word_to_bin_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_bin_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_to_oct_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_oct_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_to_dec_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_dec_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)")),
         ({Name = "word_to_hex_string", Thy = "words",
           Ty = typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"},
          (false, "word_to_hex_string",
           typ "((bool, 'a) fcp$cart) -> ((string$char) list$list)"))
       ]
     end



  val _ = ConstMapML.insert_cons
            (Term.prim_mk_const{Name="n2w_itself",Thy="words"})
  fun WORDS_EMIT_RULE thm = let
    open boolTheory wordsTheory
    val rws = List.map Conv.GSYM [word_index_def, n2w_itself_def, word_eq_def,
                w2w_itself_def, sw2sw_itself_def, word_concat_itself_def,
                word_extract_itself_def, literal_case_DEF] @
               [BIT_UPDATE, fcp_n2w, word_T_def, word_L_def, word_H_def,
                literal_case_THM]
    val rule = Conv.CONV_RULE (Conv.STRIP_QUANT_CONV
                 (Conv.RHS_CONV (Rewrite.PURE_REWRITE_CONV rws)))
    val thm = Rewrite.PURE_REWRITE_RULE [Conv.GSYM n2w_itself_def] thm
  in
    Drule.LIST_CONJ (List.map (Conv.BETA_RULE o rule) (Drule.CONJUNCTS thm))
  end
  val _ = EmitML.reshape_thm_hook := (WORDS_EMIT_RULE o !EmitML.reshape_thm_hook)


  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"int",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "int_of_num", Thy = "integer",
           Ty = typ "(num$num) -> (integer$int)"},
          (true, "int_of_num", typ "(num$num) -> (integer$int)")),
         ({Name = "neg_int_of_num", Thy = "basis_emit",
           Ty = typ "(num$num) -> (integer$int)"},
          (true, "neg_int_of_num", typ "(num$num) -> (integer$int)")),
         ({Name = "int_neg", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int)"},
          (false, "int_neg", typ "(integer$int) -> (integer$int)")),
         ({Name = "Num", Thy = "integer",
           Ty = typ "(integer$int) -> (num$num)"},
          (false, "Num", typ "(integer$int) -> (num$num)")),
         ({Name = "int_lt", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_lt", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "int_le", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_le", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "int_gt", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_gt", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "int_ge", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_ge", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "ABS", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int)"},
          (false, "ABS", typ "(integer$int) -> (integer$int)")),
         ({Name = "int_add", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_add",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_sub", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_sub",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_mul", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_mul",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_exp", Thy = "integer",
           Ty = typ "(integer$int) -> (num$num) -> (integer$int)"},
          (false, "int_exp",
           typ "(integer$int) -> (num$num) -> (integer$int)")),
         ({Name = "int_div", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_div",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_mod", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_mod",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_quot", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_quot",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_rem", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_rem",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "INT_MAX", Thy = "integer_word",
           Ty = typ "('a bool$itself) -> (integer$int)"},
          (false, "INT_MAX", typ "('a bool$itself) -> (integer$int)")),
         ({Name = "INT_MIN", Thy = "integer_word",
           Ty = typ "('a bool$itself) -> (integer$int)"},
          (false, "INT_MIN", typ "('a bool$itself) -> (integer$int)")),
         ({Name = "UINT_MAX", Thy = "integer_word",
           Ty = typ "('a bool$itself) -> (integer$int)"},
          (false, "UINT_MAX", typ "('a bool$itself) -> (integer$int)")),
         ({Name = "i2w_itself", Thy = "basis_emit",
           Ty =
             typ
             "(((integer$int), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)"},
          (false, "i2w_itself",
           typ
           "(((integer$int), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)")),
         ({Name = "w2i", Thy = "integer_word",
           Ty = typ "((bool, 'a) fcp$cart) -> (integer$int)"},
          (false, "w2i", typ "((bool, 'a) fcp$cart) -> (integer$int)"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"int",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "int_of_num", Thy = "integer",
           Ty = typ "(num$num) -> (integer$int)"},
          (true, "int_of_num", typ "(num$num) -> (integer$int)")),
         ({Name = "neg_int_of_num", Thy = "basis_emit",
           Ty = typ "(num$num) -> (integer$int)"},
          (true, "neg_int_of_num", typ "(num$num) -> (integer$int)")),
         ({Name = "int_neg", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int)"},
          (false, "int_neg", typ "(integer$int) -> (integer$int)")),
         ({Name = "Num", Thy = "integer",
           Ty = typ "(integer$int) -> (num$num)"},
          (false, "Num", typ "(integer$int) -> (num$num)")),
         ({Name = "int_lt", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_lt", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "int_le", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_le", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "int_gt", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_gt", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "int_ge", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> bool"},
          (false, "int_ge", typ "(integer$int) -> (integer$int) -> bool")),
         ({Name = "ABS", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int)"},
          (false, "ABS", typ "(integer$int) -> (integer$int)")),
         ({Name = "int_add", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_add",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_sub", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_sub",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_mul", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_mul",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_exp", Thy = "integer",
           Ty = typ "(integer$int) -> (num$num) -> (integer$int)"},
          (false, "int_exp",
           typ "(integer$int) -> (num$num) -> (integer$int)")),
         ({Name = "int_div", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_div",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_mod", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_mod",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_quot", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_quot",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "int_rem", Thy = "integer",
           Ty = typ "(integer$int) -> (integer$int) -> (integer$int)"},
          (false, "int_rem",
           typ "(integer$int) -> (integer$int) -> (integer$int)")),
         ({Name = "INT_MAX", Thy = "integer_word",
           Ty = typ "('a bool$itself) -> (integer$int)"},
          (false, "INT_MAX", typ "('a bool$itself) -> (integer$int)")),
         ({Name = "INT_MIN", Thy = "integer_word",
           Ty = typ "('a bool$itself) -> (integer$int)"},
          (false, "INT_MIN", typ "('a bool$itself) -> (integer$int)")),
         ({Name = "UINT_MAX", Thy = "integer_word",
           Ty = typ "('a bool$itself) -> (integer$int)"},
          (false, "UINT_MAX", typ "('a bool$itself) -> (integer$int)")),
         ({Name = "i2w_itself", Thy = "basis_emit",
           Ty =
             typ
             "(((integer$int), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)"},
          (false, "i2w_itself",
           typ
           "(((integer$int), ('a bool$itself)) pair$prod) -> ((bool, 'a) fcp$cart)")),
         ({Name = "w2i", Thy = "integer_word",
           Ty = typ "((bool, 'a) fcp$cart) -> (integer$int)"},
          (false, "w2i", typ "((bool, 'a) fcp$cart) -> (integer$int)"))
       ]
     end



  val _ = EmitML.is_int_literal_hook := intSyntax.is_int_literal;
  val _ = EmitML.int_of_term_hook := intSyntax.int_of_term;



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"sorting",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "PART", Thy = "sorting",
           Ty =
             typ
             "('a -> bool) -> ('a list$list) -> ('a list$list) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "PART",
           typ
           "('a -> bool) -> ('a list$list) -> ('a list$list) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "PARTITION", Thy = "sorting",
           Ty =
             typ
             "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "PARTITION",
           typ
           "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "QSORT", Thy = "sorting",
           Ty =
             typ "('a -> 'a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "QSORT",
           typ "('a -> 'a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "SORTED", Thy = "sorting",
           Ty = typ "('a -> 'a -> bool) -> ('a list$list) -> bool"},
          (false, "SORTED",
           typ "('a -> 'a -> bool) -> ('a list$list) -> bool"))
       ]
     end



  val _ = 
     let open Parse
         fun doit (r,(b,s,ty)) = 
           let val c = Term.mk_thy_const r
           in ConstMapML.prim_insert(c,(b,"sorting",s,ty))
           end
         fun typ s = Feedback.trace ("Vartype Format Complaint", 0)
                      (#1 (parse_from_grammars min_grammars))
                      [QUOTE (":"^s)]
     in
       List.app doit [
         ({Name = "PART", Thy = "sorting",
           Ty =
             typ
             "('a -> bool) -> ('a list$list) -> ('a list$list) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "PART",
           typ
           "('a -> bool) -> ('a list$list) -> ('a list$list) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "PARTITION", Thy = "sorting",
           Ty =
             typ
             "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)"},
          (false, "PARTITION",
           typ
           "('a -> bool) -> ('a list$list) -> ((('a list$list), ('a list$list)) pair$prod)")),
         ({Name = "QSORT", Thy = "sorting",
           Ty =
             typ "('a -> 'a -> bool) -> ('a list$list) -> ('a list$list)"},
          (false, "QSORT",
           typ "('a -> 'a -> bool) -> ('a list$list) -> ('a list$list)")),
         ({Name = "SORTED", Thy = "sorting",
           Ty = typ "('a -> 'a -> bool) -> ('a list$list) -> bool"},
          (false, "SORTED",
           typ "('a -> 'a -> bool) -> ('a list$list) -> bool"))
       ]
     end

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "basis_emit",
    thydataty = "compute",
    data =
        "basis_emit.IS_EMPTY_def basis_emit.fromNum_def basis_emit.i2w_itself_def basis_emit.neg_int_of_num_def basis_emit.mk_fcp_def basis_emit.word_concat_itself_def basis_emit.word_extract_itself_def basis_emit.word_eq_def basis_emit.sw2sw_itself_def basis_emit.w2w_itself_def basis_emit.word_index_def basis_emit.FCPi_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "basis_emit"
end
