structure CoderTheory :> CoderTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading CoderTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open DecodeTheory
  in end;
  val _ = Theory.link_parents
          ("Coder",
          Arbnum.fromString "1488589590",
          Arbnum.fromString "764150")
          [("Decode",
           Arbnum.fromString "1488589564",
           Arbnum.fromString "446879")];
  val _ = Theory.incorporate_types "Coder" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("pair", "prod"),
   ID("option", "option"), ID("list", "list"), ID("one", "one"),
   ID("Encode", "tree"), ID("sum", "sum"), ID("num", "num"),
   ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("min", "@"), ID("list", "EVERY"),
   ID("Coder", "blist_coder"), ID("Coder", "bnum_coder"),
   ID("Coder", "bool_coder"), ID("Coder", "decode"),
   ID("Decode", "decode_blist"), ID("Decode", "decode_bnum"),
   ID("Decode", "decode_bool"), ID("Decode", "decode_list"),
   ID("Decode", "decode_num"), ID("Decode", "decode_option"),
   ID("Decode", "decode_prod"), ID("Decode", "decode_sum"),
   ID("Decode", "decode_tree"), ID("Decode", "decode_unit"),
   ID("Coder", "decoder"), ID("Coder", "domain"), ID("Decode", "enc2dec"),
   ID("Encode", "encode_blist"), ID("Encode", "encode_bnum"),
   ID("Encode", "encode_bool"), ID("Encode", "encode_list"),
   ID("Encode", "encode_num"), ID("Encode", "encode_option"),
   ID("Encode", "encode_prod"), ID("Encode", "encode_sum"),
   ID("Encode", "encode_tree"), ID("Encode", "encode_unit"),
   ID("Coder", "encoder"), ID("Encode", "lift_blist"),
   ID("Encode", "lift_option"), ID("Encode", "lift_prod"),
   ID("Encode", "lift_sum"), ID("Encode", "lift_tree"),
   ID("Coder", "list_coder"), ID("Coder", "num_coder"),
   ID("option", "option_CASE"), ID("Coder", "option_coder"),
   ID("pair", "pair_CASE"), ID("Coder", "prod_coder"),
   ID("Coder", "sum_coder"), ID("Coder", "tree_coder"),
   ID("Coder", "unit_coder"), ID("Coder", "wf_coder"),
   ID("Encode", "wf_encoder"), ID("Encode", "wf_pred"),
   ID("Encode", "wf_pred_bnum")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [4, 0], TYV "'a", TYOP [2, 2, 1], TYOP [3, 3],
   TYOP [0, 1, 4], TYOP [0, 2, 1], TYOP [2, 6, 5], TYOP [0, 2, 0],
   TYOP [2, 8, 7], TYOP [0, 9, 0], TYOP [5], TYOP [2, 11, 1], TYOP [3, 12],
   TYOP [0, 1, 13], TYOP [0, 11, 1], TYOP [2, 15, 14], TYOP [0, 11, 0],
   TYOP [2, 17, 16], TYOP [0, 17, 18], TYOP [6, 2], TYOP [2, 20, 1],
   TYOP [3, 21], TYOP [0, 1, 22], TYV "'b", TYOP [6, 24], TYOP [0, 25, 1],
   TYOP [2, 26, 23], TYOP [0, 20, 0], TYOP [2, 28, 27], TYOP [0, 24, 1],
   TYOP [2, 30, 5], TYOP [2, 8, 31], TYOP [0, 32, 29], TYOP [7, 2, 24],
   TYOP [2, 34, 1], TYOP [3, 35], TYOP [0, 1, 36], TYV "'d", TYV "'c",
   TYOP [7, 39, 38], TYOP [0, 40, 1], TYOP [2, 41, 37], TYOP [0, 34, 0],
   TYOP [2, 43, 42], TYOP [2, 24, 1], TYOP [3, 45], TYOP [0, 1, 46],
   TYOP [0, 38, 1], TYOP [2, 48, 47], TYOP [0, 24, 0], TYOP [2, 50, 49],
   TYOP [0, 51, 44], TYOP [0, 39, 1], TYOP [2, 53, 5], TYOP [2, 8, 54],
   TYOP [0, 55, 52], TYOP [2, 2, 24], TYOP [2, 57, 1], TYOP [3, 58],
   TYOP [0, 1, 59], TYOP [2, 39, 38], TYOP [0, 61, 1], TYOP [2, 62, 60],
   TYOP [0, 57, 0], TYOP [2, 64, 63], TYOP [0, 51, 65], TYOP [0, 55, 66],
   TYOP [3, 2], TYOP [2, 68, 1], TYOP [3, 69], TYOP [0, 1, 70],
   TYOP [3, 24], TYOP [0, 72, 1], TYOP [2, 73, 71], TYOP [0, 68, 0],
   TYOP [2, 75, 74], TYOP [0, 32, 76], TYOP [8], TYOP [2, 78, 1],
   TYOP [3, 79], TYOP [0, 1, 80], TYOP [0, 78, 1], TYOP [2, 82, 81],
   TYOP [0, 78, 0], TYOP [2, 84, 83], TYOP [0, 84, 85], TYOP [4, 2],
   TYOP [2, 87, 1], TYOP [3, 88], TYOP [0, 1, 89], TYOP [4, 24],
   TYOP [0, 91, 1], TYOP [2, 92, 90], TYOP [0, 87, 0], TYOP [2, 94, 93],
   TYOP [0, 32, 95], TYOP [0, 9, 6], TYOP [0, 9, 8], TYOP [0, 1, 2],
   TYOP [0, 9, 99], TYOP [0, 5, 99], TYOP [0, 8, 101], TYOP [2, 0, 1],
   TYOP [3, 103], TYOP [0, 1, 104], TYOP [0, 0, 1], TYOP [2, 106, 105],
   TYOP [0, 0, 0], TYOP [2, 108, 107], TYOP [0, 108, 109],
   TYOP [0, 78, 86], TYOP [4, 39], TYOP [0, 91, 112], TYOP [2, 113, 90],
   TYOP [2, 94, 114], TYOP [0, 24, 112], TYOP [2, 116, 5],
   TYOP [2, 8, 117], TYOP [0, 118, 115], TYOP [0, 78, 119],
   TYOP [2, 30, 47], TYOP [2, 50, 121], TYOP [0, 8, 0], TYOP [0, 123, 0],
   TYOP [0, 6, 0], TYOP [0, 125, 0], TYOP [0, 50, 0], TYOP [0, 127, 0],
   TYOP [0, 116, 0], TYOP [0, 129, 0], TYOP [0, 30, 0], TYOP [0, 131, 0],
   TYOP [0, 53, 0], TYOP [0, 133, 0], TYOP [0, 48, 0], TYOP [0, 135, 0],
   TYOP [0, 108, 0], TYOP [0, 137, 0], TYOP [0, 5, 0], TYOP [0, 139, 0],
   TYOP [0, 47, 0], TYOP [0, 141, 0], TYOP [0, 84, 0], TYOP [0, 143, 0],
   TYOP [0, 17, 0], TYOP [0, 145, 0], TYOP [0, 1, 0], TYOP [0, 147, 0],
   TYOP [0, 10, 0], TYOP [0, 122, 0], TYOP [0, 150, 0], TYOP [0, 7, 9],
   TYOP [0, 8, 152], TYOP [0, 117, 118], TYOP [0, 8, 154],
   TYOP [0, 31, 32], TYOP [0, 8, 156], TYOP [0, 54, 55], TYOP [0, 8, 158],
   TYOP [0, 5, 7], TYOP [0, 6, 160], TYOP [0, 49, 51], TYOP [0, 50, 162],
   TYOP [0, 5, 117], TYOP [0, 116, 164], TYOP [0, 5, 31],
   TYOP [0, 30, 166], TYOP [0, 5, 54], TYOP [0, 53, 168], TYOP [0, 47, 49],
   TYOP [0, 48, 170], TYOP [0, 107, 109], TYOP [0, 108, 172],
   TYOP [0, 105, 107], TYOP [0, 106, 174], TYOP [0, 114, 115],
   TYOP [0, 94, 176], TYOP [0, 93, 95], TYOP [0, 94, 178],
   TYOP [0, 90, 114], TYOP [0, 113, 180], TYOP [0, 90, 93],
   TYOP [0, 92, 182], TYOP [0, 83, 85], TYOP [0, 84, 184],
   TYOP [0, 81, 83], TYOP [0, 82, 186], TYOP [0, 16, 18],
   TYOP [0, 17, 188], TYOP [0, 14, 16], TYOP [0, 15, 190],
   TYOP [0, 74, 76], TYOP [0, 75, 192], TYOP [0, 71, 74],
   TYOP [0, 73, 194], TYOP [0, 63, 65], TYOP [0, 64, 196],
   TYOP [0, 60, 63], TYOP [0, 62, 198], TYOP [0, 42, 44],
   TYOP [0, 43, 200], TYOP [0, 37, 42], TYOP [0, 41, 202],
   TYOP [0, 27, 29], TYOP [0, 28, 204], TYOP [0, 23, 27],
   TYOP [0, 26, 206], TYOP [0, 0, 108], TYOP [0, 2, 8], TYOP [0, 8, 123],
   TYOP [0, 6, 125], TYOP [0, 99, 0], TYOP [0, 99, 212], TYOP [0, 5, 139],
   TYOP [0, 1, 147], TYOP [0, 109, 0], TYOP [0, 109, 216],
   TYOP [0, 115, 0], TYOP [0, 115, 218], TYOP [0, 95, 0],
   TYOP [0, 95, 220], TYOP [0, 85, 0], TYOP [0, 85, 222], TYOP [0, 18, 0],
   TYOP [0, 18, 224], TYOP [0, 76, 0], TYOP [0, 76, 226], TYOP [0, 65, 0],
   TYOP [0, 65, 228], TYOP [0, 44, 0], TYOP [0, 44, 230], TYOP [0, 29, 0],
   TYOP [0, 29, 232], TYOP [0, 8, 2], TYOP [0, 8, 94], TYOP [0, 87, 1],
   TYOP [2, 236, 90], TYOP [2, 94, 237], TYOP [0, 9, 238],
   TYOP [0, 78, 239], TYOP [0, 5, 90], TYOP [0, 78, 241],
   TYOP [0, 94, 242], TYOP [0, 84, 81], TYOP [0, 78, 244],
   TYOP [0, 108, 105], TYOP [0, 94, 241], TYOP [0, 5, 71],
   TYOP [0, 75, 248], TYOP [0, 47, 60], TYOP [0, 5, 250],
   TYOP [0, 64, 251], TYOP [0, 47, 37], TYOP [0, 5, 253],
   TYOP [0, 43, 254], TYOP [0, 5, 23], TYOP [0, 28, 256], TYOP [0, 17, 14],
   TYOP [0, 6, 5], TYOP [0, 8, 259], TYOP [0, 116, 113], TYOP [0, 78, 261],
   TYOP [0, 78, 82], TYOP [0, 30, 92], TYOP [0, 30, 73], TYOP [0, 48, 62],
   TYOP [0, 53, 266], TYOP [0, 48, 41], TYOP [0, 53, 268],
   TYOP [0, 30, 26], TYOP [0, 78, 235], TYOP [0, 8, 75], TYOP [0, 50, 64],
   TYOP [0, 8, 273], TYOP [0, 50, 43], TYOP [0, 8, 275], TYOP [0, 8, 28],
   TYOP [0, 3, 2], TYOP [0, 278, 2], TYOP [0, 2, 279], TYOP [0, 4, 280],
   TYOP [0, 68, 1], TYOP [2, 282, 71], TYOP [2, 75, 283], TYOP [0, 9, 284],
   TYOP [0, 2, 99], TYOP [0, 286, 2], TYOP [0, 3, 287], TYOP [0, 57, 1],
   TYOP [2, 289, 60], TYOP [2, 64, 290], TYOP [0, 122, 291],
   TYOP [0, 9, 292], TYOP [0, 34, 1], TYOP [2, 294, 37], TYOP [2, 43, 295],
   TYOP [0, 122, 296], TYOP [0, 9, 297], TYOP [0, 20, 1],
   TYOP [2, 299, 23], TYOP [2, 28, 300], TYOP [0, 9, 301],
   TYOP [0, 238, 0], TYOP [0, 284, 0], TYOP [0, 291, 0], TYOP [0, 296, 0],
   TYOP [0, 301, 0], TYOP [0, 8, 125], TYOP [0, 78, 143]]
  end
  val _ = Theory.incorporate_consts "Coder" tyvector
     [("wf_coder", 10), ("unit_coder", 19), ("tree_coder", 33),
      ("sum_coder", 56), ("prod_coder", 67), ("option_coder", 77),
      ("num_coder", 86), ("list_coder", 96), ("encoder", 97),
      ("domain", 98), ("decoder", 100), ("decode", 102),
      ("bool_coder", 110), ("bnum_coder", 111), ("blist_coder", 120)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("c", 9), TMV("c1", 9), TMV("c2", 122), TMV("d", 5), TMV("d1", 5),
   TMV("d2", 47), TMV("e", 6), TMV("e", 116), TMV("e", 30), TMV("e1", 53),
   TMV("e2", 48), TMV("f", 6), TMV("l", 1), TMV("m", 78), TMV("p", 8),
   TMV("p", 108), TMV("p", 84), TMV("p", 17), TMV("p1", 8), TMV("p2", 50),
   TMV("v", 3), TMV("v2", 1), TMV("x", 2), TMC(9, 123), TMC(9, 124),
   TMC(9, 126), TMC(9, 128), TMC(9, 130), TMC(9, 132), TMC(9, 134),
   TMC(9, 136), TMC(9, 138), TMC(9, 140), TMC(9, 142), TMC(9, 144),
   TMC(9, 146), TMC(9, 148), TMC(9, 143), TMC(9, 149), TMC(9, 151),
   TMC(10, 153), TMC(10, 155), TMC(10, 157), TMC(10, 159), TMC(10, 161),
   TMC(10, 163), TMC(10, 165), TMC(10, 167), TMC(10, 169), TMC(10, 171),
   TMC(10, 173), TMC(10, 175), TMC(10, 177), TMC(10, 179), TMC(10, 181),
   TMC(10, 183), TMC(10, 185), TMC(10, 187), TMC(10, 189), TMC(10, 191),
   TMC(10, 193), TMC(10, 195), TMC(10, 197), TMC(10, 199), TMC(10, 201),
   TMC(10, 203), TMC(10, 205), TMC(10, 207), TMC(11, 208), TMC(12, 209),
   TMC(12, 208), TMC(12, 210), TMC(12, 211), TMC(12, 213), TMC(12, 214),
   TMC(12, 215), TMC(12, 217), TMC(12, 219), TMC(12, 221), TMC(12, 223),
   TMC(12, 225), TMC(12, 227), TMC(12, 229), TMC(12, 231), TMC(12, 233),
   TMC(13, 208), TMC(14, 123), TMC(15, 234), TMC(16, 235), TMC(17, 240),
   TMC(17, 120), TMC(18, 111), TMC(19, 110), TMC(20, 102), TMC(21, 243),
   TMC(22, 245), TMC(23, 246), TMC(24, 247), TMC(25, 244), TMC(26, 249),
   TMC(27, 252), TMC(28, 255), TMC(29, 257), TMC(30, 258), TMC(31, 100),
   TMC(32, 98), TMC(33, 260), TMC(34, 262), TMC(35, 263), TMC(36, 106),
   TMC(37, 264), TMC(38, 82), TMC(39, 265), TMC(40, 267), TMC(41, 269),
   TMC(42, 270), TMC(43, 15), TMC(44, 97), TMC(45, 271), TMC(46, 272),
   TMC(47, 274), TMC(48, 276), TMC(49, 277), TMC(50, 239), TMC(50, 96),
   TMC(51, 86), TMC(52, 281), TMC(53, 285), TMC(53, 77), TMC(54, 288),
   TMC(55, 293), TMC(55, 67), TMC(56, 298), TMC(56, 56), TMC(57, 302),
   TMC(57, 33), TMC(58, 19), TMC(59, 10), TMC(59, 150), TMC(59, 216),
   TMC(59, 303), TMC(59, 222), TMC(59, 224), TMC(59, 304), TMC(59, 305),
   TMC(59, 306), TMC(59, 307), TMC(60, 308), TMC(61, 123), TMC(61, 137),
   TMC(61, 143), TMC(61, 145), TMC(62, 309)]
  end
  local
  val DT = Thm.disk_thm val read = Term.read_raw tmvector
  in
  fun op decode_def x = x
    val op decode_def =
    DT(((("Coder",0),[]),[]),
       [read"%24%14%32%3%36%12%69%93$2@$1@$0@@%126$1$0@@%87%22$3$0@|@@%20%129$0@%22%21$1||@|@@|@|@|@"])
  fun op wf_coder_def x = x
    val op wf_coder_def =
    DT(((("Coder",1),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%25%6%32%3%70%137%40$2@%44$1@$0@@@@%68%148$2@@%68%147$2@$1@@%74$0@%106$2@$1@@@@@|@|@|@"])
  fun op domain_def x = x
    val op domain_def =
    DT(((("Coder",2),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%25%6%32%3%71%105%40$2@%44$1@$0@@@@$2@|@|@|@"])
  fun op encoder_def x = x
    val op encoder_def =
    DT(((("Coder",3),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%25%6%32%3%72%117%40$2@%44$1@$0@@@@$1@|@|@|@"])
  fun op decoder_def x = x
    val op decoder_def =
    DT(((("Coder",4),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%25%6%32%3%73%104%40$2@%44$1@$0@@@@%93$2@$0@@|@|@|@"])
  fun op unit_coder_def x = x
    val op unit_coder_def =
    DT(((("Coder",9),[]),[]),
       [read"%35%17%80%136$0@@%58$0@%59%116@%103$0@@@@|@"])
  fun op bool_coder_def x = x
    val op bool_coder_def =
    DT(((("Coder",11),[]),[]),
       [read"%31%15%76%92$0@@%50$0@%51%109@%96$0@@@@|@"])
  fun op prod_coder_def x = x
    val op prod_coder_def =
    DT(((("Coder",13),[("pair",[16])]),["DISK_THM"]),
       [read"%24%18%29%9%32%4%26%19%30%10%33%5%82%131%43$5@%48$4@$3@@@%45$2@%49$1@$0@@@@%62%120$5@$2@@%63%113$4@$1@@%100%120$5@$2@@$3@$0@@@@|@|@|@|@|@|@"])
  fun op sum_coder_def x = x
    val op sum_coder_def =
    DT(((("Coder",15),[("pair",[16])]),["DISK_THM"]),
       [read"%24%18%29%9%32%4%26%19%30%10%33%5%83%133%43$5@%48$4@$3@@@%45$2@%49$1@$0@@@@%64%121$5@$2@@%65%114$4@$1@@%101%121$5@$2@@$3@$0@@@@|@|@|@|@|@|@"])
  fun op option_coder_def x = x
    val op option_coder_def =
    DT(((("Coder",17),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%28%8%32%3%81%128%42$2@%47$1@$0@@@@%60%119$2@@%61%112$1@@%99%119$2@@$0@@@@|@|@|@"])
  fun op list_coder_def x = x
    val op list_coder_def =
    DT(((("Coder",19),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%28%8%32%3%78%124%42$2@%47$1@$0@@@@%53%88$2@@%55%110$1@@%97%88$2@@$0@@@@|@|@|@"])
  fun op blist_coder_def x = x
    val op blist_coder_def =
    DT(((("Coder",21),[("pair",[16])]),["DISK_THM"]),
       [read"%37%13%24%14%27%7%32%3%77%90$3@%41$2@%46$1@$0@@@@%52%118$3@$2@@%54%107$3@$1@@%94%118$3@$2@@$3@$0@@@@|@|@|@|@"])
  fun op num_coder_def x = x
    val op num_coder_def =
    DT(((("Coder",23),[]),[]),
       [read"%34%16%79%125$0@@%56$0@%57%111@%98$0@@@@|@"])
  fun op bnum_coder_def x = x
    val op bnum_coder_def =
    DT(((("Coder",25),[]),[]),
       [read"%37%13%34%16%79%91$1@$0@@%56$0@%57%108$1@@%95$1@$0@@@@|@|@"])
  fun op tree_coder_def x = x
    val op tree_coder_def =
    DT(((("Coder",27),[("pair",[16])]),["DISK_THM"]),
       [read"%24%14%28%8%32%3%84%135%42$2@%47$1@$0@@@@%66%122$2@@%67%115$1@@%102%122$2@@$0@@@@|@|@|@"])
  fun op decode_encode x = x
    val op decode_encode =
    DT(((("Coder",5),
        [("Coder",[0]),("Decode",[3,4]),("Encode",[7]),
         ("bool",
         [13,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,74,78,81,84,93,
          94,96,105,124,146]),("combin",[19]),("option",[6,7]),
         ("pair",[5,49]),("rich_list",[52,71]),
         ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
       [read"%24%14%25%6%23%22%85%68%147$2@$1@@$2$0@@@%69%93$2@%106$2@$1@@$1$0@@@$0@@|@|@|@"])
  fun op wf_coder x = x
    val op wf_coder =
    DT(((("Coder",6),
        [("Coder",[1,2,3,4,5]),("bool",[25,36,51,53,56,58,63,105,124]),
         ("pair",[5])]),["DISK_THM"]),
       [read"%38%0%85%137$0@@%23%22%85%105$1@$0@@%69%104$1@%117$1@$0@@@$0@@|@@|@"])
  fun op wf_coder_closed x = x
    val op wf_coder_closed =
    DT(((("Coder",7),
        [("Coder",[0,1,2,4]),("Decode",[4]),("Encode",[6]),
         ("bool",[15,25,26,36,47,48,53,54,56,58,63,72,105,124]),
         ("combin",[19]),("option",[6,7]),("pair",[5,49]),
         ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
       [read"%38%0%85%137$0@@%36%12%105$1@%104$1@$0@@|@@|@"])
  fun op wf_coder_op x = x
    val op wf_coder_op =
    DT(((("Coder",8),
        [("Coder",[1]),("Decode",[3,5]),("Encode",[1,3,6,8,9]),
         ("bool",
         [2,13,15,25,26,27,30,36,43,47,48,51,52,53,54,56,58,59,63,71,72,75,
          78,80,81,84,92,93,94,96,99,105,124,146]),("combin",[19]),
         ("list",[104]),("option",[6,10,11]),("pair",[4,5,8,9]),
         ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23])]),["DISK_THM"]),
       [read"%24%14%25%6%25%11%85%68%86%22$3$0@|@@%68%147$2@$1@@%23%22%85$3$0@@%75$2$0@@$1$0@@@|@@@@%137%40$2@%44$1@%106$2@$0@@@@@|@|@|@"])
  fun op wf_coder_unit x = x
    val op wf_coder_unit =
    DT(((("Coder",10),
        [("Coder",[1,9]),("Decode",[13]),("Encode",[12]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%35%17%85%151$0@@%142%136$0@@@|@"])
  fun op wf_coder_bool x = x
    val op wf_coder_bool =
    DT(((("Coder",12),
        [("Coder",[1,11]),("Decode",[17]),("Encode",[14]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%31%15%85%149$0@@%139%92$0@@@|@"])
  fun op wf_coder_prod x = x
    val op wf_coder_prod =
    DT(((("Coder",14),
        [("Coder",[1,8,13]),("Decode",[11,21]),("Encode",[6,15,16,18]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("pair",[5,8,9]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%38%1%39%2%85%68%137$1@@%138$0@@@%144%130$1@$0@@@|@|@"])
  fun op wf_coder_sum x = x
    val op wf_coder_sum =
    DT(((("Coder",16),
        [("Coder",[1,8,15]),("Decode",[11,26]),("Encode",[6,19,20,21]),
         ("bool",
         [13,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("list",[9]),("pair",[5]),("sat",[1,3,5,6,7,11,13,14,15]),
         ("sum",[14,24])]),["DISK_THM"]),
       [read"%38%1%39%2%85%68%137$1@@%138$0@@@%145%132$1@$0@@@|@|@"])
  fun op wf_coder_option x = x
    val op wf_coder_option =
    DT(((("Coder",18),
        [("Coder",[1,8,17]),("Decode",[11,31]),("Encode",[6,22,23,24]),
         ("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("list",[9]),("option",[5,7]),("pair",[5]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%38%0%85%137$0@@%143%127$0@@@|@"])
  fun op wf_coder_list x = x
    val op wf_coder_list =
    DT(((("Coder",20),
        [("Coder",[1,8,19]),("Decode",[11,36]),("Encode",[6,25,26]),
         ("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("list",[9,30,43]),("pair",[5]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%38%0%85%137$0@@%140%123$0@@@|@"])
  fun op wf_coder_blist x = x
    val op wf_coder_blist =
    DT(((("Coder",22),
        [("Coder",[1,8,21]),("Decode",[11,41]),("Encode",[6,28,30,31,32]),
         ("bool",
         [13,14,25,26,27,30,47,48,51,52,53,54,56,58,63,72,93,94,96,105,124,
          146]),("list",[17,18,22,30,46]),("num",[7,9]),("pair",[5]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%37%13%38%0%85%137$0@@%140%89$1@$0@@@|@|@"])
  fun op wf_coder_num x = x
    val op wf_coder_num =
    DT(((("Coder",24),
        [("Coder",[1,23]),("Decode",[46]),("Encode",[36]),
         ("bool",[25,51,53,56,58,63,105,124])]),["DISK_THM"]),
       [read"%34%16%85%150$0@@%141%125$0@@@|@"])
  fun op wf_coder_bnum x = x
    val op wf_coder_bnum =
    DT(((("Coder",26),
        [("Coder",[1,25]),("Decode",[51]),("Encode",[40,46]),
         ("bool",[25,51,56,58,63,105,124])]),["DISK_THM"]),
       [read"%37%13%34%16%85%152$1@$0@@%141%91$1@$0@@@|@|@"])
  fun op wf_coder_tree x = x
    val op wf_coder_tree =
    DT(((("Coder",28),
        [("Coder",[1,8,27]),("Decode",[11,59]),
         ("Encode",[6,25,64,67,70,71]),
         ("bool",
         [13,14,25,26,27,30,36,47,48,51,52,53,54,56,58,63,72,93,94,96,105,
          124,146]),("list",[9,30,43,104,120]),("pair",[5]),
         ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
       [read"%38%0%85%137$0@@%146%134$0@@@|@"])
  end
  val _ = DB.bindl "Coder"
  [("decode_def",decode_def,DB.Def), ("wf_coder_def",wf_coder_def,DB.Def),
   ("domain_def",domain_def,DB.Def), ("encoder_def",encoder_def,DB.Def),
   ("decoder_def",decoder_def,DB.Def),
   ("unit_coder_def",unit_coder_def,DB.Def),
   ("bool_coder_def",bool_coder_def,DB.Def),
   ("prod_coder_def",prod_coder_def,DB.Def),
   ("sum_coder_def",sum_coder_def,DB.Def),
   ("option_coder_def",option_coder_def,DB.Def),
   ("list_coder_def",list_coder_def,DB.Def),
   ("blist_coder_def",blist_coder_def,DB.Def),
   ("num_coder_def",num_coder_def,DB.Def),
   ("bnum_coder_def",bnum_coder_def,DB.Def),
   ("tree_coder_def",tree_coder_def,DB.Def),
   ("decode_encode",decode_encode,DB.Thm), ("wf_coder",wf_coder,DB.Thm),
   ("wf_coder_closed",wf_coder_closed,DB.Thm),
   ("wf_coder_op",wf_coder_op,DB.Thm),
   ("wf_coder_unit",wf_coder_unit,DB.Thm),
   ("wf_coder_bool",wf_coder_bool,DB.Thm),
   ("wf_coder_prod",wf_coder_prod,DB.Thm),
   ("wf_coder_sum",wf_coder_sum,DB.Thm),
   ("wf_coder_option",wf_coder_option,DB.Thm),
   ("wf_coder_list",wf_coder_list,DB.Thm),
   ("wf_coder_blist",wf_coder_blist,DB.Thm),
   ("wf_coder_num",wf_coder_num,DB.Thm),
   ("wf_coder_bnum",wf_coder_bnum,DB.Thm),
   ("wf_coder_tree",wf_coder_tree,DB.Thm)]

  local open Portable GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val _ = mk_local_grms [("DecodeTheory.Decode_grammars",
                          DecodeTheory.Decode_grammars)]
  val _ = List.app (update_grms reveal) []
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode", (Term.prim_mk_const { Name = "decode", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decode", (Term.prim_mk_const { Name = "decode", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_coder", (Term.prim_mk_const { Name = "wf_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("wf_coder", (Term.prim_mk_const { Name = "wf_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("domain", (Term.prim_mk_const { Name = "domain", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("domain", (Term.prim_mk_const { Name = "domain", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encoder", (Term.prim_mk_const { Name = "encoder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("encoder", (Term.prim_mk_const { Name = "encoder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decoder", (Term.prim_mk_const { Name = "decoder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("decoder", (Term.prim_mk_const { Name = "decoder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("unit_coder", (Term.prim_mk_const { Name = "unit_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("unit_coder", (Term.prim_mk_const { Name = "unit_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_coder", (Term.prim_mk_const { Name = "bool_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bool_coder", (Term.prim_mk_const { Name = "bool_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prod_coder", (Term.prim_mk_const { Name = "prod_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("prod_coder", (Term.prim_mk_const { Name = "prod_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum_coder", (Term.prim_mk_const { Name = "sum_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("sum_coder", (Term.prim_mk_const { Name = "sum_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_coder", (Term.prim_mk_const { Name = "option_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("option_coder", (Term.prim_mk_const { Name = "option_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_coder", (Term.prim_mk_const { Name = "list_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("list_coder", (Term.prim_mk_const { Name = "list_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("blist_coder", (Term.prim_mk_const { Name = "blist_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("blist_coder", (Term.prim_mk_const { Name = "blist_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_coder", (Term.prim_mk_const { Name = "num_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("num_coder", (Term.prim_mk_const { Name = "num_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnum_coder", (Term.prim_mk_const { Name = "bnum_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("bnum_coder", (Term.prim_mk_const { Name = "bnum_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tree_coder", (Term.prim_mk_const { Name = "tree_coder", Thy = "Coder"}))
  val _ = update_grms
       (UTOFF temp_overload_on)
       ("tree_coder", (Term.prim_mk_const { Name = "tree_coder", Thy = "Coder"}))
  val Coder_grammars = Parse.current_lgrms()
  end
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "Coder",
    thydataty = "compute",
    data =
        "Coder.decode_def Coder.decoder_def Coder.tree_coder_def Coder.bnum_coder_def Coder.num_coder_def Coder.blist_coder_def Coder.list_coder_def Coder.option_coder_def Coder.sum_coder_def Coder.prod_coder_def Coder.bool_coder_def Coder.unit_coder_def Coder.domain_def Coder.encoder_def Coder.wf_coder_def"
  }

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "Coder"
end
