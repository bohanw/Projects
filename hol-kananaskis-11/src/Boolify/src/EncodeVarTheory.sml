structure EncodeVarTheory :> EncodeVarTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading EncodeVarTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open CoderTheory
  in end;
  val _ = Theory.link_parents
          ("EncodeVar",
          Arbnum.fromString "1488589605",
          Arbnum.fromString "589254")
          [("Coder",
           Arbnum.fromString "1488589590",
           Arbnum.fromString "764150")];
  val _ = Theory.incorporate_types "EncodeVar" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("list", "list"),
   ID("num", "num"), ID("pair", "prod"), ID("option", "option"),
   ID("one", "one"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("arithmetic", "BIT1"), ID("list", "CONS"),
   ID("bool", "IN"), ID("list", "LENGTH"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("bool", "RES_EXISTS"),
   ID("bool", "RES_FORALL"), ID("num", "SUC"), ID("arithmetic", "ZERO"),
   ID("Coder", "bnum_coder"), ID("Coder", "bool_coder"),
   ID("Coder", "decoder"), ID("Coder", "domain"), ID("Coder", "encoder"),
   ID("EncodeVar", "fixed_width"), ID("sum", "sum"),
   ID("EncodeVar", "of_length"), ID("Coder", "prod_coder"),
   ID("Coder", "sum_coder"), ID("Coder", "unit_coder"),
   ID("Coder", "wf_coder")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [2, 1], TYOP [0, 2, 0], TYOP [3],
   TYOP [0, 4, 3], TYOP [2, 0], TYOP [4, 1, 6], TYOP [5, 7],
   TYOP [0, 6, 8], TYOP [0, 1, 6], TYOP [4, 10, 9], TYOP [0, 1, 0],
   TYOP [4, 12, 11], TYOP [0, 13, 0], TYOP [0, 4, 14], TYV "'b",
   TYOP [4, 16, 6], TYOP [5, 17], TYOP [0, 6, 18], TYOP [0, 16, 6],
   TYOP [4, 20, 19], TYOP [0, 16, 0], TYOP [4, 22, 21], TYOP [0, 0, 0],
   TYOP [0, 4, 0], TYOP [6], TYOP [0, 26, 0], TYOP [0, 12, 0],
   TYOP [0, 28, 0], TYOP [0, 24, 0], TYOP [0, 30, 0], TYOP [0, 3, 0],
   TYOP [0, 32, 0], TYOP [0, 25, 0], TYOP [0, 34, 0], TYOP [0, 27, 0],
   TYOP [0, 36, 0], TYOP [0, 14, 0], TYOP [0, 23, 0], TYOP [0, 39, 0],
   TYOP [0, 4, 4], TYOP [0, 4, 41], TYOP [0, 0, 24], TYOP [0, 4, 25],
   TYOP [0, 2, 2], TYOP [0, 1, 45], TYOP [0, 2, 32], TYOP [0, 2, 4],
   TYOP [0, 6, 4], TYOP [0, 3, 32], TYOP [0, 6, 0], TYOP [0, 51, 0],
   TYOP [0, 51, 52], TYOP [4, 4, 6], TYOP [5, 54], TYOP [0, 6, 55],
   TYOP [0, 4, 6], TYOP [4, 57, 56], TYOP [4, 25, 58], TYOP [0, 25, 59],
   TYOP [0, 4, 60], TYOP [4, 0, 6], TYOP [5, 62], TYOP [0, 6, 63],
   TYOP [0, 0, 6], TYOP [4, 65, 64], TYOP [4, 24, 66], TYOP [0, 24, 67],
   TYOP [0, 6, 1], TYOP [0, 13, 69], TYOP [0, 13, 12], TYOP [0, 13, 10],
   TYOP [0, 4, 39], TYOP [0, 67, 0], TYOP [0, 4, 74], TYOP [0, 59, 0],
   TYOP [0, 4, 76], TYOP [4, 26, 6], TYOP [5, 78], TYOP [0, 6, 79],
   TYOP [0, 26, 6], TYOP [4, 81, 80], TYOP [4, 27, 82], TYOP [0, 83, 0],
   TYOP [0, 4, 84], TYOP [4, 1, 16], TYOP [4, 86, 6], TYOP [5, 87],
   TYOP [0, 6, 88], TYOP [0, 86, 6], TYOP [4, 90, 89], TYOP [0, 86, 0],
   TYOP [4, 92, 91], TYOP [0, 93, 0], TYOP [0, 4, 94], TYOP [30, 1, 16],
   TYOP [4, 96, 6], TYOP [5, 97], TYOP [0, 6, 98], TYOP [0, 96, 6],
   TYOP [4, 100, 99], TYOP [0, 96, 0], TYOP [4, 102, 101],
   TYOP [0, 103, 0], TYOP [0, 4, 104], TYOP [0, 4, 51], TYOP [0, 23, 93],
   TYOP [0, 13, 107], TYOP [0, 23, 103], TYOP [0, 13, 109],
   TYOP [0, 27, 83]]
  end
  val _ = Theory.incorporate_consts "EncodeVar" tyvector
     [("of_length", 5), ("fixed_width", 15)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("c", 13), TMV("c1", 13), TMV("c2", 23), TMV("l", 2), TMV("m", 4),
   TMV("n", 4), TMV("n1", 4), TMV("n2", 4), TMV("p", 24), TMV("p", 25),
   TMV("p", 27), TMV("phi", 12), TMV("phi", 3), TMV("w", 2), TMV("w", 6),
   TMV("x", 1), TMC(7, 28), TMC(7, 29), TMC(7, 31), TMC(7, 33), TMC(7, 35),
   TMC(7, 37), TMC(7, 32), TMC(7, 34), TMC(7, 38), TMC(7, 40), TMC(8, 42),
   TMC(9, 43), TMC(10, 4), TMC(11, 43), TMC(11, 44), TMC(12, 43),
   TMC(13, 28), TMC(14, 41), TMC(15, 46), TMC(16, 47), TMC(17, 48),
   TMC(17, 49), TMC(18, 2), TMC(19, 41), TMC(20, 50), TMC(20, 53),
   TMC(21, 50), TMC(21, 53), TMC(22, 41), TMC(23, 4), TMC(24, 61),
   TMC(25, 68), TMC(26, 70), TMC(27, 71), TMC(28, 72), TMC(29, 15),
   TMC(29, 73), TMC(29, 75), TMC(29, 77), TMC(29, 85), TMC(29, 95),
   TMC(29, 105), TMC(31, 5), TMC(31, 106), TMC(32, 108), TMC(33, 110),
   TMC(34, 111), TMC(35, 14)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op fixed_width_def x = x
    val op fixed_width_def =
    DT(((("EncodeVar",0),[]),[]),
       [read"%23%5%24%0%29%51$1@$0@@%16%15%31%49$1@$0@@%30%37%50$1@$0@@@$2@@|@@|@|@"])
  fun op of_length_def x = x
    val op of_length_def =
    DT(((("EncodeVar",1),[("bool",[2,18,25,36,56])]),["DISK_THM"]),
       [read"%22%3%23%5%29%35$1@%58$0@@@%30%36$1@@$0@@|@|@"])
  fun op fixed_width_univ x = x
    val op fixed_width_univ =
    DT(((("EncodeVar",2),
        [("Coder",[6,7]),("EncodeVar",[0,1]),
         ("bool",[25,26,47,48,53,54,58,63,84,93,94,96,105,124,156]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%17%11%24%0%23%5%31%27%63$1@@%51$0@$1@@@%29%16%15%31%49$2@$0@@$3$0@@|@@%43%59$0@@%14$3%48$2@$0@@|@@@|@|@|@"])
  fun op of_length_univ_suc x = x
    val op of_length_univ_suc =
    DT(((("EncodeVar",3),
        [("EncodeVar",[1]),("arithmetic",[46,71,93,172,173,180]),
         ("bool",[25,26,27,36,54,56,58,63,104,105,124,156]),
         ("list",[22,45]),("numeral",[3,8]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%19%12%23%5%29%42%58%44$0@@@%13$2$0@|@@%16%15%42%58$1@@%13$3%34$1@$0@@|@|@@|@|@"])
  fun op of_length_univ_zero x = x
    val op of_length_univ_zero =
    DT(((("EncodeVar",4),
        [("EncodeVar",[1]),("bool",[25,36,56,58,63,101,105,124,145,156]),
         ("list",[90])]),["DISK_THM"]),
       [read"%19%12%29%42%58%28@@%13$1$0@|@@$0%38@@|@"])
  fun op fixed_width_exists x = x
    val op fixed_width_exists =
    DT(((("EncodeVar",5),
        [("Coder",[6,7]),("EncodeVar",[0,1]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,84,93,94,96,105,124,
          157]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%17%11%24%0%23%5%31%27%63$1@@%51$0@$1@@@%29%32%15%27%49$2@$0@@$3$0@@|@@%41%59$0@@%14$3%48$2@$0@@|@@@|@|@|@"])
  fun op of_length_exists_suc x = x
    val op of_length_exists_suc =
    DT(((("EncodeVar",6),
        [("EncodeVar",[1]),("arithmetic",[46,71,93,172,173,180]),
         ("bool",[25,26,27,36,51,54,56,63,104,105,157]),("list",[22,45]),
         ("numeral",[3,8]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%19%12%23%5%29%40%58%44$0@@@%13$2$0@|@@%32%15%40%58$1@@%13$3%34$1@$0@@|@|@@|@|@"])
  fun op of_length_exists_zero x = x
    val op of_length_exists_zero =
    DT(((("EncodeVar",7),
        [("EncodeVar",[1]),("bool",[25,26,36,56,143,157]),
         ("list",[90])]),["DISK_THM"]),
       [read"%19%12%29%40%58%28@@%13$1$0@|@@$0%38@@|@"])
  fun op fixed_width_unit x = x
    val op fixed_width_unit =
    DT(((("EncodeVar",8),
        [("Coder",[2,3,9]),("Encode",[11]),("EncodeVar",[0]),
         ("bool",[25,36,53,56,58,105,124]),("list",[22])]),["DISK_THM"]),
       [read"%21%10%55%28@%62$0@@|@"])
  fun op fixed_width_bool x = x
    val op fixed_width_bool =
    DT(((("EncodeVar",9),
        [("Coder",[2,3,11]),("Encode",[13]),("EncodeVar",[0]),
         ("bool",[25,36,53,56,58,105,124]),("list",[22]),
         ("numeral",[3])]),["DISK_THM"]),
       [read"%18%8%53%39%33%45@@@%47$0@@|@"])
  fun op fixed_width_prod x = x
    val op fixed_width_prod =
    DT(((("EncodeVar",10),
        [("Coder",[2,3,13]),("Encode",[15,16]),("EncodeVar",[0]),
         ("arithmetic",[91]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("list",[57]),("pair",[5,8,9]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%24%1%25%2%23%6%23%7%31%27%51$1@$3@@%52$0@$2@@@%56%26$1@$0@@%60$3@$2@@@|@|@|@|@"])
  fun op fixed_width_sum x = x
    val op fixed_width_sum =
    DT(((("EncodeVar",11),
        [("Coder",[2,3,15]),("Encode",[19,20]),("EncodeVar",[0]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("list",[22]),("pair",[5]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,13,14,15]),("sum",[14,24])]),["DISK_THM"]),
       [read"%24%1%25%2%23%5%31%27%51$0@$2@@%52$0@$1@@@%57%44$0@@%61$2@$1@@@|@|@|@"])
  fun op fixed_width_bnum x = x
    val op fixed_width_bnum =
    DT(((("EncodeVar",12),
        [("Coder",[3,25]),("Encode",[43]),("EncodeVar",[0]),
         ("bool",[25,36,53,56,58,105,124])]),["DISK_THM"]),
       [read"%23%4%20%9%54$1@%46$1@$0@@|@|@"])
  end
  val _ = DB.bindl "EncodeVar"
  [("fixed_width_def",fixed_width_def,DB.Def),
   ("of_length_def",of_length_def,DB.Def),
   ("fixed_width_univ",fixed_width_univ,DB.Thm),
   ("of_length_univ_suc",of_length_univ_suc,DB.Thm),
   ("of_length_univ_zero",of_length_univ_zero,DB.Thm),
   ("fixed_width_exists",fixed_width_exists,DB.Thm),
   ("of_length_exists_suc",of_length_exists_suc,DB.Thm),
   ("of_length_exists_zero",of_length_exists_zero,DB.Thm),
   ("fixed_width_unit",fixed_width_unit,DB.Thm),
   ("fixed_width_bool",fixed_width_bool,DB.Thm),
   ("fixed_width_prod",fixed_width_prod,DB.Thm),
   ("fixed_width_sum",fixed_width_sum,DB.Thm),
   ("fixed_width_bnum",fixed_width_bnum,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("CoderTheory.Coder_grammars",
                          CoderTheory.Coder_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fixed_width", (Term.prim_mk_const { Name = "fixed_width", Thy = "EncodeVar"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fixed_width", (Term.prim_mk_const { Name = "fixed_width", Thy = "EncodeVar"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("of_length", (Term.prim_mk_const { Name = "of_length", Thy = "EncodeVar"}))
  val EncodeVar_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "EncodeVar",
    thydataty = "compute",
    data = "EncodeVar.fixed_width_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "EncodeVar"
end
