module type PairML =
sig
  val _CURRY : ('a * 'b -> 'c) -> 'a -> 'b -> 'c
  val _UNCURRY : ('a -> 'b -> 'c) -> 'a * 'b -> 'c
  val _FST : 'a * 'b -> 'a
  val _SND : 'a * 'b -> 'b
  val (^^) : ('a -> 'c) -> ('b -> 'd) -> 'a * 'b -> 'c * 'd
  val _LEX
     : ('a -> 'a -> bool) ->
       ('b -> 'b -> bool) -> 'a * 'b -> 'a * 'b -> bool
end
