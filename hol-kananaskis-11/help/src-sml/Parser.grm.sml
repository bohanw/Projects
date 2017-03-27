functor SMLLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : SML_TOKENS
   end
 =
struct
structure ParserData=
struct
structure Header =
struct

end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in
val table=let val actionRows =
"\
\\001\000\006\000\121\000\023\000\031\000\043\000\030\000\063\000\029\000\000\000\
\\001\000\009\000\106\000\000\000\
\\001\000\009\000\142\000\000\000\
\\001\000\009\000\166\000\000\000\
\\001\000\016\000\081\000\000\000\
\\001\000\023\000\031\000\043\000\030\000\063\000\029\000\000\000\
\\001\000\023\000\046\000\038\000\045\000\043\000\030\000\063\000\029\000\000\000\
\\001\000\027\000\037\000\043\000\030\000\063\000\029\000\000\000\
\\001\000\027\000\111\000\000\000\
\\001\000\032\000\105\000\000\000\
\\001\000\038\000\079\000\000\000\
\\001\000\038\000\089\000\000\000\
\\001\000\038\000\108\000\000\000\
\\001\000\038\000\116\000\000\000\
\\001\000\038\000\127\000\000\000\
\\001\000\038\000\177\000\000\000\
\\001\000\038\000\190\000\000\000\
\\001\000\039\000\159\000\051\000\158\000\000\000\
\\001\000\043\000\030\000\063\000\029\000\000\000\
\\001\000\043\000\030\000\063\000\029\000\067\000\136\000\069\000\135\000\000\000\
\\001\000\045\000\103\000\050\000\102\000\063\000\064\000\064\000\101\000\
\\078\000\024\000\000\000\
\\001\000\046\000\160\000\000\000\
\\001\000\050\000\025\000\063\000\064\000\078\000\024\000\000\000\
\\001\000\051\000\092\000\000\000\
\\001\000\051\000\157\000\000\000\
\\001\000\052\000\068\000\000\000\
\\001\000\052\000\075\000\000\000\
\\001\000\052\000\078\000\000\000\
\\001\000\052\000\161\000\000\000\
\\001\000\053\000\181\000\062\000\180\000\000\000\
\\001\000\062\000\000\000\000\000\
\\001\000\062\000\018\000\000\000\
\\001\000\063\000\064\000\000\000\
\\001\000\063\000\064\000\064\000\101\000\000\000\
\\001\000\066\000\156\000\067\000\155\000\068\000\154\000\069\000\153\000\000\000\
\\001\000\074\000\172\000\000\000\
\\001\000\078\000\024\000\000\000\
\\198\000\000\000\
\\199\000\000\000\
\\200\000\000\000\
\\201\000\000\000\
\\202\000\000\000\
\\203\000\000\000\
\\204\000\000\000\
\\205\000\000\000\
\\206\000\000\000\
\\207\000\000\000\
\\208\000\000\000\
\\209\000\000\000\
\\210\000\000\000\
\\211\000\000\000\
\\212\000\000\000\
\\213\000\000\000\
\\214\000\000\000\
\\215\000\000\000\
\\216\000\000\000\
\\217\000\000\000\
\\218\000\000\000\
\\219\000\000\000\
\\220\000\000\000\
\\221\000\000\000\
\\222\000\000\000\
\\223\000\000\000\
\\224\000\002\000\185\000\000\000\
\\225\000\000\000\
\\226\000\000\000\
\\227\000\002\000\165\000\000\000\
\\228\000\000\000\
\\229\000\000\000\
\\230\000\000\000\
\\231\000\000\000\
\\232\000\002\000\147\000\000\000\
\\233\000\000\000\
\\234\000\000\000\
\\235\000\042\000\171\000\000\000\
\\236\000\000\000\
\\237\000\036\000\087\000\000\000\
\\238\000\000\000\
\\239\000\000\000\
\\240\000\002\000\114\000\000\000\
\\241\000\000\000\
\\242\000\022\000\084\000\000\000\
\\243\000\000\000\
\\244\000\040\000\124\000\000\000\
\\245\000\043\000\126\000\063\000\064\000\064\000\101\000\000\000\
\\246\000\000\000\
\\247\000\000\000\
\\248\000\000\000\
\\249\000\000\000\
\\250\000\000\000\
\\251\000\039\000\159\000\000\000\
\\252\000\000\000\
\\253\000\000\000\
\\254\000\000\000\
\\255\000\000\000\
\\000\001\000\000\
\\001\001\043\000\030\000\063\000\029\000\067\000\136\000\069\000\135\000\000\000\
\\002\001\000\000\
\\003\001\000\000\
\\004\001\039\000\187\000\000\000\
\\005\001\000\000\
\\006\001\050\000\025\000\078\000\024\000\000\000\
\\007\001\000\000\
\\008\001\000\000\
\\009\001\000\000\
\\010\001\039\000\093\000\000\000\
\\011\001\000\000\
\\012\001\000\000\
\\013\001\000\000\
\\014\001\000\000\
\\015\001\006\000\017\000\010\000\016\000\011\000\015\000\020\000\014\000\
\\028\000\013\000\030\000\012\000\032\000\011\000\033\000\010\000\
\\053\000\009\000\056\000\008\000\057\000\007\000\058\000\006\000\
\\061\000\005\000\000\000\
\\015\001\006\000\017\000\010\000\016\000\011\000\015\000\020\000\014\000\
\\030\000\012\000\032\000\011\000\033\000\010\000\053\000\009\000\
\\056\000\008\000\057\000\007\000\058\000\006\000\061\000\005\000\000\000\
\\016\001\000\000\
\\017\001\000\000\
\\018\001\006\000\017\000\010\000\016\000\011\000\015\000\020\000\014\000\
\\030\000\012\000\032\000\011\000\033\000\010\000\053\000\056\000\
\\056\000\008\000\057\000\007\000\058\000\006\000\061\000\005\000\000\000\
\\019\001\000\000\
\\020\001\000\000\
\\021\001\000\000\
\\022\001\000\000\
\\023\001\000\000\
\\024\001\000\000\
\\025\001\000\000\
\\026\001\000\000\
\\027\001\000\000\
\\028\001\000\000\
\\029\001\000\000\
\\030\001\000\000\
\\031\001\000\000\
\\032\001\000\000\
\\033\001\000\000\
\\034\001\000\000\
\\035\001\000\000\
\\036\001\002\000\139\000\000\000\
\\037\001\000\000\
\\038\001\000\000\
\\039\001\002\000\091\000\000\000\
\\039\001\002\000\091\000\038\000\108\000\000\000\
\\040\001\000\000\
\\041\001\037\000\072\000\000\000\
\\041\001\037\000\072\000\043\000\030\000\063\000\029\000\000\000\
\\042\001\000\000\
\\043\001\000\000\
\\044\001\002\000\193\000\000\000\
\\045\001\000\000\
\\046\001\000\000\
\\047\001\043\000\030\000\063\000\029\000\000\000\
\\048\001\000\000\
\\049\001\043\000\030\000\063\000\029\000\000\000\
\\050\001\000\000\
\"
val actionRowNumbers =
"\110\000\031\000\111\000\101\000\
\\005\000\007\000\018\000\111\000\
\\006\000\101\000\018\000\018\000\
\\114\000\005\000\101\000\022\000\
\\107\000\108\000\100\000\032\000\
\\120\000\102\000\050\000\036\000\
\\116\000\025\000\040\000\037\000\
\\038\000\018\000\128\000\127\000\
\\139\000\144\000\039\000\111\000\
\\126\000\145\000\109\000\115\000\
\\026\000\042\000\044\000\045\000\
\\018\000\032\000\118\000\117\000\
\\129\000\027\000\010\000\046\000\
\\114\000\004\000\114\000\124\000\
\\081\000\119\000\032\000\076\000\
\\076\000\011\000\047\000\135\000\
\\023\000\105\000\020\000\041\000\
\\148\000\147\000\009\000\001\000\
\\146\000\020\000\043\000\136\000\
\\007\000\008\000\112\000\114\000\
\\113\000\079\000\020\000\013\000\
\\122\000\101\000\121\000\000\000\
\\133\000\101\000\103\000\036\000\
\\083\000\088\000\084\000\014\000\
\\092\000\091\000\048\000\049\000\
\\020\000\096\000\140\000\101\000\
\\141\000\132\000\020\000\137\000\
\\138\000\111\000\002\000\077\000\
\\005\000\080\000\005\000\032\000\
\\075\000\071\000\081\000\033\000\
\\134\000\104\000\020\000\087\000\
\\020\000\034\000\024\000\017\000\
\\095\000\021\000\028\000\054\000\
\\053\000\051\000\052\000\032\000\
\\130\000\006\000\066\000\003\000\
\\125\000\078\000\071\000\012\000\
\\067\000\101\000\074\000\123\000\
\\082\000\085\000\035\000\056\000\
\\055\000\058\000\057\000\033\000\
\\094\000\020\000\093\000\020\000\
\\015\000\131\000\064\000\101\000\
\\029\000\068\000\032\000\070\000\
\\072\000\005\000\063\000\086\000\
\\089\000\090\000\099\000\020\000\
\\065\000\106\000\060\000\029\000\
\\016\000\073\000\061\000\005\000\
\\097\000\019\000\142\000\059\000\
\\005\000\062\000\098\000\009\000\
\\071\000\143\000\069\000\030\000"
val gotoT =
"\
\\001\000\195\000\047\000\002\000\048\000\001\000\000\000\
\\000\000\
\\047\000\002\000\048\000\017\000\000\000\
\\013\000\021\000\023\000\020\000\043\000\019\000\044\000\018\000\000\000\
\\002\000\026\000\009\000\025\000\018\000\024\000\000\000\
\\002\000\034\000\004\000\033\000\006\000\032\000\008\000\031\000\
\\052\000\030\000\000\000\
\\002\000\034\000\004\000\033\000\006\000\037\000\007\000\036\000\000\000\
\\047\000\002\000\048\000\038\000\000\000\
\\002\000\042\000\003\000\041\000\010\000\040\000\049\000\039\000\000\000\
\\013\000\021\000\020\000\047\000\023\000\046\000\043\000\045\000\
\\044\000\018\000\000\000\
\\002\000\034\000\004\000\033\000\006\000\049\000\051\000\048\000\000\000\
\\002\000\034\000\004\000\051\000\005\000\050\000\000\000\
\\046\000\053\000\047\000\052\000\000\000\
\\002\000\026\000\009\000\056\000\032\000\055\000\000\000\
\\013\000\021\000\023\000\057\000\043\000\019\000\044\000\018\000\000\000\
\\011\000\061\000\013\000\021\000\026\000\060\000\027\000\059\000\
\\044\000\058\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\063\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\013\000\065\000\045\000\064\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\067\000\000\000\
\\000\000\
\\000\000\
\\002\000\034\000\004\000\033\000\006\000\069\000\008\000\068\000\000\000\
\\000\000\
\\000\000\
\\047\000\002\000\048\000\071\000\000\000\
\\000\000\
\\002\000\034\000\004\000\033\000\006\000\037\000\007\000\072\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\074\000\000\000\
\\011\000\075\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\046\000\078\000\047\000\052\000\000\000\
\\000\000\
\\046\000\080\000\047\000\052\000\000\000\
\\000\000\
\\034\000\081\000\000\000\
\\000\000\
\\011\000\083\000\000\000\
\\031\000\084\000\000\000\
\\031\000\086\000\000\000\
\\000\000\
\\000\000\
\\024\000\088\000\000\000\
\\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\095\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\000\000\
\\002\000\034\000\004\000\033\000\006\000\069\000\008\000\068\000\000\000\
\\021\000\102\000\000\000\
\\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\105\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\024\000\088\000\000\000\
\\002\000\034\000\004\000\033\000\006\000\108\000\052\000\107\000\000\000\
\\000\000\
\\000\000\
\\046\000\110\000\047\000\052\000\000\000\
\\000\000\
\\033\000\111\000\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\113\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\000\000\
\\013\000\021\000\020\000\116\000\043\000\115\000\044\000\018\000\000\000\
\\000\000\
\\002\000\026\000\009\000\118\000\029\000\117\000\000\000\
\\000\000\
\\013\000\021\000\023\000\120\000\043\000\019\000\044\000\018\000\000\000\
\\000\000\
\\013\000\065\000\045\000\121\000\000\000\
\\000\000\
\\000\000\
\\011\000\098\000\012\000\123\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\127\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\039\000\126\000\000\000\
\\002\000\132\000\014\000\131\000\017\000\130\000\040\000\129\000\
\\041\000\128\000\000\000\
\\000\000\
\\013\000\021\000\043\000\135\000\044\000\018\000\000\000\
\\000\000\
\\050\000\136\000\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\138\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\000\000\
\\047\000\002\000\048\000\139\000\000\000\
\\000\000\
\\000\000\
\\002\000\026\000\009\000\056\000\032\000\141\000\000\000\
\\000\000\
\\002\000\026\000\009\000\118\000\029\000\142\000\000\000\
\\011\000\143\000\000\000\
\\000\000\
\\028\000\144\000\000\000\
\\034\000\146\000\000\000\
\\011\000\098\000\012\000\147\000\000\000\
\\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\148\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\036\000\094\000\
\\037\000\093\000\038\000\149\000\000\000\
\\015\000\150\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\160\000\000\000\
\\000\000\
\\002\000\042\000\003\000\041\000\010\000\040\000\049\000\161\000\000\000\
\\022\000\162\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\028\000\165\000\000\000\
\\000\000\
\\000\000\
\\013\000\021\000\025\000\167\000\043\000\166\000\044\000\018\000\000\000\
\\030\000\168\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\098\000\012\000\171\000\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\173\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\039\000\172\000\000\000\
\\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\174\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\013\000\021\000\020\000\176\000\043\000\115\000\044\000\018\000\000\000\
\\016\000\177\000\000\000\
\\000\000\
\\011\000\180\000\000\000\
\\000\000\
\\000\000\
\\002\000\026\000\009\000\118\000\029\000\181\000\000\000\
\\019\000\182\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\042\000\184\000\000\000\
\\011\000\098\000\012\000\097\000\013\000\096\000\035\000\186\000\
\\036\000\094\000\037\000\093\000\038\000\092\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\016\000\187\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\026\000\009\000\025\000\018\000\189\000\000\000\
\\000\000\
\\002\000\132\000\014\000\131\000\017\000\130\000\041\000\190\000\000\000\
\\000\000\
\\000\000\
\\002\000\026\000\009\000\118\000\029\000\192\000\000\000\
\\000\000\
\\000\000\
\\021\000\193\000\000\000\
\\028\000\194\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\"
val numstates = 196
val numrules = 109
val s = ref "" and index = ref 0
val string_to_int = fn () =>
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos =  ( int * int )
type arg = unit
structure MlyValue =
struct
datatype svalue = VOID | ntVOID of unit | TYVAR of  (string)
 | QUOTEM of  (string) | QUOTER of  (string) | STRING of  (string)
 | REAL of  (real) | CHAR of  (char) | WORD of  (word)
 | NEGINT of  (int) | NZPOSINT2 of  (int) | ZPOSINT2 of  (int)
 | NZDIGIT of  (int) | ZDIGIT of  (int)
 | QUAL_STAR of  (Asynt.QualifiedIdent)
 | QUAL_ID of  (Asynt.QualifiedIdent) | ID of  (string)
 | SigExp of  (Asynt.SigExp) | ModDesc of  (Asynt.ModDesc)
 | AndValDesc_opt of  (Asynt.ValDesc list)
 | ValDesc of  (Asynt.ValDesc list) | KWSpec_seq of  (Asynt.Spec list)
 | KWSpec of  (Asynt.Spec) | Spec of  (Asynt.Spec)
 | TyVarComma_seq1 of  (Asynt.TyVar list)
 | TyVarSeq1 of  (Asynt.TyVar list) | TyVarSeq of  (Asynt.TyVar list)
 | CommaTyRow_opt of  (Asynt.Ty Asynt.Row)
 | TyRow of  (Asynt.Ty Asynt.Row) | TyRow_opt of  (Asynt.Ty Asynt.Row)
 | TyComma_seq2 of  (Asynt.Ty list) | TupleTy of  (Asynt.Ty list)
 | AtomicTy of  (Asynt.Ty) | Ty_sans_STAR of  (Asynt.Ty)
 | Ty of  (Asynt.Ty) | OfTy_opt of  (Asynt.Ty option)
 | AndExDesc_opt of  (Asynt.ExDesc list)
 | ExDesc of  (Asynt.ExDesc list)
 | WithType_opt of  (Asynt.TypBind list option)
 | BarConBind_opt of  (Asynt.ConBind list)
 | ConBind of  (Asynt.ConBind list)
 | AndDatBind_opt of  (Asynt.DatBind list)
 | DatBind_n of  (Asynt.DatBind list)
 | DatBind_0 of  (Asynt.DatBind list)
 | DatBind of  (Asynt.DatBind list)
 | AndTypDesc_opt of  (Asynt.TypDesc list)
 | TypDesc of  (Asynt.TypDesc list)
 | AndTypBind_opt of  (Asynt.TypBind list)
 | SigModTypBind of  (Asynt.TypBind list)
 | TypBind of  (Asynt.TypBind list)
 | AndPrimValBind_opt of  (Asynt.PrimValBind list)
 | PrimValBind of  (Asynt.PrimValBind list) | Label of  (Asynt.Lab)
 | SemiEof of  (unit) | Arity of  (int) | NumLabel of  (int)
 | TyVar of  (Asynt.TyVar) | LongTypeIdent of  (Asynt.IdInfo)
 | TypeIdent of  (Asynt.IdInfo) | OpEqIdent of  (Asynt.IdInfo)
 | OpIdent of  (Asynt.IdInfo)
 | ModId_seq2 of  ( ( Asynt.Location * string )  list)
 | ModId_seq1 of  ( ( Asynt.Location * string )  list)
 | ModId of  (Asynt.Location*string)
 | LocUnitName of  (Asynt.Location*string)
 | IdentWithLoc of  (Asynt.Location*string) | EqIdent of  (string)
 | Ident of  (string) | SigFile of  (Asynt.Sig)
