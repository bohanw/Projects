module type FcpML =
sig
  type num = NumML.num

  type 'b itself = ITSELF of num
  type ('a,'b) cart
  type 'a bit0
  type 'a bit1
  val _SUMi : 'a itself * 'b itself -> 'c itself
  val _MULi : 'a itself * 'b itself -> 'c itself
  val _EXPi : 'a itself * 'b itself -> 'c itself
  val dimindex : 'a itself -> num
  val mk_fcp : (num -> 'a) * 'b itself -> ('a, 'b) cart
  val fcp_index : ('a, 'b) cart -> num -> 'a
  val (?+) : num -> 'a -> ('a, 'b) cart -> ('a, 'b) cart
end
