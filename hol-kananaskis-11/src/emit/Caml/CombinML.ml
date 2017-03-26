module CombinML : CombinML =
struct

  let _S f g x = f x (g x)

  let _K x y = x

  let _I x = x

  let _W f x = f x x

  let _C f x y = f y x

  let o f g x = f (g x)

  let _UPDATE a b f c = (if a = c then b else f c)

end
