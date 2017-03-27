module PairML : PairML =
struct

  let _CURRY f x y = f (x,y)

  let _UNCURRY f (x,y) = f x y

  let _FST (x,y) = x

  let _SND (x,y) = y

  let (^^) f g (x,y) = (f x,g y)

  let _LEX _R1 _R2 (a,b) (c,d) = _R1 a c || (a = c) && _R2 b d

end
