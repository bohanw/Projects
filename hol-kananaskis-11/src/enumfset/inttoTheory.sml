structure inttoTheory :> inttoTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading inttoTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open OmegaTheory int_arithTheory totoTheory
  in end;
  val _ = Theory.link_parents
          ("intto",
          Arbnum.fromString "1488588178",
          Arbnum.fromString "367501")
          [("Omega",
           Arbnum.fromString "1488587731",
           Arbnum.fromString "896421"),
           ("int_arith",
           Arbnum.fromString "1488587685",
           Arbnum.fromString "137740"),
           ("toto",
           Arbnum.fromString "1488587912",
           Arbnum.fromString "619395")];
  val _ = Theory.incorporate_types "intto" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("toto", "toto"), ID("integer", "int"), ID("min", "fun"),
   ID("toto", "cpn"), ID("num", "num"), ID("bool", "!"), ID("min", "bool"),
   ID("num", "0"), ID("min", "="), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("toto", "EQUAL"), ID("toto", "GREATER"),
   ID("toto", "LESS"), ID("toto", "TO"), ID("toto", "TO_of_LinearOrder"),
   ID("arithmetic", "ZERO"), ID("toto", "apto"), ID("intto", "intOrd"),
   ID("integer", "int_lt"), ID("integer", "int_neg"),
   ID("integer", "int_of_num"), ID("intto", "intto"), ID("toto", "numOrd"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [0, 0], TYOP [3], TYOP [2, 0, 2], TYOP [2, 0, 3],
   TYOP [4], TYOP [6], TYOP [2, 5, 6], TYOP [2, 7, 6], TYOP [2, 2, 6],
   TYOP [2, 2, 9], TYOP [2, 4, 6], TYOP [2, 4, 11], TYOP [2, 5, 7],
   TYOP [2, 1, 6], TYOP [2, 1, 14], TYOP [2, 5, 5], TYOP [2, 4, 1],
   TYOP [2, 0, 6], TYOP [2, 0, 18], TYOP [2, 19, 4], TYOP [2, 1, 4],
   TYOP [2, 0, 0], TYOP [2, 5, 0], TYOP [2, 5, 2], TYOP [2, 5, 24],
   TYOP [2, 6, 6]]
  end
  val _ = Theory.incorporate_consts "intto" tyvector
     [("intto", 1), ("intOrd", 4)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("m", 5), TMV("n", 5), TMC(5, 8), TMC(7, 5), TMC(8, 10), TMC(8, 12),
   TMC(8, 13), TMC(8, 15), TMC(9, 16), TMC(10, 16), TMC(11, 2), TMC(12, 2),
   TMC(13, 2), TMC(14, 17), TMC(15, 20), TMC(16, 5), TMC(17, 21),
   TMC(18, 4), TMC(19, 19), TMC(20, 22), TMC(21, 23), TMC(22, 1),
   TMC(23, 25), TMC(24, 26)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op intOrd x = x
    val op intOrd = DT(((("intto",0),[]),[]), [read"%5%17@%14%18@@"])
  fun op intto x = x
    val op intto = DT(((("intto",1),[]),[]), [read"%7%21@%13%17@@"])
  fun op apintto_thm x = x
    val op apintto_thm =
    DT(((("intto",2),
        [("bool",[25,26,27,36,51,52,54,56,58,63]),("integer",[65,66,67]),
         ("intto",[0,1]),("relation",[0,2,7,205]),
         ("toto",[34,72,91])]),["DISK_THM"]), [read"%5%16%21@@%17@"])
  fun op pos_pos_thm x = x
    val op pos_pos_thm =
    DT(((("intto",3),
        [("bool",[25,56,58,105,129]),("integer",[166,206]),("intto",[0]),
         ("toto",[25,102])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%20$1@@%20$0@@@%22$1@$0@@|@|@"])
  fun op neg_neg_thm x = x
    val op neg_neg_thm =
    DT(((("intto",4),
        [("bool",[25,26,27,30,54,56,58,63,64,105,129]),
         ("integer",[166,206,342]),("intto",[0]),
         ("toto",[19,25,102])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%19%20$1@@@%19%20$0@@@@%22$0@$1@@|@|@"])
  fun op BIT1_nz x = x
    val op BIT1_nz =
    DT(((("intto",5),
        [("arithmetic",[2,29]),("bool",[25,58]),
         ("numeral",[7])]),["DISK_THM"]), [read"%2%1%23%6%8$0@@%3@@|@"])
  fun op BIT2_nz x = x
    val op BIT2_nz =
    DT(((("intto",6),
        [("arithmetic",[2,29]),("bool",[25,58]),
         ("numeral",[7])]),["DISK_THM"]), [read"%2%1%23%6%9$0@@%3@@|@"])
  fun op neg_lt_BIT1_thm x = x
    val op neg_lt_BIT1_thm =
    DT(((("intto",7),
        [("bool",[25,26,27,51,52,54,56,58,105,129,147]),
         ("integer",[206,342]),("intto",[0,5]),
         ("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%19%20$1@@@%20%8$0@@@@%12@|@|@"])
  fun op neg_lt_BIT2_thm x = x
    val op neg_lt_BIT2_thm =
    DT(((("intto",8),
        [("bool",[25,26,27,51,52,54,56,58,105,129,147]),
         ("integer",[206,342]),("intto",[0,6]),
         ("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%19%20$1@@@%20%9$0@@@@%12@|@|@"])
  fun op neg_BIT1_lt_thm x = x
    val op neg_BIT1_lt_thm =
    DT(((("intto",9),
        [("bool",[25,26,27,51,52,54,56,58,105,129,147]),
         ("integer",[206,342]),("intto",[0,5]),
         ("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%19%20%8$1@@@@%20$0@@@%12@|@|@"])
  fun op neg_BIT2_lt_thm x = x
    val op neg_BIT2_lt_thm =
    DT(((("intto",10),
        [("bool",[25,26,27,51,52,54,56,58,105,129,147]),
         ("integer",[206,342]),("intto",[0,6]),
         ("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%19%20%9$1@@@@%20$0@@@%12@|@|@"])
  fun op neg_ZERO_eq_ZERO_thm x = x
    val op neg_ZERO_eq_ZERO_thm =
    DT(((("intto",11),
        [("arithmetic",[2]),("bool",[25,27,51,52,54,56,58,105,129,147]),
         ("integer",[206,342]),("intto",[0]),("toto",[25])]),["DISK_THM"]),
       [read"%4%17%19%20%15@@@%20%15@@@%10@"])
  fun op BIT1_gt_neg_thm x = x
    val op BIT1_gt_neg_thm =
    DT(((("intto",12),
        [("bool",[25,26,27,51,56,58,105,129,147]),("integer",[206,342]),
         ("intto",[0,5]),("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%20%8$1@@@%19%20$0@@@@%11@|@|@"])
  fun op BIT2_gt_neg_thm x = x
    val op BIT2_gt_neg_thm =
    DT(((("intto",13),
        [("bool",[25,26,27,51,56,58,105,129,147]),("integer",[206,342]),
         ("intto",[0,6]),("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%20%9$1@@@%19%20$0@@@@%11@|@|@"])
  fun op gt_neg_BIT1_thm x = x
    val op gt_neg_BIT1_thm =
    DT(((("intto",14),
        [("bool",[25,26,27,51,56,58,105,129,147]),("integer",[206,342]),
         ("intto",[0,5]),("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%20$1@@%19%20%8$0@@@@@%11@|@|@"])
  fun op gt_neg_BIT2_thm x = x
    val op gt_neg_BIT2_thm =
    DT(((("intto",15),
        [("bool",[25,26,27,51,56,58,105,129,147]),("integer",[206,342]),
         ("intto",[0,6]),("toto",[25])]),["DISK_THM"]),
       [read"%2%0%2%1%4%17%20$1@@%19%20%9$0@@@@@%11@|@|@"])
  fun op ZERO_eq_neg_ZERO_thm x = x
    val op ZERO_eq_neg_ZERO_thm =
    DT(((("intto",16),
        [("arithmetic",[2]),("bool",[25,51,56,58,105,129,147]),
         ("integer",[206,342]),("intto",[0]),("toto",[25])]),["DISK_THM"]),
       [read"%4%17%20%15@@%19%20%15@@@@%10@"])
  end
  val _ = DB.bindl "intto"
  [("intOrd",intOrd,DB.Def), ("intto",intto,DB.Def),
   ("apintto_thm",apintto_thm,DB.Thm), ("pos_pos_thm",pos_pos_thm,DB.Thm),
   ("neg_neg_thm",neg_neg_thm,DB.Thm), ("BIT1_nz",BIT1_nz,DB.Thm),
   ("BIT2_nz",BIT2_nz,DB.Thm), ("neg_lt_BIT1_thm",neg_lt_BIT1_thm,DB.Thm),
   ("neg_lt_BIT2_thm",neg_lt_BIT2_thm,DB.Thm),
   ("neg_BIT1_lt_thm",neg_BIT1_lt_thm,DB.Thm),
   ("neg_BIT2_lt_thm",neg_BIT2_lt_thm,DB.Thm),
   ("neg_ZERO_eq_ZERO_thm",neg_ZERO_eq_ZERO_thm,DB.Thm),
   ("BIT1_gt_neg_thm",BIT1_gt_neg_thm,DB.Thm),
   ("BIT2_gt_neg_thm",BIT2_gt_neg_thm,DB.Thm),
   ("gt_neg_BIT1_thm",gt_neg_BIT1_thm,DB.Thm),
   ("gt_neg_BIT2_thm",gt_neg_BIT2_thm,DB.Thm),
   ("ZERO_eq_neg_ZERO_thm",ZERO_eq_neg_ZERO_thm,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("OmegaTheory.Omega_grammars",
                          OmegaTheory.Omega_grammars),
                         ("int_arithTheory.int_arith_grammars",
                          int_arithTheory.int_arith_grammars),
                         ("totoTheory.toto_grammars",
                          totoTheory.toto_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("intOrd", (Term.prim_mk_const { Name = "intOrd", Thy = "intto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("intOrd", (Term.prim_mk_const { Name = "intOrd", Thy = "intto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("intto", (Term.prim_mk_const { Name = "intto", Thy = "intto"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("intto", (Term.prim_mk_const { Name = "intto", Thy = "intto"}))
  val intto_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "intto", thydataty = "compute", data = "intto.intOrd intto.intto"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "intto"
end
