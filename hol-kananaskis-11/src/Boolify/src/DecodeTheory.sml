structure DecodeTheory :> DecodeTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading DecodeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open EncodeTheory
  in end;
  val _ = Theory.link_parents
          ("Decode",
          Arbnum.fromString "1488589564",
          Arbnum.fromString "446879")
          [("Encode",
           Arbnum.fromString "1488589539",
           Arbnum.fromString "580781")];
  val _ = Theory.incorporate_types "Decode" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("option", "option"),
   ID("pair", "prod"), ID("list", "list"), ID("one", "one"),
   ID("Encode", "tree"), ID("sum", "sum"), ID("num", "num"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("min", "@"), ID("list", "APPEND"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bool", "COND"),
   ID("list", "CONS"), ID("list", "EVERY"), ID("arithmetic", "EXP"),
   ID("pair", "FST"), ID("sum", "INL"), ID("sum", "INR"),
   ID("combin", "K"), ID("list", "NIL"), ID("option", "NONE"),
   ID("arithmetic", "NUMERAL"), ID("Encode", "Node"), ID("pair", "SND"),
   ID("option", "SOME"), ID("num", "SUC"), ID("bool", "T"),
   ID("pair", "UNCURRY"), ID("arithmetic", "ZERO"),
   ID("Decode", "dec2enc"), ID("Decode", "dec_bnum"),
   ID("Decode", "decode_blist"), ID("Decode", "decode_bnum"),
   ID("Decode", "decode_bool"), ID("Decode", "decode_list"),
   ID("Decode", "decode_num"), ID("Decode", "decode_option"),
   ID("Decode", "decode_prod"), ID("Decode", "decode_sum"),
   ID("Decode", "decode_tree"), ID("Decode", "decode_unit"),
   ID("Decode", "enc2dec"), ID("Encode", "encode_blist"),
   ID("Encode", "encode_bnum"), ID("Encode", "encode_bool"),
   ID("Encode", "encode_list"), ID("Encode", "encode_num"),
   ID("Encode", "encode_option"), ID("Encode", "encode_prod"),
   ID("Encode", "encode_sum"), ID("Encode", "encode_tree"),
   ID("Encode", "encode_unit"), ID("Encode", "lift_blist"),
   ID("Encode", "lift_option"), ID("Encode", "lift_prod"),
   ID("Encode", "lift_sum"), ID("Encode", "lift_tree"),
   ID("list", "list_CASE"), ID("arithmetic", "num_CASE"),
   ID("option", "option_CASE"), ID("pair", "pair_CASE"),
   ID("Decode", "wf_decoder"), ID("Encode", "wf_encoder"),
   ID("Encode", "wf_pred_bnum"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [4, 0], TYV "'a", TYOP [3, 2, 1], TYOP [2, 3],
   TYOP [0, 1, 4], TYOP [0, 5, 0], TYOP [0, 2, 0], TYOP [0, 7, 6],
   TYOP [0, 2, 1], TYOP [0, 9, 5], TYOP [0, 7, 10], TYOP [5],
   TYOP [3, 12, 1], TYOP [2, 13], TYOP [0, 1, 14], TYOP [0, 12, 0],
   TYOP [0, 16, 15], TYOP [6, 2], TYOP [3, 18, 1], TYOP [2, 19],
   TYOP [0, 1, 20], TYOP [0, 5, 21], TYOP [0, 18, 0], TYOP [0, 23, 22],
   TYV "'b", TYOP [7, 2, 25], TYOP [3, 26, 1], TYOP [2, 27],
   TYOP [0, 1, 28], TYOP [3, 25, 1], TYOP [2, 30], TYOP [0, 1, 31],
   TYOP [0, 32, 29], TYOP [0, 5, 33], TYOP [0, 26, 0], TYOP [0, 35, 34],
   TYOP [3, 2, 25], TYOP [3, 37, 1], TYOP [2, 38], TYOP [0, 1, 39],
   TYOP [0, 32, 40], TYOP [0, 5, 41], TYOP [0, 37, 0], TYOP [0, 43, 42],
   TYOP [2, 2], TYOP [3, 45, 1], TYOP [2, 46], TYOP [0, 1, 47],
   TYOP [0, 5, 48], TYOP [0, 45, 0], TYOP [0, 50, 49], TYOP [8],
   TYOP [3, 52, 1], TYOP [2, 53], TYOP [0, 1, 54], TYOP [0, 52, 0],
   TYOP [0, 56, 55], TYOP [4, 2], TYOP [3, 58, 1], TYOP [2, 59],
   TYOP [0, 1, 60], TYOP [0, 5, 61], TYOP [0, 58, 0], TYOP [0, 63, 62],
   TYOP [3, 0, 1], TYOP [2, 65], TYOP [0, 1, 66], TYOP [0, 0, 0],
   TYOP [0, 68, 67], TYOP [0, 52, 57], TYOP [0, 52, 62], TYOP [0, 63, 71],
   TYOP [0, 52, 55], TYOP [0, 5, 9], TYOP [0, 25, 1], TYOP [0, 25, 0],
   TYOP [4, 18], TYOP [3, 77, 1], TYOP [0, 7, 0], TYOP [0, 68, 0],
   TYOP [0, 79, 0], TYOP [0, 9, 0], TYOP [0, 82, 0], TYOP [0, 76, 0],
   TYOP [0, 84, 0], TYOP [0, 75, 0], TYOP [0, 86, 0], TYOP [0, 80, 0],
   TYOP [0, 63, 0], TYOP [0, 89, 0], TYOP [0, 6, 0], TYOP [0, 32, 0],
   TYOP [0, 92, 0], TYOP [0, 56, 0], TYOP [0, 94, 0], TYOP [0, 16, 0],
   TYOP [0, 96, 0], TYOP [0, 50, 0], TYOP [0, 98, 0], TYOP [0, 43, 0],
   TYOP [0, 100, 0], TYOP [0, 35, 0], TYOP [0, 102, 0], TYOP [0, 23, 0],
   TYOP [0, 104, 0], TYOP [0, 1, 0], TYOP [0, 106, 0], TYOP [0, 3, 0],
   TYOP [0, 108, 0], TYOP [0, 52, 52], TYOP [0, 52, 110], TYOP [0, 25, 37],
   TYOP [0, 2, 112], TYOP [0, 1, 3], TYOP [0, 2, 114], TYOP [0, 1, 65],
   TYOP [0, 0, 116], TYOP [0, 1, 59], TYOP [0, 58, 118], TYOP [0, 1, 53],
   TYOP [0, 52, 120], TYOP [0, 1, 13], TYOP [0, 12, 122], TYOP [0, 1, 46],
   TYOP [0, 45, 124], TYOP [0, 1, 38], TYOP [0, 37, 126], TYOP [0, 1, 27],
   TYOP [0, 26, 128], TYOP [0, 1, 19], TYOP [0, 18, 130], TYOP [0, 0, 68],
   TYOP [0, 52, 56], TYOP [0, 5, 6], TYOP [0, 67, 0], TYOP [0, 67, 135],
   TYOP [0, 61, 0], TYOP [0, 61, 137], TYOP [0, 55, 0], TYOP [0, 55, 139],
   TYOP [0, 15, 0], TYOP [0, 15, 141], TYOP [0, 48, 0], TYOP [0, 48, 143],
   TYOP [0, 40, 0], TYOP [0, 40, 145], TYOP [0, 29, 0], TYOP [0, 29, 147],
   TYOP [0, 21, 0], TYOP [0, 21, 149], TYOP [0, 1, 106], TYOP [0, 4, 0],
   TYOP [0, 4, 152], TYOP [0, 66, 0], TYOP [0, 66, 154], TYOP [0, 60, 0],
   TYOP [0, 60, 156], TYOP [0, 54, 0], TYOP [0, 54, 158], TYOP [0, 14, 0],
   TYOP [0, 14, 160], TYOP [0, 47, 0], TYOP [0, 47, 162], TYOP [0, 39, 0],
   TYOP [0, 39, 164], TYOP [0, 28, 0], TYOP [0, 28, 166], TYOP [0, 20, 0],
   TYOP [0, 20, 168], TYOP [0, 106, 1], TYOP [0, 108, 3], TYOP [0, 1, 1],
   TYOP [0, 1, 172], TYOP [0, 0, 132], TYOP [0, 0, 111], TYOP [0, 4, 4],
   TYOP [0, 4, 176], TYOP [0, 0, 177], TYOP [0, 66, 66], TYOP [0, 66, 179],
   TYOP [0, 0, 180], TYOP [0, 60, 60], TYOP [0, 60, 182], TYOP [0, 0, 183],
   TYOP [0, 54, 54], TYOP [0, 54, 185], TYOP [0, 0, 186], TYOP [0, 14, 14],
   TYOP [0, 14, 188], TYOP [0, 0, 189], TYOP [0, 47, 47],
   TYOP [0, 47, 191], TYOP [0, 0, 192], TYOP [0, 28, 28],
   TYOP [0, 28, 194], TYOP [0, 0, 195], TYOP [0, 58, 58], TYOP [0, 2, 197],
   TYOP [0, 7, 63], TYOP [0, 77, 0], TYOP [0, 23, 200], TYOP [0, 3, 2],
   TYOP [0, 2, 26], TYOP [0, 25, 26], TYOP [0, 0, 56], TYOP [0, 77, 18],
   TYOP [0, 2, 206], TYOP [0, 3, 1], TYOP [0, 2, 45], TYOP [0, 3, 4],
   TYOP [0, 65, 66], TYOP [0, 59, 60], TYOP [0, 53, 54], TYOP [0, 13, 14],
   TYOP [0, 46, 47], TYOP [0, 38, 39], TYOP [0, 27, 28], TYOP [0, 19, 20],
   TYOP [0, 2, 106], TYOP [0, 219, 108], TYOP [0, 32, 75], TYOP [0, 0, 1],
   TYOP [0, 67, 222], TYOP [0, 58, 1], TYOP [0, 61, 224], TYOP [0, 52, 1],
   TYOP [0, 55, 226], TYOP [0, 12, 1], TYOP [0, 15, 228], TYOP [0, 45, 1],
   TYOP [0, 48, 230], TYOP [0, 37, 1], TYOP [0, 40, 232], TYOP [0, 26, 1],
   TYOP [0, 29, 234], TYOP [2, 78], TYOP [0, 1, 236], TYOP [0, 21, 237],
   TYOP [0, 200, 238], TYOP [0, 75, 32], TYOP [0, 76, 240],
   TYOP [0, 222, 67], TYOP [0, 68, 242], TYOP [0, 224, 61],
   TYOP [0, 63, 244], TYOP [0, 226, 55], TYOP [0, 56, 246],
   TYOP [0, 228, 15], TYOP [0, 16, 248], TYOP [0, 230, 48],
   TYOP [0, 50, 250], TYOP [0, 232, 40], TYOP [0, 43, 252],
   TYOP [0, 234, 29], TYOP [0, 35, 254], TYOP [0, 18, 1],
   TYOP [0, 256, 21], TYOP [0, 23, 257], TYOP [0, 9, 224],
   TYOP [0, 52, 259], TYOP [0, 52, 226], TYOP [0, 9, 230],
   TYOP [0, 75, 232], TYOP [0, 9, 263], TYOP [0, 75, 234],
   TYOP [0, 9, 265], TYOP [0, 9, 256], TYOP [0, 52, 199], TYOP [0, 7, 50],
   TYOP [0, 76, 43], TYOP [0, 7, 270], TYOP [0, 76, 35], TYOP [0, 7, 272],
   TYOP [0, 7, 23], TYOP [0, 0, 67], TYOP [0, 275, 66], TYOP [0, 66, 276],
   TYOP [0, 1, 277], TYOP [0, 0, 61], TYOP [0, 279, 60], TYOP [0, 60, 280],
   TYOP [0, 1, 281], TYOP [0, 0, 55], TYOP [0, 283, 54], TYOP [0, 54, 284],
   TYOP [0, 1, 285], TYOP [0, 0, 48], TYOP [0, 287, 47], TYOP [0, 47, 288],
   TYOP [0, 1, 289], TYOP [0, 0, 29], TYOP [0, 291, 28], TYOP [0, 28, 292],
   TYOP [0, 1, 293], TYOP [0, 52, 60], TYOP [0, 295, 60],
   TYOP [0, 60, 296], TYOP [0, 52, 297], TYOP [0, 3, 60],
   TYOP [0, 299, 60], TYOP [0, 60, 300], TYOP [0, 4, 301], TYOP [0, 3, 47],
   TYOP [0, 303, 47], TYOP [0, 47, 304], TYOP [0, 4, 305], TYOP [0, 3, 39],
   TYOP [0, 307, 39], TYOP [0, 39, 308], TYOP [0, 4, 309], TYOP [0, 3, 28],
   TYOP [0, 311, 28], TYOP [0, 28, 312], TYOP [0, 4, 313], TYOP [0, 3, 20],
   TYOP [0, 315, 20], TYOP [0, 20, 316], TYOP [0, 4, 317],
   TYOP [0, 30, 39], TYOP [0, 319, 39], TYOP [0, 39, 320],
   TYOP [0, 31, 321], TYOP [0, 30, 28], TYOP [0, 323, 28],
   TYOP [0, 28, 324], TYOP [0, 31, 325], TYOP [0, 212, 60],
   TYOP [0, 60, 327], TYOP [0, 60, 328], TYOP [0, 78, 20],
   TYOP [0, 330, 20], TYOP [0, 20, 331], TYOP [0, 236, 332],
   TYOP [0, 213, 54], TYOP [0, 54, 334], TYOP [0, 54, 335],
   TYOP [0, 2, 61], TYOP [0, 337, 60], TYOP [0, 3, 338], TYOP [0, 2, 48],
   TYOP [0, 340, 47], TYOP [0, 3, 341], TYOP [0, 2, 40], TYOP [0, 343, 39],
   TYOP [0, 3, 344], TYOP [0, 2, 29], TYOP [0, 346, 28], TYOP [0, 3, 347],
   TYOP [0, 2, 21], TYOP [0, 349, 20], TYOP [0, 3, 350], TYOP [0, 25, 40],
   TYOP [0, 352, 39], TYOP [0, 30, 353], TYOP [0, 25, 29],
   TYOP [0, 355, 28], TYOP [0, 30, 356], TYOP [0, 58, 61],
   TYOP [0, 358, 60], TYOP [0, 59, 359], TYOP [0, 77, 21],
   TYOP [0, 361, 20], TYOP [0, 78, 362], TYOP [0, 73, 54],
   TYOP [0, 53, 364], TYOP [0, 76, 92], TYOP [0, 68, 135],
   TYOP [0, 63, 137], TYOP [0, 56, 139], TYOP [0, 16, 141],
   TYOP [0, 50, 143], TYOP [0, 43, 145], TYOP [0, 35, 147],
   TYOP [0, 23, 149], TYOP [0, 7, 82], TYOP [0, 76, 86], TYOP [0, 52, 94]]
  end
  val _ = Theory.incorporate_consts "Decode" tyvector
     [("wf_decoder", 8), ("enc2dec", 11), ("decode_unit", 17),
      ("decode_tree", 24), ("decode_sum", 36), ("decode_prod", 44),
      ("decode_option", 51), ("decode_num", 57), ("decode_list", 64),
      ("decode_bool", 69), ("decode_bnum", 70), ("decode_blist", 72),
      ("dec_bnum", 73), ("dec2enc", 74)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("a", 2), TMV("a", 1), TMV("b", 1), TMV("c", 1), TMV("d", 5),
   TMV("d1", 5), TMV("d2", 32), TMV("e", 9), TMV("e1", 9), TMV("e2", 75),
   TMV("h", 0), TMV("l", 58), TMV("l", 1), TMV("l", 45), TMV("l", 37),
   TMV("l", 26), TMV("m", 52), TMV("n", 52), TMV("p", 7), TMV("p", 68),
   TMV("p", 63), TMV("p", 56), TMV("p", 16), TMV("p", 50), TMV("p", 43),
   TMV("p", 35), TMV("p", 23), TMV("p1", 7), TMV("p2", 76), TMV("t", 1),
   TMV("t'", 1), TMV("t''", 1), TMV("ts", 77), TMV("v", 0), TMV("v", 52),
   TMV("v", 3), TMV("v", 30), TMV("v", 59), TMV("v", 78), TMV("v", 53),
   TMV("v'", 3), TMV("v'", 53), TMV("v1", 53), TMV("v2", 0), TMV("v6", 0),
   TMV("x", 2), TMV("x", 25), TMV("x", 0), TMV("x", 58), TMV("x", 52),
   TMV("x", 12), TMV("x", 45), TMV("x", 37), TMV("x", 3), TMV("x", 26),
   TMV("xs", 58), TMV("y", 25), TMC(9, 79), TMC(9, 80), TMC(9, 81),
   TMC(9, 83), TMC(9, 85), TMC(9, 87), TMC(9, 88), TMC(9, 90), TMC(9, 91),
   TMC(9, 93), TMC(9, 95), TMC(9, 97), TMC(9, 99), TMC(9, 101),
   TMC(9, 103), TMC(9, 105), TMC(9, 89), TMC(9, 107), TMC(9, 94),
   TMC(9, 96), TMC(9, 98), TMC(9, 100), TMC(9, 109), TMC(9, 102),
   TMC(10, 111), TMC(11, 111), TMC(12, 113), TMC(12, 115), TMC(12, 117),
   TMC(12, 119), TMC(12, 121), TMC(12, 123), TMC(12, 125), TMC(12, 127),
   TMC(12, 129), TMC(12, 131), TMC(13, 111), TMC(14, 132), TMC(15, 52),
   TMC(16, 133), TMC(17, 132), TMC(17, 134), TMC(17, 136), TMC(17, 138),
   TMC(17, 140), TMC(17, 142), TMC(17, 144), TMC(17, 146), TMC(17, 148),
   TMC(17, 150), TMC(17, 151), TMC(17, 153), TMC(17, 155), TMC(17, 157),
   TMC(17, 159), TMC(17, 161), TMC(17, 163), TMC(17, 165), TMC(17, 167),
   TMC(17, 169), TMC(18, 132), TMC(19, 79), TMC(19, 107), TMC(20, 170),
   TMC(20, 171), TMC(21, 173), TMC(22, 110), TMC(23, 110), TMC(24, 174),
   TMC(24, 175), TMC(24, 178), TMC(24, 181), TMC(24, 184), TMC(24, 187),
   TMC(24, 190), TMC(24, 193), TMC(24, 196), TMC(25, 198), TMC(26, 199),
   TMC(26, 201), TMC(27, 111), TMC(28, 202), TMC(29, 203), TMC(30, 204),
   TMC(31, 205), TMC(32, 58), TMC(32, 1), TMC(33, 45), TMC(33, 4),
   TMC(33, 66), TMC(33, 60), TMC(33, 54), TMC(33, 14), TMC(33, 47),
   TMC(33, 39), TMC(33, 28), TMC(33, 20), TMC(34, 110), TMC(35, 207),
   TMC(36, 208), TMC(37, 209), TMC(37, 210), TMC(37, 211), TMC(37, 212),
   TMC(37, 213), TMC(37, 214), TMC(37, 215), TMC(37, 216), TMC(37, 217),
   TMC(37, 218), TMC(38, 110), TMC(39, 0), TMC(40, 220), TMC(41, 52),
   TMC(42, 74), TMC(42, 221), TMC(42, 223), TMC(42, 225), TMC(42, 227),
   TMC(42, 229), TMC(42, 231), TMC(42, 233), TMC(42, 235), TMC(43, 73),
   TMC(44, 72), TMC(45, 70), TMC(46, 69), TMC(47, 64), TMC(47, 239),
   TMC(48, 57), TMC(49, 51), TMC(50, 44), TMC(51, 36), TMC(52, 24),
   TMC(53, 17), TMC(54, 11), TMC(54, 241), TMC(54, 243), TMC(54, 245),
   TMC(54, 247), TMC(54, 249), TMC(54, 251), TMC(54, 253), TMC(54, 255),
   TMC(54, 258), TMC(55, 260), TMC(56, 261), TMC(57, 222), TMC(58, 259),
   TMC(59, 226), TMC(60, 262), TMC(61, 264), TMC(62, 266), TMC(63, 267),
   TMC(64, 228), TMC(65, 268), TMC(66, 269), TMC(67, 271), TMC(68, 273),
   TMC(69, 274), TMC(70, 278), TMC(70, 282), TMC(70, 286), TMC(70, 290),
   TMC(70, 294), TMC(71, 298), TMC(5, 12), TMC(72, 302), TMC(72, 306),
   TMC(72, 310), TMC(72, 314), TMC(72, 318), TMC(72, 322), TMC(72, 326),
   TMC(72, 329), TMC(72, 333), TMC(72, 336), TMC(73, 339), TMC(73, 342),
   TMC(73, 345), TMC(73, 348), TMC(73, 351), TMC(73, 354), TMC(73, 357),
   TMC(73, 360), TMC(73, 363), TMC(73, 365), TMC(74, 8), TMC(74, 366),
   TMC(74, 367), TMC(74, 368), TMC(74, 369), TMC(74, 370), TMC(74, 371),
   TMC(74, 372), TMC(74, 373), TMC(74, 374), TMC(75, 375), TMC(75, 376),
   TMC(76, 377), TMC(77, 68)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op wf_decoder_def x = x
    val op wf_decoder_def =
    DT(((("Decode",0),[]),[]),
       [read"%59%18%65%4%97%244$1@$0@@%57%45%125$2$0@@%119%1%74%2%74%3%97%108$4$1@@%158%84$3@$0@@@@%107$1@%122$2@$0@@@|@|@|@@%74%1%74%2%257%108$3$1@@%158%84$2@$0@@@@|@|@@|@@|@|@"])
  fun op enc2dec_def x = x
    val op enc2dec_def =
    DT(((("Decode",1),[]),[]),
       [read"%59%18%60%7%74%12%108%192$2@$1@$0@@%127%118%45%119%29%94$4$1@@%107$2@%122$3$1@@$0@@@|@|@@%158%121%169%45%29%94$4$1@@%107$2@%122$3$1@@$0@@@||@@@@%145@@|@|@|@"])
  fun op dec2enc_def x = x
    val op dec2enc_def =
    DT(((("Decode",2),[]),[]),
       [read"%65%4%57%45%107%171$1@$0@@%120%12%108$2$0@@%158%84$1@%143@@@|@@|@|@"])
  fun op decode_unit_def x = x
    val op decode_unit_def =
    DT(((("Decode",13),[]),[]), [read"%68%22%102%191$0@@%197$0@%211@@|@"])
  fun op decode_bool_def x = x
    val op decode_bool_def =
    DT(((("Decode",17),[]),[]), [read"%63%19%99%183$0@@%194$0@%204@@|@"])
  fun op decode_prod_def x = x
    val op decode_prod_def =
    DT(((("Decode",21),[]),[]),
       [read"%70%24%65%5%66%6%104%188$2@$1@$0@@%199$2@%208%171$1@@%172$0@@@@|@|@|@"])
  fun op decode_sum_def x = x
    val op decode_sum_def =
    DT(((("Decode",26),[]),[]),
       [read"%71%25%65%5%66%6%105%189$2@$1@$0@@%200$2@%209%171$1@@%172$0@@@@|@|@|@"])
  fun op decode_option_def x = x
    val op decode_option_def =
    DT(((("Decode",31),[]),[]),
       [read"%69%23%65%4%103%187$1@$0@@%198$1@%207%171$0@@@@|@|@"])
  fun op decode_list_def x = x
    val op decode_list_def =
    DT(((("Decode",36),[]),[]),
       [read"%64%20%65%4%100%184$1@$0@@%195$1@%205%171$0@@@@|@|@"])
  fun op decode_blist_def x = x
    val op decode_blist_def =
    DT(((("Decode",41),[]),[]),
       [read"%64%20%75%16%65%4%100%181$2@$1@$0@@%195$2@%202$1@%171$0@@@@|@|@|@"])
  fun op decode_num_def x = x
    val op decode_num_def =
    DT(((("Decode",46),[]),[]), [read"%67%21%101%186$0@@%196$0@%206@@|@"])
  fun op decode_bnum_def x = x
    val op decode_bnum_def =
    DT(((("Decode",51),[]),[]),
       [read"%75%16%67%21%101%182$1@$0@@%196$0@%203$1@@@|@|@"])
  fun op dec_bnum_def x = x
    val op dec_bnum_def =
    DT(((("Decode",52),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%94%74%12%111%180%95@$0@@%161%87%95@$0@@@|@@%75%16%74%12%111%180%167$1@@$0@@%219$0@%148@%10%29%233%180$3@$0@@%148@%41%243$0@%17%30%161%87%82%81%154%124%170@@@$1@@%126$4@%154%123%170@@@%95@@@$0@@||@|@||@@|@|@@"])
  fun op decode_tree_def x = x
    val op decode_tree_def =
    DT(((("Decode",59),[]),[]),
       [read"%72%26%65%4%106%190$1@$0@@%201$1@%210%171$0@@@@|@|@"])
  fun op enc2dec_none x = x
    val op enc2dec_none =
    DT(((("Decode",3),
        [("Decode",[1]),
         ("bool",[25,26,47,48,53,54,58,63,71,72,76,80,81,84,96]),
         ("option",[27]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%60%7%74%12%97%108%192$2@$1@$0@@%145@@%57%45%74%29%117$4$1@@%257%107$2@%122$3$1@@$0@@@@|@|@@|@|@|@"])
  fun op enc2dec_some x = x
    val op enc2dec_some =
    DT(((("Decode",4),
        [("Decode",[1]),("Encode",[7]),
         ("bool",
         [2,15,25,26,27,30,51,53,54,55,56,58,63,70,73,75,84,96,99,105,
          124]),("list",[104]),("option",[27]),("pair",[4,8,9,15,25]),
         ("rich_list",[267,274,275]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%59%18%60%7%74%12%57%45%74%29%117%254$4@$3@@%97%108%192$4@$3@$2@@%158%84$1@$0@@@@%94$4$1@@%107$2@%122$3$1@@$0@@@@@|@|@|@|@|@"])
  fun op enc2dec_some_alt x = x
    val op enc2dec_some_alt =
    DT(((("Decode",5),
        [("Decode",[4]),("bool",[25,26,53,54,55,63,99,100]),
         ("pair",[5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%59%18%60%7%74%12%79%53%117%254$3@$2@@%97%108%192$3@$2@$1@@%158$0@@@%94$3%138$0@@@%107$1@%122$2%138$0@@@%156$0@@@@@@|@|@|@|@"])
  fun op wf_enc2dec x = x
    val op wf_enc2dec =
    DT(((("Decode",6),
        [("Decode",[0,4]),
         ("bool",
         [5,25,26,27,30,36,47,48,51,52,53,54,56,58,63,64,71,72,96,105,124,
          129,146]),("combin",[19]),("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%60%7%117%254$1@$0@@%244$1@%192$1@$0@@@|@|@"])
  fun op dec2enc_some x = x
    val op dec2enc_some =
    DT(((("Decode",7),
        [("Decode",[0,2]),
         ("bool",
         [2,25,26,30,36,47,48,51,53,54,56,58,63,64,72,73,77,78,80,81,84,93,
          94,96,105,108,109,111,124,146]),("combin",[19]),
         ("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%65%4%57%45%74%12%117%244$3@$2@@%97%94%107%171$2@$1@@$0@@$3$1@@@%108$2$0@@%158%84$1@%143@@@@@|@|@|@|@"])
  fun op decode_dec2enc x = x
    val op decode_dec2enc =
    DT(((("Decode",8),
        [("Decode",[7]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%65%4%57%45%117%94%244$2@$1@@$2$0@@@%108$1%171$1@$0@@@%158%84$0@%143@@@@|@|@|@"])
  fun op decode_dec2enc_append x = x
    val op decode_dec2enc_append =
    DT(((("Decode",9),
        [("Decode",[0,8]),
         ("bool",[25,27,51,53,54,56,58,63,105,124,129,147]),
         ("rich_list",[52])]),["DISK_THM"]),
       [read"%59%18%65%4%57%45%74%29%117%94%244$3@$2@@$3$1@@@%108$2%122%171$2@$1@@$0@@@%158%84$1@$0@@@@|@|@|@|@"])
  fun op wf_dec2enc x = x
    val op wf_dec2enc =
    DT(((("Decode",10),
        [("Decode",[0,8]),("Encode",[7]),
         ("bool",[25,27,51,53,54,56,58,63,105,124,129,147]),("list",[56]),
         ("option",[10]),("pair",[4]),
         ("rich_list",[52,71])]),["DISK_THM"]),
       [read"%59%18%65%4%117%244$1@$0@@%254$1@%171$0@@@|@|@"])
  fun op dec2enc_enc2dec x = x
    val op dec2enc_enc2dec =
    DT(((("Decode",11),
        [("Decode",[4,6,7]),("bool",[25,51,53,56,58,63,105,124]),
         ("rich_list",[52])]),["DISK_THM"]),
       [read"%59%18%60%7%57%45%117%94%254$2@$1@@$2$0@@@%107%171%192$2@$1@@$0@@$1$0@@@|@|@|@"])
  fun op enc2dec_dec2enc x = x
    val op enc2dec_dec2enc =
    DT(((("Decode",12),
        [("Decode",[0,3,4,7,9,10]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,59,63,71,72,73,74,
          75,76,77,78,80,81,83,84,93,94,96,105,111,124,129,146,147]),
         ("combin",[19]),("list",[104]),("option",[6,12]),("pair",[5]),
         ("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%65%4%117%244$1@$0@@%98%192$1@%171$0@@@$0@@|@|@"])
  fun op wf_decode_unit x = x
    val op wf_decode_unit =
    DT(((("Decode",14),
        [("Decode",[6,13]),("Encode",[12]),
         ("bool",[25,63])]),["DISK_THM"]), [read"%249%22@%191%22@@"])
  fun op dec2enc_decode_unit x = x
    val op dec2enc_decode_unit =
    DT(((("Decode",15),
        [("Decode",[11,13]),("Encode",[12]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%68%22%76%50%117$1$0@@%107%176%191$1@@$0@@%211$0@@@|@|@"])
  fun op decode_unit x = x
    val op decode_unit =
    DT(((("Decode",16),
        [("Decode",[3,4,13]),("Encode",[11,12]),
         ("bool",[25,26,27,30,36,51,53,56,58,63,64,105,124]),("list",[20]),
         ("one",[3])]),["DISK_THM"]),
       [read"%112%191%22@%12@@%131%22%223@@%162%88%223@%12@@@%149@@"])
  fun op wf_decode_bool x = x
    val op wf_decode_bool =
    DT(((("Decode",18),
        [("Decode",[6,17]),("Encode",[14]),
         ("bool",[25,63])]),["DISK_THM"]), [read"%63%19%246$0@%183$0@@|@"])
  fun op dec2enc_decode_bool x = x
    val op dec2enc_decode_bool =
    DT(((("Decode",19),
        [("Decode",[11,17]),("Encode",[14]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%63%19%58%47%117$1$0@@%107%173%183$1@@$0@@%204$0@@@|@|@"])
  fun op decode_bool x = x
    val op decode_bool =
    DT(((("Decode",20),
        [("Decode",[3,4,17]),("Encode",[13,14]),
         ("bool",
         [25,26,27,30,36,51,53,54,56,58,63,64,93,95,96,101,105,124,145]),
         ("list",[6,9,10,20,46])]),["DISK_THM"]),
       [read"%109%183%19@%12@@%217%12@%146@%10%29%128%19$1@@%159%85$1@$0@@@%146@||@@"])
  fun op wf_decode_prod x = x
    val op wf_decode_prod =
    DT(((("Decode",22),
        [("Decode",[6,10,21]),("Encode",[18]),
         ("bool",[25,26,47,48,53,54,58,63,93,94,96,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%27%61%28%65%5%66%6%117%94%244$3@$1@@%245$2@$0@@@%251%214$3@$2@@%188%214$3@$2@@$1@$0@@@|@|@|@|@"])
  fun op dec2enc_decode_prod x = x
    val op dec2enc_decode_prod =
    DT(((("Decode",23),
        [("Decode",[10,11,21]),("Encode",[18]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%59%27%61%28%65%5%66%6%78%52%117%94%244$4@$2@@%94%245$3@$1@@%214$4@$3@$0@@@@%107%178%188%214$4@$3@@$2@$1@@$0@@%208%171$2@@%172$1@@$0@@@|@|@|@|@|@"])
  fun op encode_then_decode_prod x = x
    val op encode_then_decode_prod =
    DT(((("Decode",24),
        [("Decode",[4,6,10,11,21]),("Encode",[15,16,18]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("list",[104]),("pair",[5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%27%61%28%60%8%62%9%78%14%74%29%117%94%254$5@$3@@%94%255$4@$2@@%214$5@$4@$1@@@@%114%188%214$5@$4@@%192$5@$3@@%193$4@$2@@%122%208$3@$2@$1@@$0@@@%164%90$1@$0@@@@|@|@|@|@|@|@"])
  fun op decode_prod x = x
    val op decode_prod =
    DT(((("Decode",25),
        [("Decode",[0,3,4,7,9,10,21,22]),("Encode",[15,16,17,18]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,71,72,73,74,75,
          76,77,78,80,81,83,84,93,94,96,105,111,124,129,146,147]),
         ("combin",[19]),("list",[56,104]),("option",[6,7,10,12]),
         ("pair",[4,5,8,9,49]),("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%117%94%244%27@%5@@%245%28@%6@@@%114%188%214%27@%28@@%5@%6@%12@@%226%5%12@@%151@%35%236$0@%45%29%229%6$0@@%151@%36%239$0@%56%30%164%90%83$4@$1@@$0@@||@|@||@|@@@"])
  fun op wf_decode_sum x = x
    val op wf_decode_sum =
    DT(((("Decode",27),
        [("Decode",[6,10,26]),("Encode",[21]),
         ("bool",[25,26,47,48,53,54,58,63,93,94,96,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%27%61%28%65%5%66%6%117%94%244$3@$1@@%245$2@$0@@@%252%215$3@$2@@%189%215$3@$2@@$1@$0@@@|@|@|@|@"])
  fun op dec2enc_decode_sum x = x
    val op dec2enc_decode_sum =
    DT(((("Decode",28),
        [("Decode",[10,11,26]),("Encode",[21]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%59%27%61%28%65%5%66%6%80%54%117%94%244$4@$2@@%94%245$3@$1@@%215$4@$3@$0@@@@%107%179%189%215$4@$3@@$2@$1@@$0@@%209%171$2@@%172$1@@$0@@@|@|@|@|@|@"])
  fun op encode_then_decode_sum x = x
    val op encode_then_decode_sum =
    DT(((("Decode",29),
        [("Decode",[4,6,10,11,26]),("Encode",[19,20,21]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("list",[104]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[14,24])]),["DISK_THM"]),
       [read"%59%27%61%28%60%8%62%9%80%15%74%29%117%94%254$5@$3@@%94%255$4@$2@@%215$5@$4@$1@@@@%115%189%215$5@$4@@%192$5@$3@@%193$4@$2@@%122%209$3@$2@$1@@$0@@@%165%91$1@$0@@@@|@|@|@|@|@|@"])
  fun op decode_sum x = x
    val op decode_sum =
    DT(((("Decode",30),
        [("Decode",[0,3,4,7,9,10,26,27]),("Encode",[19,20,21]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,62,63,64,71,72,73,
          74,75,76,77,78,80,81,83,84,93,94,96,105,111,124,129,146,147]),
         ("combin",[19]),("list",[6,9,10,20,46,104]),("option",[6,7,12]),
         ("pair",[5,49]),("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sum",[14,24])]),["DISK_THM"]),
       [read"%117%94%244%27@%5@@%245%28@%6@@@%115%189%215%27@%28@@%5@%6@%12@@%221%12@%152@%33%29%133$1@%227%5$0@@%152@%35%237$0@%45%30%165%91%139$1@@$0@@||@|@@%230%6$0@@%152@%36%240$0@%46%30%165%91%140$1@@$0@@||@|@@||@@@"])
  fun op wf_decode_option x = x
    val op wf_decode_option =
    DT(((("Decode",32),
        [("Decode",[6,10,31]),("Encode",[24]),
         ("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%59%18%65%4%117%244$1@$0@@%250%213$1@@%187%213$1@@$0@@@|@|@"])
  fun op dec2enc_decode_option x = x
    val op dec2enc_decode_option =
    DT(((("Decode",33),
        [("Decode",[10,11,31]),("Encode",[24]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%59%18%65%4%77%51%117%94%244$2@$1@@%213$2@$0@@@%107%177%187%213$2@@$1@@$0@@%207%171$1@@$0@@@|@|@|@"])
  fun op encode_then_decode_option x = x
    val op encode_then_decode_option =
    DT(((("Decode",34),
        [("Decode",[4,6,10,11,31]),("Encode",[22,23,24]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),("list",[9,104]),("option",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%60%7%77%13%74%29%117%94%254$3@$2@@%213$3@$1@@@%113%187%213$3@@%192$3@$2@@%122%207$2@$1@@$0@@@%163%89$1@$0@@@@|@|@|@|@"])
  fun op decode_option x = x
    val op decode_option =
    DT(((("Decode",35),
        [("Decode",[0,3,4,7,9,10,31,32]),("Encode",[22,23,24]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,62,63,64,71,72,73,
          74,75,76,77,78,80,81,83,84,93,94,96,105,111,124,129,146,147]),
         ("combin",[19]),("list",[6,9,10,20,46,104]),("option",[6,7,12]),
         ("pair",[5,49]),("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%117%244%18@%4@@%113%187%213%18@@%4@%12@@%220%12@%150@%33%29%132$1@%225%4$0@@%150@%35%235$0@%45%30%163%89%157$1@@$0@@||@|@@%163%89%144@$0@@@||@@@"])
  fun op wf_decode_list x = x
    val op wf_decode_list =
    DT(((("Decode",37),
        [("Decode",[6,10,36]),("Encode",[26]),
         ("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%59%18%65%4%117%244$1@$0@@%247%135$1@@%184%135$1@@$0@@@|@|@"])
  fun op dec2enc_decode_list x = x
    val op dec2enc_decode_list =
    DT(((("Decode",38),
        [("Decode",[10,11,36]),("Encode",[26]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%59%18%65%4%73%48%117%94%244$2@$1@@%135$2@$0@@@%107%174%184%135$2@@$1@@$0@@%205%171$1@@$0@@@|@|@|@"])
  fun op encode_then_decode_list x = x
    val op encode_then_decode_list =
    DT(((("Decode",39),
        [("Decode",[4,6,10,11,36]),("Encode",[25,26]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,
          124]),("combin",[19]),("list",[9,30,43,104]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%59%18%60%7%73%11%74%29%117%94%254$3@$2@@%135$3@$1@@@%110%184%135$3@@%192$3@$2@@%122%205$2@$1@@$0@@@%160%86$1@$0@@@@|@|@|@|@"])
  fun op decode_list x = x
    val op decode_list =
    DT(((("Decode",40),
        [("Decode",[0,3,4,7,9,10,36,37]),("Encode",[25,26]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,62,63,64,71,72,73,
          74,75,76,77,78,80,81,83,84,92,93,94,96,105,111,124,129,146,147]),
         ("combin",[19]),("list",[6,9,10,20,30,46,56,104]),
         ("option",[6,7,10,12]),("pair",[4,5,49]),("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%117%244%18@%4@@%110%184%135%18@@%4@%12@@%218%12@%147@%33%29%129$1@%224%4$0@@%147@%35%234$0@%45%30%231%184%135%18@@%4@$0@@%147@%37%241$0@%55%31%160%86%134$4@$1@@$0@@||@|@||@|@@%160%86%142@$0@@@||@@@"])
  fun op wf_decode_blist x = x
    val op wf_decode_blist =
    DT(((("Decode",42),
        [("Decode",[6,10,41]),("Encode",[32]),
         ("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%75%16%59%18%65%4%117%244$1@$0@@%247%212$2@$1@@%181%212$2@$1@@$2@$0@@@|@|@|@"])
  fun op dec2enc_decode_blist x = x
    val op dec2enc_decode_blist =
    DT(((("Decode",43),
        [("Decode",[10,11,41]),("Encode",[32]),
         ("bool",[25,26,36,47,48,53,54,56,58,63,93,94,96,105,124]),
         ("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%75%16%59%18%65%4%73%11%117%94%244$2@$1@@%212$3@$2@$0@@@%107%174%181%212$3@$2@@$3@$1@@$0@@%202$3@%171$1@@$0@@@|@|@|@|@"])
  fun op encode_then_decode_blist x = x
    val op encode_then_decode_blist =
    DT(((("Decode",44),
        [("Decode",[4,6,10,11,41]),("Encode",[28,30,32]),
         ("arithmetic",[21]),
         ("bool",[14,25,26,27,36,47,48,51,53,54,56,58,63,94,105,124]),
         ("combin",[19]),("list",[17,18,22,30,46,104]),("num",[9]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%75%16%59%18%60%7%73%11%74%29%117%94%254$3@$2@@%212$4@$3@$1@@@%110%181%212$4@$3@@$4@%192$3@$2@@%122%202$4@$2@$1@@$0@@@%160%86$1@$0@@@@|@|@|@|@|@"])
  fun op decode_blist x = x
    val op decode_blist =
    DT(((("Decode",45),
        [("Decode",[0,3,4,7,9,10,12,41,44]),("Encode",[28,30,31,32]),
         ("arithmetic",[14,21,28]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,73,74,
          75,76,77,78,80,81,83,84,93,94,96,105,111,124,129,146]),
         ("combin",[19]),("list",[17,18,20,22,30,46,56,104]),
         ("option",[6,7,10,11,12]),("pair",[4,5,49]),("prim_rec",[1]),
         ("rich_list",[52]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%117%244%18@%4@@%110%181%212%16@%18@@%16@%4@%12@@%222%16@%160%86%142@%12@@@%17%224%4%12@@%147@%40%234$0@%45%29%231%181%212$3@%18@@$3@%4@$0@@%147@%37%241$0@%55%30%160%86%134$4@$1@@$0@@||@|@||@|@|@@@"])
  fun op wf_decode_num x = x
    val op wf_decode_num =
    DT(((("Decode",47),
        [("Decode",[6,46]),("Encode",[36]),
         ("bool",[25,63])]),["DISK_THM"]), [read"%67%21%248$0@%186$0@@|@"])
  fun op dec2enc_decode_num x = x
    val op dec2enc_decode_num =
    DT(((("Decode",48),
        [("Decode",[11,46]),("Encode",[36]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%67%21%75%49%117$1$0@@%107%175%186$1@@$0@@%206$0@@@|@|@"])
  fun op decode_num_total x = x
    val op decode_num_total =
    DT(((("Decode",49),
        [("Decode",[3,4,46]),("Encode",[34,36]),
         ("arithmetic",
         [7,12,18,24,25,27,46,62,64,71,73,76,79,93,128,148,166,172,173,177,
          180,183,214,227,269]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,62,63,64,93,94,
          96,101,104,105,124,129,147]),("combin",[12]),
         ("list",[6,9,10,20,46]),("numeral",[3,5,6,7,8]),("option",[6,7]),
         ("pair",[5,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%186%141%168@@%12@@%219%12@%148@%43%30%130$1@%219$0@%148@%44%29%130$1@%161%87%95@$0@@@%233%186%141%168@@$0@@%148@%42%243$0@%34%30%161%87%82%81%154%124%170@@@$1@@%154%123%170@@@@$0@@||@|@@||@@%233%186%141%168@@$0@@%148@%42%243$0@%34%30%161%87%82%81%154%124%170@@@$1@@%154%124%170@@@@$0@@||@|@@||@@"])
  fun op decode_num x = x
    val op decode_num =
    DT(((("Decode",50),
        [("Decode",[3,4,9,11,46,47,49]),("Encode",[34,36]),
         ("arithmetic",[12,27,28,64,65,73,128,158,170,227]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,53,54,56,58,59,62,63,64,71,72,92,93,
          94,96,105,124,147]),("combin",[12,19]),("list",[6,9,20,46]),
         ("numeral",[3,5,7]),("option",[6,7,10]),("pair",[4,5,49]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%111%186%21@%12@@%219%12@%148@%43%30%130$1@%219$0@%148@%44%29%130$1@%130%21%95@@%161%87%95@$0@@@%148@@%233%186%141%168@@$0@@%148@%42%243$0@%34%30%130%21%82%81%154%124%170@@@$1@@%154%123%170@@@@@%161%87%82%81%154%124%170@@@$1@@%154%123%170@@@@$0@@@%148@||@|@@||@@%233%186%141%168@@$0@@%148@%42%243$0@%34%30%130%21%82%81%154%124%170@@@$1@@%154%124%170@@@@@%161%87%82%81%154%124%170@@@$1@@%154%124%170@@@@$0@@@%148@||@|@@||@@"])
  fun op dec_bnum_def_compute x = x
    val op dec_bnum_def_compute =
    DT(((("Decode",53),
        [("Decode",[52]),("arithmetic",[268]),
         ("bool",[26])]),["DISK_THM"]),
       [read"%94%74%12%111%180%95@$0@@%161%87%95@$0@@@|@@%94%75%16%74%12%111%180%154%123$1@@@$0@@%219$0@%148@%10%29%233%180%93%154%123$3@@@%154%123%170@@@@$0@@%148@%41%243$0@%17%30%161%87%82%81%154%124%170@@@$1@@%126$4@%154%123%170@@@%95@@@$0@@||@|@||@@|@|@@%75%16%74%12%111%180%154%124$1@@@$0@@%219$0@%148@%10%29%233%180%154%123$3@@@$0@@%148@%41%243$0@%17%30%161%87%82%81%154%124%170@@@$1@@%126$4@%154%123%170@@@%95@@@$0@@||@|@||@@|@|@@@"])
  fun op dec_bnum_lt x = x
    val op dec_bnum_lt =
    DT(((("Decode",54),
        [("Decode",[52]),("arithmetic",[46,59,71,73,93,172,216,355]),
         ("bool",
         [13,14,25,26,27,36,43,47,48,53,54,58,63,64,94,96,101,104,105,
          124]),("list",[6,46]),("num",[9]),("numeral",[3,7,8,33]),
         ("option",[6,7,10,11]),("pair",[4,5,49]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%75%16%74%12%75%17%74%29%117%111%180$3@$2@@%161%87$1@$0@@@@%96$1@%137%154%124%170@@@$3@@@|@|@|@|@"])
  fun op dec_bnum_inj x = x
    val op dec_bnum_inj =
    DT(((("Decode",55),
        [("Decode",[52]),("Encode",[37]),
         ("arithmetic",[22,64,73,127,159,166,167,209,237,349]),
         ("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,64,93,94,96,105,
          124]),("list",[6,9,10,20,46,104]),("num",[9]),
         ("numeral",[3,6,7]),("option",[6,7,10,11]),("pair",[4,5,49]),
         ("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%75%16%74%12%75%17%74%29%117%111%180$3@$2@@%161%87$1@$0@@@@%107$2@%122%203$3@$1@@$0@@@|@|@|@|@"])
  fun op wf_decode_bnum x = x
    val op wf_decode_bnum =
    DT(((("Decode",56),
        [("Decode",[6,51]),("Encode",[46]),
         ("bool",[25,53,58,63,105,124])]),["DISK_THM"]),
       [read"%75%16%67%21%117%256$1@$0@@%248$0@%182$1@$0@@@|@|@"])
  fun op dec2enc_decode_bnum x = x
    val op dec2enc_decode_bnum =
    DT(((("Decode",57),
        [("Decode",[11,51]),("Encode",[46]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%75%16%67%21%75%49%117%94%256$2@$1@@$1$0@@@%107%175%182$2@$1@@$0@@%203$2@$0@@@|@|@|@"])
  fun op decode_bnum x = x
    val op decode_bnum =
    DT(((("Decode",58),
        [("Decode",[3,4,51,52,54,55]),("Encode",[1,3,8,37,40,41,46]),
         ("arithmetic",[22,41,46,71,73,93,173,177,180,209,237,349,355]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,75,78,
          80,84,92,93,94,95,96,101,104,105,109,110,111,124,129,145,146]),
         ("combin",[19]),("list",[6,9,20,46,104]),("num",[9]),
         ("numeral",[3,7,8,33]),("option",[6,7,10,11]),("pair",[4,5,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%117%256%16@%21@@%111%182%16@%21@%12@@%233%180%16@%12@@%148@%39%243$0@%17%29%130%21$1@@%161%87$1@$0@@@%148@||@|@@@"])
  fun op wf_decode_tree x = x
    val op wf_decode_tree =
    DT(((("Decode",60),
        [("Decode",[6,10,59]),("Encode",[71]),
         ("bool",[25,26,47,48,53,54,58,63,94,105,124]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%59%18%65%4%117%244$1@$0@@%253%216$1@@%190%216$1@@$0@@@|@|@"])
  fun op decode_tree x = x
    val op decode_tree =
    DT(((("Decode",61),
        [("Decode",[3,4,9,10,11,12,36,37,39,59,60]),
         ("Encode",[25,26,61,67,70,71]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,93,94,96,105,
          124]),("combin",[19]),("list",[9,30,43,56,104]),
         ("option",[6,7,10,11]),("pair",[4,5,49]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%117%244%18@%4@@%116%190%216%18@@%4@%12@@%228%4%12@@%153@%35%238$0@%0%29%232%185%136%216%18@@@%190%216%18@@%4@@$0@@%153@%38%242$0@%32%30%166%92%155$4@$1@@$0@@||@|@||@|@@@"])
  end
  val _ = DB.bindl "Decode"
  [("wf_decoder_def",wf_decoder_def,DB.Def),
   ("enc2dec_def",enc2dec_def,DB.Def), ("dec2enc_def",dec2enc_def,DB.Def),
   ("decode_unit_def",decode_unit_def,DB.Def),
   ("decode_bool_def",decode_bool_def,DB.Def),
   ("decode_prod_def",decode_prod_def,DB.Def),
   ("decode_sum_def",decode_sum_def,DB.Def),
   ("decode_option_def",decode_option_def,DB.Def),
   ("decode_list_def",decode_list_def,DB.Def),
   ("decode_blist_def",decode_blist_def,DB.Def),
   ("decode_num_def",decode_num_def,DB.Def),
   ("decode_bnum_def",decode_bnum_def,DB.Def),
   ("dec_bnum_def",dec_bnum_def,DB.Def),
   ("decode_tree_def",decode_tree_def,DB.Def),
   ("enc2dec_none",enc2dec_none,DB.Thm),
   ("enc2dec_some",enc2dec_some,DB.Thm),
   ("enc2dec_some_alt",enc2dec_some_alt,DB.Thm),
   ("wf_enc2dec",wf_enc2dec,DB.Thm), ("dec2enc_some",dec2enc_some,DB.Thm),
   ("decode_dec2enc",decode_dec2enc,DB.Thm),
   ("decode_dec2enc_append",decode_dec2enc_append,DB.Thm),
   ("wf_dec2enc",wf_dec2enc,DB.Thm),
   ("dec2enc_enc2dec",dec2enc_enc2dec,DB.Thm),
   ("enc2dec_dec2enc",enc2dec_dec2enc,DB.Thm),
   ("wf_decode_unit",wf_decode_unit,DB.Thm),
   ("dec2enc_decode_unit",dec2enc_decode_unit,DB.Thm),
   ("decode_unit",decode_unit,DB.Thm),
   ("wf_decode_bool",wf_decode_bool,DB.Thm),
   ("dec2enc_decode_bool",dec2enc_decode_bool,DB.Thm),
   ("decode_bool",decode_bool,DB.Thm),
   ("wf_decode_prod",wf_decode_prod,DB.Thm),
   ("dec2enc_decode_prod",dec2enc_decode_prod,DB.Thm),
   ("encode_then_decode_prod",encode_then_decode_prod,DB.Thm),
   ("decode_prod",decode_prod,DB.Thm),
   ("wf_decode_sum",wf_decode_sum,DB.Thm),
   ("dec2enc_decode_sum",dec2enc_decode_sum,DB.Thm),
   ("encode_then_decode_sum",encode_then_decode_sum,DB.Thm),
   ("decode_sum",decode_sum,DB.Thm),
   ("wf_decode_option",wf_decode_option,DB.Thm),
   ("dec2enc_decode_option",dec2enc_decode_option,DB.Thm),
   ("encode_then_decode_option",encode_then_decode_option,DB.Thm),
   ("decode_option",decode_option,DB.Thm),
   ("wf_decode_list",wf_decode_list,DB.Thm),
   ("dec2enc_decode_list",dec2enc_decode_list,DB.Thm),
   ("encode_then_decode_list",encode_then_decode_list,DB.Thm),
   ("decode_list",decode_list,DB.Thm),
   ("wf_decode_blist",wf_decode_blist,DB.Thm),
   ("dec2enc_decode_blist",dec2enc_decode_blist,DB.Thm),
   ("encode_then_decode_blist",encode_then_decode_blist,DB.Thm),
   ("decode_blist",decode_blist,DB.Thm),
   ("wf_decode_num",wf_decode_num,DB.Thm),
   ("dec2enc_decode_num",dec2enc_decode_num,DB.Thm),
   ("decode_num_total",decode_num_total,DB.Thm),
   ("decode_num",decode_num,DB.Thm),
   ("dec_bnum_def_compute",dec_bnum_def_compute,DB.Thm),
   ("dec_bnum_lt",dec_bnum_lt,DB.Thm),
   ("dec_bnum_inj",dec_bnum_inj,DB.Thm),
   ("wf_decode_bnum",wf_decode_bnum,DB.Thm),
   ("dec2enc_decode_bnum",dec2enc_decode_bnum,DB.Thm),
   ("decode_bnum",decode_bnum,DB.Thm),
   ("wf_decode_tree",wf_decode_tree,DB.Thm),
   ("decode_tree",decode_tree,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("EncodeTheory.Encode_grammars",
                          EncodeTheory.Encode_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_decoder", (Term.prim_mk_const { Name = "wf_decoder", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_decoder", (Term.prim_mk_const { Name = "wf_decoder", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("enc2dec", (Term.prim_mk_const { Name = "enc2dec", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("enc2dec", (Term.prim_mk_const { Name = "enc2dec", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dec2enc", (Term.prim_mk_const { Name = "dec2enc", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dec2enc", (Term.prim_mk_const { Name = "dec2enc", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_unit", (Term.prim_mk_const { Name = "decode_unit", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_unit", (Term.prim_mk_const { Name = "decode_unit", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_bool", (Term.prim_mk_const { Name = "decode_bool", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_bool", (Term.prim_mk_const { Name = "decode_bool", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_prod", (Term.prim_mk_const { Name = "decode_prod", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_prod", (Term.prim_mk_const { Name = "decode_prod", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_sum", (Term.prim_mk_const { Name = "decode_sum", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_sum", (Term.prim_mk_const { Name = "decode_sum", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_option", (Term.prim_mk_const { Name = "decode_option", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_option", (Term.prim_mk_const { Name = "decode_option", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_list", (Term.prim_mk_const { Name = "decode_list", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_list", (Term.prim_mk_const { Name = "decode_list", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_blist", (Term.prim_mk_const { Name = "decode_blist", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_blist", (Term.prim_mk_const { Name = "decode_blist", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_num", (Term.prim_mk_const { Name = "decode_num", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_num", (Term.prim_mk_const { Name = "decode_num", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_bnum", (Term.prim_mk_const { Name = "decode_bnum", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_bnum", (Term.prim_mk_const { Name = "decode_bnum", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dec_bnum", (Term.prim_mk_const { Name = "dec_bnum", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_tree", (Term.prim_mk_const { Name = "decode_tree", Thy = "Decode"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode_tree", (Term.prim_mk_const { Name = "decode_tree", Thy = "Decode"}))
  val Decode_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "Decode",
    thydataty = "compute",
    data =
        "Decode.wf_decoder_def Decode.decode_bool Decode.decode_num Decode.decode_unit Decode.dec2enc_def Decode.dec_bnum_def_compute Decode.dec_bnum_def Decode.enc2dec_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "Decode"
end
