module FmapML : FmapML =
struct

  type num = NumML.num

  type 'a set = 'a SetML.set



  type ('a,'b)fmap = FEMPTY | FUPDATE of ('a, 'b) fmap * ('a * 'b)
  open NumML
  open ListML
  open SetML
  open OptionML

  let rec _FDOM v0 = match v0 with
      FEMPTY -> EMPTY
    | FUPDATE (f,(a,b)) -> INSERT (a,_FDOM f)

  let rec _FAPPLY v0 v1 = match v0,v1 with
      FEMPTY,x -> raise (Failure "FAPPLY: empty map")
    | FUPDATE (f,(a,b)),x -> (if x = a then b else _FAPPLY f x)

  let _FCARD fm = _CARD (_FDOM fm)

  let _FLOOKUP f x =
        (if _IN x (_FDOM f) then Some(_FAPPLY f x) else None)

  let _FUPDATE_LIST x x' =
        _FOLDL (function v0 -> (function v1 -> FUPDATE (v0,v1))) x x'

  let rec _FUNION v0 v1 = match v0,v1 with
      FEMPTY,g -> g
    | f,FEMPTY -> f
    | FUPDATE (f,(x,y)),g -> FUPDATE (_FUNION f g,(x,y))

  let rec fdomsub v0 v1 = match v0,v1 with
      FEMPTY,k -> FEMPTY
    | FUPDATE (fm,(k1,v)),k2 ->
        (if k1 = k2 then
           fdomsub fm k2
         else FUPDATE (fdomsub fm k2,(k1,v)))

  let rec _SUBMAP v0 v1 = match v0,v1 with
      FEMPTY,f -> true
    | FUPDATE (f,(x,y)),g ->
        _IN x (_FDOM g) &&
        ((_FAPPLY g x = y) && _SUBMAP (fdomsub f x) (fdomsub g x))

  let rec _DRESTRICT v0 v1 = match v0,v1 with
      FEMPTY,r -> FEMPTY
    | FUPDATE (f,(x,y)),r ->
        (if r x then FUPDATE (_DRESTRICT f r,(x,y)) else _DRESTRICT f r)

  let rec _RRESTRICT v0 v1 = match v0,v1 with
      FEMPTY,_P -> FEMPTY
    | FUPDATE (f,(x,y)),_P ->
        (if _P y then
           FUPDATE (_RRESTRICT f _P,(x,y))
         else _RRESTRICT (_DRESTRICT f (function a -> not (a = x))) _P)

  let rec _FRANGE v0 = match v0 with
      FEMPTY -> EMPTY
    | FUPDATE (f,(x,y)) ->
        INSERT (y,_FRANGE (_DRESTRICT f (function a -> not (a = x))))

  let rec o_f v0 v1 = match v0,v1 with
      f,FEMPTY -> FEMPTY
    | f,FUPDATE (fm,(k,v)) -> FUPDATE (o_f f (fdomsub fm k),(k,f v))

  let rec _FEVERY v0 v1 = match v0,v1 with
      _P,FEMPTY -> true
    | _P,FUPDATE (f,(x,y)) ->
        _P (x,y) &&
        _FEVERY _P (_DRESTRICT f (function a -> not (a = x)))

end
