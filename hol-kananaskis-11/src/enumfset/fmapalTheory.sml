structure fmapalTheory :> fmapalTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading fmapalTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open enumeralTheory finite_mapTheory
  in end;
  val _ = Theory.link_parents
          ("fmapal",
          Arbnum.fromString "1488588117",
          Arbnum.fromString "177075")
          [("enumeral",
           Arbnum.fromString "1488588072",
           Arbnum.fromString "842514"),
           ("finite_map",
           Arbnum.fromString "1488586927",
           Arbnum.fromString "430131")];
  val _ = Theory.incorporate_types "fmapal" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("option", "option"), ID("list", "list"),
   ID("pair", "prod"), ID("finite_map", "fmap"), ID("toto", "toto"),
   ID("enumeral", "bt"), ID("min", "bool"), ID("enumeral", "bl"),
   ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"), ID("min", "="),
   ID("toto", "cpn"), ID("min", "==>"), ID("min", "@"),
   ID("list", "APPEND"), ID("fmapal", "AP_SND"), ID("pred_set", "COMPL"),
   ID("bool", "COND"), ID("list", "CONS"), ID("finite_map", "DRESTRICT"),
   ID("enumeral", "ENUMERAL"), ID("toto", "EQUAL"), ID("bool", "F"),
   ID("finite_map", "FAPPLY"), ID("finite_map", "FDOM"),
   ID("finite_map", "FEMPTY"), ID("fmapal", "FMAPAL"), ID("pair", "FST"),
   ID("finite_map", "FUNION"), ID("finite_map", "FUN_FMAP"),
   ID("finite_map", "FUPDATE"), ID("finite_map", "FUPDATE_LIST"),
   ID("toto", "GREATER"), ID("pred_set", "GSPEC"), ID("combin", "I"),
   ID("bool", "IN"), ID("option", "IS_SOME"), ID("toto", "LESS"),
   ID("enumeral", "LESS_ALL"), ID("bool", "LET"),
   ID("list", "LIST_TO_SET"), ID("list", "MAP"), ID("list", "NIL"),
   ID("option", "NONE"), ID("fmapal", "OFU"), ID("enumeral", "OL"),
   ID("fmapal", "OPTION_FLAT"), ID("fmapal", "OPTION_UPDATE"),
   ID("fmapal", "ORL"), ID("fmapal", "ORL_bt"), ID("fmapal", "ORL_bt_lb"),
   ID("fmapal", "ORL_bt_lb_tupled"), ID("fmapal", "ORL_bt_lb_ub"),
   ID("fmapal", "ORL_bt_lb_ub_tupled"), ID("fmapal", "ORL_bt_tupled"),
   ID("fmapal", "ORL_bt_ub"), ID("fmapal", "ORL_bt_ub_tupled"),
   ID("fmapal", "ORL_sublists"), ID("fmapal", "ORL_sublists_tupled"),
   ID("fmapal", "ORL_tupled"), ID("fmapal", "ORWL"), ID("enumeral", "OWL"),
   ID("list", "REVERSE"), ID("option", "SOME"), ID("bool", "T"),
   ID("option", "THE"), ID("fmapal", "UFO"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("bool", "\\/"), ID("toto", "apto"),
   ID("fmapal", "assocv"), ID("fmapal", "assocv_tupled"),
   ID("enumeral", "bl_CASE"), ID("fmapal", "bl_to_fmap"),
   ID("fmapal", "bl_to_fmap_tupled"), ID("enumeral", "bt_CASE"),
   ID("fmapal", "bt_map"), ID("fmapal", "bt_rplacv_cn"),
   ID("fmapal", "bt_rplacv_cn_tupled"), ID("fmapal", "bt_to_fmap_lb"),
   ID("fmapal", "bt_to_fmap_lb_ub"), ID("fmapal", "bt_to_fmap_tupled"),
   ID("fmapal", "bt_to_fmap_ub"), ID("enumeral", "bt_to_list_ac"),
   ID("fmapal", "bt_to_orl"), ID("fmapal", "bt_to_orl_ac"),
   ID("fmapal", "bt_to_orl_ac_tupled"), ID("fmapal", "bt_to_orl_lb"),
   ID("fmapal", "bt_to_orl_lb_ac"), ID("fmapal", "bt_to_orl_lb_ac_tupled"),
   ID("fmapal", "bt_to_orl_lb_tupled"), ID("fmapal", "bt_to_orl_lb_ub"),
   ID("fmapal", "bt_to_orl_lb_ub_ac"),
   ID("fmapal", "bt_to_orl_lb_ub_ac_tupled"),
   ID("fmapal", "bt_to_orl_lb_ub_ac_tupled_aux"),
   ID("fmapal", "bt_to_orl_lb_ub_tupled"),
   ID("fmapal", "bt_to_orl_tupled"), ID("fmapal", "bt_to_orl_ub"),
   ID("fmapal", "bt_to_orl_ub_ac"), ID("fmapal", "bt_to_orl_ub_ac_tupled"),
   ID("fmapal", "bt_to_orl_ub_tupled"), ID("toto", "cpn_CASE"),
   ID("fmapal", "diff_merge"), ID("fmapal", "diff_merge_tupled"),
   ID("fmapal", "fmap"), ID("fmapal", "incr_build"),
   ID("fmapal", "incr_flat"), ID("fmapal", "incr_merge"),
   ID("fmapal", "incr_merge_tupled"), ID("fmapal", "incr_sort"),
   ID("fmapal", "inter_merge"), ID("fmapal", "inter_merge_tupled"),
   ID("list", "list_CASE"), ID("fmapal", "list_rplacv_cn"),
   ID("fmapal", "list_rplacv_cn_tupled"), ID("enumeral", "list_to_bt"),
   ID("fmapal", "merge"), ID("fmapal", "merge_out"),
   ID("fmapal", "merge_out_tupled"), ID("fmapal", "merge_tupled"),
   ID("enumeral", "nbl"), ID("enumeral", "node"), ID("enumeral", "nt"),
   ID("combin", "o"), ID("finite_map", "o_f"), ID("enumeral", "onebl"),
   ID("option", "option_CASE"), ID("fmapal", "optry"),
   ID("fmapal", "optry_list"), ID("fmapal", "optry_list_tupled"),
   ID("pair", "pair_CASE"), ID("fmapal", "unlookup"),
   ID("fmapal", "vcossa"), ID("enumeral", "zerbl"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYOP [1, 0], TYV "'a", TYOP [3, 2, 0], TYOP [2, 3],
   TYOP [0, 4, 1], TYOP [0, 2, 5], TYOP [4, 2, 0], TYOP [0, 2, 1],
   TYOP [0, 8, 7], TYV "'g", TYOP [1, 10], TYV "'z", TYOP [1, 12],
   TYOP [2, 13], TYOP [0, 12, 11], TYOP [3, 15, 14], TYOP [0, 16, 11],
   TYOP [0, 14, 11], TYOP [0, 15, 18], TYOP [0, 13, 13], TYOP [0, 13, 20],
   TYOP [3, 4, 4], TYOP [5, 2], TYOP [3, 23, 22], TYOP [0, 24, 4],
   TYOP [1, 4], TYOP [2, 26], TYOP [3, 4, 27], TYOP [3, 23, 28],
   TYOP [0, 29, 4], TYOP [0, 27, 4], TYOP [0, 4, 31], TYOP [0, 23, 32],
   TYOP [0, 4, 4], TYOP [0, 4, 34], TYOP [0, 23, 35], TYOP [3, 4, 34],
   TYOP [3, 3, 37], TYOP [0, 38, 4], TYOP [0, 34, 4], TYOP [0, 4, 40],
   TYOP [0, 3, 41], TYOP [2, 2], TYOP [3, 4, 43], TYOP [3, 23, 44],
   TYOP [0, 45, 4], TYOP [0, 43, 4], TYOP [0, 4, 47], TYOP [0, 23, 48],
   TYOP [0, 23, 34], TYOP [0, 29, 27], TYOP [0, 27, 27], TYOP [0, 4, 52],
   TYOP [0, 23, 53], TYOP [0, 23, 31], TYOP [0, 4, 27], TYOP [0, 23, 56],
   TYOP [0, 4, 7], TYOP [6, 3], TYOP [3, 59, 2], TYOP [3, 23, 60],
   TYOP [0, 61, 4], TYOP [3, 2, 4], TYOP [3, 59, 63], TYOP [3, 23, 64],
   TYOP [0, 65, 4], TYOP [0, 2, 34], TYOP [0, 59, 67], TYOP [0, 23, 68],
   TYOP [0, 2, 4], TYOP [0, 59, 70], TYOP [0, 23, 71], TYOP [3, 23, 59],
   TYOP [0, 73, 4], TYOP [3, 2, 60], TYOP [3, 23, 75], TYOP [0, 76, 4],
   TYOP [3, 2, 64], TYOP [3, 23, 78], TYOP [0, 79, 4], TYOP [7],
   TYOP [0, 79, 81], TYOP [0, 79, 82], TYOP [0, 83, 80], TYOP [0, 2, 68],
   TYOP [0, 23, 85], TYOP [0, 2, 71], TYOP [0, 23, 87], TYOP [3, 2, 59],
   TYOP [3, 23, 89], TYOP [0, 90, 4], TYOP [3, 59, 4], TYOP [3, 2, 92],
   TYOP [3, 23, 93], TYOP [0, 94, 4], TYOP [0, 59, 34], TYOP [0, 2, 96],
   TYOP [0, 23, 97], TYOP [0, 59, 4], TYOP [0, 2, 99], TYOP [0, 23, 100],
   TYOP [3, 23, 92], TYOP [0, 102, 4], TYOP [0, 23, 96], TYOP [0, 23, 99],
   TYOP [0, 2, 7], TYOP [0, 59, 106], TYOP [0, 23, 107], TYOP [0, 73, 7],
   TYOP [0, 2, 107], TYOP [0, 23, 110], TYOP [0, 59, 7], TYOP [0, 2, 112],
   TYOP [0, 23, 113], TYOP [0, 59, 59], TYOP [3, 59, 115],
   TYOP [3, 3, 116], TYOP [3, 23, 117], TYOP [0, 118, 59],
   TYOP [0, 115, 59], TYOP [0, 59, 120], TYOP [0, 3, 121],
   TYOP [0, 23, 122], TYOP [6, 0], TYOP [6, 2], TYOP [0, 125, 124],
   TYOP [0, 2, 0], TYOP [0, 127, 126], TYOP [8, 3], TYOP [3, 23, 129],
   TYOP [0, 130, 7], TYOP [0, 129, 7], TYOP [0, 23, 132], TYOP [3, 4, 2],
   TYOP [0, 134, 1], TYOP [0, 4, 8], TYOP [0, 7, 7], TYOP [0, 7, 137],
   TYOP [0, 23, 138], TYOP [0, 4, 81], TYOP [0, 7, 140], TYOP [0, 23, 141],
   TYOP [3, 23, 4], TYOP [0, 143, 81], TYOP [3, 23, 27], TYOP [0, 145, 81],
   TYOP [0, 27, 81], TYOP [0, 23, 147], TYOP [0, 61, 81], TYOP [0, 2, 81],
   TYOP [0, 59, 150], TYOP [0, 23, 151], TYOP [0, 73, 81],
   TYOP [0, 76, 81], TYOP [0, 2, 151], TYOP [0, 23, 155], TYOP [0, 90, 81],
   TYOP [0, 59, 81], TYOP [0, 2, 158], TYOP [0, 23, 159],
   TYOP [0, 23, 158], TYOP [0, 23, 140], TYOP [0, 8, 8], TYOP [0, 8, 163],
   TYOP [2, 12], TYOP [1, 165], TYOP [2, 166], TYOP [0, 167, 165],
   TYOP [0, 23, 112], TYV "'c", TYOP [3, 2, 170], TYOP [0, 3, 171],
   TYOP [0, 0, 170], TYOP [0, 173, 172], TYOP [0, 14, 81],
   TYOP [0, 15, 175], TYOP [0, 167, 81], TYOP [0, 4, 150],
   TYOP [0, 34, 81], TYOP [0, 4, 179], TYOP [0, 3, 180], TYOP [0, 2, 140],
   TYOP [0, 59, 182], TYOP [0, 2, 183], TYOP [0, 23, 184],
   TYOP [0, 59, 140], TYOP [0, 2, 186], TYOP [0, 23, 187],
   TYOP [0, 129, 81], TYOP [0, 23, 189], TYOP [0, 23, 183],
   TYOP [0, 23, 186], TYOP [0, 43, 81], TYOP [0, 4, 193],
   TYOP [0, 23, 194], TYOP [0, 4, 147], TYOP [0, 23, 196],
   TYOP [0, 4, 140], TYOP [0, 23, 198], TYOP [0, 115, 81],
   TYOP [0, 59, 200], TYOP [0, 3, 201], TYOP [0, 23, 202],
   TYOP [0, 167, 177], TYOP [0, 16, 81], TYOP [0, 16, 205],
   TYOP [0, 134, 81], TYOP [0, 134, 207], TYOP [0, 38, 81],
   TYOP [0, 38, 209], TYOP [0, 130, 81], TYOP [0, 130, 211],
   TYOP [0, 73, 153], TYOP [0, 145, 146], TYOP [0, 143, 144],
   TYOP [0, 90, 157], TYOP [0, 76, 154], TYOP [0, 94, 81],
   TYOP [0, 94, 218], TYOP [0, 61, 149], TYOP [0, 102, 81],
   TYOP [0, 102, 221], TYOP [0, 65, 81], TYOP [0, 65, 223],
   TYOP [0, 45, 81], TYOP [0, 45, 225], TYOP [0, 29, 81],
   TYOP [0, 29, 227], TYOP [0, 24, 81], TYOP [0, 24, 229],
   TYOP [0, 118, 81], TYOP [0, 118, 231], TYOP [0, 150, 81],
   TYOP [0, 0, 81], TYOP [0, 234, 81], TYOP [0, 12, 81], TYOP [0, 236, 81],
   TYOP [0, 189, 81], TYOP [0, 125, 81], TYOP [0, 239, 81],
   TYOP [0, 158, 81], TYOP [0, 7, 81], TYOP [0, 242, 81],
   TYOP [0, 127, 81], TYOP [0, 244, 81], TYOP [0, 233, 81],
   TYOP [0, 8, 81], TYOP [0, 247, 81], TYOP [0, 173, 81],
   TYOP [0, 249, 81], TYOP [0, 15, 81], TYOP [0, 251, 81],
   TYOP [0, 200, 81], TYOP [0, 176, 81], TYOP [0, 254, 81],
   TYOP [0, 177, 81], TYOP [0, 256, 81], TYOP [0, 178, 81],
   TYOP [0, 258, 81], TYOP [0, 179, 81], TYOP [0, 181, 81],
   TYOP [0, 261, 81], TYOP [0, 83, 81], TYOP [0, 263, 81],
   TYOP [0, 160, 81], TYOP [0, 265, 81], TYOP [0, 156, 81],
   TYOP [0, 267, 81], TYOP [0, 185, 81], TYOP [0, 269, 81],
   TYOP [0, 188, 81], TYOP [0, 271, 81], TYOP [0, 190, 81],
   TYOP [0, 273, 81], TYOP [0, 161, 81], TYOP [0, 275, 81],
   TYOP [0, 152, 81], TYOP [0, 277, 81], TYOP [0, 191, 81],
   TYOP [0, 279, 81], TYOP [0, 192, 81], TYOP [0, 281, 81],
   TYOP [0, 148, 81], TYOP [0, 283, 81], TYOP [0, 162, 81],
   TYOP [0, 285, 81], TYOP [0, 195, 81], TYOP [0, 287, 81],
   TYOP [0, 197, 81], TYOP [0, 289, 81], TYOP [0, 199, 81],
   TYOP [0, 291, 81], TYOP [0, 203, 81], TYOP [0, 293, 81],
   TYOP [0, 193, 81], TYOP [0, 165, 81], TYOP [0, 296, 81],
   TYOP [0, 175, 81], TYOP [0, 147, 81], TYOP [0, 140, 81],
   TYOP [0, 13, 81], TYOP [0, 301, 81], TYOP [0, 3, 81], TYOP [0, 303, 81],
   TYOP [0, 23, 81], TYOP [0, 305, 81], TYOP [0, 0, 3], TYOP [0, 2, 307],
   TYOP [0, 170, 171], TYOP [0, 2, 309], TYOP [3, 2, 81],
   TYOP [0, 81, 311], TYOP [0, 2, 312], TYOP [0, 59, 89], TYOP [0, 2, 314],
   TYOP [0, 4, 63], TYOP [0, 2, 316], TYOP [0, 60, 75], TYOP [0, 2, 318],
   TYOP [0, 92, 93], TYOP [0, 2, 320], TYOP [0, 64, 78], TYOP [0, 2, 322],
   TYOP [0, 2, 60], TYOP [0, 59, 324], TYOP [0, 115, 116],
   TYOP [0, 59, 326], TYOP [0, 4, 92], TYOP [0, 59, 328], TYOP [0, 63, 64],
   TYOP [0, 59, 330], TYOP [0, 14, 16], TYOP [0, 15, 332],
   TYOP [0, 2, 134], TYOP [0, 4, 334], TYOP [0, 34, 37], TYOP [0, 4, 336],
   TYOP [0, 43, 44], TYOP [0, 4, 338], TYOP [0, 27, 28], TYOP [0, 4, 340],
   TYOP [0, 4, 22], TYOP [0, 4, 342], TYOP [0, 116, 117], TYOP [0, 3, 344],
   TYOP [0, 37, 38], TYOP [0, 3, 346], TYOP [0, 129, 130],
   TYOP [0, 23, 348], TYOP [0, 59, 73], TYOP [0, 23, 350],
   TYOP [0, 27, 145], TYOP [0, 23, 352], TYOP [0, 4, 143],
   TYOP [0, 23, 354], TYOP [0, 89, 90], TYOP [0, 23, 356],
   TYOP [0, 75, 76], TYOP [0, 23, 358], TYOP [0, 93, 94],
   TYOP [0, 23, 360], TYOP [0, 78, 79], TYOP [0, 23, 362],
   TYOP [0, 60, 61], TYOP [0, 23, 364], TYOP [0, 92, 102],
   TYOP [0, 23, 366], TYOP [0, 64, 65], TYOP [0, 23, 368],
   TYOP [0, 44, 45], TYOP [0, 23, 370], TYOP [0, 28, 29],
   TYOP [0, 23, 372], TYOP [0, 22, 24], TYOP [0, 23, 374],
   TYOP [0, 117, 118], TYOP [0, 23, 376], TYOP [0, 81, 81],
   TYOP [0, 81, 378], TYOP [0, 2, 150], TYOP [0, 0, 234],
   TYOP [0, 124, 81], TYOP [0, 124, 382], TYOP [0, 59, 158], TYOP [13],
   TYOP [0, 385, 81], TYOP [0, 385, 386], TYOP [0, 7, 242],
   TYOP [4, 2, 170], TYOP [0, 389, 81], TYOP [0, 389, 390],
   TYOP [0, 150, 233], TYOP [0, 168, 81], TYOP [0, 168, 393],
   TYOP [0, 17, 81], TYOP [0, 17, 395], TYOP [0, 135, 81],
   TYOP [0, 135, 397], TYOP [0, 39, 81], TYOP [0, 39, 399],
   TYOP [0, 131, 81], TYOP [0, 131, 401], TYOP [0, 153, 81],
   TYOP [0, 153, 403], TYOP [0, 109, 81], TYOP [0, 109, 405],
   TYOP [0, 74, 81], TYOP [0, 74, 407], TYOP [0, 146, 81],
   TYOP [0, 146, 409], TYOP [0, 144, 81], TYOP [0, 144, 411],
   TYOP [0, 157, 81], TYOP [0, 157, 413], TYOP [0, 91, 81],
   TYOP [0, 91, 415], TYOP [0, 154, 81], TYOP [0, 154, 417],
   TYOP [0, 77, 81], TYOP [0, 77, 419], TYOP [0, 95, 81],
   TYOP [0, 95, 421], TYOP [0, 80, 81], TYOP [0, 80, 423],
   TYOP [0, 149, 81], TYOP [0, 149, 425], TYOP [0, 62, 81],
   TYOP [0, 62, 427], TYOP [0, 103, 81], TYOP [0, 103, 429],
   TYOP [0, 66, 81], TYOP [0, 66, 431], TYOP [0, 46, 81],
   TYOP [0, 46, 433], TYOP [0, 51, 81], TYOP [0, 51, 435],
   TYOP [0, 30, 81], TYOP [0, 30, 437], TYOP [0, 25, 81],
   TYOP [0, 25, 439], TYOP [0, 119, 81], TYOP [0, 119, 441],
   TYOP [0, 165, 296], TYOP [0, 27, 147], TYOP [0, 1, 81],
   TYOP [0, 1, 445], TYOP [0, 11, 81], TYOP [0, 11, 447],
   TYOP [0, 13, 301], TYOP [0, 171, 81], TYOP [0, 171, 450],
   TYOP [0, 204, 81], TYOP [0, 452, 204], TYOP [0, 206, 81],
   TYOP [0, 454, 206], TYOP [0, 208, 81], TYOP [0, 456, 208],
   TYOP [0, 210, 81], TYOP [0, 458, 210], TYOP [0, 212, 81],
   TYOP [0, 460, 212], TYOP [0, 213, 81], TYOP [0, 462, 213],
   TYOP [0, 214, 81], TYOP [0, 464, 214], TYOP [0, 215, 81],
   TYOP [0, 466, 215], TYOP [0, 216, 81], TYOP [0, 468, 216],
   TYOP [0, 217, 81], TYOP [0, 470, 217], TYOP [0, 219, 81],
   TYOP [0, 472, 219], TYOP [0, 263, 83], TYOP [0, 220, 81],
   TYOP [0, 475, 220], TYOP [0, 222, 81], TYOP [0, 477, 222],
   TYOP [0, 224, 81], TYOP [0, 479, 224], TYOP [0, 226, 81],
   TYOP [0, 481, 226], TYOP [0, 228, 81], TYOP [0, 483, 228],
   TYOP [0, 230, 81], TYOP [0, 485, 230], TYOP [0, 232, 81],
   TYOP [0, 487, 232], TYOP [0, 165, 165], TYOP [0, 165, 489],
   TYOP [0, 150, 150], TYOP [0, 0, 0], TYOP [0, 0, 492], TYOP [0, 81, 493],
   TYOP [0, 81, 379], TYOP [0, 81, 35], TYOP [0, 1, 1], TYOP [0, 1, 497],
   TYOP [0, 81, 498], TYOP [0, 43, 43], TYOP [0, 2, 500], TYOP [0, 14, 14],
   TYOP [0, 13, 502], TYOP [0, 167, 167], TYOP [0, 166, 504],
   TYOP [0, 26, 52], TYOP [0, 3, 34], TYOP [0, 150, 7], TYOP [0, 7, 508],
   TYOP [0, 125, 150], TYOP [0, 23, 510], TYOP [0, 7, 127],
   TYOP [0, 7, 150], TYOP [6, 171], TYOP [0, 514, 389], TYOP [0, 23, 515],
   TYOP [0, 3, 2], TYOP [0, 127, 508], TYOP [0, 3, 7], TYOP [0, 7, 519],
   TYOP [0, 7, 58], TYOP [0, 2, 311], TYOP [0, 522, 150], TYOP [0, 11, 11],
   TYOP [0, 2, 233], TYOP [0, 3, 304], TYOP [0, 23, 525],
   TYOP [0, 158, 158], TYOP [0, 140, 140], TYOP [0, 43, 150],
   TYOP [0, 4, 303], TYOP [0, 2, 3], TYOP [0, 532, 47], TYOP [0, 4, 43],
   TYOP [0, 517, 534], TYOP [2, 171], TYOP [0, 4, 536], TYOP [0, 172, 537],
   TYOP [0, 23, 193], TYOP [0, 150, 193], TYOP [0, 23, 540],
   TYOP [0, 0, 1], TYOP [0, 12, 13], TYOP [0, 165, 166], TYOP [0, 4, 26],
   TYOP [0, 1, 0], TYOP [0, 168, 168], TYOP [0, 547, 168],
   TYOP [0, 204, 548], TYOP [0, 17, 17], TYOP [0, 550, 17],
   TYOP [0, 206, 551], TYOP [0, 135, 135], TYOP [0, 553, 135],
   TYOP [0, 208, 554], TYOP [0, 39, 39], TYOP [0, 556, 39],
   TYOP [0, 210, 557], TYOP [0, 131, 131], TYOP [0, 559, 131],
   TYOP [0, 212, 560], TYOP [0, 153, 153], TYOP [0, 562, 153],
   TYOP [0, 213, 563], TYOP [0, 109, 109], TYOP [0, 565, 109],
   TYOP [0, 213, 566], TYOP [0, 74, 74], TYOP [0, 568, 74],
   TYOP [0, 213, 569], TYOP [0, 146, 146], TYOP [0, 571, 146],
   TYOP [0, 214, 572], TYOP [0, 144, 144], TYOP [0, 574, 144],
   TYOP [0, 215, 575], TYOP [0, 157, 157], TYOP [0, 577, 157],
   TYOP [0, 216, 578], TYOP [0, 91, 91], TYOP [0, 580, 91],
   TYOP [0, 216, 581], TYOP [0, 154, 154], TYOP [0, 583, 154],
   TYOP [0, 217, 584], TYOP [0, 77, 77], TYOP [0, 586, 77],
   TYOP [0, 217, 587], TYOP [0, 95, 95], TYOP [0, 589, 95],
   TYOP [0, 219, 590], TYOP [0, 80, 80], TYOP [0, 592, 80],
   TYOP [0, 83, 593], TYOP [0, 149, 149], TYOP [0, 595, 149],
   TYOP [0, 220, 596], TYOP [0, 62, 62], TYOP [0, 598, 62],
   TYOP [0, 220, 599], TYOP [0, 103, 103], TYOP [0, 601, 103],
   TYOP [0, 222, 602], TYOP [0, 66, 66], TYOP [0, 604, 66],
   TYOP [0, 224, 605], TYOP [0, 46, 46], TYOP [0, 607, 46],
   TYOP [0, 226, 608], TYOP [0, 51, 51], TYOP [0, 610, 51],
   TYOP [0, 228, 611], TYOP [0, 30, 30], TYOP [0, 613, 30],
   TYOP [0, 228, 614], TYOP [0, 25, 25], TYOP [0, 616, 25],
   TYOP [0, 230, 617], TYOP [0, 119, 119], TYOP [0, 619, 119],
   TYOP [0, 232, 620], TYOP [0, 2, 385], TYOP [0, 2, 622],
   TYOP [0, 23, 623], TYOP [0, 59, 132], TYOP [0, 3, 625],
   TYOP [0, 626, 7], TYOP [0, 132, 627], TYOP [0, 7, 628],
   TYOP [0, 129, 629], TYOP [0, 3, 158], TYOP [0, 59, 631],
   TYOP [0, 632, 81], TYOP [0, 81, 633], TYOP [0, 59, 634],
   TYOP [0, 3, 115], TYOP [0, 59, 636], TYOP [0, 637, 59],
   TYOP [0, 59, 638], TYOP [0, 59, 639], TYOP [0, 3, 112],
   TYOP [0, 59, 641], TYOP [0, 642, 7], TYOP [0, 7, 643],
   TYOP [0, 59, 644], TYOP [0, 3, 99], TYOP [0, 59, 646], TYOP [0, 647, 4],
   TYOP [0, 4, 648], TYOP [0, 59, 649], TYOP [0, 59, 125],
   TYOP [0, 517, 651], TYOP [0, 59, 514], TYOP [0, 172, 653],
   TYOP [0, 0, 493], TYOP [0, 385, 655], TYOP [0, 385, 495],
   TYOP [0, 59, 115], TYOP [0, 59, 658], TYOP [0, 385, 659],
   TYOP [0, 4, 35], TYOP [0, 385, 661], TYOP [0, 536, 389],
   TYOP [0, 2, 47], TYOP [0, 664, 4], TYOP [0, 4, 665], TYOP [0, 43, 666],
   TYOP [0, 13, 18], TYOP [0, 668, 11], TYOP [0, 11, 669],
   TYOP [0, 14, 670], TYOP [0, 166, 168], TYOP [0, 672, 165],
   TYOP [0, 165, 673], TYOP [0, 167, 674], TYOP [0, 26, 147],
   TYOP [0, 676, 81], TYOP [0, 81, 677], TYOP [0, 27, 678],
   TYOP [0, 506, 27], TYOP [0, 27, 680], TYOP [0, 27, 681],
   TYOP [0, 26, 31], TYOP [0, 683, 4], TYOP [0, 4, 684], TYOP [0, 27, 685],
   TYOP [0, 3, 140], TYOP [0, 687, 81], TYOP [0, 81, 688],
   TYOP [0, 4, 689], TYOP [0, 507, 4], TYOP [0, 4, 691], TYOP [0, 4, 692],
   TYOP [0, 3, 5], TYOP [0, 694, 1], TYOP [0, 1, 695], TYOP [0, 4, 696],
   TYOP [0, 4, 59], TYOP [0, 125, 125], TYOP [0, 2, 699],
   TYOP [0, 125, 700], TYOP [0, 124, 124], TYOP [0, 0, 702],
   TYOP [0, 124, 703], TYOP [0, 8, 127], TYOP [0, 546, 705],
   TYOP [0, 8, 150], TYOP [0, 445, 707], TYOP [0, 7, 389],
   TYOP [0, 173, 709], TYOP [0, 129, 129], TYOP [0, 59, 711],
   TYOP [0, 3, 712], TYOP [0, 15, 11], TYOP [0, 11, 714],
   TYOP [0, 13, 715], TYOP [0, 489, 165], TYOP [0, 165, 717],
   TYOP [0, 166, 718], TYOP [0, 81, 300], TYOP [0, 26, 720],
   TYOP [0, 56, 27], TYOP [0, 27, 722], TYOP [0, 26, 723],
   TYOP [0, 26, 41], TYOP [0, 11, 524], TYOP [0, 2, 234],
   TYOP [0, 727, 81], TYOP [0, 3, 728], TYOP [0, 0, 59], TYOP [0, 2, 730],
   TYOP [0, 731, 59], TYOP [0, 3, 732], TYOP [0, 0, 7], TYOP [0, 2, 734],
   TYOP [0, 735, 7], TYOP [0, 3, 736], TYOP [0, 0, 4], TYOP [0, 2, 738],
   TYOP [0, 739, 4], TYOP [0, 3, 740], TYOP [0, 2, 542], TYOP [0, 742, 1],
   TYOP [0, 3, 743], TYOP [0, 159, 81], TYOP [0, 89, 745],
   TYOP [0, 100, 4], TYOP [0, 89, 747], TYOP [0, 67, 4], TYOP [0, 63, 749],
   TYOP [0, 60, 81], TYOP [0, 2, 751], TYOP [0, 752, 81],
   TYOP [0, 75, 753], TYOP [0, 60, 4], TYOP [0, 2, 755], TYOP [0, 756, 4],
   TYOP [0, 75, 757], TYOP [0, 92, 4], TYOP [0, 2, 759], TYOP [0, 760, 4],
   TYOP [0, 93, 761], TYOP [0, 64, 4], TYOP [0, 2, 763], TYOP [0, 764, 4],
   TYOP [0, 78, 765], TYOP [0, 151, 81], TYOP [0, 60, 767],
   TYOP [0, 71, 4], TYOP [0, 60, 769], TYOP [0, 121, 59],
   TYOP [0, 116, 771], TYOP [0, 96, 4], TYOP [0, 92, 773], TYOP [0, 63, 4],
   TYOP [0, 59, 775], TYOP [0, 776, 4], TYOP [0, 64, 777],
   TYOP [0, 19, 11], TYOP [0, 16, 779], TYOP [0, 136, 1],
   TYOP [0, 134, 781], TYOP [0, 41, 4], TYOP [0, 37, 783], TYOP [0, 48, 4],
   TYOP [0, 44, 785], TYOP [0, 53, 27], TYOP [0, 28, 787], TYOP [0, 32, 4],
   TYOP [0, 28, 789], TYOP [0, 35, 4], TYOP [0, 22, 791],
   TYOP [0, 116, 59], TYOP [0, 3, 793], TYOP [0, 794, 59],
   TYOP [0, 117, 795], TYOP [0, 37, 4], TYOP [0, 3, 797], TYOP [0, 798, 4],
   TYOP [0, 38, 799], TYOP [0, 133, 7], TYOP [0, 130, 801],
   TYOP [0, 73, 275], TYOP [0, 169, 7], TYOP [0, 73, 804],
   TYOP [0, 105, 4], TYOP [0, 73, 806], TYOP [0, 145, 283],
   TYOP [0, 143, 285], TYOP [0, 89, 81], TYOP [0, 23, 810],
   TYOP [0, 811, 81], TYOP [0, 90, 812], TYOP [0, 89, 4],
   TYOP [0, 23, 814], TYOP [0, 815, 4], TYOP [0, 90, 816],
   TYOP [0, 75, 81], TYOP [0, 23, 818], TYOP [0, 819, 81],
   TYOP [0, 76, 820], TYOP [0, 75, 4], TYOP [0, 23, 822], TYOP [0, 823, 4],
   TYOP [0, 76, 824], TYOP [0, 93, 4], TYOP [0, 23, 826], TYOP [0, 827, 4],
   TYOP [0, 94, 828], TYOP [0, 78, 4], TYOP [0, 23, 830], TYOP [0, 831, 4],
   TYOP [0, 79, 832], TYOP [0, 23, 751], TYOP [0, 834, 81],
   TYOP [0, 61, 835], TYOP [0, 23, 755], TYOP [0, 837, 4],
   TYOP [0, 61, 838], TYOP [0, 23, 759], TYOP [0, 840, 4],
   TYOP [0, 102, 841], TYOP [0, 23, 763], TYOP [0, 843, 4],
   TYOP [0, 65, 844], TYOP [0, 44, 4], TYOP [0, 23, 846], TYOP [0, 847, 4],
   TYOP [0, 45, 848], TYOP [0, 28, 27], TYOP [0, 23, 850],
   TYOP [0, 851, 27], TYOP [0, 29, 852], TYOP [0, 28, 4],
   TYOP [0, 23, 854], TYOP [0, 855, 4], TYOP [0, 29, 856], TYOP [0, 22, 4],
   TYOP [0, 23, 858], TYOP [0, 859, 4], TYOP [0, 24, 860],
   TYOP [0, 117, 59], TYOP [0, 23, 862], TYOP [0, 863, 59],
   TYOP [0, 118, 864]]
  end
  val _ = Theory.incorporate_consts "fmapal" tyvector
     [("vcossa", 6), ("unlookup", 9), ("optry_list_tupled", 17),
      ("optry_list", 19), ("optry", 21), ("merge_tupled", 25),
      ("merge_out_tupled", 30), ("merge_out", 33), ("merge", 36),
      ("list_rplacv_cn_tupled", 39), ("list_rplacv_cn", 42),
      ("inter_merge_tupled", 46), ("inter_merge", 49), ("incr_sort", 50),
      ("incr_merge_tupled", 51), ("incr_merge", 54), ("incr_flat", 55),
      ("incr_build", 57), ("fmap", 58), ("diff_merge_tupled", 46),
      ("diff_merge", 49), ("bt_to_orl_ub_tupled", 62),
      ("bt_to_orl_ub_ac_tupled", 66), ("bt_to_orl_ub_ac", 69),
      ("bt_to_orl_ub", 72), ("bt_to_orl_tupled", 74),
      ("bt_to_orl_lb_ub_tupled", 77),
      ("bt_to_orl_lb_ub_ac_tupled_aux", 84),
      ("bt_to_orl_lb_ub_ac_tupled", 80), ("bt_to_orl_lb_ub_ac", 86),
      ("bt_to_orl_lb_ub", 88), ("bt_to_orl_lb_tupled", 91),
      ("bt_to_orl_lb_ac_tupled", 95), ("bt_to_orl_lb_ac", 98),
      ("bt_to_orl_lb", 101), ("bt_to_orl_ac_tupled", 103),
      ("bt_to_orl_ac", 104), ("bt_to_orl", 105), ("bt_to_fmap_ub", 108),
      ("bt_to_fmap_tupled", 109), ("bt_to_fmap_lb_ub", 111),
      ("bt_to_fmap_lb", 114), ("bt_rplacv_cn_tupled", 119),
      ("bt_rplacv_cn", 123), ("bt_map", 128), ("bl_to_fmap_tupled", 131),
      ("bl_to_fmap", 133), ("assocv_tupled", 135), ("assocv", 136),
      ("UFO", 139), ("ORWL", 142), ("ORL_tupled", 144),
      ("ORL_sublists_tupled", 146), ("ORL_sublists", 148),
      ("ORL_bt_ub_tupled", 149), ("ORL_bt_ub", 152),
      ("ORL_bt_tupled", 153), ("ORL_bt_lb_ub_tupled", 154),
      ("ORL_bt_lb_ub", 156), ("ORL_bt_lb_tupled", 157), ("ORL_bt_lb", 160),
      ("ORL_bt", 161), ("ORL", 162), ("OPTION_UPDATE", 164),
      ("OPTION_FLAT", 168), ("OFU", 139), ("FMAPAL", 169),
      ("AP_SND", 174)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("OPTION_FLAT", 168), TMV("ORL_bt_lb_tupled", 157),
   TMV("ORL_bt_lb_ub_tupled", 154), TMV("ORL_bt_tupled", 153),
   TMV("ORL_bt_ub_tupled", 149), TMV("ORL_sublists_tupled", 146),
   TMV("ORL_tupled", 144), TMV("P", 176), TMV("P", 177), TMV("P", 178),
   TMV("P", 181), TMV("P", 160), TMV("P", 156), TMV("P", 185),
   TMV("P", 188), TMV("P", 190), TMV("P", 161), TMV("P", 152),
   TMV("P", 191), TMV("P", 192), TMV("P", 148), TMV("P", 162),
   TMV("P", 195), TMV("P", 197), TMV("P", 199), TMV("P", 203),
   TMV("R", 204), TMV("R", 206), TMV("R", 208), TMV("R", 210),
   TMV("R", 212), TMV("R", 213), TMV("R", 214), TMV("R", 215),
   TMV("R", 216), TMV("R", 217), TMV("R", 219), TMV("R", 83),
   TMV("R", 220), TMV("R", 222), TMV("R", 224), TMV("R", 226),
   TMV("R", 228), TMV("R", 230), TMV("R", 232), TMV("a", 2), TMV("a", 165),
   TMV("a", 16), TMV("a", 38), TMV("a", 130), TMV("a", 73), TMV("a", 145),
   TMV("a", 90), TMV("a", 76), TMV("a", 94), TMV("a", 79), TMV("a", 61),
   TMV("a", 102), TMV("a", 65), TMV("a", 29), TMV("a", 24), TMV("a", 118),
   TMV("a'", 167), TMV("a'", 134), TMV("a'", 143), TMV("a'", 45),
   TMV("a1", 2), TMV("a2", 2), TMV("ab", 3), TMV("ans", 59), TMV("ans", 4),
   TMV("assocv_tupled", 135), TMV("b", 0), TMV("b", 129), TMV("b'", 129),
   TMV("b1", 0), TMV("b2", 0), TMV("bl_to_fmap_tupled", 131),
   TMV("bt_rplacv_cn_tupled", 119), TMV("bt_to_fmap_tupled", 109),
   TMV("bt_to_orl_ac_tupled", 103), TMV("bt_to_orl_lb_ac_tupled", 95),
   TMV("bt_to_orl_lb_tupled", 91), TMV("bt_to_orl_lb_ub_ac_tupled", 80),
   TMV("bt_to_orl_lb_ub_tupled", 77), TMV("bt_to_orl_tupled", 74),
   TMV("bt_to_orl_ub_ac_tupled", 66), TMV("bt_to_orl_ub_tupled", 62),
   TMV("cmp", 23), TMV("cn", 115), TMV("cn", 34),
   TMV("diff_merge_tupled", 46), TMV("f", 7), TMV("f", 127), TMV("f", 8),
   TMV("f", 173), TMV("f", 15), TMV("g", 7), TMV("g", 8),
   TMV("incr_merge_tupled", 51), TMV("inter_merge_tupled", 46),
   TMV("l", 125), TMV("l", 59), TMV("l", 43), TMV("l", 14), TMV("l", 167),
   TMV("l", 4), TMV("l1", 4), TMV("l2", 4), TMV("lb", 2),
   TMV("list_rplacv_cn_tupled", 39), TMV("lol", 27), TMV("m", 59),
   TMV("m", 43), TMV("m", 4), TMV("merge_out_tupled", 30),
   TMV("merge_tupled", 25), TMV("optry_list_tupled", 17), TMV("p", 2),
   TMV("p", 12), TMV("q", 0), TMV("q", 13), TMV("r", 125), TMV("r", 59),
   TMV("s", 7), TMV("t", 59), TMV("t", 7), TMV("t", 150), TMV("ub", 2),
   TMV("v", 2), TMV("v", 0), TMV("v", 15), TMV("v", 167), TMV("v", 4),
   TMV("v", 166), TMV("v", 3), TMV("v", 23), TMV("v1", 2), TMV("v1", 0),
   TMV("v1", 129), TMV("v1", 59), TMV("v1", 14), TMV("v1", 27),
   TMV("v1", 4), TMV("v1", 89), TMV("v1", 75), TMV("v1", 93),
   TMV("v1", 78), TMV("v1", 60), TMV("v1", 92), TMV("v1", 64),
   TMV("v1", 37), TMV("v1", 44), TMV("v1", 28), TMV("v1", 22),
   TMV("v1", 117), TMV("v2", 2), TMV("v2", 0), TMV("v2", 59),
   TMV("v2", 43), TMV("v2", 27), TMV("v2", 4), TMV("v2", 13),
   TMV("v2", 26), TMV("v2", 3), TMV("v3", 2), TMV("v3", 59), TMV("v3", 34),
   TMV("v3", 43), TMV("v3", 27), TMV("v3", 4), TMV("v3", 3), TMV("v3", 63),
   TMV("v3", 60), TMV("v3", 116), TMV("v3", 92), TMV("v3", 64),
   TMV("v4", 59), TMV("v4", 115), TMV("v4", 4), TMV("v4", 26),
   TMV("v4", 3), TMV("v5", 4), TMV("v5", 3), TMV("v5", 63), TMV("v6", 59),
   TMV("v6", 3), TMV("v7", 3), TMV("v8", 3), TMV("v9", 3), TMV("w", 2),
   TMV("x", 2), TMV("x", 15), TMV("x", 4), TMV("x", 3), TMV("x", 23),
   TMV("x1", 2), TMV("x1", 129), TMV("x1", 59), TMV("x1", 14),
   TMV("x1", 27), TMV("x1", 4), TMV("x1", 3), TMV("x2", 2), TMV("x2", 59),
   TMV("x2", 34), TMV("x2", 43), TMV("x2", 27), TMV("x2", 4), TMV("x3", 2),
   TMV("x3", 115), TMV("x3", 4), TMV("x4", 4), TMV("y", 2), TMV("y", 0),
   TMV("z", 2), TMV("z", 0), TMV("z", 12), TMC(9, 233), TMC(9, 235),
   TMC(9, 237), TMC(9, 238), TMC(9, 240), TMC(9, 241), TMC(9, 243),
   TMC(9, 245), TMC(9, 246), TMC(9, 248), TMC(9, 250), TMC(9, 252),
   TMC(9, 253), TMC(9, 255), TMC(9, 257), TMC(9, 259), TMC(9, 260),
   TMC(9, 262), TMC(9, 264), TMC(9, 266), TMC(9, 268), TMC(9, 270),
   TMC(9, 272), TMC(9, 274), TMC(9, 276), TMC(9, 278), TMC(9, 280),
   TMC(9, 282), TMC(9, 284), TMC(9, 286), TMC(9, 288), TMC(9, 290),
   TMC(9, 292), TMC(9, 294), TMC(9, 295), TMC(9, 297), TMC(9, 298),
   TMC(9, 256), TMC(9, 299), TMC(9, 300), TMC(9, 302), TMC(9, 304),
   TMC(9, 306), TMC(10, 308), TMC(10, 310), TMC(10, 313), TMC(10, 315),
   TMC(10, 317), TMC(10, 319), TMC(10, 321), TMC(10, 323), TMC(10, 325),
   TMC(10, 327), TMC(10, 329), TMC(10, 331), TMC(10, 333), TMC(10, 335),
   TMC(10, 337), TMC(10, 339), TMC(10, 341), TMC(10, 343), TMC(10, 345),
   TMC(10, 347), TMC(10, 349), TMC(10, 351), TMC(10, 353), TMC(10, 355),
   TMC(10, 357), TMC(10, 359), TMC(10, 361), TMC(10, 363), TMC(10, 365),
   TMC(10, 367), TMC(10, 369), TMC(10, 371), TMC(10, 373), TMC(10, 375),
   TMC(10, 377), TMC(11, 379), TMC(12, 380), TMC(12, 381), TMC(12, 379),
   TMC(12, 383), TMC(12, 384), TMC(12, 387), TMC(12, 388), TMC(12, 391),
   TMC(12, 392), TMC(12, 394), TMC(12, 396), TMC(12, 398), TMC(12, 400),
   TMC(12, 402), TMC(12, 404), TMC(12, 406), TMC(12, 408), TMC(12, 410),
   TMC(12, 412), TMC(12, 414), TMC(12, 416), TMC(12, 418), TMC(12, 420),
   TMC(12, 422), TMC(12, 424), TMC(12, 426), TMC(12, 428), TMC(12, 430),
   TMC(12, 432), TMC(12, 434), TMC(12, 436), TMC(12, 438), TMC(12, 440),
   TMC(12, 442), TMC(12, 443), TMC(12, 444), TMC(12, 198), TMC(12, 446),
   TMC(12, 448), TMC(12, 449), TMC(12, 451), TMC(14, 379), TMC(15, 453),
   TMC(15, 455), TMC(15, 457), TMC(15, 459), TMC(15, 461), TMC(15, 463),
   TMC(15, 465), TMC(15, 467), TMC(15, 469), TMC(15, 471), TMC(15, 473),
   TMC(15, 474), TMC(15, 476), TMC(15, 478), TMC(15, 480), TMC(15, 482),
   TMC(15, 484), TMC(15, 486), TMC(15, 488), TMC(16, 490), TMC(16, 35),
   TMC(17, 174), TMC(18, 491), TMC(19, 494), TMC(19, 495), TMC(19, 496),
   TMC(19, 499), TMC(20, 501), TMC(20, 503), TMC(20, 505), TMC(20, 506),
   TMC(20, 507), TMC(21, 509), TMC(22, 511), TMC(23, 385), TMC(24, 81),
   TMC(25, 512), TMC(26, 513), TMC(27, 7), TMC(28, 169), TMC(28, 516),
   TMC(29, 517), TMC(30, 138), TMC(31, 518), TMC(32, 520), TMC(33, 521),
   TMC(34, 385), TMC(35, 523), TMC(36, 378), TMC(36, 115), TMC(36, 137),
   TMC(36, 489), TMC(36, 52), TMC(36, 34), TMC(36, 497), TMC(36, 524),
   TMC(37, 525), TMC(37, 526), TMC(38, 445), TMC(39, 385), TMC(40, 527),
   TMC(41, 528), TMC(41, 529), TMC(42, 530), TMC(42, 531), TMC(43, 533),
   TMC(43, 535), TMC(43, 538), TMC(44, 43), TMC(44, 165), TMC(44, 14),
   TMC(44, 167), TMC(44, 27), TMC(44, 4), TMC(45, 1), TMC(45, 11),
   TMC(45, 13), TMC(45, 166), TMC(45, 26), TMC(46, 139), TMC(47, 539),
   TMC(48, 168), TMC(49, 164), TMC(50, 162), TMC(51, 161), TMC(52, 160),
   TMC(53, 157), TMC(54, 156), TMC(55, 154), TMC(56, 153), TMC(57, 152),
   TMC(58, 149), TMC(59, 148), TMC(60, 146), TMC(61, 144), TMC(62, 142),
   TMC(63, 541), TMC(64, 34), TMC(65, 542), TMC(65, 543), TMC(65, 544),
   TMC(65, 545), TMC(66, 81), TMC(67, 546), TMC(68, 139), TMC(69, 452),
   TMC(69, 454), TMC(69, 456), TMC(69, 458), TMC(69, 460), TMC(69, 462),
   TMC(69, 464), TMC(69, 466), TMC(69, 468), TMC(69, 470), TMC(69, 472),
   TMC(69, 263), TMC(69, 475), TMC(69, 477), TMC(69, 479), TMC(69, 481),
   TMC(69, 483), TMC(69, 485), TMC(69, 487), TMC(70, 549), TMC(70, 552),
   TMC(70, 555), TMC(70, 558), TMC(70, 561), TMC(70, 564), TMC(70, 567),
   TMC(70, 570), TMC(70, 573), TMC(70, 576), TMC(70, 579), TMC(70, 582),
   TMC(70, 585), TMC(70, 588), TMC(70, 591), TMC(70, 594), TMC(70, 597),
   TMC(70, 600), TMC(70, 603), TMC(70, 606), TMC(70, 609), TMC(70, 612),
   TMC(70, 615), TMC(70, 618), TMC(70, 621), TMC(71, 379), TMC(72, 624),
   TMC(73, 136), TMC(74, 135), TMC(75, 630), TMC(76, 133), TMC(77, 131),
   TMC(78, 635), TMC(78, 640), TMC(78, 645), TMC(78, 650), TMC(79, 128),
   TMC(79, 652), TMC(79, 654), TMC(80, 123), TMC(81, 119), TMC(82, 114),
   TMC(83, 111), TMC(84, 109), TMC(85, 108), TMC(86, 96), TMC(87, 105),
   TMC(88, 104), TMC(89, 103), TMC(90, 101), TMC(91, 98), TMC(92, 95),
   TMC(93, 91), TMC(94, 88), TMC(95, 86), TMC(96, 80), TMC(97, 84),
   TMC(98, 77), TMC(99, 74), TMC(100, 72), TMC(101, 69), TMC(102, 66),
   TMC(103, 62), TMC(104, 656), TMC(104, 657), TMC(104, 660),
   TMC(104, 662), TMC(105, 49), TMC(106, 46), TMC(107, 58), TMC(107, 663),
   TMC(108, 57), TMC(109, 55), TMC(110, 54), TMC(111, 51), TMC(112, 50),
   TMC(113, 49), TMC(114, 46), TMC(115, 667), TMC(115, 671), TMC(115, 675),
   TMC(115, 679), TMC(115, 682), TMC(115, 686), TMC(115, 690),
   TMC(115, 693), TMC(115, 697), TMC(116, 42), TMC(117, 39), TMC(118, 698),
   TMC(119, 36), TMC(120, 33), TMC(121, 30), TMC(122, 25), TMC(123, 129),
   TMC(124, 701), TMC(124, 704), TMC(124, 637), TMC(125, 125),
   TMC(125, 124), TMC(125, 59), TMC(126, 706), TMC(126, 708),
   TMC(127, 710), TMC(128, 713), TMC(129, 716), TMC(129, 719),
   TMC(129, 721), TMC(129, 724), TMC(129, 725), TMC(130, 498),
   TMC(130, 726), TMC(130, 21), TMC(131, 19), TMC(132, 17), TMC(133, 729),
   TMC(133, 733), TMC(133, 737), TMC(133, 741), TMC(133, 744),
   TMC(133, 746), TMC(133, 748), TMC(133, 750), TMC(133, 754),
   TMC(133, 758), TMC(133, 762), TMC(133, 766), TMC(133, 768),
   TMC(133, 770), TMC(133, 772), TMC(133, 774), TMC(133, 778),
   TMC(133, 780), TMC(133, 782), TMC(133, 784), TMC(133, 786),
   TMC(133, 788), TMC(133, 790), TMC(133, 792), TMC(133, 796),
   TMC(133, 800), TMC(133, 802), TMC(133, 803), TMC(133, 805),
   TMC(133, 807), TMC(133, 808), TMC(133, 809), TMC(133, 813),
   TMC(133, 817), TMC(133, 821), TMC(133, 825), TMC(133, 829),
   TMC(133, 833), TMC(133, 836), TMC(133, 839), TMC(133, 842),
   TMC(133, 845), TMC(133, 849), TMC(133, 853), TMC(133, 857),
   TMC(133, 861), TMC(133, 865), TMC(134, 9), TMC(135, 6), TMC(136, 711),
   TMC(137, 378)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op ORL_tupled_primitive x = x
    val op ORL_tupled_primitive =
    DT(((("fmapal",0),[]),[]),
       [read"%315%433@%472%346%33%296%451$0@@%219%72%218%45%257%106%260%88$4%284$0@$1@@%284$0@%370%261$2@$3@@$1@@@|@|@|@|@@|@@%6%64%609$0@%88%143%547$0@%387%441@@%164%106%578$1@%45%72%387%296$7%284$5@$2@@@%218%118%219%120%338%396%261$1@$0@@%403$4@@@%302%489$7@$3@$1@@%398@@|@|@@@||@||@||@||@@"])
  fun op ORL_curried x = x
    val op ORL_curried =
    DT(((("fmapal",1),[]),[]),
       [read"%260%195%257%201%299%422$1@$0@@%433%284$1@$0@@@|@|@"])
  fun op optry x = x
    val op optry =
    DT(((("fmapal",4),[("option",[4])]),["DISK_THM"]),
       [read"%296%220%119%258%121%336%575%438$1@@$0@@%438$1@@|@|@@%258%121%336%575%415@$0@@$0@|@@"])
  fun op optry_list_tupled_primitive x = x
    val op optry_list_tupled_primitive =
    DT(((("fmapal",5),[]),[]),
       [read"%307%577@%464%340%27%296%445$0@@%296%254%104%229%96$2%273$0@$1@@%273$0@%367%415@$1@@@|@|@@%220%217%254%104%229%96$3%273$0@$1@@%273$0@%367%438$2@@$1@@@|@|@|@@@|@@%117%47%595$0@%96%141%542$0@%394%414@@%162%104%568$1@%394$5%273$3@$0@@@@%217%394%574$4$0@@$6%273$4@$1@@@@|@||@||@||@@"])
  fun op optry_list_curried x = x
    val op optry_list_curried =
    DT(((("fmapal",6),[]),[]),
       [read"%229%192%254%199%335%576$1@$0@@%577%273$1@$0@@@|@|@"])
  fun op assocv_tupled_primitive x = x
    val op assocv_tupled_primitive =
    DT(((("fmapal",9),[]),[]),
       [read"%308%491@%465%341%28%296%446$0@@%219%214%257%106%218%191%218%45%338%628%297$0@$1@@@$4%274$2@$0@@%274%370%261$1@$3@@$2@@$0@@@|@|@|@|@@|@@%71%63%596$0@%133%45%549$1@%393%413@@%164%106%582$1@%191%214%393%365%297$4@$1@@%437$0@@$7%274$2@$4@@@@||@||@||@||@@"])
  fun op assocv_curried x = x
    val op assocv_curried =
    DT(((("fmapal",10),[]),[]),
       [read"%257%193%218%196%334%490$1@$0@@%491%274$1@$0@@@|@|@"])
  fun op vcossa x = x
    val op vcossa =
    DT(((("fmapal",13),[]),[]),
       [read"%218%45%257%106%334%626$1@$0@@%490$0@$1@@|@|@"])
  fun op OPTION_UPDATE x = x
    val op OPTION_UPDATE =
    DT(((("fmapal",14),[]),[]),
       [read"%227%94%227%98%218%191%334%421$2@$1@$0@@%573$2$0@@$1$0@@@|@|@|@"])
  fun op merge_tupled_primitive x = x
    val op merge_tupled_primitive =
    DT(((("fmapal",15),[]),[]),
       [read"%329%556@%486%356%43%296%461$0@@%296%219%76%219%75%257%108%257%107%218%67%218%66%260%88%338%302%489$0@$1@$2@@%373@@$7%294$0@%278$3@$4@@@%294$0@%278%370%261$1@$5@@$3@@%370%261$2@$6@@$4@@@@@|@|@|@|@|@|@|@@%296%219%76%257%108%257%107%219%75%218%67%218%66%260%88%338%302%489$0@$1@$2@@%385@@$7%294$0@%278%370%261$1@$3@@$4@@$5@@@%294$0@%278%370%261$1@$3@@$4@@%370%261$2@$6@@$5@@@@@|@|@|@|@|@|@|@@%219%75%257%108%219%76%257%107%218%67%218%66%260%88%338%302%489$0@$1@$2@@%398@@$7%294$0@%278$3@%370%261$2@$4@@$5@@@@%294$0@%278%370%261$1@$6@@$3@@%370%261$2@$4@@$5@@@@@|@|@|@|@|@|@|@@@@|@@%116%60%623$0@%88%154%601$0@%161%106%548$1@%392$0@@%186%107%548$2@%392%370$1@$0@@@%188%108%581$1@%67%76%581$5@%66%75%392%529%489$11@$1@$3@@%370%261$1@$0@@$13%294$11@%278$6@%370%261$3@$2@@$4@@@@@@%370%261$1@$0@@$13%294$11@%278$6@$4@@@@@%370%261$3@$2@@$13%294$11@%278%370%261$1@$0@@$6@@$4@@@@@@||@||@||@||@||@||@||@@"])
  fun op merge_curried x = x
    val op merge_curried =
    DT(((("fmapal",16),[]),[]),
       [read"%260%195%257%201%257%208%333%553$2@$1@$0@@%556%294$2@%278$1@$0@@@@|@|@|@"])
  fun op incr_merge_tupled_primitive x = x
    val op incr_merge_tupled_primitive =
    DT(((("fmapal",19),[]),[]),
       [read"%327%537@%484%355%42%296%460$0@@%256%111%257%114%257%106%260%88$4%293$0@%277%553$0@$1@$2@@$3@@@%293$0@%277$1@%369%440$2@@$3@@@@|@|@|@|@@|@@%99%59%621$0@%88%153%599$0@%106%169%545$0@%391%369%440$1@@%411@@@%180%111%571$1@%391%369%440$3@@$0@@@%114%391%369%417@$8%293$6@%277%553$6@$4@$0@@$1@@@@@|@||@||@||@||@@"])
  fun op incr_merge_curried x = x
    val op incr_merge_curried =
    DT(((("fmapal",20),[]),[]),
       [read"%260%195%257%201%256%207%332%536$2@$1@$0@@%537%293$2@%277$1@$0@@@@|@|@|@"])
  fun op ORL_sublists_tupled_primitive x = x
    val op ORL_sublists_tupled_primitive =
    DT(((("fmapal",23),[]),[]),
       [read"%314%432@%471%345%32%296%450$0@@%296%256%111%260%88$2%283$0@$1@@%283$0@%369%417@$1@@@|@|@@%257%114%256%111%260%88$3%283$0@$1@@%283$0@%369%440$2@@$1@@@|@|@|@@@|@@%5%51%608$0@%88%142%544$0@%387%441@@%163%111%570$1@%387$5%283$3@$0@@@@%114%387%296%422$4@$0@@$6%283$4@$1@@@@|@||@||@||@@"])
  fun op ORL_sublists_curried x = x
    val op ORL_sublists_curried =
    DT(((("fmapal",24),[]),[]),
       [read"%260%195%256%200%299%431$1@$0@@%432%283$1@$0@@@|@|@"])
  fun op incr_build x = x
    val op incr_build =
    DT(((("fmapal",27),[("list",[13])]),["DISK_THM"]),
       [read"%296%260%88%332%534$0@%412@@%411@|@@%260%88%259%68%257%106%332%534$2@%370$1@$0@@@%536$2@%370$1@%412@@%534$2@$0@@@|@|@|@@"])
  fun op merge_out_tupled_primitive x = x
    val op merge_out_tupled_primitive =
    DT(((("fmapal",28),[]),[]),
       [read"%328%555@%485%355%42%296%460$0@@%296%256%111%257%106%260%88$3%293$0@%277$1@$2@@@%293$0@%277$1@%369%417@$2@@@@|@|@|@@%256%111%257%114%257%106%260%88$4%293$0@%277%553$0@$1@$2@@$3@@@%293$0@%277$1@%369%440$2@@$3@@@@|@|@|@|@@@|@@%115%59%622$0@%88%153%600$0@%106%169%546$0@%392$1@@%180%111%572$1@%392$7%293$5@%277$3@$0@@@@@%114%392$8%293$6@%277%553$6@$4@$0@@$1@@@@|@||@||@||@||@@"])
  fun op merge_out_curried x = x
    val op merge_out_curried =
    DT(((("fmapal",29),[]),[]),
       [read"%260%195%257%201%256%207%333%554$2@$1@$0@@%555%293$2@%277$1@$0@@@@|@|@|@"])
  fun op incr_flat x = x
    val op incr_flat =
    DT(((("fmapal",32),[]),[]),
       [read"%260%88%256%111%333%535$1@$0@@%554$1@%412@$0@@|@|@"])
  fun op incr_sort x = x
    val op incr_sort =
    DT(((("fmapal",33),[]),[]),
       [read"%260%88%257%106%333%538$1@$0@@%554$1@%412@%534$1@$0@@@|@|@"])
  fun op OPTION_FLAT_primitive x = x
    val op OPTION_FLAT_primitive =
    DT(((("fmapal",34),[]),[]),
       [read"%306%420@%463%339%26%296%444$0@@%296%255%105$1$0@%368%416@$0@@|@@%253%46%255%105$2$0@%368%439$1@@$0@@|@|@@@|@@%0%62%543$0@%390%408@@%134%105%569$1@%390$3$0@@@%46%390%358$0@$4$1@@@|@||@||@@"])
  fun op unlookup x = x
    val op unlookup =
    DT(((("fmapal",37),[]),[]),
       [read"%227%94%303%625$0@@%382%564%442@$0@@%565%397@$0@@@|@"])
  fun op bt_to_fmap_tupled_primitive x = x
    val op bt_to_fmap_tupled_primitive =
    DT(((("fmapal",38),[]),[]),
       [read"%312%506@%469%344%31%296%449$0@@%296%223%123%219%130%218%191%223%102%260%88$5%282$0@$1@@%282$0@%560$1@%261$2@$3@@$4@@@|@|@|@|@|@@%219%130%218%191%223%102%223%123%260%88$5%282$0@$1@@%282$0@%560$2@%261$3@$4@@$1@@@|@|@|@|@|@@@|@@%79%50%606$0@%88%158%497$0@%389%377@@%102%181%123%580$1@%191%130%389%381%381%371$8%282$6@$4@@@%386%213%263$0@%302%489$7@$0@$2@@%398@@|@@@%383%377@%261$1@$0@@@@%371$8%282$6@$2@@@%386%215%263$0@%302%489$7@$2@$0@@%398@@|@@@@||@|||@||@||@@"])
  fun op bt_to_fmap_curried x = x
    val op bt_to_fmap_curried =
    DT(((("fmapal",39),[]),[]),
       [read"%260%195%223%198%303%378$1@$0@@%506%282$1@$0@@@|@|@"])
  fun op bt_to_fmap_lb x = x
    val op bt_to_fmap_lb =
    DT(((("fmapal",44),[]),[]),
       [read"%260%88%218%109%223%125%303%504$2@$1@$0@@%371%378$2@$0@@%386%191%263$0@%302%489$3@$2@$0@@%398@@|@@@|@|@|@"])
  fun op bt_to_fmap_ub x = x
    val op bt_to_fmap_ub =
    DT(((("fmapal",45),[]),[]),
       [read"%260%88%223%125%218%128%303%507$2@$1@$0@@%371%378$2@$1@@%386%191%263$0@%302%489$3@$0@$1@@%398@@|@@@|@|@|@"])
  fun op bt_to_fmap_lb_ub x = x
    val op bt_to_fmap_lb_ub =
    DT(((("fmapal",46),[]),[]),
       [read"%260%88%218%109%223%125%218%128%303%505$3@$2@$1@$0@@%371%378$3@$1@@%386%191%263$0@%296%302%489$4@$3@$0@@%398@@%302%489$4@$0@$1@@%398@@@|@@@|@|@|@|@"])
  fun op bt_map x = x
    val op bt_map =
    DT(((("fmapal",47),[("enumeral",[13])]),["DISK_THM"]),
       [read"%296%225%93%300%499$0@%561@@%562@|@@%225%93%222%101%218%191%222%122%300%499$3@%558$2@$1@$0@@@%559%499$3@$2@@$3$1@@%499$3@$0@@@|@|@|@|@@"])
  fun op bt_to_orl_lb_ub_tupled_primitive x = x
    val op bt_to_orl_lb_ub_tupled_primitive =
    DT(((("fmapal",49),[]),[]),
       [read"%319%520@%476%348%35%296%453$0@@%296%219%214%223%102%218%128%223%123%218%191%218%109%260%88%338%628%302%489$0@$1@$2@@%398@@@$7%286$0@%266$1@%269$3@$4@@@@%286$0@%266$1@%269%560$5@%261$2@$6@@$3@@$4@@@@@|@|@|@|@|@|@|@@%296%223%123%219%214%223%102%218%128%218%191%218%109%260%88%338%296%302%489$0@$1@$2@@%398@@%628%302%489$0@$2@$3@@%398@@@@$7%286$0@%266$1@%269$4@$3@@@@%286$0@%266$1@%269%560$4@%261$2@$5@@$6@@$3@@@@@|@|@|@|@|@|@|@@%296%223%123%219%214%223%102%218%128%218%191%218%109%260%88%338%296%302%489$0@$1@$2@@%398@@%302%489$0@$2@$3@@%398@@@$7%286$0@%266$1@%269$4@$2@@@@%286$0@%266$1@%269%560$4@%261$2@$5@@$6@@$3@@@@@|@|@|@|@|@|@|@@%219%214%223%102%223%123%218%128%218%191%218%109%260%88%338%296%302%489$0@$1@$2@@%398@@%302%489$0@$2@$3@@%398@@@$7%286$0@%266$2@%269$4@$3@@@@%286$0@%266$1@%269%560$5@%261$2@$6@@$4@@$3@@@@@|@|@|@|@|@|@|@@@@@|@@%84%53%613$0@%88%145%587$0@%109%173%591$0@%177%128%498$1@%392%412@@%102%187%123%581$1@%191%214%392%364%302%489$10@$8@$1@@%398@@%364%302%489$10@$1@$5@@%398@@%359%359$12%286$10@%266$8@%269$4@$1@@@@@%370%261$1@$0@@%412@@@$12%286$10@%266$1@%269$2@$5@@@@@@$12%286$10@%266$8@%269$4@$5@@@@@@$12%286$10@%266$8@%269$2@$5@@@@@@||@|||@||@||@||@||@@"])
  fun op bt_to_orl_lb_ub_curried x = x
    val op bt_to_orl_lb_ub_curried =
    DT(((("fmapal",50),[]),[]),
       [read"%260%195%218%196%223%204%218%209%333%516$3@$2@$1@$0@@%520%286$3@%266$2@%269$1@$0@@@@@|@|@|@|@"])
  fun op bt_to_orl_lb_tupled_primitive x = x
    val op bt_to_orl_lb_tupled_primitive =
    DT(((("fmapal",53),[]),[]),
       [read"%317%515@%474%347%34%296%452$0@@%296%219%214%223%102%223%123%218%191%218%109%260%88%338%628%302%489$0@$1@$2@@%398@@@$6%285$0@%264$1@$3@@@%285$0@%264$1@%560$4@%261$2@$5@@$3@@@@@|@|@|@|@|@|@@%219%214%223%102%223%123%218%191%218%109%260%88%338%302%489$0@$1@$2@@%398@@$6%285$0@%264$2@$3@@@%285$0@%264$1@%560$4@%261$2@$5@@$3@@@@@|@|@|@|@|@|@@@|@@%82%52%611$0@%88%144%584$0@%109%166%498$0@%392%412@@%102%183%123%581$1@%191%214%392%364%302%489$8@$6@$1@@%398@@%359%359%516$8@$6@$4@$1@@%370%261$1@$0@@%412@@@$10%285$8@%264$1@$2@@@@@$10%285$8@%264$6@$2@@@@@||@|||@||@||@||@@"])
  fun op bt_to_orl_lb_curried x = x
    val op bt_to_orl_lb_curried =
    DT(((("fmapal",54),[]),[]),
       [read"%260%195%218%196%223%204%333%512$2@$1@$0@@%515%285$2@%264$1@$0@@@@|@|@|@"])
  fun op bt_to_orl_ub_tupled_primitive x = x
    val op bt_to_orl_ub_tupled_primitive =
    DT(((("fmapal",57),[]),[]),
       [read"%323%525@%480%351%38%296%456$0@@%296%223%123%219%214%223%102%218%128%218%191%260%88%338%628%302%489$0@$1@$2@@%398@@@$6%289$0@%269$3@$2@@@%289$0@%269%560$3@%261$1@$4@@$5@@$2@@@@|@|@|@|@|@|@@%223%123%219%214%223%102%218%128%218%191%260%88%338%302%489$0@$1@$2@@%398@@$6%289$0@%269$3@$1@@@%289$0@%269%560$3@%261$1@$4@@$5@@$2@@@@|@|@|@|@|@|@@@|@@%87%56%617$0@%88%148%591$0@%158%128%498$1@%392%412@@%102%183%123%581$1@%191%214%392%364%302%489$8@$1@$5@@%398@@%359%359$10%289$8@%269$4@$1@@@@%370%261$1@$0@@%412@@@%516$8@$1@$2@$5@@@$10%289$8@%269$4@$5@@@@@||@|||@||@||@||@@"])
  fun op bt_to_orl_ub_curried x = x
    val op bt_to_orl_ub_curried =
    DT(((("fmapal",58),[]),[]),
       [read"%260%195%223%198%218%203%333%522$2@$1@$0@@%525%289$2@%269$1@$0@@@@|@|@|@"])
  fun op bt_to_orl_tupled_primitive x = x
    val op bt_to_orl_tupled_primitive =
    DT(((("fmapal",61),[]),[]),
       [read"%313%521@%470%344%31%449$0@|@@%85%50%607$0@%88%140%498$0@%392%412@@%102%171%123%581$1@%191%214%392%359%359%522$6@$4@$1@@%370%261$1@$0@@%412@@@%512$6@$1@$2@@@||@|||@||@||@@"])
  fun op bt_to_orl_curried x = x
    val op bt_to_orl_curried =
    DT(((("fmapal",62),[]),[]),
       [read"%260%195%223%198%333%509$1@$0@@%521%282$1@$0@@@|@|@"])
  fun op fmap x = x
    val op fmap =
    DT(((("fmapal",65),[]),[]),
       [read"%257%106%303%532$0@@%384%377@%436$0@@@|@"])
  fun op bt_to_orl_lb_ub_ac_tupled_AUX x = x
    val op bt_to_orl_lb_ub_ac_tupled_AUX =
    DT(((("fmapal",66),[]),[]),
       [read"%236%37%321%519$0@@%478$0@%83%55%615$0@%88%147%589$0@%109%176%594$0@%177%184%585$0@%128%114%498$3@%392$0@@%102%189%123%581$1@%191%214%392%364%302%489$12@$10@$1@@%398@@%364%302%489$12@$1@$6@@%398@@$14%288$12@%268$10@%272$4@%265$1@%370%261$1@$0@@$14%288$12@%268$1@%272$2@%265$6@$5@@@@@@@@@@@@$14%288$12@%268$10@%272$4@%265$6@$5@@@@@@@$14%288$12@%268$10@%272$2@%265$6@$5@@@@@@@||@|||@||@||@||@||@||@@|@"])
  fun op bt_to_orl_lb_ub_ac_tupled_primitive x = x
    val op bt_to_orl_lb_ub_ac_tupled_primitive =
    DT(((("fmapal",67),[]),[]),
       [read"%321%518@%519%350%37%296%455$0@@%296%219%214%223%102%257%114%218%128%223%123%218%191%218%109%260%88%338%628%302%489$0@$1@$2@@%398@@@$8%288$0@%268$1@%272$3@%265$4@$5@@@@@%288$0@%268$1@%272%560$6@%261$2@$7@@$3@@%265$4@$5@@@@@@|@|@|@|@|@|@|@|@@%296%223%123%219%214%257%114%223%102%218%128%218%191%218%109%260%88%338%296%302%489$0@$1@$2@@%398@@%628%302%489$0@$2@$3@@%398@@@@$8%288$0@%268$1@%272$4@%265$3@$5@@@@@%288$0@%268$1@%272%560$4@%261$2@$6@@$7@@%265$3@$5@@@@@@|@|@|@|@|@|@|@|@@%296%257%114%223%123%219%214%223%102%218%128%218%191%218%109%260%88%338%296%302%489$0@$1@$2@@%398@@%302%489$0@$2@$3@@%398@@@$8%288$0@%268$1@%272$4@%265$2@%370%261$2@$5@@%519$8@%288$0@%268$2@%272$6@%265$3@$7@@@@@@@@@@@%288$0@%268$1@%272%560$4@%261$2@$5@@$6@@%265$3@$7@@@@@@|@|@|@|@|@|@|@|@@%219%214%223%102%257%114%223%123%218%128%218%191%218%109%260%88%338%296%302%489$0@$1@$2@@%398@@%302%489$0@$2@$3@@%398@@@$8%288$0@%268$2@%272$4@%265$3@$5@@@@@%288$0@%268$1@%272%560$6@%261$2@$7@@$4@@%265$3@$5@@@@@@|@|@|@|@|@|@|@|@@@@@|@@@"])
  fun op bt_to_orl_lb_ub_ac_curried x = x
    val op bt_to_orl_lb_ub_ac_curried =
    DT(((("fmapal",68),[]),[]),
       [read"%260%195%218%196%223%204%218%209%257%212%333%517$4@$3@$2@$1@$0@@%518%288$4@%268$3@%272$2@%265$1@$0@@@@@@|@|@|@|@|@"])
  fun op bt_to_orl_lb_ac_tupled_primitive x = x
    val op bt_to_orl_lb_ac_tupled_primitive =
    DT(((("fmapal",71),[]),[]),
       [read"%320%514@%477%349%36%296%454$0@@%296%219%214%223%102%257%114%223%123%218%191%218%109%260%88%338%628%302%489$0@$1@$2@@%398@@@$7%287$0@%267$1@%271$3@$4@@@@%287$0@%267$1@%271%560$5@%261$2@$6@@$3@@$4@@@@@|@|@|@|@|@|@|@@%219%214%223%102%257%114%223%123%218%191%218%109%260%88%338%302%489$0@$1@$2@@%398@@$7%287$0@%267$2@%271$3@$4@@@@%287$0@%267$1@%271%560$5@%261$2@$6@@$3@@$4@@@@@|@|@|@|@|@|@|@@@|@@%81%54%614$0@%88%146%588$0@%109%175%593$0@%177%114%498$1@%392$0@@%102%187%123%581$1@%191%214%392%364%302%489$10@$8@$1@@%398@@%517$10@$8@$4@$1@%370%261$1@$0@@$12%287$10@%267$1@%271$2@$5@@@@@@@$12%287$10@%267$8@%271$2@$5@@@@@@||@|||@||@||@||@||@@"])
  fun op bt_to_orl_lb_ac_curried x = x
    val op bt_to_orl_lb_ac_curried =
    DT(((("fmapal",72),[]),[]),
       [read"%260%195%218%196%223%204%257%211%333%513$3@$2@$1@$0@@%514%287$3@%267$2@%271$1@$0@@@@@|@|@|@|@"])
  fun op bt_to_orl_ub_ac_tupled_primitive x = x
    val op bt_to_orl_ub_ac_tupled_primitive =
    DT(((("fmapal",75),[]),[]),
       [read"%325%524@%482%353%40%296%458$0@@%296%223%123%219%214%257%114%223%102%218%128%218%191%260%88%338%628%302%489$0@$1@$2@@%398@@@$7%291$0@%272$3@%265$2@$4@@@@%291$0@%272%560$3@%261$1@$5@@$6@@%265$2@$4@@@@@|@|@|@|@|@|@|@@%257%114%223%123%219%214%223%102%218%128%218%191%260%88%338%302%489$0@$1@$2@@%398@@$7%291$0@%272$3@%265$1@%370%261$1@$4@@%517$0@$1@$5@$2@$6@@@@@@%291$0@%272%560$3@%261$1@$4@@$5@@%265$2@$6@@@@@|@|@|@|@|@|@|@@@|@@%86%58%619$0@%88%150%594$0@%158%172%585$0@%128%114%498$3@%392$0@@%102%187%123%581$1@%191%214%392%364%302%489$10@$1@$6@@%398@@$12%291$10@%272$4@%265$1@%370%261$1@$0@@%517$10@$1@$2@$6@$5@@@@@@@$12%291$10@%272$4@%265$6@$5@@@@@@||@|||@||@||@||@||@@"])
  fun op bt_to_orl_ub_ac_curried x = x
    val op bt_to_orl_ub_ac_curried =
    DT(((("fmapal",76),[]),[]),
       [read"%260%195%223%198%218%203%257%211%333%523$3@$2@$1@$0@@%524%291$3@%272$2@%265$1@$0@@@@@|@|@|@|@"])
  fun op bt_to_orl_ac_tupled_primitive x = x
    val op bt_to_orl_ac_tupled_primitive =
    DT(((("fmapal",79),[]),[]),
       [read"%324%511@%481%352%39%457$0@|@@%80%57%618$0@%88%149%593$0@%158%114%498$1@%392$0@@%102%183%123%581$1@%191%214%392%523$8@$4@$1@%370%261$1@$0@@%513$8@$1@$2@$5@@@@||@|||@||@||@||@@"])
  fun op bt_to_orl_ac_curried x = x
    val op bt_to_orl_ac_curried =
    DT(((("fmapal",80),[]),[]),
       [read"%260%195%223%198%257%208%333%510$2@$1@$0@@%511%290$2@%271$1@$0@@@@|@|@|@"])
  fun op ORWL x = x
    val op ORWL =
    DT(((("fmapal",83),[]),[]),
       [read"%260%88%224%92%257%106%299%434$2@$1@$0@@%296%303$1@%532$0@@@%422$2@$0@@@|@|@|@"])
  fun op OFU x = x
    val op OFU =
    DT(((("fmapal",85),[]),[]),
       [read"%260%88%224%92%224%97%303%418$2@$1@$0@@%381%371$1@%386%191%263$0@%399$3@$0@%376$1@@@|@@@$0@@|@|@|@"])
  fun op UFO x = x
    val op UFO =
    DT(((("fmapal",86),[]),[]),
       [read"%260%88%224%92%224%97%303%443$2@$1@$0@@%381$1@%371$0@%386%213%263$0@%218%215%338%395$0@%376$3@@@%302%489$4@$0@$1@@%398@@|@@|@@@@|@|@|@"])
  fun op bl_to_fmap_tupled_primitive x = x
    val op bl_to_fmap_tupled_primitive =
    DT(((("fmapal",87),[]),[]),
       [read"%310%494@%467%343%30%296%448$0@@%296%221%73%260%88$2%281$0@$1@@%281$0@%627$1@@@|@|@@%223%125%219%214%218%191%221%73%260%88$5%281$0@$1@@%281$0@%567%261$2@$3@@$4@$1@@@|@|@|@|@|@@@|@@%77%49%604$0@%88%139%492$0@%389%377@@%73%389$4%281$2@$0@@@|@%171%125%74%580$2@%191%214%389%418$6@%381%383%377@%261$1@$0@@@%371%378$6@$3@@%386%215%263$0@%302%489$7@$2@$0@@%398@@|@@@@$8%281$6@$2@@@@||@|||@||@||@@"])
  fun op bl_to_fmap_curried x = x
    val op bl_to_fmap_curried =
    DT(((("fmapal",88),[]),[]),
       [read"%260%195%221%197%303%493$1@$0@@%494%281$1@$0@@@|@|@"])
  fun op inter_merge_tupled_primitive x = x
    val op inter_merge_tupled_primitive =
    DT(((("fmapal",95),[]),[]),
       [read"%326%540@%483%354%41%296%459$0@@%296%219%72%252%113%257%106%218%213%218%45%260%88%338%302%489$0@$1@$2@@%373@@$6%292$0@%276$3@$4@@@%292$0@%276%370%261$1@$5@@$3@@%366$2@$4@@@@@|@|@|@|@|@|@@%296%252%113%257%106%219%72%218%213%218%45%260%88%338%302%489$0@$1@$2@@%385@@$6%292$0@%276%370%261$1@$3@@$4@@$5@@@%292$0@%276%370%261$1@$3@@$4@@%366$2@$5@@@@@|@|@|@|@|@|@@%219%72%252%113%257%106%218%213%218%45%260%88%338%302%489$0@$1@$2@@%398@@$6%292$0@%276$3@%366$2@$4@@@@%292$0@%276%370%261$1@$5@@$3@@%366$2@$4@@@@@|@|@|@|@|@|@@@@|@@%100%65%620$0@%88%152%598$0@%161%168%548$1@%392%412@@%181%106%541$2@%392%412@@%213%113%581$3@%45%72%392%529%489$9@$1@$3@@$11%292$9@%276$4@%366$3@$2@@@@@%370%261$1@$0@@$11%292$9@%276$4@$2@@@@@$11%292$9@%276%370%261$1@$0@@$4@@$2@@@@@||@||@||@||@||@||@@"])
  fun op inter_merge_curried x = x
    val op inter_merge_curried =
    DT(((("fmapal",96),[]),[]),
       [read"%260%195%257%201%252%206%333%539$2@$1@$0@@%540%292$2@%276$1@$0@@@@|@|@|@"])
  fun op diff_merge_tupled_primitive x = x
    val op diff_merge_tupled_primitive =
    DT(((("fmapal",100),[]),[]),
       [read"%326%531@%483%354%41%296%459$0@@%296%219%72%252%113%257%106%218%213%218%45%260%88%338%302%489$0@$1@$2@@%373@@$6%292$0@%276$3@$4@@@%292$0@%276%370%261$1@$5@@$3@@%366$2@$4@@@@@|@|@|@|@|@|@@%296%252%113%257%106%219%72%218%213%218%45%260%88%338%302%489$0@$1@$2@@%385@@$6%292$0@%276%370%261$1@$3@@$4@@$5@@@%292$0@%276%370%261$1@$3@@$4@@%366$2@$5@@@@@|@|@|@|@|@|@@%219%72%252%113%257%106%218%213%218%45%260%88%338%302%489$0@$1@$2@@%398@@$6%292$0@%276$3@%366$2@$4@@@@%292$0@%276%370%261$1@$5@@$3@@%366$2@$4@@@@@|@|@|@|@|@|@@@@|@@%91%65%620$0@%88%152%598$0@%161%168%548$1@%392%412@@%181%106%581$1@%45%72%541$4@%392%370%261$1@$0@@$2@@@%213%113%392%529%489$9@$3@$1@@%370%261$3@$2@@$11%292$9@%276$4@%366$1@$0@@@@@@$11%292$9@%276$4@$0@@@@$11%292$9@%276%370%261$3@$2@@$4@@$0@@@@@||@||@||@||@||@||@@"])
  fun op diff_merge_curried x = x
    val op diff_merge_curried =
    DT(((("fmapal",101),[]),[]),
       [read"%260%195%257%201%252%206%333%530$2@$1@$0@@%531%292$2@%276$1@$0@@@@|@|@|@"])
  fun op AP_SND x = x
    val op AP_SND =
    DT(((("fmapal",110),[("pair",[16])]),["DISK_THM"]),
       [read"%228%95%218%45%219%72%337%360$2@%261$1@$0@@@%262$1@$2$0@@@|@|@|@"])
  fun op ORL_bt_lb_ub_tupled_primitive x = x
    val op ORL_bt_lb_ub_tupled_primitive =
    DT(((("fmapal",115),[]),[]),
       [read"%318%427@%475%348%35%296%453$0@@%296%218%128%223%123%219%214%218%191%223%102%218%109%260%88$7%286$0@%266$1@%269$2@$3@@@@%286$0@%266$1@%269%560$2@%261$3@$4@@$5@@$6@@@@|@|@|@|@|@|@|@@%219%214%223%102%218%109%218%128%223%123%218%191%260%88$7%286$0@%266$1@%269$2@$3@@@@%286$0@%266$4@%269%560$5@%261$1@$6@@$2@@$3@@@@|@|@|@|@|@|@|@@@|@@%2%53%612$0@%88%145%586$0@%109%173%590$0@%177%128%495$1@%387%302%489$5@$3@$0@@%398@@@%102%187%123%578$1@%191%214%387%296$12%286$10@%266$8@%269$4@$1@@@@@$12%286$10@%266$1@%269$2@$5@@@@@@||@|||@||@||@||@||@@"])
  fun op ORL_bt_lb_ub_curried x = x
    val op ORL_bt_lb_ub_curried =
    DT(((("fmapal",116),[]),[]),
       [read"%260%195%218%196%223%204%218%209%299%426$3@$2@$1@$0@@%427%286$3@%266$2@%269$1@$0@@@@@|@|@|@|@"])
  fun op ORL_bt_lb_tupled_primitive x = x
    val op ORL_bt_lb_tupled_primitive =
    DT(((("fmapal",119),[]),[]),
       [read"%316%425@%473%347%34%296%452$0@@%219%214%223%102%218%109%223%123%218%191%260%88$6%285$0@%264$1@$2@@@%285$0@%264$3@%560$4@%261$1@$5@@$2@@@@|@|@|@|@|@|@@|@@%1%52%610$0@%88%144%583$0@%109%166%495$0@%387%441@@%102%183%123%578$1@%191%214%387%296%426$8@$6@$4@$1@@$10%285$8@%264$1@$2@@@@@||@|||@||@||@||@@"])
  fun op ORL_bt_lb_curried x = x
    val op ORL_bt_lb_curried =
    DT(((("fmapal",120),[]),[]),
       [read"%260%195%218%196%223%204%299%424$2@$1@$0@@%425%285$2@%264$1@$0@@@@|@|@|@"])
  fun op ORL_bt_ub_tupled_primitive x = x
    val op ORL_bt_ub_tupled_primitive =
    DT(((("fmapal",123),[]),[]),
       [read"%322%430@%479%351%38%296%456$0@@%218%128%223%123%219%214%218%191%223%102%260%88$6%289$0@%269$1@$2@@@%289$0@%269%560$1@%261$2@$3@@$4@@$5@@@|@|@|@|@|@|@@|@@%4%56%616$0@%88%148%590$0@%158%128%495$1@%387%441@@%102%183%123%578$1@%191%214%387%296$10%289$8@%269$4@$1@@@@%426$8@$1@$2@$5@@@||@|||@||@||@||@@"])
  fun op ORL_bt_ub_curried x = x
    val op ORL_bt_ub_curried =
    DT(((("fmapal",124),[]),[]),
       [read"%260%195%223%198%218%203%299%429$2@$1@$0@@%430%289$2@%269$1@$0@@@@|@|@|@"])
  fun op ORL_bt_tupled_primitive x = x
    val op ORL_bt_tupled_primitive =
    DT(((("fmapal",127),[]),[]),
       [read"%311%428@%468%344%31%449$0@|@@%3%50%605$0@%88%140%495$0@%387%441@@%102%171%123%578$1@%191%214%387%296%429$6@$4@$1@@%424$6@$1@$2@@@||@|||@||@||@@"])
  fun op ORL_bt_curried x = x
    val op ORL_bt_curried =
    DT(((("fmapal",128),[]),[]),
       [read"%260%195%223%198%299%423$1@$0@@%428%282$1@$0@@@|@|@"])
  fun op list_rplacv_cn_tupled_primitive x = x
    val op list_rplacv_cn_tupled_primitive =
    DT(((("fmapal",132),[]),[]),
       [read"%309%551@%466%342%29%296%447$0@@%219%216%234%90%257%106%219%214%218%190%218%191%338%628%297$0@$1@@@$6%280%261$0@$2@@%275$3@%114$5%370%261$2@$6@@$0@@|@@@%280%261$0@$2@@%275%370%261$1@$5@@$3@@$4@@@@|@|@|@|@|@|@@|@@%110%48%603$0@%135%151%581$1@%191%214%597$2@%179%90%548$1@%392%412@@%186%106%581$1@%190%216%392%364%297$7@$1@@$4%370%261$7@$6@@$2@@@$11%280%261$7@$6@@%275$2@%114$5%370%261$2@$1@@$0@@|@@@@@||@||@||@||@||@||@@"])
  fun op list_rplacv_cn_curried x = x
    val op list_rplacv_cn_curried =
    DT(((("fmapal",133),[]),[]),
       [read"%259%194%257%201%234%205%333%550$2@$1@$0@@%551%280$2@%275$1@$0@@@@|@|@|@"])
  fun op bt_rplacv_cn_tupled_primitive x = x
    val op bt_rplacv_cn_tupled_primitive =
    DT(((("fmapal",138),[]),[]),
       [read"%330%503@%487%357%44%296%462$0@@%296%219%216%223%102%230%89%223%123%219%214%218%190%218%191%260%88%338%302%489$0@$1@$2@@%385@@$8%295$0@%279%261$1@$3@@%270$4@%112$6%560$7@%261$3@$8@@$0@@|@@@@%295$0@%279%261$1@$3@@%270%560$6@%261$2@$7@@$4@@$5@@@@@|@|@|@|@|@|@|@|@@%223%123%219%216%230%89%223%102%219%214%218%190%218%191%260%88%338%302%489$0@$1@$2@@%398@@$8%295$0@%279%261$1@$3@@%270$4@%112$6%560$0@%261$3@$7@@$8@@|@@@@%295$0@%279%261$1@$3@@%270%560$4@%261$2@$6@@$7@@$5@@@@@|@|@|@|@|@|@|@|@@@|@@%78%61%624$0@%88%155%602$0@%164%174%579$1@%191%214%592$2@%185%89%496$1@%388%563@@%102%189%123%579$1@%190%216%388%528%489$12@$8@$1@@$14%295$12@%279%261$8@$7@@%270$4@%112$6%560$0@%261$2@$1@@$3@@|@@@@@$5%560$4@%261$8@$7@@$2@@@$14%295$12@%279%261$8@$7@@%270$2@%112$6%560$5@%261$2@$1@@$0@@|@@@@@@||@|||@||@||@||@||@||@@"])
  fun op bt_rplacv_cn_curried x = x
    val op bt_rplacv_cn_curried =
    DT(((("fmapal",139),[]),[]),
       [read"%260%195%259%202%223%204%230%210%301%502$3@$2@$1@$0@@%503%295$3@%279$2@%270$1@$0@@@@@|@|@|@|@"])
  fun op ORL_ind x = x
    val op ORL_ind =
    DT(((("fmapal",2),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%247%21%338%296%260%88$1$0@%412@|@@%260%88%218%45%219%72%257%106%338$4$3@$0@@$4$3@%370%261$2@$1@@$0@@@|@|@|@|@@@%260%136%257%143$2$1@$0@|@|@@|@"])
  fun op ORL x = x
    val op ORL =
    DT(((("fmapal",3),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("fmapal",[0,1]),("list",[6,7]),("numeral",[3,7,8]),
         ("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%260%88%299%422$0@%412@@%441@|@@%257%106%260%88%219%72%218%45%299%422$2@%370%261$0@$1@@$3@@@%296%422$2@$3@@%218%118%219%120%338%396%261$1@$0@@%403$5@@@%302%489$4@$2@$1@@%398@@|@|@@@|@|@|@|@@"])
  fun op optry_list_ind x = x
    val op optry_list_ind =
    DT(((("fmapal",7),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[25,27,36,51,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,5,7,8]),("option",[6]),
         ("pair",[5,7,9,16]),("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%231%7%338%296%229%96$1$0@%409@|@@%296%229%96%254%104%338$2$1@$0@@$2$1@%367%415@$0@@@|@|@@%229%96%220%217%254%104%338$3$2@$0@@$3$2@%367%438$1@@$0@@@|@|@|@@@@%229%131%254%141$2$1@$0@|@|@@|@"])
  fun op optry_list x = x
    val op optry_list =
    DT(((("fmapal",8),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("fmapal",[5,6]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("option",[7]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%229%96%335%576$0@%409@@%414@|@@%296%254%104%229%96%335%576$0@%367%415@$1@@@%576$0@$1@@|@|@@%220%217%254%104%229%96%335%576$0@%367%438$2@@$1@@@%574$0$2@@%576$0@$1@@@|@|@|@@@"])
  fun op assocv_ind x = x
    val op assocv_ind =
    DT(((("fmapal",11),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%233%9%338%296%218%45$1%412@$0@|@@%218%191%219%214%257%106%218%45%338%338%628%297$0@$3@@@$4$1@$0@@@$4%370%261$3@$2@@$1@@$0@@|@|@|@|@@@%257%133%218%137$2$1@$0@|@|@@|@"])
  fun op assocv x = x
    val op assocv =
    DT(((("fmapal",12),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("fmapal",[9,10]),("list",[6,7]),
         ("numeral",[3,7,8]),("pair",[7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%45%334%490%412@$0@@%413@|@@%219%214%218%191%257%106%218%45%334%490%370%261$2@$3@@$1@@$0@@%365%297$0@$2@@%437$3@@%490$1@$0@@@|@|@|@|@@"])
  fun op merge_ind x = x
    val op merge_ind =
    DT(((("fmapal",17),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [25,26,36,47,48,51,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,124]),("list",[7,46]),("numeral",[3,5,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%250%24%338%296%260%88%257%106$2$1@%412@$0@|@|@@%296%260%88%259%181%257%182$3$2@%370$1@$0@@%412@|@|@|@@%260%88%218%66%219%75%257%107%218%67%219%76%257%108%338%296%338%302%489$6@$5@$2@@%373@@$7$6@$3@$0@@@%296%338%302%489$6@$5@$2@@%385@@$7$6@%370%261$5@$4@@$3@@$0@@@%338%302%489$6@$5@$2@@%398@@$7$6@$3@%370%261$2@$1@@$0@@@@@@$7$6@%370%261$5@$4@@$3@@%370%261$2@$1@@$0@@@|@|@|@|@|@|@|@@@@%260%136%257%143%257%161$3$2@$1@$0@|@|@|@@|@"])
  fun op merge x = x
    val op merge =
    DT(((("fmapal",18),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",[15,25,36,51,52,53,54,58,63,93,96,104,105,107,124]),
         ("combin",[19]),("fmapal",[15,16]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[20])]),["DISK_THM"]),
       [read"%296%257%106%260%88%333%553$0@%412@$1@@$1@|@|@@%296%257%182%259%181%260%88%333%553$0@%370$1@$2@@%412@@%370$1@$2@@|@|@|@@%257%108%257%107%260%88%219%76%219%75%218%67%218%66%333%553$4@%370%261$0@$2@@$5@@%370%261$1@$3@@$6@@@%529%489$4@$0@$1@@%370%261$0@$2@@%553$4@$5@%370%261$1@$3@@$6@@@@%370%261$0@$2@@%553$4@$5@$6@@@%370%261$1@$3@@%553$4@%370%261$0@$2@@$5@@$6@@@@|@|@|@|@|@|@|@@@"])
  fun op incr_merge_ind x = x
    val op incr_merge_ind =
    DT(((("fmapal",21),
        [("arithmetic",[24,25,26,27,46,59,71,93,173,180]),
         ("basicSize",[4]),("bool",[25,27,36,53,54,58,63,104]),
         ("list",[7,46]),("numeral",[3,5,8]),("option",[6]),
         ("pair",[5,7,9,16]),("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%249%23%338%296%260%88%257%106$2$1@$0@%411@|@|@@%296%260%88%257%106%256%111$3$2@$1@%369%417@$0@@|@|@|@@%260%88%257%106%257%114%256%111%338$4$3@%553$3@$2@$1@@$0@@$4$3@$2@%369%440$1@@$0@@@|@|@|@|@@@@%260%136%257%143%256%160$3$2@$1@$0@|@|@|@@|@"])
  fun op incr_merge x = x
    val op incr_merge =
    DT(((("fmapal",22),
        [("arithmetic",[24,25,26,27,46,59,71,93,173,180]),
         ("basicSize",[4]),("bool",[15,25,36,54,58,63,104]),
         ("combin",[19]),("fmapal",[19,20]),("list",[6,7]),
         ("numeral",[3,5,8]),("option",[7]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%296%257%106%260%88%332%536$0@$1@%411@@%369%440$1@@%411@@|@|@@%296%256%111%257%106%260%88%332%536$0@$1@%369%417@$2@@@%369%440$1@@$2@@|@|@|@@%257%114%256%111%257%106%260%88%332%536$0@$1@%369%440$3@@$2@@@%369%417@%536$0@%553$0@$1@$3@@$2@@@|@|@|@|@@@"])
  fun op ORL_sublists_ind x = x
    val op ORL_sublists_ind =
    DT(((("fmapal",25),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[25,27,36,51,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,5,7,8]),("option",[6]),
         ("pair",[5,7,9,16]),("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%246%20%338%296%260%88$1$0@%411@|@@%296%260%88%256%111%338$2$1@$0@@$2$1@%369%417@$0@@@|@|@@%260%88%257%114%256%111%338$3$2@$0@@$3$2@%369%440$1@@$0@@@|@|@|@@@@%260%136%256%142$2$1@$0@|@|@@|@"])
  fun op ORL_sublists x = x
    val op ORL_sublists =
    DT(((("fmapal",26),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("fmapal",[23,24]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("option",[7]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%260%88%299%431$0@%411@@%441@|@@%296%256%111%260%88%299%431$0@%369%417@$1@@@%431$0@$1@@|@|@@%257%114%256%111%260%88%299%431$0@%369%440$2@@$1@@@%296%422$0@$2@@%431$0@$1@@@|@|@|@@@"])
  fun op merge_out_ind x = x
    val op merge_out_ind =
    DT(((("fmapal",30),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[25,27,36,51,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,5,7,8]),("option",[6]),
         ("pair",[5,7,9,16]),("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%249%23%338%296%260%88%257%106$2$1@$0@%411@|@|@@%296%260%88%257%106%256%111%338$3$2@$1@$0@@$3$2@$1@%369%417@$0@@@|@|@|@@%260%88%257%106%257%114%256%111%338$4$3@%553$3@$2@$1@@$0@@$4$3@$2@%369%440$1@@$0@@@|@|@|@|@@@@%260%136%257%143%256%160$3$2@$1@$0@|@|@|@@|@"])
  fun op merge_out x = x
    val op merge_out =
    DT(((("fmapal",31),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("fmapal",[28,29]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("option",[7]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%257%106%260%88%333%554$0@$1@%411@@$1@|@|@@%296%256%111%257%106%260%88%333%554$0@$1@%369%417@$2@@@%554$0@$1@$2@@|@|@|@@%257%114%256%111%257%106%260%88%333%554$0@$1@%369%440$3@@$2@@@%554$0@%553$0@$1@$3@@$2@@|@|@|@|@@@"])
  fun op OPTION_FLAT_ind x = x
    val op OPTION_FLAT_ind =
    DT(((("fmapal",35),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[25,27,36,51,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,5,7,8]),("option",[6]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%232%8%338%296$0%410@@%296%255%105%338$1$0@@$1%368%416@$0@@@|@@%253%46%255%105%338$2$0@@$2%368%439$1@@$0@@@|@|@@@@%255%132$1$0@|@@|@"])
  fun op OPTION_FLAT x = x
    val op OPTION_FLAT =
    DT(((("fmapal",36),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("basicSize",[4]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("fmapal",[34]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("option",[7]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%331%420%410@@%408@@%296%255%105%331%420%368%416@$0@@@%420$0@@|@@%255%105%253%46%331%420%368%439$0@@$1@@@%358$0@%420$1@@@|@|@@@"])
  fun op bt_to_fmap_ind x = x
    val op bt_to_fmap_ind =
    DT(((("fmapal",40),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%242%16%338%296%260%88$1$0@%563@|@@%260%88%223%102%218%191%219%130%223%123%338%296$5$4@$3@@$5$4@$0@@@$5$4@%560$3@%261$2@$1@@$0@@@|@|@|@|@|@@@%260%136%223%140$2$1@$0@|@|@@|@"])
  fun op bt_to_fmap x = x
    val op bt_to_fmap =
    DT(((("fmapal",41),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("enumeral",[7,34]),("fmapal",[38,39]),("numeral",[3,8]),
         ("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%260%88%303%378$0@%563@@%377@|@@%218%191%219%130%223%123%223%102%260%88%303%378$0@%560$1@%261$4@$3@@$2@@@%381%381%371%378$0@$1@@%386%213%263$0@%302%489$1@$0@$5@@%398@@|@@@%383%377@%261$4@$3@@@@%371%378$0@$2@@%386%215%263$0@%302%489$1@$5@$0@@%398@@|@@@@|@|@|@|@|@@"])
  fun op FAPPLY_nt x = x
    val op FAPPLY_nt =
    DT(((("fmapal",42),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,56,58,63,93,96,104,105,107]),
         ("combin",[19]),("enumeral",[7,34]),("fmapal",[38,39]),
         ("numeral",[3,8]),("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%260%88%218%191%298%375%378$1@%563@@$0@@%375%377@$0@@|@|@"])
  fun op FAPPLY_node x = x
    val op FAPPLY_node =
    DT(((("fmapal",43),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,30,36,48,51,52,53,54,55,56,58,63,64,65,93,96,99,
          104,105,107,124,129,147]),("combin",[1,3,5,19,20]),
         ("enumeral",[7,34]),("finite_map",[15,16,17,30,32,44,48,58]),
         ("fmapal",[38,39]),("numeral",[3,8]),("pair",[3,7,9,16,49]),
         ("pred_set",[6,10,33,45,80]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,21,29,42,45,48])]),["DISK_THM"]),
       [read"%260%88%218%191%223%102%218%45%219%72%223%123%298%375%378$5@%560$3@%261$2@$1@@$0@@@$4@@%526%489$5@$4@$2@@%375%378$5@$3@@$4@@$1@%375%378$5@$0@@$4@@@|@|@|@|@|@|@"])
  fun op bt_FST_FDOM x = x
    val op bt_FST_FDOM =
    DT(((("fmapal",48),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[14,15,25,26,36,52,54,56,58,63,93,96,104,105,107]),
         ("combin",[19]),("enumeral",[7,14,34,72]),
         ("finite_map",[15,16,48,64]),("fmapal",[38,39,47]),
         ("numeral",[3,8]),("pair",[3,7,8,9,16,33,49]),
         ("pred_set",[3,6,33,45]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%260%88%223%125%305%376%378$1@$0@@@%372$1@%500%380@$0@@@|@|@"])
  fun op bt_to_orl_lb_ub_ind x = x
    val op bt_to_orl_lb_ub_ind =
    DT(((("fmapal",51),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%238%12%338%296%260%88%218%109%218%128$3$2@$1@%563@$0@|@|@|@@%260%88%218%109%223%102%218%191%219%214%223%123%218%128%338%296%338%628%302%489$6@$5@$3@@%398@@@$7$6@$5@$1@$0@@@%296%338%296%302%489$6@$5@$3@@%398@@%628%302%489$6@$3@$0@@%398@@@@$7$6@$5@$4@$0@@@%296%338%296%302%489$6@$5@$3@@%398@@%302%489$6@$3@$0@@%398@@@$7$6@$5@$4@$3@@@%338%296%302%489$6@$5@$3@@%398@@%302%489$6@$3@$0@@%398@@@$7$6@$3@$1@$0@@@@@@$7$6@$5@%560$4@%261$3@$2@@$1@@$0@@|@|@|@|@|@|@|@@@%260%136%218%137%223%158%218%165$4$3@$2@$1@$0@|@|@|@|@@|@"])
  fun op bt_to_orl_lb_ub x = x
    val op bt_to_orl_lb_ub =
    DT(((("fmapal",52),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("enumeral",[7,34]),("fmapal",[49,50]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%128%218%109%260%88%333%516$0@$1@%563@$2@@%412@|@|@|@@%219%214%218%191%218%128%223%123%218%109%223%102%260%88%333%516$0@$2@%560$1@%261$5@$6@@$3@@$4@@%364%302%489$0@$2@$5@@%398@@%364%302%489$0@$5@$4@@%398@@%359%359%516$0@$2@$1@$5@@%370%261$5@$6@@%412@@@%516$0@$5@$3@$4@@@%516$0@$2@$1@$4@@@%516$0@$2@$3@$4@@@|@|@|@|@|@|@|@@"])
  fun op bt_to_orl_lb_ind x = x
    val op bt_to_orl_lb_ind =
    DT(((("fmapal",55),
        [("arithmetic",[22,24,25,26,27,46,59,71,93,173]),
         ("bool",[25,27,36,53,54,58,63,104,105,124]),("enumeral",[7,12]),
         ("numeral",[3,8]),("pair",[5,7,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%237%11%338%296%260%88%218%109$2$1@$0@%563@|@|@@%260%88%218%109%223%102%218%191%219%214%223%123%338%296%338%628%302%489$5@$4@$2@@%398@@@$6$5@$4@$0@@@%338%302%489$5@$4@$2@@%398@@$6$5@$2@$0@@@@$6$5@$4@%560$3@%261$2@$1@@$0@@@|@|@|@|@|@|@@@%260%136%218%137%223%158$3$2@$1@$0@|@|@|@@|@"])
  fun op bt_to_orl_lb x = x
    val op bt_to_orl_lb =
    DT(((("fmapal",56),
        [("arithmetic",[22,24,25,26,27,46,59,71,93,173]),
         ("bool",[15,25,36,53,54,58,63,104,105,124,129]),("combin",[19]),
         ("enumeral",[7,34]),("fmapal",[53,54]),("numeral",[3,8]),
         ("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%296%218%109%260%88%333%512$0@$1@%563@@%412@|@|@@%219%214%218%191%223%123%218%109%223%102%260%88%333%512$0@$2@%560$1@%261$4@$5@@$3@@@%364%302%489$0@$2@$4@@%398@@%359%359%516$0@$2@$1@$4@@%370%261$4@$5@@%412@@@%512$0@$4@$3@@@%512$0@$2@$3@@@|@|@|@|@|@|@@"])
  fun op bt_to_orl_ub_ind x = x
    val op bt_to_orl_ub_ind =
    DT(((("fmapal",59),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%243%17%338%296%260%88%218%128$2$1@%563@$0@|@|@@%260%88%223%102%218%191%219%214%223%123%218%128%338%296%338%628%302%489$5@$3@$0@@%398@@@$6$5@$4@$0@@@%338%302%489$5@$3@$0@@%398@@$6$5@$4@$3@@@@$6$5@%560$4@%261$3@$2@@$1@@$0@@|@|@|@|@|@|@@@%260%136%223%140%218%156$3$2@$1@$0@|@|@|@@|@"])
  fun op bt_to_orl_ub x = x
    val op bt_to_orl_ub =
    DT(((("fmapal",60),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("enumeral",[7,34]),("fmapal",[57,58]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%128%260%88%333%522$0@%563@$1@@%412@|@|@@%219%214%218%191%218%128%223%123%223%102%260%88%333%522$0@%560$1@%261$4@$5@@$2@@$3@@%364%302%489$0@$4@$3@@%398@@%359%359%522$0@$1@$4@@%370%261$4@$5@@%412@@@%516$0@$4@$2@$3@@@%522$0@$1@$3@@@|@|@|@|@|@|@@"])
  fun op bt_to_orl_ind x = x
    val op bt_to_orl_ind =
    DT(((("fmapal",63),
        [("bool",[25,27,53,54,63]),("enumeral",[12]),("pair",[5,16]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%242%16%338%296%260%88$1$0@%563@|@@%260%88%223%102%218%191%219%214%223%123$5$4@%560$3@%261$2@$1@@$0@@|@|@|@|@|@@@%260%136%223%140$2$1@$0@|@|@@|@"])
  fun op bt_to_orl x = x
    val op bt_to_orl =
    DT(((("fmapal",64),
        [("bool",[15,58]),("combin",[19]),("enumeral",[34]),
         ("fmapal",[61,62]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%296%333%509%88@%563@@%412@@%333%509%88@%560%102@%261%191@%214@@%123@@@%359%359%522%88@%102@%191@@%370%261%191@%214@@%412@@@%512%88@%191@%123@@@@"])
  fun op bt_to_orl_lb_ub_ac_ind x = x
    val op bt_to_orl_lb_ub_ac_ind =
    DT(((("fmapal",69),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,26,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("enumeral",[7,12]),("fmapal",[67,68]),("numeral",[3,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%239%13%338%296%260%88%218%109%218%128%257%114$4$3@$2@%563@$1@$0@|@|@|@|@@%260%88%218%109%223%102%218%191%219%214%223%123%218%128%257%114%338%296%338%628%302%489$7@$6@$4@@%398@@@$8$7@$6@$2@$1@$0@@@%296%338%296%302%489$7@$6@$4@@%398@@%628%302%489$7@$4@$1@@%398@@@@$8$7@$6@$5@$1@$0@@@%296%338%296%302%489$7@$6@$4@@%398@@%302%489$7@$4@$1@@%398@@@$8$7@$6@$5@$4@%370%261$4@$3@@%517$7@$4@$2@$1@$0@@@@@%338%296%302%489$7@$6@$4@@%398@@%302%489$7@$4@$1@@%398@@@$8$7@$4@$2@$1@$0@@@@@@$8$7@$6@%560$5@%261$4@$3@@$2@@$1@$0@@|@|@|@|@|@|@|@|@@@%260%136%218%137%223%158%218%165%257%179$5$4@$3@$2@$1@$0@|@|@|@|@|@@|@"])
  fun op bt_to_orl_lb_ub_ac x = x
    val op bt_to_orl_lb_ub_ac =
    DT(((("fmapal",70),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("enumeral",[7,34]),("fmapal",[66,67,68]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%128%257%114%218%109%260%88%333%517$0@$1@%563@$3@$2@@$2@|@|@|@|@@%219%214%218%191%218%128%223%123%257%114%218%109%223%102%260%88%333%517$0@$2@%560$1@%261$6@$7@@$4@@$5@$3@@%364%302%489$0@$2@$6@@%398@@%364%302%489$0@$6@$5@@%398@@%517$0@$2@$1@$6@%370%261$6@$7@@%517$0@$6@$4@$5@$3@@@@%517$0@$2@$1@$5@$3@@@%517$0@$2@$4@$5@$3@@@|@|@|@|@|@|@|@|@@"])
  fun op bt_to_orl_lb_ac_ind x = x
    val op bt_to_orl_lb_ac_ind =
    DT(((("fmapal",73),
        [("arithmetic",[22,24,25,26,27,46,59,71,93,173]),
         ("bool",[25,27,36,53,54,58,63,104,105,124]),("enumeral",[7,12]),
         ("numeral",[3,8]),("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%240%14%338%296%260%88%218%109%257%114$3$2@$1@%563@$0@|@|@|@@%260%88%218%109%223%102%218%191%219%214%223%123%257%114%338%296%338%628%302%489$6@$5@$3@@%398@@@$7$6@$5@$1@$0@@@%338%302%489$6@$5@$3@@%398@@$7$6@$3@$1@$0@@@@$7$6@$5@%560$4@%261$3@$2@@$1@@$0@@|@|@|@|@|@|@|@@@%260%136%218%137%223%158%257%170$4$3@$2@$1@$0@|@|@|@|@@|@"])
  fun op bt_to_orl_lb_ac x = x
    val op bt_to_orl_lb_ac =
    DT(((("fmapal",74),
        [("arithmetic",[22,24,25,26,27,46,59,71,93,173]),
         ("bool",[15,25,36,53,54,58,63,104,105,124,129]),("combin",[19]),
         ("enumeral",[7,34]),("fmapal",[71,72]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%296%257%114%218%109%260%88%333%513$0@$1@%563@$2@@$2@|@|@|@@%219%214%218%191%223%123%257%114%218%109%223%102%260%88%333%513$0@$2@%560$1@%261$5@$6@@$4@@$3@@%364%302%489$0@$2@$5@@%398@@%517$0@$2@$1@$5@%370%261$5@$6@@%513$0@$5@$4@$3@@@@%513$0@$2@$4@$3@@@|@|@|@|@|@|@|@@"])
  fun op bt_to_orl_ub_ac_ind x = x
    val op bt_to_orl_ub_ac_ind =
    DT(((("fmapal",77),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%244%18%338%296%260%88%218%128%257%114$3$2@%563@$1@$0@|@|@|@@%260%88%223%102%218%191%219%214%223%123%218%128%257%114%338%296%338%628%302%489$6@$4@$1@@%398@@@$7$6@$5@$1@$0@@@%338%302%489$6@$4@$1@@%398@@$7$6@$5@$4@%370%261$4@$3@@%517$6@$4@$2@$1@$0@@@@@@$7$6@%560$5@%261$4@$3@@$2@@$1@$0@@|@|@|@|@|@|@|@@@%260%136%223%140%218%156%257%170$4$3@$2@$1@$0@|@|@|@|@@|@"])
  fun op bt_to_orl_ub_ac x = x
    val op bt_to_orl_ub_ac =
    DT(((("fmapal",78),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("enumeral",[7,34]),("fmapal",[75,76]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%128%257%114%260%88%333%523$0@%563@$2@$1@@$1@|@|@|@@%219%214%218%191%218%128%223%123%257%114%223%102%260%88%333%523$0@%560$1@%261$5@$6@@$3@@$4@$2@@%364%302%489$0@$5@$4@@%398@@%523$0@$1@$5@%370%261$5@$6@@%517$0@$5@$3@$4@$2@@@@%523$0@$1@$4@$2@@@|@|@|@|@|@|@|@@"])
  fun op bt_to_orl_ac_ind x = x
    val op bt_to_orl_ac_ind =
    DT(((("fmapal",81),
        [("bool",[25,27,53,54,63]),("enumeral",[12]),("pair",[5,16]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%245%19%338%296%260%88%257%114$2$1@%563@$0@|@|@@%260%88%223%102%218%191%219%214%223%123%257%114$6$5@%560$4@%261$3@$2@@$1@@$0@|@|@|@|@|@|@@@%260%136%223%140%257%161$3$2@$1@$0@|@|@|@@|@"])
  fun op bt_to_orl_ac x = x
    val op bt_to_orl_ac =
    DT(((("fmapal",82),
        [("bool",[15,58]),("combin",[19]),("enumeral",[34]),
         ("fmapal",[79,80]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%296%333%510%88@%563@%114@@%114@@%333%510%88@%560%102@%261%191@%214@@%123@@%114@@%523%88@%102@%191@%370%261%191@%214@@%513%88@%191@%123@%114@@@@@"])
  fun op ORWL_bt_to_orl x = x
    val op ORWL_bt_to_orl =
    DT(((("fmapal",84),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,75,83,93,
          96,104,105,107,124,129,147]),("combin",[19]),
         ("enumeral",[7,14,34,47,72,73,74,75,79,80,81,82,87]),
         ("finite_map",
         [15,16,35,44,45,46,48,51,52,58,60,61,62,64,144,146]),
         ("fmapal",
         [0,1,38,39,44,45,46,47,48,49,50,53,54,57,58,61,62,65,83]),
         ("list",[6,7,23,25,43,56,58,104,120,173,174]),("numeral",[3,7,8]),
         ("pair",[3,4,7,8,9,16,33,49]),
         ("pred_set",[3,6,10,18,33,45,49,55,80,131,428]),("prim_rec",[42]),
         ("relation",[107,113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[54,56])]),["DISK_THM"]),
       [read"%260%88%223%125%434$1@%378$1@$0@@%509$1@$0@@|@|@"])
  fun op bl_to_fmap_ind x = x
    val op bl_to_fmap_ind =
    DT(((("fmapal",89),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,51,52,53,54,58,63,93,96,104,105,107]),
         ("enumeral",[24,29]),("numeral",[3,7,8]),("pair",[5,7,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%241%15%338%296%260%88$1$0@%557@|@@%296%260%88%221%73%338$2$1@$0@@$2$1@%627$0@@@|@|@@%260%88%218%191%219%214%223%125%221%73%338$5$4@$0@@$5$4@%567%261$3@$2@@$1@$0@@@|@|@|@|@|@@@@%260%136%221%139$2$1@$0@|@|@@|@"])
  fun op bl_to_fmap x = x
    val op bl_to_fmap =
    DT(((("fmapal",90),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107]),
         ("combin",[19]),("enumeral",[23,24]),("fmapal",[87,88]),
         ("numeral",[3,7,8]),("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%260%88%303%493$0@%557@@%377@|@@%296%260%88%221%73%303%493$1@%627$0@@@%493$1@$0@@|@|@@%219%214%218%191%223%125%260%88%221%73%303%493$1@%567%261$3@$4@@$2@$0@@@%418$1@%381%383%377@%261$3@$4@@@%371%378$1@$2@@%386%215%263$0@%302%489$2@$4@$0@@%398@@|@@@@%493$1@$0@@@|@|@|@|@|@@@"])
  fun op bt_to_orl_ID_IMP x = x
    val op bt_to_orl_ID_IMP =
    DT(((("fmapal",91),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,71,73,74,
          75,83,84,92,93,95,96,99,100,101,104,105,107,108,109,124,129,145,
          147]),("combin",[1,3,5,8,19,20]),
         ("enumeral",
         [7,14,23,24,31,34,35,36,37,43,44,46,47,72,73,74,75,79,80,81,82,87,
          94,95,96,97,99,100,101,103,104]),
         ("finite_map",
         [11,15,16,17,24,30,32,35,44,45,46,48,51,52,58,60,61,62,64,77,78,
          79,110,144,146,182]),
         ("fmapal",
         [0,1,9,10,37,38,39,44,45,46,47,48,49,50,53,54,57,58,61,62,65,85,
          86,87,88]),
         ("list",[6,7,9,10,23,25,43,46,49,56,58,104,120,173,174]),
         ("numeral",[3,7,8]),("option",[10,11,14,25]),
         ("pair",[3,4,7,8,9,16,33,49]),
         ("pred_set",[0,3,6,10,18,33,45,49,55,80,131,185,187,428]),
         ("prim_rec",[42]),("relation",[107,113,115,121,126]),
         ("res_quan",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("toto",[19,21,29,42,43,45,48,51,54,56])]),["DISK_THM"]),
       [read"%260%88%257%106%338%422$1@$0@@%333%509$1@%552$0@@@$0@@|@|@"])
  fun op fmap_FDOM x = x
    val op fmap_FDOM =
    DT(((("fmapal",92),
        [("bool",[25,36,56]),("finite_map",[15,159]),("fmapal",[65]),
         ("list",[239]),("pred_set",[41]),
         ("rich_list",[119])]),["DISK_THM"]),
       [read"%257%106%305%376%532$0@@@%402%405%380@$0@@@|@"])
  fun op ORL_FUNION_IMP x = x
    val op ORL_FUNION_IMP =
    DT(((("fmapal",93),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,51,52,53,54,55,56,58,63,64,75,83,93,96,
          104,105,107,124,129]),("combin",[8,19]),
         ("enumeral",[47,51,52,53]),
         ("finite_map",[15,16,17,24,30,35,58,77,78,79,110,143,146]),
         ("fmapal",[0,1,4,9,10,14,15,16,17,37,65,92]),
         ("list",[6,7,20,23,25,29,43,46,48,120,173,233,240]),
         ("numeral",[3,5,7,8]),("option",[6,14,16,25]),
         ("pair",[3,4,7,8,9,16,33,49]),("pred_set",[0,3,10,12,33,80,190]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),("res_quan",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,19,20,21,29,43,51])]),["DISK_THM"]),
       [read"%260%88%257%106%338%422$1@$0@@%257%114%338%422$2@$0@@%296%422$2@%553$2@$1@$0@@@%303%532%553$2@$1@$0@@@%381%532$1@@%532$0@@@@@|@@|@|@"])
  fun op FMAPAL_FDOM_THM x = x
    val op FMAPAL_FDOM_THM =
    DT(((("fmapal",94),
        [("bool",[25,26,27,51,52,54,56,58,63]),("enumeral",[76]),
         ("fmapal",[47,48]),("pair",[8]),
         ("toto",[17,19,21,42,48])]),["DISK_THM"]),
       [read"%296%260%88%218%191%299%395$0@%376%378$1@%563@@@@%374@|@|@@%260%88%218%191%218%45%219%72%223%102%223%123%299%395$4@%376%378$5@%560$1@%261$3@$2@@$0@@@@@%527%489$5@$4@$3@@%395$4@%376%378$5@$1@@@@%441@%395$4@%376%378$5@$0@@@@@|@|@|@|@|@|@@"])
  fun op inter_merge_ind x = x
    val op inter_merge_ind =
    DT(((("fmapal",97),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [25,26,36,47,48,51,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,124]),("list",[7,46]),("numeral",[3,5,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%248%22%338%296%260%88$1$0@%412@%407@|@@%296%260%88%218%45%219%72%257%106$4$3@%370%261$2@$1@@$0@@%407@|@|@|@|@@%296%260%88%218%213%252%113$3$2@%412@%366$1@$0@@|@|@|@@%260%88%218%45%219%72%257%106%218%213%252%113%338%296%338%302%489$5@$4@$1@@%373@@$6$5@$2@$0@@@%296%338%302%489$5@$4@$1@@%385@@$6$5@%370%261$4@$3@@$2@@$0@@@%338%302%489$5@$4@$1@@%398@@$6$5@$2@%366$1@$0@@@@@@$6$5@%370%261$4@$3@@$2@@%366$1@$0@@@|@|@|@|@|@|@@@@@%260%136%257%143%252%159$3$2@$1@$0@|@|@|@@|@"])
  fun op inter_merge x = x
    val op inter_merge =
    DT(((("fmapal",98),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",[15,25,36,51,52,53,54,58,63,93,96,104,105,107,124]),
         ("combin",[19]),("fmapal",[95,96]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[20])]),["DISK_THM"]),
       [read"%296%260%88%333%539$0@%412@%407@@%412@|@@%296%257%106%260%88%219%72%218%45%333%539$2@%370%261$0@$1@@$3@@%407@@%412@|@|@|@|@@%296%218%213%252%113%260%88%333%539$0@%412@%366$2@$1@@@%412@|@|@|@@%218%213%252%113%257%106%260%88%219%72%218%45%333%539$2@%370%261$0@$1@@$3@@%366$5@$4@@@%529%489$2@$0@$5@@%539$2@$3@%366$5@$4@@@%370%261$0@$1@@%539$2@$3@$4@@@%539$2@%370%261$0@$1@@$3@@$4@@@|@|@|@|@|@|@@@@"])
  fun op ORL_DRESTRICT_IMP x = x
    val op ORL_DRESTRICT_IMP =
    DT(((("fmapal",99),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,51,52,53,54,55,56,58,63,64,73,74,75,83,
          84,93,96,99,100,104,105,107,124,129,147]),("combin",[8,19]),
         ("enumeral",[47]),
         ("finite_map",[15,16,17,24,30,35,44,77,78,79,110,143,146]),
         ("fmapal",[0,1,9,10,37,65,92,95,96,97]),
         ("list",[6,7,23,25,29,43,120,173,233,240]),("numeral",[3,5,7,8]),
         ("option",[6,14,16,25]),("pair",[3,4,7,8,9,16,33,49]),
         ("pred_set",[0,3,10,12,45,80]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("res_quan",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,20,21,29,42,43,45,48,51,56])]),["DISK_THM"]),
       [read"%260%88%257%106%338%422$1@$0@@%252%113%338%419$2@$0@@%296%422$2@%539$2@$1@$0@@@%303%532%539$2@$1@$0@@@%371%532$1@@%402$0@@@@@|@@|@|@"])
  fun op diff_merge_ind x = x
    val op diff_merge_ind =
    DT(((("fmapal",102),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [25,26,36,47,48,51,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,124]),("list",[7,46]),("numeral",[3,5,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%248%22%338%296%260%88$1$0@%412@%407@|@@%296%260%88%218%45%219%72%257%106$4$3@%370%261$2@$1@@$0@@%407@|@|@|@|@@%296%260%88%218%213%252%113$3$2@%412@%366$1@$0@@|@|@|@@%260%88%218%45%219%72%257%106%218%213%252%113%338%296%338%302%489$5@$4@$1@@%373@@$6$5@$2@$0@@@%296%338%302%489$5@$4@$1@@%385@@$6$5@%370%261$4@$3@@$2@@$0@@@%338%302%489$5@$4@$1@@%398@@$6$5@$2@%366$1@$0@@@@@@$6$5@%370%261$4@$3@@$2@@%366$1@$0@@@|@|@|@|@|@|@@@@@%260%136%257%143%252%159$3$2@$1@$0@|@|@|@@|@"])
  fun op diff_merge x = x
    val op diff_merge =
    DT(((("fmapal",103),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",[15,25,36,51,52,53,54,58,63,93,96,104,105,107,124]),
         ("combin",[19]),("fmapal",[100,101]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[20])]),["DISK_THM"]),
       [read"%296%260%88%333%530$0@%412@%407@@%412@|@@%296%257%106%260%88%219%72%218%45%333%530$2@%370%261$0@$1@@$3@@%407@@%370%261$0@$1@@$3@@|@|@|@|@@%296%218%213%252%113%260%88%333%530$0@%412@%366$2@$1@@@%412@|@|@|@@%218%213%252%113%257%106%260%88%219%72%218%45%333%530$2@%370%261$0@$1@@$3@@%366$5@$4@@@%529%489$2@$0@$5@@%370%261$0@$1@@%530$2@$3@%366$5@$4@@@@%530$2@$3@$4@@%530$2@%370%261$0@$1@@$3@@$4@@@|@|@|@|@|@|@@@@"])
  fun op ORL_DRESTRICT_COMPL_IMP x = x
    val op ORL_DRESTRICT_COMPL_IMP =
    DT(((("fmapal",104),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,73,74,75,
          83,84,93,96,99,100,104,105,107,124,129,147]),("combin",[8,19]),
         ("enumeral",[47]),
         ("finite_map",[15,16,17,24,30,35,44,77,78,79,110,143,146]),
         ("fmapal",[0,1,9,10,37,65,92,100,101,102]),
         ("list",[6,7,23,25,29,43,120,173,233,240]),("numeral",[3,5,7,8]),
         ("option",[6,14,16,25]),("pair",[3,4,7,8,9,16,33,49]),
         ("pred_set",[0,3,10,12,45,67,80,286]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("res_quan",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[17,20,21,29,42,43,45,48,51,56])]),["DISK_THM"]),
       [read"%260%88%257%106%338%422$1@$0@@%252%113%338%419$2@$0@@%296%422$2@%530$2@$1@$0@@@%303%532%530$2@$1@$0@@@%371%532$1@@%361%402$0@@@@@@|@@|@|@"])
  fun op FMAPAL_fmap x = x
    val op FMAPAL_fmap =
    DT(((("fmapal",105),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("basicSize",[4]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,71,74,75,
          83,84,93,95,96,99,100,101,104,105,107,109,124,129,145,147]),
         ("combin",[8,12,19]),
         ("enumeral",
         [7,14,34,47,51,52,53,57,64,65,72,73,74,75,79,80,81,82,87]),
         ("finite_map",
         [11,15,16,17,24,30,35,44,45,46,48,51,52,58,60,61,62,64,77,78,79,
          110,144,146]),
         ("fmapal",
         [0,1,4,9,10,14,15,16,17,19,20,23,24,25,27,28,29,33,34,35,37,38,39,
          44,45,46,47,48,49,50,53,54,57,58,61,62,65,91]),
         ("list",[6,7,9,10,20,23,25,43,46,48,49,55,56,58,104,120,173,174]),
         ("numeral",[3,5,7,8]),("option",[6,7,10,11,13,25]),
         ("pair",[3,4,7,8,9,16,33,49]),
         ("pred_set",[0,3,6,10,18,33,45,49,55,80,131,428]),
         ("prim_rec",[42]),("relation",[107,113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("toto",[17,19,20,21,29,42,43,45,48,51,54,56])]),["DISK_THM"]),
       [read"%260%88%257%106%303%532$0@@%378$1@%552%538$1@$0@@@@|@|@"])
  fun op ORL_FMAPAL x = x
    val op ORL_FMAPAL =
    DT(((("fmapal",106),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,75,83,93,
          96,104,105,107,124,129,147]),("combin",[19]),
         ("enumeral",[7,14,34,47,72,73,74,75,79,80,81,82,87]),
         ("finite_map",
         [15,16,35,44,45,46,48,51,52,58,60,61,62,64,144,146]),
         ("fmapal",
         [0,1,38,39,44,45,46,47,48,49,50,53,54,57,58,61,62,65,91]),
         ("list",[6,7,23,25,43,56,58,104,120,173,174]),("numeral",[3,7,8]),
         ("pair",[3,4,7,8,9,16,33,49]),
         ("pred_set",[3,6,10,18,33,45,49,55,80,131,428]),("prim_rec",[42]),
         ("relation",[107,113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("toto",[54,56])]),["DISK_THM"]),
       [read"%260%88%257%106%338%422$1@$0@@%303%532$0@@%378$1@%552$0@@@@|@|@"])
  fun op ORWL_FUNION_THM x = x
    val op ORWL_FUNION_THM =
    DT(((("fmapal",107),
        [("bool",[25,53,54,55,58,63,83,99,100]),("fmapal",[83,93]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%260%88%224%124%257%106%224%126%257%114%338%296%434$4@$3@$2@@%434$4@$1@$0@@@%434$4@%381$3@$1@@%553$4@$2@$0@@@|@|@|@|@|@"])
  fun op ORWL_DRESTRICT_THM x = x
    val op ORWL_DRESTRICT_THM =
    DT(((("fmapal",108),
        [("bool",[25,53,54,55,58,63,83,99,100]),("enumeral",[92]),
         ("fmapal",[83,99]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%260%88%224%124%257%106%226%127%252%113%338%296%434$4@$3@$2@@%435$4@$1@$0@@@%434$4@%371$3@$1@@%539$4@$2@$0@@@|@|@|@|@|@"])
  fun op ORWL_DRESTRICT_COMPL_THM x = x
    val op ORWL_DRESTRICT_COMPL_THM =
    DT(((("fmapal",109),
        [("bool",[25,53,54,55,58,63,83,99,100]),("enumeral",[92]),
         ("fmapal",[83,104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%260%88%224%124%257%106%226%127%252%113%338%296%434$4@$3@$2@@%435$4@$1@$0@@@%434$4@%371$3@%361$1@@@%530$4@$2@$0@@@|@|@|@|@|@"])
  fun op o_f_bt_map x = x
    val op o_f_bt_map =
    DT(((("fmapal",111),
        [("bool",[14,25,26,27,51,53,56,58,63,105,124]),("combin",[8]),
         ("enumeral",[14,32,72]),("finite_map",[35,91,92,93,94]),
         ("fmapal",[43,47,48,94,110]),("pair",[7,8,16,33]),
         ("pred_set",[10]),("toto",[17,21])]),["DISK_THM"]),
       [read"%260%88%228%95%223%125%304%566$1@%378$2@$0@@@%379$2@%501%360$1@@$0@@@|@|@|@"])
  fun op FAPPLY_fmap_NIL x = x
    val op FAPPLY_fmap_NIL =
    DT(((("fmapal",112),
        [("bool",[25,56]),("finite_map",[144]),("fmapal",[65]),
         ("list",[173])]),["DISK_THM"]),
       [read"%218%191%298%375%532%412@@$0@@%375%377@$0@@|@"])
  fun op FAPPLY_fmap_CONS x = x
    val op FAPPLY_fmap_CONS =
    DT(((("fmapal",113),
        [("bool",[25,36,56,58,105,129]),("finite_map",[17,143,146]),
         ("fmapal",[65]),("list",[29,173])]),["DISK_THM"]),
       [read"%218%191%218%213%219%216%257%106%298%375%532%370%261$2@$1@@$0@@@$3@@%362%297$3@$2@@$1@%375%532$0@@$3@@@|@|@|@|@"])
  fun op o_f_fmap x = x
    val op o_f_fmap =
    DT(((("fmapal",114),
        [("bool",[14,25,26,27,30,36,48,51,53,54,55,56,63,64,99]),
         ("finite_map",[16,17,35,93,94,95,126,129,137,143,144,146]),
         ("fmapal",[65,110]),("list",[23,29,43,173]),("pair",[7,16,33]),
         ("pred_set",[80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%228%95%257%106%304%566$1@%532$0@@@%533%406%360$1@@$0@@@|@|@"])
  fun op ORL_bt_lb_ub_ind x = x
    val op ORL_bt_lb_ub_ind =
    DT(((("fmapal",117),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%238%12%338%296%260%88%218%109%218%128$3$2@$1@%563@$0@|@|@|@@%260%88%218%109%223%102%218%191%219%214%223%123%218%128%338%296$7$6@$5@$4@$3@@$7$6@$3@$1@$0@@@$7$6@$5@%560$4@%261$3@$2@@$1@@$0@@|@|@|@|@|@|@|@@@%260%136%218%137%223%158%218%165$4$3@$2@$1@$0@|@|@|@|@@|@"])
  fun op ORL_bt_lb_ub x = x
    val op ORL_bt_lb_ub =
    DT(((("fmapal",118),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("enumeral",[7,34]),("fmapal",[115,116]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%128%218%109%260%88%299%426$0@$1@%563@$2@@%302%489$0@$1@$2@@%398@@|@|@|@@%219%214%218%191%218%128%223%123%218%109%223%102%260%88%299%426$0@$2@%560$1@%261$5@$6@@$3@@$4@@%296%426$0@$2@$1@$5@@%426$0@$5@$3@$4@@@|@|@|@|@|@|@|@@"])
  fun op ORL_bt_lb_ind x = x
    val op ORL_bt_lb_ind =
    DT(((("fmapal",121),
        [("arithmetic",[22,24,25,26,27,46,59,71,93,173]),
         ("bool",[25,27,36,53,54,58,63,104]),("enumeral",[7,12]),
         ("numeral",[3,8]),("pair",[5,7,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%237%11%338%296%260%88%218%109$2$1@$0@%563@|@|@@%260%88%218%109%223%102%218%191%219%214%223%123%338$6$5@$2@$0@@$6$5@$4@%560$3@%261$2@$1@@$0@@@|@|@|@|@|@|@@@%260%136%218%137%223%158$3$2@$1@$0@|@|@|@@|@"])
  fun op ORL_bt_lb x = x
    val op ORL_bt_lb =
    DT(((("fmapal",122),
        [("arithmetic",[22,24,25,26,27,46,59,71,93,173]),
         ("bool",[15,25,36,54,58,63,104]),("combin",[19]),
         ("enumeral",[7,34]),("fmapal",[119,120]),("numeral",[3,8]),
         ("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126])]),["DISK_THM"]),
       [read"%296%218%109%260%88%299%424$0@$1@%563@@%441@|@|@@%219%214%218%191%223%123%218%109%223%102%260%88%299%424$0@$2@%560$1@%261$4@$5@@$3@@@%296%426$0@$2@$1@$4@@%424$0@$4@$3@@@|@|@|@|@|@|@@"])
  fun op ORL_bt_ub_ind x = x
    val op ORL_bt_ub_ind =
    DT(((("fmapal",125),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%243%17%338%296%260%88%218%128$2$1@%563@$0@|@|@@%260%88%223%102%218%191%219%214%223%123%218%128%338$6$5@$4@$3@@$6$5@%560$4@%261$3@$2@@$1@@$0@@|@|@|@|@|@|@@@%260%136%223%140%218%156$3$2@$1@$0@|@|@|@@|@"])
  fun op ORL_bt_ub x = x
    val op ORL_bt_ub =
    DT(((("fmapal",126),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("enumeral",[7,34]),("fmapal",[123,124]),("numeral",[3,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%218%128%260%88%299%429$0@%563@$1@@%441@|@|@@%219%214%218%191%218%128%223%123%223%102%260%88%299%429$0@%560$1@%261$4@$5@@$2@@$3@@%296%429$0@$1@$4@@%426$0@$4@$2@$3@@@|@|@|@|@|@|@@"])
  fun op ORL_bt_ind x = x
    val op ORL_bt_ind =
    DT(((("fmapal",129),
        [("bool",[25,27,53,54,63]),("enumeral",[12]),("pair",[5,16]),
         ("relation",[101,107]),("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%242%16%338%296%260%88$1$0@%563@|@@%260%88%223%102%218%191%219%214%223%123$5$4@%560$3@%261$2@$1@@$0@@|@|@|@|@|@@@%260%136%223%140$2$1@$0@|@|@@|@"])
  fun op ORL_bt x = x
    val op ORL_bt =
    DT(((("fmapal",130),
        [("bool",[15,58]),("combin",[19]),("enumeral",[34]),
         ("fmapal",[127,128]),("pair",[49]),
         ("relation",[107,126])]),["DISK_THM"]),
       [read"%296%299%423%88@%563@@%441@@%299%423%88@%560%102@%261%191@%214@@%123@@@%296%429%88@%102@%191@@%424%88@%191@%123@@@@"])
  fun op better_bt_to_orl x = x
    val op better_bt_to_orl =
    DT(((("fmapal",131),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,30,36,52,53,54,55,56,58,63,64,93,96,104,105,107,
          109,124,129]),("combin",[19]),("enumeral",[7,14,34,38,40]),
         ("fmapal",
         [49,50,53,54,57,58,61,62,66,67,68,71,72,75,76,79,80,115,116,119,
          120,123,124,127,128]),("list",[20,55,56,104]),("numeral",[3,8]),
         ("pair",[7,8,9,16,33,49]),("prim_rec",[42]),
         ("relation",[107,113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("toto",[56])]),["DISK_THM"]),
       [read"%260%88%223%125%333%509$1@$0@@%364%423$1@$0@@%508$0@%412@@%510$1@$0@%412@@@|@|@"])
  fun op list_rplacv_cn_ind x = x
    val op list_rplacv_cn_ind =
    DT(((("fmapal",134),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%235%10%338%296%218%191%219%214%234%90$3%261$2@$1@@%412@$0@|@|@|@@%218%191%219%214%218%190%219%216%257%106%234%90%338%338%628%297$5@$3@@@$6%261$5@$4@@$1@%114$1%370%261$4@$3@@$0@@|@@@$6%261$5@$4@@%370%261$3@$2@@$1@@$0@@|@|@|@|@|@|@@@%218%129%219%138%257%161%234%167$4%261$3@$2@@$1@$0@|@|@|@|@@|@"])
  fun op list_rplacv_cn x = x
    val op list_rplacv_cn =
    DT(((("fmapal",135),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("fmapal",[132,133]),("list",[6,7]),
         ("numeral",[3,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%296%219%214%218%191%234%90%333%550%261$1@$2@@%412@$0@@%412@|@|@|@@%219%216%219%214%218%191%218%190%257%106%234%90%333%550%261$3@$4@@%370%261$2@$5@@$1@@$0@@%364%297$3@$2@@$0%370%261$3@$4@@$1@@@%550%261$3@$4@@$1@%114$1%370%261$3@$6@@$0@@|@@@|@|@|@|@|@|@@"])
  fun op fmap_FDOM_rec x = x
    val op fmap_FDOM_rec =
    DT(((("fmapal",136),
        [("bool",[25,26,27,54,56,58,63]),("fmapal",[92]),("list",[23,25]),
         ("pair",[8]),("pred_set",[10,80])]),["DISK_THM"]),
       [read"%296%218%191%299%395$0@%376%532%412@@@@%374@|@@%218%191%218%190%219%216%257%106%299%395$3@%376%532%370%261$2@$1@@$0@@@@@%488%297$3@$2@@%395$3@%376%532$0@@@@@|@|@|@|@@"])
  fun op list_rplacv_thm x = x
    val op list_rplacv_thm =
    DT(((("fmapal",137),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [5,14,15,25,26,27,30,32,36,51,52,53,54,55,56,58,63,64,93,96,99,
          101,104,105,107,124,129,147]),("combin",[8,19]),
         ("finite_map",[13,14,143,146]),("fmapal",[65,92,132,133,136]),
         ("list",[6,7,20,23,25,29,43,48,49,173]),("numeral",[3,7,8]),
         ("pair",[4,7,8,9,16,33,49]),("pred_set",[10]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%218%191%219%214%257%106%401%70%363%333$0@%412@@%628%395$3@%376%532$1@@@@@%296%395$3@%376%532$1@@@@%303%383%532$1@@%261$3@$2@@@%532$0@@@@|@%550%261$2@$1@@$0@%114$0|@@|@|@|@"])
  fun op bt_rplacv_cn_ind x = x
    val op bt_rplacv_cn_ind =
    DT(((("fmapal",140),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("enumeral",[7,12]),("numeral",[3,8]),("pair",[5,7,8,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%251%25%338%296%260%88%218%191%219%214%230%89$4$3@%261$2@$1@@%563@$0@|@|@|@|@@%260%88%218%191%219%214%223%102%218%190%219%216%223%123%230%89%338%296%338%302%489$7@$6@$3@@%385@@$8$7@%261$6@$5@@$1@%112$1%560$5@%261$4@$3@@$0@@|@@@%338%302%489$7@$6@$3@@%398@@$8$7@%261$6@$5@@$4@%112$1%560$0@%261$4@$3@@$2@@|@@@@$8$7@%261$6@$5@@%560$4@%261$3@$2@@$1@@$0@@|@|@|@|@|@|@|@|@@@%260%136%218%137%219%157%223%166%230%178$5$4@%261$3@$2@@$1@$0@|@|@|@|@|@@|@"])
  fun op bt_rplacv_cn x = x
    val op bt_rplacv_cn =
    DT(((("fmapal",141),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("combin",[19]),("enumeral",[7,34]),("fmapal",[138,139]),
         ("numeral",[3,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("toto",[20])]),["DISK_THM"]),
       [read"%296%219%214%218%191%230%89%260%88%301%502$0@%261$2@$3@@%563@$1@@%563@|@|@|@|@@%219%216%219%214%218%191%218%190%223%123%223%102%230%89%260%88%301%502$0@%261$5@$6@@%560$2@%261$4@$7@@$3@@$1@@%528%489$0@$5@$4@@%502$0@%261$5@$6@@$2@%112$2%560$0@%261$5@$8@@$4@@|@@$1%560$2@%261$5@$6@@$3@@@%502$0@%261$5@$6@@$3@%112$2%560$3@%261$5@$8@@$0@@|@@@|@|@|@|@|@|@|@|@@"])
  fun op bt_rplacv_thm x = x
    val op bt_rplacv_thm =
    DT(((("fmapal",142),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",
         [5,14,15,25,26,27,30,32,36,51,52,53,54,55,56,58,63,64,93,96,99,
          101,104,105,107,109,124,129,147]),("combin",[8,19]),
         ("enumeral",[7,14,32,33,34]),
         ("finite_map",[14,15,16,46,48,62,63,64]),
         ("fmapal",[38,39,94,138,139]),("numeral",[3,8]),
         ("pair",[3,4,7,8,9,16,33,49]),("pred_set",[6,10,33,45,80]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("toto",[17,19,20,21,43,48,51])]),["DISK_THM"]),
       [read"%260%88%218%191%219%214%223%125%400%69%363%301$0@%563@@%628%395$3@%376%378$4@$1@@@@@%296%395$3@%376%378$4@$1@@@@%303%383%378$4@$1@@%261$3@$2@@@%378$4@$0@@@@|@%502$3@%261$2@$1@@$0@%112$0|@@|@|@|@|@"])
  fun op FUN_fmap_thm x = x
    val op FUN_fmap_thm =
    DT(((("fmapal",143),
        [("bool",[14,25,26,27,30,36,51,56,58,63,64,105,124]),
         ("finite_map",[11,16,17,35,110,111,143,144,146]),("fmapal",[65]),
         ("list",[23,29,43,120,173,233,240]),
         ("pred_set",[80])]),["DISK_THM"]),
       [read"%225%93%252%103%303%532%404%191%261$0@$2$0@@|@$0@@@%382$1@%402$0@@@|@|@"])
  fun op fmap_ORWL_thm x = x
    val op fmap_ORWL_thm =
    DT(((("fmapal",144),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("basicSize",[4]),
         ("bool",
         [2,14,15,25,26,27,30,36,37,48,51,52,53,54,55,56,58,63,64,71,74,75,
          83,84,93,95,96,99,100,101,104,105,107,109,124,129,145,147]),
         ("combin",[8,12,19]),("enumeral",[47,51,52,53,57,64,65]),
         ("finite_map",[11,15,16,17,24,30,35,77,78,79,110,144,146]),
         ("fmapal",
         [0,1,4,9,10,14,15,16,17,19,20,23,24,25,27,28,29,33,34,35,37,65,
          83]),("list",[6,7,9,10,20,23,25,43,46,48,49,55,56,120,173]),
         ("numeral",[3,5,7,8]),("option",[6,7,10,11,13,25]),
         ("pair",[3,4,7,8,9,16,33,49]),("pred_set",[0,3,10,80]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("toto",[17,19,20,21,29,42,43,45,48,51,56])]),["DISK_THM"]),
       [read"%260%88%257%106%434$1@%532$0@@%538$1@$0@@|@|@"])
  end
  val _ = DB.bindl "fmapal"
  [("ORL_tupled_primitive",ORL_tupled_primitive,DB.Def),
   ("ORL_curried",ORL_curried,DB.Def), ("optry",optry,DB.Def),
   ("optry_list_tupled_primitive",optry_list_tupled_primitive,DB.Def),
   ("optry_list_curried",optry_list_curried,DB.Def),
   ("assocv_tupled_primitive",assocv_tupled_primitive,DB.Def),
   ("assocv_curried",assocv_curried,DB.Def), ("vcossa",vcossa,DB.Def),
   ("OPTION_UPDATE",OPTION_UPDATE,DB.Def),
   ("merge_tupled_primitive",merge_tupled_primitive,DB.Def),
   ("merge_curried",merge_curried,DB.Def),
   ("incr_merge_tupled_primitive",incr_merge_tupled_primitive,DB.Def),
   ("incr_merge_curried",incr_merge_curried,DB.Def),
   ("ORL_sublists_tupled_primitive",ORL_sublists_tupled_primitive,DB.Def),
   ("ORL_sublists_curried",ORL_sublists_curried,DB.Def),
   ("incr_build",incr_build,DB.Def),
   ("merge_out_tupled_primitive",merge_out_tupled_primitive,DB.Def),
   ("merge_out_curried",merge_out_curried,DB.Def),
   ("incr_flat",incr_flat,DB.Def), ("incr_sort",incr_sort,DB.Def),
   ("OPTION_FLAT_primitive",OPTION_FLAT_primitive,DB.Def),
   ("unlookup",unlookup,DB.Def),
   ("bt_to_fmap_tupled_primitive",bt_to_fmap_tupled_primitive,DB.Def),
   ("bt_to_fmap_curried",bt_to_fmap_curried,DB.Def),
   ("bt_to_fmap_lb",bt_to_fmap_lb,DB.Def),
   ("bt_to_fmap_ub",bt_to_fmap_ub,DB.Def),
   ("bt_to_fmap_lb_ub",bt_to_fmap_lb_ub,DB.Def), ("bt_map",bt_map,DB.Def),
   ("bt_to_orl_lb_ub_tupled_primitive",
    bt_to_orl_lb_ub_tupled_primitive,
    DB.Def), ("bt_to_orl_lb_ub_curried",bt_to_orl_lb_ub_curried,DB.Def),
   ("bt_to_orl_lb_tupled_primitive",bt_to_orl_lb_tupled_primitive,DB.Def),
   ("bt_to_orl_lb_curried",bt_to_orl_lb_curried,DB.Def),
   ("bt_to_orl_ub_tupled_primitive",bt_to_orl_ub_tupled_primitive,DB.Def),
   ("bt_to_orl_ub_curried",bt_to_orl_ub_curried,DB.Def),
   ("bt_to_orl_tupled_primitive",bt_to_orl_tupled_primitive,DB.Def),
   ("bt_to_orl_curried",bt_to_orl_curried,DB.Def), ("fmap",fmap,DB.Def),
   ("bt_to_orl_lb_ub_ac_tupled_AUX",bt_to_orl_lb_ub_ac_tupled_AUX,DB.Def),
   ("bt_to_orl_lb_ub_ac_tupled_primitive",
    bt_to_orl_lb_ub_ac_tupled_primitive,
    DB.Def),
   ("bt_to_orl_lb_ub_ac_curried",bt_to_orl_lb_ub_ac_curried,DB.Def),
   ("bt_to_orl_lb_ac_tupled_primitive",
    bt_to_orl_lb_ac_tupled_primitive,
    DB.Def), ("bt_to_orl_lb_ac_curried",bt_to_orl_lb_ac_curried,DB.Def),
   ("bt_to_orl_ub_ac_tupled_primitive",
    bt_to_orl_ub_ac_tupled_primitive,
    DB.Def), ("bt_to_orl_ub_ac_curried",bt_to_orl_ub_ac_curried,DB.Def),
   ("bt_to_orl_ac_tupled_primitive",bt_to_orl_ac_tupled_primitive,DB.Def),
   ("bt_to_orl_ac_curried",bt_to_orl_ac_curried,DB.Def),
   ("ORWL",ORWL,DB.Def), ("OFU",OFU,DB.Def), ("UFO",UFO,DB.Def),
   ("bl_to_fmap_tupled_primitive",bl_to_fmap_tupled_primitive,DB.Def),
   ("bl_to_fmap_curried",bl_to_fmap_curried,DB.Def),
   ("inter_merge_tupled_primitive",inter_merge_tupled_primitive,DB.Def),
   ("inter_merge_curried",inter_merge_curried,DB.Def),
   ("diff_merge_tupled_primitive",diff_merge_tupled_primitive,DB.Def),
   ("diff_merge_curried",diff_merge_curried,DB.Def),
   ("AP_SND",AP_SND,DB.Def),
   ("ORL_bt_lb_ub_tupled_primitive",ORL_bt_lb_ub_tupled_primitive,DB.Def),
   ("ORL_bt_lb_ub_curried",ORL_bt_lb_ub_curried,DB.Def),
   ("ORL_bt_lb_tupled_primitive",ORL_bt_lb_tupled_primitive,DB.Def),
   ("ORL_bt_lb_curried",ORL_bt_lb_curried,DB.Def),
   ("ORL_bt_ub_tupled_primitive",ORL_bt_ub_tupled_primitive,DB.Def),
   ("ORL_bt_ub_curried",ORL_bt_ub_curried,DB.Def),
   ("ORL_bt_tupled_primitive",ORL_bt_tupled_primitive,DB.Def),
   ("ORL_bt_curried",ORL_bt_curried,DB.Def),
   ("list_rplacv_cn_tupled_primitive",
    list_rplacv_cn_tupled_primitive,
    DB.Def), ("list_rplacv_cn_curried",list_rplacv_cn_curried,DB.Def),
   ("bt_rplacv_cn_tupled_primitive",bt_rplacv_cn_tupled_primitive,DB.Def),
   ("bt_rplacv_cn_curried",bt_rplacv_cn_curried,DB.Def),
   ("ORL_ind",ORL_ind,DB.Thm), ("ORL",ORL,DB.Thm),
   ("optry_list_ind",optry_list_ind,DB.Thm),
   ("optry_list",optry_list,DB.Thm), ("assocv_ind",assocv_ind,DB.Thm),
   ("assocv",assocv,DB.Thm), ("merge_ind",merge_ind,DB.Thm),
   ("merge",merge,DB.Thm), ("incr_merge_ind",incr_merge_ind,DB.Thm),
   ("incr_merge",incr_merge,DB.Thm),
   ("ORL_sublists_ind",ORL_sublists_ind,DB.Thm),
   ("ORL_sublists",ORL_sublists,DB.Thm),
   ("merge_out_ind",merge_out_ind,DB.Thm), ("merge_out",merge_out,DB.Thm),
   ("OPTION_FLAT_ind",OPTION_FLAT_ind,DB.Thm),
   ("OPTION_FLAT",OPTION_FLAT,DB.Thm),
   ("bt_to_fmap_ind",bt_to_fmap_ind,DB.Thm),
   ("bt_to_fmap",bt_to_fmap,DB.Thm), ("FAPPLY_nt",FAPPLY_nt,DB.Thm),
   ("FAPPLY_node",FAPPLY_node,DB.Thm), ("bt_FST_FDOM",bt_FST_FDOM,DB.Thm),
   ("bt_to_orl_lb_ub_ind",bt_to_orl_lb_ub_ind,DB.Thm),
   ("bt_to_orl_lb_ub",bt_to_orl_lb_ub,DB.Thm),
   ("bt_to_orl_lb_ind",bt_to_orl_lb_ind,DB.Thm),
   ("bt_to_orl_lb",bt_to_orl_lb,DB.Thm),
   ("bt_to_orl_ub_ind",bt_to_orl_ub_ind,DB.Thm),
   ("bt_to_orl_ub",bt_to_orl_ub,DB.Thm),
   ("bt_to_orl_ind",bt_to_orl_ind,DB.Thm), ("bt_to_orl",bt_to_orl,DB.Thm),
   ("bt_to_orl_lb_ub_ac_ind",bt_to_orl_lb_ub_ac_ind,DB.Thm),
   ("bt_to_orl_lb_ub_ac",bt_to_orl_lb_ub_ac,DB.Thm),
   ("bt_to_orl_lb_ac_ind",bt_to_orl_lb_ac_ind,DB.Thm),
   ("bt_to_orl_lb_ac",bt_to_orl_lb_ac,DB.Thm),
   ("bt_to_orl_ub_ac_ind",bt_to_orl_ub_ac_ind,DB.Thm),
   ("bt_to_orl_ub_ac",bt_to_orl_ub_ac,DB.Thm),
   ("bt_to_orl_ac_ind",bt_to_orl_ac_ind,DB.Thm),
   ("bt_to_orl_ac",bt_to_orl_ac,DB.Thm),
   ("ORWL_bt_to_orl",ORWL_bt_to_orl,DB.Thm),
   ("bl_to_fmap_ind",bl_to_fmap_ind,DB.Thm),
   ("bl_to_fmap",bl_to_fmap,DB.Thm),
   ("bt_to_orl_ID_IMP",bt_to_orl_ID_IMP,DB.Thm),
   ("fmap_FDOM",fmap_FDOM,DB.Thm),
   ("ORL_FUNION_IMP",ORL_FUNION_IMP,DB.Thm),
   ("FMAPAL_FDOM_THM",FMAPAL_FDOM_THM,DB.Thm),
   ("inter_merge_ind",inter_merge_ind,DB.Thm),
   ("inter_merge",inter_merge,DB.Thm),
   ("ORL_DRESTRICT_IMP",ORL_DRESTRICT_IMP,DB.Thm),
   ("diff_merge_ind",diff_merge_ind,DB.Thm),
   ("diff_merge",diff_merge,DB.Thm),
   ("ORL_DRESTRICT_COMPL_IMP",ORL_DRESTRICT_COMPL_IMP,DB.Thm),
   ("FMAPAL_fmap",FMAPAL_fmap,DB.Thm), ("ORL_FMAPAL",ORL_FMAPAL,DB.Thm),
   ("ORWL_FUNION_THM",ORWL_FUNION_THM,DB.Thm),
   ("ORWL_DRESTRICT_THM",ORWL_DRESTRICT_THM,DB.Thm),
   ("ORWL_DRESTRICT_COMPL_THM",ORWL_DRESTRICT_COMPL_THM,DB.Thm),
   ("o_f_bt_map",o_f_bt_map,DB.Thm),
   ("FAPPLY_fmap_NIL",FAPPLY_fmap_NIL,DB.Thm),
   ("FAPPLY_fmap_CONS",FAPPLY_fmap_CONS,DB.Thm),
   ("o_f_fmap",o_f_fmap,DB.Thm),
   ("ORL_bt_lb_ub_ind",ORL_bt_lb_ub_ind,DB.Thm),
   ("ORL_bt_lb_ub",ORL_bt_lb_ub,DB.Thm),
   ("ORL_bt_lb_ind",ORL_bt_lb_ind,DB.Thm), ("ORL_bt_lb",ORL_bt_lb,DB.Thm),
   ("ORL_bt_ub_ind",ORL_bt_ub_ind,DB.Thm), ("ORL_bt_ub",ORL_bt_ub,DB.Thm),
   ("ORL_bt_ind",ORL_bt_ind,DB.Thm), ("ORL_bt",ORL_bt,DB.Thm),
   ("better_bt_to_orl",better_bt_to_orl,DB.Thm),
   ("list_rplacv_cn_ind",list_rplacv_cn_ind,DB.Thm),
   ("list_rplacv_cn",list_rplacv_cn,DB.Thm),
   ("fmap_FDOM_rec",fmap_FDOM_rec,DB.Thm),
   ("list_rplacv_thm",list_rplacv_thm,DB.Thm),
   ("bt_rplacv_cn_ind",bt_rplacv_cn_ind,DB.Thm),
   ("bt_rplacv_cn",bt_rplacv_cn,DB.Thm),
   ("bt_rplacv_thm",bt_rplacv_thm,DB.Thm),
   ("FUN_fmap_thm",FUN_fmap_thm,DB.Thm),
   ("fmap_ORWL_thm",fmap_ORWL_thm,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("enumeralTheory.enumeral_grammars",
                          enumeralTheory.enumeral_grammars),
                         ("finite_mapTheory.finite_map_grammars",
                          finite_mapTheory.finite_map_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF (temp_set_fixity "FUNION"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_tupled", (Term.prim_mk_const { Name = "ORL_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_tupled", (Term.prim_mk_const { Name = "ORL_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL", (Term.prim_mk_const { Name = "ORL", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL", (Term.prim_mk_const { Name = "ORL", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optry", (Term.prim_mk_const { Name = "optry", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optry_list_tupled", (Term.prim_mk_const { Name = "optry_list_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optry_list_tupled", (Term.prim_mk_const { Name = "optry_list_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optry_list", (Term.prim_mk_const { Name = "optry_list", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("optry_list", (Term.prim_mk_const { Name = "optry_list", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("assocv_tupled", (Term.prim_mk_const { Name = "assocv_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("assocv_tupled", (Term.prim_mk_const { Name = "assocv_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("assocv", (Term.prim_mk_const { Name = "assocv", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("assocv", (Term.prim_mk_const { Name = "assocv", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("vcossa", (Term.prim_mk_const { Name = "vcossa", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("vcossa", (Term.prim_mk_const { Name = "vcossa", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_UPDATE", (Term.prim_mk_const { Name = "OPTION_UPDATE", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_UPDATE", (Term.prim_mk_const { Name = "OPTION_UPDATE", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge_tupled", (Term.prim_mk_const { Name = "merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge_tupled", (Term.prim_mk_const { Name = "merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge", (Term.prim_mk_const { Name = "merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge", (Term.prim_mk_const { Name = "merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_merge_tupled", (Term.prim_mk_const { Name = "incr_merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_merge_tupled", (Term.prim_mk_const { Name = "incr_merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_merge", (Term.prim_mk_const { Name = "incr_merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_merge", (Term.prim_mk_const { Name = "incr_merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_sublists_tupled", (Term.prim_mk_const { Name = "ORL_sublists_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_sublists_tupled", (Term.prim_mk_const { Name = "ORL_sublists_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_sublists", (Term.prim_mk_const { Name = "ORL_sublists", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_sublists", (Term.prim_mk_const { Name = "ORL_sublists", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_build", (Term.prim_mk_const { Name = "incr_build", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge_out_tupled", (Term.prim_mk_const { Name = "merge_out_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge_out_tupled", (Term.prim_mk_const { Name = "merge_out_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge_out", (Term.prim_mk_const { Name = "merge_out", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("merge_out", (Term.prim_mk_const { Name = "merge_out", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_flat", (Term.prim_mk_const { Name = "incr_flat", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_flat", (Term.prim_mk_const { Name = "incr_flat", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_sort", (Term.prim_mk_const { Name = "incr_sort", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("incr_sort", (Term.prim_mk_const { Name = "incr_sort", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_FLAT", (Term.prim_mk_const { Name = "OPTION_FLAT", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OPTION_FLAT", (Term.prim_mk_const { Name = "OPTION_FLAT", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("unlookup", (Term.prim_mk_const { Name = "unlookup", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("unlookup", (Term.prim_mk_const { Name = "unlookup", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_tupled", (Term.prim_mk_const { Name = "bt_to_fmap_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_tupled", (Term.prim_mk_const { Name = "bt_to_fmap_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMAPAL", (Term.prim_mk_const { Name = "FMAPAL", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMAPAL", (Term.prim_mk_const { Name = "FMAPAL", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_lb", (Term.prim_mk_const { Name = "bt_to_fmap_lb", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_lb", (Term.prim_mk_const { Name = "bt_to_fmap_lb", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_ub", (Term.prim_mk_const { Name = "bt_to_fmap_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_ub", (Term.prim_mk_const { Name = "bt_to_fmap_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_lb_ub", (Term.prim_mk_const { Name = "bt_to_fmap_lb_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_fmap_lb_ub", (Term.prim_mk_const { Name = "bt_to_fmap_lb_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_map", (Term.prim_mk_const { Name = "bt_map", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb", (Term.prim_mk_const { Name = "bt_to_orl_lb", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb", (Term.prim_mk_const { Name = "bt_to_orl_lb", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub_tupled", (Term.prim_mk_const { Name = "bt_to_orl_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub_tupled", (Term.prim_mk_const { Name = "bt_to_orl_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub", (Term.prim_mk_const { Name = "bt_to_orl_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub", (Term.prim_mk_const { Name = "bt_to_orl_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_tupled", (Term.prim_mk_const { Name = "bt_to_orl_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_tupled", (Term.prim_mk_const { Name = "bt_to_orl_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl", (Term.prim_mk_const { Name = "bt_to_orl", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl", (Term.prim_mk_const { Name = "bt_to_orl", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap", (Term.prim_mk_const { Name = "fmap", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap", (Term.prim_mk_const { Name = "fmap", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_ac_tupled_aux", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_ac_tupled_aux", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_ac_tupled_aux", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_ac_tupled_aux", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_ac", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ub_ac", (Term.prim_mk_const { Name = "bt_to_orl_lb_ub_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_lb_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ac", (Term.prim_mk_const { Name = "bt_to_orl_lb_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_lb_ac", (Term.prim_mk_const { Name = "bt_to_orl_lb_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_ub_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_ub_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub_ac", (Term.prim_mk_const { Name = "bt_to_orl_ub_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ub_ac", (Term.prim_mk_const { Name = "bt_to_orl_ub_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ac_tupled", (Term.prim_mk_const { Name = "bt_to_orl_ac_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ac", (Term.prim_mk_const { Name = "bt_to_orl_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_to_orl_ac", (Term.prim_mk_const { Name = "bt_to_orl_ac", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORWL", (Term.prim_mk_const { Name = "ORWL", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORWL", (Term.prim_mk_const { Name = "ORWL", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OFU", (Term.prim_mk_const { Name = "OFU", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OFU", (Term.prim_mk_const { Name = "OFU", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UFO", (Term.prim_mk_const { Name = "UFO", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UFO", (Term.prim_mk_const { Name = "UFO", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bl_to_fmap_tupled", (Term.prim_mk_const { Name = "bl_to_fmap_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bl_to_fmap_tupled", (Term.prim_mk_const { Name = "bl_to_fmap_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bl_to_fmap", (Term.prim_mk_const { Name = "bl_to_fmap", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bl_to_fmap", (Term.prim_mk_const { Name = "bl_to_fmap", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inter_merge_tupled", (Term.prim_mk_const { Name = "inter_merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inter_merge_tupled", (Term.prim_mk_const { Name = "inter_merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inter_merge", (Term.prim_mk_const { Name = "inter_merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("inter_merge", (Term.prim_mk_const { Name = "inter_merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diff_merge_tupled", (Term.prim_mk_const { Name = "diff_merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diff_merge_tupled", (Term.prim_mk_const { Name = "diff_merge_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diff_merge", (Term.prim_mk_const { Name = "diff_merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("diff_merge", (Term.prim_mk_const { Name = "diff_merge", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("AP_SND", (Term.prim_mk_const { Name = "AP_SND", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("AP_SND", (Term.prim_mk_const { Name = "AP_SND", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb_ub_tupled", (Term.prim_mk_const { Name = "ORL_bt_lb_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb_ub_tupled", (Term.prim_mk_const { Name = "ORL_bt_lb_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb_ub", (Term.prim_mk_const { Name = "ORL_bt_lb_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb_ub", (Term.prim_mk_const { Name = "ORL_bt_lb_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb_tupled", (Term.prim_mk_const { Name = "ORL_bt_lb_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb_tupled", (Term.prim_mk_const { Name = "ORL_bt_lb_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb", (Term.prim_mk_const { Name = "ORL_bt_lb", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_lb", (Term.prim_mk_const { Name = "ORL_bt_lb", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_ub_tupled", (Term.prim_mk_const { Name = "ORL_bt_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_ub_tupled", (Term.prim_mk_const { Name = "ORL_bt_ub_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_ub", (Term.prim_mk_const { Name = "ORL_bt_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_ub", (Term.prim_mk_const { Name = "ORL_bt_ub", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_tupled", (Term.prim_mk_const { Name = "ORL_bt_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt_tupled", (Term.prim_mk_const { Name = "ORL_bt_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt", (Term.prim_mk_const { Name = "ORL_bt", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ORL_bt", (Term.prim_mk_const { Name = "ORL_bt", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_rplacv_cn_tupled", (Term.prim_mk_const { Name = "list_rplacv_cn_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_rplacv_cn_tupled", (Term.prim_mk_const { Name = "list_rplacv_cn_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_rplacv_cn", (Term.prim_mk_const { Name = "list_rplacv_cn", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_rplacv_cn", (Term.prim_mk_const { Name = "list_rplacv_cn", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_rplacv_cn_tupled", (Term.prim_mk_const { Name = "bt_rplacv_cn_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_rplacv_cn_tupled", (Term.prim_mk_const { Name = "bt_rplacv_cn_tupled", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_rplacv_cn", (Term.prim_mk_const { Name = "bt_rplacv_cn", Thy = "fmapal"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bt_rplacv_cn", (Term.prim_mk_const { Name = "bt_rplacv_cn", Thy = "fmapal"}))
  val fmapal_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "fmapal",
    thydataty = "compute",
    data =
        "fmapal.ORL fmapal.ORL_bt fmapal.bt_rplacv_cn fmapal.list_rplacv_cn fmapal.ORL_bt_lb fmapal.ORL_bt_ub fmapal.ORL_bt_lb_ub fmapal.ORL_sublists fmapal.AP_SND fmapal.diff_merge fmapal.inter_merge fmapal.bl_to_fmap fmapal.UFO fmapal.OFU fmapal.ORWL fmapal.bt_to_orl_ac fmapal.bt_to_orl_ub_ac fmapal.bt_to_orl_lb_ac fmapal.bt_to_orl_lb_ub_ac fmapal.fmap fmapal.bt_to_orl fmapal.bt_to_orl_ub fmapal.bt_to_orl_lb fmapal.bt_to_orl_lb_ub fmapal.bt_map fmapal.bt_to_fmap_lb_ub fmapal.bt_to_fmap_ub fmapal.bt_to_fmap_lb fmapal.bt_to_fmap fmapal.unlookup fmapal.OPTION_FLAT fmapal.incr_sort fmapal.incr_flat fmapal.merge_out fmapal.incr_build fmapal.assocv fmapal.incr_merge fmapal.merge fmapal.OPTION_UPDATE fmapal.vcossa fmapal.optry fmapal.optry_list"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "fmapal"
end
