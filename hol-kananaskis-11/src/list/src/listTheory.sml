structure listTheory :> listTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading listTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open ind_typeTheory operatorTheory pred_setTheory
  in end;
  val _ = Theory.link_parents
          ("list",
          Arbnum.fromString "1488586477",
          Arbnum.fromString "361466")
          [("operator",
           Arbnum.fromString "1488586470",
           Arbnum.fromString "475869"),
           ("ind_type",
           Arbnum.fromString "1488586463",
           Arbnum.fromString "553745"),
           ("pred_set",
           Arbnum.fromString "1488586210",
           Arbnum.fromString "643996")];
  val _ = Theory.incorporate_types "list" [("list", 1)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("min", "bool"),
   ID("num", "num"), ID("pair", "prod"), ID("option", "option"),
   ID("ind_type", "recspace"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("arithmetic", ">="),
   ID("bool", "?"), ID("bool", "?!"), ID("min", "@"),
   ID("list", "ALL_DISTINCT"), ID("list", "APPEND"), ID("bool", "ARB"),
   ID("operator", "ASSOC"), ID("pred_set", "BIGUNION"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("combin", "C"), ID("pred_set", "CARD"),
   ID("pred_set", "CHOICE"), ID("operator", "COMM"), ID("bool", "COND"),
   ID("list", "CONS"), ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("pred_set", "DIFF"), ID("pred_set", "DISJOINT"), ID("list", "DROP"),
   ID("list", "EL"), ID("pred_set", "EMPTY"), ID("list", "EVERY"),
   ID("list", "EVERYi"), ID("list", "EXISTS"), ID("bool", "F"),
   ID("ind_type", "FCONS"), ID("list", "FILTER"), ID("list", "FIND"),
   ID("pred_set", "FINITE"), ID("list", "FLAT"), ID("list", "FOLDL"),
   ID("list", "FOLDL2"), ID("list", "FOLDR"), ID("list", "FRONT"),
   ID("pair", "FST"), ID("list", "GENLIST"), ID("list", "GENLIST_AUX"),
   ID("pred_set", "GSPEC"), ID("list", "HD"), ID("combin", "I"),
   ID("pred_set", "IMAGE"), ID("bool", "IN"), ID("list", "INDEX_FIND"),
   ID("list", "INDEX_OF"), ID("pred_set", "INJ"), ID("pred_set", "INSERT"),
   ID("pred_set", "INTER"), ID("pred_set", "ITSET"), ID("combin", "K"),
   ID("list", "LAST"), ID("list", "LEN"), ID("list", "LENGTH"),
   ID("bool", "LET"), ID("list", "LIST_APPLY"), ID("list", "LIST_BIND"),
   ID("list", "LIST_IGNORE_BIND"), ID("list", "LIST_LIFT2"),
   ID("list", "LIST_REL"), ID("list", "LIST_TO_SET"), ID("list", "LLEX"),
   ID("list", "LRC"), ID("list", "LUPDATE"), ID("list", "MAP"),
   ID("list", "MAP2"), ID("list", "NIL"), ID("option", "NONE"),
   ID("arithmetic", "NRC"), ID("list", "NULL"),
   ID("arithmetic", "NUMERAL"), ID("while", "OLEAST"),
   ID("option", "OPTION_MAP"), ID("list", "PAD_LEFT"),
   ID("list", "PAD_RIGHT"), ID("prim_rec", "PRE"), ID("relation", "RC"),
   ID("pred_set", "REST"), ID("list", "REV"), ID("list", "REVERSE"),
   ID("list", "SET_TO_LIST"), ID("pair", "SND"), ID("list", "SNOC"),
   ID("option", "SOME"), ID("pred_set", "SUBSET"), ID("num", "SUC"),
   ID("list", "SUM"), ID("list", "SUM_ACC"), ID("pred_set", "SUM_IMAGE"),
   ID("bool", "T"), ID("list", "TAKE"), ID("list", "TL"),
   ID("bool", "TYPE_DEFINITION"), ID("pair", "UNCURRY"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"), ID("list", "UNZIP"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("list", "ZIP"), ID("bool", "\\/"), ID("pred_set", "count"),
   ID("list", "dropWhile"), ID("list", "isPREFIX"),
   ID("list", "list_CASE"), ID("list", "list_size"), ID("list", "nub"),
   ID("combin", "o"), ID("option", "option_CASE"),
   ID("list", "splitAtPki"), ID("relation", "total"),
   ID("relation", "transitive"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYV "'b", TYOP [1, 1], TYOP [0, 2, 0], TYOP [0, 2, 3],
   TYOP [0, 4, 3], TYOP [2], TYOP [0, 1, 6], TYOP [3], TYOP [0, 8, 7],
   TYOP [0, 9, 5], TYOP [1, 0], TYOP [0, 11, 11], TYOP [0, 11, 8],
   TYOP [0, 0, 8], TYOP [0, 14, 13], TYOP [0, 11, 1], TYOP [0, 0, 16],
   TYOP [0, 17, 1], TYOP [0, 1, 18], TYOP [0, 11, 19], TYOP [0, 11, 6],
   TYOP [0, 11, 21], TYOP [0, 0, 6], TYOP [0, 23, 12], TYOP [4, 0, 1],
   TYOP [1, 25], TYOP [4, 11, 2], TYOP [0, 27, 26], TYOP [0, 26, 27],
   TYOP [0, 8, 12], TYOP [0, 8, 8], TYOP [1, 8], TYOP [0, 32, 31],
   TYOP [0, 32, 8], TYOP [0, 0, 12], TYOP [0, 23, 11], TYOP [0, 11, 12],
   TYOP [0, 0, 30], TYV "'c", TYOP [1, 39], TYOP [0, 40, 11],
   TYOP [0, 2, 41], TYOP [0, 39, 0], TYOP [0, 1, 43], TYOP [0, 44, 42],
   TYOP [0, 11, 2], TYOP [0, 0, 1], TYOP [0, 47, 46], TYOP [0, 0, 23],
   TYOP [0, 11, 49], TYOP [0, 49, 50], TYOP [0, 49, 22], TYOP [0, 11, 23],
   TYOP [0, 2, 6], TYOP [0, 11, 54], TYOP [0, 0, 7], TYOP [0, 56, 55],
   TYOP [0, 2, 12], TYOP [0, 1, 11], TYOP [0, 59, 11], TYOP [0, 2, 60],
   TYOP [0, 2, 11], TYOP [0, 1, 0], TYOP [1, 63], TYOP [0, 64, 62],
   TYOP [0, 11, 31], TYOP [0, 11, 0], TYOP [5, 8], TYOP [0, 11, 68],
   TYOP [0, 0, 69], TYOP [4, 8, 0], TYOP [5, 71], TYOP [0, 11, 72],
   TYOP [0, 23, 73], TYOP [0, 8, 74], TYOP [0, 8, 0], TYOP [0, 76, 30],
   TYOP [0, 8, 11], TYOP [0, 76, 78], TYOP [0, 1, 16], TYOP [0, 1, 1],
   TYOP [0, 0, 81], TYOP [0, 82, 80], TYOP [0, 40, 0], TYOP [0, 2, 84],
   TYOP [0, 0, 85], TYOP [0, 0, 44], TYOP [0, 87, 86], TYOP [0, 1, 47],
   TYOP [0, 89, 80], TYOP [1, 11], TYOP [0, 91, 11], TYOP [5, 0],
   TYOP [0, 11, 93], TYOP [0, 23, 94], TYOP [0, 23, 21], TYOP [0, 8, 23],
   TYOP [0, 97, 21], TYOP [0, 8, 67], TYOP [6, 0], TYOP [0, 100, 6],
   TYV "'d", TYOP [0, 102, 6], TYOP [0, 39, 103], TYV "'f",
   TYOP [0, 105, 6], TYV "'e", TYOP [0, 107, 106], TYV "'h",
   TYOP [0, 109, 6], TYV "'g", TYOP [0, 111, 110], TYOP [0, 23, 6],
   TYOP [0, 40, 6], TYOP [0, 2, 114], TYOP [0, 0, 115], TYOP [0, 87, 116],
   TYOP [0, 44, 115], TYOP [0, 23, 113], TYOP [0, 1, 23], TYOP [0, 0, 39],
   TYOP [0, 0, 0], TYOP [0, 0, 122], TYOP [0, 1, 39], TYOP [0, 0, 124],
   TYOP [0, 39, 6], TYOP [0, 1, 126], TYOP [0, 0, 127], TYOP [0, 11, 81],
   TYOP [0, 0, 129], TYOP [0, 0, 2], TYOP [0, 1, 17], TYOP [4, 0, 0],
   TYOP [0, 133, 1], TYOP [0, 1, 134], TYOP [0, 1, 40], TYOP [0, 39, 1],
   TYOP [0, 39, 125], TYOP [0, 107, 105], TYOP [0, 102, 139],
   TYOP [0, 8, 1], TYOP [0, 25, 8], TYOP [0, 1, 102], TYOP [1, 43],
   TYOP [0, 39, 2], TYOP [1, 124], TYOP [0, 1, 8], TYOP [0, 11, 16],
   TYOP [1, 2], TYOP [0, 35, 6], TYOP [0, 11, 150], TYOP [0, 11, 100],
   TYOP [1, 102], TYOP [1, 107], TYOP [0, 8, 6], TYOP [1, 111],
   TYOP [1, 93], TYOP [1, 109], TYOP [0, 7, 6], TYOP [0, 126, 6],
   TYOP [0, 103, 6], TYOP [0, 107, 6], TYOP [0, 162, 6], TYOP [0, 110, 6],
   TYOP [0, 6, 6], TYOP [0, 165, 6], TYOP [0, 47, 6], TYOP [0, 167, 6],
   TYOP [0, 121, 6], TYOP [0, 169, 6], TYOP [0, 113, 6], TYOP [0, 123, 6],
   TYOP [0, 172, 6], TYOP [0, 49, 6], TYOP [0, 174, 6], TYOP [0, 82, 6],
   TYOP [0, 176, 6], TYOP [0, 125, 6], TYOP [0, 178, 6], TYOP [0, 56, 6],
   TYOP [0, 180, 6], TYOP [0, 87, 6], TYOP [0, 182, 6], TYOP [0, 128, 6],
   TYOP [0, 184, 6], TYOP [0, 17, 6], TYOP [0, 186, 6], TYOP [0, 130, 6],
   TYOP [0, 188, 6], TYOP [0, 14, 6], TYOP [0, 190, 6], TYOP [0, 63, 6],
   TYOP [0, 192, 6], TYOP [0, 124, 6], TYOP [0, 194, 6], TYOP [0, 143, 6],
   TYOP [0, 196, 6], TYOP [0, 159, 6], TYOP [0, 89, 6], TYOP [0, 199, 6],
   TYOP [0, 132, 6], TYOP [0, 201, 6], TYOP [0, 44, 6], TYOP [0, 203, 6],
   TYOP [0, 135, 6], TYOP [0, 205, 6], TYOP [0, 59, 6], TYOP [0, 207, 6],
   TYOP [0, 137, 6], TYOP [0, 209, 6], TYOP [0, 160, 6], TYOP [0, 138, 6],
   TYOP [0, 212, 6], TYOP [0, 104, 6], TYOP [0, 214, 6], TYOP [0, 140, 6],
   TYOP [0, 216, 6], TYOP [0, 108, 6], TYOP [0, 218, 6], TYOP [0, 112, 6],
   TYOP [0, 220, 6], TYOP [0, 171, 6], TYOP [0, 117, 6], TYOP [0, 223, 6],
   TYOP [0, 118, 6], TYOP [0, 225, 6], TYOP [0, 21, 6], TYOP [0, 227, 6],
   TYOP [0, 148, 6], TYOP [0, 229, 6], TYOP [0, 55, 6], TYOP [0, 231, 6],
   TYOP [0, 4, 6], TYOP [0, 233, 6], TYOP [0, 76, 6], TYOP [0, 235, 6],
   TYOP [0, 141, 6], TYOP [0, 237, 6], TYOP [0, 97, 6], TYOP [0, 239, 6],
   TYOP [0, 9, 6], TYOP [0, 241, 6], TYOP [0, 134, 6], TYOP [0, 243, 6],
   TYOP [0, 101, 6], TYOP [0, 245, 6], TYOP [0, 54, 6], TYOP [0, 114, 6],
   TYOP [0, 153, 6], TYOP [0, 249, 6], TYOP [0, 154, 6], TYOP [0, 251, 6],
   TYOP [0, 156, 6], TYOP [0, 253, 6], TYOP [0, 158, 6], TYOP [0, 255, 6],
   TYOP [0, 64, 6], TYOP [0, 257, 6], TYOP [0, 91, 6], TYOP [0, 259, 6],
   TYOP [0, 32, 6], TYOP [0, 261, 6], TYOP [0, 157, 6], TYOP [0, 263, 6],
   TYOP [0, 26, 6], TYOP [0, 265, 6], TYOP [0, 155, 6], TYOP [0, 25, 6],
   TYOP [0, 268, 6], TYOP [0, 8, 31], TYOP [0, 0, 133], TYOP [0, 0, 271],
   TYOP [0, 1, 25], TYOP [0, 0, 273], TYOP [4, 0, 102], TYOP [0, 102, 275],
   TYOP [0, 0, 276], TYOP [4, 0, 6], TYOP [0, 6, 278], TYOP [0, 0, 279],
   TYOP [4, 39, 1], TYOP [0, 1, 281], TYOP [0, 39, 282], TYOP [4, 11, 11],
   TYOP [0, 11, 284], TYOP [0, 11, 285], TYOP [0, 2, 27],
   TYOP [0, 11, 287], TYOP [4, 11, 153], TYOP [0, 153, 289],
   TYOP [0, 11, 290], TYOP [4, 2, 11], TYOP [0, 11, 292], TYOP [0, 2, 293],
   TYOP [4, 40, 2], TYOP [0, 2, 295], TYOP [0, 40, 296], TYOP [0, 0, 71],
   TYOP [0, 8, 298], TYOP [0, 6, 165], TYOP [0, 8, 155], TYOP [0, 1, 7],
   TYOP [0, 39, 126], TYOP [0, 131, 6], TYOP [0, 131, 304],
   TYOP [0, 7, 159], TYOP [0, 147, 6], TYOP [0, 147, 307],
   TYOP [0, 126, 160], TYOP [0, 36, 6], TYOP [0, 36, 310], TYOP [0, 67, 6],
   TYOP [0, 67, 312], TYOP [0, 12, 6], TYOP [0, 12, 314], TYOP [0, 11, 40],
   TYOP [0, 316, 6], TYOP [0, 316, 317], TYOP [0, 13, 6],
   TYOP [0, 13, 319], TYOP [0, 94, 6], TYOP [0, 94, 321], TYOP [0, 69, 6],
   TYOP [0, 69, 323], TYOP [0, 2, 54], TYOP [0, 40, 114],
   TYOP [0, 153, 249], TYOP [0, 154, 251], TYOP [1, 105], TYOP [0, 329, 6],
   TYOP [0, 329, 330], TYOP [0, 156, 253], TYOP [0, 32, 261], TYOP [5, 1],
   TYOP [1, 334], TYOP [0, 335, 6], TYOP [0, 335, 336], TYOP [0, 26, 265],
   TYOP [1, 275], TYOP [0, 339, 6], TYOP [0, 339, 340], TYOP [1, 281],
   TYOP [0, 342, 6], TYOP [0, 342, 343], TYOP [0, 72, 6],
   TYOP [0, 72, 345], TYOP [0, 25, 268], TYOP [0, 27, 6],
   TYOP [0, 27, 348], TYOP [0, 100, 101], TYOP [0, 111, 6],
   TYOP [0, 351, 6], TYOP [0, 16, 6], TYOP [0, 353, 6], TYOP [0, 152, 6],
   TYOP [0, 355, 6], TYOP [0, 119, 6], TYOP [0, 357, 119], TYOP [4, 1, 0],
   TYOP [1, 359], TYOP [0, 360, 6], TYOP [0, 2, 2], TYOP [0, 2, 362],
   TYOP [0, 40, 40], TYOP [0, 40, 364], TYOP [0, 91, 91],
   TYOP [0, 91, 366], TYOP [0, 32, 32], TYOP [0, 32, 368],
   TYOP [0, 113, 23], TYOP [0, 159, 7], TYOP [0, 160, 126],
   TYOP [0, 82, 89], TYOP [0, 0, 155], TYOP [0, 374, 97], TYOP [0, 63, 11],
   TYOP [0, 2, 376], TYOP [0, 63, 62], TYOP [0, 378, 377],
   TYOP [0, 59, 62], TYOP [0, 61, 380], TYOP [0, 23, 8], TYOP [0, 23, 0],
   TYOP [0, 6, 123], TYOP [0, 1, 81], TYOP [0, 6, 385], TYOP [0, 6, 300],
   TYOP [0, 6, 37], TYOP [0, 6, 270], TYOP [0, 72, 72], TYOP [0, 72, 390],
   TYOP [0, 6, 391], TYOP [0, 1, 362], TYOP [0, 39, 364],
   TYOP [0, 153, 153], TYOP [0, 102, 395], TYOP [0, 154, 154],
   TYOP [0, 107, 397], TYOP [0, 329, 329], TYOP [0, 105, 399],
   TYOP [0, 156, 156], TYOP [0, 111, 401], TYOP [0, 158, 158],
   TYOP [0, 109, 403], TYOP [0, 64, 64], TYOP [0, 63, 405],
   TYOP [0, 63, 0], TYOP [1, 407], TYOP [0, 408, 408], TYOP [0, 407, 409],
   TYOP [0, 124, 63], TYOP [0, 43, 411], TYOP [1, 412], TYOP [0, 413, 413],
   TYOP [0, 412, 414], TYOP [0, 11, 366], TYOP [0, 8, 368],
   TYOP [0, 26, 26], TYOP [0, 25, 418], TYOP [0, 8, 100],
   TYOP [0, 420, 100], TYOP [0, 0, 421], TYOP [0, 8, 422],
   TYOP [0, 23, 23], TYOP [0, 23, 424], TYOP [0, 155, 267],
   TYOP [0, 8, 362], TYOP [0, 8, 364], TYOP [0, 8, 418], TYOP [0, 2, 1],
   TYOP [0, 8, 430], TYOP [0, 26, 25], TYOP [0, 8, 432], TYOP [0, 7, 54],
   TYOP [0, 21, 259], TYOP [0, 268, 265], TYOP [0, 420, 420],
   TYOP [0, 100, 437], TYOP [0, 149, 2], TYOP [0, 0, 67],
   TYOP [0, 123, 440], TYOP [1, 133], TYOP [0, 442, 1], TYOP [0, 1, 443],
   TYOP [0, 135, 444], TYOP [0, 26, 39], TYOP [0, 39, 446],
   TYOP [0, 25, 39], TYOP [0, 39, 448], TYOP [0, 449, 447],
   TYOP [0, 11, 7], TYOP [0, 7, 451], TYOP [0, 7, 56], TYOP [0, 453, 452],
   TYOP [0, 26, 126], TYOP [0, 126, 455], TYOP [0, 25, 126],
   TYOP [0, 126, 457], TYOP [0, 458, 456], TYOP [0, 8, 13],
   TYOP [0, 8, 14], TYOP [0, 461, 460], TYOP [0, 2, 39], TYOP [0, 11, 463],
   TYOP [0, 39, 464], TYOP [0, 138, 465], TYOP [0, 2, 46],
   TYOP [0, 0, 362], TYOP [0, 468, 467], TYOP [0, 25, 0], TYOP [0, 27, 11],
   TYOP [0, 71, 8], TYOP [0, 8, 2], TYOP [0, 141, 473], TYOP [0, 8, 32],
   TYOP [0, 31, 475], TYOP [0, 8, 26], TYOP [0, 8, 25], TYOP [0, 478, 477],
   TYOP [0, 0, 278], TYOP [0, 480, 23], TYOP [0, 23, 7], TYOP [0, 47, 482],
   TYOP [0, 23, 159], TYOP [0, 56, 484], TYOP [0, 7, 113],
   TYOP [0, 120, 486], TYOP [0, 155, 23], TYOP [0, 76, 488],
   TYOP [0, 155, 7], TYOP [0, 141, 490], TYOP [0, 268, 160],
   TYOP [0, 457, 492], TYOP [0, 0, 113], TYOP [0, 1, 159],
   TYOP [0, 11, 227], TYOP [0, 8, 267], TYOP [0, 25, 269],
   TYOP [0, 47, 484], TYOP [0, 0, 424], TYOP [0, 7, 7], TYOP [0, 1, 501],
   TYOP [0, 23, 81], TYOP [0, 82, 503], TYOP [0, 0, 76], TYOP [0, 6, 23],
   TYOP [0, 6, 155], TYOP [0, 12, 37], TYOP [0, 11, 59], TYOP [0, 2, 8],
   TYOP [0, 40, 8], TYOP [0, 26, 8], TYOP [0, 27, 27], TYOP [0, 513, 513],
   TYOP [0, 2, 40], TYOP [0, 146, 515], TYOP [0, 144, 41],
   TYOP [0, 64, 11], TYOP [0, 408, 518], TYOP [0, 146, 64], TYOP [1, 411],
   TYOP [0, 521, 520], TYOP [0, 144, 521], TYOP [0, 413, 523],
   TYOP [0, 0, 11], TYOP [0, 525, 11], TYOP [0, 11, 526], TYOP [0, 39, 11],
   TYOP [0, 528, 11], TYOP [0, 40, 529], TYOP [0, 145, 2],
   TYOP [0, 40, 531], TYOP [0, 376, 11], TYOP [0, 64, 533],
   TYOP [0, 12, 11], TYOP [0, 91, 535], TYOP [0, 11, 114],
   TYOP [0, 0, 126], TYOP [0, 538, 537], TYOP [0, 2, 21],
   TYOP [0, 120, 540], TYOP [0, 40, 54], TYOP [0, 39, 7],
   TYOP [0, 543, 542], TYOP [0, 40, 249], TYOP [0, 104, 545],
   TYOP [0, 154, 330], TYOP [0, 108, 547], TYOP [0, 156, 255],
   TYOP [0, 112, 549], TYOP [0, 2, 7], TYOP [1, 23], TYOP [0, 552, 113],
   TYOP [0, 91, 21], TYOP [0, 32, 155], TYOP [0, 26, 268],
   TYOP [0, 1, 427], TYOP [0, 157, 157], TYOP [0, 8, 558],
   TYOP [0, 93, 559], TYOP [0, 335, 335], TYOP [0, 8, 561],
   TYOP [0, 334, 562], TYOP [0, 122, 12], TYOP [0, 121, 316],
   TYOP [0, 11, 32], TYOP [0, 14, 566], TYOP [0, 124, 515],
   TYOP [0, 2, 153], TYOP [0, 143, 569], TYOP [0, 2, 144],
   TYOP [0, 44, 571], TYOP [0, 2, 91], TYOP [0, 59, 573], TYOP [0, 2, 32],
   TYOP [0, 147, 575], TYOP [0, 43, 41], TYOP [0, 40, 2],
   TYOP [0, 137, 578], TYOP [0, 91, 552], TYOP [0, 53, 580],
   TYOP [0, 149, 91], TYOP [0, 62, 582], TYOP [0, 157, 335],
   TYOP [0, 93, 334], TYOP [0, 585, 584], TYOP [0, 442, 2],
   TYOP [0, 134, 587], TYOP [0, 26, 11], TYOP [0, 470, 589],
   TYOP [0, 26, 2], TYOP [0, 25, 1], TYOP [0, 592, 591], TYOP [0, 26, 40],
   TYOP [0, 448, 594], TYOP [0, 26, 153], TYOP [0, 25, 102],
   TYOP [0, 597, 596], TYOP [0, 26, 32], TYOP [0, 142, 599],
   TYOP [0, 26, 339], TYOP [0, 25, 275], TYOP [0, 602, 601],
   TYOP [0, 26, 342], TYOP [0, 25, 281], TYOP [0, 605, 604],
   TYOP [0, 11, 515], TYOP [0, 125, 607], TYOP [0, 154, 329],
   TYOP [0, 153, 609], TYOP [0, 140, 610], TYOP [0, 8, 49],
   TYOP [0, 49, 612], TYOP [0, 155, 68], TYOP [0, 47, 585],
   TYOP [0, 72, 93], TYOP [0, 71, 0], TYOP [0, 617, 616], TYOP [0, 72, 68],
   TYOP [0, 472, 619], TYOP [0, 49, 49], TYOP [0, 22, 22], TYOP [0, 27, 2],
   TYOP [0, 0, 93], TYOP [0, 1, 334], TYOP [0, 71, 72], TYOP [0, 14, 382],
   TYOP [0, 101, 355], TYOP [0, 125, 448], TYOP [0, 56, 268],
   TYOP [0, 128, 457], TYOP [0, 288, 513], TYOP [0, 7, 501],
   TYOP [0, 126, 126], TYOP [0, 126, 634], TYOP [0, 22, 6],
   TYOP [0, 36, 36], TYOP [0, 637, 36], TYOP [0, 119, 638],
   TYOP [0, 284, 442], TYOP [0, 289, 339], TYOP [0, 292, 360],
   TYOP [0, 295, 342], TYOP [0, 0, 21], TYOP [0, 644, 6], TYOP [0, 6, 645],
   TYOP [0, 11, 646], TYOP [0, 76, 141], TYOP [0, 47, 648],
   TYOP [0, 470, 448], TYOP [0, 121, 650], TYOP [0, 43, 543],
   TYOP [0, 56, 652], TYOP [0, 47, 121], TYOP [0, 124, 654],
   TYOP [0, 592, 597], TYOP [0, 143, 656], TYOP [0, 137, 528],
   TYOP [0, 59, 658], TYOP [0, 165, 424], TYOP [0, 155, 97],
   TYOP [0, 506, 661], TYOP [0, 23, 374], TYOP [0, 507, 663],
   TYOP [0, 12, 13], TYOP [0, 13, 665], TYOP [0, 145, 528],
   TYOP [0, 62, 667], TYOP [0, 131, 131], TYOP [0, 362, 669],
   TYOP [0, 46, 316], TYOP [0, 515, 671], TYOP [0, 136, 136],
   TYOP [0, 364, 673], TYOP [0, 136, 147], TYOP [0, 511, 675],
   TYOP [0, 31, 76], TYOP [0, 76, 677], TYOP [0, 31, 97],
   TYOP [0, 97, 679], TYOP [0, 31, 9], TYOP [0, 9, 681], TYOP [0, 73, 94],
   TYOP [0, 616, 683], TYOP [0, 73, 69], TYOP [0, 619, 685],
   TYOP [0, 76, 0], TYOP [0, 0, 687], TYOP [0, 68, 688], TYOP [0, 148, 16],
   TYOP [0, 97, 690], TYOP [0, 37, 12], TYOP [0, 97, 692]]
  end
  val _ = Theory.incorporate_consts "list" tyvector
     [("splitAtPki", 10), ("nub", 12), ("list_size", 15),
      ("list_CASE", 20), ("isPREFIX", 22), ("dropWhile", 24), ("ZIP", 28),
      ("UNZIP", 29), ("TL", 12), ("TAKE", 30), ("SUM_ACC", 33),
      ("SUM", 34), ("SNOC", 35), ("SET_TO_LIST", 36), ("REVERSE", 12),
      ("REV", 37), ("PAD_RIGHT", 38), ("PAD_LEFT", 38), ("NULL", 21),
      ("NIL", 11), ("MAP2", 45), ("MAP", 48), ("LUPDATE", 38), ("LRC", 51),
      ("LLEX", 52), ("LIST_TO_SET", 53), ("LIST_REL", 57),
      ("LIST_LIFT2", 45), ("LIST_IGNORE_BIND", 58), ("LIST_BIND", 61),
      ("LIST_APPLY", 65), ("LENGTH", 13), ("LEN", 66), ("LAST", 67),
      ("INDEX_OF", 70), ("INDEX_FIND", 75), ("HD", 67),
      ("GENLIST_AUX", 77), ("GENLIST", 79), ("FRONT", 12), ("FOLDR", 83),
      ("FOLDL2", 88), ("FOLDL", 90), ("FLAT", 92), ("FIND", 95),
      ("FILTER", 24), ("EXISTS", 96), ("EVERYi", 98), ("EVERY", 96),
      ("EL", 99), ("DROP", 30), ("CONS", 35), ("APPEND", 37),
      ("ALL_DISTINCT", 21)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'list'", 101), TMV("L", 11), TMV("L", 91), TMV("L", 32),
   TMV("L", 26), TMV("L1", 11), TMV("L2", 11), TMV("L2", 2),
   TMV("LIST_REL'", 55), TMV("M", 11), TMV("M'", 11), TMV("N", 11),
   TMV("P", 23), TMV("P", 56), TMV("P", 7), TMV("P", 104), TMV("P", 108),
   TMV("P", 112), TMV("P", 113), TMV("P", 117), TMV("P", 118),
   TMV("P", 21), TMV("P", 97), TMV("P", 9), TMV("P'", 23), TMV("P'", 56),
   TMV("P1", 23), TMV("P2", 23), TMV("Q", 23), TMV("Q", 56), TMV("Q", 104),
   TMV("R", 49), TMV("R", 56), TMV("R", 119), TMV("R'", 49), TMV("R1", 49),
   TMV("R1", 56), TMV("R2", 49), TMV("R2", 56), TMV("R2", 120),
   TMV("SET_TO_LIST", 36), TMV("a", 0), TMV("a", 1), TMV("a", 39),
   TMV("a", 11), TMV("a", 2), TMV("a", 8), TMV("a'", 39), TMV("a0", 0),
   TMV("a0", 11), TMV("a0'", 0), TMV("a0'", 100), TMV("a1", 11),
   TMV("a1", 2), TMV("a1", 100), TMV("a1'", 11), TMV("acc", 11),
   TMV("acc", 8), TMV("as", 11), TMV("b", 0), TMV("b", 1), TMV("b", 39),
   TMV("b", 11), TMV("b", 2), TMV("b", 8), TMV("b'", 1), TMV("bs", 2),
   TMV("c", 0), TMV("c", 1), TMV("c", 39), TMV("c", 6), TMV("c", 11),
   TMV("cs", 40), TMV("d", 11), TMV("e", 0), TMV("e", 1), TMV("f", 47),
   TMV("f", 121), TMV("f", 123), TMV("f", 82), TMV("f", 125), TMV("f", 56),
   TMV("f", 87), TMV("f", 128), TMV("f", 17), TMV("f", 130), TMV("f", 131),
   TMV("f", 14), TMV("f", 63), TMV("f", 124), TMV("f", 89), TMV("f", 120),
   TMV("f", 132), TMV("f", 44), TMV("f", 135), TMV("f", 59), TMV("f", 136),
   TMV("f", 43), TMV("f", 137), TMV("f", 138), TMV("f", 140), TMV("f", 76),
   TMV("f", 141), TMV("f", 134), TMV("f", 142), TMV("f'", 47),
   TMV("f'", 82), TMV("f'", 125), TMV("f'", 17), TMV("f'", 14),
   TMV("f'", 89), TMV("f'", 138), TMV("f0", 1), TMV("f1", 47),
   TMV("f1", 121), TMV("f1", 130), TMV("f2", 47), TMV("f2", 121),
   TMV("f2", 143), TMV("f2", 137), TMV("fn", 16), TMV("fn1", 16),
   TMV("fs", 64), TMV("fs", 144), TMV("g", 47), TMV("g", 14),
   TMV("g", 143), TMV("g", 59), TMV("g", 145), TMV("g", 76),
   TMV("g1", 124), TMV("g2", 124), TMV("gs", 146), TMV("h", 0),
   TMV("h", 1), TMV("h", 39), TMV("h", 147), TMV("h", 11), TMV("h", 8),
   TMV("h'", 0), TMV("h'", 1), TMV("h1", 0), TMV("h1", 1), TMV("h1", 102),
   TMV("h2", 0), TMV("h2", 1), TMV("h2", 39), TMV("h2", 107), TMV("i", 8),
   TMV("j", 8), TMV("k", 148), TMV("k", 4), TMV("k", 8), TMV("l", 0),
   TMV("l", 1), TMV("l", 11), TMV("l", 2), TMV("l", 40), TMV("l", 91),
   TMV("l", 149), TMV("l", 32), TMV("l", 26), TMV("l'", 11), TMV("l1", 11),
   TMV("l1", 2), TMV("l1", 40), TMV("l1", 91), TMV("l1", 32),
   TMV("l1", 26), TMV("l1'", 11), TMV("l10", 11), TMV("l2", 11),
   TMV("l2", 2), TMV("l2", 40), TMV("l2", 91), TMV("l2", 32),
   TMV("l2", 26), TMV("l2'", 11), TMV("l2'", 2), TMV("l20", 11),
   TMV("l3", 1), TMV("l3", 11), TMV("l4", 11), TMV("list", 151),
   TMV("ll", 11), TMV("lr", 11), TMV("ls", 11), TMV("ls", 2),
   TMV("ls", 91), TMV("ls", 32), TMV("ls", 26), TMV("ls1", 11),
   TMV("ls2", 2), TMV("lt", 11), TMV("m", 8), TMV("m1", 11), TMV("m1", 2),
   TMV("m1", 8), TMV("m2", 11), TMV("m2", 8), TMV("n", 8), TMV("n1", 8),
   TMV("n2", 8), TMV("p", 11), TMV("p", 2), TMV("p", 8), TMV("p", 25),
   TMV("pfx", 11), TMV("pl", 26), TMV("ps", 27), TMV("rep", 152),
   TMV("s", 23), TMV("s", 7), TMV("s", 126), TMV("s", 11), TMV("s", 2),
   TMV("sfx", 11), TMV("t", 11), TMV("t", 2), TMV("t", 40), TMV("t", 91),
   TMV("t", 32), TMV("t", 26), TMV("t", 8), TMV("t'", 11), TMV("t'", 2),
   TMV("t0", 11), TMV("t1", 11), TMV("t1", 2), TMV("t1", 153),
   TMV("t2", 11), TMV("t2", 2), TMV("t2", 40), TMV("t2", 154), TMV("v", 0),
   TMV("v", 1), TMV("v", 23), TMV("v", 87), TMV("v", 44), TMV("v'", 1),
   TMV("v1", 0), TMV("v1", 2), TMV("v2", 1), TMV("v2", 2), TMV("v2", 40),
   TMV("v3", 40), TMV("v4", 1), TMV("v5", 2), TMV("v6", 1), TMV("v7", 2),
   TMV("x", 0), TMV("x", 1), TMV("x", 39), TMV("x", 111), TMV("x", 155),
   TMV("x", 11), TMV("x", 2), TMV("x", 8), TMV("x", 25), TMV("x'", 0),
   TMV("x0", 0), TMV("x1", 0), TMV("x2", 1), TMV("xs", 11), TMV("xs", 2),
   TMV("xs", 40), TMV("xs", 154), TMV("xs", 156), TMV("xs", 157),
   TMV("xxs", 156), TMV("y", 0), TMV("y", 1), TMV("y", 39), TMV("y", 102),
   TMV("y", 109), TMV("y", 11), TMV("y", 2), TMV("y", 40), TMV("ys", 11),
   TMV("ys", 2), TMV("ys", 40), TMV("ys", 153), TMV("ys", 158),
   TMV("yys", 153), TMV("z", 0), TMV("z", 39), TMV("z", 11), TMV("z", 25),
   TMC(7, 113), TMC(7, 159), TMC(7, 160), TMC(7, 161), TMC(7, 163),
   TMC(7, 164), TMC(7, 166), TMC(7, 168), TMC(7, 170), TMC(7, 171),
   TMC(7, 173), TMC(7, 175), TMC(7, 177), TMC(7, 179), TMC(7, 181),
   TMC(7, 183), TMC(7, 185), TMC(7, 187), TMC(7, 189), TMC(7, 191),
   TMC(7, 193), TMC(7, 195), TMC(7, 197), TMC(7, 198), TMC(7, 200),
   TMC(7, 202), TMC(7, 204), TMC(7, 206), TMC(7, 208), TMC(7, 210),
   TMC(7, 211), TMC(7, 213), TMC(7, 215), TMC(7, 217), TMC(7, 219),
   TMC(7, 221), TMC(7, 222), TMC(7, 224), TMC(7, 226), TMC(7, 228),
   TMC(7, 230), TMC(7, 232), TMC(7, 234), TMC(7, 236), TMC(7, 238),
   TMC(7, 240), TMC(7, 242), TMC(7, 244), TMC(7, 246), TMC(7, 227),
   TMC(7, 247), TMC(7, 248), TMC(7, 250), TMC(7, 252), TMC(7, 254),
   TMC(7, 256), TMC(7, 258), TMC(7, 260), TMC(7, 262), TMC(7, 264),
   TMC(7, 266), TMC(7, 267), TMC(7, 269), TMC(7, 245), TMC(8, 270),
   TMC(9, 272), TMC(9, 274), TMC(9, 277), TMC(9, 280), TMC(9, 283),
   TMC(9, 286), TMC(9, 288), TMC(9, 291), TMC(9, 294), TMC(9, 297),
   TMC(9, 299), TMC(10, 270), TMC(11, 300), TMC(12, 8), TMC(13, 301),
   TMC(14, 301), TMC(15, 49), TMC(15, 302), TMC(15, 303), TMC(15, 300),
   TMC(15, 119), TMC(15, 305), TMC(15, 306), TMC(15, 308), TMC(15, 309),
   TMC(15, 311), TMC(15, 313), TMC(15, 315), TMC(15, 318), TMC(15, 320),
   TMC(15, 322), TMC(15, 324), TMC(15, 22), TMC(15, 325), TMC(15, 326),
   TMC(15, 327), TMC(15, 328), TMC(15, 331), TMC(15, 332), TMC(15, 333),
   TMC(15, 337), TMC(15, 338), TMC(15, 341), TMC(15, 344), TMC(15, 301),
   TMC(15, 346), TMC(15, 347), TMC(15, 349), TMC(15, 350), TMC(16, 300),
   TMC(17, 301), TMC(18, 113), TMC(18, 159), TMC(18, 161), TMC(18, 352),
   TMC(18, 354), TMC(18, 356), TMC(18, 236), TMC(18, 227), TMC(18, 247),
   TMC(18, 250), TMC(18, 254), TMC(18, 267), TMC(18, 269), TMC(18, 245),
   TMC(19, 354), TMC(20, 358), TMC(21, 21), TMC(21, 54), TMC(21, 265),
   TMC(21, 361), TMC(22, 37), TMC(22, 363), TMC(22, 365), TMC(22, 367),
   TMC(22, 369), TMC(23, 0), TMC(23, 11), TMC(24, 172), TMC(25, 370),
   TMC(25, 371), TMC(25, 372), TMC(26, 31), TMC(27, 31), TMC(28, 100),
   TMC(29, 373), TMC(29, 375), TMC(29, 379), TMC(29, 381), TMC(30, 382),
   TMC(31, 383), TMC(32, 172), TMC(33, 384), TMC(33, 386), TMC(33, 387),
   TMC(33, 388), TMC(33, 389), TMC(33, 392), TMC(34, 35), TMC(34, 393),
   TMC(34, 394), TMC(34, 396), TMC(34, 398), TMC(34, 400), TMC(34, 402),
   TMC(34, 404), TMC(34, 406), TMC(34, 410), TMC(34, 415), TMC(34, 416),
   TMC(34, 417), TMC(34, 419), TMC(35, 423), TMC(36, 165), TMC(37, 425),
   TMC(38, 426), TMC(39, 30), TMC(39, 427), TMC(39, 428), TMC(39, 429),
   TMC(40, 99), TMC(40, 431), TMC(40, 433), TMC(41, 23), TMC(42, 96),
   TMC(42, 434), TMC(42, 435), TMC(42, 436), TMC(43, 98), TMC(44, 96),
   TMC(44, 434), TMC(45, 6), TMC(46, 438), TMC(47, 24), TMC(48, 95),
   TMC(49, 113), TMC(49, 227), TMC(50, 92), TMC(50, 439), TMC(51, 441),
   TMC(51, 90), TMC(51, 445), TMC(51, 450), TMC(51, 454), TMC(51, 459),
   TMC(51, 462), TMC(52, 88), TMC(52, 466), TMC(53, 441), TMC(53, 83),
   TMC(53, 469), TMC(54, 12), TMC(55, 470), TMC(55, 471), TMC(55, 472),
   TMC(56, 79), TMC(56, 474), TMC(56, 476), TMC(56, 479), TMC(57, 77),
   TMC(58, 481), TMC(59, 67), TMC(60, 122), TMC(60, 12), TMC(61, 483),
   TMC(61, 485), TMC(61, 487), TMC(61, 489), TMC(61, 491), TMC(61, 493),
   TMC(62, 494), TMC(62, 495), TMC(62, 496), TMC(62, 497), TMC(62, 498),
   TMC(63, 75), TMC(64, 70), TMC(65, 499), TMC(66, 500), TMC(66, 502),
   TMC(67, 425), TMC(68, 504), TMC(69, 505), TMC(69, 506), TMC(69, 507),
   TMC(69, 508), TMC(69, 509), TMC(69, 37), TMC(70, 67), TMC(70, 430),
   TMC(71, 66), TMC(72, 13), TMC(72, 510), TMC(72, 511), TMC(72, 512),
   TMC(73, 514), TMC(74, 65), TMC(74, 516), TMC(74, 517), TMC(74, 519),
   TMC(74, 522), TMC(74, 524), TMC(75, 527), TMC(75, 61), TMC(75, 530),
   TMC(75, 532), TMC(75, 534), TMC(75, 536), TMC(76, 58), TMC(77, 45),
   TMC(78, 52), TMC(78, 57), TMC(78, 539), TMC(78, 541), TMC(78, 544),
   TMC(78, 546), TMC(78, 548), TMC(78, 550), TMC(79, 53), TMC(79, 551),
   TMC(79, 553), TMC(79, 554), TMC(79, 555), TMC(79, 556), TMC(80, 52),
   TMC(81, 51), TMC(82, 38), TMC(82, 557), TMC(82, 560), TMC(82, 563),
   TMC(83, 564), TMC(83, 48), TMC(83, 565), TMC(83, 567), TMC(83, 378),
   TMC(83, 568), TMC(83, 570), TMC(83, 572), TMC(83, 574), TMC(83, 576),
   TMC(83, 577), TMC(83, 579), TMC(83, 581), TMC(83, 583), TMC(83, 586),
   TMC(83, 588), TMC(83, 590), TMC(83, 593), TMC(83, 595), TMC(83, 598),
   TMC(83, 600), TMC(83, 603), TMC(83, 606), TMC(84, 608), TMC(84, 45),
   TMC(84, 611), TMC(85, 11), TMC(85, 2), TMC(85, 40), TMC(85, 154),
   TMC(85, 329), TMC(85, 64), TMC(85, 408), TMC(85, 413), TMC(85, 91),
   TMC(85, 32), TMC(85, 26), TMC(86, 72), TMC(87, 613), TMC(88, 21),
   TMC(89, 31), TMC(90, 614), TMC(91, 615), TMC(91, 618), TMC(91, 620),
   TMC(92, 38), TMC(93, 38), TMC(94, 31), TMC(95, 621), TMC(95, 622),
   TMC(96, 424), TMC(97, 37), TMC(98, 12), TMC(98, 362), TMC(98, 364),
   TMC(99, 36), TMC(100, 592), TMC(100, 623), TMC(100, 617), TMC(101, 35),
   TMC(101, 393), TMC(101, 417), TMC(102, 624), TMC(102, 625),
   TMC(102, 626), TMC(103, 119), TMC(104, 31), TMC(105, 34), TMC(106, 33),
   TMC(107, 627), TMC(108, 6), TMC(109, 30), TMC(109, 427), TMC(109, 428),
   TMC(110, 12), TMC(110, 362), TMC(111, 628), TMC(112, 629),
   TMC(112, 630), TMC(112, 631), TMC(112, 632), TMC(113, 425),
   TMC(113, 633), TMC(113, 635), TMC(114, 7), TMC(114, 21), TMC(115, 29),
   TMC(116, 357), TMC(116, 636), TMC(117, 639), TMC(118, 8), TMC(119, 640),
   TMC(119, 28), TMC(119, 641), TMC(119, 642), TMC(119, 643),
   TMC(120, 300), TMC(121, 301), TMC(122, 24), TMC(123, 22), TMC(124, 20),
   TMC(124, 647), TMC(125, 15), TMC(126, 12), TMC(127, 649), TMC(127, 651),
   TMC(127, 653), TMC(127, 655), TMC(127, 657), TMC(127, 659),
   TMC(127, 412), TMC(127, 660), TMC(127, 662), TMC(127, 664),
   TMC(127, 666), TMC(127, 668), TMC(127, 670), TMC(127, 672),
   TMC(127, 674), TMC(127, 676), TMC(127, 678), TMC(127, 680),
   TMC(127, 682), TMC(127, 684), TMC(127, 686), TMC(128, 689),
   TMC(129, 691), TMC(129, 693), TMC(129, 10), TMC(130, 174),
   TMC(130, 636), TMC(131, 174), TMC(131, 636), TMC(132, 165)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op SUM_ACC_DEF x = x
    val op SUM_ACC_DEF =
    DT(((("list",317),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%349%57%397%651%618@$0@@$0@|@@%349%138%346%221%349%57%397%651%463$2@$1@@$0@@%651$1@%352$2@$0@@@|@|@|@@"])
  fun op REV_DEF x = x
    val op REV_DEF =
    DT(((("list",312),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%337%56%385%634%609@$0@@$0@|@@%288%133%337%217%337%56%385%634%451$2@$1@@$0@@%634$1@%451$2@$0@@@|@|@|@@"])
  fun op LEN_DEF x = x
    val op LEN_DEF =
    DT(((("list",311),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%349%200%397%543%609@$0@@$0@|@@%288%133%337%217%349%200%397%543%451$2@$1@@$0@@%543$1@%352$0@%623%435%673@@@@@|@|@|@@"])
  fun op PAD_RIGHT x = x
    val op PAD_RIGHT =
    DT(((("list",281),[]),[]),
       [read"%288%67%349%200%337%214%385%629$2@$1@$0@@%424$0@%508%535$2@@%364$1@%544$0@@@@@|@|@|@"])
  fun op PAD_LEFT x = x
    val op PAD_LEFT =
    DT(((("list",280),[]),[]),
       [read"%288%67%349%200%337%214%385%628$2@$1@$0@@%424%508%535$2@@%364$1@%544$0@@@@$0@@|@|@|@"])
  fun op GENLIST_AUX x = x
    val op GENLIST_AUX =
    DT(((("list",277),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%365%331%101%337%155%385%512$1@%366@$0@@$0@|@|@@%331%101%349%200%337%155%385%512$2@%649$1@@$0@@%512$2@$1@%451$2$1@@$0@@@|@|@|@@"])
  fun op GENLIST x = x
    val op GENLIST =
    DT(((("list",275),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%365%331%101%385%508$0@%366@@%609@|@@%331%101%349%200%385%508$1@%649$0@@@%642$1$0@@%508$1@$0@@@|@|@@"])
  fun op SNOC x = x
    val op SNOC =
    DT(((("list",256),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%288%250%385%642$0@%609@@%451$0@%609@@|@@%288%250%288%259%337%155%385%642$2@%451$1@$0@@@%451$1@%642$2@$0@@@|@|@|@@"])
  fun op isPREFIX x = x
    val op isPREFIX =
    DT(((("list",254),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%337%155%372%682%609@$0@@%653@|@@%288%133%337%217%337%155%372%682%451$2@$1@@$0@@%684$0@%484@%139%224%365%369$4@$1@@%682$3@$0@@||@@|@|@|@@"])
  fun op SET_TO_LIST_primitive x = x
    val op SET_TO_LIST_primitive =
    DT(((("list",243),[]),[]),
       [read"%378%638@%672%419%33%365%670$0@@%297%211%402%365%488$0@@%716%373$0@%476@@@@$1%633$0@@$0@@|@@|@@%40%211%516%448%488$0@@%448%373$0@%476@@%609@%451%443$0@@$1%633$0@@@@@%430@@||@@"])
  fun op LRC_def x = x
    val op LRC_def =
    DT(((("list",226),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%299%31%288%250%288%270%372%578$2@%609@$1@$0@@%369$1@$0@@|@|@|@@%299%31%288%133%337%217%288%250%288%270%372%578$4@%451$3@$2@@$1@$0@@%365%369$1@$3@@%404%284%365$5$2@$0@@%578$5@$3@$0@$1@@|@@@|@|@|@|@|@@"])
  fun op ALL_DISTINCT x = x
    val op ALL_DISTINCT =
    DT(((("list",215),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%372%420%609@@%653@@%288%133%337%217%372%420%451$1@$0@@@%365%716%523$1@%571$0@@@@%420$0@@@|@|@@"])
  fun op DROP_def x = x
    val op DROP_def =
    DT(((("list",193),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%349%200%385%469$0@%609@@%609@|@@%349%200%288%250%337%263%385%469$2@%451$1@$0@@@%448%397$2@%366@@%451$1@$0@@%469%364$2@%623%435%673@@@@$0@@@|@|@|@@"])
  fun op TAKE_def x = x
    val op TAKE_def =
    DT(((("list",192),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%349%200%385%654$0@%609@@%609@|@@%349%200%288%250%337%263%385%654$2@%451$1@$0@@@%448%397$2@%366@@%609@%451$1@%654%364$2@%623%435%673@@@@$0@@@@|@|@|@@"])
  fun op FRONT_DEF x = x
    val op FRONT_DEF =
    DT(((("list",183),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%288%133%337%217%385%504%451$1@$0@@@%448%385$0@%609@@%609@%451$1@%504$0@@@@|@|@"])
  fun op LAST_DEF x = x
    val op LAST_DEF =
    DT(((("list",182),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%288%133%337%217%369%541%451$1@$0@@@%445%385$0@%609@@$1@%541$0@@@|@|@"])
  fun op REVERSE_DEF x = x
    val op REVERSE_DEF =
    DT(((("list",173),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%385%635%609@@%609@@%288%133%337%217%385%635%451$1@$0@@@%424%635$0@@%451$1@%609@@@|@|@@"])
  fun op UNZIP x = x
    val op UNZIP =
    DT(((("list",157),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%400%669%619@@%359%609@%610@@@%350%258%348%161%400%669%464$1@$0@@@%359%451%505$1@@%506%669$0@@@@%452%639$1@@%640%669$0@@@@@|@|@@"])
  fun op ZIP x = x
    val op ZIP =
    DT(((("list",156),
        [("bool",[14,25,26,31,36,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,17,18]),
         ("pair",[16])]),["DISK_THM"]),
       [read"%365%394%675%359%609@%610@@@%619@@%288%261%337%163%289%262%338%172%394%675%359%451$3@$2@@%452$1@$0@@@@%464%354$3@$1@@%675%359$2@$0@@@@|@|@|@|@@"])
  fun op list_size_def x = x
    val op list_size_def =
    DT(((("list",7),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%307%87%397%685$0@%609@@%366@|@@%307%87%288%48%337%52%397%685$2@%451$1@$0@@@%352%623%435%673@@@%352$2$1@@%685$2@$0@@@@|@|@|@@"])
  fun op list_case_def x = x
    val op list_case_def =
    DT(((("list",6),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%289%235%305%84%370%683%609@$1@$0@@$1@|@|@@%288%48%337%52%289%235%305%84%370%683%451$3@$2@@$1@$0@@$0$3@$2@@|@|@|@|@@"])
  fun op list_TY_DEF x = x
    val op list_TY_DEF =
    DT(((("list",0),[("bool",[14,25,26,53,132,133,138])]),["DISK_THM"]),
       [read"%409%210%659%51%336%0%402%351%51%402%679%401$0@%465%366@%429@%200%437|@@@%404%48%417%54%365%401$2@%48%54%465%649%366@@$1@%485$0@%200%437|@@||$1@$0@@@$3$0@@|@|@@@$1$0@@|@@$0$1@@|@|@$0@|@"])
  fun op NULL_DEF x = x
    val op NULL_DEF =
    DT(((("list",16),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%372%622%609@@%653@@%288%133%337%217%372%622%451$1@$0@@@%484@|@|@@"])
  fun op HD x = x
    val op HD =
    DT(((("list",17),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%288%133%337%217%369%514%451$1@$0@@@$1@|@|@"])
  fun op TL x = x
    val op TL =
    DT(((("list",18),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%288%133%337%217%385%657%451$1@$0@@@$0@|@|@"])
  fun op SUM x = x
    val op SUM =
    DT(((("list",19),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%397%650%618@@%366@@%349%138%346%221%397%650%463$1@$0@@@%352$1@%650$0@@@|@|@@"])
  fun op APPEND x = x
    val op APPEND =
    DT(((("list",20),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%337%155%385%424%609@$0@@$0@|@@%337%163%337%171%288%133%385%424%451$0@$2@@$1@@%451$0@%424$2@$1@@@|@|@|@@"])
  fun op FLAT x = x
    val op FLAT =
    DT(((("list",21),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%385%490%617@@%609@@%337%137%345%220%385%490%462$1@$0@@@%424$1@%490$0@@@|@|@@"])
  fun op LENGTH x = x
    val op LENGTH =
    DT(((("list",22),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%397%544%609@@%366@@%288%133%337%217%397%544%451$1@$0@@@%649%544$0@@@|@|@@"])
  fun op MAP x = x
    val op MAP =
    DT(((("list",23),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%295%76%386%584$0@%609@@%610@|@@%295%76%288%133%337%217%386%584$2@%451$1@$0@@@%452$2$1@@%584$2@$0@@@|@|@|@@"])
  fun op LIST_TO_SET_DEF x = x
    val op LIST_TO_SET_DEF =
    DT(((("list",24),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%288%250%372%571%609@$0@@%484@|@@%288%133%337%217%288%250%372%571%451$2@$1@@$0@@%679%369$0@$2@@%571$1@$0@@@|@|@|@@"])
  fun op FILTER x = x
    val op FILTER =
    DT(((("list",27),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%297%12%385%486$0@%609@@%609@|@@%297%12%288%133%337%217%385%486$2@%451$1@$0@@@%448$2$1@@%451$1@%486$2@$0@@@%486$2@$0@@@|@|@|@@"])
  fun op FOLDR x = x
    val op FOLDR =
    DT(((("list",28),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%300%79%289%75%370%502$1@$0@%609@@$0@|@|@@%300%79%289%75%288%250%337%155%370%502$3@$2@%451$1@$0@@@$3$1@%502$3@$2@$0@@@|@|@|@|@@"])
  fun op FOLDL x = x
    val op FOLDL =
    DT(((("list",29),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%312%90%289%75%370%493$1@$0@%609@@$0@|@|@@%312%90%289%75%288%250%337%155%370%493$3@$2@%451$1@$0@@@%493$3@$3$2@$1@@$0@@|@|@|@|@@"])
  fun op EVERY_DEF x = x
    val op EVERY_DEF =
    DT(((("list",30),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%297%12%372%477$0@%609@@%653@|@@%297%12%288%133%337%217%372%477$2@%451$1@$0@@@%365$2$1@@%477$2@$0@@@|@|@|@@"])
  fun op EXISTS_DEF x = x
    val op EXISTS_DEF =
    DT(((("list",31),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%297%12%372%482$0@%609@@%484@|@@%297%12%288%133%337%217%372%482$2@%451$1@$0@@@%679$2$1@@%482$2@$0@@@|@|@|@@"])
  fun op EL x = x
    val op EL =
    DT(((("list",32),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%365%337%155%369%473%366@$0@@%514$0@@|@@%337%155%349%200%369%473%649$0@@$1@@%473$0@%657$1@@@|@|@@"])
  fun op INDEX_FIND_def x = x
    val op INDEX_FIND_def =
    DT(((("list",38),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%349%148%297%12%398%528$1@$0@%609@@%620@|@|@@%349%148%297%12%288%133%337%217%398%528$3@$2@%451$1@$0@@@%450$2$1@@%647%363$3@$1@@@%528%649$3@@$2@$0@@@|@|@|@|@@"])
  fun op FIND_def x = x
    val op FIND_def =
    DT(((("list",39),[]),[]),
       [read"%297%12%383%487$0@@%706%626%641@@%528%366@$0@@@|@"])
  fun op INDEX_OF_def x = x
    val op INDEX_OF_def =
    DT(((("list",40),[]),[]),
       [read"%288%250%384%529$0@@%707%627%507@@%528%366@%369$0@@@@|@"])
  fun op LUPDATE_def x = x
    val op LUPDATE_def =
    DT(((("list",327),
        [("arithmetic",[46,71,93,172,173,180]),
         ("bool",
         [14,25,26,27,31,36,51,53,54,56,58,63,64,104,105,129,132,133,138,
          181]),("ind_type",[33,34]),("list",[1,2,3,4,5]),
         ("numeral",[3,8]),("prim_rec",[3])]),["DISK_THM"]),
       [read"%365%288%74%349%200%385%579$1@$0@%609@@%609@|@|@@%365%288%74%288%250%337%155%385%579$2@%366@%451$1@$0@@@%451$2@$0@@|@|@|@@%288%74%349%200%288%250%337%155%385%579$3@%649$2@@%451$1@$0@@@%451$1@%579$3@$2@$0@@@|@|@|@|@@@"])
  fun op EVERYi_DEF x = x
    val op EVERYi_DEF =
    DT(((("list",337),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%333%22%372%481$0@%609@@%653@|@@%333%22%288%133%337%217%372%481$2@%451$1@$0@@@%365$2%366@$1@@%481%704$2@%649@@$0@@@|@|@|@@"])
  fun op splitAtPki_DEF x = x
    val op splitAtPki_DEF =
    DT(((("list",338),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%334%23%330%151%369%711$1@$0@%610@@$0%610@%610@@|@|@@%334%23%330%151%289%134%338%218%369%711$3@$2@%452$1@$0@@@%445$3%366@$1@@$2%610@%452$1@$0@@@%711%705$3@%649@@%204%215$4%452$3@$1@@$0@||@$0@@@|@|@|@|@@"])
  fun op LIST_BIND_DEF x = x
    val op LIST_BIND_DEF =
    DT(((("list",345),[]),[]),
       [read"%338%156%316%95%385%556$1@$0@@%490%591$0@$1@@@|@|@"])
  fun op LIST_IGNORE_BIND_DEF x = x
    val op LIST_IGNORE_BIND_DEF =
    DT(((("list",347),[]),[]),
       [read"%338%196%337%198%385%561$1@$0@@%556$1@%539$0@@@|@|@"])
  fun op LIST_APPLY_DEF x = x
    val op LIST_APPLY_DEF =
    DT(((("list",355),[]),[]),
       [read"%344%122%338%264%385%549$1@$0@@%559$1@%440%587@$0@@@|@|@"])
  fun op LIST_LIFT2_DEF x = x
    val op LIST_LIFT2_DEF =
    DT(((("list",356),[]),[]),
       [read"%314%93%338%264%339%280%385%562$2@$1@$0@@%551%590$2@$1@@$0@@|@|@|@"])
  fun op LLEX_DEF x = x
    val op LLEX_DEF =
    DT(((("list",362),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%299%31%337%171%372%577$1@%609@$0@@%716%385$0@%609@@@|@|@@%299%31%288%141%337%227%337%171%372%577$3@%451$2@$1@@$0@@%684$0@%484@%144%230%447$5$4@$1@@%653@%447%369$4@$1@@%577$5@$3@$0@@%484@@||@@|@|@|@|@@"])
  fun op nub_def x = x
    val op nub_def =
    DT(((("list",370),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%385%686%609@@%609@@%288%250%337%155%385%686%451$1@$0@@@%448%523$1@%571$0@@@%686$0@@%451$1@%686$0@@@@|@|@@"])
  fun op dropWhile_def x = x
    val op dropWhile_def =
    DT(((("list",420),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%365%297%12%385%681$0@%609@@%609@|@@%297%12%288%133%337%217%385%681$2@%451$1@$0@@@%448$2$1@@%681$2@$0@@%451$1@$0@@@|@|@|@@"])
  fun op EXISTS_LIST x = x
    val op EXISTS_LIST =
    DT(((("list",320),
        [("bool",[2,15,25,26,53,54,63,75]),("list",[45]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%411%155%21$0@|@@%679%21%609@@%404%133%411%217%21%451$1@$0@@|@|@@@"])
  fun op SUM_SUM_ACC x = x
    val op SUM_SUM_ACC =
    DT(((("list",319),
        [("arithmetic",[22]),
         ("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("list",[318]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%346%3%397%650$0@@%651$0@%366@@|@"])
  fun op SUM_ACC_SUM_LEM x = x
    val op SUM_ACC_SUM_LEM =
    DT(((("list",318),
        [("arithmetic",[22,25,26,27,91]),("bool",[14,25,56,58]),
         ("list",[19,42,317])]),["DISK_THM"]),
       [read"%346%3%349%200%397%651$1@$0@@%352%650$1@@$0@@|@|@"])
  fun op REVERSE_REV x = x
    val op REVERSE_REV =
    DT(((("list",316),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("list",[55,314]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%337%1%385%635$0@@%634$0@%609@@|@"])
  fun op LENGTH_LEN x = x
    val op LENGTH_LEN =
    DT(((("list",315),
        [("arithmetic",[22]),("bool",[25,56]),
         ("list",[313])]),["DISK_THM"]),
       [read"%337%1%397%544$0@@%543$0@%366@@|@"])
  fun op REV_REVERSE_LEM x = x
    val op REV_REVERSE_LEM =
    DT(((("list",314),
        [("bool",[14,25,56,58]),
         ("list",[20,42,56,173,312])]),["DISK_THM"]),
       [read"%337%5%337%6%385%634$1@$0@@%424%635$1@@$0@@|@|@"])
  fun op LEN_LENGTH_LEM x = x
    val op LEN_LENGTH_LEM =
    DT(((("list",313),
        [("arithmetic",[22,25,26,27,71,91,173,177,180]),
         ("bool",[14,25,36,52,54,56,63,104]),("list",[22,42,311]),
         ("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%337%1%349%200%397%543$1@$0@@%352%544$1@@$0@@|@|@"])
  fun op INFINITE_LIST_UNIV x = x
    val op INFINITE_LIST_UNIV =
    DT(((("list",310),
        [("bool",
         [14,25,26,27,31,47,51,53,54,56,58,63,105,124,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5]),
         ("pred_set",[234])]),["DISK_THM"]), [read"%716%489%668@@"])
  fun op MAP_ZIP_SAME x = x
    val op MAP_ZIP_SAME =
    DT(((("list",309),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,23,42,156])]),["DISK_THM"]),
       [read"%337%186%335%103%386%598$0@%674%358$1@$1@@@@%584%250$1%353$0@$0@@|@$1@@|@|@"])
  fun op FOLDL_ZIP_SAME x = x
    val op FOLDL_ZIP_SAME =
    DT(((("list",308),
        [("bool",[14,25,56]),("list",[29,42,156])]),["DISK_THM"]),
       [read"%337%186%315%94%289%75%370%494$1@$0@%674%358$2@$2@@@@%493%251%270$3$1@%353$0@$0@@||@$0@$2@@|@|@|@"])
  fun op FOLDL_UNION_BIGUNION_paired x = x
    val op FOLDL_UNION_BIGUNION_paired =
    DT(((("list",307),
        [("bool",[14,25,56]),("list",[25,29,42]),("pair",[5,16]),
         ("pred_set",[35,41,147,150,246,251])]),["DISK_THM"]),
       [read"%304%83%348%190%318%213%377%497%213%662%250%271%666$2@$5$1@$0@@||@|@$0@$1@@%666$0@%434%522%662$2@@%576$1@@@@@|@|@|@"])
  fun op FOLDL_UNION_BIGUNION x = x
    val op FOLDL_UNION_BIGUNION =
    DT(((("list",306),
        [("bool",[14,25,56]),("list",[25,29,42]),
         ("pred_set",[35,41,147,150,246,251])]),["DISK_THM"]),
       [read"%302%81%337%186%311%212%375%496%212%250%665$1@$4$0@@||@$0@$1@@%665$0@%433%518$2@%571$1@@@@@|@|@|@"])
  fun op REVERSE_GENLIST x = x
    val op REVERSE_GENLIST =
    DT(((("list",305),
        [("arithmetic",
         [24,25,27,41,46,59,66,71,93,172,173,177,180,195,200,269]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("list",[110,178,276,283,304]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%385%635%508%101@%200@@@%508%194%101%364%630%200@@$0@@|@%200@@"])
  fun op EL_REVERSE x = x
    val op EL_REVERSE =
    DT(((("list",304),
        [("arithmetic",
         [24,25,27,41,46,59,62,64,66,71,93,112,114,172,173,180,269]),
         ("bool",[14,25,26,27,36,43,52,53,54,56,58,63,96,101,104,105]),
         ("list",[17,18,22,32,257,263,264,271,273]),("num",[9]),
         ("numeral",[3,8]),("prim_rec",[3,6,11])]),["DISK_THM"]),
       [read"%349%200%337%155%402%367$1@%544$0@@@%369%473$1@%635$0@@@%473%630%364%544$0@@$1@@@$0@@@|@|@"])
  fun op SUM_IMAGE_eq_SUM_MAP_SET_TO_LIST x = x
    val op SUM_IMAGE_eq_SUM_MAP_SET_TO_LIST =
    DT(((("list",303),
        [("arithmetic",[26,91]),("bool",[25,36,56,58,60,63,105,124]),
         ("combin",[16]),("list",[253,302]),
         ("pred_set",[313])]),["DISK_THM"]),
       [read"%402%488%211@@%397%652%87@%211@@%650%586%87@%638%211@@@@@"])
  fun op SUM_MAP_FOLDL x = x
    val op SUM_MAP_FOLDL =
    DT(((("list",302),
        [("arithmetic",[91]),("bool",[25,36,53,56,58,105,124]),
         ("list",[19,23,29,262,273,299,300])]),["DISK_THM"]),
       [read"%337%186%397%650%586%87@$0@@@%498%46%74%352$1@%87$0@@||@%366@$0@@|@"])
  fun op SUM_APPEND x = x
    val op SUM_APPEND =
    DT(((("list",301),
        [("arithmetic",[0,27]),("bool",[14,25,36,56]),
         ("list",[19,20,42])]),["DISK_THM"]),
       [read"%346%167%346%175%397%650%428$1@$0@@@%352%650$1@@%650$0@@@|@|@"])
  fun op SUM_SNOC x = x
    val op SUM_SNOC =
    DT(((("list",300),
        [("arithmetic",[0,22,27]),("bool",[14,25,56]),
         ("list",[19,42,256])]),["DISK_THM"]),
       [read"%349%257%346%160%397%650%644$1@$0@@@%352%650$0@@$1@@|@|@"])
  fun op FOLDL_SNOC x = x
    val op FOLDL_SNOC =
    DT(((("list",299),
        [("bool",[14,25,36,56]),("list",[29,42,256])]),["DISK_THM"]),
       [read"%312%90%289%75%288%250%337%155%370%493$3@$2@%642$1@$0@@@$3%493$3@$2@$0@@$1@@|@|@|@|@"])
  fun op ALL_DISTINCT_GENLIST x = x
    val op ALL_DISTINCT_GENLIST =
    DT(((("list",298),
        [("arithmetic",[24,25,59,71,173,180]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,55,56,58,63,71,72,96,104,105,106,
          124]),("list",[170,215,275,276,283,297]),("num",[9]),
         ("numeral",[3,8]),("prim_rec",[4,6,16,20]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%420%508%101@%200@@@%349%197%349%199%402%365%367$1@%200@@%365%367$0@%200@@%369%101$1@@%101$0@@@@@%397$1@$0@@|@|@@"])
  fun op ALL_DISTINCT_SNOC x = x
    val op ALL_DISTINCT_SNOC =
    DT(((("list",297),
        [("bool",[25,26,47,48,51,52,53,54,58,63,95,101,105,124,145]),
         ("list",[120,215,221,260]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%288%250%337%155%372%420%642$1@$0@@@%365%716%523$1@%571$0@@@@%420$0@@@|@|@"])
  fun op MEM_GENLIST x = x
    val op MEM_GENLIST =
    DT(((("list",296),
        [("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,93,94,96,105,106,
          124]),("combin",[19]),("list",[170,276,283]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%372%523%250@%571%508%101@%200@@@@%415%194%365%367$0@%200@@%369%250@%101$0@@@|@@"])
  fun op GENLIST_NUMERALS x = x
    val op GENLIST_NUMERALS =
    DT(((("list",295),
        [("bool",[25,51,56]),("list",[277,294])]),["DISK_THM"]),
       [read"%365%385%508%101@%366@@%609@@%385%508%101@%623%200@@@%512%101@%623%200@@%609@@@"])
  fun op GENLIST_GENLIST_AUX x = x
    val op GENLIST_GENLIST_AUX =
    DT(((("list",294),
        [("bool",[14,25,56]),("list",[20,260,275,277]),
         ("num",[9])]),["DISK_THM"]),
       [read"%349%200%385%508%101@$0@@%512%101@$0@%609@@|@"])
  fun op NULL_GENLIST x = x
    val op NULL_GENLIST =
    DT(((("list",293),
        [("arithmetic",[28]),("bool",[25,26,27,36,54,56,63]),
         ("list",[16,275,292]),("num",[7])]),["DISK_THM"]),
       [read"%349%200%331%101%372%622%508$0@$1@@@%397$1@%366@@|@|@"])
  fun op GENLIST_CONS x = x
    val op GENLIST_CONS =
    DT(((("list",292),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),("combin",[8]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,256,269,275]),
         ("num",[9])]),["DISK_THM"]),
       [read"%385%508%101@%649%200@@@%451%101%366@@%508%703%101@%649@@%200@@@"])
  fun op ZIP_GENLIST x = x
    val op ZIP_GENLIST =
    DT(((("list",291),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("list",[109,160,166,276,283])]),["DISK_THM"]),
       [read"%337%155%332%102%349%200%402%397%544$2@@$0@@%394%675%359$2@%509$1@$0@@@@%511%257%354%473$0@$3@@$2$0@@|@$0@@@|@|@|@"])
  fun op TL_GENLIST x = x
    val op TL_GENLIST =
    DT(((("list",290),
        [("arithmetic",[24,25,41,46,59,65,71,93,173,180]),
         ("bool",[25,36,54,56,58,63,96,101,104,105,124]),("combin",[8]),
         ("list",[32,110,113,276,283]),("numeral",[3,8]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%331%101%349%200%385%657%508$1@%649$0@@@@%508%703$1@%649@@$0@@|@|@"])
  fun op EXISTS_GENLIST x = x
    val op EXISTS_GENLIST =
    DT(((("list",289),
        [("bool",[14,25,26,27,37,51,53,54,55,63,75,99]),
         ("list",[31,267,275]),("num",[9]),("prim_rec",[6,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%349%200%372%482%12@%508%101@$0@@@%415%148%365%367$0@$1@@%12%101$0@@@|@@|@"])
  fun op EVERY_GENLIST x = x
    val op EVERY_GENLIST =
    DT(((("list",288),
        [("bool",[14,25,26,27,36,53,54,55,58,63,99,105,124]),
         ("list",[30,266,275]),("num",[9]),("prim_rec",[6,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%349%200%372%477%12@%508%101@$0@@@%349%148%402%367$0@$1@@%12%101$0@@@|@@|@"])
  fun op GENLIST_APPEND x = x
    val op GENLIST_APPEND =
    DT(((("list",287),
        [("arithmetic",[24,26]),("bool",[14,25,36,56]),
         ("list",[55,265,275]),("num",[9])]),["DISK_THM"]),
       [read"%331%101%349%46%349%64%385%508$2@%352$1@$0@@@%424%508$2@$0@@%508%223$3%352$0@$1@@|@$1@@@|@|@|@"])
  fun op GENLIST_FUN_EQ x = x
    val op GENLIST_FUN_EQ =
    DT(((("list",286),
        [("bool",[25,36,51,56,58,63,105,124]),
         ("list",[109,276,283])]),["DISK_THM"]),
       [read"%349%200%331%101%331%129%372%385%508$1@$2@@%508$0@$2@@@%349%257%402%367$0@$3@@%369$2$0@@$1$0@@@|@@|@|@|@"])
  fun op HD_GENLIST_COR x = x
    val op HD_GENLIST_COR =
    DT(((("list",285),
        [("arithmetic",[28]),("bool",[25,26,27,36,53,56]),("list",[284]),
         ("prim_rec",[4])]),["DISK_THM"]),
       [read"%349%200%331%101%402%367%366@$1@@%369%514%508$0@$1@@@$0%366@@@|@|@"])
  fun op HD_GENLIST x = x
    val op HD_GENLIST =
    DT(((("list",284),
        [("bool",[53,58,63,105,124]),("list",[32,283]),
         ("prim_rec",[7])]),["DISK_THM"]),
       [read"%369%514%508%101@%649%200@@@@%101%366@@"])
  fun op EL_GENLIST x = x
    val op EL_GENLIST =
    DT(((("list",283),
        [("arithmetic",[24,25,41,46,59,71,93,173,177,180]),
         ("bool",[14,25,26,27,30,36,52,53,54,56,58,63,96,101,104,105,124]),
         ("list",[263,264,275,276]),("num",[9]),("numeral",[3,8]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%331%101%349%200%349%257%402%367$0@$1@@%369%473$0@%508$2@$1@@@$2$0@@@|@|@|@"])
  fun op MAP_GENLIST x = x
    val op MAP_GENLIST =
    DT(((("list",282),
        [("bool",[14,25,36,56]),("combin",[8]),("list",[23,262,275]),
         ("num",[9])]),["DISK_THM"]),
       [read"%295%76%331%129%349%200%386%584$2@%508$1@$0@@@%509%687$2@$1@@$0@@|@|@|@"])
  fun op GENLIST_AUX_compute x = x
    val op GENLIST_AUX_compute =
    DT(((("list",279),
        [("arithmetic",[268]),("bool",[26]),("list",[277])]),["DISK_THM"]),
       [read"%365%331%101%337%155%385%512$1@%366@$0@@$0@|@|@@%365%331%101%349%200%337%155%385%512$2@%623%435$1@@@$0@@%512$2@%364%623%435$1@@@%623%435%673@@@@%451$2%364%623%435$1@@@%623%435%673@@@@@$0@@@|@|@|@@%331%101%349%200%337%155%385%512$2@%623%436$1@@@$0@@%512$2@%623%435$1@@@%451$2%623%435$1@@@@$0@@@|@|@|@@@"])
  fun op LENGTH_GENLIST x = x
    val op LENGTH_GENLIST =
    DT(((("list",276),
        [("bool",[14,25,56]),("list",[22,257,275]),
         ("num",[9])]),["DISK_THM"]),
       [read"%331%101%349%200%397%544%508$1@$0@@@$0@|@|@"])
  fun op SNOC_CASES x = x
    val op SNOC_CASES =
    DT(((("list",274),[("bool",[26,181]),("list",[273])]),["DISK_THM"]),
       [read"%337%184%679%385$0@%609@@%404%250%411%155%385$2@%642$1@$0@@|@|@@|@"])
  fun op SNOC_INDUCT x = x
    val op SNOC_INDUCT =
    DT(((("list",273),
        [("bool",[7,14,25,26,36,51,52,56,58,63,91]),("combin",[5]),
         ("list",[15,173,175,271])]),["DISK_THM"]),
       [read"%327%21%402%365$0%609@@%337%155%402$1$0@@%288%250$2%642$0@$1@@|@@|@@@%337%155$1$0@|@@|@"])
  fun op SNOC_Axiom x = x
    val op SNOC_Axiom =
    DT(((("list",272),
        [("bool",[7,14,25,26,36,51,56,58]),("combin",[5]),
         ("list",[15,173,175,271])]),["DISK_THM"]),
       [read"%289%75%306%85%408%120%365%370$0%609@@$2@@%288%250%337%155%370$2%642$1@$0@@@$3$1@$0@$2$0@@@|@|@@|@|@|@"])
  fun op REVERSE_SNOC x = x
    val op REVERSE_SNOC =
    DT(((("list",271),
        [("bool",[14,25,36,56]),("list",[42,256,270])]),["DISK_THM"]),
       [read"%288%250%337%155%385%635%642$1@$0@@@%451$1@%635$0@@@|@|@"])
  fun op REVERSE_SNOC_DEF x = x
    val op REVERSE_SNOC_DEF =
    DT(((("list",270),
        [("bool",[25,36,51,56]),("list",[173,260])]),["DISK_THM"]),
       [read"%365%386%636%610@@%610@@%288%250%337%155%385%635%451$1@$0@@@%642$1@%635$0@@@|@|@@"])
  fun op SNOC_11 x = x
    val op SNOC_11 =
    DT(((("list",269),
        [("bool",[25,51,53,56,58,105,106,124]),
         ("list",[258,259])]),["DISK_THM"]),
       [read"%288%250%337%275%288%41%337%62%372%385%642$3@$2@@%642$1@$0@@@%365%369$3@$1@@%385$2@$0@@@|@|@|@|@"])
  fun op MEM_SNOC x = x
    val op MEM_SNOC =
    DT(((("list",268),
        [("bool",[14,25,52,56,93,94]),
         ("list",[42,120,256])]),["DISK_THM"]),
       [read"%288%270%288%250%337%155%372%523$2@%571%642$1@$0@@@@%679%369$2@$1@@%523$2@%571$0@@@@|@|@|@"])
  fun op EXISTS_SNOC x = x
    val op EXISTS_SNOC =
    DT(((("list",267),
        [("bool",[14,25,52,56,93,94]),("list",[31,42,256])]),["DISK_THM"]),
       [read"%297%12%288%250%337%155%372%482$2@%642$1@$0@@@%679$2$1@@%482$2@$0@@@|@|@|@"])
  fun op EVERY_SNOC x = x
    val op EVERY_SNOC =
    DT(((("list",266),
        [("bool",[14,25,36,43,51,56]),("list",[30,42,256])]),["DISK_THM"]),
       [read"%297%12%288%250%337%155%372%477$2@%642$1@$0@@@%365%477$2@$0@@$2$1@@@|@|@|@"])
  fun op APPEND_SNOC x = x
    val op APPEND_SNOC =
    DT(((("list",265),
        [("bool",[14,25,36,56]),("list",[20,42,256])]),["DISK_THM"]),
       [read"%337%163%288%250%337%171%385%424$2@%642$1@$0@@@%642$1@%424$2@$0@@@|@|@|@"])
  fun op EL_LENGTH_SNOC x = x
    val op EL_LENGTH_SNOC =
    DT(((("list",264),
        [("bool",[14,25,36,56]),
         ("list",[17,18,22,32,42,256])]),["DISK_THM"]),
       [read"%337%155%288%250%369%473%544$1@@%642$0@$1@@@$0@|@|@"])
  fun op EL_SNOC x = x
    val op EL_SNOC =
    DT(((("list",263),
        [("arithmetic",[37]),("bool",[14,25,26,27,36,53,56]),
         ("list",[17,18,22,32,42,256]),("num",[9]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%349%200%337%155%402%367$1@%544$0@@@%288%250%369%473$2@%642$0@$1@@@%473$2@$1@@|@@|@|@"])
  fun op MAP_SNOC x = x
    val op MAP_SNOC =
    DT(((("list",262),
        [("bool",[25,36,56]),("list",[23,58,260])]),["DISK_THM"]),
       [read"%295%76%288%250%337%155%386%584$2@%642$1@$0@@@%643$2$1@@%584$2@$0@@@|@|@|@"])
  fun op LIST_TO_SET_SNOC x = x
    val op LIST_TO_SET_SNOC =
    DT(((("list",261),
        [("bool",[14,25,26,53,56,132,133,138]),("list",[1,2,3,4,5,25,256]),
         ("pred_set",[88,135])]),["DISK_THM"]),
       [read"%373%571%642%250@%186@@@%531%250@%571%186@@@"])
  fun op SNOC_APPEND x = x
    val op SNOC_APPEND =
    DT(((("list",260),
        [("bool",[14,25,36,56]),("list",[20,42,256])]),["DISK_THM"]),
       [read"%288%250%337%155%385%642$1@$0@@%424$0@%451$1@%609@@@|@|@"])
  fun op FRONT_SNOC x = x
    val op FRONT_SNOC =
    DT(((("list",259),
        [("bool",
         [14,25,26,27,30,31,47,51,53,54,56,58,63,64,105,129,132,133,138,
          147,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,42,45,183,256])]),["DISK_THM"]),
       [read"%288%250%337%155%385%504%642$1@$0@@@$0@|@|@"])
  fun op LAST_SNOC x = x
    val op LAST_SNOC =
    DT(((("list",258),
        [("bool",
         [14,25,26,27,30,31,47,53,54,56,58,63,64,105,124,129,132,133,138,
          147,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,42,45,182,256])]),["DISK_THM"]),
       [read"%288%250%337%155%369%541%642$1@$0@@@$1@|@|@"])
  fun op LENGTH_SNOC x = x
    val op LENGTH_SNOC =
    DT(((("list",257),
        [("bool",[14,25,36,56]),("list",[22,42,256])]),["DISK_THM"]),
       [read"%288%250%337%155%397%544%642$1@$0@@@%649%544$0@@@|@|@"])
  fun op isPREFIX_THM x = x
    val op isPREFIX_THM =
    DT(((("list",255),
        [("bool",[25,54,56,58,63]),("list",[6,254])]),["DISK_THM"]),
       [read"%365%372%682%609@%155@@%653@@%365%372%682%451%133@%217@@%609@@%484@@%372%682%451%141@%227@@%451%144@%230@@@%365%369%141@%144@@%682%227@%230@@@@@"])
  fun op ITSET_eq_FOLDL_SET_TO_LIST x = x
    val op ITSET_eq_FOLDL_SET_TO_LIST =
    DT(((("list",253),
        [("bool",[25,26,27,30,36,53,54,56,58,63,64,105,124,129,147]),
         ("combin",[16]),("list",[29,244]),
         ("pred_set",[125,185,189,225,308])]),["DISK_THM"]),
       [read"%297%211%402%488$0@@%300%79%289%42%370%534$1@$2@$0@@%493%438$1@@$0@%638$2@@@|@|@@|@"])
  fun op ALL_DISTINCT_SET_TO_LIST x = x
    val op ALL_DISTINCT_SET_TO_LIST =
    DT(((("list",252),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,109,
          111,124,129]),("list",[215,244,245,250]),
         ("pred_set",[121,122,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%211%402%488$0@@%420%638$0@@@|@"])
  fun op SET_TO_LIST_SING x = x
    val op SET_TO_LIST_SING =
    DT(((("list",251),
        [("bool",
         [14,25,26,27,31,51,53,56,58,63,105,129,132,133,138,147,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,244]),
         ("pred_set",[90,140,141,185,187,189])]),["DISK_THM"]),
       [read"%385%638%531%250@%476@@@%451%250@%609@@"])
  fun op MEM_SET_TO_LIST x = x
    val op MEM_SET_TO_LIST =
    DT(((("list",250),
        [("bool",[25,26,53,54,58,63,83,100]),("list",[249]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%297%211%402%488$0@@%288%250%372%523$0@%571%638$1@@@@%523$0@$1@@|@@|@"])
  fun op SET_TO_LIST_IN_MEM x = x
    val op SET_TO_LIST_IN_MEM =
    DT(((("list",249),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,64,93,94,96]),
         ("list",[120,244,245]),("pred_set",[10,80,121,123,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%211%402%488$0@@%288%250%372%523$0@$1@@%523$0@%571%638$1@@@@|@@|@"])
  fun op SET_TO_LIST_CARD x = x
    val op SET_TO_LIST_CARD =
    DT(((("list",248),
        [("arithmetic",[17,24,25,27,46,71,93,172,173,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,93,96,100,101,104,
          105,129,147,169]),("list",[22,244,245]),("numeral",[0,3,5,8]),
         ("pred_set",[120,121,188,189,207,209,210]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%211%402%488$0@@%397%544%638$0@@@%442$0@@@|@"])
  fun op SET_TO_LIST_INV x = x
    val op SET_TO_LIST_INV =
    DT(((("list",247),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,64,93,94,96]),
         ("list",[240,244,245]),("pred_set",[121,123,188]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%211%402%488$0@@%373%571%638$0@@@$0@@|@"])
  fun op SET_TO_LIST_EMPTY x = x
    val op SET_TO_LIST_EMPTY =
    DT(((("list",246),
        [("bool",[25,56,58,63,105,129,147]),("list",[244]),
         ("pred_set",[185])]),["DISK_THM"]), [read"%385%638%476@@%609@"])
  fun op SET_TO_LIST_IND x = x
    val op SET_TO_LIST_IND =
    DT(((("list",245),
        [("bool",
         [15,25,26,27,47,48,53,54,58,63,71,84,93,94,96,105,124,129]),
         ("combin",[19]),("list",[243]),("pred_set",[125,215]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%324%18%402%297%211%402%402%365%488$0@@%716%373$0@%476@@@@$1%633$0@@@@$1$0@@|@@%297%236$1$0@|@@|@"])
  fun op SET_TO_LIST_THM x = x
    val op SET_TO_LIST_THM =
    DT(((("list",244),
        [("bool",
         [15,25,26,27,47,48,53,54,58,63,64,71,84,93,94,96,105,124,129]),
         ("combin",[19]),("list",[243]),("pred_set",[125,215]),
         ("prim_rec",[43,44]),("relation",[101,113,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%402%488%211@@%385%638%211@@%448%373%211@%476@@%609@%451%443%211@@%638%633%211@@@@@@"])
  fun op LIST_TO_SET_FILTER x = x
    val op LIST_TO_SET_FILTER =
    DT(((("list",242),
        [("bool",[25,26,36,56,63]),("list",[82]),("pair",[3]),
         ("pred_set",[3,6,45])]),["DISK_THM"]),
       [read"%373%571%486%12@%155@@@%533%513%250%356$0@%12$0@@|@@%571%155@@@"])
  fun op LIST_TO_SET_MAP x = x
    val op LIST_TO_SET_MAP =
    DT(((("list",241),
        [("bool",[14,25,26,36,53,56,132,133,138]),
         ("list",[1,2,3,4,5,23,240]),
         ("pred_set",[147,150])]),["DISK_THM"]),
       [read"%295%76%337%155%375%572%584$1@$0@@@%517$1@%571$0@@@|@|@"])
  fun op LIST_TO_SET_THM x = x
    val op LIST_TO_SET_THM =
    DT(((("list",240),[("list",[25])]),["DISK_THM"]),
       [read"%365%373%571%609@@%476@@%375%572%452%134@%218@@@%532%134@%572%218@@@@"])
  fun op LIST_TO_SET_REVERSE x = x
    val op LIST_TO_SET_REVERSE =
    DT(((("list",239),
        [("bool",[14,25,36,54,56,63]),("list",[42,120,177]),
         ("pred_set",[3])]),["DISK_THM"]),
       [read"%337%186%373%571%635$0@@@%571$0@@|@"])
  fun op ALL_DISTINCT_CARD_LIST_TO_SET x = x
    val op ALL_DISTINCT_CARD_LIST_TO_SET =
    DT(((("list",238),
        [("bool",[14,25,26,27,53,56,58,63,105,124,129,147]),
         ("list",[22,25,42,215,233]),("pred_set",[207,208]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%186%402%420$0@@%397%442%571$0@@@%544$0@@@|@"])
  fun op CARD_LIST_TO_SET x = x
    val op CARD_LIST_TO_SET =
    DT(((("list",237),
        [("arithmetic",[24,25,27,38,46,71,93,173,176,180]),
         ("bool",
         [14,25,26,27,30,36,53,54,63,64,96,101,104,105,132,133,138]),
         ("list",[1,2,3,4,5,22,25,233]),("numeral",[3,5,8]),
         ("pred_set",[207,208])]),["DISK_THM"]),
       [read"%368%442%571%186@@@%544%186@@"])
  fun op INJ_MAP_EQ x = x
    val op INJ_MAP_EQ =
    DT(((("list",236),
        [("bool",
         [14,25,26,27,31,36,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,
          93,94,96,105,124,132,133,138,146,181]),("combin",[19]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,23,25,42,49,50]),
         ("pred_set",[18,20,33,41,80,158,165]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%295%76%337%163%337%171%402%365%530$2@%664%571$1@@%571$0@@@%667@@%386%584$2@$1@@%584$2@$0@@@@%385$1@$0@@|@|@|@"])
  fun op SUM_MAP_MEM_bound x = x
    val op SUM_MAP_MEM_bound =
    DT(((("list",235),
        [("arithmetic",[24,25,27,46,53,71,93,173,176,180]),
         ("bool",[14,25,27,36,53,54,58,63,96,101,104,105,124]),
         ("list",[19,23,42,120]),("numeral",[3,8])]),["DISK_THM"]),
       [read"%307%87%288%250%337%186%402%523$1@%571$0@@@%368$2$1@@%650%586$2@$0@@@@|@|@|@"])
  fun op SUM_IMAGE_LIST_TO_SET_upper_bound x = x
    val op SUM_IMAGE_LIST_TO_SET_upper_bound =
    DT(((("list",234),
        [("arithmetic",[24,25,27,46,71,93,173,176,180,198]),
         ("bool",[14,25,26,27,30,36,54,58,63,64,96,101,104,105]),
         ("list",[19,23,25,42,233]),("numeral",[3,8]),
         ("pred_set",[314,318])]),["DISK_THM"]),
       [read"%337%186%368%652%87@%571$0@@@%650%586%87@$0@@@|@"])
  fun op FINITE_LIST_TO_SET x = x
    val op FINITE_LIST_TO_SET =
    DT(((("list",233),
        [("bool",[14,25,63]),("list",[25,42]),
         ("pred_set",[185,187])]),["DISK_THM"]),
       [read"%337%155%488%571$0@@|@"])
  fun op LIST_TO_SET_EQ_EMPTY x = x
    val op LIST_TO_SET_EQ_EMPTY =
    DT(((("list",232),
        [("bool",[14,25,26,27,31,47,53,54,56,58,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,25]),
         ("pred_set",[90])]),["DISK_THM"]),
       [read"%365%372%373%571%155@@%476@@%385%155@%609@@@%372%373%476@%571%155@@@%385%155@%609@@@"])
  fun op UNION_APPEND x = x
    val op UNION_APPEND =
    DT(((("list",231),[("bool",[58]),("list",[230])]),["DISK_THM"]),
       [read"%337%163%337%171%373%664%571$1@@%571$0@@@%571%424$1@$0@@@|@|@"])
  fun op LIST_TO_SET_APPEND x = x
    val op LIST_TO_SET_APPEND =
    DT(((("list",230),
        [("bool",[14,25,56]),("list",[20,25,42]),
         ("pred_set",[41,93])]),["DISK_THM"]),
       [read"%337%163%337%171%373%571%424$1@$0@@@%664%571$1@@%571$0@@@|@|@"])
  fun op LRC_MEM_right x = x
    val op LRC_MEM_right =
    DT(((("list",229),
        [("bool",
         [2,14,15,25,26,27,31,36,47,51,53,54,55,56,58,63,83,93,95,100,101,
          105,124,132,133,138,145,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,42,120,226]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%402%365%578%31@%451%133@%217@@%250@%270@@%523%74@%571%217@@@@%404%284%411%203%365%31$1@%74@@%578%31@$0@%250@$1@@|@|@@"])
  fun op LRC_MEM x = x
    val op LRC_MEM =
    DT(((("list",228),
        [("bool",[2,14,15,25,26,27,36,53,54,58,63,83,100,105,124]),
         ("list",[42,120,226]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%402%365%578%31@%186@%250@%270@@%523%74@%571%186@@@@%404%284%411%217%365%31%74@$1@@%578%31@$0@$1@%270@@|@|@@"])
  fun op NRC_LRC x = x
    val op NRC_LRC =
    DT(((("list",227),
        [("arithmetic",[16,338]),
         ("bool",
         [14,25,26,27,51,53,54,55,56,58,63,84,105,106,124,132,133,138,
          181]),("list",[1,2,3,4,5,22,226]),("num",[7,9]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%372%621%31@%200@%250@%270@@%411%186%365%578%31@$0@%250@%270@@%397%544$0@@%200@@|@@"])
  fun op ALL_DISTINCT_REVERSE x = x
    val op ALL_DISTINCT_REVERSE =
    DT(((("list",225),
        [("bool",[25,26,53,54,56,58,63,105,124]),
         ("list",[20,173,175,177,181,216]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%155%372%420%635$0@@@%420$0@@|@"])
  fun op ALL_DISTINCT_ZIP_SWAP x = x
    val op ALL_DISTINCT_ZIP_SWAP =
    DT(((("list",224),
        [("bool",[25,26,51,53,54,55,56,58,63,100,105,124]),
         ("list",[160,166,219]),("pair",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%338%172%402%365%422%675%359$1@$0@@@@%397%544$1@@%545$0@@@@%423%677%361$0@$1@@@@|@|@"])
  fun op ALL_DISTINCT_ZIP x = x
    val op ALL_DISTINCT_ZIP =
    DT(((("list",223),
        [("bool",
         [13,14,25,26,27,51,52,53,54,55,56,58,63,72,96,105,124,132,133,138,
          181]),("list",[1,2,3,4,5,22,42,156,160,166,170,215]),
         ("marker",[6]),("num",[7]),("pair",[4]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%338%172%402%365%420$1@@%397%544$1@@%545$0@@@@%422%675%359$1@$0@@@@|@|@"])
  fun op ALL_DISTINCT_SING x = x
    val op ALL_DISTINCT_SING =
    DT(((("list",222),
        [("bool",[25,51,54]),("list",[120,215])]),["DISK_THM"]),
       [read"%288%250%420%451$0@%609@@|@"])
  fun op ALL_DISTINCT_APPEND x = x
    val op ALL_DISTINCT_APPEND =
    DT(((("list",221),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,75,76,78,
          80,81,84,93,94,96,105,124,146]),("list",[20,42,81,120,215]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%337%171%372%420%424$1@$0@@@%365%420$1@@%365%420$0@@%288%74%402%523$0@%571$2@@@%716%523$0@%571$1@@@@|@@@@|@|@"])
  fun op ALL_DISTINCT_EL_IMP x = x
    val op ALL_DISTINCT_EL_IMP =
    DT(((("list",220),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,75,78,80,84,93,
          94,96,146]),("list",[219]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%349%201%349%202%402%365%420$2@@%365%367$1@%544$2@@@%367$0@%544$2@@@@@%372%369%473$1@$2@@%473$0@$2@@@%397$1@$0@@@|@|@|@"])
  fun op EL_ALL_DISTINCT_EL_EQ x = x
    val op EL_ALL_DISTINCT_EL_EQ =
    DT(((("list",219),
        [("arithmetic",[24,25,27,28,37,41,46,59,71,93,173,180]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,62,63,71,72,74,78,
          81,84,92,93,94,96,101,104,105,124,146]),
         ("list",[17,22,42,128,170,215]),("num",[7]),("numeral",[3,5,8]),
         ("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%372%420$0@@%349%201%349%202%402%365%367$1@%544$2@@@%367$0@%544$2@@@@%372%369%473$1@$2@@%473$0@$2@@@%397$1@$0@@@|@|@@|@"])
  fun op ALL_DISTINCT_MAP x = x
    val op ALL_DISTINCT_MAP =
    DT(((("list",218),
        [("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,94,96,105,
          124]),("combin",[19]),("list",[23,42,89,215]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%295%76%337%186%402%421%584$1@$0@@@%420$0@@|@|@"])
  fun op FILTER_ALL_DISTINCT x = x
    val op FILTER_ALL_DISTINCT =
    DT(((("list",217),
        [("bool",[14,25,26,27,30,51,53,54,58,63,64,105,124,132,133,138]),
         ("list",[1,2,3,4,5,27,82,215])]),["DISK_THM"]),
       [read"%297%12%337%155%402%420$0@@%420%486$1@$0@@@|@|@"])
  fun op ALL_DISTINCT_FILTER x = x
    val op ALL_DISTINCT_FILTER =
    DT(((("list",216),
        [("bool",
         [14,25,26,27,36,51,52,53,54,56,58,63,64,73,93,95,96,97,99,100,101,
          102,105,106,108,109,111,124,129,145]),
         ("list",[27,42,48,50,120,215]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%155%372%420$0@@%288%250%402%523$0@%571$1@@@%385%486%369$0@@$1@@%451$0@%609@@@|@@|@"])
  fun op EVERY2_mono x = x
    val op EVERY2_mono =
    DT(((("list",214),[("list",[140])]),["DISK_THM"]),
       [read"%402%288%250%289%271%402%36$1@$0@@%38$1@$0@@|@|@@%402%564%36@%163@%172@@%564%38@%163@%172@@@"])
  fun op EVERY2_LENGTH x = x
    val op EVERY2_LENGTH =
    DT(((("list",213),
        [("bool",[25,26,47,48,53,54,63,71,94]),("list",[212]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%302%13%337%163%338%172%402%564$2@$1@$0@@%397%544$1@@%545$0@@@|@|@|@"])
  fun op EVERY2_EVERY x = x
    val op EVERY2_EVERY =
    DT(((("list",212),
        [("bool",[14,25,26,27,51,53,56,58,63,105,106,124,132,133,138,181]),
         ("list",[1,2,3,4,5,22,30,42,91,139,141,156]),("num",[7]),
         ("pair",[16]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%302%81%372%564$0@$2@$1@@%365%397%544$2@@%545$1@@@%480%661$0@@%675%359$2@$1@@@@@|@|@|@"])
  fun op MAP_EQ_EVERY2 x = x
    val op MAP_EQ_EVERY2 =
    DT(((("list",211),
        [("bool",
         [14,25,26,27,31,36,47,48,51,53,54,56,58,63,132,133,138,181]),
         ("combin",[19]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,22,23,42,49,50,91,139,141]),("num",[7]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%295%113%317%119%337%163%339%173%372%386%584$3@$1@@%594$2@$0@@@%365%397%544$1@@%546$0@@@%565%250%272%370$5$1@@$4$0@@||@$1@$0@@@|@|@|@|@"])
  fun op EVERY2_cong x = x
    val op EVERY2_cong =
    DT(((("list",210),
        [("bool",
         [2,14,15,25,26,27,36,48,51,53,54,55,56,58,63,99,100,101,105,124,
          132,133,138,145,181]),("list",[1,2,3,4,5,42,120,139,141]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%337%163%337%169%338%172%338%178%302%13%302%25%402%365%385$5@$4@@%365%386$3@$2@@%288%250%289%271%402%365%523$1@%571$6@@@%524$0@%572$4@@@@%372$3$1@$0@@$2$1@$0@@@|@|@@@@%372%564$1@$5@$3@@%564$0@$4@$2@@@|@|@|@|@|@|@"])
  fun op FOLDL2_FOLDL x = x
    val op FOLDL2_FOLDL =
    DT(((("list",209),
        [("bool",[14,25,26,27,36,53,56,58,105,124,132,133,138,181]),
         ("list",[1,2,3,4,5,22,29,42,91,156,207]),("num",[7]),
         ("pair",[16]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%402%397%544$1@@%545$0@@@%319%99%290%43%371%500$1@$0@$3@$2@@%495%43%660$2$0@@|@$0@%675%359$3@$2@@@@|@|@@|@|@"])
  fun op FOLDL2_cong x = x
    val op FOLDL2_cong =
    DT(((("list",208),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,36,51,52,53,54,56,58,63,93,96,101,104,105,107,124,
          132,133,138,145,181]),("combin",[19]),
         ("list",[1,2,3,4,5,6,7,42,120,204,205]),("numeral",[3,7,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%337%163%337%169%338%172%338%178%290%43%290%47%319%99%319%111%402%365%385$7@$6@@%365%386$5@$4@@%365%371$3@$2@@%290%285%288%59%289%68%402%365%523$1@%571$9@@@%524$0@%572$7@@@@%371$4$2@$1@$0@@$3$2@$1@$0@@@|@|@|@@@@@%371%500$1@$3@$7@$5@@%500$0@$2@$6@$4@@@|@|@|@|@|@|@|@|@"])
  fun op FOLDL2_def x = x
    val op FOLDL2_def =
    DT(((("list",207),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("list",[6,7,204,205]),("numeral",[3,7,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%365%303%82%339%72%290%69%338%66%289%60%288%41%369%499$5@$0@%452$1@$2@@%453$3@$4@@@%499$5@$5$0@$1@$3@@$2@$4@@|@|@|@|@|@|@@%365%303%82%339%72%288%41%369%499$2@$0@%610@$1@@$0@|@|@|@@%338%249%289%248%303%82%288%41%369%499$1@$0@%452$2@$3@@%611@@$0@|@|@|@|@@@"])
  fun op FOLDL2_ind x = x
    val op FOLDL2_ind =
    DT(((("list",206),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,25,26,36,47,48,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,132,133,138,181]),("list",[1,2,3,4,5,7]),("numeral",[3,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%325%19%402%365%303%82%288%41%289%60%338%66%290%69%339%72%402$6$5@$5$4@$3@$1@@$2@$0@@$6$5@$4@%452$3@$2@@%453$1@$0@@@|@|@|@|@|@|@@%365%303%82%288%41%339%72$3$2@$1@%610@$0@|@|@|@@%303%82%288%41%289%248%338%249$4$3@$2@%452$1@$0@@%611@|@|@|@|@@@@%303%237%288%240%338%243%339%245$4$3@$2@$1@$0@|@|@|@|@@|@"])
  fun op DROP_NIL x = x
    val op DROP_NIL =
    DT(((("list",203),
        [("arithmetic",[24,25,46,71,93,143,173,176,177,179,180,202]),
         ("bool",
         [14,25,26,27,30,31,36,43,47,52,53,54,56,58,63,64,93,96,101,104,
          105,107,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,22,42,193]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%337%186%349%200%372%385%469$0@$1@@%609@@%403$0@%544$1@@@|@|@"])
  fun op MEM_DROP x = x
    val op MEM_DROP =
    DT(((("list",202),
        [("arithmetic",[28,37,62,65]),
         ("bool",
         [14,25,26,27,43,47,48,51,52,53,54,56,58,63,93,94,96,105,129,147]),
         ("list",[17,22,25,42,128,193,199]),("num",[7]),
         ("pred_set",[10,80]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%288%250%337%186%349%200%372%523$2@%571%469$0@$1@@@@%679%365%367$0@%544$1@@@%369$2@%473$0@$1@@@@%523$2@%571%469%649$0@@$1@@@@@|@|@|@"])
  fun op LENGTH_DROP x = x
    val op LENGTH_DROP =
    DT(((("list",201),
        [("arithmetic",[24,25,27,46,62,71,93,172,173,177,180,269]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          132,133,138]),("list",[1,2,3,4,5,22,193]),("numeral",[3,5,8]),
         ("prim_rec",[1]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%349%200%337%155%397%544%469$1@$0@@@%364%544$0@@$1@@|@|@"])
  fun op TAKE_DROP x = x
    val op TAKE_DROP =
    DT(((("list",200),
        [("bool",
         [14,25,26,27,30,31,51,53,56,58,63,64,132,133,138,147,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,101,192,193])]),["DISK_THM"]),
       [read"%349%200%337%155%385%424%654$1@$0@@%469$1@$0@@@$0@|@|@"])
  fun op DROP_0 x = x
    val op DROP_0 =
    DT(((("list",199),
        [("arithmetic",[62]),
         ("bool",[14,25,26,31,51,53,56,58,63,105,129,132,133,138,147,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,193])]),["DISK_THM"]),
       [read"%385%469%366@%155@@%155@"])
  fun op TAKE_APPEND2 x = x
    val op TAKE_APPEND2 =
    DT(((("list",198),
        [("arithmetic",
         [24,25,27,41,46,62,64,71,93,172,173,177,180,195,199,269]),
         ("bool",
         [14,25,26,27,31,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124,
          129,132,133,138,147,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,22,192]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%349%200%402%367%544%163@@$0@@%385%654$0@%424%163@%171@@@%424%163@%654%364$0@%544%163@@@%171@@@@|@"])
  fun op TAKE_APPEND1 x = x
    val op TAKE_APPEND1 =
    DT(((("list",197),
        [("arithmetic",[24,25,26,27,46,71,93,147,173,176,177,180,198]),
         ("bool",
         [14,25,26,36,52,53,54,56,58,63,96,101,104,105,124,129,132,133,
          138]),("list",[1,2,3,4,5,20,22,192,194]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%349%200%402%368$0@%544%163@@@%385%654$0@%424%163@%171@@@%654$0@%163@@@|@"])
  fun op LENGTH_TAKE x = x
    val op LENGTH_TAKE =
    DT(((("list",196),
        [("arithmetic",
         [17,24,25,26,27,46,71,93,147,172,173,176,177,180,198,269]),
         ("bool",
         [14,25,26,27,30,36,43,52,53,54,56,58,63,64,93,96,101,104,105,124,
          132,133,138]),("list",[1,2,3,4,5,22,192]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%349%200%337%155%402%368$1@%544$0@@@%397%544%654$1@$0@@@$1@@|@|@"])
  fun op TAKE_LENGTH_ID x = x
    val op TAKE_LENGTH_ID =
    DT(((("list",195),
        [("arithmetic",[65]),
         ("bool",
         [14,25,26,27,31,51,53,56,58,63,105,129,132,133,138,147,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,22,192]),
         ("num",[7])]),["DISK_THM"]),
       [read"%337%155%385%654%544$0@@$0@@$0@|@"])
  fun op TAKE_0 x = x
    val op TAKE_0 =
    DT(((("list",194),
        [("arithmetic",[62]),
         ("bool",[14,25,26,53,56,58,105,129,132,133,138,147,181]),
         ("list",[1,2,3,4,5,192])]),["DISK_THM"]),
       [read"%385%654%366@%155@@%609@"])
  fun op LAST_APPEND_CONS x = x
    val op LAST_APPEND_CONS =
    DT(((("list",191),
        [("bool",
         [14,25,26,27,31,47,51,53,54,56,58,63,105,129,132,133,138,147,
          181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,101,190])]),["DISK_THM"]),
       [read"%288%133%337%163%337%171%369%541%424$1@%451$2@$0@@@@%541%451$2@$0@@@|@|@|@"])
  fun op LAST_CONS_cond x = x
    val op LAST_CONS_cond =
    DT(((("list",190),
        [("bool",
         [14,25,26,27,31,47,53,54,56,58,63,105,129,132,133,138,147,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,184])]),["DISK_THM"]),
       [read"%369%541%451%133@%217@@@%445%385%217@%609@@%133@%541%217@@@"])
  fun op APPEND_FRONT_LAST x = x
    val op APPEND_FRONT_LAST =
    DT(((("list",189),
        [("bool",[14,25,26,27,36,53,54,56]),
         ("list",[20,42,45,50,184,186])]),["DISK_THM"]),
       [read"%337%155%402%716%385$0@%609@@@%385%424%504$0@@%451%541$0@@%609@@@$0@@|@"])
  fun op FRONT_CONS_EQ_NIL x = x
    val op FRONT_CONS_EQ_NIL =
    DT(((("list",188),
        [("bool",[14,25,26,27,36,51,53,54,56,58,63,73,132,133,138,181]),
         ("list",[1,2,3,4,5,16,49,186])]),["DISK_THM"]),
       [read"%365%288%250%337%263%372%385%504%451$1@$0@@@%609@@%385$0@%609@@|@|@@%365%288%250%337%263%372%385%609@%504%451$1@$0@@@@%385$0@%609@@|@|@@%288%250%337%263%372%622%504%451$1@$0@@@@%622$0@@|@|@@@"])
  fun op LENGTH_FRONT_CONS x = x
    val op LENGTH_FRONT_CONS =
    DT(((("list",187),
        [("bool",[14,25,26,36,53,56,132,133,138]),
         ("list",[1,2,3,4,5,22,186])]),["DISK_THM"]),
       [read"%288%250%337%263%397%544%504%451$1@$0@@@@%544$0@@|@|@"])
  fun op FRONT_CONS x = x
    val op FRONT_CONS =
    DT(((("list",186),
        [("bool",[25,26,27,36,51,56,64]),("list",[50,183])]),["DISK_THM"]),
       [read"%365%288%250%385%504%451$0@%609@@@%609@|@@%288%250%288%270%337%286%385%504%451$2@%451$1@$0@@@@%451$2@%504%451$1@$0@@@@|@|@|@@"])
  fun op LAST_EL x = x
    val op LAST_EL =
    DT(((("list",185),
        [("bool",
         [14,25,26,27,31,47,53,54,56,58,63,105,124,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,17,22,42,128,184]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%337%186%402%716%385$0@%609@@@%369%541$0@@%473%630%544$0@@@$0@@@|@"])
  fun op LAST_CONS x = x
    val op LAST_CONS =
    DT(((("list",184),
        [("bool",[25,26,27,36,51,56,64]),("list",[50,182])]),["DISK_THM"]),
       [read"%365%288%250%369%541%451$0@%609@@@$0@|@@%288%250%288%270%337%286%369%541%451$2@%451$1@$0@@@@%541%451$1@$0@@@|@|@|@@"])
  fun op FILTER_REVERSE x = x
    val op FILTER_REVERSE =
    DT(((("list",181),
        [("bool",
         [5,14,25,26,27,30,36,52,53,54,56,58,63,64,105,108,109,129]),
         ("list",[27,42,55,119,173])]),["DISK_THM"]),
       [read"%337%155%297%12%385%486$0@%635$1@@@%635%486$0@$1@@@|@|@"])
  fun op REVERSE_EQ_SING x = x
    val op REVERSE_EQ_SING =
    DT(((("list",180),
        [("bool",
         [14,25,26,27,31,42,47,51,52,53,54,56,58,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,103,173,179])]),["DISK_THM"]),
       [read"%372%385%635%155@@%451%74@%609@@@%385%155@%451%74@%609@@@"])
  fun op REVERSE_EQ_NIL x = x
    val op REVERSE_EQ_NIL =
    DT(((("list",179),
        [("bool",[14,25,26,27,31,47,51,53,54,56,58,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,101,173])]),["DISK_THM"]),
       [read"%372%385%635%155@@%609@@%385%155@%609@@"])
  fun op LENGTH_REVERSE x = x
    val op LENGTH_REVERSE =
    DT(((("list",178),
        [("arithmetic",[22,25,64,91]),("bool",[14,25,56]),
         ("list",[22,42,57,173])]),["DISK_THM"]),
       [read"%337%155%397%544%635$0@@@%544$0@@|@"])
  fun op MEM_REVERSE x = x
    val op MEM_REVERSE =
    DT(((("list",177),
        [("bool",[14,25,26,27,47,48,52,53,54,63]),
         ("list",[25,42,81,120,173]),("pred_set",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%288%250%372%523$0@%571%635$1@@@@%523$0@%571$1@@@|@|@"])
  fun op REVERSE_11 x = x
    val op REVERSE_11 =
    DT(((("list",176),
        [("bool",[25,26,53,56]),("list",[175])]),["DISK_THM"]),
       [read"%337%163%337%171%372%385%635$1@@%635$0@@@%385$1@$0@@|@|@"])
  fun op REVERSE_REVERSE x = x
    val op REVERSE_REVERSE =
    DT(((("list",175),
        [("bool",[14,25,36,56]),("list",[20,42,173,174])]),["DISK_THM"]),
       [read"%337%155%385%635%635$0@@@$0@|@"])
  fun op REVERSE_APPEND x = x
    val op REVERSE_APPEND =
    DT(((("list",174),
        [("bool",[14,25,36,56]),("list",[20,42,55,56,173])]),["DISK_THM"]),
       [read"%337%163%337%171%385%635%424$1@$0@@@%424%635$0@@%635$1@@@|@|@"])
  fun op LIST_REL_EVERY_ZIP x = x
    val op LIST_REL_EVERY_ZIP =
    DT(((("list",172),
        [("bool",
         [14,25,26,27,31,51,53,56,58,63,105,106,124,132,133,138,143,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,22,30,42,91,141,142,156]),
         ("num",[7]),("pair",[16]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%302%32%337%163%338%172%372%564$2@$1@$0@@%365%397%544$1@@%545$0@@@%480%661$2@@%675%359$1@$0@@@@@|@|@|@"])
  fun op SUM_MAP_PLUS_ZIP x = x
    val op SUM_MAP_PLUS_ZIP =
    DT(((("list",171),
        [("arithmetic",[22,25,26,27,91]),
         ("bool",[14,25,26,27,36,51,53,56,58,105,124,132,133,138,181]),
         ("list",[1,2,3,4,5,19,22,23,42,156]),("num",[7]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%191%338%192%402%365%397%544$1@@%545$0@@@%288%250%289%271%397%104%354$1@$0@@@%352%125$1@@%136$0@@@|@|@@@%397%650%603%104@%675%359$1@$0@@@@@%352%650%586%125@$1@@@%650%592%136@$0@@@@@|@|@"])
  fun op MEM_EL x = x
    val op MEM_EL =
    DT(((("list",170),
        [("arithmetic",[28,37]),
         ("bool",
         [13,14,25,26,27,30,36,37,47,48,51,52,53,54,56,58,63,72,74,78,81,
          84,94,96,146]),("list",[17,18,22,32,42,120]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%288%250%372%523$0@%571$1@@@%415%200%365%367$0@%544$2@@@%369$1@%473$0@$2@@@|@@|@|@"])
  fun op MAP_ZIP x = x
    val op MAP_ZIP =
    DT(((("list",169),
        [("bool",
         [14,25,26,27,31,36,51,53,54,56,58,63,105,124,132,133,138,181]),
         ("combin",[8]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,22,23,42,49,50,156]),("num",[7]),
         ("pair",[8,9]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%402%397%544%163@@%545%172@@@%365%385%599%505@%675%359%163@%172@@@@%163@@%365%386%600%639@%675%359%163@%172@@@@%172@@%365%387%601%688%77@%505@@%675%359%163@%172@@@@%585%77@%163@@@%388%602%691%126@%639@@%675%359%163@%172@@@@%589%126@%172@@@@@@"])
  fun op MAP2_MAP x = x
    val op MAP2_MAP =
    DT(((("list",168),[("list",[167])]),["DISK_THM"]),
       [read"%337%163%338%172%402%397%544$1@@%545$0@@@%301%80%387%606$0@$2@$1@@%601%660$0@@%675%359$2@$1@@@@|@@|@|@"])
  fun op MAP2_ZIP x = x
    val op MAP2_ZIP =
    DT(((("list",167),
        [("arithmetic",[21]),("bool",[14,25,26,27,36,51,53,56,63]),
         ("list",[22,23,37,42,48,156]),("num",[7]),("pair",[16]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%402%397%544$1@@%545$0@@@%301%80%387%606$0@$2@$1@@%601%660$0@@%675%359$2@$1@@@@|@@|@|@"])
  fun op EL_ZIP x = x
    val op EL_ZIP =
    DT(((("list",166),
        [("arithmetic",[24,25,27,28,41,46,59,71,93,172,173,180]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,74,78,81,
          84,93,94,96,101,104,105,124,146]),
         ("list",[17,18,22,32,42,94,156]),("numeral",[3,5,8]),
         ("prim_rec",[1,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%163%338%172%349%200%402%365%397%544$2@@%545$1@@@%367$0@%544$2@@@@%399%475$0@%675%359$2@$1@@@@%354%473$0@$2@@%474$0@$1@@@@|@|@|@"])
  fun op MEM_ZIP x = x
    val op MEM_ZIP =
    DT(((("list",165),
        [("arithmetic",[28,37]),
         ("bool",
         [13,14,25,26,27,30,37,47,48,51,52,53,54,56,58,63,72,74,78,81,84,
          93,94,96,105,124,146]),("list",[17,18,22,32,42,90,94,120,156]),
         ("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%163%338%172%350%206%402%397%544$2@@%545$1@@@%372%527$0@%576%675%359$2@$1@@@@@%415%200%365%367$0@%544$3@@@%399$1@%354%473$0@$3@@%474$0@$2@@@@|@@@|@|@|@"])
  fun op ZIP_MAP x = x
    val op ZIP_MAP =
    DT(((("list",164),
        [("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,72,74,78,81,84,93,
          94,96,146]),("list",[22,23,42,90,94,156]),("pair",[8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%163%338%172%296%114%310%118%402%397%544$3@@%545$2@@@%365%396%678%362%585$1@$3@@$2@@@%605%206%357$2%505$0@@@%639$0@@|@%675%359$3@$2@@@@@%395%676%360$3@%589$0@$2@@@@%604%206%355%505$0@@$1%639$0@@@|@%675%359$3@$2@@@@@@|@|@|@|@"])
  fun op UNZIP_ZIP x = x
    val op UNZIP_ZIP =
    DT(((("list",163),
        [("arithmetic",[21]),("bool",[14,25,26,27,36,53,56]),
         ("list",[22,42,156,157]),("num",[7]),("pair",[8,9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%402%397%544$1@@%545$0@@@%400%669%675%359$1@$0@@@@%359$1@$0@@@|@|@"])
  fun op ZIP_UNZIP x = x
    val op ZIP_UNZIP =
    DT(((("list",162),
        [("bool",[14,25,36,56]),("list",[42,156,157]),
         ("pair",[7])]),["DISK_THM"]),
       [read"%348%161%394%675%669$0@@@$0@|@"])
  fun op LENGTH_UNZIP x = x
    val op LENGTH_UNZIP =
    DT(((("list",161),
        [("bool",[14,25,36,51,56]),("list",[22,42,157]),
         ("pair",[8,9])]),["DISK_THM"]),
       [read"%348%208%365%397%544%506%669$0@@@@%547$0@@@%397%545%640%669$0@@@@%547$0@@@|@"])
  fun op LENGTH_ZIP x = x
    val op LENGTH_ZIP =
    DT(((("list",160),
        [("arithmetic",[21]),("bool",[14,25,26,27,36,51,53,56]),
         ("list",[22,42,156]),("num",[7]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%402%397%544$1@@%545$0@@@%365%397%547%675%359$1@$0@@@@%544$1@@@%397%547%675%359$1@$0@@@@%545$0@@@@|@|@"])
  fun op UNZIP_MAP x = x
    val op UNZIP_MAP =
    DT(((("list",159),
        [("bool",[14,25,36,51,56]),("list",[23,42,157]),
         ("pair",[3,8,9])]),["DISK_THM"]),
       [read"%348%4%400%669$0@@%359%599%505@$0@@%600%639@$0@@@|@"])
  fun op UNZIP_THM x = x
    val op UNZIP_THM =
    DT(((("list",158),
        [("bool",[14,25,26,31,51,53,56,58,63,105,124,132,133,138,181]),
         ("combin",[8,11,15,16,33,35]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,157]),("marker",[6,9]),
         ("pair",[4,5,8,9,43,45,46])]),["DISK_THM"]),
       [read"%365%400%669%619@@%359%609@%610@@@%400%669%464%354%250@%271@@%222@@@%548%663%5%7%359%451%250@$1@@%452%271@$0@@||@@%669%222@@@@"])
  fun op EVERY_MONOTONIC x = x
    val op EVERY_MONOTONIC =
    DT(((("list",155),
        [("bool",[14,25,53]),("list",[30,42])]),["DISK_THM"]),
       [read"%297%12%297%28%402%288%250%402$2$0@@$1$0@@|@@%337%155%402%477$2@$0@@%477$1@$0@@|@@|@|@"])
  fun op EVERY_CONG x = x
    val op EVERY_CONG =
    DT(((("list",154),
        [("bool",[14,25,51,52,56,63]),("list",[30,42,120])]),["DISK_THM"]),
       [read"%337%163%337%171%297%12%297%24%402%365%385$3@$2@@%288%250%402%523$0@%571$3@@@%372$2$0@@$1$0@@@|@@@%372%477$1@$3@@%477$0@$2@@@|@|@|@|@"])
  fun op EXISTS_CONG x = x
    val op EXISTS_CONG =
    DT(((("list",153),
        [("bool",[14,25,51,52,53,54,56,63]),
         ("list",[31,42,120])]),["DISK_THM"]),
       [read"%337%163%337%171%297%12%297%24%402%365%385$3@$2@@%288%250%402%523$0@%571$3@@@%372$2$0@@$1$0@@@|@@@%372%482$1@$3@@%482$0@$2@@@|@|@|@|@"])
  fun op MAP2_CONG x = x
    val op MAP2_CONG =
    DT(((("list",152),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,31,36,51,52,53,54,56,58,63,93,96,104,105,107,124,132,
          133,138,181]),("combin",[19]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,6,7,33,34,42,120]),("numeral",[3,7,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%337%163%337%169%338%172%338%178%301%80%301%107%402%365%385$5@$4@@%365%386$3@$2@@%288%250%289%271%402%365%523$1@%571$6@@@%524$0@%572$4@@@@%371$3$1@$0@@$2$1@$0@@@|@|@@@@%387%606$1@$5@$3@@%606$0@$4@$2@@@|@|@|@|@|@|@"])
  fun op MAP_CONG x = x
    val op MAP_CONG =
    DT(((("list",151),
        [("bool",[14,25,51,52,56,63]),("list",[23,42,120])]),["DISK_THM"]),
       [read"%337%163%337%171%295%76%295%105%402%365%385$3@$2@@%288%250%402%523$0@%571$3@@@%370$2$0@@$1$0@@@|@@@%386%584$1@$3@@%584$0@$2@@@|@|@|@|@"])
  fun op FOLDL_CONG x = x
    val op FOLDL_CONG =
    DT(((("list",150),
        [("bool",[14,25,51,52,56,63]),("list",[29,42,120])]),["DISK_THM"]),
       [read"%337%155%337%162%289%60%289%65%312%90%312%110%402%365%385$5@$4@@%365%370$3@$2@@%288%250%289%42%402%523$1@%571$6@@@%370$3$0@$1@@$2$0@$1@@@|@|@@@@%370%493$1@$3@$5@@%493$0@$2@$4@@@|@|@|@|@|@|@"])
  fun op FOLDR_CONG x = x
    val op FOLDR_CONG =
    DT(((("list",149),
        [("bool",[14,25,26,36,51,52,53,56,63]),
         ("list",[28,42,120])]),["DISK_THM"]),
       [read"%337%155%337%162%289%60%289%65%300%79%300%106%402%365%385$5@$4@@%365%370$3@$2@@%288%250%289%42%402%523$1@%571$6@@@%370$3$1@$0@@$2$1@$0@@@|@|@@@@%370%502$1@$3@$5@@%502$0@$2@$4@@@|@|@|@|@|@|@"])
  fun op list_size_cong x = x
    val op list_size_cong =
    DT(((("list",148),
        [("arithmetic",[27]),("bool",[14,25,51,52,56,63]),
         ("list",[7,42,120])]),["DISK_THM"]),
       [read"%337%9%337%11%307%87%307%109%402%365%385$3@$2@@%288%250%402%523$0@%571$3@@@%397$2$0@@$1$0@@@|@@@%397%685$1@$3@@%685$0@$2@@@|@|@|@|@"])
  fun op LIST_REL_LENGTH x = x
    val op LIST_REL_LENGTH =
    DT(((("list",147),
        [("bool",[25,53,56,58,105,124]),("list",[22,136]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%255%338%276%402%564%32@$1@$0@@%397%544$1@@%545$0@@@|@|@"])
  fun op LIST_REL_MAP2 x = x
    val op LIST_REL_MAP2 =
    DT(((("list",146),
        [("bool",[25,56,58,63,105,124,125]),
         ("list",[60,67,138])]),["DISK_THM"]),
       [read"%372%564%41%60%32$1@$0@||@%163@%594%98@%173@@@%565%41%61%32$1@%98$0@@||@%163@%173@@"])
  fun op LIST_REL_MAP1 x = x
    val op LIST_REL_MAP1 =
    DT(((("list",145),
        [("bool",[25,56,58,63,105,124]),("combin",[8]),
         ("list",[60,67,138])]),["DISK_THM"]),
       [read"%372%564%32@%593%97@%165@@%172@@%567%689%32@%97@@%165@%172@@"])
  fun op LIST_REL_CONJ x = x
    val op LIST_REL_CONJ =
    DT(((("list",144),
        [("bool",[25,26,27,48,53,54,63,100]),("list",[138]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18])]),["DISK_THM"]),
       [read"%372%564%41%60%365%13$1@$0@@%29$1@$0@@||@%163@%172@@%365%564%41%60%13$1@$0@||@%163@%172@@%564%41%60%29$1@$0@||@%163@%172@@@"])
  fun op LIST_REL_CONS2 x = x
    val op LIST_REL_CONS2 =
    DT(((("list",143),
        [("bool",
         [14,25,26,27,31,37,47,51,53,54,56,58,63,132,133,138,143,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,139])]),["DISK_THM"]),
       [read"%372%564%32@%263@%452%134@%218@@@%404%139%411%224%365%385%263@%451$1@$0@@@%365%32$1@%134@@%564%32@$0@%218@@@|@|@@"])
  fun op LIST_REL_CONS1 x = x
    val op LIST_REL_CONS1 =
    DT(((("list",142),
        [("bool",
         [14,25,26,27,31,37,47,51,53,54,56,58,63,132,133,138,143,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,139])]),["DISK_THM"]),
       [read"%372%564%32@%451%133@%217@@%264@@%405%140%412%225%365%386%264@%452$1@$0@@@%365%32%133@$1@@%564%32@%217@$0@@@|@|@@"])
  fun op LIST_REL_NIL x = x
    val op LIST_REL_NIL =
    DT(((("list",141),
        [("bool",[14,25,26,27,31,47,53,54,56,58,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,139])]),["DISK_THM"]),
       [read"%365%372%564%32@%609@%256@@%386%256@%610@@@%372%564%32@%609@%276@@%386%276@%610@@@"])
  fun op LIST_REL_mono x = x
    val op LIST_REL_mono =
    DT(((("list",140),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("list",[138])]),["DISK_THM"]),
       [read"%402%288%250%289%271%402%36$1@$0@@%38$1@$0@@|@|@@%402%564%36@%163@%172@@%564%38@%163@%172@@@"])
  fun op LIST_REL_def x = x
    val op LIST_REL_def =
    DT(((("list",139),
        [("bool",
         [14,25,26,27,31,37,47,51,52,53,54,56,58,63,132,133,138,143,169,
          181]),("ind_type",[33,34]),("list",[1,2,3,4,5,133]),
         ("marker",[9])]),["DISK_THM"]),
       [read"%365%372%564%32@%609@%610@@%653@@%365%372%564%32@%451%41@%58@@%610@@%484@@%365%372%564%32@%609@%452%60@%66@@@%484@@%372%564%32@%451%41@%58@@%452%60@%66@@@%365%32%41@%60@@%564%32@%58@%66@@@@@@"])
  fun op WF_LIST_PRED x = x
    val op WF_LIST_PRED =
    DT(((("list",132),
        [("bool",[14,26,27,54,58,71,72,92,96,101]),("list",[42,48,49]),
         ("relation",[100])]),["DISK_THM"]),
       [read"%671%5%6%404%133%385$1@%451$0@$2@@|@||@"])
  fun op NULL_FILTER x = x
    val op NULL_FILTER =
    DT(((("list",131),
        [("bool",
         [14,25,26,27,30,36,53,54,55,58,63,64,71,92,99,100,105,124]),
         ("list",[27,41,42,120]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%12%337%186%372%622%486$1@$0@@@%288%250%402%523$0@%571$1@@@%716$2$0@@@|@@|@|@"])
  fun op SUM_eq_0 x = x
    val op SUM_eq_0 =
    DT(((("list",130),
        [("arithmetic",[79]),
         ("bool",[14,25,26,27,36,53,54,55,56,58,63,99,105,124]),
         ("list",[19,42,120]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%346%189%372%397%650$0@@%366@@%349%257%402%526$0@%575$1@@@%397$0@%366@@|@@|@"])
  fun op EL_simp_restricted x = x
    val op EL_simp_restricted =
    DT(((("list",129),
        [("bool",[25,51,56]),("list",[18,127])]),["DISK_THM"]),
       [read"%365%369%473%623%435%200@@@%451%153@%186@@@%473%630%623%435%200@@@@%186@@@%369%473%623%436%200@@@%451%153@%186@@@%473%623%435%200@@@%186@@@"])
  fun op EL_restricted x = x
    val op EL_restricted =
    DT(((("list",128),
        [("bool",[25,36,51,56,60]),("list",[18,32])]),["DISK_THM"]),
       [read"%365%379%473%366@@%514@@%370%474%649%200@@%452%154@%187@@@%474%200@%187@@@"])
  fun op EL_simp x = x
    val op EL_simp =
    DT(((("list",127),
        [("arithmetic",[1,3,4,24]),("bool",[25,51,56]),("list",[32]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%365%369%473%623%435%200@@@%155@@%473%630%623%435%200@@@@%657%155@@@@%369%473%623%436%200@@@%155@@%473%623%435%200@@@%657%155@@@@"])
  fun op EL_compute x = x
    val op EL_compute =
    DT(((("list",126),
        [("bool",[14,25,26,27,56,64]),("list",[32]),("num",[7,9]),
         ("prim_rec",[3])]),["DISK_THM"]),
       [read"%349%200%369%473$0@%155@@%445%397$0@%366@@%514%155@@%473%630$0@@%657%155@@@@|@"])
  fun op NOT_NULL_MEM x = x
    val op NOT_NULL_MEM =
    DT(((("list",125),
        [("bool",[14,25,26,27,37,52,53,54,63,76,132,133,138,140,181]),
         ("list",[1,2,3,4,5,41,120])]),["DISK_THM"]),
       [read"%337%155%372%716%622$0@@@%404%74%523$0@%571$1@@|@@|@"])
  fun op FILTER_COND_REWRITE x = x
    val op FILTER_COND_REWRITE =
    DT(((("list",124),
        [("bool",[25,26,27,36,51,53,56,58,63,64,105,124,129]),
         ("list",[27])]),["DISK_THM"]),
       [read"%365%385%486%12@%609@@%609@@%365%288%133%402%12$0@@%385%486%12@%451$0@%155@@@%451$0@%486%12@%155@@@@|@@%288%133%402%716%12$0@@@%385%486%12@%451$0@%155@@@%486%12@%155@@@|@@@"])
  fun op EVERY_FILTER_IMP x = x
    val op EVERY_FILTER_IMP =
    DT(((("list",123),
        [("bool",
         [5,14,25,26,27,30,36,51,52,53,54,58,63,64,105,109,124,129]),
         ("list",[27,30,42])]),["DISK_THM"]),
       [read"%297%26%297%27%337%155%402%477$2@$0@@%477$2@%486$1@$0@@@|@|@|@"])
  fun op EVERY_FILTER x = x
    val op EVERY_FILTER =
    DT(((("list",122),
        [("bool",
         [5,14,25,26,27,30,36,51,52,53,54,56,58,63,64,105,108,109,124,
          129]),("list",[27,30,42])]),["DISK_THM"]),
       [read"%297%26%297%27%337%155%372%477$2@%486$1@$0@@@%477%250%402$2$0@@$3$0@@|@$0@@|@|@|@"])
  fun op FILTER_EQ_APPEND x = x
    val op FILTER_EQ_APPEND =
    DT(((("list",121),
        [("bool",
         [5,13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,74,
          78,81,84,92,93,94,96,105,108,109,111,129,132,133,138,143,146,
          181]),("combin",[19]),
         ("list",[1,2,3,4,5,20,27,42,48,50,71,81,101,114,120]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%12%337%155%337%163%337%171%372%385%486$3@$2@@%424$1@$0@@@%411%181%411%182%365%385$4@%424$1@$0@@@%365%385%486$5@$1@@$3@@%385%486$5@$0@@$2@@@|@|@@|@|@|@|@"])
  fun op MEM x = x
    val op MEM =
    DT(((("list",120),
        [("bool",[25,26,27,54,56,58,63]),("list",[25]),
         ("pred_set",[10,80])]),["DISK_THM"]),
       [read"%365%288%250%372%523$0@%571%609@@@%484@|@@%288%250%288%133%337%217%372%523$2@%571%451$1@$0@@@@%679%369$2@$1@@%523$2@%571$0@@@@|@|@|@@"])
  fun op FILTER_APPEND_DISTRIB x = x
    val op FILTER_APPEND_DISTRIB =
    DT(((("list",119),
        [("bool",
         [14,25,26,27,30,31,51,53,56,58,63,64,105,129,132,133,138,147,
          181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,27,42])]),["DISK_THM"]),
       [read"%297%12%337%1%337%9%385%486$2@%424$1@$0@@@%424%486$2@$1@@%486$2@$0@@@|@|@|@"])
  fun op FILTER_EQ_CONS x = x
    val op FILTER_EQ_CONS =
    DT(((("list",118),
        [("bool",
         [5,14,25,26,27,30,36,37,51,52,53,54,56,58,63,64,105,108,109,129,
          132,133,138,181]),
         ("list",[1,2,3,4,5,20,27,42,48,50,101])]),["DISK_THM"]),
       [read"%297%12%337%155%288%133%337%185%372%385%486$3@$2@@%451$1@$0@@@%411%163%411%171%365%385$4@%424%424$1@%451$3@%609@@@$0@@@%365%385%486$5@$1@@%609@@%365%385%486$5@$0@@$2@@$5$3@@@@|@|@@|@|@|@|@"])
  fun op FILTER_NEQ_ID x = x
    val op FILTER_NEQ_ID =
    DT(((("list",117),
        [("bool",[25,36,54,56,71,72,96]),
         ("list",[75,79,116])]),["DISK_THM"]),
       [read"%297%12%337%155%372%716%385%486$1@$0@@$0@@@%404%250%365%523$0@%571$1@@@%716$2$0@@@|@@|@|@"])
  fun op FILTER_EQ_ID x = x
    val op FILTER_EQ_ID =
    DT(((("list",116),
        [("bool",
         [14,25,26,27,30,31,51,52,53,54,56,58,63,64,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,25,27,30,82]),
         ("pred_set",[80])]),["DISK_THM"]),
       [read"%297%12%337%155%372%385%486$1@$0@@$0@@%477$1@$0@@|@|@"])
  fun op FILTER_NEQ_NIL x = x
    val op FILTER_NEQ_NIL =
    DT(((("list",115),
        [("bool",[25,36,54,56,71,72,96]),
         ("list",[75,79,114])]),["DISK_THM"]),
       [read"%297%12%337%155%372%716%385%486$1@$0@@%609@@@%404%250%365%523$0@%571$1@@@$2$0@@|@@|@|@"])
  fun op FILTER_EQ_NIL x = x
    val op FILTER_EQ_NIL =
    DT(((("list",114),
        [("bool",
         [5,14,25,26,27,30,36,52,53,54,56,58,63,64,105,108,109,129]),
         ("list",[27,30,42,50])]),["DISK_THM"]),
       [read"%297%12%337%155%372%385%486$1@$0@@%609@@%477%250%716$2$0@@|@$0@@|@|@"])
  fun op LENGTH_TL x = x
    val op LENGTH_TL =
    DT(((("list",113),
        [("arithmetic",[65]),
         ("bool",[14,25,26,27,53,56,58,63,105,124,132,133,138,181]),
         ("list",[1,2,3,4,5,18,22]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%337%155%402%367%366@%544$0@@@%397%544%657$0@@@%364%544$0@@%623%435%673@@@@@|@"])
  fun op FOLDR_CONS x = x
    val op FOLDR_CONS =
    DT(((("list",112),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,23,28])]),["DISK_THM"]),
       [read"%295%76%337%186%338%45%386%503%250%276%452$4$1@@$0@||@$0@$1@@%425%584$2@$1@@$0@@|@|@|@"])
  fun op FOLDL_EQ_FOLDR x = x
    val op FOLDL_EQ_FOLDR =
    DT(((("list",111),
        [("bool",[14,25,36,56,58,87,105,124]),("list",[28,29,42]),
         ("operator",[0,1])]),["DISK_THM"]),
       [read"%298%78%337%155%288%74%402%365%431$2@@%444$2@@@%369%492$2@$0@$1@@%501$2@$0@$1@@@|@|@|@"])
  fun op LIST_EQ x = x
    val op LIST_EQ =
    DT(((("list",110),[("list",[109])]),["DISK_THM"]),
       [read"%337%163%337%171%402%365%397%544$1@@%544$0@@@%349%257%402%367$0@%544$2@@@%369%473$0@$2@@%473$0@$1@@@|@@@%385$1@$0@@|@|@"])
  fun op LIST_EQ_REWRITE x = x
    val op LIST_EQ_REWRITE =
    DT(((("list",109),
        [("arithmetic",[24,25,27,28,37,41,46,59,71,93,172,173,180]),
         ("bool",
         [14,25,26,27,36,43,51,53,54,56,58,63,96,101,104,105,124,132,133,
          138,181]),("list",[1,2,3,4,5,17,18,22,32,42,48,50]),
         ("numeral",[3,5,8]),("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%337%163%337%171%372%385$1@$0@@%365%397%544$1@@%544$0@@@%349%257%402%367$0@%544$2@@@%369%473$0@$2@@%473$0@$1@@@|@@@|@|@"])
  fun op MEM_SPLIT x = x
    val op MEM_SPLIT =
    DT(((("list",108),
        [("bool",
         [13,14,25,26,27,30,31,37,47,48,51,52,53,54,56,58,63,72,74,78,81,
          84,93,94,132,133,138,146,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,25,81,101]),("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%288%250%337%155%372%523$1@%571$0@@@%411%163%411%171%385$2@%424$1@%451$3@$0@@@|@|@@|@|@"])
  fun op APPEND_EQ_SELF x = x
    val op APPEND_EQ_SELF =
    DT(((("list",107),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,71,76,93,94,96]),
         ("list",[20,55,104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%365%337%163%337%171%372%385%424$1@$0@@$1@@%385$0@%609@@|@|@@%365%337%163%337%171%372%385%424$1@$0@@$0@@%385$1@%609@@|@|@@%365%337%163%337%171%372%385$1@%424$1@$0@@@%385$0@%609@@|@|@@%337%163%337%171%372%385$0@%424$1@$0@@@%385$1@%609@@|@|@@@@"])
  fun op APPEND_11_LENGTH x = x
    val op APPEND_11_LENGTH =
    DT(((("list",106),
        [("arithmetic",[25,26,91]),
         ("bool",[25,26,27,30,47,48,53,54,56,58,63,73,84,93,94,96,102]),
         ("list",[57,105]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%365%337%163%337%171%337%169%337%177%402%397%544$3@@%544$1@@@%372%385%424$3@$2@@%424$1@$0@@@%365%385$3@$1@@%385$2@$0@@@@|@|@|@|@@%337%163%337%171%337%169%337%177%402%397%544$2@@%544$0@@@%372%385%424$3@$2@@%424$1@$0@@@%365%385$3@$1@@%385$2@$0@@@@|@|@|@|@@"])
  fun op APPEND_LENGTH_EQ x = x
    val op APPEND_LENGTH_EQ =
    DT(((("list",105),
        [("bool",
         [2,14,15,25,26,27,31,48,51,53,54,55,56,58,63,74,84,99,105,124,132,
          133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,22,90,94]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%337%169%402%397%544$1@@%544$0@@@%337%171%337%177%402%397%544$1@@%544$0@@@%372%385%424$3@$1@@%424$2@$0@@@%365%385$3@$2@@%385$1@$0@@@@|@|@@|@|@"])
  fun op APPEND_11 x = x
    val op APPEND_11 =
    DT(((("list",104),
        [("bool",[14,25,26,27,36,51,54,56,63]),
         ("list",[20,42,48,49,50,55,101])]),["DISK_THM"]),
       [read"%365%337%163%337%171%337%181%372%385%424$2@$1@@%424$2@$0@@@%385$1@$0@@|@|@|@@%337%163%337%171%337%181%372%385%424$1@$2@@%424$0@$2@@@%385$1@$0@@|@|@|@@"])
  fun op APPEND_EQ_SING x = x
    val op APPEND_EQ_SING =
    DT(((("list",103),
        [("bool",
         [14,25,26,27,31,43,47,51,52,53,54,56,58,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,20,101])]),["DISK_THM"]),
       [read"%372%385%424%163@%171@@%451%74@%609@@@%679%365%385%163@%451%74@%609@@@%385%171@%609@@@%365%385%163@%609@@%385%171@%451%74@%609@@@@@"])
  fun op MAP_EQ_APPEND x = x
    val op MAP_EQ_APPEND =
    DT(((("list",102),
        [("bool",
         [2,14,15,25,26,27,31,36,51,53,54,55,56,58,63,80,81,86,100,105,124,
          132,133,138,140,143,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,23,42,49,50,58,62,101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%386%584%76@%155@@%425%164@%172@@@%411%170%411%179%365%385%155@%424$1@$0@@@%365%386%164@%584%76@$1@@@%386%172@%584%76@$0@@@@|@|@@"])
  fun op APPEND_eq_NIL x = x
    val op APPEND_eq_NIL =
    DT(((("list",101),
        [("bool",[14,25,26,27,36,51,54,56,58,63]),
         ("list",[20,42,49,50])]),["DISK_THM"]),
       [read"%365%337%163%337%171%372%385%609@%424$1@$0@@@%365%385$1@%609@@%385$0@%609@@@|@|@@%337%163%337%171%372%385%424$1@$0@@%609@@%365%385$1@%609@@%385$0@%609@@@|@|@@"])
  fun op CONS_ACYCLIC x = x
    val op CONS_ACYCLIC =
    DT(((("list",100),
        [("bool",[14,25,26,27,36,51,54]),
         ("list",[42,48,49,50])]),["DISK_THM"]),
       [read"%337%155%288%250%365%716%385$1@%451$0@$1@@@@%716%385%451$0@$1@@$1@@@|@|@"])
  fun op LENGTH_EQ_NIL x = x
    val op LENGTH_EQ_NIL =
    DT(((("list",99),
        [("bool",[14,25,26,27,36,53,56,63]),("list",[22,42]),
         ("num",[7])]),["DISK_THM"]),
       [read"%327%21%372%337%155%402%397%544$0@@%366@@$1$0@@|@@$0%609@@|@"])
  fun op LENGTH_EQ_NUM_compute x = x
    val op LENGTH_EQ_NUM_compute =
    DT(((("list",98),
        [("arithmetic",[268]),("bool",[26,43,58]),
         ("list",[97])]),["DISK_THM"]),
       [read"%365%337%155%372%397%544$0@@%366@@%385$0@%609@@|@@%365%337%155%349%200%372%397%544$1@@%623%435$0@@@@%404%133%411%162%365%397%544$0@@%364%623%435$2@@@%623%435%673@@@@@%385$3@%451$1@$0@@@|@|@@|@|@@%365%337%155%349%200%372%397%544$1@@%623%436$0@@@@%404%133%411%162%365%397%544$0@@%623%435$2@@@@%385$3@%451$1@$0@@@|@|@@|@|@@%337%155%349%201%349%202%372%397%544$2@@%352$1@$0@@@%411%163%411%171%365%397%544$1@@$3@@%365%397%544$0@@$2@@%385$4@%424$1@$0@@@@|@|@@|@|@|@@@@"])
  fun op LENGTH_EQ_NUM x = x
    val op LENGTH_EQ_NUM =
    DT(((("list",97),
        [("bool",[25,36,51,56]),("list",[90,94,96])]),["DISK_THM"]),
       [read"%365%337%155%372%397%544$0@@%366@@%385$0@%609@@|@@%365%337%155%349%200%372%397%544$1@@%649$0@@@%404%133%411%162%365%397%544$0@@$2@@%385$3@%451$1@$0@@@|@|@@|@|@@%337%155%349%201%349%202%372%397%544$2@@%352$1@$0@@@%411%163%411%171%365%397%544$1@@$3@@%365%397%544$0@@$2@@%385$4@%424$1@$0@@@@|@|@@|@|@|@@@"])
  fun op LENGTH_EQ_SUM x = x
    val op LENGTH_EQ_SUM =
    DT(((("list",96),
        [("arithmetic",[22,24,25]),
         ("bool",
         [14,25,26,36,47,48,53,54,56,58,63,71,72,74,76,77,78,80,81,84,96,
          143,146]),("list",[20,90,94]),("num",[9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%349%201%349%202%372%397%544$2@@%352$1@$0@@@%411%163%411%171%365%397%544$1@@$3@@%365%397%544$0@@$2@@%385$4@%424$1@$0@@@@|@|@@|@|@|@"])
  fun op LENGTH_EQ_CONS x = x
    val op LENGTH_EQ_CONS =
    DT(((("list",95),
        [("bool",[14,25,26,27,47,53,56]),("list",[22,42]),("num",[7]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%327%21%349%200%372%337%155%402%397%544$0@@%649$1@@@$2$0@@|@@%337%155%402%397%544$0@@$1@@%155%288%250$4%451$0@$1@@|@|$0@@|@@|@|@"])
  fun op LENGTH_CONS x = x
    val op LENGTH_CONS =
    DT(((("list",94),
        [("bool",[14,25,26,27,36,37,47,51,54,56,58,63,143]),
         ("list",[22,42,48,49]),("num",[7]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%155%349%200%372%397%544$1@@%649$0@@@%404%133%411%162%365%397%544$0@@$2@@%385$3@%451$1@$0@@@|@|@@|@|@"])
  fun op NULL_LENGTH x = x
    val op NULL_LENGTH =
    DT(((("list",93),[("bool",[25,36,56]),("list",[90,92])]),["DISK_THM"]),
       [read"%337%155%372%622$0@@%397%544$0@@%366@@|@"])
  fun op NULL_EQ x = x
    val op NULL_EQ =
    DT(((("list",92),
        [("bool",[14,25,26,27,53,54,56,63,132,133,138,181]),
         ("list",[1,2,3,4,5,41,50])]),["DISK_THM"]),
       [read"%337%155%372%622$0@@%385$0@%609@@|@"])
  fun op LENGTH_NIL_SYM x = x
    val op LENGTH_NIL_SYM =
    DT(((("list",91),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,93,94,96]),
         ("list",[90]),("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%372%397%366@%544%155@@@%385%155@%609@@"])
  fun op LENGTH_NIL x = x
    val op LENGTH_NIL =
    DT(((("list",90),
        [("bool",[14,25,26,27,36,54,56,63]),("list",[22,42,50]),
         ("num",[7])]),["DISK_THM"]),
       [read"%337%155%372%397%544$0@@%366@@%385$0@%609@@|@"])
  fun op MEM_MAP x = x
    val op MEM_MAP =
    DT(((("list",89),
        [("bool",
         [13,14,25,26,27,30,36,37,47,48,51,52,53,54,56,58,63,72,74,76,78,
          80,81,84,93,94,96,146]),("combin",[19]),("list",[23,25,42]),
         ("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%295%76%289%251%372%524$0@%572%584$1@$2@@@@%404%270%365%370$1@$2$0@@@%523$0@%571$3@@@|@@|@|@|@"])
  fun op NOT_EXISTS x = x
    val op NOT_EXISTS =
    DT(((("list",88),
        [("bool",[14,25,36,54,56,63,96]),("combin",[8]),
         ("list",[30,31,42])]),["DISK_THM"]),
       [read"%297%12%337%155%372%716%482$1@$0@@@%477%694%716@$1@@$0@@|@|@"])
  fun op NOT_EVERY x = x
    val op NOT_EVERY =
    DT(((("list",87),
        [("bool",[14,25,36,54,56,63,96]),("combin",[8]),
         ("list",[30,31,42])]),["DISK_THM"]),
       [read"%297%12%337%155%372%716%477$1@$0@@@%482%694%716@$1@@$0@@|@|@"])
  fun op EXISTS_APPEND x = x
    val op EXISTS_APPEND =
    DT(((("list",86),
        [("bool",[14,25,36,52,56,93]),("list",[20,31,42])]),["DISK_THM"]),
       [read"%297%12%337%163%337%171%372%482$2@%424$1@$0@@@%679%482$2@$1@@%482$2@$0@@@|@|@|@"])
  fun op EVERY_APPEND x = x
    val op EVERY_APPEND =
    DT(((("list",85),
        [("bool",[14,25,36,43,51,56]),("list",[20,30,42])]),["DISK_THM"]),
       [read"%297%12%337%163%337%171%372%477$2@%424$1@$0@@@%365%477$2@$1@@%477$2@$0@@@|@|@|@"])
  fun op FLAT_APPEND x = x
    val op FLAT_APPEND =
    DT(((("list",84),
        [("bool",[14,25,36,56]),("list",[20,21,42,56])]),["DISK_THM"]),
       [read"%345%166%345%174%385%490%427$1@$0@@@%424%490$1@@%490$0@@@|@|@"])
  fun op MEM_FLAT x = x
    val op MEM_FLAT =
    DT(((("list",83),
        [("bool",
         [13,14,25,26,27,30,37,47,48,51,52,53,54,56,58,63,72,74,76,78,80,
          81,84,93,94,96,132,133,138,146]),("list",[1,2,3,4,5,21,25,81]),
         ("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%288%250%345%2%372%523$1@%571%490$0@@@@%411%155%365%525$0@%574$1@@@%523$2@%571$0@@@|@@|@|@"])
  fun op MEM_FILTER x = x
    val op MEM_FILTER =
    DT(((("list",82),
        [("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,63,64,93,94,96,132,133,
          138]),("combin",[19]),("list",[1,2,3,4,5,25,27]),
         ("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%12%337%1%288%250%372%523$0@%571%486$2@$1@@@@%365$2$0@@%523$0@%571$1@@@@|@|@|@"])
  fun op MEM_APPEND x = x
    val op MEM_APPEND =
    DT(((("list",81),
        [("bool",[14,25,26,27,52,53,56,93,132,133,138]),
         ("list",[1,2,3,4,5,20,25]),("pred_set",[10,80])]),["DISK_THM"]),
       [read"%288%74%337%163%337%171%372%523$2@%571%424$1@$0@@@@%679%523$2@%571$1@@@%523$2@%571$0@@@@|@|@|@"])
  fun op EXISTS_NOT_EVERY x = x
    val op EXISTS_NOT_EVERY =
    DT(((("list",80),
        [("bool",[14,25,36,54,56]),("list",[79])]),["DISK_THM"]),
       [read"%297%12%337%155%372%482$1@$0@@%716%477%250%716$2$0@@|@$0@@@|@|@"])
  fun op EVERY_NOT_EXISTS x = x
    val op EVERY_NOT_EXISTS =
    DT(((("list",79),
        [("bool",[14,25,36,54,56,63,96]),
         ("list",[30,31,42])]),["DISK_THM"]),
       [read"%297%12%337%155%372%477$1@$0@@%716%482%250%716$2$0@@|@$0@@@|@|@"])
  fun op MONO_EXISTS x = x
    val op MONO_EXISTS =
    DT(((("list",78),
        [("bool",[14,25,36,51,52,53,58,63,102,105,124]),
         ("list",[31,42])]),["DISK_THM"]),
       [read"%402%288%250%402%12$0@@%28$0@@|@@%402%482%12@%155@@%482%28@%155@@@"])
  fun op EXISTS_SIMP x = x
    val op EXISTS_SIMP =
    DT(((("list",77),
        [("bool",[14,25,26,27,35,36,51,52,54,56,63]),
         ("list",[31,42,50])]),["DISK_THM"]),
       [read"%294%70%337%155%372%482%250$2|@$0@@%365%716%385$0@%609@@@$1@@|@|@"])
  fun op EXISTS_MAP x = x
    val op EXISTS_MAP =
    DT(((("list",76),
        [("bool",[14,25,36,54,56,63]),("list",[23,31,42])]),["DISK_THM"]),
       [read"%311%14%295%76%337%155%372%483$2@%584$1@$0@@@%482%250$3$2$0@@|@$0@@|@|@|@"])
  fun op EXISTS_MEM x = x
    val op EXISTS_MEM =
    DT(((("list",75),
        [("bool",
         [13,14,25,26,27,30,37,47,48,51,52,53,54,56,58,63,72,76,78,80,81,
          93,94,96,132,133,138]),("list",[1,2,3,4,5,25,31]),
         ("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%12%337%155%372%482$1@$0@@%404%74%365%523$0@%571$1@@@$2$0@@|@@|@|@"])
  fun op MONO_EVERY x = x
    val op MONO_EVERY =
    DT(((("list",74),
        [("bool",[14,25,36,51,53,58,63,105,124]),
         ("list",[30,42])]),["DISK_THM"]),
       [read"%402%288%250%402%12$0@@%28$0@@|@@%402%477%12@%155@@%477%28@%155@@@"])
  fun op EVERY_SIMP x = x
    val op EVERY_SIMP =
    DT(((("list",73),
        [("bool",[14,25,26,27,35,36,51,52,56,63]),
         ("list",[30,42,50])]),["DISK_THM"]),
       [read"%294%70%337%155%372%477%250$2|@$0@@%679%385$0@%609@@$1@@|@|@"])
  fun op EVERY_MAP x = x
    val op EVERY_MAP =
    DT(((("list",72),
        [("bool",[14,25,36,56,63]),("list",[23,30,42])]),["DISK_THM"]),
       [read"%311%14%295%76%337%155%372%478$2@%584$1@$0@@@%477%250$3$2$0@@|@$0@@|@|@|@"])
  fun op EVERY_MEM x = x
    val op EVERY_MEM =
    DT(((("list",71),
        [("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,71,76,78,81,93,
          94,96]),("list",[25,30,42]),("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%297%12%337%155%372%477$1@$0@@%288%74%402%523$0@%571$1@@@$2$0@@|@@|@|@"])
  fun op EVERY_CONJ x = x
    val op EVERY_CONJ =
    DT(((("list",70),
        [("bool",[14,25,26,51,63]),("list",[30,42])]),["DISK_THM"]),
       [read"%297%12%297%28%337%155%372%477%250%365$3$0@@$2$0@@|@$0@@%365%477$2@$0@@%477$1@$0@@@|@|@|@"])
  fun op EVERY_EL x = x
    val op EVERY_EL =
    DT(((("list",69),
        [("arithmetic",[37]),("bool",[14,25,26,27,36,53,63]),
         ("list",[17,18,22,30,32,42]),("num",[9]),
         ("prim_rec",[6,7,9])]),["DISK_THM"]),
       [read"%337%155%297%12%372%477$0@$1@@%349%200%402%367$0@%544$2@@@$1%473$0@$2@@@|@@|@|@"])
  fun op MAP_TL x = x
    val op MAP_TL =
    DT(((("list",68),
        [("bool",[14,25,26,36,53,54,56,132,133,138]),
         ("list",[1,2,3,4,5,16,18,23])]),["DISK_THM"]),
       [read"%337%155%295%76%402%716%622$1@@@%386%584$0@%657$1@@@%658%584$0@$1@@@@|@|@"])
  fun op EL_MAP x = x
    val op EL_MAP =
    DT(((("list",67),
        [("arithmetic",[37]),("bool",[14,25,26,27,36,53,56,63]),
         ("list",[17,18,22,23,32,42]),("num",[9]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%349%200%337%155%402%367$1@%544$0@@@%295%76%370%474$2@%584$0@$1@@@$0%473$2@$1@@@|@@|@|@"])
  fun op MAP_MAP_o x = x
    val op MAP_MAP_o =
    DT(((("list",66),[("combin",[5]),("list",[65])]),["DISK_THM"]),
       [read"%309%89%295%124%337%155%387%588$2@%584$1@$0@@@%585%690$2@$1@@$0@@|@|@|@"])
  fun op MAP_o x = x
    val op MAP_o =
    DT(((("list",65),
        [("bool",[14,25,26,36,56]),("combin",[8]),
         ("list",[23,42])]),["DISK_THM"]),
       [read"%309%89%295%124%381%585%690$1@$0@@@%700%588$1@@%584$0@@@|@|@"])
  fun op MAP_EQ_f x = x
    val op MAP_EQ_f =
    DT(((("list",64),
        [("bool",
         [14,25,26,27,36,53,56,58,63,73,101,102,105,124,132,133,138,145]),
         ("list",[1,2,3,4,5,23,25,48]),
         ("pred_set",[10,80])]),["DISK_THM"]),
       [read"%295%113%295%116%337%155%372%386%584$2@$0@@%584$1@$0@@@%288%74%402%523$0@%571$1@@@%370$3$0@@$2$0@@@|@@|@|@|@"])
  fun op MAP_EQ_SING x = x
    val op MAP_EQ_SING =
    DT(((("list",63),
        [("bool",[14,25,26,27,36,51,54,56,63,143]),
         ("list",[23,42,49,50,62])]),["DISK_THM"]),
       [read"%372%386%584%76@%155@@%452%251@%610@@@%404%260%365%385%155@%451$0@%609@@@%370%251@%76$0@@@|@@"])
  fun op MAP_EQ_CONS x = x
    val op MAP_EQ_CONS =
    DT(((("list",62),
        [("bool",
         [14,25,26,27,31,37,47,51,53,54,55,56,58,63,132,133,138,143,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,23,45]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%386%584%76@%155@@%452%134@%218@@@%404%260%411%226%365%385%155@%451$1@$0@@@%365%370%134@%76$1@@@%386%218@%584%76@$0@@@@|@|@@"])
  fun op MAP_EQ_NIL x = x
    val op MAP_EQ_NIL =
    DT(((("list",61),
        [("bool",[14,25,26,27,36,51,54,56,63]),
         ("list",[23,42,49,50])]),["DISK_THM"]),
       [read"%337%155%295%76%365%372%386%584$0@$1@@%610@@%385$1@%609@@@%372%386%610@%584$0@$1@@@%385$1@%609@@@|@|@"])
  fun op LENGTH_MAP x = x
    val op LENGTH_MAP =
    DT(((("list",60),
        [("bool",[14,25,36,56]),("list",[22,23,42])]),["DISK_THM"]),
       [read"%337%155%295%76%397%545%584$0@$1@@@%544$1@@|@|@"])
  fun op MAP_ID x = x
    val op MAP_ID =
    DT(((("list",59),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("combin",[19]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,23])]),["DISK_THM"]),
       [read"%365%385%583%250$0|@%155@@%155@@%385%583%515@%155@@%155@@"])
  fun op MAP_APPEND x = x
    val op MAP_APPEND =
    DT(((("list",58),
        [("bool",[14,25,36,56]),("list",[20,23,42])]),["DISK_THM"]),
       [read"%295%76%337%163%337%171%386%584$2@%424$1@$0@@@%425%584$2@$1@@%584$2@$0@@@|@|@|@"])
  fun op LENGTH_APPEND x = x
    val op LENGTH_APPEND =
    DT(((("list",57),
        [("arithmetic",[24]),("bool",[14,25,36,56]),
         ("list",[20,22,42])]),["DISK_THM"]),
       [read"%337%163%337%171%397%544%424$1@$0@@@%352%544$1@@%544$0@@@|@|@"])
  fun op APPEND_ASSOC x = x
    val op APPEND_ASSOC =
    DT(((("list",56),
        [("bool",[14,25,36,56]),("list",[20,42])]),["DISK_THM"]),
       [read"%337%163%337%171%337%181%385%424$2@%424$1@$0@@@%424%424$2@$1@@$0@@|@|@|@"])
  fun op APPEND_NIL x = x
    val op APPEND_NIL =
    DT(((("list",55),
        [("bool",[14,25,36,56]),("list",[20,42])]),["DISK_THM"]),
       [read"%337%155%385%424$0@%609@@$0@|@"])
  fun op CONS x = x
    val op CONS =
    DT(((("list",54),
        [("bool",[25,26,27,53,54,56,63]),
         ("list",[17,18,41,45])]),["DISK_THM"]),
       [read"%337%155%402%716%622$0@@@%385%451%514$0@@%657$0@@@$0@@|@"])
  fun op EQ_LIST x = x
    val op EQ_LIST =
    DT(((("list",53),[("bool",[25,51,56]),("list",[48])]),["DISK_THM"]),
       [read"%288%141%288%144%402%369$1@$0@@%337%163%337%171%402%385$1@$0@@%385%451$3@$1@@%451$2@$0@@@|@|@@|@|@"])
  fun op NOT_EQ_LIST x = x
    val op NOT_EQ_LIST =
    DT(((("list",52),
        [("bool",[25,26,27,36,51,54]),("list",[48])]),["DISK_THM"]),
       [read"%288%141%288%144%402%716%369$1@$0@@@%337%163%337%171%716%385%451$3@$1@@%451$2@$0@@@|@|@@|@|@"])
  fun op LIST_NOT_EQ x = x
    val op LIST_NOT_EQ =
    DT(((("list",51),
        [("bool",[25,26,27,36,51,54]),("list",[48])]),["DISK_THM"]),
       [read"%337%163%337%171%402%716%385$1@$0@@@%288%141%288%144%716%385%451$1@$3@@%451$0@$2@@@|@|@@|@|@"])
  fun op NOT_CONS_NIL x = x
    val op NOT_CONS_NIL =
    DT(((("list",50),[("bool",[58]),("list",[49])]),["DISK_THM"]),
       [read"%337%52%288%48%716%385%451$0@$1@@%609@@|@|@"])
  fun op NOT_NIL_CONS x = x
    val op NOT_NIL_CONS =
    DT(((("list",49),
        [("bool",[14,25,26,31,47,53,54,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%337%52%288%48%716%385%609@%451$0@$1@@@|@|@"])
  fun op CONS_11 x = x
    val op CONS_11 =
    DT(((("list",48),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%288%48%337%52%288%50%337%55%372%385%451$3@$2@@%451$1@$0@@@%365%369$3@$1@@%385$2@$0@@@|@|@|@|@"])
  fun op list_case_compute x = x
    val op list_case_compute =
    DT(((("list",47),
        [("bool",[14,25,36,56,64]),
         ("list",[6,16,17,18,42])]),["DISK_THM"]),
       [read"%337%155%370%683$0@%60@%84@@%446%622$0@@%60@%84%514$0@@%657$0@@@@|@"])
  fun op list_nchotomy x = x
    val op list_nchotomy =
    DT(((("list",46),[("list",[45])]),["DISK_THM"]),
       [read"%337%155%679%385$0@%609@@%404%133%411%217%385$2@%451$1@$0@@|@|@@|@"])
  fun op list_case_cong x = x
    val op list_case_cong =
    DT(((("list",11),
        [("bool",[14,25,26,53,132,133,138,181]),
         ("list",[1,2,3,4,5,6])]),["DISK_THM"]),
       [read"%337%9%337%10%289%235%305%84%402%365%385$3@$2@@%365%402%385$2@%609@@%370$1@%239@@@%288%48%337%52%402%385$4@%451$1@$0@@@%370$2$1@$0@@%108$1@$0@@@|@|@@@@%370%683$3@$1@$0@@%683$2@%239@%108@@@|@|@|@|@"])
  fun op list_distinct x = x
    val op list_distinct =
    DT(((("list",10),
        [("bool",[14,25,26,31,47,53,54,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%337%52%288%48%716%385%609@%451$0@$1@@@|@|@"])
  fun op list_11 x = x
    val op list_11 =
    DT(((("list",9),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%288%48%337%52%288%50%337%55%372%385%451$3@$2@@%451$1@$0@@@%365%369$3@$1@@%385$2@$0@@@|@|@|@|@"])
  fun op datatype_list x = x
    val op datatype_list =
    DT(((("list",8),[("bool",[25,171])]),["DISK_THM"]),
       [read"%466%183%609@%451@@"])
  fun op list_Axiom_old x = x
    val op list_Axiom_old =
    DT(((("list",15),
        [("bool",
         [7,14,25,26,31,36,51,53,56,58,63,105,124,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%289%251%313%92%418%121%365%370$0%609@@$2@@%288%133%337%217%370$2%451$1@$0@@@$3$2$0@@$1@$0@@|@|@@|@|@|@"])
  fun op LIST_TO_SET x = x
    val op LIST_TO_SET =
    DT(((("list",25),
        [("bool",[18,25,36,54,56,60,63]),("list",[24]),
         ("pred_set",[12,81])]),["DISK_THM"]),
       [read"%365%373%571%609@@%476@@%375%572%452%134@%218@@@%532%134@%572%218@@@@"])
  fun op IN_LIST_TO_SET x = x
    val op IN_LIST_TO_SET =
    DT(((("list",26),[("bool",[25])]),["DISK_THM"]), [read"%653"])
  fun op MAP2_ind x = x
    val op MAP2_ind =
    DT(((("list",35),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,25,26,36,47,48,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107,132,133,138,181]),("list",[1,2,3,4,5,7]),("numeral",[3,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%326%20%402%365%314%93%289%142%338%228%290%146%339%232%402$5$4@$2@$0@@$5$4@%452$3@$2@@%453$1@$0@@@|@|@|@|@|@@%365%314%93%339%277$2$1@%610@$0@|@|@@%314%93%289%246%338%247$3$2@%452$1@$0@@%611@|@|@|@@@@%314%238%338%241%339%244$3$2@$1@$0@|@|@|@@|@"])
  fun op MAP2_def x = x
    val op MAP2_def =
    DT(((("list",36),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("list",[6,7,33,34]),("numeral",[3,7,8]),("pair",[7,8,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%365%339%232%338%228%290%146%289%142%314%93%385%607$0@%452$1@$3@@%453$2@$4@@@%451$0$1@$2@@%607$0@$3@$4@@@|@|@|@|@|@@%365%339%277%314%93%385%607$0@%610@$1@@%609@|@|@@%338%247%289%246%314%93%385%607$0@%452$1@$2@@%611@@%609@|@|@|@@@"])
  fun op MAP2 x = x
    val op MAP2 =
    DT(((("list",37),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,55,58,63,73,74,75,93,96,104,105,107]),
         ("combin",[19]),("list",[6,7,33,34]),("numeral",[3,7,8]),
         ("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%365%301%80%387%606$0@%609@%610@@%611@|@@%321%100%291%143%340%229%292%147%341%233%390%608$4@%454$3@$2@@%455$1@$0@@@%456$4$3@$1@@%608$4@$2@$0@@@|@|@|@|@|@@"])
  fun op NULL x = x
    val op NULL =
    DT(((("list",41),[("bool",[25,36,51,54]),("list",[16])]),["DISK_THM"]),
       [read"%365%622%609@@%288%133%337%217%716%622%451$1@$0@@@|@|@@"])
  fun op list_INDUCT x = x
    val op list_INDUCT =
    DT(((("list",42),
        [("bool",[14,25,26,36,53,63,132,133,138]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%327%21%402%365$0%609@@%337%217%402$1$0@@%288%133$2%451$0@$1@@|@@|@@@%337%155$1$0@|@@|@"])
  fun op list_Axiom x = x
    val op list_Axiom =
    DT(((("list",13),
        [("bool",[14,25,26,31,53,63,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5])]),["DISK_THM"]),
       [read"%289%112%306%115%408%120%365%370$0%609@@$2@@%288%48%337%52%370$2%451$1@$0@@@$3$1@$0@$2$0@@@|@|@@|@|@|@"])
  fun op list_induction x = x
    val op list_induction =
    DT(((("list",43),[("list",[42])]),["DISK_THM"]),
       [read"%327%21%402%365$0%609@@%337%217%402$1$0@@%288%133$2%451$0@$1@@|@@|@@@%337%155$1$0@|@@|@"])
  fun op LIST_REL_EL_EQN x = x
    val op LIST_REL_EL_EQN =
    DT(((("list",138),
        [("arithmetic",[28,37]),
         ("bool",
         [14,25,26,27,36,51,53,56,58,63,73,105,106,124,132,133,138,181]),
         ("list",[1,2,3,4,5,17,22,128,133,136]),("num",[7]),
         ("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%302%32%337%163%338%172%372%564$2@$1@$0@@%365%397%544$1@@%545$0@@@%349%200%402%367$0@%544$2@@@$3%473$0@$2@@%474$0@$1@@@|@@@|@|@|@"])
  fun op LIST_REL_cases x = x
    val op LIST_REL_cases =
    DT(((("list",137),
        [("bool",[14,25,26,53,132,133,138]),("list",[133])]),["DISK_THM"]),
       [read"%302%32%337%49%338%53%372%564$2@$1@$0@@%679%365%385$1@%609@@%386$0@%610@@@%404%141%405%145%411%227%412%231%365%385$5@%451$3@$1@@@%365%386$4@%452$2@$0@@@%365$6$3@$2@@%564$6@$1@$0@@@@|@|@|@|@@@|@|@|@"])
  fun op LIST_REL_strongind x = x
    val op LIST_REL_strongind =
    DT(((("list",136),
        [("bool",[14,25,26,53,132,133,138]),("list",[133])]),["DISK_THM"]),
       [read"%302%32%329%8%402%365$0%609@%610@@%288%141%289%145%337%227%338%231%402%365$5$3@$2@@%365%564$5@$1@$0@@$4$1@$0@@@@$4%451$3@$1@@%452$2@$0@@@|@|@|@|@@@%337%49%338%53%402%564$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op LIST_REL_ind x = x
    val op LIST_REL_ind =
    DT(((("list",135),
        [("bool",[14,25,26,53,132,133,138]),("list",[133])]),["DISK_THM"]),
       [read"%302%32%329%8%402%365$0%609@%610@@%288%141%289%145%337%227%338%231%402%365$5$3@$2@@$4$1@$0@@@$4%451$3@$1@@%452$2@$0@@@|@|@|@|@@@%337%49%338%53%402%564$3@$1@$0@@$2$1@$0@@|@|@@|@|@"])
  fun op LIST_REL_rules x = x
    val op LIST_REL_rules =
    DT(((("list",134),
        [("bool",[14,25,26,53,132,133,138]),("list",[133])]),["DISK_THM"]),
       [read"%302%32%365%564$0@%609@%610@@%288%141%289%145%337%227%338%231%402%365$4$3@$2@@%564$4@$1@$0@@@%564$4@%451$3@$1@@%452$2@$0@@@|@|@|@|@@|@"])
  fun op list_CASES x = x
    val op list_CASES =
    DT(((("list",45),
        [("bool",
         [14,25,26,47,48,53,54,63,71,72,78,94,132,133,138,146,181]),
         ("list",[1,2,3,4,5]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%679%385$0@%609@@%404%133%411%217%385$2@%451$1@$0@@|@|@@|@"])
  fun op FORALL_LIST x = x
    val op FORALL_LIST =
    DT(((("list",321),
        [("bool",[2,15,25,26,53,54,63]),("list",[45]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%337%155%21$0@|@@%365%21%609@@%288%133%337%217%21%451$1@$0@@|@|@@@"])
  fun op MEM_SPLIT_APPEND_first x = x
    val op MEM_SPLIT_APPEND_first =
    DT(((("list",322),
        [("bool",
         [14,25,26,27,30,31,37,47,51,52,53,54,56,58,63,96,132,133,138,143,
          169,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,101,120,320]),
         ("marker",[9])]),["DISK_THM"]),
       [read"%372%523%74@%571%155@@@%411%207%411%216%365%385%155@%424%424$1@%451%74@%609@@@$0@@@%716%523%74@%571$1@@@@|@|@@"])
  fun op MEM_SPLIT_APPEND_last x = x
    val op MEM_SPLIT_APPEND_last =
    DT(((("list",323),
        [("bool",
         [14,25,26,27,30,31,37,47,51,52,53,54,55,56,58,63,96,106,132,133,
          138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,25,55,101,120,230,260,265,268,269,273,274]),
         ("pred_set",[10,33,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%523%74@%571%155@@@%411%207%411%216%365%385%155@%424%424$1@%451%74@%609@@@$0@@@%716%523%74@%571$0@@@@|@|@@"])
  fun op APPEND_EQ_APPEND x = x
    val op APPEND_EQ_APPEND =
    DT(((("list",324),
        [("bool",
         [14,25,26,27,31,37,47,48,51,52,53,54,55,56,58,63,73,132,133,138,
          143,181]),("ind_type",[33,34]),("list",[1,2,3,4,5,20,101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%385%424%163@%171@@%424%195@%198@@@%679%411%155%365%385%163@%424%195@$0@@@%385%198@%424$0@%171@@@|@@%411%155%365%385%195@%424%163@$0@@@%385%171@%424$0@%198@@@|@@@"])
  fun op APPEND_EQ_CONS x = x
    val op APPEND_EQ_CONS =
    DT(((("list",325),
        [("bool",
         [14,25,26,27,31,37,47,48,51,52,53,54,55,56,58,63,132,133,138,143,
          181]),("ind_type",[33,34]),("list",[1,2,3,4,5,20]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%385%424%163@%171@@%451%133@%217@@@%679%365%385%163@%609@@%385%171@%451%133@%217@@@@%411%193%365%385%163@%451%133@$0@@@%385%217@%424$0@%171@@@|@@@"])
  fun op APPEND_EQ_APPEND_MID x = x
    val op APPEND_EQ_APPEND_MID =
    DT(((("list",326),
        [("bool",
         [14,25,26,27,31,37,47,48,51,52,53,54,55,56,58,63,73,132,133,138,
          143,181]),("ind_type",[33,34]),("list",[1,2,3,4,5,20,42,101]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%372%385%424%424%163@%451%74@%609@@@%171@@%424%195@%198@@@%679%411%155%365%385%195@%424%424%163@%451%74@%609@@@$0@@@%385%171@%424$0@%198@@@|@@%411%155%365%385%163@%424%195@$0@@@%385%198@%424%424$0@%451%74@%609@@@%171@@@|@@@"])
  fun op LUPDATE_SEM x = x
    val op LUPDATE_SEM =
    DT(((("list",328),
        [("arithmetic",[28,37,46,71,93,172,173,180]),
         ("bool",
         [14,25,26,27,36,53,54,56,58,63,64,104,105,124,129,132,133,138,
          181]),("list",[1,2,3,4,5,17,18,22,32,327]),("num",[9]),
         ("numeral",[3,8]),("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%365%288%74%349%200%337%155%397%544%579$2@$1@$0@@@%544$0@@|@|@|@@%288%74%349%200%337%155%349%205%402%367$0@%544$1@@@%369%473$0@%579$3@$2@$1@@@%445%397$0@$2@@$3@%473$0@$1@@@@|@|@|@|@@"])
  fun op EL_LUPDATE x = x
    val op EL_LUPDATE =
    DT(((("list",329),
        [("arithmetic",[28,37,46,71,93,172,173,180]),
         ("bool",
         [14,25,26,27,36,51,53,54,56,58,63,64,104,105,129,132,133,138]),
         ("list",[1,2,3,4,5,17,18,22,32,327]),("numeral",[3,8]),
         ("prim_rec",[1,6,7])]),["DISK_THM"]),
       [read"%337%278%288%250%349%148%349%152%369%473$1@%579$2@$0@$3@@@%445%365%397$1@$0@@%367$0@%544$3@@@@$2@%473$1@$3@@@|@|@|@|@"])
  fun op LENGTH_LUPDATE x = x
    val op LENGTH_LUPDATE =
    DT(((("list",330),[("bool",[25,36,56]),("list",[328])]),["DISK_THM"]),
       [read"%288%250%349%200%337%278%397%544%579$2@$1@$0@@@%544$0@@|@|@|@"])
  fun op LUPDATE_LENGTH x = x
    val op LUPDATE_LENGTH =
    DT(((("list",331),
        [("bool",[14,25,36,56]),("list",[20,22,42,327])]),["DISK_THM"]),
       [read"%337%263%288%250%288%270%337%278%385%579$2@%544$3@@%424$3@%451$1@$0@@@@%424$3@%451$2@$0@@@|@|@|@|@"])
  fun op LUPDATE_SNOC x = x
    val op LUPDATE_SNOC =
    DT(((("list",332),
        [("arithmetic",[28]),("bool",[14,25,26,27,30,36,56,58,64,105,129]),
         ("list",[22,42,256,327]),("num",[7]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%278%349%152%288%250%288%270%385%579$1@$2@%642$0@$3@@@%448%397$2@%544$3@@@%642$1@$3@@%642$0@%579$1@$2@$3@@@@|@|@|@|@"])
  fun op MEM_LUPDATE_E x = x
    val op MEM_LUPDATE_E =
    DT(((("list",333),
        [("arithmetic",[28]),
         ("bool",[14,25,26,27,47,48,52,53,54,56,58,63,93,94,96,105,124]),
         ("list",[25,42,120,327]),("pred_set",[10,80]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%337%155%288%250%288%270%349%148%402%523$2@%571%579$1@$0@$3@@@@%679%369$2@$1@@%523$2@%571$3@@@@|@|@|@|@"])
  fun op MEM_LUPDATE x = x
    val op MEM_LUPDATE =
    DT(((("list",334),
        [("arithmetic",[28,37,313]),
         ("bool",
         [2,14,15,25,26,27,37,51,52,53,54,55,56,58,63,74,75,84,99,169]),
         ("list",[17,22,25,42,128,170,327]),("num",[7]),
         ("pred_set",[10,80]),("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%155%288%250%288%270%349%148%372%523$2@%571%579$1@$0@$3@@@@%679%365%367$0@%544$3@@@%369$2@$1@@@%415%149%365%367$0@%544$4@@@%365%716%397$1@$0@@@%369%473$0@$4@@$3@@@|@@@|@|@|@|@"])
  fun op LUPDATE_compute x = x
    val op LUPDATE_compute =
    DT(((("list",335),
        [("arithmetic",[268]),("bool",[26]),("list",[327])]),["DISK_THM"]),
       [read"%365%288%74%349%200%385%579$1@$0@%609@@%609@|@|@@%365%288%74%288%250%337%155%385%579$2@%366@%451$1@$0@@@%451$2@$0@@|@|@|@@%365%288%74%349%200%288%250%337%155%385%579$3@%623%435$2@@@%451$1@$0@@@%451$1@%579$3@%364%623%435$2@@@%623%435%673@@@@$0@@@|@|@|@|@@%288%74%349%200%288%250%337%155%385%579$3@%623%436$2@@@%451$1@$0@@@%451$1@%579$3@%623%435$2@@@$0@@@|@|@|@|@@@@"])
  fun op LUPDATE_MAP x = x
    val op LUPDATE_MAP =
    DT(((("list",336),
        [("arithmetic",[28]),
         ("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,23,327])]),["DISK_THM"]),
       [read"%288%250%349%200%337%155%295%76%386%584$0@%579$3@$2@$1@@@%580$0$3@@$2@%584$0@$1@@@|@|@|@|@"])
  fun op splitAtPki_APPEND x = x
    val op splitAtPki_APPEND =
    DT(((("list",339),
        [("bool",
         [14,25,26,27,51,53,56,58,63,105,124,129,132,133,138,147,181]),
         ("combin",[5,8]),("list",[1,2,3,4,5,17,20,22,42,337,338]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%337%163%337%171%333%22%328%150%402%365%481%148%694%716@$2$0@@|@$3@@%402%367%366@%544$2@@@$1%544$3@@%514$2@@@@@%370%709$1@$0@%424$3@$2@@@$0$3@$2@@@|@|@|@|@"])
  fun op splitAtPki_EQN x = x
    val op splitAtPki_EQN =
    DT(((("list",340),
        [("arithmetic",[24,25,27,28,30,37,46,59,62,65,71,93,173,177,180]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,71,92,96,101,104,105,
          124,129,147]),("combin",[8]),
         ("list",[17,22,42,128,192,193,194,199,338]),("num",[7]),
         ("numeral",[3,5,8]),("option",[7,10,11]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[15,16])]),["DISK_THM"]),
       [read"%369%711%23@%151@%156@@%708%624%148%365%367$0@%545%156@@@%23$0@%474$0@%156@@@|@@%151%156@%610@@%148%151%655$0@%156@@%470$0@%156@@|@@"])
  fun op TAKE_LENGTH_TOO_LONG x = x
    val op TAKE_LENGTH_TOO_LONG =
    DT(((("list",341),
        [("arithmetic",[24,25,46,71,93,147,172,173,176,177,180,197]),
         ("bool",
         [14,25,26,27,31,36,51,52,53,54,56,58,63,96,101,104,105,124,129,
          132,133,138,147,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,22,42,192]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%337%155%349%200%402%368%544$1@@$0@@%385%654$0@$1@@$1@@|@|@"])
  fun op DROP_LENGTH_TOO_LONG x = x
    val op DROP_LENGTH_TOO_LONG =
    DT(((("list",342),
        [("arithmetic",[24,25,46,71,93,147,172,173,176,177,180,197]),
         ("bool",
         [14,25,26,27,36,52,53,54,56,58,63,96,101,104,105,124,129,147]),
         ("list",[22,42,193]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%337%155%349%200%402%368%544$1@@$0@@%385%469$0@$1@@%609@@|@|@"])
  fun op TAKE_splitAtPki x = x
    val op TAKE_splitAtPki =
    DT(((("list",343),
        [("arithmetic",[24,25,46,59,71,93,173,176,180]),
         ("bool",[25,36,53,54,56,58,63,93,95,96,101,104,105,124,145]),
         ("combin",[8,12]),("list",[340,341]),("numeral",[3,8]),
         ("option",[7]),("while",[15])]),["DISK_THM"]),
       [read"%385%654%200@%155@@%710%695%536@%397%200@@@%540@%155@@"])
  fun op DROP_splitAtPki x = x
    val op DROP_splitAtPki =
    DT(((("list",344),
        [("arithmetic",[24,25,46,59,71,93,173,176,180]),
         ("bool",[25,36,53,54,56,58,63,93,95,96,101,104,105,124,145]),
         ("combin",[8,12,19]),("list",[340,342]),("numeral",[3,8]),
         ("option",[7]),("while",[15])]),["DISK_THM"]),
       [read"%385%469%200@%155@@%710%695%536@%397%200@@@%538%516@@%155@@"])
  fun op LIST_BIND_THM x = x
    val op LIST_BIND_THM =
    DT(((("list",346),
        [("bool",[25,51,56]),("list",[21,23,345])]),["DISK_THM"]),
       [read"%365%385%556%610@%95@@%609@@%385%556%452%134@%218@@%95@@%424%95%134@@%556%218@%95@@@@"])
  fun op LIST_BIND_ID x = x
    val op LIST_BIND_ID =
    DT(((("list",348),
        [("bool",[25,51,56]),("list",[59,345])]),["DISK_THM"]),
       [read"%365%385%560%158@%255$0|@@%490%158@@@%385%560%158@%516@@%490%158@@@"])
  fun op LIST_BIND_APPEND x = x
    val op LIST_BIND_APPEND =
    DT(((("list",349),
        [("bool",[14,25,26,36,53,56,132,133,138]),
         ("list",[1,2,3,4,5,20,56,346])]),["DISK_THM"]),
       [read"%385%556%425%164@%172@@%95@@%424%556%164@%95@@%556%172@%95@@@"])
  fun op LIST_BIND_MAP x = x
    val op LIST_BIND_MAP =
    DT(((("list",350),
        [("bool",[14,25,26,36,53,56,132,133,138]),("combin",[8]),
         ("list",[1,2,3,4,5,23,346])]),["DISK_THM"]),
       [read"%385%556%594%98@%157@@%127@@%557%157@%692%127@%98@@@"])
  fun op MAP_LIST_BIND x = x
    val op MAP_LIST_BIND =
    DT(((("list",351),
        [("bool",[14,25,26,36,53,56,132,133,138]),("combin",[8]),
         ("list",[1,2,3,4,5,23,58,346])]),["DISK_THM"]),
       [read"%385%587%88@%558%157@%128@@@%557%157@%698%587%88@@%128@@@"])
  fun op LIST_BIND_LIST_BIND x = x
    val op LIST_BIND_LIST_BIND =
    DT(((("list",352),
        [("bool",[14,25,26,36,53,56,132,133,138]),("combin",[8,16]),
         ("list",[1,2,3,4,5,346,349])]),["DISK_THM"]),
       [read"%385%556%558%157@%128@@%95@@%557%157@%698%441%556@%95@@%128@@@"])
  fun op SINGL_LIST_APPLY_L x = x
    val op SINGL_LIST_APPLY_L =
    DT(((("list",353),[("bool",[25,56]),("list",[55,346])]),["DISK_THM"]),
       [read"%385%556%452%251@%610@@%95@@%95%251@@"])
  fun op SINGL_LIST_APPLY_R x = x
    val op SINGL_LIST_APPLY_R =
    DT(((("list",354),
        [("bool",[14,25,26,31,36,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,20,346])]),["DISK_THM"]),
       [read"%385%555%155@%250%451$0@%609@|@@%155@"])
  fun op SINGL_APPLY_MAP x = x
    val op SINGL_APPLY_MAP =
    DT(((("list",357),
        [("bool",[25,56]),("combin",[16]),
         ("list",[353,355])]),["DISK_THM"]),
       [read"%385%549%459%88@%614@@%156@@%587%88@%156@@"])
  fun op SINGL_SINGL_APPLY x = x
    val op SINGL_SINGL_APPLY =
    DT(((("list",358),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("combin",[16]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,23,353,355])]),["DISK_THM"]),
       [read"%385%549%459%88@%614@@%452%251@%610@@@%451%88%251@@%609@@"])
  fun op SINGL_APPLY_PERMUTE x = x
    val op SINGL_APPLY_PERMUTE =
    DT(((("list",359),
        [("bool",[14,25,26,31,36,51,53,56,63,132,133,138,181]),
         ("combin",[16]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,21,23,345,353,355])]),["DISK_THM"]),
       [read"%385%549%122@%452%251@%610@@@%552%460%88$0%251@|@%615@@%122@@"])
  fun op MAP_FLAT x = x
    val op MAP_FLAT =
    DT(((("list",360),
        [("bool",[14,25,26,36,53,56,132,133,138]),
         ("list",[1,2,3,4,5,21,23,58])]),["DISK_THM"]),
       [read"%385%587%88@%491%159@@@%490%596%587%88@@%159@@@"])
  fun op LIST_APPLY_o x = x
    val op LIST_APPLY_o =
    DT(((("list",361),
        [("bool",[14,25,26,36,53,56,132,133,138]),("combin",[5,16]),
         ("list",
         [1,2,3,4,5,23,66,104,346,349,350,351,353,355])]),["DISK_THM"]),
       [read"%385%549%553%554%461%693@%616@@%123@@%132@@%264@@%551%123@%550%132@%264@@@"])
  fun op LLEX_THM x = x
    val op LLEX_THM =
    DT(((("list",363),
        [("bool",
         [5,14,25,26,27,30,31,47,52,53,54,56,58,63,64,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,6,362])]),["DISK_THM"]),
       [read"%365%365%716%577%31@%609@%609@@@%716%577%31@%451%141@%227@@%609@@@@%365%577%31@%609@%451%144@%230@@@%372%577%31@%451%141@%227@@%451%144@%230@@@%679%31%141@%144@@%365%369%141@%144@@%577%31@%227@%230@@@@@@"])
  fun op LLEX_MONO x = x
    val op LLEX_MONO =
    DT(((("list",364),
        [("bool",
         [14,25,26,27,36,47,48,51,52,53,54,56,58,63,94,105,124,132,133,138,
          181]),("combin",[19]),("list",[1,2,3,4,5,363]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%402%288%250%288%270%402%35$1@$0@@%37$1@$0@@|@|@@%402%577%35@%255@%275@@%577%37@%255@%275@@@"])
  fun op LLEX_CONG x = x
    val op LLEX_CONG =
    DT(((("list",365),
        [("bool",
         [2,5,14,15,25,26,27,30,31,47,51,52,53,54,55,56,58,63,64,73,75,99,
          100,105,124,132,133,138,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,6,42,120,362,363]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%299%31%337%163%337%171%299%34%337%169%337%177%402%365%385$4@$1@@%365%385$3@$0@@%288%41%288%59%402%365%523$1@%571$3@@@%523$0@%571$2@@@@%372$7$1@$0@@$4$1@$0@@@|@|@@@@%372%577$5@$4@$3@@%577$2@$1@$0@@@|@|@|@|@|@|@"])
  fun op LLEX_NIL2 x = x
    val op LLEX_NIL2 =
    DT(((("list",366),
        [("bool",
         [5,14,25,26,27,30,31,47,52,53,54,56,58,63,64,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,6,362])]),["DISK_THM"]),
       [read"%716%577%31@%155@%609@@"])
  fun op LLEX_transitive x = x
    val op LLEX_transitive =
    DT(((("list",367),
        [("bool",
         [5,14,25,26,27,30,31,36,47,51,52,53,54,55,56,58,63,64,93,95,96,
          101,105,124,132,133,138,145,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,6,42,362]),("relation",[0]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%402%714%31@@%715%577%31@@@"])
  fun op LLEX_total x = x
    val op LLEX_total =
    DT(((("list",368),
        [("bool",
         [5,14,25,26,27,30,31,47,51,52,53,54,55,56,58,63,64,93,95,101,105,
          124,132,133,138,145,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,6,42,362]),("relation",[6,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%402%712%631%31@@@%713%632%577%31@@@@"])
  fun op LLEX_not_WF x = x
    val op LLEX_not_WF =
    DT(((("list",369),
        [("bool",
         [5,14,25,26,27,30,31,47,51,52,53,54,56,58,63,64,71,72,81,86,92,96,
          101,105,124,132,133,138,143,145,146,181]),("combin",[12,21]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,6,20,292,295,362]),
         ("num",[9]),("relation",[100])]),["DISK_THM"]),
       [read"%402%404%41%404%59%31$1@$0@|@|@@%716%671%577%31@@@@"])
  fun op nub_set x = x
    val op nub_set =
    DT(((("list",371),
        [("bool",[14,25,26,27,30,36,53,54,56,63,64]),
         ("list",[25,42,120,370]),("pred_set",[3,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%155%373%571%686$0@@@%571$0@@|@"])
  fun op all_distinct_nub x = x
    val op all_distinct_nub =
    DT(((("list",372),
        [("bool",[14,25,26,27,30,36,51,53,54,56,63,64]),
         ("list",[25,42,120,215,370]),("pred_set",[3,10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%155%420%686$0@@|@"])
  fun op nub_append x = x
    val op nub_append =
    DT(((("list",373),
        [("bool",
         [14,25,26,27,30,31,36,48,51,53,54,56,58,63,64,96,100,105,124,129,
          132,133,138,181]),("combin",[3,5]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,25,27,81,120,370]),("pred_set",[10]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%337%171%385%686%424$1@$0@@@%424%686%486%250%716%523$0@%571$1@@@|@$1@@@%686$0@@@|@|@"])
  fun op list_to_set_diff x = x
    val op list_to_set_diff =
    DT(((("list",374),
        [("bool",[14,25,26,27,30,53,54,56,58,63,64,105,129,132,133,138]),
         ("list",[1,2,3,4,5,25,27]),("pred_set",[70,99])]),["DISK_THM"]),
       [read"%337%163%337%171%373%467%571$0@@%571$1@@@%571%486%250%716%523$0@%571$2@@@|@$0@@@|@|@"])
  fun op length_nub_append x = x
    val op length_nub_append =
    DT(((("list",375),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,269]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,83,93,96,101,104,
          105,169]),("combin",[3,5]),
         ("list",[25,42,120,230,233,238,370,372,374]),("numeral",[3,8]),
         ("pred_set",[3,10,49,211,213,219]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%337%171%397%544%686%424$1@$0@@@@%352%544%686$1@@@%544%686%486%250%716%523$0@%571$2@@@|@$0@@@@@|@|@"])
  fun op ALL_DISTINCT_DROP x = x
    val op ALL_DISTINCT_DROP =
    DT(((("list",376),
        [("bool",[14,25,26,27,30,36,51,53,54,58,63,64,105,124]),
         ("list",[42,193,215])]),["DISK_THM"]),
       [read"%337%186%349%200%402%420$1@@%420%469$0@$1@@@|@|@"])
  fun op EXISTS_LIST_EQ_MAP x = x
    val op EXISTS_LIST_EQ_MAP =
    DT(((("list",377),
        [("bool",
         [14,25,26,27,31,36,51,53,54,56,58,63,105,124,132,133,138,140,
          181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,23,30,42,49,50])]),["DISK_THM"]),
       [read"%337%186%308%88%402%477%250%405%271%369$1@$2$0@@|@|@$1@@%412%156%385$2@%587$1@$0@@|@@|@|@"])
  fun op LIST_TO_SET_FLAT x = x
    val op LIST_TO_SET_FLAT =
    DT(((("list",378),
        [("bool",[14,25,36,56]),("list",[21,23,25,42,230]),
         ("pred_set",[246,251])]),["DISK_THM"]),
       [read"%345%188%373%571%490$0@@@%432%573%595%571@$0@@@@|@"])
  fun op MEM_APPEND_lemma x = x
    val op MEM_APPEND_lemma =
    DT(((("list",379),
        [("bool",
         [14,25,26,27,31,47,51,52,53,54,56,58,63,96,105,124,132,133,138,
          181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,55,81,101,103,120,326])]),["DISK_THM"]),
       [read"%337%44%337%62%337%71%337%73%288%250%402%365%385%424%424$4@%451$0@%609@@@$3@@%424%424$2@%451$0@%609@@@$1@@@%365%716%523$0@%571$3@@@@%716%523$0@%571$4@@@@@@%365%385$4@$2@@%385$3@$1@@@|@|@|@|@|@"])
  fun op EVERY2_REVERSE x = x
    val op EVERY2_REVERSE =
    DT(((("list",380),
        [("arithmetic",[24,25,27,41,46,59,66,71,93,172,173,180,195,269]),
         ("bool",
         [25,26,36,43,51,52,54,56,58,63,86,93,95,96,101,104,105,124,145]),
         ("list",[71,165,178,212,304]),("numeral",[3,8]),
         ("pair",[4,16,25])]),["DISK_THM"]),
       [read"%302%32%337%163%338%172%402%564$2@$1@$0@@%564$2@%635$1@@%636$0@@@|@|@|@"])
  fun op SUM_MAP_PLUS x = x
    val op SUM_MAP_PLUS =
    DT(((("list",381),
        [("arithmetic",[22,25,26,27,91]),("bool",[14,25,36,56,58]),
         ("list",[19,23,42])]),["DISK_THM"]),
       [read"%307%87%307%125%337%186%397%650%586%250%352$3$0@@$2$0@@|@$0@@@%352%650%586$2@$0@@@%650%586$1@$0@@@@|@|@|@"])
  fun op TAKE_LENGTH_ID_rwt x = x
    val op TAKE_LENGTH_ID_rwt =
    DT(((("list",383),
        [("bool",[25,53,56,58,105,124]),("list",[195])]),["DISK_THM"]),
       [read"%337%155%349%194%402%397$0@%544$1@@@%385%654$0@$1@@$1@@|@|@"])
  fun op ZIP_DROP x = x
    val op ZIP_DROP =
    DT(((("list",384),
        [("arithmetic",
         [24,25,26,46,64,71,79,93,147,172,173,176,177,180,198]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129,132,133,138,147,181]),
         ("list",[1,2,3,4,5,22,42,91,156,193,199]),("numeral",[3,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%337%44%338%63%349%200%402%365%368$0@%544$2@@@%397%544$2@@%545$1@@@@%394%675%359%469$0@$2@@%470$0@$1@@@@%472$0@%675%359$2@$1@@@@@|@|@|@"])
  fun op GENLIST_EL x = x
    val op GENLIST_EL =
    DT(((("list",385),
        [("bool",[25,36,51,53,56,58,63,105,124]),
         ("list",[109,276,283])]),["DISK_THM"]),
       [read"%337%186%331%101%349%200%402%365%397$0@%544$2@@@%349%148%402%367$0@$1@@%369$2$0@@%473$0@$3@@@|@@@%385%508$1@$0@@$2@@|@|@|@"])
  fun op EVERY2_trans x = x
    val op EVERY2_trans =
    DT(((("list",386),
        [("bool",[25,26,51,53,54,56,58,63,86,93,95,101,105,124,145]),
         ("list",[71,165,212]),("pair",[4,16,25]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%402%288%250%288%270%288%284%402%365%31$2@$1@@%31$1@$0@@@%31$2@$0@@|@|@|@@%337%255%337%275%337%286%402%365%563%31@$2@$1@@%563%31@$1@$0@@@%563%31@$2@$0@@|@|@|@@"])
  fun op EVERY2_sym x = x
    val op EVERY2_sym =
    DT(((("list",387),
        [("bool",[25,26,51,56,58,63,86,93,95,101,105,124,145]),
         ("list",[71,165,212]),("pair",[4,16,25])]),["DISK_THM"]),
       [read"%402%288%250%289%271%402%36$1@$0@@%39$0@$1@@|@|@@%337%255%338%276%402%564%36@$1@$0@@%566%39@$0@$1@@|@|@@"])
  fun op EVERY2_LUPDATE_same x = x
    val op EVERY2_LUPDATE_same =
    DT(((("list",388),
        [("arithmetic",[28]),
         ("bool",[14,25,26,27,51,53,58,63,105,124,132,133,138,181]),
         ("list",[1,2,3,4,5,42,139,141,327])]),["DISK_THM"]),
       [read"%302%13%337%163%338%172%288%240%289%242%349%200%402%365$5$2@$1@@%564$5@$4@$3@@@%564$5@%579$2@$0@$4@@%580$1@$0@$3@@@|@|@|@|@|@|@"])
  fun op EVERY2_refl x = x
    val op EVERY2_refl =
    DT(((("list",389),
        [("bool",[14,25,26,27,36,51,53,56,58,63,105,124,132,133,138]),
         ("list",[1,2,3,4,5,120,139])]),["DISK_THM"]),
       [read"%402%288%250%402%523$0@%571%186@@@%31$0@$0@@|@@%563%31@%186@%186@@"])
  fun op EVERY2_THM x = x
    val op EVERY2_THM =
    DT(((("list",390),
        [("bool",
         [14,25,26,27,31,37,47,51,53,54,56,58,63,132,133,138,143,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,139,141,212])]),["DISK_THM"]),
       [read"%365%302%13%338%279%372%564$1@%609@$0@@%386$0@%610@@|@|@@%365%320%15%340%283%290%252%339%265%372%568$3@%453$1@$0@@$2@@%406%273%413%281%365%388$4@%454$1@$0@@@%365$5$3@$1@@%568$5@$2@$0@@@|@|@@|@|@|@|@@%365%322%16%341%266%372%569$1@$0@%613@@%389$0@%612@@|@|@@%323%17%342%269%293%274%343%282%372%570$3@$2@%458$1@$0@@@%407%253%414%267%365%391$4@%457$1@$0@@@%365$5$1@$3@@%570$5@$0@$2@@@|@|@@|@|@|@|@@@@"])
  fun op LIST_REL_trans x = x
    val op LIST_REL_trans =
    DT(((("list",391),
        [("arithmetic",[37]),
         ("bool",
         [14,25,26,27,31,36,51,53,56,58,63,101,105,124,132,133,138,143,145,
          181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,17,22,42,128,141,142]),
         ("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%337%163%337%171%337%181%402%365%349%200%402%365%367$0@%544$3@@@%365%31%473$0@$3@@%473$0@$2@@@%31%473$0@$2@@%473$0@$1@@@@@%31%473$0@$3@@%473$0@$1@@@|@@%365%563%31@$2@$1@@%563%31@$1@$0@@@@%563%31@$2@$0@@|@|@|@"])
  fun op SWAP_REVERSE x = x
    val op SWAP_REVERSE =
    DT(((("list",392),
        [("bool",[25,51,53,56,58,105,106,124]),
         ("list",[175])]),["DISK_THM"]),
       [read"%337%163%337%171%372%385$1@%635$0@@@%385$0@%635$1@@@|@|@"])
  fun op SWAP_REVERSE_SYM x = x
    val op SWAP_REVERSE_SYM =
    DT(((("list",393),
        [("bool",[25,26,53,54,55,63]),("list",[392]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%163%337%171%372%385%635$1@@$0@@%385$1@%635$0@@@|@|@"])
  fun op BIGUNION_IMAGE_set_SUBSET x = x
    val op BIGUNION_IMAGE_set_SUBSET =
    DT(((("list",394),
        [("bool",[25,26,53,54,58,63,81,86,87,105,124,143]),
         ("pred_set",[18,144,244]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%372%648%432%519%91@%572%187@@@@%211@@%289%251%402%524$0@%572%187@@@%648%91$0@@%211@@|@@"])
  fun op IMAGE_EL_count_LENGTH x = x
    val op IMAGE_EL_count_LENGTH =
    DT(((("list",395),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,77,78,80,81,84,93,
          94,96]),("list",[170]),("pred_set",[3,144,296]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%295%76%337%186%375%521%200$2%473$0@$1@@|@%680%544$0@@@@%517$1@%571$0@@@|@|@"])
  fun op GENLIST_EL_MAP x = x
    val op GENLIST_EL_MAP =
    DT(((("list",396),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),("combin",[5]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,17,22,23,42,128,292,295])]),["DISK_THM"]),
       [read"%295%76%337%186%386%509%200$2%473$0@$1@@|@%544$0@@@%584$1@$0@@|@|@"])
  fun op LENGTH_FILTER_LEQ_MONO x = x
    val op LENGTH_FILTER_LEQ_MONO =
    DT(((("list",397),
        [("arithmetic",[24,25,27,38,46,71,93,173,176,180]),
         ("bool",
         [14,25,26,27,30,36,47,48,53,54,56,63,64,94,96,101,104,105]),
         ("combin",[19]),("list",[22,27,42]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%297%12%297%28%402%288%250%402$2$0@@$1$0@@|@@%337%186%368%544%486$2@$0@@@%544%486$1@$0@@@|@@|@|@"])
  fun op LIST_EQ_MAP_PAIR x = x
    val op LIST_EQ_MAP_PAIR =
    DT(((("list",398),
        [("bool",[2,15,25,26,51,53,54,55,56,58,63,86,105,124]),
         ("list",[71,109,165,211,212]),("pair",[4,6,8,9,16,25]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%348%168%348%176%402%365%385%599%505@$1@@%599%505@$0@@@%386%600%639@$1@@%600%639@$0@@@@%394$1@$0@@|@|@"])
  fun op TAKE_SUM x = x
    val op TAKE_SUM =
    DT(((("list",399),
        [("arithmetic",
         [22,24,25,26,27,28,46,62,64,65,71,79,93,147,172,173,176,177,180,
          269]),
         ("bool",
         [14,25,26,27,30,31,36,43,47,48,51,52,53,54,56,58,63,64,93,96,101,
          104,105,124,129,132,133,138,147,181]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,22,101,192,193,194,199]),
         ("numeral",[3,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%349%200%349%194%337%155%402%368%352$2@$1@@%544$0@@@%385%654%352$2@$1@@$0@@%424%654$2@$0@@%654$1@%469$2@$0@@@@@|@|@|@"])
  fun op ALL_DISTINCT_FILTER_EL_IMP x = x
    val op ALL_DISTINCT_FILTER_EL_IMP =
    DT(((("list",400),
        [("arithmetic",[28,37]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,72,93,94,96,
          105,124]),("combin",[19]),("list",[17,22,27,42,82,128,170,215]),
         ("num",[7]),("prim_rec",[1,6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%297%12%337%155%349%201%349%202%402%365%420%486$3@$2@@@%365%367$1@%544$2@@@%365%367$0@%544$2@@@%365$3%473$1@$2@@@%369%473$1@$2@@%473$0@$2@@@@@@@%397$1@$0@@|@|@|@|@"])
  fun op FLAT_EQ_NIL x = x
    val op FLAT_EQ_NIL =
    DT(((("list",401),
        [("bool",[14,25,51,53,56,58,63,105,106,124]),
         ("list",[21,30,42,101])]),["DISK_THM"]),
       [read"%345%188%372%385%490$0@@%609@@%479%385%609@@$0@@|@"])
  fun op ALL_DISTINCT_MAP_INJ x = x
    val op ALL_DISTINCT_MAP_INJ =
    DT(((("list",402),
        [("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,77,93,
          94,96,105,124,146]),("combin",[19]),("list",[23,42,89,120,215]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%337%186%295%76%402%365%288%250%288%270%402%365%523$1@%571$3@@@%365%523$0@%571$3@@@%370$2$1@@$2$0@@@@@%369$1@$0@@|@|@@%420$1@@@%421%584$0@$1@@@|@|@"])
  fun op LENGTH_o_REVERSE x = x
    val op LENGTH_o_REVERSE =
    DT(((("list",403),
        [("bool",[25,36,56,60]),("combin",[8]),
         ("list",[178])]),["DISK_THM"]),
       [read"%365%382%697%544@%635@@%544@@%376%702%546@%701%637@%96@@@%702%546@%96@@@"])
  fun op REVERSE_o_REVERSE x = x
    val op REVERSE_o_REVERSE =
    DT(((("list",404),
        [("bool",[25,36,56,60]),("combin",[8]),
         ("list",[175])]),["DISK_THM"]),
       [read"%374%699%636@%699%636@%86@@@%86@"])
  fun op GENLIST_PLUS_APPEND x = x
    val op GENLIST_PLUS_APPEND =
    DT(((("list",405),
        [("arithmetic",[25,26,27]),("bool",[14,25,56,169]),("list",[287]),
         ("marker",[9])]),["DISK_THM"]),
       [read"%392%428%510%352%46@@%201@@%510%352%352%201@%46@@@%202@@@%510%352%46@@%352%201@%202@@@"])
  fun op LIST_TO_SET_GENLIST x = x
    val op LIST_TO_SET_GENLIST =
    DT(((("list",406),
        [("bool",[25,26,47,48,53,54,58,63,72,76,80,81,96]),("list",[296]),
         ("pred_set",[3,144,296]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%331%101%349%200%373%571%508$1@$0@@@%520$1@%680$0@@@|@|@"])
  fun op MEM_ZIP_MEM_MAP x = x
    val op MEM_ZIP_MEM_MAP =
    DT(((("list",407),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,94,96,105,124]),
         ("list",[165,170]),("pair",[4,5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%402%365%397%544%506%209@@@%545%640%209@@@@%527%206@%576%675%209@@@@@%365%523%505%206@@%571%506%209@@@@%524%639%206@@%572%640%209@@@@@"])
  fun op DISJOINT_GENLIST_PLUS x = x
    val op DISJOINT_GENLIST_PLUS =
    DT(((("list",408),
        [("arithmetic",[25]),("bool",[25,53,54,58,63,105,124]),
         ("list",[230,405]),("pred_set",[59,64]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%402%468%254@%575%510%352%200@@%352%46@%64@@@@@%365%468%254@%575%510%352%200@@%46@@@@%468%254@%575%510%352%352%200@%46@@@%64@@@@@"])
  fun op EVERY2_MAP x = x
    val op EVERY2_MAP =
    DT(((("list",409),
        [("bool",
         [25,26,27,30,47,48,51,52,53,54,56,58,63,71,76,77,78,80,81,86,92,
          93,94,95,96,101,105,124,145]),("list",[60,71,89,164,212]),
         ("pair",[4,8,9,16,25]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%365%372%564%13@%593%97@%165@@%172@@%567%252%271%13%97$1@@$0@||@%165@%172@@@%372%568%30@%165@%589%126@%172@@@%567%252%271%30$1@%126$0@@||@%165@%172@@@"])
  fun op exists_list_GENLIST x = x
    val op exists_list_GENLIST =
    DT(((("list",410),
        [("bool",[25,26,36,47,48,51,53,54,56,58,63,72,105,106,124]),
         ("combin",[16]),("list",[109,276,283]),("marker",[6]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%372%411%186%21$0@|@@%415%200%410%101%21%508$0@$1@@|@|@@"])
  fun op EVERY_MEM_MONO x = x
    val op EVERY_MEM_MONO =
    DT(((("list",411),
        [("bool",[14,25,27,36,51,53,56,58,63,105,124]),
         ("list",[30,42,120])]),["DISK_THM"]),
       [read"%297%12%297%28%337%155%402%365%288%250%402%365%523$0@%571$1@@@$3$0@@@$2$0@@|@@%477$2@$0@@@%477$1@$0@@|@|@|@"])
  fun op EVERY2_MEM_MONO x = x
    val op EVERY2_MEM_MONO =
    DT(((("list",412),
        [("bool",
         [25,26,36,43,47,48,51,53,54,56,58,63,71,72,77,93,94,96,105,124,
          146]),("combin",[19]),("list",[212,411]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%302%13%302%29%337%163%338%172%402%365%350%258%402%365%527$0@%576%675%359$2@$1@@@@@%661$4@$0@@@%661$3@$0@@|@@%564$3@$1@$0@@@%564$2@$1@$0@@|@|@|@|@"])
  fun op mem_exists_set x = x
    val op mem_exists_set =
    DT(((("list",413),
        [("bool",[14,25,26,27,53,54,55,58,63,99,105,124,132,133,138]),
         ("list",[1,2,3,4,5,120]),("pair",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%288%250%289%271%348%161%402%527%354$2@$1@@%576$0@@@%416%287%365%369$3@%505$0@@@%527$0@%576$1@@@|@@|@|@|@"])
  fun op every_zip_snd x = x
    val op every_zip_snd =
    DT(((("list",414),
        [("bool",[14,25,26,27,53,56,58,63,105,124,132,133,138,181]),
         ("list",[1,2,3,4,5,22,30,156]),("num",[7]),("pair",[9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%311%14%402%397%544$2@@%545$1@@@%372%480%258$1%639$0@@|@%675%359$2@$1@@@@%478$0@$1@@@|@|@|@"])
  fun op every_zip_fst x = x
    val op every_zip_fst =
    DT(((("list",415),
        [("bool",[14,25,26,27,53,56,58,63,105,124,132,133,138,181]),
         ("list",[1,2,3,4,5,22,30,156]),("num",[7]),("pair",[8]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%297%12%402%397%544$2@@%545$1@@@%372%480%258$1%505$0@@|@%675%359$2@$1@@@@%477$0@$2@@@|@|@|@"])
  fun op el_append3 x = x
    val op el_append3 =
    DT(((("list",416),
        [("bool",[14,25,26,53,56,132,133,138]),
         ("list",[1,2,3,4,5,17,20,22,128])]),["DISK_THM"]),
       [read"%337%163%288%250%337%171%369%473%544$2@@%424%424$2@%451$1@%609@@@$0@@@$1@|@|@|@"])
  fun op lupdate_append x = x
    val op lupdate_append =
    DT(((("list",417),
        [("arithmetic",[28,37]),
         ("bool",[14,25,26,27,31,51,53,56,58,63,105,124,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,20,22,327]),
         ("prim_rec",[6])]),["DISK_THM"]),
       [read"%288%250%349%200%337%163%337%171%402%367$2@%544$1@@@%385%579$3@$2@%424$1@$0@@@%424%579$3@$2@$1@@$0@@@|@|@|@|@"])
  fun op lupdate_append2 x = x
    val op lupdate_append2 =
    DT(((("list",418),
        [("bool",[14,25,26,31,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,22,327])]),["DISK_THM"]),
       [read"%288%234%337%163%288%250%337%171%289%180%385%579$4@%544$3@@%424%424$3@%451$2@%609@@@$1@@@%424%424$3@%451$4@%609@@@$1@@|@|@|@|@|@"])
  fun op LAST_REVERSE x = x
    val op LAST_REVERSE =
    DT(((("list",419),
        [("bool",
         [14,25,26,27,31,36,47,53,54,56,58,63,105,124,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,17,42,173,184,191])]),["DISK_THM"]),
       [read"%337%186%402%716%385$0@%609@@@%369%541%635$0@@@%514$0@@@|@"])
  fun op dropWhile_splitAtPki x = x
    val op dropWhile_splitAtPki =
    DT(((("list",421),
        [("bool",
         [14,25,26,27,30,31,36,51,53,54,56,58,60,63,64,105,129,132,133,138,
          181]),("combin",[8,12,16,19]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,42,338,420]),("marker",[6]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%297%12%380%681$0@@%710%439%696%537@%694%716@$0@@@@%538%516@@@|@"])
  fun op dropWhile_eq_nil x = x
    val op dropWhile_eq_nil =
    DT(((("list",422),
        [("bool",
         [14,25,26,27,30,31,47,51,53,54,56,58,63,64,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,30,42,420])]),["DISK_THM"]),
       [read"%297%12%337%186%372%385%681$1@$0@@%609@@%477$1@$0@@|@|@"])
  fun op MEM_dropWhile_IMP x = x
    val op MEM_dropWhile_IMP =
    DT(((("list",423),
        [("bool",[14,25,26,27,30,52,53,54,58,63,64,105,124]),
         ("list",[25,42,120,420]),("pred_set",[10])]),["DISK_THM"]),
       [read"%297%12%337%186%288%250%402%523$0@%571%681$2@$1@@@@%523$0@%571$1@@@|@|@|@"])
  fun op HD_dropWhile x = x
    val op HD_dropWhile =
    DT(((("list",424),
        [("bool",[14,25,26,27,30,52,53,54,58,63,64,105,124]),
         ("combin",[8]),("list",[17,31,42,420])]),["DISK_THM"]),
       [read"%297%12%337%186%402%482%694%716@$1@@$0@@%716$1%514%681$1@$0@@@@@|@|@"])
  fun op LENGTH_dropWhile_LESS_EQ x = x
    val op LENGTH_dropWhile_LESS_EQ =
    DT(((("list",425),
        [("arithmetic",[24,25,27,38,46,71,93,95,147,173,176,180]),
         ("bool",[14,25,26,27,30,36,54,56,63,64,96,101,104,105]),
         ("list",[22,42,420]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%297%12%337%186%368%544%681$1@$0@@@%544$0@@|@|@"])
  fun op dropWhile_APPEND_EVERY x = x
    val op dropWhile_APPEND_EVERY =
    DT(((("list",426),
        [("bool",[14,25,36,53,56,58,63,105,124,129,147]),
         ("list",[20,30,42,420])]),["DISK_THM"]),
       [read"%297%12%337%163%337%171%402%477$2@$1@@%385%681$2@%424$1@$0@@@%681$2@$0@@@|@|@|@"])
  fun op dropWhile_APPEND_EXISTS x = x
    val op dropWhile_APPEND_EXISTS =
    DT(((("list",427),
        [("bool",
         [14,25,26,27,30,31,36,51,52,53,54,56,58,63,64,105,124,132,133,138,
          147,181]),("combin",[8]),("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,31,42,420])]),["DISK_THM"]),
       [read"%297%12%337%163%337%171%402%482%694%716@$2@@$1@@%385%681$2@%424$1@$0@@@%424%681$2@$1@@$0@@@|@|@|@"])
  fun op EL_LENGTH_dropWhile_REVERSE x = x
    val op EL_LENGTH_dropWhile_REVERSE =
    DT(((("list",428),
        [("arithmetic",[22,25,28,37,46,64,71,93,147,173,176,180]),
         ("bool",[14,25,26,27,30,36,51,53,54,56,58,63,104,105,124,129]),
         ("list",[17,22,30,42,57,85,87,90,128,173,420,422,426,427]),
         ("numeral",[3,8]),("prim_rec",[6,7])]),["DISK_THM"]),
       [read"%297%12%337%186%349%152%402%365%368%544%681$2@%635$1@@@@$0@@%367$0@%544$1@@@@$2%473$0@$1@@@|@|@|@"])
  fun op LENGTH_TAKE_EQ x = x
    val op LENGTH_TAKE_EQ =
    DT(((("list",429),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180]),
         ("bool",[25,26,27,30,36,54,56,58,63,64,96,101,104,105]),
         ("list",[196,341]),("numeral",[3,5,8])]),["DISK_THM"]),
       [read"%397%544%654%200@%263@@@%449%368%200@%544%263@@@%200@%544%263@@@"])
  fun op IMP_EVERY_LUPDATE x = x
    val op IMP_EVERY_LUPDATE =
    DT(((("list",430),
        [("arithmetic",[28]),("bool",[14,25,36,51,53,58,63,105,124]),
         ("list",[30,42,327])]),["DISK_THM"]),
       [read"%337%263%288%133%349%148%402%365%12$1@@%477%12@$2@@@%477%12@%579$1@$0@$2@@@|@|@|@"])
  fun op MAP_APPEND_MAP_EQ x = x
    val op MAP_APPEND_MAP_EQ =
    DT(((("list",431),
        [("bool",[14,25,26,27,31,36,48,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),
         ("list",[1,2,3,4,5,20,23,42])]),["DISK_THM"]),
       [read"%337%263%338%279%372%387%426%585%114@$1@@%588%130@$0@@@%426%585%117@$1@@%588%131@$0@@@@%365%387%585%114@$1@@%585%117@$1@@@%387%588%130@$0@@%588%131@$0@@@@|@|@"])
  fun op LUPDATE_SOME_MAP x = x
    val op LUPDATE_SOME_MAP =
    DT(((("list",432),
        [("arithmetic",[28]),
         ("bool",[14,25,26,31,36,51,53,56,63,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,23,42,327]),
         ("option",[10,13])]),["DISK_THM"]),
       [read"%347%268%349%200%295%76%288%133%393%582%646$1$0@@@$2@%597%625$1@@$3@@@%597%625$1@@%581%645$0@@$2@$3@@@|@|@|@|@"])
  fun op ZIP_EQ_NIL x = x
    val op ZIP_EQ_NIL =
    DT(((("list",433),
        [("bool",
         [14,25,26,27,31,47,51,53,54,56,58,63,105,124,132,133,138,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,22,91,156]),("num",[7]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%337%163%338%172%402%397%544$1@@%545$0@@@%372%394%675%359$1@$0@@@%619@@%365%385$1@%609@@%386$0@%610@@@@|@|@"])
  fun op LUPDATE_SAME x = x
    val op LUPDATE_SAME =
    DT(((("list",434),
        [("bool",[25,26,27,30,51,56,58,63,64,105,124,129]),
         ("list",[109,329,330])]),["DISK_THM"]),
       [read"%349%200%337%186%402%367$1@%544$0@@@%385%579%473$1@$0@@$1@$0@@$0@@|@|@"])
  fun op LAST_compute x = x
    val op LAST_compute =
    DT(((("list",435),[("bool",[25,56]),("list",[182,184])]),["DISK_THM"]),
       [read"%365%288%250%369%541%451$0@%609@@@$0@|@@%289%142%289%145%338%218%370%542%452$2@%452$1@$0@@@@%542%452$1@$0@@@|@|@|@@"])
  fun op TAKE_compute x = x
    val op TAKE_compute =
    DT(((("list",436),
        [("arithmetic",[65,268]),
         ("bool",
         [14,25,26,27,31,43,51,53,56,58,63,105,129,132,133,138,147,181]),
         ("ind_type",[33,34]),("list",[1,2,3,4,5,192,194]),
         ("num",[7])]),["DISK_THM"]),
       [read"%365%337%155%385%654%366@$0@@%609@|@@%365%349%200%386%655%623%435$0@@@%610@@%610@|@@%365%349%200%386%655%623%436$0@@@%610@@%610@|@@%365%349%200%290%135%339%219%387%656%623%435$2@@@%453$1@$0@@@%453$1@%656%364%623%435$2@@@%623%435%673@@@@$0@@@|@|@|@@%349%200%290%135%339%219%387%656%623%436$2@@@%453$1@$0@@@%453$1@%656%623%435$2@@@$0@@@|@|@|@@@@@"])
  fun op DROP_compute x = x
    val op DROP_compute =
    DT(((("list",437),
        [("arithmetic",[65,268]),("bool",[25,26,27,43,56,58,105,129,147]),
         ("list",[193,199]),("num",[7])]),["DISK_THM"]),
       [read"%365%337%155%385%469%366@$0@@$0@|@@%365%349%200%386%470%623%435$0@@@%610@@%610@|@@%365%349%200%386%470%623%436$0@@@%610@@%610@|@@%365%349%200%290%135%339%219%387%471%623%435$2@@@%453$1@$0@@@%471%364%623%435$2@@@%623%435%673@@@@$0@@|@|@|@@%349%200%290%135%339%219%387%471%623%436$2@@@%453$1@$0@@@%471%623%435$2@@@$0@@|@|@|@@@@@"])
  end
  val _ = DB.bindl "list"
  [("SUM_ACC_DEF",SUM_ACC_DEF,DB.Def), ("REV_DEF",REV_DEF,DB.Def),
   ("LEN_DEF",LEN_DEF,DB.Def), ("PAD_RIGHT",PAD_RIGHT,DB.Def),
   ("PAD_LEFT",PAD_LEFT,DB.Def), ("GENLIST_AUX",GENLIST_AUX,DB.Def),
   ("GENLIST",GENLIST,DB.Def), ("SNOC",SNOC,DB.Def),
   ("isPREFIX",isPREFIX,DB.Def),
   ("SET_TO_LIST_primitive",SET_TO_LIST_primitive,DB.Def),
   ("LRC_def",LRC_def,DB.Def), ("ALL_DISTINCT",ALL_DISTINCT,DB.Def),
   ("DROP_def",DROP_def,DB.Def), ("TAKE_def",TAKE_def,DB.Def),
   ("FRONT_DEF",FRONT_DEF,DB.Def), ("LAST_DEF",LAST_DEF,DB.Def),
   ("REVERSE_DEF",REVERSE_DEF,DB.Def), ("UNZIP",UNZIP,DB.Def),
   ("ZIP",ZIP,DB.Def), ("list_size_def",list_size_def,DB.Def),
   ("list_case_def",list_case_def,DB.Def),
   ("list_TY_DEF",list_TY_DEF,DB.Def), ("NULL_DEF",NULL_DEF,DB.Def),
   ("HD",HD,DB.Def), ("TL",TL,DB.Def), ("SUM",SUM,DB.Def),
   ("APPEND",APPEND,DB.Def), ("FLAT",FLAT,DB.Def),
   ("LENGTH",LENGTH,DB.Def), ("MAP",MAP,DB.Def),
   ("LIST_TO_SET_DEF",LIST_TO_SET_DEF,DB.Def), ("FILTER",FILTER,DB.Def),
   ("FOLDR",FOLDR,DB.Def), ("FOLDL",FOLDL,DB.Def),
   ("EVERY_DEF",EVERY_DEF,DB.Def), ("EXISTS_DEF",EXISTS_DEF,DB.Def),
   ("EL",EL,DB.Def), ("INDEX_FIND_def",INDEX_FIND_def,DB.Def),
   ("FIND_def",FIND_def,DB.Def), ("INDEX_OF_def",INDEX_OF_def,DB.Def),
   ("LUPDATE_def",LUPDATE_def,DB.Def), ("EVERYi_DEF",EVERYi_DEF,DB.Def),
   ("splitAtPki_DEF",splitAtPki_DEF,DB.Def),
   ("LIST_BIND_DEF",LIST_BIND_DEF,DB.Def),
   ("LIST_IGNORE_BIND_DEF",LIST_IGNORE_BIND_DEF,DB.Def),
   ("LIST_APPLY_DEF",LIST_APPLY_DEF,DB.Def),
   ("LIST_LIFT2_DEF",LIST_LIFT2_DEF,DB.Def), ("LLEX_DEF",LLEX_DEF,DB.Def),
   ("nub_def",nub_def,DB.Def), ("dropWhile_def",dropWhile_def,DB.Def),
   ("EXISTS_LIST",EXISTS_LIST,DB.Thm), ("SUM_SUM_ACC",SUM_SUM_ACC,DB.Thm),
   ("SUM_ACC_SUM_LEM",SUM_ACC_SUM_LEM,DB.Thm),
   ("REVERSE_REV",REVERSE_REV,DB.Thm), ("LENGTH_LEN",LENGTH_LEN,DB.Thm),
   ("REV_REVERSE_LEM",REV_REVERSE_LEM,DB.Thm),
   ("LEN_LENGTH_LEM",LEN_LENGTH_LEM,DB.Thm),
   ("INFINITE_LIST_UNIV",INFINITE_LIST_UNIV,DB.Thm),
   ("MAP_ZIP_SAME",MAP_ZIP_SAME,DB.Thm),
   ("FOLDL_ZIP_SAME",FOLDL_ZIP_SAME,DB.Thm),
   ("FOLDL_UNION_BIGUNION_paired",FOLDL_UNION_BIGUNION_paired,DB.Thm),
   ("FOLDL_UNION_BIGUNION",FOLDL_UNION_BIGUNION,DB.Thm),
   ("REVERSE_GENLIST",REVERSE_GENLIST,DB.Thm),
   ("EL_REVERSE",EL_REVERSE,DB.Thm),
   ("SUM_IMAGE_eq_SUM_MAP_SET_TO_LIST",
    SUM_IMAGE_eq_SUM_MAP_SET_TO_LIST,
    DB.Thm), ("SUM_MAP_FOLDL",SUM_MAP_FOLDL,DB.Thm),
   ("SUM_APPEND",SUM_APPEND,DB.Thm), ("SUM_SNOC",SUM_SNOC,DB.Thm),
   ("FOLDL_SNOC",FOLDL_SNOC,DB.Thm),
   ("ALL_DISTINCT_GENLIST",ALL_DISTINCT_GENLIST,DB.Thm),
   ("ALL_DISTINCT_SNOC",ALL_DISTINCT_SNOC,DB.Thm),
   ("MEM_GENLIST",MEM_GENLIST,DB.Thm),
   ("GENLIST_NUMERALS",GENLIST_NUMERALS,DB.Thm),
   ("GENLIST_GENLIST_AUX",GENLIST_GENLIST_AUX,DB.Thm),
   ("NULL_GENLIST",NULL_GENLIST,DB.Thm),
   ("GENLIST_CONS",GENLIST_CONS,DB.Thm),
   ("ZIP_GENLIST",ZIP_GENLIST,DB.Thm), ("TL_GENLIST",TL_GENLIST,DB.Thm),
   ("EXISTS_GENLIST",EXISTS_GENLIST,DB.Thm),
   ("EVERY_GENLIST",EVERY_GENLIST,DB.Thm),
   ("GENLIST_APPEND",GENLIST_APPEND,DB.Thm),
   ("GENLIST_FUN_EQ",GENLIST_FUN_EQ,DB.Thm),
   ("HD_GENLIST_COR",HD_GENLIST_COR,DB.Thm),
   ("HD_GENLIST",HD_GENLIST,DB.Thm), ("EL_GENLIST",EL_GENLIST,DB.Thm),
   ("MAP_GENLIST",MAP_GENLIST,DB.Thm),
   ("GENLIST_AUX_compute",GENLIST_AUX_compute,DB.Thm),
   ("LENGTH_GENLIST",LENGTH_GENLIST,DB.Thm),
   ("SNOC_CASES",SNOC_CASES,DB.Thm), ("SNOC_INDUCT",SNOC_INDUCT,DB.Thm),
   ("SNOC_Axiom",SNOC_Axiom,DB.Thm), ("REVERSE_SNOC",REVERSE_SNOC,DB.Thm),
   ("REVERSE_SNOC_DEF",REVERSE_SNOC_DEF,DB.Thm),
   ("SNOC_11",SNOC_11,DB.Thm), ("MEM_SNOC",MEM_SNOC,DB.Thm),
   ("EXISTS_SNOC",EXISTS_SNOC,DB.Thm), ("EVERY_SNOC",EVERY_SNOC,DB.Thm),
   ("APPEND_SNOC",APPEND_SNOC,DB.Thm),
   ("EL_LENGTH_SNOC",EL_LENGTH_SNOC,DB.Thm), ("EL_SNOC",EL_SNOC,DB.Thm),
   ("MAP_SNOC",MAP_SNOC,DB.Thm),
   ("LIST_TO_SET_SNOC",LIST_TO_SET_SNOC,DB.Thm),
   ("SNOC_APPEND",SNOC_APPEND,DB.Thm), ("FRONT_SNOC",FRONT_SNOC,DB.Thm),
   ("LAST_SNOC",LAST_SNOC,DB.Thm), ("LENGTH_SNOC",LENGTH_SNOC,DB.Thm),
   ("isPREFIX_THM",isPREFIX_THM,DB.Thm),
   ("ITSET_eq_FOLDL_SET_TO_LIST",ITSET_eq_FOLDL_SET_TO_LIST,DB.Thm),
   ("ALL_DISTINCT_SET_TO_LIST",ALL_DISTINCT_SET_TO_LIST,DB.Thm),
   ("SET_TO_LIST_SING",SET_TO_LIST_SING,DB.Thm),
   ("MEM_SET_TO_LIST",MEM_SET_TO_LIST,DB.Thm),
   ("SET_TO_LIST_IN_MEM",SET_TO_LIST_IN_MEM,DB.Thm),
   ("SET_TO_LIST_CARD",SET_TO_LIST_CARD,DB.Thm),
   ("SET_TO_LIST_INV",SET_TO_LIST_INV,DB.Thm),
   ("SET_TO_LIST_EMPTY",SET_TO_LIST_EMPTY,DB.Thm),
   ("SET_TO_LIST_IND",SET_TO_LIST_IND,DB.Thm),
   ("SET_TO_LIST_THM",SET_TO_LIST_THM,DB.Thm),
   ("LIST_TO_SET_FILTER",LIST_TO_SET_FILTER,DB.Thm),
   ("LIST_TO_SET_MAP",LIST_TO_SET_MAP,DB.Thm),
   ("LIST_TO_SET_THM",LIST_TO_SET_THM,DB.Thm),
   ("LIST_TO_SET_REVERSE",LIST_TO_SET_REVERSE,DB.Thm),
   ("ALL_DISTINCT_CARD_LIST_TO_SET",ALL_DISTINCT_CARD_LIST_TO_SET,DB.Thm),
   ("CARD_LIST_TO_SET",CARD_LIST_TO_SET,DB.Thm),
   ("INJ_MAP_EQ",INJ_MAP_EQ,DB.Thm),
   ("SUM_MAP_MEM_bound",SUM_MAP_MEM_bound,DB.Thm),
   ("SUM_IMAGE_LIST_TO_SET_upper_bound",
    SUM_IMAGE_LIST_TO_SET_upper_bound,
    DB.Thm), ("FINITE_LIST_TO_SET",FINITE_LIST_TO_SET,DB.Thm),
   ("LIST_TO_SET_EQ_EMPTY",LIST_TO_SET_EQ_EMPTY,DB.Thm),
   ("UNION_APPEND",UNION_APPEND,DB.Thm),
   ("LIST_TO_SET_APPEND",LIST_TO_SET_APPEND,DB.Thm),
   ("LRC_MEM_right",LRC_MEM_right,DB.Thm), ("LRC_MEM",LRC_MEM,DB.Thm),
   ("NRC_LRC",NRC_LRC,DB.Thm),
   ("ALL_DISTINCT_REVERSE",ALL_DISTINCT_REVERSE,DB.Thm),
   ("ALL_DISTINCT_ZIP_SWAP",ALL_DISTINCT_ZIP_SWAP,DB.Thm),
   ("ALL_DISTINCT_ZIP",ALL_DISTINCT_ZIP,DB.Thm),
   ("ALL_DISTINCT_SING",ALL_DISTINCT_SING,DB.Thm),
   ("ALL_DISTINCT_APPEND",ALL_DISTINCT_APPEND,DB.Thm),
   ("ALL_DISTINCT_EL_IMP",ALL_DISTINCT_EL_IMP,DB.Thm),
   ("EL_ALL_DISTINCT_EL_EQ",EL_ALL_DISTINCT_EL_EQ,DB.Thm),
   ("ALL_DISTINCT_MAP",ALL_DISTINCT_MAP,DB.Thm),
   ("FILTER_ALL_DISTINCT",FILTER_ALL_DISTINCT,DB.Thm),
   ("ALL_DISTINCT_FILTER",ALL_DISTINCT_FILTER,DB.Thm),
   ("EVERY2_mono",EVERY2_mono,DB.Thm),
   ("EVERY2_LENGTH",EVERY2_LENGTH,DB.Thm),
   ("EVERY2_EVERY",EVERY2_EVERY,DB.Thm),
   ("MAP_EQ_EVERY2",MAP_EQ_EVERY2,DB.Thm),
   ("EVERY2_cong",EVERY2_cong,DB.Thm),
   ("FOLDL2_FOLDL",FOLDL2_FOLDL,DB.Thm),
   ("FOLDL2_cong",FOLDL2_cong,DB.Thm), ("FOLDL2_def",FOLDL2_def,DB.Thm),
   ("FOLDL2_ind",FOLDL2_ind,DB.Thm), ("DROP_NIL",DROP_NIL,DB.Thm),
   ("MEM_DROP",MEM_DROP,DB.Thm), ("LENGTH_DROP",LENGTH_DROP,DB.Thm),
   ("TAKE_DROP",TAKE_DROP,DB.Thm), ("DROP_0",DROP_0,DB.Thm),
   ("TAKE_APPEND2",TAKE_APPEND2,DB.Thm),
   ("TAKE_APPEND1",TAKE_APPEND1,DB.Thm),
   ("LENGTH_TAKE",LENGTH_TAKE,DB.Thm),
   ("TAKE_LENGTH_ID",TAKE_LENGTH_ID,DB.Thm), ("TAKE_0",TAKE_0,DB.Thm),
   ("LAST_APPEND_CONS",LAST_APPEND_CONS,DB.Thm),
   ("LAST_CONS_cond",LAST_CONS_cond,DB.Thm),
   ("APPEND_FRONT_LAST",APPEND_FRONT_LAST,DB.Thm),
   ("FRONT_CONS_EQ_NIL",FRONT_CONS_EQ_NIL,DB.Thm),
   ("LENGTH_FRONT_CONS",LENGTH_FRONT_CONS,DB.Thm),
   ("FRONT_CONS",FRONT_CONS,DB.Thm), ("LAST_EL",LAST_EL,DB.Thm),
   ("LAST_CONS",LAST_CONS,DB.Thm),
   ("FILTER_REVERSE",FILTER_REVERSE,DB.Thm),
   ("REVERSE_EQ_SING",REVERSE_EQ_SING,DB.Thm),
   ("REVERSE_EQ_NIL",REVERSE_EQ_NIL,DB.Thm),
   ("LENGTH_REVERSE",LENGTH_REVERSE,DB.Thm),
   ("MEM_REVERSE",MEM_REVERSE,DB.Thm), ("REVERSE_11",REVERSE_11,DB.Thm),
   ("REVERSE_REVERSE",REVERSE_REVERSE,DB.Thm),
   ("REVERSE_APPEND",REVERSE_APPEND,DB.Thm),
   ("LIST_REL_EVERY_ZIP",LIST_REL_EVERY_ZIP,DB.Thm),
   ("SUM_MAP_PLUS_ZIP",SUM_MAP_PLUS_ZIP,DB.Thm), ("MEM_EL",MEM_EL,DB.Thm),
   ("MAP_ZIP",MAP_ZIP,DB.Thm), ("MAP2_MAP",MAP2_MAP,DB.Thm),
   ("MAP2_ZIP",MAP2_ZIP,DB.Thm), ("EL_ZIP",EL_ZIP,DB.Thm),
   ("MEM_ZIP",MEM_ZIP,DB.Thm), ("ZIP_MAP",ZIP_MAP,DB.Thm),
   ("UNZIP_ZIP",UNZIP_ZIP,DB.Thm), ("ZIP_UNZIP",ZIP_UNZIP,DB.Thm),
   ("LENGTH_UNZIP",LENGTH_UNZIP,DB.Thm), ("LENGTH_ZIP",LENGTH_ZIP,DB.Thm),
   ("UNZIP_MAP",UNZIP_MAP,DB.Thm), ("UNZIP_THM",UNZIP_THM,DB.Thm),
   ("EVERY_MONOTONIC",EVERY_MONOTONIC,DB.Thm),
   ("EVERY_CONG",EVERY_CONG,DB.Thm), ("EXISTS_CONG",EXISTS_CONG,DB.Thm),
   ("MAP2_CONG",MAP2_CONG,DB.Thm), ("MAP_CONG",MAP_CONG,DB.Thm),
   ("FOLDL_CONG",FOLDL_CONG,DB.Thm), ("FOLDR_CONG",FOLDR_CONG,DB.Thm),
   ("list_size_cong",list_size_cong,DB.Thm),
   ("LIST_REL_LENGTH",LIST_REL_LENGTH,DB.Thm),
   ("LIST_REL_MAP2",LIST_REL_MAP2,DB.Thm),
   ("LIST_REL_MAP1",LIST_REL_MAP1,DB.Thm),
   ("LIST_REL_CONJ",LIST_REL_CONJ,DB.Thm),
   ("LIST_REL_CONS2",LIST_REL_CONS2,DB.Thm),
   ("LIST_REL_CONS1",LIST_REL_CONS1,DB.Thm),
   ("LIST_REL_NIL",LIST_REL_NIL,DB.Thm),
   ("LIST_REL_mono",LIST_REL_mono,DB.Thm),
   ("LIST_REL_def",LIST_REL_def,DB.Thm),
   ("WF_LIST_PRED",WF_LIST_PRED,DB.Thm),
   ("NULL_FILTER",NULL_FILTER,DB.Thm), ("SUM_eq_0",SUM_eq_0,DB.Thm),
   ("EL_simp_restricted",EL_simp_restricted,DB.Thm),
   ("EL_restricted",EL_restricted,DB.Thm), ("EL_simp",EL_simp,DB.Thm),
   ("EL_compute",EL_compute,DB.Thm), ("NOT_NULL_MEM",NOT_NULL_MEM,DB.Thm),
   ("FILTER_COND_REWRITE",FILTER_COND_REWRITE,DB.Thm),
   ("EVERY_FILTER_IMP",EVERY_FILTER_IMP,DB.Thm),
   ("EVERY_FILTER",EVERY_FILTER,DB.Thm),
   ("FILTER_EQ_APPEND",FILTER_EQ_APPEND,DB.Thm), ("MEM",MEM,DB.Thm),
   ("FILTER_APPEND_DISTRIB",FILTER_APPEND_DISTRIB,DB.Thm),
   ("FILTER_EQ_CONS",FILTER_EQ_CONS,DB.Thm),
   ("FILTER_NEQ_ID",FILTER_NEQ_ID,DB.Thm),
   ("FILTER_EQ_ID",FILTER_EQ_ID,DB.Thm),
   ("FILTER_NEQ_NIL",FILTER_NEQ_NIL,DB.Thm),
   ("FILTER_EQ_NIL",FILTER_EQ_NIL,DB.Thm), ("LENGTH_TL",LENGTH_TL,DB.Thm),
   ("FOLDR_CONS",FOLDR_CONS,DB.Thm),
   ("FOLDL_EQ_FOLDR",FOLDL_EQ_FOLDR,DB.Thm), ("LIST_EQ",LIST_EQ,DB.Thm),
   ("LIST_EQ_REWRITE",LIST_EQ_REWRITE,DB.Thm),
   ("MEM_SPLIT",MEM_SPLIT,DB.Thm),
   ("APPEND_EQ_SELF",APPEND_EQ_SELF,DB.Thm),
   ("APPEND_11_LENGTH",APPEND_11_LENGTH,DB.Thm),
   ("APPEND_LENGTH_EQ",APPEND_LENGTH_EQ,DB.Thm),
   ("APPEND_11",APPEND_11,DB.Thm),
   ("APPEND_EQ_SING",APPEND_EQ_SING,DB.Thm),
   ("MAP_EQ_APPEND",MAP_EQ_APPEND,DB.Thm),
   ("APPEND_eq_NIL",APPEND_eq_NIL,DB.Thm),
   ("CONS_ACYCLIC",CONS_ACYCLIC,DB.Thm),
   ("LENGTH_EQ_NIL",LENGTH_EQ_NIL,DB.Thm),
   ("LENGTH_EQ_NUM_compute",LENGTH_EQ_NUM_compute,DB.Thm),
   ("LENGTH_EQ_NUM",LENGTH_EQ_NUM,DB.Thm),
   ("LENGTH_EQ_SUM",LENGTH_EQ_SUM,DB.Thm),
   ("LENGTH_EQ_CONS",LENGTH_EQ_CONS,DB.Thm),
   ("LENGTH_CONS",LENGTH_CONS,DB.Thm), ("NULL_LENGTH",NULL_LENGTH,DB.Thm),
   ("NULL_EQ",NULL_EQ,DB.Thm), ("LENGTH_NIL_SYM",LENGTH_NIL_SYM,DB.Thm),
   ("LENGTH_NIL",LENGTH_NIL,DB.Thm), ("MEM_MAP",MEM_MAP,DB.Thm),
   ("NOT_EXISTS",NOT_EXISTS,DB.Thm), ("NOT_EVERY",NOT_EVERY,DB.Thm),
   ("EXISTS_APPEND",EXISTS_APPEND,DB.Thm),
   ("EVERY_APPEND",EVERY_APPEND,DB.Thm),
   ("FLAT_APPEND",FLAT_APPEND,DB.Thm), ("MEM_FLAT",MEM_FLAT,DB.Thm),
   ("MEM_FILTER",MEM_FILTER,DB.Thm), ("MEM_APPEND",MEM_APPEND,DB.Thm),
   ("EXISTS_NOT_EVERY",EXISTS_NOT_EVERY,DB.Thm),
   ("EVERY_NOT_EXISTS",EVERY_NOT_EXISTS,DB.Thm),
   ("MONO_EXISTS",MONO_EXISTS,DB.Thm), ("EXISTS_SIMP",EXISTS_SIMP,DB.Thm),
   ("EXISTS_MAP",EXISTS_MAP,DB.Thm), ("EXISTS_MEM",EXISTS_MEM,DB.Thm),
   ("MONO_EVERY",MONO_EVERY,DB.Thm), ("EVERY_SIMP",EVERY_SIMP,DB.Thm),
   ("EVERY_MAP",EVERY_MAP,DB.Thm), ("EVERY_MEM",EVERY_MEM,DB.Thm),
   ("EVERY_CONJ",EVERY_CONJ,DB.Thm), ("EVERY_EL",EVERY_EL,DB.Thm),
   ("MAP_TL",MAP_TL,DB.Thm), ("EL_MAP",EL_MAP,DB.Thm),
   ("MAP_MAP_o",MAP_MAP_o,DB.Thm), ("MAP_o",MAP_o,DB.Thm),
   ("MAP_EQ_f",MAP_EQ_f,DB.Thm), ("MAP_EQ_SING",MAP_EQ_SING,DB.Thm),
   ("MAP_EQ_CONS",MAP_EQ_CONS,DB.Thm), ("MAP_EQ_NIL",MAP_EQ_NIL,DB.Thm),
   ("LENGTH_MAP",LENGTH_MAP,DB.Thm), ("MAP_ID",MAP_ID,DB.Thm),
   ("MAP_APPEND",MAP_APPEND,DB.Thm),
   ("LENGTH_APPEND",LENGTH_APPEND,DB.Thm),
   ("APPEND_ASSOC",APPEND_ASSOC,DB.Thm), ("APPEND_NIL",APPEND_NIL,DB.Thm),
   ("CONS",CONS,DB.Thm), ("EQ_LIST",EQ_LIST,DB.Thm),
   ("NOT_EQ_LIST",NOT_EQ_LIST,DB.Thm), ("LIST_NOT_EQ",LIST_NOT_EQ,DB.Thm),
   ("NOT_CONS_NIL",NOT_CONS_NIL,DB.Thm),
   ("NOT_NIL_CONS",NOT_NIL_CONS,DB.Thm), ("CONS_11",CONS_11,DB.Thm),
   ("list_case_compute",list_case_compute,DB.Thm),
   ("list_nchotomy",list_nchotomy,DB.Thm),
   ("list_case_cong",list_case_cong,DB.Thm),
   ("list_distinct",list_distinct,DB.Thm), ("list_11",list_11,DB.Thm),
   ("datatype_list",datatype_list,DB.Thm),
   ("list_Axiom_old",list_Axiom_old,DB.Thm),
   ("LIST_TO_SET",LIST_TO_SET,DB.Thm),
   ("IN_LIST_TO_SET",IN_LIST_TO_SET,DB.Thm), ("MAP2_ind",MAP2_ind,DB.Thm),
   ("MAP2_def",MAP2_def,DB.Thm), ("MAP2",MAP2,DB.Thm),
   ("NULL",NULL,DB.Thm), ("list_INDUCT",list_INDUCT,DB.Thm),
   ("list_Axiom",list_Axiom,DB.Thm),
   ("list_induction",list_induction,DB.Thm),
   ("LIST_REL_EL_EQN",LIST_REL_EL_EQN,DB.Thm),
   ("LIST_REL_cases",LIST_REL_cases,DB.Thm),
   ("LIST_REL_strongind",LIST_REL_strongind,DB.Thm),
   ("LIST_REL_ind",LIST_REL_ind,DB.Thm),
   ("LIST_REL_rules",LIST_REL_rules,DB.Thm),
   ("list_CASES",list_CASES,DB.Thm), ("FORALL_LIST",FORALL_LIST,DB.Thm),
   ("MEM_SPLIT_APPEND_first",MEM_SPLIT_APPEND_first,DB.Thm),
   ("MEM_SPLIT_APPEND_last",MEM_SPLIT_APPEND_last,DB.Thm),
   ("APPEND_EQ_APPEND",APPEND_EQ_APPEND,DB.Thm),
   ("APPEND_EQ_CONS",APPEND_EQ_CONS,DB.Thm),
   ("APPEND_EQ_APPEND_MID",APPEND_EQ_APPEND_MID,DB.Thm),
   ("LUPDATE_SEM",LUPDATE_SEM,DB.Thm), ("EL_LUPDATE",EL_LUPDATE,DB.Thm),
   ("LENGTH_LUPDATE",LENGTH_LUPDATE,DB.Thm),
   ("LUPDATE_LENGTH",LUPDATE_LENGTH,DB.Thm),
   ("LUPDATE_SNOC",LUPDATE_SNOC,DB.Thm),
   ("MEM_LUPDATE_E",MEM_LUPDATE_E,DB.Thm),
   ("MEM_LUPDATE",MEM_LUPDATE,DB.Thm),
   ("LUPDATE_compute",LUPDATE_compute,DB.Thm),
   ("LUPDATE_MAP",LUPDATE_MAP,DB.Thm),
   ("splitAtPki_APPEND",splitAtPki_APPEND,DB.Thm),
   ("splitAtPki_EQN",splitAtPki_EQN,DB.Thm),
   ("TAKE_LENGTH_TOO_LONG",TAKE_LENGTH_TOO_LONG,DB.Thm),
   ("DROP_LENGTH_TOO_LONG",DROP_LENGTH_TOO_LONG,DB.Thm),
   ("TAKE_splitAtPki",TAKE_splitAtPki,DB.Thm),
   ("DROP_splitAtPki",DROP_splitAtPki,DB.Thm),
   ("LIST_BIND_THM",LIST_BIND_THM,DB.Thm),
   ("LIST_BIND_ID",LIST_BIND_ID,DB.Thm),
   ("LIST_BIND_APPEND",LIST_BIND_APPEND,DB.Thm),
   ("LIST_BIND_MAP",LIST_BIND_MAP,DB.Thm),
   ("MAP_LIST_BIND",MAP_LIST_BIND,DB.Thm),
   ("LIST_BIND_LIST_BIND",LIST_BIND_LIST_BIND,DB.Thm),
   ("SINGL_LIST_APPLY_L",SINGL_LIST_APPLY_L,DB.Thm),
   ("SINGL_LIST_APPLY_R",SINGL_LIST_APPLY_R,DB.Thm),
   ("SINGL_APPLY_MAP",SINGL_APPLY_MAP,DB.Thm),
   ("SINGL_SINGL_APPLY",SINGL_SINGL_APPLY,DB.Thm),
   ("SINGL_APPLY_PERMUTE",SINGL_APPLY_PERMUTE,DB.Thm),
   ("MAP_FLAT",MAP_FLAT,DB.Thm), ("LIST_APPLY_o",LIST_APPLY_o,DB.Thm),
   ("LLEX_THM",LLEX_THM,DB.Thm), ("LLEX_MONO",LLEX_MONO,DB.Thm),
   ("LLEX_CONG",LLEX_CONG,DB.Thm), ("LLEX_NIL2",LLEX_NIL2,DB.Thm),
   ("LLEX_transitive",LLEX_transitive,DB.Thm),
   ("LLEX_total",LLEX_total,DB.Thm), ("LLEX_not_WF",LLEX_not_WF,DB.Thm),
   ("nub_set",nub_set,DB.Thm),
   ("all_distinct_nub",all_distinct_nub,DB.Thm),
   ("nub_append",nub_append,DB.Thm),
   ("list_to_set_diff",list_to_set_diff,DB.Thm),
   ("length_nub_append",length_nub_append,DB.Thm),
   ("ALL_DISTINCT_DROP",ALL_DISTINCT_DROP,DB.Thm),
   ("EXISTS_LIST_EQ_MAP",EXISTS_LIST_EQ_MAP,DB.Thm),
   ("LIST_TO_SET_FLAT",LIST_TO_SET_FLAT,DB.Thm),
   ("MEM_APPEND_lemma",MEM_APPEND_lemma,DB.Thm),
   ("EVERY2_REVERSE",EVERY2_REVERSE,DB.Thm),
   ("SUM_MAP_PLUS",SUM_MAP_PLUS,DB.Thm),
   ("TAKE_LENGTH_ID_rwt",TAKE_LENGTH_ID_rwt,DB.Thm),
   ("ZIP_DROP",ZIP_DROP,DB.Thm), ("GENLIST_EL",GENLIST_EL,DB.Thm),
   ("EVERY2_trans",EVERY2_trans,DB.Thm), ("EVERY2_sym",EVERY2_sym,DB.Thm),
   ("EVERY2_LUPDATE_same",EVERY2_LUPDATE_same,DB.Thm),
   ("EVERY2_refl",EVERY2_refl,DB.Thm), ("EVERY2_THM",EVERY2_THM,DB.Thm),
   ("LIST_REL_trans",LIST_REL_trans,DB.Thm),
   ("SWAP_REVERSE",SWAP_REVERSE,DB.Thm),
   ("SWAP_REVERSE_SYM",SWAP_REVERSE_SYM,DB.Thm),
   ("BIGUNION_IMAGE_set_SUBSET",BIGUNION_IMAGE_set_SUBSET,DB.Thm),
   ("IMAGE_EL_count_LENGTH",IMAGE_EL_count_LENGTH,DB.Thm),
   ("GENLIST_EL_MAP",GENLIST_EL_MAP,DB.Thm),
   ("LENGTH_FILTER_LEQ_MONO",LENGTH_FILTER_LEQ_MONO,DB.Thm),
   ("LIST_EQ_MAP_PAIR",LIST_EQ_MAP_PAIR,DB.Thm),
   ("TAKE_SUM",TAKE_SUM,DB.Thm),
   ("ALL_DISTINCT_FILTER_EL_IMP",ALL_DISTINCT_FILTER_EL_IMP,DB.Thm),
   ("FLAT_EQ_NIL",FLAT_EQ_NIL,DB.Thm),
   ("ALL_DISTINCT_MAP_INJ",ALL_DISTINCT_MAP_INJ,DB.Thm),
   ("LENGTH_o_REVERSE",LENGTH_o_REVERSE,DB.Thm),
   ("REVERSE_o_REVERSE",REVERSE_o_REVERSE,DB.Thm),
   ("GENLIST_PLUS_APPEND",GENLIST_PLUS_APPEND,DB.Thm),
   ("LIST_TO_SET_GENLIST",LIST_TO_SET_GENLIST,DB.Thm),
   ("MEM_ZIP_MEM_MAP",MEM_ZIP_MEM_MAP,DB.Thm),
   ("DISJOINT_GENLIST_PLUS",DISJOINT_GENLIST_PLUS,DB.Thm),
   ("EVERY2_MAP",EVERY2_MAP,DB.Thm),
   ("exists_list_GENLIST",exists_list_GENLIST,DB.Thm),
   ("EVERY_MEM_MONO",EVERY_MEM_MONO,DB.Thm),
   ("EVERY2_MEM_MONO",EVERY2_MEM_MONO,DB.Thm),
   ("mem_exists_set",mem_exists_set,DB.Thm),
   ("every_zip_snd",every_zip_snd,DB.Thm),
   ("every_zip_fst",every_zip_fst,DB.Thm),
   ("el_append3",el_append3,DB.Thm),
   ("lupdate_append",lupdate_append,DB.Thm),
   ("lupdate_append2",lupdate_append2,DB.Thm),
   ("LAST_REVERSE",LAST_REVERSE,DB.Thm),
   ("dropWhile_splitAtPki",dropWhile_splitAtPki,DB.Thm),
   ("dropWhile_eq_nil",dropWhile_eq_nil,DB.Thm),
   ("MEM_dropWhile_IMP",MEM_dropWhile_IMP,DB.Thm),
   ("HD_dropWhile",HD_dropWhile,DB.Thm),
   ("LENGTH_dropWhile_LESS_EQ",LENGTH_dropWhile_LESS_EQ,DB.Thm),
   ("dropWhile_APPEND_EVERY",dropWhile_APPEND_EVERY,DB.Thm),
   ("dropWhile_APPEND_EXISTS",dropWhile_APPEND_EXISTS,DB.Thm),
   ("EL_LENGTH_dropWhile_REVERSE",EL_LENGTH_dropWhile_REVERSE,DB.Thm),
   ("LENGTH_TAKE_EQ",LENGTH_TAKE_EQ,DB.Thm),
   ("IMP_EVERY_LUPDATE",IMP_EVERY_LUPDATE,DB.Thm),
   ("MAP_APPEND_MAP_EQ",MAP_APPEND_MAP_EQ,DB.Thm),
   ("LUPDATE_SOME_MAP",LUPDATE_SOME_MAP,DB.Thm),
   ("ZIP_EQ_NIL",ZIP_EQ_NIL,DB.Thm), ("LUPDATE_SAME",LUPDATE_SAME,DB.Thm),
   ("LAST_compute",LAST_compute,DB.Thm),
   ("TAKE_compute",TAKE_compute,DB.Thm),
   ("DROP_compute",DROP_compute,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("operatorTheory.operator_grammars",
                          operatorTheory.operator_grammars),
                         ("ind_typeTheory.ind_type_grammars",
                          ind_typeTheory.ind_type_grammars),
                         ("pred_setTheory.pred_set_grammars",
                          pred_setTheory.pred_set_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms temp_add_type "list"
  val _ = update_grms temp_add_type "list"






  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NIL", (Term.prim_mk_const { Name = "NIL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NIL", (Term.prim_mk_const { Name = "NIL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CONS", (Term.prim_mk_const { Name = "CONS", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CONS", (Term.prim_mk_const { Name = "CONS", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_CASE", (Term.prim_mk_const { Name = "list_CASE", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_size", (Term.prim_mk_const { Name = "list_size", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_add_listform)
       {separator = [TOK ";", BreakSpace(1, 0)]
, leftdelim = [TOK "["]
, rightdelim = [TOK "]"]
, cons = "CONS", nilstr = "NIL", block_info = (INCONSISTENT, 0)}
  val _ = update_grms
       (UTOFF temp_add_rule)
       {term_name = "CONS", fixity = Infix(HOLgrammars.RIGHT, 490),
pp_elements = [TOK "::", BreakSpace(0, 2)],
paren_style = OnlyIfNecessary,
block_style = (AroundSameName, (INCONSISTENT, 2))}
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NULL", (Term.prim_mk_const { Name = "NULL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HD", (Term.prim_mk_const { Name = "HD", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TL", (Term.prim_mk_const { Name = "TL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM", (Term.prim_mk_const { Name = "SUM", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("APPEND", (Term.prim_mk_const { Name = "APPEND", Thy = "list"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "++"))
       (Infix(HOLgrammars.LEFT, 480))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("++", (Term.prim_mk_const { Name = "APPEND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FLAT", (Term.prim_mk_const { Name = "FLAT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LENGTH", (Term.prim_mk_const { Name = "LENGTH", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAP", (Term.prim_mk_const { Name = "MAP", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_TO_SET", (Term.prim_mk_const { Name = "LIST_TO_SET", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("set", (Term.prim_mk_const { Name = "LIST_TO_SET", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MEM", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(h :'a) (l :('a list$list)). bool$IN h (list$LIST_TO_SET l)"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(h :'a) (l :('a list$list)). bool$~ (bool$IN h (list$LIST_TO_SET l))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FILTER", (Term.prim_mk_const { Name = "FILTER", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOLDR", (Term.prim_mk_const { Name = "FOLDR", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOLDL", (Term.prim_mk_const { Name = "FOLDL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVERY", (Term.prim_mk_const { Name = "EVERY", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EXISTS", (Term.prim_mk_const { Name = "EXISTS", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EL", (Term.prim_mk_const { Name = "EL", Thy = "list"}))


  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAP2", (Term.prim_mk_const { Name = "MAP2", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MAP2", (Term.prim_mk_const { Name = "MAP2", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INDEX_FIND", (Term.prim_mk_const { Name = "INDEX_FIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIND", (Term.prim_mk_const { Name = "FIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FIND", (Term.prim_mk_const { Name = "FIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INDEX_OF", (Term.prim_mk_const { Name = "INDEX_OF", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INDEX_OF", (Term.prim_mk_const { Name = "INDEX_OF", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_REL", (Term.prim_mk_const { Name = "LIST_REL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_REL", (Term.prim_mk_const { Name = "LIST_REL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("listRel", (Term.prim_mk_const { Name = "LIST_REL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_REL", (Term.prim_mk_const { Name = "LIST_REL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ZIP", (Term.prim_mk_const { Name = "ZIP", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNZIP", (Term.prim_mk_const { Name = "UNZIP", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REVERSE", (Term.prim_mk_const { Name = "REVERSE", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LAST", (Term.prim_mk_const { Name = "LAST", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FRONT", (Term.prim_mk_const { Name = "FRONT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("TAKE", (Term.prim_mk_const { Name = "TAKE", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("DROP", (Term.prim_mk_const { Name = "DROP", Thy = "list"}))


  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOLDL2", (Term.prim_mk_const { Name = "FOLDL2", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOLDL2", (Term.prim_mk_const { Name = "FOLDL2", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVERY2", (Term.prim_mk_const { Name = "LIST_REL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_REL", (Term.prim_mk_const { Name = "LIST_REL", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ALL_DISTINCT", (Term.prim_mk_const { Name = "ALL_DISTINCT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LRC", (Term.prim_mk_const { Name = "LRC", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SET_TO_LIST", (Term.prim_mk_const { Name = "SET_TO_LIST", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SET_TO_LIST", (Term.prim_mk_const { Name = "SET_TO_LIST", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("isPREFIX", (Term.prim_mk_const { Name = "isPREFIX", Thy = "list"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "<<="))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<<=", (Term.prim_mk_const { Name = "isPREFIX", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SNOC", (Term.prim_mk_const { Name = "SNOC", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GENLIST", (Term.prim_mk_const { Name = "GENLIST", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("GENLIST_AUX", (Term.prim_mk_const { Name = "GENLIST_AUX", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PAD_LEFT", (Term.prim_mk_const { Name = "PAD_LEFT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PAD_LEFT", (Term.prim_mk_const { Name = "PAD_LEFT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PAD_RIGHT", (Term.prim_mk_const { Name = "PAD_RIGHT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("PAD_RIGHT", (Term.prim_mk_const { Name = "PAD_RIGHT", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LEN", (Term.prim_mk_const { Name = "LEN", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("REV", (Term.prim_mk_const { Name = "REV", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SUM_ACC", (Term.prim_mk_const { Name = "SUM_ACC", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LUPDATE", (Term.prim_mk_const { Name = "LUPDATE", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("EVERYi", (Term.prim_mk_const { Name = "EVERYi", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("splitAtPki", (Term.prim_mk_const { Name = "splitAtPki", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_BIND", (Term.prim_mk_const { Name = "LIST_BIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_BIND", (Term.prim_mk_const { Name = "LIST_BIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_IGNORE_BIND", (Term.prim_mk_const { Name = "LIST_IGNORE_BIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_IGNORE_BIND", (Term.prim_mk_const { Name = "LIST_IGNORE_BIND", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("SINGL", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :'a). list$CONS x (list$NIL :('a list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(x :'a). list$CONS x (list$NIL :('a list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_APPLY", (Term.prim_mk_const { Name = "LIST_APPLY", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_APPLY", (Term.prim_mk_const { Name = "LIST_APPLY", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("APPLICATIVE_FAPPLY", (#2 (parse_from_grammars min_grammars)[QUOTE "(list$LIST_APPLY :(('a -> 'b) list$list) -> ('a list$list) -> ('b list$list))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_LIFT2", (Term.prim_mk_const { Name = "LIST_LIFT2", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LIST_LIFT2", (Term.prim_mk_const { Name = "LIST_LIFT2", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("LLEX", (Term.prim_mk_const { Name = "LLEX", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nub", (Term.prim_mk_const { Name = "nub", Thy = "list"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dropWhile", (Term.prim_mk_const { Name = "dropWhile", Thy = "list"}))
  val list_grammars = Parse.current_lgrms()
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG list_Axiom,
           case_def=list_case_def,
           case_cong=list_case_cong,
           induction=ORIG list_induction,
           nchotomy=list_nchotomy,
           size=SOME(Parse.Term`(list$list_size) :('a -> (num$num)) -> ('a list$list) -> (num$num)`,
                     ORIG list_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME list_11,
           distinct=SOME list_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ = let open computeLib
          in add_funs [APPEND, APPEND_NIL, FLAT, HD, TL,
               LENGTH, MAP, MAP2, NULL_DEF, MEM, EXISTS_DEF, DROP_compute,
               EVERY_DEF, ZIP, UNZIP, FILTER, FOLDL, FOLDR, TAKE_compute,
               FOLDL, REVERSE_REV, SUM_SUM_ACC, ALL_DISTINCT, GENLIST_AUX,
               EL_restricted, EL_simp_restricted, SNOC, LUPDATE_compute,
               GENLIST_NUMERALS, computeLib.lazyfy_thm list_case_compute,
               list_size_def, FRONT_DEF, LAST_compute, isPREFIX]
          end;


  val _ =
    let val list_info = Option.valOf (TypeBase.read {Thy = "list",Tyop="list"})
        val lift_list = mk_var("listSyntax.lift_list",Parse.Type`:'type -> ('a -> 'term) -> 'a list -> 'term`)
        val list_info' = TypeBasePure.put_lift lift_list list_info
    in TypeBase.write [list_info']
    end;
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "unicodedata",
    data = "U12.\\226\\137\\1883.<<="
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "simp",
    data =
        "list.HD list.INFINITE_LIST_UNIV list.LUPDATE_LENGTH list.LENGTH_LUPDATE list.FOLDR list.FOLDL list.NOT_EXISTS list.NOT_EVERY list.EXISTS_SIMP list.EVERY_SIMP list.EXISTS_APPEND list.EVERY_APPEND list.LENGTH_UNZIP list.LENGTH_ZIP list.UNZIP_ZIP list.ZIP_UNZIP list.UNZIP list.ZIP list.list_case_def list.CONS_ACYCLIC list.NOT_NIL_CONS list.NOT_CONS_NIL list.MAP_APPEND list.LENGTH_MAP list.CONS_11 list.CONS list.APPEND_ASSOC list.SUM list.NULL_DEF list.MAP2 list.APPEND_11 list.dropWhile_def list.EVERY2_THM list.nub_set list.LLEX_NIL2 list.LLEX_THM list.SINGL_SINGL_APPLY list.SINGL_LIST_APPLY_L list.LIST_BIND_THM list.LAST_APPEND_CONS list.MAP_ZIP_SAME list.FOLDL_ZIP_SAME list.GENLIST_NUMERALS list.EL_GENLIST list.GENLIST_AUX_compute list.LENGTH_GENLIST list.SNOC_11 list.MEM_SNOC list.FRONT_SNOC list.LAST_SNOC list.LENGTH_SNOC list.SNOC list.isPREFIX_THM list.isPREFIX list.ALL_DISTINCT_SET_TO_LIST list.SET_TO_LIST_SING list.MEM_SET_TO_LIST list.SET_TO_LIST_EMPTY list.LIST_TO_SET_REVERSE list.FINITE_LIST_TO_SET list.LIST_TO_SET_EQ_EMPTY list.LIST_TO_SET_APPEND list.ALL_DISTINCT list.FOLDL2_def list.LENGTH_DROP list.TAKE_DROP list.DROP_0 list.LENGTH_TAKE list.TAKE_LENGTH_ID list.TAKE_0 list.DROP_def list.TAKE_def list.LAST_CONS list.FRONT_CONS_EQ_NIL list.LENGTH_FRONT_CONS list.FRONT_CONS list.LENGTH list.REVERSE_EQ_SING list.REVERSE_EQ_NIL list.LENGTH_REVERSE list.MEM_REVERSE list.REVERSE_11 list.REVERSE_REVERSE list.REVERSE_DEF list.LIST_REL_NIL list.LIST_REL_def list.EL_simp_restricted list.EL_restricted list.MEM list.APPEND_eq_NIL list.FLAT_APPEND list.MEM_APPEND list.MAP_EQ_SING list.MAP_EQ_NIL list.MAP_ID list.LENGTH_APPEND list.APPEND_NIL list.EXISTS_DEF list.EVERY_DEF list.FILTER list.LIST_TO_SET list.LIST_TO_SET_DEF list.MAP list.TL list.FLAT list.APPEND"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "rule_induction",
    data = "list.LIST_REL_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "mono",
    data =
        "list.MONO_EVERY list.MONO_EXISTS list.LLEX_MONO list.LIST_REL_mono"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "defncong",
    data =
        "list.LLEX_CONG list.MAP2_CONG list.list_size_cong list.FOLDR_CONG list.FOLDL_CONG list.FOLDL2_cong list.EVERY2_cong list.MAP_CONG list.EVERY_CONG list.EXISTS_CONG"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "compute",
    data =
        "list.MAP2_def list.PAD_LEFT list.dropWhile_def list.nub_def list.LLEX_DEF list.LIST_LIFT2_DEF list.LIST_APPLY_DEF list.LIST_IGNORE_BIND_DEF list.LIST_BIND_DEF list.splitAtPki_DEF list.EVERYi_DEF list.SUM_ACC_DEF list.REV_DEF list.LEN_DEF list.PAD_RIGHT list.isPREFIX list.GENLIST_AUX_compute list.GENLIST_AUX list.LRC_def list.FIND_def list.FOLDL2_def list.INDEX_OF_def list.INDEX_FIND_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "TexTokenMap",
    data =
        "3.<<=20.\\\\HOLTokenIsPrefix{}1.12.\\226\\137\\18820.\\\\HOLTokenIsPrefix{}1."
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "list",
    thydataty = "OpenTheoryMap",
    data =
        "14.Data.List.list4.list4.list 12.Data.List.[]4.list3.NIL12.Data.List.::4.list4.CONS16.Data.List.length4.list6.LENGTH11.Data.List.@4.list6.APPEND13.Data.List.any4.list6.EXISTS13.Data.List.all4.list5.EVERY16.Data.List.filter4.list6.FILTER13.Data.List.map4.list3.MAP14.Data.List.head4.list2.HD14.Data.List.tail4.list2.TL16.Data.List.concat4.list4.FLAT"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "list"
end
