(* x64Lib - generated by L<3> - Wed Jul 17 15:09:12 2013 *)
structure x64Lib :> x64Lib =
struct

open HolKernel boolLib bossLib
open utilsLib x64Theory

val () = (numLib.prefer_num (); wordsLib.prefer_word ())

fun x64_compset thms =
   utilsLib.theory_compset (thms, x64Theory.inventory)

end
