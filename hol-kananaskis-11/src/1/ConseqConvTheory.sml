structure ConseqConvTheory :> ConseqConvTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ConseqConvTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open boolTheory
  in end;
  val _ = Theory.link_parents
          ("ConseqConv",
          Arbnum.fromString "1488585898",
          Arbnum.fromString "267166")
          [("bool",
           Arbnum.fromString "1488585882",
           Arbnum.fromString "632112")];
  val _ = Theory.incorporate_types "ConseqConv" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("ConseqConv", "ASM_MARKER"), ID("bool", "COND"), ID("bool", "F"),
   ID("bool", "T"), ID("bool", "\\/"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0, 0], TYOP [0, 0, 1], TYV "'a", TYOP [0, 3, 0],
   TYOP [0, 4, 0], TYOP [0, 1, 0], TYOP [0, 3, 4], TYOP [0, 2, 0],
   TYOP [0, 2, 8], TYOP [0, 3, 3], TYOP [0, 3, 10], TYOP [0, 0, 11],
   TYOP [0, 0, 2]]
  end
  val _ = Theory.incorporate_consts "ConseqConv" tyvector
     [("ASM_MARKER", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 4), TMV("Q", 4), TMV("b", 0), TMV("c", 0), TMV("s", 3),
   TMV("t", 3), TMV("t", 0), TMV("t1", 3), TMV("t2", 3), TMV("x", 0),
   TMV("x'", 0), TMV("y", 0), TMV("y'", 0), TMC(2, 5), TMC(2, 6),
   TMC(3, 2), TMC(4, 7), TMC(4, 2), TMC(4, 9), TMC(5, 2), TMC(6, 5),
   TMC(7, 2), TMC(8, 12), TMC(8, 13), TMC(9, 0), TMC(10, 0), TMC(11, 2),
   TMC(12, 1)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ASM_MARKER_DEF x = x
    val op ASM_MARKER_DEF =
    DT(((("ConseqConv",39),[]),[]), [read"%18%21@%11%9$0||@"])
  fun op forall_eq_thm x = x
    val op forall_eq_thm =
    DT(((("ConseqConv",0),[("bool",[25,56])]),["DISK_THM"]),
       [read"%19%13%4%17%0$0@@%1$0@@|@@%17%13%4%0$0@|@@%13%4%1$0@|@@@"])
  fun op exists_eq_thm x = x
    val op exists_eq_thm =
    DT(((("ConseqConv",1),[("bool",[25,56])]),["DISK_THM"]),
       [read"%19%13%4%17%0$0@@%1$0@@|@@%17%20%4%0$0@|@@%20%4%1$0@|@@@"])
  fun op true_imp x = x
    val op true_imp =
    DT(((("ConseqConv",2),[("bool",[25,36,53])]),["DISK_THM"]),
       [read"%14%6%19$0@%25@|@"])
  fun op false_imp x = x
    val op false_imp =
    DT(((("ConseqConv",3),[("bool",[25,36,53])]),["DISK_THM"]),
       [read"%14%6%19%24@$0@|@"])
  fun op NOT_CLAUSES_X x = x
    val op NOT_CLAUSES_X =
    DT(((("ConseqConv",4),[("bool",[54])]),["DISK_THM"]),
       [read"%14%6%17%27%27$0@@@$0@|@"])
  fun op NOT_CLAUSES_T x = x
    val op NOT_CLAUSES_T =
    DT(((("ConseqConv",5),[("bool",[54])]),["DISK_THM"]),
       [read"%17%27%25@@%24@"])
  fun op NOT_CLAUSES_F x = x
    val op NOT_CLAUSES_F =
    DT(((("ConseqConv",6),[("bool",[54])]),["DISK_THM"]),
       [read"%17%27%24@@%25@"])
  fun op IMP_CONG_conj_strengthen x = x
    val op IMP_CONG_conj_strengthen =
    DT(((("ConseqConv",7),[("bool",[25,51,53,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19$1@%19$2@$3@@@%19$2@%19$0@$1@@@@%19%15$2@$0@@%15$3@$1@@@|@|@|@|@"])
  fun op IMP_CONG_conj_weaken x = x
    val op IMP_CONG_conj_weaken =
    DT(((("ConseqConv",8),[("bool",[25,51,53,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19$1@%19$3@$2@@@%19$2@%19$1@$0@@@@%19%15$3@$1@@%15$2@$0@@@|@|@|@|@"])
  fun op AND_CLAUSES_TX x = x
    val op AND_CLAUSES_TX =
    DT(((("ConseqConv",9),[("bool",[51,73])]),["DISK_THM"]),
       [read"%14%6%17%15%25@$0@@$0@|@"])
  fun op AND_CLAUSES_XT x = x
    val op AND_CLAUSES_XT =
    DT(((("ConseqConv",10),[("bool",[51,73])]),["DISK_THM"]),
       [read"%14%6%17%15$0@%25@@$0@|@"])
  fun op AND_CLAUSES_FX x = x
    val op AND_CLAUSES_FX =
    DT(((("ConseqConv",11),[("bool",[51,73])]),["DISK_THM"]),
       [read"%14%6%17%15%24@$0@@%24@|@"])
  fun op AND_CLAUSES_XF x = x
    val op AND_CLAUSES_XF =
    DT(((("ConseqConv",12),[("bool",[51,73])]),["DISK_THM"]),
       [read"%14%6%17%15$0@%24@@%24@|@"])
  fun op AND_CLAUSES_XX x = x
    val op AND_CLAUSES_XX =
    DT(((("ConseqConv",13),[("bool",[51,73])]),["DISK_THM"]),
       [read"%14%6%17%15$0@$0@@$0@|@"])
  fun op IMP_CONG_disj_strengthen x = x
    val op IMP_CONG_disj_strengthen =
    DT(((("ConseqConv",14),[("bool",[25,51,52,53,54,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19%27$1@@%19$2@$3@@@%19%27$2@@%19$0@$1@@@@%19%26$2@$0@@%26$3@$1@@@|@|@|@|@"])
  fun op IMP_CONG_disj_weaken x = x
    val op IMP_CONG_disj_weaken =
    DT(((("ConseqConv",15),[("bool",[25,51,52,53,54,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19%27$1@@%19$3@$2@@@%19%27$2@@%19$1@$0@@@@%19%26$3@$1@@%26$2@$0@@@|@|@|@|@"])
  fun op OR_CLAUSES_TX x = x
    val op OR_CLAUSES_TX =
    DT(((("ConseqConv",16),[("bool",[52,73])]),["DISK_THM"]),
       [read"%14%6%17%26%25@$0@@%25@|@"])
  fun op OR_CLAUSES_XT x = x
    val op OR_CLAUSES_XT =
    DT(((("ConseqConv",17),[("bool",[52,73])]),["DISK_THM"]),
       [read"%14%6%17%26$0@%25@@%25@|@"])
  fun op OR_CLAUSES_FX x = x
    val op OR_CLAUSES_FX =
    DT(((("ConseqConv",18),[("bool",[52,73])]),["DISK_THM"]),
       [read"%14%6%17%26%24@$0@@$0@|@"])
  fun op OR_CLAUSES_XF x = x
    val op OR_CLAUSES_XF =
    DT(((("ConseqConv",19),[("bool",[52,73])]),["DISK_THM"]),
       [read"%14%6%17%26$0@%24@@$0@|@"])
  fun op OR_CLAUSES_XX x = x
    val op OR_CLAUSES_XX =
    DT(((("ConseqConv",20),[("bool",[52,73])]),["DISK_THM"]),
       [read"%14%6%17%26$0@$0@@$0@|@"])
  fun op IMP_CONG_imp_strengthen x = x
    val op IMP_CONG_imp_strengthen =
    DT(((("ConseqConv",21),[("bool",[25,51,53,54,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19$3@%19$0@$1@@@%19%27$0@@%19$3@$2@@@@%19%19$2@$0@@%19$3@$1@@@|@|@|@|@"])
  fun op IMP_CONG_imp_weaken x = x
    val op IMP_CONG_imp_weaken =
    DT(((("ConseqConv",22),[("bool",[25,51,53,54,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19$3@%19$1@$0@@@%19%27$0@@%19$2@$3@@@@%19%19$3@$1@@%19$2@$0@@@|@|@|@|@"])
  fun op IMP_CONG_simple_imp_strengthen x = x
    val op IMP_CONG_simple_imp_strengthen =
    DT(((("ConseqConv",23),[("bool",[25,51,53,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19$3@$2@@%19$2@%19$0@$1@@@@%19%19$2@$0@@%19$3@$1@@@|@|@|@|@"])
  fun op IMP_CONG_simple_imp_weaken x = x
    val op IMP_CONG_simple_imp_weaken =
    DT(((("ConseqConv",24),[("bool",[25,51,53,152])]),["DISK_THM"]),
       [read"%14%9%14%10%14%11%14%12%19%15%19$2@$3@@%19$2@%19$1@$0@@@@%19%19$3@$1@@%19$2@$0@@@|@|@|@|@"])
  fun op IMP_CLAUSES_TX x = x
    val op IMP_CLAUSES_TX =
    DT(((("ConseqConv",25),[("bool",[53,73])]),["DISK_THM"]),
       [read"%14%6%17%19%25@$0@@$0@|@"])
  fun op IMP_CLAUSES_XT x = x
    val op IMP_CLAUSES_XT =
    DT(((("ConseqConv",26),[("bool",[53,73])]),["DISK_THM"]),
       [read"%14%6%17%19$0@%25@@%25@|@"])
  fun op IMP_CLAUSES_FX x = x
    val op IMP_CLAUSES_FX =
    DT(((("ConseqConv",27),[("bool",[53,73])]),["DISK_THM"]),
       [read"%14%6%17%19%24@$0@@%25@|@"])
  fun op IMP_CLAUSES_XX x = x
    val op IMP_CLAUSES_XX =
    DT(((("ConseqConv",28),[("bool",[53,73])]),["DISK_THM"]),
       [read"%14%6%17%19$0@$0@@%25@|@"])
  fun op IMP_CLAUSES_XF x = x
    val op IMP_CLAUSES_XF =
    DT(((("ConseqConv",29),[("bool",[53,73])]),["DISK_THM"]),
       [read"%14%6%17%19$0@%24@@%27$0@@|@"])
  fun op IMP_CONG_cond_simple x = x
    val op IMP_CONG_cond_simple =
    DT(((("ConseqConv",30),[("bool",[25,51,53,64,152])]),["DISK_THM"]),
       [read"%14%3%14%9%14%10%14%11%14%12%19%15%19$2@$3@@%19$0@$1@@@%19%23$4@$2@$0@@%23$4@$3@$1@@@|@|@|@|@|@"])
  fun op IMP_CONG_cond x = x
    val op IMP_CONG_cond =
    DT(((("ConseqConv",31),[("bool",[25,51,53,54,64,152])]),["DISK_THM"]),
       [read"%14%3%14%9%14%10%14%11%14%12%19%15%19$4@%19$2@$3@@@%19%27$4@@%19$0@$1@@@@%19%23$4@$2@$0@@%23$4@$3@$1@@@|@|@|@|@|@"])
  fun op COND_CLAUSES_CT x = x
    val op COND_CLAUSES_CT =
    DT(((("ConseqConv",32),[("bool",[64,73])]),["DISK_THM"]),
       [read"%13%7%13%8%16%22%25@$1@$0@@$1@|@|@"])
  fun op COND_CLAUSES_CF x = x
    val op COND_CLAUSES_CF =
    DT(((("ConseqConv",33),[("bool",[64,73])]),["DISK_THM"]),
       [read"%13%7%13%8%16%22%24@$1@$0@@$0@|@|@"])
  fun op COND_CLAUSES_ID x = x
    val op COND_CLAUSES_ID =
    DT(((("ConseqConv",34),[("bool",[65])]),["DISK_THM"]),
       [read"%14%2%13%5%16%22$1@$0@$0@@$0@|@|@"])
  fun op COND_CLAUSES_TT x = x
    val op COND_CLAUSES_TT =
    DT(((("ConseqConv",35),
        [("bool",[25,51,53,54,63,64,152])]),["DISK_THM"]),
       [read"%14%3%14%9%17%23$1@%25@$0@@%19%27$1@@$0@@|@|@"])
  fun op COND_CLAUSES_FT x = x
    val op COND_CLAUSES_FT =
    DT(((("ConseqConv",36),
        [("bool",[25,51,53,54,63,64,152])]),["DISK_THM"]),
       [read"%14%3%14%9%17%23$1@$0@%25@@%19$1@$0@@|@|@"])
  fun op COND_CLAUSES_TF x = x
    val op COND_CLAUSES_TF =
    DT(((("ConseqConv",37),[("bool",[25,51,54,63,64,152])]),["DISK_THM"]),
       [read"%14%3%14%9%17%23$1@%24@$0@@%15%27$1@@$0@@|@|@"])
  fun op COND_CLAUSES_FF x = x
    val op COND_CLAUSES_FF =
    DT(((("ConseqConv",38),[("bool",[25,51,54,63,64,152])]),["DISK_THM"]),
       [read"%14%3%14%9%17%23$1@$0@%24@@%15$1@$0@@|@|@"])
  fun op ASM_MARKER_THM x = x
    val op ASM_MARKER_THM =
    DT(((("ConseqConv",40),
        [("ConseqConv",[39]),("bool",[25,35,36,56])]),["DISK_THM"]),
       [read"%14%11%14%9%17%21$1@$0@@$0@|@|@"])
  end
  val _ = DB.bindl "ConseqConv"
  [("ASM_MARKER_DEF",ASM_MARKER_DEF,DB.Def),
   ("forall_eq_thm",forall_eq_thm,DB.Thm),
   ("exists_eq_thm",exists_eq_thm,DB.Thm), ("true_imp",true_imp,DB.Thm),
   ("false_imp",false_imp,DB.Thm), ("NOT_CLAUSES_X",NOT_CLAUSES_X,DB.Thm),
   ("NOT_CLAUSES_T",NOT_CLAUSES_T,DB.Thm),
   ("NOT_CLAUSES_F",NOT_CLAUSES_F,DB.Thm),
   ("IMP_CONG_conj_strengthen",IMP_CONG_conj_strengthen,DB.Thm),
   ("IMP_CONG_conj_weaken",IMP_CONG_conj_weaken,DB.Thm),
   ("AND_CLAUSES_TX",AND_CLAUSES_TX,DB.Thm),
   ("AND_CLAUSES_XT",AND_CLAUSES_XT,DB.Thm),
   ("AND_CLAUSES_FX",AND_CLAUSES_FX,DB.Thm),
   ("AND_CLAUSES_XF",AND_CLAUSES_XF,DB.Thm),
   ("AND_CLAUSES_XX",AND_CLAUSES_XX,DB.Thm),
   ("IMP_CONG_disj_strengthen",IMP_CONG_disj_strengthen,DB.Thm),
   ("IMP_CONG_disj_weaken",IMP_CONG_disj_weaken,DB.Thm),
   ("OR_CLAUSES_TX",OR_CLAUSES_TX,DB.Thm),
   ("OR_CLAUSES_XT",OR_CLAUSES_XT,DB.Thm),
   ("OR_CLAUSES_FX",OR_CLAUSES_FX,DB.Thm),
   ("OR_CLAUSES_XF",OR_CLAUSES_XF,DB.Thm),
   ("OR_CLAUSES_XX",OR_CLAUSES_XX,DB.Thm),
   ("IMP_CONG_imp_strengthen",IMP_CONG_imp_strengthen,DB.Thm),
   ("IMP_CONG_imp_weaken",IMP_CONG_imp_weaken,DB.Thm),
   ("IMP_CONG_simple_imp_strengthen",
    IMP_CONG_simple_imp_strengthen,
    DB.Thm),
   ("IMP_CONG_simple_imp_weaken",IMP_CONG_simple_imp_weaken,DB.Thm),
   ("IMP_CLAUSES_TX",IMP_CLAUSES_TX,DB.Thm),
   ("IMP_CLAUSES_XT",IMP_CLAUSES_XT,DB.Thm),
   ("IMP_CLAUSES_FX",IMP_CLAUSES_FX,DB.Thm),
   ("IMP_CLAUSES_XX",IMP_CLAUSES_XX,DB.Thm),
   ("IMP_CLAUSES_XF",IMP_CLAUSES_XF,DB.Thm),
   ("IMP_CONG_cond_simple",IMP_CONG_cond_simple,DB.Thm),
   ("IMP_CONG_cond",IMP_CONG_cond,DB.Thm),
   ("COND_CLAUSES_CT",COND_CLAUSES_CT,DB.Thm),
   ("COND_CLAUSES_CF",COND_CLAUSES_CF,DB.Thm),
   ("COND_CLAUSES_ID",COND_CLAUSES_ID,DB.Thm),
   ("COND_CLAUSES_TT",COND_CLAUSES_TT,DB.Thm),
   ("COND_CLAUSES_FT",COND_CLAUSES_FT,DB.Thm),
   ("COND_CLAUSES_TF",COND_CLAUSES_TF,DB.Thm),
   ("COND_CLAUSES_FF",COND_CLAUSES_FF,DB.Thm),
   ("ASM_MARKER_THM",ASM_MARKER_THM,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("boolTheory.bool_grammars",
                          boolTheory.bool_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ASM_MARKER", (Term.prim_mk_const { Name = "ASM_MARKER", Thy = "ConseqConv"}))
  val ConseqConv_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ConseqConv"
end
