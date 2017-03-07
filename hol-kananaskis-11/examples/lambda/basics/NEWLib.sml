structure NEWLib :> NEWLib =
struct

open HolKernel boolLib BasicProvers simpLib basic_swapTheory

val string_ty = stringSyntax.string_ty
val strset_finite_t = inst [alpha |-> string_ty] pred_setSyntax.finite_tm
fun NEW_TAC vname t (asl, g) = let
  val var = mk_var(vname, string_ty)
  open pred_setTheory
  val fresh_thm =
      (CONV_RULE (RAND_CONV (REWRITE_CONV [IN_INSERT, IN_UNION, DE_MORGAN_THM,
                                           NOT_IN_EMPTY])) o
       SPEC t) new_exists
  fun is_finitestrset t = free_in strset_finite_t t
  val finite_asms = filter is_finitestrset asl
  val finiteness_discharged0 =
      CONV_RULE (LAND_CONV (SIMP_CONV (srw_ss()) (map ASSUME finite_asms)))
                fresh_thm
  val finiteness_discharged =
      MP finiteness_discharged0 TRUTH
      handle HOL_ERR _ =>
       raise mk_HOL_ERR "NEWLib" "NEW_TAC"
                        ("Finiteness discharge left with "^
                         Parse.term_to_string
                             (lhand (concl finiteness_discharged0)))
in
  X_CHOOSE_THEN var STRIP_ASSUME_TAC finiteness_discharged
end (asl, g)

(* ----------------------------------------------------------------------
    NEW_ELIM_TAC
   ---------------------------------------------------------------------- *)

fun NEW_ELIM_TAC (asl, w) = let
  val newt = find_term (can (match_term ``NEW (X:string set)``)) w
in
  CONV_TAC (UNBETA_CONV newt) THEN MATCH_MP_TAC NEW_ELIM_RULE THEN
  SIMP_TAC (srw_ss()) []
end (asl, w)

end (* struct *)
