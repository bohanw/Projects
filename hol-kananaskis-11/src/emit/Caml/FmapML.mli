module type FmapML =
sig
  type num = NumML.num
  type 'a set = 'a SetML.set

  type ('a,'b) fmap
  val _FDOM     : ('a,'b) fmap -> 'a set
  val _FRANGE   : ('a,'b) fmap -> 'b set
  val _FAPPLY : ('a, 'b) fmap -> 'a -> 'b
  val _FCARD : ('a, 'b) fmap -> num
  val _FLOOKUP : ('a, 'b) fmap -> 'a -> 'b option
  val _FUPDATE_LIST : ('a, 'b) fmap -> ('a * 'b) list -> ('a, 'b) fmap
  val _FUNION : ('a, 'b) fmap -> ('a, 'b) fmap -> ('a, 'b) fmap
  val fdomsub : ('a, 'b) fmap -> 'a -> ('a, 'b) fmap
  val _SUBMAP : ('a, 'b) fmap -> ('a, 'b) fmap -> bool
  val _DRESTRICT : ('a, 'b) fmap -> ('a -> bool) -> ('a, 'b) fmap
  val _RRESTRICT : ('a, 'b) fmap -> ('b -> bool) -> ('a, 'b) fmap
  val o_f : ('b -> 'c) -> ('a, 'b) fmap -> ('a, 'c) fmap
  val _FEVERY : ('a * 'b -> bool) -> ('a, 'b) fmap -> bool
end
