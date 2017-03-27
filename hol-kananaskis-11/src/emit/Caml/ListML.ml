module ListML : ListML =
struct

  type num = NumML.num

  open NumML

  let _NULL v0 = match v0 with
      [] -> true
    | h::t -> false

  let rec _HD v0 = match v0 with
      [] -> raise (Failure "HD: Empty list")
    | h::t -> h

  let rec _TL v0 = match v0 with
      [] -> raise (Failure "TL: Empty list")
    | h::t -> t

  let rec _APPEND v0 v1 = match v0,v1 with
      [],l -> l
    | h::l1,l2 -> h::_APPEND l1 l2

  let rec _FLAT v0 = match v0 with
      [] -> []
    | h::t -> _APPEND h (_FLAT t)

  let rec _MAP v0 v1 = match v0,v1 with
      f,[] -> []
    | f,h::t -> f h::_MAP f t

  let rec _FILTER v0 v1 = match v0,v1 with
      _P,[] -> []
    | _P,h::t -> (if _P h then h::_FILTER _P t else _FILTER _P t)

  let rec _FOLDR v0 v1 v2 = match v0,v1,v2 with
      f,e,[] -> e
    | f,e,x::l -> f x (_FOLDR f e l)

  let rec _FOLDL v0 v1 v2 = match v0,v1,v2 with
      f,e,[] -> e
    | f,e,x::l -> _FOLDL f (f e x) l

  let rec _SNOC v0 v1 = match v0,v1 with
      x,[] -> [x]
    | x,x'::l -> x'::_SNOC x l

  let rec _GENLIST f n =
            (if n = NumML.ZERO then
               []
             else _SNOC (f (NumML._PRE n)) (_GENLIST f (NumML._PRE n)))

  let rec _EVERY v0 v1 = match v0,v1 with
      _P,[] -> true
    | _P,h::t -> _P h && _EVERY _P t

  let rec _EXISTS v0 v1 = match v0,v1 with
      _P,[] -> false
    | _P,h::t -> _P h || _EXISTS _P t

  let rec _MAP2 v0 v1 v2 = match v0,v1,v2 with
      f,[],[] -> []
    | f,[],h::t -> raise (Failure "MAP2: unequal length lists")
    | f,h::t,[] -> raise (Failure "MAP2: unequal length lists")
    | f,h1::t1,h2::t2 -> f h1 h2::_MAP2 f t1 t2

  let rec _ZIP v0 = match v0 with
      ([],[]) -> []
    | ([],h::t) -> raise (Failure "ZIP: unequal length lists")
    | (h::t,[]) -> raise (Failure "ZIP: unequal length lists")
    | (x1::l1,x2::l2) -> (x1,x2)::_ZIP (l1,l2)

  let rec _UNZIP v0 = match v0 with
      [] -> ([],[])
    | (x,y)::t -> (let (_L1,_L2) = _UNZIP t in (x::_L1,y::_L2))

  let rec _REVERSE v0 = match v0 with
      [] -> []
    | h::t -> _APPEND (_REVERSE t) [h]

  let rec _LAST v0 = match v0 with
      [] -> raise (Failure "LAST: empty list")
    | [x] -> x
    | x::y::z -> _LAST (y::z)

  let rec _FRONT v0 = match v0 with
      [] -> raise (Failure "FRONT: empty list")
    | [x] -> []
    | x::y::z -> x::_FRONT (y::z)

  let rec _EL n l =
            (if n = NumML.ZERO then
               _HD l
             else _EL (NumML._PRE n) (_TL l))

  let rec _LENGTH v0 = match v0 with
      [] -> NumML.ZERO
    | h::t -> NumML.(+) (_LENGTH t) NumML._ONE

  let rec _LEN v0 v1 = match v0,v1 with
      [],n -> n
    | h::t,n -> _LEN t (NumML.(+) n NumML._ONE)

  let rec _REV v0 v1 = match v0,v1 with
      [],acc -> acc
    | h::t,acc -> _REV t (h::acc)

  let rec _SUM v0 = match v0 with
      [] -> NumML.ZERO
    | h::t -> NumML.(+) h (_SUM t)

  let rec list_size v0 v1 = match v0,v1 with
      f,[] -> NumML.ZERO
    | f,a0::a1 ->
        NumML.(+) NumML._ONE (NumML.(+) (f a0) (list_size f a1))

  let _PAD_LEFT c n s =
        _APPEND (_GENLIST (CombinML._K c) (NumML.(-) n (_LENGTH s))) s

  let _PAD_RIGHT c n s =
        _APPEND s (_GENLIST (CombinML._K c) (NumML.(-) n (_LENGTH s)))

  let _MEM v0 v1 = match v0,v1 with
      x,[] -> false
    | x,h::t -> (x = h) || _MEM x t

  let rec _ALL_DISTINCT v0 = match v0 with
      [] -> true
    | h::t -> not (_MEM h t) && _ALL_DISTINCT t

end
