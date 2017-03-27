module FcpML : FcpML =
struct

  type num = NumML.num



  open NumML

  type 'b itself = ITSELF of num
  type ('a,'b)cart = FCPi of ((num -> 'a) * 'b itself)
  type 'a bit0 = BIT0A of 'a | BIT0B of 'a
  type 'a bit1 = BIT1A of 'a | BIT1B of 'a | BIT1C
  let _SUMi (ITSELF a,ITSELF b) = ITSELF ((+) a b)

  let _MULi (ITSELF a,ITSELF b) = ITSELF (( * ) a b)

  let _EXPi (ITSELF a,ITSELF b) = ITSELF (_EXP a b)

  let dimindex (ITSELF a) = a

  let mk_fcp x = FCPi x

  let rec fcp_index (FCPi (f,b)) n =
            (if (<) n (dimindex b) then
               f n
             else raise (Failure "fcp_index: FCP out of bounds"))

  let (?+) x y (FCPi (f,b)) =
        FCPi ((function c -> (if x = c then y else f c)),b)

end
