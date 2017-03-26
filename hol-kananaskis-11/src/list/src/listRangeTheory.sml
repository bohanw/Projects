structure listRangeTheory :> listRangeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading listRangeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open listTheory
  in end;
  val _ = Theory.link_parents
          ("listRange",
          Arbnum.fromString "1488586575",
          Arbnum.fromString "368429")
          [("list",
           Arbnum.fromString "1488586477",
           Arbnum.fromString "361466")];
  val _ = Theory.incorporate_types "listRange" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("num", "num"), ID("bool", "!"),
   ID("min", "bool"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("list", "ALL_DISTINCT"),
   ID("arithmetic", "BIT1"), ID("list", "CONS"), ID("list", "EL"),
   ID("list", "GENLIST"), ID("bool", "IN"), ID("list", "LENGTH"),
   ID("list", "LIST_TO_SET"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("arithmetic", "ZERO"),
   ID("listRange", "listRangeINC"), ID("listRange", "listRangeLHI")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0], TYOP [0, 0, 1], TYOP [0, 0, 2], TYOP [4],
   TYOP [0, 0, 4], TYOP [0, 5, 4], TYOP [0, 0, 0], TYOP [0, 0, 7],
   TYOP [0, 4, 4], TYOP [0, 4, 9], TYOP [0, 0, 5], TYOP [0, 1, 4],
   TYOP [0, 1, 12], TYOP [0, 1, 1], TYOP [0, 0, 14], TYOP [0, 1, 0],
   TYOP [0, 0, 16], TYOP [0, 7, 2], TYOP [0, 0, 6], TYOP [0, 1, 5]]
  end
  val _ = Theory.incorporate_consts "listRange" tyvector
     [("listRangeLHI", 3), ("listRangeINC", 3)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("hi", 0), TMV("i", 0), TMV("lo", 0), TMV("m", 0), TMV("n", 0),
   TMV("x", 0), TMC(3, 6), TMC(5, 8), TMC(6, 8), TMC(7, 10), TMC(8, 11),
   TMC(9, 11), TMC(10, 10), TMC(10, 13), TMC(10, 11), TMC(11, 10),
   TMC(12, 12), TMC(13, 7), TMC(14, 15), TMC(15, 17), TMC(16, 18),
   TMC(17, 19), TMC(18, 16), TMC(19, 20), TMC(20, 1), TMC(21, 7),
   TMC(22, 0), TMC(23, 3), TMC(24, 3)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op listRangeINC_def x = x
    val op listRangeINC_def =
    DT(((("listRange",0),[]),[]),
       [read"%6%3%6%4%13%27$1@$0@@%20%1%7$2@$0@|@%8%7$0@%25%17%26@@@@$1@@@|@|@"])
  fun op listRangeLHI_def x = x
    val op listRangeLHI_def =
    DT(((("listRange",5),[]),[]),
       [read"%6%3%6%4%13%28$1@$0@@%20%1%7$2@$0@|@%8$0@$1@@@|@|@"])
  fun op listRangeINC_SING x = x
    val op listRangeINC_SING =
    DT(((("listRange",1),
        [("arithmetic",[22,25,128,130]),("bool",[25,51,56]),
         ("list",[48,279,295]),("listRange",[0])]),["DISK_THM"]),
       [read"%13%27%3@%3@@%18%3@%24@@"])
  fun op MEM_listRangeINC x = x
    val op MEM_listRangeINC =
    DT(((("listRange",2),
        [("arithmetic",
         [24,25,26,41,46,59,71,93,172,173,176,177,180,199,269]),
         ("bool",
         [25,26,36,43,51,52,53,54,58,63,93,96,101,104,105,106,124]),
         ("list",[296]),("listRange",[0]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%12%21%5@%23%27%3@%4@@@@%9%11%3@%5@@%11%5@%4@@@"])
  fun op listRangeINC_CONS x = x
    val op listRangeINC_CONS =
    DT(((("listRange",3),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,71,93,172,173,177,180,199,269]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("combin",[8]),("list",[48,286,292]),("listRange",[0]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%15%11%3@%4@@%13%27%3@%4@@%18%3@%27%7%3@%25%17%26@@@@%4@@@@"])
  fun op listRangeINC_EMPTY x = x
    val op listRangeINC_EMPTY =
    DT(((("listRange",4),
        [("arithmetic",[24,25,41,46,71,93,95,173,176,180,205]),
         ("bool",[25,26,36,51,54,56,58,63,96,101,104,105,124]),
         ("list",[295]),("listRange",[0]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%15%10%4@%3@@%13%27%3@%4@@%24@@"])
  fun op listRangeLHI_EQ x = x
    val op listRangeLHI_EQ =
    DT(((("listRange",6),
        [("arithmetic",[130]),("bool",[25,56]),("list",[295]),
         ("listRange",[5])]),["DISK_THM"]), [read"%13%28%3@%3@@%24@"])
  fun op MEM_listRangeLHI x = x
    val op MEM_listRangeLHI =
    DT(((("listRange",7),
        [("arithmetic",
         [24,25,26,41,46,59,71,93,172,173,176,177,180,199,269]),
         ("bool",
         [25,26,36,43,51,52,53,54,58,63,93,96,101,104,105,106,124]),
         ("list",[296]),("listRange",[5]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%12%21%5@%23%28%3@%4@@@@%9%11%3@%5@@%10%5@%4@@@"])
  fun op listRangeLHI_EMPTY x = x
    val op listRangeLHI_EMPTY =
    DT(((("listRange",8),
        [("arithmetic",[24,95,205]),
         ("bool",[25,26,51,53,56,58,63,105,124]),("list",[295]),
         ("listRange",[5])]),["DISK_THM"]),
       [read"%15%11%0@%2@@%13%28%2@%0@@%24@@"])
  fun op listRangeLHI_CONS x = x
    val op listRangeLHI_CONS =
    DT(((("listRange",9),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,71,93,172,173,177,180,199,269]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("combin",[8]),("list",[48,286,292]),("listRange",[5]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%15%10%2@%0@@%13%28%2@%0@@%18%2@%28%7%2@%25%17%26@@@@%0@@@@"])
  fun op listRangeLHI_ALL_DISTINCT x = x
    val op listRangeLHI_ALL_DISTINCT =
    DT(((("listRange",10),
        [("arithmetic",[24,25,27,41,46,59,63,71,93,172,173,177,180,269]),
         ("bool",
         [14,25,26,27,36,43,51,52,53,54,58,63,93,96,101,104,105,124]),
         ("list",[215]),("listRange",[7,8,9]),("num",[9]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%16%28%2@%0@@"])
  fun op LENGTH_listRangeLHI x = x
    val op LENGTH_listRangeLHI =
    DT(((("listRange",11),
        [("bool",[25,56]),("list",[276]),("listRange",[5])]),["DISK_THM"]),
       [read"%14%22%28%2@%0@@@%8%0@%2@@"])
  fun op EL_listRangeLHI x = x
    val op EL_listRangeLHI =
    DT(((("listRange",12),
        [("arithmetic",
         [22,24,25,26,27,28,41,46,59,63,71,91,93,172,173,177,180,269]),
         ("bool",
         [14,25,26,27,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("list",[17,128]),("listRange",[9]),("num",[9]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%15%10%7%2@%1@@%0@@%14%19%1@%28%2@%0@@@%7%2@%1@@@"])
  end
  val _ = DB.bindl "listRange"
  [("listRangeINC_def",listRangeINC_def,DB.Def),
   ("listRangeLHI_def",listRangeLHI_def,DB.Def),
   ("listRangeINC_SING",listRangeINC_SING,DB.Thm),
   ("MEM_listRangeINC",MEM_listRangeINC,DB.Thm),
   ("listRangeINC_CONS",listRangeINC_CONS,DB.Thm),
   ("listRangeINC_EMPTY",listRangeINC_EMPTY,DB.Thm),
   ("listRangeLHI_EQ",listRangeLHI_EQ,DB.Thm),
   ("MEM_listRangeLHI",MEM_listRangeLHI,DB.Thm),
   ("listRangeLHI_EMPTY",listRangeLHI_EMPTY,DB.Thm),
   ("listRangeLHI_CONS",listRangeLHI_CONS,DB.Thm),
   ("listRangeLHI_ALL_DISTINCT",listRangeLHI_ALL_DISTINCT,DB.Thm),
   ("LENGTH_listRangeLHI",LENGTH_listRangeLHI,DB.Thm),
   ("EL_listRangeLHI",EL_listRangeLHI,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("listTheory.list_grammars",
                          listTheory.list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listRangeINC", (Term.prim_mk_const { Name = "listRangeINC", Thy = "listRange"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listRangeINC", (Term.prim_mk_const { Name = "listRangeINC", Thy = "listRange"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "listRangeINC", fixity = Closefix,
pp_elements = [TOK "[", TM, HardSpace 1, TOK "..", BreakSpace(1, 1), TM, BreakSpace(0, 0), TOK "]"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listRangeLHI", (Term.prim_mk_const { Name = "listRangeLHI", Thy = "listRange"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listRangeLHI", (Term.prim_mk_const { Name = "listRangeLHI", Thy = "listRange"}))
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "listRangeLHI", fixity = Closefix,
pp_elements = [TOK "[", TM, HardSpace 1, TOK "..<", BreakSpace(1, 1), TM, BreakSpace(0, 0), TOK "]"],
paren_style = OnlyIfNecessary,
block_style = (AroundEachPhrase, (CONSISTENT, 0))}
  val listRange_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "listRange",
    thydataty = "simp",
    data =
        "listRange.listRangeINC_SING listRange.listRangeLHI_ALL_DISTINCT listRange.LENGTH_listRangeLHI listRange.listRangeLHI_EQ listRange.MEM_listRangeLHI listRange.MEM_listRangeINC"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "listRange",
    thydataty = "compute",
    data = "listRange.listRangeINC_def listRange.listRangeLHI_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "listRange"
end
