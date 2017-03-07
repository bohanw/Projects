module type BitML =
sig
  type num = NumML.num

  val _TIMES_2EXP : num -> num -> num
  val _BITWISE : num -> (bool -> bool -> bool) -> num -> num -> num
  val _LOG : num -> num -> num
  val _LOWEST_SET_BIT : num -> num
  val l2n : num -> num list -> num
  val n2l : num -> num -> num list
  val s2n : num -> (char -> num) -> string -> num
  val n2s : num -> (num -> char) -> num -> string
  val _HEX : num -> char
  val _UNHEX : char -> num
  val num_from_bin_list : num list -> num
  val num_from_oct_list : num list -> num
  val num_from_dec_list : num list -> num
  val num_from_hex_list : num list -> num
  val num_to_bin_list : num -> num list
  val num_to_oct_list : num -> num list
  val num_to_dec_list : num -> num list
  val num_to_hex_list : num -> num list
  val num_from_bin_string : string -> num
  val num_from_oct_string : string -> num
  val num_from_dec_string : string -> num
  val num_from_hex_string : string -> num
  val num_to_bin_string : num -> string
  val num_to_oct_string : num -> string
  val num_to_dec_string : num -> string
  val num_to_hex_string : num -> string
  val _BIT_MODF
     : num -> (num -> bool -> bool) -> num -> num -> num -> num -> num
  val _BIT_MODIFY : num -> (num -> bool -> bool) -> num -> num
  val _BIT_REV : num -> num -> num -> num
  val _BIT_REVERSE : num -> num -> num
  val _LOG2 : num -> num
  val _DIVMOD_2EXP : num -> num -> num * num
  val _SBIT : bool -> num -> num
  val _BITS : num -> num -> num -> num
  val _MOD_2EXP_EQ : num -> num -> num -> bool
  val _BITV : num -> num -> num
  val _BIT : num -> num -> bool
  val _SLICE : num -> num -> num -> num
  val _SIGN_EXTEND : num -> num -> num -> num
  val _BOOLIFY : num -> num -> bool list -> bool list
end
