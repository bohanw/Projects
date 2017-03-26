module StringML : StringML =
struct

  type num = NumML.num



  open ListML
  open OptionML

  let _CHR n = Char.chr(NumML.int_of_holnum n)

  let _ORD c = NumML.holnum_of_int(Char.code c)

  let _STRING c s = String.concat "" [Char.escaped c; s]

  let _DEST_STRING s = if s = "" then None
          else Some(String.get s 0,String.sub s 1 (String.length s - 1))

  let string_lt a b = String.compare a b < 0

  let _IMPLODE l =
     let s = String.create (List.length l) in
     let _ = List.fold_left
               (function n -> function c -> (String.set s n c; n + 1)) 0 l in s

  let _EXPLODE s =
     Rich_listML._GENLIST
        (function n -> String.get s (NumML.int_of_holnum n))
        (NumML.holnum_of_int (String.length s))

  let char_size c = NumML.ZERO

  let isLower c =
        NumML.(<=) (NumML.fromString "97") (_ORD c) &&
        NumML.(<=) (_ORD c) (NumML.fromString "122")

  let isUpper c =
        NumML.(<=) (NumML.fromString "65") (_ORD c) &&
        NumML.(<=) (_ORD c) (NumML.fromString "90")

  let isDigit c =
        NumML.(<=) (NumML.fromString "48") (_ORD c) &&
        NumML.(<=) (_ORD c) (NumML.fromString "57")

  let isAlpha c = isLower c || isUpper c

  let isHexDigit c =
        NumML.(<=) (NumML.fromString "48") (_ORD c) &&
        NumML.(<=) (_ORD c) (NumML.fromString "57") ||
        (NumML.(<=) (NumML.fromString "97") (_ORD c) &&
         NumML.(<=) (_ORD c) (NumML.fromString "102") ||
         NumML.(<=) (NumML.fromString "65") (_ORD c) &&
         NumML.(<=) (_ORD c) (NumML.fromString "70"))

  let isAlphaNum c = isAlpha c || isDigit c

  let isPrint c =
        NumML.(<=) (NumML.fromString "32") (_ORD c) &&
        NumML.(<) (_ORD c) (NumML.fromString "127")

  let isSpace c =
        (_ORD c = (NumML.fromString "32")) ||
        NumML.(<=) (NumML.fromString "9") (_ORD c) &&
        NumML.(<=) (_ORD c) (NumML.fromString "13")

  let isGraph c = isPrint c && not (isSpace c)

  let isPunct c = isGraph c && not (isAlphaNum c)

  let isAscii c = NumML.(<=) (_ORD c) (NumML.fromString "127")

  let isCntrl c =
        NumML.(<) (_ORD c) (NumML.fromString "32") ||
        NumML.(<=) (NumML.fromString "127") (_ORD c)

  let toLower c =
        (if isUpper c then
           _CHR (NumML.(+) (_ORD c) (NumML.fromString "32"))
         else c)

  let toUpper c =
        (if isLower c then
           _CHR (NumML.(-) (_ORD c) (NumML.fromString "32"))
         else c)

  let char_lt a b = NumML.(<) (_ORD a) (_ORD b)

  let char_le a b = NumML.(<=) (_ORD a) (_ORD b)

  let char_gt a b = NumML.(>) (_ORD a) (_ORD b)

  let char_ge a b = NumML.(>=) (_ORD a) (_ORD b)

  let string_le s1 s2 = (s1 = s2) || string_lt s1 s2

  let string_gt s1 s2 = string_lt s2 s1

  let string_ge s1 s2 = string_le s2 s1

end
