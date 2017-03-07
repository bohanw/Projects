signature errorStateMonadTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val BIND_DEF : thm
    val ES_APPLY_DEF : thm
    val ES_CHOICE_DEF : thm
    val ES_FAIL_DEF : thm
    val ES_GUARD_DEF : thm
    val ES_LIFT2_DEF : thm
    val FOREACH_primitive_def : thm
    val FOR_primitive_def : thm
    val IGNORE_BIND_DEF : thm
    val JOIN_DEF : thm
    val MMAP_DEF : thm
    val NARROW_def : thm
    val READ_def : thm
    val UNIT_DEF : thm
    val WIDEN_def : thm
    val WRITE_def : thm
    val mapM_def : thm
    val sequence_def : thm

  (*  Theorems  *)
    val APPLY_UNIT : thm
    val APPLY_UNIT_UNIT : thm
    val BIND_ASSOC : thm
    val BIND_ESGUARD : thm
    val BIND_FAIL_L : thm
    val BIND_LEFT_UNIT : thm
    val BIND_RIGHT_UNIT : thm
    val ES_CHOICE_ASSOC : thm
    val ES_CHOICE_FAIL_LID : thm
    val ES_CHOICE_FAIL_RID : thm
    val FOREACH_def : thm
    val FOREACH_ind : thm
    val FOR_def : thm
    val FOR_ind : thm
    val IGNORE_BIND_ESGUARD : thm
    val IGNORE_BIND_FAIL : thm
    val JOIN_MAP : thm
    val JOIN_MAP_JOIN : thm
    val JOIN_MMAP_UNIT : thm
    val JOIN_UNIT : thm
    val MMAP_COMP : thm
    val MMAP_ID : thm
    val MMAP_JOIN : thm
    val MMAP_UNIT : thm
    val mapM_cons : thm
    val mapM_nil : thm
    val sequence_nil : thm

  val errorStateMonad_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [list] Parent theory of "errorStateMonad"

   [BIND_DEF]  Definition

      |- ∀g f s0.
           BIND g f s0 = case g s0 of NONE => NONE | SOME (b,s) => f b s

   [ES_APPLY_DEF]  Definition

      |- ∀fM xM. fM <*> xM = BIND fM (λf. BIND xM (λx. UNIT (f x)))

   [ES_CHOICE_DEF]  Definition

      |- ∀xM yM s.
           ES_CHOICE xM yM s =
           case xM s of NONE => yM s | SOME v1 => SOME v1

   [ES_FAIL_DEF]  Definition

      |- ∀s. ES_FAIL s = NONE

   [ES_GUARD_DEF]  Definition

      |- ∀b. ES_GUARD b = if b then UNIT () else ES_FAIL

   [ES_LIFT2_DEF]  Definition

      |- ∀f xM yM. ES_LIFT2 f xM yM = MMAP f xM <*> yM

   [FOREACH_primitive_def]  Definition

      |- FOREACH =
         WFREC (@R. WF R ∧ ∀h a t. R (t,a) (h::t,a))
           (λFOREACH a'.
              case a' of
                ([],a) => I (UNIT ())
              | (h::t,a) => I (BIND (a h) (λu. FOREACH (t,a))))

   [FOR_primitive_def]  Definition

      |- FOR =
         WFREC
           (@R.
              WF R ∧
              ∀a j i.
                i ≠ j ⇒ R (if i < j then i + 1 else i − 1,j,a) (i,j,a))
           (λFOR a'.
              case a' of
                (i,j,a) =>
                  I
                    (if i = j then a i
                     else
                       BIND (a i)
                         (λu. FOR (if i < j then i + 1 else i − 1,j,a))))

   [IGNORE_BIND_DEF]  Definition

      |- ∀f g. IGNORE_BIND f g = BIND f (λx. g)

   [JOIN_DEF]  Definition

      |- ∀z. JOIN z = BIND z I

   [MMAP_DEF]  Definition

      |- ∀f m. MMAP f m = BIND m (UNIT o f)

   [NARROW_def]  Definition

      |- ∀v f.
           NARROW v f =
           (λs.
              case f (v,s) of
                NONE => NONE
              | SOME (r,s1) => SOME (r,SND s1))

   [READ_def]  Definition

      |- ∀f. READ f = (λs. SOME (f s,s))

   [UNIT_DEF]  Definition

      |- ∀x. UNIT x = (λs. SOME (x,s))

   [WIDEN_def]  Definition

      |- ∀f.
           WIDEN f =
           (λ(s1,s2).
              case f s2 of NONE => NONE | SOME (r,s3) => SOME (r,s1,s3))

   [WRITE_def]  Definition

      |- ∀f. WRITE f = (λs. SOME ((),f s))

   [mapM_def]  Definition

      |- ∀f. mapM f = sequence o MAP f

   [sequence_def]  Definition

      |- sequence =
         FOLDR (λm ms. BIND m (λx. BIND ms (λxs. UNIT (x::xs)))) (UNIT [])

   [APPLY_UNIT]  Theorem

      |- UNIT f <*> xM = MMAP f xM

   [APPLY_UNIT_UNIT]  Theorem

      |- UNIT f <*> UNIT x = UNIT (f x)

   [BIND_ASSOC]  Theorem

      |- ∀k m n. BIND k (λa. BIND (m a) n) = BIND (BIND k m) n

   [BIND_ESGUARD]  Theorem

      |- (BIND (ES_GUARD F) fM = ES_FAIL) ∧ (BIND (ES_GUARD T) fM = fM ())

   [BIND_FAIL_L]  Theorem

      |- BIND ES_FAIL fM = ES_FAIL

   [BIND_LEFT_UNIT]  Theorem

      |- ∀k x. BIND (UNIT x) k = k x

   [BIND_RIGHT_UNIT]  Theorem

      |- ∀k. BIND k UNIT = k

   [ES_CHOICE_ASSOC]  Theorem

      |- ES_CHOICE xM (ES_CHOICE yM zM) = ES_CHOICE (ES_CHOICE xM yM) zM

   [ES_CHOICE_FAIL_LID]  Theorem

      |- ES_CHOICE ES_FAIL xM = xM

   [ES_CHOICE_FAIL_RID]  Theorem

      |- ES_CHOICE xM ES_FAIL = xM

   [FOREACH_def]  Theorem

      |- (∀a. FOREACH ([],a) = UNIT ()) ∧
         ∀t h a. FOREACH (h::t,a) = BIND (a h) (λu. FOREACH (t,a))

   [FOREACH_ind]  Theorem

      |- ∀P.
           (∀a. P ([],a)) ∧ (∀h t a. P (t,a) ⇒ P (h::t,a)) ⇒
           ∀v v1. P (v,v1)

   [FOR_def]  Theorem

      |- ∀j i a.
           FOR (i,j,a) =
           if i = j then a i
           else BIND (a i) (λu. FOR (if i < j then i + 1 else i − 1,j,a))

   [FOR_ind]  Theorem

      |- ∀P.
           (∀i j a.
              (i ≠ j ⇒ P (if i < j then i + 1 else i − 1,j,a)) ⇒
              P (i,j,a)) ⇒
           ∀v v1 v2. P (v,v1,v2)

   [IGNORE_BIND_ESGUARD]  Theorem

      |- (IGNORE_BIND (ES_GUARD F) xM = ES_FAIL) ∧
         (IGNORE_BIND (ES_GUARD T) xM = xM)

   [IGNORE_BIND_FAIL]  Theorem

      |- (IGNORE_BIND ES_FAIL xM = ES_FAIL) ∧
         (IGNORE_BIND xM ES_FAIL = ES_FAIL)

   [JOIN_MAP]  Theorem

      |- ∀k m. BIND k m = JOIN (MMAP m k)

   [JOIN_MAP_JOIN]  Theorem

      |- JOIN o MMAP JOIN = JOIN o JOIN

   [JOIN_MMAP_UNIT]  Theorem

      |- JOIN o MMAP UNIT = I

   [JOIN_UNIT]  Theorem

      |- JOIN o UNIT = I

   [MMAP_COMP]  Theorem

      |- ∀f g. MMAP (f o g) = MMAP f o MMAP g

   [MMAP_ID]  Theorem

      |- MMAP I = I

   [MMAP_JOIN]  Theorem

      |- ∀f. MMAP f o JOIN = JOIN o MMAP (MMAP f)

   [MMAP_UNIT]  Theorem

      |- ∀f. MMAP f o UNIT = UNIT o f

   [mapM_cons]  Theorem

      |- mapM f (x::xs) =
         BIND (f x) (λy. BIND (mapM f xs) (λys. UNIT (y::ys)))

   [mapM_nil]  Theorem

      |- mapM f [] = UNIT []

   [sequence_nil]  Theorem

      |- sequence [] = UNIT []


*)
end
