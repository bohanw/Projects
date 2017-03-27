structure string_numTheory :> string_numTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading string_numTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open stringTheory
  in end;
  val _ = Theory.link_parents
          ("string_num",
          Arbnum.fromString "1488586836",
          Arbnum.fromString "252318")
          [("string",
           Arbnum.fromString "1488586780",
           Arbnum.fromString "545382")];
  val _ = Theory.incorporate_types "string_num" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("list", "list"),
   ID("string", "char"), ID("min", "bool"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("string", "CHR"), ID("bool", "COND"),
   ID("list", "CONS"), ID("arithmetic", "DIV"), ID("combin", "I"),
   ID("bool", "LET"), ID("arithmetic", "MOD"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("string", "ORD"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("string_num", "n2s"), ID("string_num", "s2n"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [3], TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 0, 2],
   TYOP [4], TYOP [0, 0, 5], TYOP [0, 0, 6], TYOP [0, 1, 5],
   TYOP [0, 8, 5], TYOP [0, 6, 5], TYOP [0, 10, 5], TYOP [0, 2, 5],
   TYOP [0, 12, 5], TYOP [0, 0, 0], TYOP [0, 0, 14], TYOP [0, 5, 5],
   TYOP [0, 5, 16], TYOP [0, 4, 5], TYOP [0, 4, 18], TYOP [0, 2, 12],
   TYOP [0, 7, 5], TYOP [0, 21, 7], TYOP [0, 0, 1], TYOP [0, 2, 2],
   TYOP [0, 2, 24], TYOP [0, 5, 25], TYOP [0, 5, 15], TYOP [0, 1, 24],
   TYOP [0, 24, 24], TYOP [0, 4, 4], TYOP [0, 1, 0], TYOP [0, 30, 4],
   TYOP [0, 7, 32]]
  end
  val _ = Theory.incorporate_consts "string_num" tyvector
     [("s2n", 3), ("n2s", 4)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 6), TMV("R", 7), TMV("c", 1), TMV("n", 0), TMV("n2s", 4),
   TMV("r", 0), TMV("r0", 0), TMV("s", 2), TMV("s0", 2), TMV("v", 0),
   TMV("x", 2), TMV("x", 0), TMV("y", 2), TMV("y", 0), TMC(5, 9),
   TMC(5, 11), TMC(5, 13), TMC(5, 10), TMC(6, 15), TMC(7, 15), TMC(8, 15),
   TMC(9, 17), TMC(10, 0), TMC(11, 17), TMC(11, 19), TMC(11, 20),
   TMC(11, 7), TMC(12, 17), TMC(13, 13), TMC(13, 10), TMC(14, 22),
   TMC(15, 14), TMC(16, 14), TMC(17, 23), TMC(18, 26), TMC(18, 27),
   TMC(19, 28), TMC(20, 15), TMC(21, 24), TMC(22, 29), TMC(22, 30),
   TMC(23, 15), TMC(24, 2), TMC(25, 14), TMC(26, 31), TMC(27, 21),
   TMC(28, 33), TMC(29, 0), TMC(30, 4), TMC(31, 3), TMC(32, 16)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op n2s_primitive_def x = x
    val op n2s_primitive_def =
    DT(((("string_num",0),[]),[]),
       [read"%24%48@%46%30%1%21%45$0@@%17%3%17%6%17%5%27%21%50%26$2@%22@@@%21%26$1@%41$2@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@%26$0@%35%26$1@%22@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@$1@@@@@$3%37%20$2@$0@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@$2@@|@|@|@@|@@%4%3%38%34%26$0@%22@@%42@%40%6%40%5%39%8%36%33%20$1@%43%31%47@@@@@$0@|@$3%37%20$2@$0@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@|@%35%26$0@%22@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@$0@@|@%41$0@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@@||@@"])
  fun op s2n_def x = x
    val op s2n_def =
    DT(((("string_num",3),[("list",[13])]),["DISK_THM"]),
       [read"%21%26%49%42@@%22@@%14%2%16%7%26%49%36$1@$0@@@%19%19%18%49$0@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@%44$1@@@%43%31%47@@@@|@|@@"])
  fun op n2s_ind x = x
    val op n2s_ind =
    DT(((("string_num",1),
        [("arithmetic",
         [24,25,41,46,59,71,93,117,154,172,173,177,180,200,236,248]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,95,96,101,104,
          105,107,109,123,129,145]),("combin",[19]),("marker",[6]),
         ("numeral",[3,7,8]),("prim_rec",[42]),("relation",[101,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("string_num",[0])]),["DISK_THM"]),
       [read"%15%0%27%17%3%27%17%6%17%5%27%21%50%26$2@%22@@@%21%26$1@%41$2@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@%26$0@%35%26$1@%22@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@$1@@@@@$3%37%20$2@$0@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@|@|@@$1$0@@|@@%17%9$1$0@|@@|@"])
  fun op n2s_def x = x
    val op n2s_def =
    DT(((("string_num",2),
        [("arithmetic",
         [24,25,41,46,59,71,93,117,154,172,173,177,180,200,236,248]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,95,96,101,104,
          105,107,109,123,129,145]),("combin",[19]),("marker",[6]),
         ("numeral",[3,7,8]),("prim_rec",[42]),("relation",[101,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("string_num",[0])]),["DISK_THM"]),
       [read"%17%3%25%48$0@@%34%26$0@%22@@%42@%40%6%40%5%39%8%36%33%20$1@%43%31%47@@@@@$0@|@%48%37%20$2@$0@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@|@%35%26$0@%22@@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@$0@@|@%41$0@%43%32%31%31%31%31%31%31%31%47@@@@@@@@@@@@@|@"])
  fun op s2n_n2s x = x
    val op s2n_n2s =
    DT(((("string_num",4),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,67,71,73,75,76,79,82,93,99,110,117,
          147,148,154,172,173,177,180,183,200,206,209,214,227,236,237,248,
          269]),
         ("bool",
         [8,14,15,25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,83,93,95,96,
          100,101,104,105,107,108,109,123,124,129,145,147]),
         ("combin",[8,11,15,16,17,19,33,34,35]),("marker",[6]),
         ("numeral",[0,3,5,6,7,8,9,15,16,21,32,34,35,39,40]),
         ("prim_rec",[6,42]),("relation",[101,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("string",[8]),("string_num",[0,3])]),["DISK_THM"]),
       [read"%17%3%26%49%48$0@@@$0@|@"])
  fun op n2s_s2n x = x
    val op n2s_s2n =
    DT(((("string_num",5),
        [("arithmetic",
         [24,25,26,27,41,46,59,62,69,71,73,76,79,82,93,117,128,148,154,172,
          173,177,180,183,200,209,214,215,217,222,227,233,236,248,269]),
         ("bool",
         [14,15,25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,83,93,95,96,
          100,101,104,105,107,109,123,129,145,147,169]),
         ("combin",[8,11,15,16,17,19,33,34,35]),("list",[43,48]),
         ("marker",[6]),("numeral",[0,3,5,6,7,8,9,15,16,17,18]),
         ("prim_rec",[42]),("relation",[101,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("string",[3,6,10]),("string_num",[0,3])]),["DISK_THM"]),
       [read"%25%48%49%7@@@%7@"])
  fun op n2s_11 x = x
    val op n2s_11 =
    DT(((("string_num",6),
        [("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string_num",[4])]),["DISK_THM"]),
       [read"%23%25%48%11@@%48%13@@@%26%11@%13@@"])
  fun op s2n_11 x = x
    val op s2n_11 =
    DT(((("string_num",7),
        [("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string_num",[5])]),["DISK_THM"]),
       [read"%23%26%49%10@@%49%12@@@%25%10@%12@@"])
  fun op n2s_onto x = x
    val op n2s_onto =
    DT(((("string_num",8),
        [("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string_num",[5])]),["DISK_THM"]),
       [read"%16%7%29%3%25$1@%48$0@@|@|@"])
  fun op s2n_onto x = x
    val op s2n_onto =
    DT(((("string_num",9),
        [("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("string_num",[4])]),["DISK_THM"]),
       [read"%17%3%28%7%26$1@%49$0@@|@|@"])
  end
  val _ = DB.bindl "string_num"
  [("n2s_primitive_def",n2s_primitive_def,DB.Def),
   ("s2n_def",s2n_def,DB.Def), ("n2s_ind",n2s_ind,DB.Thm),
   ("n2s_def",n2s_def,DB.Thm), ("s2n_n2s",s2n_n2s,DB.Thm),
   ("n2s_s2n",n2s_s2n,DB.Thm), ("n2s_11",n2s_11,DB.Thm),
   ("s2n_11",s2n_11,DB.Thm), ("n2s_onto",n2s_onto,DB.Thm),
   ("s2n_onto",s2n_onto,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("stringTheory.string_grammars",
                          stringTheory.string_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2s", (Term.prim_mk_const { Name = "n2s", Thy = "string_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2s", (Term.prim_mk_const { Name = "n2s", Thy = "string_num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2n", (Term.prim_mk_const { Name = "s2n", Thy = "string_num"}))
  val string_num_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "string_num",
    thydataty = "simp",
    data =
        "string_num.n2s_s2n string_num.s2n_11 string_num.s2n_n2s string_num.n2s_11"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "string_num",
    thydataty = "compute",
    data = "string_num.n2s_def string_num.s2n_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "string_num"
end
