structure fixedPointTheory :> fixedPointTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading fixedPointTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open pred_setTheory
  in end;
  val _ = Theory.link_parents
          ("fixedPoint",
          Arbnum.fromString "1488586286",
          Arbnum.fromString "882111")
          [("pred_set",
           Arbnum.fromString "1488586210",
           Arbnum.fromString "643996")];
  val _ = Theory.incorporate_types "fixedPoint" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("pair", ","),
   ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("pred_set", "BIGINTER"), ID("pred_set", "BIGUNION"),
   ID("pred_set", "EMPTY"), ID("pred_set", "GSPEC"), ID("bool", "IN"),
   ID("pred_set", "INTER"), ID("pred_set", "SUBSET"),
   ID("pred_set", "UNION"), ID("fixedPoint", "closed"),
   ID("fixedPoint", "dense"), ID("fixedPoint", "empty"),
   ID("fixedPoint", "fnsum"), ID("fixedPoint", "gfp"),
   ID("fixedPoint", "lfp"), ID("fixedPoint", "monotone")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 0],
   TYOP [0, 4, 2], TYOP [0, 5, 0], TYOP [0, 4, 4], TYOP [0, 7, 4],
   TYOP [0, 1, 4], TYOP [0, 9, 9], TYOP [0, 9, 10], TYOP [0, 3, 2],
   TYOP [0, 4, 0], TYOP [0, 7, 13], TYOP [0, 2, 0], TYOP [0, 13, 0],
   TYOP [0, 12, 0], TYOP [0, 17, 0], TYOP [0, 9, 0], TYOP [0, 19, 0],
   TYOP [0, 7, 0], TYOP [0, 21, 0], TYOP [0, 6, 0], TYOP [4, 4, 0],
   TYOP [0, 0, 24], TYOP [0, 4, 25], TYOP [0, 0, 0], TYOP [0, 0, 27],
   TYOP [0, 4, 13], TYOP [0, 12, 17], TYOP [0, 13, 4], TYOP [0, 4, 24],
   TYOP [0, 32, 13], TYOP [0, 3, 13], TYOP [0, 4, 7], TYOP [0, 2, 15],
   TYOP [0, 12, 12], TYOP [0, 12, 37], TYOP [0, 7, 7], TYOP [0, 7, 39],
   TYOP [0, 5, 5], TYOP [0, 5, 41]]
  end
  val _ = Theory.incorporate_consts "fixedPoint" tyvector
     [("monotone", 6), ("lfp", 8), ("gfp", 8), ("fnsum", 11),
      ("empty", 12), ("dense", 14), ("closed", 14)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("X", 3), TMV("X", 1), TMV("X", 4), TMV("Y", 4), TMV("f", 12),
   TMV("f", 7), TMV("f", 5), TMV("f1", 9), TMV("f1", 7), TMV("f1", 5),
   TMV("f2", 9), TMV("f2", 7), TMV("f2", 5), TMV("g", 12), TMV("h", 12),
   TMV("x", 3), TMV("y", 3), TMC(2, 13), TMC(2, 15), TMC(2, 16),
   TMC(2, 18), TMC(2, 20), TMC(2, 22), TMC(2, 23), TMC(3, 26), TMC(5, 28),
   TMC(6, 28), TMC(6, 29), TMC(6, 30), TMC(7, 28), TMC(8, 31), TMC(9, 31),
   TMC(10, 4), TMC(10, 2), TMC(11, 33), TMC(12, 34), TMC(13, 35),
   TMC(14, 29), TMC(14, 36), TMC(15, 35), TMC(16, 14), TMC(17, 14),
   TMC(18, 12), TMC(18, 5), TMC(19, 38), TMC(19, 11), TMC(19, 40),
   TMC(19, 42), TMC(20, 8), TMC(21, 8), TMC(22, 21), TMC(22, 6)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op monotone_def x = x
    val op monotone_def =
    DT(((("fixedPoint",0),[]),[]),
       [read"%23%6%26%51$0@@%19%2%19%3%29%37$1@$0@@%38$2$1@@$2$0@@@|@|@@|@"])
  fun op lfp_def x = x
    val op lfp_def =
    DT(((("fixedPoint",1),[]),[]),
       [read"%22%5%27%49$0@@%30%34%2%24$0@%37$1$0@@$0@@|@@@|@"])
  fun op gfp_def x = x
    val op gfp_def =
    DT(((("fixedPoint",2),[]),[]),
       [read"%22%5%27%48$0@@%31%34%2%24$0@%37$0@$1$0@@@|@@@|@"])
  fun op closed_def x = x
    val op closed_def =
    DT(((("fixedPoint",3),[]),[]),
       [read"%22%5%19%2%26%40$1@$0@@%37$1$0@@$0@@|@|@"])
  fun op dense_def x = x
    val op dense_def =
    DT(((("fixedPoint",4),[]),[]),
       [read"%22%5%19%2%26%41$1@$0@@%37$0@$1$0@@@|@|@"])
  fun op fnsum_def x = x
    val op fnsum_def =
    DT(((("fixedPoint",13),[]),[]),
       [read"%21%7%21%10%18%1%27%45$2@$1@$0@@%39$2$0@@$1$0@@@|@|@|@"])
  fun op empty_def x = x
    val op empty_def =
    DT(((("fixedPoint",15),[]),[]), [read"%28%42@%0%33|@"])
  fun op lfp_least_closed x = x
    val op lfp_least_closed =
    DT(((("fixedPoint",5),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,75,77,78,
          80,81,83,84,93,94,96,105,124,146]),("combin",[19]),
         ("fixedPoint",[0,1,3]),("pair",[3]),
         ("pred_set",[6,18,19,258,264]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%25%40$0@%49$0@@@%19%2%29%40$1@$0@@%37%49$1@@$0@@|@@@|@"])
  fun op gfp_greatest_dense x = x
    val op gfp_greatest_dense =
    DT(((("fixedPoint",6),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,75,78,80,
          84,93,94,96,105,124,146]),("combin",[19]),("fixedPoint",[0,2,4]),
         ("pair",[3]),("pred_set",[6,18,19,244,252]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%25%41$0@%48$0@@@%19%2%29%41$1@$0@@%37$0@%48$1@@@|@@@|@"])
  fun op lfp_fixedpoint x = x
    val op lfp_fixedpoint =
    DT(((("fixedPoint",7),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          93,94,96,146]),("combin",[19]),("fixedPoint",[0,3,5]),
         ("pred_set",[20,21]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%25%27%49$0@@$0%49$0@@@@%19%2%29%27$0@$1$0@@@%37%49$1@@$0@@|@@@|@"])
  fun op gfp_greatest_fixedpoint x = x
    val op gfp_greatest_fixedpoint =
    DT(((("fixedPoint",8),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          93,94,96,146]),("combin",[19]),("fixedPoint",[0,4,6]),
         ("pred_set",[20,21]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%25%27%48$0@@$0%48$0@@@@%19%2%29%27$0@$1$0@@@%37$0@%48$1@@@|@@@|@"])
  fun op lfp_induction x = x
    val op lfp_induction =
    DT(((("fixedPoint",9),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,75,81,84,93,94,96]),
         ("combin",[19]),("fixedPoint",[3,5]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%19%2%29%37$1$0@@$0@@%37%49$1@@$0@@|@@|@"])
  fun op gfp_coinduction x = x
    val op gfp_coinduction =
    DT(((("fixedPoint",10),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,75,81,84,93,94,96]),
         ("combin",[19]),("fixedPoint",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%19%2%29%37$0@$1$0@@@%37$0@%48$1@@@|@@|@"])
  fun op lfp_strong_induction x = x
    val op lfp_strong_induction =
    DT(((("fixedPoint",11),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,81,
          84,93,94,96,105,124,146]),("combin",[19]),("fixedPoint",[0,7,9]),
         ("pred_set",[20,50,51]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%19%2%29%37$1%36$0@%49$1@@@@$0@@%37%49$1@@$0@@|@@|@"])
  fun op gfp_strong_coinduction x = x
    val op gfp_strong_coinduction =
    DT(((("fixedPoint",12),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,81,
          84,93,94,96,105,124,146]),("combin",[19]),
         ("fixedPoint",[0,8,10]),("pred_set",[20,38,39]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%5%29%50$0@@%19%2%29%37$0@$1%39$0@%48$1@@@@@%37$0@%48$1@@@|@@|@"])
  fun op fnsum_monotone x = x
    val op fnsum_monotone =
    DT(((("fixedPoint",14),
        [("bool",
         [25,26,43,47,48,53,54,58,63,71,75,78,80,84,93,94,96,105,124,146]),
         ("fixedPoint",[0,13]),("pred_set",[18,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%23%9%23%12%29%25%51$1@@%51$0@@@%51%47$1@$0@@@|@|@"])
  fun op empty_monotone x = x
    val op empty_monotone =
    DT(((("fixedPoint",16),
        [("bool",[25,36,53,58,63,105,124]),("fixedPoint",[0,15]),
         ("pred_set",[22])]),["DISK_THM"]), [read"%51%43@"])
  fun op fnsum_empty x = x
    val op fnsum_empty =
    DT(((("fixedPoint",17),
        [("bool",[25,36,56,60]),("fixedPoint",[13,15]),
         ("pred_set",[41])]),["DISK_THM"]),
       [read"%20%4%25%28%44$0@%42@@$0@@%28%44%42@$0@@$0@@|@"])
  fun op fnsum_ASSOC x = x
    val op fnsum_ASSOC =
    DT(((("fixedPoint",18),
        [("bool",[14,25,26,36,56]),("fixedPoint",[13]),
         ("pred_set",[35])]),["DISK_THM"]),
       [read"%20%4%20%13%20%14%28%44$2@%44$1@$0@@@%44%44$2@$1@@$0@@|@|@|@"])
  fun op fnsum_COMM x = x
    val op fnsum_COMM =
    DT(((("fixedPoint",19),
        [("bool",[14,25,26,36,56]),("fixedPoint",[13]),
         ("pred_set",[37])]),["DISK_THM"]),
       [read"%20%4%20%13%28%44$1@$0@@%44$0@$1@@|@|@"])
  fun op fnsum_SUBSET x = x
    val op fnsum_SUBSET =
    DT(((("fixedPoint",20),
        [("bool",[25,36,51,52,53,58,63,105,124]),("fixedPoint",[13]),
         ("pred_set",[18,33])]),["DISK_THM"]),
       [read"%20%4%20%13%17%0%25%38$2$0@@%44$2@$1@$0@@@%38$1$0@@%44$2@$1@$0@@@|@|@|@"])
  fun op lfp_fnsum x = x
    val op lfp_fnsum =
    DT(((("fixedPoint",21),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,73,75,84,93,94,96]),
         ("combin",[19]),("fixedPoint",[3,5,9,14,20]),("pred_set",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%8%22%11%29%25%50$1@@%50$0@@@%25%37%49$1@@%49%46$1@$0@@@@%37%49$0@@%49%46$1@$0@@@@@|@|@"])
  fun op lfp_rule_applied x = x
    val op lfp_rule_applied =
    DT(((("fixedPoint",22),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          93,94,96,146]),("combin",[19]),("fixedPoint",[0,7]),
         ("pred_set",[18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%22%5%19%2%17%16%29%25%50$2@@%25%37$1@%49$2@@@%35$0@$2$1@@@@@%35$0@%49$2@@@|@|@|@"])
  fun op lfp_empty x = x
    val op lfp_empty =
    DT(((("fixedPoint",23),
        [("bool",[25,26,36,47,48,53,54,56,58,63,71,93,94,96]),
         ("combin",[19]),("fixedPoint",[22]),("pred_set",[22]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%5%17%15%29%25%50$1@@%35$0@$1%32@@@@%35$0@%49$1@@@|@|@"])
  end
  val _ = DB.bindl "fixedPoint"
  [("monotone_def",monotone_def,DB.Def), ("lfp_def",lfp_def,DB.Def),
   ("gfp_def",gfp_def,DB.Def), ("closed_def",closed_def,DB.Def),
   ("dense_def",dense_def,DB.Def), ("fnsum_def",fnsum_def,DB.Def),
   ("empty_def",empty_def,DB.Def),
   ("lfp_least_closed",lfp_least_closed,DB.Thm),
   ("gfp_greatest_dense",gfp_greatest_dense,DB.Thm),
   ("lfp_fixedpoint",lfp_fixedpoint,DB.Thm),
   ("gfp_greatest_fixedpoint",gfp_greatest_fixedpoint,DB.Thm),
   ("lfp_induction",lfp_induction,DB.Thm),
   ("gfp_coinduction",gfp_coinduction,DB.Thm),
   ("lfp_strong_induction",lfp_strong_induction,DB.Thm),
   ("gfp_strong_coinduction",gfp_strong_coinduction,DB.Thm),
   ("fnsum_monotone",fnsum_monotone,DB.Thm),
   ("empty_monotone",empty_monotone,DB.Thm),
   ("fnsum_empty",fnsum_empty,DB.Thm), ("fnsum_ASSOC",fnsum_ASSOC,DB.Thm),
   ("fnsum_COMM",fnsum_COMM,DB.Thm), ("fnsum_SUBSET",fnsum_SUBSET,DB.Thm),
   ("lfp_fnsum",lfp_fnsum,DB.Thm),
   ("lfp_rule_applied",lfp_rule_applied,DB.Thm),
   ("lfp_empty",lfp_empty,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("pred_setTheory.pred_set_grammars",
                          pred_setTheory.pred_set_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("monotone", (Term.prim_mk_const { Name = "monotone", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("monotone", (Term.prim_mk_const { Name = "monotone", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lfp", (Term.prim_mk_const { Name = "lfp", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lfp", (Term.prim_mk_const { Name = "lfp", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gfp", (Term.prim_mk_const { Name = "gfp", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gfp", (Term.prim_mk_const { Name = "gfp", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closed", (Term.prim_mk_const { Name = "closed", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("closed", (Term.prim_mk_const { Name = "closed", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dense", (Term.prim_mk_const { Name = "dense", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dense", (Term.prim_mk_const { Name = "dense", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fnsum", (Term.prim_mk_const { Name = "fnsum", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fnsum", (Term.prim_mk_const { Name = "fnsum", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "++"))
       (Infix(HOLgrammars.LEFT, 480))
  val _ = update_grms
       (UTOFF temp_inferior_overload_on)
       ("++", (#2 (parse_from_grammars min_grammars)[QUOTE "(fixedPoint$fnsum :('a -> 'b -> bool) -> ('a -> 'b -> bool) -> 'a -> 'b -> bool)"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("empty", (Term.prim_mk_const { Name = "empty", Thy = "fixedPoint"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("empty", (Term.prim_mk_const { Name = "empty", Thy = "fixedPoint"}))
  val fixedPoint_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "fixedPoint"
end
