module SumML : SumML =
struct

  type ('a,'b)sum = INL of 'a | INR of 'b
  let rec _OUTL v0 = match v0 with
      INL(x) -> x
    | INR(y) -> raise (Failure "OUTL: applied to INR")

  let rec _OUTR v0 = match v0 with
      INL(x) -> raise (Failure "OUTR: applied to INL")
    | INR(y) -> y

  let _ISL v0 = match v0 with
      INL(x) -> true
    | INR(y) -> false

  let _ISR v0 = match v0 with
      INL(x) -> false
    | INR(y) -> true

end
