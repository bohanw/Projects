structure finite_mapTheory :> finite_mapTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading finite_mapTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open sortingTheory
  in end;
  val _ = Theory.link_parents
          ("finite_map",
          Arbnum.fromString "1488586927",
          Arbnum.fromString "430131")
          [("sorting",
           Arbnum.fromString "1488586715",
           Arbnum.fromString "45408")];
  val _ = Theory.incorporate_types "finite_map" [("fmap", 2)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("finite_map", "fmap"), ID("min", "bool"),
   ID("sum", "sum"), ID("one", "one"), ID("num", "num"),
   ID("list", "list"), ID("pair", "prod"), ID("option", "option"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("list", "ALL_DISTINCT"),
   ID("list", "APPEND"), ID("bool", "ARB"), ID("operator", "ASSOC"),
   ID("arithmetic", "BIT1"), ID("combin", "C"), ID("pred_set", "CARD"),
   ID("operator", "COMM"), ID("pred_set", "COMPL"), ID("bool", "COND"),
   ID("list", "CONS"), ID("pred_set", "DELETE"), ID("pred_set", "DIFF"),
   ID("pred_set", "DISJOINT"), ID("finite_map", "DRESTRICT"),
   ID("list", "EL"), ID("pred_set", "EMPTY"), ID("list", "EVERY"),
   ID("finite_map", "FAPPLY"), ID("finite_map", "FCARD"),
   ID("finite_map", "FDOM"), ID("finite_map", "FEMPTY"),
   ID("finite_map", "FEVERY"), ID("pred_set", "FINITE"),
   ID("finite_map", "FLOOKUP"), ID("finite_map", "FMAP_MAP2"),
   ID("finite_map", "FMERGE"), ID("list", "FOLDL"), ID("list", "FOLDL2"),
   ID("list", "FOLDR"), ID("finite_map", "FRANGE"), ID("pair", "FST"),
   ID("finite_map", "FUNION"), ID("finite_map", "FUN_FMAP"),
   ID("finite_map", "FUPDATE"), ID("finite_map", "FUPDATE_LIST"),
   ID("pred_set", "GSPEC"), ID("pred_set", "IMAGE"), ID("bool", "IN"),
   ID("pred_set", "INJ"), ID("sum", "INL"), ID("sum", "INR"),
   ID("pred_set", "INSERT"), ID("pred_set", "INTER"), ID("sum", "ISL"),
   ID("combin", "K"), ID("list", "LENGTH"), ID("bool", "LET"),
   ID("pred_set", "LINV"), ID("list", "LIST_REL"),
   ID("list", "LIST_TO_SET"), ID("list", "MAP"), ID("list", "MAP2"),
   ID("finite_map", "MAP_KEYS"), ID("list", "NIL"), ID("option", "NONE"),
   ID("arithmetic", "NUMERAL"), ID("option", "OPTREL"), ID("sum", "OUTL"),
   ID("sorting", "PERM"), ID("list", "REVERSE"),
   ID("finite_map", "RRESTRICT"), ID("pair", "SND"), ID("list", "SNOC"),
   ID("option", "SOME"), ID("finite_map", "SUBMAP"),
   ID("pred_set", "SUBSET"), ID("num", "SUC"), ID("pred_set", "SUM_IMAGE"),
   ID("bool", "TYPE_DEFINITION"), ID("pair", "UNCURRY"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"),
   ID("arithmetic", "ZERO"), ID("list", "ZIP"), ID("bool", "\\/"),
   ID("finite_map", "f_o"), ID("finite_map", "f_o_f"),
   ID("finite_map", "fdomsub"), ID("finite_map", "fmap_ABS"),
   ID("finite_map", "fmap_EQ_UPTO"), ID("finite_map", "fmap_REP"),
   ID("finite_map", "fmap_inverse"), ID("finite_map", "fmap_rel"),
   ID("finite_map", "fmap_size"), ID("finite_map", "is_fmap"),
   ID("combin", "o"), ID("finite_map", "o_f"), ID("option", "option_CASE"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'c", TYV "'a", TYOP [1, 1, 0], TYV "'b", TYOP [1, 1, 3],
   TYOP [0, 4, 2], TYOP [0, 3, 0], TYOP [0, 6, 5], TYOP [2], TYOP [4],
   TYOP [3, 3, 9], TYOP [0, 1, 10], TYOP [0, 11, 8], TYOP [5],
   TYOP [0, 4, 13], TYOP [0, 3, 13], TYOP [0, 15, 14], TYOP [0, 1, 13],
   TYOP [0, 17, 16], TYOP [1, 0, 3], TYOP [0, 19, 8], TYOP [1, 0, 1],
   TYOP [0, 21, 20], TYOP [0, 3, 8], TYOP [0, 1, 23], TYOP [0, 24, 22],
   TYOP [1, 3, 1], TYOP [0, 26, 8], TYOP [0, 4, 27], TYOP [0, 4, 11],
   TYOP [0, 1, 8], TYOP [0, 30, 8], TYOP [0, 4, 31], TYOP [0, 4, 32],
   TYOP [0, 11, 4], TYOP [0, 1, 4], TYOP [0, 4, 35], TYOP [1, 3, 0],
   TYOP [0, 37, 5], TYOP [0, 1, 3], TYOP [0, 39, 2], TYOP [0, 37, 40],
   TYOP [0, 4, 8], TYOP [0, 4, 42], TYOP [0, 23, 4], TYOP [0, 4, 44],
   TYOP [0, 2, 37], TYOP [0, 39, 46], TYOP [7, 1, 3], TYOP [6, 48],
   TYOP [0, 49, 4], TYOP [0, 4, 50], TYOP [0, 48, 4], TYOP [0, 4, 52],
   TYOP [0, 30, 4], TYOP [0, 39, 54], TYOP [0, 4, 4], TYOP [0, 4, 56],
   TYOP [0, 4, 23], TYOP [0, 26, 26], TYOP [0, 26, 59], TYOP [0, 1, 1],
   TYOP [0, 1, 61], TYOP [0, 62, 60], TYOP [0, 2, 4], TYOP [7, 1, 0],
   TYOP [0, 65, 3], TYOP [0, 66, 64], TYOP [8, 3], TYOP [0, 1, 68],
   TYOP [0, 4, 69], TYOP [0, 48, 8], TYOP [0, 71, 42], TYOP [0, 4, 30],
   TYOP [0, 4, 39], TYOP [0, 4, 54], TYOP [0, 0, 8], TYOP [0, 65, 8],
   TYOP [0, 1, 30], TYV "'d", TYOP [1, 0, 79], TYV "'e", TYOP [1, 79, 81],
   TYOP [6, 1], TYOP [6, 3], TYOP [7, 3, 0], TYOP [6, 85], TYOP [0, 1, 0],
   TYOP [0, 3, 3], TYOP [0, 3, 88], TYOP [0, 0, 1], TYOP [0, 0, 3],
   TYOP [0, 1, 6], TYOP [0, 0, 79], TYOP [0, 3, 93], TYOP [0, 1, 94],
   TYOP [0, 3, 79], TYOP [0, 1, 96], TYOP [0, 0, 81], TYOP [0, 3, 98],
   TYOP [0, 1, 99], TYOP [0, 79, 0], TYOP [1, 1, 79], TYOP [6, 4],
   TYOP [7, 3, 1], TYOP [6, 104], TYOP [7, 0, 1], TYOP [6, 106],
   TYOP [7, 0, 3], TYOP [6, 108], TYOP [0, 23, 8], TYOP [0, 76, 8],
   TYOP [0, 79, 8], TYOP [0, 112, 8], TYOP [0, 42, 8], TYOP [0, 2, 8],
   TYOP [0, 115, 8], TYOP [0, 27, 8], TYOP [0, 37, 8], TYOP [0, 118, 8],
   TYOP [0, 21, 8], TYOP [0, 120, 8], TYOP [0, 20, 8], TYOP [0, 80, 8],
   TYOP [0, 123, 8], TYOP [0, 82, 8], TYOP [0, 125, 8], TYOP [0, 39, 8],
   TYOP [0, 127, 8], TYOP [0, 87, 8], TYOP [0, 129, 8], TYOP [0, 31, 8],
   TYOP [0, 62, 8], TYOP [0, 132, 8], TYOP [0, 92, 8], TYOP [0, 134, 8],
   TYOP [0, 97, 8], TYOP [0, 136, 8], TYOP [0, 24, 8], TYOP [0, 138, 8],
   TYOP [0, 95, 8], TYOP [0, 140, 8], TYOP [0, 100, 8], TYOP [0, 142, 8],
   TYOP [0, 17, 8], TYOP [0, 144, 8], TYOP [0, 12, 8], TYOP [0, 6, 8],
   TYOP [0, 147, 8], TYOP [0, 110, 8], TYOP [0, 89, 8], TYOP [0, 150, 8],
   TYOP [0, 15, 8], TYOP [0, 152, 8], TYOP [0, 90, 8], TYOP [0, 154, 8],
   TYOP [0, 114, 8], TYOP [0, 146, 8], TYOP [0, 71, 8], TYOP [0, 158, 8],
   TYOP [0, 66, 8], TYOP [0, 160, 8], TYOP [0, 77, 8], TYOP [0, 162, 8],
   TYOP [0, 83, 8], TYOP [0, 164, 8], TYOP [0, 84, 8], TYOP [0, 166, 8],
   TYOP [0, 103, 8], TYOP [0, 168, 8], TYOP [0, 49, 8], TYOP [0, 170, 8],
   TYOP [0, 105, 8], TYOP [0, 172, 8], TYOP [0, 86, 8], TYOP [0, 174, 8],
   TYOP [0, 107, 8], TYOP [0, 176, 8], TYOP [0, 109, 8], TYOP [0, 178, 8],
   TYOP [0, 13, 8], TYOP [0, 180, 8], TYOP [0, 13, 13], TYOP [0, 13, 182],
   TYOP [0, 3, 48], TYOP [0, 1, 184], TYOP [0, 0, 65], TYOP [0, 1, 186],
   TYOP [7, 1, 8], TYOP [0, 8, 188], TYOP [0, 1, 189], TYOP [0, 1, 104],
   TYOP [0, 3, 191], TYOP [0, 0, 85], TYOP [0, 3, 193], TYOP [7, 3, 8],
   TYOP [0, 8, 195], TYOP [0, 3, 196], TYOP [0, 1, 106], TYOP [0, 0, 198],
   TYOP [0, 3, 108], TYOP [0, 0, 200], TYOP [7, 0, 79], TYOP [0, 79, 202],
   TYOP [0, 0, 203], TYOP [7, 0, 8], TYOP [0, 8, 205], TYOP [0, 0, 206],
   TYOP [7, 79, 81], TYOP [0, 81, 208], TYOP [0, 79, 209], TYOP [6, 79],
   TYOP [6, 0], TYOP [7, 212, 211], TYOP [0, 211, 213], TYOP [0, 212, 214],
   TYOP [6, 81], TYOP [7, 211, 216], TYOP [0, 216, 217],
   TYOP [0, 211, 218], TYOP [0, 8, 8], TYOP [0, 8, 220], TYOP [0, 13, 180],
   TYOP [0, 3, 23], TYOP [0, 0, 76], TYOP [0, 2, 115], TYOP [0, 26, 27],
   TYOP [0, 37, 118], TYOP [0, 19, 20], TYOP [0, 80, 123],
   TYOP [0, 82, 125], TYOP [0, 39, 127], TYOP [0, 30, 31], TYOP [0, 69, 8],
   TYOP [0, 69, 233], TYOP [0, 11, 12], TYOP [0, 23, 110],
   TYOP [0, 76, 111], TYOP [0, 57, 8], TYOP [0, 57, 238], TYOP [0, 51, 8],
   TYOP [0, 51, 240], TYOP [0, 12, 146], TYOP [0, 83, 164],
   TYOP [0, 212, 8], TYOP [0, 212, 244], TYOP [0, 49, 170], TYOP [8, 1],
   TYOP [0, 247, 8], TYOP [0, 247, 248], TYOP [0, 68, 8],
   TYOP [0, 68, 250], TYOP [0, 29, 8], TYOP [0, 252, 8], TYOP [0, 49, 49],
   TYOP [0, 49, 254], TYOP [0, 89, 89], TYOP [0, 30, 13], TYOP [0, 30, 30],
   TYOP [0, 8, 62], TYOP [0, 8, 89], TYOP [0, 8, 57], TYOP [0, 37, 37],
   TYOP [0, 37, 262], TYOP [0, 8, 263], TYOP [0, 8, 183],
   TYOP [0, 247, 247], TYOP [0, 247, 266], TYOP [0, 8, 267],
   TYOP [0, 68, 68], TYOP [0, 68, 269], TYOP [0, 8, 270], TYOP [0, 10, 10],
   TYOP [0, 10, 272], TYOP [0, 8, 273], TYOP [0, 48, 254],
   TYOP [0, 30, 78], TYOP [0, 30, 258], TYOP [0, 76, 76],
   TYOP [0, 76, 278], TYOP [0, 23, 26], TYOP [0, 26, 280], TYOP [0, 83, 1],
   TYOP [0, 13, 282], TYOP [0, 84, 3], TYOP [0, 13, 284],
   TYOP [0, 71, 170], TYOP [0, 2, 87], TYOP [0, 3, 1], TYOP [0, 26, 288],
   TYOP [0, 37, 6], TYOP [0, 21, 90], TYOP [0, 19, 91], TYOP [0, 2, 30],
   TYOP [0, 26, 23], TYOP [0, 37, 23], TYOP [0, 21, 76], TYOP [0, 19, 76],
   TYOP [0, 80, 76], TYOP [0, 77, 115], TYOP [0, 3, 247],
   TYOP [0, 26, 300], TYOP [8, 0], TYOP [0, 3, 302], TYOP [0, 37, 303],
   TYOP [0, 0, 247], TYOP [0, 21, 305], TYOP [0, 0, 68], TYOP [0, 19, 307],
   TYOP [0, 89, 57], TYOP [0, 19, 19], TYOP [0, 19, 310],
   TYOP [0, 89, 311], TYOP [0, 53, 51], TYOP [0, 83, 37],
   TYOP [0, 37, 314], TYOP [0, 1, 37], TYOP [0, 37, 316],
   TYOP [0, 317, 315], TYOP [0, 84, 80], TYOP [0, 83, 319],
   TYOP [0, 80, 320], TYOP [0, 3, 80], TYOP [0, 1, 322], TYOP [0, 80, 323],
   TYOP [0, 324, 321], TYOP [0, 86, 82], TYOP [0, 83, 326],
   TYOP [0, 82, 327], TYOP [0, 85, 82], TYOP [0, 1, 329],
   TYOP [0, 82, 330], TYOP [0, 331, 328], TYOP [0, 83, 4],
   TYOP [0, 4, 333], TYOP [0, 1, 56], TYOP [0, 335, 334], TYOP [0, 103, 4],
   TYOP [0, 4, 337], TYOP [0, 57, 338], TYOP [0, 48, 56],
   TYOP [0, 340, 51], TYOP [0, 26, 30], TYOP [0, 37, 76], TYOP [0, 21, 30],
   TYOP [0, 19, 23], TYOP [0, 48, 1], TYOP [0, 104, 3], TYOP [0, 106, 0],
   TYOP [0, 108, 0], TYOP [0, 2, 2], TYOP [0, 2, 350], TYOP [0, 21, 21],
   TYOP [0, 21, 352], TYOP [0, 80, 80], TYOP [0, 80, 354],
   TYOP [0, 288, 280], TYOP [0, 23, 37], TYOP [0, 6, 357],
   TYOP [0, 76, 19], TYOP [0, 91, 359], TYOP [0, 65, 2], TYOP [0, 2, 361],
   TYOP [0, 104, 26], TYOP [0, 26, 363], TYOP [0, 85, 37],
   TYOP [0, 37, 365], TYOP [0, 106, 21], TYOP [0, 21, 367],
   TYOP [0, 108, 19], TYOP [0, 19, 369], TYOP [0, 202, 80],
   TYOP [0, 80, 371], TYOP [0, 208, 82], TYOP [0, 82, 373], TYOP [6, 65],
   TYOP [0, 375, 2], TYOP [0, 2, 376], TYOP [0, 105, 26],
   TYOP [0, 26, 378], TYOP [0, 86, 37], TYOP [0, 37, 380],
   TYOP [0, 107, 21], TYOP [0, 21, 382], TYOP [0, 109, 19],
   TYOP [0, 19, 384], TYOP [6, 202], TYOP [0, 386, 80], TYOP [0, 80, 387],
   TYOP [6, 208], TYOP [0, 389, 82], TYOP [0, 82, 390], TYOP [0, 1, 188],
   TYOP [0, 392, 30], TYOP [0, 3, 195], TYOP [0, 394, 23],
   TYOP [0, 0, 205], TYOP [0, 396, 76], TYOP [0, 30, 23],
   TYOP [0, 39, 398], TYOP [0, 1, 31], TYOP [0, 3, 110], TYOP [0, 0, 111],
   TYOP [0, 4, 114], TYOP [0, 48, 158], TYOP [0, 104, 8], TYOP [0, 405, 8],
   TYOP [0, 104, 406], TYOP [0, 30, 110], TYOP [0, 39, 408],
   TYOP [0, 3, 10], TYOP [0, 9, 10], TYOP [0, 1, 258], TYOP [0, 23, 23],
   TYOP [0, 3, 413], TYOP [0, 10, 8], TYOP [0, 3, 91], TYOP [0, 83, 13],
   TYOP [0, 84, 13], TYOP [0, 49, 13], TYOP [0, 105, 13], TYOP [0, 86, 13],
   TYOP [0, 47, 8], TYOP [0, 422, 422], TYOP [0, 30, 288],
   TYOP [0, 39, 424], TYOP [0, 83, 166], TYOP [0, 24, 426],
   TYOP [0, 83, 30], TYOP [0, 84, 23], TYOP [0, 103, 42], TYOP [0, 49, 71],
   TYOP [0, 105, 405], TYOP [0, 83, 86], TYOP [0, 1, 85],
   TYOP [0, 434, 433], TYOP [0, 49, 83], TYOP [0, 346, 436],
   TYOP [0, 49, 84], TYOP [0, 48, 3], TYOP [0, 439, 438],
   TYOP [0, 49, 375], TYOP [0, 48, 65], TYOP [0, 442, 441],
   TYOP [0, 105, 83], TYOP [0, 104, 1], TYOP [0, 445, 444],
   TYOP [0, 105, 84], TYOP [0, 347, 447], TYOP [0, 107, 83],
   TYOP [0, 106, 1], TYOP [0, 450, 449], TYOP [0, 107, 212],
   TYOP [0, 348, 452], TYOP [0, 109, 84], TYOP [0, 108, 3],
   TYOP [0, 455, 454], TYOP [0, 109, 212], TYOP [0, 349, 457],
   TYOP [0, 84, 212], TYOP [0, 83, 459], TYOP [0, 92, 460],
   TYOP [0, 84, 211], TYOP [0, 83, 462], TYOP [0, 97, 463],
   TYOP [0, 86, 211], TYOP [0, 83, 465], TYOP [0, 85, 79],
   TYOP [0, 1, 467], TYOP [0, 468, 466], TYOP [0, 86, 216],
   TYOP [0, 83, 470], TYOP [0, 85, 81], TYOP [0, 1, 472],
   TYOP [0, 473, 471], TYOP [0, 247, 250], TYOP [0, 24, 475],
   TYOP [0, 10, 3], TYOP [0, 30, 26], TYOP [0, 26, 478], TYOP [0, 1, 247],
   TYOP [0, 3, 68], TYOP [0, 17, 257], TYOP [0, 12, 252], TYOP [0, 3, 4],
   TYOP [0, 1, 484], TYOP [0, 485, 52], TYOP [0, 3, 56], TYOP [0, 1, 487],
   TYOP [0, 488, 340], TYOP [0, 3, 65], TYOP [0, 1, 490],
   TYOP [0, 491, 442], TYOP [0, 94, 467], TYOP [0, 99, 472],
   TYOP [0, 0, 82], TYOP [0, 3, 495], TYOP [0, 496, 329],
   TYOP [0, 23, 413], TYOP [0, 213, 386], TYOP [0, 217, 389],
   TYOP [0, 90, 19], TYOP [0, 4, 501], TYOP [0, 21, 19], TYOP [0, 4, 503],
   TYOP [0, 26, 37], TYOP [0, 2, 505], TYOP [0, 1, 2], TYOP [0, 2, 507],
   TYOP [0, 3, 26], TYOP [0, 26, 509], TYOP [0, 0, 21], TYOP [0, 21, 511],
   TYOP [0, 0, 19], TYOP [0, 19, 513], TYOP [0, 78, 226], TYOP [0, 79, 3],
   TYOP [0, 101, 516], TYOP [0, 91, 517], TYOP [0, 39, 503],
   TYOP [0, 87, 505], TYOP [0, 37, 26], TYOP [0, 90, 521],
   TYOP [0, 91, 64], TYOP [0, 102, 4], TYOP [0, 516, 524],
   TYOP [0, 102, 2], TYOP [0, 101, 526], TYOP [0, 480, 247],
   TYOP [0, 247, 528], TYOP [0, 247, 529], TYOP [0, 305, 247],
   TYOP [0, 247, 531], TYOP [0, 302, 532]]
  end
  val _ = Theory.incorporate_consts "finite_map" tyvector
     [("o_f", 7), ("is_fmap", 12), ("fmap_size", 18), ("fmap_rel", 25),
      ("fmap_inverse", 28), ("fmap_REP", 29), ("fmap_EQ_UPTO", 33),
      ("fmap_ABS", 34), ("fdomsub", 36), ("f_o_f", 38), ("f_o", 41),
      ("SUBMAP", 43), ("RRESTRICT", 45), ("MAP_KEYS", 47),
      ("FUPDATE_LIST", 51), ("FUPDATE", 53), ("FUN_FMAP", 55),
      ("FUNION", 57), ("FRANGE", 58), ("FMERGE", 63), ("FMAP_MAP2", 67),
      ("FLOOKUP", 70), ("FEVERY", 72), ("FEMPTY", 4), ("FDOM", 73),
      ("FCARD", 14), ("FAPPLY", 74), ("DRESTRICT", 75)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 30), TMV("P", 76), TMV("P", 42), TMV("P", 71), TMV("P", 77),
   TMV("Q", 30), TMV("R", 78), TMV("R", 24), TMV("R1", 24), TMV("R2", 24),
   TMV("a", 1), TMV("a", 4), TMV("a", 37), TMV("a", 80), TMV("a", 82),
   TMV("a0", 11), TMV("b", 1), TMV("b", 3), TMV("bs", 83), TMV("c", 1),
   TMV("c", 3), TMV("ck", 1), TMV("cs", 84), TMV("cs", 86), TMV("cv", 3),
   TMV("d", 3), TMV("d", 0), TMV("env", 4), TMV("f", 4), TMV("f", 26),
   TMV("f", 37), TMV("f", 39), TMV("f", 87), TMV("f", 11), TMV("f", 6),
   TMV("f", 89), TMV("f", 90), TMV("f", 91), TMV("f", 66), TMV("f'", 4),
   TMV("f1", 4), TMV("f1", 2), TMV("f1", 26), TMV("f1", 21), TMV("f1", 80),
   TMV("f1", 39), TMV("f1", 92), TMV("f1", 95), TMV("f2", 4), TMV("f2", 2),
   TMV("f2", 26), TMV("f2", 21), TMV("f2", 19), TMV("f2", 80),
   TMV("f2", 87), TMV("f2", 97), TMV("f2", 100), TMV("f3", 4),
   TMV("f3", 21), TMV("f3", 80), TMV("f4", 19), TMV("fm", 4), TMV("fm", 2),
   TMV("fm", 26), TMV("fm", 37), TMV("fm", 21), TMV("fm", 80),
   TMV("fm", 82), TMV("fm0", 4), TMV("fm1", 4), TMV("fm2", 4), TMV("g", 4),
   TMV("g", 26), TMV("g", 39), TMV("g", 90), TMV("g", 91), TMV("g", 101),
   TMV("h", 4), TMV("h", 102), TMV("h", 48), TMV("h1", 4), TMV("h2", 4),
   TMV("hL", 103), TMV("is_fmap'", 12), TMV("k", 1), TMV("k", 3),
   TMV("k", 0), TMV("k1", 1), TMV("k1", 3), TMV("k2", 1), TMV("k2", 3),
   TMV("ks", 30), TMV("kv", 48), TMV("kv", 104), TMV("kvl", 49),
   TMV("kvl", 105), TMV("kvl1", 49), TMV("kvl2", 49), TMV("kz", 17),
   TMV("l", 83), TMV("l", 49), TMV("l1", 49), TMV("l2", 49), TMV("ls", 83),
   TMV("ls", 49), TMV("ls", 105), TMV("ls'", 49), TMV("ls1", 49),
   TMV("ls1", 107), TMV("ls2", 49), TMV("ls2", 109), TMV("m", 4),
   TMV("m", 2), TMV("m", 62), TMV("m", 89), TMV("m", 47), TMV("m", 13),
   TMV("m1", 4), TMV("m1", 26), TMV("m2", 4), TMV("m2", 26), TMV("n", 13),
   TMV("nv", 3), TMV("p", 48), TMV("r", 30), TMV("r", 11), TMV("r", 23),
   TMV("rep", 29), TMV("s", 4), TMV("s", 30), TMV("s", 23), TMV("s1", 30),
   TMV("s2", 30), TMV("st1", 4), TMV("st2", 4), TMV("t", 30), TMV("t", 49),
   TMV("v", 1), TMV("v", 3), TMV("v", 0), TMV("v'", 3), TMV("v1", 1),
   TMV("v1", 3), TMV("v2", 3), TMV("vs", 30), TMV("vz", 15), TMV("x", 1),
   TMV("x", 3), TMV("x", 0), TMV("x", 26), TMV("x", 48), TMV("xs", 49),
   TMV("y", 1), TMV("y", 3), TMV("y", 79), TMV("y", 26), TMV("z", 1),
   TMV("z", 26), TMC(9, 31), TMC(9, 110), TMC(9, 111), TMC(9, 113),
   TMC(9, 114), TMC(9, 116), TMC(9, 117), TMC(9, 119), TMC(9, 121),
   TMC(9, 122), TMC(9, 124), TMC(9, 126), TMC(9, 128), TMC(9, 130),
   TMC(9, 131), TMC(9, 133), TMC(9, 135), TMC(9, 137), TMC(9, 139),
   TMC(9, 141), TMC(9, 143), TMC(9, 145), TMC(9, 146), TMC(9, 148),
   TMC(9, 149), TMC(9, 151), TMC(9, 153), TMC(9, 155), TMC(9, 156),
   TMC(9, 157), TMC(9, 159), TMC(9, 161), TMC(9, 163), TMC(9, 165),
   TMC(9, 167), TMC(9, 169), TMC(9, 171), TMC(9, 173), TMC(9, 175),
   TMC(9, 177), TMC(9, 179), TMC(9, 181), TMC(9, 158), TMC(10, 183),
   TMC(11, 185), TMC(11, 187), TMC(11, 190), TMC(11, 192), TMC(11, 194),
   TMC(11, 197), TMC(11, 199), TMC(11, 201), TMC(11, 204), TMC(11, 207),
   TMC(11, 210), TMC(11, 215), TMC(11, 219), TMC(12, 221), TMC(13, 13),
   TMC(14, 222), TMC(15, 78), TMC(15, 223), TMC(15, 224), TMC(15, 221),
   TMC(15, 43), TMC(15, 225), TMC(15, 226), TMC(15, 227), TMC(15, 228),
   TMC(15, 229), TMC(15, 230), TMC(15, 231), TMC(15, 232), TMC(15, 234),
   TMC(15, 235), TMC(15, 236), TMC(15, 237), TMC(15, 239), TMC(15, 241),
   TMC(15, 242), TMC(15, 243), TMC(15, 245), TMC(15, 246), TMC(15, 222),
   TMC(15, 249), TMC(15, 251), TMC(16, 221), TMC(17, 31), TMC(17, 110),
   TMC(17, 114), TMC(17, 146), TMC(17, 253), TMC(17, 171), TMC(17, 181),
   TMC(18, 164), TMC(18, 166), TMC(19, 255), TMC(20, 6), TMC(21, 150),
   TMC(21, 238), TMC(22, 182), TMC(23, 256), TMC(24, 257), TMC(25, 150),
   TMC(25, 238), TMC(26, 258), TMC(27, 259), TMC(27, 260), TMC(27, 261),
   TMC(27, 264), TMC(27, 265), TMC(27, 268), TMC(27, 271), TMC(27, 274),
   TMC(28, 275), TMC(29, 276), TMC(30, 277), TMC(30, 279), TMC(31, 232),
   TMC(31, 237), TMC(32, 75), TMC(32, 281), TMC(33, 283), TMC(33, 285),
   TMC(34, 30), TMC(35, 286), TMC(36, 74), TMC(36, 287), TMC(36, 289),
   TMC(36, 290), TMC(36, 291), TMC(36, 292), TMC(37, 14), TMC(38, 73),
   TMC(38, 293), TMC(38, 294), TMC(38, 295), TMC(38, 296), TMC(38, 297),
   TMC(38, 298), TMC(39, 4), TMC(39, 2), TMC(39, 26), TMC(39, 37),
   TMC(39, 21), TMC(39, 19), TMC(40, 72), TMC(40, 299), TMC(41, 31),
   TMC(41, 110), TMC(41, 111), TMC(42, 70), TMC(42, 301), TMC(42, 304),
   TMC(42, 306), TMC(42, 308), TMC(43, 67), TMC(44, 63), TMC(44, 309),
   TMC(44, 312), TMC(45, 313), TMC(45, 318), TMC(46, 325), TMC(46, 332),
   TMC(47, 336), TMC(47, 339), TMC(47, 341), TMC(48, 58), TMC(48, 342),
   TMC(48, 343), TMC(48, 344), TMC(48, 345), TMC(49, 346), TMC(49, 347),
   TMC(49, 348), TMC(49, 349), TMC(50, 57), TMC(50, 351), TMC(50, 60),
   TMC(50, 353), TMC(50, 311), TMC(50, 355), TMC(51, 55), TMC(51, 356),
   TMC(51, 358), TMC(51, 360), TMC(52, 53), TMC(52, 362), TMC(52, 364),
   TMC(52, 366), TMC(52, 368), TMC(52, 370), TMC(52, 372), TMC(52, 374),
   TMC(53, 51), TMC(53, 377), TMC(53, 379), TMC(53, 381), TMC(53, 383),
   TMC(53, 385), TMC(53, 388), TMC(53, 391), TMC(54, 393), TMC(54, 395),
   TMC(54, 397), TMC(55, 399), TMC(56, 400), TMC(56, 401), TMC(56, 402),
   TMC(56, 403), TMC(56, 404), TMC(56, 407), TMC(57, 409), TMC(58, 410),
   TMC(59, 411), TMC(60, 412), TMC(60, 414), TMC(61, 277), TMC(62, 415),
   TMC(63, 89), TMC(63, 416), TMC(64, 417), TMC(64, 418), TMC(64, 419),
   TMC(64, 420), TMC(64, 421), TMC(65, 423), TMC(66, 425), TMC(67, 427),
   TMC(68, 428), TMC(68, 429), TMC(68, 430), TMC(68, 431), TMC(68, 432),
   TMC(69, 435), TMC(69, 437), TMC(69, 440), TMC(69, 443), TMC(69, 446),
   TMC(69, 448), TMC(69, 451), TMC(69, 453), TMC(69, 456), TMC(69, 458),
   TMC(70, 461), TMC(70, 464), TMC(70, 469), TMC(70, 474), TMC(71, 47),
   TMC(72, 49), TMC(73, 247), TMC(73, 68), TMC(74, 182), TMC(75, 476),
   TMC(76, 477), TMC(77, 246), TMC(78, 254), TMC(79, 45), TMC(79, 479),
   TMC(80, 439), TMC(80, 445), TMC(80, 450), TMC(80, 455), TMC(81, 275),
   TMC(82, 480), TMC(82, 481), TMC(83, 43), TMC(83, 229), TMC(84, 232),
   TMC(84, 236), TMC(85, 182), TMC(86, 482), TMC(87, 483), TMC(88, 486),
   TMC(88, 489), TMC(88, 492), TMC(88, 493), TMC(88, 494), TMC(88, 497),
   TMC(89, 277), TMC(89, 498), TMC(90, 30), TMC(90, 23), TMC(91, 13),
   TMC(92, 499), TMC(92, 500), TMC(93, 221), TMC(94, 502), TMC(94, 41),
   TMC(95, 504), TMC(95, 506), TMC(95, 38), TMC(96, 36), TMC(96, 508),
   TMC(96, 510), TMC(96, 512), TMC(96, 514), TMC(97, 34), TMC(98, 33),
   TMC(99, 29), TMC(100, 28), TMC(101, 515), TMC(101, 25), TMC(102, 18),
   TMC(103, 12), TMC(104, 518), TMC(105, 519), TMC(105, 520), TMC(105, 7),
   TMC(105, 522), TMC(105, 523), TMC(105, 525), TMC(105, 527), TMC(4, 9),
   TMC(106, 530), TMC(106, 533), TMC(107, 220)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op fmap_inverse_def x = x
    val op fmap_inverse_def =
    DT(((("finite_map",264),[]),[]),
       [read"%162%117%164%120%221%458$1@$0@@%158%84%244%364$0@%291$2@@@%246%138%215%243%309$3@$1@@%423$0@@@%242%310$2@$0@@%422$1@@@|@@|@@|@|@"])
  fun op FMAP_MAP2_def x = x
    val op FMAP_MAP2_def =
    DT(((("finite_map",166),[]),[]),
       [read"%189%38%163%112%222%314$1@$0@@%340%146$2%203$0@%285$1@$0@@@|@%292$0@@@|@|@"])
  fun op FUPDATE_LIST x = x
    val op FUPDATE_LIST =
    DT(((("finite_map",143),[]),[]), [read"%236%352@%318%344@@"])
  fun op SUBMAP_DEF x = x
    val op SUBMAP_DEF =
    DT(((("finite_map",36),[]),[]),
       [read"%162%28%162%71%221%424$1@$0@@%158%146%244%364$0@%291$2@@@%215%364$0@%291$1@@@%219%284$2@$0@@%284$1@$0@@@@|@@|@|@"])
  fun op FCARD_DEF x = x
    val op FCARD_DEF =
    DT(((("finite_map",25),[]),[]),
       [read"%162%61%241%290$0@@%260%291$0@@@|@"])
  fun op FDOM_DEF x = x
    val op FDOM_DEF =
    DT(((("finite_map",10),[]),[]),
       [read"%162%28%158%146%221%291$1@$0@@%376%457$1@$0@@@|@|@"])
  fun op FAPPLY_DEF x = x
    val op FAPPLY_DEF =
    DT(((("finite_map",9),[]),[]),
       [read"%162%28%158%146%219%284$1@$0@@%412%457$1@$0@@@|@|@"])
  fun op FEMPTY_DEF x = x
    val op FEMPTY_DEF =
    DT(((("finite_map",8),[]),[]), [read"%222%298@%455%10%372%471@|@@"])
  fun op FUPDATE_DEF x = x
    val op FUPDATE_DEF =
    DT(((("finite_map",7),[("pair",[16])]),["DISK_THM"]),
       [read"%162%28%158%146%159%153%222%344$2@%202$1@$0@@@%455%10%271%218$0@$2@@%371$1@@%457$3@$0@@|@@|@|@|@"])
  fun op fmap_ISO_DEF x = x
    val op fmap_ISO_DEF =
    DT(((("finite_map",6),
        [("bool",[117]),("finite_map",[5])]),["DISK_THM"]),
       [read"%215%162%11%222%455%457$0@@@$0@|@@%180%125%221%462$0@@%232%457%455$0@@@$0@@|@@"])
  fun op fmap_TY_DEF x = x
    val op fmap_TY_DEF =
    DT(((("finite_map",5),
        [("bool",[14,25,26,53,63,132,133,138]),
         ("finite_map",[0])]),["DISK_THM"]),
       [read"%249%127%430%462@$0@|@"])
  fun op is_fmap_def x = x
    val op is_fmap_def =
    DT(((("finite_map",0),[]),[]),
       [read"%237%462@%15%187%83%244%180%15%244%444%232$0@%10%372%471@|@@%248%33%245%10%246%17%215%232$3@%146%271%218$0@$2@@%371$1@@$3$0@@|@@$4$2@@|@|@|@@@$1$0@@|@@$0$1@@|@|@"])
  fun op DRESTRICT_DEF x = x
    val op DRESTRICT_DEF =
    DT(((("finite_map",44),
        [("bool",
         [2,13,14,15,25,26,27,30,47,48,51,52,53,54,56,58,63,64,65,73,93,94,
          96,105,109,111,129,147]),("finite_map",[15,16,17,30]),
         ("pred_set",[3,45,53,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%172%124%215%230%291%278$1@$0@@@%375%291$1@@$0@@@%158%146%219%284%278$2@$1@@$0@@%265%364$0@%375%291$2@@$1@@@%284$2@$0@@%284%298@$0@@@|@@|@|@"])
  fun op FUNION_DEF x = x
    val op FUNION_DEF =
    DT(((("finite_map",58),
        [("bool",
         [2,14,15,25,26,27,30,47,48,52,53,54,56,58,63,64,73,105,109,111,
          129,147]),("finite_map",[15,16,17,30]),
         ("pred_set",[3,10,33,41,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%162%71%215%230%291%334$1@$0@@@%437%291$1@@%291$0@@@@%158%146%219%284%334$2@$1@@$0@@%265%364$0@%291$2@@@%284$2@$0@@%284$1@$0@@@|@@|@|@"])
  fun op fmap_domsub x = x
    val op fmap_domsub =
    DT(((("finite_map",121),[]),[]),
       [read"%162%61%158%84%222%450$1@$0@@%278$1@%263%373$0@%282@@@@|@|@"])
  fun op f_o_DEF x = x
    val op f_o_DEF =
    DT(((("finite_map",115),[]),[]),
       [read"%165%30%170%73%223%446$1@$0@@%449$1@%340$0@%360%146%204$0@%365$1$0@@%294$2@@@|@@@@|@|@"])
  fun op FUN_FMAP_DEF x = x
    val op FUN_FMAP_DEF =
    DT(((("finite_map",110),
        [("bool",[2,15,25,26,27,30,36,51,53,56,63,64]),
         ("finite_map",[15,16,17]),
         ("pred_set",[10,80,186])]),["DISK_THM"]),
       [read"%170%31%172%0%244%306$0@@%215%230%291%340$1@$0@@@$0@@%158%146%244%364$0@$1@@%219%284%340$2@$1@@$0@@$2$0@@@|@@@|@|@"])
  fun op RRESTRICT_DEF x = x
    val op RRESTRICT_DEF =
    DT(((("finite_map",107),
        [("bool",
         [2,13,14,15,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,65,73,93,
          94,96,105,108,109,111,129,147]),("finite_map",[15,16,17,30]),
         ("pair",[3]),("pred_set",[3,6,10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%182%126%215%230%291%415$1@$0@@@%360%146%204$0@%215%364$0@%291$2@@@%365%284$2@$0@@$1@@@|@@@%158%146%219%284%415$2@$1@@$0@@%265%215%364$0@%291$2@@@%365%284$2@$0@@$1@@@%284$2@$0@@%284%298@$0@@@|@@|@|@"])
  fun op FRANGE_DEF x = x
    val op FRANGE_DEF =
    DT(((("finite_map",99),[]),[]),
       [read"%162%28%233%325$0@@%361%153%207$0@%245%146%215%364$0@%291$2@@@%219%284$2@$0@@$1@@|@@|@@|@"])
  fun op o_f_DEF x = x
    val op o_f_DEF =
    DT(((("finite_map",91),
        [("bool",[2,14,15,25,26,27,30,52,53,56,58,63,64,105,124,147]),
         ("finite_map",[15,16,17,30]),("pred_set",[10,80])]),["DISK_THM"]),
       [read"%181%34%162%71%215%230%292%466$1@$0@@@%291$0@@@%158%146%244%364$0@%292%466$2@$1@@@@%220%285%466$2@$1@@$0@@$2%284$1@$0@@@@|@@|@|@"])
  fun op f_o_f_DEF x = x
    val op f_o_f_DEF =
    DT(((("finite_map",88),
        [("bool",
         [2,13,14,15,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,
          105,108,109,111,124,147]),("finite_map",[15,16,17,30]),
         ("pair",[3]),("pred_set",[3,6,10,45,53,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%165%30%162%71%215%230%292%449$1@$0@@@%375%291$0@@%360%146%204$0@%365%284$1@$0@@%294$2@@@|@@@@%158%146%244%364$0@%292%449$2@$1@@@@%220%285%449$2@$1@@$0@@%287$2@%284$1@$0@@@@|@@|@|@"])
  fun op FEVERY_DEF x = x
    val op FEVERY_DEF =
    DT(((("finite_map",84),[]),[]),
       [read"%188%3%162%28%221%304$1@$0@@%158%146%244%364$0@%291$1@@@$2%202$0@%284$1@$0@@@@|@@|@|@"])
  fun op FLOOKUP_DEF x = x
    val op FLOOKUP_DEF =
    DT(((("finite_map",77),[]),[]),
       [read"%162%28%158%146%243%309$1@$0@@%270%364$0@%291$1@@@%423%284$1@$0@@@%409@@|@|@"])
  fun op FMERGE_DEF x = x
    val op FMERGE_DEF =
    DT(((("finite_map",67),
        [("bool",
         [2,13,14,15,25,26,27,30,47,48,51,52,53,54,56,58,63,64,71,73,76,94,
          105,109,111,129]),("finite_map",[15,16,17,30,32]),
         ("pred_set",[3,10,33,41,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%173%113%164%29%164%72%215%233%293%315$2@$1@$0@@@%438%293$1@@%293$0@@@@%159%147%218%286%315$3@$2@$1@@$0@@%264%474%365$0@%293$2@@@@%286$1@$0@@%264%474%365$0@%293$1@@@@%286$2@$0@@$3%286$2@$0@@%286$1@$0@@@@@|@@|@|@|@"])
  fun op MAP_KEYS_def x = x
    val op MAP_KEYS_def =
    DT(((("finite_map",190),
        [("bool",[2,32]),("finite_map",[189])]),["DISK_THM"]),
       [read"%170%31%163%62%215%233%294%406$1@$0@@@%363$1@%292$0@@@@%244%370$1@%292$0@@%440@@%158%146%244%364$0@%292$1@@@%220%287%406$2@$1@@$2$0@@@%285$1@$0@@@|@@@|@|@"])
  fun op fmap_rel_def x = x
    val op fmap_rel_def =
    DT(((("finite_map",194),[]),[]),
       [read"%176%7%166%43%167%52%221%460$2@$1@$0@@%215%234%296$0@@%295$1@@@%160%148%244%366$0@%295$2@@@$3%288$2@$0@@%289$1@$0@@@|@@@|@|@|@"])
  fun op fmap_EQ_UPTO_def x = x
    val op fmap_EQ_UPTO_def =
    DT(((("finite_map",203),[]),[]),
       [read"%162%40%162%48%172%144%221%456$2@$1@$0@@%215%230%375%291$2@@%263$0@@@%375%291$1@@%263$0@@@@%158%146%244%364$0@%375%291$3@@%263$1@@@@%219%284$3@$0@@%284$2@$0@@@|@@@|@|@|@"])
  fun op fmap_size_def x = x
    val op fmap_size_def =
    DT(((("finite_map",209),[]),[]),
       [read"%179%98%184%145%162%61%241%461$2@$1@$0@@%429%84%201$3$0@@$2%284$1@$0@@@|@%291$0@@@|@|@|@"])
  fun op fevery_funion x = x
    val op fevery_funion =
    DT(((("finite_map",270),
        [("bool",[25,56,58,63,105,124]),("finite_map",[82,213]),
         ("option",[6,7,10])]),["DISK_THM"]),
       [read"%188%3%162%117%162%119%244%215%304$2@$1@@%304$2@$0@@@%304$2@%334$1@$0@@@|@|@|@"])
  fun op drestrict_iter_list x = x
    val op drestrict_iter_list =
    DT(((("finite_map",269),
        [("bool",[13,14,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("finite_map",[55,224]),("list",[25,28,43]),
         ("pred_set",[3,80,102,286,292]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%111%191%99%222%322%84%111%450$0@$1@||@$1@$0@@%278$1@%263%387$0@@@@|@|@"])
  fun op disjoint_drestrict x = x
    val op disjoint_drestrict =
    DT(((("finite_map",268),
        [("bool",[25,26,27,30,53,54,56,58,63,96,105,124,129,147]),
         ("finite_map",[77,218,259]),("option",[27]),
         ("pred_set",[3,10,45,57,286]),
         ("sat",[1,3,5,7,17,18])]),["DISK_THM"]),
       [read"%172%129%162%111%244%276$1@%291$0@@@%222%278$0@%263$1@@@$0@@|@|@"])
  fun op fmap_to_list x = x
    val op fmap_to_list =
    DT(((("finite_map",267),
        [("bool",[25,26,27,51,54,56,63]),
         ("finite_map",[15,30,144,147,159]),("list",[23,215]),("pair",[8]),
         ("pred_set",[41])]),["DISK_THM"]),
       [read"%162%111%250%100%215%252%393%330@$0@@@%222$1@%352%298@$0@@@|@|@"])
  fun op fupdate_list_foldl x = x
    val op fupdate_list_foldl =
    DT(((("finite_map",266),
        [("bool",[14,25,56]),("finite_map",[143]),("list",[29,43]),
         ("pair",[6,16])]),["DISK_THM"]),
       [read"%162%111%194%100%222%318%27%431%84%138%344$2@%202$1@$0@@||@|@$1@$0@@%352$1@$0@@|@|@"])
  fun op fupdate_list_foldr x = x
    val op fupdate_list_foldr =
    DT(((("finite_map",265),
        [("bool",[14,25,56]),("finite_map",[143]),("list",[28,29,43,173]),
         ("pair",[6,16]),("rich_list",[56])]),["DISK_THM"]),
       [read"%162%111%194%100%222%324%432%84%138%27%344$0@%202$2@$1@@|||@@$1@$0@@%352$1@%414$0@@@|@|@"])
  fun op FUPDATE_EQ_FUPDATE_LIST x = x
    val op FUPDATE_EQ_FUPDATE_LIST =
    DT(((("finite_map",263),
        [("bool",[25,56]),("finite_map",[144])]),["DISK_THM"]),
       [read"%162%61%200%92%222%344$1@$0@@%352$1@%272$0@%407@@@|@|@"])
  fun op flookup_thm x = x
    val op flookup_thm =
    DT(((("finite_map",262),
        [("bool",[25,56,63]),("finite_map",[77]),("option",[27]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%162%28%158%146%159%138%215%221%243%309$2@$1@@%409@@%474%364$1@%291$2@@@@@%221%243%309$2@$1@@%423$0@@@%215%364$1@%291$2@@@%219%284$2@$1@@$0@@@@|@|@|@"])
  fun op fdom_fupdate_list2 x = x
    val op fdom_fupdate_list2 =
    DT(((("finite_map",261),
        [("bool",[25,26,53,54,63]),("finite_map",[159]),
         ("pred_set",[3,33,67]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%194%94%162%61%230%291%352$0@$1@@@%437%274%291$0@@%387%393%330@$1@@@@%387%393%330@$1@@@@|@|@"])
  fun op fupdate_list_map x = x
    val op fupdate_list_map =
    DT(((("finite_map",260),
        [("bool",[25,26,27,30,51,53,56,58,63,64,105,124,129,147]),
         ("combin",[8]),("finite_map",[15,17,144,151,152,159]),
         ("list",[262,268,273,299]),("pair",[8,9,16,23,25]),
         ("pred_set",[10,41])]),["DISK_THM"]),
       [read"%194%100%181%34%158%146%161%154%244%364$1@%291%352%298@$3@@@@%220%285%353%299@%395%433%10%17%203$1@$4$0@@||@@$3@@@$1@@$2%284%352%298@$3@@$1@@@@|@|@|@|@"])
  fun op fmap_eq_flookup x = x
    val op fmap_eq_flookup =
    DT(((("finite_map",259),
        [("bool",
         [25,26,30,36,51,52,53,54,55,56,58,63,99,105,108,109,124,129]),
         ("finite_map",[34,77]),("option",[10,12]),("pred_set",[3]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%117%162%119%221%222$1@$0@@%158%84%243%309$2@$0@@%309$1@$0@@|@@|@|@"])
  fun op fmap_rel_sym x = x
    val op fmap_rel_sym =
    DT(((("finite_map",258),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("finite_map",[194])]),["DISK_THM"]),
       [read"%244%158%146%158%152%244%6$1@$0@@%6$0@$1@@|@|@@%164%149%164%155%244%459%6@$1@$0@@%459%6@$0@$1@@|@|@@"])
  fun op fmap_rel_trans x = x
    val op fmap_rel_trans =
    DT(((("finite_map",257),
        [("bool",[25,51,53,54,56,58,63,105,124]),("finite_map",[194]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%244%158%146%158%152%158%156%244%215%6$2@$1@@%6$1@$0@@@%6$2@$0@@|@|@|@@%164%149%164%155%164%157%244%215%459%6@$2@$1@@%459%6@$1@$0@@@%459%6@$2@$0@@|@|@|@@"])
  fun op f_o_f_FUPDATE_compose x = x
    val op f_o_f_FUPDATE_compose =
    DT(((("finite_map",256),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,72,94,96,105,124,
          129,147]),("finite_map",[16,17,34,88,237]),("pair",[3]),
         ("pred_set",[3,6,45,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%40%166%51%160%86%158%146%159%138%244%215%474%364$1@%291$4@@@@%474%364$1@%328$3@@@@@%226%447%344$4@%202$1@$0@@@%348$3@%208$2@$1@@@@%349%447$4@$3@@%209$2@$0@@@@|@|@|@|@|@"])
  fun op DRESTRICT_SUBSET x = x
    val op DRESTRICT_SUBSET =
    DT(((("finite_map",255),
        [("bool",[25,26,27,48,51,53,54,58,63,99,100,105,124]),
         ("finite_map",[40,57,251]),("pred_set",[3,18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%162%40%162%48%172%129%172%135%244%215%222%278$3@$1@@%278$2@$1@@@%426$0@$1@@@%222%278$3@$0@@%278$2@$0@@@|@|@|@|@"])
  fun op DRESTRICT_FDOM x = x
    val op DRESTRICT_FDOM =
    DT(((("finite_map",254),
        [("bool",[25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[34,44]),("pred_set",[45,48])]),["DISK_THM"]),
       [read"%162%28%222%278$0@%291$0@@@$0@|@"])
  fun op FRANGE_DRESTRICT_SUBSET x = x
    val op FRANGE_DRESTRICT_SUBSET =
    DT(((("finite_map",253),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,94,96,105,124,129,
          147]),("finite_map",[44,99]),("pair",[3]),("pred_set",[6,18,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%426%326%279%63@%130@@@%326%63@@"])
  fun op IN_FRANGE_DOMSUB_suff x = x
    val op IN_FRANGE_DOMSUB_suff =
    DT(((("finite_map",244),
        [("bool",[25,26,47,48,53,54,63,94]),("finite_map",[243]),
         ("pred_set",[18]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%244%158%137%244%364$0@%326%63@@@%0$0@@|@@%158%137%244%364$0@%326%452%63@%85@@@@%0$0@@|@@"])
  fun op FRANGE_DOMSUB_SUBSET x = x
    val op FRANGE_DOMSUB_SUBSET =
    DT(((("finite_map",243),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,86,93,94,95,96,101,
          105,124,129,145,147]),("finite_map",[99,126,129]),("pair",[3]),
         ("pred_set",[6,18,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%426%326%452%63@%85@@@%326%63@@"])
  fun op IN_FRANGE_FUNION_suff x = x
    val op IN_FRANGE_FUNION_suff =
    DT(((("finite_map",242),
        [("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("finite_map",[241]),("pred_set",[18,33]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%244%215%158%137%244%364$0@%326%42@@@%0$0@@|@@%158%137%244%364$0@%326%50@@@%0$0@@|@@@%158%137%244%364$0@%326%336%42@%50@@@@%0$0@@|@@"])
  fun op FRANGE_FUNION_SUBSET x = x
    val op FRANGE_FUNION_SUBSET =
    DT(((("finite_map",241),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,73,76,86,93,94,
          95,96,98,101,102,105,109,111,124,129,145,147]),
         ("finite_map",[58,99]),("pair",[3]),("pred_set",[6,18,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%426%326%336%42@%50@@@%437%326%42@@%326%50@@@"])
  fun op IN_FRANGE_FUPDATE_LIST_suff x = x
    val op IN_FRANGE_FUPDATE_LIST_suff =
    DT(((("finite_map",240),
        [("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("finite_map",[239]),("pred_set",[18,33]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%244%215%158%137%244%364$0@%326%63@@@%0$0@@|@@%158%137%244%364$0@%387%396%418@%105@@@@%0$0@@|@@@%158%137%244%364$0@%326%354%63@%105@@@@%0$0@@|@@"])
  fun op FRANGE_FUPDATE_LIST_SUBSET x = x
    val op FRANGE_FUPDATE_LIST_SUBSET =
    DT(((("finite_map",239),
        [("bool",
         [14,25,26,27,30,47,48,52,53,54,56,58,63,64,72,87,105,124]),
         ("finite_map",[79,105,144]),("list",[23,25,43]),("option",[10]),
         ("pair",[6,9]),("pred_set",[18,20,33,41,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%194%104%162%61%427%325%352$0@$1@@@%438%325$0@@%388%394%417@$1@@@@|@|@"])
  fun op IN_FRANGE_FLOOKUP x = x
    val op IN_FRANGE_FLOOKUP =
    DT(((("finite_map",238),
        [("bool",[25,56]),("finite_map",[77,237]),
         ("option",[27])]),["DISK_THM"]),
       [read"%162%28%159%138%221%365$0@%325$1@@@%245%84%243%309$2@$0@@%423$1@@|@@|@|@"])
  fun op IN_FRANGE x = x
    val op IN_FRANGE =
    DT(((("finite_map",237),
        [("bool",[25,26,56,63]),("finite_map",[99]),("pair",[3]),
         ("pred_set",[6])]),["DISK_THM"]),
       [read"%162%28%159%138%221%365$0@%325$1@@@%245%84%215%364$0@%291$2@@@%219%284$2@$0@@$1@@|@@|@|@"])
  fun op FUPDATE_LIST_ALL_DISTINCT_REVERSE x = x
    val op FUPDATE_LIST_ALL_DISTINCT_REVERSE =
    DT(((("finite_map",236),
        [("bool",[14,25,26,27,36,53,54,56,58,63,105,124]),
         ("finite_map",[144,146,147]),("list",[23,43,173,215]),
         ("pair",[6,8])]),["DISK_THM"]),
       [read"%194%104%244%252%393%330@$0@@@%162%61%222%352$0@%414$1@@@%352$0@$1@@|@@|@"])
  fun op FUPDATE_LIST_ALL_DISTINCT_APPLY_MEM x = x
    val op FUPDATE_LIST_ALL_DISTINCT_APPLY_MEM =
    DT(((("finite_map",235),
        [("arithmetic",[24,25,41,46,71,93,172,173,180]),
         ("bool",[25,26,27,36,51,53,54,56,58,63,96,101,104,105,124]),
         ("finite_map",[232]),("list",[60,67,170,219]),("numeral",[3,8]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%172%0%195%105%159%85%158%137%164%63%244%215%253%397%331@$3@@@%215%369%205$2@$1@@%391$3@@@$4$1@@@@$4%286%354$0@$3@@$2@@@|@|@|@|@|@"])
  fun op FUPDATE_SAME_LIST_APPLY x = x
    val op FUPDATE_SAME_LIST_APPLY =
    DT(((("finite_map",234),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124]),
         ("finite_map",[143,233]),("list",[23,25,89,268,273,299]),
         ("pred_set",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%194%94%162%69%162%70%158%146%244%364$0@%387%393%330@$3@@@@%219%284%352$2@$3@@$0@@%284%352$1@$3@@$0@@@|@|@|@|@"])
  fun op FUPDATE_SAME_APPLY x = x
    val op FUPDATE_SAME_APPLY =
    DT(((("finite_map",233),
        [("bool",[25,26,27,30,52,53,56,58,63,64,105,124,147]),
         ("finite_map",[17]),("pair",[5,8])]),["DISK_THM"]),
       [read"%244%444%218%146@%330%92@@@%219%284%69@%146@@%284%70@%146@@@@%219%284%344%69@%92@@%146@@%284%344%70@%92@@%146@@@"])
  fun op FUPDATE_LIST_APPLY_HO_THM x = x
    val op FUPDATE_LIST_APPLY_HO_THM =
    DT(((("finite_map",232),
        [("bool",[2,15,25,26,53,54,55,63,99]),("finite_map",[145,150]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%172%0%164%29%195%95%159%85%244%444%251%121%215%217$0@%382$2@@@%215%219$1@%281$0@%397%331@$2@@@@%215$4%280$0@%396%418@$2@@@@%199%116%244%215%217$1@$0@@%217$0@%382$3@@@@%474%219%281$0@%397%331@$3@@@$2@@@|@@@@|@@%215%474%365$0@%388%397%331@$1@@@@@$3%286$2@$0@@@@@$3%286%354$2@$1@@$0@@@|@|@|@|@"])
  fun op FUPDATE_LIST_APPLY_NOT_MEM_matchable x = x
    val op FUPDATE_LIST_APPLY_NOT_MEM_matchable =
    DT(((("finite_map",231),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("finite_map",[145]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%194%94%162%28%158%84%159%138%244%215%474%364$1@%387%393%330@$3@@@@@%219$0@%284$2@$1@@@@%219%284%352$2@$3@@$1@@$0@@|@|@|@|@"])
  fun op DRESTRICT_FUNION_SUBSET x = x
    val op DRESTRICT_FUNION_SUBSET =
    DT(((("finite_map",230),
        [("bool",[25,51,52,56,57,58,63,105,124,129,147]),
         ("finite_map",[36,44,58,188]),
         ("pred_set",[18,33,45])]),["DISK_THM"]),
       [read"%244%426%132@%131@@%247%77%222%334%278%28@%131@@%71@@%334%278%28@%132@@$0@@|@@"])
  fun op FOLDL2_FUPDATE_LIST_paired x = x
    val op FOLDL2_FUPDATE_LIST_paired =
    DT(((("finite_map",229),
        [("bool",[25,53,56,58,105,124]),("finite_map",[143]),
         ("list",[60,160,164,168,209,309]),("pair",[8,9,13,16,23]),
         ("rich_list",[99])]),["DISK_THM"]),
       [read"%177%47%178%56%191%18%196%23%169%14%244%241%379$2@@%383$1@@@%228%321%67%16%436%20%26%351$3@%212$8$2@$1@$0@@$7$2@$1@$0@@@||@||@$0@$2@$1@@%359$0@%443%214%404%16%434$5$0@@|@$2@$1@@%405%16%435$4$0@@|@$2@$1@@@@@@|@|@|@|@|@"])
  fun op FOLDL2_FUPDATE_LIST x = x
    val op FOLDL2_FUPDATE_LIST =
    DT(((("finite_map",228),
        [("bool",[25,53,56,58,105,124]),("finite_map",[143]),
         ("list",[60,160,164,168,209,309]),("pair",[8,9,16,23]),
         ("rich_list",[99])]),["DISK_THM"]),
       [read"%174%46%175%55%191%18%192%22%168%13%244%241%379$2@@%380$1@@@%227%320%66%16%20%350$2@%210$7$1@$0@@$6$1@$0@@@|||@$0@$2@$1@@%358$0@%442%213%402$4@$2@$1@@%403$3@$2@$1@@@@@@|@|@|@|@|@"])
  fun op DRESTRICT_EQ_DRESTRICT_SAME x = x
    val op DRESTRICT_EQ_DRESTRICT_SAME =
    DT(((("finite_map",227),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,76,80,81,93,94,
          96,105,124,129,147]),("finite_map",[36,44,57]),
         ("pred_set",[3,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%221%222%278%40@%129@@%278%48@%129@@@%215%230%375%129@%291%40@@@%375%129@%291%48@@@@%158%146%244%215%364$0@%291%40@@@%364$0@%129@@@%219%284%40@$0@@%284%48@$0@@@|@@@"])
  fun op DRESTRICT_FUNION_SAME x = x
    val op DRESTRICT_FUNION_SAME =
    DT(((("finite_map",226),
        [("bool",[25,58,63]),("finite_map",[56,188])]),["DISK_THM"]),
       [read"%162%61%172%129%222%334%278$1@$0@@$1@@$1@|@|@"])
  fun op DRESTRICT_SUBSET_SUBMAP_gen x = x
    val op DRESTRICT_SUBSET_SUBMAP_gen =
    DT(((("finite_map",225),
        [("bool",[25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[36,44]),("pred_set",[18,45])]),["DISK_THM"]),
       [read"%162%40%162%48%172%129%172%135%244%215%424%278$3@$1@@%278$2@$1@@@%426$0@$1@@@%424%278$3@$0@@%278$2@$0@@@|@|@|@|@"])
  fun op DRESTRICT_DOMSUB x = x
    val op DRESTRICT_DOMSUB =
    DT(((("finite_map",224),
        [("bool",[25,26,27,48,51,54,56,58,63,105,124,129,147]),
         ("finite_map",[34,44,48,126,129]),
         ("pred_set",[3,45,102])]),["DISK_THM"]),
       [read"%162%28%172%129%158%84%222%450%278$2@$1@@$0@@%278$2@%273$1@$0@@@|@|@|@"])
  fun op DOMSUB_SUBMAP x = x
    val op DOMSUB_SUBMAP =
    DT(((("finite_map",223),
        [("bool",[25,26,27,30,48,51,53,54,56,58,63,64,105,124]),
         ("finite_map",[36,126,129]),("pred_set",[102]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%162%71%158%146%244%215%424$2@$1@@%474%364$0@%291$2@@@@@%424$2@%450$1@$0@@@|@|@|@"])
  fun op SUBMAP_DOMSUB_gen x = x
    val op SUBMAP_DOMSUB_gen =
    DT(((("finite_map",222),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105,106,124,129,147]),
         ("finite_map",[36,126,129]),("pred_set",[102])]),["DISK_THM"]),
       [read"%162%28%162%71%158%84%221%424%450$2@$0@@$1@@%424%450$2@$0@@%450$1@$0@@@|@|@|@"])
  fun op SUBMAP_mono_FUPDATE x = x
    val op SUBMAP_mono_FUPDATE =
    DT(((("finite_map",221),
        [("bool",[25,51,52,53,56,58,63,105,124]),
         ("finite_map",[11,16,123,142]),("pred_set",[80])]),["DISK_THM"]),
       [read"%162%28%162%71%158%146%159%153%244%424%450$3@$1@@%450$2@$1@@@%424%344$3@%202$1@$0@@@%344$2@%202$1@$0@@@@|@|@|@|@"])
  fun op IMAGE_FRANGE x = x
    val op IMAGE_FRANGE =
    DT(((("finite_map",220),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,80,84,93,94,96,
          105,124]),("combin",[19]),("finite_map",[93,94,99,104]),
         ("pair",[3]),("pred_set",[3,6,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%170%31%166%65%233%363$1@%328$0@@@%329%464$1@$0@@@|@|@"])
  fun op DRESTRICTED_FUNION x = x
    val op DRESTRICTED_FUNION =
    DT(((("finite_map",252),
        [("bool",[25,26,27,47,48,51,53,54,56,58,63,105,124,129,147]),
         ("finite_map",[34,44,58]),("pred_set",[3,33,45,67]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%40%162%48%172%129%222%278%334$2@$1@@$0@@%334%278$2@$0@@%278$1@%274$0@%291$2@@@@@|@|@|@"])
  fun op DRESTRICT_SUBSET_SUBMAP x = x
    val op DRESTRICT_SUBSET_SUBMAP =
    DT(((("finite_map",251),
        [("bool",[25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[36,44]),("pred_set",[18,45])]),["DISK_THM"]),
       [read"%244%426%131@%132@@%424%278%28@%131@@%278%28@%132@@@"])
  fun op DRESTRICT_SUBMAP_gen x = x
    val op DRESTRICT_SUBMAP_gen =
    DT(((("finite_map",250),
        [("bool",[25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[36,44]),("pred_set",[45])]),["DISK_THM"]),
       [read"%244%424%28@%71@@%424%278%28@%0@@%71@@"])
  fun op IN_FRANGE_o_f_suff x = x
    val op IN_FRANGE_o_f_suff =
    DT(((("finite_map",249),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,94,96,105,124]),
         ("finite_map",[93,94,237]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%244%158%137%244%364$0@%326%63@@@%1%32$0@@@|@@%160%139%244%366$0@%327%465%32@%63@@@@%1$0@@|@@"])
  fun op IN_FRANGE_FUPDATE_suff x = x
    val op IN_FRANGE_FUPDATE_suff =
    DT(((("finite_map",248),
        [("bool",[25,26,27,52,58,63,105,124]),("finite_map",[247]),
         ("pred_set",[10,18,33,80])]),["DISK_THM"]),
       [read"%244%215%158%137%244%364$0@%326%63@@@%0$0@@|@@%0%418%93@@@@%158%137%244%364$0@%326%346%63@%93@@@@%0$0@@|@@"])
  fun op FRANGE_FUPDATE_SUBSET x = x
    val op FRANGE_FUPDATE_SUBSET =
    DT(((("finite_map",247),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,94,96,105,124,129,
          147]),("finite_map",[99,126,129,133]),("pair",[3,5,9]),
         ("pred_set",[6,10,18,33,80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%426%326%346%63@%93@@@%437%326%63@@%373%418%93@@%282@@@"])
  fun op IN_FRANGE_DRESTRICT_suff x = x
    val op IN_FRANGE_DRESTRICT_suff =
    DT(((("finite_map",246),
        [("bool",[25,26,47,48,53,54,63,94]),("finite_map",[245]),
         ("pred_set",[18]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%244%158%137%244%364$0@%326%63@@@%0$0@@|@@%158%137%244%364$0@%326%279%63@%130@@@@%0$0@@|@@"])
  fun op FUNION_ASSOC x = x
    val op FUNION_ASSOC =
    DT(((("finite_map",182),
        [("bool",[25,26,51,52,53,54,56,58,63,99,100,105,108,109,124,129]),
         ("finite_map",[34,58]),("pred_set",[3,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%162%28%162%71%162%77%222%334$2@%334$1@$0@@@%334%334$2@$1@@$0@@|@|@|@"])
  fun op FUNION_COMM x = x
    val op FUNION_COMM =
    DT(((("finite_map",181),
        [("bool",[25,26,27,52,53,54,56,58,63,96,99,105,108,109,124]),
         ("finite_map",[34,58]),("pred_set",[3,10,33,45,57]),
         ("sat",[1,3,5,6,7,11,12,13,15,16,17,18])]),["DISK_THM"]),
       [read"%162%28%162%71%244%276%291$1@@%291$0@@@%222%334$1@$0@@%334$0@$1@@@|@|@"])
  fun op DOMSUB_FUNION x = x
    val op DOMSUB_FUNION =
    DT(((("finite_map",180),
        [("bool",[25,26,27,48,51,53,54,56,58,63,64,105,124,129]),
         ("finite_map",[34,58,126,128]),("pred_set",[3,33,102]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%222%450%334%28@%71@@%84@@%334%450%28@%84@@%450%71@%84@@@"])
  fun op FUNION_EQ_IMPL x = x
    val op FUNION_EQ_IMPL =
    DT(((("finite_map",179),
        [("bool",
         [25,26,36,51,53,56,58,63,93,95,101,105,124,145])]),["DISK_THM"]),
       [read"%162%40%162%48%162%57%244%215%276%291$2@@%291$1@@@%215%276%291$2@@%291$0@@@%222$1@$0@@@@%222%334$2@$1@@%334$2@$0@@@|@|@|@"])
  fun op FUNION_EQ x = x
    val op FUNION_EQ =
    DT(((("finite_map",178),
        [("bool",
         [25,26,27,51,52,53,54,56,58,63,96,99,100,105,108,109,124]),
         ("finite_map",[36,39,58]),("pred_set",[3,10,33,45,57]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%162%40%162%48%162%57%244%215%276%291$2@@%291$1@@@%276%291$2@@%291$0@@@@%221%222%334$2@$1@@%334$2@$0@@@%222$1@$0@@@|@|@|@"])
  fun op FEMPTY_SUBMAP x = x
    val op FEMPTY_SUBMAP =
    DT(((("finite_map",177),
        [("bool",[25,26,27,51,53,54,58,63,105,124]),
         ("finite_map",[15,34,36]),("pred_set",[3,10]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%162%77%221%424$0@%298@@%222$0@%298@@|@"])
  fun op SUBMAP_FUNION_ID x = x
    val op SUBMAP_FUNION_ID =
    DT(((("finite_map",176),
        [("bool",[25,53,54,63,99]),("finite_map",[38,175]),
         ("pred_set",[59]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%215%162%40%162%48%424$1@%334$1@$0@@|@|@@%168%44%168%53%244%277%297$1@@%297$0@@@%425$0@%339$1@$0@@@|@|@@"])
  fun op SUBMAP_FUNION x = x
    val op SUBMAP_FUNION =
    DT(((("finite_map",175),
        [("bool",[25,26,27,53,54,55,58,63,96,100,105,109,124]),
         ("finite_map",[36,58]),("pred_set",[3,10,33,45,57]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%40%162%48%162%57%244%444%424$2@$1@@%215%276%291$2@@%291$1@@@%424$2@$0@@@@%424$2@%334$1@$0@@@|@|@|@"])
  fun op SUBMAP_FUNION_EQ x = x
    val op SUBMAP_FUNION_EQ =
    DT(((("finite_map",174),
        [("bool",[25,26,27,53,54,55,58,63,96,100,105,109,124]),
         ("finite_map",[36,58]),("pred_set",[3,10,33,45,57,67]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%215%162%40%162%48%162%57%244%276%291$2@@%291$1@@@%221%424$2@%334$1@$0@@@%424$2@$0@@@|@|@|@@%168%44%168%53%168%59%244%277%297$2@@%275%297$0@@%297$1@@@@%221%425$2@%339$1@$0@@@%425$2@$1@@@|@|@|@@"])
  fun op FUNION_EQ_FEMPTY x = x
    val op FUNION_EQ_FEMPTY =
    DT(((("finite_map",173),
        [("bool",[25,26,27,53,54,58,63,64,73,96,102,105,124,129]),
         ("finite_map",[15,34,58]),("pred_set",[3,10,33]),
         ("sat",[1,3,7,17,18])]),["DISK_THM"]),
       [read"%162%80%162%81%221%222%334$1@$0@@%298@@%215%222$1@%298@@%222$0@%298@@@|@|@"])
  fun op FEVERY_DRESTRICT_COMPL x = x
    val op FEVERY_DRESTRICT_COMPL =
    DT(((("finite_map",172),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,71,73,76,78,80,81,
          93,94,96,98,101,102,105,109,111,124,129,145]),
         ("finite_map",[16,17,44,48,84]),("pred_set",[45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%221%304%3@%278%344%28@%202%84@%138@@@%263%129@@@@%215%244%474%364%84@%129@@@%3%202%84@%138@@@@%304%3@%278%28@%263%373%84@%129@@@@@@"])
  fun op FUPDATE_ELIM x = x
    val op FUPDATE_ELIM =
    DT(((("finite_map",171),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,76,93,94,96,105,108,
          109,111,124]),("finite_map",[16,17,34]),("pred_set",[3,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%158%84%159%138%162%28%244%215%364$2@%291$0@@@%219%284$0@$2@@$1@@@%222%344$0@%202$2@$1@@@$0@@|@|@|@"])
  fun op FEVERY_STRENGTHEN_THM x = x
    val op FEVERY_STRENGTHEN_THM =
    DT(((("finite_map",170),
        [("bool",[25,26,27,30,36,51,53,54,55,58,63,105,109,124]),
         ("finite_map",[15,16,17,84]),("pred_set",[10,80]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%215%304%3@%298@@%244%215%304%3@%28@@%3%202%146@%153@@@@%304%3@%344%28@%202%146@%153@@@@@"])
  fun op FMAP_MAP2_FUPDATE x = x
    val op FMAP_MAP2_FUPDATE =
    DT(((("finite_map",169),
        [("bool",
         [5,25,26,27,30,36,51,52,53,54,56,58,63,64,102,105,108,109,124,
          129]),("finite_map",[16,17,34,167]),
         ("pred_set",[80])]),["DISK_THM"]),
       [read"%222%314%38@%345%112@%203%146@%139@@@@%344%314%38@%112@@%202%146@%38%203%146@%139@@@@@"])
  fun op FMAP_MAP2_FEMPTY x = x
    val op FMAP_MAP2_FEMPTY =
    DT(((("finite_map",168),
        [("bool",[25,26,27,36,51,53,56,58,105,124]),
         ("finite_map",[15,34,167]),("pred_set",[10])]),["DISK_THM"]),
       [read"%222%314%38@%299@@%298@"])
  fun op FMAP_MAP2_THM x = x
    val op FMAP_MAP2_THM =
    DT(((("finite_map",167),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("finite_map",[24,110,166])]),["DISK_THM"]),
       [read"%215%230%291%314%38@%112@@@%292%112@@@%158%146%244%364$0@%292%112@@@%219%284%314%38@%112@@$0@@%38%203$0@%285%112@$0@@@@@|@@"])
  fun op FUPDATE_PURGE x = x
    val op FUPDATE_PURGE =
    DT(((("finite_map",165),
        [("bool",[25,26,27,36,51,53,54,55,56,58,63,105,124,129,147]),
         ("finite_map",[16,17,35,126,129]),("pred_set",[3,80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%158%146%159%153%222%344$2@%202$1@$0@@@%344%450$2@$1@@%202$1@$0@@@|@|@|@"])
  fun op FMEQ_SINGLE_SIMPLE_DISJ_ELIM x = x
    val op FMEQ_SINGLE_SIMPLE_DISJ_ELIM =
    DT(((("finite_map",164),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,78,80,81,86,93,
          94,96,97,101,102,105,124,125,143,145]),
         ("finite_map",[11,14,15,16,34]),("pred_set",[3,10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%61%158%84%159%138%158%21%159%24%221%222%344$4@%202$3@$2@@@%344%298@%202$1@$0@@@@%215%218$3@$1@@%215%219$2@$0@@%444%222$4@%298@@%246%140%222$5@%344%298@%202$4@$0@@@|@@@@@|@|@|@|@|@"])
  fun op FMEQ_SINGLE_SIMPLE_ELIM x = x
    val op FMEQ_SINGLE_SIMPLE_ELIM =
    DT(((("finite_map",163),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,75,84,93,94,96]),
         ("finite_map",[144,157,162]),("list",[120]),("pair",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%186%2%158%84%159%138%158%21%159%24%159%122%221%247%61%215%222%344$0@%202$5@$4@@@%344%298@%202$3@$2@@@@$6%344$0@%202$5@$1@@@@|@@%215%218$4@$2@@%215%219$3@$1@@$5%344%298@%202$2@$0@@@@@@|@|@|@|@|@|@"])
  fun op FMEQ_ENUMERATE_CASES x = x
    val op FMEQ_ENUMERATE_CASES =
    DT(((("finite_map",162),
        [("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,73,93,94,95,101,
          102,105,124,145]),("finite_map",[11,15,16,34,144,145,159]),
         ("list",[23,25,43,120]),("pair",[4,8,25]),
         ("pred_set",[3,10,41,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%40%194%94%200%123%244%222%344$2@$0@@%352%298@$1@@@%368$0@%390$1@@@|@|@|@"])
  fun op FUPDATE_LIST_SAME_KEYS_UNWIND x = x
    val op FUPDATE_LIST_SAME_KEYS_UNWIND =
    DT(((("finite_map",161),
        [("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,75,78,84,93,
          94,96,105,124,146]),("finite_map",[11,144,145,160]),
         ("list",[20,23,25,43,45,48,49,61,215]),("pair",[4,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%40%162%48%194%96%194%97%244%215%222%352$3@$1@@%352$2@$0@@@%215%238%393%330@$1@@%393%330@$0@@@%252%393%330@$1@@@@@%215%240$1@$0@@%194%94%244%238%393%330@$0@@%393%330@$2@@@%222%352$4@$0@@%352$3@$0@@@|@@@|@|@|@|@"])
  fun op FUPDATE_LIST_SAME_UPDATE x = x
    val op FUPDATE_LIST_SAME_UPDATE =
    DT(((("finite_map",160),
        [("bool",
         [13,14,25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,71,76,78,80,
          81,93,94,96,105,108,109,111,124,129,147]),
         ("finite_map",[16,17,34,44,46,144]),("list",[23,25,43]),
         ("pair",[8,25]),("pred_set",[3,10,45,54,80,286,292]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%194%94%162%40%162%48%221%222%352$1@$2@@%352$0@$2@@@%222%278$1@%263%387%393%330@$2@@@@@%278$0@%263%387%393%330@$2@@@@@@|@|@|@"])
  fun op FDOM_FUPDATE_LIST x = x
    val op FDOM_FUPDATE_LIST =
    DT(((("finite_map",159),
        [("bool",[14,25,26,27,36,47,48,52,53,54,56,63,71]),
         ("finite_map",[16,144]),("list",[23,25,43]),("pair",[8,25]),
         ("pred_set",[3,10,33,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%194%94%162%61%230%291%352$0@$1@@@%437%291$0@@%387%393%330@$1@@@@|@|@"])
  fun op FUPD11_SAME_UPDATE x = x
    val op FUPD11_SAME_UPDATE =
    DT(((("finite_map",158),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,76,80,81,93,94,
          96,105,108,109,111,124,129,147]),("finite_map",[16,17,34,44]),
         ("pred_set",[3,10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%40%162%48%158%84%159%138%221%222%344$3@%202$1@$0@@@%344$2@%202$1@$0@@@@%222%278$3@%263%373$1@%282@@@@%278$2@%263%373$1@%282@@@@@|@|@|@|@"])
  fun op FUPD_SAME_KEY_UNWIND x = x
    val op FUPD_SAME_KEY_UNWIND =
    DT(((("finite_map",157),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,73,93,94,96,101,
          102,105,108,109,111,124,129,145,147]),("finite_map",[16,17,34]),
         ("pred_set",[3,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%40%162%48%158%84%159%142%159%143%244%222%344$4@%202$2@$1@@@%344$3@%202$2@$0@@@@%215%219$1@$0@@%159%138%222%344$5@%202$3@$0@@@%344$4@%202$3@$0@@@|@@@|@|@|@|@|@"])
  fun op FUPD11_SAME_BASE x = x
    val op FUPD11_SAME_BASE =
    DT(((("finite_map",156),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,73,76,78,
          80,81,93,94,96,101,102,105,108,109,111,124,129,145,147]),
         ("finite_map",[16,17,34]),("pred_set",[3,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%158%87%159%142%158%89%159%143%221%222%344$4@%202$3@$2@@@%344$4@%202$1@$0@@@@%444%215%218$3@$1@@%219$2@$0@@@%215%474%218$3@$1@@@%215%364$3@%291$4@@@%215%364$1@%291$4@@@%215%222%344$4@%202$3@$2@@@$4@@%222%344$4@%202$1@$0@@@$4@@@@@@@|@|@|@|@|@"])
  fun op SAME_KEY_UPDATES_DIFFER x = x
    val op SAME_KEY_UPDATES_DIFFER =
    DT(((("finite_map",155),
        [("bool",[25,26,27,52,53,54,58,71,76,92,96,98,105,124,143]),
         ("finite_map",[11,16,34]),("pred_set",[80])]),["DISK_THM"]),
       [read"%162%40%162%48%158%84%159%142%159%143%244%474%219$1@$0@@@%474%222%344$4@%202$2@$1@@@%344$3@%202$2@$0@@@@@|@|@|@|@|@"])
  fun op FUPD11_SAME_NEW_KEY x = x
    val op FUPD11_SAME_NEW_KEY =
    DT(((("finite_map",154),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,73,93,94,96,101,102,
          105,106,108,109,111,124,129,145,147]),("finite_map",[16,17,34]),
         ("pred_set",[3,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%40%162%48%158%84%159%142%159%143%244%215%474%364$2@%291$4@@@@%474%364$2@%291$3@@@@@%221%222%344$4@%202$2@$1@@@%344$3@%202$2@$0@@@@%215%222$4@$3@@%219$1@$0@@@@|@|@|@|@|@"])
  fun op FUPD11_SAME_KEY_AND_BASE x = x
    val op FUPD11_SAME_KEY_AND_BASE =
    DT(((("finite_map",153),
        [("bool",
         [25,36,51,53,56,58,63,73,101,102,105,106,124,129,145,147]),
         ("finite_map",[16,17,34]),("pred_set",[80])]),["DISK_THM"]),
       [read"%162%28%158%84%159%142%159%143%221%222%344$3@%202$2@$1@@@%344$3@%202$2@$0@@@@%219$1@$0@@|@|@|@|@"])
  fun op FUPDATE_LIST_SNOC x = x
    val op FUPDATE_LIST_SNOC =
    DT(((("finite_map",152),
        [("bool",[14,25,56]),("finite_map",[144]),
         ("list",[43,256])]),["DISK_THM"]),
       [read"%194%151%200%150%162%61%222%352$0@%421$1@$2@@@%344%352$0@$2@@$1@@|@|@|@"])
  fun op FOLDL_FUPDATE_LIST x = x
    val op FOLDL_FUPDATE_LIST =
    DT(((("finite_map",151),
        [("bool",[25,56]),("finite_map",[143]),
         ("rich_list",[99])]),["DISK_THM"]),
       [read"%170%45%171%54%191%103%165%12%225%319%64%84%347$1@%206$5$0@@$4$0@@@||@$0@$1@@%355$0@%392%84%206$4$0@@$3$0@@|@$1@@@|@|@|@|@"])
  fun op FUPDATE_LIST_APPLY_MEM x = x
    val op FUPDATE_LIST_APPLY_MEM =
    DT(((("finite_map",150),
        [("arithmetic",[28,37]),
         ("bool",[14,25,26,27,36,51,53,54,55,56,58,63,72,96,105,124,143]),
         ("finite_map",[11,144,145,146]),
         ("list",[17,22,23,43,67,89,128,170]),("pair",[5,8,9,24]),
         ("prim_rec",[6,7]),("rich_list",[57]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%194%94%162%28%158%84%159%138%199%121%244%215%217$0@%381$4@@@%215%218$2@%280$0@%393%330@$4@@@@%215%219$1@%281$0@%394%417@$4@@@@%199%116%244%215%217$1@$0@@%217$0@%381$5@@@@%474%218%280$0@%393%330@$5@@@$3@@@|@@@@@%219%284%352$3@$4@@$2@@$1@@|@|@|@|@|@"])
  fun op FEVERY_FUPDATE_LIST x = x
    val op FEVERY_FUPDATE_LIST =
    DT(((("finite_map",149),
        [("bool",[14,25,26,27,51,53,54,56,58,63,105,106,124,129,147,169]),
         ("finite_map",[46,51,55,86,144]),("list",[23,25,30,43,215]),
         ("pair",[5,8]),("pred_set",[37,137,286,292,294])]),["DISK_THM"]),
       [read"%244%252%393%330@%94@@@%221%304%3@%352%61@%94@@@%215%283%3@%94@@%304%3@%278%61@%263%387%393%330@%94@@@@@@@@"])
  fun op FUPDATE_FUPDATE_LIST_MEM x = x
    val op FUPDATE_FUPDATE_LIST_MEM =
    DT(((("finite_map",148),
        [("bool",[14,25,26,27,30,53,54,55,56,58,63,105,124]),
         ("finite_map",[13,14,144]),("list",[23,25,43]),("pair",[5,8]),
         ("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%244%364%84@%387%393%330@%94@@@@%222%352%344%61@%202%84@%138@@@%94@@%352%61@%94@@@"])
  fun op FUPDATE_FUPDATE_LIST_COMMUTES x = x
    val op FUPDATE_FUPDATE_LIST_COMMUTES =
    DT(((("finite_map",147),
        [("bool",[25,26,27,52,53,54,56,58,96,105,124]),
         ("finite_map",[13,144,146]),("list",[23,25,230,260,262,273]),
         ("pair",[5,8]),("pred_set",[10,33,80])]),["DISK_THM"]),
       [read"%244%474%364%84@%387%393%330@%94@@@@@%222%352%344%61@%202%84@%138@@@%94@@%344%352%61@%94@@%202%84@%138@@@@"])
  fun op FUPDATE_LIST_APPEND x = x
    val op FUPDATE_LIST_APPEND =
    DT(((("finite_map",146),
        [("bool",[14,25,56]),("finite_map",[144]),
         ("list",[20,43])]),["DISK_THM"]),
       [read"%222%352%61@%254%96@%97@@@%352%352%61@%96@@%97@@"])
  fun op FUPDATE_LIST_APPLY_NOT_MEM x = x
    val op FUPDATE_LIST_APPLY_NOT_MEM =
    DT(((("finite_map",145),
        [("bool",[14,25,26,27,53,54,56,58,96,105,124,129,147]),
         ("finite_map",[17,144]),("list",[23,25,43]),("pair",[5,8]),
         ("pred_set",[10,80])]),["DISK_THM"]),
       [read"%194%94%162%28%158%84%244%474%364$0@%387%393%330@$2@@@@@%219%284%352$1@$2@@$0@@%284$1@$0@@@|@|@|@"])
  fun op FUPDATE_LIST_THM x = x
    val op FUPDATE_LIST_THM =
    DT(((("finite_map",144),
        [("bool",[25,56]),("finite_map",[143]),
         ("list",[29])]),["DISK_THM"]),
       [read"%162%28%215%222%352$0@%407@@$0@@%200%79%194%136%222%352$2@%272$1@$0@@@%352%344$2@$1@@$0@@|@|@@|@"])
  fun op SUBMAP_FUPDATE x = x
    val op SUBMAP_FUPDATE =
    DT(((("finite_map",142),
        [("bool",
         [25,26,27,30,48,51,53,54,55,56,58,63,73,100,101,102,103,105,108,
          109,124,129,145,147]),("finite_map",[16,17,36,126,129]),
         ("pred_set",[80,102]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%162%71%158%146%159%153%221%424%344$3@%202$1@$0@@@$2@@%215%364$1@%291$2@@@%215%219%284$2@$1@@$0@@%424%450$3@$1@@%450$2@$1@@@@@|@|@|@|@"])
  fun op SUBMAP_TRANS x = x
    val op SUBMAP_TRANS =
    DT(((("finite_map",40),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("finite_map",[36])]),["DISK_THM"]),
       [read"%162%28%162%71%162%77%244%215%424$2@$1@@%424$1@$0@@@%424$2@$0@@|@|@|@"])
  fun op SUBMAP_ANTISYM x = x
    val op SUBMAP_ANTISYM =
    DT(((("finite_map",39),
        [("bool",[25,26,47,48,51,53,54,58,63,71,76,81,94]),
         ("finite_map",[34,36,38]),("pred_set",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%162%71%221%215%424$1@$0@@%424$0@$1@@@%222$1@$0@@|@|@"])
  fun op SUBMAP_REFL x = x
    val op SUBMAP_REFL =
    DT(((("finite_map",38),
        [("bool",[25,36,51,53,56]),("finite_map",[36])]),["DISK_THM"]),
       [read"%162%28%424$0@$0@|@"])
  fun op SUBMAP_FEMPTY x = x
    val op SUBMAP_FEMPTY =
    DT(((("finite_map",37),
        [("bool",[25,26,27,36,53,58,105,124]),("finite_map",[15,36]),
         ("pred_set",[10])]),["DISK_THM"]), [read"%162%28%424%298@$0@|@"])
  fun op fmap_EXT x = x
    val op fmap_EXT =
    DT(((("finite_map",35),
        [("bool",[58]),("finite_map",[34])]),["DISK_THM"]),
       [read"%162%28%162%71%221%222$1@$0@@%215%230%291$1@@%291$0@@@%158%146%244%364$0@%291$2@@@%219%284$2@$0@@%284$1@$0@@@|@@@|@|@"])
  fun op fmap_EQ_THM x = x
    val op fmap_EQ_THM =
    DT(((("finite_map",34),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,59,63,93,94,96]),
         ("finite_map",[32,33]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%162%71%221%215%230%291$1@@%291$0@@@%158%146%244%364$0@%291$2@@@%219%284$2@$0@@%284$1@$0@@@|@@@%222$1@$0@@|@|@"])
  fun op fmap_EQ x = x
    val op fmap_EQ =
    DT(((("finite_map",33),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,55,56,58,60,63,71,72,
          73,93,94,95,96,101,102,105,124,129,145,146,147]),("combin",[19]),
         ("finite_map",[11,13,14,15,16,17,18,20,25,28,30,32]),
         ("pred_set",[3,10,80,207]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%162%71%221%215%230%291$1@@%291$0@@@%229%284$1@@%284$0@@@@%222$1@$0@@|@|@"])
  fun op NOT_FDOM_FAPPLY_FEMPTY x = x
    val op NOT_FDOM_FAPPLY_FEMPTY =
    DT(((("finite_map",32),
        [("bool",[14,25,26,27,30,36,52,53,54,56,63]),
         ("finite_map",[12,16,30]),("pred_set",[80])]),["DISK_THM"]),
       [read"%162%28%158%146%244%474%364$0@%291$1@@@@%219%284$1@$0@@%284%298@$0@@@|@|@"])
  fun op FM_PULL_APART x = x
    val op FM_PULL_APART =
    DT(((("finite_map",31),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,78,80,83,93,94,96,
          105,124,146]),("finite_map",[13,15,16,30]),("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%61%158%84%244%364$0@%291$1@@@%247%68%246%138%215%222$3@%344$1@%202$2@$0@@@@%474%364$2@%291$1@@@@|@|@@|@|@"])
  fun op fmap_INDUCT x = x
    val op fmap_INDUCT =
    DT(((("finite_map",30),
        [("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,72,74,78,81,84,93,
          94,96,146]),("finite_map",[28,29]),("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%186%2%244%215$0%298@@%162%28%244$1$0@@%158%146%159%153%244%474%364$1@%291$2@@@@$3%344$2@%202$1@$0@@@@|@|@@|@@@%162%28$1$0@|@@|@"])
  fun op FCARD_SUC x = x
    val op FCARD_SUC =
    DT(((("finite_map",29),
        [("arithmetic",[24,25,26,27,46,71,93,172,173,177,180]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,86,96,101,104,105,106,
          124,129,145,147]),("finite_map",[13,14,16,20,26,27]),("num",[7]),
         ("numeral",[3,5,8]),("pred_set",[80]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%162%28%199%121%221%241%290$1@@%428$0@@@%247%39%245%146%246%153%215%474%364$1@%291$2@@@@%215%241%290$2@@$3@@%222$4@%344$2@%202$1@$0@@@@@|@|@|@@|@|@"])
  fun op FCARD_0_FEMPTY x = x
    val op FCARD_0_FEMPTY =
    DT(((("finite_map",28),
        [("arithmetic",[26,79]),
         ("bool",[14,25,26,27,30,51,53,54,56,58,63,64,105,124,129]),
         ("finite_map",[15,18,20,26,27]),("numeral",[3,6]),
         ("pred_set",[10])]),["DISK_THM"]),
       [read"%162%28%221%241%290$0@@%216@@%222$0@%298@@|@"])
  fun op FCARD_FUPDATE x = x
    val op FCARD_FUPDATE =
    DT(((("finite_map",27),
        [("arithmetic",[25,26,27,71,173,177,180]),
         ("bool",[25,26,27,30,36,52,54,56,58,63,64,104,105,129,147]),
         ("finite_map",[16,24,25]),("numeral",[3,5,8]),
         ("pred_set",[208])]),["DISK_THM"]),
       [read"%162%61%158%10%159%17%241%290%344$2@%202$1@$0@@@@%268%364$1@%291$2@@@%290$2@@%201%410%258%441@@@%290$2@@@@|@|@|@"])
  fun op FCARD_FEMPTY x = x
    val op FCARD_FEMPTY =
    DT(((("finite_map",26),
        [("bool",[25,56]),("finite_map",[15,25]),
         ("pred_set",[207])]),["DISK_THM"]), [read"%241%290%298@@%216@"])
  fun op FDOM_FINITE x = x
    val op FDOM_FINITE =
    DT(((("finite_map",24),
        [("bool",[25,36,53,58,63,105,124]),("finite_map",[15,16,20]),
         ("pred_set",[185,187])]),["DISK_THM"]),
       [read"%162%61%306%291$0@@|@"])
  fun op FDOM_F_FEMPTY1 x = x
    val op FDOM_F_FEMPTY1 =
    DT(((("finite_map",23),
        [("bool",[25,26,27,36,52,53,54,56,58,63,71,76,96,105,124,140]),
         ("finite_map",[15,16,18,20]),("pred_set",[10,80])]),["DISK_THM"]),
       [read"%162%28%221%158%10%474%364$0@%291$1@@@|@@%222$0@%298@@|@"])
  fun op FDOM_EQ_EMPTY_SYM x = x
    val op FDOM_EQ_EMPTY_SYM =
    DT(((("finite_map",22),
        [("bool",[58]),("finite_map",[21])]),["DISK_THM"]),
       [read"%162%28%221%230%282@%291$0@@@%222$0@%298@@|@"])
  fun op FDOM_EQ_EMPTY x = x
    val op FDOM_EQ_EMPTY =
    DT(((("finite_map",21),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,72,76,77,94,96,
          105,106,124]),("finite_map",[15,16,18,20]),
         ("pred_set",[3,10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%221%230%291$0@@%282@@%222$0@%298@@|@"])
  fun op fmap_SIMPLE_INDUCT x = x
    val op fmap_SIMPLE_INDUCT =
    DT(((("finite_map",20),
        [("bool",[14,25,26,51,53,63,132,133,138]),
         ("finite_map",[0,6,7,8])]),["DISK_THM"]),
       [read"%186%2%244%215$0%298@@%162%28%244$1$0@@%158%146%159%153$3%344$2@%202$1@$0@@@|@|@@|@@@%162%28$1$0@|@@|@"])
  fun op FDOM_EQ_FDOM_FUPDATE x = x
    val op FDOM_EQ_FDOM_FUPDATE =
    DT(((("finite_map",19),
        [("bool",[25,36,51,52,53,58,63,105,106,124]),("finite_map",[16]),
         ("pred_set",[3,80])]),["DISK_THM"]),
       [read"%162%28%158%146%244%364$0@%291$1@@@%159%153%230%291%344$2@%202$1@$0@@@@%291$2@@|@@|@|@"])
  fun op NOT_EQ_FEMPTY_FUPDATE x = x
    val op NOT_EQ_FEMPTY_FUPDATE =
    DT(((("finite_map",18),
        [("bool",[25,26,27,52,53,54,63,71,76,96,140]),
         ("finite_map",[15,16]),("pred_set",[3,10,80])]),["DISK_THM"]),
       [read"%162%28%158%10%159%17%474%222%298@%344$2@%202$1@$0@@@@|@|@|@"])
  fun op FAPPLY_FUPDATE_THM x = x
    val op FAPPLY_FUPDATE_THM =
    DT(((("finite_map",17),
        [("bool",[25,26,27,30,56,63,64]),
         ("finite_map",[11,12])]),["DISK_THM"]),
       [read"%162%28%158%10%159%17%158%146%219%284%344$3@%202$2@$1@@@$0@@%265%218$0@$2@@$1@%284$3@$0@@@|@|@|@|@"])
  fun op FDOM_FUPDATE x = x
    val op FDOM_FUPDATE =
    DT(((("finite_map",16),
        [("bool",[14,25,26,27,30,52,53,56,63,64,132,133,138]),
         ("finite_map",[0,6,7,10]),("pred_set",[0,3,80]),
         ("sum",[17])]),["DISK_THM"]),
       [read"%162%28%158%10%159%17%230%291%344$2@%202$1@$0@@@@%373$1@%291$2@@@|@|@|@"])
  fun op FDOM_FEMPTY x = x
    val op FDOM_FEMPTY =
    DT(((("finite_map",15),
        [("bool",[14,25,26,27,35,36,53,54,63,132,133,138]),
         ("finite_map",[0,6,8,10]),("pred_set",[0,3,10]),
         ("sum",[17])]),["DISK_THM"]), [read"%230%291%298@@%282@"])
  fun op FUPDATE_EQ x = x
    val op FUPDATE_EQ =
    DT(((("finite_map",14),
        [("bool",[14,25,26,27,30,53,56,59,63,64,132,133,138]),
         ("finite_map",[0,6,7])]),["DISK_THM"]),
       [read"%162%28%158%10%159%17%159%20%222%344%344$3@%202$2@$1@@@%202$2@$0@@@%344$3@%202$2@$0@@@|@|@|@|@"])
  fun op FUPDATE_COMMUTES x = x
    val op FUPDATE_COMMUTES =
    DT(((("finite_map",13),
        [("bool",[14,25,26,27,30,53,56,59,63,64,132,133,138]),
         ("finite_map",[0,6,7])]),["DISK_THM"]),
       [read"%162%28%158%10%159%17%158%19%159%25%244%474%218$3@$1@@@%222%344%344$4@%202$3@$2@@@%202$1@$0@@@%344%344$4@%202$1@$0@@@%202$3@$2@@@@|@|@|@|@|@"])
  fun op NOT_EQ_FAPPLY x = x
    val op NOT_EQ_FAPPLY =
    DT(((("finite_map",12),
        [("bool",[14,25,26,27,53,56,63,64,132,133,138]),
         ("finite_map",[0,6,7,9])]),["DISK_THM"]),
       [read"%162%28%158%10%158%146%159%153%244%474%218$2@$1@@@%219%284%344$3@%202$1@$0@@@$2@@%284$3@$2@@@|@|@|@|@"])
  fun op FAPPLY_FUPDATE x = x
    val op FAPPLY_FUPDATE =
    DT(((("finite_map",11),
        [("bool",[14,25,26,53,56,63,64,132,133,138]),
         ("finite_map",[0,6,7,9]),("sum",[19])]),["DISK_THM"]),
       [read"%162%28%158%146%159%153%219%284%344$2@%202$1@$0@@@$1@@$0@|@|@|@"])
  fun op is_fmap_cases x = x
    val op is_fmap_cases =
    DT(((("finite_map",4),
        [("bool",[14,25,26,53,132,133,138]),
         ("finite_map",[0])]),["DISK_THM"]),
       [read"%180%15%221%462$0@@%444%232$0@%10%372%471@|@@%248%33%245%10%246%17%215%232$3@%146%271%218$0@$2@@%371$1@@$3$0@@|@@%462$2@@|@|@|@@@|@"])
  fun op is_fmap_strongind x = x
    val op is_fmap_strongind =
    DT(((("finite_map",3),
        [("bool",[14,25,26,53,132,133,138]),
         ("finite_map",[0])]),["DISK_THM"]),
       [read"%187%83%244%215$0%10%372%471@|@@%180%33%158%10%159%17%244%215%462$2@@$3$2@@@$3%146%271%218$0@$2@@%371$1@@$3$0@@|@@|@|@|@@@%180%15%244%462$0@@$1$0@@|@@|@"])
  fun op is_fmap_ind x = x
    val op is_fmap_ind =
    DT(((("finite_map",2),
        [("bool",[14,25,26,53,132,133,138]),
         ("finite_map",[0])]),["DISK_THM"]),
       [read"%187%83%244%215$0%10%372%471@|@@%180%33%158%10%159%17%244$3$2@@$3%146%271%218$0@$2@@%371$1@@$3$0@@|@@|@|@|@@@%180%15%244%462$0@@$1$0@@|@@|@"])
  fun op is_fmap_rules x = x
    val op is_fmap_rules =
    DT(((("finite_map",1),
        [("bool",[14,25,26,53,132,133,138]),
         ("finite_map",[0])]),["DISK_THM"]),
       [read"%215%462%10%372%471@|@@%180%33%158%10%159%17%244%462$2@@%462%146%271%218$0@$2@@%371$1@@$3$0@@|@@|@|@|@@"])
  fun op FUNION_FEMPTY_1 x = x
    val op FUNION_FEMPTY_1 =
    DT(((("finite_map",60),
        [("bool",[25,26,27,36,51,53,56,58,105,124,129,147]),
         ("finite_map",[15,34,58]),("pred_set",[10,41])]),["DISK_THM"]),
       [read"%162%71%222%334%298@$0@@$0@|@"])
  fun op FUNION_FEMPTY_2 x = x
    val op FUNION_FEMPTY_2 =
    DT(((("finite_map",61),
        [("bool",[25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[15,34,58]),("pred_set",[41])]),["DISK_THM"]),
       [read"%162%28%222%334$0@%298@@$0@|@"])
  fun op FUNION_FUPDATE_1 x = x
    val op FUNION_FUPDATE_1 =
    DT(((("finite_map",62),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,94,105,108,109,111,124,
          129,147]),("finite_map",[16,17,34,58]),("pred_set",[3,33,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%162%71%158%146%159%153%222%334%344$3@%202$1@$0@@@$2@@%344%334$3@$2@@%202$1@$0@@@|@|@|@|@"])
  fun op FUNION_FUPDATE_2 x = x
    val op FUNION_FUPDATE_2 =
    DT(((("finite_map",63),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,108,
          109,111,124,129,147]),("finite_map",[16,17,34,58]),
         ("pred_set",[3,33,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%162%71%158%146%159%153%222%334$3@%344$2@%202$1@$0@@@@%266%364$1@%291$3@@@%334$3@$2@@%344%334$3@$2@@%202$1@$0@@@@|@|@|@|@"])
  fun op EQ_FDOM_SUBMAP x = x
    val op EQ_FDOM_SUBMAP =
    DT(((("finite_map",42),
        [("bool",[25,26,27,48,53,54,63,100]),("finite_map",[35,36]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%221%222%28@%71@@%215%424%28@%71@@%230%291%28@@%291%71@@@@"])
  fun op SUBMAP_FUPDATE_EQN x = x
    val op SUBMAP_FUPDATE_EQN =
    DT(((("finite_map",43),
        [("bool",
         [25,26,27,51,52,53,54,56,58,63,93,95,97,98,101,102,103,105,106,
          109,111,124,145]),("finite_map",[16,17,36]),("pred_set",[80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%221%424%28@%344%28@%202%146@%153@@@@%444%474%364%146@%291%28@@@@%215%219%284%28@%146@@%153@@%364%146@%291%28@@@@@"])
  fun op DRESTRICT_FEMPTY x = x
    val op DRESTRICT_FEMPTY =
    DT(((("finite_map",45),
        [("bool",[25,26,27,36,51,53,56,58,105,124]),
         ("finite_map",[15,34,44]),("pred_set",[10,53])]),["DISK_THM"]),
       [read"%172%124%222%278%298@$0@@%298@|@"])
  fun op DRESTRICT_FUPDATE x = x
    val op DRESTRICT_FUPDATE =
    DT(((("finite_map",46),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,108,
          109,111,124,129,147]),("finite_map",[16,17,34,44]),
         ("pred_set",[3,45,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%172%124%158%146%159%153%222%278%344$3@%202$1@$0@@@$2@@%266%364$1@$2@@%344%278$3@$2@@%202$1@$0@@@%278$3@$2@@@|@|@|@|@"])
  fun op STRONG_DRESTRICT_FUPDATE x = x
    val op STRONG_DRESTRICT_FUPDATE =
    DT(((("finite_map",47),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,93,94,96,105,108,109,
          111,124,129,147]),("finite_map",[16,17,34,44]),
         ("pred_set",[3,45,80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%172%124%158%146%159%153%244%364$1@$2@@%222%278%344$3@%202$1@$0@@@$2@@%344%278$3@%273$2@$1@@@%202$1@$0@@@@|@|@|@|@"])
  fun op FDOM_DRESTRICT x = x
    val op FDOM_DRESTRICT =
    DT(((("finite_map",48),
        [("bool",[25,56]),("finite_map",[44])]),["DISK_THM"]),
       [read"%162%28%172%124%160%148%230%291%278$2@$1@@@%375%291$2@@$1@@|@|@|@"])
  fun op NOT_FDOM_DRESTRICT x = x
    val op NOT_FDOM_DRESTRICT =
    DT(((("finite_map",49),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124,
          129,147]),("finite_map",[34,44]),("pred_set",[3,10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%158%146%244%474%364$0@%291$1@@@@%222%278$1@%263%373$0@%282@@@@$1@@|@|@"])
  fun op DRESTRICT_SUBMAP x = x
    val op DRESTRICT_SUBMAP =
    DT(((("finite_map",50),
        [("bool",[14,25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[16,30,36,37,44,45]),
         ("pred_set",[45,80])]),["DISK_THM"]),
       [read"%162%28%172%124%424%278$1@$0@@$1@|@|@"])
  fun op DRESTRICT_DRESTRICT x = x
    val op DRESTRICT_DRESTRICT =
    DT(((("finite_map",51),
        [("bool",[25,26,27,30,51,56,58,63,64,105,124,129]),
         ("finite_map",[30,45,46]),("pred_set",[45])]),["DISK_THM"]),
       [read"%162%28%172%0%172%5%222%278%278$2@$1@@$0@@%278$2@%375$1@$0@@@|@|@|@"])
  fun op DRESTRICT_IS_FEMPTY x = x
    val op DRESTRICT_IS_FEMPTY =
    DT(((("finite_map",52),
        [("bool",[25,26,47,48,53,54,56,63,94]),("finite_map",[21,48]),
         ("pred_set",[53]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%222%278$0@%282@@%298@|@"])
  fun op FUPDATE_DRESTRICT x = x
    val op FUPDATE_DRESTRICT =
    DT(((("finite_map",53),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,94,105,108,109,111,124,
          129,147]),("finite_map",[16,17,34,44]),
         ("pred_set",[3,10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%158%146%159%153%222%344$2@%202$1@$0@@@%344%278$2@%263%373$1@%282@@@@%202$1@$0@@@|@|@|@"])
  fun op STRONG_DRESTRICT_FUPDATE_THM x = x
    val op STRONG_DRESTRICT_FUPDATE_THM =
    DT(((("finite_map",54),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,108,
          109,111,124,129,147]),("finite_map",[16,17,34,44]),
         ("pred_set",[3,10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%28%172%124%158%146%159%153%222%278%344$3@%202$1@$0@@@$2@@%266%364$1@$2@@%344%278$3@%375%263%373$1@%282@@@$2@@@%202$1@$0@@@%278$3@%375%263%373$1@%282@@@$2@@@@|@|@|@|@"])
  fun op DRESTRICT_UNIV x = x
    val op DRESTRICT_UNIV =
    DT(((("finite_map",55),
        [("bool",[25,36,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[34,44]),("pred_set",[14,45,54])]),["DISK_THM"]),
       [read"%162%28%222%278$0@%439@@$0@|@"])
  fun op SUBMAP_DRESTRICT x = x
    val op SUBMAP_DRESTRICT =
    DT(((("finite_map",56),
        [("bool",[25,63]),("finite_map",[50])]),["DISK_THM"]),
       [read"%424%278%28@%0@@%28@"])
  fun op DRESTRICT_EQ_DRESTRICT x = x
    val op DRESTRICT_EQ_DRESTRICT =
    DT(((("finite_map",57),
        [("bool",[25,26,51,53,54,55,58,63,99,100,105,109,124,129,147]),
         ("finite_map",[34,36,44]),("pred_set",[3,45]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%40%162%48%172%131%172%132%221%222%278$3@$1@@%278$2@$0@@@%215%424%278$3@$1@@$2@@%215%424%278$2@$0@@$3@@%230%375$1@%291$3@@@%375$0@%291$2@@@@@@|@|@|@|@"])
  fun op FDOM_FUNION x = x
    val op FDOM_FUNION =
    DT(((("finite_map",64),
        [("bool",[25,36,56]),("finite_map",[58])]),["DISK_THM"]),
       [read"%162%28%162%71%160%148%230%291%334$2@$1@@@%437%291$2@@%291$1@@@|@|@|@"])
  fun op FMERGE_DOMSUB x = x
    val op FMERGE_DOMSUB =
    DT(((("finite_map",141),
        [("bool",[25,56]),("finite_map",[75,121])]),["DISK_THM"]),
       [read"%173%113%164%118%164%120%159%85%224%452%315$3@$2@$1@@$0@@%315$3@%452$2@$0@@%452$1@$0@@@|@|@|@|@"])
  fun op SUBMAP_DOMSUB x = x
    val op SUBMAP_DOMSUB =
    DT(((("finite_map",140),
        [("bool",[25,63]),("finite_map",[56,121])]),["DISK_THM"]),
       [read"%424%450%28@%84@@%28@"])
  fun op fmap_CASES x = x
    val op fmap_CASES =
    DT(((("finite_map",139),
        [("bool",[25,26,52,53,54,55,56,63,75]),("finite_map",[20]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%162%28%444%222$0@%298@@%247%71%245%146%246%153%222$3@%344$2@%202$1@$0@@@|@|@|@@|@"])
  fun op DOMSUB_NOT_IN_DOM x = x
    val op DOMSUB_NOT_IN_DOM =
    DT(((("finite_map",138),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124,
          129,147]),("finite_map",[34,126,129]),("pred_set",[3,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%244%474%364%84@%291%61@@@@%222%450%61@%84@@%61@@"])
  fun op o_f_FUPDATE x = x
    val op o_f_FUPDATE =
    DT(((("finite_map",137),
        [("bool",[25,26,27,30,47,48,51,53,54,56,58,63,105,124]),
         ("finite_map",[11,12,16,34,93,94,126,128]),
         ("pred_set",[3,80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%222%468%37@%345%62@%203%84@%139@@@@%344%468%37@%451%62@%84@@@%202%84@%37%139@@@@"])
  fun op DOMSUB_COMMUTES x = x
    val op DOMSUB_COMMUTES =
    DT(((("finite_map",136),
        [("bool",[25,26,27,30,51,56,58,60,63,64,105,129,147]),
         ("finite_map",[33,126,129]),("pred_set",[109])]),["DISK_THM"]),
       [read"%222%450%450%61@%87@@%89@@%450%450%61@%89@@%87@@"])
  fun op DOMSUB_IDEM x = x
    val op DOMSUB_IDEM =
    DT(((("finite_map",135),
        [("bool",[25,26,27,36,51,53,56,58,105,124,129,147]),
         ("finite_map",[34,126,129]),
         ("pred_set",[102,108])]),["DISK_THM"]),
       [read"%222%450%450%61@%84@@%84@@%450%61@%84@@"])
  fun op o_f_DOMSUB x = x
    val op o_f_DOMSUB =
    DT(((("finite_map",134),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105,124,129,147]),
         ("finite_map",[34,93,94,126,129]),
         ("pred_set",[102])]),["DISK_THM"]),
       [read"%222%450%468%75@%62@@%84@@%468%75@%451%62@%84@@@"])
  fun op FRANGE_FUPDATE_DOMSUB x = x
    val op FRANGE_FUPDATE_DOMSUB =
    DT(((("finite_map",133),
        [("bool",[25,56]),("finite_map",[101,121])]),["DISK_THM"]),
       [read"%162%61%158%84%159%138%233%325%344$2@%202$1@$0@@@@%374$0@%325%450$2@$1@@@@|@|@|@"])
  fun op DOMSUB_FLOOKUP_THM x = x
    val op DOMSUB_FLOOKUP_THM =
    DT(((("finite_map",132),
        [("bool",[25,26,27,30,54,56,63,64]),
         ("finite_map",[130,131])]),["DISK_THM"]),
       [read"%162%61%158%87%158%89%243%309%450$2@$1@@$0@@%270%218$1@$0@@%409@%309$2@$0@@@|@|@|@"])
  fun op DOMSUB_FLOOKUP_NEQ x = x
    val op DOMSUB_FLOOKUP_NEQ =
    DT(((("finite_map",131),
        [("bool",[25,26,27,51,53,54,56,58,105,124,129]),
         ("finite_map",[77,126,128]),("pred_set",[102])]),["DISK_THM"]),
       [read"%162%61%158%87%158%89%244%474%218$1@$0@@@%243%309%450$2@$1@@$0@@%309$2@$0@@@|@|@|@"])
  fun op DOMSUB_FLOOKUP x = x
    val op DOMSUB_FLOOKUP =
    DT(((("finite_map",130),
        [("bool",[25,51,54,56,58,105,129,147]),("finite_map",[77,126]),
         ("pred_set",[102])]),["DISK_THM"]),
       [read"%162%61%158%84%243%309%450$1@$0@@$0@@%409@|@|@"])
  fun op DOMSUB_FAPPLY_THM x = x
    val op DOMSUB_FAPPLY_THM =
    DT(((("finite_map",129),
        [("bool",[25,26,27,30,54,56,63,64]),
         ("finite_map",[127,128])]),["DISK_THM"]),
       [read"%162%61%158%87%158%89%219%284%450$2@$1@@$0@@%265%218$1@$0@@%284%298@$0@@%284$2@$0@@@|@|@|@"])
  fun op DOMSUB_FAPPLY_NEQ x = x
    val op DOMSUB_FAPPLY_NEQ =
    DT(((("finite_map",128),
        [("bool",[25,26,27,30,51,52,53,54,56,58,63,64,105,124,129]),
         ("finite_map",[32,44,121]),
         ("pred_set",[10,45,80,286])]),["DISK_THM"]),
       [read"%162%61%158%87%158%89%244%474%218$1@$0@@@%219%284%450$2@$1@@$0@@%284$2@$0@@@|@|@|@"])
  fun op DOMSUB_FAPPLY x = x
    val op DOMSUB_FAPPLY =
    DT(((("finite_map",127),
        [("bool",[25,26,27,51,52,54,56,58,105,129,147]),
         ("finite_map",[44,121]),
         ("pred_set",[10,45,80,286])]),["DISK_THM"]),
       [read"%162%61%158%84%219%284%450$1@$0@@$0@@%284%298@$0@@|@|@"])
  fun op FDOM_DOMSUB x = x
    val op FDOM_DOMSUB =
    DT(((("finite_map",126),
        [("bool",[25,26,27,36,52,56]),("finite_map",[48,121]),
         ("pred_set",[3,10,45,80,102,286])]),["DISK_THM"]),
       [read"%162%61%158%84%230%291%450$1@$0@@@%273%291$1@@$0@@|@|@"])
  fun op DOMSUB_FUPDATE_THM x = x
    val op DOMSUB_FUPDATE_THM =
    DT(((("finite_map",125),
        [("bool",
         [25,26,27,30,36,48,51,52,53,54,56,58,63,64,105,124,129,147]),
         ("finite_map",[16,17,34,44,46,121]),
         ("pred_set",[3,10,45,80,286])]),["DISK_THM"]),
       [read"%162%61%158%87%158%89%159%138%222%450%344$3@%202$2@$0@@@$1@@%266%218$2@$1@@%450$3@$1@@%344%450$3@$1@@%202$2@$0@@@@|@|@|@|@"])
  fun op DOMSUB_FUPDATE_NEQ x = x
    val op DOMSUB_FUPDATE_NEQ =
    DT(((("finite_map",124),
        [("bool",[25,26,27,36,51,52,53,54,56,58,105,124,129,147]),
         ("finite_map",[16,17,34,44,46,121]),
         ("pred_set",[3,10,45,80,286])]),["DISK_THM"]),
       [read"%162%61%158%87%158%89%159%138%244%474%218$2@$1@@@%222%450%344$3@%202$2@$0@@@$1@@%344%450$3@$1@@%202$2@$0@@@@|@|@|@|@"])
  fun op DOMSUB_FUPDATE x = x
    val op DOMSUB_FUPDATE =
    DT(((("finite_map",123),
        [("bool",[25,26,27,36,51,52,53,54,56,58,63,105,124,129,147]),
         ("finite_map",[34,44,46,121]),
         ("pred_set",[3,10,45,80,286])]),["DISK_THM"]),
       [read"%162%61%158%84%159%138%222%450%344$2@%202$1@$0@@@$1@@%450$2@$1@@|@|@|@"])
  fun op DOMSUB_FEMPTY x = x
    val op DOMSUB_FEMPTY =
    DT(((("finite_map",122),
        [("bool",[25,26,27,36,51,53,56,58,105,124]),
         ("finite_map",[15,34,45,121]),("pred_set",[10])]),["DISK_THM"]),
       [read"%158%84%222%450%298@$0@@%298@|@"])
  fun op FINITE_PRED_11 x = x
    val op FINITE_PRED_11 =
    DT(((("finite_map",120),
        [("bool",[14,25,26,27,30,51,53,58,63,72,105,124]),
         ("finite_map",[15,16,30]),
         ("pred_set",[10,80,127,185,190,198,367,370,374])]),["DISK_THM"]),
       [read"%170%73%244%158%146%158%152%221%219$2$1@@$2$0@@@%218$1@$0@@|@|@@%165%30%306%360%146%204$0@%365$2$0@@%294$1@@@|@@|@@|@"])
  fun op FAPPLY_f_o x = x
    val op FAPPLY_f_o =
    DT(((("finite_map",119),
        [("bool",[25,26,36,51,53,56,58,63,105,124]),
         ("finite_map",[88,110,115,116]),("pair",[3]),
         ("pred_set",[6,45])]),["DISK_THM"]),
       [read"%165%30%170%73%244%306%360%146%204$0@%365$1$0@@%294$2@@@|@@@%158%146%244%364$0@%292%446$2@$1@@@@%220%285%446$2@$1@@$0@@%287$2@$1$0@@@@|@@|@|@"])
  fun op f_o_FUPDATE x = x
    val op f_o_FUPDATE =
    DT(((("finite_map",118),
        [("bool",
         [25,26,27,30,51,52,53,54,56,58,63,64,65,105,106,124,129,147]),
         ("combin",[12,16]),
         ("finite_map",[16,17,34,67,69,88,90,110,111,113,115,116]),
         ("marker",[6]),("pair",[3]),
         ("pred_set",[3,6,33,45,80,190,367])]),["DISK_THM"]),
       [read"%162%61%158%84%159%138%185%74%244%215%308%362%148%211$0@%364$1$0@@%291$4@@@|@@@%308%362%148%211$0@%218$1$0@@$3@@|@@@@%226%445%344$3@%202$2@$1@@@$0@@%317%259%377@@%445$3@$0@@%343%378$1@@%362%148%211$0@%218$1$0@@$3@@|@@@@@|@|@|@|@"])
  fun op f_o_FEMPTY x = x
    val op f_o_FEMPTY =
    DT(((("finite_map",117),
        [("bool",[25,56]),("finite_map",[89,115])]),["DISK_THM"]),
       [read"%170%73%223%446%301@$0@@%299@|@"])
  fun op FDOM_f_o x = x
    val op FDOM_f_o =
    DT(((("finite_map",116),
        [("bool",[25,26,36,51,53,58,63,105,106,124]),
         ("finite_map",[88,110,115]),("pair",[3]),
         ("pred_set",[3,6,45])]),["DISK_THM"]),
       [read"%165%30%170%73%244%306%360%146%204$0@%365$1$0@@%294$2@@@|@@@%230%292%446$1@$0@@@%360%146%204$0@%365$1$0@@%294$2@@@|@@@|@|@"])
  fun op FLOOKUP_FUN_FMAP x = x
    val op FLOOKUP_FUN_FMAP =
    DT(((("finite_map",114),
        [("bool",[25,51,53,56,58,63,105,124,129]),
         ("finite_map",[77,110])]),["DISK_THM"]),
       [read"%244%306%0@@%243%309%340%31@%0@@%84@@%270%364%84@%0@@%423%31%84@@@%409@@@"])
  fun op FDOM_FMAP x = x
    val op FDOM_FMAP =
    DT(((("finite_map",113),
        [("bool",[25,53,56,58,63,105,124]),
         ("finite_map",[110])]),["DISK_THM"]),
       [read"%170%31%172%129%244%306$0@@%230%291%340$1@$0@@@$0@@|@|@"])
  fun op FRANGE_FMAP x = x
    val op FRANGE_FMAP =
    DT(((("finite_map",112),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,76,80,81,93,94,96,
          105,124,125]),("finite_map",[99,110]),("pair",[3]),
         ("pred_set",[3,6,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%244%306%0@@%233%325%340%31@%0@@@%363%31@%0@@@"])
  fun op FUN_FMAP_EMPTY x = x
    val op FUN_FMAP_EMPTY =
    DT(((("finite_map",111),
        [("bool",[25,26,27,36,51,53,56,58,63,105,124]),
         ("finite_map",[15,34,110]),("pred_set",[10,185])]),["DISK_THM"]),
       [read"%222%340%31@%282@@%298@"])
  fun op RRESTRICT_FUPDATE x = x
    val op RRESTRICT_FUPDATE =
    DT(((("finite_map",109),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,94,105,108,109,111,
          124,129,147]),("finite_map",[16,17,34,44,107]),("pair",[3]),
         ("pred_set",[3,6,10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%182%126%158%146%159%153%222%415%344$3@%202$1@$0@@@$2@@%266%365$0@$2@@%344%415$3@$2@@%202$1@$0@@@%415%278$3@%263%373$1@%282@@@@$2@@@|@|@|@|@"])
  fun op RRESTRICT_FEMPTY x = x
    val op RRESTRICT_FEMPTY =
    DT(((("finite_map",108),
        [("bool",[25,26,27,36,51,53,54,58,63,105,124]),
         ("finite_map",[15,34,107]),
         ("pred_set",[3,10,367])]),["DISK_THM"]),
       [read"%172%124%224%416%300@$0@@%300@|@"])
  fun op FRANGE_FUNION x = x
    val op FRANGE_FUNION =
    DT(((("finite_map",106),
        [("bool",[25,26,27,36,53,54,56,58,63,76,96,98,105,125,129,147]),
         ("finite_map",[58,99]),("pair",[3]),
         ("pred_set",[3,6,10,33,45,57]),
         ("sat",[1,3,5,7,17,18])]),["DISK_THM"]),
       [read"%244%276%291%69@@%291%70@@@%233%325%334%69@%70@@@%438%325%69@@%325%70@@@@"])
  fun op FRANGE_FLOOKUP x = x
    val op FRANGE_FLOOKUP =
    DT(((("finite_map",105),
        [("bool",[25,26,56,63]),("finite_map",[77,99]),("option",[27]),
         ("pair",[3]),("pred_set",[6])]),["DISK_THM"]),
       [read"%221%364%137@%326%29@@@%246%85%242%310%29@$0@@%422%137@@|@@"])
  fun op o_f_FRANGE x = x
    val op o_f_FRANGE =
    DT(((("finite_map",104),
        [("bool",[25,26,53,54,55,58,63,105,124]),("finite_map",[93,94,99]),
         ("pair",[3]),("pred_set",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%244%364%146@%326%72@@@%366%32%146@@%327%465%32@%72@@@@"])
  fun op FINITE_FRANGE x = x
    val op FINITE_FRANGE =
    DT(((("finite_map",103),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124,
          129,147]),("finite_map",[30,34,44,100,101]),
         ("pred_set",[3,10,45,80,185,187,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%162%61%307%325$0@@|@"])
  fun op SUBMAP_FRANGE x = x
    val op SUBMAP_FRANGE =
    DT(((("finite_map",102),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124]),
         ("finite_map",[36,99]),("pair",[3]),("pred_set",[6,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%162%71%244%424$1@$0@@%427%325$1@@%325$0@@@|@|@"])
  fun op FRANGE_FUPDATE x = x
    val op FRANGE_FUPDATE =
    DT(((("finite_map",101),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,72,76,78,80,81,93,
          94,96,105,108,109,111,129]),("finite_map",[16,17,44,99]),
         ("pair",[3]),("pred_set",[3,6,10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%158%146%159%153%233%325%344$2@%202$1@$0@@@@%374$0@%325%278$2@%263%373$1@%282@@@@@@|@|@|@"])
  fun op FRANGE_FEMPTY x = x
    val op FRANGE_FEMPTY =
    DT(((("finite_map",100),
        [("bool",[25,26,27,36,37,51,54,63]),("finite_map",[15,99]),
         ("pred_set",[3,10,367])]),["DISK_THM"]),
       [read"%230%326%300@@%282@"])
  fun op FLOOKUP_o_f x = x
    val op FLOOKUP_o_f =
    DT(((("finite_map",98),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),
         ("finite_map",[77,93,94]),("option",[7,10])]),["DISK_THM"]),
       [read"%242%310%467%36@%64@@%85@@%473%311%64@%85@@%408@%139%422%36$0@@|@@"])
  fun op o_f_o_f x = x
    val op o_f_o_f =
    DT(((("finite_map",97),
        [("bool",[25,36,51,53,56,58,63,105,124]),("combin",[8]),
         ("finite_map",[34,93,94])]),["DISK_THM"]),
       [read"%222%468%37@%470%76@%78@@@%469%463%37@%76@@%78@@"])
  fun op FEVERY_o_f x = x
    val op FEVERY_o_f =
    DT(((("finite_map",96),
        [("bool",[25,36,56,58,63,105,124]),("finite_map",[84,91]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%162%111%190%4%181%34%221%305$1@%466$0@$2@@@%304%150$2%203%330$0@@$1%417$0@@@@|@$2@@|@|@|@"])
  fun op o_f_FEMPTY x = x
    val op o_f_FEMPTY =
    DT(((("finite_map",95),
        [("bool",[25,26,27,36,51,53,56,58,105,124]),
         ("finite_map",[15,34,93]),("pred_set",[10])]),["DISK_THM"]),
       [read"%222%468%37@%299@@%298@"])
  fun op o_f_FAPPLY x = x
    val op o_f_FAPPLY =
    DT(((("finite_map",94),
        [("bool",[25,53,56,58,63,105,124]),
         ("finite_map",[91])]),["DISK_THM"]),
       [read"%181%34%162%71%158%146%244%364$0@%291$1@@@%220%285%466$2@$1@@$0@@$2%284$1@$0@@@@|@|@|@"])
  fun op FDOM_o_f x = x
    val op FDOM_o_f =
    DT(((("finite_map",93),
        [("bool",[58]),("finite_map",[92])]),["DISK_THM"]),
       [read"%181%34%162%71%230%292%466$1@$0@@@%291$0@@|@|@"])
  fun op o_f_FDOM x = x
    val op o_f_FDOM =
    DT(((("finite_map",92),
        [("bool",[25,36,56]),("finite_map",[91])]),["DISK_THM"]),
       [read"%181%34%162%71%230%291$0@@%292%466$1@$0@@@|@|@"])
  fun op f_o_f_FEMPTY_2 x = x
    val op f_o_f_FEMPTY_2 =
    DT(((("finite_map",90),
        [("bool",[25,26,27,36,51,53,56,58,105,124]),
         ("finite_map",[15,34,88]),("pred_set",[10,53])]),["DISK_THM"]),
       [read"%165%30%223%449$0@%298@@%299@|@"])
  fun op f_o_f_FEMPTY_1 x = x
    val op f_o_f_FEMPTY_1 =
    DT(((("finite_map",89),
        [("bool",[25,26,27,36,51,53,54,58,63,105,124]),
         ("finite_map",[15,34,88]),
         ("pred_set",[3,10,53,367])]),["DISK_THM"]),
       [read"%162%28%223%449%301@$0@@%299@|@"])
  fun op FEVERY_FLOOKUP x = x
    val op FEVERY_FLOOKUP =
    DT(((("finite_map",87),
        [("bool",[58,105,124]),("finite_map",[77,84]),
         ("option",[27])]),["DISK_THM"]),
       [read"%244%215%304%3@%28@@%243%309%28@%84@@%423%138@@@@%3%202%84@%138@@@"])
  fun op FEVERY_FUPDATE x = x
    val op FEVERY_FUPDATE =
    DT(((("finite_map",86),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,93,94,96,105,106,
          109,111,124,129,147]),("finite_map",[16,17,44,84]),
         ("pred_set",[10,45,80,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%188%3%162%28%158%146%159%153%221%304$3@%344$2@%202$1@$0@@@@%215$3%202$1@$0@@@%304$3@%278$2@%263%373$1@%282@@@@@@|@|@|@|@"])
  fun op FEVERY_FEMPTY x = x
    val op FEVERY_FEMPTY =
    DT(((("finite_map",85),
        [("bool",[25,26,27,36,53,58,105,124]),("finite_map",[15,84]),
         ("pred_set",[10])]),["DISK_THM"]), [read"%188%3%304$0@%298@|@"])
  fun op FLOOKUP_EXT x = x
    val op FLOOKUP_EXT =
    DT(((("finite_map",83),
        [("bool",
         [13,18,25,26,27,30,47,48,51,52,53,54,56,58,60,63,71,73,76,80,81,
          93,94,96,105,108,109,111,124,129]),("finite_map",[35,77]),
         ("option",[10,12]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%221%222%40@%48@@%231%309%40@@%309%48@@@"])
  fun op FLOOKUP_FUNION x = x
    val op FLOOKUP_FUNION =
    DT(((("finite_map",82),
        [("bool",[25,26,27,30,48,51,54,56,58,63,64,96,105,129,147]),
         ("finite_map",[58,77]),("option",[7,10,11]),
         ("pred_set",[33])]),["DISK_THM"]),
       [read"%242%310%336%42@%50@@%85@@%472%310%42@%85@@%310%50@%85@@%137%422$0@|@@"])
  fun op SUBMAP_FUPDATE_FLOOKUP x = x
    val op SUBMAP_FUPDATE_FLOOKUP =
    DT(((("finite_map",81),
        [("bool",[25,42,43,56]),("finite_map",[43,77]),("marker",[8]),
         ("option",[27])]),["DISK_THM"]),
       [read"%221%424%28@%344%28@%202%146@%153@@@@%444%243%309%28@%146@@%409@@%243%309%28@%146@@%423%153@@@@"])
  fun op FLOOKUP_SUBMAP x = x
    val op FLOOKUP_SUBMAP =
    DT(((("finite_map",80),
        [("bool",[25,53,54,58,63,100,105,124,129,147]),
         ("finite_map",[36,77]),("option",[10,27]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%244%215%424%28@%71@@%243%309%28@%84@@%423%138@@@@%243%309%71@%84@@%423%138@@@"])
  fun op FLOOKUP_UPDATE x = x
    val op FLOOKUP_UPDATE =
    DT(((("finite_map",79),
        [("bool",[25,26,27,30,48,51,54,56,58,63,64,96,105,129]),
         ("finite_map",[16,17,77]),("option",[10,11]),
         ("pred_set",[80])]),["DISK_THM"]),
       [read"%242%310%346%63@%205%88@%137@@@%90@@%269%219%88@%90@@%422%137@@%310%63@%90@@@"])
  fun op FLOOKUP_EMPTY x = x
    val op FLOOKUP_EMPTY =
    DT(((("finite_map",78),
        [("bool",[25,26,27,56,58,105,129,147]),("finite_map",[15,77]),
         ("pred_set",[10])]),["DISK_THM"]),
       [read"%242%310%300@%85@@%408@"])
  fun op FMERGE_EQ_FEMPTY x = x
    val op FMERGE_EQ_FEMPTY =
    DT(((("finite_map",76),
        [("bool",[25,26,27,36,51,52,53,56,58,105,124,125]),
         ("finite_map",[15,34,67]),("pred_set",[10,33,43])]),["DISK_THM"]),
       [read"%221%222%316%114@%28@%71@@%298@@%215%222%28@%298@@%222%71@%298@@@"])
  fun op FMERGE_DRESTRICT x = x
    val op FMERGE_DRESTRICT =
    DT(((("finite_map",75),
        [("bool",
         [25,26,27,48,51,52,53,54,56,58,63,64,99,105,108,109,124,129]),
         ("finite_map",[34,44,67]),("pred_set",[3,33,45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%222%278%316%35@%133@%134@@%144@@%316%35@%278%133@%144@@%278%134@%144@@@"])
  fun op FMERGE_ASSOC x = x
    val op FMERGE_ASSOC =
    DT(((("finite_map",74),
        [("bool",
         [25,26,27,51,52,53,54,55,56,58,63,64,89,96,99,100,105,108,109,124,
          129]),("finite_map",[15,16,17,34,67]),("operator",[0]),
         ("pred_set",[33,35,131]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%221%257%316%114@@@%256%114@@"])
  fun op FMERGE_COMM x = x
    val op FMERGE_COMM =
    DT(((("finite_map",73),
        [("bool",
         [25,26,47,48,51,52,53,54,56,58,63,64,89,101,105,124,129,145]),
         ("finite_map",[15,16,17,34,67]),("operator",[1]),
         ("pred_set",[33,37,131]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%221%262%316%114@@@%261%114@@"])
  fun op FMERGE_NO_CHANGE x = x
    val op FMERGE_NO_CHANGE =
    DT(((("finite_map",72),
        [("bool",
         [14,25,26,27,30,36,48,51,52,53,54,55,56,58,63,64,73,105,108,109,
          124,129]),("finite_map",[34,67]),("pred_set",[3,33]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%215%221%222%316%114@%40@%48@@%40@@%158%146%244%364$0@%291%48@@@%215%364$0@%291%40@@@%219%114%284%40@$0@@%284%48@$0@@@%284%40@$0@@@@|@@@%221%222%316%114@%40@%48@@%48@@%158%146%244%364$0@%291%40@@@%215%364$0@%291%48@@@%219%114%284%40@$0@@%284%48@$0@@@%284%48@$0@@@@|@@@"])
  fun op FUNION_FMERGE x = x
    val op FUNION_FMERGE =
    DT(((("finite_map",71),
        [("bool",
         [25,26,27,36,51,52,53,54,56,58,60,63,64,96,99,102,105,108,109,124,
          129]),("finite_map",[34,58,67]),("pred_set",[3,10,33,45,57]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%162%40%162%48%183%114%244%276%291$2@@%291$1@@@%222%316$0@$2@$1@@%334$2@$1@@@|@|@|@"])
  fun op FMERGE_FUNION x = x
    val op FMERGE_FUNION =
    DT(((("finite_map",70),
        [("bool",
         [25,36,51,52,53,54,56,58,60,63,64,65,99,102,105,108,109,124,129]),
         ("finite_map",[34,58,67]),("pred_set",[33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%235%334@%316%147%153$1||@@"])
  fun op FDOM_FMERGE x = x
    val op FDOM_FMERGE =
    DT(((("finite_map",69),
        [("bool",[25,56]),("finite_map",[67])]),["DISK_THM"]),
       [read"%173%113%164%29%164%72%233%293%315$2@$1@$0@@@%438%293$1@@%293$0@@@|@|@|@"])
  fun op FMERGE_FEMPTY x = x
    val op FMERGE_FEMPTY =
    DT(((("finite_map",68),
        [("bool",[25,26,27,36,51,53,54,56,58,63,64,105,124,129]),
         ("finite_map",[15,34,67]),("pred_set",[10,41])]),["DISK_THM"]),
       [read"%215%222%316%114@%28@%298@@%28@@%222%316%114@%298@%28@@%28@@"])
  fun op FUNION_IDEMPOT x = x
    val op FUNION_IDEMPOT =
    DT(((("finite_map",66),
        [("bool",[25,36,51,53,56,58,65,105,124]),("finite_map",[34,58]),
         ("pred_set",[36])]),["DISK_THM"]), [read"%222%334%61@%61@@%61@"])
  fun op DRESTRICT_FUNION x = x
    val op DRESTRICT_FUNION =
    DT(((("finite_map",183),
        [("bool",[25,27,36,51,53,54,56,58,63,64,65,97,102,105,124,129]),
         ("finite_map",[34,44,58]),("pred_set",[3,33,45])]),["DISK_THM"]),
       [read"%162%77%172%131%172%132%222%334%278$2@$1@@%278$2@$0@@@%278$2@%437$1@$0@@@|@|@|@"])
  fun op DRESTRICT_EQ_FUNION x = x
    val op DRESTRICT_EQ_FUNION =
    DT(((("finite_map",184),
        [("bool",
         [25,26,27,48,51,52,53,54,56,58,63,64,93,95,96,101,105,109,124,129,
          145]),("finite_map",[34,44,58]),("pred_set",[3,10,33,45,57,286]),
         ("sat",[1,3,5,6,7,11,12,13,15,16,17,18])]),["DISK_THM"]),
       [read"%162%77%162%80%162%81%244%215%276%291$1@@%291$0@@@%222%334$1@$0@@$2@@@%222$0@%278$2@%263%291$1@@@@@|@|@|@"])
  fun op IN_FDOM_FOLDR_UNION x = x
    val op IN_FDOM_FOLDR_UNION =
    DT(((("finite_map",185),
        [("bool",[14,25,26,27,36,37,51,53,54,55,63,75,100]),
         ("finite_map",[15,64]),("list",[28,43,120]),("pred_set",[10,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%158%146%193%82%221%364$1@%291%323%334@%298@$0@@@@%247%77%215%367$0@%389$1@@@%364$2@%291$0@@@|@@|@|@"])
  fun op DRESTRICT_FUNION_DRESTRICT_COMPL x = x
    val op DRESTRICT_FUNION_DRESTRICT_COMPL =
    DT(((("finite_map",186),
        [("bool",
         [25,26,51,52,53,54,56,58,63,64,99,100,105,108,109,124,129]),
         ("finite_map",[34,44,58]),("pred_set",[3,33,45,286]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18])]),["DISK_THM"]),
       [read"%222%334%278%28@%129@@%278%28@%263%129@@@@%28@"])
  fun op DRESTRICT_IDEMPOT x = x
    val op DRESTRICT_IDEMPOT =
    DT(((("finite_map",187),
        [("bool",[25,56]),("finite_map",[51]),
         ("pred_set",[48])]),["DISK_THM"]),
       [read"%162%128%172%144%222%278%278$1@$0@@$0@@%278$1@$0@@|@|@"])
  fun op SUBMAP_FUNION_ABSORPTION x = x
    val op SUBMAP_FUNION_ABSORPTION =
    DT(((("finite_map",188),
        [("bool",
         [25,26,36,47,48,51,52,53,54,56,58,63,65,93,94,96,105,106,108,109,
          111,124,129]),("finite_map",[34,36,58]),("pred_set",[3,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%162%28%162%71%221%424$1@$0@@%222%334$1@$0@@$0@@|@|@"])
  fun op MAP_KEYS_witness x = x
    val op MAP_KEYS_witness =
    DT(((("finite_map",189),
        [("bool",[25,26,27,30,32,51,56,58,63,64,105,124,129,147]),
         ("finite_map",[24,88,110]),("marker",[6]),("pair",[3]),
         ("pred_set",[6,18,52,144,146,178,199])]),["DISK_THM"]),
       [read"%384%115%170%31%163%62%215%233%294$2$1@$0@@@%363$1@%292$0@@@@%244%370$1@%292$0@@%440@@%158%146%244%364$0@%292$1@@@%220%287$3$2@$1@@$2$0@@@%285$1@$0@@@|@@@|@|@|@%31%62%267%370$1@%292$0@@%440@@%448$0@%341%385$1@%292$0@@@%363$1@%292$0@@@@@%342%255@%363$1@%292$0@@@@||@"])
  fun op MAP_KEYS_FEMPTY x = x
    val op MAP_KEYS_FEMPTY =
    DT(((("finite_map",191),
        [("bool",[25,56,58]),("finite_map",[15,21,190]),
         ("pred_set",[147])]),["DISK_THM"]),
       [read"%170%31%225%406$0@%299@@%301@|@"])
  fun op MAP_KEYS_FUPDATE x = x
    val op MAP_KEYS_FUPDATE =
    DT(((("finite_map",192),
        [("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,93,94,96,105,
          124,129,147]),("finite_map",[16,17,34,190]),
         ("pred_set",[14,80,144,150,158,164]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%170%31%163%62%158%84%160%139%244%370$3@%373$1@%292$2@@@%440@@%225%406$3@%345$2@%203$1@$0@@@@%347%406$3@$2@@%206$3$1@@$0@@@@|@|@|@|@"])
  fun op MAP_KEYS_using_LINV x = x
    val op MAP_KEYS_using_LINV =
    DT(((("finite_map",193),
        [("bool",[25,32,51,53,56,58,63,105,124,129,147]),
         ("finite_map",[34,189,190]),("pred_set",[144])]),["DISK_THM"]),
       [read"%170%31%163%62%244%370$1@%292$0@@%440@@%225%406$1@$0@@%448$0@%341%385$1@%292$0@@@%363$1@%292$0@@@@@@|@|@"])
  fun op fmap_rel_FUPDATE_same x = x
    val op fmap_rel_FUPDATE_same =
    DT(((("finite_map",195),
        [("bool",[25,26,27,30,51,56,58,63,64,105,124,129,147]),
         ("finite_map",[16,17,194]),("pred_set",[80])]),["DISK_THM"]),
       [read"%244%215%460%7@%43@%52@@%7%141@%143@@@%460%7@%348%43@%208%86@%141@@@%349%52@%209%86@%143@@@@"])
  fun op fmap_rel_FUPDATE_LIST_same x = x
    val op fmap_rel_FUPDATE_LIST_same =
    DT(((("finite_map",196),
        [("bool",[14,25,26,27,51,53,58,63,105,124]),
         ("finite_map",[144,195]),("list",[23,43,46,48,49,139,142]),
         ("pair",[5,8,9])]),["DISK_THM"]),
       [read"%176%7%197%108%198%110%166%43%167%52%244%215%460$4@$1@$0@@%215%239%399%332@$3@@%401%333@$2@@@%386$4@%398%419@$3@@%400%420@$2@@@@@%460$4@%356$1@$3@@%357$0@$2@@@|@|@|@|@|@"])
  fun op fmap_rel_FEMPTY x = x
    val op fmap_rel_FEMPTY =
    DT(((("finite_map",197),
        [("bool",[25,26,27,36,51,53,56,58,105,124]),
         ("finite_map",[15,194]),("pred_set",[10])]),["DISK_THM"]),
       [read"%460%7@%302@%303@"])
  fun op fmap_rel_FEMPTY2 x = x
    val op fmap_rel_FEMPTY2 =
    DT(((("finite_map",198),
        [("bool",[25,26,27,36,51,53,54,55,56,58,63,105,106,124]),
         ("finite_map",[15,21,194]),("pred_set",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%215%221%459%6@%300@%29@@%224%29@%300@@@%221%459%6@%29@%300@@%224%29@%300@@@"])
  fun op fmap_rel_refl x = x
    val op fmap_rel_refl =
    DT(((("finite_map",199),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("finite_map",[194])]),["DISK_THM"]),
       [read"%244%158%146%6$0@$0@|@@%459%6@%149@%149@@"])
  fun op fmap_rel_FUNION_rels x = x
    val op fmap_rel_FUNION_rels =
    DT(((("finite_map",200),
        [("bool",[25,26,27,30,51,56,58,63,64,105,124,129,147]),
         ("finite_map",[58,194]),("pred_set",[33])]),["DISK_THM"]),
       [read"%244%215%460%7@%43@%52@@%460%7@%58@%60@@@%460%7@%337%43@%58@@%338%52@%60@@@"])
  fun op fmap_rel_FUPDATE_I x = x
    val op fmap_rel_FUPDATE_I =
    DT(((("finite_map",201),
        [("bool",
         [25,26,27,30,51,53,54,55,58,63,64,99,100,105,124,129,147]),
         ("finite_map",[11,16,17,126,129,194]),("pred_set",[3,80,102]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%244%215%460%7@%453%43@%86@@%454%52@%86@@@%7%141@%143@@@%460%7@%348%43@%208%86@%141@@@%349%52@%209%86@%143@@@@"])
  fun op fmap_rel_mono x = x
    val op fmap_rel_mono =
    DT(((("finite_map",202),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("finite_map",[194])]),["DISK_THM"]),
       [read"%244%158%146%159%153%244%8$1@$0@@%9$1@$0@@|@|@@%244%460%8@%43@%52@@%460%9@%43@%52@@@"])
  fun op fmap_EQ_UPTO___EMPTY x = x
    val op fmap_EQ_UPTO___EMPTY =
    DT(((("finite_map",204),
        [("bool",[25,36,56,58,105,124]),("finite_map",[34,203]),
         ("pred_set",[54,292])]),["DISK_THM"]),
       [read"%162%40%162%48%221%456$1@$0@%282@@%222$1@$0@@|@|@"])
  fun op fmap_EQ_UPTO___EQ x = x
    val op fmap_EQ_UPTO___EQ =
    DT(((("finite_map",205),
        [("bool",[25,36,51,53,56,58,105,124]),
         ("finite_map",[203])]),["DISK_THM"]),
       [read"%172%144%162%28%456$0@$0@$1@|@|@"])
  fun op fmap_EQ_UPTO___FUPDATE_BOTH x = x
    val op fmap_EQ_UPTO___FUPDATE_BOTH =
    DT(((("finite_map",206),
        [("bool",[25,26,27,30,51,52,53,54,56,58,63,64,96,105,124,129]),
         ("finite_map",[16,17,203]),
         ("pred_set",[3,45,80,102,286])]),["DISK_THM"]),
       [read"%162%40%162%48%172%91%158%84%159%138%244%456$4@$3@$2@@%456%344$4@%202$1@$0@@@%344$3@%202$1@$0@@@%273$2@$1@@@|@|@|@|@|@"])
  fun op fmap_EQ_UPTO___FUPDATE_BOTH___NO_DELETE x = x
    val op fmap_EQ_UPTO___FUPDATE_BOTH___NO_DELETE =
    DT(((("finite_map",207),
        [("bool",[25,26,27,30,51,52,53,54,56,58,63,64,105,124,129]),
         ("finite_map",[16,17,203]),
         ("pred_set",[3,45,80,286])]),["DISK_THM"]),
       [read"%162%40%162%48%172%91%158%84%159%138%244%456$4@$3@$2@@%456%344$4@%202$1@$0@@@%344$3@%202$1@$0@@@$2@@|@|@|@|@|@"])
  fun op fmap_EQ_UPTO___FUPDATE_SING x = x
    val op fmap_EQ_UPTO___FUPDATE_SING =
    DT(((("finite_map",208),
        [("bool",[25,26,27,30,51,52,53,54,56,58,63,64,96,105,124,129]),
         ("finite_map",[16,17,203]),
         ("pred_set",[3,45,80,286])]),["DISK_THM"]),
       [read"%162%40%162%48%172%91%158%84%159%138%244%456$4@$3@$2@@%456%344$4@%202$1@$0@@@$3@%373$1@$2@@@|@|@|@|@|@"])
  fun op o_f_FUNION x = x
    val op o_f_FUNION =
    DT(((("finite_map",210),
        [("bool",[25,26,27,30,51,52,53,56,58,63,64,105,124,129,147]),
         ("finite_map",[34,58,93,94]),("pred_set",[33])]),["DISK_THM"]),
       [read"%222%468%37@%335%41@%49@@@%334%468%37@%41@@%468%37@%49@@@"])
  fun op FDOM_FOLDR_DOMSUB x = x
    val op FDOM_FOLDR_DOMSUB =
    DT(((("finite_map",211),
        [("bool",[14,25,26,27,36,48,56,96]),("finite_map",[126]),
         ("list",[25,28,43]),("pred_set",[3,67,69,80,102])]),["DISK_THM"]),
       [read"%191%103%162%61%230%291%322%84%111%450$0@$1@||@$0@$1@@@%274%291$0@@%387$1@@@|@|@"])
  fun op FEVERY_SUBMAP x = x
    val op FEVERY_SUBMAP =
    DT(((("finite_map",212),
        [("bool",[25,36,53,58,63,105,124]),
         ("finite_map",[36,84])]),["DISK_THM"]),
       [read"%244%215%304%3@%61@@%424%68@%61@@@%304%3@%68@@"])
  fun op FEVERY_ALL_FLOOKUP x = x
    val op FEVERY_ALL_FLOOKUP =
    DT(((("finite_map",213),
        [("bool",[25,56,58,63,93,95,101,105,124,145]),
         ("finite_map",[77,84]),("option",[27])]),["DISK_THM"]),
       [read"%188%3%162%28%221%304$1@$0@@%158%84%159%138%244%243%309$2@$1@@%423$0@@@$3%202$1@$0@@@|@|@@|@|@"])
  fun op FUPDATE_LIST_CANCEL x = x
    val op FUPDATE_LIST_CANCEL =
    DT(((("finite_map",214),
        [("bool",[14,25,26,27,36,53,56,58,63,105,124]),
         ("finite_map",[144,148]),("list",[23,25,43]),("pair",[5,8]),
         ("pred_set",[10,80])]),["DISK_THM"]),
       [read"%194%107%162%61%194%109%244%158%84%244%364$0@%387%393%330@$3@@@@%364$0@%387%393%330@$1@@@@|@@%222%352%352$1@$2@@$0@@%352$1@$0@@@|@|@|@"])
  fun op FUPDATE_EQ_FUNION x = x
    val op FUPDATE_EQ_FUNION =
    DT(((("finite_map",215),
        [("bool",[25,26,27,36,51,52,53,56,58,105,124,129,147]),
         ("finite_map",[15,16,17,34,58]),("pair",[5]),
         ("pred_set",[3,10,33,80])]),["DISK_THM"]),
       [read"%162%61%200%92%222%344$1@$0@@%334%344%298@$0@@$1@@|@|@"])
  fun op FUPDATE_LIST_APPEND_COMMUTES x = x
    val op FUPDATE_LIST_APPEND_COMMUTES =
    DT(((("finite_map",216),
        [("bool",[14,25,53,54,56,58,63,105,124]),("finite_map",[144,147]),
         ("list",[23,25,43]),("pair",[5,8]),("pred_set",[60,95]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%194%101%194%102%162%61%244%276%387%393%330@$2@@@%387%393%330@$1@@@@%222%352%352$0@$2@@$1@@%352%352$0@$1@@$2@@@|@|@|@"])
  fun op fmap_rel_OPTREL_FLOOKUP x = x
    val op fmap_rel_OPTREL_FLOOKUP =
    DT(((("finite_map",217),
        [("bool",[25,26,43,47,48,53,54,58,63,71,76,80,81,94,143]),
         ("finite_map",[77,194]),("option",[27,53]),("pred_set",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%221%460%7@%43@%52@@%160%86%411%7@%312%43@$0@@%313%52@$0@@|@@"])
  fun op FLOOKUP_DRESTRICT x = x
    val op FLOOKUP_DRESTRICT =
    DT(((("finite_map",218),
        [("bool",[25,26,27,30,48,51,52,54,56,58,63,64,96,105,129,147]),
         ("finite_map",[44,77]),("option",[10,11]),
         ("pred_set",[45])]),["DISK_THM"]),
       [read"%162%61%172%129%158%84%243%309%278$2@$1@@$0@@%270%364$0@$1@@%309$2@$0@@%409@@|@|@|@"])
  fun op FUPDATE_LIST_ALL_DISTINCT_PERM x = x
    val op FUPDATE_LIST_ALL_DISTINCT_PERM =
    DT(((("finite_map",271),
        [("bool",
         [2,14,15,25,26,51,53,54,55,56,58,61,63,74,83,84,99,100,105,124]),
         ("finite_map",[144,146,147]),("list",[20,23,43,56,81,89,215]),
         ("pair",[6,8]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sorting",[9,11,24])]),["DISK_THM"]),
       [read"%194%104%194%106%162%61%244%215%252%393%330@$2@@@%413$2@$1@@@%222%352$0@$2@@%352$0@$1@@@|@|@|@"])
  end
  val _ = DB.bindl "finite_map"
  [("fmap_inverse_def",fmap_inverse_def,DB.Def),
   ("FMAP_MAP2_def",FMAP_MAP2_def,DB.Def),
   ("FUPDATE_LIST",FUPDATE_LIST,DB.Def), ("SUBMAP_DEF",SUBMAP_DEF,DB.Def),
   ("FCARD_DEF",FCARD_DEF,DB.Def), ("FDOM_DEF",FDOM_DEF,DB.Def),
   ("FAPPLY_DEF",FAPPLY_DEF,DB.Def), ("FEMPTY_DEF",FEMPTY_DEF,DB.Def),
   ("FUPDATE_DEF",FUPDATE_DEF,DB.Def),
   ("fmap_ISO_DEF",fmap_ISO_DEF,DB.Def),
   ("fmap_TY_DEF",fmap_TY_DEF,DB.Def), ("is_fmap_def",is_fmap_def,DB.Def),
   ("DRESTRICT_DEF",DRESTRICT_DEF,DB.Def),
   ("FUNION_DEF",FUNION_DEF,DB.Def), ("fmap_domsub",fmap_domsub,DB.Def),
   ("f_o_DEF",f_o_DEF,DB.Def), ("FUN_FMAP_DEF",FUN_FMAP_DEF,DB.Def),
   ("RRESTRICT_DEF",RRESTRICT_DEF,DB.Def),
   ("FRANGE_DEF",FRANGE_DEF,DB.Def), ("o_f_DEF",o_f_DEF,DB.Def),
   ("f_o_f_DEF",f_o_f_DEF,DB.Def), ("FEVERY_DEF",FEVERY_DEF,DB.Def),
   ("FLOOKUP_DEF",FLOOKUP_DEF,DB.Def), ("FMERGE_DEF",FMERGE_DEF,DB.Def),
   ("MAP_KEYS_def",MAP_KEYS_def,DB.Def),
   ("fmap_rel_def",fmap_rel_def,DB.Def),
   ("fmap_EQ_UPTO_def",fmap_EQ_UPTO_def,DB.Def),
   ("fmap_size_def",fmap_size_def,DB.Def),
   ("fevery_funion",fevery_funion,DB.Thm),
   ("drestrict_iter_list",drestrict_iter_list,DB.Thm),
   ("disjoint_drestrict",disjoint_drestrict,DB.Thm),
   ("fmap_to_list",fmap_to_list,DB.Thm),
   ("fupdate_list_foldl",fupdate_list_foldl,DB.Thm),
   ("fupdate_list_foldr",fupdate_list_foldr,DB.Thm),
   ("FUPDATE_EQ_FUPDATE_LIST",FUPDATE_EQ_FUPDATE_LIST,DB.Thm),
   ("flookup_thm",flookup_thm,DB.Thm),
   ("fdom_fupdate_list2",fdom_fupdate_list2,DB.Thm),
   ("fupdate_list_map",fupdate_list_map,DB.Thm),
   ("fmap_eq_flookup",fmap_eq_flookup,DB.Thm),
   ("fmap_rel_sym",fmap_rel_sym,DB.Thm),
   ("fmap_rel_trans",fmap_rel_trans,DB.Thm),
   ("f_o_f_FUPDATE_compose",f_o_f_FUPDATE_compose,DB.Thm),
   ("DRESTRICT_SUBSET",DRESTRICT_SUBSET,DB.Thm),
   ("DRESTRICT_FDOM",DRESTRICT_FDOM,DB.Thm),
   ("FRANGE_DRESTRICT_SUBSET",FRANGE_DRESTRICT_SUBSET,DB.Thm),
   ("IN_FRANGE_DOMSUB_suff",IN_FRANGE_DOMSUB_suff,DB.Thm),
   ("FRANGE_DOMSUB_SUBSET",FRANGE_DOMSUB_SUBSET,DB.Thm),
   ("IN_FRANGE_FUNION_suff",IN_FRANGE_FUNION_suff,DB.Thm),
   ("FRANGE_FUNION_SUBSET",FRANGE_FUNION_SUBSET,DB.Thm),
   ("IN_FRANGE_FUPDATE_LIST_suff",IN_FRANGE_FUPDATE_LIST_suff,DB.Thm),
   ("FRANGE_FUPDATE_LIST_SUBSET",FRANGE_FUPDATE_LIST_SUBSET,DB.Thm),
   ("IN_FRANGE_FLOOKUP",IN_FRANGE_FLOOKUP,DB.Thm),
   ("IN_FRANGE",IN_FRANGE,DB.Thm),
   ("FUPDATE_LIST_ALL_DISTINCT_REVERSE",
    FUPDATE_LIST_ALL_DISTINCT_REVERSE,
    DB.Thm),
   ("FUPDATE_LIST_ALL_DISTINCT_APPLY_MEM",
    FUPDATE_LIST_ALL_DISTINCT_APPLY_MEM,
    DB.Thm), ("FUPDATE_SAME_LIST_APPLY",FUPDATE_SAME_LIST_APPLY,DB.Thm),
   ("FUPDATE_SAME_APPLY",FUPDATE_SAME_APPLY,DB.Thm),
   ("FUPDATE_LIST_APPLY_HO_THM",FUPDATE_LIST_APPLY_HO_THM,DB.Thm),
   ("FUPDATE_LIST_APPLY_NOT_MEM_matchable",
    FUPDATE_LIST_APPLY_NOT_MEM_matchable,
    DB.Thm), ("DRESTRICT_FUNION_SUBSET",DRESTRICT_FUNION_SUBSET,DB.Thm),
   ("FOLDL2_FUPDATE_LIST_paired",FOLDL2_FUPDATE_LIST_paired,DB.Thm),
   ("FOLDL2_FUPDATE_LIST",FOLDL2_FUPDATE_LIST,DB.Thm),
   ("DRESTRICT_EQ_DRESTRICT_SAME",DRESTRICT_EQ_DRESTRICT_SAME,DB.Thm),
   ("DRESTRICT_FUNION_SAME",DRESTRICT_FUNION_SAME,DB.Thm),
   ("DRESTRICT_SUBSET_SUBMAP_gen",DRESTRICT_SUBSET_SUBMAP_gen,DB.Thm),
   ("DRESTRICT_DOMSUB",DRESTRICT_DOMSUB,DB.Thm),
   ("DOMSUB_SUBMAP",DOMSUB_SUBMAP,DB.Thm),
   ("SUBMAP_DOMSUB_gen",SUBMAP_DOMSUB_gen,DB.Thm),
   ("SUBMAP_mono_FUPDATE",SUBMAP_mono_FUPDATE,DB.Thm),
   ("IMAGE_FRANGE",IMAGE_FRANGE,DB.Thm),
   ("DRESTRICTED_FUNION",DRESTRICTED_FUNION,DB.Thm),
   ("DRESTRICT_SUBSET_SUBMAP",DRESTRICT_SUBSET_SUBMAP,DB.Thm),
   ("DRESTRICT_SUBMAP_gen",DRESTRICT_SUBMAP_gen,DB.Thm),
   ("IN_FRANGE_o_f_suff",IN_FRANGE_o_f_suff,DB.Thm),
   ("IN_FRANGE_FUPDATE_suff",IN_FRANGE_FUPDATE_suff,DB.Thm),
   ("FRANGE_FUPDATE_SUBSET",FRANGE_FUPDATE_SUBSET,DB.Thm),
   ("IN_FRANGE_DRESTRICT_suff",IN_FRANGE_DRESTRICT_suff,DB.Thm),
   ("FUNION_ASSOC",FUNION_ASSOC,DB.Thm),
   ("FUNION_COMM",FUNION_COMM,DB.Thm),
   ("DOMSUB_FUNION",DOMSUB_FUNION,DB.Thm),
   ("FUNION_EQ_IMPL",FUNION_EQ_IMPL,DB.Thm),
   ("FUNION_EQ",FUNION_EQ,DB.Thm), ("FEMPTY_SUBMAP",FEMPTY_SUBMAP,DB.Thm),
   ("SUBMAP_FUNION_ID",SUBMAP_FUNION_ID,DB.Thm),
   ("SUBMAP_FUNION",SUBMAP_FUNION,DB.Thm),
   ("SUBMAP_FUNION_EQ",SUBMAP_FUNION_EQ,DB.Thm),
   ("FUNION_EQ_FEMPTY",FUNION_EQ_FEMPTY,DB.Thm),
   ("FEVERY_DRESTRICT_COMPL",FEVERY_DRESTRICT_COMPL,DB.Thm),
   ("FUPDATE_ELIM",FUPDATE_ELIM,DB.Thm),
   ("FEVERY_STRENGTHEN_THM",FEVERY_STRENGTHEN_THM,DB.Thm),
   ("FMAP_MAP2_FUPDATE",FMAP_MAP2_FUPDATE,DB.Thm),
   ("FMAP_MAP2_FEMPTY",FMAP_MAP2_FEMPTY,DB.Thm),
   ("FMAP_MAP2_THM",FMAP_MAP2_THM,DB.Thm),
   ("FUPDATE_PURGE",FUPDATE_PURGE,DB.Thm),
   ("FMEQ_SINGLE_SIMPLE_DISJ_ELIM",FMEQ_SINGLE_SIMPLE_DISJ_ELIM,DB.Thm),
   ("FMEQ_SINGLE_SIMPLE_ELIM",FMEQ_SINGLE_SIMPLE_ELIM,DB.Thm),
   ("FMEQ_ENUMERATE_CASES",FMEQ_ENUMERATE_CASES,DB.Thm),
   ("FUPDATE_LIST_SAME_KEYS_UNWIND",FUPDATE_LIST_SAME_KEYS_UNWIND,DB.Thm),
   ("FUPDATE_LIST_SAME_UPDATE",FUPDATE_LIST_SAME_UPDATE,DB.Thm),
   ("FDOM_FUPDATE_LIST",FDOM_FUPDATE_LIST,DB.Thm),
   ("FUPD11_SAME_UPDATE",FUPD11_SAME_UPDATE,DB.Thm),
   ("FUPD_SAME_KEY_UNWIND",FUPD_SAME_KEY_UNWIND,DB.Thm),
   ("FUPD11_SAME_BASE",FUPD11_SAME_BASE,DB.Thm),
   ("SAME_KEY_UPDATES_DIFFER",SAME_KEY_UPDATES_DIFFER,DB.Thm),
   ("FUPD11_SAME_NEW_KEY",FUPD11_SAME_NEW_KEY,DB.Thm),
   ("FUPD11_SAME_KEY_AND_BASE",FUPD11_SAME_KEY_AND_BASE,DB.Thm),
   ("FUPDATE_LIST_SNOC",FUPDATE_LIST_SNOC,DB.Thm),
   ("FOLDL_FUPDATE_LIST",FOLDL_FUPDATE_LIST,DB.Thm),
   ("FUPDATE_LIST_APPLY_MEM",FUPDATE_LIST_APPLY_MEM,DB.Thm),
   ("FEVERY_FUPDATE_LIST",FEVERY_FUPDATE_LIST,DB.Thm),
   ("FUPDATE_FUPDATE_LIST_MEM",FUPDATE_FUPDATE_LIST_MEM,DB.Thm),
   ("FUPDATE_FUPDATE_LIST_COMMUTES",FUPDATE_FUPDATE_LIST_COMMUTES,DB.Thm),
   ("FUPDATE_LIST_APPEND",FUPDATE_LIST_APPEND,DB.Thm),
   ("FUPDATE_LIST_APPLY_NOT_MEM",FUPDATE_LIST_APPLY_NOT_MEM,DB.Thm),
   ("FUPDATE_LIST_THM",FUPDATE_LIST_THM,DB.Thm),
   ("SUBMAP_FUPDATE",SUBMAP_FUPDATE,DB.Thm),
   ("SUBMAP_TRANS",SUBMAP_TRANS,DB.Thm),
   ("SUBMAP_ANTISYM",SUBMAP_ANTISYM,DB.Thm),
   ("SUBMAP_REFL",SUBMAP_REFL,DB.Thm),
   ("SUBMAP_FEMPTY",SUBMAP_FEMPTY,DB.Thm), ("fmap_EXT",fmap_EXT,DB.Thm),
   ("fmap_EQ_THM",fmap_EQ_THM,DB.Thm), ("fmap_EQ",fmap_EQ,DB.Thm),
   ("NOT_FDOM_FAPPLY_FEMPTY",NOT_FDOM_FAPPLY_FEMPTY,DB.Thm),
   ("FM_PULL_APART",FM_PULL_APART,DB.Thm),
   ("fmap_INDUCT",fmap_INDUCT,DB.Thm), ("FCARD_SUC",FCARD_SUC,DB.Thm),
   ("FCARD_0_FEMPTY",FCARD_0_FEMPTY,DB.Thm),
   ("FCARD_FUPDATE",FCARD_FUPDATE,DB.Thm),
   ("FCARD_FEMPTY",FCARD_FEMPTY,DB.Thm),
   ("FDOM_FINITE",FDOM_FINITE,DB.Thm),
   ("FDOM_F_FEMPTY1",FDOM_F_FEMPTY1,DB.Thm),
   ("FDOM_EQ_EMPTY_SYM",FDOM_EQ_EMPTY_SYM,DB.Thm),
   ("FDOM_EQ_EMPTY",FDOM_EQ_EMPTY,DB.Thm),
   ("fmap_SIMPLE_INDUCT",fmap_SIMPLE_INDUCT,DB.Thm),
   ("FDOM_EQ_FDOM_FUPDATE",FDOM_EQ_FDOM_FUPDATE,DB.Thm),
   ("NOT_EQ_FEMPTY_FUPDATE",NOT_EQ_FEMPTY_FUPDATE,DB.Thm),
   ("FAPPLY_FUPDATE_THM",FAPPLY_FUPDATE_THM,DB.Thm),
   ("FDOM_FUPDATE",FDOM_FUPDATE,DB.Thm),
   ("FDOM_FEMPTY",FDOM_FEMPTY,DB.Thm), ("FUPDATE_EQ",FUPDATE_EQ,DB.Thm),
   ("FUPDATE_COMMUTES",FUPDATE_COMMUTES,DB.Thm),
   ("NOT_EQ_FAPPLY",NOT_EQ_FAPPLY,DB.Thm),
   ("FAPPLY_FUPDATE",FAPPLY_FUPDATE,DB.Thm),
   ("is_fmap_cases",is_fmap_cases,DB.Thm),
   ("is_fmap_strongind",is_fmap_strongind,DB.Thm),
   ("is_fmap_ind",is_fmap_ind,DB.Thm),
   ("is_fmap_rules",is_fmap_rules,DB.Thm),
   ("FUNION_FEMPTY_1",FUNION_FEMPTY_1,DB.Thm),
   ("FUNION_FEMPTY_2",FUNION_FEMPTY_2,DB.Thm),
   ("FUNION_FUPDATE_1",FUNION_FUPDATE_1,DB.Thm),
   ("FUNION_FUPDATE_2",FUNION_FUPDATE_2,DB.Thm),
   ("EQ_FDOM_SUBMAP",EQ_FDOM_SUBMAP,DB.Thm),
   ("SUBMAP_FUPDATE_EQN",SUBMAP_FUPDATE_EQN,DB.Thm),
   ("DRESTRICT_FEMPTY",DRESTRICT_FEMPTY,DB.Thm),
   ("DRESTRICT_FUPDATE",DRESTRICT_FUPDATE,DB.Thm),
   ("STRONG_DRESTRICT_FUPDATE",STRONG_DRESTRICT_FUPDATE,DB.Thm),
   ("FDOM_DRESTRICT",FDOM_DRESTRICT,DB.Thm),
   ("NOT_FDOM_DRESTRICT",NOT_FDOM_DRESTRICT,DB.Thm),
   ("DRESTRICT_SUBMAP",DRESTRICT_SUBMAP,DB.Thm),
   ("DRESTRICT_DRESTRICT",DRESTRICT_DRESTRICT,DB.Thm),
   ("DRESTRICT_IS_FEMPTY",DRESTRICT_IS_FEMPTY,DB.Thm),
   ("FUPDATE_DRESTRICT",FUPDATE_DRESTRICT,DB.Thm),
   ("STRONG_DRESTRICT_FUPDATE_THM",STRONG_DRESTRICT_FUPDATE_THM,DB.Thm),
   ("DRESTRICT_UNIV",DRESTRICT_UNIV,DB.Thm),
   ("SUBMAP_DRESTRICT",SUBMAP_DRESTRICT,DB.Thm),
   ("DRESTRICT_EQ_DRESTRICT",DRESTRICT_EQ_DRESTRICT,DB.Thm),
   ("FDOM_FUNION",FDOM_FUNION,DB.Thm),
   ("FMERGE_DOMSUB",FMERGE_DOMSUB,DB.Thm),
   ("SUBMAP_DOMSUB",SUBMAP_DOMSUB,DB.Thm),
   ("fmap_CASES",fmap_CASES,DB.Thm),
   ("DOMSUB_NOT_IN_DOM",DOMSUB_NOT_IN_DOM,DB.Thm),
   ("o_f_FUPDATE",o_f_FUPDATE,DB.Thm),
   ("DOMSUB_COMMUTES",DOMSUB_COMMUTES,DB.Thm),
   ("DOMSUB_IDEM",DOMSUB_IDEM,DB.Thm), ("o_f_DOMSUB",o_f_DOMSUB,DB.Thm),
   ("FRANGE_FUPDATE_DOMSUB",FRANGE_FUPDATE_DOMSUB,DB.Thm),
   ("DOMSUB_FLOOKUP_THM",DOMSUB_FLOOKUP_THM,DB.Thm),
   ("DOMSUB_FLOOKUP_NEQ",DOMSUB_FLOOKUP_NEQ,DB.Thm),
   ("DOMSUB_FLOOKUP",DOMSUB_FLOOKUP,DB.Thm),
   ("DOMSUB_FAPPLY_THM",DOMSUB_FAPPLY_THM,DB.Thm),
   ("DOMSUB_FAPPLY_NEQ",DOMSUB_FAPPLY_NEQ,DB.Thm),
   ("DOMSUB_FAPPLY",DOMSUB_FAPPLY,DB.Thm),
   ("FDOM_DOMSUB",FDOM_DOMSUB,DB.Thm),
   ("DOMSUB_FUPDATE_THM",DOMSUB_FUPDATE_THM,DB.Thm),
   ("DOMSUB_FUPDATE_NEQ",DOMSUB_FUPDATE_NEQ,DB.Thm),
   ("DOMSUB_FUPDATE",DOMSUB_FUPDATE,DB.Thm),
   ("DOMSUB_FEMPTY",DOMSUB_FEMPTY,DB.Thm),
   ("FINITE_PRED_11",FINITE_PRED_11,DB.Thm),
   ("FAPPLY_f_o",FAPPLY_f_o,DB.Thm), ("f_o_FUPDATE",f_o_FUPDATE,DB.Thm),
   ("f_o_FEMPTY",f_o_FEMPTY,DB.Thm), ("FDOM_f_o",FDOM_f_o,DB.Thm),
   ("FLOOKUP_FUN_FMAP",FLOOKUP_FUN_FMAP,DB.Thm),
   ("FDOM_FMAP",FDOM_FMAP,DB.Thm), ("FRANGE_FMAP",FRANGE_FMAP,DB.Thm),
   ("FUN_FMAP_EMPTY",FUN_FMAP_EMPTY,DB.Thm),
   ("RRESTRICT_FUPDATE",RRESTRICT_FUPDATE,DB.Thm),
   ("RRESTRICT_FEMPTY",RRESTRICT_FEMPTY,DB.Thm),
   ("FRANGE_FUNION",FRANGE_FUNION,DB.Thm),
   ("FRANGE_FLOOKUP",FRANGE_FLOOKUP,DB.Thm),
   ("o_f_FRANGE",o_f_FRANGE,DB.Thm),
   ("FINITE_FRANGE",FINITE_FRANGE,DB.Thm),
   ("SUBMAP_FRANGE",SUBMAP_FRANGE,DB.Thm),
   ("FRANGE_FUPDATE",FRANGE_FUPDATE,DB.Thm),
   ("FRANGE_FEMPTY",FRANGE_FEMPTY,DB.Thm),
   ("FLOOKUP_o_f",FLOOKUP_o_f,DB.Thm), ("o_f_o_f",o_f_o_f,DB.Thm),
   ("FEVERY_o_f",FEVERY_o_f,DB.Thm), ("o_f_FEMPTY",o_f_FEMPTY,DB.Thm),
   ("o_f_FAPPLY",o_f_FAPPLY,DB.Thm), ("FDOM_o_f",FDOM_o_f,DB.Thm),
   ("o_f_FDOM",o_f_FDOM,DB.Thm), ("f_o_f_FEMPTY_2",f_o_f_FEMPTY_2,DB.Thm),
   ("f_o_f_FEMPTY_1",f_o_f_FEMPTY_1,DB.Thm),
   ("FEVERY_FLOOKUP",FEVERY_FLOOKUP,DB.Thm),
   ("FEVERY_FUPDATE",FEVERY_FUPDATE,DB.Thm),
   ("FEVERY_FEMPTY",FEVERY_FEMPTY,DB.Thm),
   ("FLOOKUP_EXT",FLOOKUP_EXT,DB.Thm),
   ("FLOOKUP_FUNION",FLOOKUP_FUNION,DB.Thm),
   ("SUBMAP_FUPDATE_FLOOKUP",SUBMAP_FUPDATE_FLOOKUP,DB.Thm),
   ("FLOOKUP_SUBMAP",FLOOKUP_SUBMAP,DB.Thm),
   ("FLOOKUP_UPDATE",FLOOKUP_UPDATE,DB.Thm),
   ("FLOOKUP_EMPTY",FLOOKUP_EMPTY,DB.Thm),
   ("FMERGE_EQ_FEMPTY",FMERGE_EQ_FEMPTY,DB.Thm),
   ("FMERGE_DRESTRICT",FMERGE_DRESTRICT,DB.Thm),
   ("FMERGE_ASSOC",FMERGE_ASSOC,DB.Thm),
   ("FMERGE_COMM",FMERGE_COMM,DB.Thm),
   ("FMERGE_NO_CHANGE",FMERGE_NO_CHANGE,DB.Thm),
   ("FUNION_FMERGE",FUNION_FMERGE,DB.Thm),
   ("FMERGE_FUNION",FMERGE_FUNION,DB.Thm),
   ("FDOM_FMERGE",FDOM_FMERGE,DB.Thm),
   ("FMERGE_FEMPTY",FMERGE_FEMPTY,DB.Thm),
   ("FUNION_IDEMPOT",FUNION_IDEMPOT,DB.Thm),
   ("DRESTRICT_FUNION",DRESTRICT_FUNION,DB.Thm),
   ("DRESTRICT_EQ_FUNION",DRESTRICT_EQ_FUNION,DB.Thm),
   ("IN_FDOM_FOLDR_UNION",IN_FDOM_FOLDR_UNION,DB.Thm),
   ("DRESTRICT_FUNION_DRESTRICT_COMPL",
    DRESTRICT_FUNION_DRESTRICT_COMPL,
    DB.Thm), ("DRESTRICT_IDEMPOT",DRESTRICT_IDEMPOT,DB.Thm),
   ("SUBMAP_FUNION_ABSORPTION",SUBMAP_FUNION_ABSORPTION,DB.Thm),
   ("MAP_KEYS_witness",MAP_KEYS_witness,DB.Thm),
   ("MAP_KEYS_FEMPTY",MAP_KEYS_FEMPTY,DB.Thm),
   ("MAP_KEYS_FUPDATE",MAP_KEYS_FUPDATE,DB.Thm),
   ("MAP_KEYS_using_LINV",MAP_KEYS_using_LINV,DB.Thm),
   ("fmap_rel_FUPDATE_same",fmap_rel_FUPDATE_same,DB.Thm),
   ("fmap_rel_FUPDATE_LIST_same",fmap_rel_FUPDATE_LIST_same,DB.Thm),
   ("fmap_rel_FEMPTY",fmap_rel_FEMPTY,DB.Thm),
   ("fmap_rel_FEMPTY2",fmap_rel_FEMPTY2,DB.Thm),
   ("fmap_rel_refl",fmap_rel_refl,DB.Thm),
   ("fmap_rel_FUNION_rels",fmap_rel_FUNION_rels,DB.Thm),
   ("fmap_rel_FUPDATE_I",fmap_rel_FUPDATE_I,DB.Thm),
   ("fmap_rel_mono",fmap_rel_mono,DB.Thm),
   ("fmap_EQ_UPTO___EMPTY",fmap_EQ_UPTO___EMPTY,DB.Thm),
   ("fmap_EQ_UPTO___EQ",fmap_EQ_UPTO___EQ,DB.Thm),
   ("fmap_EQ_UPTO___FUPDATE_BOTH",fmap_EQ_UPTO___FUPDATE_BOTH,DB.Thm),
   ("fmap_EQ_UPTO___FUPDATE_BOTH___NO_DELETE",
    fmap_EQ_UPTO___FUPDATE_BOTH___NO_DELETE,
    DB.Thm),
   ("fmap_EQ_UPTO___FUPDATE_SING",fmap_EQ_UPTO___FUPDATE_SING,DB.Thm),
   ("o_f_FUNION",o_f_FUNION,DB.Thm),
   ("FDOM_FOLDR_DOMSUB",FDOM_FOLDR_DOMSUB,DB.Thm),
   ("FEVERY_SUBMAP",FEVERY_SUBMAP,DB.Thm),
   ("FEVERY_ALL_FLOOKUP",FEVERY_ALL_FLOOKUP,DB.Thm),
   ("FUPDATE_LIST_CANCEL",FUPDATE_LIST_CANCEL,DB.Thm),
   ("FUPDATE_EQ_FUNION",FUPDATE_EQ_FUNION,DB.Thm),
   ("FUPDATE_LIST_APPEND_COMMUTES",FUPDATE_LIST_APPEND_COMMUTES,DB.Thm),
   ("fmap_rel_OPTREL_FLOOKUP",fmap_rel_OPTREL_FLOOKUP,DB.Thm),
   ("FLOOKUP_DRESTRICT",FLOOKUP_DRESTRICT,DB.Thm),
   ("FUPDATE_LIST_ALL_DISTINCT_PERM",
    FUPDATE_LIST_ALL_DISTINCT_PERM,
    DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("sortingTheory.sorting_grammars",
                          sortingTheory.sorting_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF (temp_set_fixity "'"))
       (Infix(HOLgrammars.LEFT, 2000))
  val _ = update_grms
       (UTOFF (temp_set_fixity "|+"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF (temp_set_fixity "|++"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_fmap", (Term.prim_mk_const { Name = "is_fmap", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("is_fmap", (Term.prim_mk_const { Name = "is_fmap", Thy = "finite_map"}))
  val _ = update_grms temp_add_type "fmap"
  val _ = update_grms temp_add_type "fmap"
  val _ = update_grms
       temp_add_infix_type
       {Name = "fmap", ParseName = SOME "|->", Assoc = HOLgrammars.RIGHT, Prec = 50}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_REP", (Term.prim_mk_const { Name = "fmap_REP", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_ABS", (Term.prim_mk_const { Name = "fmap_ABS", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUPDATE", (Term.prim_mk_const { Name = "FUPDATE", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUPDATE", (Term.prim_mk_const { Name = "FUPDATE", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|+", (Term.prim_mk_const { Name = "FUPDATE", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FEMPTY", (Term.prim_mk_const { Name = "FEMPTY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FEMPTY", (Term.prim_mk_const { Name = "FEMPTY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FAPPLY", (Term.prim_mk_const { Name = "FAPPLY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FAPPLY", (Term.prim_mk_const { Name = "FAPPLY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("'", (Term.prim_mk_const { Name = "FAPPLY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FDOM", (Term.prim_mk_const { Name = "FDOM", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FDOM", (Term.prim_mk_const { Name = "FDOM", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCARD", (Term.prim_mk_const { Name = "FCARD", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FCARD", (Term.prim_mk_const { Name = "FCARD", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBMAP", (Term.prim_mk_const { Name = "SUBMAP", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUBMAP", (Term.prim_mk_const { Name = "SUBMAP", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "SUBMAP"))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DRESTRICT", (Term.prim_mk_const { Name = "DRESTRICT", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUNION", (Term.prim_mk_const { Name = "FUNION", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMERGE", (Term.prim_mk_const { Name = "FMERGE", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FLOOKUP", (Term.prim_mk_const { Name = "FLOOKUP", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FLOOKUP", (Term.prim_mk_const { Name = "FLOOKUP", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FEVERY", (Term.prim_mk_const { Name = "FEVERY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FEVERY", (Term.prim_mk_const { Name = "FEVERY", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("f_o_f", (Term.prim_mk_const { Name = "f_o_f", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "f_o_f"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("o_f", (Term.prim_mk_const { Name = "o_f", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "o_f"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FRANGE", (Term.prim_mk_const { Name = "FRANGE", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FRANGE", (Term.prim_mk_const { Name = "FRANGE", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("RRESTRICT", (Term.prim_mk_const { Name = "RRESTRICT", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUN_FMAP", (Term.prim_mk_const { Name = "FUN_FMAP", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("f_o", (Term.prim_mk_const { Name = "f_o", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("f_o", (Term.prim_mk_const { Name = "f_o", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "f_o"))
       (Infix(HOLgrammars.LEFT, 500))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fdomsub", (Term.prim_mk_const { Name = "fdomsub", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fdomsub", (Term.prim_mk_const { Name = "fdomsub", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("\\\\", (Term.prim_mk_const { Name = "fdomsub", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUPDATE_LIST", (Term.prim_mk_const { Name = "FUPDATE_LIST", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FUPDATE_LIST", (Term.prim_mk_const { Name = "FUPDATE_LIST", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("|++", (Term.prim_mk_const { Name = "FUPDATE_LIST", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMAP_MAP2", (Term.prim_mk_const { Name = "FMAP_MAP2", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FMAP_MAP2", (Term.prim_mk_const { Name = "FMAP_MAP2", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAP_KEYS", (Term.prim_mk_const { Name = "MAP_KEYS", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_rel", (Term.prim_mk_const { Name = "fmap_rel", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_rel", (Term.prim_mk_const { Name = "fmap_rel", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_EQ_UPTO", (Term.prim_mk_const { Name = "fmap_EQ_UPTO", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_EQ_UPTO", (Term.prim_mk_const { Name = "fmap_EQ_UPTO", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_size", (Term.prim_mk_const { Name = "fmap_size", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_size", (Term.prim_mk_const { Name = "fmap_size", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_inverse", (Term.prim_mk_const { Name = "fmap_inverse", Thy = "finite_map"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_inverse", (Term.prim_mk_const { Name = "fmap_inverse", Thy = "finite_map"}))
  val finite_map_grammars = Parse.current_lgrms()
  end


  val _ = 
   TypeBase.write
   [TypeBasePure.mk_nondatatype_info
    (mk_type("fmap",[alpha,beta]),
      {nchotomy = SOME fmap_CASES,
       induction = SOME fmap_INDUCT,
       size = SOME(Parse.Term`\(ksize:'a->num) (vsize:'b->num). fmap_size (\k:'a. 0) (\v. 1 + vsize v)`,
                   fmap_size_def),
       encode=NONE})];

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "finite_map",
    thydataty = "unicodedata",
    data =
        "U12.\\226\\138\\1456.SUBMAPR12.\\226\\138\\14012.\\226\\138\\140G12.\\226\\138\\140OCI0.IL500.H1.RK12.\\226\\138\\140S1.0.XNO12.\\226\\138\\140107.(finite_map$FUNION :(('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap) -> (('a, 'b) finite_map$fmap))"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "finite_map",
    thydataty = "simp",
    data =
        "finite_map.FAPPLY_FUPDATE finite_map.FDOM_DOMSUB finite_map.fmap_EQ_UPTO___EQ finite_map.fmap_EQ_UPTO___EMPTY finite_map.fmap_rel_refl finite_map.fmap_rel_FEMPTY2 finite_map.fmap_rel_FEMPTY finite_map.MAP_KEYS_FEMPTY finite_map.DRESTRICT_IDEMPOT finite_map.o_f_FUPDATE finite_map.DOMSUB_IDEM finite_map.o_f_DOMSUB finite_map.FRANGE_FUPDATE_DOMSUB finite_map.DOMSUB_FLOOKUP finite_map.DOMSUB_FAPPLY finite_map.FDOM_FEMPTY finite_map.DOMSUB_FUPDATE finite_map.DOMSUB_FEMPTY finite_map.f_o_FEMPTY finite_map.FDOM_f_o finite_map.FDOM_FMAP finite_map.FRANGE_FMAP finite_map.FUN_FMAP_EMPTY finite_map.o_f_FRANGE finite_map.FINITE_FRANGE finite_map.FRANGE_FEMPTY finite_map.o_f_o_f finite_map.o_f_FEMPTY finite_map.o_f_FAPPLY finite_map.FDOM_o_f finite_map.f_o_f_FEMPTY_2 finite_map.f_o_f_FEMPTY_1 finite_map.FLOOKUP_EMPTY finite_map.FDOM_FMERGE finite_map.FUNION_IDEMPOT finite_map.FUNION_FEMPTY_2 finite_map.FUNION_FEMPTY_1 finite_map.FDOM_FUNION finite_map.SUBMAP_DRESTRICT finite_map.DRESTRICT_DRESTRICT finite_map.DRESTRICT_SUBMAP finite_map.DRESTRICT_FUPDATE finite_map.DRESTRICT_FEMPTY finite_map.SUBMAP_FUPDATE_EQN finite_map.SUBMAP_REFL finite_map.FDOM_FINITE finite_map.NOT_EQ_FEMPTY_FUPDATE finite_map.FDOM_FUPDATE finite_map.FUPDATE_EQ"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "finite_map",
    thydataty = "rule_induction",
    data = "finite_map.is_fmap_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "finite_map",
    thydataty = "mono",
    data = "finite_map.fmap_rel_mono"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "finite_map",
    thydataty = "compute",
    data =
        "finite_map.FUPDATE_LIST_THM finite_map.fmap_EQ_UPTO_def finite_map.fmap_inverse_def finite_map.fmap_size_def finite_map.fmap_rel_def finite_map.FLOOKUP_UPDATE finite_map.FMAP_MAP2_def finite_map.FDOM_FEMPTY finite_map.FLOOKUP_EMPTY finite_map.DOMSUB_FEMPTY finite_map.FAPPLY_FUPDATE_THM finite_map.FDOM_FUPDATE finite_map.DOMSUB_FUPDATE_THM"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "finite_map",
    thydataty = "TexTokenMap",
    data =
        "3.|->17.\\\\HOLTokenMapto{}1.6.SUBMAP18.\\\\HOLTokenSubmap{}1.12.\\226\\138\\14518.\\\\HOLTokenSubmap{}1."
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "finite_map"
end
