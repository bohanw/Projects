structure basicSizeTheory :> basicSizeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading basicSizeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open numeralTheory optionTheory
  in end;
  val _ = Theory.link_parents
          ("basicSize",
          Arbnum.fromString "1488586093",
          Arbnum.fromString "153614")
          [("numeral",
           Arbnum.fromString "1488586081",
           Arbnum.fromString "951418"),
           ("option",
           Arbnum.fromString "1488586022",
           Arbnum.fromString "931085")];
  val _ = Theory.incorporate_types "basicSize" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("sum", "sum"),
   ID("pair", "prod"), ID("option", "option"), ID("one", "one"),
   ID("min", "bool"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("sum", "INL"),
   ID("sum", "INR"), ID("option", "NONE"), ID("option", "SOME"),
   ID("num", "SUC"), ID("pair", "UNCURRY"), ID("basicSize", "bool_size"),
   ID("basicSize", "one_size"), ID("basicSize", "option_size"),
   ID("basicSize", "pair_size"), ID("basicSize", "sum_size")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYV "'a", TYOP [2, 2, 1], TYOP [0, 3, 0],
   TYOP [0, 1, 0], TYOP [0, 5, 4], TYOP [0, 2, 0], TYOP [0, 7, 6],
   TYOP [3, 2, 1], TYOP [0, 9, 0], TYOP [0, 5, 10], TYOP [0, 7, 11],
   TYOP [4, 2], TYOP [0, 13, 0], TYOP [0, 7, 14], TYOP [5],
   TYOP [0, 16, 0], TYOP [6], TYOP [0, 18, 0], TYOP [0, 2, 18],
   TYOP [0, 20, 18], TYOP [0, 1, 18], TYOP [0, 22, 18], TYOP [0, 18, 18],
   TYOP [0, 24, 18], TYOP [0, 7, 18], TYOP [0, 26, 18], TYOP [0, 5, 18],
   TYOP [0, 28, 18], TYOP [0, 16, 18], TYOP [0, 30, 18], TYOP [0, 0, 0],
   TYOP [0, 0, 32], TYOP [0, 18, 24], TYOP [0, 10, 18], TYOP [0, 10, 35],
   TYOP [0, 0, 18], TYOP [0, 0, 37], TYOP [0, 2, 3], TYOP [0, 1, 3],
   TYOP [0, 2, 13], TYOP [0, 2, 5], TYOP [0, 42, 10]]
  end
  val _ = Theory.incorporate_consts "basicSize" tyvector
     [("sum_size", 8), ("pair_size", 12), ("option_size", 15),
      ("one_size", 17), ("bool_size", 19)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("b", 18), TMV("f", 7), TMV("g", 5), TMV("x", 2), TMV("x", 16),
   TMV("y", 1), TMC(7, 21), TMC(7, 23), TMC(7, 25), TMC(7, 27), TMC(7, 29),
   TMC(7, 31), TMC(8, 33), TMC(9, 34), TMC(10, 0), TMC(11, 36),
   TMC(11, 38), TMC(12, 39), TMC(13, 40), TMC(14, 13), TMC(15, 41),
   TMC(16, 32), TMC(17, 43), TMC(18, 19), TMC(19, 17), TMC(20, 15),
   TMC(21, 12), TMC(22, 8)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op bool_size_def x = x
    val op bool_size_def =
    DT(((("basicSize",0),[]),[]), [read"%8%0%16%23$0@@%14@|@"])
  fun op pair_size_def x = x
    val op pair_size_def =
    DT(((("basicSize",1),[]),[]),
       [read"%9%1%10%2%15%26$1@$0@@%22%3%5%12$3$1@@$2$0@@||@@|@|@"])
  fun op one_size_def x = x
    val op one_size_def =
    DT(((("basicSize",2),[]),[]), [read"%11%4%16%24$0@@%14@|@"])
  fun op sum_size_def x = x
    val op sum_size_def =
    DT(((("basicSize",3),[("sum",[13])]),["DISK_THM"]),
       [read"%13%9%1%10%2%6%3%16%27$2@$1@%17$0@@@$2$0@@|@|@|@@%9%1%10%2%7%5%16%27$2@$1@%18$0@@@$1$0@@|@|@|@@"])
  fun op option_size_def x = x
    val op option_size_def =
    DT(((("basicSize",4),[("option",[4])]),["DISK_THM"]),
       [read"%13%9%1%16%25$0@%19@@%14@|@@%9%1%6%3%16%25$1@%20$0@@@%21$1$0@@@|@|@@"])
  end
  val _ = DB.bindl "basicSize"
  [("bool_size_def",bool_size_def,DB.Def),
   ("pair_size_def",pair_size_def,DB.Def),
   ("one_size_def",one_size_def,DB.Def),
   ("sum_size_def",sum_size_def,DB.Def),
   ("option_size_def",option_size_def,DB.Def)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("numeralTheory.numeral_grammars",
                          numeralTheory.numeral_grammars),
                         ("optionTheory.option_grammars",
                          optionTheory.option_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_size", (Term.prim_mk_const { Name = "bool_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_size", (Term.prim_mk_const { Name = "bool_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_size", (Term.prim_mk_const { Name = "pair_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pair_size", (Term.prim_mk_const { Name = "pair_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("one_size", (Term.prim_mk_const { Name = "one_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("one_size", (Term.prim_mk_const { Name = "one_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum_size", (Term.prim_mk_const { Name = "sum_size", Thy = "basicSize"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_size", (Term.prim_mk_const { Name = "option_size", Thy = "basicSize"}))
  val basicSize_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "basicSize"
end
