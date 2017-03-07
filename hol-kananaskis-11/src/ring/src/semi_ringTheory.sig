signature semi_ringTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val is_semi_ring_def : thm
    val semi_ring_SR0 : thm
    val semi_ring_SR0_fupd : thm
    val semi_ring_SR1 : thm
    val semi_ring_SR1_fupd : thm
    val semi_ring_SRM : thm
    val semi_ring_SRM_fupd : thm
    val semi_ring_SRP : thm
    val semi_ring_SRP_fupd : thm
    val semi_ring_TY_DEF : thm
    val semi_ring_case_def : thm
    val semi_ring_size_def : thm

  (*  Theorems  *)
    val EXISTS_semi_ring : thm
    val FORALL_semi_ring : thm
    val datatype_semi_ring : thm
    val distr_left : thm
    val distr_right : thm
    val mult_assoc : thm
    val mult_one_left : thm
    val mult_one_right : thm
    val mult_permute : thm
    val mult_rotate : thm
    val mult_sym : thm
    val mult_zero_left : thm
    val mult_zero_right : thm
    val plus_assoc : thm
    val plus_permute : thm
    val plus_rotate : thm
    val plus_sym : thm
    val plus_zero_left : thm
    val plus_zero_right : thm
    val semi_ring_11 : thm
    val semi_ring_Axiom : thm
    val semi_ring_accessors : thm
    val semi_ring_accfupds : thm
    val semi_ring_case_cong : thm
    val semi_ring_component_equality : thm
    val semi_ring_fn_updates : thm
    val semi_ring_fupdcanon : thm
    val semi_ring_fupdcanon_comp : thm
    val semi_ring_fupdfupds : thm
    val semi_ring_fupdfupds_comp : thm
    val semi_ring_induction : thm
    val semi_ring_literal_11 : thm
    val semi_ring_literal_nchotomy : thm
    val semi_ring_nchotomy : thm
    val semi_ring_updates_eq_literal : thm

  val semi_ring_grammars : type_grammar.grammar * term_grammar.grammar

  val IMPORT : abstraction.inst_infos ->
    { is_semi_ring_def : thm,
      semi_ring_SRM_fupd : thm,
      semi_ring_SRP_fupd : thm,
      semi_ring_SR1_fupd : thm,
      semi_ring_SR0_fupd : thm,
      semi_ring_SRM : thm,
      semi_ring_SRP : thm,
      semi_ring_SR1 : thm,
      semi_ring_SR0 : thm,
      semi_ring_size_def : thm,
      semi_ring_case_def : thm,
      semi_ring_TY_DEF : thm,
      mult_permute : thm,
      mult_rotate : thm,
      plus_permute : thm,
      plus_rotate : thm,
      distr_right : thm,
      mult_zero_right : thm,
      mult_one_right : thm,
      plus_zero_right : thm,
      distr_left : thm,
      mult_zero_left : thm,
      mult_one_left : thm,
      plus_zero_left : thm,
      mult_assoc : thm,
      mult_sym : thm,
      plus_assoc : thm,
      plus_sym : thm,
      semi_ring_induction : thm,
      semi_ring_Axiom : thm,
      semi_ring_nchotomy : thm,
      semi_ring_case_cong : thm,
      semi_ring_11 : thm,
      datatype_semi_ring : thm,
      semi_ring_literal_11 : thm,
      EXISTS_semi_ring : thm,
      FORALL_semi_ring : thm,
      semi_ring_literal_nchotomy : thm,
      semi_ring_updates_eq_literal : thm,
      semi_ring_component_equality : thm,
      semi_ring_fupdcanon_comp : thm,
      semi_ring_fupdcanon : thm,
      semi_ring_fupdfupds_comp : thm,
      semi_ring_fupdfupds : thm,
      semi_ring_accfupds : thm,
      semi_ring_fn_updates : thm,
      semi_ring_accessors : thm }

