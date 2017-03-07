module type OptionML =
sig
  val _OPTION_MAP : ('a -> 'b) -> 'a option -> 'b option
  val _IS_SOME : 'a option -> bool
  val _IS_NONE : 'a option -> bool
  val _THE : 'a option -> 'a
  val _OPTION_JOIN : 'a option option -> 'a option
end
