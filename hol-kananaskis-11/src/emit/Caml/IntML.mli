module type IntML =
sig
  type num = NumML.num
  type 'a itself = 'a FcpML.itself
  type 'a word = 'a WordsML.word

  type int
  val fromString : string -> int
  val int_neg : int -> int
  val _Num : int -> num
  val int_lt : int -> int -> bool
  val int_le : int -> int -> bool
  val int_gt : int -> int -> bool
  val int_ge : int -> int -> bool
  val _ABS : int -> int
  val int_add : int -> int -> int
  val int_sub : int -> int -> int
  val int_mul : int -> int -> int
  val int_exp : int -> num -> int
  val int_div : int -> int -> int
  val int_mod : int -> int -> int
  val int_quot : int -> int -> int
  val int_rem : int -> int -> int
  val _INT_MAX : 'a itself -> int
  val _INT_MIN : 'a itself -> int
  val _UINT_MAX : 'a itself -> int
  val i2w_itself : int * 'a itself -> 'a word
  val w2i : 'a word -> int
end
