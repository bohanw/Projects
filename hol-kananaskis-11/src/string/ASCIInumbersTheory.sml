structure ASCIInumbersTheory :> ASCIInumbersTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ASCIInumbersTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open numposrepTheory stringTheory
  in end;
  val _ = Theory.link_parents
          ("ASCIInumbers",
          Arbnum.fromString "1488586811",
          Arbnum.fromString "816342")
          [("numposrep",
           Arbnum.fromString "1488586585",
           Arbnum.fromString "135075"),
           ("string",
           Arbnum.fromString "1488586780",
           Arbnum.fromString "545382")];
  val _ = Theory.incorporate_types "ASCIInumbers" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("list", "list"),
   ID("string", "char"), ID("option", "option"), ID("min", "bool"),
   ID("bool", "!"), ID("pair", ","), ID("pair", "prod"),
   ID("arithmetic", "-"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("arithmetic", ">"), ID("min", "@"), ID("list", "APPEND"),
   ID("bool", "ARB"), ID("bit", "BIT"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bit", "BITV"), ID("string", "CHR"),
   ID("bool", "COND"), ID("list", "CONS"), ID("list", "EVERY"),
   ID("string", "EXPLODE"), ID("ASCIInumbers", "HEX"), ID("combin", "I"),
   ID("string", "IMPLODE"), ID("rich_list", "LASTN"), ID("list", "LENGTH"),
   ID("logroot", "LOG"), ID("list", "MAP"), ID("list", "NIL"),
   ID("option", "NONE"), ID("arithmetic", "NUMERAL"),
   ID("prim_rec", "PRE"), ID("list", "REVERSE"), ID("option", "SOME"),
   ID("string", "SUB"), ID("num", "SUC"), ID("ASCIInumbers", "UNHEX"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("ASCIInumbers", "fromBinString"),
   ID("ASCIInumbers", "fromDecString"),
   ID("ASCIInumbers", "fromHexString"), ID("string", "isDigit"),
   ID("string", "isHexDigit"), ID("numposrep", "l2n"),
   ID("bool", "literal_case"), ID("numposrep", "n2l"),
   ID("ASCIInumbers", "n2s"), ID("ASCIInumbers", "num_from_bin_string"),
   ID("ASCIInumbers", "num_from_dec_string"),
   ID("ASCIInumbers", "num_from_hex_string"),
   ID("ASCIInumbers", "num_from_oct_string"),
   ID("ASCIInumbers", "num_to_bin_string"),
   ID("ASCIInumbers", "num_to_dec_string"),
   ID("ASCIInumbers", "num_to_hex_string"),
   ID("ASCIInumbers", "num_to_oct_string"), ID("combin", "o"),
   ID("ASCIInumbers", "s2n"), ID("string", "toUpper"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [3], TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 1, 0],
   TYOP [0, 4, 3], TYOP [0, 0, 5], TYOP [0, 0, 2], TYOP [0, 0, 1],
   TYOP [0, 8, 7], TYOP [0, 0, 9], TYOP [4, 0], TYOP [0, 2, 11], TYOP [5],
   TYOP [0, 1, 13], TYOP [0, 0, 13], TYOP [0, 1, 14], TYOP [0, 0, 15],
   TYOP [0, 14, 13], TYOP [0, 18, 13], TYOP [0, 4, 13], TYOP [0, 20, 13],
   TYOP [0, 15, 13], TYOP [0, 22, 13], TYOP [0, 8, 13], TYOP [0, 24, 13],
   TYOP [0, 2, 13], TYOP [0, 26, 13], TYOP [8, 2, 0], TYOP [0, 0, 28],
   TYOP [0, 2, 29], TYOP [0, 0, 0], TYOP [0, 0, 31], TYOP [0, 13, 13],
   TYOP [0, 13, 33], TYOP [0, 4, 20], TYOP [0, 3, 13], TYOP [0, 3, 36],
   TYOP [0, 8, 24], TYOP [0, 7, 13], TYOP [0, 7, 39], TYOP [0, 31, 13],
   TYOP [0, 31, 41], TYOP [0, 2, 26], TYOP [0, 11, 13], TYOP [0, 11, 44],
   TYOP [0, 16, 13], TYOP [0, 46, 16], TYOP [0, 17, 13], TYOP [0, 48, 17],
   TYOP [0, 2, 2], TYOP [0, 2, 50], TYOP [0, 1, 1], TYOP [0, 1, 52],
   TYOP [0, 13, 53], TYOP [0, 13, 51], TYOP [0, 13, 32], TYOP [0, 11, 11],
   TYOP [0, 11, 57], TYOP [0, 13, 58], TYOP [0, 1, 50], TYOP [0, 14, 26],
   TYOP [0, 0, 50], TYOP [0, 52, 50], TYOP [2, 0], TYOP [0, 2, 64],
   TYOP [0, 4, 65], TYOP [0, 64, 2], TYOP [0, 8, 67], TYOP [0, 0, 11],
   TYOP [0, 28, 1], TYOP [0, 4, 4], TYOP [0, 71, 4], TYOP [0, 16, 72],
   TYOP [0, 8, 8], TYOP [0, 74, 8], TYOP [0, 17, 75], TYOP [0, 64, 0],
   TYOP [0, 0, 77], TYOP [0, 0, 64], TYOP [0, 0, 79], TYOP [0, 7, 31],
   TYOP [0, 3, 81], TYOP [0, 4, 14], TYOP [0, 15, 83], TYOP [0, 4, 52],
   TYOP [0, 8, 85]]
  end
  val _ = Theory.incorporate_consts "ASCIInumbers" tyvector
     [("s2n", 6), ("num_to_oct_string", 7), ("num_to_hex_string", 7),
      ("num_to_dec_string", 7), ("num_to_bin_string", 7),
      ("num_from_oct_string", 3), ("num_from_hex_string", 3),
      ("num_from_dec_string", 3), ("num_from_bin_string", 3), ("n2s", 10),
      ("fromHexString", 12), ("fromDecString", 12), ("fromBinString", 12),
      ("UNHEX", 4), ("HEX", 8)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("HEX", 8), TMV("P", 14), TMV("P", 15), TMV("R", 16), TMV("R", 17),
   TMV("UNHEX", 4), TMV("a", 1), TMV("a", 0), TMV("b", 0), TMV("c", 1),
   TMV("c2n", 4), TMV("f", 4), TMV("f", 8), TMV("m", 0), TMV("n", 0),
   TMV("n2c", 8), TMV("s", 2), TMV("v", 1), TMV("v", 0), TMV("v18", 0),
   TMV("v24", 1), TMV("x", 0), TMC(6, 18), TMC(6, 19), TMC(6, 21),
   TMC(6, 23), TMC(6, 25), TMC(6, 27), TMC(6, 22), TMC(7, 30), TMC(9, 32),
   TMC(10, 34), TMC(11, 0), TMC(12, 17), TMC(13, 34), TMC(13, 16),
   TMC(13, 35), TMC(13, 37), TMC(13, 38), TMC(13, 40), TMC(13, 42),
   TMC(13, 43), TMC(13, 17), TMC(13, 45), TMC(14, 34), TMC(15, 17),
   TMC(16, 47), TMC(16, 49), TMC(17, 51), TMC(18, 1), TMC(18, 0),
   TMC(19, 17), TMC(20, 31), TMC(21, 31), TMC(22, 32), TMC(23, 8),
   TMC(24, 54), TMC(24, 55), TMC(24, 56), TMC(24, 59), TMC(25, 60),
   TMC(26, 61), TMC(27, 50), TMC(28, 8), TMC(29, 52), TMC(29, 31),
   TMC(30, 50), TMC(31, 62), TMC(32, 3), TMC(33, 32), TMC(34, 63),
   TMC(34, 66), TMC(34, 68), TMC(35, 2), TMC(36, 11), TMC(37, 31),
   TMC(38, 31), TMC(39, 50), TMC(40, 69), TMC(41, 70), TMC(42, 31),
   TMC(43, 4), TMC(44, 46), TMC(44, 48), TMC(45, 73), TMC(45, 76),
   TMC(46, 0), TMC(47, 34), TMC(48, 12), TMC(49, 12), TMC(50, 12),
   TMC(51, 14), TMC(52, 14), TMC(53, 78), TMC(54, 71), TMC(54, 74),
   TMC(55, 80), TMC(56, 10), TMC(57, 3), TMC(58, 3), TMC(59, 3),
   TMC(60, 3), TMC(61, 7), TMC(62, 7), TMC(63, 7), TMC(64, 7), TMC(65, 82),
   TMC(65, 84), TMC(65, 86), TMC(66, 6), TMC(67, 52), TMC(68, 33)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op s2n_def x = x
    val op s2n_def =
    DT(((("ASCIInumbers",0),[]),[]),
       [read"%28%8%24%11%27%16%42%109$2@$1@$0@@%93$2@%71$1@%77$0@@@@|@|@|@"])
  fun op n2s_def x = x
    val op n2s_def =
    DT(((("ASCIInumbers",1),[]),[]),
       [read"%28%8%26%12%28%14%41%97$2@$1@$0@@%77%72$1@%96$2@$0@@@@|@|@|@"])
  fun op HEX_primitive_def x = x
    val op HEX_primitive_def =
    DT(((("ASCIInumbers",2),[]),[]),
       [read"%38%63@%85%47%4%83$0@|@@%0%7%95%18%56%42$0@%32@@%64%55%75%53%52%52%52%53%86@@@@@@@@@%56%42$0@%75%52%86@@@@%64%55%75%52%53%52%52%53%86@@@@@@@@@%56%42$0@%75%53%86@@@@%64%55%75%53%53%52%52%53%86@@@@@@@@@%56%42$0@%75%52%52%86@@@@@%64%55%75%52%52%53%52%53%86@@@@@@@@@%56%42$0@%75%53%52%86@@@@@%64%55%75%53%52%53%52%53%86@@@@@@@@@%56%42$0@%75%52%53%86@@@@@%64%55%75%52%53%53%52%53%86@@@@@@@@@%56%42$0@%75%53%53%86@@@@@%64%55%75%53%53%53%52%53%86@@@@@@@@@%56%42$0@%75%52%52%52%86@@@@@@%64%55%75%52%52%52%53%53%86@@@@@@@@@%56%42$0@%75%53%52%52%86@@@@@@%64%55%75%53%52%52%53%53%86@@@@@@@@@%56%42$0@%75%52%53%52%86@@@@@@%64%55%75%52%53%52%53%53%86@@@@@@@@@%56%42$0@%75%53%53%52%86@@@@@@%64%55%75%52%53%52%52%52%52%86@@@@@@@@@@%56%42$0@%75%52%52%53%86@@@@@@%64%55%75%53%53%52%52%52%52%86@@@@@@@@@@%56%42$0@%75%53%52%53%86@@@@@@%64%55%75%52%52%53%52%52%52%86@@@@@@@@@@%56%42$0@%75%52%53%53%86@@@@@@%64%55%75%53%52%53%52%52%52%86@@@@@@@@@@%56%42$0@%75%53%53%53%86@@@@@@%64%55%75%52%53%53%52%52%52%86@@@@@@@@@@%56%42$0@%75%52%52%52%52%86@@@@@@@%64%55%75%53%53%53%52%52%52%86@@@@@@@@@@%49@@@@@@@@@@@@@@@@|@$0@||@@"])
  fun op UNHEX_primitive_def x = x
    val op UNHEX_primitive_def =
    DT(((("ASCIInumbers",5),[]),[]),
       [read"%36%81@%84%46%3%82$0@|@@%5%6%94%17%58%35$0@%55%75%53%52%52%52%53%86@@@@@@@@@%65%32@@%58%35$0@%55%75%52%53%52%52%53%86@@@@@@@@@%65%75%52%86@@@@%58%35$0@%55%75%53%53%52%52%53%86@@@@@@@@@%65%75%53%86@@@@%58%35$0@%55%75%52%52%53%52%53%86@@@@@@@@@%65%75%52%52%86@@@@@%58%35$0@%55%75%53%52%53%52%53%86@@@@@@@@@%65%75%53%52%86@@@@@%58%35$0@%55%75%52%53%53%52%53%86@@@@@@@@@%65%75%52%53%86@@@@@%58%35$0@%55%75%53%53%53%52%53%86@@@@@@@@@%65%75%53%53%86@@@@@%58%35$0@%55%75%52%52%52%53%53%86@@@@@@@@@%65%75%52%52%52%86@@@@@@%58%35$0@%55%75%53%52%52%53%53%86@@@@@@@@@%65%75%53%52%52%86@@@@@@%58%35$0@%55%75%52%53%52%53%53%86@@@@@@@@@%65%75%52%53%52%86@@@@@@%58%35$0@%55%75%52%53%52%52%52%53%86@@@@@@@@@@%65%75%53%53%52%86@@@@@@%58%35$0@%55%75%53%53%52%52%52%53%86@@@@@@@@@@%65%75%52%52%53%86@@@@@@%58%35$0@%55%75%52%52%53%52%52%53%86@@@@@@@@@@%65%75%53%52%53%86@@@@@@%58%35$0@%55%75%53%52%53%52%52%53%86@@@@@@@@@@%65%75%52%53%53%86@@@@@@%58%35$0@%55%75%52%53%53%52%52%53%86@@@@@@@@@@%65%75%53%53%53%86@@@@@@%58%35$0@%55%75%53%53%53%52%52%53%86@@@@@@@@@@%65%75%52%52%52%52%86@@@@@@@%58%35$0@%55%75%52%53%52%52%52%52%86@@@@@@@@@@%65%75%53%53%52%86@@@@@@%58%35$0@%55%75%53%53%52%52%52%52%86@@@@@@@@@@%65%75%52%52%53%86@@@@@@%58%35$0@%55%75%52%52%53%52%52%52%86@@@@@@@@@@%65%75%53%52%53%86@@@@@@%58%35$0@%55%75%53%52%53%52%52%52%86@@@@@@@@@@%65%75%52%53%53%86@@@@@@%58%35$0@%55%75%52%53%53%52%52%52%86@@@@@@@@@@%65%75%53%53%53%86@@@@@@%58%35$0@%55%75%53%53%53%52%52%52%86@@@@@@@@@@%65%75%52%52%52%52%86@@@@@@@%50@@@@@@@@@@@@@@@@@@@@@@|@$0@||@@"])
  fun op num_from_bin_string_def x = x
    val op num_from_bin_string_def =
    DT(((("ASCIInumbers",8),[]),[]), [read"%37%98@%109%75%53%86@@@%81@@"])
  fun op num_from_oct_string_def x = x
    val op num_from_oct_string_def =
    DT(((("ASCIInumbers",9),[]),[]),
       [read"%37%101@%109%75%53%52%52%86@@@@@%81@@"])
  fun op num_from_dec_string_def x = x
    val op num_from_dec_string_def =
    DT(((("ASCIInumbers",10),[]),[]),
       [read"%37%99@%109%75%53%53%52%86@@@@@%81@@"])
  fun op num_from_hex_string_def x = x
    val op num_from_hex_string_def =
    DT(((("ASCIInumbers",11),[]),[]),
       [read"%37%100@%109%75%53%52%52%52%86@@@@@@%81@@"])
  fun op num_to_bin_string_def x = x
    val op num_to_bin_string_def =
    DT(((("ASCIInumbers",12),[]),[]), [read"%39%102@%97%75%53%86@@@%63@@"])
  fun op num_to_oct_string_def x = x
    val op num_to_oct_string_def =
    DT(((("ASCIInumbers",13),[]),[]),
       [read"%39%105@%97%75%53%52%52%86@@@@@%63@@"])
  fun op num_to_dec_string_def x = x
    val op num_to_dec_string_def =
    DT(((("ASCIInumbers",14),[]),[]),
       [read"%39%103@%97%75%53%53%52%86@@@@@%63@@"])
  fun op num_to_hex_string_def x = x
    val op num_to_hex_string_def =
    DT(((("ASCIInumbers",15),[]),[]),
       [read"%39%104@%97%75%53%52%52%52%86@@@@@@%63@@"])
  fun op fromBinString_def x = x
    val op fromBinString_def =
    DT(((("ASCIInumbers",16),[]),[]),
       [read"%27%16%43%88$0@@%59%31%111%41$0@%73@@@%61%9%87%35$0@%55%75%53%52%52%52%53%86@@@@@@@@@%35$0@%55%75%52%53%52%52%53%86@@@@@@@@@|@$0@@@%78%98$0@@@%74@@|@"])
  fun op fromDecString_def x = x
    val op fromDecString_def =
    DT(((("ASCIInumbers",17),[]),[]),
       [read"%27%16%43%89$0@@%59%31%111%41$0@%73@@@%61%91@$0@@@%78%99$0@@@%74@@|@"])
  fun op fromHexString_def x = x
    val op fromHexString_def =
    DT(((("ASCIInumbers",18),[]),[]),
       [read"%27%16%43%90$0@@%59%31%111%41$0@%73@@@%61%92@$0@@@%78%100$0@@@%74@@|@"])
  fun op HEX_ind x = x
    val op HEX_ind =
    DT(((("ASCIInumbers",3),
        [("bool",[25,26,47,48,53,54,55,58,63,72,75,78,80]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%25%2%44%31$0%32@@%31$0%75%52%86@@@@%31$0%75%53%86@@@@%31$0%75%52%52%86@@@@@%31$0%75%53%52%86@@@@@%31$0%75%52%53%86@@@@@%31$0%75%53%53%86@@@@@%31$0%75%52%52%52%86@@@@@@%31$0%75%53%52%52%86@@@@@@%31$0%75%52%53%52%86@@@@@@%31$0%75%53%53%52%86@@@@@@%31$0%75%52%52%53%86@@@@@@%31$0%75%53%52%53%86@@@@@@%31$0%75%52%53%53%86@@@@@@%31$0%75%53%53%53%86@@@@@@%31$0%75%52%52%52%52%86@@@@@@@%28%19$1$0@|@@@@@@@@@@@@@@@@@@%28%18$1$0@|@@|@"])
  fun op HEX_def x = x
    val op HEX_def =
    DT(((("ASCIInumbers",4),
        [("ASCIInumbers",[2]),("bool",[15,56,64,164]),("combin",[19]),
         ("numeral",[3,6]),("relation",[107,126])]),["DISK_THM"]),
       [read"%31%35%63%32@@%55%75%53%52%52%52%53%86@@@@@@@@@%31%35%63%75%52%86@@@@%55%75%52%53%52%52%53%86@@@@@@@@@%31%35%63%75%53%86@@@@%55%75%53%53%52%52%53%86@@@@@@@@@%31%35%63%75%52%52%86@@@@@%55%75%52%52%53%52%53%86@@@@@@@@@%31%35%63%75%53%52%86@@@@@%55%75%53%52%53%52%53%86@@@@@@@@@%31%35%63%75%52%53%86@@@@@%55%75%52%53%53%52%53%86@@@@@@@@@%31%35%63%75%53%53%86@@@@@%55%75%53%53%53%52%53%86@@@@@@@@@%31%35%63%75%52%52%52%86@@@@@@%55%75%52%52%52%53%53%86@@@@@@@@@%31%35%63%75%53%52%52%86@@@@@@%55%75%53%52%52%53%53%86@@@@@@@@@%31%35%63%75%52%53%52%86@@@@@@%55%75%52%53%52%53%53%86@@@@@@@@@%31%35%63%75%53%53%52%86@@@@@@%55%75%52%53%52%52%52%52%86@@@@@@@@@@%31%35%63%75%52%52%53%86@@@@@@%55%75%53%53%52%52%52%52%86@@@@@@@@@@%31%35%63%75%53%52%53%86@@@@@@%55%75%52%52%53%52%52%52%86@@@@@@@@@@%31%35%63%75%52%53%53%86@@@@@@%55%75%53%52%53%52%52%52%86@@@@@@@@@@%31%35%63%75%53%53%53%86@@@@@@%55%75%52%53%53%52%52%52%86@@@@@@@@@@%35%63%75%52%52%52%52%86@@@@@@@%55%75%53%53%53%52%52%52%86@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op UNHEX_ind x = x
    val op UNHEX_ind =
    DT(((("ASCIInumbers",6),
        [("bool",[25,26,47,48,53,54,55,58,63,72,75,78,80]),
         ("relation",[101,107]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%23%1%44%31$0%55%75%53%52%52%52%53%86@@@@@@@@@%31$0%55%75%52%53%52%52%53%86@@@@@@@@@%31$0%55%75%53%53%52%52%53%86@@@@@@@@@%31$0%55%75%52%52%53%52%53%86@@@@@@@@@%31$0%55%75%53%52%53%52%53%86@@@@@@@@@%31$0%55%75%52%53%53%52%53%86@@@@@@@@@%31$0%55%75%53%53%53%52%53%86@@@@@@@@@%31$0%55%75%52%52%52%53%53%86@@@@@@@@@%31$0%55%75%53%52%52%53%53%86@@@@@@@@@%31$0%55%75%52%53%52%53%53%86@@@@@@@@@%31$0%55%75%52%53%52%52%52%53%86@@@@@@@@@@%31$0%55%75%53%53%52%52%52%53%86@@@@@@@@@@%31$0%55%75%52%52%53%52%52%53%86@@@@@@@@@@%31$0%55%75%53%52%53%52%52%53%86@@@@@@@@@@%31$0%55%75%52%53%53%52%52%53%86@@@@@@@@@@%31$0%55%75%53%53%53%52%52%53%86@@@@@@@@@@%31$0%55%75%52%53%52%52%52%52%86@@@@@@@@@@%31$0%55%75%53%53%52%52%52%52%86@@@@@@@@@@%31$0%55%75%52%52%53%52%52%52%86@@@@@@@@@@%31$0%55%75%53%52%53%52%52%52%86@@@@@@@@@@%31$0%55%75%52%53%53%52%52%52%86@@@@@@@@@@%31$0%55%75%53%53%53%52%52%52%86@@@@@@@@@@%22%20$1$0@|@@@@@@@@@@@@@@@@@@@@@@@@%22%17$1$0@|@@|@"])
  fun op UNHEX_def x = x
    val op UNHEX_def =
    DT(((("ASCIInumbers",7),
        [("ASCIInumbers",[5]),("bool",[15,25,54,56,64,164]),
         ("combin",[19]),("numeral",[3,6,7]),("relation",[107,126]),
         ("string",[7,31])]),["DISK_THM"]),
       [read"%31%42%81%55%75%53%52%52%52%53%86@@@@@@@@@%32@@%31%42%81%55%75%52%53%52%52%53%86@@@@@@@@@%75%52%86@@@@%31%42%81%55%75%53%53%52%52%53%86@@@@@@@@@%75%53%86@@@@%31%42%81%55%75%52%52%53%52%53%86@@@@@@@@@%75%52%52%86@@@@@%31%42%81%55%75%53%52%53%52%53%86@@@@@@@@@%75%53%52%86@@@@@%31%42%81%55%75%52%53%53%52%53%86@@@@@@@@@%75%52%53%86@@@@@%31%42%81%55%75%53%53%53%52%53%86@@@@@@@@@%75%53%53%86@@@@@%31%42%81%55%75%52%52%52%53%53%86@@@@@@@@@%75%52%52%52%86@@@@@@%31%42%81%55%75%53%52%52%53%53%86@@@@@@@@@%75%53%52%52%86@@@@@@%31%42%81%55%75%52%53%52%53%53%86@@@@@@@@@%75%52%53%52%86@@@@@@%31%42%81%55%75%52%53%52%52%52%53%86@@@@@@@@@@%75%53%53%52%86@@@@@@%31%42%81%55%75%53%53%52%52%52%53%86@@@@@@@@@@%75%52%52%53%86@@@@@@%31%42%81%55%75%52%52%53%52%52%53%86@@@@@@@@@@%75%53%52%53%86@@@@@@%31%42%81%55%75%53%52%53%52%52%53%86@@@@@@@@@@%75%52%53%53%86@@@@@@%31%42%81%55%75%52%53%53%52%52%53%86@@@@@@@@@@%75%53%53%53%86@@@@@@%31%42%81%55%75%53%53%53%52%52%53%86@@@@@@@@@@%75%52%52%52%52%86@@@@@@@%31%42%81%55%75%52%53%52%52%52%52%86@@@@@@@@@@%75%53%53%52%86@@@@@@%31%42%81%55%75%53%53%52%52%52%52%86@@@@@@@@@@%75%52%52%53%86@@@@@@%31%42%81%55%75%52%52%53%52%52%52%86@@@@@@@@@@%75%53%52%53%86@@@@@@%31%42%81%55%75%53%52%53%52%52%52%86@@@@@@@@@@%75%52%53%53%86@@@@@@%31%42%81%55%75%52%53%53%52%52%52%86@@@@@@@@@@%75%53%53%53%86@@@@@@%42%81%55%75%53%53%53%52%52%52%86@@@@@@@@@@%75%52%52%52%52%86@@@@@@@@@@@@@@@@@@@@@@@@@@@"])
  fun op s2n_compute x = x
    val op s2n_compute =
    DT(((("ASCIInumbers",19),
        [("ASCIInumbers",[0]),("bool",[25,56]),
         ("string",[51])]),["DISK_THM"]),
       [read"%42%109%8@%11@%16@@%93%8@%71%11@%77%62%16@@@@@"])
  fun op n2s_compute x = x
    val op n2s_compute =
    DT(((("ASCIInumbers",20),
        [("ASCIInumbers",[1]),("bool",[25,63]),("list",[176]),
         ("string",[51])]),["DISK_THM"]),
       [read"%41%97%8@%12@%14@@%66%77%72%12@%96%8@%14@@@@@"])
  fun op UNHEX_HEX x = x
    val op UNHEX_HEX =
    DT(((("ASCIInumbers",21),
        [("ASCIInumbers",[4,7]),("arithmetic",[130,268]),
         ("bool",[14,25,26,27,52,56,58,64,105,124]),
         ("numeral",[3,7,15,16,17]),("prim_rec",[6,19])]),["DISK_THM"]),
       [read"%28%14%44%33$0@%75%53%52%52%52%86@@@@@@@%42%81%63$0@@@$0@@|@"])
  fun op HEX_UNHEX x = x
    val op HEX_UNHEX =
    DT(((("ASCIInumbers",22),
        [("ASCIInumbers",[4,7]),
         ("arithmetic",[46,59,71,93,95,130,147,173,268]),
         ("bool",[14,25,26,27,36,51,52,54,56,58,63,64,96,101,104,105,124]),
         ("numeral",[0,3,5,6,7,8,15,16,17]),("prim_rec",[6,19]),
         ("string",[8,9,12,13,17,26])]),["DISK_THM"]),
       [read"%22%9%44%92$0@@%35%63%81$0@@@%110$0@@@|@"])
  fun op DEC_UNDEC x = x
    val op DEC_UNDEC =
    DT(((("ASCIInumbers",23),
        [("ASCIInumbers",[4,7]),
         ("arithmetic",[46,59,71,93,95,130,147,173,268]),
         ("bool",[14,25,26,27,36,52,54,56,58,63,64,96,101,104,105,124]),
         ("numeral",[3,5,6,7,8,15,16,17]),("prim_rec",[6,19]),
         ("string",[8,12,15])]),["DISK_THM"]),
       [read"%22%9%44%91$0@@%35%63%81$0@@@$0@@|@"])
  fun op s2n_n2s x = x
    val op s2n_n2s =
    DT(((("ASCIInumbers",24),
        [("ASCIInumbers",[0,1]),("arithmetic",[9,41,46,59,71,93,180]),
         ("bool",[14,25,36,51,53,54,56,58,63,96,101,104,105,124]),
         ("combin",[8]),("list",[23,30,43,48,61,66,155,175]),
         ("numeral",[3,5,8]),("numposrep",[15,27]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%24%10%26%15%28%8%28%14%44%31%33%75%52%86@@@$1@@%28%21%44%33$0@$2@@%42$4$3$0@@@$0@@|@@@%42%109$1@$3@%97$1@$2@$0@@@$0@@|@|@|@|@"])
  fun op n2s_s2n x = x
    val op n2s_s2n =
    DT(((("ASCIInumbers",25),
        [("ASCIInumbers",[0,1]),
         ("arithmetic",[41,46,59,71,93,173,180,219]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,56,58,60,63,64,96,101,104,105,124,
          129,143,147,169]),("combin",[8]),
         ("list",[20,23,43,48,60,61,63,66,72,175,178,180,192]),
         ("marker",[6]),("numeral",[3,5,8]),("numposrep",[0,4,17,21]),
         ("rich_list",[119,211,257]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%24%10%26%15%28%8%27%16%44%31%33%75%52%86@@@$1@@%61%107%45$1@@$3@@$0@@@%41%97$1@$2@%109$1@$3@$0@@@%57%42%109$1@$3@$0@@%32@@%60$2%32@@%73@@%70%108$2@$3@@%67%80%69$1@%109$1@$3@$0@@@@$0@@@@@|@|@|@|@"])
  fun op toNum_toString x = x
    val op toNum_toString =
    DT(((("ASCIInumbers",26),
        [("ASCIInumbers",[2,5,10,14,24]),
         ("arithmetic",[41,46,71,93,173,177,180]),
         ("bool",[15,25,36,51,52,54,56,63,64,93,96,101,104,105,164]),
         ("combin",[19]),("numeral",[0,3,5,6,7,8]),("relation",[107,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),("string",[7,31])]),["DISK_THM"]),
       [read"%28%14%42%99%103$0@@@$0@|@"])
  fun op toString_toNum_cancel x = x
    val op toString_toNum_cancel =
    DT(((("ASCIInumbers",27),[("ASCIInumbers",[26])]),["DISK_THM"]),
       [read"%28%14%42%99%103$0@@@$0@|@"])
  fun op toString_inj x = x
    val op toString_inj =
    DT(((("ASCIInumbers",28),
        [("ASCIInumbers",[26]),("bool",[25,26,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%28%14%28%13%34%41%103$1@@%103$0@@@%42$1@$0@@|@|@"])
  fun op toString_11 x = x
    val op toString_11 =
    DT(((("ASCIInumbers",29),[("ASCIInumbers",[28])]),["DISK_THM"]),
       [read"%28%14%28%13%34%41%103$1@@%103$0@@@%42$1@$0@@|@|@"])
  fun op STRCAT_toString_inj x = x
    val op STRCAT_toString_inj =
    DT(((("ASCIInumbers",30),
        [("ASCIInumbers",[28]),("bool",[25,56]),
         ("list",[104])]),["DISK_THM"]),
       [read"%28%14%28%13%27%16%34%41%48$0@%103$2@@@%48$0@%103$1@@@@%42$2@$1@@|@|@|@"])
  fun op BIT_num_from_bin_string x = x
    val op BIT_num_from_bin_string =
    DT(((("ASCIInumbers",31),
        [("ASCIInumbers",[0,8]),("arithmetic",[275]),("bit",[7,21,33]),
         ("bool",[25,36,51,54,56,58,60,63,105,124]),("combin",[8]),
         ("list",[60,67,72,178,304]),("numeral",[3,7]),("numposrep",[18]),
         ("rich_list",[211]),("string",[34])]),["DISK_THM"]),
       [read"%28%21%27%16%44%31%61%107%45%75%53%86@@@@%81@@$0@@%33$1@%68$0@@@@%34%51$1@%98$0@@@%42%81%79%29$0@%76%30%68$0@@$1@@@@@@%75%52%86@@@@@|@|@"])
  fun op SUB_num_to_bin_string x = x
    val op SUB_num_to_bin_string =
    DT(((("ASCIInumbers",32),
        [("ASCIInumbers",[1,12]),
         ("arithmetic",
         [24,25,41,46,59,66,71,93,172,173,177,180,195,200,269,275]),
         ("bit",[6,21,33]),
         ("bool",
         [25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,107,
          109,124]),("list",[60,67,178,304]),("numeral",[3,7,8]),
         ("numposrep",[14,20]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("string",[34])]),["DISK_THM"]),
       [read"%28%21%28%14%44%33$1@%68%102$0@@@@%35%79%29%102$0@@$1@@@%63%54$0@%76%30%68%102$0@@@$1@@@@@@|@|@"])
  fun op num_bin_string x = x
    val op num_bin_string =
    DT(((("ASCIInumbers",33),
        [("ASCIInumbers",[8,12,21,24]),
         ("arithmetic",[41,46,59,71,93,173,180]),
         ("bool",[25,36,51,53,54,56,58,60,63,96,101,104,105,124]),
         ("combin",[8,19]),("numeral",[3,5,7,8])]),["DISK_THM"]),
       [read"%40%106%98@%102@@%65@"])
  fun op num_oct_string x = x
    val op num_oct_string =
    DT(((("ASCIInumbers",34),
        [("ASCIInumbers",[9,13,21,24]),
         ("arithmetic",[41,46,59,71,93,173,180]),
         ("bool",[25,36,51,53,54,56,58,60,63,96,101,104,105,124]),
         ("combin",[8,19]),("numeral",[0,3,5,7,8])]),["DISK_THM"]),
       [read"%40%106%101@%105@@%65@"])
  fun op num_dec_string x = x
    val op num_dec_string =
    DT(((("ASCIInumbers",35),
        [("ASCIInumbers",[10,14,21,24]),
         ("arithmetic",[41,46,59,71,93,173,180]),
         ("bool",[25,36,51,53,54,56,58,60,63,96,101,104,105,124]),
         ("combin",[8,19]),("numeral",[0,3,5,7,8])]),["DISK_THM"]),
       [read"%40%106%99@%103@@%65@"])
  fun op num_hex_string x = x
    val op num_hex_string =
    DT(((("ASCIInumbers",36),
        [("ASCIInumbers",[11,15,21,24]),
         ("bool",[25,36,51,53,54,56,58,60,63,105,124]),("combin",[8,19]),
         ("numeral",[3,7])]),["DISK_THM"]), [read"%40%106%100@%104@@%65@"])
  end
  val _ = DB.bindl "ASCIInumbers"
  [("s2n_def",s2n_def,DB.Def), ("n2s_def",n2s_def,DB.Def),
   ("HEX_primitive_def",HEX_primitive_def,DB.Def),
   ("UNHEX_primitive_def",UNHEX_primitive_def,DB.Def),
   ("num_from_bin_string_def",num_from_bin_string_def,DB.Def),
   ("num_from_oct_string_def",num_from_oct_string_def,DB.Def),
   ("num_from_dec_string_def",num_from_dec_string_def,DB.Def),
   ("num_from_hex_string_def",num_from_hex_string_def,DB.Def),
   ("num_to_bin_string_def",num_to_bin_string_def,DB.Def),
   ("num_to_oct_string_def",num_to_oct_string_def,DB.Def),
   ("num_to_dec_string_def",num_to_dec_string_def,DB.Def),
   ("num_to_hex_string_def",num_to_hex_string_def,DB.Def),
   ("fromBinString_def",fromBinString_def,DB.Def),
   ("fromDecString_def",fromDecString_def,DB.Def),
   ("fromHexString_def",fromHexString_def,DB.Def),
   ("HEX_ind",HEX_ind,DB.Thm), ("HEX_def",HEX_def,DB.Thm),
   ("UNHEX_ind",UNHEX_ind,DB.Thm), ("UNHEX_def",UNHEX_def,DB.Thm),
   ("s2n_compute",s2n_compute,DB.Thm), ("n2s_compute",n2s_compute,DB.Thm),
   ("UNHEX_HEX",UNHEX_HEX,DB.Thm), ("HEX_UNHEX",HEX_UNHEX,DB.Thm),
   ("DEC_UNDEC",DEC_UNDEC,DB.Thm), ("s2n_n2s",s2n_n2s,DB.Thm),
   ("n2s_s2n",n2s_s2n,DB.Thm), ("toNum_toString",toNum_toString,DB.Thm),
   ("toString_toNum_cancel",toString_toNum_cancel,DB.Thm),
   ("toString_inj",toString_inj,DB.Thm),
   ("toString_11",toString_11,DB.Thm),
   ("STRCAT_toString_inj",STRCAT_toString_inj,DB.Thm),
   ("BIT_num_from_bin_string",BIT_num_from_bin_string,DB.Thm),
   ("SUB_num_to_bin_string",SUB_num_to_bin_string,DB.Thm),
   ("num_bin_string",num_bin_string,DB.Thm),
   ("num_oct_string",num_oct_string,DB.Thm),
   ("num_dec_string",num_dec_string,DB.Thm),
   ("num_hex_string",num_hex_string,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("numposrepTheory.numposrep_grammars",
                          numposrepTheory.numposrep_grammars),
                         ("stringTheory.string_grammars",
                          stringTheory.string_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2n", (Term.prim_mk_const { Name = "s2n", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("s2n", (Term.prim_mk_const { Name = "s2n", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2s", (Term.prim_mk_const { Name = "n2s", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("n2s", (Term.prim_mk_const { Name = "n2s", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HEX", (Term.prim_mk_const { Name = "HEX", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("HEX", (Term.prim_mk_const { Name = "HEX", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNHEX", (Term.prim_mk_const { Name = "UNHEX", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNHEX", (Term.prim_mk_const { Name = "UNHEX", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_bin_string", (Term.prim_mk_const { Name = "num_from_bin_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_bin_string", (Term.prim_mk_const { Name = "num_from_bin_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_oct_string", (Term.prim_mk_const { Name = "num_from_oct_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_oct_string", (Term.prim_mk_const { Name = "num_from_oct_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_dec_string", (Term.prim_mk_const { Name = "num_from_dec_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_dec_string", (Term.prim_mk_const { Name = "num_from_dec_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_hex_string", (Term.prim_mk_const { Name = "num_from_hex_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_from_hex_string", (Term.prim_mk_const { Name = "num_from_hex_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_bin_string", (Term.prim_mk_const { Name = "num_to_bin_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_bin_string", (Term.prim_mk_const { Name = "num_to_bin_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_oct_string", (Term.prim_mk_const { Name = "num_to_oct_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_oct_string", (Term.prim_mk_const { Name = "num_to_oct_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_dec_string", (Term.prim_mk_const { Name = "num_to_dec_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_dec_string", (Term.prim_mk_const { Name = "num_to_dec_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_hex_string", (Term.prim_mk_const { Name = "num_to_hex_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_to_hex_string", (Term.prim_mk_const { Name = "num_to_hex_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromBinString", (Term.prim_mk_const { Name = "fromBinString", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromBinString", (Term.prim_mk_const { Name = "fromBinString", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromDecString", (Term.prim_mk_const { Name = "fromDecString", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromDecString", (Term.prim_mk_const { Name = "fromDecString", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromHexString", (Term.prim_mk_const { Name = "fromHexString", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fromHexString", (Term.prim_mk_const { Name = "fromHexString", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toString", (Term.prim_mk_const { Name = "num_to_dec_string", Thy = "ASCIInumbers"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("toNum", (Term.prim_mk_const { Name = "num_from_dec_string", Thy = "ASCIInumbers"}))
  val ASCIInumbers_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ASCIInumbers",
    thydataty = "simp",
    data = "ASCIInumbers.toString_inj"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ASCIInumbers",
    thydataty = "compute",
    data =
        "ASCIInumbers.HEX_def ASCIInumbers.UNHEX_def ASCIInumbers.fromHexString_def ASCIInumbers.fromDecString_def ASCIInumbers.fromBinString_def ASCIInumbers.num_to_hex_string_def ASCIInumbers.num_to_dec_string_def ASCIInumbers.num_to_oct_string_def ASCIInumbers.num_to_bin_string_def ASCIInumbers.num_from_hex_string_def ASCIInumbers.num_from_dec_string_def ASCIInumbers.num_from_oct_string_def ASCIInumbers.num_from_bin_string_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ASCIInumbers"
end
