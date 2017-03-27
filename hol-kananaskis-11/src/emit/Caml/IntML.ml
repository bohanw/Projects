module IntML : IntML =
struct

  type num = NumML.num

  type 'a itself = 'a FcpML.itself

  type 'a word = 'a WordsML.word



  type int = Int_of_num of num | Neg_int_of_num of num
  let fromString s =
    let s' = String.sub s 0 (String.length s - 1) in
      if String.get s' 0 = '-' then
        let s' = String.sub s' 1 (String.length s' - 1) in
          Neg_int_of_num (NumML._PRE (NumML.fromString s'))
      else
        Int_of_num (NumML.fromString s')


  let int_neg v0 = match v0 with
      Int_of_num n ->
        (if n = NumML.ZERO then
           (fromString"0i")
         else Neg_int_of_num (NumML.(-) n NumML._ONE))
    | Neg_int_of_num n -> Int_of_num (NumML.(+) n NumML._ONE)

  let rec _Num v0 = match v0 with
      Int_of_num n -> n
    | Neg_int_of_num n -> raise (Failure "Num: negative")

  let int_lt v0 v1 = match v0,v1 with
      Int_of_num m,Int_of_num n -> NumML.(<) m n
    | Neg_int_of_num m,Int_of_num n -> true
    | Int_of_num m,Neg_int_of_num n -> false
    | Neg_int_of_num m,Neg_int_of_num n -> NumML.(<) n m

  let int_le x y = int_lt x y || (x = y)

  let int_gt x y = int_lt y x

  let int_ge x y = int_le y x

  let _ABS n = (if int_lt n (fromString"0i") then int_neg n else n)

  let int_add v0 v1 = match v0,v1 with
      Int_of_num m,Int_of_num n -> Int_of_num (NumML.(+) m n)
    | Neg_int_of_num m,Int_of_num n ->
        (if NumML.(<=) (NumML.(+) m NumML._ONE) n then
           Int_of_num (NumML.(-) n (NumML.(+) m NumML._ONE))
         else Neg_int_of_num (NumML.(-) m n))
    | Int_of_num m,Neg_int_of_num n ->
        (if NumML.(<=) (NumML.(+) n NumML._ONE) m then
           Int_of_num (NumML.(-) m (NumML.(+) n NumML._ONE))
         else Neg_int_of_num (NumML.(-) n m))
    | Neg_int_of_num m,Neg_int_of_num n ->
        Neg_int_of_num (NumML.(+) (NumML.(+) m n) NumML._ONE)

  let int_sub v0 v1 = match v0,v1 with
      Int_of_num m,Int_of_num n ->
        int_add (Int_of_num m) (int_neg (Int_of_num n))
    | Neg_int_of_num m,Int_of_num n ->
        int_add (Neg_int_of_num m) (int_neg (Int_of_num n))
    | Int_of_num m,Neg_int_of_num n ->
        int_add (Int_of_num m) (Int_of_num (NumML.(+) n NumML._ONE))
    | Neg_int_of_num m,Neg_int_of_num n ->
        int_add (Neg_int_of_num m) (Int_of_num (NumML.(+) n NumML._ONE))

  let int_mul v0 v1 = match v0,v1 with
      Int_of_num m,Int_of_num n -> Int_of_num (NumML.( * ) m n)
    | Neg_int_of_num m,Int_of_num n ->
        int_neg (Int_of_num (NumML.( * ) (NumML.(+) m NumML._ONE) n))
    | Int_of_num m,Neg_int_of_num n ->
        int_neg (Int_of_num (NumML.( * ) m (NumML.(+) n NumML._ONE)))
    | Neg_int_of_num m,Neg_int_of_num n ->
        Int_of_num
          (NumML.( * ) (NumML.(+) m NumML._ONE)
             (NumML.(+) n NumML._ONE))

  let int_exp v0 v1 = match v0,v1 with
      Int_of_num n,m -> Int_of_num (NumML._EXP n m)
    | Neg_int_of_num m,n ->
        (if NumML._EVEN n then
           Int_of_num (NumML._EXP (NumML.(+) m NumML._ONE) n)
         else
           int_neg (Int_of_num (NumML._EXP (NumML.(+) m NumML._ONE) n)))

  let rec int_div i j =
            (if j = (fromString"0i") then
               raise (Failure "int_div: zero denominator")
             else
               (if int_lt (fromString"0i") j then
                  (if int_le (fromString"0i") i then
                     Int_of_num (NumML._DIV (_Num i) (_Num j))
                   else
                     int_add
                       (int_neg
                          (Int_of_num
                             (NumML._DIV (_Num (int_neg i)) (_Num j))))
                       (if
                          NumML._MOD (_Num (int_neg i)) (_Num j) =
                          NumML.ZERO
                        then
                          (fromString"0i")
                        else int_neg (Int_of_num NumML._ONE)))
                else
                  (if int_le (fromString"0i") i then
                     int_add
                       (int_neg
                          (Int_of_num
                             (NumML._DIV (_Num i) (_Num (int_neg j)))))
                       (if
                          NumML._MOD (_Num i) (_Num (int_neg j)) =
                          NumML.ZERO
                        then
                          (fromString"0i")
                        else int_neg (Int_of_num NumML._ONE))
                   else
                     Int_of_num
                       (NumML._DIV (_Num (int_neg i))
                          (_Num (int_neg j))))))

  let rec int_mod i j =
            (if j = (fromString"0i") then
               raise (Failure "int_mod: zero denominator")
             else int_sub i (int_mul (int_div i j) j))

  let rec int_quot i j =
            (if j = (fromString"0i") then
               raise (Failure "int_quot: zero denominator")
             else
               (if int_lt (fromString"0i") j then
                  (if int_le (fromString"0i") i then
                     Int_of_num (NumML._DIV (_Num i) (_Num j))
                   else
                     int_neg
                       (Int_of_num
                          (NumML._DIV (_Num (int_neg i)) (_Num j))))
                else
                  (if int_le (fromString"0i") i then
                     int_neg
                       (Int_of_num
                          (NumML._DIV (_Num i) (_Num (int_neg j))))
                   else
                     Int_of_num
                       (NumML._DIV (_Num (int_neg i))
                          (_Num (int_neg j))))))

  let rec int_rem i j =
            (if j = (fromString"0i") then
               raise (Failure "int_rem: zero denominator")
             else int_sub i (int_mul (int_quot i j) j))

  let _INT_MAX a =
        int_sub (Int_of_num (WordsML._INT_MIN a))
          (Int_of_num NumML._ONE)

  let _INT_MIN a =
        int_sub (int_neg (_INT_MAX a)) (Int_of_num NumML._ONE)

  let _UINT_MAX a =
        int_sub (Int_of_num (WordsML.dimword a)) (Int_of_num NumML._ONE)

  let i2w_itself (i,a) =
        (if int_lt i (fromString"0i") then
           WordsML.word_2comp (WordsML.N2w_itself (_Num (int_neg i),a))
         else WordsML.N2w_itself (_Num i,a))

  let w2i w =
        (if WordsML.word_msb w then
           int_neg (Int_of_num (WordsML.w2n (WordsML.word_2comp w)))
         else Int_of_num (WordsML.w2n w))

end
