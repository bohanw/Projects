structure alistTheory :> alistTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading alistTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open finite_mapTheory
  in end;
  val _ = Theory.link_parents
          ("alist",
          Arbnum.fromString "1488586983",
          Arbnum.fromString "780164")
          [("finite_map",
           Arbnum.fromString "1488586927",
           Arbnum.fromString "430131")];
  val _ = Theory.incorporate_types "alist" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("pair", "prod"),
   ID("finite_map", "fmap"), ID("min", "bool"), ID("option", "option"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("min", "@"), ID("list", "ALL_DISTINCT"), ID("alist", "ALOOKUP"),
   ID("alist", "ALOOKUP_tupled"), ID("list", "APPEND"),
   ID("pred_set", "CARD"), ID("bool", "COND"), ID("list", "CONS"),
   ID("list", "EL"), ID("finite_map", "FAPPLY"), ID("finite_map", "FDOM"),
   ID("finite_map", "FEMPTY"), ID("list", "FILTER"),
   ID("finite_map", "FLOOKUP"), ID("list", "FOLDR"),
   ID("finite_map", "FRANGE"), ID("pair", "FST"),
   ID("finite_map", "FUNION"), ID("finite_map", "FUPDATE"),
   ID("finite_map", "FUPDATE_LIST"), ID("pred_set", "GSPEC"),
   ID("combin", "I"), ID("pred_set", "IMAGE"), ID("bool", "IN"),
   ID("pred_set", "INJ"), ID("while", "LEAST"), ID("list", "LENGTH"),
   ID("list", "LIST_TO_SET"), ID("list", "MAP"),
   ID("finite_map", "MAP_KEYS"), ID("list", "NIL"), ID("option", "NONE"),
   ID("option", "OPTION_MAP"), ID("sorting", "PERM"),
   ID("list", "REVERSE"), ID("list", "SET_TO_LIST"), ID("pair", "SND"),
   ID("option", "SOME"), ID("sorting", "STABLE"), ID("pred_set", "SUBSET"),
   ID("option", "THE"), ID("pair", "UNCURRY"), ID("pred_set", "UNIV"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("list", "ZIP"),
   ID("alist", "alist_range"), ID("alist", "alist_to_fmap"),
   ID("alist", "fmap_to_alist"), ID("relation", "inv_image"),
   ID("list", "list_CASE"), ID("combin", "o"), ID("finite_map", "o_f"),
   ID("option", "option_CASE"), ID("pair", "pair_CASE"),
   ID("relation", "total"), ID("relation", "transitive"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYV "'a", TYOP [2, 1, 0], TYOP [1, 2], TYOP [3, 1, 0],
   TYOP [0, 4, 3], TYOP [0, 3, 4], TYOP [4], TYOP [0, 1, 7],
   TYOP [2, 0, 1], TYOP [1, 9], TYOP [0, 10, 8], TYOP [5, 1],
   TYOP [2, 10, 0], TYOP [0, 13, 12], TYOP [0, 0, 12], TYOP [0, 10, 15],
   TYOP [0, 0, 7], TYOP [0, 10, 17], TYOP [0, 1, 8], TYOP [0, 13, 7],
   TYOP [0, 13, 20], TYV "'c", TYOP [2, 1, 22], TYOP [1, 23],
   TYOP [2, 22, 1], TYOP [1, 25], TYOP [0, 1, 0], TYV "'d",
   TYOP [0, 0, 28], TYOP [0, 22, 28], TYOP [3, 0, 1], TYOP [3, 22, 1],
   TYOP [3, 22, 28], TYOP [3, 1, 22], TYOP [1, 1], TYOP [2, 0, 22],
   TYOP [1, 36], TYOP [1, 0], TYOP [2, 0, 28], TYOP [1, 39], TYOP [6],
   TYOP [0, 3, 3], TYOP [0, 2, 7], TYOP [0, 2, 43], TYOP [0, 44, 42],
   TYOP [2, 22, 28], TYOP [1, 46], TYOP [3, 0, 28], TYOP [0, 8, 7],
   TYOP [0, 17, 7], TYOP [0, 22, 7], TYOP [0, 51, 7], TYOP [0, 4, 7],
   TYOP [0, 53, 7], TYOP [0, 34, 7], TYOP [0, 55, 7], TYOP [0, 48, 7],
   TYOP [0, 57, 7], TYOP [0, 32, 7], TYOP [0, 59, 7], TYOP [0, 27, 7],
   TYOP [0, 61, 7], TYOP [0, 19, 7], TYOP [0, 63, 7], TYOP [0, 29, 7],
   TYOP [0, 65, 7], TYOP [0, 30, 7], TYOP [0, 67, 7], TYOP [0, 45, 7],
   TYOP [0, 69, 7], TYOP [0, 18, 7], TYOP [0, 71, 7], TYOP [0, 35, 7],
   TYOP [0, 73, 7], TYOP [0, 38, 7], TYOP [0, 75, 7], TYOP [0, 3, 7],
   TYOP [0, 77, 7], TYOP [0, 24, 7], TYOP [0, 79, 7], TYOP [0, 10, 7],
   TYOP [0, 81, 7], TYOP [0, 37, 7], TYOP [0, 83, 7], TYOP [0, 40, 7],
   TYOP [0, 85, 7], TYOP [0, 26, 7], TYOP [0, 87, 7], TYOP [0, 41, 7],
   TYOP [0, 89, 7], TYOP [0, 43, 7], TYOP [0, 0, 2], TYOP [0, 1, 92],
   TYOP [2, 1, 7], TYOP [0, 7, 94], TYOP [0, 1, 95], TYOP [0, 1, 9],
   TYOP [0, 0, 97], TYOP [0, 28, 39], TYOP [0, 0, 99], TYOP [2, 22, 0],
   TYOP [0, 0, 101], TYOP [0, 22, 102], TYOP [0, 28, 46],
   TYOP [0, 22, 104], TYOP [2, 35, 38], TYOP [0, 38, 106],
   TYOP [0, 35, 107], TYOP [1, 28], TYOP [2, 35, 109], TYOP [0, 109, 110],
   TYOP [0, 35, 111], TYOP [0, 0, 13], TYOP [0, 10, 113], TYOP [0, 7, 7],
   TYOP [0, 7, 115], TYOP [0, 41, 89], TYOP [0, 0, 17], TYOP [0, 4, 53],
   TYOP [0, 48, 57], TYOP [3, 22, 0], TYOP [0, 121, 7], TYOP [0, 121, 122],
   TYOP [0, 33, 7], TYOP [0, 33, 124], TYOP [0, 8, 49], TYOP [5, 0],
   TYOP [0, 1, 127], TYOP [0, 128, 7], TYOP [0, 128, 129], TYOP [5, 28],
   TYOP [0, 1, 131], TYOP [0, 132, 7], TYOP [0, 132, 133],
   TYOP [0, 22, 127], TYOP [0, 135, 7], TYOP [0, 135, 136],
   TYOP [0, 22, 131], TYOP [0, 138, 7], TYOP [0, 138, 139],
   TYOP [0, 43, 91], TYOP [0, 14, 7], TYOP [0, 14, 142], TYOP [0, 35, 73],
   TYOP [0, 3, 77], TYOP [0, 40, 85], TYOP [1, 101], TYOP [0, 147, 7],
   TYOP [0, 147, 148], TYOP [0, 12, 7], TYOP [0, 12, 150],
   TYOP [0, 127, 7], TYOP [0, 127, 152], TYOP [5, 22], TYOP [0, 154, 7],
   TYOP [0, 154, 155], TYOP [0, 21, 7], TYOP [0, 157, 21],
   TYOP [0, 3, 128], TYOP [2, 1, 28], TYOP [1, 160], TYOP [0, 161, 132],
   TYOP [0, 0, 154], TYOP [0, 37, 163], TYOP [0, 22, 12],
   TYOP [0, 26, 165], TYOP [0, 147, 135], TYOP [0, 47, 138],
   TYOP [0, 3, 42], TYOP [0, 8, 41], TYOP [0, 12, 12], TYOP [0, 12, 171],
   TYOP [0, 7, 172], TYOP [0, 127, 127], TYOP [0, 127, 174],
   TYOP [0, 7, 175], TYOP [0, 10, 10], TYOP [0, 9, 177], TYOP [0, 47, 47],
   TYOP [0, 46, 179], TYOP [0, 35, 1], TYOP [0, 41, 181], TYOP [0, 38, 0],
   TYOP [0, 41, 183], TYOP [0, 3, 2], TYOP [0, 41, 185], TYOP [0, 4, 27],
   TYOP [0, 4, 8], TYOP [0, 34, 8], TYOP [0, 43, 42], TYOP [0, 37, 37],
   TYOP [0, 36, 7], TYOP [0, 192, 191], TYOP [0, 4, 128], TYOP [0, 31, 15],
   TYOP [0, 33, 138], TYOP [0, 4, 6], TYOP [0, 4, 4], TYOP [0, 2, 198],
   TYOP [0, 199, 197], TYOP [0, 4, 17], TYOP [0, 31, 8], TYOP [0, 2, 1],
   TYOP [0, 23, 1], TYOP [0, 4, 198], TYOP [0, 2, 4], TYOP [0, 4, 206],
   TYOP [0, 46, 33], TYOP [0, 33, 208], TYOP [0, 10, 31],
   TYOP [0, 31, 210], TYOP [0, 1, 94], TYOP [0, 212, 8], TYOP [0, 1, 1],
   TYOP [0, 9, 7], TYOP [0, 215, 8], TYOP [0, 9, 1], TYOP [0, 217, 216],
   TYOP [0, 1, 49], TYOP [0, 0, 50], TYOP [0, 2, 91], TYOP [0, 215, 7],
   TYOP [0, 9, 222], TYOP [0, 8, 50], TYOP [0, 27, 224], TYOP [0, 89, 41],
   TYOP [0, 35, 41], TYOP [0, 38, 41], TYOP [0, 3, 41], TYOP [0, 35, 8],
   TYOP [0, 3, 43], TYOP [0, 10, 215], TYOP [0, 35, 3], TYOP [0, 1, 2],
   TYOP [0, 234, 233], TYOP [0, 38, 109], TYOP [0, 29, 236],
   TYOP [0, 3, 35], TYOP [0, 203, 238], TYOP [0, 3, 38], TYOP [0, 2, 0],
   TYOP [0, 241, 240], TYOP [0, 24, 35], TYOP [0, 204, 243],
   TYOP [0, 24, 40], TYOP [0, 23, 39], TYOP [0, 246, 245],
   TYOP [0, 10, 35], TYOP [0, 217, 248], TYOP [0, 26, 147],
   TYOP [0, 25, 101], TYOP [0, 251, 250], TYOP [0, 214, 198],
   TYOP [3, 1, 28], TYOP [0, 254, 48], TYOP [0, 27, 255],
   TYOP [0, 12, 127], TYOP [0, 27, 257], TYOP [0, 127, 131],
   TYOP [0, 29, 259], TYOP [0, 8, 35], TYOP [0, 1, 12], TYOP [0, 0, 127],
   TYOP [0, 44, 7], TYOP [0, 45, 264], TYOP [0, 127, 0], TYOP [0, 1, 17],
   TYOP [0, 267, 43], TYOP [0, 0, 198], TYOP [0, 1, 269],
   TYOP [0, 270, 199], TYOP [0, 22, 39], TYOP [0, 1, 272],
   TYOP [0, 273, 246], TYOP [0, 0, 51], TYOP [0, 275, 192],
   TYOP [0, 1, 101], TYOP [0, 22, 277], TYOP [0, 278, 251],
   TYOP [0, 14, 14], TYOP [0, 280, 14], TYOP [0, 21, 281],
   TYOP [0, 106, 3], TYOP [0, 110, 161], TYOP [0, 24, 34],
   TYOP [0, 40, 48], TYOP [0, 26, 32], TYOP [0, 147, 121],
   TYOP [0, 47, 33], TYOP [0, 34, 24], TYOP [0, 32, 26],
   TYOP [0, 121, 147], TYOP [0, 33, 47], TYOP [0, 203, 44],
   TYOP [0, 19, 294], TYOP [0, 10, 12], TYOP [0, 9, 296],
   TYOP [0, 297, 12], TYOP [0, 12, 298], TYOP [0, 10, 299],
   TYOP [0, 165, 135], TYOP [0, 257, 301], TYOP [0, 128, 132],
   TYOP [0, 259, 303], TYOP [0, 32, 121], TYOP [0, 27, 305],
   TYOP [0, 34, 254], TYOP [0, 30, 307], TYOP [0, 263, 127],
   TYOP [0, 127, 309], TYOP [0, 127, 310], TYOP [0, 0, 262],
   TYOP [0, 312, 12], TYOP [0, 9, 313], TYOP [0, 16, 12],
   TYOP [0, 13, 315]]
  end
  val _ = Theory.incorporate_consts "alist" tyvector
     [("fmap_to_alist", 5), ("alist_to_fmap", 6), ("alist_range", 11),
      ("ALOOKUP_tupled", 14), ("ALOOKUP", 16)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("ALOOKUP_tupled", 14), TMV("P", 8), TMV("P", 18), TMV("R", 19),
   TMV("R", 21), TMV("a", 13), TMV("al", 3), TMV("al", 24), TMV("al", 26),
   TMV("f", 1), TMV("f", 4), TMV("f", 27), TMV("f", 29), TMV("f1", 4),
   TMV("f1", 27), TMV("f2", 4), TMV("f2", 30), TMV("fm", 4), TMV("fm", 31),
   TMV("fm", 32), TMV("fm", 33), TMV("fm1", 4), TMV("fm2", 4),
   TMV("fm2", 34), TMV("k", 1), TMV("k", 0), TMV("k", 22), TMV("l", 35),
   TMV("l", 3), TMV("l", 10), TMV("l", 37), TMV("l1", 35), TMV("l1", 3),
   TMV("l2", 38), TMV("l2", 3), TMV("ls", 3), TMV("ls", 10), TMV("ls2", 3),
   TMV("m", 4), TMV("m", 10), TMV("mal", 40), TMV("n", 41), TMV("p", 2),
   TMV("q", 0), TMV("s", 4), TMV("s", 3), TMV("sort", 45), TMV("t", 10),
   TMV("t", 47), TMV("v", 1), TMV("v", 0), TMV("v", 28), TMV("v", 48),
   TMV("v", 10), TMV("v1", 0), TMV("v2", 9), TMV("x", 1), TMV("x", 0),
   TMV("x", 22), TMV("x", 10), TMV("x'", 0), TMV("x1", 0), TMV("y", 1),
   TMV("y", 0), TMV("y", 22), TMV("z", 1), TMC(7, 49), TMC(7, 50),
   TMC(7, 52), TMC(7, 54), TMC(7, 56), TMC(7, 58), TMC(7, 60), TMC(7, 62),
   TMC(7, 64), TMC(7, 66), TMC(7, 68), TMC(7, 70), TMC(7, 72), TMC(7, 74),
   TMC(7, 76), TMC(7, 78), TMC(7, 80), TMC(7, 82), TMC(7, 84), TMC(7, 86),
   TMC(7, 88), TMC(7, 90), TMC(7, 91), TMC(8, 93), TMC(8, 96), TMC(8, 98),
   TMC(8, 100), TMC(8, 103), TMC(8, 105), TMC(8, 108), TMC(8, 112),
   TMC(8, 114), TMC(9, 116), TMC(10, 117), TMC(11, 19), TMC(11, 118),
   TMC(11, 116), TMC(11, 119), TMC(11, 120), TMC(11, 123), TMC(11, 125),
   TMC(11, 126), TMC(11, 130), TMC(11, 134), TMC(11, 137), TMC(11, 140),
   TMC(11, 141), TMC(11, 143), TMC(11, 144), TMC(11, 145), TMC(11, 146),
   TMC(11, 149), TMC(11, 117), TMC(11, 151), TMC(11, 153), TMC(11, 156),
   TMC(12, 116), TMC(13, 50), TMC(14, 158), TMC(15, 73), TMC(16, 159),
   TMC(16, 162), TMC(16, 16), TMC(16, 164), TMC(16, 166), TMC(16, 167),
   TMC(16, 168), TMC(17, 14), TMC(18, 169), TMC(19, 170), TMC(20, 173),
   TMC(20, 176), TMC(21, 178), TMC(21, 180), TMC(22, 182), TMC(22, 184),
   TMC(22, 186), TMC(23, 187), TMC(24, 188), TMC(24, 189), TMC(25, 4),
   TMC(26, 190), TMC(26, 193), TMC(27, 194), TMC(27, 195), TMC(27, 196),
   TMC(28, 200), TMC(29, 201), TMC(29, 202), TMC(30, 203), TMC(30, 204),
   TMC(31, 205), TMC(32, 207), TMC(32, 209), TMC(33, 197), TMC(33, 211),
   TMC(34, 213), TMC(35, 214), TMC(35, 171), TMC(36, 218), TMC(37, 219),
   TMC(37, 220), TMC(37, 221), TMC(37, 223), TMC(38, 225), TMC(39, 226),
   TMC(40, 227), TMC(40, 228), TMC(40, 229), TMC(41, 230), TMC(41, 231),
   TMC(41, 232), TMC(42, 235), TMC(42, 237), TMC(42, 239), TMC(42, 242),
   TMC(42, 244), TMC(42, 247), TMC(42, 249), TMC(42, 252), TMC(43, 253),
   TMC(43, 256), TMC(44, 3), TMC(44, 10), TMC(45, 12), TMC(45, 127),
   TMC(46, 258), TMC(46, 260), TMC(47, 144), TMC(47, 145), TMC(48, 42),
   TMC(48, 177), TMC(49, 261), TMC(50, 241), TMC(50, 217), TMC(51, 262),
   TMC(51, 263), TMC(52, 265), TMC(53, 126), TMC(54, 266), TMC(55, 268),
   TMC(55, 271), TMC(55, 274), TMC(55, 276), TMC(55, 279), TMC(56, 17),
   TMC(57, 157), TMC(58, 282), TMC(59, 283), TMC(59, 284), TMC(60, 11),
   TMC(61, 6), TMC(61, 285), TMC(61, 210), TMC(61, 286), TMC(61, 287),
   TMC(61, 288), TMC(61, 289), TMC(62, 5), TMC(62, 290), TMC(62, 291),
   TMC(62, 292), TMC(62, 293), TMC(63, 295), TMC(64, 300), TMC(65, 302),
   TMC(65, 304), TMC(66, 306), TMC(66, 308), TMC(67, 311), TMC(68, 314),
   TMC(68, 316), TMC(69, 63), TMC(70, 63), TMC(71, 115)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op fmap_to_alist_def x = x
    val op fmap_to_alist_def =
    DT(((("alist",0),[]),[]),
       [read"%69%44%115%224$0@@%178%24%89$0@%143$1@$0@@|@%198%144$0@@@@|@"])
  fun op alist_to_fmap_def x = x
    val op alist_to_fmap_def =
    DT(((("alist",2),[]),[]),
       [read"%81%45%103%217$0@@%152%207%24%50%10%158$0@%89$2@$1@@|||@@%146@$0@@|@"])
  fun op ALOOKUP_tupled_primitive_def x = x
    val op ALOOKUP_tupled_primitive_def =
    DT(((("alist",4),[]),[]),
       [read"%113%133@%213%124%4%98%212$0@@%66%62%83%47%67%43%67%57%122%240%101$0@$1@@@$4%97$2@$1@@%97%138%91$0@$3@@$2@@$1@@@|@|@|@|@@|@@%0%5%237$0@%53%43%230$1@%164%190@@%55%47%236$1@%57%62%164%136%101$1@$4@@%201$0@@$7%97$2@$4@@@@||@||@||@||@@"])
  fun op ALOOKUP_curried_def x = x
    val op ALOOKUP_curried_def =
    DT(((("alist",5),[]),[]),
       [read"%83%59%67%61%119%128$1@$0@@%133%97$1@$0@@@|@|@"])
  fun op alist_range_def x = x
    val op alist_range_def =
    DT(((("alist",57),[]),[]),
       [read"%83%39%107%216$0@@%162%49%90$0@%123%25%119%128$2@$0@@%201$1@@|@@|@@|@"])
  fun op fmap_to_alist_FEMPTY x = x
    val op fmap_to_alist_FEMPTY =
    DT(((("alist",1),
        [("alist",[0]),("bool",[25,63]),("finite_map",[15]),
         ("list",[23,246])]),["DISK_THM"]), [read"%115%224%146@@%188@"])
  fun op alist_to_fmap_thm x = x
    val op alist_to_fmap_thm =
    DT(((("alist",3),
        [("alist",[2]),("bool",[25,56]),("list",[28]),
         ("pair",[16])]),["DISK_THM"]),
       [read"%98%103%217%188@@%146@@%106%223%139%94%26@%51@@%48@@@%159%223%48@@%94%26@%51@@@@"])
  fun op ALOOKUP_ind x = x
    val op ALOOKUP_ind =
    DT(((("alist",6),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107,124]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%78%2%122%98%67%43$1%189@$0@|@@%67%57%66%62%83%47%67%43%122%122%240%101$3@$0@@@$4$1@$0@@@$4%138%91$3@$2@@$1@@$0@@|@|@|@|@@@%83%53%67%54$2$1@$0@|@|@@|@"])
  fun op ALOOKUP_def x = x
    val op ALOOKUP_def =
    DT(((("alist",7),
        [("alist",[4,5]),("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,53,54,58,63,93,96,104,105,107,124,129]),
         ("combin",[19]),("list",[6,7]),("numeral",[3,7,8]),
         ("pair",[7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%98%67%43%119%128%189@$0@@%190@|@@%66%62%67%57%83%47%67%43%119%128%138%91$2@$3@@$1@@$0@@%136%101$2@$0@@%201$3@@%128$1@$0@@@|@|@|@|@@"])
  fun op ALOOKUP_FAILS x = x
    val op ALOOKUP_FAILS =
    DT(((("alist",8),
        [("alist",[7]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,55,56,58,63,64,71,95,96,101,145]),
         ("list",[43,120]),("option",[11]),("pair",[4,5]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%102%119%128%29@%57@@%190@@%67%25%66%49%122%169%91$1@$0@@%177%29@@@%240%101$1@%57@@@|@|@@"])
  fun op ALOOKUP_NONE x = x
    val op ALOOKUP_NONE =
    DT(((("alist",9),
        [("alist",[8]),("bool",[25,26,56,58,63,72,95,96,101,145]),
         ("list",[89]),("pair",[8,25])]),["DISK_THM"]),
       [read"%81%28%66%56%102%120%126$1@$0@@%191@@%240%166$0@%175%180%155@$1@@@@@|@|@"])
  fun op ALOOKUP_TABULATE x = x
    val op ALOOKUP_TABULATE =
    DT(((("alist",10),
        [("alist",[7]),
         ("bool",[14,25,26,27,30,52,53,56,58,63,64,105,124,129]),
         ("list",[23,43,120]),("option",[10])]),["DISK_THM"]),
       [read"%122%166%56@%175%27@@@%120%126%178%24%89$0@%11$0@@|@%27@@%56@@%202%11%56@@@@"])
  fun op ALOOKUP_EQ_FLOOKUP x = x
    val op ALOOKUP_EQ_FLOOKUP =
    DT(((("alist",11),
        [("alist",[0,2,3,4,5,6,8,10]),
         ("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [15,25,26,27,30,36,51,52,53,54,56,58,60,63,93,95,96,101,104,105,
          107,124,129,143,145,147]),("combin",[19]),
         ("finite_map",[24,77,78,79]),("list",[6,7,89,250]),
         ("numeral",[3,7,8]),("pair",[4,7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%98%108%149%217%6@@@%126%6@@@%111%132%228%20@@@%151%20@@@"])
  fun op MEM_fmap_to_alist x = x
    val op MEM_fmap_to_alist =
    DT(((("alist",12),
        [("alist",[0]),("bool",[25,26,27,48,53,54,55,58,63,143]),
         ("finite_map",[24]),("list",[89,250]),("pair",[4]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%102%168%89%56@%63@@%176%224%17@@@@%98%166%56@%144%17@@@%101%143%17@%56@@%63@@@"])
  fun op MEM_fmap_to_alist_FLOOKUP x = x
    val op MEM_fmap_to_alist_FLOOKUP =
    DT(((("alist",13),
        [("alist",[12]),("bool",[25,56,58,105,129]),("finite_map",[77]),
         ("option",[27]),("pair",[5,8,9])]),["DISK_THM"]),
       [read"%88%42%69%17%102%168$1@%176%224$0@@@@%120%149$0@%155$1@@@%202%199$1@@@@|@|@"])
  fun op MEM_pair_fmap_to_alist_FLOOKUP x = x
    val op MEM_pair_fmap_to_alist_FLOOKUP =
    DT(((("alist",14),
        [("alist",[13]),("bool",[25,56]),("pair",[8,9])]),["DISK_THM"]),
       [read"%66%56%67%63%69%17%102%168%89$2@$1@@%176%224$0@@@@%120%149$0@$2@@%202$1@@@|@|@|@"])
  fun op LENGTH_fmap_to_alist x = x
    val op LENGTH_fmap_to_alist =
    DT(((("alist",15),
        [("alist",[0]),("bool",[25,56,63]),("finite_map",[24]),
         ("list",[60,248])]),["DISK_THM"]),
       [read"%69%17%118%174%224$0@@@%135%144$0@@@|@"])
  fun op fmap_to_alist_to_fmap x = x
    val op fmap_to_alist_to_fmap =
    DT(((("alist",16),
        [("alist",[11]),("bool",[25,56]),
         ("finite_map",[83])]),["DISK_THM"]),
       [read"%103%217%224%17@@@%17@"])
  fun op ALOOKUP_MEM x = x
    val op ALOOKUP_MEM =
    DT(((("alist",17),
        [("alist",[7]),
         ("bool",[14,25,26,27,30,51,52,53,56,58,63,64,105,124]),
         ("list",[43,120]),("option",[10,11]),
         ("pair",[4,5])]),["DISK_THM"]),
       [read"%81%6%66%24%67%50%122%120%126$2@$1@@%202$0@@@%168%89$1@$0@@%176$2@@@|@|@|@"])
  fun op ALOOKUP_SOME_FAPPLY_alist_to_fmap x = x
    val op ALOOKUP_SOME_FAPPLY_alist_to_fmap =
    DT(((("alist",18),
        [("alist",[11]),("bool",[25,53,56,58,105,124]),("finite_map",[77]),
         ("option",[10,27])]),["DISK_THM"]),
       [read"%81%6%66%24%67%50%122%120%126$2@$1@@%202$0@@@%101%143%217$2@@$1@@$0@@|@|@|@"])
  fun op alist_to_fmap_FAPPLY_MEM x = x
    val op alist_to_fmap_FAPPLY_MEM =
    DT(((("alist",19),
        [("alist",[11,17]),("bool",[25,51,56,63]),("finite_map",[77]),
         ("option",[27])]),["DISK_THM"]),
       [read"%81%6%66%65%122%166$0@%144%217$1@@@@%168%89$0@%143%217$1@@$0@@@%176$1@@@|@|@"])
  fun op ALOOKUP_MAP x = x
    val op ALOOKUP_MAP =
    DT(((("alist",20),
        [("alist",[7]),
         ("bool",[14,25,26,27,30,36,56,58,60,63,64,105,129,143,147]),
         ("combin",[8]),("list",[23,43]),("option",[10,13,29]),
         ("pair",[5,16])]),["DISK_THM"]),
       [read"%73%11%86%8%110%131%185%210%58%62%93$1@$3$0@@||@@$0@@@%231%192$1@@%130$0@@@|@|@"])
  fun op FDOM_alist_to_fmap x = x
    val op FDOM_alist_to_fmap =
    DT(((("alist",21),
        [("alist",[2,3]),("bool",[14,25,56]),("finite_map",[15,16]),
         ("list",[23,25,28,43]),("pair",[5,8,16])]),["DISK_THM"]),
       [read"%81%6%107%144%217$0@@@%175%180%155@$0@@@|@"])
  fun op alist_to_fmap_prefix x = x
    val op alist_to_fmap_prefix =
    DT(((("alist",22),
        [("alist",[3]),("bool",[14,25,53,54,55,56,58,63,105,124]),
         ("list",[20,43]),("pair",[5]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%81%35%81%32%81%34%122%103%217$1@@%217$0@@@%103%217%134$2@$1@@@%217%134$2@$0@@@@|@|@|@"])
  fun op alist_to_fmap_APPEND x = x
    val op alist_to_fmap_APPEND =
    DT(((("alist",23),
        [("alist",[3]),("bool",[14,25,56]),("finite_map",[60,62]),
         ("list",[20,43]),("pair",[5])]),["DISK_THM"]),
       [read"%81%32%81%34%103%217%134$1@$0@@@%157%217$1@@%217$0@@@|@|@"])
  fun op ALOOKUP_prefix x = x
    val op ALOOKUP_prefix =
    DT(((("alist",24),
        [("alist",[6,7]),
         ("bool",[25,26,27,30,36,51,53,54,56,58,63,64,105,124,147]),
         ("list",[20]),("option",[10,11])]),["DISK_THM"]),
       [read"%81%35%66%24%81%37%98%122%120%126$2@$1@@%202%50@@@%120%126%134$2@$0@@$1@@%202%50@@@@%122%120%126$2@$1@@%191@@%120%126%134$2@$0@@$1@@%126$0@$1@@@@|@|@|@"])
  fun op ALOOKUP_APPEND x = x
    val op ALOOKUP_APPEND =
    DT(((("alist",25),
        [("alist",[24]),("bool",[25,56,63]),
         ("option",[6,7,10])]),["DISK_THM"]),
       [read"%81%32%81%34%66%24%120%126%134$2@$1@@$0@@%235%126$2@$0@@%126$1@$0@@%50%202$0@|@@|@|@|@"])
  fun op FUPDATE_LIST_EQ_APPEND_REVERSE x = x
    val op FUPDATE_LIST_EQ_APPEND_REVERSE =
    DT(((("alist",26),
        [("alist",[3,16,21,23]),
         ("bool",[14,25,26,27,30,56,58,63,64,105,129,147]),
         ("finite_map",[60,61,62,63,144]),("list",[43,173]),
         ("pair",[5])]),["DISK_THM"]),
       [read"%81%35%69%17%103%160$0@$1@@%217%134%196$1@@%224$0@@@@|@|@"])
  fun op FLOOKUP_FUPDATE_LIST_ALOOKUP_SOME x = x
    val op FLOOKUP_FUPDATE_LIST_ALOOKUP_SOME =
    DT(((("alist",27),
        [("alist",[16,17,18,21,23,26]),
         ("bool",[25,26,27,30,51,52,53,54,55,56,58,63,64,105,124,129,143]),
         ("finite_map",[58,77]),("list",[89,175]),("option",[10,27]),
         ("pair",[8,24]),("pred_set",[33]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%122%119%128%36@%25@@%201%49@@@%119%150%161%18@%197%36@@@%25@@%201%49@@@"])
  fun op FLOOKUP_FUPDATE_LIST_ALOOKUP_NONE x = x
    val op FLOOKUP_FUPDATE_LIST_ALOOKUP_NONE =
    DT(((("alist",28),
        [("alist",[8,16,21,23,26]),
         ("bool",
         [25,26,27,37,52,53,56,58,63,95,101,105,124,129,143,145,147]),
         ("finite_map",[58,77]),("list",[89,175]),("pair",[8,24]),
         ("pred_set",[33])]),["DISK_THM"]),
       [read"%122%119%128%36@%25@@%190@@%119%150%161%18@%197%36@@@%25@@%150%18@%25@@@"])
  fun op FUNION_alist_to_fmap x = x
    val op FUNION_alist_to_fmap =
    DT(((("alist",29),
        [("alist",[3]),("bool",[14,25,56]),
         ("finite_map",[60,62,143,144,146]),("list",[29,43,173]),
         ("pair",[6])]),["DISK_THM"]),
       [read"%81%35%69%17%103%157%217$1@@$0@@%160$0@%196$1@@@|@|@"])
  fun op alist_to_fmap_MAP x = x
    val op alist_to_fmap_MAP =
    DT(((("alist",30),
        [("alist",[3,21]),("bool",[14,25,36,51,53,56,58,63,105,124]),
         ("finite_map",[93,95,134,137,165,191,192]),("list",[23,25,43]),
         ("marker",[6]),("pair",[5,8,16]),
         ("pred_set",[14,162,164])]),["DISK_THM"]),
       [read"%73%14%76%16%82%7%122%170$2@%175%182%156@$0@@@%211@@%104%220%183%208%56%64%92$4$1@@$3$0@@||@@$0@@@%187$2@%234$1@%218$0@@@@@|@|@|@"])
  fun op alist_to_fmap_to_alist x = x
    val op alist_to_fmap_to_alist =
    DT(((("alist",31),
        [("alist",[0,8,18,21]),("bool",[25,27,51,54,56,58,63,105,124]),
         ("list",[64,89,233,250]),("option",[6,10,16]),
         ("pair",[4,6,8])]),["DISK_THM"]),
       [read"%81%6%115%224%217$0@@@%178%24%89$0@%205%126$1@$0@@@|@%198%175%180%155@$0@@@@@|@"])
  fun op alist_to_fmap_to_alist_PERM x = x
    val op alist_to_fmap_to_alist_PERM =
    DT(((("alist",32),
        [("alist",[7,31]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,64,71,72,75,
          78,80,84,93,94,96,105,109,124,129,146,147]),("combin",[8,19]),
         ("list",[23,43,48,61,64,66,89,215]),("marker",[6]),
         ("option",[16]),("pair",[4,5,8]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("sorting",[1,4,5,66,67])]),["DISK_THM"]),
       [read"%81%6%122%125%180%155@$0@@@%195%224%217$0@@@$0@@|@"])
  fun op ALOOKUP_LEAST_EL x = x
    val op ALOOKUP_LEAST_EL =
    DT(((("alist",33),
        [("alist",[7]),
         ("arithmetic",[24,25,28,37,41,46,59,71,93,173,177,180]),
         ("bool",
         [14,25,26,27,30,36,51,52,53,54,55,56,58,63,64,83,96,101,104,105,
          124,129,147]),("list",[17,23,25,43,67,89,128,170]),
         ("numeral",[3,8]),("option",[10,11]),("pair",[5,8,9]),
         ("pred_set",[10,80]),("prim_rec",[7]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("while",[9])]),["DISK_THM"]),
       [read"%81%35%66%24%120%126$1@$0@@%137%166$0@%175%180%155@$1@@@@%202%141%171%41%100%140$0@%180%155@$2@@@$1@|@@%181%199@$1@@@@%191@@|@|@"])
  fun op ALOOKUP_ALL_DISTINCT_MEM x = x
    val op ALOOKUP_ALL_DISTINCT_MEM =
    DT(((("alist",34),
        [("alist",[33]),
         ("arithmetic",[24,25,27,41,46,59,71,93,172,173,180]),
         ("bool",
         [13,14,25,26,27,30,36,43,47,48,51,52,53,54,56,58,63,72,93,94,96,
          101,104,105,124,143]),("combin",[19]),
         ("list",[60,67,89,170,219]),("marker",[6]),("numeral",[3,5,8]),
         ("option",[27]),("pair",[8,9,24]),("prim_rec",[4]),
         ("sat",[1,3,5,6,7,11,12,13,14,15]),
         ("while",[7,9])]),["DISK_THM"]),
       [read"%122%98%125%180%155@%6@@@%168%89%24@%50@@%176%6@@@@%120%126%6@%24@@%202%50@@@"])
  fun op ALL_DISTINCT_fmap_to_alist_keys x = x
    val op ALL_DISTINCT_fmap_to_alist_keys =
    DT(((("alist",35),
        [("alist",[0]),
         ("bool",
         [25,26,27,30,36,51,53,54,56,58,63,101,105,124,129,143,145,147,
          169]),("combin",[8]),("finite_map",[24,126]),
         ("list",[23,64,66,89,215,244,245,246,250]),("marker",[6]),
         ("pair",[4,8,24]),
         ("pred_set",[102,121,122,188,189])]),["DISK_THM"]),
       [read"%69%17%125%180%155@%224$0@@@|@"])
  fun op fmap_to_alist_inj x = x
    val op fmap_to_alist_inj =
    DT(((("alist",36),
        [("alist",[16,21]),
         ("bool",[25,26,36,51,53,54,56,58,63,105,124,143]),
         ("finite_map",[34]),("list",[89]),("marker",[6]),("pair",[8,24]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%69%13%69%15%122%115%224$1@@%224$0@@@%103$1@$0@@|@|@"])
  fun op fmap_to_alist_preserves_FDOM x = x
    val op fmap_to_alist_preserves_FDOM =
    DT(((("alist",37),
        [("alist",[0]),
         ("bool",
         [25,26,27,30,36,51,53,54,56,58,63,101,105,124,129,145,147,169]),
         ("combin",[8]),("finite_map",[24,126]),
         ("list",[23,48,64,66,244,245,246,250]),("marker",[6,9]),
         ("pair",[8]),("pred_set",[102,121,188])]),["DISK_THM"]),
       [read"%69%21%70%23%122%107%144$1@@%145$0@@@%114%180%155@%224$1@@@%182%156@%225$0@@@@|@|@"])
  fun op PERM_fmap_to_alist x = x
    val op PERM_fmap_to_alist =
    DT(((("alist",38),
        [("alist",[11,13,16,17,21,35,36,37]),
         ("bool",[25,36,51,53,54,55,56,58,63,99,100,105,106,124]),
         ("list",[60,67,170,219,236]),("marker",[6]),("option",[10]),
         ("pair",[3,4,5,8,9]),("pred_set",[14,33,158]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sorting",[1,23,25,67,83])]),["DISK_THM"]),
       [read"%102%195%224%21@@%224%22@@@%103%21@%22@@"])
  fun op alist_to_fmap_PERM x = x
    val op alist_to_fmap_PERM =
    DT(((("alist",39),
        [("alist",[32,38]),("bool",[25,53,54,63,100]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("sorting",[4,5,64,67])]),["DISK_THM"]),
       [read"%81%32%81%34%122%98%195$1@$0@@%125%180%155@$1@@@@%103%217$1@@%217$0@@@|@|@"])
  fun op ALOOKUP_ALL_DISTINCT_EL x = x
    val op ALOOKUP_ALL_DISTINCT_EL =
    DT(((("alist",40),
        [("alist",[7]),("arithmetic",[28,37]),
         ("bool",
         [2,14,15,25,26,27,30,36,51,53,54,55,56,58,63,64,72,74,84,96,99,
          105,124,129,147]),("list",[17,22,23,43,89,128,170,215]),
         ("option",[10]),("pair",[5,8,9]),("prim_rec",[6,7]),
         ("sat",[1,3,5,6,7,11,12,13,15,17,18])]),["DISK_THM"]),
       [read"%81%35%87%41%122%98%99$0@%174$1@@@%125%180%155@$1@@@@%120%126$1@%155%142$0@$1@@@@%202%199%142$0@$1@@@@@|@|@"])
  fun op ALOOKUP_ZIP_MAP_SND x = x
    val op ALOOKUP_ZIP_MAP_SND =
    DT(((("alist",41),
        [("alist",[7]),
         ("bool",
         [14,25,26,27,30,36,53,56,58,60,63,64,105,124,129,143,147]),
         ("combin",[8]),("list",[22,23,43,46,91,156]),("num",[7]),
         ("option",[10,13,29]),("prim_rec",[1])]),["DISK_THM"]),
       [read"%79%31%80%33%68%26%75%12%122%118%172$3@@%173$2@@@%109%127%215%96$3@%179$0@$2@@@@@%232%193$0@@%126%214%95$3@$2@@@@@@|@|@|@|@"])
  fun op ALOOKUP_FILTER x = x
    val op ALOOKUP_FILTER =
    DT(((("alist",42),
        [("alist",[7]),
         ("bool",[14,25,26,27,30,36,53,54,56,58,63,64,65,105,129,147]),
         ("list",[27,43]),("option",[10,27]),("pair",[5,16]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%81%35%66%56%120%126%147%206%24%50%1$1@||@@$1@@$0@@%137%1$0@@%126$1@$0@@%191@@|@|@"])
  fun op ALOOKUP_APPEND_same x = x
    val op ALOOKUP_APPEND_same =
    DT(((("alist",43),
        [("alist",[25]),
         ("bool",[25,36,53,56,58,60,105,124])]),["DISK_THM"]),
       [read"%81%32%81%34%81%28%122%108%126$2@@%126$1@@@%108%126%134$2@$0@@@%126%134$1@$0@@@@|@|@|@"])
  fun op ALOOKUP_IN_FRANGE x = x
    val op ALOOKUP_IN_FRANGE =
    DT(((("alist",44),
        [("alist",[3,7,11,21]),
         ("bool",
         [14,25,26,27,30,36,52,53,54,55,56,58,63,64,75,93,95,99,101,105,
          108,109,124,145,169]),("finite_map",[77,126,129,133,237]),
         ("list",[43]),("option",[10,11,27]),("pair",[5]),
         ("pred_set",[80,102]),
         ("sat",
         [1,3,5,6,7,11,12,13,14,15,16,17,18,19,20,23])]),["DISK_THM"]),
       [read"%81%35%66%24%67%50%122%120%126$2@$1@@%202$0@@@%167$0@%153%217$2@@@@|@|@|@"])
  fun op FRANGE_alist_to_fmap_SUBSET x = x
    val op FRANGE_alist_to_fmap_SUBSET =
    DT(((("alist",45),
        [("alist",[19,21]),
         ("bool",[25,26,58,63,86,93,95,101,105,124,143,145]),
         ("finite_map",[99]),("pair",[3,9,24]),
         ("pred_set",[6,18,144])]),["DISK_THM"]),
       [read"%204%154%219%36@@@%165%200@%177%36@@@"])
  fun op IN_FRANGE_alist_to_fmap_suff x = x
    val op IN_FRANGE_alist_to_fmap_suff =
    DT(((("alist",46),
        [("alist",[45]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,83,93,94,96,105,
          124]),("list",[89]),("pred_set",[18,144]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%122%66%49%122%166$0@%175%184%200@%36@@@@%1$0@@|@@%66%49%122%166$0@%154%219%36@@@@%1$0@@|@@"])
  fun op alist_to_fmap_MAP_matchable x = x
    val op alist_to_fmap_MAP_matchable =
    DT(((("alist",47),
        [("alist",[30]),("bool",[14,25,26,36,53,54,56,63]),
         ("combin",[3,5]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%73%14%76%16%82%7%85%40%71%52%122%98%170$4@%175%182%156@$2@@@%211@@%98%116$1@%183%208%56%64%92$6$1@@$5$0@@||@@$2@@@%104$0@%187$4@%234$3@%218$2@@@@@@@%104%220$1@@$0@@|@|@|@|@|@"])
  fun op MAP_values_fmap_to_alist x = x
    val op MAP_values_fmap_to_alist =
    DT(((("alist",48),
        [("alist",[0]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("combin",[8]),("finite_map",[24,93,94]),("list",[64,66,250]),
         ("pair",[4,16])]),["DISK_THM"]),
       [read"%73%11%72%19%117%185%210%26%49%93$1@$3$0@@||@@%226$0@@@%227%233$1@$0@@@|@|@"])
  fun op MAP_KEYS_I x = x
    val op MAP_KEYS_I =
    DT(((("alist",49),
        [("bool",[14,25,26,36,51,53,54,56,58,63,75,83,105,124,143]),
         ("combin",[19]),("finite_map",[34,190]),
         ("pred_set",[3,18,24,144,158]),
         ("sat",[1,3,5,6,7,11,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%69%17%103%186%163@$0@@$0@|@"])
  fun op alist_to_fmap_MAP_values x = x
    val op alist_to_fmap_MAP_values =
    DT(((("alist",50),
        [("alist",[47,49]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("combin",[19]),("pred_set",[14,158])]),["DISK_THM"]),
       [read"%73%11%86%8%105%222%185%210%26%49%93$1@$3$0@@||@@$0@@@%233$1@%221$0@@@|@|@"])
  fun op set_MAP_FST_fmap_to_alist x = x
    val op set_MAP_FST_fmap_to_alist =
    DT(((("alist",51),
        [("alist",[16,21]),("bool",[25,53,54,55,63]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%107%175%180%155@%224%17@@@@%144%17@@"])
  fun op alookup_distinct_reverse x = x
    val op alookup_distinct_reverse =
    DT(((("alist",52),
        [("alist",[7,17,25]),
         ("bool",
         [14,25,26,27,30,53,54,55,56,58,63,64,72,96,105,124,129,147]),
         ("list",[23,43,89,173,215]),("option",[6,7,10]),("pair",[6,8]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%81%28%66%24%122%125%180%155@$1@@@%120%126%196$1@@$0@@%126$1@$0@@@|@|@"])
  fun op flookup_fupdate_list x = x
    val op flookup_fupdate_list =
    DT(((("alist",53),
        [("alist",[4,5,6,7,25,27,28]),
         ("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [15,25,26,27,30,36,52,53,54,56,58,63,64,93,96,104,105,107,124,129,
          147]),("combin",[19]),("finite_map",[79,144]),
         ("list",[6,7,173,175]),("numeral",[3,7,8]),("option",[6,7,10,11]),
         ("pair",[7,8,16,49]),("prim_rec",[42]),
         ("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%81%28%66%24%69%38%120%149%160$0@$2@@$1@@%235%126%196$2@@$1@@%149$0@$1@@%50%202$0@|@@|@|@|@"])
  fun op fupdate_list_funion x = x
    val op fupdate_list_funion =
    DT(((("alist",54),
        [("alist",[53]),("bool",[14,25,26,27,30,56,58,64,105,124,129]),
         ("finite_map",[60,78,79,82,143,144,259]),("list",[29,43]),
         ("option",[6,7,10,11]),("pair",[6])]),["DISK_THM"]),
       [read"%69%38%81%28%103%160$1@$0@@%157%160%146@$0@@$1@@|@|@"])
  fun op mem_to_flookup x = x
    val op mem_to_flookup =
    DT(((("alist",55),
        [("alist",[7,17,25,52,53]),
         ("bool",
         [14,25,26,27,51,52,53,54,55,56,58,63,72,96,105,124,129,147]),
         ("finite_map",[78]),("list",[23,43,89,120,173,177,215]),
         ("option",[6,7,10,11]),("pair",[8]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23])]),["DISK_THM"]),
       [read"%66%56%67%63%81%28%122%98%125%180%155@$0@@@%168%89$2@$1@@%176$0@@@@%120%149%160%146@$0@@$2@@%202$1@@@|@|@|@"])
  fun op alookup_filter x = x
    val op alookup_filter =
    DT(((("alist",56),
        [("alist",[4,5,7]),
         ("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",
         [14,15,25,26,27,30,36,52,53,54,56,58,63,64,93,96,104,105,107,124,
          129,147]),("combin",[19]),("list",[6,7,27,43]),
         ("numeral",[3,7,8]),("option",[10]),("pair",[6,7,8,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%66%9%84%30%67%57%121%129$1@$0@@%129%148%209%60%64%101$2@$1@||@@$1@@$0@@|@|@|@"])
  fun op alookup_stable_sorted x = x
    val op alookup_stable_sorted =
    DT(((("alist",58),
        [("alist",[56]),("bool",[25,53,54,55,58,63,105,124]),
         ("pair",[6,8,16]),("relation",[0,6,114]),
         ("sat",[1,3,5,6,7,11,14,17,18,19,20,23]),
         ("sorting",[30,104])]),["DISK_THM"]),
       [read"%74%3%77%46%66%56%81%28%122%98%239$3@@%98%238$3@@%203$2@%229$3@%155@@@@@%120%126$2%229$3@%155@@$0@@$1@@%126$0@$1@@@|@|@|@|@"])
  fun op ALOOKUP_ALL_DISTINCT_PERM_same x = x
    val op ALOOKUP_ALL_DISTINCT_PERM_same =
    DT(((("alist",59),
        [("alist",[8,17,34]),
         ("bool",
         [2,15,25,26,53,54,58,60,63,75,84,95,99,100,101,105,124,143,145]),
         ("list",[89]),("option",[6]),("pair",[8,24,25]),("pred_set",[3]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
         ("sorting",[64,83])]),["DISK_THM"]),
       [read"%81%32%81%34%122%98%125%180%155@$1@@@%98%194%180%155@$1@@%180%155@$0@@@%112%176$1@@%176$0@@@@@%108%126$1@@%126$0@@@|@|@"])
  end
  val _ = DB.bindl "alist"
  [("fmap_to_alist_def",fmap_to_alist_def,DB.Def),
   ("alist_to_fmap_def",alist_to_fmap_def,DB.Def),
   ("ALOOKUP_tupled_primitive_def",ALOOKUP_tupled_primitive_def,DB.Def),
   ("ALOOKUP_curried_def",ALOOKUP_curried_def,DB.Def),
   ("alist_range_def",alist_range_def,DB.Def),
   ("fmap_to_alist_FEMPTY",fmap_to_alist_FEMPTY,DB.Thm),
   ("alist_to_fmap_thm",alist_to_fmap_thm,DB.Thm),
   ("ALOOKUP_ind",ALOOKUP_ind,DB.Thm), ("ALOOKUP_def",ALOOKUP_def,DB.Thm),
   ("ALOOKUP_FAILS",ALOOKUP_FAILS,DB.Thm),
   ("ALOOKUP_NONE",ALOOKUP_NONE,DB.Thm),
   ("ALOOKUP_TABULATE",ALOOKUP_TABULATE,DB.Thm),
   ("ALOOKUP_EQ_FLOOKUP",ALOOKUP_EQ_FLOOKUP,DB.Thm),
   ("MEM_fmap_to_alist",MEM_fmap_to_alist,DB.Thm),
   ("MEM_fmap_to_alist_FLOOKUP",MEM_fmap_to_alist_FLOOKUP,DB.Thm),
   ("MEM_pair_fmap_to_alist_FLOOKUP",
    MEM_pair_fmap_to_alist_FLOOKUP,
    DB.Thm), ("LENGTH_fmap_to_alist",LENGTH_fmap_to_alist,DB.Thm),
   ("fmap_to_alist_to_fmap",fmap_to_alist_to_fmap,DB.Thm),
   ("ALOOKUP_MEM",ALOOKUP_MEM,DB.Thm),
   ("ALOOKUP_SOME_FAPPLY_alist_to_fmap",
    ALOOKUP_SOME_FAPPLY_alist_to_fmap,
    DB.Thm), ("alist_to_fmap_FAPPLY_MEM",alist_to_fmap_FAPPLY_MEM,DB.Thm),
   ("ALOOKUP_MAP",ALOOKUP_MAP,DB.Thm),
   ("FDOM_alist_to_fmap",FDOM_alist_to_fmap,DB.Thm),
   ("alist_to_fmap_prefix",alist_to_fmap_prefix,DB.Thm),
   ("alist_to_fmap_APPEND",alist_to_fmap_APPEND,DB.Thm),
   ("ALOOKUP_prefix",ALOOKUP_prefix,DB.Thm),
   ("ALOOKUP_APPEND",ALOOKUP_APPEND,DB.Thm),
   ("FUPDATE_LIST_EQ_APPEND_REVERSE",
    FUPDATE_LIST_EQ_APPEND_REVERSE,
    DB.Thm),
   ("FLOOKUP_FUPDATE_LIST_ALOOKUP_SOME",
    FLOOKUP_FUPDATE_LIST_ALOOKUP_SOME,
    DB.Thm),
   ("FLOOKUP_FUPDATE_LIST_ALOOKUP_NONE",
    FLOOKUP_FUPDATE_LIST_ALOOKUP_NONE,
    DB.Thm), ("FUNION_alist_to_fmap",FUNION_alist_to_fmap,DB.Thm),
   ("alist_to_fmap_MAP",alist_to_fmap_MAP,DB.Thm),
   ("alist_to_fmap_to_alist",alist_to_fmap_to_alist,DB.Thm),
   ("alist_to_fmap_to_alist_PERM",alist_to_fmap_to_alist_PERM,DB.Thm),
   ("ALOOKUP_LEAST_EL",ALOOKUP_LEAST_EL,DB.Thm),
   ("ALOOKUP_ALL_DISTINCT_MEM",ALOOKUP_ALL_DISTINCT_MEM,DB.Thm),
   ("ALL_DISTINCT_fmap_to_alist_keys",
    ALL_DISTINCT_fmap_to_alist_keys,
    DB.Thm), ("fmap_to_alist_inj",fmap_to_alist_inj,DB.Thm),
   ("fmap_to_alist_preserves_FDOM",fmap_to_alist_preserves_FDOM,DB.Thm),
   ("PERM_fmap_to_alist",PERM_fmap_to_alist,DB.Thm),
   ("alist_to_fmap_PERM",alist_to_fmap_PERM,DB.Thm),
   ("ALOOKUP_ALL_DISTINCT_EL",ALOOKUP_ALL_DISTINCT_EL,DB.Thm),
   ("ALOOKUP_ZIP_MAP_SND",ALOOKUP_ZIP_MAP_SND,DB.Thm),
   ("ALOOKUP_FILTER",ALOOKUP_FILTER,DB.Thm),
   ("ALOOKUP_APPEND_same",ALOOKUP_APPEND_same,DB.Thm),
   ("ALOOKUP_IN_FRANGE",ALOOKUP_IN_FRANGE,DB.Thm),
   ("FRANGE_alist_to_fmap_SUBSET",FRANGE_alist_to_fmap_SUBSET,DB.Thm),
   ("IN_FRANGE_alist_to_fmap_suff",IN_FRANGE_alist_to_fmap_suff,DB.Thm),
   ("alist_to_fmap_MAP_matchable",alist_to_fmap_MAP_matchable,DB.Thm),
   ("MAP_values_fmap_to_alist",MAP_values_fmap_to_alist,DB.Thm),
   ("MAP_KEYS_I",MAP_KEYS_I,DB.Thm),
   ("alist_to_fmap_MAP_values",alist_to_fmap_MAP_values,DB.Thm),
   ("set_MAP_FST_fmap_to_alist",set_MAP_FST_fmap_to_alist,DB.Thm),
   ("alookup_distinct_reverse",alookup_distinct_reverse,DB.Thm),
   ("flookup_fupdate_list",flookup_fupdate_list,DB.Thm),
   ("fupdate_list_funion",fupdate_list_funion,DB.Thm),
   ("mem_to_flookup",mem_to_flookup,DB.Thm),
   ("alookup_filter",alookup_filter,DB.Thm),
   ("alookup_stable_sorted",alookup_stable_sorted,DB.Thm),
   ("ALOOKUP_ALL_DISTINCT_PERM_same",
    ALOOKUP_ALL_DISTINCT_PERM_same,
    DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("finite_mapTheory.finite_map_grammars",
                          finite_mapTheory.finite_map_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       temp_thytype_abbrev
       ({Thy="alist",Name="alist"}, T"list" "list" [T"prod" "pair" [alpha, beta]])
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_to_alist", (Term.prim_mk_const { Name = "fmap_to_alist", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("fmap_to_alist", (Term.prim_mk_const { Name = "fmap_to_alist", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("alist_to_fmap", (Term.prim_mk_const { Name = "alist_to_fmap", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("alist_to_fmap", (Term.prim_mk_const { Name = "alist_to_fmap", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ALOOKUP_tupled", (Term.prim_mk_const { Name = "ALOOKUP_tupled", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ALOOKUP_tupled", (Term.prim_mk_const { Name = "ALOOKUP_tupled", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ALOOKUP", (Term.prim_mk_const { Name = "ALOOKUP", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("ALOOKUP", (Term.prim_mk_const { Name = "ALOOKUP", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("alist_range", (Term.prim_mk_const { Name = "alist_range", Thy = "alist"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("alist_range", (Term.prim_mk_const { Name = "alist_range", Thy = "alist"}))
  val alist_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "alist",
    thydataty = "simp",
    data =
        "alist.fmap_to_alist_FEMPTY alist.fmap_to_alist_to_fmap alist.set_MAP_FST_fmap_to_alist alist.MAP_KEYS_I alist.ALL_DISTINCT_fmap_to_alist_keys alist.alist_to_fmap_APPEND alist.FDOM_alist_to_fmap alist.ALOOKUP_SOME_FAPPLY_alist_to_fmap alist.ALOOKUP_EQ_FLOOKUP alist.LENGTH_fmap_to_alist alist.MEM_pair_fmap_to_alist_FLOOKUP alist.ALOOKUP_def alist.alist_to_fmap_thm"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "alist",
    thydataty = "compute",
    data =
        "alist.fmap_to_alist_def alist.ALOOKUP_def alist.alist_range_def alist.alist_to_fmap_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "alist"
end
