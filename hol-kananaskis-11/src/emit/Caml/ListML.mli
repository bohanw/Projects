module type ListML =
sig
  type num = NumML.num
  val _MEM : 'a -> 'a list -> bool
  val _NULL : 'a list -> bool
  val _HD : 'a list -> 'a
  val _TL : 'a list -> 'a list
  val _APPEND : 'a list -> 'a list -> 'a list
  val _FLAT : 'a list list -> 'a list
  val _MAP : ('a -> 'b) -> 'a list -> 'b list
  val _FILTER : ('a -> bool) -> 'a list -> 'a list
  val _FOLDR : ('a -> 'b -> 'b) -> 'b -> 'a list -> 'b
  val _FOLDL : ('b -> 'a -> 'b) -> 'b -> 'a list -> 'b
  val _SNOC : 'a -> 'a list -> 'a list
  val _GENLIST : (num -> 'a) -> num -> 'a list
  val _EVERY : ('a -> bool) -> 'a list -> bool
  val _EXISTS : ('a -> bool) -> 'a list -> bool
  val _MAP2 : ('b -> 'c -> 'a) -> 'b list -> 'c list -> 'a list
  val _ZIP : 'a list * 'b list -> ('a * 'b) list
  val _UNZIP : ('a * 'b) list -> 'a list * 'b list
  val _REVERSE : 'a list -> 'a list
  val _LAST : 'a list -> 'a
  val _FRONT : 'a list -> 'a list
  val _EL : num -> 'a list -> 'a
  val _LENGTH : 'a list -> num
  val _LEN : 'a list -> num -> num
  val _REV : 'a list -> 'a list -> 'a list
  val _SUM : num list -> num
  val list_size : ('a -> num) -> 'a list -> num
  val _PAD_LEFT : 'a -> num -> 'a list -> 'a list
  val _PAD_RIGHT : 'a -> num -> 'a list -> 'a list
  val _ALL_DISTINCT : 'a list -> bool
end
