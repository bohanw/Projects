structure intrealTheory :> intrealTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading intrealTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open integerTheory realTheory
  in end;
  val _ = Theory.link_parents
          ("intreal",
          Arbnum.fromString "1488589390",
          Arbnum.fromString "419474")
          [("real",
           Arbnum.fromString "1488589207",
           Arbnum.fromString "633189"),
           ("integer",
           Arbnum.fromString "1488587637",
           Arbnum.fromString "492174")];
  val _ = Theory.incorporate_types "intreal" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("realax", "real"), ID("integer", "int"),
   ID("min", "bool"), ID("bool", "!"), ID("num", "0"), ID("num", "num"),
   ID("min", "="), ID("arithmetic", "BIT1"), ID("bool", "COND"),
   ID("intreal", "INT_CEILING"), ID("intreal", "INT_FLOOR"),
   ID("integer", "LEAST_INT"), ID("arithmetic", "NUMERAL"),
   ID("integer", "Num"), ID("arithmetic", "ZERO"),
   ID("integer", "int_add"), ID("integer", "int_lt"),
   ID("integer", "int_neg"), ID("integer", "int_of_num"),
   ID("intreal", "is_int"), ID("real", "real_gt"), ID("real", "real_lte"),
   ID("realax", "real_neg"), ID("intreal", "real_of_int"),
   ID("real", "real_of_num")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [3], TYOP [0, 0, 3],
   TYOP [0, 0, 1], TYOP [0, 1, 3], TYOP [0, 6, 3], TYOP [0, 4, 3],
   TYOP [6], TYOP [0, 3, 3], TYOP [0, 3, 10], TYOP [0, 1, 6],
   TYOP [0, 0, 4], TYOP [0, 9, 9], TYOP [0, 0, 0], TYOP [0, 0, 15],
   TYOP [0, 3, 16], TYOP [0, 6, 1], TYOP [0, 1, 9], TYOP [0, 1, 1],
   TYOP [0, 1, 20], TYOP [0, 9, 1], TYOP [0, 9, 0]]
  end
  val _ = Theory.incorporate_consts "intreal" tyvector
     [("real_of_int", 2), ("is_int", 4), ("INT_FLOOR", 5),
      ("INT_CEILING", 5)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("i", 1), TMV("x", 0), TMC(4, 7), TMC(4, 8), TMC(5, 9), TMC(7, 11),
   TMC(7, 12), TMC(7, 13), TMC(8, 14), TMC(9, 17), TMC(10, 5), TMC(11, 5),
   TMC(12, 18), TMC(13, 14), TMC(14, 19), TMC(15, 9), TMC(16, 21),
   TMC(17, 12), TMC(18, 20), TMC(19, 22), TMC(20, 4), TMC(21, 13),
   TMC(22, 13), TMC(23, 15), TMC(24, 2), TMC(25, 23)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op real_of_int x = x
    val op real_of_int =
    DT(((("intreal",0),[]),[]),
       [read"%2%0%7%24$0@@%9%17$0@%19%4@@@%23%25%14%18$0@@@@@%25%14$0@@@@|@"])
  fun op INT_FLOOR_def x = x
    val op INT_FLOOR_def =
    DT(((("intreal",1),[]),[]),
       [read"%3%1%6%11$0@@%12%0%21%24%16$0@%19%13%8%15@@@@@@$1@|@@|@"])
  fun op INT_CEILING_def x = x
    val op INT_CEILING_def =
    DT(((("intreal",2),[]),[]),
       [read"%3%1%6%10$0@@%12%0%22$1@%24$0@@|@@|@"])
  fun op is_int_def x = x
    val op is_int_def =
    DT(((("intreal",3),[]),[]), [read"%3%1%5%20$0@@%7$0@%24%11$0@@@@|@"])
  end
  val _ = DB.bindl "intreal"
  [("real_of_int",real_of_int,DB.Def),
   ("INT_FLOOR_def",INT_FLOOR_def,DB.Def),
   ("INT_CEILING_def",INT_CEILING_def,DB.Def),
   ("is_int_def",is_int_def,DB.Def)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("realTheory.real_grammars",
                          realTheory.real_grammars),
                         ("integerTheory.integer_grammars",
                          integerTheory.integer_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_of_int", (Term.prim_mk_const { Name = "real_of_int", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("real_of_int", (Term.prim_mk_const { Name = "real_of_int", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_FLOOR", (Term.prim_mk_const { Name = "INT_FLOOR", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_FLOOR", (Term.prim_mk_const { Name = "INT_FLOOR", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_CEILING", (Term.prim_mk_const { Name = "INT_CEILING", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_CEILING", (Term.prim_mk_const { Name = "INT_CEILING", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("flr", (Term.prim_mk_const { Name = "INT_FLOOR", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("clg", (Term.prim_mk_const { Name = "INT_CEILING", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_int", (Term.prim_mk_const { Name = "is_int", Thy = "intreal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_int", (Term.prim_mk_const { Name = "is_int", Thy = "intreal"}))
  val intreal_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "intreal",
    thydataty = "compute",
    data =
        "intreal.INT_FLOOR_def intreal.is_int_def intreal.INT_CEILING_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "intreal"
end
