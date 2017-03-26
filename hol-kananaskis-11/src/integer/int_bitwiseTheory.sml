structure int_bitwiseTheory :> int_bitwiseTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading int_bitwiseTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open OmegaTheory bitTheory int_arithTheory
  in end;
  val _ = Theory.link_parents
          ("int_bitwise",
          Arbnum.fromString "1488587766",
          Arbnum.fromString "720506")
          [("bit",
           Arbnum.fromString "1488586140",
           Arbnum.fromString "581172"),
           ("Omega",
           Arbnum.fromString "1488587731",
           Arbnum.fromString "896421"),
           ("int_arith",
           Arbnum.fromString "1488587685",
           Arbnum.fromString "137740")];
  val _ = Theory.incorporate_types "int_bitwise" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("list", "list"),
   ID("min", "bool"), ID("integer", "int"), ID("pair", "prod"),
   ID("bool", "!"), ID("arithmetic", "*"), ID("arithmetic", "+"),
   ID("pair", ","), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("min", "==>"), ID("min", "@"), ID("list", "APPEND"),
   ID("bit", "BIT"), ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("bool", "COND"), ID("list", "CONS"), ID("arithmetic", "DIV"),
   ID("list", "DROP"), ID("list", "EL"), ID("bool", "F"),
   ID("pair", "FST"), ID("list", "GENLIST"), ID("combin", "I"),
   ID("combin", "K"), ID("list", "LENGTH"), ID("bool", "LET"),
   ID("list", "MAP"), ID("list", "NIL"), ID("arithmetic", "NUMERAL"),
   ID("integer", "Num"), ID("arithmetic", "ODD"), ID("pair", "SND"),
   ID("bool", "T"), ID("pair", "UNCURRY"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("int_bitwise", "bits_bitwise"),
   ID("int_bitwise", "bits_bitwise_tupled"),
   ID("int_bitwise", "bits_of_int"), ID("int_bitwise", "bits_of_num"),
   ID("int_bitwise", "int_and"), ID("int_bitwise", "int_bit"),
   ID("int_bitwise", "int_bitwise"), ID("integer", "int_lt"),
   ID("int_bitwise", "int_not"), ID("int_bitwise", "int_of_bits"),
   ID("integer", "int_of_num"), ID("int_bitwise", "int_or"),
   ID("int_bitwise", "int_shift_left"),
   ID("int_bitwise", "int_shift_right"), ID("integer", "int_sub"),
   ID("int_bitwise", "int_xor"), ID("list", "list_CASE"),
   ID("int_bitwise", "num_of_bits"), ID("pair", "pair_CASE"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [3], TYOP [2, 1], TYOP [0, 2, 0], TYOP [4],
   TYOP [0, 4, 4], TYOP [0, 4, 5], TYOP [0, 0, 5], TYOP [5, 2, 1],
   TYOP [0, 8, 4], TYOP [0, 1, 1], TYOP [0, 1, 10], TYOP [0, 11, 6],
   TYOP [0, 4, 1], TYOP [0, 0, 13], TYOP [0, 0, 2], TYOP [0, 4, 8],
   TYV "'a", TYOP [2, 17], TYOP [5, 18, 17], TYV "'c", TYOP [2, 20],
   TYOP [5, 21, 20], TYV "'b", TYOP [2, 23], TYOP [5, 24, 23],
   TYOP [5, 25, 22], TYOP [0, 20, 17], TYOP [0, 23, 27], TYOP [5, 28, 26],
   TYOP [0, 29, 19], TYOP [0, 22, 19], TYOP [0, 25, 31], TYOP [0, 28, 32],
   TYOP [0, 22, 1], TYOP [0, 25, 34], TYOP [0, 28, 35], TYOP [0, 2, 1],
   TYOP [0, 0, 1], TYOP [0, 2, 37], TYOP [0, 0, 38], TYOP [0, 29, 1],
   TYOP [0, 29, 41], TYOP [0, 23, 1], TYOP [0, 43, 1], TYOP [0, 20, 1],
   TYOP [0, 45, 1], TYOP [0, 10, 1], TYOP [0, 28, 1], TYOP [0, 48, 1],
   TYOP [0, 11, 1], TYOP [0, 50, 1], TYOP [0, 36, 1], TYOP [0, 52, 1],
   TYOP [0, 37, 1], TYOP [0, 54, 1], TYOP [0, 38, 1], TYOP [0, 56, 1],
   TYOP [0, 13, 1], TYOP [0, 24, 1], TYOP [0, 59, 1], TYOP [0, 21, 1],
   TYOP [0, 61, 1], TYOP [0, 25, 1], TYOP [0, 63, 1], TYOP [0, 34, 1],
   TYOP [0, 0, 0], TYOP [0, 0, 66], TYOP [0, 26, 29], TYOP [0, 28, 68],
   TYOP [0, 17, 19], TYOP [0, 18, 70], TYOP [0, 23, 25], TYOP [0, 24, 72],
   TYOP [0, 20, 22], TYOP [0, 21, 74], TYOP [0, 1, 8], TYOP [0, 2, 76],
   TYOP [0, 22, 26], TYOP [0, 25, 78], TYOP [0, 6, 1], TYOP [0, 6, 80],
   TYOP [0, 5, 1], TYOP [0, 5, 82], TYOP [0, 3, 1], TYOP [0, 3, 84],
   TYOP [0, 15, 1], TYOP [0, 15, 86], TYOP [0, 30, 1], TYOP [0, 30, 88],
   TYOP [0, 4, 13], TYOP [0, 19, 1], TYOP [0, 19, 91], TYOP [0, 8, 1],
   TYOP [0, 8, 93], TYOP [0, 39, 1], TYOP [0, 95, 39], TYOP [0, 40, 1],
   TYOP [0, 97, 40], TYOP [0, 42, 1], TYOP [0, 99, 42], TYOP [0, 2, 2],
   TYOP [0, 2, 101], TYOP [0, 1, 11], TYOP [0, 1, 6], TYOP [0, 1, 102],
   TYOP [0, 1, 67], TYOP [0, 8, 8], TYOP [0, 8, 107], TYOP [0, 1, 108],
   TYOP [0, 18, 18], TYOP [0, 17, 110], TYOP [0, 24, 24],
   TYOP [0, 23, 112], TYOP [0, 21, 21], TYOP [0, 20, 114],
   TYOP [0, 1, 101], TYOP [0, 0, 101], TYOP [0, 0, 37], TYOP [0, 8, 2],
   TYOP [0, 38, 15], TYOP [0, 19, 19], TYOP [0, 1, 38], TYOP [0, 121, 121],
   TYOP [0, 9, 9], TYOP [0, 10, 101], TYOP [0, 4, 0], TYOP [0, 71, 121],
   TYOP [0, 1, 4], TYOP [0, 2, 128], TYOP [0, 129, 9], TYOP [0, 3, 3],
   TYOP [0, 131, 3], TYOP [0, 39, 132], TYOP [0, 15, 15],
   TYOP [0, 134, 15], TYOP [0, 40, 135], TYOP [0, 30, 30],
   TYOP [0, 137, 30], TYOP [0, 42, 138], TYOP [0, 11, 108], TYOP [0, 0, 4],
   TYOP [0, 24, 19], TYOP [0, 23, 142], TYOP [0, 143, 19],
   TYOP [0, 19, 144], TYOP [0, 24, 145], TYOP [0, 21, 19],
   TYOP [0, 20, 147], TYOP [0, 148, 19], TYOP [0, 19, 149],
   TYOP [0, 21, 150], TYOP [0, 1, 3], TYOP [0, 152, 0], TYOP [0, 0, 153],
   TYOP [0, 2, 154], TYOP [0, 26, 19], TYOP [0, 28, 156],
   TYOP [0, 157, 19], TYOP [0, 29, 158], TYOP [0, 23, 19],
   TYOP [0, 24, 160], TYOP [0, 161, 19], TYOP [0, 25, 162],
   TYOP [0, 20, 19], TYOP [0, 21, 164], TYOP [0, 165, 19],
   TYOP [0, 22, 166], TYOP [0, 32, 19], TYOP [0, 26, 168]]
  end
  val _ = Theory.incorporate_consts "int_bitwise" tyvector
     [("num_of_bits", 3), ("int_xor", 6), ("int_shift_right", 7),
      ("int_shift_left", 7), ("int_or", 6), ("int_of_bits", 9),
      ("int_not", 5), ("int_bitwise", 12), ("int_bit", 14), ("int_and", 6),
      ("bits_of_num", 15), ("bits_of_int", 16),
      ("bits_bitwise_tupled", 30), ("bits_bitwise", 33)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 36), TMV("P", 37), TMV("P", 38), TMV("R", 39), TMV("R", 40),
   TMV("R", 42), TMV("a", 2), TMV("a", 29), TMV("b", 0), TMV("b", 8),
   TMV("b1", 23), TMV("b1'", 23), TMV("b2", 20),
   TMV("bits_bitwise_tupled", 30), TMV("bits_of_num", 15), TMV("bs", 18),
   TMV("bs", 2), TMV("bs1", 24), TMV("bs1'", 24), TMV("bs2", 21),
   TMV("f", 28), TMV("f", 11), TMV("i", 4), TMV("j", 4), TMV("n", 0),
   TMV("num_of_bits", 3), TMV("r", 17), TMV("r", 1), TMV("r1", 23),
   TMV("r2", 20), TMV("rest", 1), TMV("v", 1), TMV("v", 28), TMV("v", 2),
   TMV("v", 0), TMV("v1", 24), TMV("v1", 26), TMV("v2", 23), TMV("v2", 25),
   TMV("v3", 21), TMV("v3", 22), TMV("v4", 20), TMV("v4", 24),
   TMV("v6", 21), TMV("x", 1), TMV("x", 28), TMV("x1", 25), TMV("x2", 22),
   TMV("y", 1), TMC(6, 44), TMC(6, 46), TMC(6, 47), TMC(6, 49), TMC(6, 51),
   TMC(6, 53), TMC(6, 55), TMC(6, 57), TMC(6, 58), TMC(6, 60), TMC(6, 62),
   TMC(6, 54), TMC(6, 56), TMC(6, 64), TMC(6, 65), TMC(7, 67), TMC(8, 67),
   TMC(9, 69), TMC(9, 71), TMC(9, 73), TMC(9, 75), TMC(9, 77), TMC(9, 79),
   TMC(10, 67), TMC(11, 11), TMC(12, 0), TMC(13, 40), TMC(14, 40),
   TMC(15, 11), TMC(15, 81), TMC(15, 83), TMC(15, 85), TMC(15, 87),
   TMC(15, 89), TMC(15, 90), TMC(15, 39), TMC(15, 40), TMC(15, 92),
   TMC(15, 94), TMC(16, 11), TMC(17, 96), TMC(17, 98), TMC(17, 100),
   TMC(18, 102), TMC(19, 40), TMC(20, 66), TMC(21, 66), TMC(22, 103),
   TMC(22, 104), TMC(22, 105), TMC(22, 106), TMC(22, 109), TMC(23, 111),
   TMC(23, 113), TMC(23, 115), TMC(23, 116), TMC(24, 67), TMC(25, 117),
   TMC(26, 118), TMC(27, 1), TMC(28, 119), TMC(29, 120), TMC(30, 101),
   TMC(30, 66), TMC(30, 121), TMC(31, 122), TMC(32, 3), TMC(33, 123),
   TMC(33, 124), TMC(34, 125), TMC(35, 18), TMC(35, 24), TMC(35, 21),
   TMC(35, 2), TMC(36, 66), TMC(37, 126), TMC(38, 38), TMC(39, 93),
   TMC(40, 1), TMC(41, 127), TMC(41, 130), TMC(42, 95), TMC(42, 97),
   TMC(42, 99), TMC(43, 133), TMC(43, 136), TMC(43, 139), TMC(44, 0),
   TMC(45, 11), TMC(46, 33), TMC(46, 140), TMC(47, 30), TMC(48, 16),
   TMC(49, 15), TMC(50, 6), TMC(51, 14), TMC(52, 12), TMC(53, 90),
   TMC(54, 5), TMC(55, 9), TMC(56, 141), TMC(57, 6), TMC(58, 7),
   TMC(59, 7), TMC(60, 6), TMC(61, 6), TMC(62, 146), TMC(62, 151),
   TMC(62, 155), TMC(63, 3), TMC(64, 159), TMC(64, 163), TMC(64, 167),
   TMC(64, 169), TMC(65, 10)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op int_not_def x = x
    val op int_not_def =
    DT(((("int_bitwise",0),[]),[]),
       [read"%57%22%83%147$0@@%153%153%149%74@@$0@@%149%123%94%136@@@@@|@"])
  fun op int_bit_def x = x
    val op int_bit_def =
    DT(((("int_bitwise",2),[]),[]),
       [read"%61%8%57%22%77%144$1@$0@@%96%146$0@%149%74@@@%163%93$1@%124%147$0@@@@@%93$1@%124$0@@@@|@|@"])
  fun op bits_of_num_primitive_def x = x
    val op bits_of_num_primitive_def =
    DT(((("int_bitwise",4),[]),[]),
       [read"%81%142@%134%90%4%73%131$0@@%61%24%88%163%85$0@%74@@@$1%105$0@%123%95%136@@@@$0@@|@@|@@%14%24%111%98%85$0@%74@@%122@%104%125$0@@$1%105$0@%123%95%136@@@@@@@||@@"])
  fun op bits_of_int_def x = x
    val op bits_of_int_def =
    DT(((("int_bitwise",7),[]),[]),
       [read"%57%22%87%141$0@@%100%146$0@%149%74@@@%70%118%163@%142%124%147$0@@@@@%127@@%70%142%124$0@@@%108@@@|@"])
  fun op num_of_bits_primitive_def x = x
    val op num_of_bits_primitive_def =
    DT(((("int_bitwise",8),[]),[]),
       [read"%80%158@%133%89%3%73%130$0@@%73%60%16$1$0@%104%108@$0@@|@@%60%16$1$0@%104%127@$0@@|@@@|@@%25%6%157$0@%112%74@@%31%16%99$1@%112%65%123%94%136@@@%64%123%95%136@@@$3$0@@@@@%112%64%123%95%136@@@$3$0@@@@||@||@@"])
  fun op int_of_bits_def x = x
    val op int_of_bits_def =
    DT(((("int_bitwise",11),[("pair",[16])]),["DISK_THM"]),
       [read"%60%16%51%30%83%148%70$1@$0@@@%97$0@%147%149%158%118%163@$1@@@@@%149%158$1@@@@|@|@"])
  fun op bits_bitwise_tupled_primitive_def x = x
    val op bits_bitwise_tupled_primitive_def =
    DT(((("int_bitwise",12),[]),[]),
       [read"%82%140@%135%91%5%73%132$0@@%73%50%12%50%29%59%19%49%28%52%20$5%66$0@%71%68%120@$1@@%69$2@$3@@@@%66$0@%71%68%120@$1@@%69%103$4@$2@@$3@@@@|@|@|@|@|@@%73%49%10%50%29%49%28%58%17%52%20$5%66$0@%71%68$1@$2@@%69%121@$3@@@@%66$0@%71%68%102$4@$1@@$2@@%69%121@$3@@@@|@|@|@|@|@@%50%12%49%10%50%29%59%19%49%28%58%17%52%20$7%66$0@%71%68$1@$2@@%69$3@$4@@@@%66$0@%71%68%102$5@$1@@$2@@%69%103$6@$3@@$4@@@@|@|@|@|@|@|@|@@@@|@@%13%7%159$0@%20%36%162$0@%38%40%160$1@%42%28%161$2@%43%29%156$1@%155$3@%113%67%119@$7$2@$0@@@@%10%17%113%116%128%15%26%67%101$11$3@$4@@$1@@$0@||@@$11%66$9@%71%68$0@$4@@%69%121@$2@@@@@@||@@%12%19%155$5@%113%116%128%15%26%67%101$11$6@$3@@$1@@$0@||@@$11%66$9@%71%68%120@$4@@%69$0@$2@@@@@@@%11%18%113%116%128%15%26%67%101$13$3@$5@@$1@@$0@||@@$13%66$11@%71%68$0@$6@@%69$2@$4@@@@@@||@||@||@||@||@||@||@@"])
  fun op bits_bitwise_curried_def x = x
    val op bits_bitwise_curried_def =
    DT(((("int_bitwise",13),[]),[]),
       [read"%52%45%62%46%63%47%86%138$2@$1@$0@@%140%66$2@%71$1@$0@@@@|@|@|@"])
  fun op int_bitwise_def x = x
    val op int_bitwise_def =
    DT(((("int_bitwise",16),[]),[]),
       [read"%53%21%57%22%57%23%83%145$2@$1@$0@@%148%139$2@%141$1@@%141$0@@@@|@|@|@"])
  fun op int_and_def x = x
    val op int_and_def =
    DT(((("int_bitwise",17),[]),[]), [read"%78%143@%145%73@@"])
  fun op int_or_def x = x
    val op int_or_def =
    DT(((("int_bitwise",18),[]),[]), [read"%78%150@%145%137@@"])
  fun op int_xor_def x = x
    val op int_xor_def =
    DT(((("int_bitwise",19),[]),[]),
       [read"%78%154@%145%44%48%163%77$1@$0@@||@@"])
  fun op int_shift_left_def x = x
    val op int_shift_left_def =
    DT(((("int_bitwise",21),[]),[]),
       [read"%61%24%57%22%83%151$1@$0@@%117%129%16%27%148%70%92%110%114%108@@$3@@$1@@$0@@||@@%141$0@@@|@|@"])
  fun op int_shift_right_def x = x
    val op int_shift_right_def =
    DT(((("int_bitwise",22),[]),[]),
       [read"%61%24%57%22%83%152$1@$0@@%117%129%16%27%148%70%106$3@$1@@$0@@||@@%141$0@@@|@|@"])
  fun op int_not_not x = x
    val op int_not_not =
    DT(((("int_bitwise",1),
        [("bool",[25,56]),("int_bitwise",[0]),
         ("integer",[146,149,181,189])]),["DISK_THM"]),
       [read"%57%22%83%147%147$0@@@$0@|@"])
  fun op int_bit_not x = x
    val op int_bit_not =
    DT(((("int_bitwise",3),
        [("bool",
         [14,25,26,27,30,36,51,52,53,54,56,58,63,64,72,101,105,129,143]),
         ("combin",[12]),("int_arith",[0,3,6,7,15,24,26,28,30,32]),
         ("int_bitwise",[0,1,2]),
         ("integer",
         [62,73,80,82,83,95,97,101,103,118,130,153,177,181,289,313,320,321,
          322,324,335]),("list",[120]),("numeral",[5,7,8,16,17,40,41]),
         ("sat",[1,3,5,6,7,11,12,14,15])]),["DISK_THM"]),
       [read"%61%8%57%22%77%144$1@%147$0@@@%163%144$1@$0@@@|@|@"])
  fun op bits_of_num_ind x = x
    val op bits_of_num_ind =
    DT(((("int_bitwise",5),
        [("arithmetic",[46,59,71,93,173,177,180,236]),
         ("bool",[25,27,36,51,52,53,54,58,63,96,101,104,105,124]),
         ("combin",[19]),("numeral",[3,7,8]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%56%2%88%61%24%88%88%163%85$0@%74@@@$1%105$0@%123%95%136@@@@@@$1$0@@|@@%61%34$1$0@|@@|@"])
  fun op bits_of_num_def x = x
    val op bits_of_num_def =
    DT(((("int_bitwise",6),
        [("arithmetic",[46,59,71,93,173,177,180,236]),
         ("bool",[15,25,36,51,52,53,54,58,63,96,101,104,105,124,129]),
         ("combin",[19]),("int_bitwise",[4]),("numeral",[3,7,8]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%61%24%84%142$0@@%98%85$0@%74@@%122@%104%125$0@@%142%105$0@%123%95%136@@@@@@@|@"])
  fun op num_of_bits_ind x = x
    val op num_of_bits_ind =
    DT(((("int_bitwise",9),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("basicSize",[0]),
         ("bool",
         [13,25,26,36,47,48,51,52,53,54,58,63,72,76,78,80,93,96,104,105,
          107]),("list",[7,46]),("numeral",[3,7,8]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%55%1%88%73$0%122@@%73%60%16%88$1$0@@$1%104%108@$0@@@|@@%60%16%88$1$0@@$1%104%127@$0@@@|@@@@%60%33$1$0@|@@|@"])
  fun op num_of_bits_def x = x
    val op num_of_bits_def =
    DT(((("int_bitwise",10),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("basicSize",[0]),
         ("bool",[15,25,36,51,52,54,63,93,96,104,105,107,147]),
         ("combin",[19]),("int_bitwise",[8]),("list",[6,7]),
         ("numeral",[3,7,8]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%85%158%122@@%74@@%73%60%16%85%158%104%108@$0@@@%64%123%95%136@@@%158$0@@@|@@%60%16%85%158%104%127@$0@@@%65%123%94%136@@@%64%123%95%136@@@%158$0@@@@|@@@"])
  fun op bits_bitwise_ind x = x
    val op bits_bitwise_ind =
    DT(((("int_bitwise",14),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",
         [25,26,36,47,48,51,52,53,54,58,63,72,76,77,78,80,93,96,104,105,
          107]),("list",[7,46]),("numeral",[3,5,7,8]),
         ("pair",[5,7,8,9,16]),("prim_rec",[42]),
         ("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%54%0%88%73%52%20%49%28%50%29$3$2@%68%120@$1@@%69%121@$0@@|@|@|@@%73%52%20%49%28%50%12%59%19%50%29%88$5$4@%68%120@$3@@%69$1@$0@@@$5$4@%68%120@$3@@%69%103$2@$1@@$0@@@|@|@|@|@|@@%73%52%20%49%10%58%17%49%28%50%29%88$5$4@%68$2@$1@@%69%121@$0@@@$5$4@%68%102$3@$2@@$1@@%69%121@$0@@@|@|@|@|@|@@%52%20%49%10%58%17%49%28%50%12%59%19%50%29%88$7$6@%68$4@$3@@%69$1@$0@@@$7$6@%68%102$5@$4@@$3@@%69%103$2@$1@@$0@@@|@|@|@|@|@|@|@@@@@%52%32%58%35%49%37%59%39%50%41$5$4@%68$3@$2@@%69$1@$0@@|@|@|@|@|@@|@"])
  fun op bits_bitwise_def x = x
    val op bits_bitwise_def =
    DT(((("int_bitwise",15),
        [("arithmetic",[22,24,25,26,27,41,46,59,71,88,93,173,180]),
         ("bool",[15,25,36,51,52,54,58,63,93,96,104,105,107,123]),
         ("combin",[19]),("int_bitwise",[12,13]),("list",[6,7]),
         ("numeral",[3,5,7,8]),("pair",[7,8,9,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%73%50%29%49%28%52%20%86%138$0@%68%120@$1@@%69%121@$2@@@%67%119@$0$1@$2@@@|@|@|@@%73%50%29%49%28%52%20%59%19%50%12%86%138$2@%68%120@$3@@%69%103$0@$1@@$4@@@%116%128%15%26%67%101$4$5@$2@@$1@@$0@||@@%138$2@%68%120@$3@@%69$1@$4@@@@|@|@|@|@|@@%73%50%29%49%28%52%20%58%17%49%10%86%138$2@%68%102$0@$1@@$3@@%69%121@$4@@@%116%128%15%26%67%101$4$2@$6@@$1@@$0@||@@%138$2@%68$1@$3@@%69%121@$4@@@@|@|@|@|@|@@%50%29%49%28%52%20%59%19%58%17%50%12%49%10%86%138$4@%68%102$0@$2@@$5@@%69%103$1@$3@@$6@@@%116%128%15%26%67%101$6$2@$3@@$1@@$0@||@@%138$4@%68$2@$5@@%69$3@$6@@@@|@|@|@|@|@|@|@@@@"])
  fun op int_not x = x
    val op int_not =
    DT(((("int_bitwise",20),
        [("arithmetic",
         [22,24,25,26,27,41,46,59,71,73,88,91,93,110,159,172,173,177,180,
          188,209,214,236,237,252,350]),("basicSize",[0]),
         ("bool",
         [14,15,25,26,27,30,32,36,37,43,51,52,53,54,56,58,60,63,64,72,76,
          93,96,101,104,105,107,108,109,111,123,124,129,143,147]),
         ("combin",[5,8,12,19]),
         ("int_arith",[6,7,12,13,15,23,24,26,27,28,29,30,31,32,34]),
         ("int_bitwise",[0,4,6,7,8,11,12,13,16]),
         ("integer",
         [59,62,73,80,82,83,85,92,93,95,97,101,103,108,118,130,153,154,174,
          175,177,181,192,216,217,289,312,313,320,321,322,324,335,343]),
         ("list",[6,7,23,43,48,59,66,120]),
         ("numeral",[3,5,7,8,16,17,40,41]),("pair",[4,7,8,9,16,49]),
         ("prim_rec",[6,42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%79%147@%145%44%48%163$0@||@%149%74@@@"])
  fun op int_bit_int_of_bits x = x
    val op int_bit_int_of_bits =
    DT(((("int_bitwise",23),
        [("arithmetic",
         [22,24,25,26,28,37,41,46,59,71,73,93,113,173,180,216,217,218,222,
          227,232,275]),("basicSize",[0]),("bit",[7,33,48,107]),
         ("bool",
         [5,13,14,15,25,26,27,30,36,51,52,53,54,56,58,63,64,72,93,96,101,
          104,105,107,124,129,143,147]),("combin",[12,19]),
         ("int_arith",[0,3,6,7,15,24,26,28,30,32,34]),
         ("int_bitwise",[0,1,2,8,11]),
         ("integer",
         [62,73,80,82,83,95,97,101,103,118,130,153,177,181,206,216,289,313,
          320,321,322,324,335]),("list",[6,7,17,22,43,60,67,120,128]),
         ("numeral",[3,5,6,7,8,16,17,33,40,41]),("pair",[5,8,9]),
         ("prim_rec",[6,7,42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%77%144%24@%148%9@@@%96%75%24@%115%109%9@@@@%107%24@%109%9@@@%126%9@@@"])
  fun op int_of_bits_bits_of_int x = x
    val op int_of_bits_bits_of_int =
    DT(((("int_bitwise",24),
        [("arithmetic",
         [22,24,25,26,41,46,59,71,73,91,93,110,159,172,173,177,180,188,209,
          214,236,237,252,350]),("basicSize",[0]),
         ("bool",
         [14,15,25,26,27,30,36,37,43,51,52,53,54,56,58,63,64,72,76,93,96,
          101,104,105,107,108,109,111,124,129,143,147]),
         ("combin",[5,8,12,19]),
         ("int_arith",[6,7,11,12,13,15,23,24,26,27,28,29,30,31,32,34]),
         ("int_bitwise",[0,4,7,8,11]),
         ("integer",
         [59,62,73,80,82,83,85,92,93,95,97,101,103,108,118,130,153,154,174,
          175,177,181,192,217,289,312,313,320,321,322,324,335,343]),
         ("list",[6,7,59,66,120]),("numeral",[3,5,7,8,16,17,40,41]),
         ("prim_rec",[6,42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%57%22%83%148%141$0@@@$0@|@"])
  fun op int_bit_bitwise x = x
    val op int_bit_bitwise =
    DT(((("int_bitwise",25),
        [("arithmetic",[22,24,25,26,27,28,37,41,46,59,71,88,93,173,180]),
         ("bool",
         [14,15,25,26,27,32,36,51,52,53,54,56,58,63,93,96,104,105,107,123,
          124,129,147]),("combin",[19]),("int_bitwise",[12,13,16,23,24]),
         ("list",[6,7,17,22,43,46,128]),("numeral",[3,5,7,8]),
         ("pair",[5,7,8,9,16,25,49]),("prim_rec",[6,7,42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%61%24%53%21%57%22%57%23%77%144$3@%145$2@$1@$0@@@$2%144$3@$1@@%144$3@$0@@@|@|@|@|@"])
  fun op int_bit_and x = x
    val op int_bit_and =
    DT(((("int_bitwise",26),[("int_bitwise",[17,25])]),["DISK_THM"]),
       [read"%61%24%57%22%57%23%77%144$2@%143$1@$0@@@%73%144$2@$1@@%144$2@$0@@@|@|@|@"])
  fun op int_bit_or x = x
    val op int_bit_or =
    DT(((("int_bitwise",27),[("int_bitwise",[18,25])]),["DISK_THM"]),
       [read"%61%24%57%22%57%23%77%144$2@%150$1@$0@@@%137%144$2@$1@@%144$2@$0@@@|@|@|@"])
  fun op int_bit_xor x = x
    val op int_bit_xor =
    DT(((("int_bitwise",28),[("int_bitwise",[19,25])]),["DISK_THM"]),
       [read"%61%24%57%22%57%23%77%144$2@%154$1@$0@@@%163%77%144$2@$1@@%144$2@$0@@@@|@|@|@"])
  fun op int_bit_equiv x = x
    val op int_bit_equiv =
    DT(((("int_bitwise",29),
        [("arithmetic",
         [22,24,25,26,27,28,41,46,59,65,67,71,73,91,93,110,159,172,173,176,
          177,180,188,200,209,214,236,237,252,254,269,350]),
         ("basicSize",[0]),
         ("bool",
         [8,14,15,25,26,27,30,36,37,43,51,52,53,54,56,58,62,63,64,72,76,93,
          96,101,104,105,106,107,124,129,143,147]),("combin",[5,12,19]),
         ("int_arith",[0,3,6,7,12,13,15,24,26,28,30,32,34,44]),
         ("int_bitwise",[0,4,5,6,7,8,11,23,24]),
         ("integer",
         [59,62,73,80,82,83,85,92,93,95,97,101,103,118,130,153,154,166,177,
          181,289,313,320,321,322,324,335,337]),
         ("list",[6,7,17,22,59,60,61,66,67,90,110,120,128]),("num",[7]),
         ("numeral",[3,5,6,7,8,16,17,21,34,35,40,41]),("pair",[4,5,8,9]),
         ("prim_rec",[6,42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18])]),["DISK_THM"]),
       [read"%57%22%57%23%77%83$1@$0@@%61%24%77%144$0@$2@@%144$0@$1@@|@@|@|@"])
  fun op int_bit_shift_left x = x
    val op int_bit_shift_left =
    DT(((("int_bitwise",30),
        [("arithmetic",
         [24,25,26,27,41,46,53,59,71,93,128,145,172,173,176,180,269]),
         ("bool",
         [25,26,27,30,32,36,43,51,52,53,54,56,58,63,93,96,101,104,105,107,
          124,129,147,152]),("combin",[12,19]),("int_bitwise",[21,23,24]),
         ("list",[57,276,283]),("numeral",[3,8]),("pair",[5,8,9,16]),
         ("rich_list",[236,237]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%61%8%61%24%57%22%77%144$2@%151$1@$0@@@%73%76$1@$2@@%144%72$2@$1@@$0@@@|@|@|@"])
  fun op int_bit_shift_right x = x
    val op int_bit_shift_right =
    DT(((("int_bitwise",31),
        [("arithmetic",[24,25,26,27,41,46,59,71,93,173,180,198,199]),
         ("bool",[25,26,27,30,32,36,54,56,58,63,64,96,101,104,105,129]),
         ("combin",[19]),("int_bitwise",[22,23,24]),("list",[201]),
         ("numeral",[3,8]),("pair",[5,8,9,16]),
         ("rich_list",[286])]),["DISK_THM"]),
       [read"%61%8%61%24%57%22%77%144$2@%152$1@$0@@@%144%65$2@$1@@$0@@|@|@|@"])
  end
  val _ = DB.bindl "int_bitwise"
  [("int_not_def",int_not_def,DB.Def), ("int_bit_def",int_bit_def,DB.Def),
   ("bits_of_num_primitive_def",bits_of_num_primitive_def,DB.Def),
   ("bits_of_int_def",bits_of_int_def,DB.Def),
   ("num_of_bits_primitive_def",num_of_bits_primitive_def,DB.Def),
   ("int_of_bits_def",int_of_bits_def,DB.Def),
   ("bits_bitwise_tupled_primitive_def",
    bits_bitwise_tupled_primitive_def,
    DB.Def), ("bits_bitwise_curried_def",bits_bitwise_curried_def,DB.Def),
   ("int_bitwise_def",int_bitwise_def,DB.Def),
   ("int_and_def",int_and_def,DB.Def), ("int_or_def",int_or_def,DB.Def),
   ("int_xor_def",int_xor_def,DB.Def),
   ("int_shift_left_def",int_shift_left_def,DB.Def),
   ("int_shift_right_def",int_shift_right_def,DB.Def),
   ("int_not_not",int_not_not,DB.Thm), ("int_bit_not",int_bit_not,DB.Thm),
   ("bits_of_num_ind",bits_of_num_ind,DB.Thm),
   ("bits_of_num_def",bits_of_num_def,DB.Thm),
   ("num_of_bits_ind",num_of_bits_ind,DB.Thm),
   ("num_of_bits_def",num_of_bits_def,DB.Thm),
   ("bits_bitwise_ind",bits_bitwise_ind,DB.Thm),
   ("bits_bitwise_def",bits_bitwise_def,DB.Thm),
   ("int_not",int_not,DB.Thm),
   ("int_bit_int_of_bits",int_bit_int_of_bits,DB.Thm),
   ("int_of_bits_bits_of_int",int_of_bits_bits_of_int,DB.Thm),
   ("int_bit_bitwise",int_bit_bitwise,DB.Thm),
   ("int_bit_and",int_bit_and,DB.Thm), ("int_bit_or",int_bit_or,DB.Thm),
   ("int_bit_xor",int_bit_xor,DB.Thm),
   ("int_bit_equiv",int_bit_equiv,DB.Thm),
   ("int_bit_shift_left",int_bit_shift_left,DB.Thm),
   ("int_bit_shift_right",int_bit_shift_right,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("bitTheory.bit_grammars",bitTheory.bit_grammars),
                         ("OmegaTheory.Omega_grammars",
                          OmegaTheory.Omega_grammars),
                         ("int_arithTheory.int_arith_grammars",
                          int_arithTheory.int_arith_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_not", (Term.prim_mk_const { Name = "int_not", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_not", (Term.prim_mk_const { Name = "int_not", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_bit", (Term.prim_mk_const { Name = "int_bit", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_bit", (Term.prim_mk_const { Name = "int_bit", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_of_num", (Term.prim_mk_const { Name = "bits_of_num", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_of_num", (Term.prim_mk_const { Name = "bits_of_num", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_of_int", (Term.prim_mk_const { Name = "bits_of_int", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_of_int", (Term.prim_mk_const { Name = "bits_of_int", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_of_bits", (Term.prim_mk_const { Name = "num_of_bits", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_of_bits", (Term.prim_mk_const { Name = "num_of_bits", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_of_bits", (Term.prim_mk_const { Name = "int_of_bits", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_of_bits", (Term.prim_mk_const { Name = "int_of_bits", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_bitwise_tupled", (Term.prim_mk_const { Name = "bits_bitwise_tupled", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_bitwise_tupled", (Term.prim_mk_const { Name = "bits_bitwise_tupled", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_bitwise", (Term.prim_mk_const { Name = "bits_bitwise", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bits_bitwise", (Term.prim_mk_const { Name = "bits_bitwise", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_bitwise", (Term.prim_mk_const { Name = "int_bitwise", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_bitwise", (Term.prim_mk_const { Name = "int_bitwise", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_and", (Term.prim_mk_const { Name = "int_and", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_and", (Term.prim_mk_const { Name = "int_and", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_or", (Term.prim_mk_const { Name = "int_or", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_or", (Term.prim_mk_const { Name = "int_or", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_xor", (Term.prim_mk_const { Name = "int_xor", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_xor", (Term.prim_mk_const { Name = "int_xor", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_shift_left", (Term.prim_mk_const { Name = "int_shift_left", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_shift_left", (Term.prim_mk_const { Name = "int_shift_left", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_shift_right", (Term.prim_mk_const { Name = "int_shift_right", Thy = "int_bitwise"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("int_shift_right", (Term.prim_mk_const { Name = "int_shift_right", Thy = "int_bitwise"}))
  val int_bitwise_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "int_bitwise",
    thydataty = "compute",
    data =
        "int_bitwise.int_not_def int_bitwise.int_of_bits_def int_bitwise.int_shift_right_def int_bitwise.int_shift_left_def int_bitwise.int_xor_def int_bitwise.int_or_def int_bitwise.int_and_def int_bitwise.int_bitwise_def int_bitwise.bits_bitwise_def int_bitwise.num_of_bits_def int_bitwise.bits_of_int_def int_bitwise.bits_of_num_def int_bitwise.int_bit_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "int_bitwise"
end
