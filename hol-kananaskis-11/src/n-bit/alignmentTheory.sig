signature alignmentTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val align_def : thm
    val aligned_def : thm
    val byte_align_def : thm
    val byte_aligned_def : thm

  (*  Theorems  *)
    val align_0 : thm
    val align_align : thm
    val align_aligned : thm
    val align_bitwise_and : thm
    val align_shift : thm
    val align_sub : thm
    val align_w2n : thm
    val aligned_0 : thm
    val aligned_1_lsb : thm
    val aligned_add_sub : thm
    val aligned_add_sub_123 : thm
    val aligned_add_sub_cor : thm
    val aligned_add_sub_prod : thm
    val aligned_align : thm
    val aligned_bit_count_upto : thm
    val aligned_bitwise_and : thm
    val aligned_extract : thm
    val aligned_ge_dim : thm
    val aligned_imp : thm
    val aligned_mul_shift_1 : thm
    val aligned_numeric : thm

  val alignment_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [words] Parent theory of "alignment"

   [align_def]  Definition

      |- ∀p w. align p w = (dimindex (:α) − 1 '' p) w

   [aligned_def]  Definition

      |- ∀p w. aligned p w ⇔ (align p w = w)

   [byte_align_def]  Definition

      |- ∀w. byte_align w = align (LOG2 (dimindex (:α) DIV 8)) w

   [byte_aligned_def]  Definition

      |- ∀w. byte_aligned w ⇔ aligned (LOG2 (dimindex (:α) DIV 8)) w

   [align_0]  Theorem

      |- ∀w. align 0 w = w

   [align_align]  Theorem

      |- ∀p w. align p (align p w) = align p w

   [align_aligned]  Theorem

      |- ∀p w. aligned p w ⇒ (align p w = w)

   [align_bitwise_and]  Theorem

      |- ∀p w. align p w = w && UINT_MAXw ≪ p

   [align_shift]  Theorem

      |- ∀p w. align p w = w ⋙ p ≪ p

   [align_sub]  Theorem

      |- ∀p w. align p w = if p = 0 then w else w − (p − 1 >< 0) w

   [align_w2n]  Theorem

      |- ∀p w. align p w = n2w (w2n w DIV 2 ** p * 2 ** p)

   [aligned_0]  Theorem

      |- (∀p. aligned p 0w) ∧ ∀w. aligned 0 w

   [aligned_1_lsb]  Theorem

      |- ∀w. aligned 1 w ⇔ ¬word_lsb w

   [aligned_add_sub]  Theorem

      |- ∀p a b.
           aligned p b ⇒
           (aligned p (a + b) ⇔ aligned p a) ∧
           (aligned p (a − b) ⇔ aligned p a)

   [aligned_add_sub_123]  Theorem

      |- (∀w x.
            (aligned 1 (w + 2w * x) ⇔ aligned 1 w) ∧
            (aligned 1 (w − 2w * x) ⇔ aligned 1 w)) ∧
         (∀x. aligned 1 (2w * x) ∧ aligned 1 (-2w * x)) ∧
         (∀w x.
            (aligned 2 (w + 4w * x) ⇔ aligned 2 w) ∧
            (aligned 2 (w − 4w * x) ⇔ aligned 2 w)) ∧
         (∀x. aligned 2 (4w * x) ∧ aligned 2 (-4w * x)) ∧
         (∀w x.
            (aligned 3 (w + 8w * x) ⇔ aligned 3 w) ∧
            (aligned 3 (w − 8w * x) ⇔ aligned 3 w)) ∧
         ∀x. aligned 3 (8w * x) ∧ aligned 3 (-8w * x)

   [aligned_add_sub_cor]  Theorem

      |- ∀p a b.
           aligned p a ∧ aligned p b ⇒
           aligned p (a + b) ∧ aligned p (a − b)

   [aligned_add_sub_prod]  Theorem

      |- ∀p w x.
           (aligned p (w + 1w ≪ p * x) ⇔ aligned p w) ∧
           (aligned p (w − 1w ≪ p * x) ⇔ aligned p w)

   [aligned_align]  Theorem

      |- ∀p w. aligned p (align p w)

   [aligned_bit_count_upto]  Theorem

      |- ∀p w. aligned p w ⇔ (bit_count_upto (MIN (dimindex (:α)) p) w = 0)

   [aligned_bitwise_and]  Theorem

      |- ∀p w. aligned p w ⇔ (w && n2w (2 ** p − 1) = 0w)

   [aligned_extract]  Theorem

      |- ∀p w. aligned p w ⇔ (p = 0) ∨ ((p − 1 >< 0) w = 0w)

   [aligned_ge_dim]  Theorem

      |- ∀p w. dimindex (:α) ≤ p ⇒ (aligned p w ⇔ (w = 0w))

   [aligned_imp]  Theorem

      |- ∀p q w. p < q ∧ aligned q w ⇒ aligned p w

   [aligned_mul_shift_1]  Theorem

      |- ∀p w. aligned p (1w ≪ p * w)

   [aligned_numeric]  Theorem

      |- (∀x. aligned 3 (n2w (NUMERAL (BIT2 (BIT1 (BIT1 x)))))) ∧
         (∀x. aligned 2 (n2w (NUMERAL (BIT2 (BIT1 x))))) ∧
         (∀x. aligned 1 (n2w (NUMERAL (BIT2 x)))) ∧
         (∀x. aligned 3 (-n2w (NUMERAL (BIT2 (BIT1 (BIT1 x)))))) ∧
         (∀x. aligned 2 (-n2w (NUMERAL (BIT2 (BIT1 x))))) ∧
         (∀x. aligned 1 (-n2w (NUMERAL (BIT2 x)))) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT1 (BIT1 (BIT1 (f x)))))) ⇔
            aligned 3 (y + 7w)) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT1 (BIT1 (BIT2 x))))) ⇔
            aligned 3 (y + 3w)) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT1 (BIT2 (BIT1 x))))) ⇔
            aligned 3 (y + 1w)) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT1 (BIT2 (BIT2 x))))) ⇔
            aligned 3 (y + 5w)) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT2 (BIT1 (BIT1 x))))) ⇔
            aligned 3 y) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT2 (BIT1 (BIT2 x))))) ⇔
            aligned 3 (y + 4w)) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT2 (BIT2 (BIT1 x))))) ⇔
            aligned 3 (y + 2w)) ∧
         (∀x y f.
            aligned 3 (y + n2w (NUMERAL (BIT2 (BIT2 (BIT2 x))))) ⇔
            aligned 3 (y + 6w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT1 (BIT1 (BIT1 (f x)))))) ⇔
            aligned 3 (y − 7w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT1 (BIT1 (BIT2 x))))) ⇔
            aligned 3 (y − 3w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT1 (BIT2 (BIT1 x))))) ⇔
            aligned 3 (y − 1w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT1 (BIT2 (BIT2 x))))) ⇔
            aligned 3 (y − 5w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT2 (BIT1 (BIT1 x))))) ⇔
            aligned 3 y) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT2 (BIT1 (BIT2 x))))) ⇔
            aligned 3 (y − 4w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT2 (BIT2 (BIT1 x))))) ⇔
            aligned 3 (y − 2w)) ∧
         (∀x y f.
            aligned 3 (y − n2w (NUMERAL (BIT2 (BIT2 (BIT2 x))))) ⇔
            aligned 3 (y − 6w)) ∧
         (∀x y f.
            aligned 2 (y + n2w (NUMERAL (BIT1 (BIT1 (f x))))) ⇔
            aligned 2 (y + 3w)) ∧
         (∀x y.
            aligned 2 (y + n2w (NUMERAL (BIT1 (BIT2 x)))) ⇔
            aligned 2 (y + 1w)) ∧
         (∀x y.
            aligned 2 (y + n2w (NUMERAL (BIT2 (BIT1 x)))) ⇔ aligned 2 y) ∧
         (∀x y.
            aligned 2 (y + n2w (NUMERAL (BIT2 (BIT2 x)))) ⇔
            aligned 2 (y + 2w)) ∧
         (∀x y f.
            aligned 2 (y − n2w (NUMERAL (BIT1 (BIT1 (f x))))) ⇔
            aligned 2 (y − 3w)) ∧
         (∀x y.
            aligned 2 (y − n2w (NUMERAL (BIT1 (BIT2 x)))) ⇔
            aligned 2 (y − 1w)) ∧
         (∀x y.
            aligned 2 (y − n2w (NUMERAL (BIT2 (BIT1 x)))) ⇔ aligned 2 y) ∧
         (∀x y.
            aligned 2 (y − n2w (NUMERAL (BIT2 (BIT2 x)))) ⇔
            aligned 2 (y − 2w)) ∧
         (∀x y f.
            aligned 1 (y + n2w (NUMERAL (BIT1 (f x)))) ⇔
            aligned 1 (y + 1w)) ∧
         (∀x y f.
            aligned 1 (y − n2w (NUMERAL (BIT1 (f x)))) ⇔
            aligned 1 (y − 1w)) ∧
         (∀x y. aligned 1 (y + n2w (NUMERAL (BIT2 x))) ⇔ aligned 1 y) ∧
         ∀x y. aligned 1 (y − n2w (NUMERAL (BIT2 x))) ⇔ aligned 1 y


*)
end
