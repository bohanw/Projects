module type BasicSizeML =
sig
  type num = NumML.num

  val bool_size : bool -> num
  val pair_size : ('a -> num) -> ('b -> num) -> 'a * 'b -> num
  val one_size : unit -> num
  val option_size : ('a -> num) -> 'a option -> num
end
