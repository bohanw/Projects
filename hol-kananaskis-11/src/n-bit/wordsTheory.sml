structure wordsTheory :> wordsTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading wordsTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open ASCIInumbersTheory fcpTheory numeral_bitTheory sum_numTheory
  in end;
  val _ = Theory.link_parents
          ("words",
          Arbnum.fromString "1488587186",
          Arbnum.fromString "513354")
          [("ASCIInumbers",
           Arbnum.fromString "1488586811",
           Arbnum.fromString "816342"),
           ("sum_num",
           Arbnum.fromString "1488587143",
           Arbnum.fromString "803861"),
           ("numeral_bit",
           Arbnum.fromString "1488586165",
           Arbnum.fromString "445730"),
           ("fcp",
           Arbnum.fromString "1488587157",
           Arbnum.fromString "100381")];
  val _ = Theory.incorporate_types "words" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("fcp", "cart"), ID("min", "bool"),
   ID("list", "list"), ID("string", "char"), ID("num", "num"),
   ID("pair", "prod"), ID("one", "one"), ID("sum", "sum"),
   ID("bool", "itself"), ID("bool", "!"), ID("arithmetic", "*"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("fcp", ":+"), ID("prim_rec", "<"),
   ID("arithmetic", "<="), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("arithmetic", ">="), ID("bool", "?"),
   ID("min", "@"), ID("bit", "BIT"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bit", "BITS"), ID("bit", "BITWISE"),
   ID("bit", "BIT_MODIFY"), ID("bit", "BIT_REVERSE"),
   ID("words", "BIT_SET"), ID("words", "BIT_SET_tupled"),
   ID("numposrep", "BOOLIFY"), ID("bool", "COND"), ID("list", "CONS"),
   ID("arithmetic", "DIV"), ID("pred_set", "EMPTY"),
   ID("arithmetic", "EVEN"), ID("arithmetic", "EXP"), ID("bool", "F"),
   ID("combin", "FAIL"), ID("fcp", "FCP"), ID("pred_set", "FINITE"),
   ID("fcp", "bit0"), ID("fcp", "bit1"), ID("list", "FOLDL"),
   ID("pair", "FST"), ID("list", "GENLIST"), ID("list", "HD"),
   ID("ASCIInumbers", "HEX"), ID("combin", "I"), ID("bool", "IN"),
   ID("pred_set", "INSERT"), ID("words", "INT_MAX"),
   ID("words", "INT_MIN"), ID("combin", "K"), ID("while", "LEAST"),
   ID("bool", "LET"), ID("bit", "LOG2"), ID("arithmetic", "MAX"),
   ID("arithmetic", "MIN"), ID("arithmetic", "MOD"), ID("bit", "MOD_2EXP"),
   ID("bit", "MOD_2EXP_EQ"), ID("bit", "MOD_2EXP_MAX"), ID("list", "NIL"),
   ID("arithmetic", "NUMERAL"), ID("arithmetic", "ODD"), ID("bit", "SBIT"),
   ID("bit", "SIGN_EXTEND"), ID("bit", "SLICE"), ID("num", "SUC"),
   ID("sum_num", "SUM"), ID("bool", "T"), ID("list", "TL"),
   ID("words", "UINT_MAX"), ID("pair", "UNCURRY"),
   ID("ASCIInumbers", "UNHEX"), ID("pred_set", "UNIV"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("words", "add_with_carry"),
   ID("words", "bit_count"), ID("words", "bit_count_upto"),
   ID("words", "bit_field_insert"), ID("words", "concat_word_list"),
   ID("fcp", "dimindex"), ID("words", "dimword"), ID("fcp", "fcp_index"),
   ID("numposrep", "l2n"), ID("words", "l2w"), ID("numposrep", "n2l"),
   ID("ASCIInumbers", "n2s"), ID("words", "n2w"),
   ID("words", "n2w_itself"), ID("words", "nzcv"), ID("combin", "o"),
   ID("pair", "pair_CASE"), ID("words", "reduce_and"),
   ID("words", "reduce_nand"), ID("words", "reduce_nor"),
   ID("words", "reduce_or"), ID("words", "reduce_xnor"),
   ID("words", "reduce_xor"), ID("ASCIInumbers", "s2n"),
   ID("words", "s2w"), ID("words", "saturate_add"),
   ID("words", "saturate_mul"), ID("words", "saturate_n2w"),
   ID("words", "saturate_sub"), ID("words", "saturate_w2w"),
   ID("words", "sw2sw"), ID("bool", "the_value"), ID("words", "w2l"),
   ID("words", "w2n"), ID("words", "w2s"), ID("words", "w2w"),
   ID("words", "word_1comp"), ID("words", "word_2comp"),
   ID("words", "word_H"), ID("words", "word_L"), ID("words", "word_L2"),
   ID("words", "word_T"), ID("words", "word_abs"), ID("words", "word_add"),
   ID("words", "word_and"), ID("words", "word_asr"),
   ID("words", "word_asr_bv"), ID("words", "word_bit"),
   ID("words", "word_bits"), ID("words", "word_compare"),
   ID("words", "word_concat"), ID("words", "word_div"),
   ID("words", "word_extract"), ID("words", "word_from_bin_list"),
   ID("words", "word_from_bin_string"), ID("words", "word_from_dec_list"),
   ID("words", "word_from_dec_string"), ID("words", "word_from_hex_list"),
   ID("words", "word_from_hex_string"), ID("words", "word_from_oct_list"),
   ID("words", "word_from_oct_string"), ID("words", "word_ge"),
   ID("words", "word_gt"), ID("words", "word_hi"), ID("words", "word_hs"),
   ID("words", "word_join"), ID("words", "word_le"),
   ID("words", "word_len"), ID("words", "word_lo"),
   ID("words", "word_log2"), ID("words", "word_ls"),
   ID("words", "word_lsb"), ID("words", "word_lsl"),
   ID("words", "word_lsl_bv"), ID("words", "word_lsr"),
   ID("words", "word_lsr_bv"), ID("words", "word_lt"),
   ID("words", "word_max"), ID("words", "word_min"),
   ID("words", "word_mod"), ID("words", "word_modify"),
   ID("words", "word_msb"), ID("words", "word_mul"),
   ID("words", "word_nand"), ID("words", "word_nor"),
   ID("words", "word_or"), ID("words", "word_reduce"),
   ID("words", "word_replicate"), ID("words", "word_reverse"),
   ID("words", "word_rol"), ID("words", "word_rol_bv"),
   ID("words", "word_ror"), ID("words", "word_ror_bv"),
   ID("words", "word_rrx"), ID("words", "word_sdiv"),
   ID("words", "word_sign_extend"), ID("words", "word_signed_bits"),
   ID("words", "word_slice"), ID("words", "word_smax"),
   ID("words", "word_smin"), ID("words", "word_smod"),
   ID("words", "word_srem"), ID("words", "word_sub"),
   ID("words", "word_to_bin_list"), ID("words", "word_to_bin_string"),
   ID("words", "word_to_dec_list"), ID("words", "word_to_dec_string"),
   ID("words", "word_to_hex_list"), ID("words", "word_to_hex_string"),
   ID("words", "word_to_oct_list"), ID("words", "word_to_oct_string"),
   ID("words", "word_xnor"), ID("words", "word_xor"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [2], TYOP [1, 1, 0], TYOP [0, 2, 2], TYOP [0, 2, 3],
   TYOP [4], TYOP [3, 5], TYOP [0, 2, 6], TYOP [5], TYOP [3, 8],
   TYOP [0, 2, 9], TYOP [0, 8, 3], TYOP [0, 8, 11], TYOP [6, 1, 2],
   TYOP [0, 13, 13], TYOP [0, 8, 2], TYOP [0, 2, 15], TYV "'b",
   TYOP [1, 1, 17], TYOP [0, 2, 18], TYOP [0, 8, 19], TYOP [7],
   TYOP [1, 1, 21], TYOP [0, 2, 22], TYOP [0, 1, 1], TYOP [0, 1, 24],
   TYOP [0, 25, 23], TYOP [0, 2, 1], TYOP [0, 8, 24], TYOP [0, 28, 3],
   TYOP [0, 2, 27], TYOP [0, 2, 8], TYOP [8, 0, 17], TYOP [1, 1, 32],
   TYOP [0, 18, 33], TYOP [0, 2, 34], TYOP [0, 6, 2], TYOP [0, 9, 2],
   TYOP [0, 8, 20], TYV "'c", TYOP [1, 1, 39], TYOP [0, 18, 40],
   TYOP [0, 2, 41], TYOP [0, 2, 23], TYOP [0, 8, 27], TYOP [0, 8, 5],
   TYOP [0, 45, 7], TYOP [0, 8, 46], TYOP [0, 8, 10], TYOP [0, 5, 8],
   TYOP [0, 49, 36], TYOP [0, 8, 50], TYOP [6, 1, 1], TYOP [6, 1, 52],
   TYOP [6, 1, 53], TYOP [0, 2, 54], TYOP [0, 2, 55], TYOP [9, 0],
   TYOP [6, 8, 57], TYOP [0, 58, 2], TYOP [0, 8, 37], TYOP [0, 57, 8],
   TYOP [3, 2], TYOP [0, 62, 18], TYOP [0, 18, 3], TYOP [0, 8, 64],
   TYOP [0, 8, 65], TYOP [0, 8, 31], TYOP [6, 2, 52], TYOP [6, 2, 1],
   TYOP [6, 2, 69], TYOP [0, 70, 68], TYOP [0, 8, 1], TYOP [6, 8, 8],
   TYOP [0, 73, 72], TYOP [0, 8, 72], TYOP [0, 8, 75], TYOP [0, 27, 1],
   TYOP [0, 58, 1], TYOP [0, 58, 78], TYOP [0, 73, 1], TYOP [0, 73, 80],
   TYV "'d", TYOP [1, 1, 82], TYV "'e", TYOP [1, 1, 84], TYOP [3, 1],
   TYOP [3, 22], TYOP [0, 24, 1], TYOP [0, 18, 1], TYOP [0, 89, 1],
   TYOP [0, 40, 1], TYOP [0, 91, 1], TYOP [0, 83, 1], TYOP [0, 93, 1],
   TYOP [0, 85, 1], TYOP [0, 95, 1], TYOP [0, 25, 1], TYOP [0, 97, 1],
   TYOP [0, 77, 1], TYOP [0, 49, 1], TYOP [0, 100, 1], TYOP [0, 99, 1],
   TYOP [0, 72, 1], TYOP [0, 103, 1], TYOP [0, 45, 1], TYOP [0, 105, 1],
   TYOP [0, 28, 1], TYOP [0, 107, 1], TYOP [0, 75, 1], TYOP [0, 109, 1],
   TYOP [0, 78, 1], TYOP [0, 111, 1], TYOP [0, 57, 1], TYOP [0, 113, 1],
   TYOP [0, 62, 1], TYOP [0, 115, 1], TYOP [0, 6, 1], TYOP [0, 117, 1],
   TYOP [0, 9, 1], TYOP [0, 119, 1], TYOP [0, 8, 8], TYOP [0, 8, 121],
   TYOP [0, 1, 52], TYOP [0, 1, 123], TYOP [0, 2, 13], TYOP [0, 1, 125],
   TYOP [6, 1, 18], TYOP [0, 18, 127], TYOP [0, 1, 128], TYOP [0, 52, 53],
   TYOP [0, 1, 130], TYOP [0, 53, 54], TYOP [0, 1, 132], TYOP [0, 1, 69],
   TYOP [0, 2, 134], TYOP [0, 52, 68], TYOP [0, 2, 136], TYOP [0, 69, 70],
   TYOP [0, 2, 138], TYOP [6, 18, 1], TYOP [0, 1, 140], TYOP [0, 18, 141],
   TYOP [6, 18, 140], TYOP [0, 140, 143], TYOP [0, 18, 144],
   TYOP [6, 40, 1], TYOP [0, 1, 146], TYOP [0, 40, 147], TYOP [6, 40, 146],
   TYOP [0, 146, 149], TYOP [0, 40, 150], TYOP [0, 57, 58],
   TYOP [0, 8, 152], TYOP [0, 8, 73], TYOP [0, 8, 154], TYOP [0, 1, 3],
   TYOP [0, 8, 156], TYOP [0, 18, 89], TYOP [0, 40, 91], TYOP [0, 83, 93],
   TYOP [0, 85, 95], TYOP [0, 22, 1], TYOP [0, 22, 162], TYOP [0, 33, 1],
   TYOP [0, 33, 164], TYOP [8, 17, 0], TYOP [1, 1, 166], TYOP [0, 167, 1],
   TYOP [0, 167, 168], TYOP [0, 27, 77], TYOP [0, 3, 1], TYOP [0, 3, 171],
   TYOP [0, 19, 1], TYOP [0, 19, 173], TYOP [0, 23, 1], TYOP [0, 23, 175],
   TYOP [0, 7, 1], TYOP [0, 7, 177], TYOP [0, 10, 1], TYOP [0, 10, 179],
   TYOP [0, 36, 1], TYOP [0, 36, 181], TYOP [0, 37, 1], TYOP [0, 37, 183],
   TYOP [0, 72, 103], TYOP [0, 59, 1], TYOP [0, 59, 186], TYOP [0, 74, 1],
   TYOP [0, 74, 188], TYOP [0, 6, 117], TYOP [0, 9, 119], TYOP [0, 13, 1],
   TYOP [0, 13, 192], TYOP [0, 127, 1], TYOP [0, 127, 194],
   TYOP [0, 54, 1], TYOP [0, 54, 196], TYOP [0, 68, 1], TYOP [0, 68, 198],
   TYOP [0, 79, 1], TYOP [0, 200, 79], TYOP [0, 81, 1], TYOP [0, 202, 81],
   TYOP [0, 8, 122], TYOP [0, 25, 122], TYOP [0, 8, 205],
   TYOP [0, 28, 121], TYOP [0, 8, 207], TYOP [0, 86, 86], TYOP [0, 8, 209],
   TYOP [0, 8, 210], TYOP [0, 1, 25], TYOP [0, 1, 4], TYOP [0, 18, 18],
   TYOP [0, 18, 214], TYOP [0, 1, 215], TYOP [0, 40, 40],
   TYOP [0, 40, 217], TYOP [0, 1, 218], TYOP [0, 83, 83],
   TYOP [0, 83, 220], TYOP [0, 1, 221], TYOP [0, 22, 22],
   TYOP [0, 22, 223], TYOP [0, 1, 224], TYOP [0, 72, 72],
   TYOP [0, 72, 226], TYOP [0, 1, 227], TYOP [0, 1, 122], TYOP [0, 62, 62],
   TYOP [0, 2, 230], TYOP [0, 2, 72], TYOP [0, 1, 232], TYOP [0, 232, 233],
   TYOP [0, 72, 2], TYOP [0, 72, 18], TYOP [0, 72, 22], TYOP [0, 0, 1],
   TYOP [0, 238, 1], TYOP [0, 17, 1], TYOP [0, 240, 1], TYOP [46, 21],
   TYOP [46, 242], TYOP [46, 243], TYOP [46, 244], TYOP [46, 245],
   TYOP [46, 246], TYOP [46, 247], TYOP [0, 248, 1], TYOP [0, 249, 1],
   TYOP [0, 247, 1], TYOP [0, 251, 1], TYOP [47, 21], TYOP [46, 253],
   TYOP [46, 254], TYOP [46, 255], TYOP [46, 256], TYOP [46, 257],
   TYOP [0, 258, 1], TYOP [0, 259, 1], TYOP [0, 246, 1], TYOP [0, 261, 1],
   TYOP [0, 257, 1], TYOP [0, 263, 1], TYOP [0, 245, 1], TYOP [0, 265, 1],
   TYOP [0, 256, 1], TYOP [0, 267, 1], TYOP [0, 244, 1], TYOP [0, 269, 1],
   TYOP [47, 242], TYOP [46, 271], TYOP [46, 272], TYOP [0, 273, 1],
   TYOP [0, 274, 1], TYOP [47, 253], TYOP [46, 276], TYOP [46, 277],
   TYOP [0, 278, 1], TYOP [0, 279, 1], TYOP [0, 255, 1], TYOP [0, 281, 1],
   TYOP [0, 243, 1], TYOP [0, 283, 1], TYOP [0, 272, 1], TYOP [0, 285, 1],
   TYOP [47, 276], TYOP [46, 287], TYOP [0, 288, 1], TYOP [0, 289, 1],
   TYOP [0, 254, 1], TYOP [0, 291, 1], TYOP [0, 242, 1], TYOP [0, 293, 1],
   TYOP [47, 243], TYOP [0, 295, 1], TYOP [0, 296, 1], TYOP [0, 271, 1],
   TYOP [0, 298, 1], TYOP [47, 271], TYOP [0, 300, 1], TYOP [0, 301, 1],
   TYOP [0, 276, 1], TYOP [0, 303, 1], TYOP [0, 253, 1], TYOP [0, 305, 1],
   TYOP [0, 21, 1], TYOP [0, 307, 1], TYOP [0, 86, 1], TYOP [0, 1, 309],
   TYOP [0, 25, 310], TYOP [0, 87, 22], TYOP [0, 22, 312],
   TYOP [0, 224, 313], TYOP [0, 68, 2], TYOP [6, 18, 52],
   TYOP [0, 316, 18], TYOP [6, 40, 52], TYOP [0, 318, 40], TYOP [0, 8, 86],
   TYOP [0, 72, 320], TYOP [0, 8, 62], TYOP [0, 15, 322], TYOP [0, 8, 87],
   TYOP [0, 8, 22], TYOP [0, 325, 324], TYOP [0, 2, 77], TYOP [0, 8, 103],
   TYOP [0, 27, 27], TYOP [0, 2, 329], TYOP [0, 8, 226], TYOP [9, 17],
   TYOP [0, 332, 8], TYOP [9, 248], TYOP [0, 334, 8], TYOP [9, 247],
   TYOP [0, 336, 8], TYOP [9, 258], TYOP [0, 338, 8], TYOP [9, 246],
   TYOP [0, 340, 8], TYOP [9, 257], TYOP [0, 342, 8], TYOP [9, 245],
   TYOP [0, 344, 8], TYOP [9, 256], TYOP [0, 346, 8], TYOP [9, 244],
   TYOP [0, 348, 8], TYOP [9, 273], TYOP [0, 350, 8], TYOP [9, 278],
   TYOP [0, 352, 8], TYOP [9, 255], TYOP [0, 354, 8], TYOP [9, 243],
   TYOP [0, 356, 8], TYOP [9, 272], TYOP [0, 358, 8], TYOP [9, 288],
   TYOP [0, 360, 8], TYOP [9, 254], TYOP [0, 362, 8], TYOP [9, 242],
   TYOP [0, 364, 8], TYOP [9, 295], TYOP [0, 366, 8], TYOP [9, 271],
   TYOP [0, 368, 8], TYOP [9, 300], TYOP [0, 370, 8], TYOP [9, 276],
   TYOP [0, 372, 8], TYOP [9, 253], TYOP [0, 374, 8], TYOP [9, 21],
   TYOP [0, 376, 8], TYOP [9, 32], TYOP [0, 378, 8], TYOP [0, 1, 72],
   TYOP [0, 72, 8], TYOP [0, 24, 24], TYOP [0, 25, 25], TYOP [0, 1, 68],
   TYOP [0, 1, 384], TYOP [0, 385, 385], TYOP [0, 384, 384],
   TYOP [0, 3, 3], TYOP [0, 4, 4], TYOP [0, 55, 55], TYOP [0, 2, 68],
   TYOP [0, 391, 391], TYOP [0, 214, 214], TYOP [0, 33, 33],
   TYOP [0, 394, 394], TYOP [0, 33, 394], TYOP [0, 396, 396],
   TYOP [0, 309, 309], TYOP [0, 312, 312], TYOP [0, 15, 15],
   TYOP [0, 8, 18], TYOP [0, 401, 401], TYOP [0, 325, 325],
   TYOP [0, 8, 54], TYOP [0, 404, 404], TYOP [0, 8, 68],
   TYOP [0, 406, 406], TYOP [0, 196, 196], TYOP [0, 1, 121],
   TYOP [0, 121, 8], TYOP [0, 8, 410], TYOP [0, 87, 87], TYOP [0, 52, 1],
   TYOP [0, 25, 413], TYOP [0, 53, 1], TYOP [0, 1, 413],
   TYOP [0, 416, 415], TYOP [0, 1, 415], TYOP [0, 418, 196],
   TYOP [0, 59, 59], TYOP [0, 420, 59], TYOP [0, 79, 421],
   TYOP [0, 74, 74], TYOP [0, 423, 74], TYOP [0, 81, 424],
   TYOP [0, 143, 316], TYOP [0, 149, 318], TYOP [0, 2, 214],
   TYOP [0, 8, 428], TYOP [0, 8, 429], TYOP [9, 39], TYOP [0, 431, 8],
   TYOP [9, 82], TYOP [0, 433, 8], TYOP [8, 17, 39], TYOP [9, 435],
   TYOP [0, 436, 8], TYOP [0, 18, 72], TYOP [0, 33, 72], TYOP [0, 9, 8],
   TYOP [0, 8, 440], TYOP [0, 8, 9], TYOP [0, 8, 442], TYOP [0, 8, 6],
   TYOP [0, 45, 444], TYOP [0, 8, 445], TYOP [0, 8, 40], TYOP [0, 8, 83],
   TYOP [0, 8, 33], TYOP [0, 3, 19], TYOP [0, 19, 450], TYOP [0, 7, 3],
   TYOP [0, 36, 452], TYOP [0, 10, 3], TYOP [0, 37, 454], TYOP [0, 57, 2],
   TYOP [0, 8, 456], TYOP [0, 457, 2], TYOP [0, 58, 458], TYOP [0, 76, 72],
   TYOP [0, 73, 460], TYOP [0, 6, 8], TYOP [0, 49, 462], TYOP [0, 8, 463],
   TYOP [0, 2, 40], TYOP [0, 18, 2], TYOP [0, 18, 8], TYOP [8, 0, 0],
   TYOP [1, 1, 468], TYOP [0, 2, 469], TYOP [0, 2, 33], TYOP [0, 2, 167],
   TYOP [0, 40, 18], TYOP [0, 33, 40], TYOP [0, 18, 401], TYOP [0, 8, 214],
   TYOP [0, 8, 476], TYOP [0, 40, 83], TYOP [0, 18, 478], TYOP [0, 8, 465],
   TYOP [0, 8, 480], TYOP [0, 2, 83], TYOP [0, 8, 482], TYOP [0, 8, 483],
   TYOP [0, 8, 23], TYOP [0, 8, 485], TYOP [0, 8, 466], TYOP [0, 8, 487],
   TYOP [0, 8, 41], TYOP [0, 8, 489], TYOP [0, 40, 2], TYOP [0, 8, 491],
   TYOP [0, 8, 492], TYOP [0, 8, 473], TYOP [0, 8, 494], TYOP [0, 18, 472],
   TYOP [0, 469, 1], TYOP [0, 469, 497], TYOP [0, 33, 449],
   TYOP [0, 40, 447], TYOP [0, 469, 469], TYOP [0, 469, 501],
   TYOP [0, 83, 448], TYOP [0, 8, 85], TYOP [0, 85, 504],
   TYOP [0, 127, 127]]
  end
  val _ = Theory.incorporate_consts "words" tyvector
     [("word_xor", 4), ("word_xnor", 4), ("word_to_oct_string", 7),
      ("word_to_oct_list", 10), ("word_to_hex_string", 7),
      ("word_to_hex_list", 10), ("word_to_dec_string", 7),
      ("word_to_dec_list", 10), ("word_to_bin_string", 7),
      ("word_to_bin_list", 10), ("word_sub", 4), ("word_srem", 4),
      ("word_smod", 4), ("word_smin", 4), ("word_smax", 4),
      ("word_slice", 12), ("word_signed_bits", 12),
      ("word_sign_extend", 11), ("word_sdiv", 4), ("word_rrx", 14),
      ("word_ror_bv", 4), ("word_ror", 16), ("word_rol_bv", 4),
      ("word_rol", 16), ("word_reverse", 3), ("word_replicate", 20),
      ("word_reduce", 26), ("word_or", 4), ("word_nor", 4),
      ("word_nand", 4), ("word_mul", 4), ("word_msb", 27),
      ("word_modify", 29), ("word_mod", 4), ("word_min", 4),
      ("word_max", 4), ("word_lt", 30), ("word_lsr_bv", 4),
      ("word_lsr", 16), ("word_lsl_bv", 4), ("word_lsl", 16),
      ("word_lsb", 27), ("word_ls", 30), ("word_log2", 3), ("word_lo", 30),
      ("word_len", 31), ("word_le", 30), ("word_join", 35),
      ("word_hs", 30), ("word_hi", 30), ("word_gt", 30), ("word_ge", 30),
      ("word_from_oct_string", 36), ("word_from_oct_list", 37),
      ("word_from_hex_string", 36), ("word_from_hex_list", 37),
      ("word_from_dec_string", 36), ("word_from_dec_list", 37),
      ("word_from_bin_string", 36), ("word_from_bin_list", 37),
      ("word_extract", 38), ("word_div", 4), ("word_concat", 42),
      ("word_compare", 43), ("word_bits", 12), ("word_bit", 44),
      ("word_asr_bv", 4), ("word_asr", 16), ("word_and", 4),
      ("word_add", 4), ("word_abs", 3), ("word_T", 2), ("word_L2", 2),
      ("word_L", 2), ("word_H", 2), ("word_2comp", 3), ("word_1comp", 3),
      ("w2w", 19), ("w2s", 47), ("w2n", 31), ("w2l", 48), ("sw2sw", 19),
      ("saturate_w2w", 19), ("saturate_sub", 4), ("saturate_n2w", 15),
      ("saturate_mul", 4), ("saturate_add", 4), ("s2w", 51),
      ("reduce_xor", 23), ("reduce_xnor", 23), ("reduce_or", 23),
      ("reduce_nor", 23), ("reduce_nand", 23), ("reduce_and", 23),
      ("nzcv", 56), ("n2w_itself", 59), ("n2w", 15), ("l2w", 60),
      ("dimword", 61), ("concat_word_list", 63), ("bit_field_insert", 66),
      ("bit_count_upto", 67), ("bit_count", 31), ("add_with_carry", 71),
      ("UINT_MAX", 61), ("INT_MIN", 61), ("INT_MAX", 61),
      ("BIT_SET_tupled", 74), ("BIT_SET", 76)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("BIT_SET_tupled", 74), TMV("P", 27), TMV("P", 77), TMV("P", 75),
   TMV("P", 78), TMV("R", 79), TMV("R", 81), TMV("a", 1), TMV("a", 2),
   TMV("a", 18), TMV("a", 40), TMV("a", 83), TMV("a", 85), TMV("a", 8),
   TMV("a", 58), TMV("a", 73), TMV("abs_s", 2), TMV("abs_t", 2),
   TMV("b", 1), TMV("b", 2), TMV("b", 18), TMV("b", 40), TMV("b", 8),
   TMV("c", 1), TMV("c", 2), TMV("c2n", 49), TMV("carry_in", 1),
   TMV("carry_out", 1), TMV("cv", 33), TMV("cw", 33), TMV("e", 2),
   TMV("f", 25), TMV("f", 49), TMV("f", 72), TMV("f", 45), TMV("f", 28),
   TMV("h", 2), TMV("h", 8), TMV("h1", 8), TMV("h2", 8), TMV("i", 8),
   TMV("index too large", 1), TMV("j", 8), TMV("k", 8), TMV("l", 86),
   TMV("l", 87), TMV("l", 9), TMV("l", 8), TMV("l1", 8), TMV("l2", 8),
   TMV("m", 2), TMV("m", 8), TMV("m'", 8), TMV("mask", 18), TMV("n", 1),
   TMV("n", 2), TMV("n", 18), TMV("n", 8), TMV("n2c", 45),
   TMV("n2w_itself", 59), TMV("overflow", 1), TMV("q", 8), TMV("r", 2),
   TMV("result", 2), TMV("s", 2), TMV("s", 27), TMV("s", 6), TMV("s", 8),
   TMV("sa", 1), TMV("sb", 1), TMV("t", 2), TMV("t", 62), TMV("u", 2),
   TMV("unsigned_sum", 8), TMV("v", 1), TMV("v", 2), TMV("v", 18),
   TMV("v", 40), TMV("v", 8), TMV("v1", 57), TMV("v1", 8), TMV("w", 2),
   TMV("w", 18), TMV("w", 40), TMV("x", 1), TMV("x", 2), TMV("x", 18),
   TMV("x", 8), TMV("x1", 8), TMV("y", 1), TMV("y", 2), TMV("y", 8),
   TMV("z", 1), TMV("z", 2), TMC(10, 88), TMC(10, 77), TMC(10, 90),
   TMC(10, 92), TMC(10, 94), TMC(10, 96), TMC(10, 98), TMC(10, 99),
   TMC(10, 101), TMC(10, 102), TMC(10, 104), TMC(10, 106), TMC(10, 108),
   TMC(10, 110), TMC(10, 112), TMC(10, 114), TMC(10, 116), TMC(10, 118),
   TMC(10, 120), TMC(10, 103), TMC(11, 122), TMC(12, 122), TMC(13, 124),
   TMC(13, 126), TMC(13, 129), TMC(13, 131), TMC(13, 133), TMC(13, 135),
   TMC(13, 137), TMC(13, 139), TMC(13, 142), TMC(13, 145), TMC(13, 148),
   TMC(13, 151), TMC(13, 153), TMC(13, 155), TMC(14, 122), TMC(15, 25),
   TMC(16, 8), TMC(17, 157), TMC(18, 75), TMC(19, 75), TMC(20, 25),
   TMC(20, 30), TMC(20, 158), TMC(20, 159), TMC(20, 160), TMC(20, 161),
   TMC(20, 163), TMC(20, 165), TMC(20, 169), TMC(20, 170), TMC(20, 172),
   TMC(20, 174), TMC(20, 176), TMC(20, 178), TMC(20, 180), TMC(20, 182),
   TMC(20, 184), TMC(20, 185), TMC(20, 187), TMC(20, 189), TMC(20, 190),
   TMC(20, 191), TMC(20, 75), TMC(20, 193), TMC(20, 195), TMC(20, 197),
   TMC(20, 199), TMC(21, 25), TMC(22, 75), TMC(23, 75), TMC(24, 103),
   TMC(25, 201), TMC(25, 203), TMC(26, 75), TMC(27, 121), TMC(28, 121),
   TMC(29, 204), TMC(30, 206), TMC(31, 208), TMC(32, 122), TMC(33, 76),
   TMC(34, 74), TMC(35, 211), TMC(36, 212), TMC(36, 213), TMC(36, 216),
   TMC(36, 219), TMC(36, 222), TMC(36, 225), TMC(36, 228), TMC(36, 229),
   TMC(37, 231), TMC(38, 122), TMC(39, 27), TMC(39, 72), TMC(40, 72),
   TMC(41, 122), TMC(42, 1), TMC(43, 234), TMC(44, 235), TMC(44, 236),
   TMC(44, 237), TMC(45, 239), TMC(45, 241), TMC(45, 250), TMC(45, 252),
   TMC(45, 260), TMC(45, 262), TMC(45, 264), TMC(45, 266), TMC(45, 268),
   TMC(45, 270), TMC(45, 275), TMC(45, 280), TMC(45, 282), TMC(45, 284),
   TMC(45, 286), TMC(45, 290), TMC(45, 292), TMC(45, 294), TMC(45, 297),
   TMC(45, 299), TMC(45, 302), TMC(45, 304), TMC(45, 306), TMC(45, 77),
   TMC(45, 308), TMC(48, 311), TMC(48, 314), TMC(49, 315), TMC(49, 317),
   TMC(49, 319), TMC(50, 321), TMC(50, 323), TMC(50, 326), TMC(51, 309),
   TMC(51, 312), TMC(52, 45), TMC(53, 3), TMC(53, 226), TMC(54, 327),
   TMC(54, 328), TMC(55, 330), TMC(55, 331), TMC(56, 61), TMC(56, 333),
   TMC(57, 61), TMC(57, 333), TMC(57, 335), TMC(57, 337), TMC(57, 339),
   TMC(57, 341), TMC(57, 343), TMC(57, 345), TMC(57, 347), TMC(57, 349),
   TMC(57, 351), TMC(57, 353), TMC(57, 355), TMC(57, 357), TMC(57, 359),
   TMC(57, 361), TMC(57, 363), TMC(57, 365), TMC(57, 367), TMC(57, 369),
   TMC(57, 371), TMC(57, 373), TMC(57, 375), TMC(57, 377), TMC(57, 379),
   TMC(58, 380), TMC(58, 16), TMC(59, 381), TMC(60, 382), TMC(60, 383),
   TMC(60, 386), TMC(60, 387), TMC(60, 329), TMC(60, 388), TMC(60, 389),
   TMC(60, 390), TMC(60, 392), TMC(60, 393), TMC(60, 395), TMC(60, 397),
   TMC(60, 398), TMC(60, 399), TMC(60, 400), TMC(60, 402), TMC(60, 403),
   TMC(60, 405), TMC(60, 407), TMC(60, 408), TMC(61, 121), TMC(62, 122),
   TMC(63, 122), TMC(64, 122), TMC(65, 122), TMC(66, 76), TMC(67, 75),
   TMC(68, 86), TMC(68, 62), TMC(69, 121), TMC(70, 72), TMC(71, 409),
   TMC(72, 204), TMC(73, 204), TMC(74, 121), TMC(75, 411), TMC(76, 1),
   TMC(77, 209), TMC(77, 412), TMC(78, 61), TMC(78, 333), TMC(79, 414),
   TMC(79, 417), TMC(79, 419), TMC(80, 49), TMC(81, 238), TMC(81, 240),
   TMC(81, 249), TMC(81, 251), TMC(81, 259), TMC(81, 261), TMC(81, 263),
   TMC(81, 265), TMC(81, 267), TMC(81, 269), TMC(81, 274), TMC(81, 279),
   TMC(81, 281), TMC(81, 283), TMC(81, 285), TMC(81, 289), TMC(81, 291),
   TMC(81, 293), TMC(81, 296), TMC(81, 298), TMC(81, 301), TMC(81, 303),
   TMC(81, 305), TMC(81, 307), TMC(82, 200), TMC(82, 202), TMC(83, 422),
   TMC(83, 425), TMC(84, 8), TMC(85, 25), TMC(86, 71), TMC(86, 426),
   TMC(86, 427), TMC(87, 31), TMC(88, 67), TMC(89, 430), TMC(89, 66),
   TMC(90, 63), TMC(91, 61), TMC(91, 333), TMC(91, 432), TMC(91, 434),
   TMC(91, 335), TMC(91, 337), TMC(91, 339), TMC(91, 341), TMC(91, 343),
   TMC(91, 345), TMC(91, 347), TMC(91, 349), TMC(91, 351), TMC(91, 353),
   TMC(91, 355), TMC(91, 357), TMC(91, 359), TMC(91, 361), TMC(91, 363),
   TMC(91, 365), TMC(91, 367), TMC(91, 369), TMC(91, 371), TMC(91, 373),
   TMC(91, 375), TMC(91, 377), TMC(91, 379), TMC(91, 437), TMC(92, 61),
   TMC(92, 333), TMC(92, 335), TMC(92, 337), TMC(92, 339), TMC(92, 341),
   TMC(92, 343), TMC(92, 345), TMC(92, 347), TMC(92, 349), TMC(92, 351),
   TMC(92, 353), TMC(92, 355), TMC(92, 357), TMC(92, 359), TMC(92, 361),
   TMC(92, 363), TMC(92, 365), TMC(92, 367), TMC(92, 369), TMC(92, 371),
   TMC(92, 373), TMC(92, 375), TMC(92, 377), TMC(93, 232), TMC(93, 438),
   TMC(93, 439), TMC(94, 441), TMC(95, 60), TMC(96, 443), TMC(97, 446),
   TMC(98, 15), TMC(98, 401), TMC(98, 447), TMC(98, 448), TMC(98, 325),
   TMC(98, 449), TMC(99, 59), TMC(100, 56), TMC(101, 451), TMC(101, 453),
   TMC(101, 455), TMC(102, 459), TMC(102, 461), TMC(103, 23), TMC(104, 23),
   TMC(105, 23), TMC(106, 23), TMC(107, 23), TMC(108, 23), TMC(109, 464),
   TMC(110, 51), TMC(111, 4), TMC(112, 4), TMC(113, 15), TMC(113, 401),
   TMC(114, 4), TMC(115, 19), TMC(116, 3), TMC(116, 19), TMC(116, 465),
   TMC(116, 466), TMC(116, 41), TMC(117, 57), TMC(117, 332), TMC(117, 431),
   TMC(117, 433), TMC(117, 334), TMC(117, 336), TMC(117, 338),
   TMC(117, 340), TMC(117, 342), TMC(117, 344), TMC(117, 346),
   TMC(117, 348), TMC(117, 350), TMC(117, 352), TMC(117, 354),
   TMC(117, 356), TMC(117, 358), TMC(117, 360), TMC(117, 362),
   TMC(117, 364), TMC(117, 366), TMC(117, 368), TMC(117, 370),
   TMC(117, 372), TMC(117, 374), TMC(117, 376), TMC(117, 378),
   TMC(117, 436), TMC(118, 48), TMC(119, 31), TMC(119, 467), TMC(120, 47),
   TMC(121, 3), TMC(121, 19), TMC(121, 465), TMC(121, 470), TMC(121, 471),
   TMC(121, 472), TMC(121, 466), TMC(121, 41), TMC(121, 34), TMC(121, 473),
   TMC(121, 474), TMC(122, 3), TMC(122, 214), TMC(122, 217), TMC(123, 3),
   TMC(123, 214), TMC(123, 217), TMC(123, 220), TMC(123, 394), TMC(124, 2),
   TMC(125, 2), TMC(125, 18), TMC(126, 2), TMC(126, 18), TMC(126, 40),
   TMC(126, 83), TMC(127, 2), TMC(127, 18), TMC(128, 3), TMC(129, 4),
   TMC(129, 215), TMC(130, 4), TMC(130, 215), TMC(130, 224), TMC(131, 16),
   TMC(131, 475), TMC(132, 4), TMC(133, 44), TMC(134, 12), TMC(134, 477),
   TMC(135, 43), TMC(136, 42), TMC(136, 479), TMC(137, 4), TMC(138, 12),
   TMC(138, 38), TMC(138, 481), TMC(138, 484), TMC(138, 486),
   TMC(138, 488), TMC(138, 477), TMC(138, 490), TMC(138, 493),
   TMC(138, 495), TMC(139, 37), TMC(140, 36), TMC(141, 37), TMC(142, 36),
   TMC(143, 37), TMC(144, 36), TMC(145, 37), TMC(146, 36), TMC(147, 30),
   TMC(148, 30), TMC(149, 30), TMC(150, 30), TMC(151, 35), TMC(151, 496),
   TMC(152, 30), TMC(152, 158), TMC(152, 160), TMC(153, 31), TMC(154, 30),
   TMC(154, 158), TMC(155, 3), TMC(156, 30), TMC(156, 158), TMC(156, 498),
   TMC(157, 27), TMC(158, 16), TMC(158, 475), TMC(158, 499), TMC(159, 4),
   TMC(160, 16), TMC(160, 500), TMC(161, 4), TMC(162, 30), TMC(162, 159),
   TMC(163, 4), TMC(164, 4), TMC(165, 4), TMC(166, 29), TMC(167, 27),
   TMC(168, 4), TMC(168, 215), TMC(168, 218), TMC(168, 221), TMC(168, 502),
   TMC(169, 4), TMC(169, 224), TMC(170, 4), TMC(170, 224), TMC(171, 4),
   TMC(171, 215), TMC(171, 218), TMC(171, 224), TMC(171, 396),
   TMC(172, 26), TMC(173, 20), TMC(174, 3), TMC(175, 16), TMC(175, 475),
   TMC(175, 500), TMC(175, 503), TMC(176, 4), TMC(177, 16), TMC(177, 505),
   TMC(178, 4), TMC(179, 14), TMC(179, 506), TMC(180, 4), TMC(181, 11),
   TMC(182, 12), TMC(183, 12), TMC(183, 477), TMC(184, 4), TMC(185, 4),
   TMC(186, 4), TMC(187, 4), TMC(188, 4), TMC(188, 215), TMC(188, 218),
   TMC(189, 10), TMC(190, 7), TMC(191, 10), TMC(192, 7), TMC(193, 10),
   TMC(194, 7), TMC(195, 10), TMC(196, 7), TMC(197, 4), TMC(197, 224),
   TMC(198, 4), TMC(198, 215), TMC(198, 218), TMC(198, 221), TMC(198, 224),
   TMC(199, 24)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op dimword_def x = x
    val op dimword_def =
    DT(((("words",0),[("bool",[175])]),["DISK_THM"]),
       [read"%158%381%444@@%192%299%171%343@@@%353%444@@@"])
  fun op INT_MIN_def x = x
    val op INT_MIN_def =
    DT(((("words",1),[("bool",[175])]),["DISK_THM"]),
       [read"%158%242%444@@%192%299%171%343@@@%130%353%444@@%299%170%343@@@@@"])
  fun op UINT_MAX_def x = x
    val op UINT_MAX_def =
    DT(((("words",2),[("bool",[175])]),["DISK_THM"]),
       [read"%158%309%444@@%130%381%444@@%299%170%343@@@@"])
  fun op INT_MAX_def x = x
    val op INT_MAX_def =
    DT(((("words",3),[("bool",[175])]),["DISK_THM"]),
       [read"%158%240%444@@%130%242%444@@%299%170%343@@@@"])
  fun op w2n_def x = x
    val op w2n_def =
    DT(((("words",4),[]),[]),
       [read"%95%81%158%473$0@@%305%353%444@@%40%301%405$1@$0@@$0@|@@|@"])
  fun op n2w_def x = x
    val op n2w_def =
    DT(((("words",5),[]),[]),
       [read"%113%57%137%412$0@@%195%40%169$0@$1@|@@|@"])
  fun op w2w_def x = x
    val op w2w_def =
    DT(((("words",6),[]),[]), [read"%95%81%138%477$0@@%413%473$0@@@|@"])
  fun op sw2sw_def x = x
    val op sw2sw_def =
    DT(((("words",7),[]),[]),
       [read"%95%81%138%440$0@@%413%302%353%444@@%354%445@@%473$0@@@@|@"])
  fun op w2l_def x = x
    val op w2l_def =
    DT(((("words",8),[]),[]),
       [read"%113%22%95%81%157%472$1@$0@@%410$1@%473$0@@@|@|@"])
  fun op l2w_def x = x
    val op l2w_def =
    DT(((("words",9),[]),[]),
       [read"%113%22%112%46%137%409$1@$0@@%412%408$1@$0@@@|@|@"])
  fun op w2s_def x = x
    val op w2s_def =
    DT(((("words",10),[]),[]),
       [read"%113%22%105%34%95%81%156%475$2@$1@$0@@%411$2@$1@%473$0@@@|@|@|@"])
  fun op s2w_def x = x
    val op s2w_def =
    DT(((("words",11),[]),[]),
       [read"%113%22%102%32%111%66%137%432$2@$1@$0@@%412%431$2@$1@$0@@@|@|@|@"])
  fun op word_from_bin_list_def x = x
    val op word_from_bin_list_def =
    DT(((("words",12),[]),[]), [read"%152%530@%409%299%171%343@@@@"])
  fun op word_from_oct_list_def x = x
    val op word_from_oct_list_def =
    DT(((("words",13),[]),[]),
       [read"%152%536@%409%299%171%170%170%343@@@@@@"])
  fun op word_from_dec_list_def x = x
    val op word_from_dec_list_def =
    DT(((("words",14),[]),[]),
       [read"%152%532@%409%299%171%171%170%343@@@@@@"])
  fun op word_from_hex_list_def x = x
    val op word_from_hex_list_def =
    DT(((("words",15),[]),[]),
       [read"%152%534@%409%299%171%170%170%170%343@@@@@@@"])
  fun op word_to_bin_list_def x = x
    val op word_to_bin_list_def =
    DT(((("words",16),[]),[]), [read"%150%608@%472%299%171%343@@@@"])
  fun op word_to_oct_list_def x = x
    val op word_to_oct_list_def =
    DT(((("words",17),[]),[]),
       [read"%150%614@%472%299%171%170%170%343@@@@@@"])
  fun op word_to_dec_list_def x = x
    val op word_to_dec_list_def =
    DT(((("words",18),[]),[]),
       [read"%150%610@%472%299%171%171%170%343@@@@@@"])
  fun op word_to_hex_list_def x = x
    val op word_to_hex_list_def =
    DT(((("words",19),[]),[]),
       [read"%150%612@%472%299%171%170%170%170%343@@@@@@@"])
  fun op word_from_bin_string_def x = x
    val op word_from_bin_string_def =
    DT(((("words",20),[]),[]), [read"%151%531@%432%299%171%343@@@%314@@"])
  fun op word_from_oct_string_def x = x
    val op word_from_oct_string_def =
    DT(((("words",21),[]),[]),
       [read"%151%537@%432%299%171%170%170%343@@@@@%314@@"])
  fun op word_from_dec_string_def x = x
    val op word_from_dec_string_def =
    DT(((("words",22),[]),[]),
       [read"%151%533@%432%299%171%171%170%343@@@@@%314@@"])
  fun op word_from_hex_string_def x = x
    val op word_from_hex_string_def =
    DT(((("words",23),[]),[]),
       [read"%151%535@%432%299%171%170%170%170%343@@@@@@%314@@"])
  fun op word_to_bin_string_def x = x
    val op word_to_bin_string_def =
    DT(((("words",24),[]),[]), [read"%149%609@%475%299%171%343@@@%233@@"])
  fun op word_to_oct_string_def x = x
    val op word_to_oct_string_def =
    DT(((("words",25),[]),[]),
       [read"%149%615@%475%299%171%170%170%343@@@@@%233@@"])
  fun op word_to_dec_string_def x = x
    val op word_to_dec_string_def =
    DT(((("words",26),[]),[]),
       [read"%149%611@%475%299%171%171%170%343@@@@@%233@@"])
  fun op word_to_hex_string_def x = x
    val op word_to_hex_string_def =
    DT(((("words",27),[]),[]),
       [read"%149%613@%475%299%171%170%170%170%343@@@@@@%233@@"])
  fun op word_T_def x = x
    val op word_T_def =
    DT(((("words",28),[]),[]), [read"%137%502@%412%309%444@@@"])
  fun op word_L_def x = x
    val op word_L_def =
    DT(((("words",29),[]),[]), [read"%137%496@%412%242%444@@@"])
  fun op word_H_def x = x
    val op word_H_def =
    DT(((("words",30),[]),[]), [read"%137%495@%412%240%444@@@"])
  fun op word_1comp_def x = x
    val op word_1comp_def =
    DT(((("words",31),[]),[]),
       [read"%95%81%137%487$0@@%195%40%623%405$1@$0@@|@@|@"])
  fun op word_and_def x = x
    val op word_and_def =
    DT(((("words",32),[]),[]),
       [read"%95%75%95%81%137%507$1@$0@@%195%40%131%405$2@$0@@%405$1@$0@@|@@|@|@"])
  fun op word_or_def x = x
    val op word_or_def =
    DT(((("words",33),[]),[]),
       [read"%95%75%95%81%137%578$1@$0@@%195%40%344%405$2@$0@@%405$1@$0@@|@@|@|@"])
  fun op word_xor_def x = x
    val op word_xor_def =
    DT(((("words",34),[]),[]),
       [read"%95%75%95%81%137%618$1@$0@@%195%40%623%136%405$2@$0@@%405$1@$0@@@|@@|@|@"])
  fun op word_nand_def x = x
    val op word_nand_def =
    DT(((("words",35),[]),[]),
       [read"%95%75%95%81%137%574$1@$0@@%195%40%623%131%405$2@$0@@%405$1@$0@@@|@@|@|@"])
  fun op word_nor_def x = x
    val op word_nor_def =
    DT(((("words",36),[]),[]),
       [read"%95%75%95%81%137%576$1@$0@@%195%40%623%344%405$2@$0@@%405$1@$0@@@|@@|@|@"])
  fun op word_xnor_def x = x
    val op word_xnor_def =
    DT(((("words",37),[]),[]),
       [read"%95%75%95%81%137%616$1@$0@@%195%40%136%405$2@$0@@%405$1@$0@@|@@|@|@"])
  fun op word_reduce_def x = x
    val op word_reduce_def =
    DT(((("words",38),[]),[]),
       [read"%100%31%95%81%142%583$1@$0@@%197%267%282%44%223$2@%231$0@@%307$0@@|@%228%40%405$1@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@@@|@|@"])
  fun op word_compare_def x = x
    val op word_compare_def =
    DT(((("words",39),[]),[]),
       [read"%95%8%95%19%142%516$1@$0@@%184%137$1@$0@@%416%299%170%343@@@@%416%132@@@|@|@"])
  fun op reduce_and_def x = x
    val op reduce_and_def =
    DT(((("words",40),[]),[]), [read"%148%425@%583%131@@"])
  fun op reduce_or_def x = x
    val op reduce_or_def =
    DT(((("words",41),[]),[]), [read"%148%428@%583%344@@"])
  fun op reduce_xor_def x = x
    val op reduce_xor_def =
    DT(((("words",42),[]),[]),
       [read"%148%430@%583%84%89%623%136$1@$0@@||@@"])
  fun op reduce_nand_def x = x
    val op reduce_nand_def =
    DT(((("words",43),[]),[]),
       [read"%148%426@%583%7%18%623%131$1@$0@@||@@"])
  fun op reduce_nor_def x = x
    val op reduce_nor_def =
    DT(((("words",44),[]),[]),
       [read"%148%427@%583%7%18%623%344$1@$0@@||@@"])
  fun op reduce_xnor_def x = x
    val op reduce_xnor_def =
    DT(((("words",45),[]),[]), [read"%148%429@%583%136@@"])
  fun op word_lsb_def x = x
    val op word_lsb_def =
    DT(((("words",46),[]),[]), [read"%95%81%136%554$0@@%405$0@%132@@|@"])
  fun op word_msb_def x = x
    val op word_msb_def =
    DT(((("words",47),[]),[]),
       [read"%95%81%136%568$0@@%405$0@%130%353%444@@%299%170%343@@@@@|@"])
  fun op word_slice_def x = x
    val op word_slice_def =
    DT(((("words",48),[]),[]),
       [read"%113%37%113%47%146%599$1@$0@@%81%195%40%131%135$2@$0@@%131%135$0@%292$3@%130%353%444@@%299%170%343@@@@@@%405$1@$0@@@|@|@|@|@"])
  fun op word_bits_def x = x
    val op word_bits_def =
    DT(((("words",49),[]),[]),
       [read"%113%37%113%47%146%514$1@$0@@%81%195%40%131%135%115$0@$2@@%292$3@%130%353%444@@%299%170%343@@@@@@%405$1@%115$0@$2@@@|@|@|@|@"])
  fun op word_signed_bits_def x = x
    val op word_signed_bits_def =
    DT(((("words",50),[]),[]),
       [read"%113%37%113%47%146%598$1@$0@@%81%195%40%131%135$2@%292$3@%130%353%444@@%299%170%343@@@@@@%405$1@%292%115$0@$2@@%292$3@%130%353%444@@%299%170%343@@@@@@@|@|@|@|@"])
  fun op word_extract_def x = x
    val op word_extract_def =
    DT(((("words",51),[]),[]),
       [read"%113%37%113%47%147%521$1@$0@@%420%477@%514$1@$0@@@|@|@"])
  fun op word_bit_def x = x
    val op word_bit_def =
    DT(((("words",52),[]),[]),
       [read"%113%22%95%81%136%513$1@$0@@%131%135$1@%130%353%444@@%299%170%343@@@@@%405$0@$1@@@|@|@"])
  fun op word_reverse_def x = x
    val op word_reverse_def =
    DT(((("words",53),[]),[]),
       [read"%95%81%137%585$0@@%195%40%405$1@%130%130%353%444@@%299%170%343@@@@$0@@|@@|@"])
  fun op word_modify_def x = x
    val op word_modify_def =
    DT(((("words",54),[]),[]),
       [read"%106%35%95%81%137%567$1@$0@@%195%40$2$0@%405$1@$0@@|@@|@|@"])
  fun op BIT_SET_tupled_primitive_def x = x
    val op BIT_SET_tupled_primitive_def =
    DT(((("words",55),[]),[]),
       [read"%155%177@%342%168%6%131%340$0@@%131%113%40%113%57%163%131%623%158$0@%132@@@%300$0@@@$2%129%304$1@@%188$0@%299%171%343@@@@@%129$1@$0@@@|@|@@%113%40%113%57%163%131%623%158$0@%132@@@%623%300$0@@@@$2%129%304$1@@%188$0@%299%171%343@@@@@%129$1@$0@@@|@|@@@|@@%0%15%424$0@%40%57%235%185%158$0@%132@@%190@%185%300$0@@%239$1@$3%129%304$1@@%188$0@%299%171%343@@@@@@@$3%129%304$1@@%188$0@%299%171%343@@@@@@@@||@||@@"])
  fun op BIT_SET_curried_def x = x
    val op BIT_SET_curried_def =
    DT(((("words",56),[]),[]),
       [read"%113%87%113%88%153%176$1@$0@@%177%129$1@$0@@@|@|@"])
  fun op bit_field_insert_def x = x
    val op bit_field_insert_def =
    DT(((("words",59),[]),[]),
       [read"%113%37%113%47%96%9%146%351$2@$1@$0@@%567%40%179%131%135$2@$0@@%135$0@$3@@@%406$1@%130$0@$2@@@|@@|@|@|@"])
  fun op word_sign_extend_def x = x
    val op word_sign_extend_def =
    DT(((("words",60),[]),[]),
       [read"%113%57%95%81%137%597$1@$0@@%412%302$1@%353%444@@%473$0@@@@|@|@"])
  fun op word_len_def x = x
    val op word_len_def =
    DT(((("words",61),[]),[]), [read"%95%81%158%547$0@@%353%444@@|@"])
  fun op bit_count_upto_def x = x
    val op bit_count_upto_def =
    DT(((("words",62),[]),[]),
       [read"%113%57%95%81%158%349$1@$0@@%305$1@%40%186%405$1@$0@@%299%170%343@@@%132@|@@|@|@"])
  fun op bit_count_def x = x
    val op bit_count_def =
    DT(((("words",63),[]),[]),
       [read"%95%81%158%348$0@@%349%353%444@@$0@@|@"])
  fun op word_2comp_def x = x
    val op word_2comp_def =
    DT(((("words",64),[]),[]),
       [read"%95%81%137%490$0@@%412%130%381%444@@%473$0@@@@|@"])
  fun op word_add_def x = x
    val op word_add_def =
    DT(((("words",65),[]),[]),
       [read"%95%75%95%81%137%505$1@$0@@%412%115%473$1@@%473$0@@@@|@|@"])
  fun op word_mul_def x = x
    val op word_mul_def =
    DT(((("words",66),[]),[]),
       [read"%95%75%95%81%137%569$1@$0@@%412%114%473$1@@%473$0@@@@|@|@"])
  fun op word_log2_def x = x
    val op word_log2_def =
    DT(((("words",67),[]),[]),
       [read"%95%81%137%550$0@@%412%290%473$0@@@@|@"])
  fun op add_with_carry_def x = x
    val op add_with_carry_def =
    DT(((("words",68),[("pair",[16])]),["DISK_THM"]),
       [read"%95%85%95%90%94%26%162%345%123$2@%121$1@$0@@@@%288%73%278%63%273%272%27%60%122$2@%116$1@$0@@||@%623%158%473$0@@$1@@@@%131%136%568$4@@%568$3@@@%623%136%568$4@@%568$0@@@@@|@%412$0@@|@%115%115%473$2@@%473$1@@@%186$0@%299%170%343@@@%132@@@@|@|@|@"])
  fun op word_sub_def x = x
    val op word_sub_def =
    DT(((("words",69),[]),[]),
       [read"%95%75%95%81%137%605$1@$0@@%505$1@%490$0@@@|@|@"])
  fun op word_div_def x = x
    val op word_div_def =
    DT(((("words",70),[]),[]),
       [read"%95%75%95%81%137%519$1@$0@@%412%188%473$1@@%473$0@@@@|@|@"])
  fun op word_sdiv_def x = x
    val op word_sdiv_def =
    DT(((("words",71),[]),[]),
       [read"%95%8%95%19%137%596$1@$0@@%180%568$1@@%180%568$0@@%519%490$1@@%490$0@@@%490%519%490$1@@$0@@@@%180%568$0@@%490%519$1@%490$0@@@@%519$1@$0@@@@|@|@"])
  fun op word_mod_def x = x
    val op word_mod_def =
    DT(((("words",72),[]),[]),
       [read"%95%75%95%81%137%566$1@$0@@%412%293%473$1@@%473$0@@@@|@|@"])
  fun op word_srem_def x = x
    val op word_srem_def =
    DT(((("words",73),[]),[]),
       [read"%95%8%95%19%137%604$1@$0@@%180%568$1@@%180%568$0@@%490%566%490$1@@%490$0@@@@%490%566%490$1@@$0@@@@%180%568$0@@%566$1@%490$0@@@%566$1@$0@@@@|@|@"])
  fun op word_smod_def x = x
    val op word_smod_def =
    DT(((("words",74),[]),[]),
       [read"%95%64%95%70%137%603$1@$0@@%275%276%16%17%275%72%180%137$0@%412%132@@@$0@%180%568$4@@%180%568$3@@%490$0@@%505%490$0@@$3@@@%180%568$3@@%505$0@$3@@$0@@@|@%566$1@$0@@||@%180%568$1@@%490$1@@$1@@@%180%568$0@@%490$0@@$0@@@|@|@"])
  fun op word_L2_def x = x
    val op word_L2_def =
    DT(((("words",75),[]),[]), [read"%137%498@%569%496@%496@@"])
  fun op nzcv_def x = x
    val op nzcv_def =
    DT(((("words",76),[]),[]),
       [read"%95%8%95%19%161%419$1@$0@@%287%61%277%62%120%568$0@@%119%137$0@%412%132@@@%116%344%169%353%444@@$1@@%137$2@%412%132@@@@%131%623%136%568$3@@%568$2@@@@%623%136%568$0@@%568$3@@@@@@@|@%412$0@@|@%115%473$1@@%473%490$0@@@@@|@|@"])
  fun op word_lt_def x = x
    val op word_lt_def =
    DT(((("words",77),[]),[]),
       [read"%95%8%95%19%136%562$1@$0@@%289%313%54%312%92%311%23%74%623%136$3@$0@@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_gt_def x = x
    val op word_gt_def =
    DT(((("words",78),[]),[]),
       [read"%95%8%95%19%136%539$1@$0@@%289%313%54%312%92%311%23%74%131%623$2@@%136$3@$0@@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_le_def x = x
    val op word_le_def =
    DT(((("words",79),[]),[]),
       [read"%95%8%95%19%136%544$1@$0@@%289%313%54%312%92%311%23%74%344$2@%623%136$3@$0@@@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_ge_def x = x
    val op word_ge_def =
    DT(((("words",80),[]),[]),
       [read"%95%8%95%19%136%538$1@$0@@%289%313%54%312%92%311%23%74%136$3@$0@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_ls_def x = x
    val op word_ls_def =
    DT(((("words",81),[]),[]),
       [read"%95%8%95%19%136%551$1@$0@@%289%313%54%312%92%311%23%74%344%623$1@@$2@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_hi_def x = x
    val op word_hi_def =
    DT(((("words",82),[]),[]),
       [read"%95%8%95%19%136%540$1@$0@@%289%313%54%312%92%311%23%74%131$1@%623$2@@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_lo_def x = x
    val op word_lo_def =
    DT(((("words",83),[]),[]),
       [read"%95%8%95%19%136%548$1@$0@@%289%313%54%312%92%311%23%74%623$1@||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_hs_def x = x
    val op word_hs_def =
    DT(((("words",84),[]),[]),
       [read"%95%8%95%19%136%541$1@$0@@%289%313%54%312%92%311%23%74$1||@|@|@@%419$1@$0@@@|@|@"])
  fun op word_min_def x = x
    val op word_min_def =
    DT(((("words",85),[]),[]),
       [read"%95%8%95%19%137%565$1@$0@@%180%548$1@$0@@$1@$0@@|@|@"])
  fun op word_max_def x = x
    val op word_max_def =
    DT(((("words",86),[]),[]),
       [read"%95%8%95%19%137%564$1@$0@@%180%548$1@$0@@$0@$1@@|@|@"])
  fun op word_smin_def x = x
    val op word_smin_def =
    DT(((("words",87),[]),[]),
       [read"%95%8%95%19%137%602$1@$0@@%180%562$1@$0@@$1@$0@@|@|@"])
  fun op word_smax_def x = x
    val op word_smax_def =
    DT(((("words",88),[]),[]),
       [read"%95%8%95%19%137%601$1@$0@@%180%562$1@$0@@$0@$1@@|@|@"])
  fun op word_abs_def x = x
    val op word_abs_def =
    DT(((("words",89),[]),[]),
       [read"%95%81%137%504$0@@%180%562$0@%412%132@@@%490$0@@$0@@|@"])
  fun op word_lsl_def x = x
    val op word_lsl_def =
    DT(((("words",90),[]),[]),
       [read"%95%81%113%57%137%555$1@$0@@%195%40%131%134$0@%353%444@@@%131%135$1@$0@@%405$2@%130$0@$1@@@@|@@|@|@"])
  fun op word_lsr_def x = x
    val op word_lsr_def =
    DT(((("words",91),[]),[]),
       [read"%95%81%113%57%137%559$1@$0@@%195%40%131%134%115$0@$1@@%353%444@@@%405$2@%115$0@$1@@@|@@|@|@"])
  fun op word_asr_def x = x
    val op word_asr_def =
    DT(((("words",92),[]),[]),
       [read"%95%81%113%57%137%510$1@$0@@%195%40%179%135%353%444@@%115$0@$1@@@%568$2@@%405$2@%115$0@$1@@@|@@|@|@"])
  fun op word_ror_def x = x
    val op word_ror_def =
    DT(((("words",93),[]),[]),
       [read"%95%81%113%57%137%591$1@$0@@%195%40%405$2@%293%115$0@$1@@%353%444@@@|@@|@|@"])
  fun op word_rol_def x = x
    val op word_rol_def =
    DT(((("words",94),[]),[]),
       [read"%95%81%113%57%137%586$1@$0@@%591$1@%130%353%444@@%293$0@%353%444@@@@@|@|@"])
  fun op word_rrx_def x = x
    val op word_rrx_def =
    DT(((("words",95),[("pair",[16])]),["DISK_THM"]),
       [read"%94%23%95%81%159%594%117$1@$0@@@%117%554$0@@%195%40%179%158$0@%130%353%444@@%299%170%343@@@@@$2@%405%559$1@%299%170%343@@@@$0@@|@@@|@|@"])
  fun op word_lsl_bv_def x = x
    val op word_lsl_bv_def =
    DT(((("words",96),[]),[]),
       [read"%95%81%95%55%137%558$1@$0@@%555$1@%473$0@@@|@|@"])
  fun op word_lsr_bv_def x = x
    val op word_lsr_bv_def =
    DT(((("words",97),[]),[]),
       [read"%95%81%95%55%137%561$1@$0@@%559$1@%473$0@@@|@|@"])
  fun op word_asr_bv_def x = x
    val op word_asr_bv_def =
    DT(((("words",98),[]),[]),
       [read"%95%81%95%55%137%512$1@$0@@%510$1@%473$0@@@|@|@"])
  fun op word_ror_bv_def x = x
    val op word_ror_bv_def =
    DT(((("words",99),[]),[]),
       [read"%95%81%95%55%137%593$1@$0@@%591$1@%473$0@@@|@|@"])
  fun op word_rol_bv_def x = x
    val op word_rol_bv_def =
    DT(((("words",100),[]),[]),
       [read"%95%81%95%55%137%590$1@$0@@%586$1@%473$0@@@|@|@"])
  fun op word_join_def x = x
    val op word_join_def =
    DT(((("words",101),[]),[]),
       [read"%95%75%96%82%143%542$1@$0@@%280%281%28%29%582%557$1@%354%445@@@$0@||@%480$1@@@%484$0@@@|@|@"])
  fun op word_concat_def x = x
    val op word_concat_def =
    DT(((("words",102),[]),[]),
       [read"%95%75%96%82%139%517$1@$0@@%486%542$1@$0@@@|@|@"])
  fun op word_replicate_def x = x
    val op word_replicate_def =
    DT(((("words",103),[]),[]),
       [read"%113%57%95%81%138%584$1@$0@@%196%40%131%134$0@%114$2@%353%444@@@@%405$1@%293$0@%353%444@@@@|@@|@|@"])
  fun op concat_word_list_def x = x
    val op concat_word_list_def =
    DT(((("words",104),[("list",[13])]),["DISK_THM"]),
       [read"%131%138%352%298@@%413%132@@@%95%36%110%71%138%352%187$1@$0@@@%579%477$1@@%556%352$0@@%353%444@@@@|@|@@"])
  fun op saturate_n2w_def x = x
    val op saturate_n2w_def =
    DT(((("words",105),[]),[]),
       [read"%113%57%137%435$0@@%180%135%381%444@@$0@@%502@%412$0@@@|@"])
  fun op saturate_w2w_def x = x
    val op saturate_w2w_def =
    DT(((("words",106),[]),[]), [read"%95%81%138%438$0@@%436%473$0@@@|@"])
  fun op saturate_add_def x = x
    val op saturate_add_def =
    DT(((("words",107),[]),[]),
       [read"%95%8%95%19%137%433$1@$0@@%435%115%473$1@@%473$0@@@@|@|@"])
  fun op saturate_sub_def x = x
    val op saturate_sub_def =
    DT(((("words",108),[]),[]),
       [read"%95%8%95%19%137%437$1@$0@@%412%130%473$1@@%473$0@@@@|@|@"])
  fun op saturate_mul_def x = x
    val op saturate_mul_def =
    DT(((("words",109),[]),[]),
       [read"%95%8%95%19%137%434$1@$0@@%435%114%473$1@@%473$0@@@@|@|@"])
  fun op n2w_itself_primitive_def x = x
    val op n2w_itself_primitive_def =
    DT(((("words",679),[]),[]),
       [read"%154%418@%341%167%5%339$0@|@@%59%14%423$0@%57%79%234%412$1@@||@||@@"])
  fun op BIT_SET_ind x = x
    val op BIT_SET_ind =
    DT(((("words",57),
        [("arithmetic",[46,59,71,93,173,177,180,236]),
         ("bool",[25,27,36,51,52,53,54,58,63,96,101,104,105,124]),
         ("combin",[19]),("numeral",[3,7,8]),("pair",[5,7,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%107%3%163%113%40%113%57%163%131%163%131%623%158$0@%132@@@%300$0@@@$2%304$1@@%188$0@%299%171%343@@@@@@%163%131%623%158$0@%132@@@%623%300$0@@@@$2%304$1@@%188$0@%299%171%343@@@@@@@$2$1@$0@@|@|@@%113%78%113%80$2$1@$0@|@|@@|@"])
  fun op BIT_SET_def x = x
    val op BIT_SET_def =
    DT(((("words",58),
        [("arithmetic",[46,59,71,93,173,177,180,236]),
         ("bool",[15,25,36,51,52,53,54,58,63,96,101,104,105,124,129]),
         ("combin",[19]),("numeral",[3,7,8]),("pair",[7,9,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[55,56])]),["DISK_THM"]),
       [read"%113%57%113%40%153%176$0@$1@@%185%158$1@%132@@%190@%185%300$1@@%239$0@%176%304$0@@%188$1@%299%171%343@@@@@@%176%304$0@@%188$1@%299%171%343@@@@@@@|@|@"])
  fun op ZERO_LT_dimword x = x
    val op ZERO_LT_dimword =
    DT(((("words",110),
        [("bit",[24]),("bool",[25,63]),("words",[0])]),["DISK_THM"]),
       [read"%134%132@%381%444@@"])
  fun op dimword_IS_TWICE_INT_MIN x = x
    val op dimword_IS_TWICE_INT_MIN =
    DT(((("words",111),
        [("arithmetic",[8,28,46,59,65,71,93]),
         ("bool",[25,26,27,36,54,56,63,96,101,104,105]),("fcp",[5]),
         ("numeral",[3,8]),("prim_rec",[6]),
         ("words",[0,1])]),["DISK_THM"]),
       [read"%158%381%444@@%114%299%171%343@@@%242%444@@@"])
  fun op dimword_sub_int_min x = x
    val op dimword_sub_int_min =
    DT(((("words",112),
        [("arithmetic",[24,25,27,46,71,74,93,172,173,177,180,269]),
         ("bool",[25,36,43,52,54,56,58,63,93,96,101,104,105]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[111])]),["DISK_THM"]),
       [read"%158%130%381%444@@%242%444@@@%242%444@@"])
  fun op DIMINDEX_GT_0 x = x
    val op DIMINDEX_GT_0 =
    DT(((("words",113),
        [("arithmetic",[46,59,71,93]),
         ("bool",[25,26,36,47,48,53,54,63,94,96,101,104,105]),("fcp",[5]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%134%132@%353%444@@"])
  fun op ONE_LT_dimword x = x
    val op ONE_LT_dimword =
    DT(((("words",114),
        [("arithmetic",[8,59,173,278]),
         ("bool",[25,53,54,58,63,73,75,83,100,104]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[0,113])]),["DISK_THM"]),
       [read"%134%299%170%343@@@%381%444@@"])
  fun op EXISTS_HB x = x
    val op EXISTS_HB =
    DT(((("words",115),
        [("arithmetic",[0,64,101]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,63,72,78,93,94,96,146]),
         ("sat",[1,3,5,6,7,11,13,14,15]),("words",[113])]),["DISK_THM"]),
       [read"%166%51%158%353%444@@%304$0@@|@"])
  fun op MOD_DIMINDEX x = x
    val op MOD_DIMINDEX =
    DT(((("words",116),
        [("arithmetic",[65]),("bit",[43]),("bool",[25,36,56]),
         ("words",[0,115])]),["DISK_THM"]),
       [read"%113%57%158%293$0@%381%444@@@%172%130%353%444@@%299%170%343@@@@%132@$0@@|@"])
  fun op BITS_ZEROL_DIMINDEX x = x
    val op BITS_ZEROL_DIMINDEX =
    DT(((("words",117),
        [("arithmetic",[217]),("bool",[25,36,53,56,58,63,105,124]),
         ("words",[116])]),["DISK_THM"]),
       [read"%113%57%163%134$0@%381%444@@@%158%172%130%353%444@@%299%170%343@@@@%132@$0@@$0@@|@"])
  fun op MOD_2EXP_DIMINDEX x = x
    val op MOD_2EXP_DIMINDEX =
    DT(((("words",118),
        [("arithmetic",[17,24,25,27,41,46,71,93,172,173,177,180,269]),
         ("bit",[0,43]),("bool",[25,36,43,52,54,58,63,93,96,101,104,105]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113,116])]),["DISK_THM"]),
       [read"%113%57%158%293$0@%381%444@@@%294%353%444@@$0@@|@"])
  fun op INT_MIN_SUM x = x
    val op INT_MIN_SUM =
    DT(((("words",119),
        [("arithmetic",[73,102,129,130]),
         ("bool",[25,26,27,30,56,58,63,64,105,129,147]),("fcp",[5,19]),
         ("numeral",[33]),("words",[0,1])]),["DISK_THM"]),
       [read"%158%266%470@@%186%131%198%315@@%199%316@@@%114%381%444@@%243%445@@@%266%470@@@"])
  fun op ZERO_LT_INT_MIN x = x
    val op ZERO_LT_INT_MIN =
    DT(((("words",120),
        [("bit",[24]),("bool",[25,63]),("words",[1])]),["DISK_THM"]),
       [read"%134%132@%242%444@@"])
  fun op ZERO_LT_INT_MAX x = x
    val op ZERO_LT_INT_MAX =
    DT(((("words",121),
        [("arithmetic",
         [24,41,46,59,71,93,147,172,173,176,177,180,197,199,269]),
         ("bit",[30]),("bool",[25,36,43,52,54,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8,9,32,33]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[1,3])]),["DISK_THM"]),
       [read"%163%134%299%170%343@@@%353%444@@@%134%132@%240%444@@@"])
  fun op ZERO_LE_INT_MAX x = x
    val op ZERO_LE_INT_MAX =
    DT(((("words",122),
        [("arithmetic",[46,71,93,173,176,180]),("bool",[25,36,54,63,104]),
         ("numeral",[3,8])]),["DISK_THM"]), [read"%135%132@%240%444@@"])
  fun op ZERO_LT_UINT_MAX x = x
    val op ZERO_LT_UINT_MAX =
    DT(((("words",123),
        [("arithmetic",[24,41,46,59,71,93,173,180,199]),
         ("bool",[25,36,54,63,96,101,104,105]),("numeral",[3,5,8]),
         ("words",[2,114])]),["DISK_THM"]), [read"%134%132@%309%444@@"])
  fun op INT_MIN_LT_DIMWORD x = x
    val op INT_MIN_LT_DIMWORD =
    DT(((("words",124),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200,278]),
         ("bool",[25,36,51,52,54,63,93,96,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,1,113])]),["DISK_THM"]),
       [read"%134%242%444@@%381%444@@"])
  fun op INT_MAX_LT_DIMWORD x = x
    val op INT_MAX_LT_DIMWORD =
    DT(((("words",125),
        [("arithmetic",[24,25,26,27,41,46,59,71,93,172,173,180,200,269]),
         ("bool",[25,36,43,51,52,54,63,96,101,104,105]),
         ("numeral",[3,5,8]),("words",[3,110,124])]),["DISK_THM"]),
       [read"%134%240%444@@%381%444@@"])
  fun op dimindex_lt_dimword x = x
    val op dimindex_lt_dimword =
    DT(((("words",126),
        [("arithmetic",[284]),("bool",[25,54,63]),("numeral",[3,7]),
         ("words",[0])]),["DISK_THM"]), [read"%134%353%444@@%381%444@@"])
  fun op BOUND_ORDER x = x
    val op BOUND_ORDER =
    DT(((("words",127),
        [("arithmetic",[24,25,41,46,59,71,93,147,173,176,177,180,197,200]),
         ("bool",[25,36,43,51,52,54,63,93,96,101,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[2,3,110,120,124])]),["DISK_THM"]),
       [read"%131%134%240%444@@%242%444@@@%131%135%242%444@@%309%444@@@%134%309%444@@%381%444@@@@"])
  fun op dimindex_dimword_iso x = x
    val op dimindex_dimword_iso =
    DT(((("words",128),
        [("arithmetic",[279]),("bool",[25,54,56]),("fcp",[3]),
         ("numeral",[3,7]),("words",[0])]),["DISK_THM"]),
       [read"%136%158%353%444@@%354%445@@@%158%381%444@@%382%445@@@"])
  fun op dimindex_dimword_le_iso x = x
    val op dimindex_dimword_le_iso =
    DT(((("words",129),
        [("arithmetic",[277]),("bool",[25,54,56]),("fcp",[3]),
         ("numeral",[3,7]),("words",[0])]),["DISK_THM"]),
       [read"%136%135%353%444@@%354%445@@@%135%381%444@@%382%445@@@"])
  fun op dimindex_dimword_lt_iso x = x
    val op dimindex_dimword_lt_iso =
    DT(((("words",130),
        [("arithmetic",[278]),("bool",[25,54,56]),("fcp",[3]),
         ("numeral",[3,7]),("words",[0])]),["DISK_THM"]),
       [read"%136%134%353%444@@%354%445@@@%134%381%444@@%382%445@@@"])
  fun op dimindex_int_min_iso x = x
    val op dimindex_int_min_iso =
    DT(((("words",131),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,176,177,180,269,279]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[1,113])]),["DISK_THM"]),
       [read"%136%158%353%444@@%354%445@@@%158%242%444@@%243%445@@@"])
  fun op dimindex_int_min_le_iso x = x
    val op dimindex_int_min_le_iso =
    DT(((("words",132),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,176,177,180,198,269,277]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[1,113])]),["DISK_THM"]),
       [read"%136%135%353%444@@%354%445@@@%135%242%444@@%243%445@@@"])
  fun op dimindex_int_min_lt_iso x = x
    val op dimindex_int_min_lt_iso =
    DT(((("words",133),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,176,177,180,200,269,278]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[1,113])]),["DISK_THM"]),
       [read"%136%134%353%444@@%354%445@@@%134%242%444@@%243%445@@@"])
  fun op dimindex_int_max_iso x = x
    val op dimindex_int_max_iso =
    DT(((("words",134),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[3,120,131])]),["DISK_THM"]),
       [read"%136%158%353%444@@%354%445@@@%158%240%444@@%241%445@@@"])
  fun op dimindex_int_max_le_iso x = x
    val op dimindex_int_max_le_iso =
    DT(((("words",135),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[3,120,132])]),["DISK_THM"]),
       [read"%136%135%353%444@@%354%445@@@%135%240%444@@%241%445@@@"])
  fun op dimindex_int_max_lt_iso x = x
    val op dimindex_int_max_lt_iso =
    DT(((("words",136),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[3,120,133])]),["DISK_THM"]),
       [read"%136%134%353%444@@%354%445@@@%134%240%444@@%241%445@@@"])
  fun op dimindex_uint_max_iso x = x
    val op dimindex_uint_max_iso =
    DT(((("words",137),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[2,110,128])]),["DISK_THM"]),
       [read"%136%158%353%444@@%354%445@@@%158%309%444@@%310%445@@@"])
  fun op dimindex_uint_max_le_iso x = x
    val op dimindex_uint_max_le_iso =
    DT(((("words",138),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[2,110,129])]),["DISK_THM"]),
       [read"%136%135%353%444@@%354%445@@@%135%309%444@@%310%445@@@"])
  fun op dimindex_uint_max_lt_iso x = x
    val op dimindex_uint_max_lt_iso =
    DT(((("words",139),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,177,180,269]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[2,110,130])]),["DISK_THM"]),
       [read"%136%134%353%444@@%354%445@@@%134%309%444@@%310%445@@@"])
  fun op w2n_n2w x = x
    val op w2n_n2w =
    DT(((("words",140),
        [("arithmetic",[22,25,26,28,38,46,71,93,95,173,176,180,212]),
         ("bit",[43,62,64,79]),
         ("bool",[14,25,36,51,53,54,56,58,63,104,105,124]),("fcp",[15]),
         ("num",[9]),("numeral",[3,8,33]),("sum_num",[11,12,14]),
         ("words",[0,4,5])]),["DISK_THM"]),
       [read"%113%57%158%473%412$0@@@%293$0@%381%444@@@|@"])
  fun op n2w_w2n x = x
    val op n2w_w2n =
    DT(((("words",141),
        [("arithmetic",
         [8,22,24,25,26,27,41,46,53,59,67,69,70,71,72,73,74,76,81,93,95,
          101,102,145,148,172,173,176,180,273,275,277,289,310]),
         ("bit",[4,7,42,48,49,50,51,68,69,102]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,73,75,93,96,101,104,
          105,107,124,129,147,170]),("combin",[1,5,19]),("fcp",[13,15]),
         ("num",[9]),("numeral",[3,5,6,7,8,33]),("prim_rec",[6,19]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sum_num",[12]),("words",[4,5])]),["DISK_THM"]),
       [read"%95%81%137%412%473$0@@@$0@|@"])
  fun op word_nchotomy x = x
    val op word_nchotomy =
    DT(((("words",142),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,72,93,94,96]),
         ("sat",[1,3,5,6,7,11,13,14,15]),("words",[141])]),["DISK_THM"]),
       [read"%95%81%166%57%137$1@%412$0@@|@|@"])
  fun op n2w_mod x = x
    val op n2w_mod =
    DT(((("words",143),
        [("arithmetic",[22,24,25,41,46,71,93,172,173,180,295]),
         ("bit",[7,43,51]),
         ("bool",[25,26,27,36,43,54,56,58,63,64,96,101,104,105,124,129]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[0,5,115])]),["DISK_THM"]),
       [read"%113%57%137%412%293$0@%381%444@@@@%412$0@@|@"])
  fun op n2w_11 x = x
    val op n2w_11 =
    DT(((("words",144),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180]),("bit",[43,86]),
         ("bool",
         [25,26,36,43,47,48,51,52,53,54,58,63,71,74,77,81,83,93,94,96,104,
          105,107,124,146]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[0,5,115])]),["DISK_THM"]),
       [read"%113%51%113%57%136%137%412$1@@%412$0@@@%158%293$1@%381%444@@@%293$0@%381%444@@@@|@|@"])
  fun op ranged_word_nchotomy x = x
    val op ranged_word_nchotomy =
    DT(((("words",145),
        [("arithmetic",[209,247]),("bool",[25,51,58,63]),
         ("words",[110,142,144])]),["DISK_THM"]),
       [read"%95%81%166%57%131%137$1@%412$0@@@%134$0@%381%444@@@|@|@"])
  fun op dimindex_1_cases x = x
    val op dimindex_1_cases =
    DT(((("words",146),
        [("arithmetic",[41,46,71,93,172,173,177,180,275]),
         ("bool",[25,36,43,52,54,56,63,93,96,101,104,105]),
         ("numeral",[0,3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,145])]),["DISK_THM"]),
       [read"%95%8%163%158%353%444@@%299%170%343@@@@%344%137$0@%412%132@@@%137$0@%412%299%170%343@@@@@@|@"])
  fun op mod_dimindex x = x
    val op mod_dimindex =
    DT(((("words",147),
        [("arithmetic",[34,237]),("bool",[25,53,54,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",[113,126])]),["DISK_THM"]),
       [read"%113%57%134%293$0@%353%444@@@%381%444@@|@"])
  fun op WORD_INDUCT x = x
    val op WORD_INDUCT =
    DT(((("words",148),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180]),
         ("bool",[14,25,27,36,48,53,54,63,96,101,104,105]),("num",[9]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,13,14,15,17,18]),
         ("words",[145])]),["DISK_THM"]),
       [read"%101%1%163%131$0%412%132@@@%113%57%163%134%304$0@@%381%444@@@%163$1%412$0@@@$1%412%304$0@@@@@|@@@%95%85$1$0@|@@|@"])
  fun op w2n_11 x = x
    val op w2n_11 =
    DT(((("words",149),
        [("bool",[25,56]),("words",[140,144,145])]),["DISK_THM"]),
       [read"%95%75%95%81%136%158%473$1@@%473$0@@@%137$1@$0@@|@|@"])
  fun op w2n_lt x = x
    val op w2n_lt =
    DT(((("words",150),
        [("arithmetic",
         [8,24,25,26,27,41,46,59,71,74,93,95,173,176,180,277]),("bit",[4]),
         ("bool",
         [14,25,26,27,30,36,43,53,54,56,58,63,64,73,75,96,101,104,105]),
         ("combin",[1,5,19]),("num",[9]),("numeral",[3,5,7,8,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sum_num",[12]),("words",[0,4])]),["DISK_THM"]),
       [read"%95%81%134%473$0@@%381%444@@|@"])
  fun op word_0_n2w x = x
    val op word_0_n2w =
    DT(((("words",151),
        [("arithmetic",[219]),("bool",[25,56,63]),
         ("words",[110,140])]),["DISK_THM"]),
       [read"%158%473%412%132@@@%132@"])
  fun op word_1_n2w x = x
    val op word_1_n2w =
    DT(((("words",152),
        [("arithmetic",[217]),("bool",[25,56,63]),
         ("words",[114,140])]),["DISK_THM"]),
       [read"%158%473%412%299%170%343@@@@@%299%170%343@@@"])
  fun op w2n_eq_0 x = x
    val op w2n_eq_0 =
    DT(((("words",153),
        [("arithmetic",[219]),("bool",[25,56,63]),
         ("words",[110,140,142,144])]),["DISK_THM"]),
       [read"%95%81%136%158%473$0@@%132@@%137$0@%412%132@@@|@"])
  fun op n2w_dimword x = x
    val op n2w_dimword =
    DT(((("words",154),
        [("arithmetic",[219,233]),("bool",[25,56,63]),
         ("words",[110,144])]),["DISK_THM"]),
       [read"%137%412%381%444@@@%412%132@@"])
  fun op word_2comp_dimindex_1 x = x
    val op word_2comp_dimindex_1 =
    DT(((("words",155),
        [("arithmetic",[41,46,62,71,93,172,173,177,180,219,233,275]),
         ("bool",[14,25,36,43,52,54,56,63,64,93,96,101,104,105]),
         ("numeral",[0,3,5,7,8,15,16]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,64,144,145,151,152])]),["DISK_THM"]),
       [read"%95%81%163%158%353%444@@%299%170%343@@@@%137%490$0@@$0@@|@"])
  fun op word_add_n2w x = x
    val op word_add_n2w =
    DT(((("words",156),
        [("arithmetic",[224]),("bool",[25,36,53,56,58,63,105,124]),
         ("fcp",[13]),("words",[65,110,140,143])]),["DISK_THM"]),
       [read"%113%51%113%57%137%505%412$1@@%412$0@@@%412%115$1@$0@@@|@|@"])
  fun op word_mul_n2w x = x
    val op word_mul_n2w =
    DT(((("words",157),
        [("arithmetic",[245]),("bool",[25,36,53,56,58,63,105,124]),
         ("fcp",[13]),("words",[66,110,140,143])]),["DISK_THM"]),
       [read"%113%51%113%57%137%569%412$1@@%412$0@@@%412%114$1@$0@@@|@|@"])
  fun op word_log2_n2w x = x
    val op word_log2_n2w =
    DT(((("words",158),
        [("bool",[25,36,53,56,58,105,124]),("fcp",[13]),
         ("words",[67,140])]),["DISK_THM"]),
       [read"%113%57%137%550%412$0@@@%412%290%293$0@%381%444@@@@@|@"])
  fun op word_1comp_n2w x = x
    val op word_1comp_n2w =
    DT(((("words",159),
        [("arithmetic",[0,64,101]),("bit",[43,94,100]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,78,93,94,96,105,
          124,146]),("fcp",[13,15]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("words",[0,5,31,113])]),["DISK_THM"]),
       [read"%113%57%137%487%412$0@@@%412%130%130%381%444@@%299%170%343@@@@%293$0@%381%444@@@@@|@"])
  fun op word_2comp_n2w x = x
    val op word_2comp_n2w =
    DT(((("words",160),
        [("bool",[25,36,56]),("words",[64,140,144])]),["DISK_THM"]),
       [read"%113%57%137%490%412$0@@@%412%130%381%444@@%293$0@%381%444@@@@@|@"])
  fun op word_lsb x = x
    val op word_lsb =
    DT(((("words",161),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[25,36,51,54,56,60,63,104]),("numeral",[3,8]),
         ("words",[46,52])]),["DISK_THM"]), [read"%145%554@%513%132@@"])
  fun op word_msb x = x
    val op word_msb =
    DT(((("words",162),
        [("arithmetic",[24,25,27,46,71,93,172,173,176,180,198,269]),
         ("bool",[25,36,43,51,52,54,56,60,63,96,101,104,105]),
         ("numeral",[3,5,8]),("words",[47,52])]),["DISK_THM"]),
       [read"%145%568@%513%130%353%444@@%299%170%343@@@@@"])
  fun op word_lsb_n2w x = x
    val op word_lsb_n2w =
    DT(((("words",163),
        [("bit",[88]),("bool",[25,36,56,63]),("fcp",[15]),
         ("words",[5,46,113])]),["DISK_THM"]),
       [read"%113%57%136%554%412$0@@@%300$0@@|@"])
  fun op word_msb_n2w x = x
    val op word_msb_n2w =
    DT(((("words",164),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200]),
         ("bool",[25,36,51,52,54,56,63,93,96,104,105,107]),("fcp",[15]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[5,47,113])]),["DISK_THM"]),
       [read"%113%57%136%568%412$0@@@%169%130%353%444@@%299%170%343@@@@$0@@|@"])
  fun op word_msb_n2w_numeric x = x
    val op word_msb_n2w_numeric =
    DT(((("words",165),
        [("arithmetic",
         [18,24,25,26,27,41,46,59,69,71,73,74,76,93,172,173,176,177,180,
          183,200,206,209,214,215,216,218,269,275]),("bit",[0,1,5,7,24]),
         ("bool",
         [25,36,43,51,52,53,54,55,58,63,83,93,96,100,101,104,105,106,124]),
         ("marker",[6]),("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[1,110,111,164])]),["DISK_THM"]),
       [read"%136%568%412%57@@@%135%242%444@@%293%57@%381%444@@@@"])
  fun op word_and_n2w x = x
    val op word_and_n2w =
    DT(((("words",166),
        [("bit",[94]),("bool",[25,36,53,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[5,32])]),["DISK_THM"]),
       [read"%113%57%113%51%137%507%412$1@@%412$0@@@%412%173%353%444@@%131@$1@$0@@@|@|@"])
  fun op word_or_n2w x = x
    val op word_or_n2w =
    DT(((("words",167),
        [("bit",[94]),("bool",[25,36,53,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[5,33])]),["DISK_THM"]),
       [read"%113%57%113%51%137%578%412$1@@%412$0@@@%412%173%353%444@@%344@$1@$0@@@|@|@"])
  fun op word_xor_n2w x = x
    val op word_xor_n2w =
    DT(((("words",168),
        [("bit",[94]),("bool",[25,36,53,56,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15]),("words",[5,34])]),["DISK_THM"]),
       [read"%113%57%113%51%137%618%412$1@@%412$0@@@%412%173%353%444@@%84%89%623%136$1@$0@@||@$1@$0@@@|@|@"])
  fun op word_nand_n2w x = x
    val op word_nand_n2w =
    DT(((("words",169),
        [("bit",[94]),("bool",[25,36,53,56,58,63,96,105,124]),
         ("fcp",[13,15]),("words",[5,35])]),["DISK_THM"]),
       [read"%113%57%113%51%137%574%412$1@@%412$0@@@%412%173%353%444@@%84%89%623%131$1@$0@@||@$1@$0@@@|@|@"])
  fun op word_nor_n2w x = x
    val op word_nor_n2w =
    DT(((("words",170),
        [("bit",[94]),("bool",[25,36,53,56,58,63,96,105,124]),
         ("fcp",[13,15]),("words",[5,36])]),["DISK_THM"]),
       [read"%113%57%113%51%137%576%412$1@@%412$0@@@%412%173%353%444@@%84%89%623%344$1@$0@@||@$1@$0@@@|@|@"])
  fun op word_xnor_n2w x = x
    val op word_xnor_n2w =
    DT(((("words",171),
        [("bit",[94]),("bool",[25,36,53,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[5,37])]),["DISK_THM"]),
       [read"%113%57%113%51%137%616%412$1@@%412$0@@@%412%173%353%444@@%136@$1@$0@@@|@|@"])
  fun op l2w_w2l x = x
    val op l2w_w2l =
    DT(((("words",172),
        [("bool",[25,53,56,58,63,105,124]),("numposrep",[15]),
         ("words",[8,9,141])]),["DISK_THM"]),
       [read"%113%22%95%81%163%134%299%170%343@@@$1@@%137%409$1@%472$1@$0@@@$0@@|@|@"])
  fun op w2l_l2w x = x
    val op w2l_l2w =
    DT(((("words",173),
        [("bool",[25,63]),("words",[8,9,140])]),["DISK_THM"]),
       [read"%113%22%112%46%157%472$1@%409$1@$0@@@%410$1@%293%408$1@$0@@%381%444@@@@|@|@"])
  fun op s2w_w2s x = x
    val op s2w_w2s =
    DT(((("words",174),
        [("ASCIInumbers",[24]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("words",[10,11,141])]),["DISK_THM"]),
       [read"%102%25%105%58%113%22%95%81%163%131%134%299%170%343@@@$1@@%113%87%163%134$0@$2@@%158$4$3$0@@@$0@@|@@@%137%432$1@$3@%475$1@$2@$0@@@$0@@|@|@|@|@"])
  fun op w2s_s2w x = x
    val op w2s_s2w =
    DT(((("words",175),
        [("bool",[25,63]),("words",[10,11,140])]),["DISK_THM"]),
       [read"%113%22%102%25%105%58%111%66%156%475$3@$1@%432$3@$2@$0@@@%411$3@$1@%293%431$3@$2@$0@@%381%444@@@@|@|@|@|@"])
  fun op NUMERAL_LESS_THM x = x
    val op NUMERAL_LESS_THM =
    DT(((("words",176),
        [("arithmetic",[268]),("bool",[26]),
         ("prim_rec",[19])]),["DISK_THM"]),
       [read"%131%113%51%113%57%136%134$1@%299%170$0@@@@%344%158$1@%130%299%170$0@@@%299%170%343@@@@@%134$1@%130%299%170$0@@@%299%170%343@@@@@@|@|@@%113%51%113%57%136%134$1@%299%171$0@@@@%344%158$1@%299%170$0@@@@%134$1@%299%170$0@@@@@|@|@@"])
  fun op word_bin_list x = x
    val op word_bin_list =
    DT(((("words",177),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("words",[12,16,172])]),["DISK_THM"]),
       [read"%146%422%530@%608@@%234@"])
  fun op word_oct_list x = x
    val op word_oct_list =
    DT(((("words",178),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("words",[13,17,172])]),["DISK_THM"]),
       [read"%146%422%536@%614@@%234@"])
  fun op word_dec_list x = x
    val op word_dec_list =
    DT(((("words",179),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("words",[14,18,172])]),["DISK_THM"]),
       [read"%146%422%532@%610@@%234@"])
  fun op word_hex_list x = x
    val op word_hex_list =
    DT(((("words",180),
        [("bool",[25,36,54,56,60]),("combin",[8,19]),("numeral",[3,7]),
         ("words",[15,19,172])]),["DISK_THM"]),
       [read"%146%422%534@%612@@%234@"])
  fun op word_bin_string x = x
    val op word_bin_string =
    DT(((("words",181),
        [("ASCIInumbers",[21]),("arithmetic",[41,46,59,71,93,173,180]),
         ("bool",[25,36,51,53,54,56,58,60,63,96,101,104,105,124]),
         ("combin",[8,19]),("numeral",[3,5,7,8]),
         ("words",[20,24,174])]),["DISK_THM"]),
       [read"%146%421%531@%609@@%234@"])
  fun op word_oct_string x = x
    val op word_oct_string =
    DT(((("words",182),
        [("ASCIInumbers",[21]),("arithmetic",[41,46,59,71,93,173,180]),
         ("bool",[25,36,51,53,54,56,58,60,63,96,101,104,105,124]),
         ("combin",[8,19]),("numeral",[0,3,5,7,8]),
         ("words",[21,25,174])]),["DISK_THM"]),
       [read"%146%421%537@%615@@%234@"])
  fun op word_dec_string x = x
    val op word_dec_string =
    DT(((("words",183),
        [("ASCIInumbers",[21]),("arithmetic",[41,46,59,71,93,173,180]),
         ("bool",[25,36,51,53,54,56,58,60,63,96,101,104,105,124]),
         ("combin",[8,19]),("numeral",[0,3,5,7,8]),
         ("words",[22,26,174])]),["DISK_THM"]),
       [read"%146%421%533@%611@@%234@"])
  fun op word_hex_string x = x
    val op word_hex_string =
    DT(((("words",184),
        [("ASCIInumbers",[21]),
         ("bool",[25,36,51,53,54,56,58,60,63,105,124]),("combin",[8,19]),
         ("numeral",[3,7]),("words",[23,27,174])]),["DISK_THM"]),
       [read"%146%421%535@%613@@%234@"])
  fun op word_0 x = x
    val op word_0 =
    DT(((("words",185),
        [("bit",[48]),("bool",[25,26,27,36,53,54,58,63,105,124]),
         ("fcp",[15]),("words",[5])]),["DISK_THM"]),
       [read"%113%40%163%134$0@%353%444@@@%623%405%412%132@@$0@@@|@"])
  fun op word_eq_0 x = x
    val op word_eq_0 =
    DT(((("words",186),
        [("bool",[25,26,27,56,58,63,105,124]),("fcp",[13]),
         ("words",[185])]),["DISK_THM"]),
       [read"%95%81%136%137$0@%412%132@@@%113%40%163%134$0@%353%444@@@%623%405$1@$0@@@|@@|@"])
  fun op word_T x = x
    val op word_T =
    DT(((("words",187),
        [("arithmetic",[0,62,64,101,219]),("bit",[24,43,48,94,100]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,78,93,94,96,105,
          124,146]),("fcp",[15]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("words",[0,2,5,28,113])]),["DISK_THM"]),
       [read"%113%40%163%134$0@%353%444@@@%405%502@$0@@|@"])
  fun op FCP_T_F x = x
    val op FCP_T_F =
    DT(((("words",188),
        [("bool",[25,26,27,36,53,54,58,63,105,124]),("combin",[12]),
         ("fcp",[13,15]),("words",[185,187])]),["DISK_THM"]),
       [read"%131%137%195%267%306@@@%502@@%138%196%267%193@@@%413%132@@@"])
  fun op word_L x = x
    val op word_L =
    DT(((("words",189),
        [("bit",[49,50]),("bool",[25,26,27,30,54,56,58,63,105,124]),
         ("fcp",[15]),("words",[1,5,29])]),["DISK_THM"]),
       [read"%113%57%163%134$0@%353%444@@@%136%405%496@$0@@%158$0@%130%353%444@@%299%170%343@@@@@@|@"])
  fun op word_H x = x
    val op word_H =
    DT(((("words",190),
        [("bit",[113]),("bool",[25,26,27,30,54,58,63,105,124]),
         ("fcp",[15]),("words",[1,3,5,30])]),["DISK_THM"]),
       [read"%113%57%163%134$0@%353%444@@@%136%405%495@$0@@%134$0@%130%353%444@@%299%170%343@@@@@@|@"])
  fun op word_L2 x = x
    val op word_L2 =
    DT(((("words",191),
        [("arithmetic",
         [18,22,24,25,26,27,41,46,59,62,71,75,76,93,101,102,122,130,148,
          172,173,177,180,183,212,217,218,219,246,269,273,275]),
         ("bit",[24]),
         ("bool",
         [8,14,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,129]),("numeral",[0,3,5,6,7,8,17,18,21,33,34,35,40,41]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,1,29,75,110,144,157])]),["DISK_THM"]),
       [read"%137%498@%180%134%299%170%343@@@%353%444@@@%412%132@@%496@@"])
  fun op WORD_NEG_1 x = x
    val op WORD_NEG_1 =
    DT(((("words",192),
        [("arithmetic",
         [24,25,41,46,59,62,71,93,130,173,177,180,200,212,217]),
         ("bit",[24]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,63,93,96,101,104,105,107]),
         ("numeral",[3,5,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,2,28,64,140,144])]),["DISK_THM"]),
       [read"%137%490%412%299%170%343@@@@@%502@"])
  fun op WORD_NEG_1_T x = x
    val op WORD_NEG_1_T =
    DT(((("words",193),[("bool",[58]),("words",[187,192])]),["DISK_THM"]),
       [read"%113%40%163%134$0@%353%444@@@%405%490%412%299%170%343@@@@@$0@@|@"])
  fun op WORD_MSB_1COMP x = x
    val op WORD_MSB_1COMP =
    DT(((("words",194),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200]),
         ("bool",[25,36,51,52,54,56,63,93,96,104,105,107]),("fcp",[15]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[31,47,113])]),["DISK_THM"]),
       [read"%95%81%136%568%487$0@@@%623%568$0@@@|@"])
  fun op w2n_minus1 x = x
    val op w2n_minus1 =
    DT(((("words",195),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200,217]),
         ("bool",[25,36,51,52,54,56,63,93,96,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[2,28,110,140,192])]),["DISK_THM"]),
       [read"%158%473%490%412%299%170%343@@@@@@%130%381%444@@%299%170%343@@@@"])
  fun op WORD_NOT_NOT x = x
    val op WORD_NOT_NOT =
    DT(((("words",196),
        [("bool",[25,36,53,54,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[31])]),["DISK_THM"]),
       [read"%95%8%137%487%487$0@@@$0@|@"])
  fun op WORD_DE_MORGAN_THM x = x
    val op WORD_DE_MORGAN_THM =
    DT(((("words",197),
        [("bool",[25,36,51,53,56,58,63,96,105,124]),("fcp",[13,15]),
         ("words",[31,32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%131%137%487%507$1@$0@@@%578%487$1@@%487$0@@@@%137%487%578$1@$0@@@%507%487$1@@%487$0@@@@|@|@"])
  fun op WORD_NOT_XOR x = x
    val op WORD_NOT_XOR =
    DT(((("words",198),
        [("bool",[25,36,53,54,56,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15]),("words",[31,34])]),["DISK_THM"]),
       [read"%95%8%95%19%131%137%618%487$1@@%487$0@@@%618$1@$0@@@%131%137%618$1@%487$0@@@%487%618$1@$0@@@@%137%618%487$1@@$0@@%487%618$1@$0@@@@@|@|@"])
  fun op WORD_AND_CLAUSES x = x
    val op WORD_AND_CLAUSES =
    DT(((("words",199),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105,124]),
         ("fcp",[13,15,17]),("words",[32,185,187])]),["DISK_THM"]),
       [read"%95%8%131%137%507%502@$0@@$0@@%131%137%507$0@%502@@$0@@%131%137%507%412%132@@$0@@%412%132@@@%131%137%507$0@%412%132@@@%412%132@@@%137%507$0@$0@@$0@@@@@|@"])
  fun op WORD_OR_CLAUSES x = x
    val op WORD_OR_CLAUSES =
    DT(((("words",200),
        [("bool",[25,26,27,36,51,52,53,56,58,63,105,124]),
         ("fcp",[13,15,17]),("words",[33,185,187])]),["DISK_THM"]),
       [read"%95%8%131%137%578%502@$0@@%502@@%131%137%578$0@%502@@%502@@%131%137%578%412%132@@$0@@$0@@%131%137%578$0@%412%132@@@$0@@%137%578$0@$0@@$0@@@@@|@"])
  fun op WORD_XOR_CLAUSES x = x
    val op WORD_XOR_CLAUSES =
    DT(((("words",201),
        [("bool",[25,26,27,36,51,53,54,56,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15]),
         ("words",[31,34,185,187])]),["DISK_THM"]),
       [read"%95%8%131%137%618%502@$0@@%487$0@@@%131%137%618$0@%502@@%487$0@@@%131%137%618%412%132@@$0@@$0@@%131%137%618$0@%412%132@@@$0@@%137%618$0@$0@@%412%132@@@@@@|@"])
  fun op WORD_AND_ASSOC x = x
    val op WORD_AND_ASSOC =
    DT(((("words",202),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,15,18]),("words",[32])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%507%507$2@$1@@$0@@%507$2@%507$1@$0@@@|@|@|@"])
  fun op WORD_OR_ASSOC x = x
    val op WORD_OR_ASSOC =
    DT(((("words",203),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,13,15,18]),("words",[33])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%578%578$2@$1@@$0@@%578$2@%578$1@$0@@@|@|@|@"])
  fun op WORD_XOR_ASSOC x = x
    val op WORD_XOR_ASSOC =
    DT(((("words",204),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15,18]),("words",[34])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%618%618$2@$1@@$0@@%618$2@%618$1@$0@@@|@|@|@"])
  fun op WORD_AND_COMM x = x
    val op WORD_AND_COMM =
    DT(((("words",205),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,15,18]),("words",[32])]),["DISK_THM"]),
       [read"%95%8%95%19%137%507$1@$0@@%507$0@$1@@|@|@"])
  fun op WORD_OR_COMM x = x
    val op WORD_OR_COMM =
    DT(((("words",206),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,13,15,18]),("words",[33])]),["DISK_THM"]),
       [read"%95%8%95%19%137%578$1@$0@@%578$0@$1@@|@|@"])
  fun op WORD_XOR_COMM x = x
    val op WORD_XOR_COMM =
    DT(((("words",207),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15,18]),("words",[34])]),["DISK_THM"]),
       [read"%95%8%95%19%137%618$1@$0@@%618$0@$1@@|@|@"])
  fun op WORD_AND_IDEM x = x
    val op WORD_AND_IDEM =
    DT(((("words",208),
        [("bool",[25,36,51,53,56,58,105,124]),("fcp",[13,17]),
         ("words",[32])]),["DISK_THM"]), [read"%95%8%137%507$0@$0@@$0@|@"])
  fun op WORD_OR_IDEM x = x
    val op WORD_OR_IDEM =
    DT(((("words",209),
        [("bool",[25,36,52,53,56,58,105,124]),("fcp",[13,17]),
         ("words",[33])]),["DISK_THM"]), [read"%95%8%137%578$0@$0@@$0@|@"])
  fun op WORD_AND_ABSORD x = x
    val op WORD_AND_ABSORD =
    DT(((("words",210),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%137%578$1@%507$1@$0@@@$1@|@|@"])
  fun op WORD_OR_ABSORB x = x
    val op WORD_OR_ABSORB =
    DT(((("words",211),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%137%507$1@%578$1@$0@@@$1@|@|@"])
  fun op WORD_AND_COMP x = x
    val op WORD_AND_COMP =
    DT(((("words",212),
        [("bool",[25,26,27,36,50,53,54,58,63,105,124]),("fcp",[13,15]),
         ("words",[31,32,185])]),["DISK_THM"]),
       [read"%95%8%137%507$0@%487$0@@@%412%132@@|@"])
  fun op WORD_OR_COMP x = x
    val op WORD_OR_COMP =
    DT(((("words",213),
        [("bool",[25,30,36,53,58,63,105,124]),("fcp",[13,15]),
         ("words",[31,33,187])]),["DISK_THM"]),
       [read"%95%8%137%578$0@%487$0@@@%502@|@"])
  fun op WORD_XOR_COMP x = x
    val op WORD_XOR_COMP =
    DT(((("words",214),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15,18,23]),
         ("words",[31,34,187])]),["DISK_THM"]),
       [read"%95%8%137%618$0@%487$0@@@%502@|@"])
  fun op WORD_RIGHT_AND_OVER_OR x = x
    val op WORD_RIGHT_AND_OVER_OR =
    DT(((("words",215),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%507%578$2@$1@@$0@@%578%507$2@$0@@%507$1@$0@@@|@|@|@"])
  fun op WORD_RIGHT_OR_OVER_AND x = x
    val op WORD_RIGHT_OR_OVER_AND =
    DT(((("words",216),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%578%507$2@$1@@$0@@%507%578$2@$0@@%578$1@$0@@@|@|@|@"])
  fun op WORD_RIGHT_AND_OVER_XOR x = x
    val op WORD_RIGHT_AND_OVER_XOR =
    DT(((("words",217),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,15,18]),("words",[32,34])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%507%618$2@$1@@$0@@%618%507$2@$0@@%507$1@$0@@@|@|@|@"])
  fun op WORD_LEFT_AND_OVER_OR x = x
    val op WORD_LEFT_AND_OVER_OR =
    DT(((("words",218),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%507$2@%578$1@$0@@@%578%507$2@$1@@%507$2@$0@@@|@|@|@"])
  fun op WORD_LEFT_OR_OVER_AND x = x
    val op WORD_LEFT_OR_OVER_AND =
    DT(((("words",219),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[32,33])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%578$2@%507$1@$0@@@%507%578$2@$1@@%578$2@$0@@@|@|@|@"])
  fun op WORD_LEFT_AND_OVER_XOR x = x
    val op WORD_LEFT_AND_OVER_XOR =
    DT(((("words",220),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,15,18]),("words",[32,34])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%137%507$2@%618$1@$0@@@%618%507$2@$1@@%507$2@$0@@@|@|@|@"])
  fun op WORD_XOR x = x
    val op WORD_XOR =
    DT(((("words",221),
        [("bool",[25,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,18]),
         ("words",[31,32,33,34])]),["DISK_THM"]),
       [read"%95%8%95%19%137%618$1@$0@@%578%507$1@%487$0@@@%507$0@%487$1@@@@|@|@"])
  fun op WORD_NAND_NOT_AND x = x
    val op WORD_NAND_NOT_AND =
    DT(((("words",222),
        [("bool",[25,36,53,56,58,63,96,105,124]),("fcp",[13,15]),
         ("words",[31,32,35])]),["DISK_THM"]),
       [read"%95%8%95%19%137%574$1@$0@@%487%507$1@$0@@@|@|@"])
  fun op WORD_NOR_NOT_OR x = x
    val op WORD_NOR_NOT_OR =
    DT(((("words",223),
        [("bool",[25,36,53,56,58,63,96,105,124]),("fcp",[13,15]),
         ("words",[31,33,36])]),["DISK_THM"]),
       [read"%95%8%95%19%137%576$1@$0@@%487%578$1@$0@@@|@|@"])
  fun op WORD_XNOR_NOT_XOR x = x
    val op WORD_XNOR_NOT_XOR =
    DT(((("words",224),
        [("bool",[25,36,53,54,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[31,34,37])]),["DISK_THM"]),
       [read"%95%8%95%19%137%616$1@$0@@%487%618$1@$0@@@|@|@"])
  fun op WORD_ADD_OR x = x
    val op WORD_ADD_OR =
    DT(((("words",225),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,79,93,173,180,273,289]),
         ("bit",[4,12,94]),
         ("bool",
         [14,25,26,27,30,36,48,51,52,53,54,55,56,58,63,64,96,99,101,104,
          105,124]),("fcp",[13,15]),("num",[9]),("numeral",[3,5,6,8]),
         ("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sum_num",[12,19]),
         ("words",[4,5,32,33,65,145,185])]),["DISK_THM"]),
       [read"%95%8%95%19%163%137%507$1@$0@@%412%132@@@%137%505$1@$0@@%578$1@$0@@@|@|@"])
  fun op WORD_ADD_XOR x = x
    val op WORD_ADD_XOR =
    DT(((("words",226),
        [("bool",[25,26,27,52,54,56,58,63,96,105,124]),("fcp",[13,15]),
         ("words",[32,33,34,185,225])]),["DISK_THM"]),
       [read"%95%8%95%19%163%137%507$1@$0@@%412%132@@@%137%505$1@$0@@%618$1@$0@@@|@|@"])
  fun op WORD_AND_EXP_SUB1 x = x
    val op WORD_AND_EXP_SUB1 =
    DT(((("words",227),
        [("arithmetic",
         [22,24,25,28,41,46,59,71,88,93,173,180,212,295,304]),
         ("bit",[7,41,43,48,51,113]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,96,101,104,105,124,129,147]),
         ("fcp",[13,15]),("numeral",[3,6,8,33]),("prim_rec",[4,6]),
         ("words",[5,32])]),["DISK_THM"]),
       [read"%113%51%113%57%137%507%412$0@@%412%130%192%299%171%343@@@$1@@%299%170%343@@@@@@%412%293$0@%192%299%171%343@@@$1@@@@|@|@"])
  fun op w2w x = x
    val op w2w =
    DT(((("words",228),
        [("arithmetic",[22,24,25,41,46,59,71,93,172,173,180,295,304]),
         ("bit",[7,41,43,51]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,96,101,104,105,124,129]),
         ("fcp",[15]),("numeral",[3,6,8]),("prim_rec",[4]),
         ("words",[0,5,6,115,140,145])]),["DISK_THM"]),
       [read"%95%81%113%40%163%134$0@%354%445@@@%136%406%477$1@@$0@@%131%134$0@%353%444@@@%405$1@$0@@@@|@|@"])
  fun op sw2sw x = x
    val op sw2sw =
    DT(((("words",229),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,180,217]),
         ("bit",[128]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,92,96,101,104,105,124,
          129]),("fcp",[15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,5,7,113,140,145,164])]),["DISK_THM"]),
       [read"%95%81%113%40%163%134$0@%354%445@@@%136%406%440$1@@$0@@%179%344%134$0@%353%444@@@%134%354%445@@%353%444@@@@%405$1@$0@@%568$1@@@@|@|@"])
  fun op w2w_id x = x
    val op w2w_id =
    DT(((("words",230),
        [("bool",[25,36,51,53,56,58,63,105,124]),("fcp",[13]),
         ("words",[228])]),["DISK_THM"]), [read"%95%81%137%476$0@@$0@|@"])
  fun op sw2sw_id x = x
    val op sw2sw_id =
    DT(((("words",231),
        [("bool",[25,26,27,36,52,53,54,56,58,63,105,124,129,147]),
         ("fcp",[13]),("prim_rec",[4]),("words",[47,229])]),["DISK_THM"]),
       [read"%95%81%137%439$0@@$0@|@"])
  fun op w2w_w2w x = x
    val op w2w_w2w =
    DT(((("words",232),
        [("arithmetic",
         [22,24,25,41,46,59,71,93,147,172,173,176,177,180,197,269,306]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,93,94,96,101,104,
          105,124]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[49,113,228])]),["DISK_THM"]),
       [read"%95%81%139%483%477$0@@@%478%514%130%354%445@@%299%170%343@@@@%132@$0@@@|@"])
  fun op sw2sw_sw2sw x = x
    val op sw2sw_sw2sw =
    DT(((("words",233),
        [("arithmetic",[24,25,26,27,41,46,59,71,93,173,177,180,200]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,99,101,104,105,
          107,124,129,147]),("fcp",[13]),("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",[47,113,228,229])]),["DISK_THM"]),
       [read"%95%81%139%443%440$0@@@%182%131%134%354%445@@%353%444@@@%134%354%445@@%355%446@@@@%443%477$0@@@%441$0@@@|@"])
  fun op sw2sw_w2w x = x
    val op sw2sw_w2w =
    DT(((("words",234),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180,200]),
         ("bool",
         [5,25,26,27,30,36,51,52,53,54,56,58,63,64,96,101,104,105,124,
          129]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("words",[33,90,113,185,187,192,228,229])]),["DISK_THM"]),
       [read"%95%81%138%440$0@@%579%181%568$0@@%556%491%413%299%170%343@@@@@%353%444@@@%413%132@@@%477$0@@@|@"])
  fun op word_bit x = x
    val op word_bit =
    DT(((("words",235),
        [("arithmetic",[24,25,41,46,71,93,147,173,176,177,180,197]),
         ("bool",[25,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[52])]),["DISK_THM"]),
       [read"%95%81%113%22%163%134$0@%353%444@@@%136%405$1@$0@@%513$0@$1@@@|@|@"])
  fun op word_slice_n2w x = x
    val op word_slice_n2w =
    DT(((("words",236),
        [("arithmetic",[24,25,41,46,71,93,147,173,176,177,180,197,306]),
         ("bit",[82]),
         ("bool",[25,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[5,48])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%137%599$2@$1@%412$0@@@%412%303%292$2@%130%353%444@@%299%170%343@@@@@$1@$0@@@|@|@|@"])
  fun op word_bits_n2w x = x
    val op word_bits_n2w =
    DT(((("words",237),
        [("arithmetic",
         [24,25,26,27,41,46,59,60,71,93,172,173,180,200,269,304,306]),
         ("bit",[102,106]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[5,49])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%137%514$2@$1@%412$0@@@%412%172%292$2@%130%353%444@@%299%170%343@@@@@$1@$0@@@|@|@|@"])
  fun op word_bit_n2w x = x
    val op word_bit_n2w =
    DT(((("words",238),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,180,269]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,63,96,101,104,105]),
         ("fcp",[15]),("numeral",[3,8]),
         ("words",[5,52,113])]),["DISK_THM"]),
       [read"%113%22%113%57%136%513$1@%412$0@@@%131%135$1@%130%353%444@@%299%170%343@@@@@%169$1@$0@@@|@|@"])
  fun op word_signed_bits_n2w x = x
    val op word_signed_bits_n2w =
    DT(((("words",239),
        [("arithmetic",
         [0,17,18,22,24,25,26,27,41,46,59,62,63,64,65,71,74,75,76,93,95,
          101,117,147,172,173,176,177,180,183,197,198,199,200,205,217,269,
          295,304,306,310]),("bit",[14,41,43,48,51,102,128]),
         ("bool",
         [2,15,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,73,75,93,96,
          101,104,105,108,109,124,125,129,147]),("combin",[19]),
         ("fcp",[13,15]),("numeral",[0,3,5,7,8,33]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[5,50])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%137%598$2@$1@%412$0@@@%412%302%130%292%304$2@@%353%444@@@$1@@%353%444@@%172%292$2@%130%353%444@@%299%170%343@@@@@$1@$0@@@@|@|@|@"])
  fun op word_sign_extend_bits x = x
    val op word_sign_extend_bits =
    DT(((("words",240),
        [("arithmetic",
         [22,24,25,26,27,30,41,46,59,71,93,173,177,180,295,304]),
         ("bit",[51]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          108,109,129]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[60,116,140,144,145,237,239])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%137%598$2@$1@$0@@%597%130%292%304$2@@%353%444@@@$1@@%514$2@$1@$0@@@|@|@|@"])
  fun op word_index_n2w x = x
    val op word_index_n2w =
    DT(((("words",241),
        [("arithmetic",[24,25,41,46,71,93,147,173,176,177,180,197]),
         ("bool",[25,26,27,30,36,51,52,54,56,58,63,64,96,101,104,105,129]),
         ("combin",[40]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[235,238])]),["DISK_THM"]),
       [read"%113%57%113%40%136%405%412$1@@$0@@%179%134$0@%353%444@@@%169$0@$1@@%194%405@%41@%412$1@@$0@@@|@|@"])
  fun op word_index x = x
    val op word_index =
    DT(((("words",242),
        [("bool",[27,54,58,63,64,105,124,129]),
         ("words",[241])]),["DISK_THM"]),
       [read"%113%57%113%40%163%134$0@%353%444@@@%136%405%412$1@@$0@@%169$0@$1@@@|@|@"])
  fun op word_bits_w2w x = x
    val op word_bits_w2w =
    DT(((("words",243),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,65,71,88,93,173,177,180,295,297,299,
          304]),("bit",[43,51]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          108,109,129,147,170]),("marker",[8]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,6,115,140,144,145,237])]),["DISK_THM"]),
       [read"%95%81%113%37%113%47%138%515$1@$0@%477$2@@@%477%514%292$1@%130%354%445@@%299%170%343@@@@@$0@$2@@@|@|@|@"])
  fun op word_reverse_n2w x = x
    val op word_reverse_n2w =
    DT(((("words",244),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,177,180,195,200,269]),
         ("bit",[121]),
         ("bool",
         [25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,124]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[5,53])]),["DISK_THM"]),
       [read"%113%57%137%585%412$0@@@%412%175%353%444@@$0@@@|@"])
  fun op word_modify_n2w x = x
    val op word_modify_n2w =
    DT(((("words",245),
        [("bit",[127]),("bool",[25,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[5,54])]),["DISK_THM"]),
       [read"%106%35%113%57%137%567$1@%412$0@@@%412%174%353%444@@$1@$0@@@|@|@"])
  fun op fcp_n2w x = x
    val op fcp_n2w =
    DT(((("words",246),
        [("bool",[25,36,53,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[54])]),["DISK_THM"]),
       [read"%104%33%137%195$0@@%567%40%18$2$1@||@%412%132@@@|@"])
  fun op w2n_w2w x = x
    val op w2n_w2w =
    DT(((("words",247),
        [("arithmetic",
         [22,24,25,27,38,41,46,59,65,71,93,172,173,176,177,180,295,304]),
         ("bit",[51]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,56,58,63,64,96,101,104,105,129,147]),
         ("numeral",[3,5,8]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[6,115,116,140,145,237])]),["DISK_THM"]),
       [read"%95%81%158%474%477$0@@@%186%135%353%444@@%354%445@@@%473$0@@%473%514%130%354%445@@%299%170%343@@@@%132@$0@@@@|@"])
  fun op w2n_w2w_le x = x
    val op w2n_w2w_le =
    DT(((("words",248),
        [("arithmetic",
         [17,22,24,25,27,41,46,59,71,93,95,172,173,176,177,180,199,200,217,
          237,269,295]),("bit",[43,51]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,58,63,64,93,96,101,104,105,129]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,110,113,116,140,145,237,247])]),["DISK_THM"]),
       [read"%95%81%135%474%477$0@@@%473$0@@|@"])
  fun op w2w_lt x = x
    val op w2w_lt =
    DT(((("words",249),
        [("arithmetic",[154]),("bool",[25,53,54,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",[150,248])]),["DISK_THM"]),
       [read"%95%81%134%474%477$0@@@%381%444@@|@"])
  fun op w2w_n2w x = x
    val op w2w_n2w =
    DT(((("words",250),
        [("arithmetic",
         [22,24,25,41,46,59,71,93,172,173,180,199,200,269,295]),
         ("bit",[51]),
         ("bool",
         [25,26,27,30,36,43,52,54,56,58,63,64,93,96,101,104,105,107,129,
          147]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[6,116,140,144])]),["DISK_THM"]),
       [read"%113%57%138%477%412$0@@@%181%135%354%445@@%353%444@@@%413$0@@%413%172%130%353%444@@%299%170%343@@@@%132@$0@@@@|@"])
  fun op w2w_0 x = x
    val op w2w_0 =
    DT(((("words",251),
        [("bit",[42]),("bool",[25,56,58,65,105,129]),
         ("words",[144,250])]),["DISK_THM"]),
       [read"%137%482%413%132@@@%412%132@@"])
  fun op w2n_11_lift x = x
    val op w2n_11_lift =
    DT(((("words",252),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180,217]),
         ("bool",
         [25,36,43,52,53,54,56,58,63,65,96,101,104,105,107,124,129]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[117,129,140,144,145,250])]),["DISK_THM"]),
       [read"%95%8%96%20%163%131%135%353%444@@%355%446@@@%135%354%445@@%355%446@@@@%136%158%473$1@@%474$0@@@%139%478$1@@%483$0@@@@|@|@"])
  fun op word_extract_n2w x = x
    val op word_extract_n2w =
    DT(((("words",253),
        [("arithmetic",[22,25]),("bit",[51]),("bool",[58,60,105,129]),
         ("combin",[8]),("words",[51,237,250])]),["DISK_THM"]),
       [read"%138%521%37@%47@%412%57@@@%181%135%354%445@@%353%444@@@%413%172%292%37@%130%353%444@@%299%170%343@@@@@%47@%57@@@%413%172%292%292%37@%130%353%444@@%299%170%343@@@@@%115%130%353%444@@%299%170%343@@@@%47@@@%47@%57@@@@"])
  fun op n2w_BITS x = x
    val op n2w_BITS =
    DT(((("words",254),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,176,177,180,269,295]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          108,109,124]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113,237])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%163%134$2@%353%444@@@%137%412%172$2@$1@$0@@@%514$2@$1@%412$0@@@@|@|@|@"])
  fun op word_extract_w2w x = x
    val op word_extract_w2w =
    DT(((("words",255),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,147,172,173,176,177,180,197,269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,51,228])]),["DISK_THM"]),
       [read"%95%81%113%37%113%47%163%135%353%444@@%354%445@@@%139%527$1@$0@%477$2@@@%522$1@$0@$2@@@|@|@|@"])
  fun op WORD_w2w_EXTRACT x = x
    val op WORD_w2w_EXTRACT =
    DT(((("words",256),
        [("arithmetic",[22,24,25,41,46,71,93,147,173,176,177,180,197,306]),
         ("bool",[25,26,27,30,36,51,52,54,56,58,63,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,51,228])]),["DISK_THM"]),
       [read"%95%81%138%477$0@@%521%130%353%444@@%299%170%343@@@@%132@$0@@|@"])
  fun op WORD_EQ x = x
    val op WORD_EQ =
    DT(((("words",257),
        [("arithmetic",[24,25,41,46,71,93,147,173,176,177,180,197]),
         ("bool",[25,36,51,52,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[5,52,145])]),["DISK_THM"]),
       [read"%95%75%95%81%136%113%87%163%134$0@%353%444@@@%136%513$0@$2@@%513$0@$1@@@|@@%137$1@$0@@|@|@"])
  fun op BIT_UPDATE x = x
    val op BIT_UPDATE =
    DT(((("words",258),
        [("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,60,63,71,93,94,96,105,108,
          109,111,124]),("fcp",[13,15,64]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),("words",[54])]),["DISK_THM"]),
       [read"%113%57%94%84%146%133$1@$0@@%567%40%18%179%158$1@$3@@$2@$0@||@@|@|@"])
  fun op WORD_MODIFY_BIT x = x
    val op WORD_MODIFY_BIT =
    DT(((("words",259),
        [("bool",[25,53,56,58,63,105,124]),("fcp",[15]),
         ("words",[54])]),["DISK_THM"]),
       [read"%106%35%95%81%113%40%163%134$0@%353%444@@@%136%405%567$2@$1@@$0@@$2$0@%405$1@$0@@@@|@|@|@"])
  fun op WORD_BIT_BITS x = x
    val op WORD_BIT_BITS =
    DT(((("words",260),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,65,71,93,95,147,155,172,173,176,177,180,
          197,199,217,275,277,295]),("bit",[7,21,34,41,43,51]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,83,93,96,100,101,104,
          105,107,129]),("fcp",[5]),("numeral",[3,5,6,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[0,115,144,145,237,238])]),["DISK_THM"]),
       [read"%113%22%95%81%136%513$1@$0@@%137%514$1@$1@$0@@%412%299%170%343@@@@@|@|@"])
  fun op WORD_BITS_COMP_THM x = x
    val op WORD_BITS_COMP_THM =
    DT(((("words",261),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,173,177,180,295,297,299]),
         ("bit",[51]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,64,93,96,101,104,105,108,109,
          129]),("marker",[8]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[145,237])]),["DISK_THM"]),
       [read"%113%38%113%48%113%39%113%49%95%81%137%514$2@$1@%514$4@$3@$0@@@%514%292$4@%115$2@$3@@@%115$1@$3@@$0@@|@|@|@|@|@"])
  fun op WORD_BITS_EXTRACT x = x
    val op WORD_BITS_EXTRACT =
    DT(((("words",262),
        [("arithmetic",[306]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("combin",[8]),("fcp",[13,15]),
         ("words",[49,51,228])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%137%514$2@$1@$0@@%520$2@$1@$0@@|@|@|@"])
  fun op WORD_BITS_LSR x = x
    val op WORD_BITS_LSR =
    DT(((("words",263),
        [("arithmetic",[24,25,26,27,41,46,59,71,93,172,173,180,269,306]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[49,91])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%113%57%137%559%514$3@$2@$1@@$0@@%514$3@%115$2@$0@@$1@@|@|@|@|@"])
  fun op WORD_BITS_ZERO x = x
    val op WORD_BITS_ZERO =
    DT(((("words",264),
        [("arithmetic",[26,41,46,59,71,93,173,180,200,304]),("bit",[41]),
         ("bool",[25,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("words",[145,237])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%163%134$2@$1@@%137%514$2@$1@$0@@%412%132@@@|@|@|@"])
  fun op WORD_BITS_ZERO2 x = x
    val op WORD_BITS_ZERO2 =
    DT(((("words",265),
        [("bit",[42]),("bool",[25,36,56]),("words",[237])]),["DISK_THM"]),
       [read"%113%37%113%47%137%514$1@$0@%412%132@@@%412%132@@|@|@"])
  fun op WORD_BITS_ZERO3 x = x
    val op WORD_BITS_ZERO3 =
    DT(((("words",266),
        [("arithmetic",[24,25,41,46,71,93,172,173,180,269,306]),
         ("bool",[25,26,27,36,43,51,52,53,54,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[49,185])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%163%135%353%444@@$1@@%137%514$2@$1@$0@@%412%132@@@|@|@|@"])
  fun op WORD_BITS_LT x = x
    val op WORD_BITS_LT =
    DT(((("words",267),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,65,71,93,155,172,173,176,180,198,269,
          295]),("bit",[30,34,43,51]),
         ("bool",
         [25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,93,94,96,101,104,
          105,107,108,109,111,129]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[0,115,140,145,237])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%134%473%514$2@$1@$0@@@%192%299%171%343@@@%130%304$2@@$1@@@|@|@|@"])
  fun op WORD_EXTRACT_LT x = x
    val op WORD_EXTRACT_LT =
    DT(((("words",268),
        [("arithmetic",[154]),("bool",[25,53,54,63]),("combin",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",[51,248,267])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%134%474%521$2@$1@$0@@@%192%299%171%343@@@%130%304$2@@$1@@@|@|@|@"])
  fun op WORD_EXTRACT_ZERO x = x
    val op WORD_EXTRACT_ZERO =
    DT(((("words",269),
        [("bool",[25,53,56,58,63,105,124]),("combin",[8]),
         ("words",[51,144,251,264])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%163%134$2@$1@@%138%521$2@$1@$0@@%413%132@@@|@|@|@"])
  fun op WORD_EXTRACT_ZERO2 x = x
    val op WORD_EXTRACT_ZERO2 =
    DT(((("words",270),
        [("bool",[25,56]),("combin",[8]),
         ("words",[51,144,251,265])]),["DISK_THM"]),
       [read"%113%37%113%47%137%525$1@$0@%413%132@@@%412%132@@|@|@"])
  fun op WORD_EXTRACT_ZERO3 x = x
    val op WORD_EXTRACT_ZERO3 =
    DT(((("words",271),
        [("bool",[25,53,56,58,63,105,124]),("combin",[8]),
         ("words",[51,144,251,266])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%163%135%353%444@@$1@@%138%521$2@$1@$0@@%413%132@@@|@|@|@"])
  fun op WORD_SLICE_THM x = x
    val op WORD_SLICE_THM =
    DT(((("words",272),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,147,172,173,176,177,180,197,200,269,
          306]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[48,49,90])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%137%599$2@$1@$0@@%555%514$2@$1@$0@@$1@@|@|@|@"])
  fun op WORD_SLICE_ZERO x = x
    val op WORD_SLICE_ZERO =
    DT(((("words",273),
        [("arithmetic",[26,41,46,59,71,93,173,180,200,304]),("bit",[66]),
         ("bool",[25,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),("words",[145,236])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%163%134$2@$1@@%137%599$2@$1@$0@@%412%132@@@|@|@|@"])
  fun op WORD_SLICE_ZERO2 x = x
    val op WORD_SLICE_ZERO2 =
    DT(((("words",274),[("bit",[67]),("words",[236])]),["DISK_THM"]),
       [read"%113%47%113%37%137%599$0@$1@%412%132@@@%412%132@@|@|@"])
  fun op WORD_SLICE_BITS_THM x = x
    val op WORD_SLICE_BITS_THM =
    DT(((("words",275),
        [("arithmetic",[22,24,25,41,46,71,93,147,173,176,177,180,197,306]),
         ("bool",[25,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[48,49])]),["DISK_THM"]),
       [read"%113%37%95%81%137%599$1@%132@$0@@%514$1@%132@$0@@|@|@"])
  fun op WORD_BITS_SLICE_THM x = x
    val op WORD_BITS_SLICE_THM =
    DT(((("words",276),
        [("bit",[60]),("bool",[25,56]),
         ("words",[145,236,237])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%137%514$2@$1@%599$2@$1@$0@@@%514$2@$1@$0@@|@|@|@"])
  fun op WORD_SLICE_COMP_THM x = x
    val op WORD_SLICE_COMP_THM =
    DT(((("words",277),
        [("arithmetic",[24,25,27,41,46,71,93,147,173,176,177,180,197,306]),
         ("bool",[25,26,27,36,51,52,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[33,48])]),["DISK_THM"]),
       [read"%113%37%113%52%113%51%113%47%95%81%163%131%135$1@$2@@%131%158$3@%115$2@%299%170%343@@@@@%134$2@$4@@@@%137%578%599$4@$3@$0@@%599$2@$1@$0@@@%599$4@$1@$0@@@|@|@|@|@|@"])
  fun op WORD_EXTRACT_COMP_THM x = x
    val op WORD_EXTRACT_COMP_THM =
    DT(((("words",278),
        [("arithmetic",
         [24,25,26,27,41,46,59,60,71,93,147,155,172,173,176,177,180,197,
          200,269,306]),
         ("bool",
         [25,26,27,30,36,43,48,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124]),("combin",[8]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",[49,51,113,228])]),["DISK_THM"]),
       [read"%97%83%113%37%113%47%113%51%113%57%137%525$3@$2@%529$1@$0@$4@@@%528%292$1@%292%115$3@$0@@%292%130%355%446@@%299%170%343@@@@%130%115%354%445@@$0@@%299%170%343@@@@@@@%115$2@$0@@$4@@|@|@|@|@|@"])
  fun op WORD_EXTRACT_BITS_COMP x = x
    val op WORD_EXTRACT_BITS_COMP =
    DT(((("words",279),
        [("bool",[58,60]),("combin",[8]),
         ("words",[51,261])]),["DISK_THM"]),
       [read"%95%55%113%47%113%43%113%42%113%37%138%521$1@$2@%514$0@$3@$4@@@%521%292$0@%115$1@$3@@@%115$2@$3@@$4@@|@|@|@|@|@"])
  fun op WORD_ALL_BITS x = x
    val op WORD_ALL_BITS =
    DT(((("words",280),
        [("arithmetic",[24,25,41,46,71,93,173,180,198,217,295]),
         ("bool",[25,26,27,36,53,54,56,58,63,64,96,101,104,105,124,129]),
         ("numeral",[3,8]),("words",[116,144,145,237])]),["DISK_THM"]),
       [read"%95%81%113%37%163%135%130%353%444@@%299%170%343@@@@$0@@%137%514$0@%132@$1@@$1@@|@|@"])
  fun op EXTRACT_ALL_BITS x = x
    val op EXTRACT_ALL_BITS =
    DT(((("words",281),
        [("arithmetic",[198]),("bool",[25,53,56,58,63,105,124]),
         ("combin",[8]),("words",[51,280])]),["DISK_THM"]),
       [read"%113%37%95%81%163%135%130%353%444@@%299%170%343@@@@$1@@%138%521$1@%132@$0@@%477$0@@@|@|@"])
  fun op WORD_BITS_MIN_HIGH x = x
    val op WORD_BITS_MIN_HIGH =
    DT(((("words",282),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,197,200,269,
          306]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[49])]),["DISK_THM"]),
       [read"%95%81%113%37%113%47%163%134%130%353%444@@%299%170%343@@@@$1@@%137%514$1@$0@$2@@%514%130%353%444@@%299%170%343@@@@$0@$2@@@|@|@|@"])
  fun op WORD_EXTRACT_MIN_HIGH x = x
    val op WORD_EXTRACT_MIN_HIGH =
    DT(((("words",283),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,197,269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,51,228])]),["DISK_THM"]),
       [read"%131%113%37%113%47%95%81%163%131%135%353%444@@%115%354%445@@$1@@@%135%353%444@@$2@@@%138%521$2@$1@$0@@%521%130%353%444@@%299%170%343@@@@$1@$0@@@|@|@|@@%113%37%113%47%95%81%163%131%134%115%354%445@@$1@@%353%444@@@%135%115%354%445@@$1@@$2@@@%138%521$2@$1@$0@@%521%130%115%354%445@@$1@@%299%170%343@@@@$1@$0@@@|@|@|@@"])
  fun op CONCAT_EXTRACT x = x
    val op CONCAT_EXTRACT =
    DT(((("words",284),
        [("arithmetic",
         [18,22,24,25,26,27,29,41,46,59,60,62,69,71,74,75,76,93,147,172,
          173,176,177,180,183,198,200,206,269,306]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,55,56,58,63,64,93,96,101,104,
          105,107,124,129,147]),("combin",[8,19]),("fcp",[13,15,19]),
         ("numeral",[0,3,5,8,17,18]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[33,49,51,90,101,102,113,228])]),["DISK_THM"]),
       [read"%113%37%113%51%113%47%95%81%163%131%158%130$3@$2@@%354%445@@@%131%158%130%115$2@%299%170%343@@@@$1@@%355%446@@@%131%158%130%115$3@%299%170%343@@@@$1@@%356%447@@@%623%158%380%471@@%299%170%343@@@@@@@@%140%518%521$3@%115$2@%299%170%343@@@@$0@@%522$2@$1@$0@@@%523$3@$1@$0@@@|@|@|@|@"])
  fun op EXTRACT_CONCAT x = x
    val op EXTRACT_CONCAT =
    DT(((("words",285),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,69,71,74,88,93,128,147,173,176,177,180,
          197,200,306]),
         ("bool",
         [25,26,27,32,36,51,52,53,54,56,58,63,93,96,101,104,105,107,124,
          129,147]),("combin",[8,19]),("fcp",[13,15,19]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[33,49,51,90,101,102,113,228])]),["DISK_THM"]),
       [read"%95%75%96%82%163%131%198%315@@%131%199%316@@%135%115%353%444@@%354%445@@@%355%446@@@@@%131%138%529%130%354%445@@%299%170%343@@@@%132@%517$1@$0@@@$0@@%137%528%130%115%353%444@@%354%445@@@%299%170%343@@@@%354%445@@%517$1@$0@@@$1@@@|@|@"])
  fun op EXTRACT_JOIN x = x
    val op EXTRACT_JOIN =
    DT(((("words",286),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,60,62,71,93,95,130,147,172,173,176,177,
          180,197,198,199,200,269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[33,49,51,90,113,228])]),["DISK_THM"]),
       [read"%113%37%113%51%113%52%113%47%113%67%95%81%163%131%135$2@$4@@%131%135$3@$5@@%131%158$3@%115$4@%299%170%343@@@@@%158$1@%130$3@$2@@@@@@%138%579%556%521$5@$3@$0@@$1@@%521$4@$2@$0@@@%521%292$5@%292%130%115%354%445@@$2@@%299%170%343@@@@%130%353%444@@%299%170%343@@@@@@$2@$0@@@|@|@|@|@|@|@"])
  fun op EXTRACT_JOIN_ADD x = x
    val op EXTRACT_JOIN_ADD =
    DT(((("words",287),
        [("arithmetic",
         [24,25,26,27,41,46,59,62,71,91,93,172,173,176,177,180,198,200,269,
          306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[32,49,51,90,113,185,225,228,286])]),["DISK_THM"]),
       [read"%113%37%113%51%113%52%113%47%113%67%95%81%163%131%135$2@$4@@%131%135$3@$5@@%131%158$3@%115$4@%299%170%343@@@@@%158$1@%130$3@$2@@@@@@%138%506%556%521$5@$3@$0@@$1@@%521$4@$2@$0@@@%521%292$5@%292%130%115%354%445@@$2@@%299%170%343@@@@%130%353%444@@%299%170%343@@@@@@$2@$0@@@|@|@|@|@|@|@"])
  fun op EXTEND_EXTRACT x = x
    val op EXTEND_EXTRACT =
    DT(((("words",288),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,180,199,269,306]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,58,63,96,101,104,105,124]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,8]),
         ("words",[49,51,228])]),["DISK_THM"]),
       [read"%113%37%113%47%95%81%163%158%355%446@@%130%115$2@%299%170%343@@@@$1@@@%138%521$2@$1@$0@@%485%522$2@$1@$0@@@@|@|@|@"])
  fun op WORD_SLICE_OVER_BITWISE x = x
    val op WORD_SLICE_OVER_BITWISE =
    DT(((("words",289),
        [("arithmetic",[24,25,41,46,71,93,147,173,176,177,180,197,306]),
         ("bool",
         [25,26,27,30,36,47,48,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[32,33,34,48])]),["DISK_THM"]),
       [read"%131%113%37%113%47%95%75%95%81%137%507%599$3@$2@$1@@%599$3@$2@$0@@@%599$3@$2@%507$1@$0@@@|@|@|@|@@%131%113%37%113%47%95%75%95%81%137%578%599$3@$2@$1@@%599$3@$2@$0@@@%599$3@$2@%578$1@$0@@@|@|@|@|@@%113%37%113%47%95%75%95%81%137%618%599$3@$2@$1@@%599$3@$2@$0@@@%599$3@$2@%618$1@$0@@@|@|@|@|@@@"])
  fun op WORD_BITS_OVER_BITWISE x = x
    val op WORD_BITS_OVER_BITWISE =
    DT(((("words",290),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,180,269,306]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,15]),
         ("words",[32,33,34,49])]),["DISK_THM"]),
       [read"%131%113%37%113%47%95%75%95%81%137%507%514$3@$2@$1@@%514$3@$2@$0@@@%514$3@$2@%507$1@$0@@@|@|@|@|@@%131%113%37%113%47%95%75%95%81%137%578%514$3@$2@$1@@%514$3@$2@$0@@@%514$3@$2@%578$1@$0@@@|@|@|@|@@%113%37%113%47%95%75%95%81%137%618%514$3@$2@$1@@%514$3@$2@$0@@@%514$3@$2@%618$1@$0@@@|@|@|@|@@@"])
  fun op WORD_w2w_OVER_BITWISE x = x
    val op WORD_w2w_OVER_BITWISE =
    DT(((("words",291),
        [("bool",[25,26,27,30,51,52,54,56,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15]),
         ("words",[32,33,34,228])]),["DISK_THM"]),
       [read"%131%95%75%95%81%138%508%477$1@@%477$0@@@%477%507$1@$0@@@|@|@@%131%95%75%95%81%138%579%477$1@@%477$0@@@%477%578$1@$0@@@|@|@@%95%75%95%81%138%619%477$1@@%477$0@@@%477%618$1@$0@@@|@|@@@"])
  fun op WORD_EXTRACT_OVER_BITWISE x = x
    val op WORD_EXTRACT_OVER_BITWISE =
    DT(((("words",292),
        [("bool",[25,36,51,56,58]),("combin",[8]),
         ("words",[51,290,291])]),["DISK_THM"]),
       [read"%131%113%37%113%47%95%75%95%81%138%508%521$3@$2@$1@@%521$3@$2@$0@@@%521$3@$2@%507$1@$0@@@|@|@|@|@@%131%113%37%113%47%95%75%95%81%139%580%522$3@$2@$1@@%522$3@$2@$0@@@%522$3@$2@%578$1@$0@@@|@|@|@|@@%113%37%113%47%95%75%95%81%140%621%523$3@$2@$1@@%523$3@$2@$0@@@%523$3@$2@%618$1@$0@@@|@|@|@|@@@"])
  fun op WORD_w2w_OVER_ADD x = x
    val op WORD_w2w_OVER_ADD =
    DT(((("words",293),
        [("arithmetic",
         [17,22,24,25,27,41,46,59,71,93,95,172,173,176,177,180,199,200,269,
          295,304,310]),("bit",[45,51]),
         ("bool",
         [25,26,27,36,43,51,52,54,56,58,63,65,93,96,101,104,105,107,129,
          147]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,144,145,156,253,256,262])]),["DISK_THM"]),
       [read"%95%8%95%19%138%477%505$1@$0@@@%515%130%353%444@@%299%170%343@@@@%132@%506%477$1@@%477$0@@@@|@|@"])
  fun op WORD_w2w_OVER_MUL x = x
    val op WORD_w2w_OVER_MUL =
    DT(((("words",294),
        [("arithmetic",
         [17,22,24,25,27,41,46,59,71,93,95,172,173,176,177,180,199,200,269,
          295,304,310]),("bit",[45,51]),
         ("bool",
         [25,26,27,36,43,51,52,54,56,58,63,65,93,96,101,104,105,107,129,
          147]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,144,145,157,253,256,262])]),["DISK_THM"]),
       [read"%95%8%95%19%138%477%569$1@$0@@@%515%130%353%444@@%299%170%343@@@@%132@%570%477$1@@%477$0@@@@|@|@"])
  fun op WORD_EXTRACT_OVER_ADD x = x
    val op WORD_EXTRACT_OVER_ADD =
    DT(((("words",295),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,59,71,93,172,173,177,180,198,199,200,269,
          295,304]),("bit",[45,51,71]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,93,96,101,104,105,129,
          147]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,144,145,156,253])]),["DISK_THM"]),
       [read"%95%8%95%19%113%37%163%131%135%130%354%445@@%299%170%343@@@@$0@@%135%354%445@@%353%444@@@@%138%521$0@%132@%505$2@$1@@@%506%521$0@%132@$2@@%521$0@%132@$1@@@@|@|@|@"])
  fun op WORD_EXTRACT_OVER_MUL x = x
    val op WORD_EXTRACT_OVER_MUL =
    DT(((("words",296),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,59,71,93,172,173,177,180,198,199,200,269,
          295,304]),("bit",[45,51,72]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,93,96,101,104,105,129,
          147]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,144,145,157,253])]),["DISK_THM"]),
       [read"%95%8%95%19%113%37%163%131%135%130%354%445@@%299%170%343@@@@$0@@%135%354%445@@%353%444@@@@%138%521$0@%132@%569$2@$1@@@%570%521$0@%132@$2@@%521$0@%132@$1@@@@|@|@|@"])
  fun op WORD_EXTRACT_OVER_ADD2 x = x
    val op WORD_EXTRACT_OVER_ADD2 =
    DT(((("words",297),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,59,71,93,95,172,173,176,177,180,198,199,
          200,269,295,304,306]),("bit",[45,51,71]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,65,93,96,101,104,105,107,
          129,147]),("numeral",[0,3,5,8]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,144,145,156,253])]),["DISK_THM"]),
       [read"%95%8%95%19%113%37%163%134$0@%353%444@@@%138%526$0@%132@%506%521$0@%132@$2@@%521$0@%132@$1@@@@%521$0@%132@%505$2@$1@@@@|@|@|@"])
  fun op WORD_EXTRACT_OVER_MUL2 x = x
    val op WORD_EXTRACT_OVER_MUL2 =
    DT(((("words",298),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,59,71,93,95,172,173,176,177,180,198,199,
          200,269,295,304,306]),("bit",[45,51,72]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,65,93,96,101,104,105,107,
          129,147]),("numeral",[0,3,5,8]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,144,145,157,253])]),["DISK_THM"]),
       [read"%95%8%95%19%113%37%163%134$0@%353%444@@@%138%526$0@%132@%570%521$0@%132@$2@@%521$0@%132@$1@@@@%521$0@%132@%569$2@$1@@@@|@|@|@"])
  fun op WORD_EXTRACT_ID x = x
    val op WORD_EXTRACT_ID =
    DT(((("words",299),
        [("arithmetic",
         [17,22,24,25,27,41,46,71,93,95,172,173,177,180,269,295,304]),
         ("bit",[45,51]),
         ("bool",
         [25,26,27,30,36,43,52,53,54,56,58,63,64,93,96,101,104,105,124,129,
          147]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,140,144,145,253])]),["DISK_THM"]),
       [read"%95%81%113%37%163%134%473$1@@%192%299%171%343@@@%304$0@@@@%137%520$0@%132@$1@@$1@@|@|@"])
  fun op BIT_SET x = x
    val op BIT_SET =
    DT(((("words",300),
        [("arithmetic",
         [22,24,25,27,41,46,59,71,81,93,110,172,173,177,180,236]),
         ("bit",[48,88,107]),
         ("bool",
         [14,15,25,26,27,30,36,51,52,53,54,56,58,63,64,96,101,104,105,124,
          129]),("combin",[19]),("num",[7,9]),("numeral",[3,5,7,8]),
         ("pair",[7,9,16,49]),("pred_set",[10,80]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[55,56])]),["DISK_THM"]),
       [read"%113%40%113%57%136%169$1@$0@@%237$1@%176%132@$0@@@|@|@"])
  fun op WORD_LITERAL_AND x = x
    val op WORD_LITERAL_AND =
    DT(((("words",301),
        [("arithmetic",
         [24,25,27,41,46,59,60,71,93,147,173,176,177,180,197,304,305]),
         ("bit",[94,124,125]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,95,96,101,104,105,124,145]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[5,31,32,166,167,197,205,238,257])]),["DISK_THM"]),
       [read"%131%113%57%113%51%137%507%412$1@@%412$0@@@%412%173%304%292%290$1@@%290$0@@@@%131@$1@$0@@@|@|@@%131%113%57%113%51%137%507%412$1@@%487%412$0@@@@%412%173%304%290$1@@@%7%18%131$1@%623$0@@||@$1@$0@@@|@|@@%131%113%57%113%51%137%507%487%412$0@@@%412$1@@@%412%173%304%290$1@@@%7%18%131$1@%623$0@@||@$1@$0@@@|@|@@%113%57%113%51%137%507%487%412$1@@@%487%412$0@@@@%487%412%173%304%291%290$1@@%290$0@@@@%344@$1@$0@@@@|@|@@@@"])
  fun op WORD_LITERAL_OR x = x
    val op WORD_LITERAL_OR =
    DT(((("words",302),
        [("arithmetic",
         [24,25,27,41,46,59,60,71,93,147,173,176,177,180,197,304,305]),
         ("bit",[94,124,125]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,73,93,94,95,96,101,
          104,105,124,145]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",
         [5,31,32,166,167,196,197,205,206,238,257])]),["DISK_THM"]),
       [read"%131%113%57%113%51%137%578%412$1@@%412$0@@@%412%173%304%291%290$1@@%290$0@@@@%344@$1@$0@@@|@|@@%131%113%57%113%51%137%578%412$1@@%487%412$0@@@@%487%412%173%304%290$0@@@%7%18%131$1@%623$0@@||@$0@$1@@@@|@|@@%131%113%57%113%51%137%578%487%412$0@@@%412$1@@@%487%412%173%304%290$0@@@%7%18%131$1@%623$0@@||@$0@$1@@@@|@|@@%113%57%113%51%137%578%487%412$1@@@%487%412$0@@@@%487%412%173%304%292%290$1@@%290$0@@@@%131@$1@$0@@@@|@|@@@@"])
  fun op WORD_LITERAL_XOR x = x
    val op WORD_LITERAL_XOR =
    DT(((("words",303),
        [("arithmetic",
         [24,25,27,41,46,59,60,71,93,147,173,176,177,180,197,305]),
         ("bit",[94,124,125]),
         ("bool",[25,26,27,30,36,51,52,53,54,56,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[168,238,257])]),["DISK_THM"]),
       [read"%113%57%113%51%137%618%412$1@@%412$0@@@%412%173%304%291%290$1@@%290$0@@@@%84%89%623%136$1@$0@@||@$1@$0@@@|@|@"])
  fun op word_replicate_concat_word_list x = x
    val op word_replicate_concat_word_list =
    DT(((("words",304),
        [("arithmetic",
         [18,24,25,26,27,28,41,46,54,59,67,68,69,71,73,74,75,76,93,128,152,
          173,176,180,183,200,217,240]),
         ("bool",
         [2,14,15,25,26,27,30,36,51,52,53,54,56,58,63,93,96,101,104,105,
          107,124]),("combin",[12]),("fcp",[13,15]),
         ("list",[20,48,56,106,260,275]),("marker",[6]),("num",[9]),
         ("numeral",[3,5,8]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[33,90,103,104,113,185,228])]),["DISK_THM"]),
       [read"%113%57%95%81%138%584$1@$0@@%352%229%268$0@@$1@@@|@|@"])
  fun op bit_field_insert x = x
    val op bit_field_insert =
    DT(((("words",305),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,147,173,176,177,180,197,200,306]),
         ("bool",
         [25,26,27,30,32,36,51,52,54,56,58,63,64,96,101,104,105,124]),
         ("combin",[19]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[31,32,33,48,54,59,90,113,193,228])]),["DISK_THM"]),
       [read"%113%37%113%47%95%8%96%20%163%134$3@%115$2@%353%444@@@@%138%350$3@$2@$1@$0@@%279%53%579%508%556%477$2@@$3@@$0@@%508$1@%488$0@@@|@%600$3@$2@%491%413%299%170%343@@@@@@@@|@|@|@|@"])
  fun op word_join_index x = x
    val op word_join_index =
    DT(((("words",306),
        [("arithmetic",
         [24,25,26,27,41,46,59,69,71,74,93,173,176,177,180,200]),
         ("bool",
         [25,26,27,30,32,36,51,52,53,54,56,58,63,64,96,101,104,105,124,129,
          147]),("combin",[19]),("fcp",[15,19]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[33,90,101,113,228])]),["DISK_THM"]),
       [read"%113%40%95%8%96%20%163%131%198%315@@%131%199%316@@%134$2@%379%470@@@@@%136%407%542$1@$0@@$2@@%179%134$2@%354%445@@@%406$0@$2@@%405$1@%130$2@%354%445@@@@@@|@|@|@"])
  fun op foldl_reduce_and x = x
    val op foldl_reduce_and =
    DT(((("words",307),
        [("arithmetic",
         [22,24,25,27,41,46,62,71,93,95,172,173,176,177,180,195,198,269,
          306]),
         ("bool",
         [14,25,26,27,32,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,
          107,124]),("combin",[8,12,19]),("fcp",[13,15,62]),
         ("list",[23,29,43,68,282,285,286,293]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[32,38,40,49,51,113,228])]),["DISK_THM"]),
       [read"%95%81%142%425$0@@%283%45%224%509@%232$0@@%308$0@@|@%230%40%286%57%524$0@$0@$2@|@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@|@"])
  fun op foldl_reduce_or x = x
    val op foldl_reduce_or =
    DT(((("words",308),
        [("arithmetic",
         [22,24,25,27,41,46,62,71,93,95,172,173,176,177,180,195,198,269,
          306]),
         ("bool",
         [14,25,26,27,32,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,
          107,124]),("combin",[8,12,19]),("fcp",[13,15,62]),
         ("list",[23,29,43,68,282,285,286,293]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[33,38,41,49,51,113,228])]),["DISK_THM"]),
       [read"%95%81%142%428$0@@%283%45%224%581@%232$0@@%308$0@@|@%230%40%286%57%524$0@$0@$2@|@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@|@"])
  fun op foldl_reduce_xor x = x
    val op foldl_reduce_xor =
    DT(((("words",309),
        [("arithmetic",
         [22,24,25,27,41,46,62,71,93,95,172,173,176,177,180,195,198,269,
          306]),
         ("bool",
         [14,25,26,27,32,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,
          107,124]),("combin",[8,12,19]),("fcp",[13,15,62]),
         ("list",[23,29,43,68,282,285,286,293]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[34,38,42,49,51,113,228])]),["DISK_THM"]),
       [read"%95%81%142%430$0@@%283%45%224%622@%232$0@@%308$0@@|@%230%40%286%57%524$0@$0@$2@|@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@|@"])
  fun op foldl_reduce_nand x = x
    val op foldl_reduce_nand =
    DT(((("words",310),
        [("arithmetic",
         [22,24,25,27,41,46,62,71,93,95,172,173,176,177,180,195,198,269,
          306]),
         ("bool",
         [14,25,26,27,32,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,
          107,124]),("combin",[8,12,19]),("fcp",[13,15,62]),
         ("list",[23,29,43,68,282,285,286,293]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[35,38,43,49,51,113,228])]),["DISK_THM"]),
       [read"%95%81%142%426$0@@%283%45%224%575@%232$0@@%308$0@@|@%230%40%286%57%524$0@$0@$2@|@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@|@"])
  fun op foldl_reduce_nor x = x
    val op foldl_reduce_nor =
    DT(((("words",311),
        [("arithmetic",
         [22,24,25,27,41,46,62,71,93,95,172,173,176,177,180,195,198,269,
          306]),
         ("bool",
         [14,25,26,27,32,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,
          107,124]),("combin",[8,12,19]),("fcp",[13,15,62]),
         ("list",[23,29,43,68,282,285,286,293]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[36,38,44,49,51,113,228])]),["DISK_THM"]),
       [read"%95%81%142%427$0@@%283%45%224%577@%232$0@@%308$0@@|@%230%40%286%57%524$0@$0@$2@|@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@|@"])
  fun op foldl_reduce_xnor x = x
    val op foldl_reduce_xnor =
    DT(((("words",312),
        [("arithmetic",
         [22,24,25,27,41,46,62,71,93,95,172,173,176,177,180,195,198,269,
          306]),
         ("bool",
         [14,25,26,27,32,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,
          107,124]),("combin",[8,12,19]),("fcp",[13,15,62]),
         ("list",[23,29,43,68,282,285,286,293]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[37,38,45,49,51,113,228])]),["DISK_THM"]),
       [read"%95%81%142%429$0@@%283%45%224%617@%232$0@@%308$0@@|@%230%40%286%57%524$0@$0@$2@|@%130%130%353%444@@%299%170%343@@@@$0@@|@%353%444@@@@|@"])
  fun op LOG2_w2n_lt x = x
    val op LOG2_w2n_lt =
    DT(((("words",313),
        [("bit",[126]),("bool",[26,27,52,58,63,105,124]),
         ("words",[0,150,153])]),["DISK_THM"]),
       [read"%95%81%163%623%137$0@%412%132@@@@%134%290%473$0@@@%353%444@@@|@"])
  fun op LOG2_w2n x = x
    val op LOG2_w2n =
    DT(((("words",314),
        [("arithmetic",
         [17,24,25,26,27,41,46,59,62,71,93,147,172,173,177,180,195,200,217,
          219,269,273]),("bit",[18,87,99,130]),
         ("bool",
         [2,15,25,26,27,30,36,43,51,52,53,54,56,58,63,72,92,93,96,100,101,
          104,105,107,124]),("numeral",[3,5,6,8]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),("while",[9]),
         ("words",[0,110,113,116,140,144,145,242])]),["DISK_THM"]),
       [read"%95%81%163%623%137$0@%412%132@@@@%158%290%473$0@@@%130%130%353%444@@%299%170%343@@@@%269%40%405$1@%130%130%353%444@@%299%170%343@@@@$0@@|@@@@|@"])
  fun op LEAST_BIT_LT x = x
    val op LEAST_BIT_LT =
    DT(((("words",315),
        [("arithmetic",[24,25,41,46,59,71,93,173,177,180,217,219]),
         ("bit",[131]),
         ("bool",[2,15,25,26,36,52,53,54,58,63,96,100,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("while",[9]),("words",[0,110,144,145,242])]),["DISK_THM"]),
       [read"%95%81%163%623%137$0@%412%132@@@@%134%269%40%405$1@$0@|@@%353%444@@@|@"])
  fun op word_reduce_n2w x = x
    val op word_reduce_n2w =
    DT(((("words",316),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,59,65,71,93,130,172,173,176,177,180,195,
          198,200,210,269]),("bit",[88,102,107]),
         ("bool",
         [14,25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,124]),
         ("list",[20,22,48,55,56,104,106,275,286]),("num",[9]),
         ("numeral",[3,5,8]),("numposrep",[13]),("prim_rec",[1]),
         ("rich_list",[293]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[38,113,116,242])]),["DISK_THM"]),
       [read"%113%57%100%31%142%583$0@%412$1@@@%197%267%282%44%223$1@%231$0@@%307$0@@|@%178%353%444@@$1@%297@@@@@|@|@"])
  fun op NOT_UINTMAXw x = x
    val op NOT_UINTMAXw =
    DT(((("words",317),
        [("bool",[25,36,53,54,58,63,72,92,96,101,105,124]),("fcp",[13]),
         ("words",[187])]),["DISK_THM"]),
       [read"%95%81%163%623%137$0@%502@@@%166%40%131%134$0@%353%444@@@%623%405$1@$0@@@|@@|@"])
  fun op NOT_0w x = x
    val op NOT_0w =
    DT(((("words",318),
        [("bool",[25,26,27,36,53,54,58,63,72,92,96,101,105,124]),
         ("fcp",[13]),("words",[185])]),["DISK_THM"]),
       [read"%95%81%163%623%137$0@%412%132@@@@%166%40%131%134$0@%353%444@@@%405$1@$0@@|@@|@"])
  fun op reduce_and x = x
    val op reduce_and =
    DT(((("words",319),
        [("arithmetic",
         [17,24,25,26,27,28,41,46,59,62,65,71,93,172,173,177,180,195,200,
          269]),("bit",[48,88]),
         ("bool",
         [6,13,14,25,26,27,30,32,36,43,51,52,53,54,56,58,62,63,64,72,93,96,
          101,104,105,107,124,145]),("combin",[8,12,19]),
         ("fcp",[13,15,62]),
         ("list",[29,32,43,87,110,113,276,283,284,286,288,289,290]),
         ("numeral",[3,5,8,21]),("prim_rec",[7]),("rich_list",[12,262]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[5,38,40,113,187,317])]),["DISK_THM"]),
       [read"%95%81%142%425$0@@%184%137$0@%502@@%416%299%170%343@@@@%416%132@@@|@"])
  fun op reduce_or x = x
    val op reduce_or =
    DT(((("words",320),
        [("arithmetic",
         [17,24,25,26,27,28,41,46,59,62,65,71,93,172,173,177,180,195,200,
          269]),("bit",[48,88]),
         ("bool",
         [6,13,14,25,26,27,30,32,36,43,51,52,53,54,56,58,62,63,64,72,93,96,
          101,104,105,107,124,145]),("combin",[8,12,19]),
         ("fcp",[13,15,62]),
         ("list",[29,32,43,88,110,113,276,283,284,286,288,289,290]),
         ("numeral",[3,5,8,21]),("prim_rec",[7]),("rich_list",[13,264]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[5,38,41,113,185,318])]),["DISK_THM"]),
       [read"%95%81%142%428$0@@%184%137$0@%412%132@@@%416%132@@%416%299%170%343@@@@@|@"])
  fun op WORD_ADD_0 x = x
    val op WORD_ADD_0 =
    DT(((("words",321),
        [("arithmetic",[22,25]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,156])]),["DISK_THM"]),
       [read"%131%95%81%137%505$0@%412%132@@@$0@|@@%95%81%137%505%412%132@@$0@@$0@|@@"])
  fun op WORD_ADD_ASSOC x = x
    val op WORD_ADD_ASSOC =
    DT(((("words",322),
        [("arithmetic",[27]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,156])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%505$2@%505$1@$0@@@%505%505$2@$1@@$0@@|@|@|@"])
  fun op WORD_MULT_ASSOC x = x
    val op WORD_MULT_ASSOC =
    DT(((("words",323),
        [("arithmetic",[76]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,157])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%569$2@%569$1@$0@@@%569%569$2@$1@@$0@@|@|@|@"])
  fun op WORD_ADD_COMM x = x
    val op WORD_ADD_COMM =
    DT(((("words",324),
        [("arithmetic",[25]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,156])]),["DISK_THM"]),
       [read"%95%75%95%81%137%505$1@$0@@%505$0@$1@@|@|@"])
  fun op WORD_MULT_COMM x = x
    val op WORD_MULT_COMM =
    DT(((("words",325),
        [("arithmetic",[72]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,157])]),["DISK_THM"]),
       [read"%95%75%95%81%137%569$1@$0@@%569$0@$1@@|@|@"])
  fun op WORD_MULT_CLAUSES x = x
    val op WORD_MULT_CLAUSES =
    DT(((("words",326),
        [("arithmetic",[25,67,69,70,73,74,75]),
         ("bool",[25,26,27,36,51,53,54,56,58,63,105,124]),("fcp",[13]),
         ("words",[145,156,157,185])]),["DISK_THM"]),
       [read"%95%75%95%81%131%137%569%412%132@@$1@@%412%132@@@%131%137%569$1@%412%132@@@%412%132@@@%131%137%569%412%299%170%343@@@@$1@@$1@@%131%137%569$1@%412%299%170%343@@@@@$1@@%131%137%569%505$1@%412%299%170%343@@@@@$0@@%505%569$1@$0@@$0@@@%137%569$1@%505$0@%412%299%170%343@@@@@@%505$1@%569$1@$0@@@@@@@@|@|@"])
  fun op WORD_LEFT_ADD_DISTRIB x = x
    val op WORD_LEFT_ADD_DISTRIB =
    DT(((("words",327),
        [("arithmetic",[75]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,156,157])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%569$2@%505$1@$0@@@%505%569$2@$1@@%569$2@$0@@@|@|@|@"])
  fun op WORD_RIGHT_ADD_DISTRIB x = x
    val op WORD_RIGHT_ADD_DISTRIB =
    DT(((("words",328),
        [("arithmetic",[74]),("bool",[25,36,53,56,58,105,124]),
         ("fcp",[13]),("words",[145,156,157])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%569%505$2@$1@@$0@@%505%569$2@$0@@%569$1@$0@@@|@|@|@"])
  fun op WORD_ADD_SUB_ASSOC x = x
    val op WORD_ADD_SUB_ASSOC =
    DT(((("words",329),
        [("arithmetic",[24,25,27,41,46,71,93,172,173,177,180,217,269]),
         ("bool",[25,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,64,69,140,145,156])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%605%505$2@$1@@$0@@%505$2@%605$1@$0@@@|@|@|@"])
  fun op WORD_ADD_SUB_SYM x = x
    val op WORD_ADD_SUB_SYM =
    DT(((("words",330),
        [("arithmetic",[24,25,27,41,46,71,93,172,173,177,180,217,269]),
         ("bool",[25,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,64,69,140,145,156])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%605%505$2@$1@@$0@@%505%605$2@$0@@$1@@|@|@|@"])
  fun op WORD_ADD_LINV x = x
    val op WORD_ADD_LINV =
    DT(((("words",331),
        [("arithmetic",
         [24,25,27,41,46,71,93,172,173,177,180,217,219,233,269]),
         ("bit",[24]),
         ("bool",[25,26,27,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,64,140,143,145,156,185])]),["DISK_THM"]),
       [read"%95%81%137%505%490$0@@$0@@%412%132@@|@"])
  fun op WORD_ADD_RINV x = x
    val op WORD_ADD_RINV =
    DT(((("words",332),
        [("bool",[25,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[324,331])]),["DISK_THM"]),
       [read"%95%81%137%505$0@%490$0@@@%412%132@@|@"])
  fun op WORD_SUB_REFL x = x
    val op WORD_SUB_REFL =
    DT(((("words",333),
        [("bool",[25,36,56]),("words",[69,332])]),["DISK_THM"]),
       [read"%95%81%137%605$0@$0@@%412%132@@|@"])
  fun op WORD_SUB_ADD2 x = x
    val op WORD_SUB_ADD2 =
    DT(((("words",334),
        [("bool",[25,36,56,58]),
         ("words",[321,329,330,333])]),["DISK_THM"]),
       [read"%95%75%95%81%137%505$1@%605$0@$1@@@$0@|@|@"])
  fun op WORD_ADD_SUB x = x
    val op WORD_ADD_SUB =
    DT(((("words",335),
        [("bool",[25,36,56]),("words",[321,329,333])]),["DISK_THM"]),
       [read"%95%75%95%81%137%605%505$1@$0@@$0@@$1@|@|@"])
  fun op WORD_SUB_ADD x = x
    val op WORD_SUB_ADD =
    DT(((("words",336),[("words",[330,335])]),["DISK_THM"]),
       [read"%95%75%95%81%137%505%605$1@$0@@$0@@$1@|@|@"])
  fun op WORD_ADD_EQ_SUB x = x
    val op WORD_ADD_EQ_SUB =
    DT(((("words",337),
        [("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[335,336])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137%505$2@$1@@$0@@%137$2@%605$0@$1@@@|@|@|@"])
  fun op WORD_ADD_INV_0_EQ x = x
    val op WORD_ADD_INV_0_EQ =
    DT(((("words",338),
        [("arithmetic",
         [17,22,24,25,26,27,41,46,64,71,93,129,172,173,177,180,217,219,224,
          237,238,269]),("bit",[24]),
         ("bool",
         [8,14,25,26,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("num",[9]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,144,145,156])]),["DISK_THM"]),
       [read"%95%75%95%81%136%137%505$1@$0@@$1@@%137$0@%412%132@@@|@|@"])
  fun op WORD_EQ_ADD_LCANCEL x = x
    val op WORD_EQ_ADD_LCANCEL =
    DT(((("words",339),
        [("arithmetic",
         [17,24,25,26,27,41,46,64,71,93,129,172,173,177,180,224,238,269]),
         ("bit",[24]),
         ("bool",
         [8,14,25,26,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("num",[9]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,144,145,156])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137%505$2@$1@@%505$2@$0@@@%137$1@$0@@|@|@|@"])
  fun op WORD_EQ_ADD_RCANCEL x = x
    val op WORD_EQ_ADD_RCANCEL =
    DT(((("words",340),
        [("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[324,339])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137%505$2@$1@@%505$0@$1@@@%137$2@$0@@|@|@|@"])
  fun op WORD_NEG x = x
    val op WORD_NEG =
    DT(((("words",341),
        [("arithmetic",[24,25,27,41,46,71,93,172,173,177,180,195,217,269]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,145,156,159,160])]),["DISK_THM"]),
       [read"%95%81%137%490$0@@%505%487$0@@%412%299%170%343@@@@@|@"])
  fun op WORD_NOT x = x
    val op WORD_NOT =
    DT(((("words",342),
        [("bool",[25,36,56]),("words",[335,341])]),["DISK_THM"]),
       [read"%95%81%137%487$0@@%605%490$0@@%412%299%170%343@@@@@|@"])
  fun op WORD_NEG_0 x = x
    val op WORD_NEG_0 =
    DT(((("words",343),
        [("arithmetic",[62,219,233]),("bit",[24]),
         ("bool",[25,26,27,36,53,54,56,58,63,105,124]),("fcp",[13]),
         ("words",[0,64,140,143,185])]),["DISK_THM"]),
       [read"%137%490%412%132@@@%412%132@@"])
  fun op WORD_NEG_ADD x = x
    val op WORD_NEG_ADD =
    DT(((("words",344),
        [("bool",[25,53,54,55,56,58,63,170]),("marker",[8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[321,322,324,331,340])]),["DISK_THM"]),
       [read"%95%75%95%81%137%490%505$1@$0@@@%505%490$1@@%490$0@@@|@|@"])
  fun op WORD_NEG_NEG x = x
    val op WORD_NEG_NEG =
    DT(((("words",345),
        [("bool",[25,53,54,55,56,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[331,332,340])]),["DISK_THM"]),
       [read"%95%81%137%490%490$0@@@$0@|@"])
  fun op WORD_SUB_LNEG x = x
    val op WORD_SUB_LNEG =
    DT(((("words",346),[("bool",[58]),("words",[69,344])]),["DISK_THM"]),
       [read"%95%75%95%81%137%605%490$1@@$0@@%490%505$1@$0@@@|@|@"])
  fun op WORD_SUB_RNEG x = x
    val op WORD_SUB_RNEG =
    DT(((("words",347),[("words",[69,345])]),["DISK_THM"]),
       [read"%95%75%95%81%137%605$1@%490$0@@@%505$1@$0@@|@|@"])
  fun op WORD_SUB_SUB x = x
    val op WORD_SUB_SUB =
    DT(((("words",348),
        [("bool",[25,36,56]),("marker",[8]),
         ("words",[69,322,324,344,345])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%605$2@%605$1@$0@@@%605%505$2@$0@@$1@@|@|@|@"])
  fun op WORD_SUB_SUB2 x = x
    val op WORD_SUB_SUB2 =
    DT(((("words",349),[("words",[321,330,333,348])]),["DISK_THM"]),
       [read"%95%75%95%81%137%605$1@%605$1@$0@@@$0@|@|@"])
  fun op WORD_EQ_SUB_LADD x = x
    val op WORD_EQ_SUB_LADD =
    DT(((("words",350),
        [("bool",[25,26,53,54,58,63,73]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[69,321,322,331,332])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137$2@%605$1@$0@@@%137%505$2@$0@@$1@@|@|@|@"])
  fun op WORD_EQ_SUB_RADD x = x
    val op WORD_EQ_SUB_RADD =
    DT(((("words",351),
        [("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[350])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137%605$2@$1@@$0@@%137$2@%505$0@$1@@@|@|@|@"])
  fun op WORD_EQ_SUB_ZERO x = x
    val op WORD_EQ_SUB_ZERO =
    DT(((("words",352),[("words",[321,351])]),["DISK_THM"]),
       [read"%95%81%95%75%136%137%605$0@$1@@%412%132@@@%137$0@$1@@|@|@"])
  fun op WORD_LCANCEL_SUB x = x
    val op WORD_LCANCEL_SUB =
    DT(((("words",353),
        [("bool",[25,36,56]),("words",[69,340])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137%605$2@$1@@%605$0@$1@@@%137$2@$0@@|@|@|@"])
  fun op WORD_RCANCEL_SUB x = x
    val op WORD_RCANCEL_SUB =
    DT(((("words",354),
        [("bool",[25,26,36,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[69,339,345])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%136%137%605$2@$1@@%605$2@$0@@@%137$1@$0@@|@|@|@"])
  fun op WORD_SUB_PLUS x = x
    val op WORD_SUB_PLUS =
    DT(((("words",355),
        [("bool",[25,36,56]),("words",[69,322,344])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%605$2@%505$1@$0@@@%605%605$2@$1@@$0@@|@|@|@"])
  fun op WORD_SUB_LZERO x = x
    val op WORD_SUB_LZERO =
    DT(((("words",356),
        [("bool",[25,36,56]),("words",[69,321])]),["DISK_THM"]),
       [read"%95%81%137%605%412%132@@$0@@%490$0@@|@"])
  fun op WORD_SUB_RZERO x = x
    val op WORD_SUB_RZERO =
    DT(((("words",357),
        [("bool",[25,36,56]),("words",[69,321,343])]),["DISK_THM"]),
       [read"%95%81%137%605$0@%412%132@@@$0@|@"])
  fun op WORD_ADD_LID_UNIQ x = x
    val op WORD_ADD_LID_UNIQ =
    DT(((("words",358),[("words",[333,337])]),["DISK_THM"]),
       [read"%95%75%95%81%136%137%505$1@$0@@$0@@%137$1@%412%132@@@|@|@"])
  fun op WORD_ADD_RID_UNIQ x = x
    val op WORD_ADD_RID_UNIQ =
    DT(((("words",359),[("words",[324,358])]),["DISK_THM"]),
       [read"%95%75%95%81%136%137%505$1@$0@@$1@@%137$0@%412%132@@@|@|@"])
  fun op WORD_SUM_ZERO x = x
    val op WORD_SUM_ZERO =
    DT(((("words",360),
        [("bool",[14,25,26,36,53,54,55,56,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[335,353,356])]),["DISK_THM"]),
       [read"%95%8%95%19%136%137%505$1@$0@@%412%132@@@%137$1@%490$0@@@|@|@"])
  fun op WORD_ADD_SUB2 x = x
    val op WORD_ADD_SUB2 =
    DT(((("words",361),[("words",[324,335])]),["DISK_THM"]),
       [read"%95%75%95%81%137%605%505$0@$1@@$0@@$1@|@|@"])
  fun op WORD_ADD_SUB3 x = x
    val op WORD_ADD_SUB3 =
    DT(((("words",362),[("words",[333,355,356])]),["DISK_THM"]),
       [read"%95%75%95%85%137%605$1@%505$1@$0@@@%490$0@@|@|@"])
  fun op WORD_SUB_SUB3 x = x
    val op WORD_SUB_SUB3 =
    DT(((("words",363),
        [("bool",[58]),("words",[324,355,362])]),["DISK_THM"]),
       [read"%95%81%95%75%137%605%605$0@$1@@$0@@%490$1@@|@|@"])
  fun op WORD_EQ_NEG x = x
    val op WORD_EQ_NEG =
    DT(((("words",364),
        [("bool",[25,36,56,58]),("words",[354,356])]),["DISK_THM"]),
       [read"%95%75%95%81%136%137%490$1@@%490$0@@@%137$1@$0@@|@|@"])
  fun op WORD_NEG_EQ x = x
    val op WORD_NEG_EQ =
    DT(((("words",365),[("words",[345,364])]),["DISK_THM"]),
       [read"%95%81%95%75%136%137%490$0@@$1@@%137$0@%490$1@@@|@|@"])
  fun op WORD_NEG_EQ_0 x = x
    val op WORD_NEG_EQ_0 =
    DT(((("words",366),[("words",[343,364])]),["DISK_THM"]),
       [read"%136%137%490%75@@%412%132@@@%137%75@%412%132@@@"])
  fun op WORD_SUB x = x
    val op WORD_SUB =
    DT(((("words",367),[("bool",[58]),("words",[69,324])]),["DISK_THM"]),
       [read"%95%75%95%81%137%505%490$0@@$1@@%605$1@$0@@|@|@"])
  fun op WORD_SUB_NEG x = x
    val op WORD_SUB_NEG =
    DT(((("words",368),[("words",[347,367])]),["DISK_THM"]),
       [read"%95%75%95%81%137%605%490$1@@%490$0@@@%605$0@$1@@|@|@"])
  fun op WORD_NEG_SUB x = x
    val op WORD_NEG_SUB =
    DT(((("words",369),
        [("bool",[58]),("words",[69,346,368])]),["DISK_THM"]),
       [read"%95%81%95%75%137%490%605$0@$1@@@%605$1@$0@@|@|@"])
  fun op WORD_SUB_TRIANGLE x = x
    val op WORD_SUB_TRIANGLE =
    DT(((("words",370),
        [("bool",[25,36,56,58]),("words",[69,329,330,363])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%505%605$2@$1@@%605$1@$0@@@%605$2@$0@@|@|@|@"])
  fun op WORD_NOT_0 x = x
    val op WORD_NOT_0 =
    DT(((("words",371),[("words",[192,342,343,356])]),["DISK_THM"]),
       [read"%137%487%412%132@@@%502@"])
  fun op WORD_NOT_T x = x
    val op WORD_NOT_T =
    DT(((("words",372),
        [("bool",[25,56,58]),("words",[196,371])]),["DISK_THM"]),
       [read"%137%487%502@@%412%132@@"])
  fun op WORD_NEG_T x = x
    val op WORD_NEG_T =
    DT(((("words",373),
        [("bool",[25,56,58]),("words",[192,345])]),["DISK_THM"]),
       [read"%137%490%502@@%412%299%170%343@@@@"])
  fun op WORD_MULT_SUC x = x
    val op WORD_MULT_SUC =
    DT(((("words",374),
        [("arithmetic",[26,70,75]),("bool",[25,36,56]),
         ("words",[145,156,157])]),["DISK_THM"]),
       [read"%95%75%113%57%137%569$1@%412%115$0@%299%170%343@@@@@@%505%569$1@%412$0@@@$1@@|@|@"])
  fun op WORD_NEG_LMUL x = x
    val op WORD_NEG_LMUL =
    DT(((("words",375),
        [("arithmetic",[64]),("bool",[14,25,56]),("num",[9]),
         ("words",[145,326,343,344,374])]),["DISK_THM"]),
       [read"%95%75%95%81%137%490%569$1@$0@@@%569%490$1@@$0@@|@|@"])
  fun op WORD_NEG_RMUL x = x
    val op WORD_NEG_RMUL =
    DT(((("words",376),[("words",[325,375])]),["DISK_THM"]),
       [read"%95%75%95%81%137%490%569$1@$0@@@%569$1@%490$0@@@|@|@"])
  fun op WORD_NEG_MUL x = x
    val op WORD_NEG_MUL =
    DT(((("words",377),
        [("bool",[25,56]),("words",[326,345,365,375])]),["DISK_THM"]),
       [read"%95%81%137%490$0@@%569%490%412%299%170%343@@@@@$0@@|@"])
  fun op sw2sw_w2w_add x = x
    val op sw2sw_w2w_add =
    DT(((("words",378),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180,200]),
         ("bool",[25,26,27,30,36,51,52,54,56,58,63,64,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",
         [32,90,113,185,187,192,200,225,228,234,321])]),["DISK_THM"]),
       [read"%95%81%138%440$0@@%506%181%568$0@@%556%491%413%299%170%343@@@@@%353%444@@@%413%132@@@%477$0@@@|@"])
  fun op WORD_ADD_BIT0 x = x
    val op WORD_ADD_BIT0 =
    DT(((("words",379),
        [("bit",[90]),("bool",[25,56,63]),("fcp",[15]),
         ("sat",[1,3,5,6,7,11,15]),
         ("words",[5,113,145,156])]),["DISK_THM"]),
       [read"%95%8%95%19%136%405%505$1@$0@@%132@@%623%136%405$1@%132@@%405$0@%132@@@@|@|@"])
  fun op WORD_ADD_BIT x = x
    val op WORD_ADD_BIT =
    DT(((("words",380),
        [("arithmetic",[24,25,27,28,41,46,59,65,71,93,173,180,199,295]),
         ("bit",[92]),
         ("bool",
         [25,26,27,30,36,51,53,54,56,58,63,64,96,101,104,105,124,129,147]),
         ("fcp",[15]),("num",[7]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,15]),
         ("words",[5,113,145,156,237,379])]),["DISK_THM"]),
       [read"%113%57%95%8%95%19%163%134$2@%353%444@@@%136%405%505$1@$0@@$2@@%179%158$2@%132@@%623%136%405$1@%132@@%405$0@%132@@@@%179%405%505%514%130$2@%299%170%343@@@@%132@$1@@%514%130$2@%299%170%343@@@@%132@$0@@@$2@@%136%405$1@$2@@%405$0@$2@@@%623%136%405$1@$2@@%405$0@$2@@@@@@@|@|@|@"])
  fun op WORD_LEFT_SUB_DISTRIB x = x
    val op WORD_LEFT_SUB_DISTRIB =
    DT(((("words",381),
        [("bool",[25,36,56]),("words",[69,327,376])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%569$2@%605$1@$0@@@%605%569$2@$1@@%569$2@$0@@@|@|@|@"])
  fun op WORD_RIGHT_SUB_DISTRIB x = x
    val op WORD_RIGHT_SUB_DISTRIB =
    DT(((("words",382),[("words",[325,381])]),["DISK_THM"]),
       [read"%95%75%95%81%95%85%137%569%605$1@$0@@$2@@%605%569$1@$2@@%569$0@$2@@@|@|@|@"])
  fun op WORD_LITERAL_MULT x = x
    val op WORD_LITERAL_MULT =
    DT(((("words",383),
        [("bool",[25,36,51,56,58]),
         ("words",[157,345,375,376])]),["DISK_THM"]),
       [read"%131%113%51%113%57%137%569%412$1@@%490%412$0@@@@%490%412%114$1@$0@@@@|@|@@%113%51%113%57%138%570%491%413$1@@@%491%413$0@@@@%413%114$1@$0@@@|@|@@"])
  fun op WORD_LITERAL_ADD x = x
    val op WORD_LITERAL_ADD =
    DT(((("words",384),
        [("arithmetic",[24,25,26,27,46,71,93,128,145,173,176,180]),
         ("bool",[25,26,27,30,36,54,56,58,63,64,96,101,104,105]),
         ("numeral",[3,5,8]),
         ("words",[69,156,324,333,335,344,355,356])]),["DISK_THM"]),
       [read"%131%113%51%113%57%137%505%490%412$1@@@%490%412$0@@@@%490%412%115$1@$0@@@@|@|@@%113%51%113%57%138%506%413$1@@%491%413$0@@@@%181%135$0@$1@@%413%130$1@$0@@@%491%413%130$0@$1@@@@@|@|@@"])
  fun op WORD_SUB_INTRO x = x
    val op WORD_SUB_INTRO =
    DT(((("words",385),
        [("bool",[14,25,26,36,51,53,54,56,58,63]),("marker",[8]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[69,322,323,324,325,345,346,375,377])]),["DISK_THM"]),
       [read"%131%95%85%95%90%137%505%490$0@@$1@@%605$1@$0@@|@|@@%131%95%85%95%90%137%505$1@%490$0@@@%605$1@$0@@|@|@@%131%95%85%95%90%95%93%137%505%569%490$2@@$1@@$0@@%605$0@%569$2@$1@@@|@|@|@@%131%95%85%95%90%95%93%137%505$0@%569%490$2@@$1@@@%605$0@%569$2@$1@@@|@|@|@@%131%96%86%138%570%491%413%299%170%343@@@@@$0@@%491$0@@|@@%131%95%85%95%90%95%93%137%605$0@%569%490$2@@$1@@@%505$0@%569$2@$1@@@|@|@|@@%95%85%95%90%95%93%137%605%569%490$2@@$1@@$0@@%490%505%569$2@$1@@$0@@@|@|@|@@@@@@@"])
  fun op n2w_SUC x = x
    val op n2w_SUC =
    DT(((("words",386),
        [("arithmetic",[64]),("bool",[58]),
         ("words",[326,374])]),["DISK_THM"]),
       [read"%113%57%137%412%304$0@@@%505%412$0@@%412%299%170%343@@@@@|@"])
  fun op n2w_sub x = x
    val op n2w_sub =
    DT(((("words",387),
        [("bool",[25,53,56,58,63,105,124,129,147]),
         ("words",[69,384])]),["DISK_THM"]),
       [read"%113%13%113%22%163%135$0@$1@@%137%412%130$1@$0@@@%605%412$1@@%412$0@@@@|@|@"])
  fun op n2w_sub_eq_0 x = x
    val op n2w_sub_eq_0 =
    DT(((("words",388),
        [("arithmetic",[24,95,205]),
         ("bool",[25,26,51,53,56,58,63])]),["DISK_THM"]),
       [read"%113%13%113%22%163%135$1@$0@@%137%412%130$1@$0@@@%412%132@@@|@|@"])
  fun op WORD_H_WORD_L x = x
    val op WORD_H_WORD_L =
    DT(((("words",389),
        [("arithmetic",[41,46,71,93,173,176,180]),
         ("bool",[25,36,54,56,58,63,96,101,104,105,129,147]),
         ("numeral",[3,8]),
         ("words",[3,29,30,69,120,144,384])]),["DISK_THM"]),
       [read"%137%495@%605%496@%412%299%170%343@@@@@"])
  fun op word_L_MULT x = x
    val op word_L_MULT =
    DT(((("words",390),
        [("arithmetic",
         [24,25,64,69,71,73,74,76,159,168,173,177,180,217,218,219,221]),
         ("bool",[25,26,27,30,36,52,54,56,58,63,64,104,105,129]),
         ("numeral",[3,8]),
         ("words",[29,110,111,124,144,157])]),["DISK_THM"]),
       [read"%113%57%137%569%412$0@@%496@@%180%191$0@@%412%132@@%496@@|@"])
  fun op ASR_ADD x = x
    val op ASR_ADD =
    DT(((("words",391),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,60,71,88,93,147,172,173,176,177,180,197,
          200,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,64,93,96,101,104,105,107,124,
          129,147]),("fcp",[13,15]),("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[47,92,113])]),["DISK_THM"]),
       [read"%95%81%113%51%113%57%137%510%510$2@$1@@$0@@%510$2@%115$1@$0@@@|@|@|@"])
  fun op LSR_ADD x = x
    val op LSR_ADD =
    DT(((("words",392),
        [("arithmetic",[24,25,26,27,41,46,59,71,93,173,180]),
         ("bool",[25,26,27,30,36,51,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[91,113])]),["DISK_THM"]),
       [read"%95%81%113%51%113%57%137%559%559$2@$1@@$0@@%559$2@%115$1@$0@@@|@|@|@"])
  fun op ROR_ADD x = x
    val op ROR_ADD =
    DT(((("words",393),
        [("arithmetic",[26,27,209]),("bit",[117]),
         ("bool",[25,36,53,56,58,63,105,124]),("fcp",[13,15]),
         ("words",[93,113])]),["DISK_THM"]),
       [read"%95%81%113%51%113%57%137%591%591$2@$1@@$0@@%591$2@%115$1@$0@@@|@|@|@"])
  fun op LSL_ADD x = x
    val op LSL_ADD =
    DT(((("words",394),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,147,172,173,176,177,180,195,197,200,
          269]),
         ("bool",[25,26,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[90,113])]),["DISK_THM"]),
       [read"%95%81%113%51%113%57%137%555%555$2@$1@@$0@@%555$2@%115$1@$0@@@|@|@|@"])
  fun op ASR_LIMIT x = x
    val op ASR_LIMIT =
    DT(((("words",395),
        [("arithmetic",[24,25,27,41,46,71,93,173,176,180]),("bit",[48]),
         ("bool",
         [25,26,27,30,36,53,54,58,63,64,96,101,104,105,124,129,147]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[5,47,92,113,187])]),["DISK_THM"]),
       [read"%95%81%113%57%163%135%353%444@@$0@@%137%510$1@$0@@%180%568$1@@%502@%412%132@@@@|@|@"])
  fun op ASR_UINT_MAX x = x
    val op ASR_UINT_MAX =
    DT(((("words",396),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180,200]),
         ("bool",
         [5,25,26,27,30,36,51,52,53,54,58,63,64,93,96,101,104,105,107,124,
          129]),("fcp",[13,15]),("numeral",[3,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[47,92,113,187])]),["DISK_THM"]),
       [read"%113%57%137%510%502@$0@@%502@|@"])
  fun op LSR_LIMIT x = x
    val op LSR_LIMIT =
    DT(((("words",397),
        [("arithmetic",[24,25,27,41,46,71,93,173,180]),("bit",[48]),
         ("bool",[25,26,27,36,51,53,54,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[5,91,113])]),["DISK_THM"]),
       [read"%95%81%113%57%163%135%353%444@@$0@@%137%559$1@$0@@%412%132@@@|@|@"])
  fun op LSL_LIMIT x = x
    val op LSL_LIMIT =
    DT(((("words",398),
        [("arithmetic",[24,25,41,46,71,93,173,180]),("bit",[48]),
         ("bool",[25,26,27,36,51,53,54,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[5,90,113])]),["DISK_THM"]),
       [read"%95%81%113%57%163%135%353%444@@$0@@%137%555$1@$0@@%412%132@@@|@|@"])
  fun op ROR_CYCLE x = x
    val op ROR_CYCLE =
    DT(((("words",399),
        [("arithmetic",[26,217,222]),("bool",[25,56,58,63,105,124]),
         ("fcp",[13,15]),("words",[93,113])]),["DISK_THM"]),
       [read"%95%81%113%57%137%591$1@%114$0@%353%444@@@@$1@|@|@"])
  fun op ROR_MOD x = x
    val op ROR_MOD =
    DT(((("words",400),
        [("bit",[117]),("bool",[25,36,53,56,58,63,105,124]),
         ("fcp",[13,15]),("words",[93,113])]),["DISK_THM"]),
       [read"%95%81%113%57%137%591$1@%293$0@%353%444@@@@%591$1@$0@@|@|@"])
  fun op ROL_MOD x = x
    val op ROL_MOD =
    DT(((("words",401),
        [("arithmetic",[225]),("bool",[25,56,63]),
         ("words",[94,113])]),["DISK_THM"]),
       [read"%95%81%113%57%137%586$1@%293$0@%353%444@@@@%586$1@$0@@|@|@"])
  fun op LSL_ONE x = x
    val op LSL_ONE =
    DT(((("words",402),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,69,71,73,74,93,173,176,180,199,200,275,
          295]),("bit",[7,43,51,104,105]),
         ("bool",
         [25,26,27,30,36,51,54,56,58,63,64,96,101,104,105,124,129]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("words",[0,5,65,90,113,115,140,145])]),["DISK_THM"]),
       [read"%95%81%137%555$0@%299%170%343@@@@%505$0@$0@@|@"])
  fun op ROR_UINT_MAX x = x
    val op ROR_UINT_MAX =
    DT(((("words",403),
        [("arithmetic",[209]),("bool",[25,36,53,58,63,105,124]),
         ("fcp",[13,15]),("words",[93,113,187])]),["DISK_THM"]),
       [read"%113%57%137%591%502@$0@@%502@|@"])
  fun op ROR_ROL x = x
    val op ROR_ROL =
    DT(((("words",404),
        [("arithmetic",
         [24,25,26,27,41,46,71,93,172,173,177,180,208,209,217,222,239,240,
          269]),("bit",[117]),
         ("bool",[25,36,43,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[93,94,113])]),["DISK_THM"]),
       [read"%95%81%113%57%131%137%586%591$1@$0@@$0@@$1@@%137%591%586$1@$0@@$0@@$1@@|@|@"])
  fun op MOD_COMPLEMENT x = x
    val op MOD_COMPLEMENT =
    DT(((("words",405),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,67,70,71,73,74,75,79,93,100,101,172,
          173,176,177,180,200,208,217,218,221,233,237,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124]),("numeral",[3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%113%57%113%61%113%13%163%131%134%132@$2@@%131%134%132@$1@@%134$0@%114$1@$2@@@@@%158%293%130%114$1@$2@@$0@@$2@@%293%130$2@%293$0@$2@@@$2@@@|@|@|@"])
  fun op ROL_ADD x = x
    val op ROL_ADD =
    DT(((("words",406),
        [("arithmetic",
         [24,25,27,41,46,59,71,74,93,172,173,177,180,224,237,269]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105]),
         ("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[94,113,393,400,405])]),["DISK_THM"]),
       [read"%95%81%113%51%113%57%137%586%586$2@$1@@$0@@%586$2@%115$1@$0@@@|@|@|@"])
  fun op ZERO_SHIFT x = x
    val op ZERO_SHIFT =
    DT(((("words",407),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180,200,209]),
         ("bit",[48]),
         ("bool",
         [5,25,26,27,30,36,51,52,53,54,58,63,64,93,96,101,104,105,107,124,
          129]),("fcp",[13,15]),("numeral",[3,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[5,47,90,91,92,93,94,113])]),["DISK_THM"]),
       [read"%131%113%57%137%555%412%132@@$0@@%412%132@@|@@%131%113%57%137%510%412%132@@$0@@%412%132@@|@@%131%113%57%137%559%412%132@@$0@@%412%132@@|@@%131%113%57%137%586%412%132@@$0@@%412%132@@|@@%113%57%137%591%412%132@@$0@@%412%132@@|@@@@@"])
  fun op SHIFT_ZERO x = x
    val op SHIFT_ZERO =
    DT(((("words",408),
        [("arithmetic",[22,24,25,41,46,62,69,71,93,173,176,180,217,219]),
         ("bool",
         [25,26,27,36,51,53,54,56,58,63,96,101,104,105,124,129,147]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[47,90,91,92,93,94,113,399])]),["DISK_THM"]),
       [read"%131%95%8%137%555$0@%132@@$0@|@@%131%96%9%138%511$0@%132@@$0@|@@%131%97%10%139%560$0@%132@@$0@|@@%131%98%11%140%589$0@%132@@$0@|@@%99%12%141%592$0@%132@@$0@|@@@@@"])
  fun op word_lsl_n2w x = x
    val op word_lsl_n2w =
    DT(((("words",409),
        [("arithmetic",
         [8,17,22,24,25,26,27,41,46,59,64,69,70,71,72,73,74,76,93,102,172,
          173,177,180,200,218,219,269,275]),("bit",[24]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,54,56,58,63,64,93,96,101,104,105,129,
          170]),("num",[9]),("numeral",[3,5,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,143,156,394,402,407,408])]),["DISK_THM"]),
       [read"%113%57%113%51%137%555%412$0@@$1@@%180%134%130%353%444@@%299%170%343@@@@$1@@%412%132@@%412%114$0@%192%299%171%343@@@$1@@@@@|@|@"])
  fun op word_1_lsl x = x
    val op word_1_lsl =
    DT(((("words",410),
        [("arithmetic",
         [24,25,26,41,46,69,71,93,102,145,173,176,180,200,218,219]),
         ("bit",[24]),
         ("bool",[25,26,27,30,36,54,56,58,63,64,96,101,104,105,129]),
         ("numeral",[3,8]),("words",[0,110,144,409])]),["DISK_THM"]),
       [read"%113%57%137%555%412%299%170%343@@@@$0@@%412%192%299%171%343@@@$0@@@|@"])
  fun op word_lsr_n2w x = x
    val op word_lsr_n2w =
    DT(((("words",411),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,176,180,269,306]),
         ("bool",[25,36,43,51,52,54,56,63,93,96,101,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,91,113])]),["DISK_THM"]),
       [read"%95%81%113%57%137%559$1@$0@@%514%130%353%444@@%299%170%343@@@@$0@$1@@|@|@"])
  fun op LSL_UINT_MAX x = x
    val op LSL_UINT_MAX =
    DT(((("words",412),
        [("arithmetic",
         [24,25,26,41,46,59,63,69,71,73,77,93,96,97,99,129,147,172,173,176,
          180,200,217,219,222,274,277]),("bit",[24,29]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          129]),("numeral",[3,7,8,33]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,2,28,144,409])]),["DISK_THM"]),
       [read"%113%57%137%555%502@$0@@%412%130%381%444@@%192%299%171%343@@@$0@@@@|@"])
  fun op word_asr_n2w x = x
    val op word_asr_n2w =
    DT(((("words",413),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,130,172,173,176,180,198,200,269,295]),
         ("bool",
         [5,25,26,27,30,36,43,51,52,53,54,56,58,63,64,96,101,104,105,109,
          124,129,147]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("words",
         [33,47,90,91,92,113,187,200,395,397,408,412])]),["DISK_THM"]),
       [read"%113%57%95%81%137%510$0@$1@@%180%568$0@@%578%412%130%381%444@@%192%299%171%343@@@%130%353%444@@%292$1@%353%444@@@@@@@%559$0@$1@@@%559$0@$1@@@|@|@"])
  fun op word_ror_n2w x = x
    val op word_ror_n2w =
    DT(((("words",414),
        [("arithmetic",
         [0,24,25,26,27,41,46,59,65,71,73,76,91,93,95,101,102,145,147,172,
          173,176,177,180,197,198,199,209,217,238,269]),
         ("bit",[7,34,68,69,102,103]),
         ("bool",
         [25,30,32,36,43,52,53,54,56,58,63,93,96,101,104,105,124,169]),
         ("combin",[19]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("prim_rec",[7]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[5,93,113,115,400])]),["DISK_THM"]),
       [read"%113%57%113%13%137%591%412$0@@$1@@%284%87%412%115%172%130%353%444@@%299%170%343@@@@$0@$1@@%114%172%130$0@%299%170%343@@@@%132@$1@@%192%299%171%343@@@%130%353%444@@$0@@@@@|@%293$1@%353%444@@@@|@|@"])
  fun op word_rrx_n2w x = x
    val op word_rrx_n2w =
    DT(((("words",415),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,64,65,69,71,88,93,101,102,147,172,173,
          176,177,180,197,200,269,295,304]),
         ("bit",[4,7,34,41,49,51,68,69,88,102]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,63,64,93,96,101,104,105,
          107,108,109,124,129,147]),("fcp",[13,15]),
         ("numeral",[0,3,5,6,7,8]),("pair",[4]),("prim_rec",[4,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[5,46,91,95,113,115])]),["DISK_THM"]),
       [read"%94%23%113%13%159%594%117$1@%412$0@@@@%117%300$0@@%412%115%172%130%353%444@@%299%170%343@@@@%299%170%343@@@$0@@%301$1@%130%353%444@@%299%170%343@@@@@@@@|@|@"])
  fun op word_ror x = x
    val op word_ror =
    DT(((("words",416),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,67,69,71,73,74,75,93,101,128,147,172,
          173,176,177,180,197,198,200,208,217,222,269,306]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,
          124]),("combin",[19]),("fcp",[13,15]),("numeral",[3,5,6,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[33,49,90,93,113])]),["DISK_THM"]),
       [read"%95%81%113%57%137%591$1@$0@@%284%87%578%514%130%353%444@@%299%170%343@@@@$0@$2@@%555%514%130$0@%299%170%343@@@@%132@$2@@%130%353%444@@$0@@@|@%293$0@%353%444@@@@|@|@"])
  fun op word_asr x = x
    val op word_asr =
    DT(((("words",417),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,173,176,177,180,197,198,306]),
         ("bool",
         [5,25,26,27,30,36,51,52,53,54,56,58,63,64,96,101,104,105,124,
          129]),("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[33,48,91,92,187])]),["DISK_THM"]),
       [read"%95%81%113%57%137%510$1@$0@@%180%568$1@@%578%599%130%353%444@@%299%170%343@@@@%130%353%444@@$0@@%502@@%559$1@$0@@@%559$1@$0@@@|@|@"])
  fun op w2n_lsr x = x
    val op w2n_lsr =
    DT(((("words",418),
        [("arithmetic",
         [22,24,25,27,41,46,59,71,93,173,177,180,232,295,310]),
         ("bit",[36,51]),
         ("bool",
         [25,26,27,30,36,51,52,53,54,56,58,63,64,93,96,101,104,105,107,108,
          109,129]),("numeral",[3,8,33]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[116,140,145,149,237,411])]),["DISK_THM"]),
       [read"%95%81%113%51%158%473%559$1@$0@@@%188%473$1@@%192%299%171%343@@@$0@@@|@|@"])
  fun op WORD_MUL_LSL x = x
    val op WORD_MUL_LSL =
    DT(((("words",419),
        [("arithmetic",
         [24,25,26,41,46,71,73,76,93,102,145,173,176,180,200,218,219]),
         ("bit",[24]),
         ("bool",[25,26,27,30,36,54,56,58,63,64,96,101,104,105,129]),
         ("numeral",[3,8]),
         ("words",[0,110,144,145,157,409])]),["DISK_THM"]),
       [read"%95%8%113%57%137%555$1@$0@@%569%412%192%299%171%343@@@$0@@@$1@@|@|@"])
  fun op WORD_ADD_LSL x = x
    val op WORD_ADD_LSL =
    DT(((("words",420),
        [("bool",[25,56]),("words",[327,340,419])]),["DISK_THM"]),
       [read"%113%57%95%8%95%19%137%555%505$1@$0@@$2@@%505%555$1@$2@@%555$0@$2@@@|@|@|@"])
  fun op WORD_DIV_LSR x = x
    val op WORD_DIV_LSR =
    DT(((("words",421),
        [("arithmetic",
         [34,41,46,59,71,93,173,177,180,217,220,232,236,247,360]),
         ("bit",[24,29]),
         ("bool",[25,30,36,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("numeral",[3,7,8,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[0,70,140,149,150,418])]),["DISK_THM"]),
       [read"%95%50%113%57%163%134$0@%353%444@@@%137%559$1@$0@@%519$1@%412%192%299%171%343@@@$0@@@@@|@|@"])
  fun op WORD_MOD_1 x = x
    val op WORD_MOD_1 =
    DT(((("words",422),
        [("arithmetic",[212,217]),("bool",[25,56,63]),
         ("words",[72,114,140,144])]),["DISK_THM"]),
       [read"%95%50%137%566$0@%412%299%170%343@@@@@%412%132@@|@"])
  fun op WORD_MOD_POW2 x = x
    val op WORD_MOD_POW2 =
    DT(((("words",423),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180,199,217,278,295]),
         ("bit",[43]),
         ("bool",[25,36,54,56,58,63,96,101,104,105,124,129,147]),
         ("numeral",[3,5,7,8]),
         ("words",[0,72,140,144,145,237])]),["DISK_THM"]),
       [read"%95%50%113%78%163%134$0@%130%353%444@@%299%170%343@@@@@%137%566$1@%412%192%299%171%343@@@%304$0@@@@@%514$0@%132@$1@@@|@|@"])
  fun op SHIFT_1_SUB_1 x = x
    val op SHIFT_1_SUB_1 =
    DT(((("words",424),
        [("arithmetic",[70]),("bit",[25,113]),
         ("bool",[25,56,58,63,105,124]),
         ("words",[157,242,387,419])]),["DISK_THM"]),
       [read"%113%40%113%57%163%134$1@%353%444@@@%136%405%605%555%412%299%170%343@@@@$0@@%412%299%170%343@@@@@$1@@%134$1@$0@@@|@|@"])
  fun op LSR_BITWISE x = x
    val op LSR_BITWISE =
    DT(((("words",425),
        [("bool",[25,26,27,30,51,52,54,56,58,63,105,124]),("fcp",[13,15]),
         ("sat",[1,3,5,6,7,11,15]),("words",[32,33,34,91])]),["DISK_THM"]),
       [read"%131%113%57%95%75%95%81%137%507%559$0@$2@@%559$1@$2@@@%559%507$0@$1@@$2@@|@|@|@@%131%113%57%95%75%95%81%137%578%559$0@$2@@%559$1@$2@@@%559%578$0@$1@@$2@@|@|@|@@%113%57%95%75%95%81%137%618%559$0@$2@@%559$1@$2@@@%559%618$0@$1@@$2@@|@|@|@@@"])
  fun op LSL_BITWISE x = x
    val op LSL_BITWISE =
    DT(((("words",426),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180,200]),
         ("bool",
         [25,26,27,30,36,47,48,51,53,54,56,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[32,33,34,90,113])]),["DISK_THM"]),
       [read"%131%113%57%95%75%95%81%137%507%555$0@$2@@%555$1@$2@@@%555%507$0@$1@@$2@@|@|@|@@%131%113%57%95%75%95%81%137%578%555$0@$2@@%555$1@$2@@@%555%578$0@$1@@$2@@|@|@|@@%113%57%95%75%95%81%137%618%555$0@$2@@%555$1@$2@@@%555%618$0@$1@@$2@@|@|@|@@@"])
  fun op ROR_BITWISE x = x
    val op ROR_BITWISE =
    DT(((("words",427),
        [("arithmetic",[209]),("bool",[25,36,53,56,58,63,105,124]),
         ("fcp",[13,15]),("sat",[1,3,5,6,7,11,15]),
         ("words",[32,33,34,93,113])]),["DISK_THM"]),
       [read"%131%113%57%95%75%95%81%137%507%591$0@$2@@%591$1@$2@@@%591%507$0@$1@@$2@@|@|@|@@%131%113%57%95%75%95%81%137%578%591$0@$2@@%591$1@$2@@@%591%578$0@$1@@$2@@|@|@|@@%113%57%95%75%95%81%137%618%591$0@$2@@%591$1@$2@@@%591%618$0@$1@@$2@@|@|@|@@@"])
  fun op ROL_BITWISE x = x
    val op ROL_BITWISE =
    DT(((("words",428),
        [("bool",[25,56]),("words",[94,427])]),["DISK_THM"]),
       [read"%131%113%57%95%75%95%81%137%507%586$0@$2@@%586$1@$2@@@%586%507$0@$1@@$2@@|@|@|@@%131%113%57%96%76%96%82%138%579%587$0@$2@@%587$1@$2@@@%587%579$0@$1@@$2@@|@|@|@@%113%57%97%77%97%83%139%620%588$0@$2@@%588$1@$2@@@%588%620$0@$1@@$2@@|@|@|@@@"])
  fun op WORD_2COMP_LSL x = x
    val op WORD_2COMP_LSL =
    DT(((("words",429),
        [("bool",[25,56]),("words",[376,419])]),["DISK_THM"]),
       [read"%113%57%95%8%137%555%490$0@@$1@@%490%555$0@$1@@@|@|@"])
  fun op w2w_LSL x = x
    val op w2w_LSL =
    DT(((("words",430),
        [("arithmetic",
         [22,24,25,27,41,46,59,71,93,147,172,173,176,177,180,195,197,198,
          200,269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,90,113,228,251,398])]),["DISK_THM"]),
       [read"%95%81%113%57%138%477%555$1@$0@@@%181%134$0@%353%444@@@%556%477%514%130%130%353%444@@%299%170%343@@@@$0@@%132@$1@@@$0@@%413%132@@@|@|@"])
  fun op n2w_DIV x = x
    val op n2w_DIV =
    DT(((("words",431),
        [("arithmetic",[59,73,155,217,226,255]),("bit",[24,29,30]),
         ("bool",[25,30,51,53,54,56,63,105]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[0,70,110,140,144,397,421])]),["DISK_THM"]),
       [read"%113%13%113%57%163%134$1@%381%444@@@%137%412%188$1@%192%299%171%343@@@$0@@@@%559%412$1@@$0@@@|@|@"])
  fun op WORD_BITS_LSL x = x
    val op WORD_BITS_LSL =
    DT(((("words",432),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,60,62,63,71,93,95,147,172,173,176,177,
          180,197,198,199,200,205,269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,124,
          129]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,90,113,185,264,265,398,407,408])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%95%81%163%134$3@%353%444@@@%137%514$3@$2@%555$0@$1@@@%180%135$1@$3@@%555%514%130$3@$1@@%130$2@$1@@$0@@%130$1@$2@@@%412%132@@@@|@|@|@|@"])
  fun op WORD_EXTRACT_LSL x = x
    val op WORD_EXTRACT_LSL =
    DT(((("words",433),
        [("arithmetic",
         [22,24,25,27,41,46,59,71,93,172,173,176,177,180,195,198,200,269,
          295]),("bit",[42]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,65,93,96,101,104,105,
          108,109,124,129,147]),("combin",[8]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[51,113,144,250,261,430,432])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%95%81%163%134$3@%353%444@@@%138%521$3@$2@%555$0@$1@@@%181%135$1@$3@@%556%521%130$3@$1@@%130$2@$1@@$0@@%130$1@$2@@@%413%132@@@@|@|@|@|@"])
  fun op WORD_EXTRACT_LSL2 x = x
    val op WORD_EXTRACT_LSL2 =
    DT(((("words",434),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,197,198,200,
          269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,54,56,58,63,93,96,101,104,105,124,125]),
         ("combin",[8]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,51,90,113,228])]),["DISK_THM"]),
       [read"%113%37%113%47%113%57%95%81%163%135%115%354%445@@$2@@%115$3@$1@@@%138%556%521$3@$2@$0@@$1@@%556%521%130%115%354%445@@$2@@%115$1@%299%170%343@@@@@$2@$0@@$1@@@|@|@|@|@"])
  fun op EXTRACT_JOIN_LSL x = x
    val op EXTRACT_JOIN_LSL =
    DT(((("words",435),
        [("bool",[25,51,56,58,63,105,124]),("marker",[6]),
         ("words",[286,394,426])]),["DISK_THM"]),
       [read"%113%37%113%51%113%52%113%47%113%67%113%57%95%81%163%131%135$3@$5@@%131%135$4@$6@@%131%158$4@%115$5@%299%170%343@@@@@%158$2@%115%130$4@$3@@$1@@@@@@%138%579%556%521$6@$4@$0@@$2@@%556%521$5@$3@$0@@$1@@@%556%521%292$6@%292%130%115%354%445@@$3@@%299%170%343@@@@%130%353%444@@%299%170%343@@@@@@$3@$0@@$1@@@|@|@|@|@|@|@|@"])
  fun op EXTRACT_JOIN_ADD_LSL x = x
    val op EXTRACT_JOIN_ADD_LSL =
    DT(((("words",436),
        [("bool",[25,51,56,58,63,105,124]),("marker",[6]),
         ("words",[287,394,420])]),["DISK_THM"]),
       [read"%113%37%113%51%113%52%113%47%113%67%113%57%95%81%163%131%135$3@$5@@%131%135$4@$6@@%131%158$4@%115$5@%299%170%343@@@@@%158$2@%115%130$4@$3@@$1@@@@@@%138%506%556%521$6@$4@$0@@$2@@%556%521$5@$3@$0@@$1@@@%556%521%292$6@%292%130%115%354%445@@$3@@%299%170%343@@@@%130%353%444@@%299%170%343@@@@@@$3@$0@@$1@@@|@|@|@|@|@|@|@"])
  fun op word_extract_mask x = x
    val op word_extract_mask =
    DT(((("words",437),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,147,172,173,176,177,180,197,269,306]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,58,63,64,93,96,101,104,105,107,124,
          129]),("combin",[8]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[32,49,51,91,156,185,228,394,402,424])]),["DISK_THM"]),
       [read"%113%37%113%47%95%8%137%520$2@$1@$0@@%180%135$1@$2@@%507%559$0@$1@@%605%555%412%299%171%343@@@@%130$2@$1@@@%412%299%170%343@@@@@@%412%132@@@|@|@|@"])
  fun op word_shift_bv x = x
    val op word_shift_bv =
    DT(((("words",438),
        [("arithmetic",[34,217,237]),("bool",[25,53,54,56,58,63,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",[96,97,98,99,100,113,126,140,400,401])]),["DISK_THM"]),
       [read"%131%95%81%113%57%163%134$0@%381%444@@@%137%555$1@$0@@%558$1@%412$0@@@@|@|@@%131%95%81%113%57%163%134$0@%381%444@@@%137%510$1@$0@@%512$1@%412$0@@@@|@|@@%131%95%81%113%57%163%134$0@%381%444@@@%137%559$1@$0@@%561$1@%412$0@@@@|@|@@%131%95%81%113%57%137%591$1@$0@@%593$1@%412%293$0@%353%444@@@@@|@|@@%95%81%113%57%137%586$1@$0@@%590$1@%412%293$0@%353%444@@@@@|@|@@@@@"])
  fun op WORD_NEG_L x = x
    val op WORD_NEG_L =
    DT(((("words",439),
        [("arithmetic",[8,24,25,41,46,59,65,69,71,74,93,128,173,180,217]),
         ("bit",[24]),("bool",[25,36,52,54,56,58,63,93,96,104,105,107]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,1,29,115,144,160])]),["DISK_THM"]),
       [read"%137%490%496@@%496@"])
  fun op word_L_MULT_NEG x = x
    val op word_L_MULT_NEG =
    DT(((("words",440),
        [("bool",[25,26,27,30,56,58,63,64]),
         ("words",[144,323,326,377,390,439])]),["DISK_THM"]),
       [read"%113%57%137%569%490%412$0@@@%496@@%180%191$0@@%412%132@@%496@@|@"])
  fun op word_L2_MULT x = x
    val op word_L2_MULT =
    DT(((("words",441),
        [("bool",[25,26,27,30,56,58,63,64,105,129,147]),
         ("words",[29,75,326,390,440])]),["DISK_THM"]),
       [read"%131%137%569%498@%498@@%498@@%131%138%570%497@%499@@%499@@%131%113%57%139%571%414$0@@%500@@%182%191$0@@%414%132@@%500@@|@@%113%57%140%572%493%415$0@@@%501@@%183%191$0@@%415%132@@%501@@|@@@@"])
  fun op TWO_COMP_NEG x = x
    val op TWO_COMP_NEG =
    DT(((("words",442),
        [("arithmetic",
         [0,8,17,22,24,25,26,27,41,46,59,62,63,64,65,69,71,74,93,95,101,
          114,117,122,128,132,154,172,173,176,177,180,195,198,199,200,205,
          217,219,225,226,238,247,269,274,275,295]),
         ("bit",[7,21,24,29,33,38,43,48,51,62,64,80,94,100]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,72,78,93,94,
          96,101,104,105,107,124,129,146]),
         ("numeral",[0,3,5,6,7,8,9,32,33]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("words",
         [0,1,2,28,29,113,115,140,141,143,144,145,160,164,192,
          439])]),["DISK_THM"]),
       [read"%95%8%163%568$0@@%179%344%158%130%353%444@@%299%170%343@@@@%132@@%137$0@%496@@@%568%490$0@@@%623%568%490$0@@@@@|@"])
  fun op TWO_COMP_POS_NEG x = x
    val op TWO_COMP_POS_NEG =
    DT(((("words",443),
        [("arithmetic",
         [8,17,22,24,25,26,27,41,46,59,62,63,65,71,93,95,96,117,122,129,
          132,172,173,176,177,180,199,200,205,215,217,219,269,274,275,
          295]),("bit",[7,21,22,24,33,34,38,43,51,62,64,76,81]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,55,56,58,63,64,71,93,
          94,96,100,101,104,105,107,124,129]),("numeral",[0,3,5,7,8]),
         ("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("words",
         [0,115,140,141,143,144,145,160,164,343,442])]),["DISK_THM"]),
       [read"%95%8%163%623%344%158%130%353%444@@%299%170%343@@@@%132@@%344%137$0@%412%132@@@%137$0@%496@@@@@%136%623%568$0@@@%568%490$0@@@@|@"])
  fun op WORD_0_POS x = x
    val op WORD_0_POS =
    DT(((("words",444),
        [("bit",[48]),("bool",[25,26,27,54]),
         ("words",[164])]),["DISK_THM"]), [read"%623%568%412%132@@@"])
  fun op TWO_COMP_POS x = x
    val op TWO_COMP_POS =
    DT(((("words",445),
        [("arithmetic",
         [8,17,22,24,25,26,27,41,46,59,62,63,65,71,93,95,96,117,122,129,
          132,172,173,176,177,180,199,200,205,215,217,219,269,274,275,
          295]),("bit",[7,21,22,24,33,34,38,43,51,62,64,76,81]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,55,56,58,63,64,71,93,
          94,96,100,101,104,105,107,124,129]),("numeral",[0,3,5,7,8]),
         ("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23]),
         ("words",[0,115,140,141,143,144,145,160,164,343])]),["DISK_THM"]),
       [read"%95%8%163%623%568$0@@@%344%137$0@%412%132@@@%568%490$0@@@@|@"])
  fun op WORD_H_POS x = x
    val op WORD_H_POS =
    DT(((("words",446),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,180,200,219,226,269]),
         ("bit",[7,24,33]),
         ("bool",[25,36,43,51,52,54,63,93,96,101,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[1,3,30,164])]),["DISK_THM"]), [read"%623%568%495@@"])
  fun op WORD_L_NEG x = x
    val op WORD_L_NEG =
    DT(((("words",447),
        [("bit",[49]),("bool",[25,63]),
         ("words",[1,29,164])]),["DISK_THM"]), [read"%568%496@"])
  fun op WORD_GREATER x = x
    val op WORD_GREATER =
    DT(((("words",448),
        [("arithmetic",
         [17,22,24,25,27,46,59,62,63,65,69,71,74,93,95,172,173,176,177,180,
          205,216,217,219,233,269,275]),
         ("bit",[7,21,22,24,33,34,42,43,62,64,76,80,81]),
         ("bool",
         [13,14,25,26,27,30,32,36,43,47,48,51,52,53,54,55,56,58,63,64,71,
          93,94,96,101,104,105,107,124]),("combin",[19]),
         ("numeral",[0,3,5,6,7,8,9,15,16,32,33]),("pair",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,1,29,65,69,76,77,78,115,140,141,143,144,145,149,156,160,164,
          333,343,351,353,369,443,444])]),["DISK_THM"]),
       [read"%95%8%95%19%136%539$1@$0@@%562$0@$1@@|@|@"])
  fun op WORD_GREATER_EQ x = x
    val op WORD_GREATER_EQ =
    DT(((("words",449),
        [("arithmetic",
         [17,22,24,25,27,46,59,62,63,65,69,71,74,93,95,172,173,176,177,180,
          205,216,217,219,233,269,275]),
         ("bit",[7,21,22,24,33,34,42,43,62,64,76,80,81]),
         ("bool",
         [13,14,25,26,27,30,32,36,43,47,48,51,52,53,54,55,56,58,63,64,71,
          93,94,96,101,104,105,107,124]),("combin",[19]),
         ("numeral",[0,3,5,6,7,8,9,15,16,32,33]),("pair",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,1,29,65,69,76,79,80,115,140,141,143,144,145,149,156,160,164,
          333,343,351,353,369,443,444])]),["DISK_THM"]),
       [read"%95%8%95%19%136%538$1@$0@@%544$0@$1@@|@|@"])
  fun op WORD_NOT_LESS x = x
    val op WORD_NOT_LESS =
    DT(((("words",450),
        [("arithmetic",
         [17,22,24,25,27,46,59,62,63,65,69,71,74,93,95,172,173,176,177,180,
          205,216,217,219,233,269,275]),
         ("bit",[7,21,22,24,33,34,42,43,62,64,76,80,81]),
         ("bool",
         [13,14,25,26,27,30,32,36,43,47,48,51,52,53,54,55,56,58,63,64,71,
          93,94,96,101,104,105,107,124]),("combin",[19]),
         ("numeral",[0,3,5,6,7,8,9,15,16,32,33]),("pair",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,1,29,65,69,76,77,79,115,140,141,143,144,145,149,156,160,164,
          333,343,351,353,369,443,444])]),["DISK_THM"]),
       [read"%95%8%95%19%136%623%562$1@$0@@@%544$0@$1@@|@|@"])
  fun op WORD_LT x = x
    val op WORD_LT =
    DT(((("words",451),
        [("arithmetic",
         [8,17,18,22,24,25,26,27,41,46,59,62,63,65,69,71,74,75,76,93,95,96,
          101,114,117,122,128,129,132,145,154,172,173,176,177,180,183,192,
          198,199,200,205,215,216,217,219,225,232,233,238,247,269,274,275,
          278,295]),
         ("bit",[7,21,22,24,27,29,33,34,38,43,51,53,62,64,76,80,81]),
         ("bool",
         [8,13,14,25,26,27,30,32,36,43,47,48,51,52,53,54,55,56,58,63,64,71,
          93,94,96,99,100,101,104,105,107,124,129]),("combin",[19]),
         ("marker",[6]),
         ("numeral",[0,3,5,6,7,8,9,15,16,17,21,32,33,34,35,40,41]),
         ("pair",[16]),("prim_rec",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,65,69,76,77,113,115,140,141,144,145,156,160,164,333,343,
          353])]),["DISK_THM"]),
       [read"%95%8%95%19%136%562$1@$0@@%344%131%136%568$1@@%568$0@@@%134%473$1@@%473$0@@@@%131%568$1@@%623%568$0@@@@@|@|@"])
  fun op WORD_GT x = x
    val op WORD_GT =
    DT(((("words",452),
        [("arithmetic",[9]),("bool",[58]),
         ("words",[448,451])]),["DISK_THM"]),
       [read"%95%8%95%19%136%539$1@$0@@%344%131%136%568$0@@%568$1@@@%164%473$1@@%473$0@@@@%131%568$0@@%623%568$1@@@@@|@|@"])
  fun op WORD_LE x = x
    val op WORD_LE =
    DT(((("words",453),
        [("arithmetic",[59]),("bool",[25,54,58,63,96]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[450,451])]),["DISK_THM"]),
       [read"%95%8%95%19%136%544$1@$0@@%344%131%136%568$1@@%568$0@@@%135%473$1@@%473$0@@@@%131%568$1@@%623%568$0@@@@@|@|@"])
  fun op WORD_GE x = x
    val op WORD_GE =
    DT(((("words",454),
        [("arithmetic",[143]),("bool",[58]),
         ("words",[449,453])]),["DISK_THM"]),
       [read"%95%8%95%19%136%538$1@$0@@%344%131%136%568$0@@%568$1@@@%165%473$1@@%473$0@@@@%131%568$0@@%623%568$1@@@@@|@|@"])
  fun op WORD_LO x = x
    val op WORD_LO =
    DT(((("words",455),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,93,95,96,128,129,173,176,177,180,
          199,200,205,215,217,219,226,274,275]),("bit",[7,21,22,24,33,49]),
         ("bool",
         [13,14,25,26,27,30,32,36,47,48,51,52,53,54,56,58,63,64,93,94,96,
          101,104,105,107,129]),("combin",[19]),("numeral",[3,5,6,7,8]),
         ("pair",[16]),("prim_rec",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",
         [0,69,76,83,140,141,145,149,150,156,160,333,343,
          353])]),["DISK_THM"]),
       [read"%95%8%95%19%136%548$1@$0@@%134%473$1@@%473$0@@@|@|@"])
  fun op WORD_LS x = x
    val op WORD_LS =
    DT(((("words",456),
        [("arithmetic",[10]),
         ("bool",
         [13,25,26,27,30,32,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("combin",[19]),("pair",[16]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[69,76,81,83,141,149,156,333,353,455])]),["DISK_THM"]),
       [read"%95%8%95%19%136%551$1@$0@@%135%473$1@@%473$0@@@|@|@"])
  fun op WORD_HI x = x
    val op WORD_HI =
    DT(((("words",457),
        [("arithmetic",[178]),
         ("bool",
         [13,25,26,27,30,32,36,43,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("combin",[19]),("pair",[16]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[69,76,81,82,141,156,333,353,456])]),["DISK_THM"]),
       [read"%95%8%95%19%136%540$1@$0@@%164%473$1@@%473$0@@@|@|@"])
  fun op WORD_HS x = x
    val op WORD_HS =
    DT(((("words",458),
        [("arithmetic",[24,25,41,46,59,71,93,143,173,179,180]),
         ("bool",
         [13,25,26,27,30,32,36,43,47,48,51,52,53,54,56,58,63,93,94,96,104,
          105,107]),("combin",[19]),("numeral",[3,8]),("pair",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[69,76,83,84,141,156,333,353,455])]),["DISK_THM"]),
       [read"%95%8%95%19%136%541$1@$0@@%165%473$1@@%473$0@@@|@|@"])
  fun op WORD_NOT_LESS_EQUAL x = x
    val op WORD_NOT_LESS_EQUAL =
    DT(((("words",459),
        [("bool",[25,26,47,48,53,54,63,71,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[450])]),["DISK_THM"]),
       [read"%95%8%95%19%136%623%544$1@$0@@@%562$0@$1@@|@|@"])
  fun op WORD_LESS_OR_EQ x = x
    val op WORD_LESS_OR_EQ =
    DT(((("words",460),
        [("bool",[13,25,26,27,30,32,47,48,51,52,53,54,56,58,63,93,94,96]),
         ("combin",[19]),("pair",[16]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[69,76,77,79,141,156,333,353,444])]),["DISK_THM"]),
       [read"%95%8%95%19%136%544$1@$0@@%344%562$1@$0@@%137$1@$0@@@|@|@"])
  fun op WORD_GREATER_OR_EQ x = x
    val op WORD_GREATER_OR_EQ =
    DT(((("words",461),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[448,449,460])]),["DISK_THM"]),
       [read"%95%8%95%19%136%538$1@$0@@%344%539$1@$0@@%137$1@$0@@@|@|@"])
  fun op WORD_LESS_TRANS x = x
    val op WORD_LESS_TRANS =
    DT(((("words",462),
        [("arithmetic",[34]),
         ("bool",[25,26,27,47,48,51,52,53,54,56,58,63,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[451])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%562$2@$1@@%562$1@$0@@@%562$2@$0@@|@|@|@"])
  fun op WORD_LESS_EQ_TRANS x = x
    val op WORD_LESS_EQ_TRANS =
    DT(((("words",463),
        [("arithmetic",[93]),
         ("bool",[25,26,27,47,48,51,52,53,54,56,58,63,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[453])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%544$2@$1@@%544$1@$0@@@%544$2@$0@@|@|@|@"])
  fun op WORD_LESS_EQ_LESS_TRANS x = x
    val op WORD_LESS_EQ_LESS_TRANS =
    DT(((("words",464),
        [("arithmetic",[154]),
         ("bool",[25,26,27,47,48,51,52,53,54,56,58,63,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[451,453])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%544$2@$1@@%562$1@$0@@@%562$2@$0@@|@|@|@"])
  fun op WORD_LESS_LESS_EQ_TRANS x = x
    val op WORD_LESS_LESS_EQ_TRANS =
    DT(((("words",465),
        [("arithmetic",[155]),
         ("bool",[25,26,27,47,48,51,52,53,54,56,58,63,105,124]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[451,453])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%562$2@$1@@%544$1@$0@@@%562$2@$0@@|@|@|@"])
  fun op WORD_LESS_EQ_CASES x = x
    val op WORD_LESS_EQ_CASES =
    DT(((("words",466),
        [("arithmetic",[144]),("bool",[25,26,47,48,53,54,63,94]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[453])]),["DISK_THM"]),
       [read"%95%8%95%19%344%544$1@$0@@%544$0@$1@@|@|@"])
  fun op WORD_LESS_CASES x = x
    val op WORD_LESS_CASES =
    DT(((("words",467),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[460,466])]),["DISK_THM"]),
       [read"%95%8%95%19%344%562$1@$0@@%544$0@$1@@|@|@"])
  fun op WORD_LESS_CASES_IMP x = x
    val op WORD_LESS_CASES_IMP =
    DT(((("words",468),
        [("bool",[25,26,43,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[450,460])]),["DISK_THM"]),
       [read"%95%8%95%19%163%131%623%562$1@$0@@@%623%137$1@$0@@@@%562$0@$1@@|@|@"])
  fun op WORD_LESS_ANTISYM x = x
    val op WORD_LESS_ANTISYM =
    DT(((("words",469),
        [("bool",[25,26,47,48,53,54,63,71,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[450,466])]),["DISK_THM"]),
       [read"%95%8%95%19%623%131%562$1@$0@@%562$0@$1@@@|@|@"])
  fun op WORD_LESS_EQ_ANTISYM x = x
    val op WORD_LESS_EQ_ANTISYM =
    DT(((("words",470),
        [("bool",[25,26,47,48,53,54,63,71,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[450])]),["DISK_THM"]),
       [read"%95%8%95%19%623%131%562$1@$0@@%544$0@$1@@@|@|@"])
  fun op WORD_LESS_EQ_REFL x = x
    val op WORD_LESS_EQ_REFL =
    DT(((("words",471),
        [("bool",[25,36,52,56]),("words",[460])]),["DISK_THM"]),
       [read"%95%8%544$0@$0@|@"])
  fun op WORD_LESS_EQUAL_ANTISYM x = x
    val op WORD_LESS_EQUAL_ANTISYM =
    DT(((("words",472),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[460,469])]),["DISK_THM"]),
       [read"%95%8%95%19%163%131%544$1@$0@@%544$0@$1@@@%137$1@$0@@|@|@"])
  fun op WORD_LESS_IMP_LESS_OR_EQ x = x
    val op WORD_LESS_IMP_LESS_OR_EQ =
    DT(((("words",473),
        [("bool",[25,26,43,47,48,53,54,58,63,71]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[460])]),["DISK_THM"]),
       [read"%95%8%95%19%163%562$1@$0@@%544$1@$0@@|@|@"])
  fun op WORD_LESS_REFL x = x
    val op WORD_LESS_REFL =
    DT(((("words",474),
        [("bool",[25,52,56]),("words",[450,460])]),["DISK_THM"]),
       [read"%95%8%623%562$0@$0@@|@"])
  fun op WORD_LESS_LESS_CASES x = x
    val op WORD_LESS_LESS_CASES =
    DT(((("words",475),
        [("bool",[25,26,43,47,48,53,54,58,63,71,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[460,467])]),["DISK_THM"]),
       [read"%95%8%95%19%344%137$1@$0@@%344%562$1@$0@@%562$0@$1@@@|@|@"])
  fun op WORD_NOT_GREATER x = x
    val op WORD_NOT_GREATER =
    DT(((("words",476),
        [("bool",[25,26,47,48,53,54,63,71,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[448,450])]),["DISK_THM"]),
       [read"%95%8%95%19%136%623%539$1@$0@@@%544$1@$0@@|@|@"])
  fun op WORD_LESS_NOT_EQ x = x
    val op WORD_LESS_NOT_EQ =
    DT(((("words",477),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[460,474])]),["DISK_THM"]),
       [read"%95%8%95%19%163%562$1@$0@@%623%137$1@$0@@@|@|@"])
  fun op WORD_NOT_LESS_EQ x = x
    val op WORD_NOT_LESS_EQ =
    DT(((("words",478),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[474])]),["DISK_THM"]),
       [read"%95%8%95%19%163%137$1@$0@@%623%562$1@$0@@@|@|@"])
  fun op WORD_HIGHER x = x
    val op WORD_HIGHER =
    DT(((("words",479),
        [("arithmetic",[9,24,25,41,46,59,71,93,173,178,180]),
         ("bool",[25,36,52,54,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[455,457])]),["DISK_THM"]),
       [read"%95%8%95%19%136%540$1@$0@@%548$0@$1@@|@|@"])
  fun op WORD_HIGHER_EQ x = x
    val op WORD_HIGHER_EQ =
    DT(((("words",480),
        [("arithmetic",[24,25,46,71,93,143,173,176,179,180]),
         ("bool",[25,36,52,54,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[456,458])]),["DISK_THM"]),
       [read"%95%8%95%19%136%541$1@$0@@%551$0@$1@@|@|@"])
  fun op WORD_NOT_LOWER x = x
    val op WORD_NOT_LOWER =
    DT(((("words",481),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180]),
         ("bool",[25,36,52,54,63,93,96,104,105,107]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[455,456])]),["DISK_THM"]),
       [read"%95%8%95%19%136%623%548$1@$0@@@%551$0@$1@@|@|@"])
  fun op WORD_NOT_LOWER_EQUAL x = x
    val op WORD_NOT_LOWER_EQUAL =
    DT(((("words",482),
        [("bool",[25,26,47,48,53,54,63,71,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[481])]),["DISK_THM"]),
       [read"%95%8%95%19%136%623%551$1@$0@@@%548$0@$1@@|@|@"])
  fun op WORD_LOWER_OR_EQ x = x
    val op WORD_LOWER_OR_EQ =
    DT(((("words",483),
        [("arithmetic",[10]),("bool",[25,36,56]),
         ("words",[149,455,456])]),["DISK_THM"]),
       [read"%95%8%95%19%136%551$1@$0@@%344%548$1@$0@@%137$1@$0@@@|@|@"])
  fun op WORD_HIGHER_OR_EQ x = x
    val op WORD_HIGHER_OR_EQ =
    DT(((("words",484),
        [("arithmetic",[11]),("bool",[25,36,56]),
         ("words",[149,457,458])]),["DISK_THM"]),
       [read"%95%8%95%19%136%541$1@$0@@%344%540$1@$0@@%137$1@$0@@@|@|@"])
  fun op WORD_LOWER_TRANS x = x
    val op WORD_LOWER_TRANS =
    DT(((("words",485),
        [("arithmetic",[34]),
         ("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[455])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%548$2@$1@@%548$1@$0@@@%548$2@$0@@|@|@|@"])
  fun op WORD_LOWER_EQ_TRANS x = x
    val op WORD_LOWER_EQ_TRANS =
    DT(((("words",486),
        [("arithmetic",[93]),
         ("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[456])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%551$2@$1@@%551$1@$0@@@%551$2@$0@@|@|@|@"])
  fun op WORD_LOWER_EQ_LOWER_TRANS x = x
    val op WORD_LOWER_EQ_LOWER_TRANS =
    DT(((("words",487),
        [("arithmetic",[154]),
         ("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[455,456])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%551$2@$1@@%548$1@$0@@@%548$2@$0@@|@|@|@"])
  fun op WORD_LOWER_LOWER_EQ_TRANS x = x
    val op WORD_LOWER_LOWER_EQ_TRANS =
    DT(((("words",488),
        [("arithmetic",[155]),
         ("bool",[25,26,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[455,456])]),["DISK_THM"]),
       [read"%95%8%95%19%95%24%163%131%548$2@$1@@%551$1@$0@@@%548$2@$0@@|@|@|@"])
  fun op WORD_LOWER_EQ_CASES x = x
    val op WORD_LOWER_EQ_CASES =
    DT(((("words",489),
        [("arithmetic",[144]),("bool",[25,63]),
         ("words",[456])]),["DISK_THM"]),
       [read"%95%8%95%19%344%551$1@$0@@%551$0@$1@@|@|@"])
  fun op WORD_LOWER_CASES x = x
    val op WORD_LOWER_CASES =
    DT(((("words",490),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[483,489])]),["DISK_THM"]),
       [read"%95%8%95%19%344%548$1@$0@@%551$0@$1@@|@|@"])
  fun op WORD_LOWER_CASES_IMP x = x
    val op WORD_LOWER_CASES_IMP =
    DT(((("words",491),
        [("bool",[25,26,43,47,48,53,54,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[481,483])]),["DISK_THM"]),
       [read"%95%8%95%19%163%131%623%548$1@$0@@@%623%137$1@$0@@@@%548$0@$1@@|@|@"])
  fun op WORD_LOWER_ANTISYM x = x
    val op WORD_LOWER_ANTISYM =
    DT(((("words",492),
        [("bool",[25,26,47,48,53,54,63,71,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[481,489])]),["DISK_THM"]),
       [read"%95%8%95%19%623%131%548$1@$0@@%548$0@$1@@@|@|@"])
  fun op WORD_LOWER_EQ_ANTISYM x = x
    val op WORD_LOWER_EQ_ANTISYM =
    DT(((("words",493),
        [("bool",[25,26,47,48,53,54,63,71,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[481])]),["DISK_THM"]),
       [read"%95%8%95%19%623%131%548$1@$0@@%551$0@$1@@@|@|@"])
  fun op WORD_LOWER_EQ_REFL x = x
    val op WORD_LOWER_EQ_REFL =
    DT(((("words",494),
        [("bool",[25,36,52,56]),("words",[483])]),["DISK_THM"]),
       [read"%95%8%551$0@$0@|@"])
  fun op WORD_LOWER_EQUAL_ANTISYM x = x
    val op WORD_LOWER_EQUAL_ANTISYM =
    DT(((("words",495),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[483,492])]),["DISK_THM"]),
       [read"%95%8%95%19%163%131%551$1@$0@@%551$0@$1@@@%137$1@$0@@|@|@"])
  fun op WORD_LOWER_IMP_LOWER_OR_EQ x = x
    val op WORD_LOWER_IMP_LOWER_OR_EQ =
    DT(((("words",496),
        [("bool",[25,26,43,47,48,53,54,58,63,71]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[483])]),["DISK_THM"]),
       [read"%95%8%95%19%163%548$1@$0@@%551$1@$0@@|@|@"])
  fun op WORD_LOWER_REFL x = x
    val op WORD_LOWER_REFL =
    DT(((("words",497),
        [("bool",[25,52,56]),("words",[481,483])]),["DISK_THM"]),
       [read"%95%8%623%548$0@$0@@|@"])
  fun op WORD_LOWER_LOWER_CASES x = x
    val op WORD_LOWER_LOWER_CASES =
    DT(((("words",498),
        [("bool",[25,26,43,47,48,53,54,58,63,71,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[483,490])]),["DISK_THM"]),
       [read"%95%8%95%19%344%137$1@$0@@%344%548$1@$0@@%548$0@$1@@@|@|@"])
  fun op WORD_NOT_HIGHER x = x
    val op WORD_NOT_HIGHER =
    DT(((("words",499),
        [("bool",[25,26,47,48,53,54,63,71,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[479,481])]),["DISK_THM"]),
       [read"%95%8%95%19%136%623%540$1@$0@@@%551$1@$0@@|@|@"])
  fun op WORD_LOWER_NOT_EQ x = x
    val op WORD_LOWER_NOT_EQ =
    DT(((("words",500),
        [("bool",
         [13,25,26,27,30,43,47,48,51,52,53,54,56,58,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[483,497])]),["DISK_THM"]),
       [read"%95%8%95%19%163%548$1@$0@@%623%137$1@$0@@@|@|@"])
  fun op WORD_NOT_LOWER_EQ x = x
    val op WORD_NOT_LOWER_EQ =
    DT(((("words",501),
        [("bool",[13,25,26,27,30,47,48,51,52,53,54,56,63,71,93,94,96]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[497])]),["DISK_THM"]),
       [read"%95%8%95%19%163%137$1@$0@@%623%548$1@$0@@@|@|@"])
  fun op WORD_L_PLUS_H x = x
    val op WORD_L_PLUS_H =
    DT(((("words",502),
        [("arithmetic",
         [0,8,17,18,24,25,26,27,34,41,46,59,62,64,71,74,76,93,101,172,173,
          177,180,183,200,217,219,269,274,278]),("bit",[24,43,48,94,100]),
         ("bool",
         [13,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,78,93,94,96,
          101,104,105,107,124,146]),("fcp",[13,15]),("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",[0,1,3,5,29,30,65,113,140,187])]),["DISK_THM"]),
       [read"%137%505%496@%495@@%502@"])
  fun op WORD_L_LESS_EQ x = x
    val op WORD_L_LESS_EQ =
    DT(((("words",503),
        [("arithmetic",
         [17,24,25,27,41,46,59,63,65,71,93,95,132,172,173,176,177,180,200,
          217,269,275,278]),("bit",[7,43,62,64,80]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,63,93,96,101,104,105,107,
          124]),("numeral",[0,3,5,7,8,9,32,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,1,29,113,115,140,144,145,164,447,453])]),["DISK_THM"]),
       [read"%95%8%544%496@$0@|@"])
  fun op WORD_LESS_EQ_H x = x
    val op WORD_LESS_EQ_H =
    DT(((("words",504),
        [("arithmetic",
         [0,17,24,25,26,27,34,41,46,59,62,63,65,71,93,95,120,130,132,172,
          173,176,177,180,200,217,219,269,274,275,278]),
         ("bit",[7,24,34,43,62,64,76,81]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,55,56,58,63,73,75,93,96,101,104,
          105,107,124]),("numeral",[0,3,5,7,8,33]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [0,1,3,30,113,115,140,144,145,164,446,453])]),["DISK_THM"]),
       [read"%95%8%544$0@%495@|@"])
  fun op WORD_L_LESS_H x = x
    val op WORD_L_LESS_H =
    DT(((("words",505),
        [("arithmetic",
         [17,24,25,26,34,41,46,59,71,81,85,93,173,180,200,217,274,278]),
         ("bit",[24]),
         ("bool",
         [25,26,36,43,47,48,51,52,53,54,56,58,63,93,94,96,104,105,107]),
         ("numeral",[3,6,7,8]),("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("words",
         [0,1,3,29,30,113,140,149,460,463,503,504])]),["DISK_THM"]),
       [read"%562%496@%495@"])
  fun op NOT_INT_MIN_ZERO x = x
    val op NOT_INT_MIN_ZERO =
    DT(((("words",506),
        [("bool",[25,53,54,63]),("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[444,447])]),["DISK_THM"]),
       [read"%623%137%496@%412%132@@@"])
  fun op ZERO_LO_INT_MIN x = x
    val op ZERO_LO_INT_MIN =
    DT(((("words",507),
        [("arithmetic",[46,59,71,93,172,173,177,180]),
         ("bool",[25,36,43,52,54,58,63,96,101,104,105]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[149,151,455,506])]),["DISK_THM"]),
       [read"%548%412%132@@%496@"])
  fun op WORD_0_LS x = x
    val op WORD_0_LS =
    DT(((("words",508),
        [("arithmetic",[46,71,93,173,176,180,219]),
         ("bool",[25,36,54,63,104]),("numeral",[3,8]),
         ("words",[110,140,456])]),["DISK_THM"]),
       [read"%95%81%551%412%132@@$0@|@"])
  fun op WORD_LS_T x = x
    val op WORD_LS_T =
    DT(((("words",509),
        [("arithmetic",
         [24,25,41,46,59,71,93,147,173,176,177,180,197,200,217]),
         ("bool",[25,36,51,52,54,63,93,96,101,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[2,28,110,140,150,456])]),["DISK_THM"]),
       [read"%95%81%551$0@%502@|@"])
  fun op WORD_ADD_LEFT_LO x = x
    val op WORD_ADD_LEFT_LO =
    DT(((("words",510),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,74,88,91,93,145,172,173,176,177,
          180,193,195,198,199,200,217,219,233,237,238,269]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,129,147]),("combin",[19]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[110,140,144,145,156,160,455,456])]),["DISK_THM"]),
       [read"%95%19%95%24%95%8%136%548%505$0@$2@@$1@@%179%551$2@$1@@%274%85%344%548$1@$0@@%131%623%137$3@%412%132@@@@%551%505%490$2@@$0@@$1@@@|@%412%130%473$1@@%473$2@@@@@%131%551%490$2@@$0@@%548$0@%505%490$2@@$1@@@@@|@|@|@"])
  fun op WORD_ADD_LEFT_LS x = x
    val op WORD_ADD_LEFT_LS =
    DT(((("words",511),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,74,88,91,93,145,147,172,173,176,
          177,180,193,195,197,198,200,217,219,233,237,238,269]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,129,147]),("combin",[19]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[110,140,144,145,156,160,456])]),["DISK_THM"]),
       [read"%95%19%95%24%95%8%136%551%505$0@$2@@$1@@%179%551$2@$1@@%274%85%344%551$1@$0@@%131%623%137$3@%412%132@@@@%551%505%490$2@@$0@@$1@@@|@%412%130%473$1@@%473$2@@@@@%131%551%490$2@@$0@@%551$0@%505%490$2@@$1@@@@@|@|@|@"])
  fun op WORD_ADD_RIGHT_LS x = x
    val op WORD_ADD_RIGHT_LS =
    DT(((("words",512),
        [("bool",[54,58,96,105,109,118,129]),
         ("words",[481,510])]),["DISK_THM"]),
       [read"%95%24%95%8%95%19%136%551$1@%505$0@$2@@@%179%551$2@$1@@%274%85%131%551$0@$1@@%344%137$3@%412%132@@@%548$1@%505%490$2@@$0@@@@|@%412%130%473$1@@%473$2@@@@@%344%548$0@%490$2@@@%551%505%490$2@@$1@@$0@@@@|@|@|@"])
  fun op WORD_ADD_RIGHT_LO x = x
    val op WORD_ADD_RIGHT_LO =
    DT(((("words",513),
        [("bool",[25,54,58,96,105,109,118,129,169]),
         ("words",[482,511])]),["DISK_THM"]),
       [read"%95%24%95%8%95%19%136%548$1@%505$0@$2@@@%179%551$2@$1@@%274%85%131%548$0@$1@@%344%137$3@%412%132@@@%548$1@%505%490$2@@$0@@@@|@%412%130%473$1@@%473$2@@@@@%344%548$0@%490$2@@@%548%505%490$2@@$1@@$0@@@@|@|@|@"])
  fun op WORD_MSB_INT_MIN_LS x = x
    val op WORD_MSB_INT_MIN_LS =
    DT(((("words",514),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200,217,278]),
         ("bool",[25,36,51,52,54,56,63,93,96,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,1,29,113,140,145,165,456])]),["DISK_THM"]),
       [read"%95%8%136%568$0@@%551%496@$0@@|@"])
  fun op WORD_LT_LO x = x
    val op WORD_LT_LO =
    DT(((("words",515),
        [("bool",[25,26,27,30,51,52,54,56,63]),
         ("words",[451,455,482,514])]),["DISK_THM"]),
       [read"%95%8%95%19%136%562$1@$0@@%344%131%551%496@$1@@%344%548$0@%496@@%548$1@$0@@@@%131%548$1@%496@@%131%548$0@%496@@%548$1@$0@@@@@|@|@"])
  fun op WORD_LE_LS x = x
    val op WORD_LE_LS =
    DT(((("words",516),
        [("bool",[25,26,27,30,51,52,54,56,63]),
         ("words",[453,456,482,514])]),["DISK_THM"]),
       [read"%95%8%95%19%136%544$1@$0@@%344%131%551%496@$1@@%344%548$0@%496@@%551$1@$0@@@@%131%548$1@%496@@%131%548$0@%496@@%551$1@$0@@@@@|@|@"])
  fun op WORD_LESS_NEG_LEFT x = x
    val op WORD_LESS_NEG_LEFT =
    DT(((("words",517),
        [("arithmetic",[22,25,26,219]),("bit",[98]),
         ("bool",[25,26,27,30,32,51,52,54,56,58,63,96]),("combin",[19]),
         ("pair",[16]),("sat",[1,3,5,6,7,11,15]),
         ("words",[0,76,83,110,144,150,151,343])]),["DISK_THM"]),
       [read"%95%8%95%19%136%548%490$1@@$0@@%131%623%137$0@%412%132@@@@%344%137$1@%412%132@@@%548%490$0@@$1@@@@|@|@"])
  fun op WORD_LESS_NEG_RIGHT x = x
    val op WORD_LESS_NEG_RIGHT =
    DT(((("words",518),
        [("arithmetic",[22,25,26,219]),("bit",[98]),
         ("bool",[25,26,27,30,32,51,52,54,56,58,63,96]),("combin",[19]),
         ("pair",[16]),("sat",[1,3,5,6,7,11,15]),
         ("words",[0,76,83,110,144,150,151,345,366])]),["DISK_THM"]),
       [read"%95%8%95%19%136%548$1@%490$0@@@%131%623%137$0@%412%132@@@@%344%137$1@%412%132@@@%548$0@%490$1@@@@@|@|@"])
  fun op WORD_LS_word_0 x = x
    val op WORD_LS_word_0 =
    DT(((("words",519),
        [("bool",[25,36,52,54,56,58,63]),
         ("words",[482,483,508])]),["DISK_THM"]),
       [read"%95%55%136%551$0@%412%132@@@%137$0@%412%132@@@|@"])
  fun op WORD_LO_word_0 x = x
    val op WORD_LO_word_0 =
    DT(((("words",520),
        [("bool",[25,36,51,56,58,63]),
         ("words",[481,482,508,519])]),["DISK_THM"]),
       [read"%131%95%55%136%548%412%132@@$0@@%623%137$0@%412%132@@@@|@@%96%56%623%549$0@%413%132@@@|@@"])
  fun op WORD_ADD_LEFT_LO2 x = x
    val op WORD_ADD_LEFT_LO2 =
    DT(((("words",521),
        [("arithmetic",[130]),
         ("bool",[25,26,27,32,52,54,56,58,63,64,105,125,129,169]),
         ("combin",[19]),
         ("words",[321,365,483,494,510,517,520])]),["DISK_THM"]),
       [read"%95%24%95%8%136%548%505$1@$0@@$0@@%131%623%137$0@%412%132@@@@%344%131%623%137$1@%412%132@@@@%548%490$1@@$0@@@%137$0@%490$1@@@@@|@|@"])
  fun op WORD_ADD_LEFT_LS2 x = x
    val op WORD_ADD_LEFT_LS2 =
    DT(((("words",522),
        [("arithmetic",[130]),
         ("bool",[25,26,27,32,52,54,56,58,63,64,105,125,129,169]),
         ("combin",[19]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[321,365,483,494,511,517,519])]),["DISK_THM"]),
       [read"%95%24%95%8%136%551%505$1@$0@@$0@@%344%137$1@%412%132@@@%131%623%137$0@%412%132@@@@%344%548%490$1@@$0@@%137$0@%490$1@@@@@@|@|@"])
  fun op WORD_ADD_RIGHT_LO2 x = x
    val op WORD_ADD_RIGHT_LO2 =
    DT(((("words",523),
        [("arithmetic",[130]),
         ("bool",[25,26,27,32,52,54,56,58,63,64,105,125,129,169]),
         ("combin",[19]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[321,494,513,518,520])]),["DISK_THM"]),
       [read"%95%24%95%8%136%548$0@%505$1@$0@@@%131%623%137$1@%412%132@@@@%344%137$0@%412%132@@@%548$0@%490$1@@@@@|@|@"])
  fun op WORD_ADD_RIGHT_LS2 x = x
    val op WORD_ADD_RIGHT_LS2 =
    DT(((("words",524),
        [("arithmetic",[130]),
         ("bool",[25,27,32,51,54,56,58,63,64,105,125,129,169]),
         ("combin",[19]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[321,483,494,508,512,518])]),["DISK_THM"]),
       [read"%95%24%95%8%136%551$0@%505$1@$0@@@%344%137$0@%412%132@@@%344%137$1@%412%132@@@%548$0@%490$1@@@@@|@|@"])
  fun op word_msb_neg x = x
    val op word_msb_neg =
    DT(((("words",525),
        [("bool",[25,26,27,36,51,52,56,63]),
         ("words",[507,514,515,520])]),["DISK_THM"]),
       [read"%95%81%136%568$0@@%562$0@%412%132@@@|@"])
  fun op word_abs x = x
    val op word_abs =
    DT(((("words",526),
        [("bool",[25,26,27,30,36,51,52,53,54,56,58,63,64,105,124]),
         ("fcp",[13,15]),("words",[89,525])]),["DISK_THM"]),
       [read"%95%81%137%504$0@@%195%40%344%131%623%568$1@@@%405$1@$0@@@%131%568$1@@%405%490$1@@$0@@@|@@|@"])
  fun op word_abs_word_abs x = x
    val op word_abs_word_abs =
    DT(((("words",527),
        [("arithmetic",[41,46,63,71,93,95,173,177,180]),
         ("bool",[25,26,27,30,36,52,54,56,58,63,64,96,101,104,105,129]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[89,113,155,345,439,442,525])]),["DISK_THM"]),
       [read"%95%81%137%504%504$0@@@%504$0@@|@"])
  fun op word_abs_neg x = x
    val op word_abs_neg =
    DT(((("words",528),
        [("arithmetic",[41,46,63,71,93,95,173,177,180]),
         ("bool",[25,26,27,30,36,48,52,54,56,58,63,64,96,101,104,105,129]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[89,113,155,345,366,439,442,445,525])]),["DISK_THM"]),
       [read"%95%81%137%504%490$0@@@%504$0@@|@"])
  fun op word_abs_diff x = x
    val op word_abs_diff =
    DT(((("words",529),
        [("bool",[25,53,54,63]),("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",[369,528])]),["DISK_THM"]),
       [read"%95%8%95%19%137%504%605$1@$0@@@%504%605$0@$1@@@|@|@"])
  fun op FST_ADD_WITH_CARRY x = x
    val op FST_ADD_WITH_CARRY =
    DT(((("words",530),
        [("arithmetic",[22]),("bool",[25,32,53,54,55,56,58,63,73,147]),
         ("combin",[19]),("pair",[8]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("words",
         [65,68,69,156,196,321,322,324,332,340,342])]),["DISK_THM"]),
       [read"%131%131%95%8%95%19%137%225%345%123$1@%121$0@%193@@@@@%505$1@$0@@|@|@@%131%96%9%96%20%138%226%346%125$1@%124%488$0@@%306@@@@@%606$1@$0@@|@|@@%97%10%97%21%139%227%347%127%489$1@@%126$0@%306@@@@@%607$0@$1@@|@|@@@@%131%113%57%96%9%138%226%346%125$0@%124%413$1@@%306@@@@@%606$0@%488%413$1@@@@|@|@@%113%57%97%21%139%227%347%127%414$1@@%126$0@%306@@@@@%607$0@%489%414$1@@@@|@|@@@"])
  fun op ADD_WITH_CARRY_SUB x = x
    val op ADD_WITH_CARRY_SUB =
    DT(((("words",531),
        [("arithmetic",
         [22,24,25,27,41,46,59,62,71,74,93,172,173,177,180,195,200,206,217,
          219,226,233,247,269,275]),("bit",[7,22,33]),
         ("bool",
         [8,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105]),
         ("marker",[6]),("numeral",[3,5,6,7,8]),("pair",[4,16]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),
         ("words",
         [0,68,69,76,83,110,140,141,144,145,156,159,160,194,322,341,
          481])]),["DISK_THM"]),
       [read"%95%85%95%90%162%345%123$1@%121%487$0@@%306@@@@%122%605$1@$0@@%116%551$0@$1@@%131%623%136%568$1@@%568$0@@@@%623%136%568%605$1@$0@@@%568$1@@@@@@@|@|@"])
  fun op word_eq_n2w x = x
    val op word_eq_n2w =
    DT(((("words",532),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,177,180,200,217,269]),
         ("bit",[0,15,16]),
         ("bool",[25,36,43,51,52,54,56,58,63,93,96,101,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,2,28,110,118,144,192])]),["DISK_THM"]),
       [read"%131%113%51%113%57%136%137%412$1@@%412$0@@@%295%353%444@@$1@$0@@|@|@@%131%113%57%136%137%412$0@@%490%412%299%170%343@@@@@@%296%353%444@@$0@@|@@%113%57%136%137%490%412%299%170%343@@@@@%412$0@@@%296%353%444@@$0@@|@@@"])
  fun op word_lt_n2w x = x
    val op word_lt_n2w =
    DT(((("words",533),
        [("bool",[25,32,36,56]),("combin",[19]),
         ("words",[0,140,164,451])]),["DISK_THM"]),
       [read"%113%13%113%22%136%562%412$1@@%412$0@@@%270%271%68%69%344%131%136$1@$0@@%134%293$3@%381%444@@@%293$2@%381%444@@@@@%131$1@%623$0@@@||@%169%130%353%444@@%299%170%343@@@@$1@@@%169%130%353%444@@%299%170%343@@@@$0@@@|@|@"])
  fun op word_gt_n2w x = x
    val op word_gt_n2w =
    DT(((("words",534),
        [("bool",[25,32,56,63]),("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,140,164,452])]),["DISK_THM"]),
       [read"%113%13%113%22%136%539%412$1@@%412$0@@@%270%271%68%69%344%131%136$1@$0@@%164%293$3@%381%444@@@%293$2@%381%444@@@@@%131%623$1@@$0@@||@%169%130%353%444@@%299%170%343@@@@$1@@@%169%130%353%444@@%299%170%343@@@@$0@@@|@|@"])
  fun op word_le_n2w x = x
    val op word_le_n2w =
    DT(((("words",535),
        [("bool",[25,32,36,56]),("combin",[19]),
         ("words",[0,140,164,453])]),["DISK_THM"]),
       [read"%113%13%113%22%136%544%412$1@@%412$0@@@%270%271%68%69%344%131%136$1@$0@@%135%293$3@%381%444@@@%293$2@%381%444@@@@@%131$1@%623$0@@@||@%169%130%353%444@@%299%170%343@@@@$1@@@%169%130%353%444@@%299%170%343@@@@$0@@@|@|@"])
  fun op word_ge_n2w x = x
    val op word_ge_n2w =
    DT(((("words",536),
        [("bool",[25,32,56,63]),("combin",[19]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,140,164,454])]),["DISK_THM"]),
       [read"%113%13%113%22%136%538%412$1@@%412$0@@@%270%271%68%69%344%131%136$1@$0@@%165%293$3@%381%444@@@%293$2@%381%444@@@@@%131%623$1@@$0@@||@%169%130%353%444@@%299%170%343@@@@$1@@@%169%130%353%444@@%299%170%343@@@@$0@@@|@|@"])
  fun op word_ls_n2w x = x
    val op word_ls_n2w =
    DT(((("words",537),
        [("bool",[25,36,56]),("words",[0,140,456])]),["DISK_THM"]),
       [read"%113%13%113%22%136%551%412$1@@%412$0@@@%135%293$1@%381%444@@@%293$0@%381%444@@@@|@|@"])
  fun op word_hi_n2w x = x
    val op word_hi_n2w =
    DT(((("words",538),
        [("bool",[25,36,56]),("words",[0,140,457])]),["DISK_THM"]),
       [read"%113%13%113%22%136%540%412$1@@%412$0@@@%164%293$1@%381%444@@@%293$0@%381%444@@@@|@|@"])
  fun op word_lo_n2w x = x
    val op word_lo_n2w =
    DT(((("words",539),
        [("bool",[25,36,56]),("words",[0,140,455])]),["DISK_THM"]),
       [read"%113%13%113%22%136%548%412$1@@%412$0@@@%134%293$1@%381%444@@@%293$0@%381%444@@@@|@|@"])
  fun op word_hs_n2w x = x
    val op word_hs_n2w =
    DT(((("words",540),
        [("bool",[25,36,56]),("words",[0,140,458])]),["DISK_THM"]),
       [read"%113%13%113%22%136%541%412$1@@%412$0@@@%165%293$1@%381%444@@@%293$0@%381%444@@@@|@|@"])
  fun op w2n_add x = x
    val op w2n_add =
    DT(((("words",541),
        [("arithmetic",
         [8,24,25,27,41,46,59,60,64,71,74,93,172,173,177,180,200,217,247,
          269,278]),("bit",[24]),
         ("bool",[25,36,43,51,52,53,54,58,63,93,96,101,104,105,107,124]),
         ("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[0,1,29,113,140,145,156,514,537])]),["DISK_THM"]),
       [read"%95%8%95%19%163%131%623%568$1@@@%623%568$0@@@@%158%473%505$1@$0@@@%115%473$1@@%473$0@@@@|@|@"])
  fun op saturate_w2w_n2w x = x
    val op saturate_w2w_n2w =
    DT(((("words",542),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,176,180,237]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,54,56,58,63,64,96,101,104,105,107,
          129]),("combin",[19]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[105,106,110,130,140,144])]),["DISK_THM"]),
       [read"%113%57%138%438%412$0@@@%285%51%181%131%135%354%445@@%353%444@@@%135%382%445@@$0@@@%503@%413$0@@|@%293$0@%381%444@@@@|@"])
  fun op saturate_w2w x = x
    val op saturate_w2w =
    DT(((("words",543),
        [("arithmetic",
         [24,25,26,27,41,46,59,60,71,93,95,172,173,176,177,180,198,217,
          269]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129,147]),("combin",[19]),("numeral",[3,5,8]),
         ("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [2,28,116,127,128,130,144,145,250,537,542])]),["DISK_THM"]),
       [read"%95%81%138%438$0@@%181%131%135%354%445@@%353%444@@@%551%482%503@@$0@@@%503@%477$0@@@|@"])
  fun op saturate_sub x = x
    val op saturate_sub =
    DT(((("words",544),
        [("arithmetic",[24,25,27,46,71,93,173,176,180]),
         ("bool",[25,26,27,30,36,54,56,58,63,64,96,101,104,105,129]),
         ("numeral",[3,5,8]),
         ("words",[108,141,387,388,456])]),["DISK_THM"]),
       [read"%95%8%95%19%137%437$1@$0@@%180%551$1@$0@@%412%132@@%605$1@$0@@@|@|@"])
  fun op saturate_add x = x
    val op saturate_add =
    DT(((("words",545),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,195,197,198,
          200,217,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          129]),("numeral",[3,5,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",
         [2,28,65,105,107,110,140,144,145,387,456])]),["DISK_THM"]),
       [read"%95%8%95%19%137%433$1@$0@@%180%551%605%502@$1@@$0@@%502@%505$1@$0@@@|@|@"])
  fun op NOT_FINITE_IMP_dimword_2 x = x
    val op NOT_FINITE_IMP_dimword_2 =
    DT(((("words",546),
        [("arithmetic",[275]),("bool",[25,26,27,53,54,56,58,105,124]),
         ("fcp",[4]),("words",[0])]),["DISK_THM"]),
       [read"%163%623%198%315@@@%158%381%444@@%299%171%343@@@@"])
  fun op saturate_mul x = x
    val op saturate_mul =
    DT(((("words",547),
        [("arithmetic",
         [24,25,26,27,41,46,53,59,60,71,93,102,148,149,172,173,176,177,180,
          198,200,217,269]),("bit",[17]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          124,129,147]),("fcp",[19]),("numeral",[3,5,6,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",
         [0,2,28,66,105,109,110,140,144,145,247,456,546])]),["DISK_THM"]),
       [read"%95%8%95%19%137%434$1@$0@@%180%131%198%315@@%553%479%502@@%573%479$1@@%479$0@@@@@%502@%569$1@$0@@@|@|@"])
  fun op WORD_DIVISION x = x
    val op WORD_DIVISION =
    DT(((("words",548),
        [("arithmetic",[29,34,209,217,219]),
         ("bool",[25,51,56,58,63,105,124]),
         ("words",[70,72,110,140,144,145,156,157,455])]),["DISK_THM"]),
       [read"%95%81%163%623%137$0@%412%132@@@@%95%75%131%137$0@%505%569%519$0@$1@@$1@@%566$0@$1@@@@%548%566$0@$1@@$1@@|@@|@"])
  fun op word_reverse_0 x = x
    val op word_reverse_0 =
    DT(((("words",549),
        [("arithmetic",[24,25,26,27,41,46,59,71,93,173,180,200]),
         ("bool",[25,26,27,36,51,53,54,58,63,96,101,104,105,124]),
         ("fcp",[13,15]),("numeral",[3,8]),
         ("words",[53,113,185])]),["DISK_THM"]),
       [read"%137%585%412%132@@@%412%132@@"])
  fun op word_reverse_word_T x = x
    val op word_reverse_word_T =
    DT(((("words",550),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,172,173,177,180,195,200,269]),
         ("bool",
         [25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,124]),
         ("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[53,113,187,192])]),["DISK_THM"]),
       [read"%137%585%490%412%299%170%343@@@@@@%490%412%299%170%343@@@@@"])
  fun op sw2sw_0 x = x
    val op sw2sw_0 =
    DT(((("words",551),
        [("arithmetic",[22,217,274]),("bit",[14,48]),
         ("bool",[25,26,27,32,52,56,58,64,105,129]),("combin",[19]),
         ("numeral",[3,7]),("words",[7,151])]),["DISK_THM"]),
       [read"%138%440%412%132@@@%413%132@@"])
  fun op sw2sw_word_T x = x
    val op sw2sw_word_T =
    DT(((("words",552),
        [("arithmetic",[24,25,27,41,46,59,71,93,173,180,200]),
         ("bool",
         [5,25,26,27,30,36,51,52,53,54,58,63,64,93,96,101,104,105,107,124,
          129]),("fcp",[13]),("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[47,113,187,192,229])]),["DISK_THM"]),
       [read"%137%442%491%413%299%170%343@@@@@@%490%412%299%170%343@@@@@"])
  fun op word_div_1 x = x
    val op word_div_1 =
    DT(((("words",553),
        [("arithmetic",[232]),("words",[70,141,152])]),["DISK_THM"]),
       [read"%95%75%137%519$0@%412%299%170%343@@@@@$0@|@"])
  fun op word_bit_0 x = x
    val op word_bit_0 =
    DT(((("words",554),
        [("bit",[48]),("bool",[26,27,51]),("words",[238])]),["DISK_THM"]),
       [read"%113%37%623%513$0@%412%132@@@|@"])
  fun op word_lsb_word_T x = x
    val op word_lsb_word_T =
    DT(((("words",555),
        [("bool",[25,63]),("words",[46,113,187,192])]),["DISK_THM"]),
       [read"%554%490%412%299%170%343@@@@@"])
  fun op word_msb_word_T x = x
    val op word_msb_word_T =
    DT(((("words",556),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200]),
         ("bool",[25,36,51,52,54,63,93,96,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[47,113,187,192])]),["DISK_THM"]),
       [read"%568%490%412%299%170%343@@@@@"])
  fun op word_bit_0_word_T x = x
    val op word_bit_0_word_T =
    DT(((("words",557),
        [("arithmetic",[46,71,93,173,176,180]),
         ("bool",[25,36,51,54,63,104]),("numeral",[3,8]),
         ("words",[52,113,187,192])]),["DISK_THM"]),
       [read"%513%132@%490%412%299%170%343@@@@@"])
  fun op word_log2_1 x = x
    val op word_log2_1 =
    DT(((("words",558),
        [("bit",[9]),("bool",[25,54,56]),("logroot",[13]),
         ("numeral",[3,7]),("words",[67,144,152])]),["DISK_THM"]),
       [read"%137%550%412%299%170%343@@@@@%412%132@@"])
  fun op word_join_0 x = x
    val op word_join_0 =
    DT(((("words",559),
        [("bool",[25,32,56]),("combin",[19]),
         ("words",[101,200,251,407])]),["DISK_THM"]),
       [read"%95%8%144%543%413%132@@$0@@%481$0@@|@"])
  fun op word_concat_0_0 x = x
    val op word_concat_0_0 =
    DT(((("words",560),[("words",[102,251,559])]),["DISK_THM"]),
       [read"%139%517%412%132@@%413%132@@@%414%132@@"])
  fun op w2w_eq_n2w x = x
    val op w2w_eq_n2w =
    DT(((("words",561),
        [("arithmetic",
         [17,22,24,25,27,41,46,59,71,93,172,173,176,177,180,199,200,217,
          269,295]),("bit",[29,45,51]),
         ("bool",
         [25,26,27,30,36,43,52,54,56,58,63,64,93,96,101,104,105,107,124,
          129]),("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[0,113,116,129,144,145,250])]),["DISK_THM"]),
       [read"%95%85%113%91%163%131%135%353%444@@%354%445@@@%134$0@%381%444@@@@%136%138%477$1@@%413$0@@@%137$1@%412$0@@@@|@|@"])
  fun op word_extract_eq_n2w x = x
    val op word_extract_eq_n2w =
    DT(((("words",562),
        [("arithmetic",[22,24,25,27,46,71,93,172,173,176,177,180,198,269]),
         ("bool",[25,30,36,43,51,52,54,56,58,63,93,96,101,104,105]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[256,283,561])]),["DISK_THM"]),
       [read"%95%85%113%37%113%91%163%131%135%353%444@@%354%445@@@%131%135%130%353%444@@%299%170%343@@@@$1@@%134$0@%381%444@@@@@%136%138%521$1@%132@$2@@%413$0@@@%137$2@%412$0@@@@|@|@|@"])
  fun op word_concat_0 x = x
    val op word_concat_0 =
    DT(((("words",563),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,95,130,172,173,176,180,198,217,269,275]),
         ("bit",[43]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,65,96,101,104,105,124,
          129,147]),("fcp",[4,13,15,19]),("numeral",[3,5,8]),
         ("words",[0,5,102,144,228,232,250,280,559,561])]),["DISK_THM"]),
       [read"%113%87%163%131%198%315@@%134$0@%382%445@@@@%139%517%412%132@@%413$0@@@%414$0@@@|@"])
  fun op word_concat_0_eq x = x
    val op word_concat_0_eq =
    DT(((("words",564),
        [("arithmetic",[24,25,41,46,59,71,93,173,176,180,217]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,96,101,104,105,107,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[129,144,145,563])]),["DISK_THM"]),
       [read"%96%86%113%91%163%131%198%315@@%131%135%354%445@@%355%446@@@%134$0@%382%445@@@@@%136%139%517%412%132@@$1@@%414$0@@@%138$1@%413$0@@@@|@|@"])
  fun op word_join_word_T x = x
    val op word_join_word_T =
    DT(((("words",565),
        [("arithmetic",[24,25,26,27,41,46,59,69,71,74,93,173,176,180,200]),
         ("bool",
         [25,26,27,30,32,36,51,52,53,54,56,58,63,64,96,101,104,105,124,129,
          147]),("combin",[19]),("fcp",[13,15,19]),("numeral",[3,5,8]),
         ("words",[33,90,101,113,187,192,228])]),["DISK_THM"]),
       [read"%143%542%490%412%299%170%343@@@@@%491%413%299%170%343@@@@@@%494%417%299%170%343@@@@@"])
  fun op word_concat_word_T x = x
    val op word_concat_word_T =
    DT(((("words",566),[("words",[102,565])]),["DISK_THM"]),
       [read"%139%517%490%412%299%170%343@@@@@%491%413%299%170%343@@@@@@%486%494%417%299%170%343@@@@@@"])
  fun op lsr_1_word_T x = x
    val op lsr_1_word_T =
    DT(((("words",567),
        [("arithmetic",[199]),
         ("bool",[25,26,27,30,51,53,54,58,63,105,124]),("fcp",[13,15]),
         ("words",[91,187,190,192])]),["DISK_THM"]),
       [read"%137%559%490%412%299%170%343@@@@@%299%170%343@@@@%495@"])
  fun op word_rrx_0 x = x
    val op word_rrx_0 =
    DT(((("words",568),
        [("bool",[5,25,26,27,30,36,51,52,53,54,56,58,63,64,105,124]),
         ("fcp",[13,15]),("numeral",[3]),("pair",[4]),
         ("words",[95,163,185,189,407])]),["DISK_THM"]),
       [read"%131%159%594%117%193@%412%132@@@@%117%193@%412%132@@@@%160%595%118%306@%413%132@@@@%118%193@%497@@@"])
  fun op word_rrx_word_T x = x
    val op word_rrx_word_T =
    DT(((("words",569),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,199,269]),
         ("bool",
         [5,25,26,27,30,36,43,51,52,53,54,58,63,64,93,96,101,104,105,107,
          124]),("fcp",[13,15]),("numeral",[3,5,8]),("pair",[4]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[95,187,190,192,555,567])]),["DISK_THM"]),
       [read"%131%159%594%117%193@%490%412%299%170%343@@@@@@@%117%306@%495@@@%160%595%118%306@%491%413%299%170%343@@@@@@@%118%306@%491%413%299%170%343@@@@@@@"])
  fun op word_T_not_zero x = x
    val op word_T_not_zero =
    DT(((("words",570),
        [("arithmetic",[217,219]),("bool",[25,54,63]),("numeral",[3,6]),
         ("words",[110,114,144,366])]),["DISK_THM"]),
       [read"%623%137%490%412%299%170%343@@@@@%412%132@@@"])
  fun op WORD_LS_word_T x = x
    val op WORD_LS_word_T =
    DT(((("words",571),
        [("bool",[25,26,27,36,51,52,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[192,481,483,509])]),["DISK_THM"]),
       [read"%131%95%55%136%551%490%412%299%170%343@@@@@$0@@%137$0@%490%412%299%170%343@@@@@@|@@%96%56%552$0@%491%413%299%170%343@@@@@|@@"])
  fun op WORD_LO_word_T x = x
    val op WORD_LO_word_T =
    DT(((("words",572),
        [("bool",[25,36,51,56,58,63]),
         ("words",[192,481,482,509,571])]),["DISK_THM"]),
       [read"%131%95%55%623%548%490%412%299%170%343@@@@@$0@@|@@%96%56%136%549$0@%491%413%299%170%343@@@@@@%623%138$0@%491%413%299%170%343@@@@@@@|@@"])
  fun op WORD_LESS_0_word_T x = x
    val op WORD_LESS_0_word_T =
    DT(((("words",573),
        [("bool",[25,26,27,51,52,54,63]),
         ("words",[444,451,453,556])]),["DISK_THM"]),
       [read"%131%623%562%412%132@@%490%412%299%170%343@@@@@@@%131%623%545%413%132@@%491%413%299%170%343@@@@@@@%131%563%492%414%299%170%343@@@@@%414%132@@@%546%493%415%299%170%343@@@@@%415%132@@@@@"])
  fun op word_reverse_thm x = x
    val op word_reverse_thm =
    DT(((("words",574),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,114,172,173,176,177,180,195,200,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124]),("fcp",[13,15]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[31,32,33,34,53,90,91,185,193])]),["DISK_THM"]),
       [read"%95%81%95%75%113%57%131%137%585%585$2@@@$2@@%131%137%585%555$2@$0@@@%559%585$2@@$0@@@%131%137%585%559$2@$0@@@%555%585$2@@$0@@@%131%137%585%578$2@$1@@@%578%585$2@@%585$1@@@@%131%137%585%507$2@$1@@@%507%585$2@@%585$1@@@@%131%137%585%618$2@$1@@@%618%585$2@@%585$1@@@@%131%137%585%487$2@@@%487%585$2@@@@%131%137%585%412%132@@@%412%132@@@%131%137%585%490%412%299%170%343@@@@@@%490%412%299%170%343@@@@@@%131%136%137%585$2@@%412%132@@@%137$2@%412%132@@@@%136%137%585$2@@%490%412%299%170%343@@@@@@%137$2@%490%412%299%170%343@@@@@@@@@@@@@@@@|@|@|@"])
  fun op bit_count_upto_0 x = x
    val op bit_count_upto_0 =
    DT(((("words",575),
        [("bool",[25,36,56]),("sum_num",[12]),
         ("words",[62])]),["DISK_THM"]),
       [read"%95%81%158%349%132@$0@@%132@|@"])
  fun op bit_count_upto_SUC x = x
    val op bit_count_upto_SUC =
    DT(((("words",576),
        [("arithmetic",[26,91]),("bool",[25,56]),("sum_num",[12]),
         ("words",[62])]),["DISK_THM"]),
       [read"%95%81%113%57%158%349%304$0@@$1@@%115%186%405$1@$0@@%299%170%343@@@%132@@%349$0@$1@@@|@|@"])
  fun op bit_count_upto_is_zero x = x
    val op bit_count_upto_is_zero =
    DT(((("words",577),
        [("arithmetic",[24,25,27,41,46,59,71,79,93,173,177,180]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,56,58,63,64,71,92,96,101,104,105,
          124]),("num",[9]),("numeral",[3,5,6,8]),("prim_rec",[6,15]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18]),("sum_num",[12]),
         ("words",[62])]),["DISK_THM"]),
       [read"%113%57%95%81%136%158%349$1@$0@@%132@@%113%40%163%134$0@$2@@%623%405$1@$0@@@|@@|@|@"])
  fun op bit_count_is_zero x = x
    val op bit_count_is_zero =
    DT(((("words",578),
        [("bool",[25,36,56]),("words",[63,186,577])]),["DISK_THM"]),
       [read"%95%81%136%158%348$0@@%132@@%137$0@%412%132@@@|@"])
  fun op WORD_FINITE x = x
    val op WORD_FINITE =
    DT(((("words",579),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180]),
         ("bool",
         [14,25,26,27,36,37,42,43,51,52,53,54,55,56,58,63,75,93,96,99,104,
          105,107,124]),("num",[9]),("numeral",[3,5,8]),("pair",[4]),
         ("pred_set",[3,6,10,14,18,24,80,185,187,192]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[145])]),["DISK_THM"]), [read"%101%65%221$0@|@"])
  fun op WORD_SET_INDUCT x = x
    val op WORD_SET_INDUCT =
    DT(((("words",580),
        [("bool",[51,53,63]),("pred_set",[186]),
         ("words",[579])]),["DISK_THM"]),
       [read"%103%2%163%131$0%189@@%101%65%163$1$0@@%95%30%163%623%236$0@$1@@@$2%238$0@$1@@@|@@|@@@%101%65$1$0@|@@|@"])
  fun op SUC_WORD_PRED x = x
    val op SUC_WORD_PRED =
    DT(((("words",581),
        [("arithmetic",[24,25,27,28,41,46,59,64,71,91,93,173,180,217]),
         ("bool",[25,27,36,53,54,56,58,63,96,101,104,105,124]),
         ("numeral",[3,5,8]),("words",[140,145,156,335])]),["DISK_THM"]),
       [read"%95%85%163%623%137$0@%412%132@@@@%158%304%473%605$0@%412%299%170%343@@@@@@@%473$0@@@|@"])
  fun op WORD_PRED_THM x = x
    val op WORD_PRED_THM =
    DT(((("words",582),
        [("arithmetic",[24,25,46,59,71,93,172,173,180]),
         ("bool",[25,36,43,54,63,96,101,104,105]),("numeral",[3,8]),
         ("words",[581])]),["DISK_THM"]),
       [read"%95%50%163%623%137$0@%412%132@@@@%134%473%605$0@%412%299%170%343@@@@@@%473$0@@@|@"])
  fun op LSR_LESS x = x
    val op LSR_LESS =
    DT(((("words",583),
        [("arithmetic",
         [8,18,28,41,46,59,71,76,93,172,173,177,180,183,236,274]),
         ("bool",
         [14,25,26,27,36,43,52,53,54,56,58,63,93,96,101,104,105,107,124]),
         ("num",[7,9]),("numeral",[3,5,7,8]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[141,418])]),["DISK_THM"]),
       [read"%113%51%95%90%163%131%623%137$0@%412%132@@@@%134%132@$1@@@%134%473%559$0@$1@@@%473$0@@@|@|@"])
  fun op word_sub_w2n x = x
    val op word_sub_w2n =
    DT(((("words",584),
        [("arithmetic",[24,25,26,41,46,59,71,93,128,146,172,173,180,217]),
         ("bool",
         [2,15,25,26,36,43,53,54,56,58,63,74,84,96,101,104,105,124]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[140,145,156,335,456])]),["DISK_THM"]),
       [read"%95%85%95%90%163%551$0@$1@@%158%473%605$1@$0@@@%130%473$1@@%473$0@@@@|@|@"])
  fun op WORD_LE_EQ_LS x = x
    val op WORD_LE_EQ_LS =
    DT(((("words",585),
        [("arithmetic",[46,63,71,93,173,176,180,217,219,220,274]),
         ("bit",[0,1,5,7]),
         ("bool",[8,25,26,27,36,51,52,53,54,56,58,63,104,105,124]),
         ("numeral",[3,6,7,8]),("sat",[1,3,5,6,7,11,15]),
         ("words",[110,140,145,456,535])]),["DISK_THM"]),
       [read"%95%85%95%90%163%131%544%412%132@@$1@@%544%412%132@@$0@@@%136%544$1@$0@@%551$1@$0@@@|@|@"])
  fun op WORD_LT_EQ_LO x = x
    val op WORD_LT_EQ_LO =
    DT(((("words",586),
        [("arithmetic",[46,63,71,93,173,176,180,217,219,220,274]),
         ("bit",[0,1,5,7]),
         ("bool",[8,25,26,27,36,51,52,53,54,56,58,63,104,105,124]),
         ("numeral",[3,6,7,8]),("sat",[1,3,5,6,7,11,15]),
         ("words",[110,140,145,455,533,535])]),["DISK_THM"]),
       [read"%95%85%95%90%163%131%544%412%132@@$1@@%544%412%132@@$0@@@%136%562$1@$0@@%548$1@$0@@@|@|@"])
  fun op WORD_ZERO_LE x = x
    val op WORD_ZERO_LE =
    DT(((("words",587),
        [("arithmetic",[46,60,63,71,93,173,176,180,217,219,220,274]),
         ("bit",[0,1,5,7]),("bool",[8,25,36,51,52,54,56,58,63,104]),
         ("numeral",[3,6,7,8]),("sat",[1,3,5,6,7,11,15]),
         ("words",[110,140,145,164,165,535])]),["DISK_THM"]),
       [read"%95%81%136%544%412%132@@$0@@%134%473$0@@%242%444@@@|@"])
  fun op WORD_LT_SUB_UPPER x = x
    val op WORD_LT_SUB_UPPER =
    DT(((("words",588),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,177,180,269]),
         ("bool",[25,26,27,36,43,51,52,53,54,58,63,93,96,101,104,105,124]),
         ("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",
         [153,455,456,462,463,473,477,584,585,586,587])]),["DISK_THM"]),
       [read"%95%85%95%90%163%131%562%412%132@@$0@@%562$0@$1@@@%562%605$1@$0@@$1@@|@|@"])
  fun op WORD_SUB_LT x = x
    val op WORD_SUB_LT =
    DT(((("words",589),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,180,269]),
         ("bool",[25,36,43,51,52,53,54,55,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",
         [352,456,460,463,473,477,584,585,587,588])]),["DISK_THM"]),
       [read"%95%85%95%90%163%131%562%412%132@@$0@@%562$0@$1@@@%131%562%412%132@@%605$1@$0@@@%562%605$1@$0@@$1@@@|@|@"])
  fun op WORD_SUB_LE x = x
    val op WORD_SUB_LE =
    DT(((("words",590),
        [("arithmetic",[24,25,41,46,59,71,93,172,173,180,269]),
         ("bool",[25,36,43,51,52,53,54,55,56,58,63,96,101,104,105,124]),
         ("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[333,357,456,460,463,584,585,587,588])]),["DISK_THM"]),
       [read"%95%85%95%90%163%131%544%412%132@@$0@@%544$0@$1@@@%131%544%412%132@@%605$1@$0@@@%544%605$1@$0@@$1@@@|@|@"])
  fun op dimindex_1 x = x
    val op dimindex_1 =
    DT(((("words",591),[("fcp",[62])]),["DISK_THM"]),
       [read"%158%378%469@@%299%170%343@@@"])
  fun op finite_1 x = x
    val op finite_1 =
    DT(((("words",592),[("bool",[25,63]),("fcp",[63])]),["DISK_THM"]),
       [read"%222%338@"])
  fun op INT_MIN_1 x = x
    val op INT_MIN_1 =
    DT(((("words",593),
        [("arithmetic",[130]),("fcp",[62]),("numeral",[33]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%265%469@@%299%170%343@@@"])
  fun op dimword_1 x = x
    val op dimword_1 =
    DT(((("words",594),
        [("arithmetic",[70]),("words",[111,593])]),["DISK_THM"]),
       [read"%158%404%469@@%299%171%343@@@"])
  fun op dimindex_2 x = x
    val op dimindex_2 =
    DT(((("words",595),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%372%463@@%299%171%343@@@"])
  fun op finite_2 x = x
    val op finite_2 =
    DT(((("words",596),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%215%332@"])
  fun op INT_MIN_2 x = x
    val op INT_MIN_2 =
    DT(((("words",597),
        [("arithmetic",[122,275]),("bool",[14,54,58,63,64]),
         ("fcp",[38,62,63]),("numeral",[3,7,12,15,16,17]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%259%463@@%299%171%343@@@"])
  fun op dimword_2 x = x
    val op dimword_2 =
    DT(((("words",598),
        [("bool",[8,14,26,27,56,64]),("numeral",[3,5,17,21,34,35,40,41]),
         ("words",[111,597])]),["DISK_THM"]),
       [read"%158%398%463@@%299%171%170%343@@@@"])
  fun op dimindex_3 x = x
    val op dimindex_3 =
    DT(((("words",599),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[60,62,63]),
         ("numeral",[0,3,5,12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%377%468@@%299%170%170%343@@@@"])
  fun op finite_3 x = x
    val op finite_3 =
    DT(((("words",600),[("bool",[25,63]),("fcp",[61,63])]),["DISK_THM"]),
       [read"%220%337@"])
  fun op INT_MIN_3 x = x
    val op INT_MIN_3 =
    DT(((("words",601),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[60,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%264%468@@%299%171%170%343@@@@"])
  fun op dimword_3 x = x
    val op dimword_3 =
    DT(((("words",602),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,601])]),["DISK_THM"]),
       [read"%158%403%468@@%299%171%170%170%343@@@@@"])
  fun op dimindex_4 x = x
    val op dimindex_4 =
    DT(((("words",603),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,39,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%368%459@@%299%171%170%343@@@@"])
  fun op finite_4 x = x
    val op finite_4 =
    DT(((("words",604),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%211%328@"])
  fun op INT_MIN_4 x = x
    val op INT_MIN_4 =
    DT(((("words",605),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,62,63]),("numeral",[3,7,9,12,15,16,17,32,33]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%255%459@@%299%171%170%170%343@@@@@"])
  fun op dimword_4 x = x
    val op dimword_4 =
    DT(((("words",606),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,605])]),["DISK_THM"]),
       [read"%158%394%459@@%299%171%170%170%170%343@@@@@@"])
  fun op dimindex_5 x = x
    val op dimindex_5 =
    DT(((("words",607),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%374%465@@%299%170%171%343@@@@"])
  fun op finite_5 x = x
    val op finite_5 =
    DT(((("words",608),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%217%334@"])
  fun op INT_MIN_5 x = x
    val op INT_MIN_5 =
    DT(((("words",609),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%261%465@@%299%171%170%170%170%343@@@@@@"])
  fun op dimword_5 x = x
    val op dimword_5 =
    DT(((("words",610),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,609])]),["DISK_THM"]),
       [read"%158%400%465@@%299%171%170%170%170%170%343@@@@@@@"])
  fun op dimindex_6 x = x
    val op dimindex_6 =
    DT(((("words",611),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%371%462@@%299%171%171%343@@@@"])
  fun op finite_6 x = x
    val op finite_6 =
    DT(((("words",612),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%214%331@"])
  fun op INT_MIN_6 x = x
    val op INT_MIN_6 =
    DT(((("words",613),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%258%462@@%299%171%170%170%170%170%343@@@@@@@"])
  fun op dimword_6 x = x
    val op dimword_6 =
    DT(((("words",614),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,613])]),["DISK_THM"]),
       [read"%158%397%462@@%299%171%170%170%170%170%170%343@@@@@@@@"])
  fun op dimindex_7 x = x
    val op dimindex_7 =
    DT(((("words",615),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[60,61,62,63]),
         ("numeral",[0,3,5,12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%376%467@@%299%170%170%170%343@@@@@"])
  fun op finite_7 x = x
    val op finite_7 =
    DT(((("words",616),[("bool",[25,63]),("fcp",[61,63])]),["DISK_THM"]),
       [read"%219%336@"])
  fun op INT_MIN_7 x = x
    val op INT_MIN_7 =
    DT(((("words",617),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%263%467@@%299%171%170%170%170%170%170%343@@@@@@@@"])
  fun op dimword_7 x = x
    val op dimword_7 =
    DT(((("words",618),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,617])]),["DISK_THM"]),
       [read"%158%402%467@@%299%171%170%170%170%170%170%170%343@@@@@@@@@"])
  fun op dimindex_8 x = x
    val op dimindex_8 =
    DT(((("words",619),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,39,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%364%455@@%299%171%170%170%343@@@@@"])
  fun op finite_8 x = x
    val op finite_8 =
    DT(((("words",620),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%207%324@"])
  fun op INT_MIN_8 x = x
    val op INT_MIN_8 =
    DT(((("words",621),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,62,63]),("numeral",[3,7,9,12,15,16,17,32,33]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%251%455@@%299%171%170%170%170%170%170%170%343@@@@@@@@@"])
  fun op dimword_8 x = x
    val op dimword_8 =
    DT(((("words",622),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,621])]),["DISK_THM"]),
       [read"%158%390%455@@%299%171%170%170%170%170%170%170%170%343@@@@@@@@@@"])
  fun op dimindex_9 x = x
    val op dimindex_9 =
    DT(((("words",623),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%373%464@@%299%170%171%170%343@@@@@"])
  fun op finite_9 x = x
    val op finite_9 =
    DT(((("words",624),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%216%333@"])
  fun op INT_MIN_9 x = x
    val op INT_MIN_9 =
    DT(((("words",625),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%260%464@@%299%171%170%170%170%170%170%170%170%343@@@@@@@@@@"])
  fun op dimword_9 x = x
    val op dimword_9 =
    DT(((("words",626),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,625])]),["DISK_THM"]),
       [read"%158%399%464@@%299%171%170%170%170%170%170%170%170%170%343@@@@@@@@@@@"])
  fun op dimindex_10 x = x
    val op dimindex_10 =
    DT(((("words",627),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%369%460@@%299%171%171%170%343@@@@@"])
  fun op finite_10 x = x
    val op finite_10 =
    DT(((("words",628),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%212%329@"])
  fun op INT_MIN_10 x = x
    val op INT_MIN_10 =
    DT(((("words",629),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%256%460@@%299%171%170%170%170%170%170%170%170%170%343@@@@@@@@@@@"])
  fun op dimword_10 x = x
    val op dimword_10 =
    DT(((("words",630),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,629])]),["DISK_THM"]),
       [read"%158%395%460@@%299%171%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@"])
  fun op dimindex_11 x = x
    val op dimindex_11 =
    DT(((("words",631),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%375%466@@%299%170%170%171%343@@@@@"])
  fun op finite_11 x = x
    val op finite_11 =
    DT(((("words",632),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%218%335@"])
  fun op INT_MIN_11 x = x
    val op INT_MIN_11 =
    DT(((("words",633),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%262%466@@%299%171%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@"])
  fun op dimword_11 x = x
    val op dimword_11 =
    DT(((("words",634),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,633])]),["DISK_THM"]),
       [read"%158%401%466@@%299%171%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@"])
  fun op dimindex_12 x = x
    val op dimindex_12 =
    DT(((("words",635),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%367%458@@%299%171%170%171%343@@@@@"])
  fun op finite_12 x = x
    val op finite_12 =
    DT(((("words",636),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%210%327@"])
  fun op INT_MIN_12 x = x
    val op INT_MIN_12 =
    DT(((("words",637),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%254%458@@%299%171%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@"])
  fun op dimword_12 x = x
    val op dimword_12 =
    DT(((("words",638),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,637])]),["DISK_THM"]),
       [read"%158%393%458@@%299%171%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@"])
  fun op dimindex_16 x = x
    val op dimindex_16 =
    DT(((("words",639),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,39,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%362%453@@%299%171%170%170%170%343@@@@@@"])
  fun op finite_16 x = x
    val op finite_16 =
    DT(((("words",640),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%205%322@"])
  fun op INT_MIN_16 x = x
    val op INT_MIN_16 =
    DT(((("words",641),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,62,63]),("numeral",[3,7,9,12,15,16,17,32,33]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%249%453@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@"])
  fun op dimword_16 x = x
    val op dimword_16 =
    DT(((("words",642),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,641])]),["DISK_THM"]),
       [read"%158%388%453@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_20 x = x
    val op dimindex_20 =
    DT(((("words",643),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%365%456@@%299%171%170%171%170%343@@@@@@"])
  fun op finite_20 x = x
    val op finite_20 =
    DT(((("words",644),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%208%325@"])
  fun op INT_MIN_20 x = x
    val op INT_MIN_20 =
    DT(((("words",645),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%252%456@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_20 x = x
    val op dimword_20 =
    DT(((("words",646),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,645])]),["DISK_THM"]),
       [read"%158%391%456@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_24 x = x
    val op dimindex_24 =
    DT(((("words",647),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%363%454@@%299%171%170%170%171%343@@@@@@"])
  fun op finite_24 x = x
    val op finite_24 =
    DT(((("words",648),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%206%323@"])
  fun op INT_MIN_24 x = x
    val op INT_MIN_24 =
    DT(((("words",649),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%250%454@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_24 x = x
    val op dimword_24 =
    DT(((("words",650),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,649])]),["DISK_THM"]),
       [read"%158%389%454@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_28 x = x
    val op dimindex_28 =
    DT(((("words",651),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%366%457@@%299%171%170%171%171%343@@@@@@"])
  fun op finite_28 x = x
    val op finite_28 =
    DT(((("words",652),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%209%326@"])
  fun op INT_MIN_28 x = x
    val op INT_MIN_28 =
    DT(((("words",653),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%253%457@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_28 x = x
    val op dimword_28 =
    DT(((("words",654),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,653])]),["DISK_THM"]),
       [read"%158%392%457@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_30 x = x
    val op dimindex_30 =
    DT(((("words",655),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%370%461@@%299%171%171%171%171%343@@@@@@"])
  fun op finite_30 x = x
    val op finite_30 =
    DT(((("words",656),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%213%330@"])
  fun op INT_MIN_30 x = x
    val op INT_MIN_30 =
    DT(((("words",657),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%257%461@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_30 x = x
    val op dimword_30 =
    DT(((("words",658),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,657])]),["DISK_THM"]),
       [read"%158%396%461@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_32 x = x
    val op dimindex_32 =
    DT(((("words",659),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,39,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%360%451@@%299%171%170%170%170%170%343@@@@@@@"])
  fun op finite_32 x = x
    val op finite_32 =
    DT(((("words",660),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%203%320@"])
  fun op INT_MIN_32 x = x
    val op INT_MIN_32 =
    DT(((("words",661),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,62,63]),("numeral",[3,7,9,12,15,16,17,32,33]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%247%451@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_32 x = x
    val op dimword_32 =
    DT(((("words",662),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,661])]),["DISK_THM"]),
       [read"%158%386%451@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_48 x = x
    val op dimindex_48 =
    DT(((("words",663),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%361%452@@%299%171%170%170%170%171%343@@@@@@@"])
  fun op finite_48 x = x
    val op finite_48 =
    DT(((("words",664),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%204%321@"])
  fun op INT_MIN_48 x = x
    val op INT_MIN_48 =
    DT(((("words",665),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%248%452@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_48 x = x
    val op dimword_48 =
    DT(((("words",666),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,665])]),["DISK_THM"]),
       [read"%158%387%452@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_64 x = x
    val op dimindex_64 =
    DT(((("words",667),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,39,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%358%449@@%299%171%170%170%170%170%170%343@@@@@@@@"])
  fun op finite_64 x = x
    val op finite_64 =
    DT(((("words",668),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%201%318@"])
  fun op INT_MIN_64 x = x
    val op INT_MIN_64 =
    DT(((("words",669),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,62,63]),("numeral",[3,7,9,12,15,16,17,32,33]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%245%449@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_64 x = x
    val op dimword_64 =
    DT(((("words",670),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,669])]),["DISK_THM"]),
       [read"%158%384%449@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_96 x = x
    val op dimindex_96 =
    DT(((("words",671),
        [("arithmetic",[122]),("bool",[14,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),("numeral",[0,3,5,12,17]),
         ("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%359%450@@%299%171%170%170%170%170%171%343@@@@@@@@"])
  fun op finite_96 x = x
    val op finite_96 =
    DT(((("words",672),
        [("bool",[25,63]),("fcp",[39,61,63])]),["DISK_THM"]),
       [read"%202%319@"])
  fun op INT_MIN_96 x = x
    val op INT_MIN_96 =
    DT(((("words",673),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,60,61,62,63]),
         ("numeral",[0,3,5,7,9,12,15,16,17,32,33]),("numeral_bit",[5]),
         ("words",[1])]),["DISK_THM"]),
       [read"%158%246%450@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_96 x = x
    val op dimword_96 =
    DT(((("words",674),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,673])]),["DISK_THM"]),
       [read"%158%385%450@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimindex_128 x = x
    val op dimindex_128 =
    DT(((("words",675),
        [("arithmetic",[122]),("bool",[14,58,63,64]),("fcp",[38,39,62,63]),
         ("numeral",[12,17]),("numeral_bit",[5])]),["DISK_THM"]),
       [read"%158%357%448@@%299%171%170%170%170%170%170%170%343@@@@@@@@@"])
  fun op finite_128 x = x
    val op finite_128 =
    DT(((("words",676),[("bool",[25,63]),("fcp",[39,63])]),["DISK_THM"]),
       [read"%200%317@"])
  fun op INT_MIN_128 x = x
    val op INT_MIN_128 =
    DT(((("words",677),
        [("arithmetic",[122]),("bool",[14,54,58,63,64]),
         ("fcp",[38,39,62,63]),("numeral",[3,7,9,12,15,16,17,32,33]),
         ("numeral_bit",[5]),("words",[1])]),["DISK_THM"]),
       [read"%158%244%448@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op dimword_128 x = x
    val op dimword_128 =
    DT(((("words",678),
        [("bool",[8,14,26,27,56,63,64]),
         ("numeral",[0,3,6,9,21,32,34,35,39,40]),
         ("words",[111,677])]),["DISK_THM"]),
       [read"%158%383%448@@%299%171%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%170%343@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op n2w_itself_ind x = x
    val op n2w_itself_ind =
    DT(((("words",680),
        [("bool",[25,27,53,54,63,176]),("pair",[5]),("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
       [read"%108%4%163%113%57$1%128$0@%444@@|@@%113%78%109%79$2%128$1@$0@@|@|@@|@"])
  fun op n2w_itself_def x = x
    val op n2w_itself_def =
    DT(((("words",681),
        [("bool",[15]),("combin",[19]),("pair",[49]),
         ("relation",[107,126]),("words",[679])]),["DISK_THM"]),
       [read"%137%418%128%57@%444@@@%412%57@@"])
  end
  val _ = DB.bindl "words"
  [("dimword_def",dimword_def,DB.Def), ("INT_MIN_def",INT_MIN_def,DB.Def),
   ("UINT_MAX_def",UINT_MAX_def,DB.Def),
   ("INT_MAX_def",INT_MAX_def,DB.Def), ("w2n_def",w2n_def,DB.Def),
   ("n2w_def",n2w_def,DB.Def), ("w2w_def",w2w_def,DB.Def),
   ("sw2sw_def",sw2sw_def,DB.Def), ("w2l_def",w2l_def,DB.Def),
   ("l2w_def",l2w_def,DB.Def), ("w2s_def",w2s_def,DB.Def),
   ("s2w_def",s2w_def,DB.Def),
   ("word_from_bin_list_def",word_from_bin_list_def,DB.Def),
   ("word_from_oct_list_def",word_from_oct_list_def,DB.Def),
   ("word_from_dec_list_def",word_from_dec_list_def,DB.Def),
   ("word_from_hex_list_def",word_from_hex_list_def,DB.Def),
   ("word_to_bin_list_def",word_to_bin_list_def,DB.Def),
   ("word_to_oct_list_def",word_to_oct_list_def,DB.Def),
   ("word_to_dec_list_def",word_to_dec_list_def,DB.Def),
   ("word_to_hex_list_def",word_to_hex_list_def,DB.Def),
   ("word_from_bin_string_def",word_from_bin_string_def,DB.Def),
   ("word_from_oct_string_def",word_from_oct_string_def,DB.Def),
   ("word_from_dec_string_def",word_from_dec_string_def,DB.Def),
   ("word_from_hex_string_def",word_from_hex_string_def,DB.Def),
   ("word_to_bin_string_def",word_to_bin_string_def,DB.Def),
   ("word_to_oct_string_def",word_to_oct_string_def,DB.Def),
   ("word_to_dec_string_def",word_to_dec_string_def,DB.Def),
   ("word_to_hex_string_def",word_to_hex_string_def,DB.Def),
   ("word_T_def",word_T_def,DB.Def), ("word_L_def",word_L_def,DB.Def),
   ("word_H_def",word_H_def,DB.Def),
   ("word_1comp_def",word_1comp_def,DB.Def),
   ("word_and_def",word_and_def,DB.Def),
   ("word_or_def",word_or_def,DB.Def),
   ("word_xor_def",word_xor_def,DB.Def),
   ("word_nand_def",word_nand_def,DB.Def),
   ("word_nor_def",word_nor_def,DB.Def),
   ("word_xnor_def",word_xnor_def,DB.Def),
   ("word_reduce_def",word_reduce_def,DB.Def),
   ("word_compare_def",word_compare_def,DB.Def),
   ("reduce_and_def",reduce_and_def,DB.Def),
   ("reduce_or_def",reduce_or_def,DB.Def),
   ("reduce_xor_def",reduce_xor_def,DB.Def),
   ("reduce_nand_def",reduce_nand_def,DB.Def),
   ("reduce_nor_def",reduce_nor_def,DB.Def),
   ("reduce_xnor_def",reduce_xnor_def,DB.Def),
   ("word_lsb_def",word_lsb_def,DB.Def),
   ("word_msb_def",word_msb_def,DB.Def),
   ("word_slice_def",word_slice_def,DB.Def),
   ("word_bits_def",word_bits_def,DB.Def),
   ("word_signed_bits_def",word_signed_bits_def,DB.Def),
   ("word_extract_def",word_extract_def,DB.Def),
   ("word_bit_def",word_bit_def,DB.Def),
   ("word_reverse_def",word_reverse_def,DB.Def),
   ("word_modify_def",word_modify_def,DB.Def),
   ("BIT_SET_tupled_primitive_def",BIT_SET_tupled_primitive_def,DB.Def),
   ("BIT_SET_curried_def",BIT_SET_curried_def,DB.Def),
   ("bit_field_insert_def",bit_field_insert_def,DB.Def),
   ("word_sign_extend_def",word_sign_extend_def,DB.Def),
   ("word_len_def",word_len_def,DB.Def),
   ("bit_count_upto_def",bit_count_upto_def,DB.Def),
   ("bit_count_def",bit_count_def,DB.Def),
   ("word_2comp_def",word_2comp_def,DB.Def),
   ("word_add_def",word_add_def,DB.Def),
   ("word_mul_def",word_mul_def,DB.Def),
   ("word_log2_def",word_log2_def,DB.Def),
   ("add_with_carry_def",add_with_carry_def,DB.Def),
   ("word_sub_def",word_sub_def,DB.Def),
   ("word_div_def",word_div_def,DB.Def),
   ("word_sdiv_def",word_sdiv_def,DB.Def),
   ("word_mod_def",word_mod_def,DB.Def),
   ("word_srem_def",word_srem_def,DB.Def),
   ("word_smod_def",word_smod_def,DB.Def),
   ("word_L2_def",word_L2_def,DB.Def), ("nzcv_def",nzcv_def,DB.Def),
   ("word_lt_def",word_lt_def,DB.Def), ("word_gt_def",word_gt_def,DB.Def),
   ("word_le_def",word_le_def,DB.Def), ("word_ge_def",word_ge_def,DB.Def),
   ("word_ls_def",word_ls_def,DB.Def), ("word_hi_def",word_hi_def,DB.Def),
   ("word_lo_def",word_lo_def,DB.Def), ("word_hs_def",word_hs_def,DB.Def),
   ("word_min_def",word_min_def,DB.Def),
   ("word_max_def",word_max_def,DB.Def),
   ("word_smin_def",word_smin_def,DB.Def),
   ("word_smax_def",word_smax_def,DB.Def),
   ("word_abs_def",word_abs_def,DB.Def),
   ("word_lsl_def",word_lsl_def,DB.Def),
   ("word_lsr_def",word_lsr_def,DB.Def),
   ("word_asr_def",word_asr_def,DB.Def),
   ("word_ror_def",word_ror_def,DB.Def),
   ("word_rol_def",word_rol_def,DB.Def),
   ("word_rrx_def",word_rrx_def,DB.Def),
   ("word_lsl_bv_def",word_lsl_bv_def,DB.Def),
   ("word_lsr_bv_def",word_lsr_bv_def,DB.Def),
   ("word_asr_bv_def",word_asr_bv_def,DB.Def),
   ("word_ror_bv_def",word_ror_bv_def,DB.Def),
   ("word_rol_bv_def",word_rol_bv_def,DB.Def),
   ("word_join_def",word_join_def,DB.Def),
   ("word_concat_def",word_concat_def,DB.Def),
   ("word_replicate_def",word_replicate_def,DB.Def),
   ("concat_word_list_def",concat_word_list_def,DB.Def),
   ("saturate_n2w_def",saturate_n2w_def,DB.Def),
   ("saturate_w2w_def",saturate_w2w_def,DB.Def),
   ("saturate_add_def",saturate_add_def,DB.Def),
   ("saturate_sub_def",saturate_sub_def,DB.Def),
   ("saturate_mul_def",saturate_mul_def,DB.Def),
   ("n2w_itself_primitive_def",n2w_itself_primitive_def,DB.Def),
   ("BIT_SET_ind",BIT_SET_ind,DB.Thm), ("BIT_SET_def",BIT_SET_def,DB.Thm),
   ("ZERO_LT_dimword",ZERO_LT_dimword,DB.Thm),
   ("dimword_IS_TWICE_INT_MIN",dimword_IS_TWICE_INT_MIN,DB.Thm),
   ("dimword_sub_int_min",dimword_sub_int_min,DB.Thm),
   ("DIMINDEX_GT_0",DIMINDEX_GT_0,DB.Thm),
   ("ONE_LT_dimword",ONE_LT_dimword,DB.Thm),
   ("EXISTS_HB",EXISTS_HB,DB.Thm), ("MOD_DIMINDEX",MOD_DIMINDEX,DB.Thm),
   ("BITS_ZEROL_DIMINDEX",BITS_ZEROL_DIMINDEX,DB.Thm),
   ("MOD_2EXP_DIMINDEX",MOD_2EXP_DIMINDEX,DB.Thm),
   ("INT_MIN_SUM",INT_MIN_SUM,DB.Thm),
   ("ZERO_LT_INT_MIN",ZERO_LT_INT_MIN,DB.Thm),
   ("ZERO_LT_INT_MAX",ZERO_LT_INT_MAX,DB.Thm),
   ("ZERO_LE_INT_MAX",ZERO_LE_INT_MAX,DB.Thm),
   ("ZERO_LT_UINT_MAX",ZERO_LT_UINT_MAX,DB.Thm),
   ("INT_MIN_LT_DIMWORD",INT_MIN_LT_DIMWORD,DB.Thm),
   ("INT_MAX_LT_DIMWORD",INT_MAX_LT_DIMWORD,DB.Thm),
   ("dimindex_lt_dimword",dimindex_lt_dimword,DB.Thm),
   ("BOUND_ORDER",BOUND_ORDER,DB.Thm),
   ("dimindex_dimword_iso",dimindex_dimword_iso,DB.Thm),
   ("dimindex_dimword_le_iso",dimindex_dimword_le_iso,DB.Thm),
   ("dimindex_dimword_lt_iso",dimindex_dimword_lt_iso,DB.Thm),
   ("dimindex_int_min_iso",dimindex_int_min_iso,DB.Thm),
   ("dimindex_int_min_le_iso",dimindex_int_min_le_iso,DB.Thm),
   ("dimindex_int_min_lt_iso",dimindex_int_min_lt_iso,DB.Thm),
   ("dimindex_int_max_iso",dimindex_int_max_iso,DB.Thm),
   ("dimindex_int_max_le_iso",dimindex_int_max_le_iso,DB.Thm),
   ("dimindex_int_max_lt_iso",dimindex_int_max_lt_iso,DB.Thm),
   ("dimindex_uint_max_iso",dimindex_uint_max_iso,DB.Thm),
   ("dimindex_uint_max_le_iso",dimindex_uint_max_le_iso,DB.Thm),
   ("dimindex_uint_max_lt_iso",dimindex_uint_max_lt_iso,DB.Thm),
   ("w2n_n2w",w2n_n2w,DB.Thm), ("n2w_w2n",n2w_w2n,DB.Thm),
   ("word_nchotomy",word_nchotomy,DB.Thm), ("n2w_mod",n2w_mod,DB.Thm),
   ("n2w_11",n2w_11,DB.Thm),
   ("ranged_word_nchotomy",ranged_word_nchotomy,DB.Thm),
   ("dimindex_1_cases",dimindex_1_cases,DB.Thm),
   ("mod_dimindex",mod_dimindex,DB.Thm),
   ("WORD_INDUCT",WORD_INDUCT,DB.Thm), ("w2n_11",w2n_11,DB.Thm),
   ("w2n_lt",w2n_lt,DB.Thm), ("word_0_n2w",word_0_n2w,DB.Thm),
   ("word_1_n2w",word_1_n2w,DB.Thm), ("w2n_eq_0",w2n_eq_0,DB.Thm),
   ("n2w_dimword",n2w_dimword,DB.Thm),
   ("word_2comp_dimindex_1",word_2comp_dimindex_1,DB.Thm),
   ("word_add_n2w",word_add_n2w,DB.Thm),
   ("word_mul_n2w",word_mul_n2w,DB.Thm),
   ("word_log2_n2w",word_log2_n2w,DB.Thm),
   ("word_1comp_n2w",word_1comp_n2w,DB.Thm),
   ("word_2comp_n2w",word_2comp_n2w,DB.Thm), ("word_lsb",word_lsb,DB.Thm),
   ("word_msb",word_msb,DB.Thm), ("word_lsb_n2w",word_lsb_n2w,DB.Thm),
   ("word_msb_n2w",word_msb_n2w,DB.Thm),
   ("word_msb_n2w_numeric",word_msb_n2w_numeric,DB.Thm),
   ("word_and_n2w",word_and_n2w,DB.Thm),
   ("word_or_n2w",word_or_n2w,DB.Thm),
   ("word_xor_n2w",word_xor_n2w,DB.Thm),
   ("word_nand_n2w",word_nand_n2w,DB.Thm),
   ("word_nor_n2w",word_nor_n2w,DB.Thm),
   ("word_xnor_n2w",word_xnor_n2w,DB.Thm), ("l2w_w2l",l2w_w2l,DB.Thm),
   ("w2l_l2w",w2l_l2w,DB.Thm), ("s2w_w2s",s2w_w2s,DB.Thm),
   ("w2s_s2w",w2s_s2w,DB.Thm),
   ("NUMERAL_LESS_THM",NUMERAL_LESS_THM,DB.Thm),
   ("word_bin_list",word_bin_list,DB.Thm),
   ("word_oct_list",word_oct_list,DB.Thm),
   ("word_dec_list",word_dec_list,DB.Thm),
   ("word_hex_list",word_hex_list,DB.Thm),
   ("word_bin_string",word_bin_string,DB.Thm),
   ("word_oct_string",word_oct_string,DB.Thm),
   ("word_dec_string",word_dec_string,DB.Thm),
   ("word_hex_string",word_hex_string,DB.Thm), ("word_0",word_0,DB.Thm),
   ("word_eq_0",word_eq_0,DB.Thm), ("word_T",word_T,DB.Thm),
   ("FCP_T_F",FCP_T_F,DB.Thm), ("word_L",word_L,DB.Thm),
   ("word_H",word_H,DB.Thm), ("word_L2",word_L2,DB.Thm),
   ("WORD_NEG_1",WORD_NEG_1,DB.Thm), ("WORD_NEG_1_T",WORD_NEG_1_T,DB.Thm),
   ("WORD_MSB_1COMP",WORD_MSB_1COMP,DB.Thm),
   ("w2n_minus1",w2n_minus1,DB.Thm), ("WORD_NOT_NOT",WORD_NOT_NOT,DB.Thm),
   ("WORD_DE_MORGAN_THM",WORD_DE_MORGAN_THM,DB.Thm),
   ("WORD_NOT_XOR",WORD_NOT_XOR,DB.Thm),
   ("WORD_AND_CLAUSES",WORD_AND_CLAUSES,DB.Thm),
   ("WORD_OR_CLAUSES",WORD_OR_CLAUSES,DB.Thm),
   ("WORD_XOR_CLAUSES",WORD_XOR_CLAUSES,DB.Thm),
   ("WORD_AND_ASSOC",WORD_AND_ASSOC,DB.Thm),
   ("WORD_OR_ASSOC",WORD_OR_ASSOC,DB.Thm),
   ("WORD_XOR_ASSOC",WORD_XOR_ASSOC,DB.Thm),
   ("WORD_AND_COMM",WORD_AND_COMM,DB.Thm),
   ("WORD_OR_COMM",WORD_OR_COMM,DB.Thm),
   ("WORD_XOR_COMM",WORD_XOR_COMM,DB.Thm),
   ("WORD_AND_IDEM",WORD_AND_IDEM,DB.Thm),
   ("WORD_OR_IDEM",WORD_OR_IDEM,DB.Thm),
   ("WORD_AND_ABSORD",WORD_AND_ABSORD,DB.Thm),
   ("WORD_OR_ABSORB",WORD_OR_ABSORB,DB.Thm),
   ("WORD_AND_COMP",WORD_AND_COMP,DB.Thm),
   ("WORD_OR_COMP",WORD_OR_COMP,DB.Thm),
   ("WORD_XOR_COMP",WORD_XOR_COMP,DB.Thm),
   ("WORD_RIGHT_AND_OVER_OR",WORD_RIGHT_AND_OVER_OR,DB.Thm),
   ("WORD_RIGHT_OR_OVER_AND",WORD_RIGHT_OR_OVER_AND,DB.Thm),
   ("WORD_RIGHT_AND_OVER_XOR",WORD_RIGHT_AND_OVER_XOR,DB.Thm),
   ("WORD_LEFT_AND_OVER_OR",WORD_LEFT_AND_OVER_OR,DB.Thm),
   ("WORD_LEFT_OR_OVER_AND",WORD_LEFT_OR_OVER_AND,DB.Thm),
   ("WORD_LEFT_AND_OVER_XOR",WORD_LEFT_AND_OVER_XOR,DB.Thm),
   ("WORD_XOR",WORD_XOR,DB.Thm),
   ("WORD_NAND_NOT_AND",WORD_NAND_NOT_AND,DB.Thm),
   ("WORD_NOR_NOT_OR",WORD_NOR_NOT_OR,DB.Thm),
   ("WORD_XNOR_NOT_XOR",WORD_XNOR_NOT_XOR,DB.Thm),
   ("WORD_ADD_OR",WORD_ADD_OR,DB.Thm),
   ("WORD_ADD_XOR",WORD_ADD_XOR,DB.Thm),
   ("WORD_AND_EXP_SUB1",WORD_AND_EXP_SUB1,DB.Thm), ("w2w",w2w,DB.Thm),
   ("sw2sw",sw2sw,DB.Thm), ("w2w_id",w2w_id,DB.Thm),
   ("sw2sw_id",sw2sw_id,DB.Thm), ("w2w_w2w",w2w_w2w,DB.Thm),
   ("sw2sw_sw2sw",sw2sw_sw2sw,DB.Thm), ("sw2sw_w2w",sw2sw_w2w,DB.Thm),
   ("word_bit",word_bit,DB.Thm), ("word_slice_n2w",word_slice_n2w,DB.Thm),
   ("word_bits_n2w",word_bits_n2w,DB.Thm),
   ("word_bit_n2w",word_bit_n2w,DB.Thm),
   ("word_signed_bits_n2w",word_signed_bits_n2w,DB.Thm),
   ("word_sign_extend_bits",word_sign_extend_bits,DB.Thm),
   ("word_index_n2w",word_index_n2w,DB.Thm),
   ("word_index",word_index,DB.Thm),
   ("word_bits_w2w",word_bits_w2w,DB.Thm),
   ("word_reverse_n2w",word_reverse_n2w,DB.Thm),
   ("word_modify_n2w",word_modify_n2w,DB.Thm), ("fcp_n2w",fcp_n2w,DB.Thm),
   ("w2n_w2w",w2n_w2w,DB.Thm), ("w2n_w2w_le",w2n_w2w_le,DB.Thm),
   ("w2w_lt",w2w_lt,DB.Thm), ("w2w_n2w",w2w_n2w,DB.Thm),
   ("w2w_0",w2w_0,DB.Thm), ("w2n_11_lift",w2n_11_lift,DB.Thm),
   ("word_extract_n2w",word_extract_n2w,DB.Thm),
   ("n2w_BITS",n2w_BITS,DB.Thm),
   ("word_extract_w2w",word_extract_w2w,DB.Thm),
   ("WORD_w2w_EXTRACT",WORD_w2w_EXTRACT,DB.Thm),
   ("WORD_EQ",WORD_EQ,DB.Thm), ("BIT_UPDATE",BIT_UPDATE,DB.Thm),
   ("WORD_MODIFY_BIT",WORD_MODIFY_BIT,DB.Thm),
   ("WORD_BIT_BITS",WORD_BIT_BITS,DB.Thm),
   ("WORD_BITS_COMP_THM",WORD_BITS_COMP_THM,DB.Thm),
   ("WORD_BITS_EXTRACT",WORD_BITS_EXTRACT,DB.Thm),
   ("WORD_BITS_LSR",WORD_BITS_LSR,DB.Thm),
   ("WORD_BITS_ZERO",WORD_BITS_ZERO,DB.Thm),
   ("WORD_BITS_ZERO2",WORD_BITS_ZERO2,DB.Thm),
   ("WORD_BITS_ZERO3",WORD_BITS_ZERO3,DB.Thm),
   ("WORD_BITS_LT",WORD_BITS_LT,DB.Thm),
   ("WORD_EXTRACT_LT",WORD_EXTRACT_LT,DB.Thm),
   ("WORD_EXTRACT_ZERO",WORD_EXTRACT_ZERO,DB.Thm),
   ("WORD_EXTRACT_ZERO2",WORD_EXTRACT_ZERO2,DB.Thm),
   ("WORD_EXTRACT_ZERO3",WORD_EXTRACT_ZERO3,DB.Thm),
   ("WORD_SLICE_THM",WORD_SLICE_THM,DB.Thm),
   ("WORD_SLICE_ZERO",WORD_SLICE_ZERO,DB.Thm),
   ("WORD_SLICE_ZERO2",WORD_SLICE_ZERO2,DB.Thm),
   ("WORD_SLICE_BITS_THM",WORD_SLICE_BITS_THM,DB.Thm),
   ("WORD_BITS_SLICE_THM",WORD_BITS_SLICE_THM,DB.Thm),
   ("WORD_SLICE_COMP_THM",WORD_SLICE_COMP_THM,DB.Thm),
   ("WORD_EXTRACT_COMP_THM",WORD_EXTRACT_COMP_THM,DB.Thm),
   ("WORD_EXTRACT_BITS_COMP",WORD_EXTRACT_BITS_COMP,DB.Thm),
   ("WORD_ALL_BITS",WORD_ALL_BITS,DB.Thm),
   ("EXTRACT_ALL_BITS",EXTRACT_ALL_BITS,DB.Thm),
   ("WORD_BITS_MIN_HIGH",WORD_BITS_MIN_HIGH,DB.Thm),
   ("WORD_EXTRACT_MIN_HIGH",WORD_EXTRACT_MIN_HIGH,DB.Thm),
   ("CONCAT_EXTRACT",CONCAT_EXTRACT,DB.Thm),
   ("EXTRACT_CONCAT",EXTRACT_CONCAT,DB.Thm),
   ("EXTRACT_JOIN",EXTRACT_JOIN,DB.Thm),
   ("EXTRACT_JOIN_ADD",EXTRACT_JOIN_ADD,DB.Thm),
   ("EXTEND_EXTRACT",EXTEND_EXTRACT,DB.Thm),
   ("WORD_SLICE_OVER_BITWISE",WORD_SLICE_OVER_BITWISE,DB.Thm),
   ("WORD_BITS_OVER_BITWISE",WORD_BITS_OVER_BITWISE,DB.Thm),
   ("WORD_w2w_OVER_BITWISE",WORD_w2w_OVER_BITWISE,DB.Thm),
   ("WORD_EXTRACT_OVER_BITWISE",WORD_EXTRACT_OVER_BITWISE,DB.Thm),
   ("WORD_w2w_OVER_ADD",WORD_w2w_OVER_ADD,DB.Thm),
   ("WORD_w2w_OVER_MUL",WORD_w2w_OVER_MUL,DB.Thm),
   ("WORD_EXTRACT_OVER_ADD",WORD_EXTRACT_OVER_ADD,DB.Thm),
   ("WORD_EXTRACT_OVER_MUL",WORD_EXTRACT_OVER_MUL,DB.Thm),
   ("WORD_EXTRACT_OVER_ADD2",WORD_EXTRACT_OVER_ADD2,DB.Thm),
   ("WORD_EXTRACT_OVER_MUL2",WORD_EXTRACT_OVER_MUL2,DB.Thm),
   ("WORD_EXTRACT_ID",WORD_EXTRACT_ID,DB.Thm), ("BIT_SET",BIT_SET,DB.Thm),
   ("WORD_LITERAL_AND",WORD_LITERAL_AND,DB.Thm),
   ("WORD_LITERAL_OR",WORD_LITERAL_OR,DB.Thm),
   ("WORD_LITERAL_XOR",WORD_LITERAL_XOR,DB.Thm),
   ("word_replicate_concat_word_list",
    word_replicate_concat_word_list,
    DB.Thm), ("bit_field_insert",bit_field_insert,DB.Thm),
   ("word_join_index",word_join_index,DB.Thm),
   ("foldl_reduce_and",foldl_reduce_and,DB.Thm),
   ("foldl_reduce_or",foldl_reduce_or,DB.Thm),
   ("foldl_reduce_xor",foldl_reduce_xor,DB.Thm),
   ("foldl_reduce_nand",foldl_reduce_nand,DB.Thm),
   ("foldl_reduce_nor",foldl_reduce_nor,DB.Thm),
   ("foldl_reduce_xnor",foldl_reduce_xnor,DB.Thm),
   ("LOG2_w2n_lt",LOG2_w2n_lt,DB.Thm), ("LOG2_w2n",LOG2_w2n,DB.Thm),
   ("LEAST_BIT_LT",LEAST_BIT_LT,DB.Thm),
   ("word_reduce_n2w",word_reduce_n2w,DB.Thm),
   ("NOT_UINTMAXw",NOT_UINTMAXw,DB.Thm), ("NOT_0w",NOT_0w,DB.Thm),
   ("reduce_and",reduce_and,DB.Thm), ("reduce_or",reduce_or,DB.Thm),
   ("WORD_ADD_0",WORD_ADD_0,DB.Thm),
   ("WORD_ADD_ASSOC",WORD_ADD_ASSOC,DB.Thm),
   ("WORD_MULT_ASSOC",WORD_MULT_ASSOC,DB.Thm),
   ("WORD_ADD_COMM",WORD_ADD_COMM,DB.Thm),
   ("WORD_MULT_COMM",WORD_MULT_COMM,DB.Thm),
   ("WORD_MULT_CLAUSES",WORD_MULT_CLAUSES,DB.Thm),
   ("WORD_LEFT_ADD_DISTRIB",WORD_LEFT_ADD_DISTRIB,DB.Thm),
   ("WORD_RIGHT_ADD_DISTRIB",WORD_RIGHT_ADD_DISTRIB,DB.Thm),
   ("WORD_ADD_SUB_ASSOC",WORD_ADD_SUB_ASSOC,DB.Thm),
   ("WORD_ADD_SUB_SYM",WORD_ADD_SUB_SYM,DB.Thm),
   ("WORD_ADD_LINV",WORD_ADD_LINV,DB.Thm),
   ("WORD_ADD_RINV",WORD_ADD_RINV,DB.Thm),
   ("WORD_SUB_REFL",WORD_SUB_REFL,DB.Thm),
   ("WORD_SUB_ADD2",WORD_SUB_ADD2,DB.Thm),
   ("WORD_ADD_SUB",WORD_ADD_SUB,DB.Thm),
   ("WORD_SUB_ADD",WORD_SUB_ADD,DB.Thm),
   ("WORD_ADD_EQ_SUB",WORD_ADD_EQ_SUB,DB.Thm),
   ("WORD_ADD_INV_0_EQ",WORD_ADD_INV_0_EQ,DB.Thm),
   ("WORD_EQ_ADD_LCANCEL",WORD_EQ_ADD_LCANCEL,DB.Thm),
   ("WORD_EQ_ADD_RCANCEL",WORD_EQ_ADD_RCANCEL,DB.Thm),
   ("WORD_NEG",WORD_NEG,DB.Thm), ("WORD_NOT",WORD_NOT,DB.Thm),
   ("WORD_NEG_0",WORD_NEG_0,DB.Thm), ("WORD_NEG_ADD",WORD_NEG_ADD,DB.Thm),
   ("WORD_NEG_NEG",WORD_NEG_NEG,DB.Thm),
   ("WORD_SUB_LNEG",WORD_SUB_LNEG,DB.Thm),
   ("WORD_SUB_RNEG",WORD_SUB_RNEG,DB.Thm),
   ("WORD_SUB_SUB",WORD_SUB_SUB,DB.Thm),
   ("WORD_SUB_SUB2",WORD_SUB_SUB2,DB.Thm),
   ("WORD_EQ_SUB_LADD",WORD_EQ_SUB_LADD,DB.Thm),
   ("WORD_EQ_SUB_RADD",WORD_EQ_SUB_RADD,DB.Thm),
   ("WORD_EQ_SUB_ZERO",WORD_EQ_SUB_ZERO,DB.Thm),
   ("WORD_LCANCEL_SUB",WORD_LCANCEL_SUB,DB.Thm),
   ("WORD_RCANCEL_SUB",WORD_RCANCEL_SUB,DB.Thm),
   ("WORD_SUB_PLUS",WORD_SUB_PLUS,DB.Thm),
   ("WORD_SUB_LZERO",WORD_SUB_LZERO,DB.Thm),
   ("WORD_SUB_RZERO",WORD_SUB_RZERO,DB.Thm),
   ("WORD_ADD_LID_UNIQ",WORD_ADD_LID_UNIQ,DB.Thm),
   ("WORD_ADD_RID_UNIQ",WORD_ADD_RID_UNIQ,DB.Thm),
   ("WORD_SUM_ZERO",WORD_SUM_ZERO,DB.Thm),
   ("WORD_ADD_SUB2",WORD_ADD_SUB2,DB.Thm),
   ("WORD_ADD_SUB3",WORD_ADD_SUB3,DB.Thm),
   ("WORD_SUB_SUB3",WORD_SUB_SUB3,DB.Thm),
   ("WORD_EQ_NEG",WORD_EQ_NEG,DB.Thm), ("WORD_NEG_EQ",WORD_NEG_EQ,DB.Thm),
   ("WORD_NEG_EQ_0",WORD_NEG_EQ_0,DB.Thm), ("WORD_SUB",WORD_SUB,DB.Thm),
   ("WORD_SUB_NEG",WORD_SUB_NEG,DB.Thm),
   ("WORD_NEG_SUB",WORD_NEG_SUB,DB.Thm),
   ("WORD_SUB_TRIANGLE",WORD_SUB_TRIANGLE,DB.Thm),
   ("WORD_NOT_0",WORD_NOT_0,DB.Thm), ("WORD_NOT_T",WORD_NOT_T,DB.Thm),
   ("WORD_NEG_T",WORD_NEG_T,DB.Thm),
   ("WORD_MULT_SUC",WORD_MULT_SUC,DB.Thm),
   ("WORD_NEG_LMUL",WORD_NEG_LMUL,DB.Thm),
   ("WORD_NEG_RMUL",WORD_NEG_RMUL,DB.Thm),
   ("WORD_NEG_MUL",WORD_NEG_MUL,DB.Thm),
   ("sw2sw_w2w_add",sw2sw_w2w_add,DB.Thm),
   ("WORD_ADD_BIT0",WORD_ADD_BIT0,DB.Thm),
   ("WORD_ADD_BIT",WORD_ADD_BIT,DB.Thm),
   ("WORD_LEFT_SUB_DISTRIB",WORD_LEFT_SUB_DISTRIB,DB.Thm),
   ("WORD_RIGHT_SUB_DISTRIB",WORD_RIGHT_SUB_DISTRIB,DB.Thm),
   ("WORD_LITERAL_MULT",WORD_LITERAL_MULT,DB.Thm),
   ("WORD_LITERAL_ADD",WORD_LITERAL_ADD,DB.Thm),
   ("WORD_SUB_INTRO",WORD_SUB_INTRO,DB.Thm), ("n2w_SUC",n2w_SUC,DB.Thm),
   ("n2w_sub",n2w_sub,DB.Thm), ("n2w_sub_eq_0",n2w_sub_eq_0,DB.Thm),
   ("WORD_H_WORD_L",WORD_H_WORD_L,DB.Thm),
   ("word_L_MULT",word_L_MULT,DB.Thm), ("ASR_ADD",ASR_ADD,DB.Thm),
   ("LSR_ADD",LSR_ADD,DB.Thm), ("ROR_ADD",ROR_ADD,DB.Thm),
   ("LSL_ADD",LSL_ADD,DB.Thm), ("ASR_LIMIT",ASR_LIMIT,DB.Thm),
   ("ASR_UINT_MAX",ASR_UINT_MAX,DB.Thm), ("LSR_LIMIT",LSR_LIMIT,DB.Thm),
   ("LSL_LIMIT",LSL_LIMIT,DB.Thm), ("ROR_CYCLE",ROR_CYCLE,DB.Thm),
   ("ROR_MOD",ROR_MOD,DB.Thm), ("ROL_MOD",ROL_MOD,DB.Thm),
   ("LSL_ONE",LSL_ONE,DB.Thm), ("ROR_UINT_MAX",ROR_UINT_MAX,DB.Thm),
   ("ROR_ROL",ROR_ROL,DB.Thm), ("MOD_COMPLEMENT",MOD_COMPLEMENT,DB.Thm),
   ("ROL_ADD",ROL_ADD,DB.Thm), ("ZERO_SHIFT",ZERO_SHIFT,DB.Thm),
   ("SHIFT_ZERO",SHIFT_ZERO,DB.Thm), ("word_lsl_n2w",word_lsl_n2w,DB.Thm),
   ("word_1_lsl",word_1_lsl,DB.Thm), ("word_lsr_n2w",word_lsr_n2w,DB.Thm),
   ("LSL_UINT_MAX",LSL_UINT_MAX,DB.Thm),
   ("word_asr_n2w",word_asr_n2w,DB.Thm),
   ("word_ror_n2w",word_ror_n2w,DB.Thm),
   ("word_rrx_n2w",word_rrx_n2w,DB.Thm), ("word_ror",word_ror,DB.Thm),
   ("word_asr",word_asr,DB.Thm), ("w2n_lsr",w2n_lsr,DB.Thm),
   ("WORD_MUL_LSL",WORD_MUL_LSL,DB.Thm),
   ("WORD_ADD_LSL",WORD_ADD_LSL,DB.Thm),
   ("WORD_DIV_LSR",WORD_DIV_LSR,DB.Thm), ("WORD_MOD_1",WORD_MOD_1,DB.Thm),
   ("WORD_MOD_POW2",WORD_MOD_POW2,DB.Thm),
   ("SHIFT_1_SUB_1",SHIFT_1_SUB_1,DB.Thm),
   ("LSR_BITWISE",LSR_BITWISE,DB.Thm), ("LSL_BITWISE",LSL_BITWISE,DB.Thm),
   ("ROR_BITWISE",ROR_BITWISE,DB.Thm), ("ROL_BITWISE",ROL_BITWISE,DB.Thm),
   ("WORD_2COMP_LSL",WORD_2COMP_LSL,DB.Thm), ("w2w_LSL",w2w_LSL,DB.Thm),
   ("n2w_DIV",n2w_DIV,DB.Thm), ("WORD_BITS_LSL",WORD_BITS_LSL,DB.Thm),
   ("WORD_EXTRACT_LSL",WORD_EXTRACT_LSL,DB.Thm),
   ("WORD_EXTRACT_LSL2",WORD_EXTRACT_LSL2,DB.Thm),
   ("EXTRACT_JOIN_LSL",EXTRACT_JOIN_LSL,DB.Thm),
   ("EXTRACT_JOIN_ADD_LSL",EXTRACT_JOIN_ADD_LSL,DB.Thm),
   ("word_extract_mask",word_extract_mask,DB.Thm),
   ("word_shift_bv",word_shift_bv,DB.Thm),
   ("WORD_NEG_L",WORD_NEG_L,DB.Thm),
   ("word_L_MULT_NEG",word_L_MULT_NEG,DB.Thm),
   ("word_L2_MULT",word_L2_MULT,DB.Thm),
   ("TWO_COMP_NEG",TWO_COMP_NEG,DB.Thm),
   ("TWO_COMP_POS_NEG",TWO_COMP_POS_NEG,DB.Thm),
   ("WORD_0_POS",WORD_0_POS,DB.Thm), ("TWO_COMP_POS",TWO_COMP_POS,DB.Thm),
   ("WORD_H_POS",WORD_H_POS,DB.Thm), ("WORD_L_NEG",WORD_L_NEG,DB.Thm),
   ("WORD_GREATER",WORD_GREATER,DB.Thm),
   ("WORD_GREATER_EQ",WORD_GREATER_EQ,DB.Thm),
   ("WORD_NOT_LESS",WORD_NOT_LESS,DB.Thm), ("WORD_LT",WORD_LT,DB.Thm),
   ("WORD_GT",WORD_GT,DB.Thm), ("WORD_LE",WORD_LE,DB.Thm),
   ("WORD_GE",WORD_GE,DB.Thm), ("WORD_LO",WORD_LO,DB.Thm),
   ("WORD_LS",WORD_LS,DB.Thm), ("WORD_HI",WORD_HI,DB.Thm),
   ("WORD_HS",WORD_HS,DB.Thm),
   ("WORD_NOT_LESS_EQUAL",WORD_NOT_LESS_EQUAL,DB.Thm),
   ("WORD_LESS_OR_EQ",WORD_LESS_OR_EQ,DB.Thm),
   ("WORD_GREATER_OR_EQ",WORD_GREATER_OR_EQ,DB.Thm),
   ("WORD_LESS_TRANS",WORD_LESS_TRANS,DB.Thm),
   ("WORD_LESS_EQ_TRANS",WORD_LESS_EQ_TRANS,DB.Thm),
   ("WORD_LESS_EQ_LESS_TRANS",WORD_LESS_EQ_LESS_TRANS,DB.Thm),
   ("WORD_LESS_LESS_EQ_TRANS",WORD_LESS_LESS_EQ_TRANS,DB.Thm),
   ("WORD_LESS_EQ_CASES",WORD_LESS_EQ_CASES,DB.Thm),
   ("WORD_LESS_CASES",WORD_LESS_CASES,DB.Thm),
   ("WORD_LESS_CASES_IMP",WORD_LESS_CASES_IMP,DB.Thm),
   ("WORD_LESS_ANTISYM",WORD_LESS_ANTISYM,DB.Thm),
   ("WORD_LESS_EQ_ANTISYM",WORD_LESS_EQ_ANTISYM,DB.Thm),
   ("WORD_LESS_EQ_REFL",WORD_LESS_EQ_REFL,DB.Thm),
   ("WORD_LESS_EQUAL_ANTISYM",WORD_LESS_EQUAL_ANTISYM,DB.Thm),
   ("WORD_LESS_IMP_LESS_OR_EQ",WORD_LESS_IMP_LESS_OR_EQ,DB.Thm),
   ("WORD_LESS_REFL",WORD_LESS_REFL,DB.Thm),
   ("WORD_LESS_LESS_CASES",WORD_LESS_LESS_CASES,DB.Thm),
   ("WORD_NOT_GREATER",WORD_NOT_GREATER,DB.Thm),
   ("WORD_LESS_NOT_EQ",WORD_LESS_NOT_EQ,DB.Thm),
   ("WORD_NOT_LESS_EQ",WORD_NOT_LESS_EQ,DB.Thm),
   ("WORD_HIGHER",WORD_HIGHER,DB.Thm),
   ("WORD_HIGHER_EQ",WORD_HIGHER_EQ,DB.Thm),
   ("WORD_NOT_LOWER",WORD_NOT_LOWER,DB.Thm),
   ("WORD_NOT_LOWER_EQUAL",WORD_NOT_LOWER_EQUAL,DB.Thm),
   ("WORD_LOWER_OR_EQ",WORD_LOWER_OR_EQ,DB.Thm),
   ("WORD_HIGHER_OR_EQ",WORD_HIGHER_OR_EQ,DB.Thm),
   ("WORD_LOWER_TRANS",WORD_LOWER_TRANS,DB.Thm),
   ("WORD_LOWER_EQ_TRANS",WORD_LOWER_EQ_TRANS,DB.Thm),
   ("WORD_LOWER_EQ_LOWER_TRANS",WORD_LOWER_EQ_LOWER_TRANS,DB.Thm),
   ("WORD_LOWER_LOWER_EQ_TRANS",WORD_LOWER_LOWER_EQ_TRANS,DB.Thm),
   ("WORD_LOWER_EQ_CASES",WORD_LOWER_EQ_CASES,DB.Thm),
   ("WORD_LOWER_CASES",WORD_LOWER_CASES,DB.Thm),
   ("WORD_LOWER_CASES_IMP",WORD_LOWER_CASES_IMP,DB.Thm),
   ("WORD_LOWER_ANTISYM",WORD_LOWER_ANTISYM,DB.Thm),
   ("WORD_LOWER_EQ_ANTISYM",WORD_LOWER_EQ_ANTISYM,DB.Thm),
   ("WORD_LOWER_EQ_REFL",WORD_LOWER_EQ_REFL,DB.Thm),
   ("WORD_LOWER_EQUAL_ANTISYM",WORD_LOWER_EQUAL_ANTISYM,DB.Thm),
   ("WORD_LOWER_IMP_LOWER_OR_EQ",WORD_LOWER_IMP_LOWER_OR_EQ,DB.Thm),
   ("WORD_LOWER_REFL",WORD_LOWER_REFL,DB.Thm),
   ("WORD_LOWER_LOWER_CASES",WORD_LOWER_LOWER_CASES,DB.Thm),
   ("WORD_NOT_HIGHER",WORD_NOT_HIGHER,DB.Thm),
   ("WORD_LOWER_NOT_EQ",WORD_LOWER_NOT_EQ,DB.Thm),
   ("WORD_NOT_LOWER_EQ",WORD_NOT_LOWER_EQ,DB.Thm),
   ("WORD_L_PLUS_H",WORD_L_PLUS_H,DB.Thm),
   ("WORD_L_LESS_EQ",WORD_L_LESS_EQ,DB.Thm),
   ("WORD_LESS_EQ_H",WORD_LESS_EQ_H,DB.Thm),
   ("WORD_L_LESS_H",WORD_L_LESS_H,DB.Thm),
   ("NOT_INT_MIN_ZERO",NOT_INT_MIN_ZERO,DB.Thm),
   ("ZERO_LO_INT_MIN",ZERO_LO_INT_MIN,DB.Thm),
   ("WORD_0_LS",WORD_0_LS,DB.Thm), ("WORD_LS_T",WORD_LS_T,DB.Thm),
   ("WORD_ADD_LEFT_LO",WORD_ADD_LEFT_LO,DB.Thm),
   ("WORD_ADD_LEFT_LS",WORD_ADD_LEFT_LS,DB.Thm),
   ("WORD_ADD_RIGHT_LS",WORD_ADD_RIGHT_LS,DB.Thm),
   ("WORD_ADD_RIGHT_LO",WORD_ADD_RIGHT_LO,DB.Thm),
   ("WORD_MSB_INT_MIN_LS",WORD_MSB_INT_MIN_LS,DB.Thm),
   ("WORD_LT_LO",WORD_LT_LO,DB.Thm), ("WORD_LE_LS",WORD_LE_LS,DB.Thm),
   ("WORD_LESS_NEG_LEFT",WORD_LESS_NEG_LEFT,DB.Thm),
   ("WORD_LESS_NEG_RIGHT",WORD_LESS_NEG_RIGHT,DB.Thm),
   ("WORD_LS_word_0",WORD_LS_word_0,DB.Thm),
   ("WORD_LO_word_0",WORD_LO_word_0,DB.Thm),
   ("WORD_ADD_LEFT_LO2",WORD_ADD_LEFT_LO2,DB.Thm),
   ("WORD_ADD_LEFT_LS2",WORD_ADD_LEFT_LS2,DB.Thm),
   ("WORD_ADD_RIGHT_LO2",WORD_ADD_RIGHT_LO2,DB.Thm),
   ("WORD_ADD_RIGHT_LS2",WORD_ADD_RIGHT_LS2,DB.Thm),
   ("word_msb_neg",word_msb_neg,DB.Thm), ("word_abs",word_abs,DB.Thm),
   ("word_abs_word_abs",word_abs_word_abs,DB.Thm),
   ("word_abs_neg",word_abs_neg,DB.Thm),
   ("word_abs_diff",word_abs_diff,DB.Thm),
   ("FST_ADD_WITH_CARRY",FST_ADD_WITH_CARRY,DB.Thm),
   ("ADD_WITH_CARRY_SUB",ADD_WITH_CARRY_SUB,DB.Thm),
   ("word_eq_n2w",word_eq_n2w,DB.Thm), ("word_lt_n2w",word_lt_n2w,DB.Thm),
   ("word_gt_n2w",word_gt_n2w,DB.Thm), ("word_le_n2w",word_le_n2w,DB.Thm),
   ("word_ge_n2w",word_ge_n2w,DB.Thm), ("word_ls_n2w",word_ls_n2w,DB.Thm),
   ("word_hi_n2w",word_hi_n2w,DB.Thm), ("word_lo_n2w",word_lo_n2w,DB.Thm),
   ("word_hs_n2w",word_hs_n2w,DB.Thm), ("w2n_add",w2n_add,DB.Thm),
   ("saturate_w2w_n2w",saturate_w2w_n2w,DB.Thm),
   ("saturate_w2w",saturate_w2w,DB.Thm),
   ("saturate_sub",saturate_sub,DB.Thm),
   ("saturate_add",saturate_add,DB.Thm),
   ("NOT_FINITE_IMP_dimword_2",NOT_FINITE_IMP_dimword_2,DB.Thm),
   ("saturate_mul",saturate_mul,DB.Thm),
   ("WORD_DIVISION",WORD_DIVISION,DB.Thm),
   ("word_reverse_0",word_reverse_0,DB.Thm),
   ("word_reverse_word_T",word_reverse_word_T,DB.Thm),
   ("sw2sw_0",sw2sw_0,DB.Thm), ("sw2sw_word_T",sw2sw_word_T,DB.Thm),
   ("word_div_1",word_div_1,DB.Thm), ("word_bit_0",word_bit_0,DB.Thm),
   ("word_lsb_word_T",word_lsb_word_T,DB.Thm),
   ("word_msb_word_T",word_msb_word_T,DB.Thm),
   ("word_bit_0_word_T",word_bit_0_word_T,DB.Thm),
   ("word_log2_1",word_log2_1,DB.Thm), ("word_join_0",word_join_0,DB.Thm),
   ("word_concat_0_0",word_concat_0_0,DB.Thm),
   ("w2w_eq_n2w",w2w_eq_n2w,DB.Thm),
   ("word_extract_eq_n2w",word_extract_eq_n2w,DB.Thm),
   ("word_concat_0",word_concat_0,DB.Thm),
   ("word_concat_0_eq",word_concat_0_eq,DB.Thm),
   ("word_join_word_T",word_join_word_T,DB.Thm),
   ("word_concat_word_T",word_concat_word_T,DB.Thm),
   ("lsr_1_word_T",lsr_1_word_T,DB.Thm), ("word_rrx_0",word_rrx_0,DB.Thm),
   ("word_rrx_word_T",word_rrx_word_T,DB.Thm),
   ("word_T_not_zero",word_T_not_zero,DB.Thm),
   ("WORD_LS_word_T",WORD_LS_word_T,DB.Thm),
   ("WORD_LO_word_T",WORD_LO_word_T,DB.Thm),
   ("WORD_LESS_0_word_T",WORD_LESS_0_word_T,DB.Thm),
   ("word_reverse_thm",word_reverse_thm,DB.Thm),
   ("bit_count_upto_0",bit_count_upto_0,DB.Thm),
   ("bit_count_upto_SUC",bit_count_upto_SUC,DB.Thm),
   ("bit_count_upto_is_zero",bit_count_upto_is_zero,DB.Thm),
   ("bit_count_is_zero",bit_count_is_zero,DB.Thm),
   ("WORD_FINITE",WORD_FINITE,DB.Thm),
   ("WORD_SET_INDUCT",WORD_SET_INDUCT,DB.Thm),
   ("SUC_WORD_PRED",SUC_WORD_PRED,DB.Thm),
   ("WORD_PRED_THM",WORD_PRED_THM,DB.Thm), ("LSR_LESS",LSR_LESS,DB.Thm),
   ("word_sub_w2n",word_sub_w2n,DB.Thm),
   ("WORD_LE_EQ_LS",WORD_LE_EQ_LS,DB.Thm),
   ("WORD_LT_EQ_LO",WORD_LT_EQ_LO,DB.Thm),
   ("WORD_ZERO_LE",WORD_ZERO_LE,DB.Thm),
   ("WORD_LT_SUB_UPPER",WORD_LT_SUB_UPPER,DB.Thm),
   ("WORD_SUB_LT",WORD_SUB_LT,DB.Thm), ("WORD_SUB_LE",WORD_SUB_LE,DB.Thm),
   ("dimindex_1",dimindex_1,DB.Thm), ("finite_1",finite_1,DB.Thm),
   ("INT_MIN_1",INT_MIN_1,DB.Thm), ("dimword_1",dimword_1,DB.Thm),
   ("dimindex_2",dimindex_2,DB.Thm), ("finite_2",finite_2,DB.Thm),
   ("INT_MIN_2",INT_MIN_2,DB.Thm), ("dimword_2",dimword_2,DB.Thm),
   ("dimindex_3",dimindex_3,DB.Thm), ("finite_3",finite_3,DB.Thm),
   ("INT_MIN_3",INT_MIN_3,DB.Thm), ("dimword_3",dimword_3,DB.Thm),
   ("dimindex_4",dimindex_4,DB.Thm), ("finite_4",finite_4,DB.Thm),
   ("INT_MIN_4",INT_MIN_4,DB.Thm), ("dimword_4",dimword_4,DB.Thm),
   ("dimindex_5",dimindex_5,DB.Thm), ("finite_5",finite_5,DB.Thm),
   ("INT_MIN_5",INT_MIN_5,DB.Thm), ("dimword_5",dimword_5,DB.Thm),
   ("dimindex_6",dimindex_6,DB.Thm), ("finite_6",finite_6,DB.Thm),
   ("INT_MIN_6",INT_MIN_6,DB.Thm), ("dimword_6",dimword_6,DB.Thm),
   ("dimindex_7",dimindex_7,DB.Thm), ("finite_7",finite_7,DB.Thm),
   ("INT_MIN_7",INT_MIN_7,DB.Thm), ("dimword_7",dimword_7,DB.Thm),
   ("dimindex_8",dimindex_8,DB.Thm), ("finite_8",finite_8,DB.Thm),
   ("INT_MIN_8",INT_MIN_8,DB.Thm), ("dimword_8",dimword_8,DB.Thm),
   ("dimindex_9",dimindex_9,DB.Thm), ("finite_9",finite_9,DB.Thm),
   ("INT_MIN_9",INT_MIN_9,DB.Thm), ("dimword_9",dimword_9,DB.Thm),
   ("dimindex_10",dimindex_10,DB.Thm), ("finite_10",finite_10,DB.Thm),
   ("INT_MIN_10",INT_MIN_10,DB.Thm), ("dimword_10",dimword_10,DB.Thm),
   ("dimindex_11",dimindex_11,DB.Thm), ("finite_11",finite_11,DB.Thm),
   ("INT_MIN_11",INT_MIN_11,DB.Thm), ("dimword_11",dimword_11,DB.Thm),
   ("dimindex_12",dimindex_12,DB.Thm), ("finite_12",finite_12,DB.Thm),
   ("INT_MIN_12",INT_MIN_12,DB.Thm), ("dimword_12",dimword_12,DB.Thm),
   ("dimindex_16",dimindex_16,DB.Thm), ("finite_16",finite_16,DB.Thm),
   ("INT_MIN_16",INT_MIN_16,DB.Thm), ("dimword_16",dimword_16,DB.Thm),
   ("dimindex_20",dimindex_20,DB.Thm), ("finite_20",finite_20,DB.Thm),
   ("INT_MIN_20",INT_MIN_20,DB.Thm), ("dimword_20",dimword_20,DB.Thm),
   ("dimindex_24",dimindex_24,DB.Thm), ("finite_24",finite_24,DB.Thm),
   ("INT_MIN_24",INT_MIN_24,DB.Thm), ("dimword_24",dimword_24,DB.Thm),
   ("dimindex_28",dimindex_28,DB.Thm), ("finite_28",finite_28,DB.Thm),
   ("INT_MIN_28",INT_MIN_28,DB.Thm), ("dimword_28",dimword_28,DB.Thm),
   ("dimindex_30",dimindex_30,DB.Thm), ("finite_30",finite_30,DB.Thm),
   ("INT_MIN_30",INT_MIN_30,DB.Thm), ("dimword_30",dimword_30,DB.Thm),
   ("dimindex_32",dimindex_32,DB.Thm), ("finite_32",finite_32,DB.Thm),
   ("INT_MIN_32",INT_MIN_32,DB.Thm), ("dimword_32",dimword_32,DB.Thm),
   ("dimindex_48",dimindex_48,DB.Thm), ("finite_48",finite_48,DB.Thm),
   ("INT_MIN_48",INT_MIN_48,DB.Thm), ("dimword_48",dimword_48,DB.Thm),
   ("dimindex_64",dimindex_64,DB.Thm), ("finite_64",finite_64,DB.Thm),
   ("INT_MIN_64",INT_MIN_64,DB.Thm), ("dimword_64",dimword_64,DB.Thm),
   ("dimindex_96",dimindex_96,DB.Thm), ("finite_96",finite_96,DB.Thm),
   ("INT_MIN_96",INT_MIN_96,DB.Thm), ("dimword_96",dimword_96,DB.Thm),
   ("dimindex_128",dimindex_128,DB.Thm), ("finite_128",finite_128,DB.Thm),
   ("INT_MIN_128",INT_MIN_128,DB.Thm), ("dimword_128",dimword_128,DB.Thm),
   ("n2w_itself_ind",n2w_itself_ind,DB.Thm),
   ("n2w_itself_def",n2w_itself_def,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("ASCIInumbersTheory.ASCIInumbers_grammars",
                          ASCIInumbersTheory.ASCIInumbers_grammars),
                         ("sum_numTheory.sum_num_grammars",
                          sum_numTheory.sum_num_grammars),
                         ("numeral_bitTheory.numeral_bit_grammars",
                          numeral_bitTheory.numeral_bit_grammars),
                         ("fcpTheory.fcp_grammars",fcpTheory.fcp_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("dimword", (Term.prim_mk_const { Name = "dimword", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_MIN", (Term.prim_mk_const { Name = "INT_MIN", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UINT_MAX", (Term.prim_mk_const { Name = "UINT_MAX", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_MAX", (Term.prim_mk_const { Name = "INT_MAX", Thy = "words"}))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word"}, T"cart" "fcp" [bool, alpha])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2n", (Term.prim_mk_const { Name = "w2n", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2n", (Term.prim_mk_const { Name = "w2n", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2w", (Term.prim_mk_const { Name = "n2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2w", (Term.prim_mk_const { Name = "n2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2w", (Term.prim_mk_const { Name = "w2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2w", (Term.prim_mk_const { Name = "w2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sw2sw", (Term.prim_mk_const { Name = "sw2sw", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sw2sw", (Term.prim_mk_const { Name = "sw2sw", Thy = "words"}))
  val _ = update_grms temp_add_bare_numeral_form (#"w", SOME "n2w")
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2l", (Term.prim_mk_const { Name = "w2l", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2l", (Term.prim_mk_const { Name = "w2l", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("l2w", (Term.prim_mk_const { Name = "l2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("l2w", (Term.prim_mk_const { Name = "l2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2s", (Term.prim_mk_const { Name = "w2s", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2s", (Term.prim_mk_const { Name = "w2s", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2w", (Term.prim_mk_const { Name = "s2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2w", (Term.prim_mk_const { Name = "s2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_bin_list", (Term.prim_mk_const { Name = "word_from_bin_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_bin_list", (Term.prim_mk_const { Name = "word_from_bin_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_oct_list", (Term.prim_mk_const { Name = "word_from_oct_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_oct_list", (Term.prim_mk_const { Name = "word_from_oct_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_dec_list", (Term.prim_mk_const { Name = "word_from_dec_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_dec_list", (Term.prim_mk_const { Name = "word_from_dec_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_hex_list", (Term.prim_mk_const { Name = "word_from_hex_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_hex_list", (Term.prim_mk_const { Name = "word_from_hex_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_bin_list", (Term.prim_mk_const { Name = "word_to_bin_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_bin_list", (Term.prim_mk_const { Name = "word_to_bin_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_oct_list", (Term.prim_mk_const { Name = "word_to_oct_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_oct_list", (Term.prim_mk_const { Name = "word_to_oct_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_dec_list", (Term.prim_mk_const { Name = "word_to_dec_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_dec_list", (Term.prim_mk_const { Name = "word_to_dec_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_hex_list", (Term.prim_mk_const { Name = "word_to_hex_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_hex_list", (Term.prim_mk_const { Name = "word_to_hex_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_bin_string", (Term.prim_mk_const { Name = "word_from_bin_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_bin_string", (Term.prim_mk_const { Name = "word_from_bin_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_oct_string", (Term.prim_mk_const { Name = "word_from_oct_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_oct_string", (Term.prim_mk_const { Name = "word_from_oct_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_dec_string", (Term.prim_mk_const { Name = "word_from_dec_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_dec_string", (Term.prim_mk_const { Name = "word_from_dec_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_hex_string", (Term.prim_mk_const { Name = "word_from_hex_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_from_hex_string", (Term.prim_mk_const { Name = "word_from_hex_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_bin_string", (Term.prim_mk_const { Name = "word_to_bin_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_bin_string", (Term.prim_mk_const { Name = "word_to_bin_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_oct_string", (Term.prim_mk_const { Name = "word_to_oct_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_oct_string", (Term.prim_mk_const { Name = "word_to_oct_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_dec_string", (Term.prim_mk_const { Name = "word_to_dec_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_dec_string", (Term.prim_mk_const { Name = "word_to_dec_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_hex_string", (Term.prim_mk_const { Name = "word_to_hex_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_to_hex_string", (Term.prim_mk_const { Name = "word_to_hex_string", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_T", (Term.prim_mk_const { Name = "word_T", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_T", (Term.prim_mk_const { Name = "word_T", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_L", (Term.prim_mk_const { Name = "word_L", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_L", (Term.prim_mk_const { Name = "word_L", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_H", (Term.prim_mk_const { Name = "word_H", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_H", (Term.prim_mk_const { Name = "word_H", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_1comp", (Term.prim_mk_const { Name = "word_1comp", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_1comp", (Term.prim_mk_const { Name = "word_1comp", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_and", (Term.prim_mk_const { Name = "word_and", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_and", (Term.prim_mk_const { Name = "word_and", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_or", (Term.prim_mk_const { Name = "word_or", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_or", (Term.prim_mk_const { Name = "word_or", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_xor", (Term.prim_mk_const { Name = "word_xor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_xor", (Term.prim_mk_const { Name = "word_xor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_nand", (Term.prim_mk_const { Name = "word_nand", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_nand", (Term.prim_mk_const { Name = "word_nand", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_nor", (Term.prim_mk_const { Name = "word_nor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_nor", (Term.prim_mk_const { Name = "word_nor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_xnor", (Term.prim_mk_const { Name = "word_xnor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_xnor", (Term.prim_mk_const { Name = "word_xnor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~", (Term.prim_mk_const { Name = "word_1comp", Thy = "words"}))
  val _ = update_grms
       (temp_send_to_back_overload "~")
        {Name = "word_1comp", Thy = "words"}
  val _ = update_grms temp_add_infix ("&&", 400, HOLgrammars.RIGHT)
  val _ = update_grms temp_add_infix ("??", 375, HOLgrammars.RIGHT)
  val _ = update_grms temp_add_infix ("!!", 300, HOLgrammars.RIGHT)
  val _ = update_grms temp_add_infix ("||", 300, HOLgrammars.RIGHT)
  val _ = update_grms temp_add_infix ("~&&", 400, HOLgrammars.RIGHT)
  val _ = update_grms temp_add_infix ("~??", 375, HOLgrammars.RIGHT)
  val _ = update_grms temp_add_infix ("~||", 300, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("&&", (Term.prim_mk_const { Name = "word_and", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("??", (Term.prim_mk_const { Name = "word_xor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("!!", (Term.prim_mk_const { Name = "word_or", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("||", (Term.prim_mk_const { Name = "word_or", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~&&", (Term.prim_mk_const { Name = "word_nand", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~??", (Term.prim_mk_const { Name = "word_xnor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("~||", (Term.prim_mk_const { Name = "word_nor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("Tw", (Term.prim_mk_const { Name = "word_T", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UINT_MAXw", (Term.prim_mk_const { Name = "word_T", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_MAXw", (Term.prim_mk_const { Name = "word_H", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_MINw", (Term.prim_mk_const { Name = "word_L", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_reduce", (Term.prim_mk_const { Name = "word_reduce", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_reduce", (Term.prim_mk_const { Name = "word_reduce", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_compare", (Term.prim_mk_const { Name = "word_compare", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_compare", (Term.prim_mk_const { Name = "word_compare", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_and", (Term.prim_mk_const { Name = "reduce_and", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_and", (Term.prim_mk_const { Name = "reduce_and", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_or", (Term.prim_mk_const { Name = "reduce_or", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_or", (Term.prim_mk_const { Name = "reduce_or", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_xor", (Term.prim_mk_const { Name = "reduce_xor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_xor", (Term.prim_mk_const { Name = "reduce_xor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_nand", (Term.prim_mk_const { Name = "reduce_nand", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_nand", (Term.prim_mk_const { Name = "reduce_nand", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_nor", (Term.prim_mk_const { Name = "reduce_nor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_nor", (Term.prim_mk_const { Name = "reduce_nor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_xnor", (Term.prim_mk_const { Name = "reduce_xnor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("reduce_xnor", (Term.prim_mk_const { Name = "reduce_xnor", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsb", (Term.prim_mk_const { Name = "word_lsb", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsb", (Term.prim_mk_const { Name = "word_lsb", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_msb", (Term.prim_mk_const { Name = "word_msb", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_msb", (Term.prim_mk_const { Name = "word_msb", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_slice", (Term.prim_mk_const { Name = "word_slice", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_slice", (Term.prim_mk_const { Name = "word_slice", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_bits", (Term.prim_mk_const { Name = "word_bits", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_bits", (Term.prim_mk_const { Name = "word_bits", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_signed_bits", (Term.prim_mk_const { Name = "word_signed_bits", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_signed_bits", (Term.prim_mk_const { Name = "word_signed_bits", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_extract", (Term.prim_mk_const { Name = "word_extract", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_extract", (Term.prim_mk_const { Name = "word_extract", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_bit", (Term.prim_mk_const { Name = "word_bit", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_bit", (Term.prim_mk_const { Name = "word_bit", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_reverse", (Term.prim_mk_const { Name = "word_reverse", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_reverse", (Term.prim_mk_const { Name = "word_reverse", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_modify", (Term.prim_mk_const { Name = "word_modify", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_modify", (Term.prim_mk_const { Name = "word_modify", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT_SET_tupled", (Term.prim_mk_const { Name = "BIT_SET_tupled", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT_SET_tupled", (Term.prim_mk_const { Name = "BIT_SET_tupled", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT_SET", (Term.prim_mk_const { Name = "BIT_SET", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIT_SET", (Term.prim_mk_const { Name = "BIT_SET", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit_field_insert", (Term.prim_mk_const { Name = "bit_field_insert", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit_field_insert", (Term.prim_mk_const { Name = "bit_field_insert", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_sign_extend", (Term.prim_mk_const { Name = "word_sign_extend", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_sign_extend", (Term.prim_mk_const { Name = "word_sign_extend", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_len", (Term.prim_mk_const { Name = "word_len", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_len", (Term.prim_mk_const { Name = "word_len", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit_count_upto", (Term.prim_mk_const { Name = "bit_count_upto", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit_count_upto", (Term.prim_mk_const { Name = "bit_count_upto", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit_count", (Term.prim_mk_const { Name = "bit_count", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bit_count", (Term.prim_mk_const { Name = "bit_count", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("''", (Term.prim_mk_const { Name = "word_slice", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("--", (Term.prim_mk_const { Name = "word_bits", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("><", (Term.prim_mk_const { Name = "word_extract", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("---", (Term.prim_mk_const { Name = "word_signed_bits", Thy = "words"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "''"))
       (Infix(HOLgrammars.RIGHT, 375))
  val _ = update_grms
       (UTOFF (temp_set_fixity "--"))
       (Infix(HOLgrammars.RIGHT, 375))
  val _ = update_grms
       (UTOFF (temp_set_fixity "><"))
       (Infix(HOLgrammars.RIGHT, 375))
  val _ = update_grms
       (UTOFF (temp_set_fixity "---"))
       (Infix(HOLgrammars.RIGHT, 375))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_2comp", (Term.prim_mk_const { Name = "word_2comp", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_2comp", (Term.prim_mk_const { Name = "word_2comp", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_add", (Term.prim_mk_const { Name = "word_add", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_add", (Term.prim_mk_const { Name = "word_add", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_mul", (Term.prim_mk_const { Name = "word_mul", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_mul", (Term.prim_mk_const { Name = "word_mul", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_log2", (Term.prim_mk_const { Name = "word_log2", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_log2", (Term.prim_mk_const { Name = "word_log2", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("add_with_carry", (Term.prim_mk_const { Name = "add_with_carry", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("add_with_carry", (Term.prim_mk_const { Name = "add_with_carry", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("CARRY_OUT", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(a :bool['a]) (b :bool['a]) (c :bool). pair$FST (pair$SND (words$add_with_carry (pair$, a (pair$, b c))))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("OVERFLOW", (#2 (parse_from_grammars min_grammars)[QUOTE "\\(a :bool['a]) (b :bool['a]) (c :bool). pair$SND (pair$SND (words$add_with_carry (pair$, a (pair$, b c))))"]))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_sub", (Term.prim_mk_const { Name = "word_sub", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_sub", (Term.prim_mk_const { Name = "word_sub", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_div", (Term.prim_mk_const { Name = "word_div", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_div", (Term.prim_mk_const { Name = "word_div", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_sdiv", (Term.prim_mk_const { Name = "word_sdiv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_sdiv", (Term.prim_mk_const { Name = "word_sdiv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_mod", (Term.prim_mk_const { Name = "word_mod", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_mod", (Term.prim_mk_const { Name = "word_mod", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_srem", (Term.prim_mk_const { Name = "word_srem", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_srem", (Term.prim_mk_const { Name = "word_srem", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_smod", (Term.prim_mk_const { Name = "word_smod", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_smod", (Term.prim_mk_const { Name = "word_smod", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_L2", (Term.prim_mk_const { Name = "word_L2", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_L2", (Term.prim_mk_const { Name = "word_L2", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("+", (Term.prim_mk_const { Name = "word_add", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("-", (Term.prim_mk_const { Name = "word_sub", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("numeric_negate", (Term.prim_mk_const { Name = "word_2comp", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("*", (Term.prim_mk_const { Name = "word_mul", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("//", (Term.prim_mk_const { Name = "word_div", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("/", (Term.prim_mk_const { Name = "word_sdiv", Thy = "words"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "//"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF (temp_set_fixity "/"))
       (Infix(HOLgrammars.LEFT, 600))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("INT_MINw2", (Term.prim_mk_const { Name = "word_L2", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nzcv", (Term.prim_mk_const { Name = "nzcv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("nzcv", (Term.prim_mk_const { Name = "nzcv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lt", (Term.prim_mk_const { Name = "word_lt", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lt", (Term.prim_mk_const { Name = "word_lt", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_gt", (Term.prim_mk_const { Name = "word_gt", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_gt", (Term.prim_mk_const { Name = "word_gt", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_le", (Term.prim_mk_const { Name = "word_le", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_le", (Term.prim_mk_const { Name = "word_le", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ge", (Term.prim_mk_const { Name = "word_ge", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ge", (Term.prim_mk_const { Name = "word_ge", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ls", (Term.prim_mk_const { Name = "word_ls", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ls", (Term.prim_mk_const { Name = "word_ls", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_hi", (Term.prim_mk_const { Name = "word_hi", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_hi", (Term.prim_mk_const { Name = "word_hi", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lo", (Term.prim_mk_const { Name = "word_lo", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lo", (Term.prim_mk_const { Name = "word_lo", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_hs", (Term.prim_mk_const { Name = "word_hs", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_hs", (Term.prim_mk_const { Name = "word_hs", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_min", (Term.prim_mk_const { Name = "word_min", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_min", (Term.prim_mk_const { Name = "word_min", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_max", (Term.prim_mk_const { Name = "word_max", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_max", (Term.prim_mk_const { Name = "word_max", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_smin", (Term.prim_mk_const { Name = "word_smin", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_smin", (Term.prim_mk_const { Name = "word_smin", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_smax", (Term.prim_mk_const { Name = "word_smax", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_smax", (Term.prim_mk_const { Name = "word_smax", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_abs", (Term.prim_mk_const { Name = "word_abs", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_abs", (Term.prim_mk_const { Name = "word_abs", Thy = "words"}))
  val _ = update_grms temp_add_infix ("<+", 450, HOLgrammars.NONASSOC)
  val _ = update_grms temp_add_infix (">+", 450, HOLgrammars.NONASSOC)
  val _ = update_grms temp_add_infix ("<=+", 450, HOLgrammars.NONASSOC)
  val _ = update_grms temp_add_infix (">=+", 450, HOLgrammars.NONASSOC)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<", (Term.prim_mk_const { Name = "word_lt", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">", (Term.prim_mk_const { Name = "word_gt", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=", (Term.prim_mk_const { Name = "word_le", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=", (Term.prim_mk_const { Name = "word_ge", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<=+", (Term.prim_mk_const { Name = "word_ls", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">+", (Term.prim_mk_const { Name = "word_hi", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<+", (Term.prim_mk_const { Name = "word_lo", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">=+", (Term.prim_mk_const { Name = "word_hs", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsl", (Term.prim_mk_const { Name = "word_lsl", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsl", (Term.prim_mk_const { Name = "word_lsl", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsr", (Term.prim_mk_const { Name = "word_lsr", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsr", (Term.prim_mk_const { Name = "word_lsr", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_asr", (Term.prim_mk_const { Name = "word_asr", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_asr", (Term.prim_mk_const { Name = "word_asr", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ror", (Term.prim_mk_const { Name = "word_ror", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ror", (Term.prim_mk_const { Name = "word_ror", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_rol", (Term.prim_mk_const { Name = "word_rol", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_rol", (Term.prim_mk_const { Name = "word_rol", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_rrx", (Term.prim_mk_const { Name = "word_rrx", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_rrx", (Term.prim_mk_const { Name = "word_rrx", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsl_bv", (Term.prim_mk_const { Name = "word_lsl_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsl_bv", (Term.prim_mk_const { Name = "word_lsl_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsr_bv", (Term.prim_mk_const { Name = "word_lsr_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_lsr_bv", (Term.prim_mk_const { Name = "word_lsr_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_asr_bv", (Term.prim_mk_const { Name = "word_asr_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_asr_bv", (Term.prim_mk_const { Name = "word_asr_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ror_bv", (Term.prim_mk_const { Name = "word_ror_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_ror_bv", (Term.prim_mk_const { Name = "word_ror_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_rol_bv", (Term.prim_mk_const { Name = "word_rol_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_rol_bv", (Term.prim_mk_const { Name = "word_rol_bv", Thy = "words"}))
  val _ = update_grms temp_add_infix ("<<", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix (">>", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix (">>>", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix ("#>>", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix ("#<<", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix ("<<~", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix (">>~", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix (">>>~", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix ("#>>~", 680, HOLgrammars.LEFT)
  val _ = update_grms temp_add_infix ("#<<~", 680, HOLgrammars.LEFT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<<", (Term.prim_mk_const { Name = "word_lsl", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">>", (Term.prim_mk_const { Name = "word_asr", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">>>", (Term.prim_mk_const { Name = "word_lsr", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("#>>", (Term.prim_mk_const { Name = "word_ror", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("#<<", (Term.prim_mk_const { Name = "word_rol", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("<<~", (Term.prim_mk_const { Name = "word_lsl_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">>~", (Term.prim_mk_const { Name = "word_asr_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       (">>>~", (Term.prim_mk_const { Name = "word_lsr_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("#>>~", (Term.prim_mk_const { Name = "word_ror_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("#<<~", (Term.prim_mk_const { Name = "word_rol_bv", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_join", (Term.prim_mk_const { Name = "word_join", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_join", (Term.prim_mk_const { Name = "word_join", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_concat", (Term.prim_mk_const { Name = "word_concat", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_concat", (Term.prim_mk_const { Name = "word_concat", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_replicate", (Term.prim_mk_const { Name = "word_replicate", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("word_replicate", (Term.prim_mk_const { Name = "word_replicate", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("concat_word_list", (Term.prim_mk_const { Name = "concat_word_list", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("@@", (Term.prim_mk_const { Name = "word_concat", Thy = "words"}))
  val _ = update_grms temp_add_infix ("@@", 700, HOLgrammars.RIGHT)
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_n2w", (Term.prim_mk_const { Name = "saturate_n2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_n2w", (Term.prim_mk_const { Name = "saturate_n2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_w2w", (Term.prim_mk_const { Name = "saturate_w2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_w2w", (Term.prim_mk_const { Name = "saturate_w2w", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_add", (Term.prim_mk_const { Name = "saturate_add", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_add", (Term.prim_mk_const { Name = "saturate_add", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_sub", (Term.prim_mk_const { Name = "saturate_sub", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_sub", (Term.prim_mk_const { Name = "saturate_sub", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_mul", (Term.prim_mk_const { Name = "saturate_mul", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("saturate_mul", (Term.prim_mk_const { Name = "saturate_mul", Thy = "words"}))
  val _ = update_grms
       (UTOFF (temp_set_fixity "=="))
       (Infix(HOLgrammars.NONASSOC, 450))
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word1"}, T"cart" "fcp" [bool, T"one" "one" []])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word2"}, T"cart" "fcp" [bool, T"bit0" "fcp" [T"one" "one" []]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word3"}, T"cart" "fcp" [bool, T"bit1" "fcp" [T"one" "one" []]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word4"}, T"cart" "fcp" [bool, T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word5"}, T"cart" "fcp" [bool, T"bit1" "fcp" [T"bit0" "fcp" [T"one" "one" []]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word6"}, T"cart" "fcp" [bool, T"bit0" "fcp" [T"bit1" "fcp" [T"one" "one" []]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word7"}, T"cart" "fcp" [bool, T"bit1" "fcp" [T"bit1" "fcp" [T"one" "one" []]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word8"}, T"cart" "fcp"
 [bool, T"bit0" "fcp" [T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word9"}, T"cart" "fcp"
 [bool, T"bit1" "fcp" [T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word10"}, T"cart" "fcp"
 [bool, T"bit0" "fcp" [T"bit1" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word11"}, T"cart" "fcp"
 [bool, T"bit1" "fcp" [T"bit1" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word12"}, T"cart" "fcp"
 [bool, T"bit0" "fcp" [T"bit0" "fcp" [T"bit1" "fcp" [T"one" "one" []]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word16"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp" [T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word20"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp" [T"bit1" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word24"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp" [T"bit0" "fcp" [T"bit1" "fcp" [T"one" "one" []]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word28"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp" [T"bit1" "fcp" [T"bit1" "fcp" [T"one" "one" []]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word30"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit1" "fcp" [T"bit1" "fcp" [T"bit1" "fcp" [T"one" "one" []]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word32"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp"
     [T"bit0" "fcp" [T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word48"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp"
     [T"bit0" "fcp" [T"bit0" "fcp" [T"bit1" "fcp" [T"one" "one" []]]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word64"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp"
     [T"bit0" "fcp"
       [T"bit0" "fcp"
         [T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word96"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp"
     [T"bit0" "fcp"
       [T"bit0" "fcp"
         [T"bit0" "fcp" [T"bit1" "fcp" [T"one" "one" []]]]]]]])
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="words",Name="word128"}, T"cart" "fcp"
 [bool,
  T"bit0" "fcp"
   [T"bit0" "fcp"
     [T"bit0" "fcp"
       [T"bit0" "fcp"
         [T"bit0" "fcp"
           [T"bit0" "fcp" [T"bit0" "fcp" [T"one" "one" []]]]]]]]])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2w_itself", (Term.prim_mk_const { Name = "n2w_itself", Thy = "words"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2w_itself", (Term.prim_mk_const { Name = "n2w_itself", Thy = "words"}))
  val words_grammars = Parse.current_lgrms()
  end


  val _ = TotalDefn.termination_simps := 
     LSR_LESS :: WORD_PRED_THM :: !TotalDefn.termination_simps

  val _ = let open Lib boolSyntax numSyntax
     val word_type = type_of (fst(dest_forall(concl word_nchotomy)))
     val w2n_tm = fst(strip_comb(lhs(snd(dest_forall(concl w2n_def)))))
     val w2n_abs = list_mk_abs([mk_var("v1",bool-->num),
                                mk_var("v2",alpha-->num),
                                mk_var("v3",word_type)],
                                mk_comb(w2n_tm,mk_var("v3",word_type)))
  in
   TypeBase.write
   [TypeBasePure.mk_nondatatype_info
    (word_type,
      {nchotomy = SOME ranged_word_nchotomy,
       induction = NONE,
       size = SOME(w2n_abs,CONJUNCT1(Drule.SPEC_ALL boolTheory.AND_CLAUSES)),
       encode=NONE})]
  end;
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "words",
    thydataty = "unicodedata",
    data =
        "U12.\\226\\138\\1492.??U12.\\226\\128\\1502.||U24.\\226\\137\\164\\226\\130\\1383.<=+U13.>\\226\\130\\1382.>+U13.<\\226\\130\\1382.<+U24.\\226\\137\\165\\226\\130\\1383.>=+U12.\\226\\137\\1702.<<U12.\\226\\137\\1712.>>U12.\\226\\139\\1533.>>>U12.\\226\\135\\1323.#>>U12.\\226\\135\\1343.#<<"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "words",
    thydataty = "simp",
    data =
        "words.ZERO_LT_dimword words.n2w_11 words.WORD_NEG_EQ_0 words.WORD_NEG_NEG words.WORD_NEG_0 words.WORD_EQ_ADD_RCANCEL words.WORD_EQ_ADD_LCANCEL words.WORD_XNOR_NOT_XOR words.WORD_NOR_NOT_OR words.WORD_NAND_NOT_AND words.WORD_AND_COMP words.WORD_AND_ABSORD words.WORD_NOT_XOR words.WORD_NOT_NOT words.FCP_T_F words.w2n_eq_0 words.w2n_11 words.n2w_w2n words.w2n_n2w words.ZERO_LT_UINT_MAX words.DIMINDEX_GT_0 words.ZERO_LT_INT_MIN words.ONE_LT_dimword"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "words",
    thydataty = "compute",
    data =
        "words.UINT_MAX_def words.add_with_carry_def words.n2w_itself_def words.saturate_mul_def words.saturate_sub_def words.saturate_add_def words.saturate_n2w_def words.concat_word_list_def words.word_join_def words.word_rol_bv_def words.word_ror_bv_def words.word_asr_bv_def words.word_lsr_bv_def words.word_lsl_bv_def words.word_abs_def words.word_smax_def words.word_smin_def words.word_max_def words.word_min_def words.nzcv_def words.word_L2_def words.word_smod_def words.word_srem_def words.word_mod_def words.word_sdiv_def words.word_div_def words.word_sub_def words.bit_count_def words.bit_count_upto_def words.bit_field_insert_def words.word_len_def words.word_sign_extend_def words.l2w_def words.reduce_xnor_def words.reduce_nor_def words.reduce_nand_def words.reduce_xor_def words.word_compare_def words.word_H_def words.word_L_def words.word_T_def words.word_to_hex_string_def words.word_to_dec_string_def words.word_to_oct_string_def words.word_to_bin_string_def words.word_from_hex_string_def words.word_from_dec_string_def words.word_from_oct_string_def words.word_from_bin_string_def words.word_to_hex_list_def words.word_to_dec_list_def words.word_to_oct_list_def words.word_to_bin_list_def words.word_from_hex_list_def words.word_from_dec_list_def words.word_from_oct_list_def words.word_from_bin_list_def words.s2w_def words.w2s_def words.w2l_def words.INT_MAX_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "words",
    thydataty = "TexTokenMap",
    data =
        "2.!!14.\\\\HOLTokenOr{}1.2.||14.\\\\HOLTokenOr{}1.12.\\226\\128\\15014.\\\\HOLTokenOr{}1.2.??15.\\\\HOLTokenEor{}1.12.\\226\\138\\14915.\\\\HOLTokenEor{}1.2.><17.\\\\HOLTokenExtract2.2.<+14.\\\\HOLTokenLo{}1.13.<\\226\\130\\13814.\\\\HOLTokenLo{}1.2.>+14.\\\\HOLTokenHi{}1.13.>\\226\\130\\13814.\\\\HOLTokenHi{}1.3.<=+14.\\\\HOLTokenLs{}1.24.\\226\\137\\164\\226\\130\\13814.\\\\HOLTokenLs{}1.3.>=+14.\\\\HOLTokenHs{}1.24.\\226\\137\\165\\226\\130\\13814.\\\\HOLTokenHs{}1.2.<<15.\\\\HOLTokenLsl{}2.12.\\226\\137\\17015.\\\\HOLTokenLsl{}2.2.>>15.\\\\HOLTokenAsr{}2.12.\\226\\137\\17115.\\\\HOLTokenAsr{}2.3.>>>15.\\\\HOLTokenLsr{}3.12.\\226\\139\\15315.\\\\HOLTokenLsr{}3.3.#>>15.\\\\HOLTokenRor{}1.12.\\226\\135\\13215.\\\\HOLTokenRor{}2.3.#<<15.\\\\HOLTokenRol{}1.12.\\226\\135\\13415.\\\\HOLTokenRol{}1."
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "words"
end
