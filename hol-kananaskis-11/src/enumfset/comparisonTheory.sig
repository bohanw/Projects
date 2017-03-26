signature comparisonTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val bool_cmp_curried_def : thm
    val bool_cmp_tupled_primitive_def : thm
    val char_cmp_def : thm
    val equiv_inj_def : thm
    val good_cmp_def : thm
    val invert_def : thm
    val list_cmp_curried_def : thm
    val list_cmp_tupled_primitive_def : thm
    val num_cmp_def : thm
    val option_cmp2_curried_def : thm
    val option_cmp2_tupled_primitive_def : thm
    val option_cmp_curried_def : thm
    val option_cmp_tupled_primitive_def : thm
    val pair_cmp_def : thm
    val resp_equiv2_def : thm
    val resp_equiv_def : thm
    val string_cmp_def : thm

  (*  Theorems  *)
    val TO_inv_invert : thm
    val TotOrder_imp_good_cmp : thm
    val antisym_resp_equiv : thm
    val bool_cmp_antisym : thm
    val bool_cmp_def : thm
    val bool_cmp_good : thm
    val bool_cmp_ind : thm
    val char_cmp_antisym : thm
    val char_cmp_charOrd : thm
    val char_cmp_good : thm
    val cmp_thms : thm
    val comparison_case_def : thm
    val comparison_distinct : thm
    val comparison_nchotomy : thm
    val good_cmp_thm : thm
    val good_cmp_trans : thm
    val invert_eq_EQUAL : thm
    val list_cmp_ListOrd : thm
    val list_cmp_antisym : thm
    val list_cmp_cong : thm
    val list_cmp_def : thm
    val list_cmp_equal_list_rel : thm
    val list_cmp_good : thm
    val list_cmp_ind : thm
    val num_cmp_antisym : thm
    val num_cmp_good : thm
    val num_cmp_numOrd : thm
    val option_cmp2_TO_inv : thm
    val option_cmp2_antisym : thm
    val option_cmp2_cong : thm
    val option_cmp2_def : thm
    val option_cmp2_good : thm
    val option_cmp2_ind : thm
    val option_cmp_antisym : thm
    val option_cmp_cong : thm
    val option_cmp_def : thm
    val option_cmp_good : thm
    val option_cmp_ind : thm
    val pair_cmp_antisym : thm
    val pair_cmp_cong : thm
    val pair_cmp_good : thm
    val pair_cmp_lexTO : thm
    val string_cmp_antisym : thm
    val string_cmp_good : thm
    val string_cmp_stringto : thm

  val comparison_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [toto] Parent theory of "comparison"

   [bool_cmp_curried_def]  Definition

      |- ∀x x1. bool_cmp x x1 = bool_cmp_tupled (x,x1)

   [bool_cmp_tupled_primitive_def]  Definition

      |- bool_cmp_tupled =
         WFREC (@R. WF R)
           (λbool_cmp_tupled a.
              case a of
                (T,T) => I Equal
              | (T,F) => I Greater
              | (F,T) => I Less
              | (F,F) => I Equal)

   [char_cmp_def]  Definition

      |- ∀c1 c2. char_cmp c1 c2 = num_cmp (ORD c1) (ORD c2)

   [equiv_inj_def]  Definition

      |- ∀cmp cmp2 f.
           equiv_inj cmp cmp2 f ⇔
           ∀k1 k2. cmp2 (f k1) (f k2) = Equal ⇒ cmp k1 k2 = Equal

   [good_cmp_def]  Definition

      |- ∀cmp.
           good_cmp cmp ⇔
           (∀x. cmp x x = Equal) ∧
           (∀x y. cmp x y = Equal ⇒ cmp y x = Equal) ∧
           (∀x y. cmp x y = Greater ⇔ cmp y x = Less) ∧
           (∀x y z. cmp x y = Equal ∧ cmp y z = Less ⇒ cmp x z = Less) ∧
           (∀x y z. cmp x y = Less ∧ cmp y z = Equal ⇒ cmp x z = Less) ∧
           (∀x y z. cmp x y = Equal ∧ cmp y z = Equal ⇒ cmp x z = Equal) ∧
           ∀x y z. cmp x y = Less ∧ cmp y z = Less ⇒ cmp x z = Less

   [invert_def]  Definition

      |- invert Greater = Less ∧ invert Less = Greater ∧
         invert Equal = Equal

   [list_cmp_curried_def]  Definition

      |- ∀x x1 x2. list_cmp x x1 x2 = list_cmp_tupled (x,x1,x2)

   [list_cmp_tupled_primitive_def]  Definition

      |- list_cmp_tupled =
         WFREC
           (@R.
              WF R ∧
              ∀y2 y1 x2 x1 cmp.
                cmp x1 x2 = Equal ⇒ R (cmp,y1,y2) (cmp,x1::y1,x2::y2))
           (λlist_cmp_tupled a.
              case a of
                (cmp,[],[]) => I Equal
              | (cmp,[],x::y) => I Less
              | (cmp,x'::y',[]) => I Greater
              | (cmp,x'::y',x2::y2) =>
                  I
                    (case cmp x' x2 of
                       Less => Less
                     | Equal => list_cmp_tupled (cmp,y',y2)
                     | Greater => Greater))

   [num_cmp_def]  Definition

      |- ∀n1 n2.
           num_cmp n1 n2 =
           if n1 = n2 then Equal else if n1 < n2 then Less else Greater

   [option_cmp2_curried_def]  Definition

      |- ∀x x1 x2. option_cmp2 x x1 x2 = option_cmp2_tupled (x,x1,x2)

   [option_cmp2_tupled_primitive_def]  Definition

      |- option_cmp2_tupled =
         WFREC (@R. WF R)
           (λoption_cmp2_tupled a.
              case a of
                (cmp,NONE,NONE) => I Equal
              | (cmp,NONE,SOME x) => I Greater
              | (cmp,SOME x',NONE) => I Less
              | (cmp,SOME x',SOME y) => I (cmp x' y))

   [option_cmp_curried_def]  Definition

      |- ∀x x1 x2. option_cmp x x1 x2 = option_cmp_tupled (x,x1,x2)

   [option_cmp_tupled_primitive_def]  Definition

      |- option_cmp_tupled =
         WFREC (@R. WF R)
           (λoption_cmp_tupled a.
              case a of
                (cmp,NONE,NONE) => I Equal
              | (cmp,NONE,SOME x) => I Less
              | (cmp,SOME x',NONE) => I Greater
              | (cmp,SOME x',SOME y) => I (cmp x' y))

   [pair_cmp_def]  Definition

      |- ∀cmp1 cmp2 x y.
           pair_cmp cmp1 cmp2 x y =
           case cmp1 (FST x) (FST y) of
             Less => Less
           | Equal => cmp2 (SND x) (SND y)
           | Greater => Greater

   [resp_equiv2_def]  Definition

      |- ∀cmp cmp2 f.
           resp_equiv2 cmp cmp2 f ⇔
           ∀k1 k2. cmp k1 k2 = Equal ⇒ cmp2 (f k1) (f k2) = Equal

   [resp_equiv_def]  Definition

      |- ∀cmp f.
           resp_equiv cmp f ⇔ ∀k1 k2 v. cmp k1 k2 = Equal ⇒ f k1 v = f k2 v

   [string_cmp_def]  Definition

      |- string_cmp = list_cmp char_cmp

   [TO_inv_invert]  Theorem

      |- ∀c. TotOrd c ⇒ TO_inv c = CURRY (invert o UNCURRY c)

   [TotOrder_imp_good_cmp]  Theorem

      |- ∀cmp. TotOrd cmp ⇒ good_cmp cmp

   [antisym_resp_equiv]  Theorem

      |- ∀cmp f.
           (∀x y. cmp x y = Equal ⇒ x = y) ⇒
           resp_equiv cmp f ∧ ∀cmp2. good_cmp cmp2 ⇒ resp_equiv2 cmp cmp2 f

   [bool_cmp_antisym]  Theorem

      |- ∀x y. bool_cmp x y = Equal ⇔ (x ⇔ y)

   [bool_cmp_def]  Theorem

      |- bool_cmp T T = Equal ∧ bool_cmp F F = Equal ∧
         bool_cmp T F = Greater ∧ bool_cmp F T = Less

   [bool_cmp_good]  Theorem

      |- good_cmp bool_cmp

   [bool_cmp_ind]  Theorem

      |- ∀P. P T T ∧ P F F ∧ P T F ∧ P F T ⇒ ∀v v1. P v v1

   [char_cmp_antisym]  Theorem

      |- ∀x y. char_cmp x y = Equal ⇔ x = y

   [char_cmp_charOrd]  Theorem

      |- char_cmp = charOrd

   [char_cmp_good]  Theorem

      |- good_cmp char_cmp

   [cmp_thms]  Theorem

      |- (Less ≠ Equal ∧ Less ≠ Greater ∧ Equal ≠ Greater) ∧
         ((∀v0 v1 v2.
             (case Less of Less => v0 | Equal => v1 | Greater => v2) =
             v0) ∧
          (∀v0 v1 v2.
             (case Equal of Less => v0 | Equal => v1 | Greater => v2) =
             v1) ∧
          ∀v0 v1 v2.
            (case Greater of Less => v0 | Equal => v1 | Greater => v2) =
            v2) ∧ (∀a. a = Less ∨ a = Equal ∨ a = Greater) ∧
         ∀cmp.
           good_cmp cmp ⇔
           (∀x. cmp x x = Equal) ∧
           (∀x y. cmp x y = Equal ⇒ cmp y x = Equal) ∧
           (∀x y. cmp x y = Greater ⇔ cmp y x = Less) ∧
           (∀x y z. cmp x y = Equal ∧ cmp y z = Less ⇒ cmp x z = Less) ∧
           (∀x y z. cmp x y = Less ∧ cmp y z = Equal ⇒ cmp x z = Less) ∧
           (∀x y z. cmp x y = Equal ∧ cmp y z = Equal ⇒ cmp x z = Equal) ∧
           ∀x y z. cmp x y = Less ∧ cmp y z = Less ⇒ cmp x z = Less

   [comparison_case_def]  Theorem

      |- (∀v0 v1 v2.
            (case Less of Less => v0 | Equal => v1 | Greater => v2) = v0) ∧
         (∀v0 v1 v2.
            (case Equal of Less => v0 | Equal => v1 | Greater => v2) =
            v1) ∧
         ∀v0 v1 v2.
           (case Greater of Less => v0 | Equal => v1 | Greater => v2) = v2

   [comparison_distinct]  Theorem

      |- Less ≠ Equal ∧ Less ≠ Greater ∧ Equal ≠ Greater

   [comparison_nchotomy]  Theorem

      |- ∀a. a = Less ∨ a = Equal ∨ a = Greater

   [good_cmp_thm]  Theorem

      |- ∀cmp.
           good_cmp cmp ⇔
           (∀x. cmp x x = Equal) ∧
           ∀x y z.
             (cmp x y = Greater ⇔ cmp y x = Less) ∧
             (cmp x y = Less ∧ cmp y z = Equal ⇒ cmp x z = Less) ∧
             (cmp x y = Less ∧ cmp y z = Less ⇒ cmp x z = Less)

   [good_cmp_trans]  Theorem

      |- ∀cmp. good_cmp cmp ⇒ transitive (λ(k,v) (k',v'). cmp k k' = Less)

   [invert_eq_EQUAL]  Theorem

      |- ∀x. invert x = Equal ⇔ x = Equal

   [list_cmp_ListOrd]  Theorem

      |- ∀c. TotOrd c ⇒ list_cmp c = ListOrd (TO c)

   [list_cmp_antisym]  Theorem

      |- ∀cmp x y.
           (∀x y. cmp x y = Equal ⇔ x = y) ⇒
           (list_cmp cmp x y = Equal ⇔ x = y)

   [list_cmp_cong]  Theorem

      |- ∀cmp l1 l2 cmp' l1' l2'.
           l1 = l1' ∧ l2 = l2' ∧
           (∀x x'. MEM x l1' ∧ MEM x' l2' ⇒ cmp x x' = cmp' x x') ⇒
           list_cmp cmp l1 l2 = list_cmp cmp' l1' l2'

   [list_cmp_def]  Theorem

      |- (∀cmp. list_cmp cmp [] [] = Equal) ∧
         (∀y x cmp. list_cmp cmp [] (x::y) = Less) ∧
         (∀y x cmp. list_cmp cmp (x::y) [] = Greater) ∧
         ∀y2 y1 x2 x1 cmp.
           list_cmp cmp (x1::y1) (x2::y2) =
           case cmp x1 x2 of
             Less => Less
           | Equal => list_cmp cmp y1 y2
           | Greater => Greater

   [list_cmp_equal_list_rel]  Theorem

      |- ∀cmp l1 l2.
           list_cmp cmp l1 l2 = Equal ⇔
           LIST_REL (λx y. cmp x y = Equal) l1 l2

   [list_cmp_good]  Theorem

      |- ∀cmp. good_cmp cmp ⇒ good_cmp (list_cmp cmp)

   [list_cmp_ind]  Theorem

      |- ∀P.
           (∀cmp. P cmp [] []) ∧ (∀cmp x y. P cmp [] (x::y)) ∧
           (∀cmp x y. P cmp (x::y) []) ∧
           (∀cmp x1 y1 x2 y2.
              (cmp x1 x2 = Equal ⇒ P cmp y1 y2) ⇒
              P cmp (x1::y1) (x2::y2)) ⇒
           ∀v v1 v2. P v v1 v2

   [num_cmp_antisym]  Theorem

      |- ∀x y. num_cmp x y = Equal ⇔ x = y

   [num_cmp_good]  Theorem

      |- good_cmp num_cmp

   [num_cmp_numOrd]  Theorem

      |- num_cmp = numOrd

   [option_cmp2_TO_inv]  Theorem

      |- ∀c. option_cmp2 c = TO_inv (option_cmp (TO_inv c))

   [option_cmp2_antisym]  Theorem

      |- ∀cmp x y.
           (∀x y. cmp x y = Equal ⇔ x = y) ⇒
           (option_cmp2 cmp x y = Equal ⇔ x = y)

   [option_cmp2_cong]  Theorem

      |- ∀cmp v1 v2 cmp' v1' v2'.
           v1 = v1' ∧ v2 = v2' ∧
           (∀x x'. v1' = SOME x ∧ v2' = SOME x' ⇒ cmp x x' = cmp' x x') ⇒
           option_cmp2 cmp v1 v2 = option_cmp2 cmp' v1' v2'

   [option_cmp2_def]  Theorem

      |- option_cmp2 cmp NONE NONE = Equal ∧
         option_cmp2 cmp NONE (SOME x') = Greater ∧
         option_cmp2 cmp (SOME x) NONE = Less ∧
         option_cmp2 cmp (SOME x) (SOME y) = cmp x y

   [option_cmp2_good]  Theorem

      |- ∀cmp. good_cmp cmp ⇒ good_cmp (option_cmp2 cmp)

   [option_cmp2_ind]  Theorem

      |- ∀P.
           (∀cmp. P cmp NONE NONE) ∧ (∀cmp x. P cmp NONE (SOME x)) ∧
           (∀cmp x. P cmp (SOME x) NONE) ∧
           (∀cmp x y. P cmp (SOME x) (SOME y)) ⇒
           ∀v v1 v2. P v v1 v2

   [option_cmp_antisym]  Theorem

      |- ∀cmp x y.
           (∀x y. cmp x y = Equal ⇔ x = y) ⇒
           (option_cmp cmp x y = Equal ⇔ x = y)

   [option_cmp_cong]  Theorem

      |- ∀cmp v1 v2 cmp' v1' v2'.
           v1 = v1' ∧ v2 = v2' ∧
           (∀x x'. v1' = SOME x ∧ v2' = SOME x' ⇒ cmp x x' = cmp' x x') ⇒
           option_cmp cmp v1 v2 = option_cmp cmp' v1' v2'

   [option_cmp_def]  Theorem

      |- option_cmp cmp NONE NONE = Equal ∧
         option_cmp cmp NONE (SOME x') = Less ∧
         option_cmp cmp (SOME x) NONE = Greater ∧
         option_cmp cmp (SOME x) (SOME y) = cmp x y

   [option_cmp_good]  Theorem

      |- ∀cmp. good_cmp cmp ⇒ good_cmp (option_cmp cmp)

   [option_cmp_ind]  Theorem

      |- ∀P.
           (∀cmp. P cmp NONE NONE) ∧ (∀cmp x. P cmp NONE (SOME x)) ∧
           (∀cmp x. P cmp (SOME x) NONE) ∧
           (∀cmp x y. P cmp (SOME x) (SOME y)) ⇒
           ∀v v1 v2. P v v1 v2

   [pair_cmp_antisym]  Theorem

      |- ∀cmp1 cmp2 x y.
           (∀x y. cmp1 x y = Equal ⇔ x = y) ∧
           (∀x y. cmp2 x y = Equal ⇔ x = y) ⇒
           (pair_cmp cmp1 cmp2 x y = Equal ⇔ x = y)

   [pair_cmp_cong]  Theorem

      |- ∀cmp1 cmp2 v1 v2 cmp1' cmp2' v1' v2'.
           v1 = v1' ∧ v2 = v2' ∧
           (∀a b c d. v1' = (a,b) ∧ v2' = (c,d) ⇒ cmp1 a c = cmp1' a c) ∧
           (∀a b c d. v1' = (a,b) ∧ v2' = (c,d) ⇒ cmp2 b d = cmp2' b d) ⇒
           pair_cmp cmp1 cmp2 v1 v2 = pair_cmp cmp1' cmp2' v1' v2'

   [pair_cmp_good]  Theorem

      |- ∀cmp1 cmp2.
           good_cmp cmp1 ∧ good_cmp cmp2 ⇒ good_cmp (pair_cmp cmp1 cmp2)

   [pair_cmp_lexTO]  Theorem

      |- ∀R V. TotOrd R ∧ TotOrd V ⇒ pair_cmp R V = R lexTO V

   [string_cmp_antisym]  Theorem

      |- ∀x y. string_cmp x y = Equal ⇔ x = y

   [string_cmp_good]  Theorem

      |- good_cmp string_cmp

   [string_cmp_stringto]  Theorem

      |- string_cmp = apto stringto


*)
end
