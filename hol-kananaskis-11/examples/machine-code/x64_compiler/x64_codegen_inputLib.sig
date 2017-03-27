signature x64_codegen_inputLib =
sig

  include Abbrev

  datatype access_type =
    ACCESS_WORD
  | ACCESS_BYTE;

  datatype assign_address_type =
    ASSIGN_ADDRESS_REG of int
  | ASSIGN_ADDRESS_OFFSET_ADD of int * Arbnum.num
  | ASSIGN_ADDRESS_OFFSET_SUB of int * Arbnum.num;

  datatype assign_monop_type =
    ASSIGN_MONOP_NOT
  | ASSIGN_MONOP_NEG;

  datatype assign_binop_type =
    ASSIGN_BINOP_ADD
  | ASSIGN_BINOP_SUB
  | ASSIGN_BINOP_MUL
  | ASSIGN_BINOP_MOD
  | ASSIGN_BINOP_DIV
  | ASSIGN_BINOP_AND
  | ASSIGN_BINOP_XOR
  | ASSIGN_BINOP_OR;

  datatype assign_x_type =
    ASSIGN_X_REG of int          (* register number *)
  | ASSIGN_X_CONST of Arbnum.num (* constant *);

  datatype assign_exp_type =
    ASSIGN_EXP_REG of int
  | ASSIGN_EXP_CONST of Arbnum.num  (* constant *)
  | ASSIGN_EXP_STACK of int         (* stack[offset] *)
  | ASSIGN_EXP_BINOP of assign_x_type * assign_binop_type * assign_x_type
  | ASSIGN_EXP_MONOP of assign_monop_type * assign_x_type
  | ASSIGN_EXP_MEMORY of access_type * assign_address_type
  | ASSIGN_EXP_SHIFT_LEFT of assign_x_type * int
  | ASSIGN_EXP_SHIFT_RIGHT of assign_x_type * int
  | ASSIGN_EXP_SHIFT_ARITHMETIC_RIGHT of assign_x_type * int

  datatype assign_type =
    ASSIGN_EXP of int * assign_exp_type        (* register := expression *)
  | ASSIGN_STACK of int * assign_x_type        (* stack[offset] := x *)
  | ASSIGN_MEMORY of access_type * assign_address_type * assign_x_type
                                               (* mem[address] := register *)
  | ASSIGN_OTHER of term * term                (* lhs := rhs *);

  datatype guard_compare_type =
    GUARD_COMPARE_LESS of bool       (* true: signed, false: unsigned *)
  | GUARD_COMPARE_LESS_EQUAL of bool (* true: signed, false: unsigned *)
  | GUARD_COMPARE_EQUAL;

  datatype guard_type =
    GUARD_NOT of guard_type
  | GUARD_COMPARE of int * guard_compare_type * assign_x_type  (* reg, cmp, reg/const *)
  | GUARD_EQUAL_BYTE of assign_address_type * Arbnum.num
  | GUARD_TEST of int * assign_x_type
  | GUARD_OTHER of term;

  val term2guard      : Abbrev.term -> guard_type
  val term2assign     : Abbrev.term -> Abbrev.term -> assign_type


end