end
type svalue = MlyValue.svalue
type result = Asynt.Sig
end
structure EC=
struct
open LrTable
val is_keyword =
fn (T 1) => true | (T 56) => true | (T 32) => true | (T 10) => true |
(T 34) => true | (T 36) => true | _ => false
val preferred_change =
nil
val noShift =
fn _ => false
val showTerminal =
fn (T 0) => "ABSTYPE"
  | (T 1) => "AND"
  | (T 2) => "ANDALSO"
  | (T 3) => "AS"
  | (T 4) => "CASE"
  | (T 5) => "DATATYPE"
  | (T 6) => "DO"
  | (T 7) => "ELSE"
  | (T 8) => "END"
  | (T 9) => "EQTYPE"
  | (T 10) => "EXCEPTION"
  | (T 11) => "FN"
  | (T 12) => "FUN"
  | (T 13) => "HANDLE"
  | (T 14) => "IF"
  | (T 15) => "IN"
  | (T 16) => "INFIX"
  | (T 17) => "INFIXR"
  | (T 18) => "LET"
  | (T 19) => "LOCAL"
  | (T 20) => "NONFIX"
  | (T 21) => "OF"
  | (T 22) => "OP"
  | (T 23) => "ORELSE"
  | (T 24) => "RAISE"
  | (T 25) => "REC"
  | (T 26) => "SIG"
  | (T 27) => "SIGNATURE"
  | (T 28) => "STRUCT"
  | (T 29) => "STRUCTURE"
  | (T 30) => "THEN"
  | (T 31) => "TYPE"
  | (T 32) => "VAL"
  | (T 33) => "WHILE"
  | (T 34) => "WITH"
  | (T 35) => "WITHTYPE"
  | (T 36) => "WHERE"
  | (T 37) => "EQUALS"
  | (T 38) => "COMMA"
  | (T 39) => "ARROW"
  | (T 40) => "DARROW"
  | (T 41) => "BAR"
  | (T 42) => "STAR"
  | (T 43) => "HASH"
  | (T 44) => "LBRACE"
  | (T 45) => "RBRACE"
  | (T 46) => "HASHLBRACKET"
  | (T 47) => "LBRACKET"
  | (T 48) => "RBRACKET"
  | (T 49) => "LPAREN"
  | (T 50) => "RPAREN"
  | (T 51) => "COLON"
  | (T 52) => "SEMICOLON"
  | (T 53) => "UNDERBAR"
  | (T 54) => "DOTDOTDOT"
  | (T 55) => "OPEN"
  | (T 56) => "INCLUDE"
  | (T 57) => "PRIM_VAL"
  | (T 58) => "PRIM_TYPE"
  | (T 59) => "PRIM_EQTYPE"
  | (T 60) => "PRIM_REFTYPE"
  | (T 61) => "EOF"
  | (T 62) => "ID"
  | (T 63) => "QUAL_ID"
  | (T 64) => "QUAL_STAR"
  | (T 65) => "ZDIGIT"
  | (T 66) => "NZDIGIT"
  | (T 67) => "ZPOSINT2"
  | (T 68) => "NZPOSINT2"
  | (T 69) => "NEGINT"
  | (T 70) => "WORD"
  | (T 71) => "CHAR"
  | (T 72) => "REAL"
  | (T 73) => "STRING"
  | (T 74) => "QUOTEL"
  | (T 75) => "QUOTER"
  | (T 76) => "QUOTEM"
  | (T 77) => "TYVAR"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn _ => MlyValue.VOID
