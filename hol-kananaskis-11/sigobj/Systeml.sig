signature Systeml =
sig

  val systeml : string list -> OS.Process.status
  val system_ps : string -> OS.Process.status
  val exec : string * string list -> 'a
  val protect : string -> string
  val xable_string : string -> string
  val mk_xable : string -> OS.Process.status

(* first argument to these are the name of the desired executable, the
   second is the name of the post-initialisation script to run. *)
  val emit_hol_script : string -> string -> string list -> OS.Process.status
  val emit_hol_unquote_script : string -> string -> string list ->
                                OS.Process.status

  val find_my_path : unit -> string

  (* configuration time constants *)
  val HOLDIR : string
  val POLYMLLIBDIR : string
  val POLY : string
  val POLYC : string
  val POLY_VERSION : int
  val POLY_LDFLAGS : string list
  val POLY_LDFLAGS_STATIC : string list
  val CC : string
  val MOSMLDIR : string
  val HAVE_BASIS2002 : bool
  val OS : string
  val DEPDIR : string
  val GNUMAKE : string
  val DYNLIB : bool
  val ML_SYSNAME : string
  val DOT_PATH : string
  val DEFAULT_STATE : string

  val isUnix : bool
  val pointer_eq : 'a * 'a -> bool

  (* other system-wide constants, shared between build tools and the
     running hol *)
  val build_log_dir : string
  val build_log_file : string
  val make_log_file : string

  (* canonical source of version information *)
  val release : string
  val version : int

end
