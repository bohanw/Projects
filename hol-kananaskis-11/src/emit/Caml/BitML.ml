module BitML : BitML =
struct

  type num = NumML.num



  open NumML

  let _TIMES_2EXP n x =
        (if x = ZERO then ZERO else ( * ) x (_FUNPOW iDUB n _ONE))

  let rec _BITWISE n opr a b =
            (if n = ZERO then
               ZERO
             else
               (+)
                 (( * ) _TWO
                    (_BITWISE (_PRE n) opr (_DIV2 a) (_DIV2 b)))
                 (if opr (_ODD a) (_ODD b) then _ONE else ZERO))

  let rec _LOG m n =
            (if (<) m _TWO || (n = ZERO) then
               raise (Failure "LOG: base < 2 or n = 0")
             else (if (<) n m then ZERO else _SUC (_LOG m (_DIV n m))))

  let rec _LOWEST_SET_BIT n =
            (if n = ZERO then
               raise (Failure "LOWEST_SET_BIT: zero value")
             else
               (if _ODD n then
                  ZERO
                else (+) _ONE (_LOWEST_SET_BIT (_DIV2 n))))

  let rec l2n v0 v1 = match v0,v1 with
      b,[] -> ZERO
    | b,h::t -> (+) (_MOD h b) (( * ) b (l2n b t))

  let rec n2l b n =
            (if (<) n b || (<) b _TWO then
               [_MOD n b]
             else _MOD n b::n2l b (_DIV n b))

  let s2n b f s =
        l2n b (ListML._MAP f (ListML._REVERSE (StringML._EXPLODE s)))

  let n2s b f n =
        StringML._IMPLODE (ListML._REVERSE (ListML._MAP f (n2l b n)))

  let rec _HEX n =
            (if n = ZERO then
               StringML._CHR (fromString "48")
             else
               (if n = _ONE then
                  StringML._CHR (fromString "49")
                else
                  (if n = _TWO then
                     StringML._CHR (fromString "50")
                   else
                     (if n = (fromString "3") then
                        StringML._CHR (fromString "51")
                      else
                        (if n = (fromString "4") then
                           StringML._CHR (fromString "52")
                         else
                           (if n = (fromString "5") then
                              StringML._CHR (fromString "53")
                            else
                              (if n = (fromString "6") then
                                 StringML._CHR (fromString "54")
                               else
                                 (if n = (fromString "7") then
                                    StringML._CHR (fromString "55")
                                  else
                                    (if n = (fromString "8") then
                                       StringML._CHR (fromString "56")
                                     else
                                       (if n = (fromString "9") then
                                          StringML._CHR
                                            (fromString "57")
                                        else
                                          (if n = (fromString "10") then
                                             StringML._CHR
                                               (fromString "65")
                                           else
                                             (if
                                                n = (fromString "11")
                                              then
                                                StringML._CHR
                                                  (fromString "66")
                                              else
                                                (if
                                                   n = (fromString "12")
                                                 then
                                                   StringML._CHR
                                                     (fromString "67")
                                                 else
                                                   (if
                                                      n =
                                                      (fromString "13")
                                                    then
                                                      StringML._CHR
                                                        (fromString 
                                                        "68")
                                                    else
                                                      (if
                                                         n =
                                                         (fromString 
                                                         "14")
                                                       then
                                                         StringML._CHR
                                                           (fromString 
                                                           "69")
                                                       else
                                                         (if
                                                            n =
                                                            (fromString 
                                                            "15")
                                                          then
                                                            StringML._CHR
                                                              (fromString 
                                                              "70")
                                                          else
                                                            raise (Failure
                                                               "HEX: not a hex digit")))))))))))))))))

  let rec _UNHEX c =
            (if c = StringML._CHR (fromString "48") then
               ZERO
             else
               (if c = StringML._CHR (fromString "49") then
                  _ONE
                else
                  (if c = StringML._CHR (fromString "50") then
                     _TWO
                   else
                     (if c = StringML._CHR (fromString "51") then
                        (fromString "3")
                      else
                        (if c = StringML._CHR (fromString "52") then
                           (fromString "4")
                         else
                           (if c = StringML._CHR (fromString "53") then
                              (fromString "5")
                            else
                              (if
                                 c = StringML._CHR (fromString "54")
                               then
                                 (fromString "6")
                               else
                                 (if
                                    c = StringML._CHR (fromString "55")
                                  then
                                    (fromString "7")
                                  else
                                    (if
                                       c =
                                       StringML._CHR (fromString "56")
                                     then
                                       (fromString "8")
                                     else
                                       (if
                                          c =
                                          StringML._CHR
                                            (fromString "57")
                                        then
                                          (fromString "9")
                                        else
                                          (if
                                             c =
                                             StringML._CHR
                                               (fromString "65")
                                           then
                                             (fromString "10")
                                           else
                                             (if
                                                c =
                                                StringML._CHR
                                                  (fromString "66")
                                              then
                                                (fromString "11")
                                              else
                                                (if
                                                   c =
                                                   StringML._CHR
                                                     (fromString "67")
                                                 then
                                                   (fromString "12")
                                                 else
                                                   (if
                                                      c =
                                                      StringML._CHR
                                                        (fromString 
                                                        "68")
                                                    then
                                                      (fromString "13")
                                                    else
                                                      (if
                                                         c =
                                                         StringML._CHR
                                                           (fromString 
                                                           "69")
                                                       then
                                                         (fromString 
                                                         "14")
                                                       else
                                                         (if
                                                            c =
                                                            StringML._CHR
                                                              (fromString 
                                                              "70")
                                                          then
                                                            (fromString 
                                                            "15")
                                                          else
                                                            raise (Failure
                                                               "UNHEX: not a hex digit")))))))))))))))))

  let num_from_bin_list = l2n _TWO

  let num_from_oct_list = l2n (fromString "8")

  let num_from_dec_list = l2n (fromString "10")

  let num_from_hex_list = l2n (fromString "16")

  let num_to_bin_list = n2l _TWO

  let num_to_oct_list = n2l (fromString "8")

  let num_to_dec_list = n2l (fromString "10")

  let num_to_hex_list = n2l (fromString "16")

  let num_from_bin_string = s2n _TWO _UNHEX

  let num_from_oct_string = s2n (fromString "8") _UNHEX

  let num_from_dec_string = s2n (fromString "10") _UNHEX

  let num_from_hex_string = s2n (fromString "16") _UNHEX

  let num_to_bin_string = n2s _TWO _HEX

  let num_to_oct_string = n2s (fromString "8") _HEX

  let num_to_dec_string = n2s (fromString "10") _HEX

  let num_to_hex_string = n2s (fromString "16") _HEX

  let rec _BIT_MODF n f x b e y =
            (if n = ZERO then
               y
             else
               _BIT_MODF (_PRE n) f (_DIV2 x) ((+) b _ONE)
                 (( * ) _TWO e) (if f b (_ODD x) then (+) e y else y))

  let _BIT_MODIFY m f n = _BIT_MODF m f n ZERO _ONE ZERO

  let rec _BIT_REV n x y =
            (if n = ZERO then
               y
             else
               _BIT_REV (_PRE n) (_DIV2 x)
                 ((+) (( * ) _TWO y) (if _ODD x then _ONE else ZERO)))

  let _BIT_REVERSE m n = _BIT_REV m n ZERO

  let rec _LOG2 n =
            (if n = ZERO then
               raise (Failure "LOG2: undefined")
             else
               (if n = _ONE then ZERO else (+) _ONE (_LOG2 (_DIV2 n))))

  let _DIVMOD_2EXP x n = (_DIV_2EXP x n,_MOD_2EXP x n)

  let _SBIT b n = (if b then _TIMES_2EXP n _ONE else ZERO)

  let _BITS h l n = _MOD_2EXP ((-) (_SUC h) l) (_DIV_2EXP l n)

  let rec _MOD_2EXP_EQ n a b =
            (if n = ZERO then
               true
             else
               (_ODD a = _ODD b) &&
               _MOD_2EXP_EQ ((-) n _ONE) (_DIV2 a) (_DIV2 b))

  let _BITV n b = _BITS b b n

  let _BIT b n = _BITS b b n = _ONE

  let _SLICE h l n = (-) (_MOD_2EXP (_SUC h) n) (_MOD_2EXP l n)

  let _SIGN_EXTEND l h n =
        (let m = _MOD n (_TIMES_2EXP l _ONE)
         in
            (if _BIT ((-) l _ONE) n then
               (+) ((-) (_TIMES_2EXP h _ONE) (_TIMES_2EXP l _ONE)) m
             else m))

  let rec _BOOLIFY n m a =
            (if n = ZERO then
               a
             else _BOOLIFY (_PRE n) (_DIV2 m) (_ODD m::a))

end
