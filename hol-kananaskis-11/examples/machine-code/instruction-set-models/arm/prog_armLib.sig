signature prog_armLib =
sig

    include helperLib

    val arm_spec             : string -> (thm * int * int option) *
                                         (thm * int * int option) option

    val arm_spec_byte_memory : string -> (thm * int * int option) *
                                         (thm * int * int option) option

    val arm_spec_m1          : string -> (thm * int * int option) *
                                         (thm * int * int option) option

    val arm_spec_m           : string -> (thm * int * int option) *
                                         (thm * int * int option) option

    val arm_tools            : decompiler_tools
    val arm_tools_no_status  : decompiler_tools
    val arm_tools_byte       : decompiler_tools
    val arm_tools_mem        : decompiler_tools

    val arm_enc              : string -> string

    val arm_use_stack        : bool -> unit

end
