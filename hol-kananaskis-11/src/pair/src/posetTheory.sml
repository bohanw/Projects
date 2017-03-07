structure posetTheory :> posetTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading posetTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open pairTheory
  in end;
  val _ = Theory.link_parents
          ("poset",
          Arbnum.fromString "1488586009",
          Arbnum.fromString "404691")
          [("pair",
           Arbnum.fromString "1488586001",
           Arbnum.fromString "943113")];
  val _ = Theory.incorporate_types "poset" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "\\/"),
   ID("poset", "bottom"), ID("poset", "carrier"), ID("poset", "chain"),
   ID("poset", "complete"), ID("poset", "continuous"),
   ID("poset", "down_continuous"), ID("poset", "function"),
   ID("poset", "gfp"), ID("poset", "glb"), ID("poset", "lfp"),
   ID("poset", "lub"), ID("poset", "monotonic"),
   ID("poset", "pointwise_lift"), ID("poset", "poset"),
   ID("poset", "relation"), ID("poset", "top"),
   ID("poset", "up_continuous")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [0, 1, 1], TYOP [0, 2, 0], TYOP [0, 1, 0],
   TYOP [0, 1, 4], TYOP [2, 4, 5], TYOP [0, 6, 3], TYOP [0, 6, 4],
   TYOP [0, 6, 5], TYOP [0, 6, 0], TYV "'b", TYOP [0, 1, 11],
   TYOP [0, 12, 0], TYOP [0, 12, 13], TYOP [2, 13, 14], TYOP [0, 11, 0],
   TYOP [0, 11, 16], TYOP [2, 16, 17], TYOP [0, 18, 15], TYOP [0, 4, 19],
   TYOP [0, 4, 4], TYOP [0, 6, 21], TYOP [0, 2, 4], TYOP [0, 6, 23],
   TYOP [0, 16, 13], TYOP [0, 4, 25], TYOP [0, 4, 0], TYOP [0, 6, 27],
   TYOP [0, 3, 0], TYOP [0, 13, 0], TYOP [0, 27, 0], TYOP [0, 5, 0],
   TYOP [0, 32, 0], TYOP [0, 16, 0], TYOP [0, 34, 0], TYOP [0, 17, 0],
   TYOP [0, 36, 0], TYOP [0, 10, 0], TYOP [0, 5, 6], TYOP [0, 4, 39],
   TYOP [0, 17, 18], TYOP [0, 16, 41], TYOP [0, 14, 15], TYOP [0, 13, 43],
   TYOP [0, 0, 0], TYOP [0, 0, 45], TYOP [0, 4, 27], TYOP [0, 5, 32],
   TYOP [0, 15, 0], TYOP [0, 15, 49], TYOP [0, 11, 1], TYOP [0, 51, 0],
   TYOP [0, 51, 52], TYOP [2, 52, 53], TYOP [0, 54, 0], TYOP [0, 4, 3],
   TYOP [0, 4, 56], TYOP [0, 6, 54], TYOP [0, 16, 58]]
  end
  val _ = Theory.incorporate_consts "poset" tyvector
     [("up_continuous", 7), ("top", 8), ("relation", 9), ("poset", 10),
      ("pointwise_lift", 20), ("monotonic", 7), ("lub", 22), ("lfp", 24),
      ("glb", 22), ("gfp", 24), ("function", 26), ("down_continuous", 7),
      ("continuous", 7), ("complete", 10), ("chain", 28), ("carrier", 8),
      ("bottom", 8)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 4), TMV("b", 16), TMV("c", 4), TMV("f", 2), TMV("f", 12),
   TMV("g", 12), TMV("j", 1), TMV("p", 4), TMV("p", 6), TMV("r", 5),
   TMV("r", 17), TMV("s", 4), TMV("s", 16), TMV("t", 4), TMV("t", 16),
   TMV("x", 1), TMV("x'", 1), TMV("y", 1), TMV("z", 1), TMC(3, 27),
   TMC(3, 29), TMC(3, 30), TMC(3, 31), TMC(3, 33), TMC(3, 35), TMC(3, 37),
   TMC(3, 38), TMC(4, 40), TMC(4, 42), TMC(4, 44), TMC(5, 46), TMC(6, 5),
   TMC(6, 46), TMC(6, 47), TMC(6, 48), TMC(6, 50), TMC(7, 46), TMC(8, 27),
   TMC(9, 46), TMC(10, 8), TMC(11, 8), TMC(12, 28), TMC(13, 10),
   TMC(13, 55), TMC(14, 7), TMC(15, 7), TMC(16, 57), TMC(16, 26),
   TMC(17, 24), TMC(18, 22), TMC(19, 24), TMC(20, 22), TMC(21, 7),
   TMC(22, 20), TMC(22, 59), TMC(23, 10), TMC(24, 9), TMC(25, 8),
   TMC(26, 7)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op function_def x = x
    val op function_def =
    DT(((("poset",0),[]),[]),
       [read"%22%0%24%1%21%4%32%47$2@$1@$0@@%19%15%36$3$0@@$2$1$0@@@|@@|@|@|@"])
  fun op poset_def x = x
    val op poset_def =
    DT(((("poset",1),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%32%55%27$1@$0@@@%30%37%15$2$0@|@@%30%19%15%36$2$0@@$1$0@$0@@|@@%30%19%15%19%17%36%30$3$1@@%30$3$0@@%30$2$1@$0@@$2$0@$1@@@@@%31$1@$0@@|@|@@%19%15%19%17%19%18%36%30$4$2@@%30$4$1@@%30$4$0@@%30$3$2@$1@@$3$1@$0@@@@@@$3$2@$0@@|@|@|@@@@@|@|@"])
  fun op carrier_def x = x
    val op carrier_def =
    DT(((("poset",2),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%33%40%27$1@$0@@@$1@|@|@"])
  fun op relation_def x = x
    val op relation_def =
    DT(((("poset",3),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%34%56%27$1@$0@@@$0@|@|@"])
  fun op top_def x = x
    val op top_def =
    DT(((("poset",4),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%19%15%32%57%27$2@$1@@$0@@%30$2$0@@%19%17%36$3$0@@$2$0@$1@@|@@@|@|@|@"])
  fun op bottom_def x = x
    val op bottom_def =
    DT(((("poset",5),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%19%15%32%39%27$2@$1@@$0@@%30$2$0@@%19%17%36$3$0@@$2$1@$0@@|@@@|@|@|@"])
  fun op chain_def x = x
    val op chain_def =
    DT(((("poset",6),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%22%2%32%41%27$2@$1@@$0@@%19%15%19%17%36%30$4$1@@%30$4$0@@%30$2$1@@$2$0@@@@@%38$3$1@$0@@$3$0@$1@@@|@|@@|@|@|@"])
  fun op lub_def x = x
    val op lub_def =
    DT(((("poset",7),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%22%7%19%15%32%51%27$3@$2@@$1@$0@@%30$3$0@@%30%19%17%36%30$4$0@@$2$0@@@$3$0@$1@@|@@%19%18%36%30$4$0@@%19%17%36%30$5$0@@$3$0@@@$4$0@$1@@|@@@$3$1@$0@@|@@@@|@|@|@|@"])
  fun op glb_def x = x
    val op glb_def =
    DT(((("poset",8),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%22%7%19%15%32%49%27$3@$2@@$1@$0@@%30$3$0@@%30%19%17%36%30$4$0@@$2$0@@@$3$1@$0@@|@@%19%18%36%30$4$0@@%19%17%36%30$5$0@@$3$0@@@$4$1@$0@@|@@@$3$0@$1@@|@@@@|@|@|@|@"])
  fun op complete_def x = x
    val op complete_def =
    DT(((("poset",9),[]),[]),
       [read"%26%8%32%42$0@@%22%2%30%37%15%51$2@$1@$0@|@@%37%15%49$2@$1@$0@|@@|@@|@"])
  fun op pointwise_lift_def x = x
    val op pointwise_lift_def =
    DT(((("poset",20),[("pair",[16])]),["DISK_THM"]),
       [read"%22%13%24%12%25%10%35%53$2@%28$1@$0@@@%29%47$2@$1@@%4%5%19%15%36$5$0@@$3$2$0@@$1$0@@@|@||@@|@|@|@"])
  fun op monotonic_def x = x
    val op monotonic_def =
    DT(((("poset",22),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%20%3%32%52%27$2@$1@@$0@@%19%15%19%17%36%30$4$1@@%30$4$0@@$3$1@$0@@@@$3$2$1@@$2$0@@@|@|@@|@|@|@"])
  fun op up_continuous_def x = x
    val op up_continuous_def =
    DT(((("poset",23),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%20%3%32%58%27$2@$1@@$0@@%22%2%19%15%36%30%41%27$4@$3@@$1@@%51%27$4@$3@@$1@$0@@@%51%27$4@$3@@%17%37%18%30%30$6$0@@$3$0@@@%31$1@$4$0@@@|@|@$2$0@@@|@|@@|@|@|@"])
  fun op down_continuous_def x = x
    val op down_continuous_def =
    DT(((("poset",24),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%20%3%32%45%27$2@$1@@$0@@%22%2%19%15%36%30%41%27$4@$3@@$1@@%49%27$4@$3@@$1@$0@@@%49%27$4@$3@@%17%37%18%30%30$6$0@@$3$0@@@%31$1@$4$0@@@|@|@$2$0@@@|@|@@|@|@|@"])
  fun op continuous_def x = x
    val op continuous_def =
    DT(((("poset",25),[]),[]),
       [read"%26%8%20%3%32%44$1@$0@@%30%58$1@$0@@%45$1@$0@@@|@|@"])
  fun op lfp_def x = x
    val op lfp_def =
    DT(((("poset",26),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%20%3%19%15%32%50%27$3@$2@@$1@$0@@%30$3$0@@%30%31$1$0@@$0@@%19%17%36%30$4$0@@$3$2$0@@$0@@@$3$1@$0@@|@@@@|@|@|@|@"])
  fun op gfp_def x = x
    val op gfp_def =
    DT(((("poset",27),[("pair",[16])]),["DISK_THM"]),
       [read"%22%11%23%9%20%3%19%15%32%48%27$3@$2@@$1@$0@@%30$3$0@@%30%31$1$0@@$0@@%19%17%36%30$4$0@@$3$0@$2$0@@@@$3$0@$1@@|@@@@|@|@|@|@"])
  fun op poset_nonempty x = x
    val op poset_nonempty =
    DT(((("poset",10),
        [("bool",[25,53,58,63,105,124]),("poset",[1])]),["DISK_THM"]),
       [read"%22%11%23%9%36%55%27$1@$0@@@%37%15$2$0@|@@|@|@"])
  fun op poset_refl x = x
    val op poset_refl =
    DT(((("poset",11),
        [("bool",[25,53,58,63,105,124]),("poset",[1])]),["DISK_THM"]),
       [read"%22%11%23%9%19%15%36%30%55%27$2@$1@@@$2$0@@@$1$0@$0@@|@|@|@"])
  fun op poset_antisym x = x
    val op poset_antisym =
    DT(((("poset",12),
        [("bool",[25,51,53,58,63,105,124]),("poset",[1])]),["DISK_THM"]),
       [read"%22%11%23%9%19%15%19%17%36%30%55%27$3@$2@@@%30$3$1@@%30$3$0@@%30$2$1@$0@@$2$0@$1@@@@@@%31$1@$0@@|@|@|@|@"])
  fun op poset_trans x = x
    val op poset_trans =
    DT(((("poset",13),[("bool",[58,105,124]),("poset",[1])]),["DISK_THM"]),
       [read"%22%11%23%9%19%15%19%17%19%18%36%30%55%27$4@$3@@@%30$4$2@@%30$4$1@@%30$4$0@@%30$3$2@$1@@$3$1@$0@@@@@@@$3$2@$0@@|@|@|@|@|@"])
  fun op lub_pred x = x
    val op lub_pred =
    DT(((("poset",14),
        [("bool",
         [25,26,43,47,48,53,54,58,63,71,76,77,78,80,81,93,94,96,146]),
         ("poset",[7]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%11%23%9%22%7%19%15%32%51%27$3@$2@@%6%30$4$0@@$2$0@@|@$0@@%51%27$3@$2@@$1@$0@@|@|@|@|@"])
  fun op glb_pred x = x
    val op glb_pred =
    DT(((("poset",15),
        [("bool",
         [25,26,43,47,48,53,54,58,63,71,76,77,78,80,81,93,94,96,146]),
         ("poset",[8]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%22%11%23%9%22%7%19%15%32%49%27$3@$2@@%6%30$4$0@@$2$0@@|@$0@@%49%27$3@$2@@$1@$0@@|@|@|@|@"])
  fun op complete_up x = x
    val op complete_up =
    DT(((("poset",16),
        [("bool",
         [25,26,47,48,53,54,58,63,71,72,73,74,75,76,78,80,81,83,84,94,
          146]),("poset",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%26%8%22%2%36%42$1@@%37%15%51$2@$1@$0@|@@|@|@"])
  fun op complete_down x = x
    val op complete_down =
    DT(((("poset",17),
        [("bool",
         [25,26,47,48,53,54,58,63,71,72,73,74,75,76,78,80,81,83,84,94,
          146]),("poset",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%26%8%22%2%36%42$1@@%37%15%49$2@$1@$0@|@@|@|@"])
  fun op complete_top x = x
    val op complete_top =
    DT(((("poset",18),
        [("bool",[25,36,51,53,58,63,105,124]),("pair",[5]),
         ("poset",[4,7,9])]),["DISK_THM"]),
       [read"%26%8%36%30%55$0@@%42$0@@@%37%15%57$1@$0@|@@|@"])
  fun op complete_bottom x = x
    val op complete_bottom =
    DT(((("poset",19),
        [("bool",[25,36,51,53,58,63,105,124]),("pair",[5]),
         ("poset",[5,8,9])]),["DISK_THM"]),
       [read"%26%8%36%30%55$0@@%42$0@@@%37%15%39$1@$0@|@@|@"])
  fun op complete_pointwise x = x
    val op complete_pointwise =
    DT(((("poset",21),
        [("bool",
         [2,15,25,26,27,30,47,48,53,54,55,58,63,73,74,75,83,84,99,100,105,
          124]),("pair",[5]),("poset",[0,7,8,9,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%26%8%24%14%36%42$1@@%43%54$0@$1@@@|@|@"])
  fun op lfp_unique x = x
    val op lfp_unique =
    DT(((("poset",28),
        [("bool",[25,51,53,58,63,105,124]),("pair",[5]),
         ("poset",[1,26])]),["DISK_THM"]),
       [read"%26%8%20%3%19%15%19%16%36%30%55$3@@%30%50$3@$2@$1@@%50$3@$2@$0@@@@%31$1@$0@@|@|@|@|@"])
  fun op gfp_unique x = x
    val op gfp_unique =
    DT(((("poset",29),
        [("bool",[25,51,53,58,63,105,124]),("pair",[5]),
         ("poset",[1,27])]),["DISK_THM"]),
       [read"%26%8%20%3%19%15%19%16%36%30%55$3@@%30%48$3@$2@$1@@%48$3@$2@$0@@@@%31$1@$0@@|@|@|@|@"])
  fun op knaster_tarski_lfp x = x
    val op knaster_tarski_lfp =
    DT(((("poset",30),
        [("bool",
         [2,15,25,26,36,43,47,48,51,53,54,56,58,63,71,72,73,74,75,76,77,78,
          80,81,84,93,94,96,99,105,124,146]),("combin",[19]),("pair",[5]),
         ("poset",[0,2,8,9,12,13,18,22,26]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%26%8%20%3%36%30%55$1@@%30%42$1@@%30%46%40$1@@%40$1@@$0@@%52$1@$0@@@@@%37%15%50$2@$1@$0@|@@|@|@"])
  fun op knaster_tarski_gfp x = x
    val op knaster_tarski_gfp =
    DT(((("poset",31),
        [("bool",
         [2,15,25,26,36,43,47,48,51,53,54,56,58,63,71,72,73,74,75,76,77,78,
          80,81,84,93,94,96,99,105,124,146]),("combin",[19]),("pair",[5]),
         ("poset",[0,2,7,9,12,13,19,22,27]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%26%8%20%3%36%30%55$1@@%30%42$1@@%30%46%40$1@@%40$1@@$0@@%52$1@$0@@@@@%37%15%48$2@$1@$0@|@@|@|@"])
  fun op knaster_tarski x = x
    val op knaster_tarski =
    DT(((("poset",32),
        [("bool",[25,26,47,48,53,54,58,63,71,72,78,93,94,96,146]),
         ("poset",[30,31]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%26%8%20%3%36%30%55$1@@%30%42$1@@%30%46%40$1@@%40$1@@$0@@%52$1@$0@@@@@%30%37%15%50$2@$1@$0@|@@%37%15%48$2@$1@$0@|@@@|@|@"])
  end
  val _ = DB.bindl "poset"
  [("function_def",function_def,DB.Def), ("poset_def",poset_def,DB.Def),
   ("carrier_def",carrier_def,DB.Def),
   ("relation_def",relation_def,DB.Def), ("top_def",top_def,DB.Def),
   ("bottom_def",bottom_def,DB.Def), ("chain_def",chain_def,DB.Def),
   ("lub_def",lub_def,DB.Def), ("glb_def",glb_def,DB.Def),
   ("complete_def",complete_def,DB.Def),
   ("pointwise_lift_def",pointwise_lift_def,DB.Def),
   ("monotonic_def",monotonic_def,DB.Def),
   ("up_continuous_def",up_continuous_def,DB.Def),
   ("down_continuous_def",down_continuous_def,DB.Def),
   ("continuous_def",continuous_def,DB.Def), ("lfp_def",lfp_def,DB.Def),
   ("gfp_def",gfp_def,DB.Def), ("poset_nonempty",poset_nonempty,DB.Thm),
   ("poset_refl",poset_refl,DB.Thm),
   ("poset_antisym",poset_antisym,DB.Thm),
   ("poset_trans",poset_trans,DB.Thm), ("lub_pred",lub_pred,DB.Thm),
   ("glb_pred",glb_pred,DB.Thm), ("complete_up",complete_up,DB.Thm),
   ("complete_down",complete_down,DB.Thm),
   ("complete_top",complete_top,DB.Thm),
   ("complete_bottom",complete_bottom,DB.Thm),
   ("complete_pointwise",complete_pointwise,DB.Thm),
   ("lfp_unique",lfp_unique,DB.Thm), ("gfp_unique",gfp_unique,DB.Thm),
   ("knaster_tarski_lfp",knaster_tarski_lfp,DB.Thm),
   ("knaster_tarski_gfp",knaster_tarski_gfp,DB.Thm),
   ("knaster_tarski",knaster_tarski,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("pairTheory.pair_grammars",
                          pairTheory.pair_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("function", (Term.prim_mk_const { Name = "function", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("function", (Term.prim_mk_const { Name = "function", Thy = "poset"}))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="poset",Name="poset"}, T"prod" "pair" [(alpha --> bool), (alpha --> (alpha --> bool))])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("poset", (Term.prim_mk_const { Name = "poset", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("poset", (Term.prim_mk_const { Name = "poset", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("carrier", (Term.prim_mk_const { Name = "carrier", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("carrier", (Term.prim_mk_const { Name = "carrier", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("relation", (Term.prim_mk_const { Name = "relation", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("relation", (Term.prim_mk_const { Name = "relation", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("top", (Term.prim_mk_const { Name = "top", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("top", (Term.prim_mk_const { Name = "top", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bottom", (Term.prim_mk_const { Name = "bottom", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bottom", (Term.prim_mk_const { Name = "bottom", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chain", (Term.prim_mk_const { Name = "chain", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("chain", (Term.prim_mk_const { Name = "chain", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lub", (Term.prim_mk_const { Name = "lub", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lub", (Term.prim_mk_const { Name = "lub", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("glb", (Term.prim_mk_const { Name = "glb", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("glb", (Term.prim_mk_const { Name = "glb", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complete", (Term.prim_mk_const { Name = "complete", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("complete", (Term.prim_mk_const { Name = "complete", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pointwise_lift", (Term.prim_mk_const { Name = "pointwise_lift", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("pointwise_lift", (Term.prim_mk_const { Name = "pointwise_lift", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("monotonic", (Term.prim_mk_const { Name = "monotonic", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("monotonic", (Term.prim_mk_const { Name = "monotonic", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("up_continuous", (Term.prim_mk_const { Name = "up_continuous", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("up_continuous", (Term.prim_mk_const { Name = "up_continuous", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("down_continuous", (Term.prim_mk_const { Name = "down_continuous", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("down_continuous", (Term.prim_mk_const { Name = "down_continuous", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("continuous", (Term.prim_mk_const { Name = "continuous", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("continuous", (Term.prim_mk_const { Name = "continuous", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lfp", (Term.prim_mk_const { Name = "lfp", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("lfp", (Term.prim_mk_const { Name = "lfp", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gfp", (Term.prim_mk_const { Name = "gfp", Thy = "poset"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("gfp", (Term.prim_mk_const { Name = "gfp", Thy = "poset"}))
  val poset_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "poset"
end
