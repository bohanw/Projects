module WordsML : WordsML =
struct

  type num = NumML.num

  type ('a, 'b) sum = ('a, 'b) SumML.sum

  type 'a itself = 'a FcpML.itself

  type 'a bit0 = 'a FcpML.bit0

  type 'a bit1 = 'a FcpML.bit1



  type 'a word = N2w_itself of num * 'a itself



  open SumML
  open NumML
  open FcpML
  open BitML

  let dimword a = _TIMES_2EXP (dimindex a) _ONE

  let fromNum (n,a) = N2w_itself (_MOD n (dimword a),a)

  type word1 = unit word

  let toWord1 n = fromNum (n,ITSELF(NumML.holnum_of_int 1))

  let fromString1 = CombinML.o toWord1 NumML.fromString

  type word2 = unit bit0 word

  let toWord2 n = fromNum (n,ITSELF(NumML.holnum_of_int 2))

  let fromString2 = CombinML.o toWord2 NumML.fromString

  type word3 = unit bit1 word

  let toWord3 n = fromNum (n,ITSELF(NumML.holnum_of_int 3))

  let fromString3 = CombinML.o toWord3 NumML.fromString

  type word4 = unit bit0 bit0 word

  let toWord4 n = fromNum (n,ITSELF(NumML.holnum_of_int 4))

  let fromString4 = CombinML.o toWord4 NumML.fromString

  type word5 = unit bit0 bit1 word

  let toWord5 n = fromNum (n,ITSELF(NumML.holnum_of_int 5))

  let fromString5 = CombinML.o toWord5 NumML.fromString

  type word6 = unit bit1 bit0 word

  let toWord6 n = fromNum (n,ITSELF(NumML.holnum_of_int 6))

  let fromString6 = CombinML.o toWord6 NumML.fromString

  type word7 = unit bit1 bit1 word

  let toWord7 n = fromNum (n,ITSELF(NumML.holnum_of_int 7))

  let fromString7 = CombinML.o toWord7 NumML.fromString

  type word8 = unit bit0 bit0 bit0 word

  let toWord8 n = fromNum (n,ITSELF(NumML.holnum_of_int 8))

  let fromString8 = CombinML.o toWord8 NumML.fromString

  type word12 = unit bit1 bit0 bit0 word

  let toWord12 n = fromNum (n,ITSELF(NumML.holnum_of_int 12))

  let fromString12 = CombinML.o toWord12 NumML.fromString

  type word16 = unit bit0 bit0 bit0 bit0 word

  let toWord16 n = fromNum (n,ITSELF(NumML.holnum_of_int 16))

  let fromString16 = CombinML.o toWord16 NumML.fromString

  type word20 = unit bit0 bit1 bit0 bit0 word

  let toWord20 n = fromNum (n,ITSELF(NumML.holnum_of_int 20))

  let fromString20 = CombinML.o toWord20 NumML.fromString

  type word24 = unit bit1 bit0 bit0 bit0 word

  let toWord24 n = fromNum (n,ITSELF(NumML.holnum_of_int 24))

  let fromString24 = CombinML.o toWord24 NumML.fromString

  type word28 = unit bit1 bit1 bit0 bit0 word

  let toWord28 n = fromNum (n,ITSELF(NumML.holnum_of_int 28))

  let fromString28 = CombinML.o toWord28 NumML.fromString

  type word30 = unit bit1 bit1 bit1 bit0 word

  let toWord30 n = fromNum (n,ITSELF(NumML.holnum_of_int 30))

  let fromString30 = CombinML.o toWord30 NumML.fromString

  type word32 = unit bit0 bit0 bit0 bit0 bit0 word

  let toWord32 n = fromNum (n,ITSELF(NumML.holnum_of_int 32))

  let fromString32 = CombinML.o toWord32 NumML.fromString

  type word64 = unit bit0 bit0 bit0 bit0 bit0 bit0 word

  let toWord64 n = fromNum (n,ITSELF(NumML.holnum_of_int 64))

  let fromString64 = CombinML.o toWord64 NumML.fromString

  type word128 = unit bit0 bit0 bit0 bit0 bit0 bit0 bit0 word

  let toWord128 n = fromNum (n,ITSELF(NumML.holnum_of_int 128))

  let fromString128 = CombinML.o toWord128 NumML.fromString

  type word256 = unit bit0 bit0 bit0 bit0 bit0 bit0 bit0 bit0 word

  let toWord256 n = fromNum (n,ITSELF(NumML.holnum_of_int 256))

  let fromString256 = CombinML.o toWord256 NumML.fromString

  let _INT_MIN a = _TIMES_2EXP ((-) (dimindex a) _ONE) _ONE

  let _UINT_MAX a = (-) (dimword a) _ONE

  let _INT_MAX a = (-) (_INT_MIN a) _ONE

  let w2n (N2w_itself (n,a)) = _MOD n (dimword a)

  let word_eq (N2w_itself (m,a)) w =
        _MOD m (dimword a) = _MOD (w2n w) (dimword a)

  let w2w_itself b (N2w_itself (n,a)) =
        (if (<=) (dimindex b) (dimindex a) then
           N2w_itself (n,b)
         else N2w_itself (_BITS ((-) (dimindex a) _ONE) ZERO n,b))

  let word_or w (N2w_itself (m,a)) =
        N2w_itself
          (_BITWISE (dimindex a) (function a -> (function b -> a || b))
             (w2n w) m,a)

  let word_lsl (N2w_itself (m,a)) n =
        (if (<) ((-) (dimindex a) _ONE) n then
           N2w_itself (ZERO,a)
         else N2w_itself (( * ) m (_TIMES_2EXP n _ONE),a))

  let word_bits h l (N2w_itself (n,a)) =
        N2w_itself (_BITS (_MIN h ((-) (dimindex a) _ONE)) l n,a)

  let word_signed_bits h l (N2w_itself (n,a)) =
        N2w_itself
          (_SIGN_EXTEND ((-) (_MIN (_SUC h) (dimindex a)) l)
             (dimindex a) (_BITS (_MIN h ((-) (dimindex a) _ONE)) l n),
           a)

  let word_bit c (N2w_itself (n,a)) =
        (<=) c ((-) (dimindex a) _ONE) && _BIT c n

  let word_join (N2w_itself (m,a)) (N2w_itself (n,b)) =
        (let cv = w2w_itself (_SUMi(a, b)) (N2w_itself (m,a))
         and cw = w2w_itself (_SUMi(a, b)) (N2w_itself (n,b))
         in
            word_or (word_lsl cv (dimindex b)) cw)

  let sw2sw_itself b (N2w_itself (n,a)) =
        N2w_itself
          (_SIGN_EXTEND (dimindex a) (dimindex b)
             (w2n (N2w_itself (n,a))),b)

  let word_extract_itself b h l (N2w_itself (n,a)) =
        (if (<=) (dimindex b) (dimindex a) then
           N2w_itself (_BITS (_MIN h ((-) (dimindex a) _ONE)) l n,b)
         else
           N2w_itself
             (_BITS
                (_MIN (_MIN h ((-) (dimindex a) _ONE))
                   ((+) ((-) (dimindex a) _ONE) l)) l n,b))

  let word_slice h l (N2w_itself (n,a)) =
        N2w_itself (_SLICE (_MIN h ((-) (dimindex a) _ONE)) l n,a)

  let word_concat_itself c v w = w2w_itself c (word_join v w)

  let word_log2 (N2w_itself (n,a)) =
        N2w_itself (_LOG2 (_MOD n (dimword a)),a)

  let word_reverse (N2w_itself (n,a)) =
        N2w_itself (_BIT_REVERSE (dimindex a) n,a)

  let word_modify f (N2w_itself (n,a)) =
        N2w_itself (_BIT_MODIFY (dimindex a) f n,a)

  let word_lsb (N2w_itself (n,a)) = _ODD n

  let word_msb (N2w_itself (n,a)) = _BIT ((-) (dimindex a) _ONE) n

  let add_with_carry (N2w_itself (n,a),(y,carry_in)) =
        (let unsigned_sum =
             (+) ((+) (w2n (N2w_itself (n,a))) (w2n y))
               (if carry_in then _ONE else ZERO)
         in
         let result = N2w_itself (unsigned_sum,a)
         in
         let carry_out = not (w2n result = unsigned_sum)
         and overflow =
             (word_msb (N2w_itself (n,a)) = word_msb y) &&
             not (word_msb (N2w_itself (n,a)) = word_msb result)
         in
            (result,(carry_out,overflow)))

  let word_1comp (N2w_itself (n,a)) =
        N2w_itself ((-) ((-) (dimword a) _ONE) (_MOD n (dimword a)),a)

  let word_and w (N2w_itself (m,a)) =
        N2w_itself
          (_BITWISE (dimindex a) (function a -> (function b -> a && b))
             (w2n w) m,a)

  let word_xor w (N2w_itself (m,a)) =
        N2w_itself
          (_BITWISE (dimindex a) (function x -> (function y ->
             not (x = y))) (w2n w) m,a)

  let word_2comp (N2w_itself (n,a)) =
        N2w_itself ((-) (dimword a) (_MOD n (dimword a)),a)

  let word_div (N2w_itself (m,a)) w =
        N2w_itself (_DIV (w2n (N2w_itself (m,a))) (w2n w),a)

  let word_sdiv m n =
        (if word_msb m then
           (if word_msb n then
              word_div (word_2comp m) (word_2comp n)
            else word_2comp (word_div (word_2comp m) n))
         else
           (if word_msb n then
              word_2comp (word_div m (word_2comp n))
            else word_div m n))

  let word_add w (N2w_itself (n,a)) =
        N2w_itself (_MOD ((+) (w2n w) n) (dimword a),a)

  let word_sub v w = word_add v (word_2comp w)

  let word_mul w (N2w_itself (n,a)) =
        N2w_itself (_MOD (( * ) (w2n w) n) (dimword a),a)

  let word_lsr (N2w_itself (m,a)) n =
        word_bits ((-) (dimindex a) _ONE) n (N2w_itself (m,a))

  let word_asr (N2w_itself (m,a)) n =
        (if word_msb (N2w_itself (m,a)) then
           word_or
             (N2w_itself
                ((-) (dimword a)
                   (_TIMES_2EXP ((-) (dimindex a) (_MIN n (dimindex a)))
                      _ONE),a)) (word_lsr (N2w_itself (m,a)) n)
         else word_lsr (N2w_itself (m,a)) n)

  let word_ror (N2w_itself (m,a)) n =
        (let x = _MOD n (dimindex a)
         in
            N2w_itself
              ((+) (_BITS ((-) (dimindex a) _ONE) x m)
                 (( * ) (_BITS ((-) x _ONE) ZERO m)
                    (_TIMES_2EXP ((-) (dimindex a) x) _ONE)),a))

  let word_rol (N2w_itself (m,a)) n =
        word_ror (N2w_itself (m,a))
          ((-) (dimindex a) (_MOD n (dimindex a)))

  let word_rrx (c,N2w_itself (m,a)) =
        (_ODD m,
         N2w_itself
           ((+) (_BITS ((-) (dimindex a) _ONE) _ONE m)
              (_SBIT c ((-) (dimindex a) _ONE)),a))

  let word_index (N2w_itself (n,a)) i =
        (if (<) i (dimindex a) then
           _BIT i n
         else raise (Failure "fcp_index: index too large"))

  let word_ge w (N2w_itself (n,a)) =
        (let sa = _BIT ((-) (dimindex a) _ONE) (w2n w)
         and sb = _BIT ((-) (dimindex a) _ONE) n
         in
            (sa = sb) &&
            (>=) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a)) ||
            not sa && sb)

  let word_gt w (N2w_itself (n,a)) =
        (let sa = _BIT ((-) (dimindex a) _ONE) (w2n w)
         and sb = _BIT ((-) (dimindex a) _ONE) n
         in
            (sa = sb) &&
            (>) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a)) ||
            not sa && sb)

  let word_hi w (N2w_itself (n,a)) =
        (>) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a))

  let word_hs w (N2w_itself (n,a)) =
        (>=) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a))

  let word_le w (N2w_itself (n,a)) =
        (let sa = _BIT ((-) (dimindex a) _ONE) (w2n w)
         and sb = _BIT ((-) (dimindex a) _ONE) n
         in
            (sa = sb) &&
            (<=) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a)) ||
            sa && not sb)

  let word_lo w (N2w_itself (n,a)) =
        (<) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a))

  let word_ls w (N2w_itself (n,a)) =
        (<=) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a))

  let word_lt w (N2w_itself (n,a)) =
        (let sa = _BIT ((-) (dimindex a) _ONE) (w2n w)
         and sb = _BIT ((-) (dimindex a) _ONE) n
         in
            (sa = sb) &&
            (<) (_MOD (w2n w) (dimword a)) (_MOD n (dimword a)) ||
            sa && not sb)

  let word_reduce f (N2w_itself (n,a)) =
        N2w_itself
          ((if
              (let l = _BOOLIFY (dimindex a) n []
               in
                  ListML._FOLDL f (ListML._HD l) (ListML._TL l))
            then
              _ONE
            else ZERO),(ITSELF _ONE))

  let reduce_and (N2w_itself (m,a)) =
        (if N2w_itself (m,a) = N2w_itself (_UINT_MAX a,a) then
           N2w_itself (_ONE,(ITSELF _ONE))
         else N2w_itself (ZERO,(ITSELF _ONE)))

  let reduce_or (N2w_itself (m,a)) =
        (if N2w_itself (m,a) = N2w_itself (ZERO,a) then
           N2w_itself (ZERO,(ITSELF _ONE))
         else N2w_itself (_ONE,(ITSELF _ONE)))

  let reduce_xor x =
        word_reduce (function x -> (function y -> not (x = y))) x

  let reduce_xnor x =
        word_reduce (function x -> (function y -> x = y)) x

  let reduce_nand x =
        word_reduce (function a -> (function b -> not (a && b))) x

  let reduce_nor x =
        word_reduce (function a -> (function b -> not (a || b))) x

  let bit_field_insert h l m w =
        word_modify (function i -> (function b ->
          (if (<=) l i && (<=) i h then word_index m ((-) i l) else b)))
          w

  let w2l n w = n2l n (w2n w)

  let w2s n f w = n2s n f (w2n w)

  let word_sign_extend n (N2w_itself (w,a)) =
        N2w_itself (_SIGN_EXTEND n (dimindex a) (_MOD w (dimword a)),a)

  let word_to_bin_list x = w2l _TWO x

  let word_to_oct_list x = w2l (fromString "8") x

  let word_to_dec_list x = w2l (fromString "10") x

  let word_to_hex_list x = w2l (fromString "16") x

  let word_to_bin_string x = w2s _TWO _HEX x

  let word_to_oct_string x = w2s (fromString "8") _HEX x

  let word_to_dec_string x = w2s (fromString "10") _HEX x

  let word_to_hex_string x = w2s (fromString "16") _HEX x

end
