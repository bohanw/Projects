module type SumML =
sig
  type ('a,'b)sum = INL of 'a | INR of 'b
  val _OUTL : ('a, 'b) sum -> 'a
  val _OUTR : ('a, 'b) sum -> 'b
  val _ISL : ('a, 'b) sum -> bool
  val _ISR : ('a, 'b) sum -> bool
end
