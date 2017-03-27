module SetML : SetML =
struct

  type num = NumML.num



  type 'a set = EMPTY | INSERT of 'a * 'a set



  let _IN v0 v1 = match v0,v1 with
      x,EMPTY -> false
    | x,INSERT (y,s) -> (x = y) || _IN x s

  let rec _UNION v0 v1 = match v0,v1 with
      EMPTY,s -> s
    | INSERT (x,s),t ->
        (if _IN x t then _UNION s t else INSERT (x,_UNION s t))

  let rec _INTER v0 v1 = match v0,v1 with
      EMPTY,s -> EMPTY
    | INSERT (x,s),t ->
        (if _IN x t then INSERT (x,_INTER s t) else _INTER s t)

  let rec _DELETE v0 v1 = match v0,v1 with
      EMPTY,x -> EMPTY
    | INSERT (x,s),y ->
        (if x = y then _DELETE s y else INSERT (x,_DELETE s y))

  let rec _DIFF v0 v1 = match v0,v1 with
      s,EMPTY -> s
    | s,INSERT (x,t) -> _DIFF (_DELETE s x) t

  let rec _SUBSET v0 v1 = match v0,v1 with
      EMPTY,s -> true
    | INSERT (x,s),t -> _IN x t && _SUBSET s t

  let _PSUBSET s1 s2 = _SUBSET s1 s2 && not (_SUBSET s2 s1)

  let rec _IMAGE v0 v1 = match v0,v1 with
      f,EMPTY -> EMPTY
    | f,INSERT (x,s) -> INSERT (f x,_IMAGE f s)

  let rec _BIGUNION v0 = match v0 with
      EMPTY -> EMPTY
    | INSERT (s,_P) -> _UNION s (_BIGUNION _P)

  let rec _BIGINTER v0 = match v0 with
      EMPTY -> raise (Failure "BIGINTER: empty set")
    | INSERT (_P,EMPTY) -> _P
    | INSERT (_P,_B) -> _INTER _P (_BIGINTER _B)

  let rec _CARD v0 = match v0 with
      EMPTY -> NumML.ZERO
    | INSERT (x,s) ->
        (if _IN x s then _CARD s else NumML._SUC (_CARD s))

  let rec _DISJOINT v0 v1 = match v0,v1 with
      EMPTY,s -> true
    | INSERT (x,s),t -> _DISJOINT s t && not (_IN x t)

  let rec _CROSS v0 v1 = match v0,v1 with
      EMPTY,s2 -> EMPTY
    | INSERT (a,s1),s2 ->
        _UNION (_IMAGE (function y -> (a,y)) s2) (_CROSS s1 s2)

  let rec _LIST_TO_SET v0 = match v0 with
      [] -> EMPTY
    | h::t -> INSERT (h,_LIST_TO_SET t)

  let _IS_EMPTY v0 = match v0 with
      EMPTY -> true
    | INSERT (x,s) -> false

  let rec _SUM_IMAGE v0 v1 = match v0,v1 with
      f,EMPTY -> NumML.ZERO
    | f,INSERT (e,s) -> NumML.(+) (f e) (_SUM_IMAGE f (_DELETE s e))

  let rec _SUM_SET v0 = match v0 with
      EMPTY -> NumML.ZERO
    | INSERT (x,s) -> NumML.(+) x (_SUM_SET (_DELETE s x))

  let rec _MAX_SET v0 = match v0 with
      EMPTY -> NumML.ZERO
    | INSERT (e,s) -> NumML._MAX e (_MAX_SET s)

  let rec _MIN_SET v0 = match v0 with
      EMPTY -> raise (Failure "MIN_SET: empty set")
    | INSERT (e,EMPTY) -> e
    | INSERT (e1,INSERT (e2,s)) ->
        NumML._MIN e1 (_MIN_SET (INSERT (e2,s)))

  let rec count n =
            (if n = NumML.ZERO then
               EMPTY
             else (let p = NumML._PRE n in INSERT (p,count p)))

  let rec _POW v0 = match v0 with
      EMPTY -> INSERT (EMPTY,EMPTY)
    | INSERT (e,s) ->
        (let ps = _POW s
         in
            _UNION (_IMAGE (function v1 -> INSERT (e,v1)) ps) ps)

end
