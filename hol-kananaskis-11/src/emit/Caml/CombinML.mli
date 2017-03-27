module type CombinML =
sig
  val _S : ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c
  val _K : 'a -> 'b -> 'a
  val _I : 'a -> 'a
  val _W : ('a -> 'a -> 'b) -> 'a -> 'b
  val _C : ('a -> 'b -> 'c) -> 'b -> 'a -> 'c
  val o : ('c -> 'b) -> ('a -> 'c) -> 'a -> 'b
  val _UPDATE : 'a -> 'b -> ('a -> 'b) -> 'a -> 'b
end