end
val terms = (T 0) :: (T 1) :: (T 2) :: (T 3) :: (T 4) :: (T 5) :: (T 6
) :: (T 7) :: (T 8) :: (T 9) :: (T 10) :: (T 11) :: (T 12) :: (T 13)
 :: (T 14) :: (T 15) :: (T 16) :: (T 17) :: (T 18) :: (T 19) :: (T 20
) :: (T 21) :: (T 22) :: (T 23) :: (T 24) :: (T 25) :: (T 26) :: (T 27
) :: (T 28) :: (T 29) :: (T 30) :: (T 31) :: (T 32) :: (T 33) :: (T 34
) :: (T 35) :: (T 36) :: (T 37) :: (T 38) :: (T 39) :: (T 40) :: (T 41
) :: (T 42) :: (T 43) :: (T 44) :: (T 45) :: (T 46) :: (T 47) :: (T 48
) :: (T 49) :: (T 50) :: (T 51) :: (T 52) :: (T 53) :: (T 54) :: (T 55
) :: (T 56) :: (T 57) :: (T 58) :: (T 59) :: (T 60) :: (T 61) :: (T 74
) :: nil
end
structure Actions =
struct
type int = Int.int
exception mlyAction of int
local open Header in
val actions =
fn (i392:int,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of (0,(_,(MlyValue.ID ID,ID1left,ID1right))::rest671) => let val result
=MlyValue.Ident(( ID ))
 in (LrTable.NT 1,(result,ID1left,ID1right),rest671) end
| (1,(_,(_,STAR1left,STAR1right))::rest671) => let val result=
MlyValue.Ident(( "*" ))
 in (LrTable.NT 1,(result,STAR1left,STAR1right),rest671) end
| (2,(_,(MlyValue.Ident Ident,Identleft as Ident1left,Identright as
Ident1right))::rest671) => let val result=MlyValue.IdentWithLoc((
 ((Identleft, Identright), Ident) ))
 in (LrTable.NT 3,(result,Ident1left,Ident1right),rest671) end
| (3,(_,(MlyValue.Ident Ident,Identleft as Ident1left,Identright as
Ident1right))::rest671) => let val result=MlyValue.OpIdent((
 Asynt.mkIdInfo ((Identleft, Identright), { qual="", id=Ident }) false
))
 in (LrTable.NT 8,(result,Ident1left,Ident1right),rest671) end
| (4,(_,(MlyValue.Ident Ident,_,Identright as Ident1right))::(_,(_,
OPleft as OP1left,_))::rest671) => let val result=MlyValue.OpIdent((
 Asynt.mkIdInfo ((OPleft, Identright), { qual="", id=Ident }) true ))
 in (LrTable.NT 8,(result,OP1left,Ident1right),rest671) end
| (5,(_,(MlyValue.EqIdent EqIdent,EqIdentleft as EqIdent1left,
EqIdentright as EqIdent1right))::rest671) => let val result=
MlyValue.OpEqIdent((
 Asynt.mkIdInfo ((EqIdentleft, EqIdentright), { qual="", id=EqIdent }) false
))
 in (LrTable.NT 9,(result,EqIdent1left,EqIdent1right),rest671) end
| (6,(_,(MlyValue.Ident Ident,_,Identright as Ident1right))::(_,(_,
OPleft as OP1left,_))::rest671) => let val result=MlyValue.OpEqIdent((
 Asynt.mkIdInfo ((OPleft, Identright), { qual="", id=Ident }) true ))
 in (LrTable.NT 9,(result,OP1left,Ident1right),rest671) end
| (7,(_,(MlyValue.Ident Ident,Ident1left,Ident1right))::rest671) => let
val result=MlyValue.EqIdent(( Ident ))
 in (LrTable.NT 2,(result,Ident1left,Ident1right),rest671) end
| (8,(_,(_,EQUALS1left,EQUALS1right))::rest671) => let val result=
MlyValue.EqIdent(( "=" ))
 in (LrTable.NT 2,(result,EQUALS1left,EQUALS1right),rest671) end
| (9,(_,(MlyValue.IdentWithLoc IdentWithLoc,IdentWithLoc1left,
IdentWithLoc1right))::rest671) => let val result=MlyValue.LocUnitName(
( IdentWithLoc ))
 in (LrTable.NT 4,(result,IdentWithLoc1left,IdentWithLoc1right),
rest671) end
| (10,(_,(MlyValue.ID ID,IDleft as ID1left,IDright as ID1right))::
rest671) => let val result=MlyValue.TypeIdent((
 Asynt.mkIdInfo ((IDleft, IDright), { qual="", id=ID }) false ))
 in (LrTable.NT 10,(result,ID1left,ID1right),rest671) end
| (11,(_,(MlyValue.TypeIdent TypeIdent,TypeIdent1left,TypeIdent1right)
)::rest671) => let val result=MlyValue.LongTypeIdent(( TypeIdent ))
 in (LrTable.NT 11,(result,TypeIdent1left,TypeIdent1right),rest671)
 end
| (12,(_,(MlyValue.QUAL_ID QUAL_ID,QUAL_IDleft as QUAL_ID1left,
QUAL_IDright as QUAL_ID1right))::rest671) => let val result=
MlyValue.LongTypeIdent((
 Asynt.mkIdInfo ((QUAL_IDleft, QUAL_IDright), QUAL_ID) false ))
 in (LrTable.NT 11,(result,QUAL_ID1left,QUAL_ID1right),rest671) end
| (13,(_,(MlyValue.TYVAR TYVAR,TYVARleft as TYVAR1left,TYVARright as
TYVAR1right))::rest671) => let val result=MlyValue.TyVar((
 Asynt.mkIdInfo ((TYVARleft, TYVARright), { qual="", id=TYVAR }) false
))
 in (LrTable.NT 12,(result,TYVAR1left,TYVAR1right),rest671) end
| (14,(_,(MlyValue.NZPOSINT2 NZPOSINT2,NZPOSINT21left,NZPOSINT21right)
)::rest671) => let val result=MlyValue.NumLabel(( NZPOSINT2 ))
 in (LrTable.NT 13,(result,NZPOSINT21left,NZPOSINT21right),rest671)
 end
| (15,(_,(MlyValue.NZDIGIT NZDIGIT,NZDIGIT1left,NZDIGIT1right))::
rest671) => let val result=MlyValue.NumLabel(( NZDIGIT ))
 in (LrTable.NT 13,(result,NZDIGIT1left,NZDIGIT1right),rest671) end
| (16,(_,(MlyValue.Ident Ident,Ident1left,Ident1right))::rest671) =>
let val result=MlyValue.Label(( Asynt.STRINGlab Ident ))
 in (LrTable.NT 16,(result,Ident1left,Ident1right),rest671) end
| (17,(_,(MlyValue.NumLabel NumLabel,NumLabel1left,NumLabel1right))::
rest671) => let val result=MlyValue.Label(( Asynt.INTlab NumLabel ))
 in (LrTable.NT 16,(result,NumLabel1left,NumLabel1right),rest671) end
| (18,(_,(MlyValue.ZPOSINT2 ZPOSINT2,ZPOSINT21left,ZPOSINT21right))::
rest671) => let val result=MlyValue.Arity(( ZPOSINT2 ))
 in (LrTable.NT 14,(result,ZPOSINT21left,ZPOSINT21right),rest671) end
| (19,(_,(MlyValue.NZPOSINT2 NZPOSINT2,NZPOSINT21left,NZPOSINT21right)
)::rest671) => let val result=MlyValue.Arity(( NZPOSINT2 ))
 in (LrTable.NT 14,(result,NZPOSINT21left,NZPOSINT21right),rest671)
 end
| (20,(_,(MlyValue.ZDIGIT ZDIGIT,ZDIGIT1left,ZDIGIT1right))::rest671)
 => let val result=MlyValue.Arity(( ZDIGIT ))
 in (LrTable.NT 14,(result,ZDIGIT1left,ZDIGIT1right),rest671) end
| (21,(_,(MlyValue.NZDIGIT NZDIGIT,NZDIGIT1left,NZDIGIT1right))::
rest671) => let val result=MlyValue.Arity(( NZDIGIT ))
 in (LrTable.NT 14,(result,NZDIGIT1left,NZDIGIT1right),rest671) end
| (22,(_,(_,_,SemiEof1right))::(_,(_,SEMICOLON1left,_))::rest671) =>
let val result=MlyValue.SemiEof(( ))
 in (LrTable.NT 15,(result,SEMICOLON1left,SemiEof1right),rest671) end
| (23,(_,(_,EOF1left,EOF1right))::rest671) => let val result=
MlyValue.SemiEof(( ))
 in (LrTable.NT 15,(result,EOF1left,EOF1right),rest671) end
| (24,(_,(MlyValue.AndPrimValBind_opt AndPrimValBind_opt,_,
AndPrimValBind_opt1right))::(_,(MlyValue.STRING STRING,_,_))::(_,(
MlyValue.Arity Arity,_,_))::_::(_,(MlyValue.Ty Ty,_,_))::_::(_,(
MlyValue.OpIdent OpIdent,OpIdent1left,_))::rest671) => let val result=
MlyValue.PrimValBind((
 (OpIdent, Ty, Arity, STRING) :: AndPrimValBind_opt ))
 in (LrTable.NT 17,(result,OpIdent1left,AndPrimValBind_opt1right),
rest671) end
| (25,(_,(MlyValue.PrimValBind PrimValBind,_,PrimValBind1right))::(_,(
_,AND1left,_))::rest671) => let val result=MlyValue.AndPrimValBind_opt
(( PrimValBind ))
 in (LrTable.NT 18,(result,AND1left,PrimValBind1right),rest671) end
| (26,rest671) => let val result=MlyValue.AndPrimValBind_opt(( [] ))
 in (LrTable.NT 18,(result,defaultPos,defaultPos),rest671) end
| (27,(_,(MlyValue.AndTypBind_opt AndTypBind_opt,_,
AndTypBind_opt1right))::(_,(MlyValue.Ty Ty,_,_))::_::(_,(
MlyValue.TypeIdent TypeIdent,_,_))::(_,(MlyValue.TyVarSeq TyVarSeq,
TyVarSeq1left,_))::rest671) => let val result=MlyValue.TypBind((
 (TyVarSeq, TypeIdent, Ty) :: AndTypBind_opt ))
 in (LrTable.NT 19,(result,TyVarSeq1left,AndTypBind_opt1right),rest671
) end
| (28,(_,(MlyValue.TypBind TypBind,_,TypBind1right))::(_,(_,AND1left,_
))::rest671) => let val result=MlyValue.AndTypBind_opt(( TypBind ))
 in (LrTable.NT 21,(result,AND1left,TypBind1right),rest671) end
| (29,rest671) => let val result=MlyValue.AndTypBind_opt(( [] ))
 in (LrTable.NT 21,(result,defaultPos,defaultPos),rest671) end
| (30,(_,(MlyValue.AndDatBind_opt AndDatBind_opt,_,
AndDatBind_opt1right))::(_,(MlyValue.ConBind ConBind,_,_))::_::(_,(
MlyValue.TypeIdent TypeIdent,TypeIdent1left,_))::rest671) => let val
result=MlyValue.DatBind_0(( ([], TypeIdent, ConBind) :: AndDatBind_opt
))
 in (LrTable.NT 25,(result,TypeIdent1left,AndDatBind_opt1right),
rest671) end
| (31,(_,(MlyValue.AndDatBind_opt AndDatBind_opt,_,
AndDatBind_opt1right))::(_,(MlyValue.ConBind ConBind,_,_))::_::(_,(
MlyValue.TypeIdent TypeIdent,_,_))::(_,(MlyValue.TyVarSeq1 TyVarSeq1,
TyVarSeq11left,_))::rest671) => let val result=MlyValue.DatBind_n((
 (TyVarSeq1, TypeIdent, ConBind) :: AndDatBind_opt ))
 in (LrTable.NT 26,(result,TyVarSeq11left,AndDatBind_opt1right),
rest671) end
| (32,(_,(MlyValue.AndDatBind_opt AndDatBind_opt,_,
AndDatBind_opt1right))::(_,(MlyValue.ConBind ConBind,_,_))::_::(_,(
MlyValue.TypeIdent TypeIdent,_,_))::(_,(MlyValue.TyVarSeq TyVarSeq,
TyVarSeq1left,_))::rest671) => let val result=MlyValue.DatBind((
 (TyVarSeq, TypeIdent, ConBind) :: AndDatBind_opt ))
 in (LrTable.NT 24,(result,TyVarSeq1left,AndDatBind_opt1right),rest671
) end
| (33,(_,(MlyValue.DatBind DatBind,_,DatBind1right))::(_,(_,AND1left,_
))::rest671) => let val result=MlyValue.AndDatBind_opt(( DatBind ))
 in (LrTable.NT 27,(result,AND1left,DatBind1right),rest671) end
| (34,rest671) => let val result=MlyValue.AndDatBind_opt(( [] ))
 in (LrTable.NT 27,(result,defaultPos,defaultPos),rest671) end
| (35,(_,(MlyValue.BarConBind_opt BarConBind_opt,_,
BarConBind_opt1right))::(_,(MlyValue.OfTy_opt OfTy_opt,_,_))::(_,(
MlyValue.OpIdent OpIdent,OpIdent1left,_))::rest671) => let val result=
MlyValue.ConBind(( Asynt.ConBind(OpIdent, OfTy_opt) :: BarConBind_opt )
)
 in (LrTable.NT 28,(result,OpIdent1left,BarConBind_opt1right),rest671)
 end
| (36,(_,(MlyValue.ConBind ConBind,_,ConBind1right))::(_,(_,BAR1left,_
))::rest671) => let val result=MlyValue.BarConBind_opt(( ConBind ))
 in (LrTable.NT 29,(result,BAR1left,ConBind1right),rest671) end
| (37,rest671) => let val result=MlyValue.BarConBind_opt(( [] ))
 in (LrTable.NT 29,(result,defaultPos,defaultPos),rest671) end
| (38,(_,(MlyValue.TypBind TypBind,_,TypBind1right))::(_,(_,
WITHTYPE1left,_))::rest671) => let val result=MlyValue.WithType_opt((
 SOME TypBind ))
 in (LrTable.NT 30,(result,WITHTYPE1left,TypBind1right),rest671) end
| (39,rest671) => let val result=MlyValue.WithType_opt(( NONE ))
 in (LrTable.NT 30,(result,defaultPos,defaultPos),rest671) end
| (40,(_,(MlyValue.AndExDesc_opt AndExDesc_opt,_,AndExDesc_opt1right))
::(_,(MlyValue.OfTy_opt OfTy_opt,_,_))::(_,(MlyValue.OpIdent OpIdent,
OpIdent1left,_))::rest671) => let val result=MlyValue.ExDesc((
 (OpIdent,OfTy_opt) :: AndExDesc_opt ))
 in (LrTable.NT 31,(result,OpIdent1left,AndExDesc_opt1right),rest671)
 end
| (41,(_,(MlyValue.ExDesc ExDesc,_,ExDesc1right))::(_,(_,AND1left,_))
::rest671) => let val result=MlyValue.AndExDesc_opt(( ExDesc ))
 in (LrTable.NT 32,(result,AND1left,ExDesc1right),rest671) end
| (42,rest671) => let val result=MlyValue.AndExDesc_opt(( [] ))
 in (LrTable.NT 32,(result,defaultPos,defaultPos),rest671) end
| (43,(_,(MlyValue.Ty Ty,_,Ty1right))::(_,(_,OF1left,_))::rest671) =>
let val result=MlyValue.OfTy_opt(( SOME Ty ))
 in (LrTable.NT 33,(result,OF1left,Ty1right),rest671) end
| (44,rest671) => let val result=MlyValue.OfTy_opt(( NONE ))
 in (LrTable.NT 33,(result,defaultPos,defaultPos),rest671) end
| (45,(_,(MlyValue.Ty Ty,_,Tyright as Ty1right))::_::(_,(
MlyValue.TupleTy TupleTy,TupleTyleft as TupleTy1left,_))::rest671) =>
let val result=MlyValue.Ty((
 ((TupleTyleft, Tyright), Asynt.FNty( Asynt.tupleTy TupleTy, Ty)) ))
 in (LrTable.NT 34,(result,TupleTy1left,Ty1right),rest671) end
| (46,(_,(MlyValue.TupleTy TupleTy,TupleTy1left,TupleTy1right))::
rest671) => let val result=MlyValue.Ty(( (Asynt.tupleTy TupleTy) ))
 in (LrTable.NT 34,(result,TupleTy1left,TupleTy1right),rest671) end
| (47,(_,(MlyValue.Ty_sans_STAR Ty_sans_STAR,Ty_sans_STAR1left,
Ty_sans_STAR1right))::rest671) => let val result=MlyValue.TupleTy((
 [Ty_sans_STAR] ))
 in (LrTable.NT 37,(result,Ty_sans_STAR1left,Ty_sans_STAR1right),
rest671) end
| (48,(_,(MlyValue.TupleTy TupleTy,_,TupleTy1right))::_::(_,(
MlyValue.Ty_sans_STAR Ty_sans_STAR,Ty_sans_STAR1left,_))::rest671) =>
let val result=MlyValue.TupleTy(( Ty_sans_STAR :: TupleTy ))
 in (LrTable.NT 37,(result,Ty_sans_STAR1left,TupleTy1right),rest671)
 end
| (49,(_,(MlyValue.LongTypeIdent LongTypeIdent,_,LongTypeIdentright as
LongTypeIdent1right))::_::(_,(MlyValue.TyComma_seq2 TyComma_seq2,_,_))
::(_,(_,LPARENleft as LPAREN1left,_))::rest671) => let val result=
MlyValue.Ty_sans_STAR((
 ((LPARENleft, LongTypeIdentright), Asynt.CONty(TyComma_seq2, LongTypeIdent))
))
 in (LrTable.NT 35,(result,LPAREN1left,LongTypeIdent1right),rest671)
 end
| (50,(_,(MlyValue.LongTypeIdent LongTypeIdent,_,LongTypeIdentright as
LongTypeIdent1right))::(_,(MlyValue.Ty_sans_STAR Ty_sans_STAR,
Ty_sans_STARleft as Ty_sans_STAR1left,_))::rest671) => let val result=
MlyValue.Ty_sans_STAR((
 ((Ty_sans_STARleft, LongTypeIdentright), Asynt.CONty([Ty_sans_STAR], LongTypeIdent))
))
 in (LrTable.NT 35,(result,Ty_sans_STAR1left,LongTypeIdent1right),
rest671) end
| (51,(_,(MlyValue.AtomicTy AtomicTy,AtomicTy1left,AtomicTy1right))::
rest671) => let val result=MlyValue.Ty_sans_STAR(( AtomicTy ))
 in (LrTable.NT 35,(result,AtomicTy1left,AtomicTy1right),rest671) end
| (52,(_,(MlyValue.TyComma_seq2 TyComma_seq2,_,TyComma_seq21right))::_
::(_,(MlyValue.Ty Ty,Ty1left,_))::rest671) => let val result=
MlyValue.TyComma_seq2(( Ty :: TyComma_seq2 ))
 in (LrTable.NT 38,(result,Ty1left,TyComma_seq21right),rest671) end
| (53,(_,(MlyValue.Ty Ty2,_,Ty2right))::_::(_,(MlyValue.Ty Ty1,Ty1left
,_))::rest671) => let val result=MlyValue.TyComma_seq2(( [Ty1, Ty2] ))
 in (LrTable.NT 38,(result,Ty1left,Ty2right),rest671) end
| (54,(_,(MlyValue.LongTypeIdent LongTypeIdent,LongTypeIdentleft as
LongTypeIdent1left,LongTypeIdent1right))::rest671) => let val result=
MlyValue.AtomicTy((
 ((LongTypeIdentleft, LongTypeIdentleft), Asynt.CONty([], LongTypeIdent))
))
 in (LrTable.NT 36,(result,LongTypeIdent1left,LongTypeIdent1right),
rest671) end
| (55,(_,(MlyValue.TyVar TyVar,TyVarleft as TyVar1left,TyVarright as
TyVar1right))::rest671) => let val result=MlyValue.AtomicTy((
 ((TyVarleft, TyVarright), Asynt.TYVARty TyVar) ))
 in (LrTable.NT 36,(result,TyVar1left,TyVar1right),rest671) end
| (56,(_,(_,_,RBRACE1right))::(_,(MlyValue.TyRow_opt TyRow_opt,_,_))::
(_,(_,LBRACEleft as LBRACE1left,LBRACEright))::rest671) => let val
result=MlyValue.AtomicTy((
 ((LBRACEleft, LBRACEright), Asynt.RECty TyRow_opt) ))
 in (LrTable.NT 36,(result,LBRACE1left,RBRACE1right),rest671) end
| (57,(_,(_,_,RPAREN1right))::(_,(MlyValue.Ty Ty,_,_))::(_,(_,
LPAREN1left,_))::rest671) => let val result=MlyValue.AtomicTy(( Ty ))
 in (LrTable.NT 36,(result,LPAREN1left,RPAREN1right),rest671) end
| (58,(_,(MlyValue.TyRow TyRow,TyRow1left,TyRow1right))::rest671) =>
let val result=MlyValue.TyRow_opt(( TyRow ))
 in (LrTable.NT 39,(result,TyRow1left,TyRow1right),rest671) end
| (59,rest671) => let val result=MlyValue.TyRow_opt(( [] ))
 in (LrTable.NT 39,(result,defaultPos,defaultPos),rest671) end
| (60,(_,(MlyValue.CommaTyRow_opt CommaTyRow_opt,_,
CommaTyRow_opt1right))::(_,(MlyValue.Ty Ty,_,_))::_::(_,(
MlyValue.Label Label,Label1left,_))::rest671) => let val result=
MlyValue.TyRow(( (Label,Ty)::CommaTyRow_opt ))
 in (LrTable.NT 40,(result,Label1left,CommaTyRow_opt1right),rest671)
 end
| (61,(_,(MlyValue.TyRow TyRow,_,TyRow1right))::(_,(_,COMMA1left,_))::
rest671) => let val result=MlyValue.CommaTyRow_opt(( TyRow ))
 in (LrTable.NT 41,(result,COMMA1left,TyRow1right),rest671) end
| (62,rest671) => let val result=MlyValue.CommaTyRow_opt(( [] ))
 in (LrTable.NT 41,(result,defaultPos,defaultPos),rest671) end
| (63,(_,(MlyValue.TyVarSeq1 TyVarSeq1,TyVarSeq11left,TyVarSeq11right)
)::rest671) => let val result=MlyValue.TyVarSeq(( TyVarSeq1 ))
 in (LrTable.NT 42,(result,TyVarSeq11left,TyVarSeq11right),rest671)
 end
| (64,rest671) => let val result=MlyValue.TyVarSeq(( [] ))
 in (LrTable.NT 42,(result,defaultPos,defaultPos),rest671) end
| (65,(_,(MlyValue.TyVar TyVar,TyVar1left,TyVar1right))::rest671) =>
let val result=MlyValue.TyVarSeq1(( [TyVar] ))
 in (LrTable.NT 43,(result,TyVar1left,TyVar1right),rest671) end
| (66,(_,(_,_,RPAREN1right))::(_,(MlyValue.TyVarComma_seq1
TyVarComma_seq1,_,_))::(_,(_,LPAREN1left,_))::rest671) => let val
result=MlyValue.TyVarSeq1(( TyVarComma_seq1 ))
 in (LrTable.NT 43,(result,LPAREN1left,RPAREN1right),rest671) end
| (67,(_,(MlyValue.TyVarComma_seq1 TyVarComma_seq1,_,
TyVarComma_seq11right))::_::(_,(MlyValue.TyVar TyVar,TyVar1left,_))::
rest671) => let val result=MlyValue.TyVarComma_seq1((
 TyVar :: TyVarComma_seq1 ))
 in (LrTable.NT 44,(result,TyVar1left,TyVarComma_seq11right),rest671)
 end
| (68,(_,(MlyValue.TyVar TyVar,TyVar1left,TyVar1right))::rest671) =>
let val result=MlyValue.TyVarComma_seq1(( [TyVar] ))
 in (LrTable.NT 44,(result,TyVar1left,TyVar1right),rest671) end
| (69,(_,(_,_,SemiEof1right))::_::(_,(MlyValue.KWSpec_seq KWSpec_seq,_
,_))::_::_::(_,(MlyValue.LocUnitName LocUnitName,_,_))::(_,(_,
SIGNATURE1left,_))::rest671) => let val result=MlyValue.SigFile((
 Asynt.NamedSig{locsigid = LocUnitName, specs = KWSpec_seq } ))
 in (LrTable.NT 0,(result,SIGNATURE1left,SemiEof1right),rest671) end
| (70,(_,(_,_,EOF1right))::(_,(MlyValue.KWSpec_seq KWSpec_seq,
KWSpec_seq1left,_))::rest671) => let val result=MlyValue.SigFile((
 Asynt.AnonSig KWSpec_seq ))
 in (LrTable.NT 0,(result,KWSpec_seq1left,EOF1right),rest671) end
| (71,(_,(MlyValue.KWSpec_seq KWSpec_seq,_,KWSpec_seq1right))::(_,(
MlyValue.KWSpec KWSpec,KWSpec1left,_))::rest671) => let val result=
MlyValue.KWSpec_seq(( KWSpec :: KWSpec_seq ))
 in (LrTable.NT 47,(result,KWSpec1left,KWSpec_seq1right),rest671) end
| (72,(_,(MlyValue.KWSpec_seq KWSpec_seq,_,KWSpec_seq1right))::(_,(_,
SEMICOLON1left,_))::rest671) => let val result=MlyValue.KWSpec_seq((
 KWSpec_seq ))
 in (LrTable.NT 47,(result,SEMICOLON1left,KWSpec_seq1right),rest671)
 end
| (73,rest671) => let val result=MlyValue.KWSpec_seq(( [] ))
 in (LrTable.NT 47,(result,defaultPos,defaultPos),rest671) end
| (74,(_,(MlyValue.Spec Spec,_,Specright as Spec1right))::(_,(
MlyValue.KWSpec KWSpec,KWSpecleft as KWSpec1left,_))::rest671) => let
val result=MlyValue.Spec((
 ((KWSpecleft, Specright), Asynt.SEQspec(KWSpec, Spec)) ))
 in (LrTable.NT 45,(result,KWSpec1left,Spec1right),rest671) end
| (75,(_,(MlyValue.Spec Spec,_,Spec1right))::(_,(_,SEMICOLON1left,_))
::rest671) => let val result=MlyValue.Spec(( Spec ))
 in (LrTable.NT 45,(result,SEMICOLON1left,Spec1right),rest671) end
| (76,rest671) => let val result=MlyValue.Spec((
 ((defaultPos, defaultPos), Asynt.EMPTYspec) ))
 in (LrTable.NT 45,(result,defaultPos,defaultPos),rest671) end
| (77,(_,(MlyValue.ValDesc ValDesc,_,ValDescright as ValDesc1right))::
(_,(_,VALleft as VAL1left,_))::rest671) => let val result=
MlyValue.KWSpec(( ((VALleft, ValDescright), Asynt.VALspec ValDesc) ))
 in (LrTable.NT 46,(result,VAL1left,ValDesc1right),rest671) end
| (78,(_,(MlyValue.PrimValBind PrimValBind,_,PrimValBindright as
PrimValBind1right))::(_,(_,PRIM_VALleft as PRIM_VAL1left,_))::rest671)
 => let val result=MlyValue.KWSpec((
 ((PRIM_VALleft, PrimValBindright), Asynt.PRIM_VALspec PrimValBind) )
)
 in (LrTable.NT 46,(result,PRIM_VAL1left,PrimValBind1right),rest671)
 end
| (79,(_,(MlyValue.TypBind TypBind,_,TypBindright as TypBind1right))::
(_,(_,TYPEleft as TYPE1left,_))::rest671) => let val result=
MlyValue.KWSpec(( ((TYPEleft, TypBindright), Asynt.TYPEspec TypBind) )
)
 in (LrTable.NT 46,(result,TYPE1left,TypBind1right),rest671) end
| (80,(_,(MlyValue.TypDesc TypDesc,_,TypDescright as TypDesc1right))::
(_,(_,TYPEleft as TYPE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((TYPEleft, TypDescright), Asynt.TYPEDESCspec(Asynt.FALSEequ, TypDesc))
))
 in (LrTable.NT 46,(result,TYPE1left,TypDesc1right),rest671) end
| (81,(_,(MlyValue.TypDesc TypDesc,_,TypDescright as TypDesc1right))::
(_,(_,EQTYPEleft as EQTYPE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((EQTYPEleft, TypDescright), Asynt.TYPEDESCspec(Asynt.TRUEequ, TypDesc))
))
 in (LrTable.NT 46,(result,EQTYPE1left,TypDesc1right),rest671) end
| (82,(_,(MlyValue.TypDesc TypDesc,_,TypDescright as TypDesc1right))::
(_,(_,PRIM_REFTYPEleft as PRIM_REFTYPE1left,_))::rest671) => let val
result=MlyValue.KWSpec((
 ((PRIM_REFTYPEleft, TypDescright), Asynt.TYPEDESCspec(Asynt.REFequ, TypDesc))
))
 in (LrTable.NT 46,(result,PRIM_REFTYPE1left,TypDesc1right),rest671)
 end
| (83,(_,(MlyValue.WithType_opt WithType_opt,_,WithType_optright as
WithType_opt1right))::(_,(MlyValue.DatBind_0 DatBind_0,_,_))::(_,(_,
DATATYPEleft as DATATYPE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((DATATYPEleft, WithType_optright), Asynt.DATATYPEspec(DatBind_0,WithType_opt))
))
 in (LrTable.NT 46,(result,DATATYPE1left,WithType_opt1right),rest671)
 end
| (84,(_,(MlyValue.WithType_opt WithType_opt,_,WithType_optright as
WithType_opt1right))::(_,(MlyValue.DatBind_n DatBind_n,_,_))::(_,(_,
DATATYPEleft as DATATYPE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((DATATYPEleft, WithType_optright), Asynt.DATATYPEspec(DatBind_n,WithType_opt))
))
 in (LrTable.NT 46,(result,DATATYPE1left,WithType_opt1right),rest671)
 end
| (85,(_,(MlyValue.LongTypeIdent LongTypeIdent,_,LongTypeIdentright as
LongTypeIdent1right))::_::_::(_,(MlyValue.TypeIdent TypeIdent,_,_))::(
_,(_,DATATYPEleft as DATATYPE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((DATATYPEleft, LongTypeIdentright), Asynt.DATATYPErepspec(TypeIdent,LongTypeIdent))
))
 in (LrTable.NT 46,(result,DATATYPE1left,LongTypeIdent1right),rest671)
 end
| (86,(_,(MlyValue.ExDesc ExDesc,_,ExDescright as ExDesc1right))::(_,(
_,EXCEPTIONleft as EXCEPTION1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((EXCEPTIONleft, ExDescright), Asynt.EXCEPTIONspec ExDesc) ))
 in (LrTable.NT 46,(result,EXCEPTION1left,ExDesc1right),rest671) end
| (87,(_,(_,_,ENDright as END1right))::(_,(MlyValue.Spec Spec2,_,_))::
_::(_,(MlyValue.Spec Spec1,_,_))::(_,(_,LOCALleft as LOCAL1left,_))::
rest671) => let val result=MlyValue.KWSpec((
 ((LOCALleft, ENDright), Asynt.LOCALspec(Spec1,Spec2)) ))
 in (LrTable.NT 46,(result,LOCAL1left,END1right),rest671) end
| (88,(_,(MlyValue.ModId_seq1 ModId_seq1,_,ModId_seq1right as
ModId_seq11right))::(_,(_,OPENleft as OPEN1left,_))::rest671) => let
val result=MlyValue.KWSpec((
 ((OPENleft, ModId_seq1right),
                                Asynt.OPENspec (map #2 ModId_seq1))
))
 in (LrTable.NT 46,(result,OPEN1left,ModId_seq11right),rest671) end
| (89,(_,(MlyValue.ModId_seq2 ModId_seq2,_,ModId_seq2right as
ModId_seq21right))::(_,(_,INCLUDEleft as INCLUDE1left,_))::rest671) =>
let val result=MlyValue.KWSpec((
 ((INCLUDEleft, ModId_seq2right),
                                Asynt.INCLUDEspecs (map #2 ModId_seq2))
))
 in (LrTable.NT 46,(result,INCLUDE1left,ModId_seq21right),rest671) end
| (90,(_,(MlyValue.SigExp SigExp,_,SigExpright as SigExp1right))::(_,(
_,INCLUDEleft as INCLUDE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((INCLUDEleft, SigExpright), Asynt.INCLUDEspec SigExp) ))
 in (LrTable.NT 46,(result,INCLUDE1left,SigExp1right),rest671) end
| (91,(_,(MlyValue.ModDesc ModDesc,_,ModDescright as ModDesc1right))::
(_,(_,STRUCTUREleft as STRUCTURE1left,_))::rest671) => let val result=
MlyValue.KWSpec((
 ((STRUCTUREleft, ModDescright), Asynt.STRUCTUREspec ModDesc)))
 in (LrTable.NT 46,(result,STRUCTURE1left,ModDesc1right),rest671) end
| (92,(_,(MlyValue.AndValDesc_opt AndValDesc_opt,_,
AndValDesc_opt1right))::(_,(MlyValue.Ty Ty,_,_))::_::(_,(
MlyValue.OpEqIdent OpEqIdent,OpEqIdent1left,_))::rest671) => let val
result=MlyValue.ValDesc(( (OpEqIdent, Ty) :: AndValDesc_opt ))
 in (LrTable.NT 48,(result,OpEqIdent1left,AndValDesc_opt1right),
rest671) end
| (93,(_,(MlyValue.ValDesc ValDesc,_,ValDesc1right))::(_,(_,AND1left,_
))::rest671) => let val result=MlyValue.AndValDesc_opt(( ValDesc ))
 in (LrTable.NT 49,(result,AND1left,ValDesc1right),rest671) end
| (94,rest671) => let val result=MlyValue.AndValDesc_opt(( [] ))
 in (LrTable.NT 49,(result,defaultPos,defaultPos),rest671) end
| (95,(_,(MlyValue.AndTypDesc_opt AndTypDesc_opt,_,
AndTypDesc_opt1right))::(_,(MlyValue.TypeIdent TypeIdent,_,_))::(_,(
MlyValue.TyVarSeq TyVarSeq,TyVarSeq1left,_))::rest671) => let val
result=MlyValue.TypDesc(( (TyVarSeq, TypeIdent) :: AndTypDesc_opt ))
 in (LrTable.NT 22,(result,TyVarSeq1left,AndTypDesc_opt1right),rest671
) end
| (96,(_,(MlyValue.TypDesc TypDesc,_,TypDesc1right))::(_,(_,AND1left,_
))::rest671) => let val result=MlyValue.AndTypDesc_opt(( TypDesc ))
 in (LrTable.NT 23,(result,AND1left,TypDesc1right),rest671) end
| (97,rest671) => let val result=MlyValue.AndTypDesc_opt(( [] ))
 in (LrTable.NT 23,(result,defaultPos,defaultPos),rest671) end
| (98,(_,(MlyValue.SigExp SigExp,_,SigExp1right))::_::(_,(
MlyValue.ModId ModId,ModId1left,_))::rest671) => let val result=
MlyValue.ModDesc(( Asynt.MODDESCmoddesc(ModId, SigExp) ))
 in (LrTable.NT 50,(result,ModId1left,SigExp1right),rest671) end
| (99,(_,(MlyValue.ModId ModId,ModIdleft as ModId1left,ModIdright as
ModId1right))::rest671) => let val result=MlyValue.SigExp((
(ModIdleft, ModIdright), Asynt.SIGIDsigexp ModId, []))
 in (LrTable.NT 51,(result,ModId1left,ModId1right),rest671) end
| (100,(_,(MlyValue.SigModTypBind SigModTypBind,_,SigModTypBind1right)
)::_::(_,(MlyValue.ModId ModId,ModIdleft as ModId1left,ModIdright))::
rest671) => let val result=MlyValue.SigExp((
(ModIdleft, ModIdright),
                     Asynt.SIGIDsigexp ModId,
                     SigModTypBind
))
 in (LrTable.NT 51,(result,ModId1left,SigModTypBind1right),rest671)
 end
| (101,(_,(_,_,ENDright as END1right))::(_,(MlyValue.KWSpec_seq
KWSpec_seq,_,_))::(_,(_,SIGleft as SIG1left,_))::rest671) => let val
result=MlyValue.SigExp((
(SIGleft, ENDright), Asynt.AnonSigThing KWSpec_seq, []))
 in (LrTable.NT 51,(result,SIG1left,END1right),rest671) end
| (102,(_,(MlyValue.Ty Ty,_,Ty1right))::_::(_,(MlyValue.TypeIdent
TypeIdent,_,_))::(_,(MlyValue.TyVarSeq TyVarSeq,_,_))::(_,(_,TYPE1left
,_))::rest671) => let val result=MlyValue.SigModTypBind((
 [(TyVarSeq, TypeIdent, Ty)] ))
 in (LrTable.NT 20,(result,TYPE1left,Ty1right),rest671) end
| (103,(_,(MlyValue.SigModTypBind SigModTypBind,_,SigModTypBind1right)
)::_::(_,(MlyValue.Ty Ty,_,_))::_::(_,(MlyValue.TypeIdent TypeIdent,_,
_))::(_,(MlyValue.TyVarSeq TyVarSeq,_,_))::(_,(_,TYPE1left,_))::
rest671) => let val result=MlyValue.SigModTypBind((
 (TyVarSeq, TypeIdent, Ty) :: SigModTypBind ))
 in (LrTable.NT 20,(result,TYPE1left,SigModTypBind1right),rest671) end
| (104,(_,(MlyValue.IdentWithLoc IdentWithLoc,IdentWithLoc1left,
IdentWithLoc1right))::rest671) => let val result=MlyValue.ModId((
 IdentWithLoc ))
 in (LrTable.NT 5,(result,IdentWithLoc1left,IdentWithLoc1right),
rest671) end
| (105,(_,(MlyValue.ModId ModId,ModId1left,ModId1right))::rest671) =>
let val result=MlyValue.ModId_seq1(([ModId]))
 in (LrTable.NT 6,(result,ModId1left,ModId1right),rest671) end
| (106,(_,(MlyValue.ModId_seq1 ModId_seq1,_,ModId_seq11right))::(_,(
MlyValue.ModId ModId,ModId1left,_))::rest671) => let val result=
MlyValue.ModId_seq1((ModId :: ModId_seq1))
 in (LrTable.NT 6,(result,ModId1left,ModId_seq11right),rest671) end
| (107,(_,(MlyValue.ModId ModId2,_,ModId2right))::(_,(MlyValue.ModId
ModId1,ModId1left,_))::rest671) => let val result=MlyValue.ModId_seq2(
([ModId1, ModId2]))
 in (LrTable.NT 7,(result,ModId1left,ModId2right),rest671) end
| (108,(_,(MlyValue.ModId_seq2 ModId_seq2,_,ModId_seq21right))::(_,(
MlyValue.ModId ModId,ModId1left,_))::rest671) => let val result=
MlyValue.ModId_seq2((ModId :: ModId_seq2))
 in (LrTable.NT 7,(result,ModId1left,ModId_seq21right),rest671) end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.SigFile x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a
end
end
structure Tokens : SML_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun ABSTYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(
ParserData.MlyValue.VOID,p1,p2))
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(
ParserData.MlyValue.VOID,p1,p2))
fun ANDALSO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(
ParserData.MlyValue.VOID,p1,p2))
fun AS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(
ParserData.MlyValue.VOID,p1,p2))
fun CASE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(
ParserData.MlyValue.VOID,p1,p2))
fun DATATYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(
ParserData.MlyValue.VOID,p1,p2))
fun DO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(
ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(
ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(
ParserData.MlyValue.VOID,p1,p2))
fun EQTYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(
ParserData.MlyValue.VOID,p1,p2))
fun EXCEPTION (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(
ParserData.MlyValue.VOID,p1,p2))
fun FN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(
ParserData.MlyValue.VOID,p1,p2))
fun FUN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(
ParserData.MlyValue.VOID,p1,p2))
fun HANDLE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(
ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(
ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(
ParserData.MlyValue.VOID,p1,p2))
fun INFIX (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(
ParserData.MlyValue.VOID,p1,p2))
fun INFIXR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(
ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(
ParserData.MlyValue.VOID,p1,p2))
fun LOCAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(
ParserData.MlyValue.VOID,p1,p2))
fun NONFIX (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(
ParserData.MlyValue.VOID,p1,p2))
fun OF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(
ParserData.MlyValue.VOID,p1,p2))
fun OP (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(
ParserData.MlyValue.VOID,p1,p2))
fun ORELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(
ParserData.MlyValue.VOID,p1,p2))
fun RAISE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(
ParserData.MlyValue.VOID,p1,p2))
fun REC (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(
ParserData.MlyValue.VOID,p1,p2))
fun SIG (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(
ParserData.MlyValue.VOID,p1,p2))
fun SIGNATURE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(
ParserData.MlyValue.VOID,p1,p2))
fun STRUCT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(
ParserData.MlyValue.VOID,p1,p2))
fun STRUCTURE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(
ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(
ParserData.MlyValue.VOID,p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(
ParserData.MlyValue.VOID,p1,p2))
fun VAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(
ParserData.MlyValue.VOID,p1,p2))
fun WHILE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(
ParserData.MlyValue.VOID,p1,p2))
fun WITH (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(
ParserData.MlyValue.VOID,p1,p2))
fun WITHTYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(
ParserData.MlyValue.VOID,p1,p2))
fun WHERE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(
ParserData.MlyValue.VOID,p1,p2))
fun EQUALS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(
ParserData.MlyValue.VOID,p1,p2))
fun COMMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(
ParserData.MlyValue.VOID,p1,p2))
fun ARROW (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(
ParserData.MlyValue.VOID,p1,p2))
fun DARROW (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(
ParserData.MlyValue.VOID,p1,p2))
fun BAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(
ParserData.MlyValue.VOID,p1,p2))
fun STAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(
ParserData.MlyValue.VOID,p1,p2))
fun HASH (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(
ParserData.MlyValue.VOID,p1,p2))
fun LBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(
ParserData.MlyValue.VOID,p1,p2))
fun RBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 45,(
ParserData.MlyValue.VOID,p1,p2))
fun HASHLBRACKET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 46,(
ParserData.MlyValue.VOID,p1,p2))
fun LBRACKET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 47,(
ParserData.MlyValue.VOID,p1,p2))
fun RBRACKET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 48,(
ParserData.MlyValue.VOID,p1,p2))
fun LPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 49,(
ParserData.MlyValue.VOID,p1,p2))
fun RPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 50,(
ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 51,(
ParserData.MlyValue.VOID,p1,p2))
fun SEMICOLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 52,(
ParserData.MlyValue.VOID,p1,p2))
fun UNDERBAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 53,(
ParserData.MlyValue.VOID,p1,p2))
fun DOTDOTDOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 54,(
ParserData.MlyValue.VOID,p1,p2))
fun OPEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 55,(
ParserData.MlyValue.VOID,p1,p2))
fun INCLUDE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 56,(
ParserData.MlyValue.VOID,p1,p2))
fun PRIM_VAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 57,(
ParserData.MlyValue.VOID,p1,p2))
fun PRIM_TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 58,(
ParserData.MlyValue.VOID,p1,p2))
fun PRIM_EQTYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 59,(
ParserData.MlyValue.VOID,p1,p2))
fun PRIM_REFTYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 60,(
ParserData.MlyValue.VOID,p1,p2))
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 61,(
ParserData.MlyValue.VOID,p1,p2))
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 62,(
ParserData.MlyValue.ID i,p1,p2))
fun QUAL_ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 63,(
ParserData.MlyValue.QUAL_ID i,p1,p2))
fun QUAL_STAR (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 64,(
ParserData.MlyValue.QUAL_STAR i,p1,p2))
fun ZDIGIT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 65,(
ParserData.MlyValue.ZDIGIT i,p1,p2))
fun NZDIGIT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 66,(
ParserData.MlyValue.NZDIGIT i,p1,p2))
fun ZPOSINT2 (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 67,(
ParserData.MlyValue.ZPOSINT2 i,p1,p2))
fun NZPOSINT2 (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 68,(
ParserData.MlyValue.NZPOSINT2 i,p1,p2))
fun NEGINT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 69,(
ParserData.MlyValue.NEGINT i,p1,p2))
fun WORD (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 70,(
ParserData.MlyValue.WORD i,p1,p2))
fun CHAR (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 71,(
ParserData.MlyValue.CHAR i,p1,p2))
fun REAL (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 72,(
ParserData.MlyValue.REAL i,p1,p2))
fun STRING (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 73,(
ParserData.MlyValue.STRING i,p1,p2))
fun QUOTEL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 74,(
ParserData.MlyValue.VOID,p1,p2))
fun QUOTER (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 75,(
ParserData.MlyValue.QUOTER i,p1,p2))
fun QUOTEM (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 76,(
ParserData.MlyValue.QUOTEM i,p1,p2))
fun TYVAR (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 77,(
ParserData.MlyValue.TYVAR i,p1,p2))
end
end
