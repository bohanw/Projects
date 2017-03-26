module type Rich_listML =
sig
  type num = NumML.num
  val _AND_EL : bool list -> bool
  val _DROP : num -> 'a list -> 'a list
  val _ELL : num -> 'a list -> 'a
  val _TAKE : num -> 'a list -> 'a list
  val _BUTLASTN : num -> 'a list -> 'a list
  val _LASTN : num -> 'a list -> 'a list
  val isPREFIX : 'a list -> 'a list -> bool
  val _IS_SUBLIST : 'a list -> 'a list -> bool
  val _OR_EL : bool list -> bool
  val _SPLITP_AUX
     : 'a list -> ('a -> bool) -> 'a list -> 'a list * 'a list
  val _LUPDATE : 'a -> num -> 'a list -> 'a list
  val _SPLITP : ('a -> bool) -> 'a list -> 'a list * 'a list
  val _PREFIX : ('a -> bool) -> 'a list -> 'a list
  val _REPLICATE : num -> 'a -> 'a list
  val _SCANL : ('b -> 'a -> 'b) -> 'b -> 'a list -> 'b list
  val _SCANR : ('a -> 'b -> 'b) -> 'b -> 'a list -> 'b list
  val _SEG : num -> num -> 'a list -> 'a list
  val _SUFFIX : ('a -> bool) -> 'a list -> 'a list
  val _UNZIP_FST : ('a * 'b) list -> 'a list
  val _UNZIP_SND : ('b * 'a) list -> 'a list
end
