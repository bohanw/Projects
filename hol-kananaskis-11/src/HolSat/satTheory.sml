structure satTheory :> satTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading satTheory ... " else ()
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
          ("sat",Arbnum.fromString "1488585914",Arbnum.fromString "868419")
          [("bool",
           Arbnum.fromString "1488585882",
           Arbnum.fromString "632112")];
  val _ = Theory.incorporate_types "sat" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "bool"), ID("bool", "!"), ID("min", "fun"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("bool", "COND"), ID("bool", "F"),
   ID("bool", "T"), ID("bool", "\\/"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2, 0, 0], TYOP [2, 1, 0], TYOP [2, 0, 1],
   TYOP [2, 0, 3]]
  end
  val _ = Theory.incorporate_consts "sat" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 0), TMV("B", 0), TMV("C", 0), TMV("b", 0), TMV("p", 0),
   TMV("q", 0), TMV("r", 0), TMV("s", 0), TMV("t", 0), TMC(1, 2),
   TMC(3, 3), TMC(4, 3), TMC(5, 3), TMC(6, 4), TMC(7, 0), TMC(8, 0),
   TMC(9, 3), TMC(10, 1)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op AND_IMP x = x
    val op AND_IMP =
    DT(((("sat",0),[("bool",[13,25,51,53,54,63])]),["DISK_THM"]),
       [read"%9%0%9%1%9%2%11%12%10$2@$1@@$0@@%12$2@%12$1@$0@@@|@|@|@"])
  fun op NOT_NOT x = x
    val op NOT_NOT =
    DT(((("sat",1),[("bool",[54])]),["DISK_THM"]),
       [read"%9%8%11%17%17$0@@@$0@|@"])
  fun op AND_INV x = x
    val op AND_INV =
    DT(((("sat",2),[("bool",[13,25,51,54,63])]),["DISK_THM"]),
       [read"%9%0%11%10%17$0@@$0@@%14@|@"])
  fun op AND_INV_IMP x = x
    val op AND_INV_IMP =
    DT(((("sat",3),[("bool",[13,25,53,54])]),["DISK_THM"]),
       [read"%9%0%12$0@%12%17$0@@%14@@|@"])
  fun op OR_DUAL x = x
    val op OR_DUAL =
    DT(((("sat",4),[("bool",[13,25,52,53,54,63])]),["DISK_THM"]),
       [read"%11%12%17%16%0@%1@@@%14@@%12%17%0@@%12%17%1@@%14@@@"])
  fun op OR_DUAL2 x = x
    val op OR_DUAL2 =
    DT(((("sat",5),[("bool",[13,25,52,53,54,63])]),["DISK_THM"]),
       [read"%11%12%17%16%0@%1@@@%14@@%12%12%0@%14@@%12%17%1@@%14@@@"])
  fun op OR_DUAL3 x = x
    val op OR_DUAL3 =
    DT(((("sat",6),[("bool",[13,25,52,53,54,63])]),["DISK_THM"]),
       [read"%11%12%17%16%17%0@@%1@@@%14@@%12%0@%12%17%1@@%14@@@"])
  fun op AND_INV2 x = x
    val op AND_INV2 =
    DT(((("sat",7),[("bool",[13,25,53,54])]),["DISK_THM"]),
       [read"%12%12%17%0@@%14@@%12%12%0@%14@@%14@@"])
  fun op NOT_ELIM2 x = x
    val op NOT_ELIM2 =
    DT(((("sat",8),[("bool",[13,25,53,54,63])]),["DISK_THM"]),
       [read"%11%12%17%0@@%14@@%0@"])
  fun op EQT_Imp1 x = x
    val op EQT_Imp1 =
    DT(((("sat",9),[("bool",[13,25,53,63])]),["DISK_THM"]),
       [read"%9%3%12$0@%11$0@%15@@|@"])
  fun op EQF_Imp1 x = x
    val op EQF_Imp1 =
    DT(((("sat",10),[("bool",[13,25,53,54,63])]),["DISK_THM"]),
       [read"%9%3%12%17$0@@%11$0@%14@@|@"])
  fun op dc_eq x = x
    val op dc_eq =
    DT(((("sat",11),[("bool",[13,25,51,52,54,63])]),["DISK_THM"]),
       [read"%11%11%4@%11%5@%6@@@%10%16%4@%16%5@%6@@@%10%16%4@%16%17%6@@%17%5@@@@%10%16%5@%16%17%6@@%17%4@@@@%16%6@%16%17%5@@%17%4@@@@@@@"])
  fun op dc_conj x = x
    val op dc_conj =
    DT(((("sat",12),[("bool",[13,25,51,52,54,63])]),["DISK_THM"]),
       [read"%11%11%4@%10%5@%6@@@%10%16%4@%16%17%5@@%17%6@@@@%10%16%5@%17%4@@@%16%6@%17%4@@@@@"])
  fun op dc_disj x = x
    val op dc_disj =
    DT(((("sat",13),[("bool",[13,25,51,52,54,63])]),["DISK_THM"]),
       [read"%11%11%4@%16%5@%6@@@%10%16%4@%17%5@@@%10%16%4@%17%6@@@%16%5@%16%6@%17%4@@@@@@"])
  fun op dc_imp x = x
    val op dc_imp =
    DT(((("sat",14),[("bool",[13,25,51,52,53,54,63])]),["DISK_THM"]),
       [read"%11%11%4@%12%5@%6@@@%10%16%4@%5@@%10%16%4@%17%6@@@%16%17%5@@%16%6@%17%4@@@@@@"])
  fun op dc_neg x = x
    val op dc_neg =
    DT(((("sat",15),[("bool",[13,25,51,52,54,63])]),["DISK_THM"]),
       [read"%11%11%4@%17%5@@@%10%16%4@%5@@%16%17%5@@%17%4@@@@"])
  fun op dc_cond x = x
    val op dc_cond =
    DT(((("sat",16),[("bool",[13,25,51,52,54,63,64])]),["DISK_THM"]),
       [read"%11%11%4@%13%5@%6@%7@@@%10%16%4@%16%5@%17%7@@@@%10%16%4@%16%17%6@@%17%5@@@@%10%16%4@%16%17%6@@%17%7@@@@%10%16%17%5@@%16%6@%17%4@@@@%16%5@%16%7@%17%4@@@@@@@@"])
  fun op pth_ni1 x = x
    val op pth_ni1 =
    DT(((("sat",17),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%17%12%4@%5@@@%4@"])
  fun op pth_ni2 x = x
    val op pth_ni2 =
    DT(((("sat",18),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%17%12%4@%5@@@%17%5@@"])
  fun op pth_no1 x = x
    val op pth_no1 =
    DT(((("sat",19),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%17%16%4@%5@@@%17%4@@"])
  fun op pth_no2 x = x
    val op pth_no2 =
    DT(((("sat",20),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%17%16%4@%5@@@%17%5@@"])
  fun op pth_an1 x = x
    val op pth_an1 =
    DT(((("sat",21),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%10%4@%5@@%4@"])
  fun op pth_an2 x = x
    val op pth_an2 =
    DT(((("sat",22),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%10%4@%5@@%5@"])
  fun op pth_nn x = x
    val op pth_nn =
    DT(((("sat",23),[("bool",[13,25,51,52,53,54])]),["DISK_THM"]),
       [read"%12%17%17%4@@@%4@"])
  end
  val _ = DB.bindl "sat"
  [("AND_IMP",AND_IMP,DB.Thm), ("NOT_NOT",NOT_NOT,DB.Thm),
   ("AND_INV",AND_INV,DB.Thm), ("AND_INV_IMP",AND_INV_IMP,DB.Thm),
   ("OR_DUAL",OR_DUAL,DB.Thm), ("OR_DUAL2",OR_DUAL2,DB.Thm),
   ("OR_DUAL3",OR_DUAL3,DB.Thm), ("AND_INV2",AND_INV2,DB.Thm),
   ("NOT_ELIM2",NOT_ELIM2,DB.Thm), ("EQT_Imp1",EQT_Imp1,DB.Thm),
   ("EQF_Imp1",EQF_Imp1,DB.Thm), ("dc_eq",dc_eq,DB.Thm),
   ("dc_conj",dc_conj,DB.Thm), ("dc_disj",dc_disj,DB.Thm),
   ("dc_imp",dc_imp,DB.Thm), ("dc_neg",dc_neg,DB.Thm),
   ("dc_cond",dc_cond,DB.Thm), ("pth_ni1",pth_ni1,DB.Thm),
   ("pth_ni2",pth_ni2,DB.Thm), ("pth_no1",pth_no1,DB.Thm),
   ("pth_no2",pth_no2,DB.Thm), ("pth_an1",pth_an1,DB.Thm),
   ("pth_an2",pth_an2,DB.Thm), ("pth_nn",pth_nn,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("boolTheory.bool_grammars",
                          boolTheory.bool_grammars)]
  val _ = List.app (update_grms reveal) []

  val sat_grammars = Parse.current_lgrms()
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "sat"
end
