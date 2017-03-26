signature llistTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val LAPPEND : thm
    val LCONS : thm
    val LDROP : thm
    val LFILTER : thm
    val LFINITE_def : thm
    val LFLATTEN : thm
    val LHD : thm
    val LLENGTH : thm
    val LMAP : thm
    val LNIL : thm
    val LNTH : thm
    val LPREFIX_def : thm
    val LTAKE : thm
    val LTL : thm
    val LUNFOLD : thm
    val LUNZIP_THM : thm
    val LZIP_THM : thm
    val every_def : thm
    val exists_def : thm
    val fromList : thm
    val linear_order_to_list_f_def : thm
    val llength_rel_def : thm
    val llist_TY_DEF : thm
    val llist_absrep : thm
    val lrep_ok_def : thm
    val toList : thm

  (*  Theorems  *)
    val LAPPEND_ASSOC : thm
    val LAPPEND_EQ_LNIL : thm
    val LAPPEND_NIL_2ND : thm
    val LAPPEND_fromList : thm
    val LCONS_11 : thm
    val LCONS_NOT_NIL : thm
    val LDROP1_THM : thm
    val LDROP_ADD : thm
    val LDROP_THM : thm
    val LFILTER_APPEND : thm
    val LFILTER_EQ_NIL : thm
    val LFILTER_NIL : thm
    val LFILTER_THM : thm
    val LFINITE : thm
    val LFINITE_APPEND : thm
    val LFINITE_DROP : thm
    val LFINITE_HAS_LENGTH : thm
    val LFINITE_INDUCTION : thm
    val LFINITE_LLENGTH : thm
    val LFINITE_LNTH_NONE : thm
    val LFINITE_MAP : thm
    val LFINITE_STRONG_INDUCTION : thm
    val LFINITE_TAKE : thm
    val LFINITE_THM : thm
    val LFINITE_cases : thm
    val LFINITE_fromList : thm
    val LFINITE_ind : thm
    val LFINITE_rules : thm
    val LFINITE_strongind : thm
    val LFINITE_toList : thm
    val LFINITE_toList_SOME : thm
    val LFLATTEN_APPEND : thm
    val LFLATTEN_EQ_NIL : thm
    val LFLATTEN_SINGLETON : thm
    val LFLATTEN_THM : thm
    val LHDTL_CONS_THM : thm
    val LHDTL_EQ_SOME : thm
    val LHD_EQ_NONE : thm
    val LHD_LAPPEND : thm
    val LHD_LCONS : thm
    val LHD_THM : thm
    val LLENGTH_APPEND : thm
    val LLENGTH_MAP : thm
    val LLENGTH_THM : thm
    val LLENGTH_fromList : thm
    val LLIST_BISIMULATION : thm
    val LLIST_BISIMULATION0 : thm
    val LLIST_EQ : thm
    val LLIST_STRONG_BISIMULATION : thm
    val LL_ALL_THM : thm
    val LMAP_APPEND : thm
    val LMAP_LUNFOLD : thm
    val LMAP_MAP : thm
    val LNTH_EQ : thm
    val LNTH_LAPPEND : thm
    val LNTH_LDROP : thm
    val LNTH_THM : thm
    val LPREFIX_ANTISYM : thm
    val LPREFIX_APPEND : thm
    val LPREFIX_LCONS : thm
    val LPREFIX_LNIL : thm
    val LPREFIX_LUNFOLD : thm
    val LPREFIX_REFL : thm
    val LPREFIX_TRANS : thm
    val LPREFIX_fromList : thm
    val LTAKE_CONS_EQ_NONE : thm
    val LTAKE_CONS_EQ_SOME : thm
    val LTAKE_DROP : thm
    val LTAKE_EQ : thm
    val LTAKE_EQ_NONE_LNTH : thm
    val LTAKE_EQ_SOME_CONS : thm
    val LTAKE_IMP_LDROP : thm
    val LTAKE_LAPPEND1 : thm
    val LTAKE_LAPPEND2 : thm
    val LTAKE_LENGTH : thm
    val LTAKE_LLENGTH_NONE : thm
    val LTAKE_LNTH_EL : thm
    val LTAKE_NIL_EQ_NONE : thm
    val LTAKE_NIL_EQ_SOME : thm
    val LTAKE_SNOC_LNTH : thm
    val LTAKE_TAKE_LESS : thm
    val LTAKE_THM : thm
    val LTAKE_fromList : thm
    val LTL_EQ_NONE : thm
    val LTL_LCONS : thm
    val LTL_THM : thm
    val LUNFOLD_EQ : thm
    val LUNFOLD_THM : thm
    val LZIP_LUNZIP : thm
    val MONO_every : thm
    val MONO_exists : thm
    val NOT_LFINITE_APPEND : thm
    val NOT_LFINITE_DROP : thm
    val NOT_LFINITE_NO_LENGTH : thm
    val NOT_LFINITE_TAKE : thm
    val every_coind : thm
    val every_strong_coind : thm
    val every_thm : thm
    val exists_LDROP : thm
    val exists_LNTH : thm
    val exists_cases : thm
    val exists_ind : thm
    val exists_rules : thm
    val exists_strong_ind : thm
    val exists_strongind : thm
    val exists_thm : thm
    val from_toList : thm
    val linear_order_to_llist : thm
    val llength_rel_cases : thm
    val llength_rel_ind : thm
    val llength_rel_rules : thm
    val llength_rel_strongind : thm
    val llist_Axiom : thm
    val llist_Axiom_1 : thm
    val llist_Axiom_1ue : thm
    val llist_CASES : thm
    val llist_rep_LCONS : thm
    val llist_ue_Axiom : thm
    val lrep_ok_cases : thm
    val lrep_ok_coind : thm
    val lrep_ok_rules : thm
    val prefixes_lprefix_total : thm
    val toList_LAPPEND_APPEND : thm
    val toList_THM : thm
    val to_fromList : thm

  val llist_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [quantHeuristics] Parent theory of "llist"

   [rich_list] Parent theory of "llist"

   [set_relation] Parent theory of "llist"

   [LAPPEND]  Definition

      |- (∀x. LAPPEND [||] x = x) ∧
         ∀h t x. LAPPEND (h:::t) x = h:::LAPPEND t x

   [LCONS]  Definition

      |- ∀h t.
           h:::t =
           llist_abs (λn. if n = 0 then SOME h else llist_rep t (n − 1))

   [LDROP]  Definition

      |- (∀ll. LDROP 0 ll = SOME ll) ∧
         ∀n ll.
           LDROP (SUC n) ll = OPTION_JOIN (OPTION_MAP (LDROP n) (LTL ll))

   [LFILTER]  Definition

      |- ∀P ll.
           LFILTER P ll =
           if ¬exists P ll then [||]
           else if P (THE (LHD ll)) then
             THE (LHD ll):::LFILTER P (THE (LTL ll))
           else LFILTER P (THE (LTL ll))

   [LFINITE_def]  Definition

      |- LFINITE =
         (λa0.
            ∀LFINITE'.
              (∀a0.
                 (a0 = [||]) ∨ (∃h t. (a0 = h:::t) ∧ LFINITE' t) ⇒
                 LFINITE' a0) ⇒
              LFINITE' a0)

   [LFLATTEN]  Definition

      |- ∀ll.
           LFLATTEN ll =
           if every ($= [||]) ll then [||]
           else if THE (LHD ll) = [||] then LFLATTEN (THE (LTL ll))
           else
             THE (LHD (THE (LHD ll))):::
                 LFLATTEN (THE (LTL (THE (LHD ll))):::THE (LTL ll))

   [LHD]  Definition

      |- ∀ll. LHD ll = llist_rep ll 0

   [LLENGTH]  Definition

      |- ∀ll.
           LLENGTH ll =
           if LFINITE ll then SOME (@n. llength_rel ll n) else NONE

   [LMAP]  Definition

      |- (∀f. LMAP f [||] = [||]) ∧ ∀f h t. LMAP f (h:::t) = f h:::LMAP f t

   [LNIL]  Definition

      |- [||] = llist_abs (λn. NONE)

   [LNTH]  Definition

      |- (∀ll. LNTH 0 ll = LHD ll) ∧
         ∀n ll.
           LNTH (SUC n) ll = OPTION_JOIN (OPTION_MAP (LNTH n) (LTL ll))

   [LPREFIX_def]  Definition

      |- ∀l1 l2.
           LPREFIX l1 l2 ⇔
           case toList l1 of
             NONE => l1 = l2
           | SOME xs =>
               case toList l2 of
                 NONE => LTAKE (LENGTH xs) l2 = SOME xs
               | SOME ys => xs ≼ ys

   [LTAKE]  Definition

      |- (∀ll. LTAKE 0 ll = SOME []) ∧
         ∀n ll.
           LTAKE (SUC n) ll =
           case LHD ll of
             NONE => NONE
           | SOME hd =>
               case LTAKE n (THE (LTL ll)) of
                 NONE => NONE
               | SOME tl => SOME (hd::tl)

   [LTL]  Definition

      |- ∀ll.
           LTL ll =
           case LHD ll of
             NONE => NONE
           | SOME v => SOME (llist_abs (λn. llist_rep ll (n + 1)))

   [LUNFOLD]  Definition

      |- ∀f x.
           LUNFOLD f x =
           case f x of NONE => [||] | SOME (v1,v2) => v2:::LUNFOLD f v1

   [LUNZIP_THM]  Definition

      |- (LUNZIP [||] = ([||],[||])) ∧
         ∀x y t.
           LUNZIP ((x,y):::t) =
           (let (ll1,ll2) = LUNZIP t in (x:::ll1,y:::ll2))

   [LZIP_THM]  Definition

      |- (∀l1. LZIP (l1,[||]) = [||]) ∧ (∀l2. LZIP ([||],l2) = [||]) ∧
         ∀h1 h2 t1 t2. LZIP (h1:::t1,h2:::t2) = (h1,h2):::LZIP (t1,t2)

   [every_def]  Definition

      |- ∀P ll. every P ll ⇔ ¬exists ($~ o P) ll

   [exists_def]  Definition

      |- exists =
         (λP a0.
            ∀exists'.
              (∀a0.
                 (∃h t. (a0 = h:::t) ∧ P h) ∨
                 (∃h t. (a0 = h:::t) ∧ exists' t) ⇒
                 exists' a0) ⇒
              exists' a0)

   [fromList]  Definition

      |- (fromList [] = [||]) ∧ ∀h t. fromList (h::t) = h:::fromList t

   [linear_order_to_list_f_def]  Definition

      |- ∀lo.
           linear_order_to_list_f lo =
           (let min = minimal_elements (domain lo ∪ range lo) lo
            in
              if min = ∅ then NONE
              else
                SOME
                  (rrestrict lo (domain lo ∪ range lo DIFF min),
                   CHOICE min))

   [llength_rel_def]  Definition

      |- llength_rel =
         (λa0 a1.
            ∀llength_rel'.
              (∀a0 a1.
                 (a0 = [||]) ∧ (a1 = 0) ∨
                 (∃h n t. (a0 = h:::t) ∧ (a1 = SUC n) ∧ llength_rel' t n) ⇒
                 llength_rel' a0 a1) ⇒
              llength_rel' a0 a1)

   [llist_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION lrep_ok rep

   [llist_absrep]  Definition

      |- (∀a. llist_abs (llist_rep a) = a) ∧
         ∀r. lrep_ok r ⇔ (llist_rep (llist_abs r) = r)

   [lrep_ok_def]  Definition

      |- lrep_ok =
         (λa0.
            ∃lrep_ok'.
              lrep_ok' a0 ∧
              ∀a0.
                lrep_ok' a0 ⇒
                (a0 = (λn. NONE)) ∨
                ∃h t.
                  (a0 = (λn. if n = 0 then SOME h else t (n − 1))) ∧
                  lrep_ok' t)

   [toList]  Definition

      |- ∀ll.
           toList ll =
           if LFINITE ll then LTAKE (THE (LLENGTH ll)) ll else NONE

   [LAPPEND_ASSOC]  Theorem

      |- ∀ll1 ll2 ll3.
           LAPPEND (LAPPEND ll1 ll2) ll3 = LAPPEND ll1 (LAPPEND ll2 ll3)

   [LAPPEND_EQ_LNIL]  Theorem

      |- (LAPPEND l1 l2 = [||]) ⇔ (l1 = [||]) ∧ (l2 = [||])

   [LAPPEND_NIL_2ND]  Theorem

      |- ∀ll. LAPPEND ll [||] = ll

   [LAPPEND_fromList]  Theorem

      |- ∀l1 l2. LAPPEND (fromList l1) (fromList l2) = fromList (l1 ++ l2)

   [LCONS_11]  Theorem

      |- ∀h1 t1 h2 t2. (h1:::t1 = h2:::t2) ⇔ (h1 = h2) ∧ (t1 = t2)

   [LCONS_NOT_NIL]  Theorem

      |- ∀h t. h:::t ≠ [||] ∧ [||] ≠ h:::t

   [LDROP1_THM]  Theorem

      |- LDROP 1 = LTL

   [LDROP_ADD]  Theorem

      |- ∀k1 k2 x.
           LDROP (k1 + k2) x =
           case LDROP k1 x of NONE => NONE | SOME ll => LDROP k2 ll

   [LDROP_THM]  Theorem

      |- (∀ll. LDROP 0 ll = SOME ll) ∧ (∀n. LDROP (SUC n) [||] = NONE) ∧
         ∀n h t. LDROP (SUC n) (h:::t) = LDROP n t

   [LFILTER_APPEND]  Theorem

      |- ∀P ll1 ll2.
           LFINITE ll1 ⇒
           (LFILTER P (LAPPEND ll1 ll2) =
            LAPPEND (LFILTER P ll1) (LFILTER P ll2))

   [LFILTER_EQ_NIL]  Theorem

      |- ∀ll. (LFILTER P ll = [||]) ⇔ every ($~ o P) ll

   [LFILTER_NIL]  Theorem

      |- ∀P ll. every ($~ o P) ll ⇒ (LFILTER P ll = [||])

   [LFILTER_THM]  Theorem

      |- (∀P. LFILTER P [||] = [||]) ∧
         ∀P h t.
           LFILTER P (h:::t) = if P h then h:::LFILTER P t else LFILTER P t

   [LFINITE]  Theorem

      |- LFINITE ll ⇔ ∃n. LTAKE n ll = NONE

   [LFINITE_APPEND]  Theorem

      |- ∀ll1 ll2. LFINITE (LAPPEND ll1 ll2) ⇔ LFINITE ll1 ∧ LFINITE ll2

   [LFINITE_DROP]  Theorem

      |- ∀n ll. LFINITE ll ∧ n ≤ THE (LLENGTH ll) ⇒ ∃y. LDROP n ll = SOME y

   [LFINITE_HAS_LENGTH]  Theorem

      |- ∀ll. LFINITE ll ⇒ ∃n. LLENGTH ll = SOME n

   [LFINITE_INDUCTION]  Theorem

      |- ∀P. P [||] ∧ (∀h t. P t ⇒ P (h:::t)) ⇒ ∀a0. LFINITE a0 ⇒ P a0

   [LFINITE_LLENGTH]  Theorem

      |- LFINITE ll ⇔ ∃n. LLENGTH ll = SOME n

   [LFINITE_LNTH_NONE]  Theorem

      |- LFINITE ll ⇔ ∃n. LNTH n ll = NONE

   [LFINITE_MAP]  Theorem

      |- ∀f ll. LFINITE (LMAP f ll) ⇔ LFINITE ll

   [LFINITE_STRONG_INDUCTION]  Theorem

      |- P [||] ∧ (∀h t. LFINITE t ∧ P t ⇒ P (h:::t)) ⇒
         ∀a0. LFINITE a0 ⇒ P a0

   [LFINITE_TAKE]  Theorem

      |- ∀n ll. LFINITE ll ∧ n ≤ THE (LLENGTH ll) ⇒ ∃y. LTAKE n ll = SOME y

   [LFINITE_THM]  Theorem

      |- (LFINITE [||] ⇔ T) ∧ ∀h t. LFINITE (h:::t) ⇔ LFINITE t

   [LFINITE_cases]  Theorem

      |- ∀a0. LFINITE a0 ⇔ (a0 = [||]) ∨ ∃h t. (a0 = h:::t) ∧ LFINITE t

   [LFINITE_fromList]  Theorem

      |- ∀l. LFINITE (fromList l)

   [LFINITE_ind]  Theorem

      |- ∀LFINITE'.
           LFINITE' [||] ∧ (∀h t. LFINITE' t ⇒ LFINITE' (h:::t)) ⇒
           ∀a0. LFINITE a0 ⇒ LFINITE' a0

   [LFINITE_rules]  Theorem

      |- LFINITE [||] ∧ ∀h t. LFINITE t ⇒ LFINITE (h:::t)

   [LFINITE_strongind]  Theorem

      |- ∀LFINITE'.
           LFINITE' [||] ∧
           (∀h t. LFINITE t ∧ LFINITE' t ⇒ LFINITE' (h:::t)) ⇒
           ∀a0. LFINITE a0 ⇒ LFINITE' a0

   [LFINITE_toList]  Theorem

      |- ∀ll. LFINITE ll ⇒ ∃l. toList ll = SOME l

   [LFINITE_toList_SOME]  Theorem

      |- LFINITE ll ⇔ IS_SOME (toList ll)

   [LFLATTEN_APPEND]  Theorem

      |- ∀h t. LFLATTEN (h:::t) = LAPPEND h (LFLATTEN t)

   [LFLATTEN_EQ_NIL]  Theorem

      |- ∀ll. (LFLATTEN ll = [||]) ⇔ every ($= [||]) ll

   [LFLATTEN_SINGLETON]  Theorem

      |- ∀h. LFLATTEN [|h|] = h

   [LFLATTEN_THM]  Theorem

      |- (LFLATTEN [||] = [||]) ∧ (∀tl. LFLATTEN ([||]:::t) = LFLATTEN t) ∧
         ∀h t tl. LFLATTEN ((h:::t):::tl) = h:::LFLATTEN (t:::tl)

   [LHDTL_CONS_THM]  Theorem

      |- ∀h t. (LHD (h:::t) = SOME h) ∧ (LTL (h:::t) = SOME t)

   [LHDTL_EQ_SOME]  Theorem

      |- ∀h t ll. (ll = h:::t) ⇔ (LHD ll = SOME h) ∧ (LTL ll = SOME t)

   [LHD_EQ_NONE]  Theorem

      |- ∀ll.
           ((LHD ll = NONE) ⇔ (ll = [||])) ∧
           ((NONE = LHD ll) ⇔ (ll = [||]))

   [LHD_LAPPEND]  Theorem

      |- LHD (LAPPEND l1 l2) = if l1 = [||] then LHD l2 else LHD l1

   [LHD_LCONS]  Theorem

      |- LHD (h:::t) = SOME h

   [LHD_THM]  Theorem

      |- (LHD [||] = NONE) ∧ ∀h t. LHD (h:::t) = SOME h

   [LLENGTH_APPEND]  Theorem

      |- ∀ll1 ll2.
           LLENGTH (LAPPEND ll1 ll2) =
           if LFINITE ll1 ∧ LFINITE ll2 then
             SOME (THE (LLENGTH ll1) + THE (LLENGTH ll2))
           else NONE

   [LLENGTH_MAP]  Theorem

      |- ∀ll f. LLENGTH (LMAP f ll) = LLENGTH ll

   [LLENGTH_THM]  Theorem

      |- (LLENGTH [||] = SOME 0) ∧
         ∀h t. LLENGTH (h:::t) = OPTION_MAP SUC (LLENGTH t)

   [LLENGTH_fromList]  Theorem

      |- ∀l. LLENGTH (fromList l) = SOME (LENGTH l)

   [LLIST_BISIMULATION]  Theorem

      |- ∀ll1 ll2.
           (ll1 = ll2) ⇔
           ∃R.
             R ll1 ll2 ∧
             ∀ll3 ll4.
               R ll3 ll4 ⇒
               (ll3 = [||]) ∧ (ll4 = [||]) ∨
               (LHD ll3 = LHD ll4) ∧ R (THE (LTL ll3)) (THE (LTL ll4))

   [LLIST_BISIMULATION0]  Theorem

      |- ∀ll1 ll2.
           (ll1 = ll2) ⇔
           ∃R.
             R ll1 ll2 ∧
             ∀ll3 ll4.
               R ll3 ll4 ⇒
               (ll3 = [||]) ∧ (ll4 = [||]) ∨
               ∃h t1 t2. (ll3 = h:::t1) ∧ (ll4 = h:::t2) ∧ R t1 t2

   [LLIST_EQ]  Theorem

      |- ∀f g.
           (∀x.
              (f x = [||]) ∧ (g x = [||]) ∨
              ∃h y. (f x = h:::f y) ∧ (g x = h:::g y)) ⇒
           ∀x. f x = g x

   [LLIST_STRONG_BISIMULATION]  Theorem

      |- ∀ll1 ll2.
           (ll1 = ll2) ⇔
           ∃R.
             R ll1 ll2 ∧
             ∀ll3 ll4.
               R ll3 ll4 ⇒
               (ll3 = ll4) ∨
               ∃h t1 t2. (ll3 = h:::t1) ∧ (ll4 = h:::t2) ∧ R t1 t2

   [LL_ALL_THM]  Theorem

      |- (every P [||] ⇔ T) ∧ (every P (h:::t) ⇔ P h ∧ every P t)

   [LMAP_APPEND]  Theorem

      |- ∀f ll1 ll2.
           LMAP f (LAPPEND ll1 ll2) = LAPPEND (LMAP f ll1) (LMAP f ll2)

   [LMAP_LUNFOLD]  Theorem

      |- ∀f g s.
           LMAP f (LUNFOLD g s) =
           LUNFOLD (λs. OPTION_MAP (λ(x,y). (x,f y)) (g s)) s

   [LMAP_MAP]  Theorem

      |- ∀f g ll. LMAP f (LMAP g ll) = LMAP (f o g) ll

   [LNTH_EQ]  Theorem

      |- ∀ll1 ll2. (ll1 = ll2) ⇔ ∀n. LNTH n ll1 = LNTH n ll2

   [LNTH_LAPPEND]  Theorem

      |- LNTH n (LAPPEND l1 l2) =
         case LLENGTH l1 of
           NONE => LNTH n l1
         | SOME m => if n < m then LNTH n l1 else LNTH (n − m) l2

   [LNTH_LDROP]  Theorem

      |- ∀n l x. (LNTH n l = SOME x) ⇒ (LHD (THE (LDROP n l)) = SOME x)

   [LNTH_THM]  Theorem

      |- (∀n. LNTH n [||] = NONE) ∧ (∀h t. LNTH 0 (h:::t) = SOME h) ∧
         ∀n h t. LNTH (SUC n) (h:::t) = LNTH n t

   [LPREFIX_ANTISYM]  Theorem

      |- LPREFIX l1 l2 ∧ LPREFIX l2 l1 ⇒ (l1 = l2)

   [LPREFIX_APPEND]  Theorem

      |- LPREFIX l1 l2 ⇔ ∃ll. l2 = LAPPEND l1 ll

   [LPREFIX_LCONS]  Theorem

      |- (∀ll h t.
            LPREFIX ll (h:::t) ⇔
            (ll = [||]) ∨ ∃l. (ll = h:::l) ∧ LPREFIX l t) ∧
         ∀h t ll. LPREFIX (h:::t) ll ⇔ ∃l. (ll = h:::l) ∧ LPREFIX t l

   [LPREFIX_LNIL]  Theorem

      |- LPREFIX [||] ll ∧ (LPREFIX ll [||] ⇔ (ll = [||]))

   [LPREFIX_LUNFOLD]  Theorem

      |- LPREFIX ll (LUNFOLD f n) ⇔
         case f n of
           NONE => ll = [||]
         | SOME (n,x) =>
             ∀h t. (ll = h:::t) ⇒ (h = x) ∧ LPREFIX t (LUNFOLD f n)

   [LPREFIX_REFL]  Theorem

      |- LPREFIX ll ll

   [LPREFIX_TRANS]  Theorem

      |- LPREFIX l1 l2 ∧ LPREFIX l2 l3 ⇒ LPREFIX l1 l3

   [LPREFIX_fromList]  Theorem

      |- ∀l ll.
           LPREFIX (fromList l) ll ⇔
           case toList ll of
             NONE => LTAKE (LENGTH l) ll = SOME l
           | SOME ys => l ≼ ys

   [LTAKE_CONS_EQ_NONE]  Theorem

      |- ∀m h t.
           (LTAKE m (h:::t) = NONE) ⇔ ∃n. (m = SUC n) ∧ (LTAKE n t = NONE)

   [LTAKE_CONS_EQ_SOME]  Theorem

      |- ∀m h t l.
           (LTAKE m (h:::t) = SOME l) ⇔
           (m = 0) ∧ (l = []) ∨
           ∃n l'. (m = SUC n) ∧ (LTAKE n t = SOME l') ∧ (l = h::l')

   [LTAKE_DROP]  Theorem

      |- (∀n ll.
            ¬LFINITE ll ⇒
            (LAPPEND (fromList (THE (LTAKE n ll))) (THE (LDROP n ll)) =
             ll)) ∧
         ∀n ll.
           LFINITE ll ∧ n ≤ THE (LLENGTH ll) ⇒
           (LAPPEND (fromList (THE (LTAKE n ll))) (THE (LDROP n ll)) = ll)

   [LTAKE_EQ]  Theorem

      |- ∀ll1 ll2. (ll1 = ll2) ⇔ ∀n. LTAKE n ll1 = LTAKE n ll2

   [LTAKE_EQ_NONE_LNTH]  Theorem

      |- ∀n ll. (LTAKE n ll = NONE) ⇒ (LNTH n ll = NONE)

   [LTAKE_EQ_SOME_CONS]  Theorem

      |- ∀n l x. (LTAKE n l = SOME x) ⇒ ∀h. ∃y. LTAKE n (h:::l) = SOME y

   [LTAKE_IMP_LDROP]  Theorem

      |- ∀n ll l1.
           (LTAKE n ll = SOME l1) ⇒
           ∃l2. (LDROP n ll = SOME l2) ∧ (LAPPEND (fromList l1) l2 = ll)

   [LTAKE_LAPPEND1]  Theorem

      |- ∀n l1 l2.
           IS_SOME (LTAKE n l1) ⇒ (LTAKE n (LAPPEND l1 l2) = LTAKE n l1)

   [LTAKE_LAPPEND2]  Theorem

      |- ∀n l1 l2.
           (LTAKE n l1 = NONE) ⇒
           (LTAKE n (LAPPEND l1 l2) =
            OPTION_MAP ($++ (THE (toList l1)))
              (LTAKE (n − THE (LLENGTH l1)) l2))

   [LTAKE_LENGTH]  Theorem

      |- ∀n ll l. (LTAKE n ll = SOME l) ⇒ (n = LENGTH l)

   [LTAKE_LLENGTH_NONE]  Theorem

      |- (LLENGTH ll = SOME n) ∧ n < m ⇒ (LTAKE m ll = NONE)

   [LTAKE_LNTH_EL]  Theorem

      |- ∀n ll m l.
           (LTAKE n ll = SOME l) ∧ m < n ⇒ (LNTH m ll = SOME (EL m l))

   [LTAKE_NIL_EQ_NONE]  Theorem

      |- ∀m. (LTAKE m [||] = NONE) ⇔ 0 < m

   [LTAKE_NIL_EQ_SOME]  Theorem

      |- ∀l m. (LTAKE m [||] = SOME l) ⇔ (m = 0) ∧ (l = [])

   [LTAKE_SNOC_LNTH]  Theorem

      |- ∀n ll.
           LTAKE (SUC n) ll =
           case LTAKE n ll of
             NONE => NONE
           | SOME l =>
               case LNTH n ll of NONE => NONE | SOME e => SOME (l ++ [e])

   [LTAKE_TAKE_LESS]  Theorem

      |- (LTAKE n ll = SOME l) ∧ m ≤ n ⇒ (LTAKE m ll = SOME (TAKE m l))

   [LTAKE_THM]  Theorem

      |- (∀l. LTAKE 0 l = SOME []) ∧ (∀n. LTAKE (SUC n) [||] = NONE) ∧
         ∀n h t. LTAKE (SUC n) (h:::t) = OPTION_MAP (CONS h) (LTAKE n t)

   [LTAKE_fromList]  Theorem

      |- ∀l. LTAKE (LENGTH l) (fromList l) = SOME l

   [LTL_EQ_NONE]  Theorem

      |- ∀ll.
           ((LTL ll = NONE) ⇔ (ll = [||])) ∧
           ((NONE = LTL ll) ⇔ (ll = [||]))

   [LTL_LCONS]  Theorem

      |- LTL (h:::t) = SOME t

   [LTL_THM]  Theorem

      |- (LTL [||] = NONE) ∧ ∀h t. LTL (h:::t) = SOME t

   [LUNFOLD_EQ]  Theorem

      |- ∀R f s ll.
           R s ll ∧
           (∀s ll.
              R s ll ⇒
              (f s = NONE) ∧ (ll = [||]) ∨
              ∃s' x ll'.
                (f s = SOME (s',x)) ∧ (LHD ll = SOME x) ∧
                (LTL ll = SOME ll') ∧ R s' ll') ⇒
           (LUNFOLD f s = ll)

   [LUNFOLD_THM]  Theorem

      |- ∀f x v1 v2.
           ((f x = NONE) ⇒ (LUNFOLD f x = [||])) ∧
           ((f x = SOME (v1,v2)) ⇒ (LUNFOLD f x = v2:::LUNFOLD f v1))

   [LZIP_LUNZIP]  Theorem

      |- ∀ll. LZIP (LUNZIP ll) = ll

   [MONO_every]  Theorem

      |- (∀x. P x ⇒ Q x) ⇒ every P l ⇒ every Q l

   [MONO_exists]  Theorem

      |- (∀x. P x ⇒ Q x) ⇒ exists P l ⇒ exists Q l

   [NOT_LFINITE_APPEND]  Theorem

      |- ∀ll1 ll2. ¬LFINITE ll1 ⇒ (LAPPEND ll1 ll2 = ll1)

   [NOT_LFINITE_DROP]  Theorem

      |- ∀ll. ¬LFINITE ll ⇒ ∀n. ∃y. LDROP n ll = SOME y

   [NOT_LFINITE_NO_LENGTH]  Theorem

      |- ∀ll. ¬LFINITE ll ⇒ (LLENGTH ll = NONE)

   [NOT_LFINITE_TAKE]  Theorem

      |- ∀ll. ¬LFINITE ll ⇒ ∀n. ∃y. LTAKE n ll = SOME y

   [every_coind]  Theorem

      |- ∀P Q. (∀h t. Q (h:::t) ⇒ P h ∧ Q t) ⇒ ∀ll. Q ll ⇒ every P ll

   [every_strong_coind]  Theorem

      |- ∀P Q.
           (∀h t. Q (h:::t) ⇒ P h) ∧ (∀h t. Q (h:::t) ⇒ Q t ∨ every P t) ⇒
           ∀ll. Q ll ⇒ every P ll

   [every_thm]  Theorem

      |- (every P [||] ⇔ T) ∧ (every P (h:::t) ⇔ P h ∧ every P t)

   [exists_LDROP]  Theorem

      |- exists P ll ⇔ ∃n a t. (LDROP n ll = SOME (a:::t)) ∧ P a

   [exists_LNTH]  Theorem

      |- ∀l. exists P l ⇔ ∃n e. (SOME e = LNTH n l) ∧ P e

   [exists_cases]  Theorem

      |- ∀P a0.
           exists P a0 ⇔
           (∃h t. (a0 = h:::t) ∧ P h) ∨ ∃h t. (a0 = h:::t) ∧ exists P t

   [exists_ind]  Theorem

      |- ∀P exists'.
           (∀h t. P h ⇒ exists' (h:::t)) ∧
           (∀h t. exists' t ⇒ exists' (h:::t)) ⇒
           ∀a0. exists P a0 ⇒ exists' a0

   [exists_rules]  Theorem

      |- ∀P.
           (∀h t. P h ⇒ exists P (h:::t)) ∧
           ∀h t. exists P t ⇒ exists P (h:::t)

   [exists_strong_ind]  Theorem

      |- ∀P Q.
           (∀h t. P h ⇒ Q (h:::t)) ∧ (∀h t. Q t ∧ exists P t ⇒ Q (h:::t)) ⇒
           ∀a0. exists P a0 ⇒ Q a0

   [exists_strongind]  Theorem

      |- ∀P exists'.
           (∀h t. P h ⇒ exists' (h:::t)) ∧
           (∀h t. exists P t ∧ exists' t ⇒ exists' (h:::t)) ⇒
           ∀a0. exists P a0 ⇒ exists' a0

   [exists_thm]  Theorem

      |- (exists P [||] ⇔ F) ∧ (exists P (h:::t) ⇔ P h ∨ exists P t)

   [from_toList]  Theorem

      |- ∀l. toList (fromList l) = SOME l

   [linear_order_to_llist]  Theorem

      |- ∀lo X.
           linear_order lo X ∧ finite_prefixes lo X ⇒
           ∃ll.
             (X = {x | ∃i. LNTH i ll = SOME x}) ∧
             lo ⊆
             {(x,y) |
              ∃i j. i ≤ j ∧ (LNTH i ll = SOME x) ∧ (LNTH j ll = SOME y)} ∧
             ∀i j x. (LNTH i ll = SOME x) ∧ (LNTH j ll = SOME x) ⇒ (i = j)

   [llength_rel_cases]  Theorem

      |- ∀a0 a1.
           llength_rel a0 a1 ⇔
           (a0 = [||]) ∧ (a1 = 0) ∨
           ∃h n t. (a0 = h:::t) ∧ (a1 = SUC n) ∧ llength_rel t n

   [llength_rel_ind]  Theorem

      |- ∀llength_rel'.
           llength_rel' [||] 0 ∧
           (∀h n t. llength_rel' t n ⇒ llength_rel' (h:::t) (SUC n)) ⇒
           ∀a0 a1. llength_rel a0 a1 ⇒ llength_rel' a0 a1

   [llength_rel_rules]  Theorem

      |- llength_rel [||] 0 ∧
         ∀h n t. llength_rel t n ⇒ llength_rel (h:::t) (SUC n)

   [llength_rel_strongind]  Theorem

      |- ∀llength_rel'.
           llength_rel' [||] 0 ∧
           (∀h n t.
              llength_rel t n ∧ llength_rel' t n ⇒
              llength_rel' (h:::t) (SUC n)) ⇒
           ∀a0 a1. llength_rel a0 a1 ⇒ llength_rel' a0 a1

   [llist_Axiom]  Theorem

      |- ∀f.
           ∃g.
             (∀x. LHD (g x) = OPTION_MAP SND (f x)) ∧
             ∀x. LTL (g x) = OPTION_MAP (g o FST) (f x)

   [llist_Axiom_1]  Theorem

      |- ∀f. ∃g. ∀x. g x = case f x of NONE => [||] | SOME (a,b) => b:::g a

   [llist_Axiom_1ue]  Theorem

      |- ∀f.
           ∃!g. ∀x. g x = case f x of NONE => [||] | SOME (a,b) => b:::g a

   [llist_CASES]  Theorem

      |- ∀l. (l = [||]) ∨ ∃h t. l = h:::t

   [llist_rep_LCONS]  Theorem

      |- llist_rep (h:::t) =
         (λn. if n = 0 then SOME h else llist_rep t (n − 1))

   [llist_ue_Axiom]  Theorem

      |- ∀f.
           ∃!g.
             (∀x. LHD (g x) = OPTION_MAP SND (f x)) ∧
             ∀x. LTL (g x) = OPTION_MAP (g o FST) (f x)

   [lrep_ok_cases]  Theorem

      |- ∀a0.
           lrep_ok a0 ⇔
           (a0 = (λn. NONE)) ∨
           ∃h t.
             (a0 = (λn. if n = 0 then SOME h else t (n − 1))) ∧ lrep_ok t

   [lrep_ok_coind]  Theorem

      |- ∀lrep_ok'.
           (∀a0.
              lrep_ok' a0 ⇒
              (a0 = (λn. NONE)) ∨
              ∃h t.
                (a0 = (λn. if n = 0 then SOME h else t (n − 1))) ∧
                lrep_ok' t) ⇒
           ∀a0. lrep_ok' a0 ⇒ lrep_ok a0

   [lrep_ok_rules]  Theorem

      |- lrep_ok (λn. NONE) ∧
         ∀h t.
           lrep_ok t ⇒ lrep_ok (λn. if n = 0 then SOME h else t (n − 1))

   [prefixes_lprefix_total]  Theorem

      |- ∀ll l1 l2.
           LPREFIX l1 ll ∧ LPREFIX l2 ll ⇒ LPREFIX l1 l2 ∨ LPREFIX l2 l1

   [toList_LAPPEND_APPEND]  Theorem

      |- (toList (LAPPEND l1 l2) = SOME x) ⇒
         (x = THE (toList l1) ++ THE (toList l2))

   [toList_THM]  Theorem

      |- (toList [||] = SOME []) ∧
         ∀h t. toList (h:::t) = OPTION_MAP (CONS h) (toList t)

   [to_fromList]  Theorem

      |- ∀ll. LFINITE ll ⇒ (fromList (THE (toList ll)) = ll)


*)
end