(*
   [basicSize] Parent theory of "semi_ring"

   [ind_type] Parent theory of "semi_ring"

   [is_semi_ring_def]  Definition

      |- ∀r.
           is_semi_ring r ⇔
           (∀n m. r.SRP n m = r.SRP m n) ∧
           (∀n m p. r.SRP n (r.SRP m p) = r.SRP (r.SRP n m) p) ∧
           (∀n m. r.SRM n m = r.SRM m n) ∧
           (∀n m p. r.SRM n (r.SRM m p) = r.SRM (r.SRM n m) p) ∧
           (∀n. r.SRP r.SR0 n = n) ∧ (∀n. r.SRM r.SR1 n = n) ∧
           (∀n. r.SRM r.SR0 n = r.SR0) ∧
           ∀n m p. r.SRM (r.SRP n m) p = r.SRP (r.SRM n p) (r.SRM m p)

   [semi_ring_SR0]  Definition

      |- ∀a a0 f f0. (semi_ring a a0 f f0).SR0 = a

   [semi_ring_SR0_fupd]  Definition

      |- ∀f1 a a0 f f0.
           semi_ring a a0 f f0 with SR0 updated_by f1 =
           semi_ring (f1 a) a0 f f0

   [semi_ring_SR1]  Definition

      |- ∀a a0 f f0. (semi_ring a a0 f f0).SR1 = a0

   [semi_ring_SR1_fupd]  Definition

      |- ∀f1 a a0 f f0.
           semi_ring a a0 f f0 with SR1 updated_by f1 =
           semi_ring a (f1 a0) f f0

   [semi_ring_SRM]  Definition

      |- ∀a a0 f f0. (semi_ring a a0 f f0).SRM = f0

   [semi_ring_SRM_fupd]  Definition

      |- ∀f1 a a0 f f0.
           semi_ring a a0 f f0 with SRM updated_by f1 =
           semi_ring a a0 f (f1 f0)

   [semi_ring_SRP]  Definition

      |- ∀a a0 f f0. (semi_ring a a0 f f0).SRP = f

   [semi_ring_SRP_fupd]  Definition

      |- ∀f1 a a0 f f0.
           semi_ring a a0 f f0 with SRP updated_by f1 =
           semi_ring a a0 (f1 f) f0

   [semi_ring_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'semi_ring' .
                  (∀a0'.
                     (∃a0 a1 a2 a3.
                        a0' =
                        (λa0 a1 a2 a3.
                           ind_type$CONSTR 0 (a0,a1,a2,a3)
                             (λn. ind_type$BOTTOM)) a0 a1 a2 a3) ⇒
                     'semi_ring' a0') ⇒
                  'semi_ring' a0') rep

   [semi_ring_case_def]  Definition

      |- ∀a0 a1 a2 a3 f.
           semi_ring_CASE (semi_ring a0 a1 a2 a3) f = f a0 a1 a2 a3

   [semi_ring_size_def]  Definition

      |- ∀f a0 a1 a2 a3.
           semi_ring_size f (semi_ring a0 a1 a2 a3) = 1 + (f a0 + f a1)

   [EXISTS_semi_ring]  Theorem

      |- ∀P.
           (∃s. P s) ⇔
           ∃a0 a f0 f. P <|SR0 := a0; SR1 := a; SRP := f0; SRM := f|>

   [FORALL_semi_ring]  Theorem

      |- ∀P.
           (∀s. P s) ⇔
           ∀a0 a f0 f. P <|SR0 := a0; SR1 := a; SRP := f0; SRM := f|>

   [datatype_semi_ring]  Theorem

      |- DATATYPE (record semi_ring SR0 SR1 SRP SRM)

   [distr_left]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀n m p. r.SRM (r.SRP n m) p = r.SRP (r.SRM n p) (r.SRM m p)

   [distr_right]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀m n p. r.SRM m (r.SRP n p) = r.SRP (r.SRM m n) (r.SRM m p)

   [mult_assoc]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀n m p. r.SRM n (r.SRM m p) = r.SRM (r.SRM n m) p

   [mult_one_left]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n. r.SRM r.SR1 n = n

   [mult_one_right]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n. r.SRM n r.SR1 = n

   [mult_permute]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀m n p. r.SRM (r.SRM m n) p = r.SRM (r.SRM m p) n

   [mult_rotate]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀m n p. r.SRM (r.SRM m n) p = r.SRM (r.SRM n p) m

   [mult_sym]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n m. r.SRM n m = r.SRM m n

   [mult_zero_left]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n. r.SRM r.SR0 n = r.SR0

   [mult_zero_right]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n. r.SRM n r.SR0 = r.SR0

   [plus_assoc]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀n m p. r.SRP n (r.SRP m p) = r.SRP (r.SRP n m) p

   [plus_permute]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀m n p. r.SRP (r.SRP m n) p = r.SRP (r.SRP m p) n

   [plus_rotate]  Theorem

      |- ∀r.
           is_semi_ring r ⇒
           ∀m n p. r.SRP (r.SRP m n) p = r.SRP (r.SRP n p) m

   [plus_sym]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n m. r.SRP n m = r.SRP m n

   [plus_zero_left]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n. r.SRP r.SR0 n = n

   [plus_zero_right]  Theorem

      |- ∀r. is_semi_ring r ⇒ ∀n. r.SRP n r.SR0 = n

   [semi_ring_11]  Theorem

      |- ∀a0 a1 a2 a3 a0' a1' a2' a3'.
           (semi_ring a0 a1 a2 a3 = semi_ring a0' a1' a2' a3') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2') ∧ (a3 = a3')

   [semi_ring_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a0 a1 a2 a3. fn (semi_ring a0 a1 a2 a3) = f a0 a1 a2 a3

   [semi_ring_accessors]  Theorem

      |- (∀a a0 f f0. (semi_ring a a0 f f0).SR0 = a) ∧
         (∀a a0 f f0. (semi_ring a a0 f f0).SR1 = a0) ∧
         (∀a a0 f f0. (semi_ring a a0 f f0).SRP = f) ∧
         ∀a a0 f f0. (semi_ring a a0 f f0).SRM = f0

   [semi_ring_accfupds]  Theorem

      |- (∀s f. (s with SR1 updated_by f).SR0 = s.SR0) ∧
         (∀s f. (s with SRP updated_by f).SR0 = s.SR0) ∧
         (∀s f. (s with SRM updated_by f).SR0 = s.SR0) ∧
         (∀s f. (s with SR0 updated_by f).SR1 = s.SR1) ∧
         (∀s f. (s with SRP updated_by f).SR1 = s.SR1) ∧
         (∀s f. (s with SRM updated_by f).SR1 = s.SR1) ∧
         (∀s f. (s with SR0 updated_by f).SRP = s.SRP) ∧
         (∀s f. (s with SR1 updated_by f).SRP = s.SRP) ∧
         (∀s f. (s with SRM updated_by f).SRP = s.SRP) ∧
         (∀s f. (s with SR0 updated_by f).SRM = s.SRM) ∧
         (∀s f. (s with SR1 updated_by f).SRM = s.SRM) ∧
         (∀s f. (s with SRP updated_by f).SRM = s.SRM) ∧
         (∀s f. (s with SR0 updated_by f).SR0 = f s.SR0) ∧
         (∀s f. (s with SR1 updated_by f).SR1 = f s.SR1) ∧
         (∀s f. (s with SRP updated_by f).SRP = f s.SRP) ∧
         ∀s f. (s with SRM updated_by f).SRM = f s.SRM

   [semi_ring_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧
           (∀a0 a1 a2 a3.
              (M' = semi_ring a0 a1 a2 a3) ⇒
              (f a0 a1 a2 a3 = f' a0 a1 a2 a3)) ⇒
           (semi_ring_CASE M f = semi_ring_CASE M' f')

   [semi_ring_component_equality]  Theorem

      |- ∀s1 s2.
           (s1 = s2) ⇔
           (s1.SR0 = s2.SR0) ∧ (s1.SR1 = s2.SR1) ∧ (s1.SRP = s2.SRP) ∧
           (s1.SRM = s2.SRM)

   [semi_ring_fn_updates]  Theorem

      |- (∀f1 a a0 f f0.
            semi_ring a a0 f f0 with SR0 updated_by f1 =
            semi_ring (f1 a) a0 f f0) ∧
         (∀f1 a a0 f f0.
            semi_ring a a0 f f0 with SR1 updated_by f1 =
            semi_ring a (f1 a0) f f0) ∧
         (∀f1 a a0 f f0.
            semi_ring a a0 f f0 with SRP updated_by f1 =
            semi_ring a a0 (f1 f) f0) ∧
         ∀f1 a a0 f f0.
           semi_ring a a0 f f0 with SRM updated_by f1 =
           semi_ring a a0 f (f1 f0)

   [semi_ring_fupdcanon]  Theorem

      |- (∀s g f.
            s with <|SR1 updated_by f; SR0 updated_by g|> =
            s with <|SR0 updated_by g; SR1 updated_by f|>) ∧
         (∀s g f.
            s with <|SRP updated_by f; SR0 updated_by g|> =
            s with <|SR0 updated_by g; SRP updated_by f|>) ∧
         (∀s g f.
            s with <|SRP updated_by f; SR1 updated_by g|> =
            s with <|SR1 updated_by g; SRP updated_by f|>) ∧
         (∀s g f.
            s with <|SRM updated_by f; SR0 updated_by g|> =
            s with <|SR0 updated_by g; SRM updated_by f|>) ∧
         (∀s g f.
            s with <|SRM updated_by f; SR1 updated_by g|> =
            s with <|SR1 updated_by g; SRM updated_by f|>) ∧
         ∀s g f.
           s with <|SRM updated_by f; SRP updated_by g|> =
           s with <|SRP updated_by g; SRM updated_by f|>

   [semi_ring_fupdcanon_comp]  Theorem

      |- ((∀g f. SR1_fupd f o SR0_fupd g = SR0_fupd g o SR1_fupd f) ∧
          ∀h g f.
            SR1_fupd f o SR0_fupd g o h = SR0_fupd g o SR1_fupd f o h) ∧
         ((∀g f. SRP_fupd f o SR0_fupd g = SR0_fupd g o SRP_fupd f) ∧
          ∀h g f.
            SRP_fupd f o SR0_fupd g o h = SR0_fupd g o SRP_fupd f o h) ∧
         ((∀g f. SRP_fupd f o SR1_fupd g = SR1_fupd g o SRP_fupd f) ∧
          ∀h g f.
            SRP_fupd f o SR1_fupd g o h = SR1_fupd g o SRP_fupd f o h) ∧
         ((∀g f. SRM_fupd f o SR0_fupd g = SR0_fupd g o SRM_fupd f) ∧
          ∀h g f.
            SRM_fupd f o SR0_fupd g o h = SR0_fupd g o SRM_fupd f o h) ∧
         ((∀g f. SRM_fupd f o SR1_fupd g = SR1_fupd g o SRM_fupd f) ∧
          ∀h g f.
            SRM_fupd f o SR1_fupd g o h = SR1_fupd g o SRM_fupd f o h) ∧
         (∀g f. SRM_fupd f o SRP_fupd g = SRP_fupd g o SRM_fupd f) ∧
         ∀h g f. SRM_fupd f o SRP_fupd g o h = SRP_fupd g o SRM_fupd f o h

   [semi_ring_fupdfupds]  Theorem

      |- (∀s g f.
            s with <|SR0 updated_by f; SR0 updated_by g|> =
            s with SR0 updated_by f o g) ∧
         (∀s g f.
            s with <|SR1 updated_by f; SR1 updated_by g|> =
            s with SR1 updated_by f o g) ∧
         (∀s g f.
            s with <|SRP updated_by f; SRP updated_by g|> =
            s with SRP updated_by f o g) ∧
         ∀s g f.
           s with <|SRM updated_by f; SRM updated_by g|> =
           s with SRM updated_by f o g

   [semi_ring_fupdfupds_comp]  Theorem

      |- ((∀g f. SR0_fupd f o SR0_fupd g = SR0_fupd (f o g)) ∧
          ∀h g f. SR0_fupd f o SR0_fupd g o h = SR0_fupd (f o g) o h) ∧
         ((∀g f. SR1_fupd f o SR1_fupd g = SR1_fupd (f o g)) ∧
          ∀h g f. SR1_fupd f o SR1_fupd g o h = SR1_fupd (f o g) o h) ∧
         ((∀g f. SRP_fupd f o SRP_fupd g = SRP_fupd (f o g)) ∧
          ∀h g f. SRP_fupd f o SRP_fupd g o h = SRP_fupd (f o g) o h) ∧
         (∀g f. SRM_fupd f o SRM_fupd g = SRM_fupd (f o g)) ∧
         ∀h g f. SRM_fupd f o SRM_fupd g o h = SRM_fupd (f o g) o h

   [semi_ring_induction]  Theorem

      |- ∀P. (∀a a0 f f0. P (semi_ring a a0 f f0)) ⇒ ∀s. P s

   [semi_ring_literal_11]  Theorem

      |- ∀a01 a1 f01 f1 a02 a2 f02 f2.
           (<|SR0 := a01; SR1 := a1; SRP := f01; SRM := f1|> =
            <|SR0 := a02; SR1 := a2; SRP := f02; SRM := f2|>) ⇔
           (a01 = a02) ∧ (a1 = a2) ∧ (f01 = f02) ∧ (f1 = f2)

   [semi_ring_literal_nchotomy]  Theorem

      |- ∀s. ∃a0 a f0 f. s = <|SR0 := a0; SR1 := a; SRP := f0; SRM := f|>

   [semi_ring_nchotomy]  Theorem

      |- ∀ss. ∃a a0 f f0. ss = semi_ring a a0 f f0

   [semi_ring_updates_eq_literal]  Theorem

      |- ∀s a0 a f0 f.
           s with <|SR0 := a0; SR1 := a; SRP := f0; SRM := f|> =
           <|SR0 := a0; SR1 := a; SRP := f0; SRM := f|>


*)
end
