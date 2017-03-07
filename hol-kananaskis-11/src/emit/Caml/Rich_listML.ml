module Rich_listML : Rich_listML =
struct

  type num = NumML.num

  open PairML
  open NumML
  open ListML

  let _AND_EL = _EVERY CombinML._I

  let rec _DROP n l =
            (if n = ZERO then
               l
             else
               (if l = [] then
                  raise (Failure "DROP: List too short")
                else _DROP (_PRE n) (_TL l)))

  let rec _ELL n l =
            (if n = ZERO then _LAST l else _ELL (_PRE n) (_FRONT l))

  let rec _TAKE n l =
            (if n = ZERO then
               []
             else
               (if l = [] then
                  raise (Failure "TAKE: List too short")
                else _HD l::_TAKE (_PRE n) (_TL l)))

  let rec _BUTLASTN n l =
            (let m = _LENGTH l
             in
                (if (<=) n m then
                   _TAKE ((-) m n) l
                 else raise (Failure "BUTLASTN: longer than list")))

  let rec _LASTN n l =
            (let m = _LENGTH l
             in
                (if (<=) n m then
                   _DROP ((-) m n) l
                 else raise (Failure "LASTN: longer than list")))

  let rec isPREFIX v0 v1 = match v0,v1 with
      [],l -> true
    | x::l,[] -> false
    | x2::l2,x1::l1 -> (x1 = x2) && isPREFIX l2 l1

  let rec _IS_SUBLIST v0 v1 = match v0,v1 with
      l,[] -> true
    | [],x::l -> false
    | x1::l1,x2::l2 ->
        (x1 = x2) && isPREFIX l2 l1 || _IS_SUBLIST l1 (x2::l2)

  let _OR_EL = _EXISTS CombinML._I

  let rec _SPLITP_AUX v0 v1 v2 = match v0,v1,v2 with
      acc,_P,[] -> (acc,[])
    | acc,_P,h::t ->
        (if _P h then
           (acc,h::t)
         else _SPLITP_AUX (_APPEND acc [h]) _P t)

  let rec _LUPDATE v0 v1 v2 = match v0,v1,v2 with
      e,n,[] -> []
    | e,n,x::l -> (if n = ZERO then e::l else x::_LUPDATE e (_PRE n) l)

  let _SPLITP x' x = _SPLITP_AUX [] x' x

  let _PREFIX _P l = _FST (_SPLITP (CombinML.o not _P) l)

  let rec _REPLICATE n l =
            (if n = ZERO then [] else l::_REPLICATE (_PRE n) l)

  let rec _SCANL v0 v1 v2 = match v0,v1,v2 with
      f,e,[] -> [e]
    | f,e,x::l -> e::_SCANL f (f e x) l

  let rec _SCANR v0 v1 v2 = match v0,v1,v2 with
      f,e,[] -> [e]
    | f,e,x::l -> f x (_HD (_SCANR f e l))::_SCANR f e l

  let rec _SEG m k l =
            (if m = ZERO then
               []
             else
               (if l = [] then
                  raise (Failure "SEG: List too short")
                else
                  (if k = ZERO then
                     _HD l::_SEG (_PRE m) ZERO (_TL l)
                   else _SEG m (_PRE k) (_TL l))))

  let _SUFFIX _P l =
        _FOLDL (function l' -> (function x ->
          (if _P x then _SNOC x l' else []))) [] l

  let _UNZIP_FST l = _FST (_UNZIP l)

  let _UNZIP_SND l = _SND (_UNZIP l)

end
