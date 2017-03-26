module NumML : NumML =
struct

  type num = ZERO | BIT1 of num | BIT2 of num
  let num_size x = x

  let _NUMERAL x = x

  let _ONE = BIT1 ZERO

  let _TWO = BIT2 ZERO

  let rec _SUC v0 = match v0 with
      ZERO -> _ONE
    | BIT1 n -> BIT2 n
    | BIT2 n -> BIT1 (_SUC n)

  let iZ x = x

  let iiSUC n = _SUC (_SUC n)

  let rec (+) v0 v1 = match v0,v1 with
      ZERO,n -> n
    | n,ZERO -> n
    | BIT1 n,BIT1 m -> BIT2 ((+) n m)
    | BIT1 n,BIT2 m -> BIT1 (_SUC ((+) n m))
    | BIT2 n,BIT1 m -> BIT1 (_SUC ((+) n m))
    | BIT2 n,BIT2 m -> BIT2 (_SUC ((+) n m))

  let rec (<) v0 v1 = match v0,v1 with
      ZERO,BIT1 n -> true
    | ZERO,BIT2 n -> true
    | n,ZERO -> false
    | BIT1 n,BIT1 m -> (<) n m
    | BIT2 n,BIT2 m -> (<) n m
    | BIT1 n,BIT2 m -> not ((<) m n)
    | BIT2 n,BIT1 m -> (<) n m

  let rec (<=) v0 v1 = match v0,v1 with
      ZERO,n -> true
    | BIT1 n,ZERO -> false
    | BIT2 n,ZERO -> false
    | BIT1 n,BIT1 m -> (<=) n m
    | BIT1 n,BIT2 m -> (<=) n m
    | BIT2 n,BIT1 m -> not ((<=) m n)
    | BIT2 n,BIT2 m -> (<=) n m

  let (>) m n = (<) n m

  let (>=) m n = (>) m n || (m = n)

  let rec _PRE v0 = match v0 with
      ZERO -> ZERO
    | BIT1 ZERO -> ZERO
    | BIT1 (BIT1 n) -> BIT2 (_PRE (BIT1 n))
    | BIT1 (BIT2 n) -> BIT2 (BIT1 n)
    | BIT2 n -> BIT1 n

  let rec iDUB v0 = match v0 with
      BIT1 n -> BIT2 (iDUB n)
    | BIT2 n -> BIT2 (BIT1 n)
    | ZERO -> ZERO

  let rec iSUB v0 v1 v2 = match v0,v1,v2 with
      b,ZERO,x -> ZERO
    | true,n,ZERO -> n
    | false,BIT1 n,ZERO -> iDUB n
    | true,BIT1 n,BIT1 m -> iDUB (iSUB true n m)
    | false,BIT1 n,BIT1 m -> BIT1 (iSUB false n m)
    | true,BIT1 n,BIT2 m -> BIT1 (iSUB false n m)
    | false,BIT1 n,BIT2 m -> iDUB (iSUB false n m)
    | false,BIT2 n,ZERO -> BIT1 n
    | true,BIT2 n,BIT1 m -> BIT1 (iSUB true n m)
    | false,BIT2 n,BIT1 m -> iDUB (iSUB true n m)
    | true,BIT2 n,BIT2 m -> iDUB (iSUB true n m)
    | false,BIT2 n,BIT2 m -> BIT1 (iSUB false n m)

  let (-) n m = (if (<) m n then iSUB true n m else ZERO)

  let rec ( * ) v0 v1 = match v0,v1 with
      ZERO,n -> ZERO
    | n,ZERO -> ZERO
    | BIT1 n,m -> iZ ((+) (iDUB (( * ) n m)) m)
    | BIT2 n,m -> iDUB (iZ ((+) (( * ) n m) m))

  let iSQR x = ( * ) x x

  let rec _EXP v0 v1 = match v0,v1 with
      n,ZERO -> _ONE
    | n,BIT1 m -> ( * ) n (iSQR (_EXP n m))
    | n,BIT2 m -> ( * ) (iSQR n) (iSQR (_EXP n m))

  let _EVEN v0 = match v0 with
      ZERO -> true
    | BIT2 n -> true
    | BIT1 n -> false

  let _ODD v0 = match v0 with
      ZERO -> false
    | BIT2 n -> false
    | BIT1 n -> true

  let rec _FACT v0 = match v0 with
      ZERO -> _ONE
    | BIT1 n -> ( * ) (BIT1 n) (_FACT (_PRE (BIT1 n)))
    | BIT2 n -> ( * ) (BIT2 n) (_FACT (BIT1 n))

  let rec _FUNPOW v0 v1 v2 = match v0,v1,v2 with
      f,ZERO,x -> x
    | f,BIT1 n,x -> _FUNPOW f (_PRE (BIT1 n)) (f x)
    | f,BIT2 n,x -> _FUNPOW f (BIT1 n) (f x)

  let _MIN v0 v1 = match v0,v1 with
      ZERO,x -> ZERO
    | x,ZERO -> ZERO
    | x,y -> (if (<) x y then x else y)

  let _MAX v0 v1 = match v0,v1 with
      ZERO,x -> x
    | x,ZERO -> x
    | x,y -> (if (<) x y then y else x)

  let rec _WHILE _P g x = (if _P x then _WHILE _P g (g x) else x)

  let _LEAST _P = _WHILE (CombinML.o not _P) _SUC ZERO

  let rec findq (a,(m,n)) =
            (if n = ZERO then
               a
             else
               (let d = iDUB n
                in
                   (if (<) m d then a else findq (iDUB a,(m,d)))))

  let rec _DIVMOD (a,(m,n)) =
            (if n = ZERO then
               (ZERO,ZERO)
             else
               (if (<) m n then
                  (a,m)
                else
                  (let q = findq (_ONE,(m,n))
                   in
                      _DIVMOD ((+) a q,((-) m (( * ) n q),n)))))

  let rec _DIV v0 v1 = match v0,v1 with
      m,ZERO -> raise (Failure "DIV: zero denominator")
    | m,BIT1 n -> PairML._FST (_DIVMOD (ZERO,(m,BIT1 n)))
    | m,BIT2 n -> PairML._FST (_DIVMOD (ZERO,(m,BIT2 n)))

  let rec _MOD v0 v1 = match v0,v1 with
      m,ZERO -> raise (Failure "MOD: zero denominator")
    | m,BIT1 n -> PairML._SND (_DIVMOD (ZERO,(m,BIT1 n)))
    | m,BIT2 n -> PairML._SND (_DIVMOD (ZERO,(m,BIT2 n)))

  let _DIV2 v0 = match v0 with
      ZERO -> ZERO
    | BIT1 n -> n
    | BIT2 n -> _SUC n

  let rec _MOD_2EXP v0 v1 = match v0,v1 with
      ZERO,n -> ZERO
    | x,ZERO -> ZERO
    | BIT1 x,BIT1 n -> BIT1 (_MOD_2EXP ((-) (BIT1 x) _ONE) n)
    | BIT2 x,BIT1 n -> BIT1 (_MOD_2EXP (BIT1 x) n)
    | BIT1 x,BIT2 n -> iDUB (_MOD_2EXP ((-) (BIT1 x) _ONE) (_SUC n))
    | BIT2 x,BIT2 n -> iDUB (_MOD_2EXP (BIT1 x) (_SUC n))

  let _DIV_2EXP n x = _FUNPOW _DIV2 n x

  let measure f x y = (<) (f x) (f y)



  let rec int_of_holnum n = match n with
    ZERO -> 0
  | BIT1 x -> succ ((int_of_holnum x) lsl 1)
  | BIT2 x -> Pervasives.(+) ((int_of_holnum x) lsl 1) 2



  let rec holnum_of_int n =
    if n = 0 then ZERO
    else let q = n / 2 and r = n mod 2 in
         let m = holnum_of_int q in
     if r = 0 then iDUB m else BIT1 m



  let rec big_int_of_holnum n = match n with
    ZERO -> Big_int.zero_big_int
  | BIT1 x -> Big_int.succ_big_int
                (Big_int.mult_int_big_int 2 (big_int_of_holnum x))
  | BIT2 x -> Big_int.add_int_big_int 2
                (Big_int.mult_int_big_int 2 (big_int_of_holnum x))



  let rec holnum_of_big_int n =
    if Big_int.eq_big_int n Big_int.zero_big_int then ZERO
    else let (q,r) = Big_int.quomod_big_int n (Big_int.big_int_of_int 2) in
         let m = holnum_of_big_int q in
     if Big_int.eq_big_int r Big_int.zero_big_int then iDUB m else BIT1 m



  let fromString s = holnum_of_big_int (Big_int.big_int_of_string s)

  let toString n = Big_int.string_of_big_int (big_int_of_holnum n)

end
