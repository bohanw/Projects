structure state_transformerTheory :> state_transformerTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading state_transformerTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open listTheory
  in end;
  val _ = Theory.link_parents
          ("state_transformer",
          Arbnum.fromString "1488586618",
          Arbnum.fromString "879723")
          [("list",
           Arbnum.fromString "1488586477",
           Arbnum.fromString "361466")];
  val _ = Theory.incorporate_types "state_transformer" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("pair", "prod"), ID("list", "list"),
   ID("one", "one"), ID("min", "bool"), ID("num", "num"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("min", "@"), ID("state_transformer", "BIND"),
   ID("arithmetic", "BIT1"), ID("bool", "COND"), ID("list", "CONS"),
   ID("list", "FOLDR"), ID("state_transformer", "FOR"),
   ID("state_transformer", "FOREACH"), ID("pair", "FST"),
   ID("combin", "I"), ID("state_transformer", "IGNORE_BIND"),
   ID("state_transformer", "JOIN"), ID("combin", "K"), ID("bool", "LET"),
   ID("list", "MAP"), ID("state_transformer", "MMAP"),
   ID("state_transformer", "MWHILE"), ID("state_transformer", "NARROW"),
   ID("list", "NIL"), ID("arithmetic", "NUMERAL"),
   ID("state_transformer", "READ"), ID("pair", "SND"),
   ID("pair", "UNCURRY"), ID("state_transformer", "UNIT"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("state_transformer", "WIDEN"), ID("state_transformer", "WRITE"),
   ID("arithmetic", "ZERO"), ID("list", "list_CASE"),
   ID("state_transformer", "mapM"), ID("combin", "o"),
   ID("pair", "pair_CASE"), ID("state_transformer", "sequence"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYV "'b", TYOP [2, 1], TYOP [1, 2, 0], TYOP [0, 0, 3],
   TYOP [1, 1, 0], TYOP [0, 0, 5], TYOP [2, 6], TYOP [0, 7, 4], TYV "'c",
   TYOP [2, 9], TYOP [1, 10, 1], TYOP [0, 1, 11], TYOP [2, 0],
   TYOP [0, 13, 12], TYOP [1, 9, 1], TYOP [0, 1, 15], TYOP [0, 0, 16],
   TYOP [0, 17, 14], TYV "'state", TYOP [3], TYOP [1, 20, 19],
   TYOP [0, 19, 21], TYOP [0, 19, 19], TYOP [0, 23, 22], TYOP [1, 1, 19],
   TYOP [1, 0, 25], TYOP [0, 25, 26], TYOP [1, 0, 19], TYOP [0, 19, 28],
   TYOP [0, 29, 27], TYOP [0, 1, 6], TYOP [0, 19, 0], TYOP [0, 32, 29],
   TYOP [0, 27, 29], TYOP [0, 1, 34], TYOP [1, 20, 0], TYOP [0, 0, 36],
   TYOP [0, 6, 37], TYOP [4], TYOP [1, 39, 0], TYOP [0, 0, 40],
   TYOP [0, 41, 38], TYOP [1, 9, 0], TYOP [0, 0, 43], TYOP [0, 44, 6],
   TYOP [0, 9, 1], TYOP [0, 46, 45], TYOP [1, 6, 0], TYOP [0, 0, 48],
   TYOP [0, 49, 6], TYOP [0, 6, 6], TYOP [0, 44, 51], TYOP [0, 0, 22],
   TYOP [1, 13, 53], TYOP [0, 54, 22], TYOP [5], TYOP [0, 56, 22],
   TYOP [1, 56, 57], TYOP [1, 56, 58], TYOP [0, 59, 22], TYOP [0, 1, 44],
   TYOP [0, 61, 44], TYOP [0, 6, 62], TYOP [0, 54, 39], TYOP [0, 59, 39],
   TYOP [0, 54, 64], TYOP [0, 59, 65], TYOP [0, 0, 1], TYOP [0, 1, 9],
   TYV "'d", TYOP [0, 9, 70], TYOP [0, 9, 6], TYOP [1, 0, 9],
   TYOP [0, 9, 73], TYOP [1, 70, 0], TYOP [0, 0, 75], TYOP [0, 9, 76],
   TYOP [1, 0, 1], TYOP [0, 0, 39], TYOP [0, 79, 39], TYOP [0, 1, 39],
   TYOP [0, 81, 39], TYOP [0, 68, 39], TYOP [0, 83, 39], TYOP [0, 17, 39],
   TYOP [0, 85, 39], TYOP [0, 53, 39], TYOP [0, 87, 39], TYOP [0, 6, 39],
   TYOP [0, 89, 39], TYOP [0, 44, 39], TYOP [0, 91, 39], TYOP [0, 41, 39],
   TYOP [0, 93, 39], TYOP [0, 49, 39], TYOP [0, 95, 39], TYOP [0, 69, 39],
   TYOP [0, 97, 39], TYOP [0, 61, 39], TYOP [0, 99, 39], TYOP [0, 46, 39],
   TYOP [0, 101, 39], TYOP [0, 71, 39], TYOP [0, 103, 39],
   TYOP [0, 77, 39], TYOP [0, 105, 39], TYOP [0, 74, 39],
   TYOP [0, 107, 39], TYOP [0, 32, 39], TYOP [0, 109, 39],
   TYOP [0, 23, 39], TYOP [0, 111, 39], TYOP [0, 29, 39],
   TYOP [0, 113, 39], TYOP [0, 57, 39], TYOP [0, 115, 39],
   TYOP [0, 27, 39], TYOP [0, 117, 39], TYOP [0, 64, 39],
   TYOP [0, 119, 39], TYOP [0, 65, 39], TYOP [0, 121, 39],
   TYOP [0, 13, 39], TYOP [0, 123, 39], TYOP [0, 56, 39],
   TYOP [0, 125, 39], TYOP [0, 78, 39], TYOP [0, 127, 39],
   TYOP [0, 56, 56], TYOP [0, 56, 129], TYOP [0, 0, 29], TYOP [0, 0, 27],
   TYOP [0, 19, 25], TYOP [0, 1, 133], TYOP [0, 53, 54], TYOP [0, 13, 135],
   TYOP [0, 57, 58], TYOP [0, 56, 137], TYOP [0, 58, 59],
   TYOP [0, 56, 139], TYOP [0, 20, 22], TYOP [0, 39, 39],
   TYOP [0, 39, 142], TYOP [0, 56, 125], TYOP [0, 6, 89], TYOP [0, 44, 91],
   TYOP [0, 76, 39], TYOP [0, 76, 147], TYOP [0, 4, 39], TYOP [0, 4, 149],
   TYOP [0, 37, 39], TYOP [0, 37, 151], TYOP [0, 1, 0], TYOP [0, 153, 39],
   TYOP [0, 153, 154], TYOP [0, 1, 1], TYOP [0, 156, 39],
   TYOP [0, 156, 157], TYOP [0, 61, 99], TYOP [0, 16, 39],
   TYOP [0, 16, 160], TYOP [0, 46, 101], TYOP [0, 29, 113],
   TYOP [0, 22, 39], TYOP [0, 22, 164], TYOP [0, 51, 39],
   TYOP [0, 51, 166], TYOP [0, 6, 76], TYOP [0, 168, 39],
   TYOP [0, 168, 169], TYOP [0, 49, 44], TYOP [0, 171, 39],
   TYOP [0, 171, 172], TYOP [1, 49, 0], TYOP [0, 0, 174], TYOP [0, 175, 6],
   TYOP [0, 176, 39], TYOP [0, 176, 177], TYOP [0, 14, 39],
   TYOP [0, 14, 179], TYOP [0, 8, 39], TYOP [0, 8, 181], TYOP [0, 27, 117],
   TYOP [0, 55, 39], TYOP [0, 55, 184], TYOP [0, 60, 39],
   TYOP [0, 60, 186], TYOP [0, 78, 127], TYOP [0, 66, 39],
   TYOP [0, 189, 66], TYOP [0, 67, 39], TYOP [0, 191, 67], TYOP [0, 31, 6],
   TYOP [0, 6, 193], TYOP [0, 1, 76], TYOP [0, 195, 76], TYOP [0, 6, 196],
   TYOP [0, 1, 4], TYOP [0, 198, 4], TYOP [0, 6, 199], TYOP [0, 72, 6],
   TYOP [0, 44, 201], TYOP [0, 77, 76], TYOP [0, 44, 203],
   TYOP [0, 39, 37], TYOP [0, 205, 37], TYOP [0, 41, 206], TYOP [0, 51, 6],
   TYOP [0, 49, 208], TYOP [0, 2, 4], TYOP [0, 210, 4], TYOP [0, 4, 211],
   TYOP [0, 17, 16], TYOP [0, 1, 78], TYOP [0, 214, 213],
   TYOP [0, 141, 22], TYOP [0, 22, 216], TYOP [0, 37, 37],
   TYOP [0, 37, 218], TYOP [0, 39, 219], TYOP [0, 22, 22],
   TYOP [0, 22, 221], TYOP [0, 39, 222], TYOP [0, 39, 130],
   TYOP [0, 13, 13], TYOP [0, 0, 225], TYOP [0, 2, 2], TYOP [0, 1, 227],
   TYOP [0, 10, 10], TYOP [0, 9, 229], TYOP [0, 4, 8], TYOP [0, 4, 4],
   TYOP [0, 6, 232], TYOP [0, 233, 231], TYOP [0, 78, 0], TYOP [0, 73, 0],
   TYOP [1, 1, 9], TYOP [0, 237, 1], TYOP [0, 6, 218], TYOP [1, 44, 0],
   TYOP [0, 0, 240], TYOP [0, 241, 44], TYOP [0, 175, 49],
   TYOP [0, 0, 153], TYOP [0, 28, 26], TYOP [0, 245, 245],
   TYOP [0, 26, 28], TYOP [0, 247, 247], TYOP [2, 16], TYOP [0, 13, 249],
   TYOP [0, 17, 250], TYOP [0, 9, 237], TYOP [0, 74, 252],
   TYOP [0, 68, 253], TYOP [0, 156, 51], TYOP [0, 6, 44],
   TYOP [0, 69, 256], TYOP [0, 1, 70], TYOP [0, 258, 168], TYOP [0, 6, 49],
   TYOP [0, 31, 260], TYOP [0, 6, 241], TYOP [0, 61, 262],
   TYOP [0, 44, 76], TYOP [0, 71, 264], TYOP [0, 49, 241],
   TYOP [0, 256, 266], TYOP [0, 50, 243], TYOP [0, 78, 1],
   TYOP [0, 25, 19], TYOP [0, 78, 78], TYOP [0, 0, 214],
   TYOP [0, 272, 271], TYOP [0, 19, 26], TYOP [0, 0, 274],
   TYOP [0, 275, 245], TYOP [0, 25, 28], TYOP [0, 0, 277],
   TYOP [0, 278, 247], TYOP [0, 5, 43], TYOP [0, 61, 280],
   TYOP [0, 1, 274], TYOP [0, 282, 27], TYOP [0, 9, 44], TYOP [0, 20, 37],
   TYOP [0, 55, 55], TYOP [0, 286, 55], TYOP [0, 66, 287],
   TYOP [0, 60, 60], TYOP [0, 289, 60], TYOP [0, 67, 290],
   TYOP [0, 13, 22], TYOP [0, 0, 292], TYOP [0, 293, 22],
   TYOP [0, 22, 294], TYOP [0, 13, 295], TYOP [0, 10, 4],
   TYOP [0, 72, 297], TYOP [0, 9, 0], TYOP [0, 299, 46], TYOP [0, 68, 300],
   TYOP [0, 46, 72], TYOP [0, 31, 302], TYOP [0, 69, 258],
   TYOP [0, 71, 304], TYOP [0, 69, 61], TYOP [0, 284, 306],
   TYOP [0, 31, 61], TYOP [0, 256, 308], TYOP [0, 50, 171],
   TYOP [0, 256, 310], TYOP [0, 256, 168], TYOP [0, 264, 312],
   TYOP [0, 260, 51], TYOP [0, 50, 314], TYOP [0, 243, 176],
   TYOP [0, 50, 316], TYOP [0, 266, 171], TYOP [0, 242, 318],
   TYOP [0, 250, 14], TYOP [0, 249, 12], TYOP [0, 321, 320],
   TYOP [0, 214, 153], TYOP [0, 235, 323], TYOP [0, 214, 156],
   TYOP [0, 269, 325], TYOP [0, 74, 299], TYOP [0, 236, 327],
   TYOP [0, 280, 256], TYOP [0, 252, 46], TYOP [0, 238, 330],
   TYOP [0, 53, 22], TYOP [0, 13, 332], TYOP [0, 333, 22],
   TYOP [0, 54, 334], TYOP [0, 57, 22], TYOP [0, 56, 336],
   TYOP [0, 337, 22], TYOP [0, 58, 338], TYOP [0, 58, 22],
   TYOP [0, 56, 340], TYOP [0, 341, 22], TYOP [0, 59, 342]]
  end
  val _ = Theory.incorporate_consts "state_transformer" tyvector
     [("sequence", 8), ("mapM", 18), ("WRITE", 24), ("WIDEN", 30),
      ("UNIT", 31), ("READ", 33), ("NARROW", 35), ("MWHILE", 42),
      ("MMAP", 47), ("JOIN", 50), ("IGNORE_BIND", 52), ("FOREACH", 55),
      ("FOR", 60), ("BIND", 63)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("FOR", 60), TMV("FOREACH", 55), TMV("P", 64), TMV("P", 65),
   TMV("R", 66), TMV("R", 67), TMV("a", 1), TMV("a", 53), TMV("a", 57),
   TMV("a'", 54), TMV("a'", 59), TMV("b", 6), TMV("f", 68), TMV("f", 17),
   TMV("f", 44), TMV("f", 69), TMV("f", 61), TMV("f", 46), TMV("f", 71),
   TMV("f", 72), TMV("f", 32), TMV("f", 23), TMV("f", 29), TMV("f", 27),
   TMV("g", 6), TMV("g", 41), TMV("g", 69), TMV("g", 74), TMV("gv", 39),
   TMV("h", 0), TMV("i", 56), TMV("j", 56), TMV("k", 17), TMV("k", 6),
   TMV("m", 6), TMV("m", 44), TMV("m", 61), TMV("ms", 4), TMV("n", 77),
   TMV("r", 0), TMV("s", 0), TMV("s", 19), TMV("s", 78), TMV("s1", 1),
   TMV("s1", 25), TMV("s2", 19), TMV("s3", 19), TMV("t", 13), TMV("u", 20),
   TMV("v", 1), TMV("v", 13), TMV("v", 56), TMV("v1", 53), TMV("v1", 56),
   TMV("v1", 58), TMV("v2", 57), TMV("x", 0), TMV("x", 1), TMV("x", 9),
   TMV("xs", 2), TMV("xs", 10), TMV("y", 1), TMV("ys", 2), TMV("z", 49),
   TMC(6, 80), TMC(6, 82), TMC(6, 84), TMC(6, 86), TMC(6, 88), TMC(6, 90),
   TMC(6, 92), TMC(6, 94), TMC(6, 96), TMC(6, 98), TMC(6, 100),
   TMC(6, 102), TMC(6, 104), TMC(6, 106), TMC(6, 108), TMC(6, 110),
   TMC(6, 112), TMC(6, 114), TMC(6, 116), TMC(6, 118), TMC(6, 120),
   TMC(6, 122), TMC(6, 124), TMC(6, 126), TMC(6, 128), TMC(7, 130),
   TMC(8, 131), TMC(8, 132), TMC(8, 31), TMC(8, 134), TMC(8, 136),
   TMC(8, 138), TMC(8, 140), TMC(8, 141), TMC(9, 130), TMC(10, 143),
   TMC(11, 144), TMC(12, 145), TMC(12, 146), TMC(12, 148), TMC(12, 150),
   TMC(12, 152), TMC(12, 155), TMC(12, 158), TMC(12, 159), TMC(12, 161),
   TMC(12, 162), TMC(12, 163), TMC(12, 165), TMC(12, 167), TMC(12, 170),
   TMC(12, 173), TMC(12, 178), TMC(12, 180), TMC(12, 182), TMC(12, 183),
   TMC(12, 185), TMC(12, 187), TMC(12, 144), TMC(12, 188), TMC(13, 143),
   TMC(14, 190), TMC(14, 192), TMC(15, 194), TMC(15, 63), TMC(15, 197),
   TMC(15, 200), TMC(15, 202), TMC(15, 204), TMC(15, 207), TMC(15, 209),
   TMC(15, 212), TMC(15, 215), TMC(15, 217), TMC(16, 129), TMC(17, 220),
   TMC(17, 223), TMC(17, 224), TMC(18, 226), TMC(18, 228), TMC(18, 230),
   TMC(19, 234), TMC(20, 60), TMC(21, 55), TMC(22, 235), TMC(22, 236),
   TMC(22, 238), TMC(23, 156), TMC(23, 51), TMC(23, 221), TMC(24, 239),
   TMC(24, 52), TMC(25, 50), TMC(25, 242), TMC(25, 243), TMC(26, 244),
   TMC(27, 246), TMC(27, 248), TMC(28, 251), TMC(29, 254), TMC(29, 255),
   TMC(29, 257), TMC(29, 259), TMC(29, 261), TMC(29, 263), TMC(29, 47),
   TMC(29, 265), TMC(29, 267), TMC(29, 268), TMC(30, 42), TMC(31, 35),
   TMC(32, 13), TMC(32, 2), TMC(32, 10), TMC(32, 7), TMC(33, 129),
   TMC(34, 33), TMC(35, 269), TMC(35, 270), TMC(36, 273), TMC(36, 276),
   TMC(36, 279), TMC(36, 281), TMC(36, 283), TMC(37, 272), TMC(37, 31),
   TMC(37, 284), TMC(37, 260), TMC(37, 210), TMC(37, 285), TMC(37, 141),
   TMC(38, 189), TMC(38, 191), TMC(39, 288), TMC(39, 291), TMC(40, 30),
   TMC(41, 24), TMC(42, 56), TMC(43, 296), TMC(44, 18), TMC(44, 298),
   TMC(45, 301), TMC(45, 303), TMC(45, 305), TMC(45, 307), TMC(45, 309),
   TMC(45, 311), TMC(45, 313), TMC(45, 315), TMC(45, 317), TMC(45, 319),
   TMC(45, 322), TMC(45, 324), TMC(45, 326), TMC(45, 328), TMC(45, 329),
   TMC(45, 331), TMC(3, 20), TMC(46, 335), TMC(46, 339), TMC(46, 343),
   TMC(47, 8), TMC(47, 321), TMC(48, 142)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op UNIT_DEF x = x
    val op UNIT_DEF =
    DT(((("state_transformer",0),[]),[]),
       [read"%65%57%101%189$0@@%40%92$1@$0@|@|@"])
  fun op BIND_DEF x = x
    val op BIND_DEF =
    DT(((("state_transformer",1),[]),[]),
       [read"%69%24%74%16%102%128$1@$0@@%219%186$0@@$1@@|@|@"])
  fun op IGNORE_BIND_DEF x = x
    val op IGNORE_BIND_DEF =
    DT(((("state_transformer",2),[]),[]),
       [read"%70%14%69%24%101%155$1@$0@@%131$1@%58$1|@@|@|@"])
  fun op MMAP_DEF x = x
    val op MMAP_DEF =
    DT(((("state_transformer",3),[]),[]),
       [read"%75%17%70%35%101%169$1@$0@@%131$0@%206%189@$1@@@|@|@"])
  fun op JOIN_DEF x = x
    val op JOIN_DEF =
    DT(((("state_transformer",4),[]),[]),
       [read"%72%63%101%156$0@@%134$0@%152@@|@"])
  fun op FOR_primitive_def x = x
    val op FOR_primitive_def =
    DT(((("state_transformer",5),[]),[]),
       [read"%121%146@%198%126%5%99%196$0@@%82%8%87%31%87%30%124%227%122$0@$1@@@$3%96%141%100$0@$1@@%89$0@%179%138%201@@@@%98$0@%179%138%201@@@@@%95$1@$2@@@%96$0@%95$1@$2@@@@|@|@|@@|@@%0%10%224$0@%30%54%223$0@%31%8%153%140%122$3@$1@@$0$3@@%137$0$3@@%48$6%96%141%100$4@$2@@%89$4@%179%138%201@@@@%98$4@%179%138%201@@@@@%95$2@$1@@@|@@@||@||@||@@"])
  fun op FOREACH_primitive_def x = x
    val op FOREACH_primitive_def =
    DT(((("state_transformer",8),[]),[]),
       [read"%120%147@%197%125%4%99%195$0@@%64%29%68%7%86%47$3%94$0@$1@@%94%142$2@$0@@$1@@|@|@|@@|@@%1%9%222$0@%50%7%202$1@%153%194%221@@@%29%47%153%137$2$1@@%48$6%94$1@$3@@|@@||@||@||@@"])
  fun op READ_def x = x
    val op READ_def =
    DT(((("state_transformer",11),[]),[]),
       [read"%79%20%111%180$0@@%41%90$1$0@@$0@|@|@"])
  fun op WRITE_def x = x
    val op WRITE_def =
    DT(((("state_transformer",12),[]),[]),
       [read"%80%21%112%200$0@@%41%97%221@$1$0@@|@|@"])
  fun op NARROW_def x = x
    val op NARROW_def =
    DT(((("state_transformer",13),[]),[]),
       [read"%65%49%83%23%111%174$1@$0@@%41%161%185%39%44%90$1@%182$0@@||@@$1%93$2@$0@@@|@|@|@"])
  fun op WIDEN_def x = x
    val op WIDEN_def =
    DT(((("state_transformer",14),[]),[]),
       [read"%81%22%119%199$0@@%187%43%45%160%184%39%46%91$1@%93$3@$0@@||@@$2$0@@||@@|@"])
  fun op sequence_def x = x
    val op sequence_def =
    DT(((("state_transformer",15),[]),[]),
       [read"%118%225@%145%34%37%130$1@%57%135$1@%59%192%143$1@$0@@|@|@||@%192%176@@@"])
  fun op mapM_def x = x
    val op mapM_def =
    DT(((("state_transformer",16),[]),[]),
       [read"%67%13%117%203$0@@%215%226@%162$0@@@|@"])
  fun op MWHILE_DEF x = x
    val op MWHILE_DEF =
    DT(((("state_transformer",17),
        [("arithmetic",[15,24,25,28,37,46,59,71,93,173,177,180,335]),
         ("bool",
         [13,25,26,27,30,32,36,37,43,48,51,52,53,54,56,58,60,63,64,72,92,
          96,101,104,105,124,129,140,146,147]),
         ("combin",[8,11,15,16,17,33,34,35]),("marker",[6,9]),
         ("numeral",[3,8]),("pair",[4,6,8,9,16]),("prim_rec",[1]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18]),
         ("state_transformer",[0,1,2]),("while",[9])]),["DISK_THM"]),
       [read"%71%25%69%11%105%173$1@$0@@%133$1@%28%139$0@%154$1@%173$2@$1@@@%193%221@@|@@|@|@"])
  fun op FOR_ind x = x
    val op FOR_ind =
    DT(((("state_transformer",6),
        [("arithmetic",
         [18,24,25,27,41,46,59,62,71,74,75,76,93,122,172,173,177,180,183,
          195,199,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          108,109,124,129]),("combin",[19]),("numeral",[0,3,5,8]),
         ("pair",[5,7,8,9,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("state_transformer",[5])]),["DISK_THM"]),
       [read"%85%3%124%87%30%87%31%82%8%124%124%227%122$2@$1@@@$3%96%141%100$2@$1@@%89$2@%179%138%201@@@@%98$2@%179%138%201@@@@@%95$1@$0@@@@@$3%96$2@%95$1@$0@@@@|@|@|@@%87%51%87%53%82%55$3%96$2@%95$1@$0@@@|@|@|@@|@"])
  fun op FOR_def x = x
    val op FOR_def =
    DT(((("state_transformer",7),
        [("arithmetic",
         [18,24,25,27,41,46,59,62,71,74,75,76,93,122,172,173,177,180,183,
          195,199,200,269]),
         ("bool",
         [15,25,26,27,30,36,43,51,52,53,54,56,58,63,64,93,96,101,104,105,
          108,109,124,129]),("combin",[19]),("numeral",[0,3,5,8]),
         ("pair",[5,7,8,9,16,49]),("prim_rec",[43,44]),
         ("relation",[101,113,121,126]),("sat",[1,3,5,6,7,11,12,13,15]),
         ("state_transformer",[5])]),["DISK_THM"]),
       [read"%87%31%87%30%82%8%112%146%96$1@%95$2@$0@@@@%140%122$1@$2@@$0$1@@%137$0$1@@%48%146%96%141%100$2@$3@@%89$2@%179%138%201@@@@%98$2@%179%138%201@@@@@%95$3@$1@@@|@@@|@|@|@"])
  fun op FOREACH_ind x = x
    val op FOREACH_ind =
    DT(((("state_transformer",9),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[25,27,36,52,53,54,58,63,93,96,104,105,107]),
         ("list",[7,46]),("numeral",[3,7,8]),("pair",[5,7,8,16]),
         ("prim_rec",[42]),("relation",[101,113,115]),
         ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
       [read"%84%2%124%99%68%7$1%94%175@$0@@|@@%64%29%86%47%68%7%124$3%94$1@$0@@@$3%94%142$2@$1@@$0@@@|@|@|@@@%86%50%68%52$2%94$1@$0@@|@|@@|@"])
  fun op FOREACH_def x = x
    val op FOREACH_def =
    DT(((("state_transformer",10),
        [("arithmetic",[22,24,25,41,46,59,71,93,173,180]),
         ("bool",[15,25,36,52,54,58,63,93,96,104,105,107]),("combin",[19]),
         ("list",[6,7]),("numeral",[3,7,8]),("pair",[7,8,16,49]),
         ("prim_rec",[42]),("relation",[113,115,121,126]),
         ("sat",[1,3,5,6,7,11,12,13,15]),
         ("state_transformer",[8])]),["DISK_THM"]),
       [read"%99%68%7%112%147%94%175@$0@@@%194%221@@|@@%86%47%64%29%68%7%112%147%94%142$1@$2@@$0@@@%137$0$1@@%48%147%94$3@$1@@|@@|@|@|@@"])
  fun op BIND_LEFT_UNIT x = x
    val op BIND_LEFT_UNIT =
    DT(((("state_transformer",18),
        [("bool",[25,36,56,59]),("combin",[5]),("pair",[16]),
         ("state_transformer",[0,1])]),["DISK_THM"]),
       [read"%67%32%64%56%109%136%188$0@@$1@@$1$0@@|@|@"])
  fun op UNIT_UNCURRY x = x
    val op UNIT_UNCURRY =
    DT(((("state_transformer",19),
        [("bool",[25,36,56]),("pair",[7,14]),
         ("state_transformer",[0])]),["DISK_THM"]),
       [read"%88%42%123%183%188@$0@@$0@|@"])
  fun op BIND_RIGHT_UNIT x = x
    val op BIND_RIGHT_UNIT =
    DT(((("state_transformer",20),
        [("bool",[25,36,56,59]),("combin",[5]),
         ("state_transformer",[1,19])]),["DISK_THM"]),
       [read"%69%33%101%127$0@%189@@$0@|@"])
  fun op BIND_ASSOC x = x
    val op BIND_ASSOC =
    DT(((("state_transformer",21),
        [("bool",[25,36,56]),("combin",[5]),("pair",[14]),
         ("state_transformer",[1])]),["DISK_THM"]),
       [read"%69%33%74%36%77%38%103%129$2@%6%132$2$0@@$1@|@@%132%128$2@$1@@$0@@|@|@|@"])
  fun op MMAP_ID x = x
    val op MMAP_ID =
    DT(((("state_transformer",22),
        [("bool",[14,25,36,56,59]),("combin",[5,19]),
         ("state_transformer",[3,20])]),["DISK_THM"]),
       [read"%113%164%151@@%152@"])
  fun op MMAP_COMP x = x
    val op MMAP_COMP =
    DT(((("state_transformer",23),
        [("bool",[25,36,56,58,59]),("combin",[5]),
         ("state_transformer",[3,18,21])]),["DISK_THM"]),
       [read"%76%18%73%26%114%166%207$1@$0@@@%211%170$1@@%165$0@@@|@|@"])
  fun op MMAP_UNIT x = x
    val op MMAP_UNIT =
    DT(((("state_transformer",24),
        [("bool",[25,36,56,59]),("combin",[5]),
         ("state_transformer",[3,18])]),["DISK_THM"]),
       [read"%73%15%108%209%165$0@@%189@@%208%190@$0@@|@"])
  fun op MMAP_JOIN x = x
    val op MMAP_JOIN =
    DT(((("state_transformer",25),
        [("bool",[25,36,56,58,59]),("combin",[5,19]),
         ("state_transformer",[3,4,18,21])]),["DISK_THM"]),
       [read"%73%15%115%210%165$0@@%156@@%214%157@%171%165$0@@@@|@"])
  fun op JOIN_UNIT x = x
    val op JOIN_UNIT =
    DT(((("state_transformer",26),
        [("bool",[25,56]),("combin",[0,1,2,5]),
         ("state_transformer",[4,18])]),["DISK_THM"]),
       [read"%113%212%156@%191@@%152@"])
  fun op JOIN_MMAP_UNIT x = x
    val op JOIN_MMAP_UNIT =
    DT(((("state_transformer",27),
        [("bool",[14,25,36,56,58,59]),("combin",[5,19]),
         ("state_transformer",[3,4,18,20,21])]),["DISK_THM"]),
       [read"%113%212%156@%167%189@@@%152@"])
  fun op JOIN_MAP_JOIN x = x
    val op JOIN_MAP_JOIN =
    DT(((("state_transformer",28),
        [("bool",[25,36,56,58,59]),("combin",[5,19]),
         ("state_transformer",[3,4,18,21])]),["DISK_THM"]),
       [read"%116%213%156@%172%156@@@%213%156@%158@@"])
  fun op JOIN_MAP x = x
    val op JOIN_MAP =
    DT(((("state_transformer",29),
        [("bool",[14,25,36,56,58]),("combin",[5,19]),
         ("state_transformer",[3,4,18,21])]),["DISK_THM"]),
       [read"%69%33%74%36%102%128$1@$0@@%157%168$0@$1@@@|@|@"])
  fun op FST_o_UNIT x = x
    val op FST_o_UNIT =
    DT(((("state_transformer",30),
        [("bool",[14,25,26,36,56]),("combin",[8,12]),("pair",[8]),
         ("state_transformer",[0])]),["DISK_THM"]),
       [read"%64%56%106%216%148@%188$0@@@%159$0@@|@"])
  fun op SND_o_UNIT x = x
    val op SND_o_UNIT =
    DT(((("state_transformer",31),
        [("bool",[14,25,26,36,56]),("combin",[8,19]),("pair",[9]),
         ("state_transformer",[0])]),["DISK_THM"]),
       [read"%64%56%107%217%181@%188$0@@@%151@|@"])
  fun op FST_o_MMAP x = x
    val op FST_o_MMAP =
    DT(((("state_transformer",32),
        [("bool",[14,25,26,36,56]),("combin",[8]),("pair",[8,13]),
         ("state_transformer",[0,1,3])]),["DISK_THM"]),
       [read"%66%12%78%27%110%220%150@%163$1@$0@@@%205$1@%218%149@$0@@@|@|@"])
  fun op sequence_nil x = x
    val op sequence_nil =
    DT(((("state_transformer",33),
        [("bool",[25,56]),("list",[28]),
         ("state_transformer",[15])]),["DISK_THM"]),
       [read"%104%225%178@@%192%176@@"])
  fun op mapM_nil x = x
    val op mapM_nil =
    DT(((("state_transformer",34),
        [("bool",[25,56]),("combin",[8]),("list",[23]),
         ("state_transformer",[16,33])]),["DISK_THM"]),
       [read"%104%204%19@%177@@%192%176@@"])
  fun op mapM_cons x = x
    val op mapM_cons =
    DT(((("state_transformer",35),
        [("bool",[25,56]),("combin",[8]),("list",[23,28]),
         ("state_transformer",[15,16])]),["DISK_THM"]),
       [read"%104%204%19@%144%58@%60@@@%130%19%58@@%61%135%204%19@%60@@%62%192%143$1@$0@@|@|@@"])
  end
  val _ = DB.bindl "state_transformer"
  [("UNIT_DEF",UNIT_DEF,DB.Def), ("BIND_DEF",BIND_DEF,DB.Def),
   ("IGNORE_BIND_DEF",IGNORE_BIND_DEF,DB.Def),
   ("MMAP_DEF",MMAP_DEF,DB.Def), ("JOIN_DEF",JOIN_DEF,DB.Def),
   ("FOR_primitive_def",FOR_primitive_def,DB.Def),
   ("FOREACH_primitive_def",FOREACH_primitive_def,DB.Def),
   ("READ_def",READ_def,DB.Def), ("WRITE_def",WRITE_def,DB.Def),
   ("NARROW_def",NARROW_def,DB.Def), ("WIDEN_def",WIDEN_def,DB.Def),
   ("sequence_def",sequence_def,DB.Def), ("mapM_def",mapM_def,DB.Def),
   ("MWHILE_DEF",MWHILE_DEF,DB.Def), ("FOR_ind",FOR_ind,DB.Thm),
   ("FOR_def",FOR_def,DB.Thm), ("FOREACH_ind",FOREACH_ind,DB.Thm),
   ("FOREACH_def",FOREACH_def,DB.Thm),
   ("BIND_LEFT_UNIT",BIND_LEFT_UNIT,DB.Thm),
   ("UNIT_UNCURRY",UNIT_UNCURRY,DB.Thm),
   ("BIND_RIGHT_UNIT",BIND_RIGHT_UNIT,DB.Thm),
   ("BIND_ASSOC",BIND_ASSOC,DB.Thm), ("MMAP_ID",MMAP_ID,DB.Thm),
   ("MMAP_COMP",MMAP_COMP,DB.Thm), ("MMAP_UNIT",MMAP_UNIT,DB.Thm),
   ("MMAP_JOIN",MMAP_JOIN,DB.Thm), ("JOIN_UNIT",JOIN_UNIT,DB.Thm),
   ("JOIN_MMAP_UNIT",JOIN_MMAP_UNIT,DB.Thm),
   ("JOIN_MAP_JOIN",JOIN_MAP_JOIN,DB.Thm), ("JOIN_MAP",JOIN_MAP,DB.Thm),
   ("FST_o_UNIT",FST_o_UNIT,DB.Thm), ("SND_o_UNIT",SND_o_UNIT,DB.Thm),
   ("FST_o_MMAP",FST_o_MMAP,DB.Thm), ("sequence_nil",sequence_nil,DB.Thm),
   ("mapM_nil",mapM_nil,DB.Thm), ("mapM_cons",mapM_cons,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("listTheory.list_grammars",
                          listTheory.list_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIT", (Term.prim_mk_const { Name = "UNIT", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("UNIT", (Term.prim_mk_const { Name = "UNIT", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIND", (Term.prim_mk_const { Name = "BIND", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("BIND", (Term.prim_mk_const { Name = "BIND", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IGNORE_BIND", (Term.prim_mk_const { Name = "IGNORE_BIND", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("IGNORE_BIND", (Term.prim_mk_const { Name = "IGNORE_BIND", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MMAP", (Term.prim_mk_const { Name = "MMAP", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MMAP", (Term.prim_mk_const { Name = "MMAP", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("JOIN", (Term.prim_mk_const { Name = "JOIN", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("JOIN", (Term.prim_mk_const { Name = "JOIN", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOR", (Term.prim_mk_const { Name = "FOR", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOR", (Term.prim_mk_const { Name = "FOR", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOREACH", (Term.prim_mk_const { Name = "FOREACH", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("FOREACH", (Term.prim_mk_const { Name = "FOREACH", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("READ", (Term.prim_mk_const { Name = "READ", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("READ", (Term.prim_mk_const { Name = "READ", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WRITE", (Term.prim_mk_const { Name = "WRITE", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WRITE", (Term.prim_mk_const { Name = "WRITE", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NARROW", (Term.prim_mk_const { Name = "NARROW", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("NARROW", (Term.prim_mk_const { Name = "NARROW", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WIDEN", (Term.prim_mk_const { Name = "WIDEN", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("WIDEN", (Term.prim_mk_const { Name = "WIDEN", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sequence", (Term.prim_mk_const { Name = "sequence", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sequence", (Term.prim_mk_const { Name = "sequence", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mapM", (Term.prim_mk_const { Name = "mapM", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("mapM", (Term.prim_mk_const { Name = "mapM", Thy = "state_transformer"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("MWHILE", (Term.prim_mk_const { Name = "MWHILE", Thy = "state_transformer"}))
  val state_transformer_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "state_transformer",
    thydataty = "simp",
    data = "state_transformer.sequence_nil state_transformer.mapM_nil"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "state_transformer",
    thydataty = "compute",
    data =
        "state_transformer.UNIT_DEF state_transformer.WIDEN_def state_transformer.mapM_def state_transformer.sequence_def state_transformer.WRITE_def state_transformer.NARROW_def state_transformer.READ_def state_transformer.BIND_DEF state_transformer.FOREACH_def state_transformer.FOR_def state_transformer.JOIN_DEF state_transformer.MMAP_DEF state_transformer.IGNORE_BIND_DEF"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "state_transformer"
end
