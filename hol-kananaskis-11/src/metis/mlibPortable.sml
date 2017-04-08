(* ========================================================================= *)
(* MOSCOW ML SPECIFIC FUNCTIONS                                              *)
(* Copyright (c) 2002-2004 Joe Hurd.                                         *)
(* ========================================================================= *)

structure mlibPortable :> mlibPortable =
struct

(* ------------------------------------------------------------------------- *)
(* The ML implementation.                                                    *)
(* ------------------------------------------------------------------------- *)

val ml = Systeml.ML_SYSNAME;

(* ------------------------------------------------------------------------- *)
(* Ensuring that interruptions (SIGINTs) are actually seen by the            *)
(* linked executable as Interrupt exceptions.                                *)
(* ------------------------------------------------------------------------- *)

val _ = Portable.catch_SIGINT();

(* ------------------------------------------------------------------------- *)
(* Pointer equality using the run-time system.                               *)
(* ------------------------------------------------------------------------- *)

fun pointer_eq x y = Portable.pointer_eq(x,y)

(* ------------------------------------------------------------------------- *)
(* Timing function applications a la Mosml.time.                             *)
(* ------------------------------------------------------------------------- *)

val time = Portable.time;

(* ------------------------------------------------------------------------- *)
(* MD5 cryptographic hashing.                                                *)
(* ------------------------------------------------------------------------- *)

val md5 = Portable.md5sum;

end