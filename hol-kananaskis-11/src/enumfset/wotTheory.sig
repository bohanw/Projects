signature wotTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val StrongWellOrder_def : thm
    val WeakWellOrder_def : thm
    val chain_def : thm
    val cpl_def : thm
    val mex_def : thm
    val mex_less_def : thm
    val mex_less_eq_def : thm
    val preds_image_def : thm
    val setsuc_def : thm
    val succl_def : thm
    val tower_def : thm
    val uncl_def : thm

  (*  Theorems  *)
    val StrongWellOrderExists : thm

  val wot_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [quantHeuristics] Parent theory of "wot"

   [rich_list] Parent theory of "wot"

   [StrongWellOrder_def]  Definition

      |- !R. StrongWellOrder R <=> StrongLinearOrder R /\ WF R

   [WeakWellOrder_def]  Definition

      |- !R.
           WeakWellOrder R <=>
           WeakOrder R /\
           !B. B <> {} ==> ?m. m IN B /\ !b. b IN B ==> R m b

   [chain_def]  Definition

      |- !C. chain C <=> !a b. a IN C /\ b IN C ==> a cpl b

   [cpl_def]  Definition

      |- !A B. A cpl B <=> A SUBSET B \/ B SUBSET A

   [mex_def]  Definition

      |- !s. mex s = CHOICE (COMPL s)

   [mex_less_def]  Definition

      |- $mex_less = STRORD $mex_less_eq

   [mex_less_eq_def]  Definition

      |- !a b. a mex_less_eq b <=> preds a SUBSET preds b

   [preds_image_def]  Definition

      |- !X. preds_image X = {preds x | x IN X}

   [setsuc_def]  Definition

      |- !s. setsuc s = mex s INSERT s

   [succl_def]  Definition

      |- !c. succl c <=> !s. s IN c ==> setsuc s IN c

   [tower_def]  Definition

      |- !A. tower A <=> succl A /\ uncl A

   [uncl_def]  Definition

      |- !c. uncl c <=> !w. w SUBSET c /\ chain w ==> BIGUNION w IN c

   [StrongWellOrderExists]  Theorem

      |- ?R. StrongLinearOrder R /\ WF R


*)
end
