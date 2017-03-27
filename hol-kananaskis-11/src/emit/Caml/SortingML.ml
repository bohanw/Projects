module SortingML : SortingML =
struct

  open ListML

  let rec _PART v0 v1 v2 v3 = match v0,v1,v2,v3 with
      _P,[],l1,l2 -> (l1,l2)
    | _P,h::rst,l1,l2 ->
        (if _P h then
           _PART _P rst (h::l1) l2
         else _PART _P rst l1 (h::l2))

  let _PARTITION _P l = _PART _P l [] []

  let rec _QSORT v0 v1 = match v0,v1 with
      ord,[] -> []
    | ord,h::t ->
        (let (l1,l2) = _PARTITION (function y -> ord y h) t
         in
            _APPEND (_APPEND (_QSORT ord l1) [h]) (_QSORT ord l2))

  let rec _SORTED v0 v1 = match v0,v1 with
      _R,[] -> true
    | _R,[x] -> true
    | _R,x::y::rst -> _R x y && _SORTED _R (y::rst)

end
