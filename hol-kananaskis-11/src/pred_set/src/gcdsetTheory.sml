structure gcdsetTheory :> gcdsetTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading gcdsetTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open gcdTheory pred_setTheory
  in end;
  val _ = Theory.link_parents
          ("gcdset",
          Arbnum.fromString "1488586295",
          Arbnum.fromString "991495")
          [("gcd",
           Arbnum.fromString "1488586186",
           Arbnum.fromString "995298"),
           ("pred_set",
           Arbnum.fromString "1488586210",
           Arbnum.fromString "643996")];
  val _ = Theory.incorporate_types "gcdset" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("min", "bool"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("num", "0"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("bool", "COND"), ID("pred_set", "DELETE"), ID("pred_set", "EMPTY"),
   ID("pred_set", "GSPEC"), ID("bool", "IN"), ID("pred_set", "INSERT"),
   ID("pred_set", "INTER"), ID("pred_set", "MAX_SET"),
   ID("pred_set", "MIN_SET"), ID("bool", "\\/"), ID("divides", "divides"),
   ID("gcd", "gcd"), ID("gcdset", "gcdset")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 0, 1], TYOP [0, 2, 0], TYOP [0, 2, 1],
   TYOP [0, 4, 1], TYOP [5, 0, 1], TYOP [0, 1, 6], TYOP [0, 0, 7],
   TYOP [0, 0, 2], TYOP [0, 2, 4], TYOP [0, 1, 1], TYOP [0, 1, 11],
   TYOP [0, 0, 0], TYOP [0, 0, 13], TYOP [0, 1, 14], TYOP [0, 2, 9],
   TYOP [0, 0, 6], TYOP [0, 17, 2], TYOP [0, 0, 4], TYOP [0, 2, 2],
   TYOP [0, 0, 20], TYOP [0, 2, 20]]
  end
  val _ = Theory.incorporate_consts "gcdset" tyvector [("gcdset", 3)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("d", 0), TMV("e", 0), TMV("g", 0), TMV("n", 0), TMV("s", 2),
   TMV("x", 0), TMC(3, 5), TMC(3, 4), TMC(4, 8), TMC(6, 0), TMC(7, 9),
   TMC(8, 10), TMC(8, 9), TMC(9, 12), TMC(10, 15), TMC(11, 16), TMC(12, 2),
   TMC(13, 18), TMC(14, 19), TMC(15, 21), TMC(16, 22), TMC(17, 3),
   TMC(18, 3), TMC(19, 12), TMC(20, 9), TMC(21, 14), TMC(22, 3)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op gcdset_def x = x
    val op gcdset_def =
    DT(((("gcdset",0),[]),[]),
       [read"%6%4%12%26$0@@%14%23%11$0@%16@@%11$0@%19%9@%16@@@@%9@%21%20%17%3%8$0@%10$0@%22%15$1@%9@@@@|@@%17%0%8$0@%7%1%13%18$0@$2@@%24$1@$0@@|@@|@@@@@|@"])
  fun op gcdset_divides x = x
    val op gcdset_divides =
    DT(((("gcdset",1),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,177,180]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,55,58,63,64,71,72,92,93,96,101,104,
          105,107,124]),("divides",[2,5]),("gcdset",[0]),("numeral",[3,8]),
         ("pair",[3]),("pred_set",[3,6,10,45,80,102,296,300,345,347,434]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%7%1%13%18$0@%4@@%24%26%4@@$0@@|@"])
  fun op gcdset_greatest x = x
    val op gcdset_greatest =
    DT(((("gcdset",2),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,176,177,180]),
         ("bool",
         [2,15,25,26,27,30,36,43,51,52,53,54,55,58,63,64,71,72,75,92,93,96,
          99,100,101,104,105,107,124]),("divides",[1,2,5,10]),
         ("gcd",[32,36]),("gcdset",[0]),("marker",[6]),("numeral",[3,8]),
         ("pair",[3]),("pred_set",[3,6,10,45,80,102,191,296,300,345,347]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%13%7%1%13%18$0@%4@@%24%2@$0@@|@@%24%2@%26%4@@@"])
  fun op gcdset_EMPTY x = x
    val op gcdset_EMPTY =
    DT(((("gcdset",3),
        [("bool",[25,26,27,52,54,56,58,105,129,147]),("gcdset",[0]),
         ("pred_set",[53,90,344,367])]),["DISK_THM"]),
       [read"%12%26%16@@%9@"])
  fun op gcdset_INSERT x = x
    val op gcdset_INSERT =
    DT(((("gcdset",4),
        [("bool",[2,15,25,26,36,53,54,55,58,63,75,84,99,105,124]),
         ("divides",[4,13]),("gcd",[0,13]),("gcdset",[1,2]),("marker",[6]),
         ("pred_set",[80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%12%26%19%5@%4@@@%25%5@%26%4@@@"])
  end
  val _ = DB.bindl "gcdset"
  [("gcdset_def",gcdset_def,DB.Def),
   ("gcdset_divides",gcdset_divides,DB.Thm),
   ("gcdset_greatest",gcdset_greatest,DB.Thm),
   ("gcdset_EMPTY",gcdset_EMPTY,DB.Thm),
   ("gcdset_INSERT",gcdset_INSERT,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("gcdTheory.gcd_grammars",gcdTheory.gcd_grammars),
                         ("pred_setTheory.pred_set_grammars",
                          pred_setTheory.pred_set_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gcdset", (Term.prim_mk_const { Name = "gcdset", Thy = "gcdset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gcdset", (Term.prim_mk_const { Name = "gcdset", Thy = "gcdset"}))
  val gcdset_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "gcdset",
    thydataty = "simp",
    data = "gcdset.gcdset_EMPTY gcdset.gcdset_INSERT"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "gcdset"
end
