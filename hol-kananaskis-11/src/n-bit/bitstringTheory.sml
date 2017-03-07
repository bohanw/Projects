structure bitstringTheory :> bitstringTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading bitstringTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open wordsTheory
  in end;
  val _ = Theory.link_parents
          ("bitstring",
          Arbnum.fromString "1488587407",
          Arbnum.fromString "604331")
          [("words",
           Arbnum.fromString "1488587186",
           Arbnum.fromString "513354")];
  val _ = Theory.incorporate_types "bitstring" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("min", "bool"),
   ID("num", "num"), ID("fcp", "cart"), ID("string", "char"),
   ID("pair", "prod"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("one", "one"), ID("sum", "sum"), ID("min", "==>"),
   ID("arithmetic", ">"), ID("bool", "?"), ID("min", "@"),
   ID("list", "APPEND"), ID("marker", "Abbrev"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bit", "BITS"), ID("string", "CHR"),
   ID("bool", "COND"), ID("list", "CONS"), ID("list", "DROP"),
   ID("list", "EL"), ID("list", "EVERY"), ID("arithmetic", "EXP"),
   ID("bool", "F"), ID("combin", "FAIL"), ID("fcp", "FCP"),
   ID("pred_set", "FINITE"), ID("list", "FLAT"), ID("list", "FOLDL"),
   ID("list", "GENLIST"), ID("list", "HD"), ID("combin", "I"),
   ID("combin", "K"), ID("list", "LAST"), ID("list", "LENGTH"),
   ID("bool", "LET"), ID("bit", "LOG2"), ID("list", "MAP"),
   ID("arithmetic", "MAX"), ID("arithmetic", "MIN"),
   ID("arithmetic", "MOD"), ID("bit", "MOD_2EXP"), ID("list", "NIL"),
   ID("list", "NULL"), ID("arithmetic", "NUMERAL"), ID("list", "PAD_LEFT"),
   ID("list", "PAD_RIGHT"), ID("list", "REVERSE"), ID("num", "SUC"),
   ID("bool", "T"), ID("list", "TAKE"), ID("list", "TL"),
   ID("pair", "UNCURRY"), ID("pred_set", "UNIV"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("list", "ZIP"),
   ID("bool", "\\/"), ID("bitstring", "add"), ID("bitstring", "band"),
   ID("bitstring", "bitify"), ID("bitstring", "bitify_tupled"),
   ID("bitstring", "bitwise"), ID("bitstring", "bnand"),
   ID("bitstring", "bnor"), ID("bitstring", "bnot"),
   ID("bitstring", "boolify"), ID("bitstring", "bor"),
   ID("bitstring", "bxnor"), ID("bitstring", "bxor"),
   ID("fcp", "dimindex"), ID("bool", "itself"), ID("bitstring", "extend"),
   ID("fcp", "fcp_index"), ID("bitstring", "field"),
   ID("bitstring", "field_insert"), ID("bitstring", "fixwidth"),
   ID("list", "list_CASE"), ID("bitstring", "modify"),
   ID("bitstring", "n2v"), ID("words", "n2w"),
   ID("numposrep", "num_from_bin_list"),
   ID("numposrep", "num_to_bin_list"), ID("pair", "pair_CASE"),
   ID("words", "reduce_and"), ID("words", "reduce_or"),
   ID("bitstring", "replicate"), ID("bitstring", "rev_count_list"),
   ID("bitstring", "rotate"), ID("bitstring", "s2v"),
   ID("bitstring", "shiftl"), ID("bitstring", "shiftr"),
   ID("bitstring", "sign_extend"), ID("words", "sw2sw"),
   ID("bitstring", "testbit"), ID("bool", "the_value"),
   ID("bitstring", "v2n"), ID("bitstring", "v2s"), ID("bitstring", "v2w"),
   ID("words", "w2n"), ID("bitstring", "w2v"), ID("words", "w2w"),
   ID("words", "word_1comp"), ID("words", "word_2comp"),
   ID("words", "word_add"), ID("words", "word_and"),
   ID("words", "word_asr"), ID("words", "word_bit"),
   ID("words", "word_bits"), ID("words", "word_concat"),
   ID("words", "word_div"), ID("words", "word_extract"),
   ID("words", "word_ge"), ID("words", "word_gt"), ID("words", "word_hi"),
   ID("words", "word_hs"), ID("words", "word_join"),
   ID("words", "word_le"), ID("words", "word_lo"),
   ID("words", "word_log2"), ID("words", "word_ls"),
   ID("words", "word_lsb"), ID("words", "word_lsl"),
   ID("words", "word_lsr"), ID("words", "word_lt"),
   ID("words", "word_mod"), ID("words", "word_modify"),
   ID("words", "word_msb"), ID("words", "word_mul"),
   ID("words", "word_nand"), ID("words", "word_nor"),
   ID("words", "word_or"), ID("words", "word_reduce"),
   ID("words", "word_reverse"), ID("words", "word_ror"),
   ID("words", "word_sdiv"), ID("words", "word_slice"),
   ID("words", "word_sub"), ID("words", "word_xnor"),
   ID("words", "word_xor"), ID("bitstring", "zero_extend"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [2], TYOP [1, 0], TYOP [0, 1, 1], TYOP [3], TYOP [0, 3, 2],
   TYV "'a", TYOP [4, 0, 5], TYOP [0, 6, 1], TYOP [0, 1, 6], TYOP [5],
   TYOP [1, 9], TYOP [0, 1, 10], TYOP [0, 1, 3], TYOP [0, 1, 0],
   TYOP [0, 3, 13], TYOP [1, 5], TYOP [0, 15, 15], TYOP [0, 3, 16],
   TYOP [0, 3, 15], TYOP [0, 15, 18], TYOP [0, 3, 1], TYOP [0, 1, 20],
   TYOP [0, 10, 1], TYOP [1, 3], TYOP [0, 3, 23], TYOP [0, 0, 0],
   TYOP [0, 3, 25], TYOP [0, 26, 2], TYOP [0, 1, 2], TYOP [0, 3, 28],
   TYOP [0, 3, 29], TYOP [0, 3, 4], TYOP [0, 5, 17], TYOP [0, 23, 1],
   TYOP [0, 1, 33], TYOP [0, 0, 25], TYOP [0, 35, 28], TYOP [6, 23, 1],
   TYOP [0, 37, 23], TYOP [0, 1, 23], TYOP [0, 23, 39], TYOP [0, 23, 13],
   TYOP [0, 37, 0], TYOP [0, 37, 42], TYV "'d", TYOP [4, 0, 44], TYV "'e",
   TYOP [4, 0, 46], TYV "'f", TYOP [4, 0, 48], TYV "'g", TYOP [4, 0, 50],
   TYV "'h", TYOP [4, 0, 52], TYV "'i", TYOP [4, 0, 54], TYV "'j",
   TYOP [4, 0, 56], TYV "'k", TYOP [4, 0, 58], TYV "'l", TYOP [4, 0, 60],
   TYV "'m", TYOP [4, 0, 62], TYV "'n", TYOP [4, 0, 64], TYV "'o",
   TYOP [4, 0, 66], TYOP [0, 5, 0], TYOP [0, 68, 0], TYOP [0, 6, 0],
   TYOP [0, 70, 0], TYOP [0, 45, 0], TYOP [0, 72, 0], TYOP [0, 47, 0],
   TYOP [0, 74, 0], TYOP [0, 49, 0], TYOP [0, 76, 0], TYOP [0, 51, 0],
   TYOP [0, 78, 0], TYOP [0, 53, 0], TYOP [0, 80, 0], TYOP [0, 55, 0],
   TYOP [0, 82, 0], TYOP [0, 57, 0], TYOP [0, 84, 0], TYOP [0, 59, 0],
   TYOP [0, 86, 0], TYOP [0, 61, 0], TYOP [0, 88, 0], TYOP [0, 63, 0],
   TYOP [0, 90, 0], TYOP [0, 65, 0], TYOP [0, 92, 0], TYOP [0, 67, 0],
   TYOP [0, 94, 0], TYOP [0, 35, 0], TYOP [0, 96, 0], TYOP [0, 41, 0],
   TYOP [0, 98, 0], TYOP [0, 26, 0], TYOP [0, 100, 0], TYOP [0, 15, 0],
   TYOP [0, 102, 0], TYOP [0, 13, 0], TYOP [0, 23, 0], TYOP [0, 105, 0],
   TYOP [0, 3, 0], TYOP [0, 107, 0], TYOP [0, 3, 3], TYOP [0, 3, 109],
   TYOP [6, 1, 1], TYOP [0, 1, 111], TYOP [0, 1, 112], TYOP [0, 1, 37],
   TYOP [0, 23, 114], TYOP [0, 3, 107], TYOP [0, 5, 68], TYOP [0, 6, 70],
   TYV "'b", TYOP [4, 0, 119], TYOP [0, 120, 0], TYOP [0, 120, 121],
   TYV "'c", TYOP [4, 0, 123], TYOP [0, 124, 0], TYOP [0, 124, 125],
   TYOP [0, 45, 72], TYOP [0, 47, 74], TYOP [0, 49, 76], TYOP [0, 51, 78],
   TYOP [0, 53, 80], TYOP [0, 55, 82], TYOP [0, 57, 84], TYOP [0, 59, 86],
   TYOP [0, 61, 88], TYOP [0, 63, 90], TYOP [0, 65, 92], TYOP [0, 67, 94],
   TYV "'p", TYOP [4, 0, 139], TYOP [0, 140, 0], TYOP [0, 140, 141],
   TYOP [16], TYOP [4, 0, 143], TYOP [0, 144, 0], TYOP [0, 144, 145],
   TYOP [17, 5, 119], TYOP [4, 0, 147], TYOP [0, 148, 0],
   TYOP [0, 148, 149], TYV "'r", TYV "'q", TYOP [17, 152, 151],
   TYOP [4, 0, 153], TYOP [0, 154, 0], TYOP [0, 154, 155], TYV "'t",
   TYV "'s", TYOP [17, 158, 157], TYOP [4, 0, 159], TYOP [0, 160, 0],
   TYOP [0, 160, 161], TYOP [0, 9, 0], TYOP [0, 9, 163], TYOP [0, 28, 0],
   TYOP [0, 28, 165], TYOP [0, 2, 0], TYOP [0, 2, 167], TYOP [0, 11, 0],
   TYOP [0, 11, 169], TYOP [0, 22, 0], TYOP [0, 22, 171], TYOP [0, 38, 0],
   TYOP [0, 38, 173], TYOP [0, 15, 102], TYOP [0, 1, 13],
   TYOP [0, 23, 105], TYOP [0, 43, 0], TYOP [0, 178, 43], TYOP [0, 23, 23],
   TYOP [0, 23, 180], TYOP [0, 3, 110], TYOP [0, 3, 9], TYOP [0, 5, 5],
   TYOP [0, 5, 184], TYOP [0, 0, 185], TYOP [0, 0, 35], TYOP [0, 120, 120],
   TYOP [0, 120, 188], TYOP [0, 0, 189], TYOP [0, 124, 124],
   TYOP [0, 124, 191], TYOP [0, 0, 192], TYOP [0, 148, 148],
   TYOP [0, 148, 194], TYOP [0, 0, 195], TYOP [0, 9, 9], TYOP [0, 9, 197],
   TYOP [0, 0, 198], TYOP [0, 0, 28], TYOP [0, 0, 181], TYOP [0, 0, 110],
   TYOP [0, 5, 16], TYOP [0, 0, 2], TYOP [0, 3, 180], TYOP [0, 15, 5],
   TYOP [0, 3, 206], TYOP [0, 23, 3], TYOP [0, 3, 208], TYOP [0, 107, 105],
   TYOP [0, 120, 124], TYOP [0, 6, 211], TYOP [0, 0, 212],
   TYOP [0, 212, 213], TYOP [0, 120, 148], TYOP [0, 6, 215],
   TYOP [0, 0, 216], TYOP [0, 216, 217], TYOP [0, 6, 107],
   TYOP [0, 0, 219], TYOP [0, 219, 220], TYOP [0, 107, 6],
   TYOP [0, 119, 0], TYOP [0, 223, 0], TYOP [1, 1], TYOP [0, 225, 1],
   TYOP [0, 0, 13], TYOP [0, 35, 227], TYOP [0, 107, 20], TYOP [0, 3, 225],
   TYOP [0, 20, 230], TYOP [0, 109, 24], TYOP [0, 15, 3], TYOP [0, 13, 13],
   TYOP [0, 8, 8], TYOP [0, 1, 144], TYOP [0, 236, 236],
   TYOP [0, 107, 107], TYOP [0, 20, 20], TYOP [0, 25, 2], TYOP [0, 0, 9],
   TYOP [0, 241, 11], TYOP [0, 0, 3], TYOP [0, 243, 39], TYOP [0, 163, 22],
   TYOP [0, 107, 33], TYOP [6, 0, 0], TYOP [1, 247], TYOP [0, 248, 1],
   TYOP [0, 247, 0], TYOP [0, 250, 249], TYOP [6, 3, 0], TYOP [1, 252],
   TYOP [0, 253, 1], TYOP [0, 252, 0], TYOP [0, 255, 254], TYOP [0, 0, 4],
   TYOP [0, 35, 250], TYOP [0, 26, 255], TYOP [0, 38, 38],
   TYOP [0, 260, 38], TYOP [0, 43, 261], TYOP [0, 111, 248],
   TYOP [0, 37, 253], TYOP [83, 5], TYOP [0, 265, 3], TYOP [83, 119],
   TYOP [0, 267, 3], TYOP [83, 123], TYOP [0, 269, 3], TYOP [0, 0, 39],
   TYOP [0, 271, 23], TYOP [0, 23, 272], TYOP [0, 1, 273], TYOP [0, 3, 6],
   TYOP [0, 3, 120], TYOP [0, 3, 124], TYOP [0, 3, 45], TYOP [0, 3, 47],
   TYOP [0, 3, 49], TYOP [0, 3, 51], TYOP [0, 3, 53], TYOP [0, 3, 55],
   TYOP [0, 3, 57], TYOP [0, 3, 59], TYOP [0, 3, 61], TYOP [0, 3, 63],
   TYOP [0, 3, 65], TYOP [0, 3, 67], TYOP [4, 0, 151], TYOP [0, 3, 290],
   TYOP [4, 0, 158], TYOP [0, 3, 292], TYOP [0, 40, 23], TYOP [0, 37, 294],
   TYOP [0, 6, 144], TYOP [0, 6, 120], TYOP [0, 1, 120], TYOP [0, 1, 124],
   TYOP [0, 1, 45], TYOP [0, 1, 47], TYOP [0, 1, 49], TYOP [0, 1, 51],
   TYOP [0, 1, 53], TYOP [0, 1, 55], TYOP [0, 1, 57], TYOP [0, 1, 59],
   TYOP [0, 1, 61], TYOP [0, 1, 63], TYOP [0, 1, 65], TYOP [0, 1, 67],
   TYOP [4, 0, 152], TYOP [0, 1, 312], TYOP [0, 1, 290], TYOP [0, 1, 292],
   TYOP [4, 0, 157], TYOP [0, 1, 316], TYOP [0, 1, 148], TYOP [0, 6, 3],
   TYOP [0, 6, 6], TYOP [0, 45, 45], TYOP [0, 45, 321], TYOP [0, 47, 47],
   TYOP [0, 47, 323], TYOP [0, 6, 320], TYOP [0, 49, 49],
   TYOP [0, 49, 326], TYOP [0, 6, 275], TYOP [0, 3, 70], TYOP [0, 3, 320],
   TYOP [0, 3, 330], TYOP [0, 120, 67], TYOP [0, 6, 332],
   TYOP [0, 120, 140], TYOP [0, 6, 334], TYOP [0, 61, 61],
   TYOP [0, 61, 336], TYOP [0, 63, 63], TYOP [0, 63, 338],
   TYOP [0, 3, 297], TYOP [0, 3, 340], TYOP [0, 290, 154],
   TYOP [0, 312, 342], TYOP [0, 316, 160], TYOP [0, 292, 344],
   TYOP [0, 65, 65], TYOP [0, 65, 346], TYOP [0, 67, 67],
   TYOP [0, 67, 348], TYOP [0, 26, 320], TYOP [0, 53, 53],
   TYOP [0, 53, 351], TYOP [0, 55, 55], TYOP [0, 55, 353],
   TYOP [0, 59, 59], TYOP [0, 59, 355], TYOP [0, 57, 57],
   TYOP [0, 57, 357], TYOP [0, 35, 296], TYOP [0, 51, 51],
   TYOP [0, 51, 360]]
  end
  val _ = Theory.incorporate_consts "bitstring" tyvector
     [("zero_extend", 4), ("w2v", 7), ("v2w", 8), ("v2s", 11), ("v2n", 12),
      ("testbit", 14), ("sign_extend", 17), ("shiftr", 19), ("shiftl", 21),
      ("s2v", 22), ("rotate", 21), ("rev_count_list", 24),
      ("replicate", 21), ("n2v", 20), ("modify", 27), ("fixwidth", 4),
      ("field_insert", 30), ("field", 31), ("extend", 32), ("bxor", 28),
      ("bxnor", 28), ("bor", 28), ("boolify", 34), ("bnot", 2),
      ("bnor", 28), ("bnand", 28), ("bitwise", 36), ("bitify_tupled", 38),
      ("bitify", 40), ("band", 28), ("add", 28)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 41), TMV("R", 43), TMV("a", 15), TMV("a", 1), TMV("a", 23),
   TMV("a'", 37), TMV("b", 0), TMV("b", 1), TMV("b", 3),
   TMV("bad domain", 0), TMV("bitify_tupled", 38), TMV("c", 5),
   TMV("c", 9), TMV("d", 3), TMV("f", 35), TMV("f", 26), TMV("h", 3),
   TMV("i", 3), TMV("index too large", 0), TMV("l", 5), TMV("l", 15),
   TMV("l", 1), TMV("l", 23), TMV("l", 3), TMV("m", 3), TMV("n", 3),
   TMV("s", 1), TMV("v", 15), TMV("v", 1), TMV("v", 23), TMV("v0", 5),
   TMV("v1", 1), TMV("v2", 0), TMV("v2", 1), TMV("w", 6), TMV("w", 45),
   TMV("w", 47), TMV("w", 49), TMV("w", 51), TMV("w", 53), TMV("w", 55),
   TMV("w", 57), TMV("w", 59), TMV("w", 61), TMV("w", 63), TMV("w", 65),
   TMV("w", 67), TMV("w", 1), TMV("w", 3), TMV("x", 5), TMV("x", 0),
   TMV("x", 23), TMV("x", 3), TMV("x1", 1), TMV("y", 0), TMC(7, 69),
   TMC(7, 71), TMC(7, 73), TMC(7, 75), TMC(7, 77), TMC(7, 79), TMC(7, 81),
   TMC(7, 83), TMC(7, 85), TMC(7, 87), TMC(7, 89), TMC(7, 91), TMC(7, 93),
   TMC(7, 95), TMC(7, 97), TMC(7, 99), TMC(7, 101), TMC(7, 103),
   TMC(7, 104), TMC(7, 106), TMC(7, 108), TMC(8, 110), TMC(9, 113),
   TMC(9, 115), TMC(10, 110), TMC(11, 35), TMC(12, 3), TMC(13, 116),
   TMC(14, 116), TMC(15, 117), TMC(15, 35), TMC(15, 118), TMC(15, 122),
   TMC(15, 126), TMC(15, 127), TMC(15, 128), TMC(15, 129), TMC(15, 130),
   TMC(15, 131), TMC(15, 132), TMC(15, 133), TMC(15, 134), TMC(15, 135),
   TMC(15, 136), TMC(15, 137), TMC(15, 138), TMC(15, 142), TMC(15, 146),
   TMC(15, 150), TMC(15, 156), TMC(15, 162), TMC(15, 164), TMC(15, 166),
   TMC(15, 168), TMC(15, 170), TMC(15, 172), TMC(15, 174), TMC(15, 175),
   TMC(15, 176), TMC(15, 177), TMC(15, 116), TMC(18, 35), TMC(19, 116),
   TMC(20, 104), TMC(21, 179), TMC(22, 28), TMC(22, 181), TMC(23, 25),
   TMC(24, 109), TMC(25, 109), TMC(26, 182), TMC(27, 183), TMC(28, 186),
   TMC(28, 187), TMC(28, 190), TMC(28, 193), TMC(28, 196), TMC(28, 199),
   TMC(28, 200), TMC(28, 201), TMC(28, 202), TMC(29, 203), TMC(29, 204),
   TMC(29, 205), TMC(30, 4), TMC(31, 207), TMC(31, 14), TMC(31, 209),
   TMC(32, 210), TMC(33, 110), TMC(34, 0), TMC(35, 214), TMC(35, 218),
   TMC(35, 221), TMC(36, 222), TMC(37, 69), TMC(37, 224), TMC(38, 226),
   TMC(39, 228), TMC(40, 229), TMC(40, 231), TMC(40, 232), TMC(41, 206),
   TMC(41, 13), TMC(42, 180), TMC(43, 21), TMC(44, 13), TMC(45, 233),
   TMC(45, 12), TMC(45, 208), TMC(46, 234), TMC(46, 235), TMC(46, 237),
   TMC(46, 238), TMC(46, 239), TMC(47, 109), TMC(48, 240), TMC(48, 242),
   TMC(48, 244), TMC(48, 245), TMC(48, 246), TMC(48, 251), TMC(48, 256),
   TMC(49, 110), TMC(50, 110), TMC(51, 110), TMC(52, 110), TMC(53, 1),
   TMC(53, 23), TMC(54, 13), TMC(55, 109), TMC(56, 32), TMC(56, 257),
   TMC(57, 32), TMC(57, 257), TMC(58, 2), TMC(58, 180), TMC(59, 109),
   TMC(60, 0), TMC(61, 17), TMC(62, 2), TMC(63, 258), TMC(63, 259),
   TMC(64, 68), TMC(64, 223), TMC(65, 178), TMC(66, 262), TMC(67, 3),
   TMC(68, 263), TMC(68, 264), TMC(69, 35), TMC(70, 28), TMC(71, 28),
   TMC(72, 40), TMC(73, 38), TMC(74, 36), TMC(75, 28), TMC(76, 28),
   TMC(77, 2), TMC(78, 34), TMC(79, 28), TMC(80, 28), TMC(81, 28),
   TMC(82, 266), TMC(82, 268), TMC(82, 270), TMC(84, 32), TMC(84, 257),
   TMC(85, 219), TMC(86, 31), TMC(87, 30), TMC(88, 4), TMC(89, 274),
   TMC(90, 27), TMC(91, 20), TMC(92, 275), TMC(92, 276), TMC(92, 277),
   TMC(92, 278), TMC(92, 279), TMC(92, 280), TMC(92, 281), TMC(92, 282),
   TMC(92, 283), TMC(92, 284), TMC(92, 285), TMC(92, 286), TMC(92, 287),
   TMC(92, 288), TMC(92, 289), TMC(92, 291), TMC(92, 293), TMC(93, 208),
   TMC(94, 24), TMC(95, 295), TMC(96, 296), TMC(97, 296), TMC(98, 21),
   TMC(99, 24), TMC(100, 21), TMC(101, 22), TMC(102, 21), TMC(103, 19),
   TMC(103, 21), TMC(104, 17), TMC(104, 4), TMC(105, 297), TMC(106, 14),
   TMC(107, 265), TMC(107, 267), TMC(107, 269), TMC(108, 12), TMC(109, 11),
   TMC(110, 8), TMC(110, 298), TMC(110, 299), TMC(110, 300), TMC(110, 301),
   TMC(110, 302), TMC(110, 303), TMC(110, 304), TMC(110, 305),
   TMC(110, 306), TMC(110, 307), TMC(110, 308), TMC(110, 309),
   TMC(110, 310), TMC(110, 311), TMC(110, 313), TMC(110, 314),
   TMC(110, 315), TMC(110, 317), TMC(110, 236), TMC(110, 318),
   TMC(111, 319), TMC(112, 7), TMC(113, 297), TMC(114, 320), TMC(115, 188),
   TMC(116, 322), TMC(116, 324), TMC(117, 325), TMC(117, 324),
   TMC(117, 327), TMC(118, 328), TMC(119, 329), TMC(120, 331),
   TMC(121, 212), TMC(121, 333), TMC(121, 335), TMC(122, 337),
   TMC(122, 339), TMC(123, 341), TMC(124, 118), TMC(125, 118),
   TMC(126, 118), TMC(127, 118), TMC(128, 216), TMC(128, 343),
   TMC(128, 345), TMC(129, 118), TMC(130, 118), TMC(131, 191),
   TMC(132, 118), TMC(133, 70), TMC(134, 328), TMC(135, 328),
   TMC(136, 118), TMC(137, 347), TMC(137, 349), TMC(138, 350),
   TMC(139, 70), TMC(140, 352), TMC(140, 354), TMC(141, 325),
   TMC(141, 356), TMC(141, 337), TMC(142, 325), TMC(142, 354),
   TMC(142, 358), TMC(143, 325), TMC(143, 192), TMC(143, 322),
   TMC(144, 359), TMC(145, 320), TMC(146, 328), TMC(147, 358),
   TMC(147, 356), TMC(148, 331), TMC(149, 327), TMC(149, 361),
   TMC(150, 325), TMC(150, 339), TMC(150, 347), TMC(151, 325),
   TMC(151, 361), TMC(151, 352), TMC(152, 4), TMC(153, 25)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op extend_def x = x
    val op extend_def =
    DT(((("bitstring",0),[("prim_rec",[38])]),["DISK_THM"]),
       [read"%80%55%30%72%20%112%221$1@%81@$0@@$0@|@|@@%55%11%75%25%72%20%112%221$2@%192$1@@$0@@%221$2@$1@%136$2@$0@@@|@|@|@@"])
  fun op boolify_def x = x
    val op boolify_def =
    DT(((("bitstring",2),[("list",[13])]),["DISK_THM"]),
       [read"%80%73%3%113%214$0@%183@@$0@|@@%73%3%75%25%74%22%113%214$2@%138$1@$0@@@%214%137%353%115$1@%81@@@$2@@$0@@|@|@|@@"])
  fun op bitify_tupled_primitive_def x = x
    val op bitify_tupled_primitive_def =
    DT(((("bitstring",3),[]),[]),
       [read"%111%209@%201%119%1%80%200$0@@%80%73%21%74%4$2%78%138%81@$0@@$1@@%78$0@%137%145@$1@@@|@|@@%73%21%74%4$2%78%138%185%123%202@@@$0@@$1@@%78$0@%137%193@$1@@@|@|@@@|@@%10%5%249$0@%4%31%227$0@%159$1@@%32%21%134$1@%159$5%78%138%185%123%202@@@$3@@$0@@@@%159$5%78%138%81@$3@@$0@@@@||@||@||@@"])
  fun op bitify_curried_def x = x
    val op bitify_curried_def =
    DT(((("bitstring",4),[]),[]),
       [read"%74%51%73%53%114%208$1@$0@@%209%78$1@$0@@@|@|@"])
  fun op n2v_def x = x
    val op n2v_def =
    DT(((("bitstring",7),[]),[]),
       [read"%75%25%113%229$0@@%133%115$0@%81@@%137%145@%182@@%169%48%187%145@%76$0@%185%123%202@@@@%214%182@%248%125$0@%81@$1@@@@|@%170$0@@@@|@"])
  fun op v2n_def x = x
    val op v2n_def =
    DT(((("bitstring",8),[]),[]),
       [read"%73%21%115%266$0@@%247%208%183@$0@@@|@"])
  fun op s2v_def x = x
    val op s2v_def =
    DT(((("bitstring",9),[]),[]),
       [read"%110%255@%174%12%205%106$0@%126%185%123%124%123%123%124%202@@@@@@@@@%106$0@%126%185%124%123%124%123%124%123%202@@@@@@@@@@|@@"])
  fun op v2s_def x = x
    val op v2s_def =
    DT(((("bitstring",10),[]),[]),
       [read"%109%267@%172%6%132$0@%126%185%123%124%123%123%124%202@@@@@@@@%126%185%124%123%123%123%124%202@@@@@@@@|@@"])
  fun op zero_extend_def x = x
    val op zero_extend_def =
    DT(((("bitstring",11),[]),[]),
       [read"%75%25%73%28%113%352$1@$0@@%187%145@$1@$0@@|@|@"])
  fun op sign_extend_def x = x
    val op sign_extend_def =
    DT(((("bitstring",12),[]),[]),
       [read"%75%25%72%27%112%259$1@$0@@%186%157$0@@$1@$0@@|@|@"])
  fun op fixwidth_def x = x
    val op fixwidth_def =
    DT(((("bitstring",13),[]),[]),
       [read"%75%25%73%28%113%226$1@$0@@%169%23%133%82$0@$2@@%352$2@$1@@%139%79$0@$2@@$1@@|@%163$0@@@|@|@"])
  fun op shiftl_def x = x
    val op shiftl_def =
    DT(((("bitstring",14),[]),[]),
       [read"%73%28%75%24%113%256$1@$0@@%189%145@%76%163$1@@$0@@$1@@|@|@"])
  fun op shiftr_def x = x
    val op shiftr_def =
    DT(((("bitstring",15),[]),[]),
       [read"%72%27%75%24%112%257$1@$0@@%194%79%162$1@@$0@@$1@@|@|@"])
  fun op field_def x = x
    val op field_def =
    DT(((("bitstring",16),[]),[]),
       [read"%75%16%75%23%73%28%113%224$2@$1@$0@@%226%79%192$2@@$1@@%258$0@$1@@@|@|@|@"])
  fun op rotate_def x = x
    val op rotate_def =
    DT(((("bitstring",17),[]),[]),
       [read"%73%28%75%24%113%254$1@$0@@%169%23%169%52%133%205%115$1@%81@@%115$0@%81@@@$3@%120%224%79$0@%185%123%202@@@@%81@$3@@%224%79$1@%185%123%202@@@@$0@$3@@@|@%180$1@$0@@|@%163$1@@@|@|@"])
  fun op testbit_def x = x
    val op testbit_def =
    DT(((("bitstring",18),[]),[]),
       [read"%75%8%73%28%85%262$1@$0@@%113%224$1@$1@$0@@%137%193@%182@@@|@|@"])
  fun op w2v_def x = x
    val op w2v_def =
    DT(((("bitstring",19),[]),[]),
       [read"%56%34%113%290$0@@%154%17%223$1@%79%79%218%263@@%185%123%202@@@@$0@@|@%218%263@@@|@"])
  fun op v2w_def x = x
    val op v2w_def =
    DT(((("bitstring",20),[]),[]),
       [read"%73%28%86%268$0@@%149%17%262$0@$1@|@@|@"])
  fun op rev_count_list_def x = x
    val op rev_count_list_def =
    DT(((("bitstring",21),[]),[]),
       [read"%75%25%114%253$0@@%156%17%79%79$1@%185%123%202@@@@$0@|@$0@@|@"])
  fun op modify_def x = x
    val op modify_def =
    DT(((("bitstring",22),[]),[]),
       [read"%71%15%73%28%113%228$1@$0@@%177%197$1@@%204%78%253%163$0@@@$0@@@@|@|@"])
  fun op field_insert_def x = x
    val op field_insert_def =
    DT(((("bitstring",23),[]),[]),
       [read"%75%16%75%23%73%26%108%225$2@$1@$0@@%228%17%128%80%83$2@$0@@%83$0@$3@@@%262%79$0@$2@@$1@@|@@|@|@|@"])
  fun op add_def x = x
    val op add_def =
    DT(((("bitstring",24),[]),[]),
       [read"%73%3%73%7%113%206$1@$0@@%169%24%352$0@%229%76%266$2@@%266$1@@@@|@%178%163$1@@%163$0@@@@|@|@"])
  fun op bitwise_def x = x
    val op bitwise_def =
    DT(((("bitstring",25),[]),[]),
       [read"%69%14%73%31%73%33%113%210$2@$1@$0@@%169%24%176%196$3@@%203%77%226$0@$2@@%226$0@$1@@@@|@%178%163$1@@%163$0@@@@|@|@|@"])
  fun op bnot_def x = x
    val op bnot_def =
    DT(((("bitstring",26),[]),[]), [read"%108%213@%171%353@@"])
  fun op bor_def x = x
    val op bor_def =
    DT(((("bitstring",27),[]),[]), [read"%107%215@%210%205@@"])
  fun op band_def x = x
    val op band_def =
    DT(((("bitstring",28),[]),[]), [read"%107%207@%210%80@@"])
  fun op bxor_def x = x
    val op bxor_def =
    DT(((("bitstring",29),[]),[]),
       [read"%107%217@%210%50%54%353%85$1@$0@@||@@"])
  fun op bnor_def x = x
    val op bnor_def =
    DT(((("bitstring",30),[]),[]),
       [read"%107%212@%210%50%54%353%205$1@$0@@||@@"])
  fun op bxnor_def x = x
    val op bxnor_def =
    DT(((("bitstring",31),[]),[]), [read"%107%216@%210%85@@"])
  fun op bnand_def x = x
    val op bnand_def =
    DT(((("bitstring",32),[]),[]),
       [read"%107%211@%210%50%54%353%80$1@$0@@||@@"])
  fun op replicate_def x = x
    val op replicate_def =
    DT(((("bitstring",33),[]),[]),
       [read"%73%28%75%25%113%252$1@$0@@%152%155%160$1@@$0@@@|@|@"])
  fun op extend_def_compute x = x
    val op extend_def_compute =
    DT(((("bitstring",1),
        [("arithmetic",[268]),("bitstring",[0]),
         ("bool",[26])]),["DISK_THM"]),
       [read"%80%55%30%72%20%112%221$1@%81@$0@@$0@|@|@@%80%55%11%75%25%72%20%112%221$2@%185%123$1@@@$0@@%221$2@%79%185%123$1@@@%185%123%202@@@@%136$2@$0@@@|@|@|@@%55%11%75%25%72%20%112%221$2@%185%124$1@@@$0@@%221$2@%185%123$1@@@%136$2@$0@@@|@|@|@@@"])
  fun op bitify_ind x = x
    val op bitify_ind =
    DT(((("bitstring",5),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("basicSize",[0]),
         ("bool",
         [13,25,26,36,47,48,51,52,53,54,58,63,72,76,78,80,93,96,104,105,
          107]),("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,9,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%70%0%116%80%74%4$1$0@%182@|@@%80%74%4%73%21%116$2%138%81@$1@@$0@@$2$1@%137%145@$0@@@|@|@@%74%4%73%21%116$2%138%185%123%202@@@$1@@$0@@$2$1@%137%193@$0@@@|@|@@@@%74%29%73%31$2$1@$0@|@|@@|@"])
  fun op bitify_def x = x
    val op bitify_def =
    DT(((("bitstring",6),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("basicSize",[0]),("bitstring",[3,4]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107,147]),
         ("combin",[19]),("list",[6,7]),("numeral",[3,7,8]),
         ("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%80%74%4%114%208$0@%182@@$0@|@@%80%73%21%74%4%114%208$0@%137%145@$1@@@%208%138%81@$0@@$1@@|@|@@%73%21%74%4%114%208$0@%137%193@$1@@@%208%138%185%123%202@@@$0@@$1@@|@|@@@"])
  fun op extend_cons x = x
    val op extend_cons =
    DT(((("bitstring",34),
        [("bitstring",[0]),("bool",[14,25,53,54,58,63,73,74,75]),
         ("num",[9]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%75%25%55%11%72%20%112%221$1@%192$2@@$0@@%136$1@%221$1@$2@$0@@@|@|@|@"])
  fun op pad_left_extend x = x
    val op pad_left_extend =
    DT(((("bitstring",35),
        [("arithmetic",
         [17,24,25,27,46,71,93,95,130,132,172,173,176,177,180,205,269]),
         ("bit",[21]),("bitstring",[0,34]),
         ("bool",
         [14,25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105,
          124]),("combin",[12,21]),("list",[20,48,279,280,292,295]),
         ("num",[9]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%25%72%20%55%11%112%186$0@$2@$1@@%221$0@%79$2@%162$1@@@$1@@|@|@|@"])
  fun op extend x = x
    val op extend =
    DT(((("bitstring",36),
        [("bitstring",[11,12,35]),("bool",[25,36,51,63])]),["DISK_THM"]),
       [read"%80%75%25%73%28%113%352$1@$0@@%222%145@%79$1@%163$0@@@$0@@|@|@@%75%25%72%27%112%259$1@$0@@%221%157$0@@%79$1@%162$0@@@$0@@|@|@@"])
  fun op fixwidth x = x
    val op fixwidth =
    DT(((("bitstring",37),
        [("bitstring",[13,36]),("bool",[25,32,56,58,63,105,129]),
         ("combin",[19])]),["DISK_THM"]),
       [read"%75%25%73%28%113%226$1@$0@@%169%23%133%82$0@$2@@%222%145@%79$2@$0@@$1@@%139%79$0@$2@@$1@@|@%163$0@@@|@|@"])
  fun op fixwidth_id x = x
    val op fixwidth_id =
    DT(((("bitstring",38),
        [("arithmetic",[130]),("bitstring",[13]),
         ("bool",[25,26,27,32,56,58,63,105,129,147]),("combin",[19]),
         ("list",[199]),("prim_rec",[4])]),["DISK_THM"]),
       [read"%73%47%113%226%163$0@@$0@@$0@|@"])
  fun op fixwidth_id_imp x = x
    val op fixwidth_id_imp =
    DT(((("bitstring",39),
        [("bitstring",[38]),("bool",[25,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%75%25%73%47%116%115$1@%163$0@@@%113%226$1@$0@@$0@@|@|@"])
  fun op boolify_reverse_map x = x
    val op boolify_reverse_map =
    DT(((("bitstring",40),
        [("bitstring",[2]),("bool",[14,25,58,63]),
         ("list",[20,23,43,56,173])]),["DISK_THM"]),
       [read"%74%29%73%3%113%214$0@$1@@%120%190%175%25%353%115$0@%81@@|@$1@@@$0@@|@|@"])
  fun op bitify_reverse_map x = x
    val op bitify_reverse_map =
    DT(((("bitstring",41),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("basicSize",[0]),("bitstring",[3,4]),
         ("bool",
         [14,15,25,26,27,30,36,51,52,54,58,63,64,93,96,104,105,107,147]),
         ("combin",[19]),("list",[6,7,20,23,43,56,173]),
         ("numeral",[3,7,8]),("pair",[7,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%28%74%4%114%208$0@$1@@%121%191%173%6%135$0@%185%123%202@@@%81@|@$1@@@$0@@|@|@"])
  fun op every_bit_bitify x = x
    val op every_bit_bitify =
    DT(((("bitstring",42),
        [("bitstring",[41]),("bool",[25,26,27,30,54,63,64]),
         ("list",[55,69,72]),("numeral",[3,7]),
         ("rich_list",[211])]),["DISK_THM"]),
       [read"%73%28%143%117%185%124%202@@@@%208%183@$0@@|@"])
  fun op length_pad_left x = x
    val op length_pad_left =
    DT(((("bitstring",43),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          109]),("list",[57,276,280]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%55%49%75%25%72%2%115%162%186$2@$1@$0@@@%135%82%162$0@@$1@@$1@%162$0@@@|@|@|@"])
  fun op length_pad_right x = x
    val op length_pad_right =
    DT(((("bitstring",44),
        [("arithmetic",[24,25,27,41,46,59,71,93,172,173,177,180,269]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          109]),("list",[57,276,281]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%55%49%75%25%72%2%115%162%188$2@$1@$0@@@%135%82%162$0@@$1@@$1@%162$0@@@|@|@|@"])
  fun op length_zero_extend x = x
    val op length_zero_extend =
    DT(((("bitstring",45),
        [("bitstring",[11,43]),
         ("bool",[25,53,56,58,63,105,124,129,147])]),["DISK_THM"]),
       [read"%75%25%73%28%116%82%163$0@@$1@@%115%163%352$1@$0@@@$1@@|@|@"])
  fun op length_sign_extend x = x
    val op length_sign_extend =
    DT(((("bitstring",46),
        [("bitstring",[12,43]),
         ("bool",[25,53,56,58,63,105,124,129,147])]),["DISK_THM"]),
       [read"%75%25%72%27%116%82%162$0@@$1@@%115%162%259$1@$0@@@$1@@|@|@"])
  fun op length_fixwidth x = x
    val op length_fixwidth =
    DT(((("bitstring",47),
        [("arithmetic",[24,25,27,46,59,62,71,93,172,173,177,180,269]),
         ("bitstring",[13,45]),
         ("bool",
         [25,26,27,30,32,36,43,52,54,56,58,63,64,93,96,101,104,105]),
         ("combin",[19]),("list",[201]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%25%73%28%115%163%226$1@$0@@@$1@|@|@"])
  fun op length_field x = x
    val op length_field =
    DT(((("bitstring",48),
        [("bitstring",[16,47]),("bool",[25,56])]),["DISK_THM"]),
       [read"%75%16%75%23%73%28%115%163%224$2@$1@$0@@@%79%192$2@@$1@@|@|@|@"])
  fun op length_bitify x = x
    val op length_bitify =
    DT(((("bitstring",49),
        [("arithmetic",[24,25,27,71,173,177,180]),("bitstring",[41]),
         ("bool",[25,36,52,54,58,63,104]),("list",[57,60,178]),
         ("numeral",[3,8])]),["DISK_THM"]),
       [read"%73%28%74%22%115%164%208$0@$1@@@%76%164$0@@%163$1@@@|@|@"])
  fun op length_bitify_null x = x
    val op length_bitify_null =
    DT(((("bitstring",50),
        [("arithmetic",[22,25]),("bitstring",[49]),("bool",[25,56]),
         ("list",[22])]),["DISK_THM"]),
       [read"%73%28%55%19%115%164%208%183@$1@@@%163$1@@|@|@"])
  fun op length_shiftr x = x
    val op length_shiftr =
    DT(((("bitstring",51),
        [("arithmetic",[117]),("bitstring",[15]),("bool",[25,56,63]),
         ("list",[196])]),["DISK_THM"]),
       [read"%72%27%75%25%115%162%257$1@$0@@@%79%162$1@@$0@@|@|@"])
  fun op length_rev_count_list x = x
    val op length_rev_count_list =
    DT(((("bitstring",52),
        [("arithmetic",[65]),("bitstring",[21]),("bool",[14,25,56]),
         ("list",[22,276,295]),("num",[9]),
         ("prim_rec",[1])]),["DISK_THM"]),
       [read"%75%25%115%164%253$0@@@$0@|@"])
  fun op length_w2v x = x
    val op length_w2v =
    DT(((("bitstring",53),
        [("arithmetic",[24,25,27,46,71,93,172,173,177,180,195,269]),
         ("bitstring",[19]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105]),
         ("list",[276]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%56%34%115%163%290$0@@@%218%263@@|@"])
  fun op length_rotate x = x
    val op length_rotate =
    DT(((("bitstring",54),
        [("arithmetic",
         [17,24,25,27,29,41,46,62,71,93,172,173,177,180,237,269]),
         ("bitstring",[17,48]),
         ("bool",
         [25,26,27,30,32,36,43,52,54,56,58,63,64,93,96,101,104,105]),
         ("list",[57]),("numeral",[0,3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%28%75%25%115%163%254$1@$0@@@%163$1@@|@|@"])
  fun op el_rev_count_list x = x
    val op el_rev_count_list =
    DT(((("bitstring",55),
        [("arithmetic",[65]),("bitstring",[21]),
         ("bool",[14,25,26,27,53,56,58,63,105,124]),("list",[283]),
         ("num",[9]),("prim_rec",[6])]),["DISK_THM"]),
       [read"%75%25%75%17%116%82$0@$1@@%115%142$0@%253$1@@@%79%79$1@%185%123%202@@@@$0@@@|@|@"])
  fun op el_zero_extend x = x
    val op el_zero_extend =
    DT(((("bitstring",56),
        [("arithmetic",
         [24,25,26,27,41,46,59,62,71,93,172,173,176,177,180,198,199,269]),
         ("bitstring",[11]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,93,96,101,104,105]),
         ("combin",[12]),("list",[276,280,283]),("numeral",[3,5,8]),
         ("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%25%75%17%73%28%85%141$1@%352$2@$0@@@%80%83%79$2@%163$0@@@$1@@%141%79$1@%79$2@%163$0@@@@$0@@@|@|@|@"])
  fun op el_sign_extend x = x
    val op el_sign_extend =
    DT(((("bitstring",57),
        [("arithmetic",[24,25,26,27,46,59,71,93,173,176,180,198,199]),
         ("bitstring",[12]),
         ("bool",[25,26,27,30,36,54,56,58,63,64,96,101,104,105,129]),
         ("combin",[12]),("list",[128,276,280,283]),("numeral",[3,8]),
         ("rich_list",[236,237])]),["DISK_THM"]),
       [read"%75%25%75%17%72%27%84%140$1@%259$2@$0@@@%127%82$1@%79$2@%162$0@@@@%140%81@$0@@%140%79$1@%79$2@%162$0@@@@$0@@@|@|@|@"])
  fun op el_fixwidth x = x
    val op el_fixwidth =
    DT(((("bitstring",58),
        [("arithmetic",
         [24,25,26,27,41,46,59,62,71,88,93,172,173,177,180,198,200,269]),
         ("bitstring",[13,56]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129,147]),("combin",[19]),("numeral",[3,5,8]),
         ("rich_list",[286]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%17%75%25%73%47%116%82$2@$1@@%85%141$2@%226$1@$0@@@%128%82%163$0@@$1@@%80%83%79$1@%163$0@@@$2@@%141%79$2@%79$1@%163$0@@@@$0@@@%141%76$2@%79%163$0@@$1@@@$0@@@@|@|@|@"])
  fun op el_field x = x
    val op el_field =
    DT(((("bitstring",59),
        [("arithmetic",
         [18,24,25,27,41,46,59,62,71,74,75,76,93,117,172,173,176,177,180,
          183,195,198,199,200,269]),("bitstring",[15,16,58]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,124,
          129]),("list",[196]),("numeral",[0,3,5,8]),("rich_list",[290]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%28%75%16%75%23%75%17%116%82$0@%79%192$2@@$1@@@%85%141$0@%224$2@$1@$3@@@%80%83%192$2@@%76$0@%163$3@@@@%141%79%76$0@%163$3@@@%192$2@@@$3@@@@|@|@|@|@"])
  fun op el_w2v x = x
    val op el_w2v =
    DT(((("bitstring",60),
        [("arithmetic",[24,25,27,41,46,71,93,172,173,177,180,195,269]),
         ("bitstring",[19]),
         ("bool",[25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("list",[283]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%56%34%75%25%116%82$0@%218%263@@@%85%141$0@%290$1@@@%223$1@%79%79%218%263@@%185%123%202@@@@$0@@@@|@|@"])
  fun op el_shiftr x = x
    val op el_shiftr =
    DT(((("bitstring",61),
        [("arithmetic",
         [17,24,25,26,27,41,46,53,59,62,64,69,71,74,93,128,172,173,176,177,
          180,198,199,200,269]),("bitstring",[16,38,47,51,58,59]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,124,
          129]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%17%73%28%75%25%75%13%116%80%82$1@$0@@%80%82$3@%79$0@$1@@@%82%81@$0@@@@%85%141$3@%258%226$0@$2@@$1@@@%80%83$0@%76$3@%163$2@@@@%141%79%76$3@%163$2@@@$0@@$2@@@@|@|@|@|@"])
  fun op shiftr_0 x = x
    val op shiftr_0 =
    DT(((("bitstring",62),
        [("arithmetic",[62]),("bitstring",[15]),("bool",[25,63]),
         ("list",[195])]),["DISK_THM"]),
       [read"%72%27%112%257$0@%81@@$0@|@"])
  fun op field_fixwidth x = x
    val op field_fixwidth =
    DT(((("bitstring",63),
        [("arithmetic",[62]),("bitstring",[16,62]),
         ("bool",[25,63])]),["DISK_THM"]),
       [read"%75%16%73%28%113%224$1@%81@$0@@%226%192$1@@$0@@|@|@"])
  fun op testbit x = x
    val op testbit =
    DT(((("bitstring",64),
        [("arithmetic",
         [24,25,26,27,41,46,59,60,63,64,71,93,101,112,117,128,130,172,173,
          176,177,180,194,195,200,269]),("bit",[21]),
         ("bitstring",[11,13,15,16,18]),
         ("bool",
         [14,25,26,27,30,32,36,43,51,52,53,54,56,58,62,63,64,93,96,101,104,
          105,107,124,129,147]),("combin",[12,19]),
         ("list",[17,20,22,43,48,128,192,193,194,196,279,280,295]),
         ("numeral",[3,5,7,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%8%73%28%85%262$1@$0@@%168%25%80%82$2@$0@@%141%79%79$0@%185%123%202@@@@$2@@$1@@|@%163$0@@@|@|@"])
  fun op testbit_geq_len x = x
    val op testbit_geq_len =
    DT(((("bitstring",65),
        [("arithmetic",[24,25,27,41,46,71,93,172,173,177,180,195,269]),
         ("bitstring",[64]),
         ("bool",
         [25,26,27,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%28%75%17%116%83%163$1@@$0@@%353%262$0@$1@@@|@|@"])
  fun op testbit_el x = x
    val op testbit_el =
    DT(((("bitstring",66),
        [("arithmetic",[24,25,27,41,46,71,93,172,173,177,180,195,269]),
         ("bitstring",[64]),
         ("bool",[25,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,124]),
         ("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%28%75%17%116%82$0@%163$1@@@%85%262$0@$1@@%141%79%79%163$1@@%185%123%202@@@@$0@@$1@@@|@|@"])
  fun op bit_v2w x = x
    val op bit_v2w =
    DT(((("bitstring",67),
        [("arithmetic",
         [24,25,41,46,59,71,93,147,172,173,176,177,180,197,269]),
         ("bitstring",[20]),
         ("bool",[25,26,27,30,36,43,51,52,54,56,58,63,96,101,104,105]),
         ("fcp",[15]),("numeral",[3,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[52,113])]),["DISK_THM"]),
       [read"%75%25%73%28%85%300$1@%268$0@@@%80%82$1@%218%263@@@%262$1@$0@@@|@|@"])
  fun op word_index_v2w x = x
    val op word_index_v2w =
    DT(((("bitstring",68),
        [("bitstring",[67]),("bool",[25,26,27,30,51,56,58,63,64,105,129]),
         ("combin",[40]),("words",[235])]),["DISK_THM"]),
       [read"%73%28%75%17%85%223%268$1@@$0@@%128%82$0@%218%263@@@%262$0@$1@@%148%223@%18@%268$1@@$0@@@|@|@"])
  fun op testbit_w2v x = x
    val op testbit_w2v =
    DT(((("bitstring",69),
        [("arithmetic",
         [24,25,27,41,46,59,62,71,93,147,172,173,176,177,180,195,197,200,
          269]),("bitstring",[19,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,
          107]),("combin",[19]),("list",[276,283]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[52,113])]),["DISK_THM"]),
       [read"%75%25%56%34%85%262$1@%290$0@@@%300$1@$0@@|@|@"])
  fun op w2v_v2w x = x
    val op w2v_v2w =
    DT(((("bitstring",70),
        [("arithmetic",
         [24,25,26,27,41,46,59,62,71,88,93,172,173,176,177,180,195,198,199,
          200,269]),("bitstring",[11,13,19,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129]),("combin",[12,19]),
         ("list",[57,109,201,276,280,283]),("numeral",[3,5,8]),
         ("rich_list",[236,237,286]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113,235])]),["DISK_THM"]),
       [read"%73%28%113%290%268$0@@@%226%218%263@@$0@@|@"])
  fun op v2w_w2v x = x
    val op v2w_w2v =
    DT(((("bitstring",71),
        [("arithmetic",
         [24,25,27,41,46,59,62,71,93,172,173,177,180,195,200,269]),
         ("bitstring",[19,20,64]),
         ("bool",
         [25,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,124]),
         ("combin",[19]),("fcp",[13,15]),("list",[276,283]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113])]),["DISK_THM"]),
       [read"%56%34%86%268%290$0@@@$0@|@"])
  fun op v2w_fixwidth x = x
    val op v2w_fixwidth =
    DT(((("bitstring",72),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,195,197,198,
          200,269]),("bitstring",[20,47,58,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,65,93,96,101,104,105,
          124,129,147]),("combin",[19]),("fcp",[13,15]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113])]),["DISK_THM"]),
       [read"%73%28%86%268%226%218%263@@$0@@@%268$0@@|@"])
  fun op fixwidth_fixwidth x = x
    val op fixwidth_fixwidth =
    DT(((("bitstring",73),
        [("arithmetic",[24,25,27,46,59,62,71,93,130,172,173,177,180,269]),
         ("bitstring",[13,45]),
         ("bool",
         [25,26,27,30,32,36,43,52,54,56,58,63,64,93,96,101,104,105,129,
          147]),("combin",[19]),("list",[199,201]),("numeral",[3,8]),
         ("prim_rec",[4]),("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%25%73%28%113%226$1@%226$1@$0@@@%226$1@$0@@|@|@"])
  fun op bitstring_nchotomy x = x
    val op bitstring_nchotomy =
    DT(((("bitstring",74),
        [("bitstring",[71]),("bool",[25,26,53,54,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%56%34%118%28%86$1@%268$0@@|@|@"])
  fun op ranged_bitstring_nchotomy x = x
    val op ranged_bitstring_nchotomy =
    DT(((("bitstring",75),
        [("bitstring",[47,72,74]),("bool",[25,56]),
         ("marker",[6])]),["DISK_THM"]),
       [read"%56%34%118%28%80%86$1@%268$0@@@%122%115%163$0@@%218%263@@@@|@|@"])
  fun op fixwidth_eq x = x
    val op fixwidth_eq =
    DT(((("bitstring",76),
        [("arithmetic",
         [18,24,25,26,27,41,46,59,62,71,74,76,93,172,173,176,177,180,183,
          195,198,200,269]),("bitstring",[47,58,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129]),("combin",[19]),("list",[109]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%25%73%28%73%47%85%113%226$2@$1@@%226$2@$0@@@%75%17%116%82$0@$3@@%85%262$0@$2@@%262$0@$1@@@|@@|@|@|@"])
  fun op v2w_11 x = x
    val op v2w_11 =
    DT(((("bitstring",77),
        [("bitstring",[67,76]),("bool",[25,51,56,58,63,105,124]),
         ("fcp",[13]),("words",[235])]),["DISK_THM"]),
       [read"%73%28%73%47%85%86%268$1@@%268$0@@@%113%226%218%263@@$1@@%226%218%263@@$0@@@|@|@"])
  fun op field_concat_right x = x
    val op field_concat_right =
    DT(((("bitstring",78),
        [("arithmetic",[25,27,41,46,62,71,91,93,128,172,173,180]),
         ("bitstring",[13,15,16]),
         ("bool",
         [25,26,27,32,36,43,53,54,56,58,63,96,101,104,105,124,129,147]),
         ("combin",[19]),("list",[57,195]),("numeral",[3,5,8]),
         ("rich_list",[202]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%75%16%73%3%73%7%116%115%163$0@@%192$2@@@%113%224$2@%81@%120$1@$0@@@$0@@|@|@|@"])
  fun op field_concat_left x = x
    val op field_concat_left =
    DT(((("bitstring",79),
        [("arithmetic",
         [17,24,25,26,27,46,53,71,93,128,145,172,173,176,177,180,198,269]),
         ("bitstring",[15,16]),
         ("bool",
         [25,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,124]),
         ("list",[57,197]),("numeral",[3,8]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%16%75%23%73%3%73%7%116%80%83$2@$3@@%83%163$0@@$2@@@%113%224$3@$2@%120$1@$0@@@%224%79$3@%163$0@@@%79$2@%163$0@@@$1@@@|@|@|@|@"])
  fun op field_id_imp x = x
    val op field_id_imp =
    DT(((("bitstring",80),
        [("bitstring",[39,63]),("bool",[14,25,26,36,53,54,55,56,63]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%75%25%73%28%116%115%192$1@@%163$0@@@%113%224$1@%81@$0@@$0@@|@|@"])
  fun op shiftl_replicate_F x = x
    val op shiftl_replicate_F =
    DT(((("bitstring",81),
        [("arithmetic",[25,128]),("bitstring",[14,33]),
         ("bool",[14,25,51,54,63]),("combin",[12,21]),
         ("list",[20,21,48,104,281,292,295]),("num",[9])]),["DISK_THM"]),
       [read"%73%28%75%25%113%256$1@$0@@%120$1@%252%137%145@%182@@$0@@@|@|@"])
  fun op word_lsb_v2w x = x
    val op word_lsb_v2w =
    DT(((("bitstring",82),
        [("arithmetic",[62,66]),("bitstring",[64,67]),
         ("bool",[25,26,27,30,32,51,54,56,58,63]),("combin",[19]),
         ("list",[22,92,128]),("rich_list",[32,196]),
         ("words",[46,113,235])]),["DISK_THM"]),
       [read"%73%28%85%319%268$0@@@%80%353%113$0@%182@@@%161$0@@@|@"])
  fun op word_msb_v2w x = x
    val op word_msb_v2w =
    DT(((("bitstring",83),
        [("arithmetic",[24,25,41,46,59,71,93,173,180,200]),
         ("bitstring",[67]),
         ("bool",[25,36,51,52,54,56,63,93,96,104,105,107]),
         ("numeral",[3,7,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[47,113,235])]),["DISK_THM"]),
       [read"%73%28%85%326%268$0@@@%262%79%218%263@@%185%123%202@@@@$0@@|@"])
  fun op w2w_v2w x = x
    val op w2w_v2w =
    DT(((("bitstring",84),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,195,197,198,
          200,269]),("bitstring",[47,58,64,67]),
         ("bool",
         [5,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129,147]),("combin",[19]),("fcp",[13]),
         ("numeral",[3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113,228,235])]),["DISK_THM"]),
       [read"%73%28%87%291%268$0@@@%269%226%135%82%219%264@@%218%263@@@%219%264@@%218%263@@@$0@@@|@"])
  fun op sw2sw_v2w x = x
    val op sw2sw_v2w =
    DT(((("bitstring",85),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,93,147,172,173,176,177,180,195,197,
          198,199,200,249,269]),("bitstring",[46,47,57,58,64,67,83]),
         ("bool",
         [5,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          124,129,147]),("combin",[19]),("fcp",[13]),("list",[128]),
         ("numeral",[3,5,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113,229,235])]),["DISK_THM"]),
       [read"%73%28%87%261%268$0@@@%129%82%218%263@@%219%264@@@%269%260%219%264@@%226%218%263@@$0@@@@%269%226%219%264@@$0@@@@|@"])
  fun op n2w_v2n x = x
    val op n2w_v2n =
    DT(((("bitstring",86),
        [("arithmetic",
         [24,25,27,41,46,59,66,71,93,147,155,172,173,176,177,180,195,197,
          200,269]),("bit",[30,98]),("bitstring",[8,41,42,50,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129]),("combin",[19]),("fcp",[13]),
         ("list",[60,67,178,304]),("numeral",[3,5,6,7,8]),
         ("numposrep",[5,16,32]),("rich_list",[236]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[235,238])]),["DISK_THM"]),
       [read"%73%28%86%230%266$0@@@%268$0@@|@"])
  fun op v2n_n2v x = x
    val op v2n_n2v =
    DT(((("bitstring",87),
        [("arithmetic",
         [9,22,24,25,27,41,46,59,67,71,93,95,172,173,176,177,180,205,219]),
         ("bit",[9,46]),("bitstring",[7,8,40,41]),
         ("bool",
         [14,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,
          105,108,109,124,129,147]),("combin",[8,19]),
         ("list",[20,23,30,43,48,55,60,61,66,173,175,178,280,295]),
         ("numeral",[3,5,7,8]),("numposrep",[0,5,9,14,15,27]),
         ("rich_list",[119]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%25%115%266%229$0@@@$0@|@"])
  fun op v2w_n2v x = x
    val op v2w_n2v =
    DT(((("bitstring",88),
        [("bitstring",[86,87]),("bool",[25,36,56,58])]),["DISK_THM"]),
       [read"%75%25%86%268%229$0@@@%230$0@@|@"])
  fun op w2n_v2w x = x
    val op w2n_v2w =
    DT(((("bitstring",89),
        [("bitstring",[86]),("bool",[25,56,58,169]),
         ("words",[118,140])]),["DISK_THM"]),
       [read"%73%28%115%289%268$0@@@%181%218%263@@%266$0@@@|@"])
  fun op v2n_lt x = x
    val op v2n_lt =
    DT(((("bitstring",90),
        [("arithmetic",[59]),("bitstring",[8,50]),
         ("bool",[25,36,53,54,63,104]),("numeral",[3,8]),
         ("numposrep",[5,16]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%73%28%82%266$0@@%144%185%124%202@@@%163$0@@@|@"])
  fun op word_and_v2w x = x
    val op word_and_v2w =
    DT(((("bitstring",91),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,93,130,147,172,173,176,177,180,195,
          197,198,200,269,294]),("bitstring",[20,25,28,38,47,58,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,108,109,124,125,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[22,23,60,67,90,128,156,160,166]),("marker",[6]),
         ("numeral",[3,5,8]),("pair",[16]),("prim_rec",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[32])]),["DISK_THM"]),
       [read"%73%28%73%47%86%296%268$1@@%268$0@@@%268%207$1@$0@@@|@|@"])
  fun op word_or_v2w x = x
    val op word_or_v2w =
    DT(((("bitstring",92),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,93,130,147,172,173,176,177,180,195,
          197,198,200,269,294]),("bitstring",[20,25,27,38,47,58,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,108,109,124,125,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[22,23,60,67,90,128,156,160,166]),("marker",[6]),
         ("numeral",[3,5,8]),("pair",[16]),("prim_rec",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[33])]),["DISK_THM"]),
       [read"%73%28%73%47%86%335%268$1@@%268$0@@@%268%215$1@$0@@@|@|@"])
  fun op word_xor_v2w x = x
    val op word_xor_v2w =
    DT(((("bitstring",93),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,93,130,147,172,173,176,177,180,195,
          197,198,200,269,294]),("bitstring",[20,25,29,38,47,58,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,108,109,124,125,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[22,23,60,67,90,128,156,160,166]),("marker",[6]),
         ("numeral",[3,5,8]),("pair",[16]),("prim_rec",[4,6]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("words",[34])]),["DISK_THM"]),
       [read"%73%28%73%47%86%349%268$1@@%268$0@@@%268%217$1@$0@@@|@|@"])
  fun op word_nand_v2w x = x
    val op word_nand_v2w =
    DT(((("bitstring",94),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,172,173,176,177,180,195,198,200,269,
          294]),("bitstring",[20,25,32,47,58,64,73]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,125,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[60,67,160,166]),("numeral",[3,5,8]),("pair",[16]),
         ("prim_rec",[4]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[35,113])]),["DISK_THM"]),
       [read"%73%28%73%47%86%329%268$1@@%268$0@@@%268%211%226%218%263@@$1@@%226%218%263@@$0@@@@|@|@"])
  fun op word_nor_v2w x = x
    val op word_nor_v2w =
    DT(((("bitstring",95),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,172,173,176,177,180,195,198,200,269,
          294]),("bitstring",[20,25,30,47,58,64,73]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,125,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[60,67,160,166]),("numeral",[3,5,8]),("pair",[16]),
         ("prim_rec",[4]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[36,113])]),["DISK_THM"]),
       [read"%73%28%73%47%86%332%268$1@@%268$0@@@%268%212%226%218%263@@$1@@%226%218%263@@$0@@@@|@|@"])
  fun op word_xnor_v2w x = x
    val op word_xnor_v2w =
    DT(((("bitstring",96),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,172,173,176,177,180,195,198,200,269,
          294]),("bitstring",[20,25,31,47,58,64,73]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,125,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[60,67,160,166]),("numeral",[3,5,8]),("pair",[16]),
         ("prim_rec",[4]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[37,113])]),["DISK_THM"]),
       [read"%73%28%73%47%86%346%268$1@@%268$0@@@%268%216%226%218%263@@$1@@%226%218%263@@$0@@@@|@|@"])
  fun op word_1comp_v2w x = x
    val op word_1comp_v2w =
    DT(((("bitstring",97),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,195,197,198,
          200,269]),("bitstring",[20,26,47,58,64]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,65,93,96,101,104,105,
          107,124,129,147]),("combin",[19]),("fcp",[13,15]),
         ("list",[60,67]),("numeral",[3,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[31,113])]),["DISK_THM"]),
       [read"%73%28%86%292%268$0@@@%268%213%226%218%263@@$0@@@@|@"])
  fun op word_lsl_v2w x = x
    val op word_lsl_v2w =
    DT(((("bitstring",98),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,71,88,93,128,147,172,173,176,177,180,195,
          197,200,269]),("bitstring",[14,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,
          124]),("combin",[12,19]),("fcp",[13,15]),
         ("list",[57,276,281,283]),("numeral",[3,5,8]),("prim_rec",[6]),
         ("rich_list",[236,237]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[90,113,235])]),["DISK_THM"]),
       [read"%75%25%73%28%86%320%268$0@@$1@@%268%256$0@$1@@@|@|@"])
  fun op word_lsr_v2w x = x
    val op word_lsr_v2w =
    DT(((("bitstring",99),
        [("arithmetic",
         [18,24,25,26,27,41,46,59,71,74,76,93,117,172,173,176,177,180,183,
          195,198,199,200,269]),("bitstring",[15,47,58,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129]),("combin",[19]),("fcp",[13,15]),("list",[196]),
         ("numeral",[0,3,5,8]),("rich_list",[290]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[91,113,235])]),["DISK_THM"]),
       [read"%75%25%73%28%86%321%268$0@@$1@@%268%258%226%218%263@@$0@@$1@@@|@|@"])
  fun op word_modify_v2w x = x
    val op word_modify_v2w =
    DT(((("bitstring",100),
        [("arithmetic",
         [24,25,26,27,41,46,59,71,93,172,173,176,177,180,195,198,200,269]),
         ("bitstring",[22,47,52,55,58,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,55,56,58,63,64,93,96,100,101,
          104,105,107,124,129]),("combin",[19]),("fcp",[13,15]),
         ("list",[60,67,160,166]),("numeral",[3,5,8]),("pair",[16]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[54,113,235])]),["DISK_THM"]),
       [read"%71%15%73%28%86%325$1@%268$0@@@%268%228$1@%226%218%263@@$0@@@@|@|@"])
  fun op word_bits_v2w x = x
    val op word_bits_v2w =
    DT(((("bitstring",101),
        [("arithmetic",
         [24,25,27,41,46,59,71,93,147,172,173,176,177,180,195,197,198,199,
          200,269,306]),("bitstring",[47,48,58,59,64,67]),
         ("bool",
         [5,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129]),("combin",[19]),("fcp",[13,15]),
         ("numeral",[0,3,5,8]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[49,113,235])]),["DISK_THM"]),
       [read"%75%16%75%23%73%28%86%301$2@$1@%268$0@@@%268%224$2@$1@%226%218%263@@$0@@@@|@|@|@"])
  fun op word_extract_v2w x = x
    val op word_extract_v2w =
    DT(((("bitstring",102),
        [("bool",[25,56]),("combin",[8]),("words",[51])]),["DISK_THM"]),
       [read"%75%16%75%23%73%28%87%307$2@$1@%268$0@@@%291%301$2@$1@%268$0@@@@|@|@|@"])
  fun op word_slice_v2w x = x
    val op word_slice_v2w =
    DT(((("bitstring",103),
        [("bitstring",[98,101]),("bool",[25,56]),
         ("words",[272])]),["DISK_THM"]),
       [read"%75%16%75%23%73%28%86%343$2@$1@%268$0@@@%268%256%224$2@$1@%226%218%263@@$0@@@$1@@@|@|@|@"])
  fun op word_asr_v2w x = x
    val op word_asr_v2w =
    DT(((("bitstring",104),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,60,62,71,93,130,147,172,173,176,177,180,
          195,197,198,199,200,269,306]),
         ("bitstring",[12,47,51,58,61,64,67,83,99]),
         ("bool",
         [5,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,125,129,147]),("combin",[12,19]),("fcp",[13,15]),
         ("list",[17,22,32,57,90,128,276,280,283]),("numeral",[0,3,5,8]),
         ("prim_rec",[6]),("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",
         [33,48,113,144,192,193,206,235,395,417,554])]),["DISK_THM"]),
       [read"%75%25%73%28%86%299%268$0@@$1@@%166%21%268%260%218%263@@%133%83%218%263@@$2@@%137%158$0@@%182@@%258$0@$2@@@@|@%226%218%263@@$0@@@|@|@"])
  fun op word_ror_v2w x = x
    val op word_ror_v2w =
    DT(((("bitstring",105),
        [("arithmetic",
         [17,18,22,24,25,26,27,41,46,59,62,64,69,71,74,75,76,79,88,93,101,
          113,128,147,172,173,176,177,180,183,190,195,197,198,199,200,237,
          269,306]),("bitstring",[17,47,48,58,59,64,67,72]),
         ("bool",
         [2,15,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,
          105,107,124,129]),("combin",[19]),("fcp",[13,15]),("list",[57]),
         ("marker",[6]),("numeral",[0,3,5,6,7,8]),("prim_rec",[6]),
         ("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("words",[33,49,90,113,235,416])]),["DISK_THM"]),
       [read"%75%25%73%28%86%340%268$0@@$1@@%268%254%226%218%263@@$0@@$1@@@|@|@"])
  fun op word_reverse_v2w x = x
    val op word_reverse_v2w =
    DT(((("bitstring",106),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,66,71,93,172,173,176,177,180,195,198,
          200,269]),("bitstring",[47,58,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129]),("combin",[19]),("fcp",[13,15]),("list",[178,304]),
         ("numeral",[3,5,8]),("prim_rec",[6]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[53,113,235])]),["DISK_THM"]),
       [read"%73%28%86%339%268$0@@@%268%190%226%218%263@@$0@@@@|@"])
  fun op word_join_v2w x = x
    val op word_join_v2w =
    DT(((("bitstring",107),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,71,93,147,172,173,176,177,180,195,197,
          198,200,269]),("bitstring",[47,58,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129,147]),("combin",[19]),("fcp",[13,19]),("list",[57]),
         ("numeral",[3,5,8]),("prim_rec",[6]),("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113,235,306])]),["DISK_THM"]),
       [read"%73%31%73%33%116%80%150%198@@%151%199@@@%103%312%268$1@@%269$0@@@%288%120$1@%226%219%264@@$0@@@@@|@|@"])
  fun op word_concat_v2w x = x
    val op word_concat_v2w =
    DT(((("bitstring",108),
        [("arithmetic",[295]),("bitstring",[84,107]),
         ("bool",[25,51,53,56,58,63,105,124,129,147]),("fcp",[19]),
         ("words",[102])]),["DISK_THM"]),
       [read"%73%31%73%33%116%80%150%198@@%151%199@@@%88%302%268$1@@%269$0@@@%270%226%179%220%265@@%76%218%263@@%219%264@@@@%120$1@%226%219%264@@$0@@@@@@|@|@"])
  fun op word_join_v2w_rwt x = x
    val op word_join_v2w_rwt =
    DT(((("bitstring",109),
        [("bitstring",[107]),("bool",[25,26,27,30,51,56,58,63,64,105,129]),
         ("combin",[40])]),["DISK_THM"]),
       [read"%73%31%73%33%103%312%268$1@@%269$0@@@%131%80%150%198@@%151%199@@@%288%120$1@%226%219%264@@$0@@@@%147%312@%9@%268$1@@%269$0@@@@|@|@"])
  fun op word_concat_v2w_rwt x = x
    val op word_concat_v2w_rwt =
    DT(((("bitstring",110),
        [("bitstring",[108]),("bool",[25,26,27,30,51,56,58,63,64,105,129]),
         ("combin",[40])]),["DISK_THM"]),
       [read"%73%31%73%33%88%302%268$1@@%269$0@@@%130%80%150%198@@%151%199@@@%270%226%179%220%265@@%76%218%263@@%219%264@@@@%120$1@%226%219%264@@$0@@@@@%146%302@%9@%268$1@@%269$0@@@@|@|@"])
  fun op word_reduce_v2w x = x
    val op word_reduce_v2w =
    DT(((("bitstring",111),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,62,71,93,130,172,173,176,177,180,195,198,
          200,269]),("bitstring",[47,58,64,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129,147]),("combin",[12,19]),("fcp",[13,15]),
         ("list",[17,22,109,128,150,276,283]),("numeral",[3,5,8]),
         ("prim_rec",[6]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[38,113,235,591])]),["DISK_THM"]),
       [read"%69%14%73%28%102%338$1@%268$0@@@%167%21%287%137%153$2@%158$0@@%195$0@@@%182@@|@%226%218%263@@$0@@@|@|@"])
  fun op reduce_and_v2w x = x
    val op reduce_and_v2w =
    DT(((("bitstring",112),[("bool",[60]),("words",[40])]),["DISK_THM"]),
       [read"%73%28%102%250%268$0@@@%338%80@%268$0@@@|@"])
  fun op reduce_or_v2w x = x
    val op reduce_or_v2w =
    DT(((("bitstring",113),[("bool",[60]),("words",[41])]),["DISK_THM"]),
       [read"%73%28%102%251%268$0@@@%338%205@%268$0@@@|@"])
  fun op extract_v2w x = x
    val op extract_v2w =
    DT(((("bitstring",114),
        [("arithmetic",
         [22,24,25,27,37,41,46,59,71,93,130,172,173,176,177,180,195,198,
          199,200,269]),("bitstring",[47,48,58,59,64,76,77,84,101,102]),
         ("bool",
         [5,25,26,27,30,32,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          107,124,129,147]),("combin",[19]),("numeral",[3,5,8]),
         ("prim_rec",[4]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("words",[113])]),["DISK_THM"]),
       [read"%75%16%75%23%73%28%116%80%83%163$0@@%218%263@@@%80%115%219%264@@%79%192$2@@$1@@@%82%219%264@@%218%263@@@@@%87%307$2@$1@%268$0@@@%269%224$2@$1@$0@@@@|@|@|@"])
  fun op word_bit_last_shiftr x = x
    val op word_bit_last_shiftr =
    DT(((("bitstring",115),
        [("arithmetic",
         [24,25,27,41,46,59,62,71,93,117,130,172,173,176,177,180,198,206,
          269]),("bitstring",[11,13,16,18,67]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,54,56,58,62,63,64,93,96,101,104,105,
          124,129]),("combin",[12,19]),
         ("list",[16,20,22,48,90,93,279,280,295]),("numeral",[0,3,5,7,8]),
         ("rich_list",[145,252]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%75%17%73%28%116%82$1@%218%263@@@%85%300$1@%268$0@@@%165%21%80%353%184$0@@@%161$0@@|@%258$0@$1@@@@|@|@"])
  fun op ops_to_v2w x = x
    val op ops_to_v2w =
    DT(((("bitstring",116),
        [("bitstring",[88]),("bool",[25,36,51,56])]),["DISK_THM"]),
       [read"%80%73%28%75%25%88%336%270$1@@%232$0@@@%336%270$1@@%270%229$0@@@@|@|@@%80%73%28%75%25%89%337%233$0@@%271$1@@@%337%271%229$0@@@%271$1@@@|@|@@%80%73%28%75%25%90%297%272$1@@%234$0@@@%297%272$1@@%272%229$0@@@@|@|@@%80%73%28%75%25%91%298%235$0@@%273$1@@@%298%273%229$0@@@%273$1@@@|@|@@%80%73%28%75%25%92%350%274$1@@%236$0@@@%350%274$1@@%274%229$0@@@@|@|@@%80%73%28%75%25%93%351%237$0@@%275$1@@@%351%275%229$0@@@%275$1@@@|@|@@%80%73%28%75%25%94%333%276$1@@%238$0@@@%333%276$1@@%276%229$0@@@@|@|@@%80%73%28%75%25%95%334%239$0@@%277$1@@@%334%277%229$0@@@%277$1@@@|@|@@%80%73%28%75%25%96%330%278$1@@%240$0@@@%330%278$1@@%278%229$0@@@@|@|@@%80%73%28%75%25%97%331%241$0@@%279$1@@@%331%279%229$0@@@%279$1@@@|@|@@%80%73%28%75%25%98%347%280$1@@%242$0@@@%347%280$1@@%280%229$0@@@@|@|@@%80%73%28%75%25%99%348%243$0@@%281$1@@@%348%281%229$0@@@%281$1@@@|@|@@%80%73%28%75%25%100%303%268$1@@%231$0@@@%303%268$1@@%269%229$0@@@@|@|@@%80%73%28%75%25%101%304%230$0@@%269$1@@@%304%268%229$0@@@%269$1@@@|@|@@%80%73%28%75%25%104%313%283$1@@%245$0@@@%313%283$1@@%284%229$0@@@@|@|@@%73%28%75%25%105%314%246$0@@%286$1@@@%314%285%229$0@@@%286$1@@@|@|@@@@@@@@@@@@@@@@"])
  fun op ops_to_n2w x = x
    val op ops_to_n2w =
    DT(((("bitstring",117),
        [("bitstring",[86]),("bool",[25,36,51,56])]),["DISK_THM"]),
       [read"%80%73%28%87%293%269$0@@@%293%231%266$0@@@@|@@%80%73%28%88%317%270$0@@@%317%232%266$0@@@@|@@%80%73%28%75%25%85%86%268$1@@%230$0@@@%86%230%266$1@@@%230$0@@@|@|@@%80%73%28%75%25%85%86%230$0@@%268$1@@@%86%230$0@@%230%266$1@@@@|@|@@%80%73%28%57%35%89%294%271$1@@$0@@%294%233%266$1@@@$0@@|@|@@%80%73%28%58%36%90%295$0@%272$1@@@%295$0@%234%266$1@@@@|@|@@%80%73%28%59%37%91%344%273$1@@$0@@%344%235%266$1@@@$0@@|@|@@%80%73%28%60%38%92%345$0@%274$1@@@%345$0@%236%266$1@@@@|@|@@%80%73%28%61%39%93%327%275$1@@$0@@%327%237%266$1@@@$0@@|@|@@%80%73%28%62%40%94%328$0@%276$1@@@%328$0@%238%266$1@@@@|@|@@%80%73%28%63%41%95%341%277$1@@$0@@%341%239%266$1@@@$0@@|@|@@%80%73%28%64%42%96%342$0@%278$1@@@%342$0@%240%266$1@@@@|@|@@%80%73%28%65%43%97%305%279$1@@$0@@%305%241%266$1@@@$0@@|@|@@%80%73%28%66%44%98%306$0@%280$1@@@%306$0@%242%266$1@@@@|@|@@%80%73%28%67%45%99%323%281$1@@$0@@%323%243%266$1@@@$0@@|@|@@%80%73%28%68%46%100%324$0@%282$1@@@%324$0@%244%266$1@@@@|@|@@%80%73%28%56%34%85%322%268$1@@$0@@%322%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%322$0@%268$1@@@%322$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%309%268$1@@$0@@%309%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%309$0@%268$1@@@%309$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%315%268$1@@$0@@%315%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%315$0@%268$1@@@%315$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%308%268$1@@$0@@%308%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%308$0@%268$1@@@%308$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%316%268$1@@$0@@%316%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%316$0@%268$1@@@%316$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%310%268$1@@$0@@%310%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%310$0@%268$1@@@%310$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%318%268$1@@$0@@%318%230%266$1@@@$0@@|@|@@%80%73%28%56%34%85%318$0@%268$1@@@%318$0@%230%266$1@@@@|@|@@%80%73%28%56%34%85%311%268$1@@$0@@%311%230%266$1@@@$0@@|@|@@%73%28%56%34%85%311$0@%268$1@@@%311$0@%230%266$1@@@@|@|@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  end
  val _ = DB.bindl "bitstring"
  [("extend_def",extend_def,DB.Def), ("boolify_def",boolify_def,DB.Def),
   ("bitify_tupled_primitive_def",bitify_tupled_primitive_def,DB.Def),
   ("bitify_curried_def",bitify_curried_def,DB.Def),
   ("n2v_def",n2v_def,DB.Def), ("v2n_def",v2n_def,DB.Def),
   ("s2v_def",s2v_def,DB.Def), ("v2s_def",v2s_def,DB.Def),
   ("zero_extend_def",zero_extend_def,DB.Def),
   ("sign_extend_def",sign_extend_def,DB.Def),
   ("fixwidth_def",fixwidth_def,DB.Def), ("shiftl_def",shiftl_def,DB.Def),
   ("shiftr_def",shiftr_def,DB.Def), ("field_def",field_def,DB.Def),
   ("rotate_def",rotate_def,DB.Def), ("testbit_def",testbit_def,DB.Def),
   ("w2v_def",w2v_def,DB.Def), ("v2w_def",v2w_def,DB.Def),
   ("rev_count_list_def",rev_count_list_def,DB.Def),
   ("modify_def",modify_def,DB.Def),
   ("field_insert_def",field_insert_def,DB.Def),
   ("add_def",add_def,DB.Def), ("bitwise_def",bitwise_def,DB.Def),
   ("bnot_def",bnot_def,DB.Def), ("bor_def",bor_def,DB.Def),
   ("band_def",band_def,DB.Def), ("bxor_def",bxor_def,DB.Def),
   ("bnor_def",bnor_def,DB.Def), ("bxnor_def",bxnor_def,DB.Def),
   ("bnand_def",bnand_def,DB.Def), ("replicate_def",replicate_def,DB.Def),
   ("extend_def_compute",extend_def_compute,DB.Thm),
   ("bitify_ind",bitify_ind,DB.Thm), ("bitify_def",bitify_def,DB.Thm),
   ("extend_cons",extend_cons,DB.Thm),
   ("pad_left_extend",pad_left_extend,DB.Thm), ("extend",extend,DB.Thm),
   ("fixwidth",fixwidth,DB.Thm), ("fixwidth_id",fixwidth_id,DB.Thm),
   ("fixwidth_id_imp",fixwidth_id_imp,DB.Thm),
   ("boolify_reverse_map",boolify_reverse_map,DB.Thm),
   ("bitify_reverse_map",bitify_reverse_map,DB.Thm),
   ("every_bit_bitify",every_bit_bitify,DB.Thm),
   ("length_pad_left",length_pad_left,DB.Thm),
   ("length_pad_right",length_pad_right,DB.Thm),
   ("length_zero_extend",length_zero_extend,DB.Thm),
   ("length_sign_extend",length_sign_extend,DB.Thm),
   ("length_fixwidth",length_fixwidth,DB.Thm),
   ("length_field",length_field,DB.Thm),
   ("length_bitify",length_bitify,DB.Thm),
   ("length_bitify_null",length_bitify_null,DB.Thm),
   ("length_shiftr",length_shiftr,DB.Thm),
   ("length_rev_count_list",length_rev_count_list,DB.Thm),
   ("length_w2v",length_w2v,DB.Thm),
   ("length_rotate",length_rotate,DB.Thm),
   ("el_rev_count_list",el_rev_count_list,DB.Thm),
   ("el_zero_extend",el_zero_extend,DB.Thm),
   ("el_sign_extend",el_sign_extend,DB.Thm),
   ("el_fixwidth",el_fixwidth,DB.Thm), ("el_field",el_field,DB.Thm),
   ("el_w2v",el_w2v,DB.Thm), ("el_shiftr",el_shiftr,DB.Thm),
   ("shiftr_0",shiftr_0,DB.Thm), ("field_fixwidth",field_fixwidth,DB.Thm),
   ("testbit",testbit,DB.Thm), ("testbit_geq_len",testbit_geq_len,DB.Thm),
   ("testbit_el",testbit_el,DB.Thm), ("bit_v2w",bit_v2w,DB.Thm),
   ("word_index_v2w",word_index_v2w,DB.Thm),
   ("testbit_w2v",testbit_w2v,DB.Thm), ("w2v_v2w",w2v_v2w,DB.Thm),
   ("v2w_w2v",v2w_w2v,DB.Thm), ("v2w_fixwidth",v2w_fixwidth,DB.Thm),
   ("fixwidth_fixwidth",fixwidth_fixwidth,DB.Thm),
   ("bitstring_nchotomy",bitstring_nchotomy,DB.Thm),
   ("ranged_bitstring_nchotomy",ranged_bitstring_nchotomy,DB.Thm),
   ("fixwidth_eq",fixwidth_eq,DB.Thm), ("v2w_11",v2w_11,DB.Thm),
   ("field_concat_right",field_concat_right,DB.Thm),
   ("field_concat_left",field_concat_left,DB.Thm),
   ("field_id_imp",field_id_imp,DB.Thm),
   ("shiftl_replicate_F",shiftl_replicate_F,DB.Thm),
   ("word_lsb_v2w",word_lsb_v2w,DB.Thm),
   ("word_msb_v2w",word_msb_v2w,DB.Thm), ("w2w_v2w",w2w_v2w,DB.Thm),
   ("sw2sw_v2w",sw2sw_v2w,DB.Thm), ("n2w_v2n",n2w_v2n,DB.Thm),
   ("v2n_n2v",v2n_n2v,DB.Thm), ("v2w_n2v",v2w_n2v,DB.Thm),
   ("w2n_v2w",w2n_v2w,DB.Thm), ("v2n_lt",v2n_lt,DB.Thm),
   ("word_and_v2w",word_and_v2w,DB.Thm),
   ("word_or_v2w",word_or_v2w,DB.Thm),
   ("word_xor_v2w",word_xor_v2w,DB.Thm),
   ("word_nand_v2w",word_nand_v2w,DB.Thm),
   ("word_nor_v2w",word_nor_v2w,DB.Thm),
   ("word_xnor_v2w",word_xnor_v2w,DB.Thm),
   ("word_1comp_v2w",word_1comp_v2w,DB.Thm),
   ("word_lsl_v2w",word_lsl_v2w,DB.Thm),
   ("word_lsr_v2w",word_lsr_v2w,DB.Thm),
   ("word_modify_v2w",word_modify_v2w,DB.Thm),
   ("word_bits_v2w",word_bits_v2w,DB.Thm),
   ("word_extract_v2w",word_extract_v2w,DB.Thm),
   ("word_slice_v2w",word_slice_v2w,DB.Thm),
   ("word_asr_v2w",word_asr_v2w,DB.Thm),
   ("word_ror_v2w",word_ror_v2w,DB.Thm),
   ("word_reverse_v2w",word_reverse_v2w,DB.Thm),
   ("word_join_v2w",word_join_v2w,DB.Thm),
   ("word_concat_v2w",word_concat_v2w,DB.Thm),
   ("word_join_v2w_rwt",word_join_v2w_rwt,DB.Thm),
   ("word_concat_v2w_rwt",word_concat_v2w_rwt,DB.Thm),
   ("word_reduce_v2w",word_reduce_v2w,DB.Thm),
   ("reduce_and_v2w",reduce_and_v2w,DB.Thm),
   ("reduce_or_v2w",reduce_or_v2w,DB.Thm),
   ("extract_v2w",extract_v2w,DB.Thm),
   ("word_bit_last_shiftr",word_bit_last_shiftr,DB.Thm),
   ("ops_to_v2w",ops_to_v2w,DB.Thm), ("ops_to_n2w",ops_to_n2w,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("wordsTheory.words_grammars",
                          wordsTheory.words_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="bitstring",Name="bitstring"}, T"list" "list" [bool])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("extend", (Term.prim_mk_const { Name = "extend", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("boolify", (Term.prim_mk_const { Name = "boolify", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bitify_tupled", (Term.prim_mk_const { Name = "bitify_tupled", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bitify_tupled", (Term.prim_mk_const { Name = "bitify_tupled", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bitify", (Term.prim_mk_const { Name = "bitify", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bitify", (Term.prim_mk_const { Name = "bitify", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2v", (Term.prim_mk_const { Name = "n2v", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2v", (Term.prim_mk_const { Name = "n2v", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("v2n", (Term.prim_mk_const { Name = "v2n", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("v2n", (Term.prim_mk_const { Name = "v2n", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2v", (Term.prim_mk_const { Name = "s2v", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2v", (Term.prim_mk_const { Name = "s2v", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("v2s", (Term.prim_mk_const { Name = "v2s", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("v2s", (Term.prim_mk_const { Name = "v2s", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("zero_extend", (Term.prim_mk_const { Name = "zero_extend", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("zero_extend", (Term.prim_mk_const { Name = "zero_extend", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sign_extend", (Term.prim_mk_const { Name = "sign_extend", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sign_extend", (Term.prim_mk_const { Name = "sign_extend", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fixwidth", (Term.prim_mk_const { Name = "fixwidth", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fixwidth", (Term.prim_mk_const { Name = "fixwidth", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("shiftl", (Term.prim_mk_const { Name = "shiftl", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("shiftl", (Term.prim_mk_const { Name = "shiftl", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("shiftr", (Term.prim_mk_const { Name = "shiftr", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("shiftr", (Term.prim_mk_const { Name = "shiftr", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("field", (Term.prim_mk_const { Name = "field", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("field", (Term.prim_mk_const { Name = "field", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rotate", (Term.prim_mk_const { Name = "rotate", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rotate", (Term.prim_mk_const { Name = "rotate", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("testbit", (Term.prim_mk_const { Name = "testbit", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("testbit", (Term.prim_mk_const { Name = "testbit", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2v", (Term.prim_mk_const { Name = "w2v", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("w2v", (Term.prim_mk_const { Name = "w2v", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("v2w", (Term.prim_mk_const { Name = "v2w", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("v2w", (Term.prim_mk_const { Name = "v2w", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rev_count_list", (Term.prim_mk_const { Name = "rev_count_list", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("rev_count_list", (Term.prim_mk_const { Name = "rev_count_list", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("modify", (Term.prim_mk_const { Name = "modify", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("modify", (Term.prim_mk_const { Name = "modify", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("field_insert", (Term.prim_mk_const { Name = "field_insert", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("field_insert", (Term.prim_mk_const { Name = "field_insert", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("add", (Term.prim_mk_const { Name = "add", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("add", (Term.prim_mk_const { Name = "add", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bitwise", (Term.prim_mk_const { Name = "bitwise", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bitwise", (Term.prim_mk_const { Name = "bitwise", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnot", (Term.prim_mk_const { Name = "bnot", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnot", (Term.prim_mk_const { Name = "bnot", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bor", (Term.prim_mk_const { Name = "bor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bor", (Term.prim_mk_const { Name = "bor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("band", (Term.prim_mk_const { Name = "band", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("band", (Term.prim_mk_const { Name = "band", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bxor", (Term.prim_mk_const { Name = "bxor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bxor", (Term.prim_mk_const { Name = "bxor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnor", (Term.prim_mk_const { Name = "bnor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnor", (Term.prim_mk_const { Name = "bnor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bxnor", (Term.prim_mk_const { Name = "bxnor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bxnor", (Term.prim_mk_const { Name = "bxnor", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnand", (Term.prim_mk_const { Name = "bnand", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnand", (Term.prim_mk_const { Name = "bnand", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("replicate", (Term.prim_mk_const { Name = "replicate", Thy = "bitstring"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("replicate", (Term.prim_mk_const { Name = "replicate", Thy = "bitstring"}))
  val bitstring_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bitstring",
    thydataty = "simp",
    data =
        "bitstring.length_w2v bitstring.v2n_n2v bitstring.fixwidth_id_imp bitstring.fixwidth_fixwidth bitstring.v2w_n2v bitstring.v2w_w2v bitstring.length_bitify bitstring.length_rotate bitstring.length_shiftr bitstring.length_field bitstring.length_fixwidth"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "bitstring",
    thydataty = "compute",
    data =
        "bitstring.extend_def bitstring.extend_def_compute bitstring.reduce_or_v2w bitstring.reduce_and_v2w bitstring.word_reduce_v2w bitstring.word_concat_v2w_rwt bitstring.word_join_v2w bitstring.word_slice_v2w bitstring.word_extract_v2w bitstring.word_bits_v2w bitstring.word_modify_v2w bitstring.word_reverse_v2w bitstring.word_msb_v2w bitstring.word_lsb_v2w bitstring.word_xnor_v2w bitstring.word_nor_v2w bitstring.word_nand_v2w bitstring.word_xor_v2w bitstring.word_or_v2w bitstring.word_and_v2w bitstring.word_1comp_v2w bitstring.word_ror_v2w bitstring.word_asr_v2w bitstring.word_lsr_v2w bitstring.word_lsl_v2w bitstring.word_index_v2w bitstring.sw2sw_v2w bitstring.w2w_v2w bitstring.w2v_v2w bitstring.w2n_v2w bitstring.bit_v2w bitstring.v2w_11 bitstring.extend bitstring.fixwidth bitstring.ops_to_n2w bitstring.ops_to_v2w bitstring.testbit bitstring.replicate_def bitstring.bnand_def bitstring.bxnor_def bitstring.bnor_def bitstring.bxor_def bitstring.band_def bitstring.bor_def bitstring.bnot_def bitstring.bitwise_def bitstring.add_def bitstring.field_insert_def bitstring.modify_def bitstring.rev_count_list_def bitstring.w2v_def bitstring.rotate_def bitstring.field_def bitstring.shiftr_def bitstring.shiftl_def bitstring.v2s_def bitstring.s2v_def bitstring.v2n_def bitstring.n2v_def bitstring.bitify_def bitstring.boolify_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "bitstring"
end
