module BasicSizeML : BasicSizeML =
struct

  type num = NumML.num



  let bool_size b = NumML.ZERO

  let pair_size f g = (function (x,y) -> NumML.(+) (f x) (g y))

  let one_size x = NumML.ZERO

  let option_size v0 v1 = match v0,v1 with
      f,None -> NumML.ZERO
    | f,Some(x) -> NumML._SUC (f x)

end
