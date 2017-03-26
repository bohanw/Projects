structure quotient_optionTheory :> quotient_optionTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading quotient_optionTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open quotientTheory
  in end;
  val _ = Theory.link_parents
          ("quotient_option",
          Arbnum.fromString "1488586881",
          Arbnum.fromString "638882")
          [("quotient",
           Arbnum.fromString "1488586854",
           Arbnum.fromString "11971")];
  val _ = Theory.incorporate_types "quotient_option" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("option", "option"),
   ID("bool", "!"), ID("quotient", "-->"), ID("bool", "/\\"),
   ID("min", "="), ID("quotient", "===>"), ID("min", "==>"),
   ID("quotient", "EQUIV"), ID("bool", "F"), ID("combin", "I"),
   ID("option", "IS_NONE"), ID("option", "IS_SOME"), ID("option", "NONE"),
   ID("option", "OPTION_MAP"), ID("option", "OPTREL"),
   ID("quotient", "QUOTIENT"), ID("option", "SOME"), ID("bool", "T")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 0], TYOP [0, 1, 2], TYV "'b",
   TYOP [0, 4, 0], TYOP [0, 4, 5], TYV "'c", TYOP [2, 7], TYOP [2, 1],
   TYOP [0, 1, 4], TYOP [0, 1, 7], TYV "'d", TYOP [0, 4, 12],
   TYOP [0, 7, 12], TYOP [0, 4, 1], TYOP [0, 7, 1], TYOP [0, 12, 4],
   TYOP [2, 4], TYOP [0, 2, 0], TYOP [0, 5, 0], TYOP [0, 10, 0],
   TYOP [0, 21, 0], TYOP [0, 11, 0], TYOP [0, 23, 0], TYOP [0, 3, 0],
   TYOP [0, 25, 0], TYOP [0, 15, 0], TYOP [0, 27, 0], TYOP [0, 13, 0],
   TYOP [0, 29, 0], TYOP [0, 6, 0], TYOP [0, 31, 0], TYOP [0, 16, 0],
   TYOP [0, 33, 0], TYOP [0, 14, 0], TYOP [0, 35, 0], TYOP [0, 17, 0],
   TYOP [0, 37, 0], TYOP [0, 9, 0], TYOP [0, 39, 0], TYOP [0, 18, 0],
   TYOP [0, 41, 0], TYOP [0, 8, 0], TYOP [0, 43, 0], TYOP [0, 14, 10],
   TYOP [0, 17, 45], TYOP [0, 11, 46], TYOP [0, 0, 0], TYOP [0, 0, 48],
   TYOP [0, 9, 39], TYOP [0, 50, 0], TYOP [0, 50, 51], TYOP [0, 9, 9],
   TYOP [0, 53, 0], TYOP [0, 53, 54], TYOP [0, 18, 41], TYOP [2, 12],
   TYOP [0, 57, 0], TYOP [0, 57, 58], TYOP [0, 10, 21], TYOP [0, 6, 60],
   TYOP [0, 3, 61], TYOP [0, 1, 1], TYOP [0, 63, 53], TYOP [0, 9, 18],
   TYOP [0, 10, 65], TYOP [0, 18, 9], TYOP [0, 15, 67], TYOP [0, 18, 57],
   TYOP [0, 13, 69], TYOP [0, 8, 9], TYOP [0, 16, 71], TYOP [0, 8, 57],
   TYOP [0, 14, 73], TYOP [0, 3, 50], TYOP [0, 6, 56], TYOP [0, 10, 27],
   TYOP [0, 3, 77], TYOP [0, 11, 33], TYOP [0, 3, 79], TYOP [0, 13, 37],
   TYOP [0, 6, 81], TYOP [0, 67, 0], TYOP [0, 65, 83], TYOP [0, 50, 84],
   TYOP [0, 1, 9], TYOP [0, 4, 18]]
  end
  val _ = Theory.incorporate_consts "quotient_option" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("R", 3), TMV("R1", 3), TMV("R2", 6), TMV("a", 8), TMV("a1", 9),
   TMV("a2", 9), TMV("abs", 10), TMV("abs1", 11), TMV("abs2", 13),
   TMV("f", 14), TMV("f1", 10), TMV("f2", 10), TMV("rep", 15),
   TMV("rep1", 16), TMV("rep2", 17), TMV("x", 1), TMV("x", 4), TMV("x", 9),
   TMV("x", 18), TMV("y", 1), TMV("y", 9), TMC(3, 19), TMC(3, 20),
   TMC(3, 22), TMC(3, 24), TMC(3, 26), TMC(3, 28), TMC(3, 30), TMC(3, 32),
   TMC(3, 34), TMC(3, 36), TMC(3, 38), TMC(3, 40), TMC(3, 42), TMC(3, 44),
   TMC(4, 47), TMC(5, 49), TMC(6, 3), TMC(6, 49), TMC(6, 52), TMC(6, 55),
   TMC(6, 50), TMC(6, 56), TMC(6, 59), TMC(7, 62), TMC(8, 49), TMC(9, 25),
   TMC(9, 51), TMC(10, 0), TMC(11, 63), TMC(11, 53), TMC(12, 39),
   TMC(12, 41), TMC(13, 39), TMC(13, 41), TMC(14, 9), TMC(14, 18),
   TMC(15, 64), TMC(15, 66), TMC(15, 68), TMC(15, 70), TMC(15, 72),
   TMC(15, 74), TMC(16, 75), TMC(16, 76), TMC(17, 78), TMC(17, 80),
   TMC(17, 82), TMC(17, 85), TMC(18, 86), TMC(18, 87), TMC(19, 0)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op OPTION_MAP_I x = x
    val op OPTION_MAP_I =
    DT(((("quotient_option",0),
        [("bool",[14,25,26,56]),("combin",[19]),
         ("option",[6,13])]),["DISK_THM"]), [read"%40%57%49@@%50@"])
  fun op OPTION_REL_def x = x
    val op OPTION_REL_def =
    DT(((("quotient_option",1),
        [("bool",[25,26,27,37,51,52,54,56,63]),
         ("option",[25,53])]),["DISK_THM"]),
       [read"%36%38%63%0@%55@%55@@%71@@%36%38%63%0@%69%15@@%55@@%48@@%36%38%63%0@%55@%69%19@@@%48@@%38%63%0@%69%15@@%69%19@@@%0%15@%19@@@@@"])
  fun op OPTION_REL_EQ x = x
    val op OPTION_REL_EQ =
    DT(((("quotient_option",2),
        [("bool",[14,25,26,27,54,56,63]),("option",[6,25]),
         ("quotient_option",[1])]),["DISK_THM"]), [read"%39%63%37@@%41@"])
  fun op OPTION_EQUIV x = x
    val op OPTION_EQUIV =
    DT(((("quotient_option",3),
        [("bool",[14,25,26,53,54,56,63]),("option",[6]),("quotient",[0]),
         ("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%0%45%46$0@@%47%63$0@@@|@"])
  fun op OPTION_QUOTIENT x = x
    val op OPTION_QUOTIENT =
    DT(((("quotient_option",4),
        [("bool",[25,26,27,51,54,56,63]),("option",[6,13,25]),
         ("quotient",[3,4,5,6]),("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%68%63$2@@%58$1@@%59$0@@@|@|@|@"])
  fun op NONE_PRS x = x
    val op NONE_PRS =
    DT(((("quotient_option",5),
        [("bool",[25,56]),("option",[13])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%42%56@%58$1@%55@@@|@|@|@"])
  fun op NONE_RSP x = x
    val op NONE_RSP =
    DT(((("quotient_option",6),
        [("bool",[25]),("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%63$2@%55@%55@@|@|@|@"])
  fun op SOME_PRS x = x
    val op SOME_PRS =
    DT(((("quotient_option",7),
        [("bool",[25,56]),("option",[13]),("quotient",[4])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%22%16%42%70$0@@%58$2@%69$1$0@@@@|@@|@|@|@"])
  fun op SOME_RSP x = x
    val op SOME_RSP =
    DT(((("quotient_option",8),
        [("bool",[25,63]),("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%21%15%21%19%45$4$1@$0@@%63$4@%69$1@@%69$0@@@|@|@@|@|@|@"])
  fun op IS_SOME_PRS x = x
    val op IS_SOME_PRS =
    DT(((("quotient_option",9),
        [("bool",[25,54,63]),("option",[6,13,14])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%33%18%38%54$0@@%53%59$1@$0@@@|@@|@|@|@"])
  fun op IS_SOME_RSP x = x
    val op IS_SOME_RSP =
    DT(((("quotient_option",10),
        [("bool",[25,53,54,56,63]),("option",[6,14]),
         ("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%32%17%32%20%45%63$4@$1@$0@@%38%53$1@@%53$0@@@|@|@@|@|@|@"])
  fun op IS_NONE_PRS x = x
    val op IS_NONE_PRS =
    DT(((("quotient_option",11),
        [("bool",[25,54,63]),("option",[6,13,15])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%33%18%38%52$0@@%51%59$1@$0@@@|@@|@|@|@"])
  fun op IS_NONE_RSP x = x
    val op IS_NONE_RSP =
    DT(((("quotient_option",12),
        [("bool",[25,53,54,56,63]),("option",[6,15]),
         ("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%0%23%6%26%12%45%65$2@$1@$0@@%32%17%32%20%45%63$4@$1@$0@@%38%51$1@@%51$0@@@|@|@@|@|@|@"])
  fun op OPTION_MAP_PRS x = x
    val op OPTION_MAP_PRS =
    DT(((("quotient_option",13),
        [("bool",[25,56]),("option",[6,10,13]),
         ("quotient",[4,17])]),["DISK_THM"]),
       [read"%25%1%24%7%29%13%45%66$2@$1@$0@@%28%2%27%8%31%14%45%67$2@$1@$0@@%34%3%30%9%43%62$0@$1@@%60$3@%58%35$6@$2@$0@@%61$5@$1@@@@|@|@@|@|@|@@|@|@|@"])
  fun op OPTION_MAP_RSP x = x
    val op OPTION_MAP_RSP =
    DT(((("quotient_option",14),
        [("bool",[25,51,53]),("option",[6,13]),("quotient",[34]),
         ("quotient_option",[1])]),["DISK_THM"]),
       [read"%25%1%24%7%29%13%45%66$2@$1@$0@@%28%2%27%8%31%14%45%67$2@$1@$0@@%32%4%32%5%23%10%23%11%45%36%44$9@$6@$1@$0@@%63$9@$3@$2@@@%64$6@%58$1@$3@@%58$0@$2@@@|@|@|@|@@|@|@|@@|@|@|@"])
  end
  val _ = DB.bindl "quotient_option"
  [("OPTION_MAP_I",OPTION_MAP_I,DB.Thm),
   ("OPTION_REL_def",OPTION_REL_def,DB.Thm),
   ("OPTION_REL_EQ",OPTION_REL_EQ,DB.Thm),
   ("OPTION_EQUIV",OPTION_EQUIV,DB.Thm),
   ("OPTION_QUOTIENT",OPTION_QUOTIENT,DB.Thm),
   ("NONE_PRS",NONE_PRS,DB.Thm), ("NONE_RSP",NONE_RSP,DB.Thm),
   ("SOME_PRS",SOME_PRS,DB.Thm), ("SOME_RSP",SOME_RSP,DB.Thm),
   ("IS_SOME_PRS",IS_SOME_PRS,DB.Thm), ("IS_SOME_RSP",IS_SOME_RSP,DB.Thm),
   ("IS_NONE_PRS",IS_NONE_PRS,DB.Thm), ("IS_NONE_RSP",IS_NONE_RSP,DB.Thm),
   ("OPTION_MAP_PRS",OPTION_MAP_PRS,DB.Thm),
   ("OPTION_MAP_RSP",OPTION_MAP_RSP,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("quotientTheory.quotient_grammars",
                          quotientTheory.quotient_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_REL", (Term.prim_mk_const { Name = "OPTREL", Thy = "option"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTREL", (Term.prim_mk_const { Name = "OPTREL", Thy = "option"}))
  val quotient_option_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "quotient_option"
end
