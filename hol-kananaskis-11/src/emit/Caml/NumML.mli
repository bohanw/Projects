module type NumML =
sig
  type num = ZERO | BIT1 of num | BIT2 of num
  val _SUC : num -> num
  val iZ : num -> num
  val iiSUC : num -> num
  val (+) : num -> num -> num
  val (<) : num -> num -> bool
  val (<=) : num -> num -> bool
  val (>) : num -> num -> bool
  val (>=) : num -> num -> bool
  val _PRE : num -> num
  val iDUB : num -> num
  val iSUB : bool -> num -> num -> num
  val (-) : num -> num -> num
  val ( * ) : num -> num -> num
  val iSQR : num -> num
  val _EXP : num -> num -> num
  val _EVEN : num -> bool
  val _ODD : num -> bool
  val _FACT : num -> num
  val _FUNPOW : ('a -> 'a) -> num -> 'a -> 'a
  val _MIN : num -> num -> num
  val _MAX : num -> num -> num
  val _WHILE : ('a -> bool) -> ('a -> 'a) -> 'a -> 'a
  val _LEAST : (num -> bool) -> num
  val findq : num * (num * num) -> num
  val _DIVMOD : num * (num * num) -> num * num
  val _DIV : num -> num -> num
  val _MOD : num -> num -> num
  val _DIV2 : num -> num
  val _MOD_2EXP : num -> num -> num
  val _DIV_2EXP : num -> num -> num
  val measure : ('a -> num) -> 'a -> 'a -> bool
  val num_size : num -> num
  val _NUMERAL : num -> num
  val _ONE : num
  val _TWO : num
  val int_of_holnum     : num -> int
  val holnum_of_int     : int -> num
  val big_int_of_holnum : num -> Big_int.big_int
  val holnum_of_big_int : Big_int.big_int -> num
  val fromString : string -> num
  val toString   : num -> string
end
