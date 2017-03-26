module type SetML =
sig
  type num = NumML.num

  type 'a set = EMPTY | INSERT of 'a * 'a set

  val _IN        : 'a -> 'a set -> bool
  val _UNION     : 'a set -> 'a set -> 'a set
  val _INTER     : 'a set -> 'a set -> 'a set
  val _DELETE    : 'a set -> 'a -> 'a set
  val _DIFF      : 'a set -> 'a set -> 'a set
  val _SUBSET    : 'a set -> 'a set -> bool
  val _PSUBSET   : 'a set -> 'a set -> bool
  val _IMAGE     : ('a -> 'b) -> 'a set -> 'b set
  val _BIGUNION  : 'a set set -> 'a set
  val _BIGINTER  : 'a set set -> 'a set
  val _CARD      : 'a set -> num
  val _DISJOINT  : 'a set -> 'a set -> bool
  val _CROSS     : 'a set -> 'b set -> ('a * 'b) set
  val _SUM_IMAGE : ('a -> num) -> 'a set -> num
  val _SUM_SET   : num set -> num
  val _MAX_SET   : num set -> num
  val _MIN_SET   : num set -> num
  val count      : num -> num set
  val _POW       : 'a set -> 'a set set
end
