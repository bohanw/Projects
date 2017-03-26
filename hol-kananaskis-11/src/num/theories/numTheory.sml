structure numTheory :> numTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading numTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open markerTheory
  in end;
  val _ = Theory.link_parents
          ("num",Arbnum.fromString "1488586028",Arbnum.fromString "955711")
          [("marker",
           Arbnum.fromString "1488585918",
           Arbnum.fromString "889499")];
  val _ = Theory.incorporate_types "num" [("num", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "ind"), ID("min", "fun"), ID("num", "num"), ID("min", "bool"),
   ID("bool", "!"), ID("bool", "/\\"), ID("num", "0"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("num", "ABS_num"),
   ID("num", "IS_NUM_REP"), ID("bool", "ONE_ONE"), ID("bool", "ONTO"),
   ID("num", "REP_num"), ID("num", "SUC"), ID("num", "SUC_REP"),
   ID("bool", "TYPE_DEFINITION"), ID("num", "ZERO_REP"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [1, 0, 0], TYOP [2], TYOP [1, 2, 2], TYOP [1, 2, 0],
   TYOP [3], TYOP [1, 0, 5], TYOP [1, 0, 2], TYOP [1, 2, 5],
   TYOP [1, 6, 5], TYOP [1, 9, 5], TYOP [1, 8, 5], TYOP [1, 11, 5],
   TYOP [1, 5, 5], TYOP [1, 5, 13], TYOP [1, 0, 6], TYOP [1, 2, 8],
   TYOP [1, 4, 5], TYOP [1, 17, 5], TYOP [1, 1, 5], TYOP [1, 6, 17]]
  end
  val _ = Theory.incorporate_consts "num" tyvector
     [("ZERO_REP", 0), ("SUC_REP", 1), ("SUC", 3), ("REP_num", 4),
      ("IS_NUM_REP", 6), ("ABS_num", 7), ("0", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 6), TMV("P", 8), TMV("a", 2), TMV("m", 0), TMV("m", 2),
   TMV("n", 0), TMV("n", 2), TMV("r", 0), TMV("rep", 4), TMV("y", 0),
   TMC(4, 10), TMC(4, 12), TMC(4, 9), TMC(4, 11), TMC(5, 14), TMC(6, 2),
   TMC(7, 14), TMC(7, 15), TMC(7, 16), TMC(8, 14), TMC(9, 18), TMC(10, 7),
   TMC(11, 6), TMC(12, 19), TMC(13, 19), TMC(14, 4), TMC(15, 3),
   TMC(16, 1), TMC(17, 20), TMC(18, 0), TMC(19, 13)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op SUC_REP_DEF x = x
    val op SUC_REP_DEF =
    DT(((("num",0),[("bool",[16])]),["DISK_THM"]),
       [read"%14%23%27@@%30%24%27@@@"])
  fun op ZERO_REP_DEF x = x
    val op ZERO_REP_DEF =
    DT(((("num",1),[("bool",[26,115]),("num",[0])]),["DISK_THM"]),
       [read"%12%9%30%17%29@%27$0@@@|@"])
  fun op IS_NUM_REP x = x
    val op IS_NUM_REP =
    DT(((("num",2),[]),[]),
       [read"%12%3%16%22$0@@%10%0%19%14$0%29@@%12%5%19$1$0@@$1%27$0@@@|@@@$0$1@@|@@|@"])
  fun op num_TY_DEF x = x
    val op num_TY_DEF =
    DT(((("num",3),[("num",[2])]),[]), [read"%20%8%28%22@$0@|@"])
  fun op num_ISO_DEF x = x
    val op num_ISO_DEF =
    DT(((("num",4),[("bool",[117]),("num",[3])]),["DISK_THM"]),
       [read"%14%13%2%18%21%25$0@@@$0@|@@%12%7%16%22$0@@%17%25%21$0@@@$0@@|@@"])
  fun op ZERO_DEF x = x
    val op ZERO_DEF = DT(((("num",5),[]),[]), [read"%18%15@%21%29@@"])
  fun op SUC_DEF x = x
    val op SUC_DEF =
    DT(((("num",6),[]),[]), [read"%13%4%18%26$0@@%21%27%25$0@@@@|@"])
  fun op NOT_SUC x = x
    val op NOT_SUC =
    DT(((("num",7),
        [("bool",[26,53,58,63]),("num",[1,2,4,5,6])]),["DISK_THM"]),
       [read"%13%6%30%18%26$0@@%15@@|@"])
  fun op INV_SUC x = x
    val op INV_SUC =
    DT(((("num",8),
        [("bool",[25,26,53,63,116]),("num",[0,2,4,6])]),["DISK_THM"]),
       [read"%13%4%13%6%19%18%26$1@@%26$0@@@%18$1@$0@@|@|@"])
  fun op INDUCTION x = x
    val op INDUCTION =
    DT(((("num",9),
        [("bool",[25,26,27,30,51,53,56,58,63,105]),
         ("num",[2,4,5,6])]),["DISK_THM"]),
       [read"%11%1%19%14$0%15@@%13%6%19$1$0@@$1%26$0@@@|@@@%13%6$1$0@|@@|@"])
  end
  val _ = DB.bindl "num"
  [("SUC_REP_DEF",SUC_REP_DEF,DB.Def),
   ("ZERO_REP_DEF",ZERO_REP_DEF,DB.Def), ("IS_NUM_REP",IS_NUM_REP,DB.Def),
   ("num_TY_DEF",num_TY_DEF,DB.Def), ("num_ISO_DEF",num_ISO_DEF,DB.Def),
   ("ZERO_DEF",ZERO_DEF,DB.Def), ("SUC_DEF",SUC_DEF,DB.Def),
   ("NOT_SUC",NOT_SUC,DB.Thm), ("INV_SUC",INV_SUC,DB.Thm),
   ("INDUCTION",INDUCTION,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("markerTheory.marker_grammars",
                          markerTheory.marker_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUC_REP", (Term.prim_mk_const { Name = "SUC_REP", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZERO_REP", (Term.prim_mk_const { Name = "ZERO_REP", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IS_NUM_REP", (Term.prim_mk_const { Name = "IS_NUM_REP", Thy = "num"}))
  val _ = update_grms temp_add_type "num"
  val _ = update_grms temp_add_type "num"
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REP_num", (Term.prim_mk_const { Name = "REP_num", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ABS_num", (Term.prim_mk_const { Name = "ABS_num", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("0", (Term.prim_mk_const { Name = "0", Thy = "num"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUC", (Term.prim_mk_const { Name = "SUC", Thy = "num"}))
  val num_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "num",
    thydataty = "OpenTheoryMap",
    data =
        "22.Number.Natural.natural3.num3.num 19.Number.Natural.zero3.num1.018.Number.Natural.suc3.num3.SUC"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "num"
end
