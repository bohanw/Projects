module type SortingML =
sig
  val _PART
     : ('a -> bool) ->
       'a list -> 'a list -> 'a list -> 'a list * 'a list
  val _PARTITION : ('a -> bool) -> 'a list -> 'a list * 'a list
  val _QSORT : ('a -> 'a -> bool) -> 'a list -> 'a list
  val _SORTED : ('a -> 'a -> bool) -> 'a list -> bool
end
